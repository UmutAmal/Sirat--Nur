import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('legacy quran constant metadata file stays removed from production flow', () {
    final legacyFile = File('lib/core/constants/quran_data.dart');

    expect(legacyFile.existsSync(), isFalse);

    final dartFiles = Directory('lib')
        .listSync(recursive: true)
        .whereType<File>()
        .where((file) => file.path.endsWith('.dart'));

    for (final file in dartFiles) {
      final content = file.readAsStringSync();
      expect(
        content.contains('core/constants/quran_data.dart'),
        isFalse,
        reason: 'Legacy Quran metadata import still present in ${file.path}',
      );
    }
  });
}
