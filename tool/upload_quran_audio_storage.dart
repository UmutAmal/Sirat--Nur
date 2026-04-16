import 'dart:async';
import 'dart:io';

import 'package:path/path.dart' as p;

import 'generate_quran_audio_storage_seed.dart';
import 'quran_audio_file_validation.dart';

const String _defaultManifestPath = 'build/verified_quran_audio/manifest.json';
const String _defaultBucketName = 'quran-audio';
const String _defaultServiceRoleKeyEnv = 'SUPABASE_SERVICE_ROLE_KEY';

class QuranAudioStorageUploadSummary {
  const QuranAudioStorageUploadSummary({
    required this.requested,
    required this.uploaded,
    required this.failed,
  });

  final int requested;
  final int uploaded;
  final List<String> failed;
}

String storageObjectPathForMirroredAudioFile(MirroredAudioFile file) {
  final fileName = p.basename(file.localPath);
  return '${file.reciterId}/$fileName';
}

Uri buildSupabaseStorageObjectUploadUri({
  required Uri supabaseUrl,
  required String bucketName,
  required String objectPath,
}) {
  final normalizedObjectPath = objectPath.trim().replaceAll('\\', '/');
  final objectSegments = normalizedObjectPath
      .split('/')
      .map((segment) => segment.trim())
      .where((segment) => segment.isNotEmpty)
      .toList();
  if (objectSegments.isEmpty) {
    throw ArgumentError.value(objectPath, 'objectPath', 'must not be empty');
  }

  return supabaseUrl.replace(
    pathSegments: <String>[
      ...supabaseUrl.pathSegments.where((segment) => segment.isNotEmpty),
      'storage',
      'v1',
      'object',
      bucketName,
      ...objectSegments,
    ],
  );
}

Map<String, String> buildSupabaseStorageUploadHeaders({
  required String serviceRoleKey,
  bool upsert = true,
}) {
  final key = serviceRoleKey.trim();
  if (key.isEmpty) {
    throw ArgumentError.value(
      serviceRoleKey,
      'serviceRoleKey',
      'must not be empty',
    );
  }

  return <String, String>{
    HttpHeaders.authorizationHeader: 'Bearer $key',
    'apikey': key,
    HttpHeaders.contentTypeHeader: 'audio/mpeg',
    'x-upsert': upsert ? 'true' : 'false',
  };
}

String describeQuranAudioStorageUploadFailure(Object error) {
  if (error is TimeoutException) {
    return 'network timeout';
  }
  if (error is SocketException) {
    return 'network error';
  }
  if (error is HandshakeException) {
    return 'tls error';
  }
  if (error is HttpException) {
    return 'http error';
  }
  if (error is FileSystemException) {
    return 'file system error';
  }
  return 'unexpected upload error';
}

List<String> validateMirroredQuranAudioUploadPlan(
  Iterable<MirroredAudioFile> files,
) {
  final failed = <String>[];
  final seenObjectPaths = <String>{};

  for (final row in files) {
    final objectPath = storageObjectPathForMirroredAudioFile(row);
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
    if (!hasLikelyMp3Header(localFile)) {
      failed.add('$objectPath: invalid mp3 file');
    }
  }

  return List.unmodifiable(failed);
}

Future<QuranAudioStorageUploadSummary> uploadMirroredQuranAudioFiles({
  required Iterable<MirroredAudioFile> files,
  required Uri supabaseUrl,
  required String serviceRoleKey,
  String bucketName = _defaultBucketName,
  bool upsert = true,
  HttpClient? httpClient,
}) async {
  final rows = files.toList();
  final planFailures = validateMirroredQuranAudioUploadPlan(rows);
  if (planFailures.isNotEmpty) {
    return QuranAudioStorageUploadSummary(
      requested: rows.length,
      uploaded: 0,
      failed: planFailures,
    );
  }

  final client = httpClient ?? HttpClient();
  final closeClient = httpClient == null;
  final failed = <String>[];
  var uploaded = 0;

  try {
    for (final row in rows) {
      final localFile = File(row.localPath);
      final objectPath = storageObjectPathForMirroredAudioFile(row);

      try {
        final uploadUri = buildSupabaseStorageObjectUploadUri(
          supabaseUrl: supabaseUrl,
          bucketName: bucketName,
          objectPath: objectPath,
        );
        final request = await client.postUrl(uploadUri);
        buildSupabaseStorageUploadHeaders(
          serviceRoleKey: serviceRoleKey,
          upsert: upsert,
        ).forEach(request.headers.set);
        request.contentLength = localFile.lengthSync();
        await request.addStream(localFile.openRead());

        final response = await request.close();
        await response.drain<void>();
        if (response.statusCode != HttpStatus.ok &&
            response.statusCode != HttpStatus.created) {
          failed.add('$objectPath: HTTP ${response.statusCode}');
          continue;
        }

        uploaded++;
      } catch (error) {
        failed.add(
          '$objectPath: ${describeQuranAudioStorageUploadFailure(error)}',
        );
      }
    }
  } finally {
    if (closeClient) {
      client.close(force: true);
    }
  }

  return QuranAudioStorageUploadSummary(
    requested: rows.length,
    uploaded: uploaded,
    failed: List.unmodifiable(failed),
  );
}

void _printUsage() {
  stdout.writeln('''
Quran audio Supabase Storage uploader

Usage:
  dart run tool/upload_quran_audio_storage.dart [options]

Options:
  --manifest=<path>              Mirror manifest path. Default: $_defaultManifestPath
  --supabase-url=<url>           Supabase project URL. Falls back to SUPABASE_URL env.
  --service-role-key-env=<name>  Env var containing service role key. Default: $_defaultServiceRoleKeyEnv
  --bucket=<name>                Storage bucket name. Default: $_defaultBucketName
  --no-upsert                    Do not overwrite existing objects.
  --dry-run                      Validate manifest and print upload plan without network writes.
  --help                         Show this help
''');
}

Future<void> main(List<String> args) async {
  var manifestPath = _defaultManifestPath;
  var serviceRoleKeyEnv = _defaultServiceRoleKeyEnv;
  var bucketName = _defaultBucketName;
  var upsert = true;
  var dryRun = false;
  String? supabaseUrlRaw = Platform.environment['SUPABASE_URL'];

  for (final arg in args) {
    if (arg == '--help') {
      _printUsage();
      return;
    }
    if (arg == '--no-upsert') {
      upsert = false;
      continue;
    }
    if (arg == '--dry-run') {
      dryRun = true;
      continue;
    }
    if (arg.startsWith('--manifest=')) {
      manifestPath = arg.substring('--manifest='.length);
      continue;
    }
    if (arg.startsWith('--supabase-url=')) {
      supabaseUrlRaw = arg.substring('--supabase-url='.length).trim();
      continue;
    }
    if (arg.startsWith('--service-role-key-env=')) {
      serviceRoleKeyEnv = arg.substring('--service-role-key-env='.length);
      continue;
    }
    if (arg.startsWith('--bucket=')) {
      bucketName = arg.substring('--bucket='.length).trim();
      continue;
    }

    throw FormatException('Unsupported argument: $arg');
  }

  if (supabaseUrlRaw == null || supabaseUrlRaw.trim().isEmpty) {
    throw StateError('SUPABASE_URL env or --supabase-url is required.');
  }
  final supabaseUrl = Uri.parse(supabaseUrlRaw.trim());
  final manifestFile = File(manifestPath);
  if (!manifestFile.existsSync()) {
    throw FileSystemException(
      'Mirror manifest file not found',
      manifestFile.path,
    );
  }

  final files = parseMirroredAudioManifest(manifestFile.readAsStringSync());
  final planFailures = validateMirroredQuranAudioUploadPlan(files);
  if (dryRun) {
    if (planFailures.isNotEmpty) {
      for (final failure in planFailures) {
        stderr.writeln('FAILED: $failure');
      }
      exitCode = 1;
      return;
    }

    stdout.writeln(
      'Verified upload plan: files=${files.length}, bucket=$bucketName, '
      'supabase=${supabaseUrl.host}',
    );
    return;
  }

  final serviceRoleKey = Platform.environment[serviceRoleKeyEnv]?.trim();
  if (serviceRoleKey == null || serviceRoleKey.isEmpty) {
    throw StateError('$serviceRoleKeyEnv env is required for upload.');
  }

  if (planFailures.isNotEmpty) {
    for (final failure in planFailures) {
      stderr.writeln('FAILED: $failure');
    }
    exitCode = 1;
    return;
  }

  final summary = await uploadMirroredQuranAudioFiles(
    files: files,
    supabaseUrl: supabaseUrl,
    serviceRoleKey: serviceRoleKey,
    bucketName: bucketName,
    upsert: upsert,
  );

  stdout.writeln(
    'Quran audio storage upload finished: '
    'requested=${summary.requested}, '
    'uploaded=${summary.uploaded}, '
    'failed=${summary.failed.length}, '
    'bucket=$bucketName',
  );

  if (summary.failed.isNotEmpty) {
    for (final failure in summary.failed) {
      stderr.writeln('FAILED: $failure');
    }
    exitCode = 1;
  }
}
