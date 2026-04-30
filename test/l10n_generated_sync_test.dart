import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

void main() {
  test(
    'generated low-resource Places strings stay in sync with ARB files',
    () async {
      const locales = ['aa', 'ab', 'ba', 'bo', 'ti', 'wo'];

      for (final localeCode in locales) {
        final arb =
            jsonDecode(File('lib/l10n/app_$localeCode.arb').readAsStringSync())
                as Map<String, dynamic>;
        final l10n = await AppLocalizations.delegate.load(Locale(localeCode));

        expect(l10n.placesSearchArea, arb['placesSearchArea']);
        expect(l10n.nearbyMosques, arb['nearbyMosques']);
        expect(
          l10n.placesLocationRequiredTitle,
          arb['placesLocationRequiredTitle'],
        );
        expect(
          l10n.placesLocationRequiredBody,
          arb['placesLocationRequiredBody'],
        );
        expect(
          l10n.placesMapTilesUnavailableTitle,
          arb['placesMapTilesUnavailableTitle'],
        );
        expect(
          l10n.placesMapTilesUnavailableBody,
          arb['placesMapTilesUnavailableBody'],
        );
        expect(
          l10n.placesDataSourceUnavailableTitle,
          arb['placesDataSourceUnavailableTitle'],
        );
        expect(
          l10n.placesDataSourceUnavailableBody,
          arb['placesDataSourceUnavailableBody'],
        );
      }
    },
  );
}
