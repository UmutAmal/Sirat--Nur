import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirat_i_nur/core/utils/activity_date_key.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';
import 'package:sirat_i_nur/features/zikr/zikr_page.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

void main() {
  Widget buildTestApp({Locale? locale, required SharedPreferences prefs}) {
    return ProviderScope(
      overrides: [sharedPreferencesProvider.overrideWithValue(prefs)],
      child: MaterialApp(
        locale: locale,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const ZikrPage(),
      ),
    );
  }

  test(
    'incrementDailyZikrCount persists honest daily analytics totals',
    () async {
      final date = DateTime(2026, 5, 1);
      SharedPreferences.setMockInitialValues({
        'zikrCount_${activityDateKey(date)}': 4,
      });
      final prefs = await SharedPreferences.getInstance();

      await incrementDailyZikrCount(prefs, now: date);

      expect(prefs.getInt('zikrCount_${activityDateKey(date)}'), 5);
    },
  );

  test(
    'incrementDailyZikrCount repairs corrupted negative daily totals',
    () async {
      final date = DateTime(2026, 5, 1);
      SharedPreferences.setMockInitialValues({
        'zikrCount_${activityDateKey(date)}': -9,
      });
      final prefs = await SharedPreferences.getInstance();

      await incrementDailyZikrCount(prefs, now: date);

      expect(prefs.getInt('zikrCount_${activityDateKey(date)}'), 1);
    },
  );

  testWidgets('ZikrPage shows localized completion copy in Turkish', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    final prefs = await SharedPreferences.getInstance();

    await tester.pumpWidget(
      buildTestApp(locale: const Locale('tr'), prefs: prefs),
    );
    await tester.pumpAndSettle();

    for (var i = 0; i < 33; i++) {
      await tester.tap(find.text('$i'));
      await tester.pump();
    }
    await tester.pumpAndSettle();

    expect(find.text('Tamamlandı! Maşallah'), findsOneWidget);
  });

  testWidgets('ZikrPage shows localized zikr meanings in Turkish', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    final prefs = await SharedPreferences.getInstance();

    await tester.pumpWidget(
      buildTestApp(locale: const Locale('tr'), prefs: prefs),
    );
    await tester.pumpAndSettle();

    expect(find.text('Allah her türlü noksanlıktan uzaktır.'), findsOneWidget);
    expect(find.text('Glory be to Allah'), findsNothing);
  });
}
