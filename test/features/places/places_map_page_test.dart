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

  Widget createWidgetUnderTest(SharedPreferences prefs) {
    return ProviderScope(
      overrides: [sharedPreferencesProvider.overrideWithValue(prefs)],
      child: const MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: PlacesMapPage(),
      ),
    );
  }

  group('PlacesMapPage Tests', () {
    testWidgets('Renders map structure and tabs', (tester) async {
      final prefs = await SharedPreferences.getInstance();
      await tester.pumpWidget(createWidgetUnderTest(prefs));
      await tester
          .pump(); // We use pump() instead of pumpAndSettle() because map tiles might load infinitely

      // Custom category chips render text labels instead of Material ChoiceChip.
      expect(find.text('Mosques'), findsOneWidget);
      expect(find.text('Halal Food'), findsOneWidget);
      expect(find.text('Education'), findsOneWidget);

    });
  });
}
