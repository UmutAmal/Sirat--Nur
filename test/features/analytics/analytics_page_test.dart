import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirat_i_nur/core/utils/activity_date_key.dart';
import 'package:sirat_i_nur/features/analytics/analytics_page.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

Future<void> pumpAnalyticsPage(
  WidgetTester tester,
  Locale locale, {
  Map<String, Object> initialPrefs = const {},
}) async {
  SharedPreferences.setMockInitialValues(initialPrefs);
  final prefs = await SharedPreferences.getInstance();

  await tester.pumpWidget(
    ProviderScope(
      overrides: [sharedPreferencesProvider.overrideWithValue(prefs)],
      child: MaterialApp(
        locale: locale,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const AnalyticsPage(),
      ),
    ),
  );

  await tester.pump(const Duration(milliseconds: 900));
}

Future<void> disposeAnalyticsPage(WidgetTester tester) async {
  await tester.pumpWidget(const SizedBox.shrink());
  await tester.pumpAndSettle();
}

void main() {
  test(
    'buildAnalyticsSnapshot reads committed tracker data, not mock totals',
    () async {
      final now = DateTime(2026, 5, 1, 12);
      final today = DateTime(2026, 5, 1);
      final yesterday = DateTime(2026, 4, 30);
      SharedPreferences.setMockInitialValues({
        'prayers_${activityDateKey(today)}': jsonEncode({
          'Fajr': true,
          'Dhuhr': true,
          'Asr': true,
          'Maghrib': false,
          'Isha': false,
        }),
        'prayers_${activityDateKey(yesterday)}': jsonEncode({
          'Fajr': true,
          'Dhuhr': true,
          'Asr': true,
          'Maghrib': true,
          'Isha': true,
        }),
        'quranPages_${activityDateKey(today)}': 12,
        'quranPages_${activityDateKey(yesterday)}': 5,
        'fasting_${activityDateKey(today)}': true,
        'zikrCount_${activityDateKey(today)}': 44,
        'zikrCount_${activityDateKey(yesterday)}': 10,
      });
      final prefs = await SharedPreferences.getInstance();

      final snapshot = buildAnalyticsSnapshot(prefs, now);

      expect(snapshot.weeklyPrayers, 8);
      expect(snapshot.weeklyQuranPages, 17);
      expect(snapshot.weeklyFastingDays, 1);
      expect(snapshot.weeklyZikrCount, 54);
      expect(snapshot.currentPrayerStreak, 0);
      expect(snapshot.bestPrayerStreak, 1);
      expect(snapshot.prayerDays.last.completed, 3);
    },
  );

  testWidgets('AnalyticsPage localizes weekly overview labels in English', (
    tester,
  ) async {
    try {
      await pumpAnalyticsPage(tester, const Locale('en'));

      expect(find.text('Analytics'), findsOneWidget);
      expect(find.text('Weekly Progress'), findsOneWidget);
      expect(find.text('Prayer Completion'), findsOneWidget);
      expect(find.text('Streaks'), findsOneWidget);
      expect(find.text('Prayers'), findsOneWidget);
      expect(find.text('Page'), findsOneWidget);
      expect(find.text('Fasting'), findsOneWidget);
      expect(find.text('Zikr'), findsOneWidget);
      expect(find.text('Day streak'), findsOneWidget);
      expect(find.text('Best streak'), findsOneWidget);
      expect(find.text('23'), findsNothing);
      expect(find.text('45'), findsNothing);
      expect(find.text('891'), findsNothing);
    } finally {
      await disposeAnalyticsPage(tester);
    }
  });

  testWidgets('AnalyticsPage renders real tracker totals instead of samples', (
    tester,
  ) async {
    final today = DateTime.now();
    final key = activityDateKey(today);

    try {
      await pumpAnalyticsPage(
        tester,
        const Locale('en'),
        initialPrefs: {
          'prayers_$key': jsonEncode({
            'Fajr': true,
            'Dhuhr': true,
            'Asr': true,
            'Maghrib': false,
            'Isha': false,
          }),
          'quranPages_$key': 12,
          'fasting_$key': true,
          'zikrCount_$key': 44,
        },
      );

      expect(find.text('12'), findsOneWidget);
      expect(find.text('44'), findsOneWidget);
      expect(find.text('23'), findsNothing);
      expect(find.text('45'), findsNothing);
      expect(find.text('891'), findsNothing);
    } finally {
      await disposeAnalyticsPage(tester);
    }
  });

  testWidgets('AnalyticsPage localizes weekly overview labels in Turkish', (
    tester,
  ) async {
    try {
      await pumpAnalyticsPage(tester, const Locale('tr'));

      expect(find.text('Analitik'), findsOneWidget);
      expect(find.text('Haftalık İlerleme'), findsOneWidget);
      expect(find.text('Namaz Tamamlama'), findsOneWidget);
      expect(find.text('Seriler'), findsOneWidget);
      expect(find.text('Namazlar'), findsOneWidget);
      expect(find.text('Sayfa'), findsOneWidget);
      expect(find.text('Oruç'), findsOneWidget);
      expect(find.text('Zikir'), findsOneWidget);
      expect(find.text('Gün serisi'), findsOneWidget);
      expect(find.text('En iyi seri'), findsOneWidget);
    } finally {
      await disposeAnalyticsPage(tester);
    }
  });
}
