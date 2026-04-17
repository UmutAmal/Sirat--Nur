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
      expect(report.sameAsEnglishCount, lessThanOrEqualTo(1535));
      expect(
        localeArbs['ak']!['downloadAction'],
        isNot(english['downloadAction']),
      );
      expect(
        localeArbs['ti']!['downloadAction'],
        isNot(english['downloadAction']),
      );
      expect(
        localeArbs['ti']!['resumeDownload'],
        isNot(english['resumeDownload']),
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
      for (final locale in ['ay', 'lus', 'mai', 'sa', 'ti']) {
        expect(
          localeArbs[locale]!['downloadFinishedForReciter'],
          isNot(english['downloadFinishedForReciter']),
          reason:
              'app_$locale.arb still uses English for downloadFinishedForReciter',
        );
      }
      expect(
        localeArbs['cy']!['placesDataSourceUnavailableBody'],
        isNot(english['placesDataSourceUnavailableBody']),
      );
      expect(
        localeArbs['ga']!['diagnosticsQuranCloudTablesMissing'],
        isNot(english['diagnosticsQuranCloudTablesMissing']),
      );
      expect(
        localeArbs['th']!['placesLocationRequiredBody'],
        isNot(english['placesLocationRequiredBody']),
      );
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
      expect(report.sameAsEnglishCount, lessThanOrEqualTo(590));
      for (final key in keys) {
        expect(
          localeArbs['am']![key],
          isNot(english[key]),
          reason: 'app_am.arb still uses English for $key',
        );
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

      expect(value, 'Ses calinamadi');
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

      expect(completeValue, 'Download Complete');
      expect(failedValue, 'Falha ao baixar');
      expect(managerValue, 'Download Manager');
      expect(deleteValue, 'Delete Downloaded Files');
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

      expect(catalanValue, 'Continua la baixada');
      expect(chineseValue, '继续下载');
      expect(georgianValue, 'ჩამოტვირთვის გაგრძელება');
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

    test('preserves chatbot offline status token', () {
      final translatedPrefixValue = resolveTranslatedArbValue(
        key: 'chatbotLocalNoInfo',
        source:
            '[OFFLINE] Verified local Islamic guidance is not available yet. Switch to Cloud AI for sourced answers.',
        currentValue:
            '[OFFLINE] Dogrulanmis yerel Islami rehberlik henuz hazir degil.',
        candidate:
            '[CEVRIMDISI] Dogrulanmis yerel Islami rehberlik henuz hazir degil.',
      );

      final missingPrefixValue = resolveTranslatedArbValue(
        key: 'chatbotLocalNoInfo',
        source:
            '[OFFLINE] Verified local Islamic guidance is not available yet. Switch to Cloud AI for sourced answers.',
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
    });
  });
}

Map<String, dynamic> _readArbFile(String path) {
  return jsonDecode(File(path).readAsStringSync()) as Map<String, dynamic>;
}
