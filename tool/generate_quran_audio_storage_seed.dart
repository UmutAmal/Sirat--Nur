import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;

import 'quran_audio_file_validation.dart';
import 'quran_audio_source_validation.dart';

const String _defaultManifestPath = 'build/verified_quran_audio/manifest.json';
const String _defaultOutputPath = 'content_seed_quran_audio_storage.sql';
const String _defaultSupabaseProjectUrl =
    'https://amevotnudldbbwogtrtw.supabase.co';
const String _defaultBucketName = 'quran-audio';
const int _surahsPerReciter = 114;
const Set<String> _expectedReciterIds = {
  'abdul_basit_mujawwad',
  'abdul_basit_murattal',
  'alafasy',
  'husary',
  'shuraim',
  'sudais',
};
final RegExp _reciterIdPattern = RegExp(r'^[a-z0-9_-]+$');

String normalizeQuranAudioBucketName(String bucketName) {
  final normalized = bucketName.trim();
  if (normalized != _defaultBucketName) {
    throw ArgumentError.value(
      bucketName,
      'bucketName',
      'Quran audio uploads must target $_defaultBucketName.',
    );
  }
  return normalized;
}

String normalizeSupabaseStorageObjectPath(
  String storagePath, {
  String bucketName = _defaultBucketName,
}) {
  final normalized = storagePath.trim().replaceAll('\\', '/');
  if (normalized.isEmpty) {
    return normalized;
  }

  final withoutLeadingSlash = normalized.replaceFirst(RegExp(r'^/+'), '');
  final bucketPrefix = '$bucketName/';
  if (withoutLeadingSlash.startsWith(bucketPrefix)) {
    return withoutLeadingSlash.substring(bucketPrefix.length);
  }

  return withoutLeadingSlash;
}

String buildSupabaseStoragePublicUrl(
  String storagePath, {
  String supabaseUrl = _defaultSupabaseProjectUrl,
  String bucketName = _defaultBucketName,
}) {
  final normalizedBucketName = normalizeQuranAudioBucketName(bucketName);
  final baseUri = _requireHttpsSupabaseBaseUri(supabaseUrl);
  final encodedSegments = _safeStorageObjectPathSegments(
    storagePath,
    bucketName: normalizedBucketName,
  ).map(Uri.encodeComponent).join('/');

  return '${baseUri.origin}/storage/v1/object/public/$normalizedBucketName/$encodedSegments';
}

Uri _requireHttpsSupabaseBaseUri(String supabaseUrl) {
  final baseUri = Uri.tryParse(supabaseUrl.trim());
  if (baseUri == null || !_isHttpsProjectOrigin(baseUri)) {
    throw const FormatException(
      'Supabase Storage public URLs must use a clean HTTPS project origin.',
    );
  }

  return baseUri;
}

bool _isHttpsProjectOrigin(Uri uri) {
  final hasPath = uri.pathSegments.any((segment) => segment.isNotEmpty);
  return uri.isScheme('https') &&
      uri.host.isNotEmpty &&
      uri.userInfo.isEmpty &&
      !uri.hasQuery &&
      !uri.hasFragment &&
      !hasPath;
}

List<String> _safeStorageObjectPathSegments(
  String storagePath, {
  required String bucketName,
}) {
  final normalizedPath = normalizeSupabaseStorageObjectPath(
    storagePath,
    bucketName: bucketName,
  );
  if (normalizedPath.isEmpty ||
      normalizedPath.contains('://') ||
      normalizedPath.contains('?') ||
      normalizedPath.contains('#')) {
    throw const FormatException(
      'Supabase Storage object paths must be clean relative paths.',
    );
  }

  final objectSegments = normalizedPath
      .split('/')
      .where((segment) => segment.isNotEmpty)
      .toList();
  if (objectSegments.isEmpty || _hasUnsafeObjectPathSegments(objectSegments)) {
    throw const FormatException(
      'Supabase Storage object paths must not contain traversal segments.',
    );
  }

  return objectSegments;
}

bool _hasUnsafeObjectPathSegments(Iterable<String> segments) {
  return segments.any((segment) => segment == '.' || segment == '..');
}

class MirroredAudioFile {
  const MirroredAudioFile({
    required this.surahNumber,
    required this.reciterId,
    required this.sourceUrl,
    required this.verifiedAt,
    required this.localPath,
    required this.sizeBytes,
    required this.sha256,
  });

  final int surahNumber;
  final String reciterId;
  final String sourceUrl;
  final DateTime verifiedAt;
  final String localPath;
  final int sizeBytes;
  final String sha256;

  String get fileName => p.basename(localPath.replaceAll('\\', '/'));

  String storagePath({required String bucketName}) {
    return '$bucketName/$reciterId/$fileName';
  }
}

List<MirroredAudioFile> parseMirroredAudioManifest(
  String manifestJson, {
  bool requireCompleteCatalog = true,
}) {
  final decoded = jsonDecode(manifestJson);
  if (decoded is! Map<String, dynamic>) {
    throw const FormatException('Manifest root must be a JSON object.');
  }

  final files = decoded['files'];
  if (files is! List) {
    throw const FormatException('Manifest must contain a files array.');
  }
  _validateMirrorManifestSummary(decoded, mirroredFileCount: files.length);

  final mirroredFiles = List<MirroredAudioFile>.unmodifiable(
    files.map<MirroredAudioFile>((item) {
      final row = Map<String, dynamic>.from(item as Map);
      final surahNumber = row['surah_number'];
      if (surahNumber is! int || surahNumber < 1 || surahNumber > 114) {
        throw FormatException('Invalid surah_number in manifest row: $row');
      }

      final reciterId = row['reciter']?.toString().trim();
      final sourceUrl = row['source']?.toString().trim();
      final verifiedAtRaw = row['verified_at']?.toString().trim();
      final localPath = row['local_path']?.toString().trim();
      final sizeBytes = row['size_bytes'];
      final sha256Raw = row['sha256']?.toString().trim();
      if (reciterId == null || reciterId.isEmpty) {
        throw FormatException('Missing reciter in manifest row: $row');
      }
      if (!_reciterIdPattern.hasMatch(reciterId)) {
        throw FormatException('Invalid reciter id in manifest row: $reciterId');
      }
      if (sourceUrl == null || sourceUrl.isEmpty) {
        throw FormatException('Missing source in manifest row: $row');
      }
      final parsedSourceUrl = Uri.tryParse(sourceUrl);
      if (parsedSourceUrl == null ||
          !isApprovedQuranSourceUrl(parsedSourceUrl)) {
        throw FormatException(
          'Source URL must use approved Quran.com chapter recitation endpoint '
          'for reciter $reciterId, surah $surahNumber',
        );
      }
      if (verifiedAtRaw == null || verifiedAtRaw.isEmpty) {
        throw FormatException('Missing verified_at in manifest row: $row');
      }
      if (localPath == null || localPath.isEmpty) {
        throw FormatException('Missing local_path in manifest row: $row');
      }
      if (sizeBytes is! int || sizeBytes <= 0) {
        throw FormatException('Invalid size_bytes in manifest row: $row');
      }
      if (sha256Raw == null || sha256Raw.isEmpty) {
        throw FormatException('Missing sha256 in manifest row: $row');
      }
      if (!isValidQuranAudioSha256Hex(sha256Raw)) {
        throw FormatException('Invalid sha256 in manifest row: $row');
      }
      final expectedFileName = '${surahNumber.toString().padLeft(3, '0')}.mp3';
      final normalizedLocalPath = localPath.replaceAll('\\', '/');
      final normalizedFileName = p.basename(normalizedLocalPath);
      if (normalizedFileName != expectedFileName) {
        throw FormatException(
          'Invalid local_path file name for reciter $reciterId, '
          'surah $surahNumber: expected $expectedFileName.',
        );
      }
      final localPathSegments = normalizedLocalPath
          .split('/')
          .where((segment) => segment.isNotEmpty)
          .toList(growable: false);
      if (localPathSegments.length < 2 ||
          localPathSegments[localPathSegments.length - 2] != reciterId) {
        throw FormatException(
          'Invalid local_path reciter directory for reciter $reciterId, '
          'surah $surahNumber.',
        );
      }

      return MirroredAudioFile(
        surahNumber: surahNumber,
        reciterId: reciterId,
        sourceUrl: sourceUrl,
        verifiedAt: DateTime.parse(verifiedAtRaw).toUtc(),
        localPath: localPath,
        sizeBytes: sizeBytes,
        sha256: sha256Raw.toLowerCase(),
      );
    }),
  );
  if (requireCompleteCatalog) {
    _validateCompleteQuranAudioCatalog(mirroredFiles);
  }

  return mirroredFiles;
}

void _validateCompleteQuranAudioCatalog(List<MirroredAudioFile> files) {
  final expectedRows = _expectedReciterIds.length * _surahsPerReciter;
  if (files.length != expectedRows) {
    throw FormatException(
      'Mirror manifest is not a complete Quran audio catalog: expected '
      '$expectedRows files but found ${files.length}.',
    );
  }

  final seen = <String, Set<int>>{};
  for (final file in files) {
    if (!_expectedReciterIds.contains(file.reciterId)) {
      throw FormatException(
        'Unsupported reciter in complete Quran audio manifest: '
        '${file.reciterId}.',
      );
    }

    final surahs = seen.putIfAbsent(file.reciterId, () => <int>{});
    if (!surahs.add(file.surahNumber)) {
      throw FormatException(
        'Duplicate Quran audio file for reciter ${file.reciterId}, '
        'surah ${file.surahNumber}.',
      );
    }
  }

  for (final reciterId in _expectedReciterIds) {
    final surahs = seen[reciterId] ?? const <int>{};
    if (surahs.length != _surahsPerReciter) {
      throw FormatException(
        'Incomplete Quran audio manifest for reciter $reciterId: expected '
        '$_surahsPerReciter surahs but found ${surahs.length}.',
      );
    }
  }
}

void _validateMirrorManifestSummary(
  Map<String, dynamic> manifest, {
  required int mirroredFileCount,
}) {
  final requested = _requiredManifestCount(manifest, 'requested');
  final downloaded = _requiredManifestCount(manifest, 'downloaded');
  final skipped = _requiredManifestCount(manifest, 'skipped');
  final failed = manifest['failed'];
  if (failed is! List) {
    throw const FormatException('Manifest failed field must be an array.');
  }
  if (failed.isNotEmpty) {
    throw FormatException(
      'Manifest contains ${failed.length} failed audio downloads.',
    );
  }
  if (downloaded + skipped != requested) {
    throw FormatException(
      'Manifest summary mismatch: downloaded + skipped must equal requested.',
    );
  }
  if (mirroredFileCount != requested) {
    throw FormatException(
      'Manifest is incomplete: requested $requested files but contains '
      '$mirroredFileCount mirrored file rows.',
    );
  }
}

int _requiredManifestCount(Map<String, dynamic> manifest, String key) {
  final value = manifest[key];
  if (value is! int || value < 0) {
    throw FormatException('Manifest $key must be a non-negative integer.');
  }
  return value;
}

String buildQuranAudioStorageSeedSql(
  Iterable<MirroredAudioFile> files, {
  String bucketName = _defaultBucketName,
  bool allowPartial = false,
}) {
  final normalizedBucketName = normalizeQuranAudioBucketName(bucketName);
  final rows = files.toList()
    ..sort((left, right) {
      final reciterCompare = left.reciterId.compareTo(right.reciterId);
      if (reciterCompare != 0) {
        return reciterCompare;
      }
      return left.surahNumber.compareTo(right.surahNumber);
    });
  if (!allowPartial) {
    _validateCompleteQuranAudioCatalog(rows);
  }

  final buffer = StringBuffer()
    ..writeln('-- Auto-generated Quran audio storage seed SQL')
    ..writeln('-- Generated by tool/generate_quran_audio_storage_seed.dart')
    ..writeln('-- Distribution namespace: $normalizedBucketName')
    ..writeln(
      '-- Apply only after the Cloudflare/GitHub Quran audio distribution summary is complete.',
    );
  if (allowPartial) {
    buffer
      ..writeln(
        '-- DEVELOPMENT-ONLY PARTIAL SEED: do not apply to production databases.',
      )
      ..writeln(
        '-- This file was generated with --allow-partial and may omit Quran audio rows.',
      );
  } else {
    buffer.writeln(
      '-- Incomplete mirror manifests are rejected before this file is generated.',
    );
  }
  buffer.writeln();

  for (final file in rows) {
    final storagePath = normalizeSupabaseStorageObjectPath(
      file.storagePath(bucketName: normalizedBucketName),
      bucketName: normalizedBucketName,
    );
    buffer
      ..writeln('INSERT INTO public.audio_files (')
      ..writeln(
        '  type, title, url, storage_path, surah_number, duration_seconds, reciter, language, source, verified_at',
      )
      ..writeln(') VALUES (')
      ..writeln(
        "  'quran_surah', 'Surah ${file.surahNumber}', NULL, '${_escapeSql(storagePath)}', ${file.surahNumber}, NULL, '${_escapeSql(file.reciterId)}', 'ar', '${_escapeSql(file.sourceUrl)}', TIMESTAMPTZ '${file.verifiedAt.toIso8601String()}'",
      )
      ..writeln(') ON CONFLICT (type, reciter, surah_number) DO UPDATE SET')
      ..writeln('  title = EXCLUDED.title,')
      ..writeln('  url = EXCLUDED.url,')
      ..writeln('  storage_path = EXCLUDED.storage_path,')
      ..writeln('  duration_seconds = EXCLUDED.duration_seconds,')
      ..writeln('  language = EXCLUDED.language,')
      ..writeln('  source = EXCLUDED.source,')
      ..writeln('  verified_at = EXCLUDED.verified_at;')
      ..writeln();
  }

  return buffer.toString();
}

String _escapeSql(String value) => value.replaceAll("'", "''");

void validateQuranAudioStorageSeedOutputMode({
  required bool allowPartial,
  required String outputPath,
}) {
  if (!allowPartial) {
    return;
  }

  final normalizedOutput = p.normalize(outputPath.trim()).replaceAll('\\', '/');
  if (normalizedOutput == 'build' || normalizedOutput.startsWith('build/')) {
    return;
  }

  throw StateError(
    '--allow-partial output must stay under build/ and must not overwrite '
    'production seed files.',
  );
}

void _printUsage() {
  stdout.writeln('''
Quran audio storage seed generator

Usage:
  dart run tool/generate_quran_audio_storage_seed.dart [options]

Options:
  --manifest=<path>   Mirror manifest path. Default: $_defaultManifestPath
  --output=<path>     Output SQL path. Default: $_defaultOutputPath
  --bucket=<name>     Storage bucket name. Must be $_defaultBucketName. Default: $_defaultBucketName
  --allow-partial     Allow development-only partial manifests
  --help              Show this help
''');
}

Future<void> main(List<String> args) async {
  var manifestPath = _defaultManifestPath;
  var outputPath = _defaultOutputPath;
  var bucketName = _defaultBucketName;
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
    if (arg.startsWith('--bucket=')) {
      bucketName = normalizeQuranAudioBucketName(
        arg.substring('--bucket='.length),
      );
      continue;
    }

    throw FormatException('Unsupported argument: $arg');
  }

  final manifestFile = File(manifestPath);
  if (!manifestFile.existsSync()) {
    throw FileSystemException(
      'Mirror manifest file not found',
      manifestFile.path,
    );
  }
  validateQuranAudioStorageSeedOutputMode(
    allowPartial: allowPartial,
    outputPath: outputPath,
  );

  final files = parseMirroredAudioManifest(
    manifestFile.readAsStringSync(),
    requireCompleteCatalog: !allowPartial,
  );
  final sql = buildQuranAudioStorageSeedSql(
    files,
    bucketName: bucketName,
    allowPartial: allowPartial,
  );
  final outputFile = File(outputPath);
  await outputFile.writeAsString(sql);
  stdout.writeln(
    'Generated ${outputFile.path} with ${files.length} storage-backed audio rows.',
  );
}
