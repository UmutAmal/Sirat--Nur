import 'dart:convert';
import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/features/quran/revelation_type_localization.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

void main() {
  test('localizes Quran revelation type labels for supported raw codes', () {
    final en = lookupAppLocalizations(const Locale('en'));
    final tr = lookupAppLocalizations(const Locale('tr'));

    expect(localizeRevelationTypeLabel(en, 'Meccan'), 'Meccan');
    expect(localizeRevelationTypeLabel(en, 'Medinan'), 'Medinan');
    expect(localizeRevelationTypeLabel(tr, 'Meccan'), 'Mekki');
    expect(localizeRevelationTypeLabel(tr, 'Medinan'), 'Medeni');
    expect(localizeRevelationTypeLabel(tr, '  Unknown  '), 'Unknown');
  });

  test('Quran UI does not render raw revelation type values directly', () {
    final quranPage = File(
      'lib/features/quran/quran_page.dart',
    ).readAsStringSync();
    final surahReadingPage = File(
      'lib/features/quran/surah_reading_page.dart',
    ).readAsStringSync();

    expect(
      quranPage,
      contains('final revelationTypeLabel = localizeRevelationTypeLabel('),
    );
    expect(quranPage, contains('surah.revelationType'));
    expect(
      surahReadingPage,
      contains('final revelationTypeLabel = localizeRevelationTypeLabel('),
    );
    expect(surahReadingPage, contains('surahInfo.revelationType'));
    expect(
      quranPage,
      isNot(
        contains(
          r'${surah.ayahCount} ${l10n.ayahs.toLowerCase()} • ${surah.revelationType}',
        ),
      ),
    );
    expect(
      surahReadingPage,
      isNot(
        contains(
          r'${surahInfo.ayahCount} ${l10n.ayahs} • ${surahInfo.revelationType}',
        ),
      ),
    );
  });

  test('revelation type ARB labels avoid known machine debris', () {
    final lus = _readArb('lib/l10n/app_lus.arb');
    final mai = _readArb('lib/l10n/app_mai.arb');
    final sa = _readArb('lib/l10n/app_sa.arb');
    final ti = _readArb('lib/l10n/app_ti.arb');

    for (final arb in [lus, mai, sa, ti]) {
      expect(arb['revelationMeccan'], isNot(contains('\n')));
      expect(arb['revelationMedinan'], isNot(contains('\n')));
    }

    expect(ti['revelationMeccan'], isNot('መቐለ'));
    expect(ti['revelationMeccan'], 'መካዊ');
    expect(ti['revelationMedinan'], 'መዲናዊ');
  });
}

Map<String, dynamic> _readArb(String path) {
  return jsonDecode(File(path).readAsStringSync()) as Map<String, dynamic>;
}
