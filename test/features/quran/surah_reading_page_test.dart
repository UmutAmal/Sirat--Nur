import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:path/path.dart' as p;
import 'package:sirat_i_nur/core/services/quran_audio_file_validation.dart';
import 'package:sirat_i_nur/features/quran/surah_display_info.dart';
import 'package:sirat_i_nur/features/quran/surah_reading_page.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

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
  TestWidgetsFlutterBinding.ensureInitialized();

  group('SurahReadingPage share helpers', () {
    const surahInfo = SurahDisplayInfo(
      number: 1,
      nameArabic: 'الفاتحة',
      transliteration: 'Al-Fatihah',
      translatedName: 'The Opening',
      ayahCount: 7,
      revelationType: 'Meccan',
    );

    test('builds ayah share headers through localization', () {
      final en = lookupAppLocalizations(const Locale('en'));
      final tr = lookupAppLocalizations(const Locale('tr'));
      final fr = lookupAppLocalizations(const Locale('fr'));

      expect(buildAyahShareHeader(en, surahInfo, '3'), 'Al-Fatihah - Ayah 3');
      expect(buildAyahShareHeader(tr, surahInfo, '3'), 'Al-Fatihah - 3. Ayet');
      expect(buildAyahShareHeader(fr, surahInfo, '3'), 'Al-Fatihah - Verset 3');
    });

    test('does not duplicate standalone bismillah for Fatihah or Tawbah', () {
      expect(shouldShowStandaloneBismillah(1), isFalse);
      expect(shouldShowStandaloneBismillah(9), isFalse);
      expect(shouldShowStandaloneBismillah(2), isTrue);
    });

    test('builds audio playback error as one localized sentence', () {
      final en = lookupAppLocalizations(const Locale('en'));
      final tr = lookupAppLocalizations(const Locale('tr'));

      expect(
        resolveQuranAudioPlaybackErrorMessage(en),
        'Audio playback failed. Please check your connection.',
      );
      expect(
        resolveQuranAudioPlaybackErrorMessage(tr),
        'Ses çalınamadı. Lütfen bağlantınızı kontrol edin.',
      );
    });
  });

  group('SurahReadingPage local audio helpers', () {
    test('returns only verified local Quran audio paths', () async {
      final tempDir = await Directory.systemTemp.createTemp(
        'sir_surah_reader_audio_',
      );
      addTearDown(() => tempDir.delete(recursive: true));

      const channel = MethodChannel('plugins.flutter.io/path_provider');
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async => tempDir.path);
      addTearDown(
        () => TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
            .setMockMethodCallHandler(channel, null),
      );

      final audioDir = Directory(p.join(tempDir.path, 'quran_audio'));
      await audioDir.create(recursive: true);
      final validSurah = File(p.join(audioDir.path, 'alafasy_001.mp3'));
      final corruptSurah = File(p.join(audioDir.path, 'alafasy_002.mp3'));
      await validSurah.writeAsBytes(_quranMp3FixtureBytes());
      await corruptSurah.writeAsString('<html>not audio</html>');

      final verifiedPath = await resolveVerifiedLocalQuranAudioPath(
        surahNumber: 1,
        reciterId: 'alafasy',
      );
      expect(p.normalize(verifiedPath!), p.normalize(validSurah.path));
      expect(
        await resolveVerifiedLocalQuranAudioPath(
          surahNumber: 2,
          reciterId: 'alafasy',
        ),
        isNull,
      );
      expect(await corruptSurah.exists(), isFalse);
    });
  });
}
