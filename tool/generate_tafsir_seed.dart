import 'dart:convert';
import 'dart:io';

const String _defaultManifestPath = 'content_tafsir_manifest.json';
const String _defaultOutputPath = 'content_seed_tafsir.sql';
const int expectedTafsirAyahCount = 6236;
const int _seedInsertBatchSize = 400;
const Set<String> _approvedTafsirSourceHosts = {
  'quran.com',
  'quran.gov.sa',
  'diyanet.gov.tr',
  'islamansiklopedisi.org.tr',
  'islamhouse.com',
  'dar-alifta.org',
  'habous.gov.ma',
};

const List<int> quranAyahCountsBySurah = [
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

final RegExp _identifierPattern = RegExp(r'^[a-z0-9][a-z0-9_.-]*$');
final RegExp _languagePattern = RegExp(r'^[a-z]{2,3}([_-][a-z0-9]+)?$');

class VerifiedTafsirEntry {
  const VerifiedTafsirEntry({
    required this.surahNumber,
    required this.ayahNumber,
    required this.tafsirSource,
    required this.language,
    required this.tafsirText,
    required this.source,
    required this.sourceLicense,
    required this.verifiedAt,
  });

  final int surahNumber;
  final int ayahNumber;
  final String tafsirSource;
  final String language;
  final String tafsirText;
  final String source;
  final String sourceLicense;
  final DateTime verifiedAt;

  String get uniqueKey => '$surahNumber:$ayahNumber:$tafsirSource';
}

List<VerifiedTafsirEntry> parseVerifiedTafsirManifest(
  String manifestJson, {
  bool requireCompleteCatalog = true,
}) {
  final decoded = jsonDecode(manifestJson);
  if (decoded is! Map<String, dynamic>) {
    throw const FormatException('Tafsir manifest root must be a JSON object.');
  }

  final entries = decoded['entries'];
  if (entries is! List) {
    throw const FormatException(
      'Tafsir manifest must contain an entries array.',
    );
  }

  final globalSource = _optionalString(decoded['source']);
  final globalSourceLicense = _optionalString(decoded['source_license']);
  final globalVerifiedAt = _optionalString(decoded['verified_at']);
  final parsedEntries = <VerifiedTafsirEntry>[];
  final seenKeys = <String>{};

  for (final item in entries) {
    if (item is! Map) {
      throw const FormatException('Tafsir manifest entries must be objects.');
    }

    final row = Map<String, dynamic>.from(item);
    final entry = _parseTafsirEntry(
      row,
      globalSource: globalSource,
      globalSourceLicense: globalSourceLicense,
      globalVerifiedAt: globalVerifiedAt,
    );
    if (!seenKeys.add(entry.uniqueKey)) {
      throw FormatException('Duplicate tafsir entry: ${entry.uniqueKey}');
    }
    parsedEntries.add(entry);
  }

  if (parsedEntries.isEmpty) {
    throw const FormatException('Tafsir manifest entries must not be empty.');
  }

  if (requireCompleteCatalog) {
    _validateCompleteTafsirCatalog(parsedEntries);
  }

  return List.unmodifiable(parsedEntries);
}

VerifiedTafsirEntry _parseTafsirEntry(
  Map<String, dynamic> row, {
  required String? globalSource,
  required String? globalSourceLicense,
  required String? globalVerifiedAt,
}) {
  final surahNumber = _requiredInt(row, 'surah_number');
  final ayahNumber = _requiredInt(row, 'ayah_number');
  _validateQuranReference(surahNumber, ayahNumber);

  final tafsirSource = _requiredString(row, 'tafsir_source').toLowerCase();
  if (!_identifierPattern.hasMatch(tafsirSource)) {
    throw FormatException('Invalid tafsir_source: $tafsirSource');
  }

  final language = _requiredString(row, 'language').toLowerCase();
  if (!_languagePattern.hasMatch(language)) {
    throw FormatException('Invalid language: $language');
  }

  final tafsirText = _requiredString(row, 'tafsir_text');
  final source = _optionalString(row['source']) ?? globalSource;
  final sourceLicense =
      _optionalString(row['source_license']) ?? globalSourceLicense;
  final verifiedAtRaw = _optionalString(row['verified_at']) ?? globalVerifiedAt;

  if (source == null) {
    throw const FormatException('Missing source for tafsir entry.');
  }
  if (sourceLicense == null) {
    throw const FormatException('Missing source_license for tafsir entry.');
  }
  if (verifiedAtRaw == null) {
    throw const FormatException('Missing verified_at for tafsir entry.');
  }
  _validateApprovedSource(
    source,
    approvedHosts: _approvedTafsirSourceHosts,
    contentType: 'tafsir',
  );

  return VerifiedTafsirEntry(
    surahNumber: surahNumber,
    ayahNumber: ayahNumber,
    tafsirSource: tafsirSource,
    language: language,
    tafsirText: tafsirText,
    source: source,
    sourceLicense: sourceLicense,
    verifiedAt: DateTime.parse(verifiedAtRaw).toUtc(),
  );
}

void _validateQuranReference(int surahNumber, int ayahNumber) {
  if (surahNumber < 1 || surahNumber > 114) {
    throw FormatException('Invalid surah_number: $surahNumber');
  }

  final ayahCount = quranAyahCountsBySurah[surahNumber];
  if (ayahNumber < 1 || ayahNumber > ayahCount) {
    throw FormatException(
      'Invalid ayah_number for surah $surahNumber: $ayahNumber',
    );
  }
}

void _validateCompleteTafsirCatalog(List<VerifiedTafsirEntry> entries) {
  final bySource = <String, List<VerifiedTafsirEntry>>{};
  for (final entry in entries) {
    bySource.putIfAbsent(entry.tafsirSource, () => []).add(entry);
  }

  for (final source in bySource.keys) {
    final sourceEntries = bySource[source]!;
    if (sourceEntries.length != expectedTafsirAyahCount) {
      throw FormatException(
        'Tafsir manifest is not a complete catalog for $source: expected '
        '$expectedTafsirAyahCount entries but found ${sourceEntries.length}.',
      );
    }

    for (var surah = 1; surah <= 114; surah++) {
      final expectedAyahs = quranAyahCountsBySurah[surah];
      final foundAyahs = sourceEntries
          .where((entry) => entry.surahNumber == surah)
          .length;
      if (foundAyahs != expectedAyahs) {
        throw FormatException(
          'Incomplete tafsir catalog for $source surah $surah: expected '
          '$expectedAyahs ayahs but found $foundAyahs.',
        );
      }
    }
  }
}

String buildTafsirSeedSql(Iterable<VerifiedTafsirEntry> entries) {
  final rows = entries.toList()
    ..sort((left, right) {
      final sourceCompare = left.tafsirSource.compareTo(right.tafsirSource);
      if (sourceCompare != 0) return sourceCompare;
      final surahCompare = left.surahNumber.compareTo(right.surahNumber);
      if (surahCompare != 0) return surahCompare;
      return left.ayahNumber.compareTo(right.ayahNumber);
    });

  final buffer = StringBuffer()
    ..writeln('-- Auto-generated verified tafsir seed SQL')
    ..writeln('-- Generated by tool/generate_tafsir_seed.dart')
    ..writeln('-- Apply content_schema.sql before this seed.')
    ..writeln(
      '-- Production manifests must contain a complete sourced tafsir catalog.',
    )
    ..writeln();

  for (final entry in rows) {
    _validateApprovedSource(
      entry.source,
      approvedHosts: _approvedTafsirSourceHosts,
      contentType: 'tafsir',
    );
  }

  for (var start = 0; start < rows.length; start += _seedInsertBatchSize) {
    final batch = rows
        .skip(start)
        .take(_seedInsertBatchSize)
        .toList(growable: false);
    buffer
      ..writeln('INSERT INTO public.tafsir_entries (')
      ..writeln(
        '  surah_number, ayah_number, tafsir_source, language, tafsir_text, source, source_license, verified_at',
      )
      ..writeln(') VALUES');

    for (var index = 0; index < batch.length; index++) {
      final entry = batch[index];
      final isLast = index == batch.length - 1;
      buffer.writeln('${_tafsirValuesSql(entry)}${isLast ? '' : ','}');
    }

    buffer
      ..writeln('ON CONFLICT (surah_number, ayah_number, tafsir_source)')
      ..writeln('DO UPDATE SET')
      ..writeln('  language = EXCLUDED.language,')
      ..writeln('  tafsir_text = EXCLUDED.tafsir_text,')
      ..writeln('  source = EXCLUDED.source,')
      ..writeln('  source_license = EXCLUDED.source_license,')
      ..writeln('  verified_at = EXCLUDED.verified_at;')
      ..writeln();
  }

  return buffer.toString();
}

String _tafsirValuesSql(VerifiedTafsirEntry entry) {
  return "  (${entry.surahNumber}, ${entry.ayahNumber}, '${_escapeSql(entry.tafsirSource)}', '${_escapeSql(entry.language)}', '${_escapeSql(entry.tafsirText)}', '${_escapeSql(entry.source)}', '${_escapeSql(entry.sourceLicense)}', TIMESTAMPTZ '${entry.verifiedAt.toIso8601String()}')";
}

void _validateApprovedSource(
  String source, {
  required Set<String> approvedHosts,
  required String contentType,
}) {
  final uri = Uri.tryParse(source);
  final host = uri?.host.toLowerCase();
  final isApprovedHost =
      host != null &&
      approvedHosts.any((allowedHost) {
        final normalized = allowedHost.toLowerCase();
        return host == normalized || host.endsWith('.$normalized');
      });
  if (uri == null ||
      uri.scheme != 'https' ||
      host == null ||
      host.isEmpty ||
      !isApprovedHost) {
    throw FormatException(
      'Unapproved $contentType source: $source. Use an AGENTS.md-approved HTTPS source.',
    );
  }
}

int _requiredInt(Map<String, dynamic> row, String key) {
  final value = row[key];
  if (value is int) return value;
  if (value is String) {
    final parsed = int.tryParse(value.trim());
    if (parsed != null) return parsed;
  }

  throw FormatException('Missing or invalid integer field: $key');
}

String _requiredString(Map<String, dynamic> row, String key) {
  final value = _optionalString(row[key]);
  if (value == null) {
    throw FormatException('Missing or empty string field: $key');
  }

  return value;
}

String? _optionalString(Object? value) {
  if (value is! String) return null;
  final trimmed = value.trim();
  return trimmed.isEmpty ? null : trimmed;
}

String _escapeSql(String value) => value.replaceAll("'", "''");

void _printUsage() {
  stdout.writeln('''
Verified tafsir seed generator

Usage:
  dart run tool/generate_tafsir_seed.dart [options]

Options:
  --manifest=<path>   Verified tafsir manifest path. Default: $_defaultManifestPath
  --output=<path>     Output SQL path. Default: $_defaultOutputPath
  --allow-partial     Allow development-only partial manifests
  --help              Show this help
''');
}

Future<void> main(List<String> args) async {
  var manifestPath = _defaultManifestPath;
  var outputPath = _defaultOutputPath;
  var allowPartial = false;

  for (final arg in args) {
    if (arg == '--help') {
      _printUsage();
      return;
    }
    if (arg == '--allow-partial') {
      allowPartial = true;
      continue;
    }
    if (arg.startsWith('--manifest=')) {
      manifestPath = arg.substring('--manifest='.length);
      continue;
    }
    if (arg.startsWith('--output=')) {
      outputPath = arg.substring('--output='.length);
      continue;
    }

    throw FormatException('Unsupported argument: $arg');
  }

  final manifestFile = File(manifestPath);
  if (!manifestFile.existsSync()) {
    throw FileSystemException(
      'Verified tafsir manifest file not found',
      manifestFile.path,
    );
  }

  final entries = parseVerifiedTafsirManifest(
    manifestFile.readAsStringSync(),
    requireCompleteCatalog: !allowPartial,
  );
  final sql = buildTafsirSeedSql(entries);
  final outputFile = File(outputPath);
  await outputFile.writeAsString(sql);
  stdout.writeln(
    'Generated ${outputFile.path} with ${entries.length} verified tafsir rows.',
  );
}
