import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/features/quran/surah_display_info.dart';

void main() {
  group('resolveSurahDisplayInfo', () {
    test('maps bundled quran payload into display info', () {
      final info = resolveSurahDisplayInfo({
        'number': 1,
        'name': 'سُورَةُ ٱلْفَاتِحَةِ',
        'englishName': 'Al-Faatiha',
        'englishNameTranslation': 'The Opening',
        'revelationType': 'Meccan',
        'ayahs': const [
          {'numberInSurah': 1},
          {'numberInSurah': 2},
        ],
      }, 1);

      expect(info.number, 1);
      expect(info.nameArabic, 'سُورَةُ ٱلْفَاتِحَةِ');
      expect(info.transliteration, 'Al-Faatiha');
      expect(info.translatedName, 'The Opening');
      expect(info.ayahCount, 2);
      expect(info.revelationType, 'Meccan');
    });

    test('falls back to safe generic values when payload is missing', () {
      final info = resolveSurahDisplayInfo(null, 7);

      expect(info.number, 7);
      expect(info.nameArabic, isEmpty);
      expect(info.transliteration, 'Surah 7');
      expect(info.translatedName, isEmpty);
      expect(info.ayahCount, 0);
      expect(info.revelationType, isEmpty);
    });
  });

  group('parseBundledSurahDisplayInfoList', () {
    test('maps bundled rows and drops invalid entries', () {
      final infos = parseBundledSurahDisplayInfoList([
        {
          'number': 1,
          'name': 'الفاتحة',
          'englishName': 'Al-Faatiha',
          'englishNameTranslation': 'The Opening',
          'revelationType': 'Meccan',
          'ayahs': const [
            {'numberInSurah': 1},
          ],
        },
        {
          'number': 0,
          'name': 'invalid',
          'englishName': 'Invalid',
          'englishNameTranslation': 'Invalid',
          'revelationType': 'Meccan',
          'ayahs': const [],
        },
      ]);

      expect(infos, hasLength(1));
      expect(infos.single.number, 1);
      expect(infos.single.transliteration, 'Al-Faatiha');
    });
  });

  group('filterSurahDisplayInfos', () {
    test('matches simplified transliteration, translation, Arabic, and number', () {
      final surahs = parseBundledSurahDisplayInfoList([
        {
          'number': 1,
          'name': 'الفاتحة',
          'englishName': 'Al-Faatiha',
          'englishNameTranslation': 'The Opening',
          'revelationType': 'Meccan',
          'ayahs': const [
            {'numberInSurah': 1},
          ],
        },
        {
          'number': 2,
          'name': 'البقرة',
          'englishName': 'Al-Baqarah',
          'englishNameTranslation': 'The Cow',
          'revelationType': 'Medinan',
          'ayahs': const [
            {'numberInSurah': 1},
          ],
        },
      ]);

      expect(filterSurahDisplayInfos(surahs, 'fatiha').single.number, 1);
      expect(filterSurahDisplayInfos(surahs, 'opening').single.number, 1);
      expect(filterSurahDisplayInfos(surahs, 'البقرة').single.number, 2);
      expect(filterSurahDisplayInfos(surahs, 'bakara').single.number, 2);
      expect(filterSurahDisplayInfos(surahs, '2').single.number, 2);
    });
  });
}
