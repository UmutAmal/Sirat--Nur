import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:modern_islamic_app/core/services/location_service.dart';
import 'package:modern_islamic_app/core/constants/live_streams.dart';
import 'package:modern_islamic_app/core/utils/prayer_name_localization.dart';
import 'package:modern_islamic_app/presentation/blocs/settings_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('localizePrayerName uses locale strings', () {
    expect(localizePrayerName('Fajr', const Locale('en')), 'Fajr');
    expect(localizePrayerName('Fajr', const Locale('tr')), 'İmsak');
    expect(localizePrayerName('UnknownPrayer', const Locale('tr')), 'UnknownPrayer');
  });

  test('SettingsNotifier normalizes audio voice defaults', () async {
    SharedPreferences.setMockInitialValues({});
    final prefs = await SharedPreferences.getInstance();
    final notifier = SettingsNotifier(prefs);
    expect(notifier.state.audioVoice, 'Male (Mishary Alafasy)');
  });

  test('LocationService.suggestLanguage returns expected defaults', () {
    expect(LocationService.suggestLanguage('TR'), 'tr');
    expect(LocationService.suggestLanguage('US'), 'en');
    expect(LocationService.suggestLanguage('IR'), 'fa');
  });

  test('Live streams list is non-empty and unique', () {
    expect(liveStreams, isNotEmpty);
    final ids = liveStreams.map((e) => e.videoId).toList();
    expect(ids.toSet().length, ids.length);
  });
}
