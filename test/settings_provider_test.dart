import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirat_i_nur/core/services/prayer_profile_service.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';

void main() {
  group('SettingsState', () {
    test('default values are correct', () {
      final state = SettingsState();
      expect(state.calculationMethod, diyanetPrayerMethod);
      expect(state.madhab, hanafiMadhab);
      expect(state.fajrAngle, 18.0);
      expect(state.ishaAngle, 17.0);
      expect(state.isDarkMode, true);
      expect(state.audioVoice, misharyAlafasyVoice);
      expect(state.languageCode, isNull);
      expect(state.latitude, isNull);
      expect(state.longitude, isNull);
      expect(state.qiblaOffset, 0.0);
      expect(state.qiblaSmoothingEnabled, true);
    });

    test('copyWith creates a new instance with updated values', () {
      final state = SettingsState();
      final updated = state.copyWith(
        calculationMethod: isnaPrayerMethod,
        madhab: shafiiMadhab,
        fajrAngle: 15.0,
      );
      expect(updated.calculationMethod, isnaPrayerMethod);
      expect(updated.madhab, shafiiMadhab);
      expect(updated.fajrAngle, 15.0);
      // Unchanged values remain
      expect(updated.ishaAngle, 17.0);
      expect(updated.isDarkMode, true);
      expect(updated.audioVoice, misharyAlafasyVoice);
    });

    test('copyWith with no arguments returns equivalent state', () {
      final state = SettingsState(
        calculationMethod: 'Egyptian',
        madhab: hanafiMadhab,
      );
      final copy = state.copyWith();
      expect(copy.calculationMethod, state.calculationMethod);
      expect(copy.madhab, state.madhab);
    });
  });

  group('SettingsNotifier', () {
    late SharedPreferences prefs;

    setUp(() async {
      SharedPreferences.setMockInitialValues({});
      prefs = await SharedPreferences.getInstance();
    });

    test('loads defaults when no saved preferences', () {
      final notifier = SettingsNotifier(prefs);
      expect(notifier.state.calculationMethod, diyanetPrayerMethod);
      expect(notifier.state.madhab, hanafiMadhab);
    });

    test('loads saved preferences correctly and normalizes legacy values', () async {
      SharedPreferences.setMockInitialValues({
        'calculationMethod': 'Turkey',
        'madhab': "Shafi'i",
        'fajrAngle': 15.0,
        'ishaAngle': 14.0,
        'isDarkMode': false,
        'audioVoice': 'Sudais',
        'languageCode': 'tr',
        'latitude': 41.0,
        'longitude': 29.0,
      });
      prefs = await SharedPreferences.getInstance();
      final notifier = SettingsNotifier(prefs);
      expect(notifier.state.calculationMethod, diyanetPrayerMethod);
      expect(notifier.state.madhab, shafiiMadhab);
      expect(notifier.state.fajrAngle, 18.0);
      expect(notifier.state.ishaAngle, 17.0);
      expect(notifier.state.isDarkMode, false);
      expect(notifier.state.audioVoice, sudaisVoice);
      expect(notifier.state.languageCode, 'tr');
      expect(notifier.state.latitude, 41.0);
      expect(notifier.state.longitude, 29.0);
    });

    test('updateLocation persists timezone in state and storage', () async {
      final notifier = SettingsNotifier(prefs);

      await notifier.updateLocation(
        41.0082,
        28.9784,
        'Istanbul, Turkey',
        timezone: 'Europe/Istanbul',
        countryCode: 'TR',
      );

      expect(notifier.state.locationName, 'Istanbul, Turkey');
      expect(notifier.state.timezone, 'Europe/Istanbul');
      expect(notifier.state.calculationMethod, diyanetPrayerMethod);
      expect(notifier.state.madhab, hanafiMadhab);
      expect(prefs.getString('timezone'), 'Europe/Istanbul');
    });

    test('updateLocation applies official profile defaults for country code', () async {
      final notifier = SettingsNotifier(prefs);

      await notifier.updateLocation(
        3.1390,
        101.6869,
        'Kuala Lumpur, Malaysia',
        timezone: 'Asia/Kuala_Lumpur',
        countryCode: 'MY',
      );

      expect(notifier.state.calculationMethod, jakimPrayerMethod);
      expect(notifier.state.madhab, shafiiMadhab);
      expect(notifier.state.fajrAngle, 20.0);
      expect(notifier.state.ishaAngle, 18.0);
      expect(prefs.getString('calculationMethod'), jakimPrayerMethod);
      expect(prefs.getString('madhab'), shafiiMadhab);
    });

    test('updateCalculationMethod resets angles to the selected official profile', () async {
      final notifier = SettingsNotifier(prefs);
      await notifier.updateCustomAngles(14.5, 13.5);

      await notifier.updateCalculationMethod(ummAlQuraPrayerMethod);

      expect(notifier.state.calculationMethod, ummAlQuraPrayerMethod);
      expect(notifier.state.fajrAngle, 18.5);
      expect(notifier.state.ishaAngle, 0.0);
      expect(prefs.getDouble('fajrAngle'), 18.5);
      expect(prefs.getDouble('ishaAngle'), 0.0);
    });

    test('clearManualLocation removes timezone from state and storage', () async {
      SharedPreferences.setMockInitialValues({
        'latitude': 21.3891,
        'longitude': 39.8579,
        'locationName': 'Makkah, Saudi Arabia',
        'timezone': 'Asia/Riyadh',
      });
      prefs = await SharedPreferences.getInstance();
      final notifier = SettingsNotifier(prefs);

      await notifier.clearManualLocation();

      expect(notifier.state.latitude, isNull);
      expect(notifier.state.longitude, isNull);
      expect(notifier.state.locationName, isNull);
      expect(notifier.state.timezone, isNull);
      expect(prefs.containsKey('timezone'), isFalse);
    });

    test('updateAudioVoice persists canonical ids instead of display labels', () async {
      final notifier = SettingsNotifier(prefs);

      await notifier.updateAudioVoice('Male (AbdulBaset)');

      expect(notifier.state.audioVoice, abdulBasetVoice);
      expect(prefs.getString('audioVoice'), abdulBasetVoice);
    });
  });
}
