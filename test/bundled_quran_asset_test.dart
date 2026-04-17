import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

import '../tool/generate_bundled_quran_asset.dart';

void main() {
  group('bundled full_quran asset', () {
    final surahSeedFile = File('content_seed_quran_surahs.sql');
    final ayahSeedFile = File('content_seed_quran_ayahs.sql');
    final surahIndexFile = File('assets/data/surahs.json');
    final bundledAssetFile = File('assets/data/full_quran.json');

    test('matches the verified Quran seed chain exactly', () {
      final expectedRows = buildBundledQuranRows(
        surahSeedSql: surahSeedFile.readAsStringSync(),
        ayahSeedSql: ayahSeedFile.readAsStringSync(),
      );
      final committedRows =
          jsonDecode(bundledAssetFile.readAsStringSync()) as List<dynamic>;

      expect(surahSeedFile.existsSync(), isTrue);
      expect(ayahSeedFile.existsSync(), isTrue);
      expect(bundledAssetFile.existsSync(), isTrue);
      expect(committedRows, expectedRows);
    });

    test(
      'keeps critical ayahs aligned with official text and translations',
      () {
        final committedRows =
            jsonDecode(bundledAssetFile.readAsStringSync()) as List<dynamic>;
        final fatiha = committedRows.first as Map<String, dynamic>;
        final fatihaAyahs = fatiha['ayahs'] as List<dynamic>;
        final baqarah = committedRows[1] as Map<String, dynamic>;
        final baqarahAyahs = baqarah['ayahs'] as List<dynamic>;
        final nas = committedRows.last as Map<String, dynamic>;
        final nasAyahs = nas['ayahs'] as List<dynamic>;

        expect(committedRows, hasLength(114));
        expect(
          committedRows.fold<int>(
            0,
            (total, row) =>
                total + ((row as Map<String, dynamic>)['ayahs'] as List).length,
          ),
          6236,
        );
        expect(
          (fatihaAyahs.first as Map<String, dynamic>)['text'],
          'بِسْمِ ٱللَّهِ ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ',
        );
        expect(
          (fatihaAyahs.first as Map<String, dynamic>)['tr_translation'],
          "Rahmân ve Rahîm olan Allah'ın ismiyle.",
        );
        expect((baqarahAyahs.first as Map<String, dynamic>)['text'], 'الٓمٓ');
        expect(
          (baqarahAyahs.first as Map<String, dynamic>)['en_translation'],
          'Alif Lam Mim',
        );
        expect(
          (nasAyahs.last as Map<String, dynamic>)['text'],
          'مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ',
        );
        expect(
          (nasAyahs.last as Map<String, dynamic>)['en_translation'],
          "whether they be jinn or people.’",
        );
      },
    );

    test('keeps every bundled ayah complete and non-placeholder', () {
      final committedRows =
          jsonDecode(bundledAssetFile.readAsStringSync()) as List<dynamic>;
      final globalAyahNumbers = <int>{};
      const forbiddenFragments = [
        'dummy',
        'fixture',
        'fixme',
        'lorem',
        'placeholder',
        'todo',
      ];

      expect(committedRows, hasLength(114));
      for (final surahEntry in committedRows.indexed) {
        final surah = surahEntry.$2 as Map<String, dynamic>;
        final ayahs = surah['ayahs'] as List<dynamic>;

        expect(surah['number'], surahEntry.$1 + 1);
        expect(ayahs, isNotEmpty);
        for (final ayahEntry in ayahs.indexed) {
          final ayah = ayahEntry.$2 as Map<String, dynamic>;
          final arabic = ayah['text'] as String? ?? '';
          final english = ayah['en_translation'] as String? ?? '';
          final turkish = ayah['tr_translation'] as String? ?? '';

          expect(ayah['numberInSurah'], ayahEntry.$1 + 1);
          expect(ayah['juz'], isA<int>());
          expect(ayah['juz'] as int, inInclusiveRange(1, 30));
          expect(arabic.trim(), isNotEmpty);
          expect(RegExp(r'[\u0600-\u06FF]').hasMatch(arabic), isTrue);
          expect(english.trim(), isNotEmpty);
          expect(turkish.trim(), isNotEmpty);
          expect(globalAyahNumbers.add(ayah['number'] as int), isTrue);

          final searchable = '$arabic $english $turkish'.toLowerCase();
          for (final fragment in forbiddenFragments) {
            expect(
              searchable,
              isNot(contains(fragment)),
              reason:
                  'Surah ${surah['number']} ayah ${ayah['numberInSurah']} contains $fragment',
            );
          }
        }
      }

      expect(globalAyahNumbers, hasLength(6236));
    });

    test(
      'keeps the lightweight surah index aligned with full Quran counts',
      () {
        final surahIndexRows =
            jsonDecode(surahIndexFile.readAsStringSync()) as List<dynamic>;
        final committedRows =
            jsonDecode(bundledAssetFile.readAsStringSync()) as List<dynamic>;

        expect(surahIndexRows, hasLength(114));
        expect(committedRows, hasLength(114));
        for (var index = 0; index < surahIndexRows.length; index++) {
          final indexedSurah = surahIndexRows[index] as Map<String, dynamic>;
          final fullSurah = committedRows[index] as Map<String, dynamic>;
          final fullAyahs = fullSurah['ayahs'] as List<dynamic>;

          expect(indexedSurah['number'], index + 1);
          expect(indexedSurah['number'], fullSurah['number']);
          expect(indexedSurah['numberOfAyahs'], fullAyahs.length);
          expect(indexedSurah['revelationType'], fullSurah['revelationType']);
          expect(indexedSurah['englishName'], isA<String>());
          expect((indexedSurah['englishName'] as String).trim(), isNotEmpty);
        }
      },
    );
  });
}
