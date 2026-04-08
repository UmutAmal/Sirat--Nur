import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

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
}
