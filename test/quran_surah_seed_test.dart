import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('content_seed_quran_surahs.sql', () {
    final seedFile = File('content_seed_quran_surahs.sql');

    test('contains one upsert per surah from the official Quran.com source', () {
      final seed = seedFile.readAsStringSync();

      expect(seedFile.existsSync(), isTrue);
      expect(
        RegExp(r'INSERT INTO public\.quran_surahs').allMatches(seed).length,
        114,
      );
      expect(seed, contains('https://api.quran.com/api/v4/chapters?language=en'));
      expect(seed, contains('https://api.quran.com/api/v4/chapters?language=tr'));
      expect(seed, contains("TIMESTAMPTZ '"));
      expect(seed, contains('ON CONFLICT (surah_number) DO UPDATE SET'));
    });

    test('contains verified first and last surah metadata rows', () {
      final seed = seedFile.readAsStringSync();

      expect(
        seed,
        contains(
          "1, 'الفاتحة', 'Fâtiha', 'The Opener', 'Al-Fatihah', 7, 'Meccan'",
        ),
      );
      expect(
        seed,
        contains("114, 'الناس', 'Nâs', 'Mankind', 'An-Nas', 6, 'Meccan'"),
      );
    });
  });
}
