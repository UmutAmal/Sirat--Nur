import 'package:adhan/adhan.dart';
import 'package:sirat_i_nur/core/services/prayer_profile_service.dart';
import 'package:sirat_i_nur/domain/entities/prayer_times_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirat_i_nur/core/utils/timezone_utils.dart';
import 'dart:convert';

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
    DateTime? currentTime,
  }) {
    final coordinates = Coordinates(latitude, longitude);
    final resolvedTimezone = TimezoneUtils.resolveTimezoneName(
      timezoneName: timezone,
      latitude: latitude,
      longitude: longitude,
    );
    final params = buildCalculationParameters(
      method,
      fajrAngle: fajrAngle,
      ishaAngle: ishaAngle,
    );

    if (highLatitudeRule != null) {
      params.highLatitudeRule = highLatitudeRule;
    } else {
      applyAutomaticHighLatitudeRule(params, latitude);
    }

    // Set madhab
    params.madhab = resolveAdhanMadhab(madhab);

    final dateComponents = DateComponents.from(date);
    final prayerTimes = PrayerTimes(coordinates, dateComponents, params);
    final fajr = TimezoneUtils.adjustCalculationTime(
      prayerTimes.fajr,
      resolvedTimezone,
    );
    final sunrise = TimezoneUtils.adjustCalculationTime(
      prayerTimes.sunrise,
      resolvedTimezone,
    );
    final dhuhr = TimezoneUtils.adjustCalculationTime(
      prayerTimes.dhuhr,
      resolvedTimezone,
    );
    final asr = TimezoneUtils.adjustCalculationTime(
      prayerTimes.asr,
      resolvedTimezone,
    );
    final maghrib = TimezoneUtils.adjustCalculationTime(
      prayerTimes.maghrib,
      resolvedTimezone,
    );
    final isha = TimezoneUtils.adjustCalculationTime(
      prayerTimes.isha,
      resolvedTimezone,
    );

    // Calculate next prayer
    final now = currentTime ?? TimezoneUtils.nowForTimezone(resolvedTimezone);
    DateTime nextTime = fajr;
    String nextName = 'Fajr';

    if (now.isBefore(fajr)) {
      nextTime = fajr;
      nextName = 'Fajr';
    } else if (now.isBefore(sunrise)) {
      nextTime = sunrise;
      nextName = 'Sunrise';
    } else if (now.isBefore(dhuhr)) {
      nextTime = dhuhr;
      nextName = 'Dhuhr';
    } else if (now.isBefore(asr)) {
      nextTime = asr;
      nextName = 'Asr';
    } else if (now.isBefore(maghrib)) {
      nextTime = maghrib;
      nextName = 'Maghrib';
    } else if (now.isBefore(isha)) {
      nextTime = isha;
      nextName = 'Isha';
    } else {
      final tomorrow = date.add(const Duration(days: 1));
      final tomorrowDateComponents = DateComponents.from(tomorrow);
      final tomorrowPrayerTimes = PrayerTimes(
        coordinates,
        tomorrowDateComponents,
        params,
      );
      nextTime = TimezoneUtils.adjustCalculationTime(
        tomorrowPrayerTimes.fajr,
        resolvedTimezone,
      );
      nextName = 'Fajr';
    }

    return PrayerTimesEntity(
      fajr: fajr,
      sunrise: sunrise,
      dhuhr: dhuhr,
      asr: asr,
      maghrib: maghrib,
      isha: isha,
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
    final resolvedTimezone = TimezoneUtils.resolveTimezoneName(
      timezoneName: timezone,
      latitude: latitude,
      longitude: longitude,
    );
    final now = TimezoneUtils.nowForTimezone(resolvedTimezone);

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
          timezone: resolvedTimezone,
          fajrAngle: fajrAngle,
          ishaAngle: ishaAngle,
        );

        allTimes.addAll(monthTimes);
      }
    }

    return allTimes;
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
    final resolvedTimezone = TimezoneUtils.resolveTimezoneName(
      timezoneName: timezone,
      latitude: latitude,
      longitude: longitude,
    );
    final times = calculate10Years(
      latitude: latitude,
      longitude: longitude,
      method: method,
      madhab: madhab,
      timezone: resolvedTimezone,
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
        'timezone': resolvedTimezone,
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
