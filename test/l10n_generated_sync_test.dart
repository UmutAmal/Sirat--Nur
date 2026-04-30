import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

const _chatbotLocalNoInfoGeneratedSyncLocales = {
  'aa',
  'ab',
  'ba',
  'bh',
  'bo',
  'br',
  'ce',
  'cv',
  'dz',
  'ff',
  'fo',
  'kg',
  'kl',
  'kr',
  'kv',
  'li',
  'nr',
  'oc',
  'os',
  'rn',
  'se',
  'sg',
  'ss',
  'tn',
  'to',
  've',
  'wo',
};

const _chatbotOfflinePromptGeneratedSyncLocales = {
  'aa',
  'ab',
  'av',
  'ba',
  'bh',
  'bo',
  'br',
  'ce',
  'cv',
  'dz',
  'ff',
  'fo',
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
  've',
  'wo',
};

const _chatbotOfflineSwitchedGeneratedSyncLocales = {
  'aa',
  'ab',
  'av',
  'ba',
  'bh',
  'bo',
  'br',
  'ce',
  'cv',
  'dz',
  'ff',
  'fo',
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
  'ss',
  'tn',
  'to',
  'ty',
  've',
  'wo',
};

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
        'ee',
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
        'ln',
        'mh',
        'nr',
        'nso',
        'oc',
        'os',
        'om',
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
        final canceled = (arb['downloadCanceledForReciter'] as String)
            .replaceAll('{reciter}', 'Abdul Basit');
        final finished = (arb['downloadFinishedForReciter'] as String)
            .replaceAll('{reciter}', 'Abdul Basit');

        expect(l10n.resumeDownload, arb['resumeDownload']);
        expect(l10n.deleteDownloadedFiles, arb['deleteDownloadedFiles']);
        expect(l10n.downloadCanceledForReciter('Abdul Basit'), canceled);
        expect(l10n.downloadFinishedForReciter('Abdul Basit'), finished);
      }
    },
  );

  test(
    'generated low-resource diagnostics strings stay in sync with ARB files',
    () async {
      const locales = [
        'aa',
        'ab',
        'av',
        'ay',
        'ba',
        'bh',
        'bo',
        'ce',
        'ch',
        'cv',
        'dz',
        'ff',
        'fj',
        'fo',
        'gv',
        'kg',
        'kl',
        'kr',
        'li',
        'lus',
        'mai',
        'mh',
        'nr',
        'os',
        'rn',
        'sa',
        'se',
        'sg',
        'ss',
        'ti',
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

        expect(
          l10n.diagnosticsQuranCloudTablesMissing,
          arb['diagnosticsQuranCloudTablesMissing'],
        );
        expect(
          l10n.diagnosticsQuranCloudJuzMissing,
          arb['diagnosticsQuranCloudJuzMissing'],
        );
      }
    },
  );

  test(
    'generated low-resource chatbot strings stay in sync with ARB files',
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
        'cv',
        'dz',
        'ff',
        'fo',
        'gv',
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

        expect(
          l10n.chatbotCloudNotConfigured,
          arb['chatbotCloudNotConfigured'],
        );
        if (_chatbotLocalNoInfoGeneratedSyncLocales.contains(localeCode)) {
          expect(l10n.chatbotLocalNoInfo, arb['chatbotLocalNoInfo']);
        }
        if (_chatbotOfflinePromptGeneratedSyncLocales.contains(localeCode)) {
          expect(l10n.chatbotOfflinePrompt, arb['chatbotOfflinePrompt']);
        }
        if (_chatbotOfflineSwitchedGeneratedSyncLocales.contains(localeCode)) {
          expect(l10n.chatbotOfflineSwitched, arb['chatbotOfflineSwitched']);
        }
      }
    },
  );
}
