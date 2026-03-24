import 'package:adhan/adhan.dart';
import 'package:sirat_i_nur/domain/entities/prayer_times_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:timezone/timezone.dart' as tz;

/// Offline Prayer Times Service using Adhan package
/// Calculates prayer times for any date without internet
class PrayerCalendarService {
  static const String _cacheKey = 'prayer_times_cache';

  /// Calculate prayer times for a specific date
  static PrayerTimesEntity calculatePrayerTimes({
    required double latitude,
    required double longitude,
    required DateTime date,
    required String method,
    required String madhab,
    String? timezone,
    double? fajrAngle,
    double? ishaAngle,
    HighLatitudeRule? highLatitudeRule,
  }) {
    final coordinates = Coordinates(latitude, longitude);
    final params = _getCalculationParameters(method, fajrAngle, ishaAngle);

    if (highLatitudeRule != null) {
      params.highLatitudeRule = highLatitudeRule;
    } else {
      // Automatic selection for high latitudes
      if (latitude.abs() > 48.0) {
        params.highLatitudeRule = HighLatitudeRule.twilight_angle;
      }
    }

    // Set madhab
    if (madhab == 'Shafii' || madhab == 'Maliki' || madhab == 'Hanbali') {
      params.madhab = Madhab.shafi;
    } else {
      params.madhab = Madhab.hanafi;
    }

    final dateComponents = DateComponents.from(date);
    final prayerTimes = PrayerTimes(coordinates, dateComponents, params);
    final timezoneDelta = _timezoneDelta(timezone);
    DateTime adjust(DateTime value) => value.add(timezoneDelta);
    final adjustedFajr = adjust(prayerTimes.fajr);
    final adjustedSunrise = adjust(prayerTimes.sunrise);
    final adjustedDhuhr = adjust(prayerTimes.dhuhr);
    final adjustedAsr = adjust(prayerTimes.asr);
    final adjustedMaghrib = adjust(prayerTimes.maghrib);
    final adjustedIsha = adjust(prayerTimes.isha);

    // Calculate next prayer
    final now = _nowForTimezone(timezone);
    DateTime nextTime = adjustedFajr;
    String nextName = 'Fajr';

    if (now.isBefore(adjustedFajr)) {
      nextTime = adjustedFajr;
      nextName = 'Fajr';
    } else if (now.isBefore(adjustedSunrise)) {
      nextTime = adjustedSunrise;
      nextName = 'Sunrise';
    } else if (now.isBefore(adjustedDhuhr)) {
      nextTime = adjustedDhuhr;
      nextName = 'Dhuhr';
    } else if (now.isBefore(adjustedAsr)) {
      nextTime = adjustedAsr;
      nextName = 'Asr';
    } else if (now.isBefore(adjustedMaghrib)) {
      nextTime = adjustedMaghrib;
      nextName = 'Maghrib';
    } else {
      nextTime = adjustedIsha;
      nextName = 'Isha';
    }

    return PrayerTimesEntity(
      fajr: adjustedFajr,
      sunrise: adjustedSunrise,
      dhuhr: adjustedDhuhr,
      asr: adjustedAsr,
      maghrib: adjustedMaghrib,
      isha: adjustedIsha,
      nextPrayerName: nextName,
      nextPrayerTime: nextTime,
    );
  }

  /// Calculate prayer times for a whole month
  static List<PrayerTimesEntity> calculateMonth({
    required double latitude,
    required double longitude,
    required int year,
    required int month,
    required String method,
    required String madhab,
    String? timezone,
    double? fajrAngle,
    double? ishaAngle,
  }) {
    final List<PrayerTimesEntity> monthTimes = [];
    final daysInMonth = DateTime(year, month + 1, 0).day;

    for (int day = 1; day <= daysInMonth; day++) {
      final date = DateTime(year, month, day);
      monthTimes.add(
        calculatePrayerTimes(
          latitude: latitude,
          longitude: longitude,
          date: date,
          method: method,
          madhab: madhab,
          timezone: timezone,
          fajrAngle: fajrAngle,
          ishaAngle: ishaAngle,
        ),
      );
    }

    return monthTimes;
  }

  /// Calculate prayer times for the next 10 years
  /// This creates a complete offline prayer calendar
  static List<PrayerTimesEntity> calculate10Years({
    required double latitude,
    required double longitude,
    required String method,
    required String madhab,
    String? timezone,
    double? fajrAngle,
    double? ishaAngle,
  }) {
    final List<PrayerTimesEntity> allTimes = [];
    final now = _nowForTimezone(timezone);

    for (int year = now.year; year <= now.year + 10; year++) {
      for (int month = 1; month <= 12; month++) {
        // Skip months in current year that have passed
        if (year == now.year && month < now.month) continue;

        final monthTimes = calculateMonth(
          latitude: latitude,
          longitude: longitude,
          year: year,
          month: month,
          method: method,
          madhab: madhab,
          timezone: timezone,
          fajrAngle: fajrAngle,
          ishaAngle: ishaAngle,
        );

        allTimes.addAll(monthTimes);
      }
    }

    return allTimes;
  }

  static DateTime _nowForTimezone(String? timezoneName) {
    if (timezoneName == null || timezoneName.trim().isEmpty) {
      return DateTime.now();
    }

    try {
      final location = tz.getLocation(timezoneName);
      return tz.TZDateTime.now(location);
    } catch (_) {
      return DateTime.now();
    }
  }

  static Duration _timezoneDelta(String? timezoneName) {
    if (timezoneName == null || timezoneName.trim().isEmpty) {
      return Duration.zero;
    }

    try {
      final location = tz.getLocation(timezoneName);
      final localNow = DateTime.now();
      final timezoneNow = tz.TZDateTime.now(location);
      return timezoneNow.timeZoneOffset - localNow.timeZoneOffset;
    } catch (_) {
      return Duration.zero;
    }
  }

  /// Get calculation parameters based on method
  static CalculationParameters _getCalculationParameters(
    String method,
    double? fajrAngle,
    double? ishaAngle,
  ) {
    switch (method) {
      case 'Custom':
        return CalculationParameters(
          fajrAngle: fajrAngle ?? 18.0,
          ishaAngle: ishaAngle ?? 17.0,
        );
      case 'Muslim World League':
        return CalculationMethod.muslim_world_league.getParameters();
      case 'Egyptian':
        return CalculationMethod.egyptian.getParameters();
      case 'Karachi':
        return CalculationMethod.karachi.getParameters();
      case 'Umm Al-Qura':
        return CalculationMethod.umm_al_qura.getParameters();
      case 'Dubai':
        return CalculationMethod.dubai.getParameters();
      case 'Moonsighting Committee':
        return CalculationMethod.moon_sighting_committee.getParameters();
      case 'North America (ISNA)':
        return CalculationMethod.north_america.getParameters();
      case 'Kuwait':
        return CalculationMethod.kuwait.getParameters();
      case 'Qatar':
        return CalculationMethod.qatar.getParameters();
      case 'Singapore':
      case 'JAKIM (Malaysia)':
      case 'KEMENAG (Indonesia)':
        return CalculationMethod.singapore.getParameters();
      case 'Turkey':
      case 'Diyanet':
        return CalculationMethod.turkey.getParameters();
      case 'Tehran':
        return CalculationMethod.tehran.getParameters();
      case 'Morocco':
        return CalculationMethod.muslim_world_league.getParameters();
      default:
        return CalculationMethod.muslim_world_league.getParameters();
    }
  }

  /// Cache prayer times locally for offline use
  static Future<void> cachePrayerTimes({
    required double latitude,
    required double longitude,
    required String method,
    required String madhab,
    String? timezone,
    double? fajrAngle,
    double? ishaAngle,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    final times = calculate10Years(
      latitude: latitude,
      longitude: longitude,
      method: method,
      madhab: madhab,
      timezone: timezone,
      fajrAngle: fajrAngle,
      ishaAngle: ishaAngle,
    );

    final jsonList = times
        .map(
          (t) => {
            'fajr': t.fajr.toIso8601String(),
            'sunrise': t.sunrise.toIso8601String(),
            'dhuhr': t.dhuhr.toIso8601String(),
            'asr': t.asr.toIso8601String(),
            'maghrib': t.maghrib.toIso8601String(),
            'isha': t.isha.toIso8601String(),
            'nextPrayerName': t.nextPrayerName,
            'nextPrayerTime': t.nextPrayerTime.toIso8601String(),
          },
        )
        .toList();

    await prefs.setString(
      _cacheKey,
      jsonEncode({
        'latitude': latitude,
        'longitude': longitude,
        'method': method,
        'madhab': madhab,
        'timezone': timezone,
        'times': jsonList,
      }),
    );
  }

  /// Get cached prayer times (offline)
  static Future<List<PrayerTimesEntity>?> getCachedPrayerTimes() async {
    final prefs = await SharedPreferences.getInstance();
    final cached = prefs.getString(_cacheKey);

    if (cached == null) return null;

    try {
      final Map<String, dynamic> data = jsonDecode(cached);
      final List<dynamic> timesList = data['times'];

      return timesList
          .map(
            (t) => PrayerTimesEntity(
              fajr: DateTime.parse(t['fajr']),
              sunrise: DateTime.parse(t['sunrise']),
              dhuhr: DateTime.parse(t['dhuhr']),
              asr: DateTime.parse(t['asr']),
              maghrib: DateTime.parse(t['maghrib']),
              isha: DateTime.parse(t['isha']),
              nextPrayerName: t['nextPrayerName'],
              nextPrayerTime: DateTime.parse(t['nextPrayerTime']),
            ),
          )
          .toList();
    } catch (e) {
      return null;
    }
  }

  /// Get cached prayer time for a specific date
  static Future<PrayerTimesEntity?> getCachedPrayerTimeForDate(
    DateTime date,
  ) async {
    final cached = await getCachedPrayerTimes();
    if (cached == null) return null;

    final dateOnly = DateTime(date.year, date.month, date.day);

    for (final time in cached) {
      final timeDate = DateTime(time.fajr.year, time.fajr.month, time.fajr.day);
      if (timeDate == dateOnly) {
        return time;
      }
    }

    return null;
  }

  /// Check if cache exists
  static Future<bool> hasCachedTimes() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(_cacheKey);
  }

  /// Clear cache
  static Future<void> clearCache() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_cacheKey);
  }
}

/// Extension to convert PrayerTimesEntity to more useful formats
extension PrayerTimesEntityExtension on PrayerTimesEntity {
  /// Get prayer name in Turkish
  static String getPrayerNameTurkish(int index) {
    const names = [
      'Sabah (Fajr)',
      'Güneş (Sunrise)',
      'Öğle (Dhuhr)',
      'İkindi (Asr)',
      'Akşam (Maghrib)',
      'Yatsı (Isha)',
    ];
    return names[index];
  }

  /// Get prayer name in English
  static String getPrayerNameEnglish(int index) {
    const names = [
      'Fajr (Dawn)',
      'Sunrise',
      'Dhuhr (Noon)',
      'Asr (Afternoon)',
      'Maghrib (Evening)',
      'Isha (Night)',
    ];
    return names[index];
  }

  /// Format time as HH:mm
  String formatTime(DateTime time) {
    final hour = time.hour.toString().padLeft(2, '0');
    final minute = time.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }

  /// Get formatted times map
  Map<String, String> get formattedTimes => {
    'Fajr': formatTime(fajr),
    'Sunrise': formatTime(sunrise),
    'Dhuhr': formatTime(dhuhr),
    'Asr': formatTime(asr),
    'Maghrib': formatTime(maghrib),
    'Isha': formatTime(isha),
  };
}
