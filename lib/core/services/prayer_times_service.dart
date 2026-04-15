import 'package:adhan/adhan.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/core/services/prayer_profile_service.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';
import 'package:sirat_i_nur/core/utils/timezone_utils.dart';

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

final prayerTimesProvider = Provider<PrayerTimesData?>((ref) {
  final settings = ref.watch(settingsProvider);
  final lat = settings.latitude;
  final lng = settings.longitude;

  if (lat == null || lng == null) return null;

  final coordinates = Coordinates(lat, lng);
  final params = buildCalculationParameters(
    settings.calculationMethod,
    fajrAngle: settings.fajrAngle,
    ishaAngle: settings.ishaAngle,
  );
  applyAutomaticHighLatitudeRule(params, lat);
  params.madhab = resolveAdhanMadhab(settings.madhab);

  final now = TimezoneUtils.nowForTimezone(settings.timezone);
  final date = DateComponents.from(now);
  final prayerTimes = PrayerTimes(coordinates, date, params);
  DateTime adjust(DateTime dt) =>
      TimezoneUtils.adjustCalculationTime(dt, settings.timezone);
  final fajr = adjust(prayerTimes.fajr);
  final sunrise = adjust(prayerTimes.sunrise);
  final dhuhr = adjust(prayerTimes.dhuhr);
  final asr = adjust(prayerTimes.asr);
  final maghrib = adjust(prayerTimes.maghrib);
  final isha = adjust(prayerTimes.isha);

  // Determine next prayer
  String nextPrayer;
  DateTime nextTime;
  if (now.isBefore(fajr)) {
    nextPrayer = 'Fajr';
    nextTime = fajr;
  } else if (now.isBefore(sunrise)) {
    nextPrayer = 'Sunrise';
    nextTime = sunrise;
  } else if (now.isBefore(dhuhr)) {
    nextPrayer = 'Dhuhr';
    nextTime = dhuhr;
  } else if (now.isBefore(asr)) {
    nextPrayer = 'Asr';
    nextTime = asr;
  } else if (now.isBefore(maghrib)) {
    nextPrayer = 'Maghrib';
    nextTime = maghrib;
  } else if (now.isBefore(isha)) {
    nextPrayer = 'Isha';
    nextTime = isha;
  } else {
    nextPrayer = 'Fajr';
    // Tomorrow's fajr
    final tomorrow = now.add(const Duration(days: 1));
    final tomorrowDate = DateComponents.from(tomorrow);
    final tomorrowPrayers = PrayerTimes(coordinates, tomorrowDate, params);
    nextTime = adjust(tomorrowPrayers.fajr);
  }

  final remaining = nextTime.difference(now);

  return PrayerTimesData(
    fajr: _formatTime(fajr),
    sunrise: _formatTime(sunrise),
    dhuhr: _formatTime(dhuhr),
    asr: _formatTime(asr),
    maghrib: _formatTime(maghrib),
    isha: _formatTime(isha),
    nextPrayer: nextPrayer,
    nextPrayerTime: _formatTime(nextTime),
    timeRemaining: remaining,
  );
});
