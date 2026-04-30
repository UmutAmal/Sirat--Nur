import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

void main() {
  test(
    'generated low-resource Places strings stay in sync with ARB files',
    () async {
      const locales = [
        'aa',
        'ab',
        'ba',
        'bh',
        'bo',
        'br',
        'cv',
        'li',
        'nr',
        'oc',
        'os',
        'se',
        'ti',
        'wo',
      ];

      for (final localeCode in locales) {
        final arb =
            jsonDecode(File('lib/l10n/app_$localeCode.arb').readAsStringSync())
                as Map<String, dynamic>;
        final l10n = await AppLocalizations.delegate.load(Locale(localeCode));
        final foundCount = (arb['placesFoundCount'] as String).replaceAll(
          '{count}',
          '7',
        );
        final distanceAway = (arb['distanceAwayKm'] as String).replaceAll(
          '{distance}',
          '3.5',
        );
        final apiError = (arb['placesApiError'] as String).replaceAll(
          '{statusCode}',
          '503',
        );

        expect(l10n.placesSearchArea, arb['placesSearchArea']);
        expect(l10n.nearbyMosques, arb['nearbyMosques']);
        expect(l10n.placesFoundCount('7'), foundCount);
        expect(l10n.distanceAwayKm('3.5'), distanceAway);
        expect(l10n.placesApiError('503'), apiError);
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

  test(
    'generated low-resource download strings stay in sync with ARB files',
    () async {
      const locales = [
        'aa',
        'ab',
        'av',
        'ba',
        'bh',
        'bo',
        'br',
        'ce',
        'ch',
        'cv',
        'dz',
        'ff',
        'fj',
        'fo',
        'gv',
        'iu',
        'kg',
        'kl',
        'kr',
        'kv',
        'li',
        'mh',
        'nr',
        'oc',
        'os',
        'rn',
        'se',
        'sg',
        'ss',
        'tn',
        'to',
        'ty',
        've',
        'wo',
      ];

      for (final localeCode in locales) {
        final arb =
            jsonDecode(File('lib/l10n/app_$localeCode.arb').readAsStringSync())
                as Map<String, dynamic>;
        final l10n = await AppLocalizations.delegate.load(Locale(localeCode));

        expect(l10n.resumeDownload, arb['resumeDownload']);
        expect(l10n.deleteDownloadedFiles, arb['deleteDownloadedFiles']);
      }
    },
  );
}
