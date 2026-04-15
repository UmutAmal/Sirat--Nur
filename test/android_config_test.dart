import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Android production configuration', () {
    final manifest = File(
      'android/app/src/main/AndroidManifest.xml',
    ).readAsStringSync();
    final gradle = File('android/app/build.gradle.kts').readAsStringSync();
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
  });
}
