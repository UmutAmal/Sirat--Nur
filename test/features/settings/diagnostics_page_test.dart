import 'dart:io';
import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/network/supabase_config.dart';
import 'package:sirat_i_nur/core/services/hadith_api_service.dart';
import 'package:sirat_i_nur/core/services/audio_sovereignty_service.dart';
import 'package:sirat_i_nur/core/services/prayer_profile_service.dart';
import 'package:sirat_i_nur/features/settings/diagnostics_page.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

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
      expect(
        base,
        isNot(
          DiagnosticsRowsDependencies.fromState(
            SettingsState(
              isDarkMode: true,
              languageCode: 'en',
              locationName: 'Istanbul',
              calculationMethod: mwlPrayerMethod,
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
              locationName: 'Istanbul',
              madhab: shafiiMadhab,
            ),
            const Locale('en'),
          ),
        ),
      );
    },
  );

  test(
    'resolvePrayerProfileValue renders official profile and madhab label',
    () {
      final profile = profileForMethod(
        diyanetPrayerMethod,
        madhab: hanafiMadhab,
      );

      expect(resolvePrayerProfileValue(profile), 'Diyanet / Hanafi');
      expect(
        resolvePrayerSourceValue(profile),
        'Diyanet Isleri Baskanligi (https://namazvakitleri.diyanet.gov.tr)',
      );
      expect(isOfficialPrayerProfile(profile), isTrue);
    },
  );

  test('resolvePrayerProfileValue reflects selected madhab overrides', () {
    final profile = profileForMethod(diyanetPrayerMethod, madhab: shafiiMadhab);

    expect(resolvePrayerProfileValue(profile), "Diyanet / Shafi'i");
    expect(profile.sourceUrl, 'https://namazvakitleri.diyanet.gov.tr');
    expect(isOfficialPrayerProfile(profile), isTrue);
  });

  test('resolvePrayerProfileValue flags custom profiles honestly', () {
    final profile = profileForMethod(customPrayerMethod, madhab: jafariMadhab);

    expect(
      resolvePrayerProfileValue(profile, customProfileValue: "Ozel / Ja'fari"),
      "Ozel / Ja'fari",
    );
    expect(
      resolvePrayerSourceValue(
        profile,
        customSourceValue: 'Kurumsal kaynak yok',
      ),
      'Kurumsal kaynak yok',
    );
    expect(isOfficialPrayerProfile(profile), isFalse);
  });

  test('buildDiagnosticsErrorText is localized and hides raw exceptions', () {
    final en = lookupAppLocalizations(const Locale('en'));
    final tr = lookupAppLocalizations(const Locale('tr'));

    expect(
      buildDiagnosticsErrorText(en),
      'Error\nPlease check your connection',
    );
    expect(
      buildDiagnosticsErrorText(tr),
      'Hata\nLütfen bağlantınızı kontrol edin',
    );
    expect(
      buildDiagnosticsErrorText(en),
      isNot(contains('PostgrestException')),
    );
    expect(buildDiagnosticsErrorText(tr), isNot(contains('schema cache')));
  });

  test('resolveHadithDiagnosticsValue reports availability honestly', () {
    final en = lookupAppLocalizations(const Locale('en'));

    expect(
      resolveHadithDiagnosticsValue(en, isAvailable: false),
      en.hadithSourcePending,
    );
    expect(
      resolveHadithDiagnosticsValue(en, isAvailable: true),
      en.diagnosticsSupportedCount(
        '${supportedHadithCollectionIds.length}/${supportedHadithCollectionIds.length}',
      ),
    );
  });

  test('asset manifest diagnostics log hides raw exceptions', () {
    final source = File(
      'lib/features/settings/diagnostics_page.dart',
    ).readAsStringSync();

    expect(source, isNot(contains('Diagnostics asset manifest read failed:')));
    expect(source, isNot(contains('Error.safeToString(error)')));
    expect(source, contains('Diagnostics asset manifest read failed'));
  });

  test('diagnostics reports verified hadith dataset availability', () {
    final source = File(
      'lib/features/settings/diagnostics_page.dart',
    ).readAsStringSync();

    expect(
      source,
      contains('verifiedHadithDatasetAvailabilityProvider.future'),
    );
    expect(source, contains('resolveHadithDiagnosticsValue'));
    expect(source, contains('l10n.hadithCollections'));
  });

  test('Quran diagnostics queries require provenance columns', () {
    final source = File(
      'lib/features/settings/diagnostics_page.dart',
    ).readAsStringSync();

    expect(source, contains(".from('quran_surahs')"));
    expect(source, contains(".from('quran_ayahs')"));
    expect(source, contains(".not('source', 'is', null)"));
    expect(source, contains(".not('source', 'eq', '')"));
    expect(source, contains(".not('verified_at', 'is', null)"));
    expect(source, contains('verifiedSurahCount: verifiedSurahCount'));
    expect(source, contains('verifiedAyahCount: verifiedAyahCount'));
  });

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
      expect(snapshot.quranCloudSourcesPresent, 0);
      expect(snapshot.quranCloudRecitersReady, 0);
      expect(snapshot.sukunAssetsReady, 2);
    },
  );

  test('buildAudioDiagnosticsSnapshot counts cloud sukun sources as ready', () {
    final snapshot = buildAudioDiagnosticsSnapshot(
      manifestAssets: const [
        'assets/audio/adhan/adhan_makkah.wav',
        'assets/audio/adhan/adhan_madinah.wav',
        'assets/audio/adhan/adhan_fajr.wav',
      ],
      audioService: AudioSovereigntyService(engine: _NoopAudioEngine()),
      cloudSukunSources: const {
        'rain':
            '${SupabaseConfig.url}/storage/v1/object/public/audio-sukun/rain.mp3',
        'forest':
            '${SupabaseConfig.url}/storage/v1/object/public/audio-sukun/forest.mp3',
      },
    );

    expect(snapshot.adhanAssetsPresent, 3);
    expect(snapshot.sukunAssetsReady, 2);
  });

  test('buildAudioDiagnosticsSnapshot counts cloud quran catalog honestly', () {
    final snapshot = buildAudioDiagnosticsSnapshot(
      manifestAssets: const [],
      audioService: AudioSovereigntyService(engine: _NoopAudioEngine()),
      cloudQuranCatalog: {
        'alafasy': {
          for (var surahNumber = 1; surahNumber <= 114; surahNumber++)
            surahNumber: 'https://cdn.example.com/alafasy/$surahNumber.mp3',
        },
        'husary': {
          1: 'https://cdn.example.com/husary/1.mp3',
          2: 'https://cdn.example.com/husary/2.mp3',
        },
      },
    );

    expect(snapshot.quranCloudSourcesPresent, 116);
    expect(snapshot.quranCloudRecitersReady, 1);
  });
}
