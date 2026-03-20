import 'package:adhan/adhan.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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

CalculationMethod _methodFromString(String method) {
  switch (method) {
    case 'Turkey': return CalculationMethod.turkey;
    case 'Egyptian': return CalculationMethod.egyptian;
    case 'ISNA': return CalculationMethod.north_america;
    case 'MWL': return CalculationMethod.muslim_world_league;
    case 'Karachi': return CalculationMethod.karachi;
    case 'Umm al-Qura': return CalculationMethod.umm_al_qura;
    case 'Dubai': return CalculationMethod.dubai;
    case 'Kuwait': return CalculationMethod.kuwait;
    case 'Singapore': return CalculationMethod.singapore;
    default: return CalculationMethod.turkey;
  }
}

Madhab _madhabFromString(String madhab) {
  switch (madhab) {
    case 'Hanafi': return Madhab.hanafi;
    default: return Madhab.shafi;
  }
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
  final params = _methodFromString(settings.calculationMethod).getParameters();
  params.madhab = _madhabFromString(settings.madhab);

  if (settings.fajrAngle != 18.0) params.fajrAngle = settings.fajrAngle;
  if (settings.ishaAngle != 17.0) params.ishaAngle = settings.ishaAngle;

  final now = DateTime.now();
  final date = DateComponents.from(now);
  final prayerTimes = PrayerTimes(coordinates, date, params);

  // Determine next prayer
  String nextPrayer;
  DateTime nextTime;
  if (now.isBefore(prayerTimes.fajr)) {
    nextPrayer = 'Fajr';
    nextTime = prayerTimes.fajr;
  } else if (now.isBefore(prayerTimes.sunrise)) {
    nextPrayer = 'Sunrise';
    nextTime = prayerTimes.sunrise;
  } else if (now.isBefore(prayerTimes.dhuhr)) {
    nextPrayer = 'Dhuhr';
    nextTime = prayerTimes.dhuhr;
  } else if (now.isBefore(prayerTimes.asr)) {
    nextPrayer = 'Asr';
    nextTime = prayerTimes.asr;
  } else if (now.isBefore(prayerTimes.maghrib)) {
    nextPrayer = 'Maghrib';
    nextTime = prayerTimes.maghrib;
  } else if (now.isBefore(prayerTimes.isha)) {
    nextPrayer = 'Isha';
    nextTime = prayerTimes.isha;
  } else {
    nextPrayer = 'Fajr';
    // Tomorrow's fajr
    final tomorrow = now.add(const Duration(days: 1));
    final tomorrowDate = DateComponents.from(tomorrow);
    final tomorrowPrayers = PrayerTimes(coordinates, tomorrowDate, params);
    nextTime = tomorrowPrayers.fajr;
  }

  final remaining = nextTime.difference(now);

  return PrayerTimesData(
    fajr: _formatTime(prayerTimes.fajr),
    sunrise: _formatTime(prayerTimes.sunrise),
    dhuhr: _formatTime(prayerTimes.dhuhr),
    asr: _formatTime(prayerTimes.asr),
    maghrib: _formatTime(prayerTimes.maghrib),
    isha: _formatTime(prayerTimes.isha),
    nextPrayer: nextPrayer,
    nextPrayerTime: _formatTime(nextTime),
    timeRemaining: remaining,
  );
});

