import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/features/library/hadith_list_page.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

void main() {
  group('Hadith list localized copy helpers', () {
    test('error text uses localized labels', () {
      final en = lookupAppLocalizations(const Locale('en'));
      final tr = lookupAppLocalizations(const Locale('tr'));

      expect(
        buildHadithListErrorText(en, 'timeout'),
        'Error: timeout\nPlease check your connection',
      );
      expect(
        buildHadithListErrorText(tr, 'zaman asimi'),
        'Hata: zaman asimi\nLütfen bağlantınızı kontrol edin',
      );
    });

    test('empty text uses localized no-results label', () {
      final en = lookupAppLocalizations(const Locale('en'));
      final tr = lookupAppLocalizations(const Locale('tr'));

      expect(buildHadithListEmptyText(en), 'No results found');
      expect(buildHadithListEmptyText(tr), 'Sonuç bulunamadı');
    });
  });
}
