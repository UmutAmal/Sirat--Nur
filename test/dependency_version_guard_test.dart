import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('share_plus stays on the supported 12.x line for this toolchain', () {
    final pubspec = File('pubspec.yaml').readAsStringSync();
    final match = RegExp(
      r'^\s*share_plus:\s*([^\s#]+)',
      multiLine: true,
    ).firstMatch(pubspec);

    expect(match, isNotNull);
    expect(
      match!.group(1),
      '^12.0.1',
      reason:
          'share_plus 13.0.0 requires Flutter >=3.41.6, while this repo is '
          'currently validated on Flutter 3.41.4. Upgrade the toolchain before '
          'opening the share_plus 13.x constraint.',
    );
  });
}
