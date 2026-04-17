import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/services/app_metadata_service.dart';

void main() {
  group('store readiness guard', () {
    test('privacy policy URL is not the retired siratinur.com placeholder', () {
      final source = File(
        'lib/core/services/app_metadata_service.dart',
      ).readAsStringSync();

      expect(privacyPolicyUrl, startsWith('https://'));
      expect(privacyPolicyUrl, contains('/docs/privacy_policy.md'));
      expect(privacyPolicyUrl, isNot(contains('siratinur.com/privacy')));
      expect(source, contains('privacyPolicyUrl'));
    });

    test('tracked privacy and store disclosure worksheets exist', () {
      for (final path in <String>[
        'docs/privacy_policy.md',
        'store/play/data_safety.md',
        'store/play/exact_alarm_declaration.md',
        'store/play/billing_test_plan.md',
        'store/appstore/app_privacy.md',
        'store/listing/en-US.md',
        'store/listing/tr-TR.md',
        'tool/build_store_appbundle.ps1',
      ]) {
        final file = File(path);
        expect(file.existsSync(), isTrue, reason: '$path must exist');
        expect(file.readAsStringSync().trim(), isNotEmpty);
      }
    });

    test('iOS declares location purpose string for App Store review', () {
      final plist = File('ios/Runner/Info.plist').readAsStringSync();

      expect(plist, contains('NSLocationWhenInUseUsageDescription'));
      expect(plist, contains('prayer times'));
      expect(plist, contains('Qibla direction'));
      expect(plist, contains('nearby Islamic places'));
    });

    test('Quran audio storage flow documents the complete release gate', () {
      final mirrorSeed = File(
        'content_seed_quran_audio.sql',
      ).readAsStringSync();
      final dataSafety = File('store/play/data_safety.md').readAsStringSync();
      final exactAlarm = File(
        'store/play/exact_alarm_declaration.md',
      ).readAsStringSync();

      expect(mirrorSeed, contains('content_seed_quran_audio_storage.sql'));
      expect(dataSafety, contains('Data Safety'));
      expect(dataSafety, contains('Location'));
      expect(dataSafety, contains('Financial info'));
      expect(exactAlarm, contains('prayer time and adhan reminders'));
    });

    test('CI uses the current Flutter SDK and full project checks', () {
      final ci = File('.github/workflows/ci.yml').readAsStringSync();

      expect(ci, contains("flutter-version: '3.41.4'"));
      expect(ci, contains('run: flutter analyze'));
      expect(ci, isNot(contains('flutter analyze lib/')));
      expect(ci, contains('dart format --set-exit-if-changed lib test tool'));
    });

    test('store app bundle script requires real release configuration', () {
      final script = File('tool/build_store_appbundle.ps1').readAsStringSync();

      expect(script, contains('SUPABASE_URL'));
      expect(script, contains('SUPABASE_ANON_KEY'));
      expect(script, contains('PLACES_TILE_URL_TEMPLATE'));
      expect(script, contains('PLACES_OVERPASS_API_URL'));
      expect(script, contains('android/key.properties'));
      expect(script, contains('Assert-CleanHttpsUrl'));
      expect(script, contains('tile.openstreetmap.org'));
      expect(script, contains('overpass-api.de'));
      expect(script, contains('flutter build appbundle --release'));
    });

    test('Gradle release packaging refuses missing runtime dart-defines', () {
      final gradle = File('android/app/build.gradle.kts').readAsStringSync();

      expect(gradle, contains('requiredStoreDartDefines'));
      expect(gradle, contains('decodeDartDefines'));
      expect(gradle, contains('validateStoreReleaseRuntimeConfig'));
      expect(gradle, contains('Store release runtime config is missing'));
      expect(gradle, contains('no public OpenStreetMap tile host'));
      expect(gradle, contains('must not use a public Overpass host'));
    });
  });
}
