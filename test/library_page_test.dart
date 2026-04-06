import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
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
  });
}
