import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ARB coverage', () {
    final template = _readArb('lib/l10n/app_en.arb');
    final requiredKeys = template.keys
        .where((key) => !key.startsWith('@@') && !key.startsWith('@'))
        .toList();

    test('all arb files contain every template message key', () {
      final arbFiles = Directory('lib/l10n')
          .listSync()
          .whereType<File>()
          .where((file) => file.path.endsWith('.arb'))
          .where((file) => file.uri.pathSegments.last.startsWith('app_'));

      for (final file in arbFiles) {
        final arb = _readArb(file.path);
        final missing = requiredKeys
            .where((key) => !arb.containsKey(key))
            .toList(growable: false);

        expect(
          missing,
          isEmpty,
          reason: '${file.path} is missing message keys: $missing',
        );
      }
    });

    test(
      'all arb files contain placeholder metadata for templated messages',
      () {
        final metadataKeys = template.keys
            .where((key) => key.startsWith('@') && key != '@@locale')
            .toList();

        final arbFiles = Directory('lib/l10n')
            .listSync()
            .whereType<File>()
            .where((file) => file.path.endsWith('.arb'))
            .where((file) => file.uri.pathSegments.last.startsWith('app_'));

        for (final file in arbFiles) {
          final arb = _readArb(file.path);
          final missing = metadataKeys
              .where((key) => !arb.containsKey(key))
              .toList(growable: false);

          expect(
            missing,
            isEmpty,
            reason: '${file.path} is missing metadata keys: $missing',
          );
        }
      },
    );
  });
}

Map<String, dynamic> _readArb(String path) {
  return jsonDecode(File(path).readAsStringSync()) as Map<String, dynamic>;
}
