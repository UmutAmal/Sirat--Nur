import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

import '../tool/generate_bundled_quran_asset.dart';

void main() {
  group('bundled full_quran asset', () {
    final surahSeedFile = File('content_seed_quran_surahs.sql');
    final ayahSeedFile = File('content_seed_quran_ayahs.sql');
    final bundledAssetFile = File('assets/data/full_quran.json');

    test('matches the verified Quran seed chain exactly', () {
      final expectedRows = buildBundledQuranRows(
        surahSeedSql: surahSeedFile.readAsStringSync(),
        ayahSeedSql: ayahSeedFile.readAsStringSync(),
      );
      final committedRows = jsonDecode(
        bundledAssetFile.readAsStringSync(),
      ) as List<dynamic>;

      expect(surahSeedFile.existsSync(), isTrue);
      expect(ayahSeedFile.existsSync(), isTrue);
      expect(bundledAssetFile.existsSync(), isTrue);
      expect(committedRows, expectedRows);
    });

    test('keeps critical ayahs aligned with official text and translations', () {
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
          (total, row) => total + ((row as Map<String, dynamic>)['ayahs'] as List).length,
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
      expect(
        (baqarahAyahs.first as Map<String, dynamic>)['text'],
        'الٓمٓ',
      );
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
    });
  });
}
