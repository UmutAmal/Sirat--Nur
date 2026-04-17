import 'package:lat_lng_to_timezone/lat_lng_to_timezone.dart' as tzmap;
import 'package:timezone/timezone.dart' as tz;

class TimezoneUtils {
  static String? normalizeTimezoneName(String? timezoneName) {
    final normalized = timezoneName?.trim();
    if (normalized == null || normalized.isEmpty) {
      return null;
    }

    try {
      tz.getLocation(normalized);
      return normalized;
    } catch (_) {
      return null;
    }
  }

  static String? inferTimezoneName(double latitude, double longitude) {
    if (!latitude.isFinite ||
        !longitude.isFinite ||
        latitude < -90 ||
        latitude > 90 ||
        longitude < -180 ||
        longitude > 180) {
      return null;
    }

    try {
      return normalizeTimezoneName(
        tzmap.latLngToTimezoneString(latitude, longitude),
      );
    } catch (_) {
      return null;
    }
  }

  static String? resolveTimezoneName({
    String? timezoneName,
    double? latitude,
    double? longitude,
  }) {
    final normalized = normalizeTimezoneName(timezoneName);
    if (normalized != null) {
      return normalized;
    }

    if (latitude != null && longitude != null) {
      return inferTimezoneName(latitude, longitude);
    }

    return null;
  }

  static tz.Location resolveLocation(String? timezoneName) {
    final normalized = normalizeTimezoneName(timezoneName);
    if (normalized == null) {
      return tz.local;
    }

    try {
      return tz.getLocation(normalized);
    } catch (_) {
      return tz.local;
    }
  }

  static DateTime nowForTimezone(String? timezoneName) {
    final location = resolveLocation(timezoneName);
    final nowTz = tz.TZDateTime.now(location);
    return DateTime(
      nowTz.year,
      nowTz.month,
      nowTz.day,
      nowTz.hour,
      nowTz.minute,
      nowTz.second,
      nowTz.millisecond,
      nowTz.microsecond,
    );
  }

  static tz.TZDateTime toTZDateTime(DateTime dateTime, String? timezoneName) {
    final location = resolveLocation(timezoneName);
    return tz.TZDateTime(
      location,
      dateTime.year,
      dateTime.month,
      dateTime.day,
      dateTime.hour,
      dateTime.minute,
      dateTime.second,
      dateTime.millisecond,
      dateTime.microsecond,
    );
  }

  static DateTime adjustCalculationTime(
    DateTime calculatedTime,
    String? timezoneName,
  ) {
    return calculatedTime.add(
      timezoneDeltaForDate(calculatedTime, timezoneName),
    );
  }

  static Duration timezoneDeltaForDate(
    DateTime targetDate,
    String? timezoneName,
  ) {
    final normalized = normalizeTimezoneName(timezoneName);
    if (normalized == null) {
      return Duration.zero;
    }

    try {
      final location = tz.getLocation(normalized);
      final targetTz = tz.TZDateTime(
        location,
        targetDate.year,
        targetDate.month,
        targetDate.day,
        targetDate.hour,
        targetDate.minute,
        targetDate.second,
      );
      final localTz = tz.TZDateTime.from(targetDate, tz.local);
      final deltaMinutes =
          targetTz.timeZoneOffset.inMinutes - localTz.timeZoneOffset.inMinutes;

      return Duration(minutes: deltaMinutes);
    } catch (_) {
      return Duration.zero;
    }
  }

  static Duration differenceInTimezone(
    DateTime later,
    DateTime earlier,
    String? timezoneName,
  ) {
    final normalized = normalizeTimezoneName(timezoneName);
    if (normalized == null) {
      return later.difference(earlier);
    }

    try {
      final location = tz.getLocation(normalized);
      final laterTz = tz.TZDateTime(
        location,
        later.year,
        later.month,
        later.day,
        later.hour,
        later.minute,
        later.second,
        later.millisecond,
        later.microsecond,
      );
      final earlierTz = tz.TZDateTime(
        location,
        earlier.year,
        earlier.month,
        earlier.day,
        earlier.hour,
        earlier.minute,
        earlier.second,
        earlier.millisecond,
        earlier.microsecond,
      );

      return laterTz.difference(earlierTz);
    } catch (_) {
      return later.difference(earlier);
    }
  }
}
