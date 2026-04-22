import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Android production configuration', () {
    final manifest = File(
      'android/app/src/main/AndroidManifest.xml',
    ).readAsStringSync();
    final gradle = File('android/app/build.gradle.kts').readAsStringSync();
    final gradleProperties = File(
      'android/gradle.properties',
    ).readAsStringSync();
    final pubspec = File('pubspec.yaml').readAsStringSync();

    test('does not ship stale Google Maps or AdMob placeholder metadata', () {
      expect(manifest, isNot(contains('YOUR_GOOGLE_MAPS_API_KEY')));
      expect(manifest, isNot(contains('com.google.android.geo.API_KEY')));
      expect(
        manifest,
        isNot(contains('com.google.android.gms.ads.APPLICATION_ID')),
      );
      expect(manifest, isNot(contains('ca-app-pub-3940256099942544')));
    });

    test('does not keep unused ads dependencies or default scaffold TODOs', () {
      expect(pubspec, isNot(contains('google_mobile_ads')));
      expect(gradle, isNot(contains('TODO:')));
      expect(gradle, contains('applicationId = "com.umutamal.sirat_i_nur"'));
    });

    test('release builds never fall back to debug signing', () {
      expect(gradle, isNot(contains('signingConfigs.getByName("debug")')));
      expect(gradle, contains('create("release")'));
      expect(gradle, contains('validateStoreReleaseSigning'));
      expect(gradle, contains('validateStoreReleaseRuntimeConfig'));
      expect(gradle, contains('SIRAT_UPLOAD_STORE_FILE'));
      expect(gradle, contains('debug signing is forbidden for release'));
      expect(gradle, contains('SUPABASE_URL'));
      expect(gradle, contains('SUPABASE_PUBLISHABLE_KEY'));
      expect(gradle, contains('PLACES_TILE_URL_TEMPLATE'));
      expect(gradle, contains('QURAN_AUDIO_CLOUDFLARE_BASE_URL'));
      expect(gradle, contains('QURAN_AUDIO_GITHUB_URL_TEMPLATE'));
      expect(gradle, contains('QURAN_AUDIO_PATH_NAMESPACE'));
      expect(gradle, contains('verified audio_files.storage_path seed'));
    });

    test('release lint remains enabled for store packaging', () {
      expect(gradle, isNot(contains('checkReleaseBuilds = false')));
      expect(gradle, contains('checkReleaseBuilds = true'));
      expect(gradle, contains('abortOnError = true'));
    });

    test('exact alarm permission uses the revocable runtime flow only', () {
      expect(manifest, contains('android.permission.SCHEDULE_EXACT_ALARM'));
      expect(manifest, isNot(contains('android.permission.USE_EXACT_ALARM')));
    });

    test(
      'disables Kotlin incremental caches for cross-drive Windows builds',
      () {
        expect(gradleProperties, contains('kotlin.incremental=false'));
      },
    );
  });
}
