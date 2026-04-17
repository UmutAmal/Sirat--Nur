import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/services/prayer_calendar_service.dart';
import 'package:sirat_i_nur/core/services/prayer_profile_service.dart';
import 'package:sirat_i_nur/core/services/prayer_times_service.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';
import 'package:timezone/data/latest.dart' as tzdata;
import 'package:timezone/timezone.dart' as tz;

// The helper functions in prayer_times_service.dart are top-level so we can
// unit-test them by importing the file.  We re-export them via a helper if
// they become private; for now the public API is the provider which depends
// on the helpers.

void main() {
  tzdata.initializeTimeZones();
  tz.setLocalLocation(tz.getLocation('Etc/UTC'));

  group('PrayerTimesData', () {
    test('constructor stores all fields', () {
      final data = PrayerTimesData(
        fajr: '05:30',
        sunrise: '07:00',
        dhuhr: '12:15',
        asr: '15:45',
        maghrib: '18:30',
        isha: '20:00',
        nextPrayer: 'Maghrib',
        nextPrayerTime: '18:30',
        timeRemaining: const Duration(hours: 2, minutes: 15),
      );
      expect(data.fajr, '05:30');
      expect(data.sunrise, '07:00');
      expect(data.dhuhr, '12:15');
      expect(data.asr, '15:45');
      expect(data.maghrib, '18:30');
      expect(data.isha, '20:00');
      expect(data.nextPrayer, 'Maghrib');
      expect(data.nextPrayerTime, '18:30');
      expect(data.timeRemaining, const Duration(hours: 2, minutes: 15));
    });

    test('fields are correctly typed', () {
      final data = PrayerTimesData(
        fajr: '05:00',
        sunrise: '06:30',
        dhuhr: '12:00',
        asr: '15:30',
        maghrib: '18:00',
        isha: '19:30',
        nextPrayer: 'Fajr',
        nextPrayerTime: '05:00',
        timeRemaining: Duration.zero,
      );
      expect(data.fajr, isA<String>());
      expect(data.timeRemaining, isA<Duration>());
    });

    test('provider applies automatic high latitude rule', () {
      final source = File(
        'lib/core/services/prayer_calendar_service.dart',
      ).readAsStringSync();

      expect(
        source,
        contains('applyAutomaticHighLatitudeRule(params, latitude)'),
      );
    });

    test(
      'provider delegates calculations to the central prayer calendar service',
      () {
        final source = File(
          'lib/core/services/prayer_times_service.dart',
        ).readAsStringSync();

        expect(source, contains('PrayerCalendarService.calculatePrayerTimes('));
        expect(source, isNot(contains('DateComponents.from(')));
        expect(source, isNot(contains('PrayerTimes(coordinates')));
      },
    );

    test('buildPrayerTimesData returns null until a real location is set', () {
      expect(buildPrayerTimesData(SettingsState()), isNull);
    });

    test('buildPrayerTimesData mirrors centralized tomorrow-fajr logic', () {
      const latitude = 21.3891;
      const longitude = 39.8579;
      final currentTime = DateTime(2026, 4, 8, 23, 30);
      final settings = SettingsState(
        calculationMethod: ummAlQuraPrayerMethod,
        madhab: hanbaliMadhab,
        latitude: latitude,
        longitude: longitude,
      );

      final data = buildPrayerTimesData(settings, currentTime: currentTime)!;
      final centralized = PrayerCalendarService.calculatePrayerTimes(
        latitude: latitude,
        longitude: longitude,
        date: currentTime,
        method: ummAlQuraPrayerMethod,
        madhab: hanbaliMadhab,
        currentTime: currentTime,
      );

      expect(data.nextPrayer, centralized.nextPrayerName);
      expect(data.nextPrayer, 'Fajr');
      expect(
        data.nextPrayerTime,
        _formatExpectedTime(centralized.nextPrayerTime),
      );
      expect(data.timeRemaining, greaterThan(Duration.zero));
    });

    test(
      'buildPrayerTimesData resolves timezone from location coordinates',
      () {
        const latitude = 52.52;
        const longitude = 13.405;
        final currentTime = DateTime(2026, 6, 15, 12);
        final settings = SettingsState(
          calculationMethod: mwlPrayerMethod,
          madhab: shafiiMadhab,
          latitude: latitude,
          longitude: longitude,
          timezone: 'Invalid/Zone',
        );

        final data = buildPrayerTimesData(settings, currentTime: currentTime)!;
        final explicit = PrayerCalendarService.calculatePrayerTimes(
          latitude: latitude,
          longitude: longitude,
          date: currentTime,
          method: mwlPrayerMethod,
          madhab: shafiiMadhab,
          timezone: 'Europe/Berlin',
          currentTime: currentTime,
        );

        expect(data.fajr, _formatExpectedTime(explicit.fajr));
        expect(data.dhuhr, _formatExpectedTime(explicit.dhuhr));
        expect(data.isha, _formatExpectedTime(explicit.isha));
      },
    );
  });
}

String _formatExpectedTime(DateTime dt) {
  final hour = dt.hour.toString().padLeft(2, '0');
  final minute = dt.minute.toString().padLeft(2, '0');
  return '$hour:$minute';
}
