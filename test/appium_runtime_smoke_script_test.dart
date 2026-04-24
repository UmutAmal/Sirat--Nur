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
      expect(script, contains('Click-AnyDescriptionOrText'));
      for (final label in [
        'Quran',
        'Qibla',
        'Zikr',
        'Calendar',
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
      expect(script, contains("Require-Command -Name 'adb'"));
      expect(script, contains(r'adb -s $DeviceName logcat -c'));
      expect(script, contains(r'adb -s $DeviceName logcat -d -v time'));
      expect(script, contains('adb logcat read failed'));
      expect(script, contains('Logcat could not be captured'));
      expect(script, contains('FATAL EXCEPTION'));
      expect(script, contains('E/flutter'));
      expect(script, contains('Unhandled Exception'));
    });

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
      expect(script, contains(r'"appium:language" = $smokeLanguage'));
      expect(script, contains('"appium:locale"'));
      expect(script, contains(r'smokeLocale = $normalizedSmokeLocale'));
      expect(script, contains(r'$smokeText.quran'));
      expect(script, contains(r'$smokeText.dailyVerse'));
      expect(script, contains(r'$smokeText.offlineQuranAudioPacks'));
    });

    test('writes reproducible summary and XML artifacts under build', () {
      expect(script, contains('appium-runtime-smoke-summary.json'));
      expect(script, contains('appium-runtime-smoke-'));
      expect(script, contains('appium-runtime-smoke-logcat.txt'));
    });
  });
}
