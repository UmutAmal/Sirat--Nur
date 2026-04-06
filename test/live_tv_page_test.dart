import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/features/tv/live_tv_page.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

void main() {
  group('Live TV localized copy helpers', () {
    test('provider error text uses localized error label', () {
      final en = lookupAppLocalizations(const Locale('en'));
      final tr = lookupAppLocalizations(const Locale('tr'));

      expect(buildLiveTvProviderErrorText(en, 'timeout'), 'Error: timeout');
      expect(buildLiveTvProviderErrorText(tr, 'zaman asimi'), 'Hata: zaman asimi');
    });

    test('empty-state text uses localized no-results label', () {
      final en = lookupAppLocalizations(const Locale('en'));
      final tr = lookupAppLocalizations(const Locale('tr'));

      expect(buildLiveTvEmptyStateText(en), 'No results found');
      expect(buildLiveTvEmptyStateText(tr), 'Sonuç bulunamadı');
    });
  });
}
