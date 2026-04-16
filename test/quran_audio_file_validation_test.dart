import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import '../tool/quran_audio_file_validation.dart';

void main() {
  group('quran audio file validation', () {
    test('accepts ID3 and MPEG frame-sync MP3 signatures', () {
      expect(hasMp3AudioSignature(const [0x49, 0x44, 0x33, 0x04]), isTrue);
      expect(hasMp3AudioSignature(const [0xFF, 0xFB, 0x90, 0x64]), isTrue);
      expect(hasMp3AudioSignature(const [0x00, 0xFF, 0xF3, 0x40]), isTrue);
    });

    test('rejects empty files and non-audio payloads', () {
      final tempDir = Directory.systemTemp.createTempSync('sir_audio_header_');
      addTearDown(() {
        if (tempDir.existsSync()) {
          tempDir.deleteSync(recursive: true);
        }
      });

      final emptyFile = File(
        '${tempDir.path}${Platform.pathSeparator}empty.mp3',
      )..writeAsBytesSync(const []);
      final htmlFile = File('${tempDir.path}${Platform.pathSeparator}error.mp3')
        ..writeAsStringSync('<html>not audio</html>');

      expect(hasMp3AudioSignature(const []), isFalse);
      expect(hasLikelyMp3Header(emptyFile), isFalse);
      expect(hasLikelyMp3Header(htmlFile), isFalse);
    });
  });
}
