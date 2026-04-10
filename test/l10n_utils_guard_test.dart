import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('legacy trEn localization helper stays removed from production flow', () {
    final repoRoot = Directory.current;
    final helperFile = File(
      '${repoRoot.path}${Platform.pathSeparator}lib${Platform.pathSeparator}core${Platform.pathSeparator}utils${Platform.pathSeparator}l10n_utils.dart',
    );

    expect(
      helperFile.existsSync(),
      isFalse,
      reason: 'Legacy l10n_utils.dart helper should remain removed.',
    );

    final libDir = Directory(
      '${repoRoot.path}${Platform.pathSeparator}lib',
    );
    final dartFiles = libDir
        .listSync(recursive: true)
        .whereType<File>()
        .where((file) => file.path.endsWith('.dart'));

    for (final file in dartFiles) {
      final content = file.readAsStringSync();
      expect(
        content.contains('trEn('),
        isFalse,
        reason: 'Legacy trEn helper usage still present in ${file.path}',
      );
      expect(
        content.contains('l10n_utils.dart'),
        isFalse,
        reason: 'Legacy l10n_utils.dart import still present in ${file.path}',
      );
    }
  });
}
