import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/network/supabase_config.dart';

void main() {
  group('SupabaseConfig', () {
    test('source does not commit a fallback anon key', () {
      final source = File(
        'lib/core/network/supabase_config.dart',
      ).readAsStringSync();
      const publishableKeyPrefix =
          'sb_'
          'publishable_';

      expect(source, isNot(contains(publishableKeyPrefix)));
      expect(source, isNot(contains('defaultValue: \'sb_')));
      expect(source, isNot(contains('--dart-define=SUPABASE_URL=https://')));
      expect(source, isNot(contains('--dart-define=SUPABASE_ANON_KEY=sb_')));
      expect(source, contains("String.fromEnvironment('SUPABASE_ANON_KEY')"));
    });

    test('runtime credentials require both URL and anon key', () {
      expect(
        SupabaseConfig.hasRuntimeCredentials(
          candidateUrl: 'https://example.supabase.co',
          candidateAnonKey: '',
        ),
        isFalse,
      );
      expect(
        SupabaseConfig.hasRuntimeCredentials(
          candidateUrl: '',
          candidateAnonKey: 'anon_test_key',
        ),
        isFalse,
      );
      expect(
        SupabaseConfig.hasRuntimeCredentials(
          candidateUrl: 'https://example.supabase.co',
          candidateAnonKey: 'anon_test_key',
        ),
        isTrue,
      );
    });

    test('runtime credentials reject unsafe Supabase project URLs', () {
      const unsafeUrls = [
        'http://example.supabase.co',
        'https://token@example.supabase.co',
        'https://example.supabase.co/rest/v1',
        'https://example.supabase.co?apikey=secret',
        'https://example.supabase.co#secret',
        'not-a-url',
      ];

      for (final unsafeUrl in unsafeUrls) {
        expect(
          SupabaseConfig.hasRuntimeCredentials(
            candidateUrl: unsafeUrl,
            candidateAnonKey: 'anon_test_key',
          ),
          isFalse,
          reason: unsafeUrl,
        );
      }

      expect(
        SupabaseConfig.hasRuntimeCredentials(
          candidateUrl: ' https://example.supabase.co/ ',
          candidateAnonKey: ' anon_test_key ',
        ),
        isTrue,
      );
    });
  });
}
