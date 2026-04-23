import 'dart:convert';
import 'dart:io';

import 'package:html/parser.dart' as html_parser;
import 'package:http/http.dart' as http;

const String _defaultOutputPath = 'content_tafsir_manifest.json';
const String _quranComBaseUrl = 'https://api.quran.com/api/v4';
const String _quranComSourceLicense =
    'Quran.com Terms and Conditions - personal, non-commercial, '
    'informational use only (https://quran.com/terms-and-conditions)';
const Duration _defaultRequestPause = Duration(milliseconds: 120);
const int _maxRequestAttempts = 3;

const List<String> verifiedTafsirSourceOrder = <String>[
  'en.ibn_kathir',
  'en.maarif',
  'ar.baghawi',
];

const List<int> quranAyahCountsBySurah = <int>[
  0,
  7,
  286,
  200,
  176,
  120,
  165,
  206,
  75,
  129,
  109,
  123,
  111,
  43,
  52,
  99,
  128,
  111,
  110,
  98,
  135,
  112,
  78,
  118,
  64,
  77,
  227,
  93,
  88,
  69,
  60,
  34,
  30,
  73,
  54,
  45,
  83,
  182,
  88,
  75,
  85,
  54,
  53,
  89,
  59,
  37,
  35,
  38,
  29,
  18,
  45,
  60,
  49,
  62,
  55,
  78,
  96,
  29,
  22,
  24,
  13,
  14,
  11,
  11,
  18,
  12,
  12,
  30,
  52,
  52,
  44,
  28,
  28,
  20,
  56,
  40,
  31,
  50,
  40,
  46,
  42,
  29,
  19,
  36,
  25,
  22,
  17,
  19,
  26,
  30,
  20,
  15,
  21,
  11,
  8,
  8,
  19,
  5,
  8,
  8,
  11,
  11,
  8,
  3,
  9,
  5,
  4,
  7,
  3,
  6,
  3,
  5,
  4,
  5,
  6,
];

class VerifiedTafsirSourceSpec {
  const VerifiedTafsirSourceSpec({
    required this.sourceId,
    required this.resourceId,
    required this.language,
  });

  final String sourceId;
  final int resourceId;
  final String language;
}

class QuranComChapterTafsirRow {
  const QuranComChapterTafsirRow({
    required this.verseKey,
    required this.textHtml,
  });

  final String verseKey;
  final String textHtml;
}

class QuranComByAyahCoverage {
  const QuranComByAyahCoverage({
    required this.verseKeys,
    required this.textHtml,
  });

  final List<String> verseKeys;
  final String textHtml;
}

class VerifiedTafsirManifestEntry {
  const VerifiedTafsirManifestEntry({
    required this.surahNumber,
    required this.ayahNumber,
    required this.tafsirSource,
    required this.language,
    required this.tafsirText,
    required this.source,
  });

  final int surahNumber;
  final int ayahNumber;
  final String tafsirSource;
  final String language;
  final String tafsirText;
  final String source;

  Map<String, Object?> toManifestJson() {
    return <String, Object?>{
      'surah_number': surahNumber,
      'ayah_number': ayahNumber,
      'tafsir_source': tafsirSource,
      'language': language,
      'tafsir_text': tafsirText,
      'source': source,
    };
  }
}

const Map<String, VerifiedTafsirSourceSpec> verifiedTafsirSourceSpecs =
    <String, VerifiedTafsirSourceSpec>{
      'en.ibn_kathir': VerifiedTafsirSourceSpec(
        sourceId: 'en.ibn_kathir',
        resourceId: 169,
        language: 'en',
      ),
      'en.maarif': VerifiedTafsirSourceSpec(
        sourceId: 'en.maarif',
        resourceId: 168,
        language: 'en',
      ),
      'en.tazkir': VerifiedTafsirSourceSpec(
        sourceId: 'en.tazkir',
        resourceId: 817,
        language: 'en',
      ),
      'ar.muyassar': VerifiedTafsirSourceSpec(
        sourceId: 'ar.muyassar',
        resourceId: 16,
        language: 'ar',
      ),
      'ar.wasit': VerifiedTafsirSourceSpec(
        sourceId: 'ar.wasit',
        resourceId: 93,
        language: 'ar',
      ),
      'ar.ibn_kathir': VerifiedTafsirSourceSpec(
        sourceId: 'ar.ibn_kathir',
        resourceId: 14,
        language: 'ar',
      ),
      'ar.baghawi': VerifiedTafsirSourceSpec(
        sourceId: 'ar.baghawi',
        resourceId: 94,
        language: 'ar',
      ),
    };

List<QuranComChapterTafsirRow> parseQuranComChapterTafsirPayload(
  String payload,
) {
  final decoded = jsonDecode(payload);
  final rows = decoded['tafsirs'];
  if (rows is! List) {
    throw const FormatException('Quran.com chapter tafsir payload is invalid.');
  }

  return List<QuranComChapterTafsirRow>.unmodifiable(
    rows.whereType<Map>().map((row) {
      final normalized = Map<String, dynamic>.from(row);
      return QuranComChapterTafsirRow(
        verseKey: normalized['verse_key'].toString(),
        textHtml: normalized['text'].toString(),
      );
    }),
  );
}

QuranComByAyahCoverage parseQuranComByAyahTafsirPayload(String payload) {
  final decoded = jsonDecode(payload);
  final tafsir = decoded['tafsir'];
  if (tafsir is! Map) {
    throw const FormatException('Quran.com by-ayah tafsir payload is invalid.');
  }

  final normalized = Map<String, dynamic>.from(tafsir);
  final verses = normalized['verses'];
  if (verses is! Map) {
    throw const FormatException(
      'Quran.com by-ayah tafsir payload must include verses.',
    );
  }

  final verseKeys = verses.keys.map((key) => key.toString()).toList()..sort();
  return QuranComByAyahCoverage(
    verseKeys: List<String>.unmodifiable(verseKeys),
    textHtml: normalized['text'].toString(),
  );
}

List<String> expandedCoverageVerseKeys(
  QuranComByAyahCoverage coverage, {
  required String requestedVerseKey,
}) {
  final verseKeys = coverage.verseKeys.toSet();
  if (coverage.textHtml.trim().isNotEmpty) {
    verseKeys.add(requestedVerseKey);
  }
  final sorted = verseKeys.toList()..sort(_compareVerseKeys);
  return List<String>.unmodifiable(sorted);
}

List<int> coverageAyahNumbersForSurah(
  QuranComByAyahCoverage coverage, {
  required String requestedVerseKey,
  required int surahNumber,
}) {
  final ayahNumbers = <int>[];
  for (final verseKey in expandedCoverageVerseKeys(
    coverage,
    requestedVerseKey: requestedVerseKey,
  )) {
    final ayahNumber = _tryParseAyahNumberFromVerseKey(
      verseKey,
      surahNumber: surahNumber,
    );
    if (ayahNumber != null) {
      ayahNumbers.add(ayahNumber);
    }
  }
  return List<int>.unmodifiable(ayahNumbers);
}

bool hasOneToOneChapterCoverage(
  Iterable<QuranComChapterTafsirRow> rows, {
  required int surahNumber,
  required int ayahCount,
}) {
  if (rows.any((row) => row.textHtml.trim().isEmpty)) {
    return false;
  }
  final expectedKeys = <String>{
    for (var ayah = 1; ayah <= ayahCount; ayah++) '$surahNumber:$ayah',
  };
  final actualKeys = rows.map((row) => row.verseKey).toSet();
  return actualKeys.length == ayahCount && actualKeys.containsAll(expectedKeys);
}

String stripTafsirHtmlToPlainText(String html) {
  final normalizedHtml = html
      .replaceAll(RegExp(r'<br\s*/?>', caseSensitive: false), '\n')
      .replaceAll(
        RegExp(
          r'</(p|div|h1|h2|h3|h4|h5|h6|li|ul|ol|blockquote)>',
          caseSensitive: false,
        ),
        '\n\n',
      );
  final text = html_parser.parseFragment(normalizedHtml).text ?? '';
  return text
      .replaceAll('\u00a0', ' ')
      .replaceAll(RegExp(r'\r\n?'), '\n')
      .replaceAll(RegExp(r'[ \t]+\n'), '\n')
      .replaceAll(RegExp(r'\n[ \t]+'), '\n')
      .replaceAll(RegExp(r'[ \t]{2,}'), ' ')
      .replaceAll(RegExp(r'\n{3,}'), '\n\n')
      .trim();
}

Map<String, Object?> buildVerifiedTafsirManifestJson(
  Iterable<VerifiedTafsirManifestEntry> entries, {
  required DateTime verifiedAt,
}) {
  final sortedEntries = entries.toList()
    ..sort((left, right) {
      final sourceCompare = left.tafsirSource.compareTo(right.tafsirSource);
      if (sourceCompare != 0) {
        return sourceCompare;
      }
      final surahCompare = left.surahNumber.compareTo(right.surahNumber);
      if (surahCompare != 0) {
        return surahCompare;
      }
      return left.ayahNumber.compareTo(right.ayahNumber);
    });

  return <String, Object?>{
    'source': '$_quranComBaseUrl/resources/tafsirs',
    'source_license': _quranComSourceLicense,
    'verified_at': verifiedAt.toUtc().toIso8601String(),
    'entries': sortedEntries.map((entry) => entry.toManifestJson()).toList(),
  };
}

Future<List<VerifiedTafsirManifestEntry>> fetchVerifiedTafsirManifestEntries({
  required http.Client client,
  required Iterable<String> sourceIds,
  Duration requestPause = _defaultRequestPause,
}) async {
  final entries = <VerifiedTafsirManifestEntry>[];

  for (final sourceId in sourceIds) {
    final spec = verifiedTafsirSourceSpecs[sourceId];
    if (spec == null) {
      throw FormatException('Unsupported tafsir source: $sourceId');
    }

    for (var surahNumber = 1; surahNumber <= 114; surahNumber++) {
      final ayahCount = quranAyahCountsBySurah[surahNumber];
      final chapterUri = Uri.parse(
        '$_quranComBaseUrl/tafsirs/${spec.resourceId}/by_chapter/'
        '$surahNumber?per_page=1000',
      );
      final chapterPayload = await _fetchUtf8Body(client, chapterUri);
      final chapterRows = parseQuranComChapterTafsirPayload(chapterPayload);
      if (chapterRows.isEmpty) {
        throw FormatException(
          'Quran.com returned no tafsir rows for ${spec.sourceId} surah '
          '$surahNumber.',
        );
      }

      if (hasOneToOneChapterCoverage(
        chapterRows,
        surahNumber: surahNumber,
        ayahCount: ayahCount,
      )) {
        for (final row in chapterRows) {
          final ayahNumber = _parseAyahNumberFromVerseKey(
            row.verseKey,
            surahNumber: surahNumber,
          );
          entries.add(
            VerifiedTafsirManifestEntry(
              surahNumber: surahNumber,
              ayahNumber: ayahNumber,
              tafsirSource: spec.sourceId,
              language: spec.language,
              tafsirText: stripTafsirHtmlToPlainText(row.textHtml),
              source: chapterUri.toString(),
            ),
          );
        }
      } else {
        final chapterEntries = <int, VerifiedTafsirManifestEntry>{};
        final groupSeedRows = chapterRows
            .where((row) => row.textHtml.trim().isNotEmpty)
            .toList(growable: false);

        for (final row in groupSeedRows) {
          final byAyahUri = Uri.parse(
            '$_quranComBaseUrl/tafsirs/${spec.resourceId}/by_ayah/${row.verseKey}',
          );
          final byAyahPayload = await _fetchUtf8Body(client, byAyahUri);
          final coverage = parseQuranComByAyahTafsirPayload(byAyahPayload);
          final tafsirText = stripTafsirHtmlToPlainText(coverage.textHtml);

          for (final ayahNumber in coverageAyahNumbersForSurah(
            coverage,
            requestedVerseKey: row.verseKey,
            surahNumber: surahNumber,
          )) {
            chapterEntries[ayahNumber] = VerifiedTafsirManifestEntry(
              surahNumber: surahNumber,
              ayahNumber: ayahNumber,
              tafsirSource: spec.sourceId,
              language: spec.language,
              tafsirText: tafsirText,
              source: byAyahUri.toString(),
            );
          }

          if (requestPause > Duration.zero) {
            await Future<void>.delayed(requestPause);
          }
        }

        if (chapterEntries.length != ayahCount) {
          final missingAyahs = <int>[
            for (var ayah = 1; ayah <= ayahCount; ayah++)
              if (!chapterEntries.containsKey(ayah)) ayah,
          ];
          for (final ayahNumber in missingAyahs) {
            if (chapterEntries.containsKey(ayahNumber)) {
              continue;
            }
            final requestedVerseKey = '$surahNumber:$ayahNumber';
            final byAyahUri = Uri.parse(
              '$_quranComBaseUrl/tafsirs/${spec.resourceId}/by_ayah/'
              '$requestedVerseKey',
            );
            final byAyahPayload = await _fetchUtf8Body(client, byAyahUri);
            final coverage = parseQuranComByAyahTafsirPayload(byAyahPayload);
            final tafsirText = stripTafsirHtmlToPlainText(coverage.textHtml);
            if (tafsirText.isEmpty) {
              throw FormatException(
                'Quran.com returned empty grouped tafsir text for '
                '${spec.sourceId} $surahNumber:$ayahNumber.',
              );
            }

            for (final coveredAyahNumber in coverageAyahNumbersForSurah(
              coverage,
              requestedVerseKey: requestedVerseKey,
              surahNumber: surahNumber,
            )) {
              if (chapterEntries.containsKey(coveredAyahNumber) &&
                  coveredAyahNumber != ayahNumber) {
                continue;
              }
              chapterEntries[coveredAyahNumber] = VerifiedTafsirManifestEntry(
                surahNumber: surahNumber,
                ayahNumber: coveredAyahNumber,
                tafsirSource: spec.sourceId,
                language: spec.language,
                tafsirText: tafsirText,
                source: byAyahUri.toString(),
              );
            }

            if (requestPause > Duration.zero) {
              await Future<void>.delayed(requestPause);
            }
          }
        }

        if (chapterEntries.length != ayahCount) {
          throw FormatException(
            'Grouped Quran.com tafsir coverage for ${spec.sourceId} surah '
            '$surahNumber is incomplete: expected $ayahCount ayahs, found '
            '${chapterEntries.length}.',
          );
        }

        final sortedAyahs = chapterEntries.keys.toList()..sort();
        for (final ayahNumber in sortedAyahs) {
          entries.add(chapterEntries[ayahNumber]!);
        }
      }

      if (requestPause > Duration.zero) {
        await Future<void>.delayed(requestPause);
      }
    }
  }

  return List<VerifiedTafsirManifestEntry>.unmodifiable(entries);
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

int _parseAyahNumberFromVerseKey(String verseKey, {required int surahNumber}) {
  final parsedAyah = _tryParseAyahNumberFromVerseKey(
    verseKey,
    surahNumber: surahNumber,
  );
  if (parsedAyah == null) {
    throw FormatException(
      'Expected surah $surahNumber but Quran.com returned $verseKey.',
    );
  }
  return parsedAyah;
}

int? _tryParseAyahNumberFromVerseKey(
  String verseKey, {
  required int surahNumber,
}) {
  final parts = verseKey.split(':');
  if (parts.length != 2) {
    throw FormatException('Invalid verse_key: $verseKey');
  }

  final parsedSurah = int.parse(parts[0]);
  final parsedAyah = int.parse(parts[1]);
  if (parsedSurah != surahNumber) {
    return null;
  }
  return parsedAyah;
}

int _compareVerseKeys(String left, String right) {
  final leftParts = left.split(':').map(int.parse).toList(growable: false);
  final rightParts = right.split(':').map(int.parse).toList(growable: false);
  final surahCompare = leftParts[0].compareTo(rightParts[0]);
  if (surahCompare != 0) {
    return surahCompare;
  }
  return leftParts[1].compareTo(rightParts[1]);
}

void _printUsage() {
  stdout.writeln('''
Fetch a verified tafsir manifest from Quran.com.

Usage:
  dart run tool/fetch_verified_tafsir_manifest.dart [options]

Options:
  --output=<path>            Output JSON path. Default: $_defaultOutputPath
  --sources=<csv>            Source ids to fetch. Default: ${verifiedTafsirSourceOrder.join(',')}
  --verified-at=<timestamp>  Override verified_at (ISO-8601 UTC).
  --pause-ms=<n>             Delay between requests. Default: ${_defaultRequestPause.inMilliseconds}
  --help                     Show this help.
''');
}

Future<void> main(List<String> arguments) async {
  var outputPath = _defaultOutputPath;
  var sourceIds = verifiedTafsirSourceOrder;
  var requestPause = _defaultRequestPause;
  DateTime verifiedAt = DateTime.now().toUtc();

  for (final argument in arguments) {
    if (argument == '--help' || argument == '-h') {
      _printUsage();
      return;
    } else if (argument.startsWith('--output=')) {
      outputPath = argument.substring('--output='.length).trim();
    } else if (argument.startsWith('--sources=')) {
      sourceIds = argument
          .substring('--sources='.length)
          .split(',')
          .map((value) => value.trim())
          .where((value) => value.isNotEmpty)
          .toList();
    } else if (argument.startsWith('--verified-at=')) {
      verifiedAt = DateTime.parse(
        argument.substring('--verified-at='.length).trim(),
      ).toUtc();
    } else if (argument.startsWith('--pause-ms=')) {
      requestPause = Duration(
        milliseconds: int.parse(
          argument.substring('--pause-ms='.length).trim(),
        ),
      );
    } else {
      throw FormatException('Unknown argument: $argument');
    }
  }

  if (sourceIds.isEmpty) {
    throw const FormatException('--sources must not be empty.');
  }

  final outputFile = File(outputPath);
  if (outputFile.parent.path != '.' && !outputFile.parent.existsSync()) {
    outputFile.parent.createSync(recursive: true);
  }

  final client = http.Client();
  try {
    final entries = await fetchVerifiedTafsirManifestEntries(
      client: client,
      sourceIds: sourceIds,
      requestPause: requestPause,
    );
    final manifest = buildVerifiedTafsirManifestJson(
      entries,
      verifiedAt: verifiedAt,
    );
    final encoder = const JsonEncoder.withIndent('  ');
    outputFile.writeAsStringSync('${encoder.convert(manifest)}\n');

    final countBySource = <String, int>{};
    for (final entry in entries) {
      countBySource[entry.tafsirSource] =
          (countBySource[entry.tafsirSource] ?? 0) + 1;
    }
    stdout.writeln(
      'Verified tafsir manifest written to ${outputFile.path} '
      '(${entries.length} rows).',
    );
    for (final sourceId in sourceIds) {
      stdout.writeln('  $sourceId: ${countBySource[sourceId] ?? 0} rows');
    }
  } finally {
    client.close();
  }
}
