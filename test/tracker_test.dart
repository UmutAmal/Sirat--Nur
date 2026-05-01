import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirat_i_nur/core/utils/activity_date_key.dart';
import 'package:sirat_i_nur/features/tracker/tracker_page.dart';

void main() {
  group('TrackerNotifier', () {
    late SharedPreferences prefs;

    setUp(() async {
      SharedPreferences.setMockInitialValues({});
      prefs = await SharedPreferences.getInstance();
    });

    test('initial state has all prayers unchecked', () {
      final notifier = TrackerNotifier(prefs);
      expect(notifier.state.length, 5);
      expect(notifier.state.values.every((v) => !v), true);
    });

    test('toggle sets a prayer to true', () {
      final notifier = TrackerNotifier(prefs);
      notifier.toggle('Fajr');
      expect(notifier.state['Fajr'], true);
    });

    test('toggle twice reverts a prayer to false', () {
      final notifier = TrackerNotifier(prefs);
      notifier.toggle('Fajr');
      notifier.toggle('Fajr');
      expect(notifier.state['Fajr'], false);
    });

    test('repairs corrupt stored prayer state without crashing', () async {
      await prefs.setString('prayers_${todayActivityDateKey()}', 'not-json');

      final notifier = TrackerNotifier(prefs);

      expect(notifier.state.length, 5);
      expect(notifier.state.values.every((value) => !value), isTrue);
    });

    test('ignores unknown and non-bool stored prayer values', () async {
      await prefs.setString(
        'prayers_${todayActivityDateKey()}',
        jsonEncode({
          'Fajr': true,
          'Dhuhr': 'yes',
          'Asr': false,
          'Unknown': true,
        }),
      );

      final notifier = TrackerNotifier(prefs);

      expect(notifier.state, {
        'Fajr': true,
        'Dhuhr': false,
        'Asr': false,
        'Maghrib': false,
        'Isha': false,
      });
    });
  });

  group('QuranPagesNotifier', () {
    late SharedPreferences prefs;

    setUp(() async {
      SharedPreferences.setMockInitialValues({});
      prefs = await SharedPreferences.getInstance();
    });

    test('starts at 0', () {
      final notifier = QuranPagesNotifier(prefs);
      expect(notifier.state, 0);
    });

    test('increment increases count', () {
      final notifier = QuranPagesNotifier(prefs);
      notifier.increment();
      notifier.increment();
      expect(notifier.state, 2);
    });

    test('decrement does not go below 0', () {
      final notifier = QuranPagesNotifier(prefs);
      notifier.decrement();
      expect(notifier.state, 0);
    });
  });

  group('FastingNotifier', () {
    late SharedPreferences prefs;

    setUp(() async {
      SharedPreferences.setMockInitialValues({});
      prefs = await SharedPreferences.getInstance();
    });

    test('starts as false', () {
      final notifier = FastingNotifier(prefs);
      expect(notifier.state, false);
    });

    test('toggle flips state', () {
      final notifier = FastingNotifier(prefs);
      notifier.toggle();
      expect(notifier.state, true);
      notifier.toggle();
      expect(notifier.state, false);
    });
  });
}
