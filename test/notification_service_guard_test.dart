import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/services/adhan_scheduler_service.dart';

void main() {
  test(
    'legacy notification service stays removed from the production bootstrap',
    () {
      final legacyFile = File('lib/core/services/notification_service.dart');

      expect(legacyFile.existsSync(), isFalse);

      final dartFiles = Directory('lib')
          .listSync(recursive: true)
          .whereType<File>()
          .where((file) => file.path.endsWith('.dart'));

      for (final file in dartFiles) {
        final content = file.readAsStringSync();
        expect(
          content.contains('core/services/notification_service.dart'),
          isFalse,
          reason:
              'Legacy notification service import still present in ${file.path}',
        );
        expect(
          content.contains('NotificationService('),
          isFalse,
          reason:
              'Legacy notification service bootstrap still present in ${file.path}',
        );
      }
    },
  );

  test('adhan scheduler cancels only adhan notification ids', () {
    final source = File(
      'lib/core/services/adhan_scheduler_service.dart',
    ).readAsStringSync();

    expect(source, isNot(contains('cancelAll(')));
    expect(source, contains('_cancelScheduledAdhans'));
    expect(source, contains('adhanNotificationId(dayIndex, prayerIndex)'));
    expect(AdhanSchedulerService.adhanNotificationId(0, 0), 0);
    expect(AdhanSchedulerService.adhanNotificationId(0, 4), 4);
    expect(AdhanSchedulerService.adhanNotificationId(1, 0), 10);
    expect(AdhanSchedulerService.adhanNotificationId(29, 4), 294);
  });
}
