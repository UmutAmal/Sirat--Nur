import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('general ARB localization coverage', () {
    final english = _readArb('lib/l10n/app_en.arb');
    const priorityLocales = [
      'tr',
      'de',
      'fr',
      'es',
      'ar',
      'da',
      'he',
      'ja',
      'nb',
      'nn',
      'no',
      'pt',
      'ru',
      'tw',
      'vi',
      'zh',
      'zh_CN',
      'zh_TW',
    ];

    test(
      'priority locales do not fall back to English for live tv actions',
      () {
        for (final locale in priorityLocales) {
          final arb = _readArb('lib/l10n/app_$locale.arb');
          expect(
            arb['openInYoutube'],
            isNot(english['openInYoutube']),
            reason: 'app_$locale.arb still uses English for openInYoutube',
          );
        }
      },
    );

    test(
      'priority locales do not fall back to English for home dashboard copy',
      () {
        const localizedKeys = [
          'dailyVerse',
          'todaysIbadah',
          'quickAccess',
          'places',
          'library',
          'islamicEducation',
        ];

        for (final locale in priorityLocales) {
          final arb = _readArb('lib/l10n/app_$locale.arb');

          for (final key in localizedKeys) {
            expect(
              arb[key],
              isNot(english[key]),
              reason: 'app_$locale.arb still uses English for $key',
            );
          }
        }
      },
    );

    test(
      'priority locales do not fall back to English for diagnostics labels',
      () {
        const localizedKeys = [
          'diagnosticsNotSet',
          'diagnosticsPrayerProfile',
          'diagnosticsPrayerSource',
          'diagnosticsCloudDriven',
          'diagnosticsAudioAssets',
        ];

        for (final locale in priorityLocales) {
          final arb = _readArb('lib/l10n/app_$locale.arb');

          for (final key in localizedKeys) {
            expect(
              arb[key],
              isNot(english[key]),
              reason: 'app_$locale.arb still uses English for $key',
            );
          }
        }
      },
    );

    test(
      'safe priority locales do not fall back to English for share copy',
      () {
        const shareSafeLocales = [
          'tr',
          'de',
          'fr',
          'es',
          'ar',
          'da',
          'he',
          'ja',
          'nb',
          'nn',
          'no',
          'pt',
          'ru',
          'vi',
          'zh',
          'zh_CN',
          'zh_TW',
        ];

        for (final locale in shareSafeLocales) {
          final arb = _readArb('lib/l10n/app_$locale.arb');
          expect(
            arb['shareAppMessage'],
            isNot(english['shareAppMessage']),
            reason: 'app_$locale.arb still uses English for shareAppMessage',
          );
        }
      },
    );

    test(
      'safe priority locales do not fall back to English for location copy',
      () {
        const locationSafeLocales = [
          'tr',
          'de',
          'fr',
          'es',
          'ar',
          'da',
          'he',
          'ja',
          'nb',
          'nn',
          'no',
          'pt',
          'ru',
          'vi',
          'zh',
          'zh_CN',
          'zh_TW',
        ];
        const localizedKeys = [
          'locationServiceDisabled',
          'locationPermissionDenied',
          'citiesCount',
        ];

        for (final locale in locationSafeLocales) {
          final arb = _readArb('lib/l10n/app_$locale.arb');

          for (final key in localizedKeys) {
            expect(
              arb[key],
              isNot(english[key]),
              reason: 'app_$locale.arb still uses English for $key',
            );
          }
        }
      },
    );

    test(
      'safe priority locales do not fall back to English for diagnostics asset copy',
      () {
        const diagnosticsAssetSafeLocales = [
          'tr',
          'de',
          'fr',
          'es',
          'ar',
          'da',
          'he',
          'ja',
          'nb',
          'nn',
          'no',
          'pt',
          'ru',
          'vi',
          'zh',
          'zh_CN',
          'zh_TW',
        ];
        const localizedKeys = [
          'diagnosticsAdhanAudioAssets',
          'diagnosticsQuranAudioAssets',
          'diagnosticsFilesCount',
          'diagnosticsManifestReadFailed',
          'diagnosticsLocalizationLocales',
          'diagnosticsPrayerCustomProfile',
          'diagnosticsPrayerCustomSource',
        ];

        for (final locale in diagnosticsAssetSafeLocales) {
          final arb = _readArb('lib/l10n/app_$locale.arb');

          for (final key in localizedKeys) {
            expect(
              arb[key],
              isNot(english[key]),
              reason: 'app_$locale.arb still uses English for $key',
            );
          }
        }
      },
    );

    test(
      'priority locales do not fall back to English for analytics and zakat labels',
      () {
        const localizedKeys = ['calculateZakat', 'dayStreak', 'bestStreak'];

        for (final locale in priorityLocales) {
          final arb = _readArb('lib/l10n/app_$locale.arb');

          for (final key in localizedKeys) {
            expect(
              arb[key],
              isNot(english[key]),
              reason: 'app_$locale.arb still uses English for $key',
            );
          }
        }
      },
    );

    test(
      'safe priority locales do not fall back to English for chatbot cloud copy',
      () {
        const chatbotSafeLocales = [
          'tr',
          'de',
          'fr',
          'es',
          'ar',
          'da',
          'he',
          'ja',
          'nb',
          'nn',
          'no',
          'pt',
          'ru',
          'vi',
          'zh',
          'zh_CN',
          'zh_TW',
        ];
        const localizedKeys = [
          'chatbotCloudAiLabel',
          'chatbotCloudNotConfigured',
          'chatbotErrorMsg',
          'chatbotLimitReached',
          'chatbotQueriesLeft',
        ];

        for (final locale in chatbotSafeLocales) {
          final arb = _readArb('lib/l10n/app_$locale.arb');

          for (final key in localizedKeys) {
            expect(
              arb[key],
              isNot(english[key]),
              reason: 'app_$locale.arb still uses English for $key',
            );
          }
        }
      },
    );

    test('priority locales do not fall back to English for paywall copy', () {
      const localizedKeys = [
        'paywallFeature1Title',
        'paywallFeature1Desc',
        'paywallFeature2Title',
        'paywallFeature2Desc',
        'paywallFeature3Title',
        'paywallFeature3Desc',
        'paywallFeature4Title',
        'paywallFeature4Desc',
        'paywallUnlockAll',
        'paywallGetAccess',
        'restorePurchases',
      ];

      for (final locale in priorityLocales) {
        final arb = _readArb('lib/l10n/app_$locale.arb');

        for (final key in localizedKeys) {
          expect(
            arb[key],
            isNot(english[key]),
            reason: 'app_$locale.arb still uses English for $key',
          );
        }
      }
    });

    test(
      'safe priority locales do not fall back to English for zakat calculator copy',
      () {
        const zakatSafeLocales = [
          'tr',
          'de',
          'fr',
          'es',
          'ar',
          'da',
          'he',
          'ja',
          'nb',
          'nn',
          'no',
          'pt',
          'ru',
          'vi',
          'zh',
          'zh_CN',
          'zh_TW',
        ];
        const localizedKeys = [
          'zakatCalculator',
          'zakatGold',
          'zakatSilver',
          'zakatCashBank',
          'zakatBusiness',
          'zakatInvestments',
          'zakatDebts',
          'zakatPricePerGram',
          'zakatWeightGrams',
          'zakatInventoryValue',
          'zakatTotalAmount',
          'nisabSummary',
          'nisabNotReached',
          'totalZakat',
          'zakatGoldZakat',
          'zakatSilverZakat',
          'zakatCashZakat',
          'zakatBusinessZakat',
          'zakatInvestmentZakat',
          'zakatTotal',
        ];

        for (final locale in zakatSafeLocales) {
          final arb = _readArb('lib/l10n/app_$locale.arb');

          for (final key in localizedKeys) {
            expect(
              arb[key],
              isNot(english[key]),
              reason: 'app_$locale.arb still uses English for $key',
            );
          }
        }
      },
    );

    test(
      'priority locales do not fall back to English for places discovery copy',
      () {
        const localizedKeys = [
          'placesSearchArea',
          'nearbyMosques',
          'islamicSchools',
          'halalFood',
          'mosques',
          'placesFoundCount',
          'distanceAwayKm',
          'placesApiError',
          'placesNetworkError',
          'islamicPlaceFallback',
          'unknownPlaceName',
        ];

        for (final locale in priorityLocales) {
          final arb = _readArb('lib/l10n/app_$locale.arb');

          for (final key in localizedKeys) {
            expect(
              arb[key],
              isNot(english[key]),
              reason: 'app_$locale.arb still uses English for $key',
            );
          }
        }
      },
    );

    test(
      'safe priority locales do not fall back to English for sukun soundscape copy',
      () {
        const sukunSafeLocales = [
          'tr',
          'de',
          'fr',
          'es',
          'ar',
          'da',
          'he',
          'ja',
          'nb',
          'nn',
          'no',
          'pt',
          'ru',
          'vi',
          'zh',
          'zh_CN',
          'zh_TW',
        ];
        const localizedKeys = [
          'sukunAudioTitle',
          'sukunGardenOfPeace',
          'sukunMidnightCalm',
          'sukunMixerSubtitle',
          'sukunNatureLabel',
          'sukunOceanTawheed',
          'sukunRainOfMercy',
          'sukunUnavailableBody',
          'sukunUnavailableTitle',
        ];

        for (final locale in sukunSafeLocales) {
          final arb = _readArb('lib/l10n/app_$locale.arb');

          for (final key in localizedKeys) {
            expect(
              arb[key],
              isNot(english[key]),
              reason: 'app_$locale.arb still uses English for $key',
            );
          }
        }
      },
    );

    test('priority locales do not fall back to English for app error copy', () {
      const localizedKeys = ['appErrorOccurred', 'appUnknownError'];

      for (final locale in priorityLocales) {
        final arb = _readArb('lib/l10n/app_$locale.arb');

        for (final key in localizedKeys) {
          expect(
            arb[key],
            isNot(english[key]),
            reason: 'app_$locale.arb still uses English for $key',
          );
        }
      }
    });

    test(
      'priority locales do not fall back to English for qibla error copy',
      () {
        const localizedKeys = ['qiblaCompassErrorDetails'];

        for (final locale in priorityLocales) {
          final arb = _readArb('lib/l10n/app_$locale.arb');

          for (final key in localizedKeys) {
            expect(
              arb[key],
              isNot(english[key]),
              reason: 'app_$locale.arb still uses English for $key',
            );
          }
        }
      },
    );

    test(
      'priority locales do not fall back to English for zikr completion copy',
      () {
        const localizedKeys = ['zikrCompletedMashAllah'];

        for (final locale in priorityLocales) {
          final arb = _readArb('lib/l10n/app_$locale.arb');

          for (final key in localizedKeys) {
            expect(
              arb[key],
              isNot(english[key]),
              reason: 'app_$locale.arb still uses English for $key',
            );
          }
        }
      },
    );

    test(
      'priority locales do not fall back to English for zikr meaning copy',
      () {
        const localizedKeys = [
          'zikrMeaningSubhanAllah',
          'zikrMeaningAlhamdulillah',
          'zikrMeaningAllahuAkbar',
          'zikrMeaningLaIlahaIllallah',
          'zikrMeaningAstaghfirullah',
          'zikrMeaningLaHawlaWaLaQuwwata',
        ];

        for (final locale in priorityLocales) {
          final arb = _readArb('lib/l10n/app_$locale.arb');

          for (final key in localizedKeys) {
            expect(
              arb[key],
              isNot(english[key]),
              reason: 'app_$locale.arb still uses English for $key',
            );
          }
        }
      },
    );

    test(
      'safe priority locales do not fall back to English for bundled asma meanings',
      () {
        const asmaSafeLocales = [
          'tr',
          'de',
          'fr',
          'es',
          'ar',
          'da',
          'he',
          'ja',
          'nb',
          'nn',
          'no',
          'pt',
          'ru',
          'vi',
          'zh',
          'zh_CN',
          'zh_TW',
        ];
        final localizedKeys = List<String>.generate(
          99,
          (index) => 'asmaMeaning${index + 1}',
        );

        for (final locale in asmaSafeLocales) {
          final arb = _readArb('lib/l10n/app_$locale.arb');

          for (final key in localizedKeys) {
            expect(
              arb[key],
              isNot(english[key]),
              reason: 'app_$locale.arb still uses English for $key',
            );
          }
        }
      },
    );

    test(
      'safe priority locales do not fall back to English for bundled dua meanings',
      () {
        const duaSafeLocales = [
          'tr',
          'de',
          'fr',
          'es',
          'ar',
          'da',
          'he',
          'ja',
          'nb',
          'nn',
          'no',
          'pt',
          'ru',
          'vi',
          'zh',
          'zh_CN',
          'zh_TW',
        ];
        final localizedKeys = List<String>.generate(
          8,
          (index) => 'duaMeaning${index + 1}',
        );

        for (final locale in duaSafeLocales) {
          final arb = _readArb('lib/l10n/app_$locale.arb');

          for (final key in localizedKeys) {
            expect(
              arb[key],
              isNot(english[key]),
              reason: 'app_$locale.arb still uses English for $key',
            );
          }
        }
      },
    );

    test(
      'safe priority locales do not fall back to English for calendar special day copy',
      () {
        const calendarSafeLocales = [
          'tr',
          'de',
          'fr',
          'es',
          'ar',
          'da',
          'he',
          'ja',
          'nb',
          'nn',
          'no',
          'pt',
          'ru',
          'vi',
          'zh',
          'zh_CN',
          'zh_TW',
        ];
        const localizedKeys = ['islamicNewYear', 'mawlidAnNabi'];

        for (final locale in calendarSafeLocales) {
          final arb = _readArb('lib/l10n/app_$locale.arb');

          for (final key in localizedKeys) {
            expect(
              arb[key],
              isNot(english[key]),
              reason: 'app_$locale.arb still uses English for $key',
            );
          }
        }
      },
    );

    test(
      'safe priority locales do not fall back to English for download and diagnostics copy',
      () {
        const safeLocales = [
          'tr',
          'de',
          'fr',
          'es',
          'ar',
          'da',
          'he',
          'ja',
          'nb',
          'nn',
          'no',
          'pt',
          'ru',
          'vi',
          'zh',
          'zh_CN',
          'zh_TW',
        ];
        const localizedKeys = [
          'downloadManager',
          'offlineDownloadManager',
          'downloadAction',
          'resumeDownload',
          'deleteDownloadedFiles',
          'downloadCanceledForReciter',
          'downloadFinishedForReciter',
          'diagnosticsQuranCloudTablesMissing',
          'diagnosticsQuranCloudJuzMissing',
        ];

        for (final locale in safeLocales) {
          final arb = _readArb('lib/l10n/app_$locale.arb');

          for (final key in localizedKeys) {
            expect(
              arb[key],
              isNot(english[key]),
              reason: 'app_$locale.arb still uses English for $key',
            );
          }
        }
      },
    );

    test(
      'safe priority locales do not fall back to English for chatbot offline copy',
      () {
        const safeLocales = [
          'tr',
          'de',
          'fr',
          'es',
          'ar',
          'da',
          'he',
          'ja',
          'nb',
          'nn',
          'no',
          'pt',
          'ru',
          'vi',
          'zh',
          'zh_CN',
          'zh_TW',
        ];
        const localizedKeys = [
          'chatbotCloudNotConfigured',
          'chatbotLocalNoInfo',
          'chatbotOfflinePrompt',
          'chatbotOfflineSwitched',
        ];

        for (final locale in safeLocales) {
          final arb = _readArb('lib/l10n/app_$locale.arb');

          for (final key in localizedKeys) {
            expect(
              arb[key],
              isNot(english[key]),
              reason: 'app_$locale.arb still uses English for $key',
            );
          }
        }
      },
    );

    test(
      'safe priority locales do not fall back to English for premium, splash, and prayer remaining copy',
      () {
        const safeLocales = [
          'tr',
          'de',
          'fr',
          'es',
          'ar',
          'da',
          'he',
          'ja',
          'nb',
          'nn',
          'no',
          'pt',
          'ru',
          'vi',
          'zh',
          'zh_CN',
          'zh_TW',
        ];
        const localizedKeys = [
          'splashTagline',
          'premiumProductUnavailable',
          'premiumPurchaseFailed',
          'prayerRemainingHoursMinutes',
          'prayerRemainingMinutes',
        ];

        for (final locale in safeLocales) {
          final arb = _readArb('lib/l10n/app_$locale.arb');

          for (final key in localizedKeys) {
            expect(
              arb[key],
              isNot(english[key]),
              reason: 'app_$locale.arb still uses English for $key',
            );
          }
        }
      },
    );

    test(
      'safe priority locales do not fall back to English for audio voice labels',
      () {
        const audioVoiceSafeLocales = [
          'tr',
          'de',
          'fr',
          'es',
          'ar',
          'da',
          'he',
          'ja',
          'nb',
          'nn',
          'no',
          'pt',
          'ru',
          'vi',
          'zh',
          'zh_CN',
          'zh_TW',
        ];
        const localizedKeys = [
          'audioVoice',
          'audioVoiceMisharyAlafasy',
          'audioVoiceAbdulBaset',
          'audioVoiceSudais',
        ];

        for (final locale in audioVoiceSafeLocales) {
          final arb = _readArb('lib/l10n/app_$locale.arb');

          for (final key in localizedKeys) {
            expect(
              arb[key],
              isNot(english[key]),
              reason: 'app_$locale.arb still uses English for $key',
            );
          }
        }
      },
    );

    test(
      'safe priority locales do not fall back to English for tafsir and places honest-state copy',
      () {
        const safeLocales = [
          'tr',
          'de',
          'fr',
          'es',
          'ar',
          'da',
          'he',
          'ja',
          'nb',
          'nn',
          'no',
          'pt',
          'ru',
          'vi',
          'zh',
          'zh_CN',
          'zh_TW',
        ];
        const localizedKeys = [
          'tafsirLoading',
          'tafsirSourceLabel',
          'tafsirNoSurahFound',
          'tafsirNoAyahFound',
          'tafsirLoadFailed',
          'tafsirNoTextForAyah',
          'placesLocationRequiredTitle',
          'placesLocationRequiredBody',
          'placesMapTilesUnavailableTitle',
          'placesMapTilesUnavailableBody',
        ];

        for (final locale in safeLocales) {
          final arb = _readArb('lib/l10n/app_$locale.arb');

          for (final key in localizedKeys) {
            expect(
              arb[key],
              isNot(english[key]),
              reason: 'app_$locale.arb still uses English for $key',
            );
          }
        }
      },
    );
  });
}

Map<String, dynamic> _readArb(String path) {
  return jsonDecode(File(path).readAsStringSync()) as Map<String, dynamic>;
}
