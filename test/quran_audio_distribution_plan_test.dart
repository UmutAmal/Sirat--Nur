import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

import '../tool/generate_quran_audio_storage_seed.dart';
import '../tool/quran_audio_distribution_plan.dart';
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

MirroredAudioFile _mirroredFile({
  required Directory root,
  required String reciterId,
  required int surahNumber,
}) {
  final reciterDir = Directory(
    '${root.path}${Platform.pathSeparator}$reciterId',
  )..createSync(recursive: true);
  final file = File(
    '${reciterDir.path}${Platform.pathSeparator}${surahNumber.toString().padLeft(3, '0')}.mp3',
  )..writeAsBytesSync(_quranMp3FixtureBytes());

  return MirroredAudioFile(
    surahNumber: surahNumber,
    reciterId: reciterId,
    sourceUrl: 'https://api.quran.com/api/v4/chapter_recitations/7',
    verifiedAt: DateTime.utc(2026, 4, 8),
    localPath: file.path,
    sizeBytes: file.lengthSync(),
    sha256: sha256HexForFile(file),
  );
}

void main() {
  group('quran audio distribution plan', () {
    late Directory tempDir;

    setUp(() {
      tempDir = Directory.systemTemp.createTempSync('sirat_distribution_plan_');
    });

    tearDown(() {
      if (tempDir.existsSync()) {
        tempDir.deleteSync(recursive: true);
      }
    });

    test('routes murattal to GitHub and all other reciters to Cloudflare', () {
      final cloudflareFile = _mirroredFile(
        root: tempDir,
        reciterId: 'alafasy',
        surahNumber: 1,
      );
      final githubFile = _mirroredFile(
        root: tempDir,
        reciterId: githubOverflowReciterId,
        surahNumber: 1,
      );

      final plan = buildQuranAudioDistributionPlan([
        cloudflareFile,
        githubFile,
      ]);

      expect(plan.validationFailures, isEmpty);
      expect(plan.cloudflare.files, 1);
      expect(plan.github.files, 1);
      expect(plan.cloudflare.objects.single.objectPath, 'alafasy/001.mp3');
      expect(
        plan.github.objects.single.assetName,
        'abdul_basit_murattal_001.mp3',
      );
      expect(plan.toJson()['github_overflow_reciter'], githubOverflowReciterId);
    });

    test(
      'rejects Cloudflare partitions that exceed the configured byte cap',
      () {
        final cloudflareFile = _mirroredFile(
          root: tempDir,
          reciterId: 'sudais',
          surahNumber: 1,
        );

        final failures = validateQuranAudioDistributionPlan([
          cloudflareFile,
        ], cloudflareByteLimit: cloudflareFile.sizeBytes);

        expect(
          failures,
          contains(contains('Cloudflare R2 partition exceeds byte limit')),
        );
      },
    );

    test('keeps GitHub asset names unique across surahs', () {
      final first = _mirroredFile(
        root: tempDir,
        reciterId: githubOverflowReciterId,
        surahNumber: 1,
      );
      final second = _mirroredFile(
        root: tempDir,
        reciterId: githubOverflowReciterId,
        surahNumber: 2,
      );

      expect(
        githubReleaseAssetNameForMirroredAudioFile(first),
        'abdul_basit_murattal_001.mp3',
      );
      expect(
        githubReleaseAssetNameForMirroredAudioFile(second),
        'abdul_basit_murattal_002.mp3',
      );
    });
  });
}
