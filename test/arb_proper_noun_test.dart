import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ARB proper nouns', () {
    test('hadith source keys keep canonical names across all locales', () {
      const expected = {
        'duaSourceBukhari': 'Bukhari',
        'duaSourceMuslim': 'Muslim',
        'duaSourceAbuDawud': 'Abu Dawud',
        'duaSourceTirmidhi': 'Tirmidhi',
        'duaSourceAhmad': 'Ahmad',
      };

      final files = Directory('lib/l10n')
          .listSync()
          .whereType<File>()
          .where((file) => file.path.endsWith('.arb'))
          .where((file) => file.uri.pathSegments.last.startsWith('app_'))
          .toList()
        ..sort((a, b) => a.path.compareTo(b.path));

      for (final file in files) {
        final data = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
        for (final entry in expected.entries) {
          expect(
            data[entry.key],
            entry.value,
            reason: '${file.path} has a drifting proper noun for ${entry.key}',
          );
        }
      }
    });
  });
}
