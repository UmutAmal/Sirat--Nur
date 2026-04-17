import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import '../tool/quran_audio_file_validation.dart';

const int _mpeg1Layer3FrameLength = 417;
const List<int> _mpeg1Layer3FrameHeader = <int>[0xFF, 0xFB, 0x90, 0x64];

List<int> _quranMp3FixtureBytes() {
  final bytes = List<int>.filled(minimumQuranAudioFileBytes, 0);
  bytes.setRange(0, _mpeg1Layer3FrameHeader.length, _mpeg1Layer3FrameHeader);
  bytes.setRange(
    _mpeg1Layer3FrameLength,
    _mpeg1Layer3FrameLength + _mpeg1Layer3FrameHeader.length,
    _mpeg1Layer3FrameHeader,
  );
  return bytes;
}

void main() {
  group('quran audio file validation', () {
    test('accepts ID3 and MPEG frame-sync MP3 signatures', () {
      expect(hasMp3AudioSignature(const [0x49, 0x44, 0x33, 0x04]), isTrue);
      expect(hasMp3AudioSignature(const [0xFF, 0xFB, 0x90, 0x64]), isTrue);
      expect(hasMp3AudioSignature(const [0x00, 0xFF, 0xF3, 0x40]), isTrue);
    });

    test('rejects empty, tiny, and non-audio payloads', () {
      final tempDir = Directory.systemTemp.createTempSync('sir_audio_header_');
      addTearDown(() {
        if (tempDir.existsSync()) {
          tempDir.deleteSync(recursive: true);
        }
      });

      final emptyFile = File(
        '${tempDir.path}${Platform.pathSeparator}empty.mp3',
      )..writeAsBytesSync(const []);
      final tinyHeaderFile = File(
        '${tempDir.path}${Platform.pathSeparator}tiny.mp3',
      )..writeAsBytesSync(const [0x49, 0x44, 0x33, 0x04]);
      final htmlFile = File('${tempDir.path}${Platform.pathSeparator}error.mp3')
        ..writeAsStringSync('<html>not audio</html>');

      expect(hasMp3AudioSignature(const []), isFalse);
      expect(hasLikelyMp3Header(emptyFile), isFalse);
      expect(hasLikelyMp3Header(tinyHeaderFile), isFalse);
      expect(hasLikelyMp3Header(htmlFile), isFalse);
    });

    test('accepts files with a plausible MP3 frame sequence', () {
      final tempDir = Directory.systemTemp.createTempSync('sir_audio_frames_');
      addTearDown(() {
        if (tempDir.existsSync()) {
          tempDir.deleteSync(recursive: true);
        }
      });

      final audioFile = File('${tempDir.path}${Platform.pathSeparator}001.mp3')
        ..writeAsBytesSync(_quranMp3FixtureBytes());

      expect(hasLikelyMp3Header(audioFile), isTrue);
    });
  });
}
