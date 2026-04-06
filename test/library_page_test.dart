import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/constants/duas_data.dart';
import 'package:sirat_i_nur/features/library/library_page.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

void main() {
  group('Library localized copy helpers', () {
    test('error text uses the localized error label', () {
      final en = lookupAppLocalizations(const Locale('en'));
      final tr = lookupAppLocalizations(const Locale('tr'));

      expect(buildLibraryErrorText(en, 'timeout'), 'Error: timeout');
      expect(buildLibraryErrorText(tr, 'zaman asimi'), 'Hata: zaman asimi');
    });

    test('empty text uses the localized no-results label', () {
      final en = lookupAppLocalizations(const Locale('en'));
      final tr = lookupAppLocalizations(const Locale('tr'));

      expect(buildLibraryEmptyText(en), 'No results found');
      expect(buildLibraryEmptyText(tr), 'Sonuç bulunamadı');
    });

    test('asma translation prefers the active locale when available', () {
      const translations = {'en': 'The Beneficent', 'tr': 'Merhamet eden'};

      expect(
        resolveAsmaTranslation(translations, const Locale('tr')),
        'Merhamet eden',
      );
    });

    test('asma translation falls back to English when locale is missing', () {
      const translations = {'en': 'The Beneficent', 'tr': 'Merhamet eden'};

      expect(
        resolveAsmaTranslation(translations, const Locale('fr')),
        'The Beneficent',
      );
    });

    test('dua meaning prefers Turkish text for the Turkish locale', () {
      const dua = DuaData(
        id: '1',
        arabic: 'arabic',
        transliteration: 'transliteration',
        turkish: 'Turkce anlam',
        english: 'English meaning',
        source: 'source',
        category: 'category',
      );

      expect(resolveDuaMeaning(dua, const Locale('tr')), 'Turkce anlam');
    });

    test('dua meaning falls back to English for non-Turkish locales', () {
      const dua = DuaData(
        id: '1',
        arabic: 'arabic',
        transliteration: 'transliteration',
        turkish: 'Turkce anlam',
        english: 'English meaning',
        source: 'source',
        category: 'category',
      );

      expect(resolveDuaMeaning(dua, const Locale('de')), 'English meaning');
    });
  });
}
