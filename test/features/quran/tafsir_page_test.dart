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
  });

  test('tafsir service canonicalizes only verified source aliases', () {
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

  test('tafsir service normalizes API rows before cache writes', () {
    final rows = TafsirLocalService.normalizeApiTafsirRows(
      [
        {'verse_key': '2:255', 'text': '<p>Allah &amp; His mercy</p>'},
        {'verse_key': '2:not-a-number', 'text': 'Invalid verse'},
        {'verse_key': '2:256', 'text': '   '},
        {'unexpected': 'shape'},
        'not a map',
      ],
      surahNumber: 2,
      tafsirSource: 'en.sahih',
    );

    expect(rows, hasLength(1));
    expect(rows.single['surah_number'], 2);
    expect(rows.single['verse_number'], 255);
    expect(rows.single['tafsir_text'], 'Allah & His mercy');
    expect(rows.single['tafsir_source'], 'en.ibn_kathir');
  });
}
