import 'package:flutter_test/flutter_test.dart';

import '../tool/sync_arb_keys.dart';

void main() {
  group('sync_arb_keys safeguards', () {
    final english = <String, dynamic>{
      '@@locale': 'en',
      'existing': 'Existing',
      '@existing': {'description': 'Existing label'},
      'newKey': 'New key',
      '@newKey': {'description': 'New label'},
    };
    final turkish = <String, dynamic>{
      '@@locale': 'tr',
      'existing': 'Mevcut',
      '@existing': {'description': 'Existing label'},
      'newKey': 'Yeni anahtar',
      '@newKey': {'description': 'New label'},
    };

    test(
      'blocks English fallback seeding for non-English locales by default',
      () {
        final plan = buildSyncArbFilePlan(
          locale: 'fr',
          current: {'@@locale': 'fr', 'existing': 'Existant'},
          english: english,
          turkish: turkish,
          allowEnglishFallback: false,
        );

        expect(plan.blockedEnglishFallbackKeys, ['newKey']);
        expect(plan.updated['existing'], 'Existant');
        expect(plan.updated.containsKey('newKey'), isFalse);
        expect(plan.updated.containsKey('@newKey'), isFalse);
      },
    );

    test(
      'allows reviewed English fallback seeding when explicitly requested',
      () {
        final plan = buildSyncArbFilePlan(
          locale: 'fr',
          current: {'@@locale': 'fr', 'existing': 'Existant'},
          english: english,
          turkish: turkish,
          allowEnglishFallback: true,
        );

        expect(plan.blockedEnglishFallbackKeys, isEmpty);
        expect(plan.updated['newKey'], 'New key');
        expect(plan.updated.containsKey('@newKey'), isTrue);
      },
    );

    test('uses Turkish source for Turkish locale without blocking', () {
      final plan = buildSyncArbFilePlan(
        locale: 'tr',
        current: {'@@locale': 'tr'},
        english: english,
        turkish: turkish,
        allowEnglishFallback: false,
      );

      expect(plan.blockedEnglishFallbackKeys, isEmpty);
      expect(plan.updated['existing'], 'Mevcut');
      expect(plan.updated['newKey'], 'Yeni anahtar');
    });

    test('skips writes when only newline style differs', () {
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
