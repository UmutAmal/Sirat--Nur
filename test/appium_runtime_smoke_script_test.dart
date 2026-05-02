import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Appium runtime smoke script', () {
    late final String script;

    setUpAll(() {
      script = File('tool/appium_runtime_smoke.ps1').readAsStringSync();
    });

    test('keeps first-launch and Android Settings hijack guards', () {
      expect(script, contains('firstContainsWelcome'));
      expect(script, contains('firstContainsAndroidSettings'));
      expect(script, contains('Alarms & reminders'));
      expect(script, contains('Android Settings'));
    });

    test('uses accessibility description selectors for runtime navigation', () {
      expect(script, contains('descriptionContains'));
      expect(
        script,
        contains(r'descriptionContains(`"$Label`").clickable(true)'),
      );
      expect(script, contains('Click-AnyDescriptionOrText'));
      for (final label in [
        'Quran',
        'Qibla',
        'Zikr',
        'Calendar',
        'Settings',
        'Places',
        'Downloads',
        'Analytics',
        'Premium',
      ]) {
        expect(script, contains(label));
      }
    });

    test('fails on legacy offline copy and crash markers', () {
      expect(script, contains('No Internet Connection'));
      expect(script, contains('homeContainsDailyVerseUnavailable'));
      expect(
        script,
        contains(
          'Home showed Daily Verse unavailable instead of verified cloud or cached content.',
        ),
      );
      expect(script, contains("Require-Command -Name 'adb'"));
      expect(script, contains(r'adb -s $DeviceName logcat -c'));
      expect(script, contains(r'adb -s $DeviceName logcat -d -v time'));
      expect(script, contains('adb logcat read failed'));
      expect(script, contains('Logcat could not be captured'));
      expect(script, contains('FATAL EXCEPTION'));
      expect(script, contains('E/flutter'));
      expect(script, contains('Unhandled Exception'));
    });

    test('fails fast when the selected adb device is not ready', () {
      expect(script, contains('Assert-AdbDeviceAvailable'));
      expect(script, contains('adb devices'));
      expect(script, contains(r'[regex]::Escape($DeviceName)'));
      expect(script, contains(r'$requiresLocalAdb'));
      expect(script, contains('is not connected and ready'));
      expect(script, contains('authorize USB debugging'));
      expect(script, contains('Current adb devices'));
    });

    test('starts a local Appium server when runtime smoke needs one', () {
      expect(script, contains(r'[switch]$NoStartAppium'));
      expect(script, contains('Test-AppiumServerReady'));
      expect(script, contains('Test-LocalAppiumEndpoint'));
      expect(script, contains('Start-LocalAppiumServer'));
      expect(script, contains("Get-Command 'appium.cmd'"));
      expect(script, contains('appium-server.out.log'));
      expect(script, contains('appiumServerAutoStarted'));
      expect(
        script,
        contains(
          'Automatic startup is only supported for local Appium endpoints.',
        ),
      );
    });

    test(
      'keeps UiAutomator2 startup timeouts resilient on Windows emulators',
      () {
        expect(
          script,
          contains('"appium:uiautomator2ServerInstallTimeout" = 120000'),
        );
        expect(
          script,
          contains('"appium:uiautomator2ServerLaunchTimeout" = 120000'),
        );
        expect(script, contains('"appium:adbExecTimeout" = 120000'));
      },
    );

    test('prepares the current workspace apk before starting Appium', () {
      expect(script, contains(r'[string]$BuildMode = "debug"'));
      expect(script, contains(r'[switch]$SkipBuildInstall'));
      expect(script, contains(r'$flutterBuildArgs = @('));
      expect(script, contains(r'Get-ReleaseDartDefineArguments'));
      expect(script, contains(r'flutter @flutterBuildArgs'));
      expect(script, contains(r'Install-CurrentWorkspaceApk'));
      expect(script, contains('apkLastWriteTime'));
      expect(script, contains('apkPrepared'));
    });

    test('clears stale release lint cache before Appium release builds', () {
      expect(script, contains('Stop-AndroidGradleDaemons'));
      expect(script, contains('Clear-AppiumReleaseLintCache'));
      expect(script, contains(r"if ($BuildMode -eq 'release')"));
      expect(script, contains(r'.\gradlew.bat --stop'));
      expect(script, contains(r'lint-cache\lintVitalAnalyzeRelease'));
      expect(script, contains(r'$attempt -le 6'));
      expect(script, contains('Start-Sleep -Seconds 2'));
      expect(
        script,
        contains('gradle daemon stop before Appium release build'),
      );
      expect(script, contains('Appium release lint cache is still locked'));
    });

    test('recovers from debug to release signature mismatch installs', () {
      expect(script, contains('INSTALL_FAILED_UPDATE_INCOMPATIBLE'));
      expect(script, contains(r"$installMessage -replace '\s+', ''"));
      expect(script, contains(r'adb -s $DeviceName uninstall $Package'));
      expect(script, contains('apkReinstalledAfterSignatureMismatch'));
      expect(script, contains(r"$ErrorActionPreference = 'Continue'"));
      expect(script, contains(r'adb uninstall incompatible package $Package'));
    });

    test(
      'release smoke builds load store dart-defines without printing values',
      () {
        expect(script, contains('import_release_environment.ps1'));
        expect(script, contains('Initialize-ReleaseEnvironment'));
        expect(script, contains('Loaded release environment file(s):'));
        expect(script, contains('SUPABASE_PUBLISHABLE_KEY'));
        expect(script, contains('SUPABASE_ANON_KEY'));
        expect(script, contains('QURAN_AUDIO_PATH_NAMESPACE'));
        expect(script, contains('PLACES_TILE_URL_TEMPLATE'));
        expect(script, contains('QURAN_AUDIO_CLOUDFLARE_BASE_URL'));
        expect(script, contains('QURAN_AUDIO_GITHUB_URL_TEMPLATE'));
        expect(script, contains('releaseDartDefinesApplied'));
      },
    );

    test('loads localized smoke labels from ARB and pins Appium language', () {
      expect(script, contains(r'[string]$SmokeLocale = "en"'));
      expect(script, contains('Resolve-SmokeLocaleTag'));
      expect(script, contains('Read-ArbMessages'));
      expect(script, contains('Get-SmokeTextBundle'));
      expect(script, contains(r'app_$LocaleTag.arb'));
      expect(script, contains("app_en.arb"));
      expect(script, contains(r'[int]$TimeoutSec = 60'));
      expect(script, contains('-TimeoutSec 120'));
      expect(script, contains(r'"appium:language" = $smokeLanguage'));
      expect(script, contains('"appium:locale"'));
      expect(script, contains(r'smokeLocale = $normalizedSmokeLocale'));
      expect(script, contains(r'$smokeText.quran'));
      expect(script, contains(r'$smokeText.settings'));
      expect(script, contains(r'$smokeText.language'));
      expect(script, contains(r'$smokeText.selectLanguage'));
      expect(script, contains(r'$smokeText.systemDefault'));
      expect(script, contains(r'$smokeText.prayerCalculation'));
      expect(script, contains(r'$smokeText.diagnosticsPrayerSource'));
      expect(script, contains(r'$smokeText.clearCache'));
      expect(script, contains(r'$smokeText.cacheClearedSuccess'));
      expect(script, contains(r'$smokeText.diagnostics'));
      expect(script, contains(r'$smokeText.diagnosticsPrayerProfile'));
      expect(script, contains(r'$smokeText.diagnosticsQuranDataset'));
      expect(script, contains(r'$smokeText.dailyVerse'));
      expect(script, contains(r'$smokeText.offlineQuranAudioPacks'));
      expect(script, contains(r'$smokeText.playSurahAudio'));
      expect(script, contains(r'$smokeText.pauseSurahAudio'));
      expect(script, contains(r'$smokeText.downloadAction'));
      expect(script, contains(r'$smokeText.cancelDownloadAction'));
    });

    test('deep checks settings screen at runtime', () {
      expect(script, contains('settingsRuntime'));
      expect(script, contains('clickedSettings'));
      expect(script, contains('containsSettingsTitle'));
      expect(script, contains('containsPrayerControls'));
      expect(script, contains('containsSettingsDetail'));
      expect(script, contains('clickedPrayerMethod'));
      expect(script, contains('containsPrayerMethodOptions'));
      expect(script, contains('selectedDefaultPrayerMethod'));
      expect(script, contains('prayerMethodPickerClosed'));
      expect(script, contains('clickedMadhab'));
      expect(script, contains('containsMadhabOptions'));
      expect(script, contains('selectedDefaultMadhab'));
      expect(script, contains('madhabPickerClosed'));
      expect(script, contains('clickedLanguage'));
      expect(script, contains('containsLanguagePickerTitle'));
      expect(script, contains('containsLanguageOptions'));
      expect(script, contains('selectedSystemDefaultLanguage'));
      expect(script, contains('languagePickerClosed'));
      expect(script, contains('clickedClearCache'));
      expect(script, contains('containsCacheClearedMessage'));
      expect(script, contains('clickedDiagnostics'));
      expect(script, contains('containsDiagnosticsTitle'));
      expect(script, contains('containsDiagnosticsRows'));
      expect(script, contains('Click-ScrollableDescriptionContains'));
      expect(script, contains('Click-ScrollableTextContains'));
      expect(script, contains('Wait-ClickAnyScrollableText'));
      expect(
        script,
        contains(r'Save-AppiumSource -SessionId $sessionId -Name "settings"'),
      );
      expect(
        script,
        contains(
          r'Save-AppiumSource -SessionId $sessionId -Name "settings-clear-cache"',
        ),
      );
      expect(
        script,
        contains(
          r'Save-AppiumSource -SessionId $sessionId -Name "settings-language-picker"',
        ),
      );
      expect(
        script,
        contains(
          r'Save-AppiumSource -SessionId $sessionId -Name "settings-prayer-method-picker"',
        ),
      );
      expect(
        script,
        contains(
          r'Save-AppiumSource -SessionId $sessionId -Name "settings-madhab-picker"',
        ),
      );
      expect(
        script,
        contains(
          r'Save-AppiumSource -SessionId $sessionId -Name "settings-language-after-select"',
        ),
      );
      expect(
        script,
        contains(
          r'Save-AppiumSource -SessionId $sessionId -Name "settings-diagnostics"',
        ),
      );
      expect(
        script,
        contains(
          'Settings runtime smoke could not click the localized settings action.',
        ),
      );
      expect(
        script,
        contains(
          'Settings runtime smoke did not render localized prayer calculation controls.',
        ),
      );
      expect(
        script,
        contains(
          'Settings runtime smoke did not render expected prayer method options.',
        ),
      );
      expect(
        script,
        contains(
          'Settings runtime smoke did not close the prayer method picker after selecting Diyanet.',
        ),
      );
      expect(
        script,
        contains(
          'Settings runtime smoke did not render expected madhab options.',
        ),
      );
      expect(
        script,
        contains(
          'Settings runtime smoke did not close the madhab picker after selecting Hanafi.',
        ),
      );
      expect(
        script,
        contains(
          'Settings runtime smoke could not click the localized language action.',
        ),
      );
      expect(
        script,
        contains(
          'Settings runtime smoke did not render expected language picker options.',
        ),
      );
      expect(
        script,
        contains(
          'Settings runtime smoke did not close the language picker after selecting system default.',
        ),
      );
      expect(
        script,
        contains(
          'Settings runtime smoke could not click the localized clear cache action.',
        ),
      );
      expect(
        script,
        contains(
          'Settings runtime smoke did not show the localized cache cleared completion message.',
        ),
      );
      expect(
        script,
        contains(
          'Settings runtime smoke could not click the localized diagnostics action.',
        ),
      );
      expect(
        script,
        contains(
          'Settings runtime smoke did not render expected diagnostics rows.',
        ),
      );
      expect(
        script,
        contains('Settings runtime smoke opened Android Settings.'),
      );
    });

    test('deep checks Quran surah audio playback at runtime', () {
      expect(script, contains('quranPlayback'));
      expect(script, contains('logcatPlaybackFailure'));
      expect(script, contains('Al-Fatihah'));
      expect(script, contains('Play surah audio'));
      expect(script, contains('Pause surah audio'));
      expect(script, contains('quranAudioPlaybackErrorWithConnectionHint'));
      expect(
        script,
        contains('Audio playback failed for all verified sources'),
      );
      expect(
        script,
        contains('Logcat contains Quran audio playback failure marker.'),
      );
      expect(
        script,
        contains(
          'Quran playback smoke did not expose the pause control after starting audio.',
        ),
      );
    });

    test('deep checks cancellable offline download runtime flow', () {
      expect(script, contains('downloadRuntime'));
      expect(script, contains('clickedDownloadControl'));
      expect(script, contains('downloads-active'));
      expect(script, contains('downloads-after-cancel'));
      expect(script, contains('cancelDownloadAction'));
      expect(script, contains('Download runtime smoke could not click'));
      expect(script, contains('Download runtime smoke could not start'));
      expect(
        script,
        contains(
          'Download runtime smoke did not show active download progress or cancel affordance.',
        ),
      );
      expect(
        script,
        contains(
          'Download runtime smoke could not click the localized cancel download control.',
        ),
      );
      expect(
        script,
        contains(
          'Download runtime smoke did not show the cancelling or canceled state after cancel was requested.',
        ),
      );
    });

    test('writes reproducible summary and XML artifacts under build', () {
      expect(script, contains('appium-runtime-smoke-summary.json'));
      expect(script, contains('appium-runtime-smoke-'));
      expect(script, contains('appium-runtime-smoke-logcat.txt'));
    });
  });
}
