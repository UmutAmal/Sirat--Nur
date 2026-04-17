import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/constants/app_constants.dart';
import 'package:sirat_i_nur/features/settings/location_selection_page.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

void main() {
  group('location selection filtering', () {
    const sampleCities = [
      CityData(
        name: 'Istanbul',
        country: 'Turkey',
        countryCode: 'TR',
        lat: 41.0082,
        lng: 28.9784,
        timezone: 'Europe/Istanbul',
      ),
      CityData(
        name: 'Ankara',
        country: 'Turkey',
        countryCode: 'TR',
        lat: 39.9334,
        lng: 32.8597,
        timezone: 'Europe/Istanbul',
      ),
      CityData(
        name: 'Berlin',
        country: 'Germany',
        countryCode: 'DE',
        lat: 52.5200,
        lng: 13.4050,
        timezone: 'Europe/Berlin',
      ),
    ];

    test('returns all cities when no country is selected', () {
      final results = filterCities(sampleCities);

      expect(results, hasLength(3));
    });

    test('filters by selected country without hardcoded sentinel text', () {
      final results = filterCities(sampleCities, selectedCountry: 'Turkey');

      expect(results.map((city) => city.name), ['Istanbul', 'Ankara']);
    });

    test('filters by query across city, country, and country code', () {
      expect(filterCities(sampleCities, query: 'ber').single.name, 'Berlin');
      expect(filterCities(sampleCities, query: 'tr').map((city) => city.name), [
        'Istanbul',
        'Ankara',
      ]);
    });

    test('builds unique sorted country filters only from real data', () {
      expect(buildCountryFilters(sampleCities), ['Germany', 'Turkey']);
    });

    test('location detection failure copy is localized and sanitized', () async {
      final en = await AppLocalizations.delegate.load(const Locale('en'));
      final tr = await AppLocalizations.delegate.load(const Locale('tr'));

      expect(
        en.locationDetectionFailed,
        'Could not detect your location. Please choose a city manually or try again.',
      );
      expect(
        tr.locationDetectionFailed,
        'Konumunuz algılanamadı. Lütfen bir şehri elle seçin veya tekrar deneyin.',
      );

      final source = File(
        'lib/features/settings/location_selection_page.dart',
      ).readAsStringSync();

      expect(source, isNot(contains(r"'${l10n.error}: $error'")));
      expect(source, isNot(contains(r'Location detection failed: $error')));
      expect(source, contains('l10n.locationDetectionFailed'));
    });

    test('manual city selection awaits settings update before closing', () {
      final source = File(
        'lib/features/settings/location_selection_page.dart',
      ).readAsStringSync();

      expect(source, contains('onTap: () async'));
      expect(source, contains('await ref'));
      expect(source, contains("debugPrint('Manual location update failed')"));
      expect(source, contains('_showMessage(l10n.appUnknownError)'));
      expect(source, isNot(contains(r'Manual location update failed: $error')));
    });
  });
}
