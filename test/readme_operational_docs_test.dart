import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('README operational documentation', () {
    final readme = File('README.md').readAsStringSync();

    test('documents the Quran audio storage import order', () {
      final downloadIndex = readme.indexOf(
        'dart run tool/download_verified_quran_audio.dart',
      );
      final uploadIndex = readme.indexOf(
        'dart run tool/upload_quran_audio_storage.dart',
      );
      final seedIndex = readme.indexOf(
        'dart run tool/generate_quran_audio_storage_seed.dart',
      );

      expect(downloadIndex, isNot(-1));
      expect(uploadIndex, greaterThan(downloadIndex));
      expect(seedIndex, greaterThan(uploadIndex));
      expect(
        readme,
        contains(
          'Do not apply `content_seed_quran_audio_storage.sql` before the matching MP3 files are uploaded',
        ),
      );
      expect(
        readme,
        contains(
          'The runtime requires Supabase Storage-backed `storage_path` rows for playable audio',
        ),
      );
      expect(
        readme,
        contains(
          '`content_seed_quran_audio.sql` and external audio URLs in seed data are mirror inputs only',
        ),
      );
      expect(
        readme,
        isNot(contains('runtime prefers Supabase Storage-backed')),
      );
      expect(readme, isNot(contains('MP3 CDN endpoint')));
    });

    test('does not document stale persistence dependencies', () {
      expect(readme, isNot(contains('flutter_secure_storage')));
    });

    test('does not publish fake production endpoint placeholders', () {
      expect(readme, contains('--dart-define=SUPABASE_URL="\$SUPABASE_URL"'));
      expect(
        readme,
        contains(
          '--dart-define=PLACES_TILE_URL_TEMPLATE="\$PLACES_TILE_URL_TEMPLATE"',
        ),
      );
      expect(readme, isNot(contains('tiles.example.com')));
      expect(readme, isNot(contains('places-proxy.example.com')));
      expect(readme, isNot(contains('your-project.supabase.co')));
      expect(readme, isNot(contains('--dart-define=SUPABASE_URL=https://')));
      expect(readme, isNot(contains('--dart-define=SUPABASE_ANON_KEY=sb_')));
    });

    test(
      'documents platform-backed premium purchases instead of local simulation',
      () {
        expect(
          readme,
          contains(
            'Paywall purchase buttons route through the platform in-app purchase flow',
          ),
        );
        expect(
          readme,
          contains(
            'only persist premium entitlement after a purchased or restored store update',
          ),
        );
        expect(
          readme,
          contains('premium/ (Platform in-app purchase Paywall provider)'),
        );
        expect(
          readme,
          isNot(
            contains(
              '"Buy" buttons on the Paywall actually toggle a Riverpod Premium state',
            ),
          ),
        );
        expect(readme, isNot(contains('Local simulated Paywall provider')));
      },
    );
  });
}
