import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/utils/locale_utils.dart';

void main() {
  group('locale utils', () {
    test('parses language script and country subtags', () {
      final locale = parseLocaleCode(' zh-Hant-TW ');

      expect(locale?.languageCode, 'zh');
      expect(locale?.scriptCode, 'Hant');
      expect(locale?.countryCode, 'TW');
      expect(localeKey(locale!), 'zh_Hant_TW');
    });

    test(
      'resolves exact region and language fallbacks without force unwraps',
      () {
        const supportedLocales = [
          Locale('en'),
          Locale.fromSubtags(languageCode: 'zh', countryCode: 'TW'),
          Locale('tr'),
        ];
        final source = File(
          'lib/core/utils/locale_utils.dart',
        ).readAsStringSync();

        expect(
          resolveSupportedLocale(
            const Locale.fromSubtags(
              languageCode: 'zh',
              scriptCode: 'Hant',
              countryCode: 'TW',
            ),
            supportedLocales,
          ),
          const Locale.fromSubtags(languageCode: 'zh', countryCode: 'TW'),
        );
        expect(
          resolveSupportedLocale(const Locale('tr', 'TR'), supportedLocales),
          const Locale('tr'),
        );
        expect(
          resolveSupportedLocale(const Locale('de', 'DE'), supportedLocales),
          const Locale('en'),
        );
        expect(source, isNot(contains('countryCode!')));
      },
    );
  });
}
