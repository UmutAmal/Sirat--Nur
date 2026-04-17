import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('repository hygiene', () {
    test('does not keep stale root patch artifacts', () {
      final rootPatchFiles = Directory.current
          .listSync()
          .whereType<File>()
          .map((file) => file.path.split(Platform.pathSeparator).last)
          .where((name) => name.endsWith('.patch'))
          .toList();

      expect(rootPatchFiles, isEmpty);
    });
  });
}
