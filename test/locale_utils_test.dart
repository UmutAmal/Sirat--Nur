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

    test('rejects malformed locale codes before building Locale objects', () {
      for (final code in [
        '!!!',
        'english',
        'en_@',
        'tr-1234',
        'zh-Hant-TW-extra',
        'en-US-!',
      ]) {
        expect(parseLocaleCode(code), isNull, reason: code);
      }
    });

    test('keeps valid numeric region subtags canonical', () {
      final locale = parseLocaleCode('en-419');

      expect(locale?.languageCode, 'en');
      expect(locale?.countryCode, '419');
      expect(localeKey(locale!), 'en_419');
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
