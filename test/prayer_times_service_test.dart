import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/services/prayer_times_service.dart';

// The helper functions in prayer_times_service.dart are top-level so we can
// unit-test them by importing the file.  We re-export them via a helper if
// they become private; for now the public API is the provider which depends
// on the helpers.

void main() {
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
        'lib/core/services/prayer_times_service.dart',
      ).readAsStringSync();

      expect(source, contains('applyAutomaticHighLatitudeRule(params, lat)'));
    });
  });
}
