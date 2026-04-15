import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/features/library/hadith_list_page.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

void main() {
  group('Hadith list localized copy helpers', () {
    test('error text is localized and hides raw exceptions', () {
      final en = lookupAppLocalizations(const Locale('en'));
      final tr = lookupAppLocalizations(const Locale('tr'));

      expect(
        buildHadithListErrorText(en),
        'Error\nPlease check your connection',
      );
      expect(
        buildHadithListErrorText(tr),
        'Hata\nLütfen bağlantınızı kontrol edin',
      );
      expect(buildHadithListErrorText(en), isNot(contains('timeout')));
      expect(buildHadithListErrorText(tr), isNot(contains('zaman asimi')));
    });

    test('empty text uses localized no-results label', () {
      final en = lookupAppLocalizations(const Locale('en'));
      final tr = lookupAppLocalizations(const Locale('tr'));

      expect(buildHadithListEmptyText(en), 'No results found');
      expect(buildHadithListEmptyText(tr), 'Sonuç bulunamadı');
    });
  });
}
