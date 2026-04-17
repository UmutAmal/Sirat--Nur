import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

import '../tool/sync_variant_arb_fallbacks.dart';

void main() {
  group('variant locale fallback sync', () {
    final english = _readArb('lib/l10n/app_en.arb');
    const pairs = <({String target, String source})>[
      (target: 'nb', source: 'no'),
      (target: 'nn', source: 'no'),
      (target: 'tw', source: 'ak'),
      (target: 'zh', source: 'zh_CN'),
    ];

    test(
      'variant locales do not keep English when sibling fallback is localized',
      () {
        for (final pair in pairs) {
          final target = _readArb('lib/l10n/app_${pair.target}.arb');
          final source = _readArb('lib/l10n/app_${pair.source}.arb');

          for (final entry in english.entries) {
            final key = entry.key;
            if (key.startsWith('@')) {
              continue;
            }

            final englishValue = entry.value;
            final sourceValue = source[key];
            final targetValue = target[key];

            if (englishValue is! String ||
                sourceValue is! String ||
                targetValue is! String) {
              continue;
            }

            if (sourceValue != englishValue) {
              expect(
                targetValue,
                isNot(englishValue),
                reason:
                    'app_${pair.target}.arb still uses English for $key while app_${pair.source}.arb is localized',
              );
            }
          }
        }
      },
    );

    test('does not propagate unsafe source fallback values', () {
      final plan = buildVariantFallbackPlan(
        target: {
          'safe': 'Safe {count}',
          'missingPlaceholder': 'Missing {count}',
          'empty': 'Empty',
          'unexpectedMultiline': 'Unexpected multiline',
        },
        source: {
          'safe': 'Seguro {count}',
          'missingPlaceholder': 'Falta',
          'empty': '',
          'unexpectedMultiline': 'Satir 1\nSatir 2',
        },
        english: {
          'safe': 'Safe {count}',
          'missingPlaceholder': 'Missing {count}',
          'empty': 'Empty',
          'unexpectedMultiline': 'Unexpected multiline',
        },
      );

      expect(plan.changes, 1);
      expect(plan.updated['safe'], 'Seguro {count}');
      expect(plan.updated['missingPlaceholder'], 'Missing {count}');
      expect(plan.updated['empty'], 'Empty');
      expect(plan.updated['unexpectedMultiline'], 'Unexpected multiline');
    });

    test('skips variant writes when only newline style differs', () {
      expect(
        shouldWriteArbFileContent('{\r\n  "key": "value"\r\n}\r\n', '''
{
  "key": "value"
}
'''),
        isFalse,
      );
    });
  });
}

Map<String, dynamic> _readArb(String path) {
  return jsonDecode(File(path).readAsStringSync()) as Map<String, dynamic>;
}
