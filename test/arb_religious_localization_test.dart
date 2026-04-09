import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('religious ARB localization coverage', () {
    final english = _readArb('lib/l10n/app_en.arb');
    const priorityLocales = [
      'de',
      'fr',
      'es',
      'ar',
      'hi',
      'nb',
      'nn',
      'zh',
      'zh_CN',
      'zh_TW',
      'ru',
      'id',
      'pt',
    ];
    const localizedKeys = [
      'dailyDuas',
      'hadithCollections',
      'hadithSourcePending',
      'hadithUnavailableTitle',
      'hadithUnavailableBody',
      'duaUnavailableTitle',
    ];

    test('priority locales do not fall back to English for core religious UI', () {
      for (final locale in priorityLocales) {
        final arb = _readArb('lib/l10n/app_$locale.arb');

        for (final key in localizedKeys) {
          expect(
            arb[key],
            isNot(english[key]),
            reason: 'app_$locale.arb still uses English for $key',
          );
        }
      }
    });
  });
}

Map<String, dynamic> _readArb(String path) {
  return jsonDecode(File(path).readAsStringSync()) as Map<String, dynamic>;
}
