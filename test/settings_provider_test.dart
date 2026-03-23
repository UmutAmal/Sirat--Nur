import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';

void main() {
  group('SettingsState', () {
    test('default values are correct', () {
      final state = SettingsState();
      expect(state.calculationMethod, 'Turkey');
      expect(state.madhab, 'Hanafi');
      expect(state.fajrAngle, 18.0);
      expect(state.ishaAngle, 17.0);
      expect(state.isDarkMode, true);
      expect(state.audioVoice, 'Male (Mishary Alafasy)');
      expect(state.languageCode, isNull);
      expect(state.latitude, isNull);
      expect(state.longitude, isNull);
      expect(state.qiblaOffset, 0.0);
      expect(state.qiblaSmoothingEnabled, true);
    });

    test('copyWith creates a new instance with updated values', () {
      final state = SettingsState();
      final updated = state.copyWith(
        calculationMethod: 'ISNA',
        madhab: 'Shafi',
        fajrAngle: 15.0,
      );
      expect(updated.calculationMethod, 'ISNA');
      expect(updated.madhab, 'Shafi');
      expect(updated.fajrAngle, 15.0);
      // Unchanged values remain
      expect(updated.ishaAngle, 17.0);
      expect(updated.isDarkMode, true);
      expect(updated.audioVoice, 'Male (Mishary Alafasy)');
    });

    test('copyWith with no arguments returns equivalent state', () {
      final state = SettingsState(calculationMethod: 'Egyptian', madhab: 'Hanafi');
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
      expect(notifier.state.calculationMethod, 'Turkey');
      expect(notifier.state.madhab, 'Hanafi');
    });

    test('loads saved preferences correctly', () async {
      SharedPreferences.setMockInitialValues({
        'calculationMethod': 'Egyptian',
        'madhab': 'Shafi',
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
      expect(notifier.state.calculationMethod, 'Egyptian');
      expect(notifier.state.madhab, 'Shafi');
      expect(notifier.state.fajrAngle, 15.0);
      expect(notifier.state.ishaAngle, 14.0);
      expect(notifier.state.isDarkMode, false);
      expect(notifier.state.audioVoice, 'Sudais');
      expect(notifier.state.languageCode, 'tr');
      expect(notifier.state.latitude, 41.0);
      expect(notifier.state.longitude, 29.0);
    });
  });
}
