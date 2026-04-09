import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('general ARB localization coverage', () {
    final english = _readArb('lib/l10n/app_en.arb');
    const priorityLocales = [
      'tr',
      'de',
      'fr',
      'es',
      'ar',
      'da',
      'he',
      'ja',
      'nb',
      'nn',
      'no',
      'pt',
      'ru',
      'tw',
      'vi',
      'zh',
      'zh_CN',
      'zh_TW',
    ];

    test('priority locales do not fall back to English for live tv actions', () {
      for (final locale in priorityLocales) {
        final arb = _readArb('lib/l10n/app_$locale.arb');
        expect(
          arb['openInYoutube'],
          isNot(english['openInYoutube']),
          reason: 'app_$locale.arb still uses English for openInYoutube',
        );
      }
    });
  });
}

Map<String, dynamic> _readArb(String path) {
  return jsonDecode(File(path).readAsStringSync()) as Map<String, dynamic>;
}
