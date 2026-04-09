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
}
