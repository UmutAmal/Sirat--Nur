import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/network/supabase_config.dart';
import 'package:sirat_i_nur/core/services/offline_audio_service.dart';
import '../tool/generate_quran_audio_storage_seed.dart';

void main() {
  group('generate_quran_audio_storage_seed tool', () {
    test('buildSupabaseStoragePublicUrl derives public bucket URLs', () {
      expect(
        buildSupabaseStoragePublicUrl('quran-audio/alafasy/001.mp3'),
        '${SupabaseConfig.url}/storage/v1/object/public/${SupabaseConfig.quranAudioBucket}/alafasy/001.mp3',
      );
      expect(
        buildSupabaseStoragePublicUrl('alafasy/001.mp3'),
        '${SupabaseConfig.url}/storage/v1/object/public/${SupabaseConfig.quranAudioBucket}/alafasy/001.mp3',
      );
    });

    test('parseMirroredAudioManifest reads mirrored files safely', () {
      final files = parseMirroredAudioManifest('''
{
  "requested": 1,
  "downloaded": 1,
  "skipped": 0,
  "failed": [],
  "files": [
    {
      "surah_number": 1,
      "reciter": "alafasy",
      "source": "https://api.quran.com/api/v4/chapter_recitations/7",
      "verified_at": "2026-04-08T19:00:42.228933Z",
      "local_path": "build/verified_quran_audio/alafasy/001.mp3"
    }
  ]
}
''');

      expect(files, hasLength(1));
      expect(files.first.surahNumber, 1);
      expect(files.first.reciterId, 'alafasy');
    });

    test('rejects manifests with failed audio downloads', () {
      expect(
        () => parseMirroredAudioManifest('''
{
  "requested": 1,
  "downloaded": 0,
  "skipped": 0,
  "failed": ["alafasy/001.mp3: HTTP 404"],
  "files": []
}
'''),
        throwsA(
          isA<FormatException>().having(
            (error) => error.message,
            'message',
            contains('failed audio downloads'),
          ),
        ),
      );
    });

    test('rejects manifests missing mirrored file rows', () {
      expect(
        () => parseMirroredAudioManifest('''
{
  "requested": 2,
  "downloaded": 1,
  "skipped": 1,
  "failed": [],
  "files": [
    {
      "surah_number": 1,
      "reciter": "alafasy",
      "source": "https://api.quran.com/api/v4/chapter_recitations/7",
      "verified_at": "2026-04-08T19:00:42.228933Z",
      "local_path": "build/verified_quran_audio/alafasy/001.mp3"
    }
  ]
}
'''),
        throwsA(
          isA<FormatException>().having(
            (error) => error.message,
            'message',
            contains('Manifest is incomplete'),
          ),
        ),
      );
    });

    test('buildQuranAudioStorageSeedSql creates storage-backed upserts', () {
      final sql = buildQuranAudioStorageSeedSql([
        MirroredAudioFile(
          surahNumber: 1,
          reciterId: 'alafasy',
          sourceUrl: 'https://api.quran.com/api/v4/chapter_recitations/7',
          verifiedAt: DateTime.utc(2026, 4, 8, 19, 0, 42),
          localPath: 'build/verified_quran_audio/alafasy/001.mp3',
        ),
      ]);

      expect(sql, contains("NULL, 'alafasy/001.mp3', 1"));
      expect(
        sql,
        contains(
          'Apply only after all matching MP3 files are uploaded to the target Supabase Storage bucket.',
        ),
      );
      expect(
        sql,
        contains('ON CONFLICT (type, reciter, surah_number) DO UPDATE SET'),
      );
      expect(sql, isNot(contains('download.quranicaudio.com')));
    });

    test('smoke-shaped manifest can be converted into storage-backed SQL', () {
      final tempDir = Directory.systemTemp.createTempSync(
        'sirat_quran_audio_smoke_',
      );
      addTearDown(() {
        if (tempDir.existsSync()) {
          tempDir.deleteSync(recursive: true);
        }
      });

      final reciterDir = Directory(
        '${tempDir.path}${Platform.pathSeparator}alafasy',
      )..createSync(recursive: true);
      final audioFile = File(
        '${reciterDir.path}${Platform.pathSeparator}001.mp3',
      )..writeAsBytesSync(<int>[0, 1, 2, 3]);
      final manifestFile =
          File('${tempDir.path}${Platform.pathSeparator}manifest.json')
            ..writeAsStringSync(
              const JsonEncoder.withIndent('  ').convert({
                'generated_at': '2026-04-08T19:00:42.228933Z',
                'requested': 1,
                'downloaded': 1,
                'skipped': 0,
                'failed': <String>[],
                'files': [
                  {
                    'surah_number': 1,
                    'reciter': 'alafasy',
                    'audio_url':
                        'https://download.quranicaudio.com/qdc/alafasy/1.mp3',
                    'source':
                        'https://api.quran.com/api/v4/chapter_recitations/7',
                    'verified_at': '2026-04-08T19:00:42.228933Z',
                    'local_path': audioFile.path,
                  },
                ],
              }),
            );

      final files = parseMirroredAudioManifest(manifestFile.readAsStringSync());
      final sql = buildQuranAudioStorageSeedSql(files);

      expect(files, hasLength(1));
      expect(sql, contains("'alafasy/001.mp3'"));
      expect(
        sql,
        contains("'https://api.quran.com/api/v4/chapter_recitations/7'"),
      );
    });
  });
}
