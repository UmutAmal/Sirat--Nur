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

    test('rejects multiline analytics label output', () {
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

      expect(value, 'Ses calinamadi');
    });

    test('rejects multiline zikr counter hint output', () {
      final value = resolveTranslatedArbValue(
        key: 'tapToCount',
        source: 'Tap to count',
        currentValue: 'Saymak icin dokunun',
        candidate: 'means the following.\nSaymak icin dokunun',
      );

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

    test('rejects multiline diagnostics output', () {
      final value = resolveTranslatedArbValue(
        key: 'diagnosticsQuranCloudCheckFailed',
        source: 'Cloud check failed: {error}',
        currentValue: 'Bulut kontrolu basarisiz: {error}',
        candidate: 'means the following.\nBulut kontrolu basarisiz: {error}',
      );

      expect(value, 'Bulut kontrolu basarisiz: {error}');
    });
  });
}
