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
        const localizedKeys = [
          'liveTv',
          'watchLive',
          'streamError',
          'reload',
          'checkConnection',
          'openInYoutube',
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
      'priority locales do not fall back to English for home dashboard copy',
      () {
        const localizedKeys = [
          'dailyVerse',
          'todaysIbadah',
          'quickAccess',
          'downloads',
          'ibadahTracker',
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
      'safe priority locales do not fall back to English for home tracking and calendar shell copy',
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
          'home',
          'calendar',
          'nextPrayer',
          'quranReading',
          'prayers',
          'fasting',
          'weeklyProgress',
          'hijriCalendar',
          'today',
          'specialDays',
          'done',
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

    test('safe priority home shell copy avoids known mistranslations', () {
      const knownBadValues = {
        'de': {'home': 'Heim', 'hijriCalendar': 'Hijri-Kalender'},
        'fr': {'home': 'Maison', 'specialDays': 'Journées spéciales'},
        'es': {'home': 'Hogar', 'prayers': 'Rezo'},
        'he': {'home': 'בית', 'quranReading': 'קריאת קוראן'},
        'ja': {'hijriCalendar': 'ヒジュラ語カレンダー', 'prayers': '祈り'},
        'pt': {'hijriCalendar': 'Calendário islâmico'},
        'vi': {'fasting': 'Ăn chay', 'prayers': 'Lời cầu nguyện'},
        'zh': {'home': '家', 'prayers': '祈祷'},
        'zh_CN': {'home': '家', 'prayers': '祈祷'},
        'zh_TW': {'home': '家', 'prayers': '祈禱'},
      };

      for (final localeEntry in knownBadValues.entries) {
        final arb = _readArb('lib/l10n/app_${localeEntry.key}.arb');

        for (final badEntry in localeEntry.value.entries) {
          expect(
            arb[badEntry.key],
            isNot(badEntry.value),
            reason:
                'app_${localeEntry.key}.arb kept a known weak translation for ${badEntry.key}',
          );
        }
      }
    });

    test(
      'safe priority locales do not fall back to English for common action copy',
      () {
        const commonActionSafeLocales = [
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
          'search',
          'searchHint',
          'retry',
          'save',
          'addBookmark',
          'removeBookmark',
          'downloading',
        ];

        for (final locale in commonActionSafeLocales) {
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

    test('safe priority common action copy avoids known mistranslations', () {
      const knownBadValues = {
        'da': {'search': 'Søge', 'searchHint': 'Søge...', 'save': 'Spare'},
        'es': {'retry': 'Rever', 'save': 'Ahorrar'},
        'zh': {'save': '节省'},
        'zh_CN': {'save': '节省'},
        'zh_TW': {'save': '節省'},
      };

      for (final localeEntry in knownBadValues.entries) {
        final arb = _readArb('lib/l10n/app_${localeEntry.key}.arb');

        for (final badEntry in localeEntry.value.entries) {
          expect(
            arb[badEntry.key],
            isNot(badEntry.value),
            reason:
                'app_${localeEntry.key}.arb kept a known weak translation for ${badEntry.key}',
          );
        }
      }
    });

    test('safe priority locales localize tracker negative status copy', () {
      const safeLocales = [
        'tr',
        'de',
        'fr',
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

      for (final locale in safeLocales) {
        final arb = _readArb('lib/l10n/app_$locale.arb');

        expect(
          arb['no'],
          isNot(english['no']),
          reason: 'app_$locale.arb still uses English for no',
        );
      }
    });

    test('safe priority tracker negative status copy avoids known bad values', () {
      const knownBadValues = {
        'da': 'Ingen',
        'de': 'NEIN',
        'he': 'לֹא',
        'ja': 'No',
        'nb': 'Ingen',
        'nn': 'Ingen',
        'no': 'Ingen',
        'pt': 'No',
        'ru': 'No',
        'vi': 'KHÔNG',
      };

      for (final localeEntry in knownBadValues.entries) {
        final arb = _readArb('lib/l10n/app_${localeEntry.key}.arb');

        expect(
          arb['no'],
          isNot(localeEntry.value),
          reason:
              'app_${localeEntry.key}.arb kept a known weak translation for no',
        );
      }
    });

    test(
      'safe priority locales do not fall back to English for quran reading shell copy',
      () {
        const quranReadingShellSafeLocales = [
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
          'quran',
          'surah',
          'surahs',
          'ayahs',
          'juz',
          'page',
        ];

        for (final locale in quranReadingShellSafeLocales) {
          final arb = _readArb('lib/l10n/app_$locale.arb');

          for (final key in localizedKeys) {
            if (locale == 'fr' && key == 'page') {
              continue;
            }
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
      'safe priority quran reading shell copy avoids known mistranslations',
      () {
        const knownBadValues = {
          'da': {'surah': 'Surah', 'surahs': 'Surahs', 'ayahs': 'Ayahs'},
          'de': {'ayahs': 'Ayahs'},
          'fr': {'ayahs': 'Ayahs', 'page': 'Pages'},
          'he': {'surahs': 'סורה', 'ayahs': 'איהס', 'juz': 'Juz'},
          'ja': {'quran': 'コーラン', 'ayahs': 'アヤス'},
          'nb': {'surah': 'Surah', 'surahs': 'Surahs', 'ayahs': 'Ayahs'},
          'nn': {'surah': 'Surah', 'surahs': 'Surahs', 'ayahs': 'Ayahs'},
          'no': {'surah': 'Surah', 'surahs': 'Surahs', 'ayahs': 'Ayahs'},
          'ru': {'ayahs': 'Айи'},
          'vi': {'surah': 'Surah', 'surahs': 'Surah', 'ayahs': 'Ayah'},
          'zh': {'surah': '古兰经', 'surahs': '古兰经', 'ayahs': '阿亚斯'},
          'zh_CN': {'surah': '古兰经', 'surahs': '古兰经', 'ayahs': '阿亚斯'},
          'zh_TW': {'surah': '古蘭經', 'surahs': '古蘭經', 'ayahs': '阿亞斯'},
        };

        for (final localeEntry in knownBadValues.entries) {
          final arb = _readArb('lib/l10n/app_${localeEntry.key}.arb');

          for (final badEntry in localeEntry.value.entries) {
            expect(
              arb[badEntry.key],
              isNot(badEntry.value),
              reason:
                  'app_${localeEntry.key}.arb kept a known weak translation for ${badEntry.key}',
            );
          }
        }
      },
    );

    test(
      'safe priority locales do not fall back to English for prayer and Allah names shell copy',
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
          'prayerTimes',
          'namesOfAllah',
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
      'safe priority prayer and Allah names shell copy avoids known mistranslations',
      () {
        const knownBadValues = {
          'he': {'namesOfAllah': 'שמות של אללה'},
          'ja': {'prayerTimes': '祈りの時間'},
          'nn': {
            'prayerTimes': 'Bønnetider',
            'namesOfAllah': 'Allahs navn',
          },
          'pt': {'namesOfAllah': 'Nomes de Alá'},
          'ru': {'prayerTimes': 'Время молитв'},
          'vi': {
            'prayerTimes': 'thời gian cầu nguyện',
            'namesOfAllah': 'Tên của Allah',
          },
          'zh': {
            'prayerTimes': '祈祷时间',
            'namesOfAllah': '安拉的名字',
          },
          'zh_CN': {
            'prayerTimes': '祈祷时间',
            'namesOfAllah': '安拉的名字',
          },
          'zh_TW': {
            'prayerTimes': '祈禱時間',
            'namesOfAllah': '安拉的名字',
          },
        };

        for (final localeEntry in knownBadValues.entries) {
          final arb = _readArb('lib/l10n/app_${localeEntry.key}.arb');

          for (final badEntry in localeEntry.value.entries) {
            expect(
              arb[badEntry.key],
              isNot(badEntry.value),
              reason:
                  'app_${localeEntry.key}.arb kept a known weak translation for ${badEntry.key}',
            );
          }
        }
      },
    );

    test(
      'priority locales do not fall back to English for diagnostics labels',
      () {
        const localizedKeys = [
          'diagnostics',
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
      'priority locales do not fall back to English for theme mode labels',
      () {
        const localizedKeys = [
          'theme',
          'lightMode',
          'darkMode',
          'systemDefault',
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
        const localizedKeys = [
          'version',
          'rateApp',
          'shareApp',
          'shareAppMessage',
        ];

        for (final locale in shareSafeLocales) {
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
      'safe priority locales do not fall back to English for settings shell copy',
      () {
        const settingsShellSafeLocales = [
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
          'settings',
          'prayerCalculation',
          'method',
          'madhab',
          'location',
          'language',
          'selectLanguage',
          'currentLocation',
          'dataStorage',
          'clearCache',
          'cacheClearedSuccess',
          'about',
          'privacyPolicy',
          'termsOfService',
          'contactUs',
        ];

        for (final locale in settingsShellSafeLocales) {
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
          'locationDetectionFailed',
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
          'diagnosticsUiAudioAssets',
          'diagnosticsQuranAudioAssets',
          'diagnosticsFilesCount',
          'diagnosticsManifestReadFailed',
          'diagnosticsLocalizationLocales',
          'diagnosticsPrayerCustomProfile',
          'diagnosticsPrayerCustomSource',
          'diagnosticsSupportedCount',
          'diagnosticsQuranDataset',
          'diagnosticsQuranSurahs',
          'diagnosticsQuranAyahs',
          'diagnosticsQuranJuzMetadata',
          'diagnosticsQuranCloudCheckFailed',
          'diagnosticsQuranCloudStructuralCheckFailed',
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

    test('diagnostics status copy stays single-line in all locales', () {
      const localizedKeys = [
        'diagnosticsUiAudioAssets',
        'diagnosticsQuranAudioAssets',
        'diagnosticsSupportedCount',
        'diagnosticsQuranDataset',
        'diagnosticsQuranSurahs',
        'diagnosticsQuranAyahs',
        'diagnosticsQuranJuzMetadata',
        'diagnosticsQuranCloudCheckFailed',
        'diagnosticsQuranCloudStructuralCheckFailed',
      ];
      final arbFiles =
          Directory('lib/l10n')
              .listSync()
              .whereType<File>()
              .where((file) => file.path.endsWith('.arb'))
              .where((file) => file.uri.pathSegments.last.startsWith('app_'))
              .toList()
            ..sort((a, b) => a.path.compareTo(b.path));

      for (final file in arbFiles) {
        final arb = _readArb(file.path);
        for (final key in localizedKeys) {
          final value = arb[key] as String;
          expect(
            value.contains('\n') || value.contains('\r'),
            isFalse,
            reason:
                '${file.uri.pathSegments.last} has multiline diagnostics copy for $key',
          );
        }
      }
    });

    test(
      'priority locales do not fall back to English for analytics and zakat labels',
      () {
        const localizedKeys = [
          'analytics',
          'calculateZakat',
          'prayerCompletion',
          'streaks',
          'dayStreak',
          'bestStreak',
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
          'chatbotUseCloudAi',
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

    test(
      'safe priority locales do not fall back to English for chatbot mode controls',
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
          'chatbotLocalAiLabel',
          'chatbotCloudAiLabel',
          'chatbotUseCloudAi',
          'chatbotDownloadLocalAi',
          'chatbotOfflineDownloadLabel',
          'offlineMode',
          'cancel',
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
      'safe priority locales do not fall back to English for onboarding copy',
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
          'onboarding1Title',
          'onboarding1Desc',
          'onboarding2Title',
          'onboarding2Desc',
          'onboarding3Title',
          'onboarding3Desc',
          'next',
          'getStarted',
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
      'safe priority onboarding titles preserve the Sirat-i Nur app brand',
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
        const forbiddenBrandFragments = [
          'Way of Allah',
          "Voie d'Allah",
          'Camino de Allah',
          'Allahs vej',
          'طريقة الله',
          '阿拉之道',
        ];

        for (final locale in safeLocales) {
          final title = _readArb(
            'lib/l10n/app_$locale.arb',
          )['onboarding1Title'];

          for (final fragment in forbiddenBrandFragments) {
            expect(
              title,
              isNot(contains(fragment)),
              reason:
                  'app_$locale.arb translated the Sirat-i Nur brand as $fragment',
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
        const localizedKeys = [
          'qiblaCalibration',
          'calibrationOffset',
          'currentOffset',
          'compassSmoothing',
          'manualCorrectionDesc',
          'calibrationRequiredFigure8',
          'qiblaCompassErrorDetails',
          'qiblaSensorUnavailable',
          'qiblaLocationRequiredTitle',
          'qiblaLocationRequiredBody',
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
      'safe priority locales do not fall back to English for qibla compass shell copy',
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
          'qiblaDirection',
          'compass',
          'turnDevice',
          'qiblaFound',
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
      'safe priority qibla compass shell copy avoids known mistranslations',
      () {
        const knownBadValues = {
          'es': {'qiblaDirection': 'Dirección qibla'},
          'he': {
            'qiblaFound': 'קיבלה נמצא!',
            'turnDevice': 'סובב את המכשיר שלך כדי להתמודד עם ה-Qibla',
          },
          'ja': {'qiblaFound': 'キブラ発見！', 'turnDevice': 'デバイスをキブラに向けて向けます'},
          'pt': {'qiblaDirection': 'Direção Qibla'},
          'vi': {'turnDevice': 'Xoay thiết bị của bạn đối mặt với Qibla'},
          'zh': {'qiblaFound': '朝拜发现了！'},
          'zh_CN': {'qiblaFound': '朝拜发现了！'},
          'zh_TW': {'qiblaFound': '朝拜發現了！'},
        };

        for (final localeEntry in knownBadValues.entries) {
          final arb = _readArb('lib/l10n/app_${localeEntry.key}.arb');

          for (final badEntry in localeEntry.value.entries) {
            expect(
              arb[badEntry.key],
              isNot(badEntry.value),
              reason:
                  'app_${localeEntry.key}.arb kept a known weak qibla translation for ${badEntry.key}',
            );
          }
        }
      },
    );

    test(
      'priority locales do not fall back to English for zikr completion copy',
      () {
        const localizedKeys = ['zikr', 'tapToCount', 'zikrCompletedMashAllah'];

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
          'offlineQuranAudioPacks',
          'storedOnDeviceMb',
          'downloadCompleted',
          'downloadCanceledForReciter',
          'downloadFinishedForReciter',
          'deletedOfflineFilesForReciter',
          'audioPlayFailed',
          'quranAudioSourcesUnavailable',
          'quranAudioSourcesIncomplete',
          'diagnosticsQuranCloudTablesMissing',
          'diagnosticsQuranCloudJuzMissing',
          'freeStorage',
          'downloadPreparing',
          'downloadingSurah',
          'downloadedSurahProgress',
          'redownloadMissingRepair',
          'downloadCancelling',
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
      'extended Quran audio unavailable locales do not fall back to English',
      () {
        const extendedLocales = ['ay', 'az', 'kk', 'lus', 'mai', 'sa', 'ti'];

        for (final locale in extendedLocales) {
          final arb = _readArb('lib/l10n/app_$locale.arb');
          expect(
            arb['quranAudioSourcesUnavailable'],
            isNot(english['quranAudioSourcesUnavailable']),
            reason:
                'app_$locale.arb still uses English for quranAudioSourcesUnavailable',
          );
        }
      },
    );

    test(
      'safe priority locales do not fall back to English for basic status copy',
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
          'noResults',
          'loading',
          'error',
          'delete',
          'downloadComplete',
          'downloadFailed',
          'noInternet',
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
      'safe priority locales do not fall back to English for adhan notification channel copy',
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
          'adhanNotificationChannelName',
          'adhanNotificationChannelDescription',
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

    test('adhan notification channel copy stays single-line in all locales', () {
      const localizedKeys = [
        'adhanNotificationChannelName',
        'adhanNotificationChannelDescription',
      ];
      final arbFiles =
          Directory('lib/l10n')
              .listSync()
              .whereType<File>()
              .where((file) => file.path.endsWith('.arb'))
              .where((file) => file.uri.pathSegments.last.startsWith('app_'))
              .toList()
            ..sort((a, b) => a.path.compareTo(b.path));

      for (final file in arbFiles) {
        final arb = _readArb(file.path);
        for (final key in localizedKeys) {
          final value = arb[key] as String;
          expect(
            value.contains('\n') || value.contains('\r'),
            isFalse,
            reason:
                '${file.uri.pathSegments.last} has multiline channel copy for $key',
          );
        }
      }
    });

    test('download progress copy stays single-line in all locales', () {
      const localizedKeys = [
        'freeStorage',
        'downloadPreparing',
        'downloadingSurah',
        'downloadedSurahProgress',
        'redownloadMissingRepair',
        'downloadCancelling',
        'downloadAction',
        'resumeDownload',
        'deleteDownloadedFiles',
        'offlineQuranAudioPacks',
        'storedOnDeviceMb',
        'downloadCanceledForReciter',
        'downloadFinishedForReciter',
        'downloadPartiallyFinishedForReciter',
        'deletedOfflineFilesForReciter',
        'audioPlayFailed',
        'diagnosticsQuranCloudTablesMissing',
        'diagnosticsQuranCloudJuzMissing',
        'chatbotOfflineSwitched',
        'chatbotLocalNoInfo',
      ];
      final arbFiles =
          Directory('lib/l10n')
              .listSync()
              .whereType<File>()
              .where((file) => file.path.endsWith('.arb'))
              .where((file) => file.uri.pathSegments.last.startsWith('app_'))
              .toList()
            ..sort((a, b) => a.path.compareTo(b.path));

      for (final file in arbFiles) {
        final arb = _readArb(file.path);
        for (final key in localizedKeys) {
          final value = arb[key] as String;
          expect(
            value.contains('\n') || value.contains('\r'),
            isFalse,
            reason:
                '${file.uri.pathSegments.last} has multiline download progress copy for $key',
          );
        }
      }
    });

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
      'safe priority locales do not fall back to English for chatbot runtime copy',
      () {
        const safeLocales = [
          'tr',
          'de',
          'fr',
          'es',
          'ar',
          'hi',
          'id',
          'pt',
          'ru',
          'zh',
          'zh_CN',
          'zh_TW',
        ];
        const localizedKeys = [
          'chatbotGreeting',
          'chatbotHint',
          'chatbotThinking',
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

    test('chatbot cloud fallback copy does not point to retired Local AI', () {
      const staleFragments = [
        'Please switch to Local AI',
        'Download Local AI',
        '[LOCAL AI]',
        'Lütfen Yerel AI',
        "Yerel AI'yi İndir",
        '[YEREL AI]',
      ];
      final arbFiles =
          Directory('lib/l10n')
              .listSync()
              .whereType<File>()
              .where((file) => file.path.endsWith('.arb'))
              .where((file) => file.uri.pathSegments.last.startsWith('app_'))
              .toList()
            ..sort((a, b) => a.path.compareTo(b.path));

      for (final file in arbFiles) {
        final arb = _readArb(file.path);
        final value = arb['chatbotCloudNotConfigured'] as String;

        for (final fragment in staleFragments) {
          expect(
            value.contains(fragment),
            isFalse,
            reason:
                '${file.uri.pathSegments.last} still points chatbotCloudNotConfigured to retired Local AI copy',
          );
        }
      }
    });

    test(
      'chatbotUseCloudAi preserves Gemini as a proper noun across locales',
      () {
        final arbFiles =
            Directory('lib/l10n')
                .listSync()
                .whereType<File>()
                .where((file) => file.path.endsWith('.arb'))
                .where((file) => file.uri.pathSegments.last.startsWith('app_'))
                .toList()
              ..sort((a, b) => a.path.compareTo(b.path));

        for (final file in arbFiles) {
          final arb = _readArb(file.path);
          final value = arb['chatbotUseCloudAi'] as String;

          expect(
            value.contains('Gemini'),
            isTrue,
            reason:
                '${file.uri.pathSegments.last} translated or dropped the Gemini proper noun',
          );
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
      'prayer remaining unavailable placeholder stays symbolic in every locale',
      () {
        final arbFiles = Directory('lib/l10n')
            .listSync()
            .whereType<File>()
            .where((file) => file.path.endsWith('.arb'))
            .where((file) => file.uri.pathSegments.last.startsWith('app_'));

        for (final file in arbFiles) {
          final arb = _readArb(file.path);

          expect(
            arb['prayerRemainingUnavailable'],
            '--',
            reason:
                '${file.path} must keep prayerRemainingUnavailable as a neutral placeholder',
          );
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

    test('audio voice labels keep canonical names and avoid multiline corruption', () {
      final arbFiles =
          Directory('lib/l10n')
              .listSync()
              .whereType<File>()
              .where((file) => file.path.endsWith('.arb'))
              .where((file) => file.uri.pathSegments.last.startsWith('app_'))
              .toList()
            ..sort((a, b) => a.path.compareTo(b.path));

      for (final file in arbFiles) {
        final arb = _readArb(file.path);
        final mishary = arb['audioVoiceMisharyAlafasy'] as String;
        final abdulBaset = arb['audioVoiceAbdulBaset'] as String;
        final sudais = arb['audioVoiceSudais'] as String;

        expect(
          mishary.contains('\n'),
          isFalse,
          reason:
              '${file.uri.pathSegments.last} keeps multiline corruption in audioVoiceMisharyAlafasy',
        );
        expect(
          abdulBaset.contains('\n'),
          isFalse,
          reason:
              '${file.uri.pathSegments.last} keeps multiline corruption in audioVoiceAbdulBaset',
        );
        expect(
          sudais.contains('\n'),
          isFalse,
          reason:
              '${file.uri.pathSegments.last} keeps multiline corruption in audioVoiceSudais',
        );
        expect(
          abdulBaset.contains('AbdulBaset'),
          isFalse,
          reason:
              '${file.uri.pathSegments.last} still keeps the unspaced AbdulBaset typo',
        );
      }
    });

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
          'quranLoadFailed',
          'placesLocationRequiredTitle',
          'placesLocationRequiredBody',
          'placesMapTilesUnavailableTitle',
          'placesMapTilesUnavailableBody',
          'placesDataSourceUnavailableTitle',
          'placesDataSourceUnavailableBody',
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
