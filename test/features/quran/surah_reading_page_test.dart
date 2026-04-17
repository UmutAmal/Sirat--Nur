import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/features/quran/surah_display_info.dart';
import 'package:sirat_i_nur/features/quran/surah_reading_page.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

void main() {
  group('SurahReadingPage share helpers', () {
    const surahInfo = SurahDisplayInfo(
      number: 1,
      nameArabic: 'الفاتحة',
      transliteration: 'Al-Fatihah',
      translatedName: 'The Opening',
      ayahCount: 7,
      revelationType: 'Meccan',
    );

    test('builds ayah share headers through localization', () {
      final en = lookupAppLocalizations(const Locale('en'));
      final tr = lookupAppLocalizations(const Locale('tr'));
      final fr = lookupAppLocalizations(const Locale('fr'));

      expect(buildAyahShareHeader(en, surahInfo, '3'), 'Al-Fatihah - Ayah 3');
      expect(buildAyahShareHeader(tr, surahInfo, '3'), 'Al-Fatihah - 3. Ayet');
      expect(buildAyahShareHeader(fr, surahInfo, '3'), 'Al-Fatihah - Verset 3');
    });

    test('does not duplicate standalone bismillah for Fatihah or Tawbah', () {
      expect(shouldShowStandaloneBismillah(1), isFalse);
      expect(shouldShowStandaloneBismillah(9), isFalse);
      expect(shouldShowStandaloneBismillah(2), isTrue);
    });
  });
}
