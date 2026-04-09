import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:latlong2/latlong.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirat_i_nur/features/places/places_map_page.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  test(
    'places helpers do not fall back to Istanbul and require configuration honestly',
    () {
      final missingLocation = SettingsState();
      expect(resolvePlacesAnchor(missingLocation), isNull);
      expect(
        resolvePlacesMapAvailability(missingLocation, tileUrlTemplate: ''),
        PlacesMapAvailability.locationRequired,
      );

      final configuredLocation = SettingsState(
        latitude: 41.0151,
        longitude: 28.9795,
      );
      expect(
        resolvePlacesAnchor(configuredLocation),
        const LatLng(41.0151, 28.9795),
      );
      expect(
        resolvePlacesMapAvailability(configuredLocation, tileUrlTemplate: ''),
        PlacesMapAvailability.tileConfigRequired,
      );
    },
  );

  testWidgets(
    'PlacesMapPage shows an honest location-required state without saved location',
    (tester) async {
      final prefs = await SharedPreferences.getInstance();

      await tester.pumpWidget(
        ProviderScope(
          overrides: [sharedPreferencesProvider.overrideWithValue(prefs)],
          child: const MaterialApp(
            locale: Locale('en'),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            home: PlacesMapPage(),
          ),
        ),
      );
      await tester.pump();

      expect(find.text('Location required'), findsNWidgets(2));
      expect(
        find.text(
          'Set a location first so nearby mosques, halal food, and Islamic schools can be searched accurately.',
        ),
        findsNWidgets(2),
      );
    },
  );
}
