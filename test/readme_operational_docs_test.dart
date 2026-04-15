import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('README operational documentation', () {
    final readme = File('README.md').readAsStringSync();

    test('documents the Quran audio storage import order', () {
      final downloadIndex = readme.indexOf(
        'dart run tool/download_verified_quran_audio.dart',
      );
      final uploadIndex = readme.indexOf(
        'dart run tool/upload_quran_audio_storage.dart',
      );
      final seedIndex = readme.indexOf(
        'dart run tool/generate_quran_audio_storage_seed.dart',
      );

      expect(downloadIndex, isNot(-1));
      expect(uploadIndex, greaterThan(downloadIndex));
      expect(seedIndex, greaterThan(uploadIndex));
      expect(
        readme,
        contains(
          'Do not apply `content_seed_quran_audio_storage.sql` before the matching MP3 files are uploaded',
        ),
      );
    });

    test('does not document stale persistence dependencies', () {
      expect(readme, isNot(contains('flutter_secure_storage')));
    });
  });
}
