import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('content_seed_quran_ayahs.sql', () {
    final seedFile = File('content_seed_quran_ayahs.sql');

    test('contains one upsert per ayah from verified Quran.com resources', () {
      final seed = seedFile.readAsStringSync();

      expect(seedFile.existsSync(), isTrue);
      expect(
        RegExp(r'INSERT INTO public\.quran_ayahs').allMatches(seed).length,
        6236,
      );
      expect(seed, contains('https://api.quran.com/api/v4/chapters?language=en'));
      expect(seed, contains('https://api.quran.com/api/v4/resources/translations'));
      expect(seed, contains('translations=52,85'));
      expect(seed, contains('Turkish resource (52): Elmalili Hamdi Yazir'));
      expect(seed, contains('English resource (85): M.A.S. Abdel Haleem'));
      expect(seed, contains("TIMESTAMPTZ '"));
      expect(seed, contains('ON CONFLICT (surah_id, ayah_number) DO UPDATE SET'));
    });

    test('contains verified first and last ayah rows', () {
      final seed = seedFile.readAsStringSync();

      expect(
        seed,
        contains(
          "SELECT\n"
          "  id, 1, 'بِسْمِ ٱللَّهِ ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ', "
          "'Rahmân ve Rahîm olan Allah''ın ismiyle.', "
          "'In the name of God, the Lord of Mercy, the Giver of Mercy!', NULL",
        ),
      );
      expect(
        seed,
        contains(
          "WHERE surah_number = 114\n"
          "ON CONFLICT (surah_id, ayah_number) DO UPDATE SET",
        ),
      );
      expect(
        seed,
        contains(
          "id, 6, 'مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ', "
          "'Gerek cinlerden, gerek insanlardan.', "
          "'whether they be jinn or people.’', NULL",
        ),
      );
    });
  });
}
