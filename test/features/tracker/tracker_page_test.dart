import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';
import 'package:sirat_i_nur/features/tracker/tracker_page.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  Widget createWidgetUnderTest(SharedPreferences prefs) {
    return ProviderScope(
      overrides: [sharedPreferencesProvider.overrideWithValue(prefs)],
      child: const MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: TrackerPage(),
      ),
    );
  }

  group('TrackerPage Tests', () {
    testWidgets('Renders trackers with initial zero values', (tester) async {
      final prefs = await SharedPreferences.getInstance();
      await tester.pumpWidget(createWidgetUnderTest(prefs));
      await tester.pumpAndSettle();

      // Check for zero pages read
      expect(find.text('0'), findsWidgets);
    });

    testWidgets('Can increment and decrement Quran pages', (tester) async {
      final prefs = await SharedPreferences.getInstance();
      await tester.pumpWidget(createWidgetUnderTest(prefs));
      await tester.pumpAndSettle();

      // Find the add icon button
      final addIcon = find.widgetWithIcon(
        IconButton,
        Icons.add_circle_outline_rounded,
      );
      expect(addIcon, findsOneWidget);

      await tester.ensureVisible(addIcon);
      await tester.tap(addIcon);
      await tester.pumpAndSettle();
      await tester.tap(addIcon);
      await tester.pumpAndSettle();

      // Value should be 2
      expect(find.text('2'), findsWidgets);

      // Find the remove icon button
      final removeIcon = find.widgetWithIcon(
        IconButton,
        Icons.remove_circle_outline_rounded,
      );
      expect(removeIcon, findsOneWidget);

      await tester.ensureVisible(removeIcon);
      await tester.tap(removeIcon);
      await tester.pumpAndSettle();

      // Value should be 1
      expect(find.text('1'), findsWidgets);
    });
  });
}
