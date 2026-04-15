import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('content_seed_quran_audio.sql', () {
    final seedFile = File('content_seed_quran_audio.sql');

    test(
      'contains one verified upsert per surah for each supported reciter',
      () {
        final seed = seedFile.readAsStringSync();

        expect(seedFile.existsSync(), isTrue);
        expect(
          RegExp(r"INSERT INTO public\.audio_files \(").allMatches(seed),
          hasLength(684),
        );
        expect(
          RegExp(
            r"ON CONFLICT \(type, reciter, surah_number\) DO UPDATE SET",
          ).allMatches(seed),
          hasLength(684),
        );
        expect(
          RegExp(
            r"'quran_surah', 'Surah 1'.*'alafasy'",
            dotAll: true,
          ).hasMatch(seed),
          isTrue,
        );
        expect(
          RegExp(
            r"'quran_surah', 'Surah 114'.*'shuraim'",
            dotAll: true,
          ).hasMatch(seed),
          isTrue,
        );
      },
    );

    test('stores official QuranFoundation chapter recitation endpoints', () {
      final seed = seedFile.readAsStringSync();

      expect(
        seed,
        contains('https://api.quran.com/api/v4/chapter_recitations/7'),
      );
      expect(
        seed,
        contains(
          'https://download.quranicaudio.com/qdc/mishari_al_afasy/murattal/1.mp3',
        ),
      );
      expect(
        seed,
        contains(
          'https://download.quranicaudio.com/qdc/saud_ash-shuraym/murattal/114.mp3',
        ),
      );
    });

    test('is documented as mirror input rather than runtime playback seed', () {
      final seed = seedFile.readAsStringSync();

      expect(
        seed,
        contains(
          'Mirror input only: runtime playback requires storage_path rows',
        ),
      );
      expect(
        seed,
        contains(
          'Generate runtime rows with tool/generate_quran_audio_storage_seed.dart',
        ),
      );
      expect(seed, contains("'quran_surah', 'Surah 1'"));
      expect(seed, contains(', NULL, 1, NULL,'));
    });
  });
}
