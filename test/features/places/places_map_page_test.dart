import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirat_i_nur/features/places/places_map_page.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  Widget createWidgetUnderTest(SharedPreferences prefs, Locale locale) {
    return ProviderScope(
      overrides: [sharedPreferencesProvider.overrideWithValue(prefs)],
      child: MaterialApp(
        locale: locale,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const PlacesMapPage(),
      ),
    );
  }

  group('PlacesMapPage Tests', () {
    testWidgets('Renders localized places chrome in English', (tester) async {
      final prefs = await SharedPreferences.getInstance();
      await tester.pumpWidget(createWidgetUnderTest(prefs, const Locale('en')));
      await tester
          .pump(); // We use pump() instead of pumpAndSettle() because map tiles might load infinitely

      expect(find.text('Mosques'), findsOneWidget);
      expect(find.text('Halal Food'), findsOneWidget);
      expect(find.text('Islamic Education'), findsOneWidget);
      expect(find.text('Nearby Mosques'), findsOneWidget);
      expect(find.text('0 found'), findsOneWidget);
    });

    testWidgets('Renders localized places chrome in Turkish', (tester) async {
      final prefs = await SharedPreferences.getInstance();
      await tester.pumpWidget(createWidgetUnderTest(prefs, const Locale('tr')));
      await tester.pump();

      expect(find.text('Camiler'), findsOneWidget);
      expect(find.text('Helal Gıda'), findsOneWidget);
      expect(find.text('İslami Eğitim'), findsOneWidget);
      expect(find.text('Yakındaki Camiler'), findsOneWidget);
      expect(find.text('0 bulundu'), findsOneWidget);
    });
  });
}
