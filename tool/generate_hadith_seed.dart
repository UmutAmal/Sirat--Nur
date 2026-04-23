import 'dart:convert';
import 'dart:io';

import 'package:sirat_i_nur/core/services/hadith_api_service.dart';

const String _defaultManifestPath = 'content_hadith_manifest.json';
const String _defaultOutputPath = 'content_seed_hadith.sql';

const Set<String> supportedHadithCollections = supportedHadithCollectionIds;
const int minimumHadithRowsPerCollection =
    minimumVerifiedHadithRowsPerCollection;
const int _seedInsertBatchSize = 400;

final RegExp _identifierPattern = RegExp(r'^[a-z0-9][a-z0-9_-]*$');
const Set<String> _approvedHadithSourceHosts = {'sunnah.com'};

class VerifiedHadithEntry {
  const VerifiedHadithEntry({
    required this.collectionId,
    required this.book,
    required this.hadithNumber,
    required this.textAr,
    required this.textTr,
    required this.textEn,
    required this.narrator,
    required this.grade,
    required this.source,
    required this.sourceLicense,
    required this.verifiedAt,
  });

  final String collectionId;
  final String book;
  final int hadithNumber;
  final String textAr;
  final String? textTr;
  final String? textEn;
  final String? narrator;
  final String? grade;
  final String source;
  final String sourceLicense;
  final DateTime verifiedAt;

  String get uniqueKey => '$collectionId:$hadithNumber';
}

List<VerifiedHadithEntry> parseVerifiedHadithManifest(
  String manifestJson, {
  bool requireAllCollections = true,
}) {
  final decoded = jsonDecode(manifestJson);
  if (decoded is! Map<String, dynamic>) {
    throw const FormatException('Hadith manifest root must be a JSON object.');
  }

  final entries = decoded['entries'];
  if (entries is! List) {
    throw const FormatException(
      'Hadith manifest must contain an entries array.',
    );
  }

  final globalSource = _optionalString(decoded['source']);
  final globalSourceLicense = _optionalString(decoded['source_license']);
  final globalVerifiedAt = _optionalString(decoded['verified_at']);
  final parsedEntries = <VerifiedHadithEntry>[];
  final seenKeys = <String>{};

  for (final item in entries) {
    if (item is! Map) {
      throw const FormatException('Hadith manifest entries must be objects.');
    }

    final row = Map<String, dynamic>.from(item);
    final entry = _parseHadithEntry(
      row,
      globalSource: globalSource,
      globalSourceLicense: globalSourceLicense,
      globalVerifiedAt: globalVerifiedAt,
    );
    if (!seenKeys.add(entry.uniqueKey)) {
      throw FormatException('Duplicate hadith entry: ${entry.uniqueKey}');
    }
    parsedEntries.add(entry);
  }

  if (parsedEntries.isEmpty) {
    throw const FormatException('Hadith manifest entries must not be empty.');
  }

  if (requireAllCollections) {
    _validateAllCollectionsRepresented(parsedEntries);
    _validateMinimumRowsPerCollection(parsedEntries);
  }

  return List.unmodifiable(parsedEntries);
}

VerifiedHadithEntry _parseHadithEntry(
  Map<String, dynamic> row, {
  required String? globalSource,
  required String? globalSourceLicense,
  required String? globalVerifiedAt,
}) {
  final collectionId = _requiredString(row, 'collection_id').toLowerCase();
  if (!supportedHadithCollections.contains(collectionId) ||
      !_identifierPattern.hasMatch(collectionId)) {
    throw FormatException('Invalid collection_id: $collectionId');
  }

  final book = _requiredString(row, 'book');
  final hadithNumber = _requiredInt(row, 'hadith_number');
  if (hadithNumber < 1) {
    throw FormatException('Invalid hadith_number: $hadithNumber');
  }

  final textAr = _requiredString(row, 'text_ar');
  final textTr = _optionalString(row['text_tr']);
  final textEn = _optionalString(row['text_en']);
  final narrator = _optionalString(row['narrator']);
  final grade = _optionalString(row['grade']);
  final source = _optionalString(row['source']) ?? globalSource;
  final sourceLicense =
      _optionalString(row['source_license']) ?? globalSourceLicense;
  final verifiedAtRaw = _optionalString(row['verified_at']) ?? globalVerifiedAt;

  if (source == null) {
    throw const FormatException('Missing source for hadith entry.');
  }
  if (sourceLicense == null) {
    throw const FormatException('Missing source_license for hadith entry.');
  }
  if (verifiedAtRaw == null) {
    throw const FormatException('Missing verified_at for hadith entry.');
  }
  _validateApprovedSource(
    source,
    approvedHosts: _approvedHadithSourceHosts,
    contentType: 'hadith',
  );

  return VerifiedHadithEntry(
    collectionId: collectionId,
    book: book,
    hadithNumber: hadithNumber,
    textAr: textAr,
    textTr: textTr,
    textEn: textEn,
    narrator: narrator,
    grade: grade,
    source: source,
    sourceLicense: sourceLicense,
    verifiedAt: DateTime.parse(verifiedAtRaw).toUtc(),
  );
}

void _validateAllCollectionsRepresented(List<VerifiedHadithEntry> entries) {
  final represented = entries.map((entry) => entry.collectionId).toSet();
  final missing = supportedHadithCollections.difference(represented).toList()
    ..sort();
  if (missing.isNotEmpty) {
    throw FormatException(
      'Hadith manifest must represent every supported collection. Missing: '
      '${missing.join(', ')}.',
    );
  }
}

void _validateMinimumRowsPerCollection(List<VerifiedHadithEntry> entries) {
  final counts = <String, int>{
    for (final collectionId in supportedHadithCollections) collectionId: 0,
  };
  for (final entry in entries) {
    counts[entry.collectionId] = (counts[entry.collectionId] ?? 0) + 1;
  }

  final undersized =
      counts.entries
          .where((entry) => entry.value < minimumHadithRowsPerCollection)
          .map((entry) => '${entry.key}:${entry.value}')
          .toList()
        ..sort();
  if (undersized.isNotEmpty) {
    throw FormatException(
      'Hadith production manifest must contain at least '
      '$minimumHadithRowsPerCollection verified rows per supported collection. '
      'Undersized: ${undersized.join(', ')}.',
    );
  }
}

String buildHadithSeedSql(Iterable<VerifiedHadithEntry> entries) {
  final rows = entries.toList()
    ..sort((left, right) {
      final collectionCompare = left.collectionId.compareTo(right.collectionId);
      if (collectionCompare != 0) return collectionCompare;
      return left.hadithNumber.compareTo(right.hadithNumber);
    });

  final buffer = StringBuffer()
    ..writeln('-- Auto-generated verified hadith seed SQL')
    ..writeln('-- Generated by tool/generate_hadith_seed.dart')
    ..writeln('-- Apply content_schema.sql before this seed.')
    ..writeln(
      '-- Production manifests must represent every supported hadith collection.',
    )
    ..writeln(
      '-- Production manifests must include at least $minimumHadithRowsPerCollection verified rows per collection.',
    )
    ..writeln();

  for (final entry in rows) {
    _validateApprovedSource(
      entry.source,
      approvedHosts: _approvedHadithSourceHosts,
      contentType: 'hadith',
    );
  }

  for (var start = 0; start < rows.length; start += _seedInsertBatchSize) {
    final batch = rows
        .skip(start)
        .take(_seedInsertBatchSize)
        .toList(growable: false);
    buffer
      ..writeln('INSERT INTO public.hadiths (')
      ..writeln(
        '  collection_id, book, hadith_number, text_ar, text_tr, text_en, narrator, grade, source, source_license, verified_at',
      )
      ..writeln(') VALUES');

    for (var index = 0; index < batch.length; index++) {
      final entry = batch[index];
      final isLast = index == batch.length - 1;
      buffer.writeln('${_hadithValuesSql(entry)}${isLast ? '' : ','}');
    }

    buffer
      ..writeln('ON CONFLICT (collection_id, hadith_number)')
      ..writeln('DO UPDATE SET')
      ..writeln('  book = EXCLUDED.book,')
      ..writeln('  text_ar = EXCLUDED.text_ar,')
      ..writeln('  text_tr = EXCLUDED.text_tr,')
      ..writeln('  text_en = EXCLUDED.text_en,')
      ..writeln('  narrator = EXCLUDED.narrator,')
      ..writeln('  grade = EXCLUDED.grade,')
      ..writeln('  source = EXCLUDED.source,')
      ..writeln('  source_license = EXCLUDED.source_license,')
      ..writeln('  verified_at = EXCLUDED.verified_at;')
      ..writeln();
  }

  return buffer.toString();
}

String _hadithValuesSql(VerifiedHadithEntry entry) {
  return "  ('${_escapeSql(entry.collectionId)}', '${_escapeSql(entry.book)}', ${entry.hadithNumber}, '${_escapeSql(entry.textAr)}', ${_nullableSql(entry.textTr)}, ${_nullableSql(entry.textEn)}, ${_nullableSql(entry.narrator)}, ${_nullableSql(entry.grade)}, '${_escapeSql(entry.source)}', '${_escapeSql(entry.sourceLicense)}', TIMESTAMPTZ '${entry.verifiedAt.toIso8601String()}')";
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

String _nullableSql(String? value) {
  if (value == null) return 'NULL';
  return "'${_escapeSql(value)}'";
}

String _escapeSql(String value) => value.replaceAll("'", "''");

void _printUsage() {
  stdout.writeln('''
Verified hadith seed generator

Usage:
  dart run tool/generate_hadith_seed.dart [options]

Options:
  --manifest=<path>   Verified hadith manifest path. Default: $_defaultManifestPath
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
      'Verified hadith manifest file not found',
      manifestFile.path,
    );
  }

  final entries = parseVerifiedHadithManifest(
    manifestFile.readAsStringSync(),
    requireAllCollections: !allowPartial,
  );
  final sql = buildHadithSeedSql(entries);
  final outputFile = File(outputPath);
  await outputFile.writeAsString(sql);
  stdout.writeln(
    'Generated ${outputFile.path} with ${entries.length} verified hadith rows.',
  );
}
