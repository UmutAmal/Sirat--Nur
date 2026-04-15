import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/features/tv/live_tv_page.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

void main() {
  group('Live TV localized copy helpers', () {
    test('provider error text is localized and hides raw exceptions', () {
      final en = lookupAppLocalizations(const Locale('en'));
      final tr = lookupAppLocalizations(const Locale('tr'));

      expect(
        buildLiveTvProviderErrorText(en),
        'Stream error\nPlease check your connection',
      );
      expect(
        buildLiveTvProviderErrorText(tr),
        'Yayın hatası\nLütfen bağlantınızı kontrol edin',
      );
      expect(buildLiveTvProviderErrorText(en), isNot(contains('timeout')));
      expect(buildLiveTvProviderErrorText(tr), isNot(contains('zaman asimi')));
    });

    test('empty-state text uses localized no-results label', () {
      final en = lookupAppLocalizations(const Locale('en'));
      final tr = lookupAppLocalizations(const Locale('tr'));

      expect(buildLiveTvEmptyStateText(en), 'No results found');
      expect(buildLiveTvEmptyStateText(tr), 'Sonuç bulunamadı');
    });
  });
}
