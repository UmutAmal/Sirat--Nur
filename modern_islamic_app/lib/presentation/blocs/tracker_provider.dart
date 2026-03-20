import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirat_i_nur/presentation/blocs/settings_provider.dart';

class TrackerNotifier extends StateNotifier<Map<String, int>> {
  final SharedPreferences _prefs;

  TrackerNotifier(this._prefs) : super({
    'Fajr': _prefs.getInt('qaza_Fajr') ?? 0,
    'Dhuhr': _prefs.getInt('qaza_Dhuhr') ?? 0,
    'Asr': _prefs.getInt('qaza_Asr') ?? 0,
    'Maghrib': _prefs.getInt('qaza_Maghrib') ?? 0,
    'Isha': _prefs.getInt('qaza_Isha') ?? 0,
    'Fasting': _prefs.getInt('qaza_Fasting') ?? 0,
  });

  Future<void> updateDebt(String type, int newValue) async {
    if (newValue < 0) newValue = 0;
    await _prefs.setInt('qaza_$type', newValue);
    state = {
      ...state,
      type: newValue,
    };
  }

  Future<void> increment(String type) async => updateDebt(type, state[type]! + 1);
  Future<void> decrement(String type) async => updateDebt(type, state[type]! - 1);

  Future<void> resetAll() async {
    for (String key in state.keys) {
      await _prefs.remove('qaza_$key');
    }
    state = {
      'Fajr': 0,
      'Dhuhr': 0,
      'Asr': 0,
      'Maghrib': 0,
      'Isha': 0,
      'Fasting': 0,
    };
  }
}

final qazaStateProvider = StateNotifierProvider<TrackerNotifier, Map<String, int>>((ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return TrackerNotifier(prefs);
});

// Daily Ibadah Checklist (Salah, Sunnah, Dhikr)
class DailyIbadahNotifier extends StateNotifier<Map<String, bool>> {
  final SharedPreferences _prefs;
  final String _todayKey;

  DailyIbadahNotifier(this._prefs) 
    : _todayKey = DateTime.now().toIso8601String().split('T')[0],
      super({}) {
    _loadState();
  }

  void _loadState() {
    final List<String> items = ['Fajr', 'Dhuhr', 'Asr', 'Maghrib', 'Isha', 'Rawatib', 'Tahajjud', 'Dhikr'];
    final Map<String, bool> newState = {};
    for (final item in items) {
      newState[item] = _prefs.getBool('daily_${_todayKey}_$item') ?? false;
    }
    state = newState;
  }

  Future<void> toggle(String item) async {
    final newValue = !(state[item] ?? false);
    await _prefs.setBool('daily_${_todayKey}_$item', newValue);
    state = {...state, item: newValue};
  }
}

final dailyIbadahProvider = StateNotifierProvider<DailyIbadahNotifier, Map<String, bool>>((ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return DailyIbadahNotifier(prefs);
});
