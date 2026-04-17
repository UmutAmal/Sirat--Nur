import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import '../tool/download_verified_quran_audio.dart';

void main() {
  group('download_verified_quran_audio tool', () {
    test('parses verified quran audio seed rows', () {
      final rows = parseVerifiedQuranAudioSeed('''
INSERT INTO public.audio_files (
  type, title, url, storage_path, surah_number, duration_seconds, reciter, language, source, verified_at
) VALUES (
  'quran_surah', 'Surah 1', 'https://download.quranicaudio.com/qdc/alafasy/1.mp3', NULL, 1, NULL, 'alafasy', 'ar', 'https://api.quran.com/api/v4/chapter_recitations/7', TIMESTAMPTZ '2026-04-08T19:00:42.228933Z'
) ON CONFLICT (type, reciter, surah_number) DO UPDATE SET
  title = EXCLUDED.title;
''');

      expect(rows, hasLength(1));
      expect(rows.first.surahNumber, 1);
      expect(rows.first.reciterId, 'alafasy');
      expect(
        rows.first.audioUrl.toString(),
        'https://download.quranicaudio.com/qdc/alafasy/1.mp3',
      );
      expect(
        rows.first.sourceUrl.toString(),
        'https://api.quran.com/api/v4/chapter_recitations/7',
      );
    });

    test('rejects unapproved Quran audio mirror hosts', () {
      expect(
        () => parseVerifiedQuranAudioSeed('''
INSERT INTO public.audio_files (
  type, title, url, storage_path, surah_number, duration_seconds, reciter, language, source, verified_at
) VALUES (
  'quran_surah', 'Surah 1', 'https://example.com/qdc/alafasy/1.mp3', NULL, 1, NULL, 'alafasy', 'ar', 'https://api.quran.com/api/v4/chapter_recitations/7', TIMESTAMPTZ '2026-04-08T19:00:42.228933Z'
) ON CONFLICT (type, reciter, surah_number) DO UPDATE SET
  title = EXCLUDED.title;
'''),
        throwsA(
          isA<FormatException>().having(
            (error) => error.message,
            'message',
            contains('approved Quran audio mirror host'),
          ),
        ),
      );
    });

    test('rejects Quran audio mirror URLs with unsafe URI adornments', () {
      expect(
        () => parseVerifiedQuranAudioSeed('''
INSERT INTO public.audio_files (
  type, title, url, storage_path, surah_number, duration_seconds, reciter, language, source, verified_at
) VALUES (
  'quran_surah', 'Surah 1', 'https://audit@download.quranicaudio.com/qdc/alafasy/1.mp3#payload', NULL, 1, NULL, 'alafasy', 'ar', 'https://api.quran.com/api/v4/chapter_recitations/7', TIMESTAMPTZ '2026-04-08T19:00:42.228933Z'
) ON CONFLICT (type, reciter, surah_number) DO UPDATE SET
  title = EXCLUDED.title;
'''),
        throwsA(
          isA<FormatException>().having(
            (error) => error.message,
            'message',
            contains('approved Quran audio mirror host'),
          ),
        ),
      );
    });

    test('rejects unapproved Quran source endpoints', () {
      expect(
        () => parseVerifiedQuranAudioSeed('''
INSERT INTO public.audio_files (
  type, title, url, storage_path, surah_number, duration_seconds, reciter, language, source, verified_at
) VALUES (
  'quran_surah', 'Surah 1', 'https://download.quranicaudio.com/qdc/alafasy/1.mp3', NULL, 1, NULL, 'alafasy', 'ar', 'https://example.com/api/v4/chapter_recitations/7', TIMESTAMPTZ '2026-04-08T19:00:42.228933Z'
) ON CONFLICT (type, reciter, surah_number) DO UPDATE SET
  title = EXCLUDED.title;
'''),
        throwsA(
          isA<FormatException>().having(
            (error) => error.message,
            'message',
            contains('approved Quran.com chapter recitation endpoint'),
          ),
        ),
      );
    });

    test('groups verified rows into a sorted per-reciter catalog', () {
      final catalog = buildVerifiedQuranAudioCatalog([
        VerifiedQuranAudioSeedRow(
          surahNumber: 2,
          reciterId: 'alafasy',
          audioUrl: Uri.parse('https://example.com/alafasy/2.mp3'),
          sourceUrl: Uri.parse(
            'https://api.quran.com/api/v4/chapter_recitations/7',
          ),
          verifiedAt: DateTime.utc(2026, 4, 8),
        ),
        VerifiedQuranAudioSeedRow(
          surahNumber: 1,
          reciterId: 'alafasy',
          audioUrl: Uri.parse('https://example.com/alafasy/1.mp3'),
          sourceUrl: Uri.parse(
            'https://api.quran.com/api/v4/chapter_recitations/7',
          ),
          verifiedAt: DateTime.utc(2026, 4, 8),
        ),
        VerifiedQuranAudioSeedRow(
          surahNumber: 1,
          reciterId: 'husary',
          audioUrl: Uri.parse('https://example.com/husary/1.mp3'),
          sourceUrl: Uri.parse(
            'https://api.quran.com/api/v4/chapter_recitations/6',
          ),
          verifiedAt: DateTime.utc(2026, 4, 8),
        ),
      ]);

      expect(catalog.keys, containsAll(<String>['alafasy', 'husary']));
      expect(catalog['alafasy']!.map((row) => row.surahNumber).toList(), <int>[
        1,
        2,
      ]);
    });

    test('loads the committed seed and exposes the full 684 row catalog', () {
      final seedFile = File('content_seed_quran_audio.sql');
      final rows = parseVerifiedQuranAudioSeed(seedFile.readAsStringSync());
      final catalog = buildVerifiedQuranAudioCatalog(rows);

      expect(seedFile.existsSync(), isTrue);
      expect(rows, hasLength(684));
      expect(catalog, hasLength(6));
      expect(catalog['alafasy'], hasLength(114));
      expect(catalog['shuraim'], hasLength(114));
    });

    test('rejects invalid surah selection values', () {
      expect(() => parseSurahSelection('0,1'), throwsFormatException);
      expect(() => parseSurahSelection('115'), throwsFormatException);
      expect(() => parseSurahSelection('x'), throwsFormatException);
    });

    test('sanitizes transport failures before writing manifest entries', () {
      final message = describeQuranAudioMirrorFailure(
        const SocketException('lookup failed for private-host.local'),
      );

      expect(message, 'network error');
      expect(message, isNot(contains('private-host.local')));
      expect(
        describeQuranAudioMirrorFailure(StateError('secret raw detail')),
        'unexpected mirror error',
      );
    });

    test('guards mirrored files with MP3 signature checks', () {
      final source = File(
        'tool/download_verified_quran_audio.dart',
      ).readAsStringSync();

      expect(source, contains('hasLikelyMp3Header(targetFile)'));
      expect(source, contains('invalid mp3 file'));
      expect(source, contains('_deleteFileIfExistsSync(targetFile)'));
    });
  });
}
