import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

import '../tool/translate_arb_keys.dart';

void main() {
  group('translate_arb_keys safeguards', () {
    test(
      'preserves an existing localized value when translation falls back to English',
      () {
        final value = resolveTranslatedArbValue(
          key: 'downloadFinishedForReciter',
          source: 'Download completed for {reciter}.',
          currentValue: 'Téléchargement terminé pour {reciter}.',
          candidate: 'Download completed for {reciter}.',
        );

        expect(value, 'Téléchargement terminé pour {reciter}.');
      },
    );

    test('uses a valid fresh translation when placeholders are intact', () {
      final value = resolveTranslatedArbValue(
        key: 'downloadCanceledForReciter',
        source: 'Download canceled for {reciter}.',
        currentValue: 'Download canceled for {reciter}.',
        candidate: 'Download voor {reciter} geannuleerd.',
      );

      expect(value, 'Download voor {reciter} geannuleerd.');
    });

    test('rejects malformed placeholder output and keeps the existing value', () {
      final value = resolveTranslatedArbValue(
        key: 'downloadPartiallyFinishedForReciter',
        source:
            'Download finished for {reciter} with {failed} failed surahs ({downloaded}/{total} downloaded).',
        currentValue:
            'Descarga finalizada para {reciter} con {failed} suras fallidas ({downloaded}/{total} descargadas).',
        candidate:
            'Descarga finalizada para {recitador} con {failed} suras fallidas.',
      );

      expect(
        value,
        'Descarga finalizada para {reciter} con {failed} suras fallidas ({downloaded}/{total} descargadas).',
      );
    });

    test('accepts localized values that reorder placeholders naturally', () {
      final value = resolveTranslatedArbValue(
        key: 'downloadPartiallyFinishedForReciter',
        source:
            'Download finished for {reciter} with {failed} failed surahs ({downloaded}/{total} downloaded).',
        currentValue:
            '{failed} uğursuz surələrlə {reciter} üçün endirmə tamamlandı ({downloaded}/{total} endirildi).',
        candidate:
            'Download finished for {reciter} with {failed} failed surahs ({downloaded}/{total} downloaded).',
      );

      expect(
        value,
        '{failed} uğursuz surələrlə {reciter} üçün endirmə tamamlandı ({downloaded}/{total} endirildi).',
      );
    });

    test(
      'falls back to the English source only when no safe localized value exists',
      () {
        final value = resolveTranslatedArbValue(
          key: 'diagnosticsQuranCloudJuzMissing',
          source:
              'Cloud juz metadata missing; bundled structural fallback active',
          currentValue: '',
          candidate:
              'Cloud juz metadata missing; bundled structural fallback active',
        );

        expect(
          value,
          'Cloud juz metadata missing; bundled structural fallback active',
        );
      },
    );

    test('skips ARB file writes when only newline style differs', () {
      expect(
        shouldWriteArbFileContent('{\r\n  "key": "value"\r\n}\r\n', '''
{
  "key": "value"
}
'''),
        isFalse,
      );

      expect(
        shouldWriteArbFileContent('{"key":"value"}\n', '{"key":"changed"}\n'),
        isTrue,
      );
    });

    test('recognizes help flags before validating ARB template keys', () {
      expect(isTranslateArbKeysHelpRequest(['--help']), isTrue);
      expect(isTranslateArbKeysHelpRequest(['-h']), isTrue);
      expect(isTranslateArbKeysHelpRequest(['--report']), isFalse);
      expect(translateArbKeysUsage(), contains('translate_arb_keys.dart'));
      expect(translateArbKeysUsage(), contains('[--report|--dry-run]'));
    });

    test('uses language-neutral placeholder tokens for provider calls', () {
      expect(translationTokenForArbPlaceholder(0), '__VAR0__');
      expect(translationTokenForArbPlaceholder(1), '__VAR1__');
      expect(translationTokenForArbPlaceholder(0), isNot(contains('PRAYER')));
      expect(
        translationTokenForArbPlaceholder(0),
        isNot(contains('PLACEHOLDER')),
      );
    });

    test('extracts segmented Google Translate fallback output', () {
      final translated = extractGoogleTranslateGtxText([
        [
          ['Xongolo digir radeh. ', 'Audio playback failed. '],
          ['Ku maganak ku angaaraw ismit.', 'Please check your connection.'],
        ],
      ]);

      expect(translated, 'Xongolo digir radeh. Ku maganak ku angaaraw ismit.');
      expect(extractGoogleTranslateGtxText(['unexpected']), isNull);
    });

    test('reports l10n debt without translating or mutating files', () {
      final report = buildL10nDebtReport(
        keys: ['downloadFinishedForReciter', 'downloadAction'],
        english: {
          'downloadFinishedForReciter': 'Download completed for {reciter}.',
          'downloadAction': 'Download',
        },
        localeArbs: {
          'en': {
            'downloadFinishedForReciter': 'Download completed for {reciter}.',
            'downloadAction': 'Download',
          },
          'tr': {
            'downloadFinishedForReciter': 'Indirme {reciter} icin tamamlandi.',
            'downloadAction': 'Indir',
          },
          'fr': {
            'downloadFinishedForReciter': 'Download completed for {reciter}.',
            'downloadAction': 'Download',
          },
          'es': {
            'downloadFinishedForReciter': 'Descarga completa.',
            'downloadAction': '',
          },
          'de': {'downloadAction': 'Herunterladen'},
          'pt': {
            'downloadFinishedForReciter':
                'Transferencia concluida para {reciter}.',
            'downloadAction': 'DOWNLOAD',
          },
        },
      );

      final reciterEntry = report.entries.firstWhere(
        (entry) => entry.key == 'downloadFinishedForReciter',
      );
      final actionEntry = report.entries.firstWhere(
        (entry) => entry.key == 'downloadAction',
      );
      expect(reciterEntry.sameAsEnglishLocales, ['fr']);
      expect(actionEntry.sameAsEnglishLocales, ['fr', 'pt']);
      expect(reciterEntry.missingOrEmptyLocales, ['de']);
      expect(reciterEntry.placeholderMismatchLocales, ['es']);
      expect(report.sameAsEnglishCount, 3);
      expect(report.missingOrEmptyCount, 2);
      expect(report.placeholderMismatchCount, 1);
      expect(
        report.format(),
        contains(
          '- downloadFinishedForReciter: same-as-English=fr; '
          'missing-or-empty=de; placeholder-mismatch=es',
        ),
      );
    });

    test('does not count neutral symbolic placeholders as English debt', () {
      final report = buildL10nDebtReport(
        keys: ['prayerRemainingUnavailable'],
        english: {'prayerRemainingUnavailable': '--'},
        localeArbs: {
          'en': {'prayerRemainingUnavailable': '--'},
          'tr': {'prayerRemainingUnavailable': '--'},
          'ar': {'prayerRemainingUnavailable': '--'},
        },
      );

      expect(report.sameAsEnglishCount, 0);
      expect(report.hasDebt, isFalse);
      expect(report.format(), contains('No l10n debt found'));
    });

    test('tracks committed low-resource l10n debt reduction', () {
      const keys = [
        'downloadAction',
        'resumeDownload',
        'deleteDownloadedFiles',
        'downloadCanceledForReciter',
        'downloadFinishedForReciter',
        'diagnosticsQuranCloudTablesMissing',
        'diagnosticsQuranCloudJuzMissing',
        'chatbotCloudNotConfigured',
        'chatbotLocalNoInfo',
        'chatbotOfflinePrompt',
        'chatbotOfflineSwitched',
        'placesSearchArea',
        'nearbyMosques',
        'placesFoundCount',
        'distanceAwayKm',
        'placesApiError',
        'placesNetworkError',
        'placesLocationRequiredTitle',
        'placesLocationRequiredBody',
        'placesMapTilesUnavailableTitle',
        'placesMapTilesUnavailableBody',
        'placesDataSourceUnavailableTitle',
        'placesDataSourceUnavailableBody',
      ];
      final english = _readArbFile('lib/l10n/app_en.arb');
      final localeArbs = <String, Map<String, dynamic>>{};

      for (final file in Directory('lib/l10n').listSync().whereType<File>()) {
        final name = file.uri.pathSegments.last;
        if (!name.startsWith('app_') || !name.endsWith('.arb')) {
          continue;
        }
        final locale = name.replaceFirst('app_', '').replaceFirst('.arb', '');
        localeArbs[locale] = _readArbFile(file.path);
      }

      final report = buildL10nDebtReport(
        keys: keys,
        english: english,
        localeArbs: localeArbs,
      );

      expect(report.missingOrEmptyCount, 0);
      expect(report.placeholderMismatchCount, 0);
      expect(report.sameAsEnglishCount, lessThanOrEqualTo(777));
      expect(
        localeArbs['ak']!['downloadAction'],
        isNot(english['downloadAction']),
      );
      expect(
        localeArbs['ti']!['downloadAction'],
        isNot(english['downloadAction']),
      );
      expect(
        localeArbs['gv']!['downloadAction'],
        isNot('Íoslódáil'),
        reason: 'app_gv.arb maps downloadAction to Irish copy',
      );
      expect(
        localeArbs['kl']!['downloadAction'],
        isNot('Aavaa'),
        reason: 'app_kl.arb maps downloadAction to open instead of download',
      );
      expect(
        localeArbs['ti']!['resumeDownload'],
        isNot(english['resumeDownload']),
      );
      expect(
        localeArbs['gv']!['resumeDownload'],
        isNot('Lesh lesh'),
        reason: 'app_gv.arb maps resumeDownload to an invalid duplicate phrase',
      );
      expect(
        localeArbs['rn']!['resumeDownload'],
        isNot('Bandanya gukuraho'),
        reason: 'app_rn.arb maps resumeDownload to remove/delete semantics',
      );
      expect(
        localeArbs['bh']!['deleteDownloadedFiles'],
        isNot(english['deleteDownloadedFiles']),
      );
      expect(
        localeArbs['wo']!['deleteDownloadedFiles'],
        isNot(english['deleteDownloadedFiles']),
      );
      expect(
        localeArbs['gv']!['deleteDownloadedFiles'],
        isNot('Smooinee er coadanyn'),
        reason: 'app_gv.arb maps deleteDownloadedFiles to think/code copy',
      );
      expect(
        localeArbs['kg']!['deleteDownloadedFiles'],
        isNot('Kufwa bafishe yina nge me baka'),
        reason: 'app_kg.arb maps deleteDownloadedFiles to unsafe semantics',
      );
      expect(
        localeArbs['ty']!['deleteDownloadedFiles'],
        isNot("Tamau i te mau hoho'a i tikiakehia"),
        reason: 'app_ty.arb maps deleteDownloadedFiles to keep/image semantics',
      );
      expect(
        localeArbs['bh']!['downloadCanceledForReciter'],
        isNot(english['downloadCanceledForReciter']),
      );
      expect(
        localeArbs['ch']!['downloadCanceledForReciter'],
        isNot("Ma kansela i lina'la' para {reciter}."),
        reason: 'app_ch.arb maps downloadCanceledForReciter to life semantics',
      );
      expect(
        localeArbs['bh']!['downloadFinishedForReciter'],
        isNot(english['downloadFinishedForReciter']),
      );
      expect(
        localeArbs['ch']!['downloadFinishedForReciter'],
        isNot("Ma na'funhayan i {reciter}."),
        reason:
            'app_ch.arb maps downloadFinishedForReciter to ambiguous completion copy',
      );
      for (final locale in ['ca', 'gl', 'hy', 'ka', 'zh', 'zh_CN', 'zh_TW']) {
        final value = localeArbs[locale]!['resumeDownload'] as String;
        expect(
          value,
          isNot(english['resumeDownload']),
          reason: 'app_$locale.arb still uses English for resumeDownload',
        );
        expect(
          value,
          predicate<String>(
            (text) => !const [
              'curriculum',
              'Curriculum',
              'currículum',
              'Currículum',
              'vitae',
              '简历',
              '履歷',
              'Ռեզյում',
              'რეზიუმ',
            ].any(text.contains),
            'not a CV/resume-noun translation',
          ),
          reason: 'app_$locale.arb maps resumeDownload to a CV/resume noun',
        );
      }
      for (final locale in ['bh', 'br', 'ch', 'li', 'mh', 'nr', 'oc', 'se']) {
        final value = localeArbs[locale]!['placesFoundCount'] as String;
        expect(
          value,
          isNot(english['placesFoundCount']),
          reason: 'app_$locale.arb still uses English for placesFoundCount',
        );
        expect(
          value,
          contains('{count}'),
          reason: 'app_$locale.arb lost the count placeholder',
        );
        expect(
          value,
          isNot(contains('\n')),
          reason: 'app_$locale.arb has multiline places found count copy',
        );
      }
      for (final locale in [
        'aa',
        'ab',
        'av',
        'ay',
        'ba',
        'bm',
        'bo',
        'cv',
        'dz',
        'ee',
        'ff',
        'fo',
        'gn',
        'gv',
        'iu',
        'jv',
        'kg',
        'kl',
        'kr',
        'lg',
        'ln',
        'lus',
        'mg',
        'ms',
        'nso',
        'om',
        'os',
        'qu',
        'rn',
        'sg',
        'ss',
        'ti',
        'tn',
        'to',
        'ts',
        'ty',
        've',
        'wo',
      ]) {
        final value = localeArbs[locale]!['placesFoundCount'] as String;
        expect(
          value,
          isNot(english['placesFoundCount']),
          reason: 'app_$locale.arb still uses English for placesFoundCount',
        );
        expect(
          value,
          contains('{count}'),
          reason: 'app_$locale.arb lost the count placeholder',
        );
        expect(
          value,
          isNot(contains('\n')),
          reason: 'app_$locale.arb has multiline places found count copy',
        );
      }
      for (final locale in ['bh', 'br', 'ch', 'li', 'mh', 'nr', 'oc', 'se']) {
        final value = localeArbs[locale]!['distanceAwayKm'] as String;
        expect(
          value,
          isNot(english['distanceAwayKm']),
          reason: 'app_$locale.arb still uses English for distanceAwayKm',
        );
        expect(
          value,
          contains('{distance}'),
          reason: 'app_$locale.arb lost the distance placeholder',
        );
        expect(
          value,
          isNot('{distance}'),
          reason: 'app_$locale.arb lost distance-unit context',
        );
        expect(
          value,
          isNot(contains('\n')),
          reason: 'app_$locale.arb has multiline distance copy',
        );
      }
      const distanceAwayLocales = [
        'aa',
        'ab',
        'ay',
        'be',
        'bg',
        'bo',
        'bs',
        'ee',
        'fo',
        'gn',
        'gv',
        'ha',
        'hr',
        'it',
        'iu',
        'jv',
        'kg',
        'kl',
        'kr',
        'kri',
        'la',
        'lg',
        'ln',
        'lus',
        'mg',
        'mi',
        'mk',
        'ms',
        'nso',
        'oc',
        'om',
        'os',
        'qu',
        'rw',
        'sg',
        'so',
        'ti',
        'to',
        'ts',
        'ty',
        'ug',
        'uk',
        've',
      ];
      const weakDistanceCopies = {
        '{distance} bam',
        '{distance} km',
        '{distance} км',
        '{distance} སྤྱི་ལེ།',
        '{distance} ko kiloomeeteeruuji',
        '{distance} ku birometero',
        '{distance} emakhilomitha',
        '{distance} dikilometara',
      };
      for (final locale in distanceAwayLocales) {
        final value = localeArbs[locale]!['distanceAwayKm'] as String;
        expect(
          value,
          isNot(english['distanceAwayKm']),
          reason: 'app_$locale.arb still uses English for distanceAwayKm',
        );
        expect(
          value,
          contains('{distance}'),
          reason: 'app_$locale.arb lost the distance placeholder',
        );
        expect(
          weakDistanceCopies,
          isNot(contains(value.trim().toLowerCase())),
          reason: 'app_$locale.arb kept unit-only distance copy',
        );
        expect(
          value,
          isNot(contains('\n')),
          reason: 'app_$locale.arb has multiline distance copy',
        );
      }
      for (final locale in ['bh', 'br', 'cv', 'li', 'nr', 'oc', 'os', 'se']) {
        final value = localeArbs[locale]!['placesApiError'] as String;
        expect(
          value,
          isNot(english['placesApiError']),
          reason: 'app_$locale.arb still uses English for placesApiError',
        );
        expect(
          value,
          contains('{statusCode}'),
          reason: 'app_$locale.arb lost the statusCode placeholder',
        );
        expect(
          value,
          isNot('{statusCode}'),
          reason: 'app_$locale.arb lost API error context',
        );
        expect(
          value,
          isNot(contains('\n')),
          reason: 'app_$locale.arb has multiline API error copy',
        );
      }
      for (final locale in [
        'aa',
        'ab',
        'av',
        'ba',
        'bm',
        'bo',
        'ce',
        'dz',
        'ee',
        'ff',
        'fo',
        'ga',
        'gv',
        'ha',
        'ig',
        'iu',
        'kg',
        'kl',
        'kr',
        'kri',
        'kv',
        'ln',
        'lus',
        'nso',
        'om',
        'qu',
        'rn',
        'sg',
        'ss',
        'to',
        'ts',
        'ty',
        've',
        'wo',
      ]) {
        final value = localeArbs[locale]!['placesApiError'] as String;
        expect(
          value,
          isNot(english['placesApiError']),
          reason: 'app_$locale.arb still uses English for placesApiError',
        );
        expect(
          value,
          contains('{statusCode}'),
          reason: 'app_$locale.arb lost the statusCode placeholder',
        );
        expect(
          value,
          isNot('{statusCode}'),
          reason: 'app_$locale.arb lost API error context',
        );
        expect(
          value,
          isNot(contains('\n')),
          reason: 'app_$locale.arb has multiline API error copy',
        );
      }
      for (final locale in ['lus', 'mai', 'sa', 'ti']) {
        expect(
          localeArbs[locale]!['deleteDownloadedFiles'],
          isNot(english['deleteDownloadedFiles']),
          reason:
              'app_$locale.arb still uses English for deleteDownloadedFiles',
        );
      }
      for (final locale in ['ay', 'lus', 'mai', 'sa', 'ti']) {
        expect(
          localeArbs[locale]!['downloadCanceledForReciter'],
          isNot(english['downloadCanceledForReciter']),
          reason:
              'app_$locale.arb still uses English for downloadCanceledForReciter',
        );
      }
      for (final locale in [
        'aa',
        'ab',
        'av',
        'ba',
        'bo',
        'ce',
        'ee',
        'fo',
        'iu',
        'kl',
        'kr',
        'kv',
        'ln',
        'nso',
        'om',
        'tn',
        'to',
        've',
        'wo',
      ]) {
        final value =
            localeArbs[locale]!['downloadCanceledForReciter'] as String;
        expect(
          value,
          isNot(english['downloadCanceledForReciter']),
          reason:
              'app_$locale.arb still uses English for downloadCanceledForReciter',
        );
        expect(
          value,
          contains('{reciter}'),
          reason:
              'app_$locale.arb lost the reciter placeholder for downloadCanceledForReciter',
        );
        expect(
          value,
          isNot(contains('\n')),
          reason:
              'app_$locale.arb has multiline downloadCanceledForReciter copy',
        );
      }
      const badDownloadCanceledFragments = {
        'ch': 'Ma kansela i dinestrosa para',
        'ff': 'Sosde ɗum dartinaama',
        'fj': 'Lavetaka na',
        'gv': "Ta'n {reciter} er ny scughey",
        'kg': 'Kubaka me katuka',
        'rn': 'Gukuraho vyasubitswe kubera',
        'sg': 'Téléchargé ni na',
        'ss': 'Kulandza kukhanseliwe',
        'ty': 'Ua faaorehia te {reciter}',
      };
      for (final entry in badDownloadCanceledFragments.entries) {
        expect(
          localeArbs[entry.key]!['downloadCanceledForReciter'],
          isNot(contains(entry.value)),
          reason: 'app_${entry.key}.arb kept unsafe canceled-download copy',
        );
      }
      for (final locale in ['ay', 'lus', 'mai', 'sa', 'ti']) {
        expect(
          localeArbs[locale]!['downloadFinishedForReciter'],
          isNot(english['downloadFinishedForReciter']),
          reason:
              'app_$locale.arb still uses English for downloadFinishedForReciter',
        );
      }
      for (final locale in [
        'aa',
        'ab',
        'av',
        'ba',
        'bo',
        'ce',
        'ee',
        'fo',
        'iu',
        'kg',
        'kl',
        'kr',
        'kv',
        'ln',
        'nso',
        'om',
        'sg',
        'ss',
        'tn',
        've',
        'wo',
      ]) {
        final value =
            localeArbs[locale]!['downloadFinishedForReciter'] as String;
        expect(
          value,
          isNot(english['downloadFinishedForReciter']),
          reason:
              'app_$locale.arb still uses English for downloadFinishedForReciter',
        );
        expect(
          value,
          contains('{reciter}'),
          reason:
              'app_$locale.arb lost the reciter placeholder for downloadFinishedForReciter',
        );
        expect(
          value,
          isNot(contains('\n')),
          reason:
              'app_$locale.arb has multiline downloadFinishedForReciter copy',
        );
      }
      const badDownloadFinishedFragments = {
        'ff': 'Sosde timmi ngam',
        'gv': 'Lurgaghey cliaghtey son',
        'rn': 'Gukuraho vyarangiye kuri',
        'to': 'Kuo fakakakato hono download',
        'ty': 'Ua oti te {reciter} no te tikiake',
      };
      for (final entry in badDownloadFinishedFragments.entries) {
        expect(
          localeArbs[entry.key]!['downloadFinishedForReciter'],
          isNot(contains(entry.value)),
          reason: 'app_${entry.key}.arb kept unsafe finished-download copy',
        );
      }
      expect(
        localeArbs['cy']!['placesDataSourceUnavailableBody'],
        isNot(english['placesDataSourceUnavailableBody']),
      );
      expect(
        localeArbs['ay']!['placesDataSourceUnavailableBody'],
        isNot(english['placesDataSourceUnavailableBody']),
      );
      for (final locale in ['ab', 'bo', 'br', 'ti', 'wo']) {
        final dataSourceBody =
            localeArbs[locale]!['placesDataSourceUnavailableBody'] as String;
        expect(
          dataSourceBody,
          isNot(english['placesDataSourceUnavailableBody']),
          reason:
              'app_$locale.arb still uses English for placesDataSourceUnavailableBody',
        );
        expect(
          dataSourceBody,
          contains('PLACES_OVERPASS_API_URL'),
          reason: 'app_$locale.arb changed the PLACES_OVERPASS_API_URL token',
        );
        expect(
          dataSourceBody,
          isNot(contains('\n')),
          reason: 'app_$locale.arb has multiline places data-source body copy',
        );
      }
      for (final locale in [
        'aa',
        'ba',
        'fj',
        'fo',
        'iu',
        'kg',
        'kl',
        'kr',
        'rn',
        'sg',
        'tn',
      ]) {
        final dataSourceBody =
            localeArbs[locale]!['placesDataSourceUnavailableBody'] as String;
        expect(
          dataSourceBody,
          isNot(english['placesDataSourceUnavailableBody']),
          reason:
              'app_$locale.arb still uses English for placesDataSourceUnavailableBody',
        );
        expect(
          dataSourceBody,
          contains('PLACES_OVERPASS_API_URL'),
          reason: 'app_$locale.arb changed the PLACES_OVERPASS_API_URL token',
        );
        expect(
          dataSourceBody,
          isNot(contains('\n')),
          reason: 'app_$locale.arb has multiline places data-source body copy',
        );
      }
      expect(
        localeArbs['ga']!['diagnosticsQuranCloudTablesMissing'],
        isNot(english['diagnosticsQuranCloudTablesMissing']),
      );
      expect(
        localeArbs['bh']!['diagnosticsQuranCloudTablesMissing'],
        isNot(english['diagnosticsQuranCloudTablesMissing']),
      );
      for (final locale in [
        'aa',
        'ab',
        'av',
        'ba',
        'bo',
        'ce',
        'ff',
        'iu',
        'kg',
        'kl',
        'kr',
        'kv',
        'rn',
        'sg',
        'ss',
        'tn',
        'to',
        've',
        'wo',
      ]) {
        final diagnosticsTables =
            localeArbs[locale]!['diagnosticsQuranCloudTablesMissing'] as String;
        expect(
          diagnosticsTables,
          isNot(english['diagnosticsQuranCloudTablesMissing']),
          reason:
              'app_$locale.arb still uses English for diagnosticsQuranCloudTablesMissing',
        );
        expect(
          diagnosticsTables,
          contains('Supabase'),
          reason:
              'app_$locale.arb lost the Supabase token for diagnosticsQuranCloudTablesMissing',
        );
        expect(
          diagnosticsTables,
          isNot(contains('\n')),
          reason:
              'app_$locale.arb has multiline diagnosticsQuranCloudTablesMissing copy',
        );
      }
      expect(
        localeArbs['br']!['diagnosticsQuranCloudTablesMissing'],
        isNot(contains("taolennoù ar c'hoad")),
        reason: 'app_br.arb mapped cloud to wood/forest semantics',
      );
      expect(
        localeArbs['oc']!['diagnosticsQuranCloudTablesMissing'],
        isNot(contains('recòrd en paquet')),
        reason: 'app_oc.arb mapped fallback to record/package semantics',
      );
      const badDiagnosticsTablesFragments = {
        'fj': 'activo de retroceso agrupado',
        'fo': 'bundnað afturhaldsvirkið',
        'gv': 'fallback glan',
        'ty': 'Te mau arii i roto i te Supabase',
      };
      for (final entry in badDiagnosticsTablesFragments.entries) {
        expect(
          localeArbs[entry.key]!['diagnosticsQuranCloudTablesMissing'],
          isNot(contains(entry.value)),
          reason:
              'app_${entry.key}.arb kept wrong-context Quran cloud table diagnostics copy',
        );
      }
      expect(
        localeArbs['ty']!['diagnosticsQuranCloudTablesMissing'],
        isNot(contains("te ho'i-faahou-raa")),
        reason: 'app_ty.arb kept incomplete Tahitian fallback-only copy',
      );
      expect(
        localeArbs['aa']!['diagnosticsQuranCloudJuzMissing'],
        isNot(english['diagnosticsQuranCloudJuzMissing']),
      );
      const badDiagnosticsJuzFragments = {
        'br': "metaroadennoù ar c'hoad",
        'ch': 'Ti guaha metadata gi i cloud',
        'iu': 'ᖃᕆᑕᐅᔭᒃᑯᑦ ᑐᑭᓯᒋᐊᕈᑎᒃᓴᐃᑦ',
        'kv': 'джуджыд метаданнӧйяс',
        'nr': 'Imethadatha yamafu ilahlekile',
        'oc': 'Las metadonadas del nívol',
        'os': 'Мигъы метабæрæггæнæнтæ',
      };
      for (final entry in badDiagnosticsJuzFragments.entries) {
        expect(
          localeArbs[entry.key]!['diagnosticsQuranCloudJuzMissing'],
          isNot(contains(entry.value)),
          reason:
              'app_${entry.key}.arb kept wrong-context Quran cloud juz diagnostics copy',
        );
      }
      expect(
        localeArbs['aa']!['chatbotCloudNotConfigured'],
        isNot(english['chatbotCloudNotConfigured']),
      );
      const badChatbotCloudFragments = {
        'ch': 'gi i internet',
        'fj': 'ena initaneti',
        'iu': 'ᖃᕆᑕᐅᔭᒃᑯᑦ ᑐᑭᒧᐊᒍᑎᒃᓴᖅ',
        'to': "Cloud API is not configured. 'Oku",
        'ty': 'i nia i te Internet',
      };
      for (final entry in badChatbotCloudFragments.entries) {
        expect(
          localeArbs[entry.key]!['chatbotCloudNotConfigured'],
          isNot(contains(entry.value)),
          reason:
              'app_${entry.key}.arb kept wrong-context chatbot cloud fallback copy',
        );
      }
      expect(
        localeArbs['aa']!['chatbotLocalNoInfo'],
        isNot(english['chatbotLocalNoInfo']),
      );
      const badChatbotLocalFragments = {
        'av': 'Переключитесь на Cloud AI для источниковых ответов',
        'ch': "Ti siña ma'ayek i guinahan Islam ni' ma'ayek",
        'fj': 'vaka-Isireli',
        'gv': 'verify ry-gheddyn',
        'iu': 'ᐃᓛᒃᑰᖅᑐᑦ ᑐᑭᒧᐊᒍᑎᖏᑦ',
        'mh': 'Verified local Islamic guidance ejjab',
        'ty': 'Aita â te aratairaa Islama no te fenua iho i roaa mai',
      };
      for (final entry in badChatbotLocalFragments.entries) {
        expect(
          localeArbs[entry.key]!['chatbotLocalNoInfo'],
          isNot(contains(entry.value)),
          reason:
              'app_${entry.key}.arb kept wrong-context chatbot local fallback copy',
        );
      }
      final aaOfflinePrompt =
          localeArbs['aa']!['chatbotOfflinePrompt'] as String;
      expect(aaOfflinePrompt, isNot(english['chatbotOfflinePrompt']));
      expect(
        aaOfflinePrompt,
        contains('\n\n'),
        reason: 'app_aa.arb lost the chatbot offline prompt paragraph break',
      );
      expect(
        localeArbs['iu']!['chatbotOfflinePrompt'],
        isNot(contains('ᖃᕆᑕᐅᔭᒃᑯᑦ ᐃᓛᒥᒃᑯᑦ')),
        reason:
            'app_iu.arb kept wrong-context online/computer wording for offline prompt',
      );
      expect(
        localeArbs['aa']!['chatbotOfflineSwitched'],
        isNot(english['chatbotOfflineSwitched']),
      );
      const badChatbotOfflineSwitchedFragments = {
        'fj': 'lutu mai na initaneti',
        'iu': 'ᖃᕆᑕᐅᔭᒃᑯᑦ ᑭᖑᕝᕕᐅᑎ',
        'sg': 'A kiri tënë na akiringo tënë ti Islam',
      };
      for (final entry in badChatbotOfflineSwitchedFragments.entries) {
        expect(
          localeArbs[entry.key]!['chatbotOfflineSwitched'],
          isNot(contains(entry.value)),
          reason:
              'app_${entry.key}.arb kept wrong-context chatbot offline switched copy',
        );
      }
      expect(
        localeArbs['th']!['placesLocationRequiredBody'],
        isNot(english['placesLocationRequiredBody']),
      );
      for (final locale in ['aa', 'ab', 'ba', 'bo', 'wo']) {
        final nearbyMosques = localeArbs[locale]!['nearbyMosques'] as String;
        final locationRequiredTitle =
            localeArbs[locale]!['placesLocationRequiredTitle'] as String;
        final locationRequiredBody =
            localeArbs[locale]!['placesLocationRequiredBody'] as String;
        expect(
          nearbyMosques,
          isNot(english['nearbyMosques']),
          reason: 'app_$locale.arb still uses English for nearbyMosques',
        );
        expect(
          nearbyMosques,
          isNot(contains(' .')),
          reason: 'app_$locale.arb has punctuation spacing debris',
        );
        expect(
          locationRequiredTitle,
          isNot(english['placesLocationRequiredTitle']),
          reason:
              'app_$locale.arb still uses English for placesLocationRequiredTitle',
        );
        expect(
          locationRequiredTitle,
          isNot(contains(' .')),
          reason: 'app_$locale.arb has punctuation spacing debris',
        );
        expect(
          locationRequiredBody,
          isNot(english['placesLocationRequiredBody']),
          reason:
              'app_$locale.arb still uses English for placesLocationRequiredBody',
        );
        expect(
          locationRequiredBody,
          isNot(contains('\n')),
          reason: 'app_$locale.arb has multiline location-required body copy',
        );
        expect(
          locationRequiredBody,
          isNot(contains(' .')),
          reason: 'app_$locale.arb has punctuation spacing debris',
        );
        expect(
          localeArbs[locale]!['placesSearchArea'],
          isNot(english['placesSearchArea']),
          reason: 'app_$locale.arb still uses English for placesSearchArea',
        );
        expect(
          localeArbs[locale]!['placesNetworkError'],
          isNot(english['placesNetworkError']),
          reason: 'app_$locale.arb still uses English for placesNetworkError',
        );
      }
      expect(
        localeArbs['br']!['placesLocationRequiredBody'],
        isNot(contains('resisted')),
        reason: 'app_br.arb kept English debris in location-required body',
      );
      expect(
        localeArbs['gv']!['placesLocationRequiredBody'],
        isNot(contains('Set location')),
        reason:
            'app_gv.arb kept mixed English/Manx location-required body copy',
      );
      for (final locale in ['aa', 'ab', 'ba', 'bo', 'ti', 'wo']) {
        final mapTilesTitle =
            localeArbs[locale]!['placesMapTilesUnavailableTitle'] as String;
        expect(
          mapTilesTitle,
          isNot(english['placesMapTilesUnavailableTitle']),
          reason:
              'app_$locale.arb still uses English for placesMapTilesUnavailableTitle',
        );
        expect(
          mapTilesTitle,
          isNot(contains(' .')),
          reason: 'app_$locale.arb has punctuation spacing debris',
        );
        expect(
          mapTilesTitle,
          isNot(contains('ስርሓት ስርሓት')),
          reason: 'app_$locale.arb has repeated machine-translation debris',
        );
      }
      expect(
        localeArbs['wo']!['placesMapTilesUnavailableTitle'],
        isNot('Carreaux de carte amul'),
        reason: 'app_wo.arb has mixed-language map tile copy',
      );
      for (final locale in ['aa', 'ab', 'ba', 'bo', 'wo']) {
        final mapTilesBody =
            localeArbs[locale]!['placesMapTilesUnavailableBody'] as String;
        expect(
          mapTilesBody,
          isNot(english['placesMapTilesUnavailableBody']),
          reason:
              'app_$locale.arb still uses English for placesMapTilesUnavailableBody',
        );
        expect(
          mapTilesBody,
          isNot(contains('\n')),
          reason: 'app_$locale.arb has multiline map tile body copy',
        );
        expect(
          mapTilesBody,
          isNot(contains(' .')),
          reason: 'app_$locale.arb has punctuation spacing debris',
        );
        expect(
          mapTilesBody,
          isNot(contains('PLACES_')),
          reason: 'app_$locale.arb exposes technical configuration tokens',
        );
      }
      expect(
        localeArbs['av']!['placesMapTilesUnavailableBody'],
        isNot(contains('Проверенный источник плитки карты')),
        reason: 'app_av.arb kept Russian map tile body debris',
      );
      expect(
        localeArbs['gv']!['placesMapTilesUnavailableBody'],
        isNot(contains('source tile map verify')),
        reason: 'app_gv.arb kept English word-salad map tile body debris',
      );
      expect(
        localeArbs['kv']!['placesMapTilesUnavailableBody'],
        isNot(contains('Верифицируйтӧм карта плитка источник')),
        reason: 'app_kv.arb kept mixed Russian/Komi map tile body debris',
      );
      for (final locale in ['aa', 'ab', 'ba', 'bo', 'wo']) {
        final dataSourceTitle =
            localeArbs[locale]!['placesDataSourceUnavailableTitle'] as String;
        expect(
          dataSourceTitle,
          isNot(english['placesDataSourceUnavailableTitle']),
          reason:
              'app_$locale.arb still uses English for placesDataSourceUnavailableTitle',
        );
        expect(
          dataSourceTitle,
          isNot(contains('\n')),
          reason: 'app_$locale.arb has multiline places data title copy',
        );
        expect(
          dataSourceTitle,
          isNot(contains(' .')),
          reason: 'app_$locale.arb has punctuation spacing debris',
        );
      }
      expect(
        localeArbs['av']!['placesDataSourceUnavailableTitle'],
        isNot(contains('БакӀал данные недоступны')),
        reason: 'app_av.arb kept mixed Russian/Avar places data title debris',
      );
      expect(
        localeArbs['gv']!['placesDataSourceUnavailableTitle'],
        isNot(contains('Places data nagh vel')),
        reason: 'app_gv.arb kept English/Manx mixed places data title debris',
      );
      expect(
        localeArbs['av']!['placesDataSourceUnavailableBody'],
        isNot(contains('Проверенная конечная')),
        reason: 'app_av.arb kept Russian/Avar places data body debris',
      );
      expect(
        localeArbs['gv']!['placesDataSourceUnavailableBody'],
        isNot(contains('endpoint data places verify')),
        reason: 'app_gv.arb kept English/Manx mixed places data body copy',
      );
      expect(
        localeArbs['to']!['placesDataSourceUnavailableBody'],
        isNot(contains('configured ha endpoint')),
        reason: 'app_to.arb kept English/Tongan mixed places data body copy',
      );
    });

    test(
      'tracks high-visibility analytics chatbot places l10n debt reduction',
      () {
        const keys = [
          'analytics',
          'prayerCompletion',
          'streaks',
          'dayStreak',
          'chatbotUseCloudAi',
          'chatbotOfflineDownloadLabel',
          'nearbyMosques',
          'placesFoundCount',
          'distanceAwayKm',
        ];
        final english = _readArbFile('lib/l10n/app_en.arb');
        final localeArbs = <String, Map<String, dynamic>>{};

        for (final file in Directory('lib/l10n').listSync().whereType<File>()) {
          final name = file.uri.pathSegments.last;
          if (!name.startsWith('app_') || !name.endsWith('.arb')) {
            continue;
          }
          final locale = name.replaceFirst('app_', '').replaceFirst('.arb', '');
          localeArbs[locale] = _readArbFile(file.path);
        }

        final report = buildL10nDebtReport(
          keys: keys,
          english: english,
          localeArbs: localeArbs,
        );

        expect(report.missingOrEmptyCount, 0);
        expect(report.placeholderMismatchCount, 0);
        expect(report.sameAsEnglishCount, lessThanOrEqualTo(339));

        const newlyLocalizedLocales = {
          'aa': [
            'analytics',
            'prayerCompletion',
            'streaks',
            'dayStreak',
            'chatbotUseCloudAi',
            'chatbotOfflineDownloadLabel',
          ],
          'bo': [
            'analytics',
            'prayerCompletion',
            'streaks',
            'dayStreak',
            'chatbotUseCloudAi',
            'chatbotOfflineDownloadLabel',
          ],
          'ff': [
            'analytics',
            'prayerCompletion',
            'streaks',
            'dayStreak',
            'chatbotUseCloudAi',
            'chatbotOfflineDownloadLabel',
          ],
          'kg': [
            'analytics',
            'prayerCompletion',
            'streaks',
            'dayStreak',
            'chatbotUseCloudAi',
            'chatbotOfflineDownloadLabel',
          ],
        };

        for (final entry in newlyLocalizedLocales.entries) {
          final arb = localeArbs[entry.key]!;
          for (final key in entry.value) {
            final value = arb[key] as String;
            expect(
              value,
              isNot(english[key]),
              reason: 'app_${entry.key}.arb still uses English for $key',
            );
            expect(
              value,
              isNot(contains('\n')),
              reason: 'app_${entry.key}.arb has multiline copy for $key',
            );
          }
        }
      },
    );

    test('tracks Quran and diagnostics runtime error l10n debt reduction', () {
      const keys = [
        'quranCheckFailed',
        'diagnosticsManifestReadFailed',
        'diagnosticsQuranCloudCheckFailed',
        'diagnosticsQuranCloudStructuralCheckFailed',
        'appErrorOccurred',
        'appUnknownError',
        'tafsirApiStatusError',
        'streamError',
      ];
      final english = _readArbFile('lib/l10n/app_en.arb');
      final localeArbs = <String, Map<String, dynamic>>{};

      for (final file in Directory('lib/l10n').listSync().whereType<File>()) {
        final name = file.uri.pathSegments.last;
        if (!name.startsWith('app_') || !name.endsWith('.arb')) {
          continue;
        }
        final locale = name.replaceFirst('app_', '').replaceFirst('.arb', '');
        localeArbs[locale] = _readArbFile(file.path);
      }

      final report = buildL10nDebtReport(
        keys: keys,
        english: english,
        localeArbs: localeArbs,
      );

      expect(report.missingOrEmptyCount, 0);
      expect(report.placeholderMismatchCount, 0);
      expect(report.sameAsEnglishCount, lessThanOrEqualTo(539));
      for (final locale in ['af', 'ar', 'zh', 'zh_CN', 'zh_TW']) {
        expect(
          localeArbs[locale]!['quranCheckFailed'],
          isNot(english['quranCheckFailed']),
          reason: 'app_$locale.arb still uses English for quranCheckFailed',
        );
      }
      for (final locale in ['tt', 'ug', 'zu']) {
        expect(
          localeArbs[locale]!['diagnosticsManifestReadFailed'],
          isNot(english['diagnosticsManifestReadFailed']),
          reason:
              'app_$locale.arb still uses English for diagnosticsManifestReadFailed',
        );
      }
    });

    test('tracks splash tagline l10n debt without accepting debris', () {
      const keys = ['splashTagline', 'onboarding1Title'];
      final english = _readArbFile('lib/l10n/app_en.arb');
      final localeArbs = <String, Map<String, dynamic>>{};

      for (final file in Directory('lib/l10n').listSync().whereType<File>()) {
        final name = file.uri.pathSegments.last;
        if (!name.startsWith('app_') || !name.endsWith('.arb')) {
          continue;
        }
        final locale = name.replaceFirst('app_', '').replaceFirst('.arb', '');
        localeArbs[locale] = _readArbFile(file.path);
      }

      final report = buildL10nDebtReport(
        keys: keys,
        english: english,
        localeArbs: localeArbs,
      );

      expect(report.missingOrEmptyCount, 0);
      expect(report.placeholderMismatchCount, 0);
      expect(report.sameAsEnglishCount, lessThanOrEqualTo(129));
      expect(
        localeArbs['sr']!['splashTagline'],
        isNot(english['splashTagline']),
      );
      expect(
        localeArbs['th']!['splashTagline'],
        isNot(english['splashTagline']),
      );
      for (final locale in ['bho', 'qu', 'lus']) {
        expect(
          localeArbs[locale]!['splashTagline'],
          english['splashTagline'],
          reason:
              'app_$locale.arb must fall back until a clean translation exists',
        );
      }
    });

    test('tracks partial download result l10n debt reduction', () {
      const key = 'downloadPartiallyFinishedForReciter';
      const localizedLocales = [
        'ak',
        'as',
        'ay',
        'bho',
        'bm',
        'cy',
        'dv',
        'ga',
        'gd',
        'gn',
        'hr',
        'ilo',
        'kri',
        'lg',
        'lus',
        'mai',
        'my',
        'qu',
        'sa',
        'th',
        'ti',
        'ts',
        'tw',
      ];
      final english = _readArbFile('lib/l10n/app_en.arb');
      final localeArbs = <String, Map<String, dynamic>>{};

      for (final file in Directory('lib/l10n').listSync().whereType<File>()) {
        final name = file.uri.pathSegments.last;
        if (!name.startsWith('app_') || !name.endsWith('.arb')) {
          continue;
        }
        final locale = name.replaceFirst('app_', '').replaceFirst('.arb', '');
        localeArbs[locale] = _readArbFile(file.path);
      }

      final report = buildL10nDebtReport(
        keys: const [key],
        english: english,
        localeArbs: localeArbs,
      );

      expect(report.missingOrEmptyCount, 0);
      expect(report.placeholderMismatchCount, 0);
      expect(report.sameAsEnglishCount, lessThanOrEqualTo(73));
      for (final locale in localizedLocales) {
        expect(
          localeArbs[locale]![key],
          isNot(english[key]),
          reason: 'app_$locale.arb still uses English for $key',
        );
      }
    });

    test('tracks download shell l10n debt reduction', () {
      const keys = [
        'downloadManager',
        'downloads',
        'downloading',
        'downloadComplete',
        'downloadFailed',
        'offlineDownloadManager',
        'downloadPreparing',
        'downloadingSurah',
        'downloadCompleted',
        'offlineQuranAudioPacks',
        'downloadedSurahProgress',
        'redownloadMissingRepair',
        'downloadAction',
        'downloadCancelling',
        'downloadCanceledForReciter',
        'downloadFinishedForReciter',
        'downloadPartiallyFinishedForReciter',
        'deletedOfflineFilesForReciter',
      ];
      final english = _readArbFile('lib/l10n/app_en.arb');
      final localeArbs = <String, Map<String, dynamic>>{};

      for (final file in Directory('lib/l10n').listSync().whereType<File>()) {
        final name = file.uri.pathSegments.last;
        if (!name.startsWith('app_') || !name.endsWith('.arb')) {
          continue;
        }
        final locale = name.replaceFirst('app_', '').replaceFirst('.arb', '');
        localeArbs[locale] = _readArbFile(file.path);
      }

      final report = buildL10nDebtReport(
        keys: keys,
        english: english,
        localeArbs: localeArbs,
      );

      expect(report.missingOrEmptyCount, 0);
      expect(report.placeholderMismatchCount, 0);
      expect(report.sameAsEnglishCount, lessThanOrEqualTo(896));
      expect(
        localeArbs['aa']!['offlineDownloadManager'],
        isNot(english['offlineDownloadManager']),
      );
      expect(
        localeArbs['ff']!['downloadCancelling'],
        isNot(english['downloadCancelling']),
      );
      expect(
        localeArbs['as']!['downloadManager'],
        isNot(english['downloadManager']),
      );
      expect(
        localeArbs['th']!['downloadingSurah'],
        isNot(english['downloadingSurah']),
      );
      expect(localeArbs['ti']!['downloading'], isNot(english['downloading']));
      expect(
        localeArbs['ak']!['downloadCompleted'],
        isNot(english['downloadCompleted']),
      );
      expect(
        localeArbs['cy']!['downloadComplete'],
        isNot(english['downloadComplete']),
      );
    });

    test('tracks settings audio and hadith l10n debt reduction', () {
      const keys = [
        'manageDatasets',
        'freeStorage',
        'audioVoice',
        'audioVoiceMisharyAlafasy',
        'audioVoiceAbdulBaset',
        'audioVoiceSudais',
        'hadithUnavailableTitle',
        'hadithUnavailableBody',
      ];
      final english = _readArbFile('lib/l10n/app_en.arb');
      final localeArbs = <String, Map<String, dynamic>>{};

      for (final file in Directory('lib/l10n').listSync().whereType<File>()) {
        final name = file.uri.pathSegments.last;
        if (!name.startsWith('app_') || !name.endsWith('.arb')) {
          continue;
        }
        final locale = name.replaceFirst('app_', '').replaceFirst('.arb', '');
        localeArbs[locale] = _readArbFile(file.path);
      }

      final report = buildL10nDebtReport(
        keys: keys,
        english: english,
        localeArbs: localeArbs,
      );

      expect(report.missingOrEmptyCount, 0);
      expect(report.placeholderMismatchCount, 0);
      expect(report.sameAsEnglishCount, lessThanOrEqualTo(411));
      for (final key in keys) {
        expect(
          localeArbs['am']![key],
          isNot(english[key]),
          reason: 'app_am.arb still uses English for $key',
        );
      }
      for (final locale in ['aa', 'bo', 'ff', 'fo', 'iu']) {
        for (final key in [
          'manageDatasets',
          'freeStorage',
          'audioVoice',
          'hadithUnavailableTitle',
          'hadithUnavailableBody',
        ]) {
          expect(
            localeArbs[locale]![key],
            isNot(english[key]),
            reason: 'app_$locale.arb still uses English for $key',
          );
        }
      }
    });

    test('tracks ibadah and qaza dashboard l10n debt reduction', () {
      const keys = [
        'fastingDebt',
        'dailyChecklist',
        'mandatoryDuty',
        'mandatoryPrayers',
        'prayerDebt',
        'qazaDebt',
        'resetQazaData',
        'resetQazaDebtQuestion',
        'sunnahAndOthers',
        'totalPrayers',
        'spiritualGrowth',
        'monthlyProgress',
        'statistics',
        'dailyZikr',
      ];
      final english = _readArbFile('lib/l10n/app_en.arb');
      final localeArbs = <String, Map<String, dynamic>>{};

      for (final file in Directory('lib/l10n').listSync().whereType<File>()) {
        final name = file.uri.pathSegments.last;
        if (!name.startsWith('app_') || !name.endsWith('.arb')) {
          continue;
        }
        final locale = name.replaceFirst('app_', '').replaceFirst('.arb', '');
        localeArbs[locale] = _readArbFile(file.path);
      }

      final report = buildL10nDebtReport(
        keys: keys,
        english: english,
        localeArbs: localeArbs,
      );

      expect(report.missingOrEmptyCount, 0);
      expect(report.placeholderMismatchCount, 0);
      expect(report.sameAsEnglishCount, lessThanOrEqualTo(435));
      for (final locale in ['aa', 'am', 'ar', 'bo', 'ff', 'ur', 'zh_CN']) {
        for (final key in keys) {
          expect(
            localeArbs[locale]![key],
            isNot(english[key]),
            reason: 'app_$locale.arb still uses English for $key',
          );
        }
      }
    });

    test('tracks diagnostics and Quran integrity l10n debt reduction', () {
      const keys = [
        'dbVersion',
        'quranIntegrity',
        'checkQuranDb',
        'healthCheckDesc',
        'incomplete',
        'missingArabic',
        'missingTurkish',
        'notSeeded',
        'premiumIntegrity',
        'verifyQuranContent',
        'ayahsCount',
        'surahsCount',
        'dbPath',
        'checkingPremium',
        'rerunSetup',
      ];
      final english = _readArbFile('lib/l10n/app_en.arb');
      final localeArbs = <String, Map<String, dynamic>>{};

      for (final file in Directory('lib/l10n').listSync().whereType<File>()) {
        final name = file.uri.pathSegments.last;
        if (!name.startsWith('app_') || !name.endsWith('.arb')) {
          continue;
        }
        final locale = name.replaceFirst('app_', '').replaceFirst('.arb', '');
        localeArbs[locale] = _readArbFile(file.path);
      }

      final report = buildL10nDebtReport(
        keys: keys,
        english: english,
        localeArbs: localeArbs,
      );

      expect(report.missingOrEmptyCount, 0);
      expect(report.placeholderMismatchCount, 0);
      expect(report.sameAsEnglishCount, lessThanOrEqualTo(483));
      for (final locale in ['aa', 'am', 'ar', 'bo', 'ff', 'sa', 'ti', 'ur']) {
        for (final key in keys) {
          final value = localeArbs[locale]![key] as String;
          expect(
            value,
            isNot(english[key]),
            reason: 'app_$locale.arb still uses English for $key',
          );
          expect(
            value,
            isNot(contains('\n')),
            reason: 'app_$locale.arb has multiline diagnostics copy for $key',
          );
        }
      }
      for (final locale in ['aa', 'am', 'ar', 'bo', 'ff', 'sa', 'ti', 'ur']) {
        expect(localeArbs[locale]!['dbVersion'], contains('{version}'));
        expect(localeArbs[locale]!['dbPath'], contains('{path}'));
        for (final key in [
          'ayahsCount',
          'surahsCount',
          'missingArabic',
          'missingTurkish',
        ]) {
          expect(localeArbs[locale]![key], contains('{count}'));
        }
      }
    });

    test('tracks settings qibla and zikr action l10n debt reduction', () {
      const keys = [
        'okLabel',
        'reset',
        'days',
        'changeTarget',
        'newTarget',
        'dhikrLibrary',
        'reduceSensorJitter',
        'rotateToFindQibla',
        'qiblaAligned',
        'compassSmoothing',
        'calibrationOffset',
        'currentOffset',
        'manualCorrectionDesc',
      ];
      final english = _readArbFile('lib/l10n/app_en.arb');
      final localeArbs = <String, Map<String, dynamic>>{};

      for (final file in Directory('lib/l10n').listSync().whereType<File>()) {
        final name = file.uri.pathSegments.last;
        if (!name.startsWith('app_') || !name.endsWith('.arb')) {
          continue;
        }
        final locale = name.replaceFirst('app_', '').replaceFirst('.arb', '');
        localeArbs[locale] = _readArbFile(file.path);
      }

      final report = buildL10nDebtReport(
        keys: keys,
        english: english,
        localeArbs: localeArbs,
      );

      expect(report.missingOrEmptyCount, 0);
      expect(report.placeholderMismatchCount, 0);
      expect(report.sameAsEnglishCount, lessThanOrEqualTo(495));
      for (final locale in [
        'aa',
        'am',
        'ar',
        'bo',
        'ff',
        'sa',
        'sd',
        'ti',
        'ur',
        'zh_CN',
      ]) {
        for (final key in keys) {
          final value = localeArbs[locale]![key] as String;
          expect(
            value,
            isNot(english[key]),
            reason: 'app_$locale.arb still uses English for $key',
          );
          expect(
            value,
            isNot(contains('\n')),
            reason: 'app_$locale.arb has multiline settings copy for $key',
          );
        }
        expect(localeArbs[locale]!['currentOffset'], contains('{offset}'));
      }
    });

    test('tracks prayer remaining duration l10n debt reduction', () {
      const keys = ['prayerRemainingHoursMinutes', 'prayerRemainingMinutes'];
      final english = _readArbFile('lib/l10n/app_en.arb');
      final localeArbs = <String, Map<String, dynamic>>{};

      for (final file in Directory('lib/l10n').listSync().whereType<File>()) {
        final name = file.uri.pathSegments.last;
        if (!name.startsWith('app_') || !name.endsWith('.arb')) {
          continue;
        }
        final locale = name.replaceFirst('app_', '').replaceFirst('.arb', '');
        localeArbs[locale] = _readArbFile(file.path);
      }

      final report = buildL10nDebtReport(
        keys: keys,
        english: english,
        localeArbs: localeArbs,
      );

      expect(report.missingOrEmptyCount, 0);
      expect(report.placeholderMismatchCount, 0);
      expect(report.sameAsEnglishCount, lessThanOrEqualTo(266));
      for (final locale in [
        'am',
        'as',
        'ay',
        'bh',
        'bho',
        'dv',
        'fi',
        'gn',
        'lus',
        'mai',
        'sa',
        'th',
        'ti',
      ]) {
        for (final key in keys) {
          final value = localeArbs[locale]![key] as String;
          expect(
            value,
            isNot(english[key]),
            reason: 'app_$locale.arb still uses English for $key',
          );
          expect(
            value.contains('\n') || value.contains('\r'),
            isFalse,
            reason: 'app_$locale.arb has multiline duration copy for $key',
          );
          expect(
            RegExp(
              r'(kk|Ukaxa|ukaxa|ukat|rehegua| के बा|इति|ዝብል)',
            ).hasMatch(value),
            isFalse,
            reason: 'app_$locale.arb has known bad duration copy for $key',
          );
          expect(value, contains('{minutes}'));
          if (key == 'prayerRemainingHoursMinutes') {
            expect(value, contains('{hours}'));
          }
        }
      }
    });

    test('tracks general navigation and account l10n debt reduction', () {
      const keys = [
        'ok',
        'edit',
        'premium',
        'bookmarks',
        'welcome',
        'skip',
        'proFeatures',
        'systemTheme',
        'lastRead',
        'reading',
      ];
      final english = _readArbFile('lib/l10n/app_en.arb');
      final localeArbs = <String, Map<String, dynamic>>{};

      for (final file in Directory('lib/l10n').listSync().whereType<File>()) {
        final name = file.uri.pathSegments.last;
        if (!name.startsWith('app_') || !name.endsWith('.arb')) {
          continue;
        }
        final locale = name.replaceFirst('app_', '').replaceFirst('.arb', '');
        localeArbs[locale] = _readArbFile(file.path);
      }

      final report = buildL10nDebtReport(
        keys: keys,
        english: english,
        localeArbs: localeArbs,
      );

      expect(report.missingOrEmptyCount, 0);
      expect(report.placeholderMismatchCount, 0);
      expect(report.sameAsEnglishCount, lessThanOrEqualTo(417));
      for (final locale in [
        'aa',
        'ay',
        'bh',
        'bho',
        'bo',
        'gn',
        'qu',
        'sa',
        'th',
        'ti',
      ]) {
        for (final key in keys) {
          final value = localeArbs[locale]![key] as String;
          expect(
            value,
            isNot(english[key]),
            reason: 'app_$locale.arb still uses English for $key',
          );
          expect(
            value.contains('\n') || value.contains('\r'),
            isFalse,
            reason: 'app_$locale.arb has multiline UI copy for $key',
          );
          expect(
            RegExp(
              r'(इति|ዝብል|ukax|Ukax|के बारे|बतावल|nisqa|rehegua)',
            ).hasMatch(value),
            isFalse,
            reason: 'app_$locale.arb has known bad UI copy for $key',
          );
        }
      }
    });

    test('tracks settings utility and premium l10n debt reduction', () {
      const keys = [
        'yes',
        'close',
        'yesterday',
        'searchLanguage',
        'continueReading',
        'enableNotifications',
        'removeAds',
        'unlockAll',
        'exclusiveContent',
        'upgradeToPro',
        'getLifetimePro',
        'degrees',
        'north',
        'gregorianCalendar',
      ];
      final english = _readArbFile('lib/l10n/app_en.arb');
      final localeArbs = <String, Map<String, dynamic>>{};

      for (final file in Directory('lib/l10n').listSync().whereType<File>()) {
        final name = file.uri.pathSegments.last;
        if (!name.startsWith('app_') || !name.endsWith('.arb')) {
          continue;
        }
        final locale = name.replaceFirst('app_', '').replaceFirst('.arb', '');
        localeArbs[locale] = _readArbFile(file.path);
      }

      final report = buildL10nDebtReport(
        keys: keys,
        english: english,
        localeArbs: localeArbs,
      );

      expect(report.missingOrEmptyCount, 0);
      expect(report.placeholderMismatchCount, 0);
      expect(report.sameAsEnglishCount, lessThanOrEqualTo(423));
      for (final locale in ['ay', 'bh', 'bho', 'gn', 'qu', 'sa', 'th', 'ti']) {
        for (final key in keys) {
          final value = localeArbs[locale]![key] as String;
          expect(
            value,
            isNot(english[key]),
            reason: 'app_$locale.arb still uses English for $key',
          );
          expect(
            value.contains('\n') || value.contains('\r'),
            isFalse,
            reason: 'app_$locale.arb has multiline settings copy for $key',
          );
          expect(
            RegExp(
              r'(इति|ዝብል|ukax|Ukax|के बारे|बतावल|nisqa|rehegua| के बा)',
            ).hasMatch(value),
            isFalse,
            reason: 'app_$locale.arb has known bad settings copy for $key',
          );
        }
      }
    });

    test('rejects multiline chatbot runtime output', () {
      final value = resolveTranslatedArbValue(
        key: 'chatbotGreeting',
        source:
            'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.',
        currentValue:
            'Selamun Aleykum! Ben Islami asistaninizim. Namaz, oruc, zekat veya herhangi bir Islami konu hakkinda soru sorun.',
        candidate:
            'means the following.\nSelamun Aleykum! Ben Islami asistaninizim.',
      );

      expect(
        value,
        'Selamun Aleykum! Ben Islami asistaninizim. Namaz, oruc, zekat veya herhangi bir Islami konu hakkinda soru sorun.',
      );
    });

    test('rejects multiline chatbot mode control output', () {
      final offlineModeValue = resolveTranslatedArbValue(
        key: 'offlineMode',
        source: 'Offline Mode',
        currentValue: 'Cevrimdisi Mod',
        candidate: 'means the following.\nCevrimdisi Mod',
      );

      final localLabelValue = resolveTranslatedArbValue(
        key: 'chatbotLocalAiLabel',
        source: 'Offline Fallback',
        currentValue: 'Cevrimdisi Yedek',
        candidate: 'means the following.\nCevrimdisi Yedek',
      );

      final cancelValue = resolveTranslatedArbValue(
        key: 'cancel',
        source: 'Cancel',
        currentValue: 'Iptal',
        candidate: 'means the following.\nIptal',
      );

      expect(offlineModeValue, 'Cevrimdisi Mod');
      expect(localLabelValue, 'Cevrimdisi Yedek');
      expect(cancelValue, 'Iptal');
    });

    test('rejects multiline onboarding output', () {
      final titleValue = resolveTranslatedArbValue(
        key: 'onboarding1Title',
        source: 'Welcome to Sirat-ı Nur',
        currentValue: "Sirat-ı Nur'a Hos Geldiniz",
        candidate: "means the following.\nSirat-ı Nur'a Hos Geldiniz",
      );

      final nextValue = resolveTranslatedArbValue(
        key: 'next',
        source: 'Next',
        currentValue: 'Sonraki',
        candidate: 'means the following.\nSonraki',
      );

      expect(titleValue, "Sirat-ı Nur'a Hos Geldiniz");
      expect(nextValue, 'Sonraki');
    });

    test('preserves Sirat-i Nur brand in onboarding output', () {
      final value = resolveTranslatedArbValue(
        key: 'onboarding1Title',
        source: 'Welcome to Sirat-ı Nur',
        currentValue: 'Welcome to Sirat-ı Nur',
        candidate: 'Willkommen bei Way of Allah',
      );

      expect(value, 'Willkommen bei Sirat-ı Nur');
    });

    test('repairs stale onboarding brand in existing values', () {
      final value = resolveTranslatedArbValue(
        key: 'onboarding1Title',
        source: 'Welcome to Sirat-ı Nur',
        currentValue: 'Welcome to Way of Allah',
        candidate: 'Welcome to Sirat-ı Nur',
      );

      expect(value, 'Welcome to Sirat-ı Nur');
    });

    test('rejects multiline analytics label output', () {
      final analyticsValue = resolveTranslatedArbValue(
        key: 'analytics',
        source: 'Analytics',
        currentValue: 'Analitik',
        candidate: 'means the following.\nAnalitik',
      );

      final streaksValue = resolveTranslatedArbValue(
        key: 'streaks',
        source: 'Streaks',
        currentValue: 'Seriler',
        candidate: 'means the following.\nSeriler',
      );

      final prayerCompletionValue = resolveTranslatedArbValue(
        key: 'prayerCompletion',
        source: 'Prayer Completion',
        currentValue: 'Namaz Tamamlama',
        candidate: 'means the following.\nNamaz Tamamlama',
      );

      expect(analyticsValue, 'Analitik');
      expect(streaksValue, 'Seriler');
      expect(prayerCompletionValue, 'Namaz Tamamlama');
    });

    test('rejects multiline offline audio label output', () {
      final value = resolveTranslatedArbValue(
        key: 'audioPlayFailed',
        source: 'Audio playback failed',
        currentValue: 'Ses calinamadi',
        candidate: 'means the following.\nSes calinamadi',
      );
      final playControl = resolveTranslatedArbValue(
        key: 'playSurahAudio',
        source: 'Play surah audio',
        currentValue: 'Sure sesini cal',
        candidate: 'means the following.\nSure sesini cal',
      );
      final pauseControl = resolveTranslatedArbValue(
        key: 'pauseSurahAudio',
        source: 'Pause surah audio',
        currentValue: 'Sure sesini duraklat',
        candidate: 'means the following.\nSure sesini duraklat',
      );

      expect(value, 'Ses calinamadi');
      expect(playControl, 'Sure sesini cal');
      expect(pauseControl, 'Sure sesini duraklat');
    });

    test('rejects multiline zikr counter hint output', () {
      final labelValue = resolveTranslatedArbValue(
        key: 'zikr',
        source: 'Zikr',
        currentValue: 'Zikir',
        candidate: 'means the following.\nZikir',
      );

      final value = resolveTranslatedArbValue(
        key: 'tapToCount',
        source: 'Tap to count',
        currentValue: 'Saymak icin dokunun',
        candidate: 'means the following.\nSaymak icin dokunun',
      );

      expect(labelValue, 'Zikir');
      expect(value, 'Saymak icin dokunun');
    });

    test('rejects multiline qibla calibration output', () {
      final value = resolveTranslatedArbValue(
        key: 'qiblaCalibration',
        source: 'Qibla Calibration',
        currentValue: 'Kible Kalibrasyonu',
        candidate: 'means the following.\nKible Kalibrasyonu',
      );

      expect(value, 'Kible Kalibrasyonu');
    });

    test('rejects multiline qibla compass shell output', () {
      final directionValue = resolveTranslatedArbValue(
        key: 'qiblaDirection',
        source: 'Qibla Direction',
        currentValue: 'Kible Yonu',
        candidate: 'means the following.\nKible Yonu',
      );

      final turnValue = resolveTranslatedArbValue(
        key: 'turnDevice',
        source: 'Turn your device to face the Qibla',
        currentValue: 'Cihazinizi kibleye cevirin',
        candidate: 'means the following.\nCihazinizi kibleye cevirin',
      );

      expect(directionValue, 'Kible Yonu');
      expect(turnValue, 'Cihazinizi kibleye cevirin');
    });

    test('rejects multiline common action output', () {
      final searchValue = resolveTranslatedArbValue(
        key: 'search',
        source: 'Search',
        currentValue: 'Ara',
        candidate: 'means the following.\nAra',
      );

      final retryValue = resolveTranslatedArbValue(
        key: 'retry',
        source: 'Retry',
        currentValue: 'Tekrar dene',
        candidate: 'means the following.\nTekrar dene',
      );

      final bookmarkValue = resolveTranslatedArbValue(
        key: 'addBookmark',
        source: 'Add Bookmark',
        currentValue: 'Yer imi ekle',
        candidate: 'means the following.\nYer imi ekle',
      );

      final noValue = resolveTranslatedArbValue(
        key: 'no',
        source: 'No',
        currentValue: 'Hayir',
        candidate: 'means the following.\nHayir',
      );

      expect(searchValue, 'Ara');
      expect(retryValue, 'Tekrar dene');
      expect(bookmarkValue, 'Yer imi ekle');
      expect(noValue, 'Hayir');
    });

    test('rejects multiline quran reading shell output', () {
      final quranValue = resolveTranslatedArbValue(
        key: 'quran',
        source: 'Quran',
        currentValue: 'Kuran',
        candidate: 'means the following.\nKuran',
      );

      final surahValue = resolveTranslatedArbValue(
        key: 'surah',
        source: 'Surah',
        currentValue: 'Sure',
        candidate: 'means the following.\nSure',
      );

      final pageValue = resolveTranslatedArbValue(
        key: 'page',
        source: 'Page',
        currentValue: 'Sayfa',
        candidate: 'means the following.\nSayfa',
      );

      expect(quranValue, 'Kuran');
      expect(surahValue, 'Sure');
      expect(pageValue, 'Sayfa');
    });

    test('rejects multiline prayer and library shell output', () {
      final prayerTimesValue = resolveTranslatedArbValue(
        key: 'prayerTimes',
        source: 'Prayer Times',
        currentValue: 'Namaz Vakitleri',
        candidate: 'means the following.\nNamaz Vakitleri',
      );

      final namesOfAllahValue = resolveTranslatedArbValue(
        key: 'namesOfAllah',
        source: 'Names of Allah',
        currentValue: "Allah'in Isimleri",
        candidate: "means the following.\nAllah'in Isimleri",
      );

      expect(prayerTimesValue, 'Namaz Vakitleri');
      expect(namesOfAllahValue, "Allah'in Isimleri");
    });

    test('rejects multiline theme mode output', () {
      final value = resolveTranslatedArbValue(
        key: 'systemDefault',
        source: 'System Default',
        currentValue: 'Sistem Varsayilani',
        candidate: 'means the following.\nSistem Varsayilani',
      );

      expect(value, 'Sistem Varsayilani');
    });

    test('rejects multiline downloads output', () {
      final value = resolveTranslatedArbValue(
        key: 'downloads',
        source: 'Downloads',
        currentValue: 'Indirmeler',
        candidate: 'means the following.\nIndirmeler',
      );

      expect(value, 'Indirmeler');
    });

    test('rejects case-only English download output', () {
      final value = resolveTranslatedArbValue(
        key: 'downloadAction',
        source: 'Download',
        currentValue: 'Download',
        candidate: 'DOWNLOAD',
      );

      expect(value, 'Download');
    });

    test('preserves existing case-only English fallback without churn', () {
      final value = resolveTranslatedArbValue(
        key: 'totalZakat',
        source: 'Total Zakat',
        currentValue: 'Total zakat',
        candidate: 'Total Zakat',
      );

      expect(value, 'Total zakat');
    });

    test(
      'preserves stronger download action labels over weak forced output',
      () {
        final italianValue = resolveTranslatedArbValue(
          key: 'downloadAction',
          source: 'Download',
          currentValue: 'Scarica',
          candidate: 'Scaricamento',
        );

        final hindiValue = resolveTranslatedArbValue(
          key: 'downloadAction',
          source: 'Download',
          currentValue: 'डाउनलोड करें',
          candidate: 'डाउनलोड करना',
        );

        final polishValue = resolveTranslatedArbValue(
          key: 'downloadAction',
          source: 'Download',
          currentValue: 'Pobierz',
          candidate: 'Pobierać',
        );

        final aymaraValue = resolveTranslatedArbValue(
          key: 'downloadAction',
          source: 'Download',
          currentValue: 'Ukax mä juk’a pachanakanwa',
          candidate: 'Apaqaña',
        );

        expect(italianValue, 'Scarica');
        expect(hindiValue, 'डाउनलोड करें');
        expect(polishValue, 'Pobierz');
        expect(aymaraValue, 'Apaqaña');
      },
    );

    test('rejects known general machine translation debris', () {
      final settingsValue = resolveTranslatedArbValue(
        key: 'settings',
        source: 'Settings',
        currentValue: 'Ukax mä juk’a pachanakanwa',
        candidate: 'Ukax mä juk’a pachanakanwa',
      );

      final pageValue = resolveTranslatedArbValue(
        key: 'page',
        source: 'Page',
        currentValue: 'Ukax mä juk’a pachanakanwa',
        candidate: 'Ukax mä juk’a pachanakanwa',
      );

      final quranValue = resolveTranslatedArbValue(
        key: 'quran',
        source: 'Quran',
        currentValue: 'Quran ukax mä juk’a pachanakanwa',
        candidate: 'Quran ukax mä juk’a pachanakanwa',
      );

      expect(settingsValue, 'Settings');
      expect(pageValue, 'Page');
      expect(quranValue, 'Quran');
    });

    test('rejects known prayer method and name debris', () {
      final madhabValue = resolveTranslatedArbValue(
        key: 'madhab',
        source: 'Asr Juristic Method',
        currentValue: 'Asr Método Jurídico ukax mä juk’a pachanakanwa',
        candidate: 'Asr Método Jurídico ukax mä juk’a pachanakanwa',
      );

      final dhuhrValue = resolveTranslatedArbValue(
        key: 'dhuhr',
        source: 'Dhuhr',
        currentValue: 'Dhuhr ukat juk’ampinaka',
        candidate: 'Dhuhr ukat juk’ampinaka',
      );

      final maghribValue = resolveTranslatedArbValue(
        key: 'maghrib',
        source: 'Maghrib',
        currentValue: 'Maghrib ukax mä juk’a pachanakanwa',
        candidate: 'Maghrib ukax mä juk’a pachanakanwa',
      );

      final fajrAngleValue = resolveTranslatedArbValue(
        key: 'fajrAngle',
        source: 'Fajr Angle',
        currentValue: '',
        candidate: 'Fajr Angle a ɛyɛ fɛ',
      );

      final ishaAngleValue = resolveTranslatedArbValue(
        key: 'ishaAngle',
        source: 'Isha Angle',
        currentValue: '',
        candidate: 'Isha Angle na ɔkyerɛwee',
      );

      final preservedFajrAngleValue = resolveTranslatedArbValue(
        key: 'fajrAngle',
        source: 'Fajr Angle',
        currentValue: 'İmsak Açısı',
        candidate: 'Fajr Ángulo ukax mä juk’a pachanakanwa',
      );

      expect(madhabValue, 'Asr Juristic Method');
      expect(dhuhrValue, 'Dhuhr');
      expect(maghribValue, 'Maghrib');
      expect(fajrAngleValue, 'Fajr Angle');
      expect(ishaAngleValue, 'Isha Angle');
      expect(preservedFajrAngleValue, 'İmsak Açısı');
    });

    test('rejects known runtime status debris', () {
      final loadingValue = resolveTranslatedArbValue(
        key: 'loading',
        source: 'Loading...',
        currentValue: 'Ukax mä...',
        candidate: 'Ukax mä...',
      );

      final downloadingValue = resolveTranslatedArbValue(
        key: 'downloading',
        source: 'Downloading...',
        currentValue: 'Ukax mä...',
        candidate: 'Ukax mä...',
      );

      final downloadCompleteValue = resolveTranslatedArbValue(
        key: 'downloadComplete',
        source: 'Download Complete',
        currentValue: 'Descargar Completo ukax mä juk’a pachanakanwa',
        candidate: 'Descargar Completo ukax mä juk’a pachanakanwa',
      );

      expect(loadingValue, 'Loading...');
      expect(downloadingValue, 'Downloading...');
      expect(downloadCompleteValue, 'Download Complete');
    });

    test('rejects known Aymara home dashboard debris', () {
      final liveTvValue = resolveTranslatedArbValue(
        key: 'liveTv',
        source: 'Live TV',
        currentValue: 'TV en vivo ukax mä jach’a uñacht’äwiwa',
        candidate: 'TV en vivo ukax mä jach’a uñacht’äwiwa',
      );

      final ibadahTrackerValue = resolveTranslatedArbValue(
        key: 'ibadahTracker',
        source: 'Ibadah Tracker',
        currentValue: 'Ibadah ukax mä juk’a pachanakanwa',
        candidate: 'Ibadah ukax mä juk’a pachanakanwa',
      );

      final analyticsValue = resolveTranslatedArbValue(
        key: 'analytics',
        source: 'Analytics',
        currentValue: 'Análisis ukax mä juk’a pachanakanwa',
        candidate: 'Análisis ukax mä juk’a pachanakanwa',
      );

      expect(liveTvValue, 'Live TV');
      expect(ibadahTrackerValue, 'Ibadah Tracker');
      expect(analyticsValue, 'Analytics');
    });

    test('rejects wrong-context splash tagline output', () {
      const source = 'Islamic Way of Light';

      final sourceResidueValue = resolveTranslatedArbValue(
        key: 'splashTagline',
        source: source,
        currentValue: source,
        candidate: 'Islamic Way of Light nisqa',
      );
      final explanatoryValue = resolveTranslatedArbValue(
        key: 'splashTagline',
        source: source,
        currentValue: source,
        candidate: 'इस्लामी वे ऑफ लाइट के बारे में बतावल गइल बा',
      );
      final validValue = resolveTranslatedArbValue(
        key: 'splashTagline',
        source: source,
        currentValue: source,
        candidate: 'Ffordd Goleuni Islamaidd',
      );

      expect(sourceResidueValue, source);
      expect(explanatoryValue, source);
      expect(validValue, 'Ffordd Goleuni Islamaidd');
    });

    test('rejects multiline ibadah tracker output', () {
      final value = resolveTranslatedArbValue(
        key: 'ibadahTracker',
        source: 'Ibadah Tracker',
        currentValue: 'Ibadah Takibi',
        candidate: 'means the following.\nIbadah Takibi',
      );

      expect(value, 'Ibadah Takibi');
    });

    test('rejects multiline live tv action output', () {
      final streamErrorValue = resolveTranslatedArbValue(
        key: 'streamError',
        source: 'Stream error',
        currentValue: 'Yayin hatasi',
        candidate: 'means the following.\nYayin hatasi',
      );

      final checkConnectionValue = resolveTranslatedArbValue(
        key: 'checkConnection',
        source: 'Please check your connection',
        currentValue: 'Lutfen baglantinizi kontrol edin',
        candidate: 'means the following.\nLutfen baglantinizi kontrol edin',
      );

      expect(streamErrorValue, 'Yayin hatasi');
      expect(checkConnectionValue, 'Lutfen baglantinizi kontrol edin');
    });

    test('rejects multiline settings shell output', () {
      final currentLocationValue = resolveTranslatedArbValue(
        key: 'currentLocation',
        source: 'Current Location (GPS)',
        currentValue: 'Guncel Konum (GPS)',
        candidate: 'means the following.\nGuncel Konum (GPS)',
      );

      final cacheClearedValue = resolveTranslatedArbValue(
        key: 'cacheClearedSuccess',
        source: 'Cache cleared successfully',
        currentValue: 'Onbellek temizlendi',
        candidate: 'means the following.\nOnbellek temizlendi',
      );

      expect(currentLocationValue, 'Guncel Konum (GPS)');
      expect(cacheClearedValue, 'Onbellek temizlendi');
    });

    test('rejects multiline home tracking shell output', () {
      final homeValue = resolveTranslatedArbValue(
        key: 'home',
        source: 'Home',
        currentValue: 'Ana Sayfa',
        candidate: 'means the following.\nAna Sayfa',
      );

      final progressValue = resolveTranslatedArbValue(
        key: 'weeklyProgress',
        source: 'Weekly Progress',
        currentValue: 'Haftalik Ilerleme',
        candidate: 'means the following.\nHaftalik Ilerleme',
      );

      final doneValue = resolveTranslatedArbValue(
        key: 'done',
        source: 'Done',
        currentValue: 'Tamamlandi',
        candidate: 'means the following.\nTamamlandi',
      );

      expect(homeValue, 'Ana Sayfa');
      expect(progressValue, 'Haftalik Ilerleme');
      expect(doneValue, 'Tamamlandi');
    });

    test('rejects multiline settings about output', () {
      final shareAppValue = resolveTranslatedArbValue(
        key: 'shareApp',
        source: 'Share App',
        currentValue: 'Uygulamayi Paylas',
        candidate: 'means the following.\nUygulamayi Paylas',
      );

      final shareAppMessageValue = resolveTranslatedArbValue(
        key: 'shareAppMessage',
        source:
            'Check out {appName}: The ultimate Islamic lifestyle app! {url}',
        currentValue:
            '{appName} uygulamasina goz atin: En kapsamli Islami yasam uygulamasi! {url}',
        candidate:
            'means the following.\n{appName} uygulamasina goz atin: En kapsamli Islami yasam uygulamasi! {url}',
      );

      expect(shareAppValue, 'Uygulamayi Paylas');
      expect(
        shareAppMessageValue,
        '{appName} uygulamasina goz atin: En kapsamli Islami yasam uygulamasi! {url}',
      );
    });

    test('rejects multiline premium error output', () {
      final productUnavailableValue = resolveTranslatedArbValue(
        key: 'premiumProductUnavailable',
        source:
            'Premium product is not available right now. Please try again later.',
        currentValue: 'Premium urun su anda kullanilamiyor.',
        candidate: 'means the following.\nPremium urun su anda kullanilamiyor.',
      );

      final purchaseFailedValue = resolveTranslatedArbValue(
        key: 'premiumPurchaseFailed',
        source: 'Purchase could not be completed. Please try again.',
        currentValue: 'Satin alma tamamlanamadi. Lutfen tekrar deneyin.',
        candidate:
            'means the following.\nSatin alma tamamlanamadi. Lutfen tekrar deneyin.',
      );

      expect(productUnavailableValue, 'Premium urun su anda kullanilamiyor.');
      expect(
        purchaseFailedValue,
        'Satin alma tamamlanamadi. Lutfen tekrar deneyin.',
      );
    });

    test('rejects known wrong-context status action translations', () {
      final applyValue = resolveTranslatedArbValue(
        key: 'apply',
        source: 'Apply',
        currentValue: 'Bewerben',
        candidate: 'Änderungen anwenden',
      );

      final premiumValue = resolveTranslatedArbValue(
        key: 'premiumNotFound',
        source: 'Premium not found.',
        currentValue: 'Prämie nicht gefunden.',
        candidate: 'Premium-Abonnement nicht gefunden.',
      );

      final arabicPremiumValue = resolveTranslatedArbValue(
        key: 'premiumVerified',
        source: 'Premium verified.',
        currentValue: 'تم التحقق من قسط.',
        candidate: 'تم التحقق من الاشتراك المميز.',
      );

      final onboardingValue = resolveTranslatedArbValue(
        key: 'resetOnboarding',
        source: 'Reset Onboarding',
        currentValue: '重置入职',
        candidate: '重置入门设置',
      );

      expect(applyValue, 'Änderungen anwenden');
      expect(premiumValue, 'Premium-Abonnement nicht gefunden.');
      expect(arabicPremiumValue, 'تم التحقق من الاشتراك المميز.');
      expect(onboardingValue, '重置入门设置');
    });

    test('falls back to source when only wrong-context copy exists', () {
      final applyValue = resolveTranslatedArbValue(
        key: 'apply',
        source: 'Apply',
        currentValue: 'Bewerben',
        candidate: 'Bewerben',
      );

      final chinesePremiumValue = resolveTranslatedArbValue(
        key: 'premiumVerified',
        source: 'Premium verified.',
        currentValue: '保费已验证。',
        candidate: '保费已验证。',
      );

      final onboardingValue = resolveTranslatedArbValue(
        key: 'resetOnboarding',
        source: 'Reset Onboarding',
        currentValue: '重置入职',
        candidate: '重置入职',
      );

      expect(applyValue, 'Apply');
      expect(chinesePremiumValue, 'Premium verified.');
      expect(onboardingValue, 'Reset Onboarding');
    });

    test('rejects known mixed-language download translations', () {
      final completeValue = resolveTranslatedArbValue(
        key: 'downloadComplete',
        source: 'Download Complete',
        currentValue: 'Download Complete',
        candidate: 'Télécharger Complete',
      );

      final failedValue = resolveTranslatedArbValue(
        key: 'downloadFailed',
        source: 'Download Failed',
        currentValue: 'Falha ao baixar',
        candidate: 'Téléchargement Failed',
      );

      final managerValue = resolveTranslatedArbValue(
        key: 'downloadManager',
        source: 'Download Manager',
        currentValue: 'Download Manager',
        candidate: 'Télécharger Manager (Téléchargement Manager).',
      );

      final deleteValue = resolveTranslatedArbValue(
        key: 'deleteDownloadedFiles',
        source: 'Delete Downloaded Files',
        currentValue: '',
        candidate: 'Fichier Téléchargées (Filew Téléchargements) Bɔ',
      );
      final manxDeleteValue = resolveTranslatedArbValue(
        key: 'deleteDownloadedFiles',
        source: 'Delete Downloaded Files',
        currentValue: '',
        candidate: 'Smooinee er coadanyn',
      );
      final kongoDeleteValue = resolveTranslatedArbValue(
        key: 'deleteDownloadedFiles',
        source: 'Delete Downloaded Files',
        currentValue: '',
        candidate: 'Kufwa bafishe yina nge me baka',
      );
      final tahitianDeleteValue = resolveTranslatedArbValue(
        key: 'deleteDownloadedFiles',
        source: 'Delete Downloaded Files',
        currentValue: '',
        candidate: "Tamau i te mau hoho'a i tikiakehia",
      );
      final chamorroCanceledValue = resolveTranslatedArbValue(
        key: 'downloadCanceledForReciter',
        source: 'Download canceled for {reciter}.',
        currentValue: '',
        candidate: "Ma kansela i lina'la' para {reciter}.",
      );
      final chamorroFinishedValue = resolveTranslatedArbValue(
        key: 'downloadFinishedForReciter',
        source: 'Download completed for {reciter}.',
        currentValue: '',
        candidate: "Ma na'funhayan i {reciter}.",
      );

      expect(completeValue, 'Download Complete');
      expect(failedValue, 'Falha ao baixar');
      expect(managerValue, 'Download Manager');
      expect(deleteValue, 'Delete Downloaded Files');
      expect(manxDeleteValue, 'Delete Downloaded Files');
      expect(kongoDeleteValue, 'Delete Downloaded Files');
      expect(tahitianDeleteValue, 'Delete Downloaded Files');
      expect(chamorroCanceledValue, 'Download canceled for {reciter}.');
      expect(chamorroFinishedValue, 'Download completed for {reciter}.');
    });

    test('rejects resume download translations that mean curriculum vitae', () {
      final catalanValue = resolveTranslatedArbValue(
        key: 'resumeDownload',
        source: 'Resume Download',
        currentValue: 'Descàrrega de currículum',
        candidate: 'Continua la baixada',
      );

      final chineseValue = resolveTranslatedArbValue(
        key: 'resumeDownload',
        source: 'Resume Download',
        currentValue: '简历下载',
        candidate: '继续下载',
      );

      final georgianValue = resolveTranslatedArbValue(
        key: 'resumeDownload',
        source: 'Resume Download',
        currentValue: 'რეზიუმეს ჩამოტვირთვა',
        candidate: 'ჩამოტვირთვის გაგრძელება',
      );
      final manxValue = resolveTranslatedArbValue(
        key: 'resumeDownload',
        source: 'Resume Download',
        currentValue: 'Resume Download',
        candidate: 'Lesh lesh',
      );
      final kirundiValue = resolveTranslatedArbValue(
        key: 'resumeDownload',
        source: 'Resume Download',
        currentValue: 'Resume Download',
        candidate: 'Bandanya gukuraho',
      );

      expect(catalanValue, 'Continua la baixada');
      expect(chineseValue, '继续下载');
      expect(georgianValue, 'ჩამოტვირთვის გაგრძელება');
      expect(manxValue, 'Resume Download');
      expect(kirundiValue, 'Resume Download');
    });

    test('rejects quran audio source status copy that exposes cloud seed', () {
      const source =
          'Verified Quran audio pack is incomplete ({available}/{total}). Try again after the audio catalog is updated.';

      final englishValue = resolveTranslatedArbValue(
        key: 'quranAudioSourcesIncomplete',
        source: source,
        currentValue:
            'Verified Quran audio pack is incomplete ({available}/{total}). Refresh cloud seed and try again.',
        candidate: source,
      );

      final spanishValue = resolveTranslatedArbValue(
        key: 'quranAudioSourcesIncomplete',
        source: source,
        currentValue:
            'El paquete de audio del Corán verificado está incompleto ({available}/{total}). Actualice la semilla de la nube y vuelva a intentarlo.',
        candidate:
            'El paquete de audio del Corán verificado está incompleto ({available}/{total}). Vuelve a intentarlo después de actualizar el catálogo de audio.',
      );

      expect(englishValue, source);
      expect(
        spanishValue,
        'El paquete de audio del Corán verificado está incompleto ({available}/{total}). Vuelve a intentarlo después de actualizar el catálogo de audio.',
      );
    });

    test('rejects multiline diagnostics output', () {
      final labelValue = resolveTranslatedArbValue(
        key: 'diagnostics',
        source: 'Diagnostics',
        currentValue: 'Tanilama',
        candidate: 'means the following.\nTanilama',
      );

      final value = resolveTranslatedArbValue(
        key: 'diagnosticsQuranCloudCheckFailed',
        source: 'Cloud check failed: {error}',
        currentValue: 'Bulut kontrolu basarisiz: {error}',
        candidate: 'means the following.\nBulut kontrolu basarisiz: {error}',
      );

      expect(labelValue, 'Tanilama');
      expect(value, 'Bulut kontrolu basarisiz: {error}');
    });

    test('rejects multiline hadith availability output', () {
      final titleValue = resolveTranslatedArbValue(
        key: 'hadithUnavailableTitle',
        source: 'Verified hadith collections are not available yet',
        currentValue:
            'ukax mä juk’a pachanakanwa.\nChiqapa hadith apthapitanakax janiw jichhakamax utjkiti',
        candidate:
            'ukax mä juk’a pachanakanwa.\nChiqapa hadith apthapitanakax janiw jichhakamax utjkiti',
      );

      final bodyValue = resolveTranslatedArbValue(
        key: 'hadithUnavailableBody',
        source:
            'This build still depends on an unverified external hadith feed. Hadith browsing stays disabled until a sourced dataset is synced.',
        currentValue:
            'Ukax mä jan chiqanchat feed ukaruw atintasi.\nHadith uñakipañax jist’antatawa.',
        candidate:
            'Ukax mä jan chiqanchat feed ukaruw atintasi.\nHadith uñakipañax jist’antatawa.',
      );

      expect(titleValue, 'Verified hadith collections are not available yet');
      expect(
        bodyValue,
        'This build still depends on an unverified external hadith feed. Hadith browsing stays disabled until a sourced dataset is synced.',
      );
    });

    test('preserves technical provider and config tokens', () {
      final placesValue = resolveTranslatedArbValue(
        key: 'placesDataSourceUnavailableBody',
        source:
            'A verified places data endpoint is not configured for this build yet. Set PLACES_OVERPASS_API_URL to an approved proxy or provider before enabling nearby search.',
        currentValue: 'Подесите ПЛАЦЕС_ОВЕРПАСС_АПИ_УРЛ пре претраге.',
        candidate:
            'Verifikovana krajnja tacka nije podesena. Podesite PLACES_OVERPASS_API_URL pre pretrage.',
      );

      final diagnosticsValue = resolveTranslatedArbValue(
        key: 'diagnosticsQuranCloudTablesMissing',
        source: 'Cloud tables missing in Supabase; bundled fallback active',
        currentValue: 'सुपाबेस में क्लाउड टेबल गायब बा; बंडल फॉलबैक सक्रिय बा',
        candidate: 'Supabase icinde bulut tablolari eksik; paket yedek aktif.',
      );
      final bretonDiagnosticsValue = resolveTranslatedArbValue(
        key: 'diagnosticsQuranCloudTablesMissing',
        source: 'Cloud tables missing in Supabase; bundled fallback active',
        currentValue: '',
        candidate:
            "Mankout a ra taolennoù ar c'hoad e Supabase; oberiant en-dro paket",
      );
      final occitanDiagnosticsValue = resolveTranslatedArbValue(
        key: 'diagnosticsQuranCloudTablesMissing',
        source: 'Cloud tables missing in Supabase; bundled fallback active',
        currentValue: '',
        candidate:
            'De taulas de nívol mancan dins Supabase; recòrd en paquet actiu',
      );
      const diagnosticsJuzSource =
          'Cloud juz metadata missing; bundled structural fallback active';
      const badDiagnosticsJuzCandidates = [
        "Mankout a ra metaroadennoù ar c'hoad; oberiant en-dro frammadurel strollet",
        "Ti guaha metadata gi i cloud; ma'a'atan i estrukturan fallback ni' aktibu",
        'ᖃᕆᑕᐅᔭᒃᑯᑦ ᑐᑭᓯᒋᐊᕈᑎᒃᓴᐃᑦ ᐱᑕᖃᙱᒻᒪᑕ; ᑲᑎᙵᔪᑦ ᐋᖅᑭᒃᓯᒪᓂᖏᑦ ᓇᓪᓕᐅᒃᑯᒫᑦ ᐊᑐᖅᑐᑦ',
        'Облачнӧй джуджыд метаданнӧйяс абуӧсь; пучок структурнӧй запас активнӧй .',
        'Imethadatha yamafu ilahlekile; ukubuyiselwa emuva kwesakhiwo okuhlanganisiweko okusebenzako',
        'Las metadonadas del nívol mancan; retrograda estructural en paquet actiu',
        'Мигъы метабæрæггæнæнтæ нæй; æмбырдгонд структурон фæстæмæздæхт активон',
      ];

      final reciterValue = resolveTranslatedArbValue(
        key: 'audioVoiceMisharyAlafasy',
        source: 'Male (Mishary Alafasy)',
        currentValue: 'Male (Mishary Alafasy)',
        candidate: 'Masculino (Mishary Alafasi)',
      );

      final localizedReciterValue = resolveTranslatedArbValue(
        key: 'audioVoiceAbdulBaset',
        source: 'Male (Abdul Basit)',
        currentValue: 'Male (Abdul Basit)',
        candidate: 'Masculino (Abdul Basit)',
      );

      expect(placesValue, contains('PLACES_OVERPASS_API_URL'));
      expect(diagnosticsValue, contains('Supabase'));
      expect(
        bretonDiagnosticsValue,
        'Cloud tables missing in Supabase; bundled fallback active',
      );
      expect(
        occitanDiagnosticsValue,
        'Cloud tables missing in Supabase; bundled fallback active',
      );
      for (final candidate in badDiagnosticsJuzCandidates) {
        expect(
          resolveTranslatedArbValue(
            key: 'diagnosticsQuranCloudJuzMissing',
            source: diagnosticsJuzSource,
            currentValue: '',
            candidate: candidate,
          ),
          diagnosticsJuzSource,
        );
      }
      expect(reciterValue, 'Male (Mishary Alafasy)');
      expect(localizedReciterValue, 'Masculino (Abdul Basit)');
    });

    test('rejects multiline places runtime output', () {
      final value = resolveTranslatedArbValue(
        key: 'placesMapTilesUnavailableTitle',
        source: 'Map tiles unavailable',
        currentValue: 'Map\nTiles',
        candidate: 'Map\nTiles',
      );

      expect(value, 'Map tiles unavailable');
    });

    test('rejects weak distance-away copy that drops away context', () {
      final preservedValue = resolveTranslatedArbValue(
        key: 'distanceAwayKm',
        source: '{distance} km away',
        currentValue: '{distance} km uzakta',
        candidate: '{distance} km',
      );

      final fallbackValue = resolveTranslatedArbValue(
        key: 'distanceAwayKm',
        source: '{distance} km away',
        currentValue: '',
        candidate: '{distance} km',
      );

      expect(preservedValue, '{distance} km uzakta');
      expect(fallbackValue, '{distance} km away');
    });

    test('preserves chatbot offline status token', () {
      const cloudNotConfiguredSource =
          'Cloud API is not configured. Verified offline Islamic guidance is not available yet.';
      const badCloudNotConfiguredCandidates = [
        "Ti makonfigura i Cloud API. Ti siña ma'ayek i guinahan Islam ni' ma'ayek gi i internet.",
        'E sega ni vakarautaki na API ni o. Vakadeitaki na idusidusi ni Islam ena initaneti e se bera ni tiko.',
        'ᖃᕆᑕᐅᔭᒃᑯᑦ API ᐋᖅᑭᒃᑕᐅᓯᒪᙱᓚᖅ. ᓇᓗᓇᐃᖅᑕᐅᓯᒪᔪᖅ ᖃᕆᑕᐅᔭᒃᑯᑦ ᑐᑭᒧᐊᒍᑎᒃᓴᖅ ᐊᑐᐃᓐᓇᐅᙱᓚᖅ ᓱᓕ.',
        "Cloud API is not configured. 'Oku te'eki ke ma'u 'a e fakahinohino faka-'Isilami offline kuo fakamo'oni'i.",
        'Aita te Cloud API i haamauhia. Aita â te aratairaa Islamic i itehia i nia i te Internet.',
      ];
      const localNoInfoSource =
          '[OFFLINE] Verified local Islamic guidance is not available yet. Switch to Cloud AI for sourced answers.';
      const offlinePromptSource =
          'The verified offline Islamic knowledge base is still being curated. You can enable offline fallback now, but it will only show limited safe messages until the sourced dataset is ready.\n\nWould you like to enable offline fallback?';
      const offlineSwitchedSource =
          'Offline fallback enabled. Verified local Islamic answers are not ready yet.';
      const badLocalNoInfoCandidates = [
        '[OFFLINE] Тадсикъ гьабураб бакӀалъулаб исламияб нухмалъи жеги гьечӀо. Переключитесь на Cloud AI для источниковых ответов.',
        "[OFFLINE] Ti siña ma'ayek i guinahan Islam ni' ma'ayek. Na'lå'la' i Cloud AI para i ineppe siha.",
        '[OFFLINE] E se bera ni vakarautaki na idusidusi vaka-Isireli ni vanua vakadeitaki. Veisau ki na AI ni o me baleta na isau ni ivurevure.',
        "[OFFLINE] Cha nel stiurey Islamagh 'sy valley verify ry-gheddyn foast. Smooinee er Cloud AI son freggyrtyn source.",
        '[OFFLINE] ᓇᓗᓇᐃᖅᑕᐅᓯᒪᔪᑦ ᓄᓇᓕᖕᓂ ᐃᓛᒃᑰᖅᑐᑦ ᑐᑭᒧᐊᒍᑎᖏᑦ ᓱᓕ ᐊᑐᐃᓐᓇᐅᙱᓚᑦ. ᐊᓯᐊᓄᑦ Cloud AI-ᒧᑦ ᑭᐅᔾᔪᑎᒃᓴᓄᑦ.',
        '[OFFLINE] Verified local Islamic guidance ejjab maroñ in walok kiõ. Oktak ñan Cloud AI ñan uwaak ko jen source.',
        '[OFFLINE] Aita â te aratairaa Islama no te fenua iho i roaa mai. A taui i te Cloud AI no te mau pahonoraa.',
      ];
      const badOfflinePromptCandidates = [
        'ᓇᓗᓇᐃᖅᑕᐅᓯᒪᔪᖅ ᖃᕆᑕᐅᔭᒃᑯᑦ ᐃᓛᒥᒃᑯᑦ ᖃᐅᔨᒪᓂᖏᑦ ᓱᓕ ᐋᖅᑭᒃᓱᖅᑕᐅᕙᓪᓕᐊᔪᑦ.\n\nᐱᔪᓐᓇᖅᑎᑦᑎᔪᒪᕕᑦ?',
      ];
      const badOfflineSwitchedCandidates = [
        'Sa vakatarai na lutu mai na initaneti. Na isau ni vanua vakadeitaki ni Islam e se bera ni vakarau tu.',
        'ᖃᕆᑕᐅᔭᒃᑯᑦ ᑭᖑᕝᕕᐅᑎᔪᓐᓇᕐᓂᖅ ᐱᔪᓐᓇᖅᑎᑕᐅᕗᖅ. ᓇᓗᓇᐃᖅᑕᐅᓯᒪᔪᑦ ᓄᓇᓕᖕᓂ ᐃᓛᒥᒃᑯᑦ ᑭᐅᔾᔪᑎᖏᑦ ᐊᑐᐃᓐᓇᐅᙱᓚᑦ ᓱᓕ.',
        'Fallback so ayeke na lege ni pëpe. A kiri tënë na akiringo tënë ti Islam ti ndo ni so a vérifié ni awe.',
      ];
      final translatedPrefixValue = resolveTranslatedArbValue(
        key: 'chatbotLocalNoInfo',
        source: localNoInfoSource,
        currentValue:
            '[OFFLINE] Dogrulanmis yerel Islami rehberlik henuz hazir degil.',
        candidate:
            '[CEVRIMDISI] Dogrulanmis yerel Islami rehberlik henuz hazir degil.',
      );

      final missingPrefixValue = resolveTranslatedArbValue(
        key: 'chatbotLocalNoInfo',
        source: localNoInfoSource,
        currentValue:
            '[OFFLINE] Dogrulanmis yerel Islami rehberlik henuz hazir degil.',
        candidate: 'Dogrulanmis yerel Islami rehberlik henuz hazir degil.',
      );

      expect(
        translatedPrefixValue,
        '[OFFLINE] Dogrulanmis yerel Islami rehberlik henuz hazir degil.',
      );
      expect(
        missingPrefixValue,
        '[OFFLINE] Dogrulanmis yerel Islami rehberlik henuz hazir degil.',
      );
      for (final candidate in badCloudNotConfiguredCandidates) {
        expect(
          resolveTranslatedArbValue(
            key: 'chatbotCloudNotConfigured',
            source: cloudNotConfiguredSource,
            currentValue: '',
            candidate: candidate,
          ),
          cloudNotConfiguredSource,
        );
      }
      for (final candidate in badLocalNoInfoCandidates) {
        expect(
          resolveTranslatedArbValue(
            key: 'chatbotLocalNoInfo',
            source: localNoInfoSource,
            currentValue: '',
            candidate: candidate,
          ),
          localNoInfoSource,
        );
      }
      for (final candidate in badOfflinePromptCandidates) {
        expect(
          resolveTranslatedArbValue(
            key: 'chatbotOfflinePrompt',
            source: offlinePromptSource,
            currentValue: '',
            candidate: candidate,
          ),
          offlinePromptSource,
        );
      }
      for (final candidate in badOfflineSwitchedCandidates) {
        expect(
          resolveTranslatedArbValue(
            key: 'chatbotOfflineSwitched',
            source: offlineSwitchedSource,
            currentValue: '',
            candidate: candidate,
          ),
          offlineSwitchedSource,
        );
      }
    });
  });
}

Map<String, dynamic> _readArbFile(String path) {
  return jsonDecode(File(path).readAsStringSync()) as Map<String, dynamic>;
}
