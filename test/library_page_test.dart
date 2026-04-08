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

    test('cloud duas fall back to bundled duas when rows are empty', () {
      expect(resolveCloudDuas([]), same(dailyDuas));
    });

    test('cloud duas map Supabase rows into DuaData objects', () {
      final resolved = resolveCloudDuas([
        {
          'id': 'cloud-1',
          'text_ar': 'دعاء',
          'transliteration': 'dua',
          'text_tr': 'Turkce dua',
          'text_en': 'English dua',
          'source': 'Diyanet',
          'category': 'Sabah Akşam',
        },
      ]);

      expect(resolved, hasLength(1));
      expect(resolved.first.id, 'cloud-1');
      expect(resolved.first.arabic, 'دعاء');
      expect(resolved.first.turkish, 'Turkce dua');
      expect(resolved.first.english, 'English dua');
      expect(resolved.first.source, 'Diyanet');
      expect(resolved.first.category, 'Sabah Akşam');
    });
  });
}
