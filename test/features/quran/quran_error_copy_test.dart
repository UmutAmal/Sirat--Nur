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
        isNot(contains(r'Quran index load failed: $error')),
        reason: '${file.path} logs raw Quran index load errors',
      );
      expect(
        source,
        isNot(contains(r'Quran juz load failed: $error')),
        reason: '${file.path} logs raw Quran juz load errors',
      );
      expect(
        source,
        isNot(contains(r'Error loading quran json: $e')),
        reason: '${file.path} logs raw Quran surah load errors',
      );
      expect(
        source,
        contains('quranLoadFailed'),
        reason: '${file.path} must use localized Quran load failure copy',
      );
    }
  });

  test('quran audio logs do not include raw urls or exception objects', () {
    final guardedSources = {
      'lib/features/quran/surah_reading_page.dart': File(
        'lib/features/quran/surah_reading_page.dart',
      ).readAsStringSync(),
      'lib/core/services/audio_player_service.dart': File(
        'lib/core/services/audio_player_service.dart',
      ).readAsStringSync(),
    };

    for (final entry in guardedSources.entries) {
      final source = entry.value;

      expect(
        source,
        isNot(contains(r'Audio source failed: $url, error: $error')),
        reason: '${entry.key} logs Quran audio URL and raw error together',
      );
      expect(
        source,
        isNot(contains(r'Audio playback failed for all sources: $lastError')),
        reason: '${entry.key} logs raw final Quran audio failure',
      );
      expect(
        source,
        isNot(contains(r'Playing remote URL: $url')),
        reason: '${entry.key} logs remote audio URLs',
      );
      expect(
        source,
        isNot(contains(r'URL playback error: $e')),
        reason: '${entry.key} logs raw remote playback errors',
      );
      expect(
        source,
        isNot(contains(r'Playing local asset: $assetPath')),
        reason: '${entry.key} logs local asset paths',
      );
      expect(
        source,
        isNot(contains(r'Asset playback error: $e')),
        reason: '${entry.key} logs raw asset playback errors',
      );
    }
  });
}
