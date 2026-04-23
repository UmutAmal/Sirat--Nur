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
      expect(script, contains(r'flutter build apk "--$BuildMode"'));
      expect(script, contains(r'adb -s $DeviceName install -r $apkPath'));
      expect(script, contains('apkLastWriteTime'));
      expect(script, contains('apkPrepared'));
    });

    test('writes reproducible summary and XML artifacts under build', () {
      expect(script, contains('appium-runtime-smoke-summary.json'));
      expect(script, contains('appium-runtime-smoke-'));
      expect(script, contains('appium-runtime-smoke-logcat.txt'));
    });
  });
}
