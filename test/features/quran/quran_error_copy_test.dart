import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

void main() {
  test('quran load failure copy is localized', () async {
    final en = await AppLocalizations.delegate.load(const Locale('en'));
    final tr = await AppLocalizations.delegate.load(const Locale('tr'));

    expect(
      en.quranLoadFailed,
      'Quran content could not be loaded. Please try again.',
    );
    expect(
      tr.quranLoadFailed,
      "Kur'an içeriği yüklenemedi. Lütfen tekrar deneyin.",
    );
  });

  test('quran reader screens never surface raw load exceptions', () {
    final guardedFiles = [
      File('lib/features/quran/quran_page.dart'),
      File('lib/features/quran/juz_reading_page.dart'),
      File('lib/features/quran/surah_reading_page.dart'),
    ];

    for (final file in guardedFiles) {
      final source = file.readAsStringSync();

      expect(
        source,
        isNot(contains('_error = error.toString()')),
        reason: '${file.path} exposes raw caught error text',
      );
      expect(
        source,
        isNot(contains('_error = e.toString()')),
        reason: '${file.path} exposes raw caught exception text',
      );
      expect(
        source,
        contains('quranLoadFailed'),
        reason: '${file.path} must use localized Quran load failure copy',
      );
    }
  });
}
