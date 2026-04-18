import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'legacy quran constant metadata file stays removed from production flow',
    () {
      final legacyFile = File('lib/core/constants/quran_data.dart');

      expect(legacyFile.existsSync(), isFalse);

      final dartFiles = Directory('lib')
          .listSync(recursive: true)
          .whereType<File>()
          .where((file) => file.path.endsWith('.dart'));

      for (final file in dartFiles) {
        final content = file.readAsStringSync();
        expect(
          content.contains('core/constants/quran_data.dart'),
          isFalse,
          reason: 'Legacy Quran metadata import still present in ${file.path}',
        );
      }
    },
  );

  test('legacy bundled Quran audio asset flow stays removed', () {
    final pubspec = File('pubspec.yaml').readAsStringSync();
    final audioService = File(
      'lib/core/services/audio_player_service.dart',
    ).readAsStringSync();
    final bundledQuranAudioDir = Directory('assets/audio/quran');
    final bundledMp3Files = bundledQuranAudioDir.existsSync()
        ? bundledQuranAudioDir
              .listSync(recursive: true)
              .whereType<File>()
              .where((file) => file.path.toLowerCase().endsWith('.mp3'))
              .toList()
        : const <File>[];

    expect(pubspec, isNot(contains('assets/audio/quran/')));
    expect(audioService, isNot(contains('playQuranSurah')));
    expect(audioService, isNot(contains('getQuranLocalPath')));
    expect(audioService, isNot(contains('assets/audio/quran')));
    expect(
      bundledMp3Files,
      isEmpty,
      reason:
          'Runtime Quran audio must come from downloaded files or first-party distribution rows, not bundled assets.',
    );
  });
}
