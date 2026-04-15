import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:latlong2/latlong.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirat_i_nur/core/network/supabase_config.dart';
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

  test('Overpass parser keeps valid rows and drops malformed places', () {
    final places = parseOverpassPlacesPayload(
      jsonEncode({
        'elements': [
          {
            'id': 1,
            'lat': 41.0082,
            'lon': '28.9784',
            'tags': {
              'name': 'Sultanahmet Camii',
              'amenity': 'place_of_worship',
            },
          },
          {
            'id': 2,
            'lat': 'not-a-coordinate',
            'lon': 28.9795,
            'tags': {'name': 'Invalid coordinate'},
          },
          {
            'id': 3,
            'center': {'lat': 41.0151, 'lon': 28.9795},
            'tags': {'shop': 'supermarket'},
          },
          {'id': 4, 'tags': 'unexpected'},
        ],
      }),
      category: PlaceCategory.mosque,
      unknownPlaceName: 'Unknown place',
      fallbackDescription: 'Islamic place',
    );

    expect(places, hasLength(2));
    expect(places.first.id, '1');
    expect(places.first.name, 'Sultanahmet Camii');
    expect(places.first.description, 'place_of_worship');
    expect(places.first.position.latitude, 41.0082);
    expect(places.first.position.longitude, 28.9784);
    expect(places.last.id, '3');
    expect(places.last.name, 'Unknown place');
    expect(places.last.description, 'supermarket');
  });

  test('Overpass parser rejects malformed response envelopes', () {
    expect(
      () => parseOverpassPlacesPayload(
        jsonEncode({'unexpected': []}),
        category: PlaceCategory.mosque,
        unknownPlaceName: 'Unknown place',
        fallbackDescription: 'Islamic place',
      ),
      throwsFormatException,
    );
  });

  test('Overpass endpoint and query helpers are explicit and validated', () {
    expect(
      resolvePlacesOverpassEndpoint(' https://overpass.example/api '),
      Uri.parse('https://overpass.example/api'),
    );
    expect(
      () => resolvePlacesOverpassEndpoint('not an endpoint'),
      throwsFormatException,
    );
    expect(
      () => resolvePlacesOverpassEndpoint('ftp://overpass.example/api'),
      throwsFormatException,
    );
    expect(
      () => resolvePlacesOverpassEndpoint('https:///missing-host'),
      throwsFormatException,
    );
    expect(SupabaseConfig.placesOverpassApiUrl, isNotEmpty);

    final mosqueQuery = buildOverpassPlacesQuery(
      center: const LatLng(41.0082, 28.9784),
      category: PlaceCategory.mosque,
      radiusMeters: 2500,
    );
    expect(mosqueQuery, contains('[out:json][timeout:15]'));
    expect(mosqueQuery, contains('around:2500, 41.0082, 28.9784'));
    expect(
      mosqueQuery,
      contains('["amenity"="place_of_worship"]["religion"="muslim"]'),
    );

    final halalQuery = buildOverpassPlacesQuery(
      center: const LatLng(41.0082, 28.9784),
      category: PlaceCategory.halalFood,
    );
    expect(halalQuery, contains('["diet:halal"="yes"]'));

    final educationQuery = buildOverpassPlacesQuery(
      center: const LatLng(41.0082, 28.9784),
      category: PlaceCategory.education,
    );
    expect(
      educationQuery,
      contains('["amenity"="school"]["religion"="muslim"]'),
    );
  });

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
