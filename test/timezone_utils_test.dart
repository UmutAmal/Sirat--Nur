import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/utils/timezone_utils.dart';
import 'package:timezone/data/latest.dart' as tzdata;
import 'package:timezone/timezone.dart' as tz;

void main() {
  tzdata.initializeTimeZones();
  tz.setLocalLocation(tz.getLocation('Etc/UTC'));

  test(
    'timezoneDeltaForDate reflects DST changes within the same target day',
    () {
      const timezone = 'Europe/Berlin';
      final beforeShift = DateTime(2026, 3, 29, 0, 30);
      final afterShift = DateTime(2026, 3, 29, 5, 0);

      expect(
        TimezoneUtils.timezoneDeltaForDate(beforeShift, timezone),
        isNot(TimezoneUtils.timezoneDeltaForDate(afterShift, timezone)),
      );
    },
  );

  test('differenceInTimezone uses real elapsed time across DST jumps', () {
    const timezone = 'Europe/Berlin';
    final beforeSpringForward = DateTime(2026, 3, 29, 1, 30);
    final afterSpringForward = DateTime(2026, 3, 29, 3, 30);

    expect(
      afterSpringForward.difference(beforeSpringForward),
      const Duration(hours: 2),
    );
    expect(
      TimezoneUtils.differenceInTimezone(
        afterSpringForward,
        beforeSpringForward,
        timezone,
      ),
      const Duration(hours: 1),
    );
  });
}
