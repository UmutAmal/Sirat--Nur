import 'package:timezone/timezone.dart' as tz;

class TimezoneUtils {
  static tz.Location resolveLocation(String? timezoneName) {
    if (timezoneName == null || timezoneName.trim().isEmpty) {
      return tz.local;
    }
    try {
      return tz.getLocation(timezoneName);
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

  static Duration timezoneDeltaForDate(DateTime targetDate, String? timezoneName) {
    if (timezoneName == null || timezoneName.trim().isEmpty) {
      return Duration.zero;
    }
    try {
      final location = tz.getLocation(timezoneName);
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
      final deltaMinutes = targetTz.timeZoneOffset.inMinutes - localTz.timeZoneOffset.inMinutes;

      return Duration(minutes: deltaMinutes);
    } catch (_) {
      return Duration.zero;
    }
  }
}
