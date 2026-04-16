import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/services/prayer_profile_service.dart';
import 'package:sirat_i_nur/core/services/prayer_widget_sync_service.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';

void main() {
  group('PrayerWidgetSyncService', () {
    final service = PrayerWidgetSyncService();

    test('returns null when location is missing', () {
      final entity = service.buildPrayerTimesEntity(SettingsState());

      expect(entity, isNull);
    });

    test(
      'uses timezone-aware reference date for widget prayer calculations',
      () {
        final referenceNow = DateTime(2026, 4, 9, 0, 30);
        final settings = SettingsState(
          calculationMethod: diyanetPrayerMethod,
          madhab: hanafiMadhab,
          latitude: 41.0082,
          longitude: 28.9784,
          timezone: 'Europe/Istanbul',
        );

        final entity = service.buildPrayerTimesEntity(
          settings,
          nowResolver: (_) => referenceNow,
        );

        expect(entity, isNotNull);
        expect(entity!.fajr.year, referenceNow.year);
        expect(entity.fajr.month, referenceNow.month);
        expect(entity.fajr.day, referenceNow.day);
        expect(entity.nextPrayerTime.isAfter(referenceNow), isTrue);
      },
    );

    test('uses local coordinate snapshots instead of force unwraps', () {
      final source = File(
        'lib/core/services/prayer_widget_sync_service.dart',
      ).readAsStringSync();

      expect(source, isNot(contains('settings.latitude!')));
      expect(source, isNot(contains('settings.longitude!')));
    });
  });
}
