import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('content_seed_quran_ayahs.sql', () {
    final seedFile = File('content_seed_quran_ayahs.sql');

    test('contains batched upserts from verified Quran.com resources', () {
      final seed = seedFile.readAsStringSync();

      expect(seedFile.existsSync(), isTrue);
      expect(
        RegExp(r'INSERT INTO public\.quran_ayahs').allMatches(seed).length,
        (6236 / 400).ceil(),
      );
      expect(
        seed,
        contains('https://api.quran.com/api/v4/chapters?language=en'),
      );
      expect(
        seed,
        contains('https://api.quran.com/api/v4/resources/translations'),
      );
      expect(seed, contains('translations=52,85'));
      expect(seed, contains('Turkish resource (52): Elmalili Hamdi Yazir'));
      expect(seed, contains('English resource (85): M.A.S. Abdel Haleem'));
      expect(seed, contains('juz_number'));
      expect(seed, contains("TIMESTAMPTZ '"));
      expect(seed, contains('FROM (VALUES'));
      expect(seed, contains('JOIN public.quran_surahs AS surah'));
      expect(
        seed,
        contains('ON CONFLICT (surah_id, ayah_number) DO UPDATE SET'),
      );
      expect(seed, contains('suffers whatever bad it has done'));
      expect(seed, isNot(contains('suffers its bad-')));
      expect(seed, isNot(contains('‘ Lord')));
      expect(seed, contains('You are the Ever Giving.’'));
      expect(seed, contains('duamı kabul et!"'));
    });

    test('contains verified first and last ayah rows', () {
      final seed = seedFile.readAsStringSync();

      expect(
        seed,
        contains(
          "SELECT\n"
          "  surah.id, seed.ayah_number, seed.juz_number, seed.text_ar, seed.text_tr, seed.text_en, NULL, seed.source, seed.verified_at\n"
          "FROM (VALUES\n"
          "  (1, 1, 1, 'بِسْمِ ٱللَّهِ ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ', "
          "'Rahmân ve Rahîm olan Allah''ın ismiyle.', "
          "'In the name of God, the Lord of Mercy, the Giver of Mercy!', ",
        ),
      );
      expect(
        seed,
        contains(
          'JOIN public.quran_surahs AS surah ON surah.surah_number = seed.surah_number\n'
          "ON CONFLICT (surah_id, ayah_number) DO UPDATE SET",
        ),
      );
      expect(
        seed,
        contains(
          "(114, 6, 30, 'مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ', "
          "'Gerek cinlerden, gerek insanlardan.', "
          "'whether they be jinn or people.’', ",
        ),
      );
    });
  });
}
