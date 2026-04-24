import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('README operational documentation', () {
    final readme = File('README.md').readAsStringSync();
    final releaseChecklist = File(
      'store/release_checklist.md',
    ).readAsStringSync();

    test('documents the Quran audio distribution import order', () {
      final downloadIndex = readme.indexOf(
        'dart run tool/download_verified_quran_audio.dart',
      );
      final seedIndex = readme.indexOf(
        'dart run tool/generate_quran_audio_storage_seed.dart',
      );
      final distributionIndex = readme.indexOf(
        'Upload the mirrored MP3 files to the selected first-party distribution providers',
      );

      expect(downloadIndex, isNot(-1));
      expect(seedIndex, greaterThan(downloadIndex));
      expect(distributionIndex, greaterThan(seedIndex));
      expect(
        readme,
        contains(
          'Supabase stores only metadata/path rows; the 11.6 GB Quran MP3 catalog is not uploaded to Supabase Storage',
        ),
      );
      expect(
        readme,
        contains(
          'Cloudflare R2/CDN for every reciter except `abdul_basit_murattal`',
        ),
      );
      expect(
        readme,
        contains(
          '`content_seed_quran_audio.sql` and external audio URLs in seed data are mirror inputs only',
        ),
      );
      expect(readme, contains('Every file row must include `size_bytes`'));
      expect(readme, contains('64-character `sha256` checksum'));
      expect(readme, contains('first-party distribution providers'));
      expect(readme, contains('.\\tool\\apply_supabase_content_bundle.ps1'));
      expect(readme, contains('dart run tool/generate_hadith_seed.dart'));
      expect(readme, contains('dart run tool/generate_tafsir_seed.dart'));
      expect(readme, contains('dart run tool/generate_asma_seed.dart'));
      expect(readme, contains('content_hadith_manifest.json'));
      expect(readme, contains('content_tafsir_manifest.json'));
      expect(readme, contains('content_tafsir_manifest.json.gz'));
      expect(readme, contains('at least 100 verified rows per collection'));
      expect(readme, contains('complete 6,236-ayah catalog'));
      expect(readme, contains('source_license'));
      expect(readme, contains('content_seed_hadith.sql'));
      expect(readme, contains('content_seed_tafsir.sql'));
      expect(readme, contains('content_seed_tafsir.sql.gz'));
      expect(readme, contains('content_seed_duas.sql'));
      expect(readme, contains('content_seed_education.sql'));
      expect(readme, contains('content_seed_asma_ul_husna.sql'));
      expect(readme, contains('SUPABASE_DB_URL'));
      expect(readme, contains('tool/apply_supabase_sql_file.cjs'));
      expect(readme, contains('build/supabase_content_apply_summary.json'));
      expect(readme, contains('files_applied'));
      expect(
        readme,
        contains('rejects old manifests that do not include this evidence'),
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
      expect(readme, contains('.\\tool\\build_store_appbundle.ps1'));
      expect(readme, contains('SUPABASE_URL'));
      expect(readme, contains('SUPABASE_PUBLISHABLE_KEY'));
      expect(readme, contains('PLACES_TILE_URL_TEMPLATE'));
      expect(readme, contains('QURAN_AUDIO_CLOUDFLARE_BASE_URL'));
      expect(readme, contains('QURAN_AUDIO_GITHUB_URL_TEMPLATE'));
      expect(readme, isNot(contains('tiles.example.com')));
      expect(readme, isNot(contains('places-proxy.example.com')));
      expect(readme, isNot(contains('your-project.supabase.co')));
      expect(readme, isNot(contains('--dart-define=SUPABASE_URL=https://')));
      expect(
        readme,
        isNot(contains('--dart-define=SUPABASE_PUBLISHABLE_KEY=sb_')),
      );
      expect(readme, isNot(contains('--dart-define=SUPABASE_ANON_KEY=sb_')));
    });

    test('documents Places provider guardrails', () {
      expect(
        readme,
        contains('must not point directly at public OpenStreetMap tile hosts'),
      );
      expect(
        readme,
        contains('The app refuses known public community Overpass hosts'),
      );
      expect(readme, contains('user info, query strings, or fragments'));
    });

    test('documents store release signing and policy gates', () {
      expect(
        readme,
        contains(
          'Release builds never fall back to the Android debug keystore',
        ),
      );
      expect(readme, contains('android/key.properties.example'));
      expect(readme, contains('validateStoreReleaseSigning'));
      expect(readme, contains('tool/build_store_appbundle.ps1'));
      expect(readme, contains('SUPABASE_PUBLISHABLE_KEY'));
      expect(readme, contains('PLACES_OVERPASS_API_URL'));
      expect(readme, contains('store/play/data_safety.md'));
      expect(readme, contains('store/play/exact_alarm_declaration.md'));
      expect(readme, contains('falls back to inexact reminders'));
    });

    test('documents the Appium runtime smoke release gate', () {
      expect(
        readme,
        contains('.\\tool\\appium_runtime_smoke.ps1 -BuildMode release'),
      );
      expect(readme, contains('appium-runtime-smoke-summary.json'));
      expect(readme, contains('Android Settings'));
      expect(readme, contains('-SmokeLocale tr'));
      expect(readme, contains('lib/l10n/app_<locale>.arb'));
      expect(
        releaseChecklist,
        contains('.\\tool\\appium_runtime_smoke.ps1 -BuildMode release'),
      );
      expect(releaseChecklist, contains('appium-runtime-smoke-summary.json'));
      expect(releaseChecklist, contains('-SmokeLocale tr'));
      expect(releaseChecklist, contains('lib/l10n/app_<locale>.arb'));
      expect(releaseChecklist, contains('logcat stayed crash-free'));
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
