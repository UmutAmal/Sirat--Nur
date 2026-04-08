import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/features/analytics/analytics_page.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

Future<void> pumpAnalyticsPage(WidgetTester tester, Locale locale) async {
  await tester.pumpWidget(
    ProviderScope(
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
