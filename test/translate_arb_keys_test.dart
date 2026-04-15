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
  });
}
