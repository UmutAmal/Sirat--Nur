import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import '../tool/generate_quran_audio_storage_seed.dart';
import '../tool/quran_audio_file_validation.dart';
import '../tool/upload_quran_audio_storage.dart';

const int _mpeg1Layer3FrameLength = 417;
const List<int> _mpeg1Layer3FrameHeader = <int>[0xFF, 0xFB, 0x90, 0x64];
const int _validManifestSizeBytes = minimumQuranAudioFileBytes;
const String _validManifestSha256 =
    '0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef';

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
  group('upload_quran_audio_storage tool', () {
    test('CLI refuses retired Supabase Storage network uploads', () {
      final source = File(
        'tool/upload_quran_audio_storage.dart',
      ).readAsStringSync();

      expect(
        source,
        contains('Supabase Storage Quran audio uploads are retired'),
      );
      expect(source, contains('tool/upload_quran_audio_distribution.ps1'));
      expect(source, isNot(contains('HttpClient')));
      expect(source, isNot(contains('postUrl')));
      expect(source, isNot(contains('--supabase-url')));
      expect(source, isNot(contains('--service-role-key-env')));
      expect(source, isNot(contains('--no-upsert')));
    });

    test('rejects non-Quran audio namespaces before validation', () {
      expect(
        () => normalizeQuranAudioBucketName('audio-sukun'),
        throwsA(
          isA<ArgumentError>().having(
            (error) => error.message,
            'message',
            contains('Quran audio uploads must target quran-audio'),
          ),
        ),
      );
    });

    test('derives storage object paths from verified mirror rows', () {
      final file = MirroredAudioFile(
        surahNumber: 1,
        reciterId: 'alafasy',
        sourceUrl: 'https://api.quran.com/api/v4/chapter_recitations/7',
        verifiedAt: DateTime.utc(2026, 4, 8),
        localPath: 'build/verified_quran_audio/alafasy/001.mp3',
        sizeBytes: _validManifestSizeBytes,
        sha256: _validManifestSha256,
      );

      expect(storageObjectPathForMirroredAudioFile(file), 'alafasy/001.mp3');
    });

    test('normalizes Windows manifest paths for storage object paths', () {
      final file = MirroredAudioFile(
        surahNumber: 1,
        reciterId: 'alafasy',
        sourceUrl: 'https://api.quran.com/api/v4/chapter_recitations/7',
        verifiedAt: DateTime.utc(2026, 4, 8),
        localPath: r'build\verified_quran_audio\alafasy\001.mp3',
        sizeBytes: _validManifestSizeBytes,
        sha256: _validManifestSha256,
      );

      expect(storageObjectPathForMirroredAudioFile(file), 'alafasy/001.mp3');
    });

    test('validates local mirrored files before upload or dry-run', () {
      final tempDir = Directory.systemTemp.createTempSync('sirat_upload_plan_');
      addTearDown(() {
        if (tempDir.existsSync()) {
          tempDir.deleteSync(recursive: true);
        }
      });

      final existingFile = File(
        '${tempDir.path}${Platform.pathSeparator}001.mp3',
      )..writeAsBytesSync(_quranMp3FixtureBytes());
      final emptyFile = File('${tempDir.path}${Platform.pathSeparator}003.mp3')
        ..writeAsBytesSync(<int>[]);
      final invalidFile = File(
        '${tempDir.path}${Platform.pathSeparator}005.mp3',
      )..writeAsStringSync('<html>not audio</html>');
      final tinyHeaderFile = File(
        '${tempDir.path}${Platform.pathSeparator}006.mp3',
      )..writeAsBytesSync(<int>[0x49, 0x44, 0x33, 0x04]);
      final checksumMismatchFile = File(
        '${tempDir.path}${Platform.pathSeparator}007.mp3',
      )..writeAsBytesSync(_quranMp3FixtureBytes());
      final sizeMismatchFile = File(
        '${tempDir.path}${Platform.pathSeparator}008.mp3',
      )..writeAsBytesSync(_quranMp3FixtureBytes());
      final missingPath = '${tempDir.path}${Platform.pathSeparator}002.mp3';

      final failures = validateMirroredQuranAudioUploadPlan([
        MirroredAudioFile(
          surahNumber: 1,
          reciterId: 'alafasy',
          sourceUrl: 'https://api.quran.com/api/v4/chapter_recitations/7',
          verifiedAt: DateTime.utc(2026, 4, 8),
          localPath: existingFile.path,
          sizeBytes: existingFile.lengthSync(),
          sha256: sha256HexForFile(existingFile),
        ),
        MirroredAudioFile(
          surahNumber: 2,
          reciterId: 'alafasy',
          sourceUrl: 'https://api.quran.com/api/v4/chapter_recitations/7',
          verifiedAt: DateTime.utc(2026, 4, 8),
          localPath: missingPath,
          sizeBytes: _validManifestSizeBytes,
          sha256: _validManifestSha256,
        ),
        MirroredAudioFile(
          surahNumber: 3,
          reciterId: 'alafasy',
          sourceUrl: 'https://api.quran.com/api/v4/chapter_recitations/7',
          verifiedAt: DateTime.utc(2026, 4, 8),
          localPath: emptyFile.path,
          sizeBytes: _validManifestSizeBytes,
          sha256: _validManifestSha256,
        ),
        MirroredAudioFile(
          surahNumber: 4,
          reciterId: 'alafasy',
          sourceUrl: 'https://api.quran.com/api/v4/chapter_recitations/7',
          verifiedAt: DateTime.utc(2026, 4, 8),
          localPath: existingFile.path,
          sizeBytes: existingFile.lengthSync(),
          sha256: sha256HexForFile(existingFile),
        ),
        MirroredAudioFile(
          surahNumber: 5,
          reciterId: 'alafasy',
          sourceUrl: 'https://api.quran.com/api/v4/chapter_recitations/7',
          verifiedAt: DateTime.utc(2026, 4, 8),
          localPath: invalidFile.path,
          sizeBytes: invalidFile.lengthSync(),
          sha256: sha256HexForFile(invalidFile),
        ),
        MirroredAudioFile(
          surahNumber: 6,
          reciterId: 'alafasy',
          sourceUrl: 'https://api.quran.com/api/v4/chapter_recitations/7',
          verifiedAt: DateTime.utc(2026, 4, 8),
          localPath: tinyHeaderFile.path,
          sizeBytes: tinyHeaderFile.lengthSync(),
          sha256: sha256HexForFile(tinyHeaderFile),
        ),
        MirroredAudioFile(
          surahNumber: 7,
          reciterId: 'alafasy',
          sourceUrl: 'https://api.quran.com/api/v4/chapter_recitations/7',
          verifiedAt: DateTime.utc(2026, 4, 8),
          localPath: checksumMismatchFile.path,
          sizeBytes: checksumMismatchFile.lengthSync(),
          sha256:
              '0000000000000000000000000000000000000000000000000000000000000000',
        ),
        MirroredAudioFile(
          surahNumber: 8,
          reciterId: 'alafasy',
          sourceUrl: 'https://api.quran.com/api/v4/chapter_recitations/7',
          verifiedAt: DateTime.utc(2026, 4, 8),
          localPath: sizeMismatchFile.path,
          sizeBytes: sizeMismatchFile.lengthSync() + 1,
          sha256: sha256HexForFile(sizeMismatchFile),
        ),
      ]);

      expect(failures, contains('alafasy/002.mp3: missing local file'));
      expect(failures, contains('alafasy/003.mp3: empty local file'));
      expect(failures, contains('alafasy/005.mp3: invalid mp3 file'));
      expect(failures, contains('alafasy/006.mp3: invalid mp3 file'));
      expect(failures, contains('alafasy/007.mp3: checksum mismatch'));
      expect(failures, contains('alafasy/008.mp3: size mismatch'));
      expect(
        failures,
        contains('alafasy/001.mp3: duplicate storage object path'),
      );
    });

    test('upload plan rejects unsafe derived object paths before network', () {
      final tempDir = Directory.systemTemp.createTempSync('sirat_upload_path_');
      addTearDown(() {
        if (tempDir.existsSync()) {
          tempDir.deleteSync(recursive: true);
        }
      });
      final existingFile = File(
        '${tempDir.path}${Platform.pathSeparator}001.mp3',
      )..writeAsBytesSync(_quranMp3FixtureBytes());

      final failures = validateMirroredQuranAudioUploadPlan([
        MirroredAudioFile(
          surahNumber: 1,
          reciterId: '..',
          sourceUrl: 'https://api.quran.com/api/v4/chapter_recitations/7',
          verifiedAt: DateTime.utc(2026, 4, 8),
          localPath: existingFile.path,
          sizeBytes: existingFile.lengthSync(),
          sha256: sha256HexForFile(existingFile),
        ),
      ]);

      expect(failures, const ['../001.mp3: unsafe storage object path']);
    });
  });
}
