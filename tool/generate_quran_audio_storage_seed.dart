import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:sirat_i_nur/core/network/supabase_storage_url.dart';

const String _defaultManifestPath = 'build/verified_quran_audio/manifest.json';
const String _defaultOutputPath = 'content_seed_quran_audio_storage.sql';
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

class MirroredAudioFile {
  const MirroredAudioFile({
    required this.surahNumber,
    required this.reciterId,
    required this.sourceUrl,
    required this.verifiedAt,
    required this.localPath,
  });

  final int surahNumber;
  final String reciterId;
  final String sourceUrl;
  final DateTime verifiedAt;
  final String localPath;

  String storagePath({required String bucketName}) {
    final fileName = p.basename(localPath);
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
      if (reciterId == null || reciterId.isEmpty) {
        throw FormatException('Missing reciter in manifest row: $row');
      }
      if (!_reciterIdPattern.hasMatch(reciterId)) {
        throw FormatException('Invalid reciter id in manifest row: $reciterId');
      }
      if (sourceUrl == null || sourceUrl.isEmpty) {
        throw FormatException('Missing source in manifest row: $row');
      }
      if (verifiedAtRaw == null || verifiedAtRaw.isEmpty) {
        throw FormatException('Missing verified_at in manifest row: $row');
      }
      if (localPath == null || localPath.isEmpty) {
        throw FormatException('Missing local_path in manifest row: $row');
      }
      final expectedFileName = '${surahNumber.toString().padLeft(3, '0')}.mp3';
      final localFileName = p.basename(localPath.replaceAll('\\', '/'));
      if (localFileName != expectedFileName) {
        throw FormatException(
          'Invalid local_path file name for reciter $reciterId, '
          'surah $surahNumber: expected $expectedFileName.',
        );
      }

      return MirroredAudioFile(
        surahNumber: surahNumber,
        reciterId: reciterId,
        sourceUrl: sourceUrl,
        verifiedAt: DateTime.parse(verifiedAtRaw).toUtc(),
        localPath: localPath,
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
}) {
  final rows = files.toList()
    ..sort((left, right) {
      final reciterCompare = left.reciterId.compareTo(right.reciterId);
      if (reciterCompare != 0) {
        return reciterCompare;
      }
      return left.surahNumber.compareTo(right.surahNumber);
    });
  final normalizedBucketName = normalizeQuranAudioBucketName(bucketName);

  final buffer = StringBuffer()
    ..writeln('-- Auto-generated Quran audio storage seed SQL')
    ..writeln('-- Generated by tool/generate_quran_audio_storage_seed.dart')
    ..writeln('-- Target bucket: $normalizedBucketName')
    ..writeln(
      '-- Apply only after all matching MP3 files are uploaded to the target Supabase Storage bucket.',
    )
    ..writeln(
      '-- Incomplete mirror manifests are rejected before this file is generated.',
    )
    ..writeln();

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

  final files = parseMirroredAudioManifest(
    manifestFile.readAsStringSync(),
    requireCompleteCatalog: !allowPartial,
  );
  final sql = buildQuranAudioStorageSeedSql(files, bucketName: bucketName);
  final outputFile = File(outputPath);
  await outputFile.writeAsString(sql);
  stdout.writeln(
    'Generated ${outputFile.path} with ${files.length} storage-backed audio rows.',
  );
}
