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
      'tw',
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

    test(
      'priority locales do not fall back to English for core religious UI',
      () {
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
      },
    );

    test(
      'Arabic-script priority locales keep Rawatib and Tahajjud in canonical script',
      () {
        const expected = {
          'ar': {'rawatib': 'السنن الرواتب', 'tahajjud': 'التهجد'},
          'fa': {'rawatib': 'نمازهای راتبه', 'tahajjud': 'نماز تهجد'},
          'ps': {'rawatib': 'راتبه سنتونه', 'tahajjud': 'تهجد'},
          'sd': {'rawatib': 'سنن راتبه', 'tahajjud': 'تهجد'},
          'ug': {'rawatib': 'راتىب سۈننەتلەر', 'tahajjud': 'تەھەججۇد'},
          'ur': {'rawatib': 'سننِ راتبہ', 'tahajjud': 'تہجد'},
        };

        for (final entry in expected.entries) {
          final arb = _readArb('lib/l10n/app_${entry.key}.arb');
          for (final key in ['rawatib', 'tahajjud']) {
            final value = arb[key] as String;
            expect(
              value,
              entry.value[key],
              reason: 'app_${entry.key}.arb must keep canonical $key copy',
            );
            expect(value, isNot(english[key]));
            expect(value, isNot(contains(RegExp('[A-Za-z]'))));
          }
        }
      },
    );

    test(
      'known low-resource Rawatib and Tahajjud labels do not keep explanatory debris',
      () {
        const expected = {
          'bho': {'rawatib': 'रवातिब', 'tahajjud': 'तहज्जुद'},
          'ilo': {'rawatib': 'Rawatib', 'tahajjud': 'Tahajjud'},
          'kri': {'rawatib': 'Rawatib', 'tahajjud': 'Tahajjud'},
          'lus': {'rawatib': 'Rawatib', 'tahajjud': 'Tahajjud'},
          'nso': {'rawatib': 'Rawatib', 'tahajjud': 'Tahajjud'},
        };
        final debris = RegExp(
          'के ह|ni Tahajjud|chuan a sawi|a ni|tɔk bɔt|wɔl|swana le yena',
        );

        for (final entry in expected.entries) {
          final arb = _readArb('lib/l10n/app_${entry.key}.arb');
          for (final key in ['rawatib', 'tahajjud']) {
            final value = arb[key] as String;
            expect(
              value,
              entry.value[key],
              reason: 'app_${entry.key}.arb must keep canonical $key copy',
            );
            expect(
              value,
              isNot(contains(debris)),
              reason:
                  'app_${entry.key}.arb keeps explanatory machine output for $key',
            );
          }
        }
      },
    );
  });
}

Map<String, dynamic> _readArb(String path) {
  return jsonDecode(File(path).readAsStringSync()) as Map<String, dynamic>;
}
