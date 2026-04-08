import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/services/audio_sovereignty_service.dart';
import 'package:sirat_i_nur/features/settings/diagnostics_page.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';

class _NoopAudioEngine implements SovereignAudioEngine {
  @override
  void dispose() {}

  @override
  Future<bool> playAsset(String assetPath) async => false;

  @override
  Future<bool> playUrl(String url) async => false;

  @override
  Future<void> setVolume(double volume) async {}

  @override
  Future<void> stop() async {}
}

void main() {
  test('resolveDiagnosticsVersion includes build number when available', () {
    expect(
      resolveDiagnosticsVersion(buildName: '2.0.0', buildNumber: '1'),
      '2.0.0+1',
    );
  });

  test('resolveDiagnosticsVersion omits empty build number', () {
    expect(
      resolveDiagnosticsVersion(buildName: '2.0.0', buildNumber: ''),
      '2.0.0',
    );
  });

  test('DiagnosticsRowsDependencies changes when locale changes', () {
    final settings = SettingsState(
      isDarkMode: true,
      languageCode: 'en',
      locationName: 'Istanbul',
    );

    final english = DiagnosticsRowsDependencies.fromState(
      settings,
      const Locale('en'),
    );
    final turkish = DiagnosticsRowsDependencies.fromState(
      settings,
      const Locale('tr'),
    );

    expect(english, isNot(turkish));
  });

  test(
    'DiagnosticsRowsDependencies changes when displayed settings change',
    () {
      final base = DiagnosticsRowsDependencies.fromState(
        SettingsState(
          isDarkMode: true,
          languageCode: 'en',
          locationName: 'Istanbul',
        ),
        const Locale('en'),
      );

      expect(
        base,
        isNot(
          DiagnosticsRowsDependencies.fromState(
            SettingsState(
              isDarkMode: false,
              languageCode: 'en',
              locationName: 'Istanbul',
            ),
            const Locale('en'),
          ),
        ),
      );
      expect(
        base,
        isNot(
          DiagnosticsRowsDependencies.fromState(
            SettingsState(
              isDarkMode: true,
              languageCode: 'tr',
              locationName: 'Istanbul',
            ),
            const Locale('en'),
          ),
        ),
      );
      expect(
        base,
        isNot(
          DiagnosticsRowsDependencies.fromState(
            SettingsState(
              isDarkMode: true,
              languageCode: 'en',
              locationName: 'Ankara',
            ),
            const Locale('en'),
          ),
        ),
      );
    },
  );

  test(
    'buildAudioDiagnosticsSnapshot measures required audio coverage honestly',
    () {
      final snapshot = buildAudioDiagnosticsSnapshot(
        manifestAssets: const [
          'assets/audio/adhan/adhan_makkah.wav',
          'assets/audio/adhan/adhan_madinah.wav',
          'assets/audio/adhan/adhan_fajr.wav',
          'assets/audio/ui/tasbih_click.wav',
          'assets/audio/ui/tasbih_complete.wav',
          'assets/audio/ui/notification.wav',
          'assets/audio/ui/prayer_reminder.wav',
          'assets/audio/ui/page_flip.wav',
          'assets/audio/ui/success.wav',
          'assets/audio/quran/mishary_rashid_alafasy_001.mp3',
          'assets/audio/ui/rain.wav',
          'assets/audio/ui/forest.wav',
        ],
        audioService: AudioSovereigntyService(
          engine: _NoopAudioEngine(),
          sukunAssets: const {
            'rain': 'assets/audio/ui/rain.wav',
            'forest': 'assets/audio/ui/forest.wav',
            'night': 'assets/audio/ui/night.wav',
            'ocean': 'assets/audio/ui/ocean.wav',
          },
        ),
      );

      expect(snapshot.adhanAssetsPresent, 3);
      expect(snapshot.uiAssetsPresent, 6);
      expect(snapshot.quranAssetsPresent, 1);
      expect(snapshot.sukunAssetsReady, 2);
    },
  );
}
