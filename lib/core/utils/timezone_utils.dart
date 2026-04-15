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
    if (timezoneName == null || timezoneName.trim().isEmpty) {
      return later.difference(earlier);
    }

    try {
      final location = tz.getLocation(timezoneName);
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
