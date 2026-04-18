import 'dart:convert';
import 'dart:io';

import 'generate_quran_audio_storage_seed.dart';
import 'upload_quran_audio_storage.dart'
    show
        storageObjectPathForMirroredAudioFile,
        validateMirroredQuranAudioUploadPlan;

const String githubOverflowReciterId = 'abdul_basit_murattal';
const int cloudflareR2FreeTierByteLimit = 10 * 1024 * 1024 * 1024;
const String _defaultManifestPath = 'build/verified_quran_audio/manifest.json';
const String _defaultOutputPath =
    'build/quran_audio_distribution_upload_plan.json';

class QuranAudioDistributionObject {
  const QuranAudioDistributionObject({
    required this.provider,
    required this.reciterId,
    required this.surahNumber,
    required this.localPath,
    required this.sizeBytes,
    required this.sha256,
    required this.objectPath,
    required this.assetName,
  });

  final String provider;
  final String reciterId;
  final int surahNumber;
  final String localPath;
  final int sizeBytes;
  final String sha256;
  final String objectPath;
  final String assetName;

  Map<String, Object?> toJson() => <String, Object?>{
    'provider': provider,
    'reciter': reciterId,
    'surah_number': surahNumber,
    'local_path': localPath,
    'size_bytes': sizeBytes,
    'sha256': sha256,
    'object_path': objectPath,
    'asset_name': assetName,
  };
}

class QuranAudioDistributionPartition {
  const QuranAudioDistributionPartition({
    required this.provider,
    required this.files,
    required this.bytes,
    required this.objects,
  });

  final String provider;
  final int files;
  final int bytes;
  final List<QuranAudioDistributionObject> objects;

  Map<String, Object?> toJson() => <String, Object?>{
    'provider': provider,
    'files': files,
    'bytes': bytes,
    'objects': objects.map((object) => object.toJson()).toList(),
  };
}

class QuranAudioDistributionPlan {
  const QuranAudioDistributionPlan({
    required this.requested,
    required this.cloudflare,
    required this.github,
    required this.validationFailures,
    required this.generatedAt,
  });

  final int requested;
  final QuranAudioDistributionPartition cloudflare;
  final QuranAudioDistributionPartition github;
  final List<String> validationFailures;
  final DateTime generatedAt;

  Map<String, Object?> toJson() => <String, Object?>{
    'generated_at': generatedAt.toUtc().toIso8601String(),
    'requested': requested,
    'github_overflow_reciter': githubOverflowReciterId,
    'cloudflare_r2_free_tier_byte_limit': cloudflareR2FreeTierByteLimit,
    'cloudflare': cloudflare.toJson(),
    'github': github.toJson(),
    'validation_failures': validationFailures,
  };
}

String cloudflareR2ObjectPathForMirroredAudioFile(MirroredAudioFile file) {
  return storageObjectPathForMirroredAudioFile(file);
}

String githubReleaseAssetNameForMirroredAudioFile(MirroredAudioFile file) {
  final surah = file.surahNumber.toString().padLeft(3, '0');
  return '${file.reciterId}_$surah.mp3';
}

List<String> validateQuranAudioDistributionPlan(
  Iterable<MirroredAudioFile> files, {
  int cloudflareByteLimit = cloudflareR2FreeTierByteLimit,
}) {
  final rows = files.toList();
  final failures = <String>[...validateMirroredQuranAudioUploadPlan(rows)];
  final cloudflareObjectPaths = <String>{};
  final githubAssetNames = <String>{};
  var cloudflareBytes = 0;
  var cloudflareFiles = 0;
  var githubFiles = 0;

  for (final file in rows) {
    if (file.reciterId == githubOverflowReciterId) {
      githubFiles += 1;
      final assetName = githubReleaseAssetNameForMirroredAudioFile(file);
      if (!githubAssetNames.add(assetName)) {
        failures.add('$assetName: duplicate GitHub release asset name');
      }
      continue;
    }

    cloudflareFiles += 1;
    cloudflareBytes += file.sizeBytes;
    final objectPath = cloudflareR2ObjectPathForMirroredAudioFile(file);
    if (!cloudflareObjectPaths.add(objectPath)) {
      failures.add('$objectPath: duplicate Cloudflare R2 object path');
    }
  }

  if (cloudflareBytes >= cloudflareByteLimit) {
    failures.add(
      'Cloudflare R2 partition exceeds byte limit: '
      '$cloudflareBytes >= $cloudflareByteLimit',
    );
  }

  if (rows.length == 684) {
    if (githubFiles != 114) {
      failures.add(
        'GitHub overflow partition must contain 114 files, found '
        '$githubFiles.',
      );
    }
    if (cloudflareFiles != 570) {
      failures.add(
        'Cloudflare R2 partition must contain 570 files, found '
        '$cloudflareFiles.',
      );
    }
  }

  return List.unmodifiable(failures);
}

QuranAudioDistributionPlan buildQuranAudioDistributionPlan(
  Iterable<MirroredAudioFile> files, {
  int cloudflareByteLimit = cloudflareR2FreeTierByteLimit,
  DateTime? generatedAt,
}) {
  final rows = files.toList()
    ..sort((left, right) {
      final reciterCompare = left.reciterId.compareTo(right.reciterId);
      if (reciterCompare != 0) {
        return reciterCompare;
      }
      return left.surahNumber.compareTo(right.surahNumber);
    });
  final cloudflareObjects = <QuranAudioDistributionObject>[];
  final githubObjects = <QuranAudioDistributionObject>[];

  for (final file in rows) {
    if (file.reciterId == githubOverflowReciterId) {
      githubObjects.add(
        QuranAudioDistributionObject(
          provider: 'github_release',
          reciterId: file.reciterId,
          surahNumber: file.surahNumber,
          localPath: file.localPath,
          sizeBytes: file.sizeBytes,
          sha256: file.sha256,
          objectPath: '',
          assetName: githubReleaseAssetNameForMirroredAudioFile(file),
        ),
      );
      continue;
    }

    cloudflareObjects.add(
      QuranAudioDistributionObject(
        provider: 'cloudflare_r2',
        reciterId: file.reciterId,
        surahNumber: file.surahNumber,
        localPath: file.localPath,
        sizeBytes: file.sizeBytes,
        sha256: file.sha256,
        objectPath: cloudflareR2ObjectPathForMirroredAudioFile(file),
        assetName: '',
      ),
    );
  }

  return QuranAudioDistributionPlan(
    requested: rows.length,
    cloudflare: QuranAudioDistributionPartition(
      provider: 'cloudflare_r2',
      files: cloudflareObjects.length,
      bytes: cloudflareObjects.fold<int>(
        0,
        (total, object) => total + object.sizeBytes,
      ),
      objects: List.unmodifiable(cloudflareObjects),
    ),
    github: QuranAudioDistributionPartition(
      provider: 'github_release',
      files: githubObjects.length,
      bytes: githubObjects.fold<int>(
        0,
        (total, object) => total + object.sizeBytes,
      ),
      objects: List.unmodifiable(githubObjects),
    ),
    validationFailures: validateQuranAudioDistributionPlan(
      rows,
      cloudflareByteLimit: cloudflareByteLimit,
    ),
    generatedAt: generatedAt ?? DateTime.now().toUtc(),
  );
}

void _printUsage() {
  stdout.writeln('''
Quran audio Cloudflare/GitHub distribution planner

Usage:
  dart run tool/quran_audio_distribution_plan.dart [options]

Options:
  --manifest=<path>       Mirror manifest path. Default: $_defaultManifestPath
  --output=<path>         Output JSON path. Default: $_defaultOutputPath
  --stdout               Print JSON to stdout instead of writing a file.
  --allow-partial         Allow partial manifests for local tests only.
  --help                 Show this help.
''');
}

Future<void> main(List<String> args) async {
  var manifestPath = _defaultManifestPath;
  var outputPath = _defaultOutputPath;
  var writeStdout = false;
  var allowPartial = false;

  for (final arg in args) {
    if (arg == '--help') {
      _printUsage();
      return;
    }
    if (arg == '--stdout') {
      writeStdout = true;
      continue;
    }
    if (arg == '--allow-partial') {
      allowPartial = true;
      continue;
    }
    if (arg.startsWith('--manifest=')) {
      manifestPath = arg.substring('--manifest='.length).trim();
      continue;
    }
    if (arg.startsWith('--output=')) {
      outputPath = arg.substring('--output='.length).trim();
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
  final plan = buildQuranAudioDistributionPlan(files);
  final encoded = const JsonEncoder.withIndent('  ').convert(plan.toJson());

  if (writeStdout) {
    stdout.writeln(encoded);
  } else {
    final outputFile = File(outputPath);
    await outputFile.parent.create(recursive: true);
    await outputFile.writeAsString('$encoded\n');
    stdout.writeln(
      'Quran audio distribution plan written: ${outputFile.path} '
      'cloudflare=${plan.cloudflare.files}, github=${plan.github.files}, '
      'failures=${plan.validationFailures.length}',
    );
  }

  if (plan.validationFailures.isNotEmpty) {
    for (final failure in plan.validationFailures) {
      stderr.writeln('FAILED: $failure');
    }
    exitCode = 1;
  }
}
