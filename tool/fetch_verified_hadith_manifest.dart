import 'dart:convert';
import 'dart:io';

import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as html_parser;
import 'package:http/http.dart' as http;
import 'package:sirat_i_nur/core/services/hadith_api_service.dart';

const String _defaultOutputPath = 'content_hadith_manifest.json';
const String _sunnahBaseUrl = 'https://sunnah.com';
const String _sunnahSourceLicense =
    'Sunnah.com developers and open platform data access notice '
    '(https://sunnah.com/developers)';
const Duration _defaultRequestPause = Duration(milliseconds: 150);
const int _maxRequestAttempts = 3;

const List<String> verifiedHadithCollectionOrder = <String>[
  'bukhari',
  'muslim',
  'tirmidhi',
  'abudawud',
  'nasai',
  'ibnmajah',
];

class VerifiedHadithManifestEntry {
  const VerifiedHadithManifestEntry({
    required this.collectionId,
    required this.book,
    required this.hadithNumber,
    required this.textAr,
    required this.textEn,
    required this.source,
    this.narrator,
    this.grade,
  });

  final String collectionId;
  final String book;
  final int hadithNumber;
  final String textAr;
  final String textEn;
  final String source;
  final String? narrator;
  final String? grade;

  Map<String, Object?> toManifestJson() {
    return <String, Object?>{
      'collection_id': collectionId,
      'book': book,
      'hadith_number': hadithNumber,
      'text_ar': textAr,
      'text_en': textEn,
      if (narrator != null) 'narrator': narrator,
      if (grade != null) 'grade': grade,
      'source': source,
    };
  }
}

List<int> extractHadithBookLinksFromCollectionIndex(
  String html, {
  required String collectionId,
}) {
  final document = html_parser.parse(html);
  final bookNumbers = <int>{};
  final linkPattern = RegExp('^/$collectionId/(\\d+)\$');

  for (final link in document.querySelectorAll('a[href]')) {
    final href = link.attributes['href']?.trim();
    if (href == null) {
      continue;
    }
    final match = linkPattern.firstMatch(href);
    if (match == null) {
      continue;
    }
    final bookNumber = int.tryParse(match.group(1)!);
    if (bookNumber != null && bookNumber > 0) {
      bookNumbers.add(bookNumber);
    }
  }

  final sorted = bookNumbers.toList()..sort();
  return List<int>.unmodifiable(sorted);
}

String extractHadithBookNameFromBookPage(String html) {
  final document = html_parser.parse(html);
  final crumbsText = _normalizeInlineText(
    document.querySelector('.crumbs')?.text,
  );
  if (crumbsText != null) {
    final crumbSegments = crumbsText
        .split('»')
        .map((segment) => segment.trim())
        .where((segment) => segment.isNotEmpty)
        .toList();
    if (crumbSegments.isNotEmpty) {
      return crumbSegments.last;
    }
  }

  final titleText = _normalizeInlineText(document.querySelector('title')?.text);
  if (titleText != null) {
    final prefix = titleText.split('-').first.trim();
    if (prefix.isNotEmpty) {
      return prefix;
    }
  }

  throw const FormatException('Could not resolve hadith book name from page.');
}

List<VerifiedHadithManifestEntry> parseHadithBookPageEntries(
  String html, {
  required String collectionId,
  required String bookName,
}) {
  final normalizedCollectionId = collectionId.trim().toLowerCase();
  if (!supportedHadithCollectionIds.contains(normalizedCollectionId)) {
    throw FormatException('Unsupported hadith collection: $collectionId');
  }

  final document = html_parser.parse(html);
  final containers = document.querySelectorAll('div.actualHadithContainer');
  final references = document.querySelectorAll('table.hadith_reference');
  final entryCount = containers.length < references.length
      ? containers.length
      : references.length;

  final entries = <VerifiedHadithManifestEntry>[];
  for (var index = 0; index < entryCount; index++) {
    final container = containers[index];
    final referenceTable = references[index];

    final hadithNumber = _extractHadithNumberFromReferenceTable(
      referenceTable,
      collectionId: normalizedCollectionId,
    );
    if (hadithNumber == null || hadithNumber < 1) {
      continue;
    }

    final englishText = _normalizeBlockText(
      container.querySelector('.english_hadith_full')?.text,
    );
    final arabicText = _normalizeBlockText(
      container.querySelector('.arabic_hadith_full .arabic_text_details')?.text ??
          container.querySelector('.arabic_hadith_full')?.text,
      collapseNewlines: false,
    );
    if (englishText == null || arabicText == null) {
      continue;
    }

    final grade = _normalizeInlineText(
      container.querySelector('.hadith_grade')?.text ??
          container.querySelector('.gradetable')?.text,
    );
    entries.add(
      VerifiedHadithManifestEntry(
        collectionId: normalizedCollectionId,
        book: bookName,
        hadithNumber: hadithNumber,
        textAr: arabicText,
        textEn: englishText,
        narrator: _extractNarrator(englishText),
        grade: grade,
        source: '$_sunnahBaseUrl/$normalizedCollectionId:$hadithNumber',
      ),
    );
  }

  return List<VerifiedHadithManifestEntry>.unmodifiable(entries);
}

Map<String, Object?> buildVerifiedHadithManifestJson(
  Iterable<VerifiedHadithManifestEntry> entries, {
  required DateTime verifiedAt,
}) {
  final sortedEntries = entries.toList()
    ..sort((left, right) {
      final collectionCompare = left.collectionId.compareTo(right.collectionId);
      if (collectionCompare != 0) {
        return collectionCompare;
      }
      return left.hadithNumber.compareTo(right.hadithNumber);
    });

  return <String, Object?>{
    'source': _sunnahBaseUrl,
    'source_license': _sunnahSourceLicense,
    'verified_at': verifiedAt.toUtc().toIso8601String(),
    'entries': sortedEntries.map((entry) => entry.toManifestJson()).toList(),
  };
}

Future<List<VerifiedHadithManifestEntry>> fetchVerifiedHadithManifestEntries({
  required http.Client client,
  required int minimumRowsPerCollection,
  Duration requestPause = _defaultRequestPause,
}) async {
  final allEntries = <VerifiedHadithManifestEntry>[];

  for (final collectionId in verifiedHadithCollectionOrder) {
    final indexHtml = await _fetchUtf8Body(
      client,
      Uri.parse('$_sunnahBaseUrl/$collectionId'),
    );
    final bookNumbers = extractHadithBookLinksFromCollectionIndex(
      indexHtml,
      collectionId: collectionId,
    );
    if (bookNumbers.isEmpty) {
      throw FormatException(
        'No book links found on the Sunnah index for $collectionId.',
      );
    }

    final seenHadithNumbers = <int>{};
    final collectionEntries = <VerifiedHadithManifestEntry>[];
    for (final bookNumber in bookNumbers) {
      if (collectionEntries.length >= minimumRowsPerCollection) {
        break;
      }

      final bookHtml = await _fetchUtf8Body(
        client,
        Uri.parse('$_sunnahBaseUrl/$collectionId/$bookNumber'),
      );
      final bookName = extractHadithBookNameFromBookPage(bookHtml);
      final parsedEntries = parseHadithBookPageEntries(
        bookHtml,
        collectionId: collectionId,
        bookName: bookName,
      );
      for (final entry in parsedEntries) {
        if (seenHadithNumbers.add(entry.hadithNumber)) {
          collectionEntries.add(entry);
        }
      }

      if (requestPause > Duration.zero) {
        await Future<void>.delayed(requestPause);
      }
    }

    if (collectionEntries.length < minimumRowsPerCollection) {
      throw FormatException(
        'Sunnah scrape for $collectionId produced ${collectionEntries.length} '
        'rows; expected at least $minimumRowsPerCollection.',
      );
    }

    allEntries.addAll(collectionEntries);
  }

  return List<VerifiedHadithManifestEntry>.unmodifiable(allEntries);
}

Future<String> _fetchUtf8Body(http.Client client, Uri uri) async {
  Object? lastError;
  for (var attempt = 1; attempt <= _maxRequestAttempts; attempt++) {
    try {
      final response = await client.get(
        uri,
        headers: const <String, String>{
          'User-Agent': 'Sirat-i-Nur verified manifest fetcher/1.0',
          'Accept-Language': 'en',
        },
      );
      if (response.statusCode == 200) {
        return utf8.decode(response.bodyBytes);
      }
      lastError = HttpException(
        'GET $uri failed with HTTP ${response.statusCode}',
        uri: uri,
      );
    } catch (error) {
      lastError = error;
    }

    if (attempt < _maxRequestAttempts) {
      await Future<void>.delayed(Duration(milliseconds: 300 * attempt));
    }
  }

  throw lastError ??
      HttpException('GET $uri failed with an unknown error.', uri: uri);
}

int? _extractHadithNumberFromReferenceTable(
  dom.Element referenceTable, {
  required String collectionId,
}) {
  for (final link in referenceTable.querySelectorAll('a[href]')) {
    final href = link.attributes['href']?.trim();
    if (href == null) {
      continue;
    }
    final match = RegExp('^/$collectionId:(\\d+)\$').firstMatch(href);
    if (match != null) {
      return int.tryParse(match.group(1)!);
    }
  }

  final text = _normalizeInlineText(referenceTable.text);
  if (text == null) {
    return null;
  }
  final fallbackMatch = RegExp(r'Hadith\s+(\d+)\b').firstMatch(text);
  return fallbackMatch == null ? null : int.tryParse(fallbackMatch.group(1)!);
}

String? _extractNarrator(String englishText) {
  final separatorIndex = englishText.indexOf(':');
  if (separatorIndex < 1 || separatorIndex > 80) {
    return null;
  }

  final prefix = englishText.substring(0, separatorIndex).trim();
  if (prefix.isEmpty || prefix.contains('\n')) {
    return null;
  }
  return prefix;
}

String? _normalizeInlineText(String? raw) {
  final normalized = raw
      ?.replaceAll('\u00a0', ' ')
      .replaceAll(RegExp(r'\s+'), ' ')
      .trim();
  return normalized == null || normalized.isEmpty ? null : normalized;
}

String? _normalizeBlockText(String? raw, {bool collapseNewlines = true}) {
  if (raw == null) {
    return null;
  }

  var normalized = raw.replaceAll('\u00a0', ' ').trim();
  if (normalized.isEmpty) {
    return null;
  }

  normalized = normalized
      .replaceAll(RegExp(r'\r\n?'), '\n')
      .replaceAll(RegExp(r'[ \t]+\n'), '\n')
      .replaceAll(RegExp(r'\n[ \t]+'), '\n');

  if (collapseNewlines) {
    normalized = normalized.replaceAll(RegExp(r'\s+'), ' ');
  } else {
    normalized = normalized
        .replaceAll(RegExp(r'[ \t]{2,}'), ' ')
        .replaceAll(RegExp(r'\n{3,}'), '\n\n');
  }

  return normalized.trim().isEmpty ? null : normalized.trim();
}

void _printUsage() {
  stdout.writeln('''
Fetch a verified hadith manifest from Sunnah.com.

Usage:
  dart run tool/fetch_verified_hadith_manifest.dart [options]

Options:
  --output=<path>            Output JSON path. Default: $_defaultOutputPath
  --min-per-collection=<n>   Minimum rows to capture per supported collection.
                             Default: $minimumVerifiedHadithRowsPerCollection
  --verified-at=<timestamp>  Override verified_at (ISO-8601 UTC).
  --pause-ms=<n>             Delay between book page requests. Default: ${_defaultRequestPause.inMilliseconds}
  --help                     Show this help.
''');
}

Future<void> main(List<String> arguments) async {
  var outputPath = _defaultOutputPath;
  var minimumRowsPerCollection = minimumVerifiedHadithRowsPerCollection;
  var requestPause = _defaultRequestPause;
  DateTime verifiedAt = DateTime.now().toUtc();

  for (final argument in arguments) {
    if (argument == '--help' || argument == '-h') {
      _printUsage();
      return;
    } else if (argument.startsWith('--output=')) {
      outputPath = argument.substring('--output='.length).trim();
    } else if (argument.startsWith('--min-per-collection=')) {
      minimumRowsPerCollection = int.parse(
        argument.substring('--min-per-collection='.length).trim(),
      );
    } else if (argument.startsWith('--verified-at=')) {
      verifiedAt = DateTime.parse(
        argument.substring('--verified-at='.length).trim(),
      ).toUtc();
    } else if (argument.startsWith('--pause-ms=')) {
      requestPause = Duration(
        milliseconds: int.parse(argument.substring('--pause-ms='.length).trim()),
      );
    } else {
      throw FormatException('Unknown argument: $argument');
    }
  }

  if (minimumRowsPerCollection < 1) {
    throw const FormatException('--min-per-collection must be >= 1.');
  }

  final outputFile = File(outputPath);
  if (outputFile.parent.path != '.' && !outputFile.parent.existsSync()) {
    outputFile.parent.createSync(recursive: true);
  }

  final client = http.Client();
  try {
    final entries = await fetchVerifiedHadithManifestEntries(
      client: client,
      minimumRowsPerCollection: minimumRowsPerCollection,
      requestPause: requestPause,
    );
    final manifest = buildVerifiedHadithManifestJson(
      entries,
      verifiedAt: verifiedAt,
    );
    final encoder = const JsonEncoder.withIndent('  ');
    outputFile.writeAsStringSync('${encoder.convert(manifest)}\n');

    final countByCollection = <String, int>{};
    for (final entry in entries) {
      countByCollection[entry.collectionId] =
          (countByCollection[entry.collectionId] ?? 0) + 1;
    }
    stdout.writeln(
      'Verified hadith manifest written to ${outputFile.path} '
      '(${entries.length} rows).',
    );
    for (final collectionId in verifiedHadithCollectionOrder) {
      stdout.writeln(
        '  $collectionId: ${countByCollection[collectionId] ?? 0} rows',
      );
    }
  } finally {
    client.close();
  }
}
