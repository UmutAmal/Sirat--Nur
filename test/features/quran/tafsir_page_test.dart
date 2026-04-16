import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/services/tafsir_local_service.dart';
import 'package:sirat_i_nur/features/quran/tafsir_page.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

void main() {
  test('tafsir helpers localize missing, progress, and error states', () async {
    final en = await AppLocalizations.delegate.load(const Locale('en'));

    expect(buildTafsirTitle(en, '', 2), 'Surah 2 • Tafsir');
    expect(buildTafsirMissingMessage(en), 'No tafsir found for this surah.');
    expect(
      buildTafsirMissingMessage(en, ayahNumber: 255),
      'No tafsir found for ayah 255.',
    );
    expect(
      buildTafsirProgressMessage(en, 'download:5:114', 0.2),
      'Downloading tafsir 5/114',
    );
    expect(
      buildTafsirProgressMessage(en, 'load:3:7', 0.4),
      'Loading tafsir 3/7',
    );
    expect(
      localizeTafsirError(en, TafsirException('api_status', details: '500')),
      'Tafsir source returned an HTTP 500 error.',
    );
    expect(
      localizeTafsirError(en, TafsirException('no_entries')),
      'The selected tafsir source returned no entries.',
    );
    expect(
      localizeTafsirError(en, TafsirException('cache_missing')),
      'Verified tafsir is not available offline yet. Sync a sourced tafsir dataset before browsing.',
    );
  });

  test('tafsir service canonicalizes only verified source aliases', () {
    expect(TafsirLocalService.defaultTafsirSourceId, 'en.ibn_kathir');
    expect(
      TafsirLocalService.canonicalTafsirSource('en.sahih'),
      'en.ibn_kathir',
    );
    expect(
      TafsirLocalService.canonicalTafsirSource('en.muhammadtaqiusmani'),
      'en.maarif',
    );

    expect(
      () => TafsirLocalService.canonicalTafsirSource('tr.yazir'),
      throwsA(
        isA<TafsirException>().having(
          (error) => error.code,
          'code',
          'unsupported_source',
        ),
      ),
    );
  });

  test('tafsir service normalizes only verified cloud rows', () {
    final rows = TafsirLocalService.normalizeVerifiedTafsirRows(
      [
        {
          'surah_number': 2,
          'ayah_number': 255,
          'tafsir_source': 'en.sahih',
          'language': 'en',
          'tafsir_text': 'Verified tafsir text',
          'source': 'Verified tafsir archive',
          'source_license': 'verified-open-license',
          'verified_at': '2026-04-16T00:00:00Z',
        },
        {
          'surah_number': 2,
          'ayah_number': 256,
          'tafsir_source': 'en.sahih',
          'language': 'en',
          'tafsir_text': 'Missing provenance must be ignored',
        },
        {
          'surah_number': 3,
          'ayah_number': 1,
          'tafsir_source': 'en.sahih',
          'language': 'en',
          'tafsir_text': 'Wrong surah must be ignored',
          'source': 'Verified tafsir archive',
          'source_license': 'verified-open-license',
          'verified_at': '2026-04-16T00:00:00Z',
        },
        {
          'surah_number': 2,
          'ayah_number': 257,
          'tafsir_source': 'unknown.source',
          'language': 'en',
          'tafsir_text': 'Unsupported source must be ignored',
          'source': 'Verified tafsir archive',
          'source_license': 'verified-open-license',
          'verified_at': '2026-04-16T00:00:00Z',
        },
      ],
      surahNumber: 2,
      tafsirSource: 'en.ibn_kathir',
    );

    expect(rows, hasLength(1));
    expect(rows.single['surah_number'], 2);
    expect(rows.single['verse_number'], 255);
    expect(rows.single['tafsir_source'], 'en.ibn_kathir');
    expect(rows.single['source'], 'Verified tafsir archive');
    expect(rows.single['source_license'], 'verified-open-license');
    expect(rows.single['verified_at'], '2026-04-16T00:00:00.000Z');
  });

  test('tafsir page default source avoids force unwraps', () {
    final source = File(
      'lib/features/quran/tafsir_page.dart',
    ).readAsStringSync();

    expect(source, contains('TafsirLocalService.defaultTafsirSourceId'));
    expect(source, isNot(contains("availableTafsirs.first['id']!")));
    expect(source, isNot(contains('TafsirFetchPolicy.allowExternalRefresh')));
    expect(
      source,
      contains('verifiedRowsLoader: _loadVerifiedCloudTafsirRows'),
    );
    expect(source, contains("from('tafsir_entries')"));
    expect(source, contains('ref.read(supabaseClientProvider)'));
    expect(source, contains('final error = _error;'));
    expect(source, isNot(contains('_error!')));
  });

  test('tafsir service database getter avoids force unwraps', () {
    final source = File(
      'lib/core/services/tafsir_local_service.dart',
    ).readAsStringSync();

    expect(source, contains('final existingDatabase = _database;'));
    expect(source, contains('return initializedDatabase;'));
    expect(source, contains('version: 2'));
    expect(source, contains('source_license TEXT'));
    expect(source, contains('verified_at TEXT'));
    expect(source, contains(r'AND $_verifiedWhere'));
    expect(source, isNot(contains('_database!')));
  });

  test('tafsir service does not mask source resolver failures', () {
    final source = File(
      'lib/core/services/tafsir_local_service.dart',
    ).readAsStringSync();

    expect(source, contains("TafsirException('unsupported_source'"));
    expect(source, isNot(contains('?? 169')));
  });

  test('tafsir loader stays cache-only and avoids runtime tafsir APIs', () {
    final source = File(
      'lib/core/services/tafsir_local_service.dart',
    ).readAsStringSync();
    final loaderSource = source.substring(source.indexOf('class TafsirLoader'));

    expect(source, isNot(contains("import 'package:dio/dio.dart'")));
    expect(source, isNot(contains('api.quran.com/api/v4/tafsirs')));
    expect(source, isNot(contains('normalizeApiTafsirRows')));
    expect(source, isNot(contains('downloadTafsirForSurah')));
    expect(source, isNot(contains('downloadAllTafsirs')));
    expect(source, contains('this.fetchPolicy = TafsirFetchPolicy.cacheOnly'));
    expect(source, contains('VerifiedTafsirRowsLoader? verifiedRowsLoader'));
    expect(loaderSource, contains("TafsirException('cache_missing'"));
    expect(loaderSource, isNot(contains('allowExternalRefresh')));
    expect(
      loaderSource.indexOf('_loadVerifiedRowsFromCloud'),
      lessThan(loaderSource.indexOf("TafsirException('cache_missing'")),
    );
  });
}
