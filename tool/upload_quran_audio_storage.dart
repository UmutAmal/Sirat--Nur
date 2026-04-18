import 'dart:io';

import 'generate_quran_audio_storage_seed.dart';
import 'quran_audio_file_validation.dart';

const String _defaultManifestPath = 'build/verified_quran_audio/manifest.json';
const String _defaultBucketName = 'quran-audio';

String storageObjectPathForMirroredAudioFile(MirroredAudioFile file) {
  return '${file.reciterId}/${file.fileName}';
}

List<String> _safeUploadObjectSegments(String objectPath) {
  final normalizedObjectPath = objectPath.trim().replaceAll('\\', '/');
  if (normalizedObjectPath.isEmpty ||
      normalizedObjectPath.contains('://') ||
      normalizedObjectPath.contains('?') ||
      normalizedObjectPath.contains('#')) {
    throw ArgumentError.value(
      objectPath,
      'objectPath',
      'must be a clean relative object path',
    );
  }

  final objectSegments = normalizedObjectPath
      .split('/')
      .map((segment) => segment.trim())
      .where((segment) => segment.isNotEmpty)
      .toList();
  if (objectSegments.isEmpty ||
      objectSegments.any((segment) => segment == '.' || segment == '..')) {
    throw ArgumentError.value(
      objectPath,
      'objectPath',
      'must not contain traversal segments',
    );
  }

  return objectSegments;
}

List<String> validateMirroredQuranAudioUploadPlan(
  Iterable<MirroredAudioFile> files,
) {
  final failed = <String>[];
  final seenObjectPaths = <String>{};

  for (final row in files) {
    final objectPath = storageObjectPathForMirroredAudioFile(row);
    try {
      _safeUploadObjectSegments(objectPath);
    } on ArgumentError {
      failed.add('$objectPath: unsafe storage object path');
      continue;
    }
    if (!seenObjectPaths.add(objectPath)) {
      failed.add('$objectPath: duplicate storage object path');
      continue;
    }

    final localFile = File(row.localPath);
    if (!localFile.existsSync()) {
      failed.add('$objectPath: missing local file');
      continue;
    }
    if (localFile.lengthSync() == 0) {
      failed.add('$objectPath: empty local file');
      continue;
    }
    if (localFile.lengthSync() != row.sizeBytes) {
      failed.add('$objectPath: size mismatch');
      continue;
    }
    if (sha256HexForFile(localFile) != row.sha256) {
      failed.add('$objectPath: checksum mismatch');
      continue;
    }
    if (!hasLikelyMp3Header(localFile)) {
      failed.add('$objectPath: invalid mp3 file');
    }
  }

  return List.unmodifiable(failed);
}

void _printUsage() {
  stdout.writeln('''
Quran audio legacy Supabase Storage validation shim

Supabase Storage Quran audio uploads are retired for store releases.
Use tool/upload_quran_audio_distribution.ps1 for Cloudflare/GitHub upload.

Usage:
  dart run tool/upload_quran_audio_storage.dart [options]

Options:
  --manifest=<path>              Mirror manifest path. Default: $_defaultManifestPath
  --bucket=<name>                Storage bucket name. Must be $_defaultBucketName. Default: $_defaultBucketName
  --dry-run                      Validate manifest and print upload plan without network writes.
  --help                         Show this help
''');
}

Future<void> main(List<String> args) async {
  var manifestPath = _defaultManifestPath;
  var bucketName = _defaultBucketName;
  var dryRun = false;

  for (final arg in args) {
    if (arg == '--help') {
      _printUsage();
      return;
    }
    if (arg == '--dry-run') {
      dryRun = true;
      continue;
    }
    if (arg.startsWith('--manifest=')) {
      manifestPath = arg.substring('--manifest='.length);
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

  bucketName = normalizeQuranAudioBucketName(bucketName);
  final manifestFile = File(manifestPath);
  if (!manifestFile.existsSync()) {
    throw FileSystemException(
      'Mirror manifest file not found',
      manifestFile.path,
    );
  }

  final files = parseMirroredAudioManifest(manifestFile.readAsStringSync());
  final planFailures = validateMirroredQuranAudioUploadPlan(files);
  if (!dryRun) {
    throw StateError(
      'Supabase Storage Quran audio uploads are retired. '
      'Use tool/upload_quran_audio_distribution.ps1 for Cloudflare/GitHub distribution.',
    );
  }

  if (dryRun) {
    if (planFailures.isNotEmpty) {
      for (final failure in planFailures) {
        stderr.writeln('FAILED: $failure');
      }
      exitCode = 1;
      return;
    }

    stdout.writeln(
      'Verified legacy validation plan: files=${files.length}, '
      'namespace=$bucketName',
    );
    return;
  }
}
