import 'package:flutter_test/flutter_test.dart';
import 'package:adhan/adhan.dart';
import 'package:sirat_i_nur/core/services/prayer_calendar_service.dart';
import 'package:sirat_i_nur/core/services/prayer_profile_service.dart';
import 'package:sirat_i_nur/core/utils/timezone_utils.dart';
import 'package:timezone/data/latest.dart' as tzdata;
import 'package:timezone/timezone.dart' as tz;

void main() {
  tzdata.initializeTimeZones();
  tz.setLocalLocation(tz.getLocation('Etc/UTC'));

  group('PrayerCalendarService', () {
    test('returns tomorrow fajr as next prayer after isha has passed', () {
      const latitude = 41.0082;
      const longitude = 28.9784;
      final date = DateTime(2026, 4, 8);
      final afterIsha = DateTime(2026, 4, 8, 23, 30);

      final today = PrayerCalendarService.calculatePrayerTimes(
        latitude: latitude,
        longitude: longitude,
        date: date,
        method: 'Turkey',
        madhab: 'Shafii',
        currentTime: afterIsha,
      );
      final tomorrow = PrayerCalendarService.calculatePrayerTimes(
        latitude: latitude,
        longitude: longitude,
        date: date.add(const Duration(days: 1)),
        method: 'Turkey',
        madhab: 'Shafii',
        currentTime: afterIsha,
      );

      expect(today.nextPrayerName, 'Fajr');
      expect(today.nextPrayerTime, tomorrow.fajr);
      expect(today.nextPrayerTime.isAfter(afterIsha), isTrue);
    });

    test(
      'uses official Umm al-Qura interval instead of stale custom isha angles',
      () {
        const latitude = 21.3891;
        const longitude = 39.8579;
        final date = DateTime(2026, 4, 8);
        final currentTime = DateTime(2026, 4, 8, 12);

        final official = PrayerCalendarService.calculatePrayerTimes(
          latitude: latitude,
          longitude: longitude,
          date: date,
          method: ummAlQuraPrayerMethod,
          madhab: hanbaliMadhab,
          ishaAngle: 5.0,
          currentTime: currentTime,
        );
        final custom = PrayerCalendarService.calculatePrayerTimes(
          latitude: latitude,
          longitude: longitude,
          date: date,
          method: customPrayerMethod,
          madhab: hanbaliMadhab,
          fajrAngle: 18.5,
          ishaAngle: 5.0,
          currentTime: currentTime,
        );

        expect(
          official.isha.difference(official.maghrib),
          const Duration(minutes: 90),
        );
        expect(
          custom.isha.difference(custom.maghrib),
          isNot(const Duration(minutes: 90)),
        );
      },
    );

    test('adjusts each prayer with its own DST offset on transition days', () {
      const latitude = 52.52;
      const longitude = 13.405;
      final date = DateTime(2026, 3, 29, 0, 30);
      const timezone = 'Europe/Berlin';
      final coordinates = Coordinates(latitude, longitude);
      final params = buildCalculationParameters(mwlPrayerMethod)
        ..madhab = resolveAdhanMadhab(shafiiMadhab);
      final rawPrayerTimes = PrayerTimes(
        coordinates,
        DateComponents.from(date),
        params,
      );
      final expectedFajr = TimezoneUtils.adjustCalculationTime(
        rawPrayerTimes.fajr,
        timezone,
      );
      final referenceAdjustedFajr = rawPrayerTimes.fajr.add(
        TimezoneUtils.timezoneDeltaForDate(date, timezone),
      );

      final calculated = PrayerCalendarService.calculatePrayerTimes(
        latitude: latitude,
        longitude: longitude,
        date: date,
        method: mwlPrayerMethod,
        madhab: shafiiMadhab,
        timezone: timezone,
        currentTime: date,
      );

      expect(expectedFajr, isNot(referenceAdjustedFajr));
      expect(calculated.fajr, expectedFajr);
    });
  });
}
