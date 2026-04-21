import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/core/services/prayer_calendar_service.dart';
import 'package:sirat_i_nur/core/utils/timezone_utils.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';

class PrayerTimesData {
  final String fajr, sunrise, dhuhr, asr, maghrib, isha;
  final String nextPrayer;
  final String nextPrayerTime;
  final Duration timeRemaining;

  const PrayerTimesData({
    required this.fajr,
    required this.sunrise,
    required this.dhuhr,
    required this.asr,
    required this.maghrib,
    required this.isha,
    required this.nextPrayer,
    required this.nextPrayerTime,
    required this.timeRemaining,
  });
}

String _formatTime(DateTime dt) {
  final h = dt.hour.toString().padLeft(2, '0');
  final m = dt.minute.toString().padLeft(2, '0');
  return '$h:$m';
}

PrayerTimesData? buildPrayerTimesData(
  SettingsState settings, {
  DateTime? currentTime,
}) {
  final lat = settings.latitude;
  final lng = settings.longitude;

  if (lat == null || lng == null || !hasValidLocationCoordinates(lat, lng)) {
    return null;
  }

  final resolvedTimezone = TimezoneUtils.resolveTimezoneName(
    timezoneName: settings.timezone,
    latitude: lat,
    longitude: lng,
  );
  final referenceTime =
      currentTime ?? TimezoneUtils.nowForTimezone(resolvedTimezone);
  final prayerTimes = PrayerCalendarService.calculatePrayerTimes(
    latitude: lat,
    longitude: lng,
    date: referenceTime,
    method: settings.calculationMethod,
    madhab: settings.madhab,
    timezone: resolvedTimezone,
    fajrAngle: settings.fajrAngle,
    ishaAngle: settings.ishaAngle,
    currentTime: referenceTime,
  );
  final remaining = TimezoneUtils.differenceInTimezone(
    prayerTimes.nextPrayerTime,
    referenceTime,
    resolvedTimezone,
  );

  return PrayerTimesData(
    fajr: _formatTime(prayerTimes.fajr),
    sunrise: _formatTime(prayerTimes.sunrise),
    dhuhr: _formatTime(prayerTimes.dhuhr),
    asr: _formatTime(prayerTimes.asr),
    maghrib: _formatTime(prayerTimes.maghrib),
    isha: _formatTime(prayerTimes.isha),
    nextPrayer: prayerTimes.nextPrayerName,
    nextPrayerTime: _formatTime(prayerTimes.nextPrayerTime),
    timeRemaining: remaining,
  );
}

final prayerTimesProvider = Provider<PrayerTimesData?>((ref) {
  final settings = ref.watch(settingsProvider);
  return buildPrayerTimesData(settings);
});
