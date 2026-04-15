import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import '../tool/generate_quran_audio_storage_seed.dart';
import '../tool/upload_quran_audio_storage.dart';

void main() {
  group('upload_quran_audio_storage tool', () {
    test('builds Supabase object upload URLs without embedding secrets', () {
      final uri = buildSupabaseStorageObjectUploadUri(
        supabaseUrl: Uri.parse('https://example.supabase.co'),
        bucketName: 'quran-audio',
        objectPath: 'alafasy/001.mp3',
      );

      expect(
        uri.toString(),
        'https://example.supabase.co/storage/v1/object/quran-audio/alafasy/001.mp3',
      );
    });

    test('builds upload headers with service role key only in headers', () {
      final headers = buildSupabaseStorageUploadHeaders(
        serviceRoleKey: 'service-secret',
      );

      expect(headers[HttpHeaders.authorizationHeader], 'Bearer service-secret');
      expect(headers['apikey'], 'service-secret');
      expect(headers[HttpHeaders.contentTypeHeader], 'audio/mpeg');
      expect(headers['x-upsert'], 'true');
    });

    test('derives storage object paths from verified mirror rows', () {
      final file = MirroredAudioFile(
        surahNumber: 1,
        reciterId: 'alafasy',
        sourceUrl: 'https://api.quran.com/api/v4/chapter_recitations/7',
        verifiedAt: DateTime.utc(2026, 4, 8),
        localPath: 'build/verified_quran_audio/alafasy/001.mp3',
      );

      expect(storageObjectPathForMirroredAudioFile(file), 'alafasy/001.mp3');
    });

    test('validates local mirrored files before upload or dry-run', () {
      final tempDir = Directory.systemTemp.createTempSync('sirat_upload_plan_');
      addTearDown(() {
        if (tempDir.existsSync()) {
          tempDir.deleteSync(recursive: true);
        }
      });

      final existingFile = File(
        '${tempDir.path}${Platform.pathSeparator}001.mp3',
      )..writeAsBytesSync(<int>[1, 2, 3]);
      final emptyFile = File('${tempDir.path}${Platform.pathSeparator}003.mp3')
        ..writeAsBytesSync(<int>[]);
      final missingPath = '${tempDir.path}${Platform.pathSeparator}002.mp3';

      final failures = validateMirroredQuranAudioUploadPlan([
        MirroredAudioFile(
          surahNumber: 1,
          reciterId: 'alafasy',
          sourceUrl: 'https://api.quran.com/api/v4/chapter_recitations/7',
          verifiedAt: DateTime.utc(2026, 4, 8),
          localPath: existingFile.path,
        ),
        MirroredAudioFile(
          surahNumber: 2,
          reciterId: 'alafasy',
          sourceUrl: 'https://api.quran.com/api/v4/chapter_recitations/7',
          verifiedAt: DateTime.utc(2026, 4, 8),
          localPath: missingPath,
        ),
        MirroredAudioFile(
          surahNumber: 3,
          reciterId: 'alafasy',
          sourceUrl: 'https://api.quran.com/api/v4/chapter_recitations/7',
          verifiedAt: DateTime.utc(2026, 4, 8),
          localPath: emptyFile.path,
        ),
        MirroredAudioFile(
          surahNumber: 4,
          reciterId: 'alafasy',
          sourceUrl: 'https://api.quran.com/api/v4/chapter_recitations/7',
          verifiedAt: DateTime.utc(2026, 4, 8),
          localPath: existingFile.path,
        ),
      ]);

      expect(failures, contains('alafasy/002.mp3: missing local file'));
      expect(failures, contains('alafasy/003.mp3: empty local file'));
      expect(
        failures,
        contains('alafasy/001.mp3: duplicate storage object path'),
      );
    });

    test('upload aborts before network when local files are invalid', () async {
      final summary = await uploadMirroredQuranAudioFiles(
        files: [
          MirroredAudioFile(
            surahNumber: 1,
            reciterId: 'alafasy',
            sourceUrl: 'https://api.quran.com/api/v4/chapter_recitations/7',
            verifiedAt: DateTime.utc(2026, 4, 8),
            localPath: 'missing/001.mp3',
          ),
        ],
        supabaseUrl: Uri.parse('https://example.supabase.co'),
        serviceRoleKey: 'service-secret',
      );

      expect(summary.requested, 1);
      expect(summary.uploaded, 0);
      expect(summary.failed, const ['alafasy/001.mp3: missing local file']);
    });

    test('sanitizes upload failures before printing operator output', () {
      final message = describeQuranAudioStorageUploadFailure(
        const SocketException('private upload host failure'),
      );

      expect(message, 'network error');
      expect(message, isNot(contains('private upload host')));
    });
  });
}
