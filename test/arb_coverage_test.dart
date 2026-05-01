import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ARB coverage', () {
    final template = _readArb('lib/l10n/app_en.arb');
    final requiredKeys = template.keys
        .where((key) => !key.startsWith('@@') && !key.startsWith('@'))
        .toList();

    test('all arb files contain every template message key', () {
      final arbFiles = Directory('lib/l10n')
          .listSync()
          .whereType<File>()
          .where((file) => file.path.endsWith('.arb'))
          .where((file) => file.uri.pathSegments.last.startsWith('app_'));

      for (final file in arbFiles) {
        final arb = _readArb(file.path);
        final missing = requiredKeys
            .where((key) => !arb.containsKey(key))
            .toList(growable: false);

        expect(
          missing,
          isEmpty,
          reason: '${file.path} is missing message keys: $missing',
        );
      }
    });

    test(
      'all arb files contain placeholder metadata for templated messages',
      () {
        final metadataKeys = template.keys
            .where((key) => key.startsWith('@') && key != '@@locale')
            .toList();

        final arbFiles = Directory('lib/l10n')
            .listSync()
            .whereType<File>()
            .where((file) => file.path.endsWith('.arb'))
            .where((file) => file.uri.pathSegments.last.startsWith('app_'));

        for (final file in arbFiles) {
          final arb = _readArb(file.path);
          final missing = metadataKeys
              .where((key) => !arb.containsKey(key))
              .toList(growable: false);

          expect(
            missing,
            isEmpty,
            reason: '${file.path} is missing metadata keys: $missing',
          );
        }
      },
    );

    test('arb message values do not contain batch debris', () {
      final arbFiles = Directory('lib/l10n')
          .listSync()
          .whereType<File>()
          .where((file) => file.path.endsWith('.arb'))
          .where((file) => file.uri.pathSegments.last.startsWith('app_'));

      for (final file in arbFiles) {
        final arb = _readArb(file.path);

        for (final entry in arb.entries) {
          final key = entry.key;
          final value = entry.value;
          if (key.startsWith('@') || value is! String) continue;

          final normalized = value.replaceAll('\r\n', '\n');
          final hasUnexpectedLineBreak =
              normalized.contains('\n') &&
              !_allowedMultilineMessageKeys.contains(key);

          expect(
            hasUnexpectedLineBreak,
            isFalse,
            reason:
                '${file.path} contains an unexpected line break in "$key": '
                '$normalized',
          );

          for (final debris in _translationBatchDebris) {
            expect(
              normalized.startsWith(debris),
              isFalse,
              reason:
                  '${file.path} contains translation batch debris in "$key": '
                  '$normalized',
            );
          }

          for (final debris in _translationBatchFragments) {
            expect(
              normalized.contains(debris),
              isFalse,
              reason:
                  '${file.path} contains translation batch debris in "$key": '
                  '$normalized',
            );
          }

          expect(
            _hasRepeatedWordRun(normalized),
            isFalse,
            reason:
                '${file.path} contains a repeated-word run in "$key": '
                '$normalized',
          );
        }
      }
    });

    test('legacy missingEnglish diagnostic key stays removed', () {
      final arbFiles = Directory('lib/l10n')
          .listSync()
          .whereType<File>()
          .where((file) => file.path.endsWith('.arb'))
          .where((file) => file.uri.pathSegments.last.startsWith('app_'));

      for (final file in arbFiles) {
        final arb = _readArb(file.path);

        expect(
          arb.containsKey('missingEnglish'),
          isFalse,
          reason:
              '${file.path} still contains the unused missingEnglish message',
        );
        expect(
          arb.containsKey('@missingEnglish'),
          isFalse,
          reason: '${file.path} still contains unused missingEnglish metadata',
        );
      }

      final generatedFiles = Directory('lib/l10n')
          .listSync()
          .whereType<File>()
          .where((file) => file.path.endsWith('.dart'))
          .where(
            (file) =>
                file.uri.pathSegments.last.startsWith('app_localizations'),
          );

      for (final file in generatedFiles) {
        final contents = file.readAsStringSync();

        expect(
          contents.contains('missingEnglish'),
          isFalse,
          reason:
              '${file.path} still exposes the unused missingEnglish API member',
        );
      }
    });

    test('Bhojpuri core shell labels do not keep explanatory debris', () {
      final arb = _readArb('lib/l10n/app_bho.arb');
      const expected = {
        'quran': 'कुरान',
        'settings': 'सेटिंग्स',
        'method': 'गणना के तरीका',
        'surahs': 'सूरह सभ',
        'fajr': 'फजर',
        'maghrib': 'मगरिब',
        'dataStorage': 'डाटा अउर स्टोरेज',
        'language': 'भाषा',
      };
      final debris = RegExp(r'के बारे में बतावल गइल बा| के ह$');

      for (final entry in expected.entries) {
        final value = arb[entry.key] as String;
        expect(
          value,
          entry.value,
          reason: 'app_bho.arb must keep concise ${entry.key} copy',
        );
        expect(
          value,
          isNot(contains(debris)),
          reason: 'app_bho.arb keeps explanatory debris in ${entry.key}',
        );
      }
    });

    test(
      'Bhojpuri shell and reading labels do not keep explanatory debris',
      () {
        final arb = _readArb('lib/l10n/app_bho.arb');
        const expected = {
          'home': 'घर',
          'qibla': 'किबला',
          'zikr': 'जिक्र',
          'calendar': 'कैलेंडर',
          'madhab': 'असर न्यायिक विधि',
          'ayahs': 'आयत सभ',
          'sunrise': 'सूर्योदय',
          'dhuhr': 'धुहर',
          'asr': 'अस्र',
          'isha': 'ईशा',
          'location': 'लोकेशन',
          'citiesCount': '{count} शहर',
          'save': 'बचाईं',
          'surah': 'सूरह',
          'juz': 'जुज',
          'page': 'पन्ना',
          'translation': 'अनुवाद',
          'tafsir': 'तफसीर',
          'tasbih': 'तसबीह',
          'ahkab': 'अहकम',
          'masaail': "मसा'इल",
          'hadith': 'हदीस',
          'ibadahTracker': 'इबादत ट्रैकर',
          'fasting': 'रोजा',
          'quranReading': 'कुरान पढ़ाई',
          'dhikrCount': 'ढिकर गिनती',
          'weeklyProgress': 'साप्ताहिक प्रगति',
          'monthlyProgress': 'मासिक प्रगति',
        };
        final debris = RegExp(r'के बारे में बतावल गइल बा| के ह$| के बा$');

        for (final entry in expected.entries) {
          final value = arb[entry.key] as String;
          expect(
            value,
            entry.value,
            reason: 'app_bho.arb must keep concise ${entry.key} copy',
          );
          expect(
            value,
            isNot(contains(debris)),
            reason: 'app_bho.arb keeps explanatory debris in ${entry.key}',
          );
        }
      },
    );

    test(
      'Bhojpuri library and diagnostics labels do not keep explanatory debris',
      () {
        final arb = _readArb('lib/l10n/app_bho.arb');
        const expected = {
          'hadithCollection': 'हदीस संग्रह',
          'hadithBooks': 'हदीस के किताबन',
          'privacyPolicy': 'गोपनीयता नीति',
          'spiritualGrowth': 'आध्यात्मिक विकास',
          'quranIntegrity': 'कुरान के अखंडता',
          'diagnosticsAudioAssets': 'ऑडियो एसेट्स',
          'diagnosticsLocalizationLocales': 'स्थानीयकरण लोकेल',
          'quickAccess': 'त्वरित पहुँच',
          'analytics': 'विश्लेषण',
          'islamicEducation': 'इस्लामी शिक्षा',
          'sukunAudioTitle': 'सुकुन साउंडस्केप',
          'hadithCollections': 'हदीस संग्रह',
        };
        final debris = RegExp(r'के बारे में बतावल गइल बा| के ह$');

        for (final entry in expected.entries) {
          final value = arb[entry.key] as String;
          expect(
            value,
            entry.value,
            reason: 'app_bho.arb must keep concise ${entry.key} copy',
          );
          expect(
            value,
            isNot(contains(debris)),
            reason: 'app_bho.arb keeps explanatory debris in ${entry.key}',
          );
        }
      },
    );

    test(
      'Bhojpuri settings download and diagnostics labels do not keep explanatory debris',
      () {
        final arb = _readArb('lib/l10n/app_bho.arb');
        const expected = {
          'currentLocation': 'वर्तमान स्थान (जीपीएस)',
          'qiblaDirection': 'किबला दिशा',
          'compass': 'कम्पास',
          'beforePrayer': 'नमाज से कुछ मिनट पहिले',
          'theme': 'थीम',
          'lightMode': 'लाइट मोड',
          'darkMode': 'डार्क मोड',
          'version': 'संस्करण',
          'rateApp': 'ऐप रेट करीं',
          'shareApp': 'ऐप शेयर करीं',
          'downloadManager': 'डाउनलोड प्रबंधक',
          'offlineMode': 'ऑफलाइन मोड',
          'premium': 'प्रीमियम',
          'next': 'आगे',
          'changeTarget': 'लक्ष्य बदलीं',
          'dailyProgress': 'रोजाना प्रगति',
          'mandatoryDuty': 'अनिवार्य कर्तव्य',
          'days': 'दिन',
          'premiumIntegrity': 'प्रीमियम अखंडता',
          'offlineDownloadManager': 'ऑफलाइन डाउनलोड प्रबंधक',
          'fajrAngle': 'फजर एंगल',
          'qiblaCalibration': 'किबला कैलिब्रेशन',
          'calibrationOffset': 'कैलिब्रेशन ऑफसेट',
          'diagnosticsAdhanAudioAssets': 'अधान ऑडियो एसेट्स',
          'diagnosticsUiAudioAssets': 'यूआई ऑडियो एसेट्स',
          'diagnosticsFilesCount': '{count} फाइल',
          'diagnosticsQuranDataset': 'कुरान डेटासेट',
          'diagnosticsQuranAyahs': 'कुरान के आयत सभ',
        };
        final debris = RegExp(r'के बारे में बतावल गइल बा| के ह$| के बा[।.]?$');

        for (final entry in expected.entries) {
          final value = arb[entry.key] as String;
          expect(
            value,
            entry.value,
            reason: 'app_bho.arb must keep concise ${entry.key} copy',
          );
          expect(
            value,
            isNot(contains(debris)),
            reason: 'app_bho.arb keeps explanatory debris in ${entry.key}',
          );
        }
      },
    );

    test(
      'Bhojpuri calendar and special day labels do not keep explanatory debris',
      () {
        final arb = _readArb('lib/l10n/app_bho.arb');
        const expected = {
          'hijriCalendar': 'हिजरी कैलेंडर',
          'tomorrow': 'काल्हु',
          'specialDays': 'खास दिन',
          'ramadan': 'रमजान',
          'eidAlFitr': 'ईद अल-फितर',
          'eidAlAdha': 'ईद अल-अधा',
          'islamicNewYear': 'इस्लामी नया साल',
          'mawlidAnNabi': 'मौलिद अन-नबी',
          'specialDayDateRamadanStart': '1 रमजान',
          'specialDayDateLaylatAlQadr': '27 रमजान',
          'specialDayDateEidAlFitr': '1 शव्वाल',
          'specialDayDateEidAlAdha': '10 धुल हिज्जा',
          'specialDayDateIslamicNewYear': '1 मुहर्रम',
          'specialDayDateMawlidAnNabi': '12 रबी अल-अव्वल',
        };
        final debris = RegExp(
          r'के बारे में बतावल गइल बा| के ह$| के बा[।.]?$| के भइल$',
        );

        for (final entry in expected.entries) {
          final value = arb[entry.key] as String;
          expect(
            value,
            entry.value,
            reason: 'app_bho.arb must keep concise ${entry.key} copy',
          );
          expect(
            value,
            isNot(contains(debris)),
            reason: 'app_bho.arb keeps explanatory debris in ${entry.key}',
          );
        }
      },
    );

    test(
      'Bhojpuri prayer zikr zakat and places labels do not keep explanatory debris',
      () {
        final arb = _readArb('lib/l10n/app_bho.arb');
        const expected = {
          'laylatAlQadr': 'लैलात अल-कदर',
          'dhikrLibrary': 'ढिकर लाइब्रेरी',
          'zikrCompletedMashAllah': 'पूरा हो गइल! मशअल्लाह',
          'ishaAngle': 'ईशा एंगल',
          'diagnosticsPrayerSource': 'प्रार्थना प्राधिकरण',
          'diagnosticsQuranSurahs': 'कुरान के सूरह सभ',
          'diagnosticsQuranJuzMetadata': 'कुरान जुज मेटाडाटा',
          'paywallFeature3Desc': 'प्रीमियम थीम अउर फॉन्ट',
          'zakatInventoryValue': 'इन्वेंट्री के मूल्य',
          'zakatBusinessZakat': 'बिजनेस जकात',
          'islamicSchools': 'इस्लामिक स्कूलन',
          'islamicPlaceFallback': 'इस्लामी जगह',
          'revelationMeccan': 'मक्का',
          'revelationMedinan': 'मदीना',
        };
        final debris = RegExp(r'के बारे में बतावल गइल बा| के ह$');

        for (final entry in expected.entries) {
          final value = arb[entry.key] as String;
          expect(
            value,
            entry.value,
            reason: 'app_bho.arb must keep concise ${entry.key} copy',
          );
          expect(
            value,
            isNot(contains(debris)),
            reason: 'app_bho.arb keeps explanatory debris in ${entry.key}',
          );
        }
      },
    );

    test(
      'Bhojpuri dashboard zakat sukun chatbot and places labels stay concise',
      () {
        final arb = _readArb('lib/l10n/app_bho.arb');
        const expected = {
          'dailyZikr': 'रोजाना जिक्र',
          'dailyVerse': 'दैनिक आयत',
          'todaysIbadah': 'आज के इबादत',
          'dailyDuas': 'रोजाना दुआ',
          'duaCategoryTasbih': 'तसबीह',
          'duaCategoryForgiveness': 'माफी',
          'paywallFeature1Title': 'न्यूरल असिस्टेंट प्लस',
          'paywallFeature3Title': 'एक्सक्लूसिव डिजाइन',
          'zakatCalculator': 'जकात कैलकुलेटर',
          'zakatGold': 'सोना (Altın)',
          'zakatSilver': 'चांदी (Gümüş)',
          'zakatCashBank': 'नकद / बैंक',
          'zakatInvestments': 'निवेश',
          'zakatWeightGrams': 'वजन (ग्राम)',
          'zakatPricePerGram': 'दाम/ग्राम',
          'zakatTotalAmount': 'कुल रकम',
          'zakatDebts': 'कर्ज',
          'totalZakat': 'कुल जकात',
          'zakatCashZakat': 'नकद जकात',
          'zakatInvestmentZakat': 'निवेश जकात',
          'sukunMixerSubtitle': 'प्रकृति अउर कुरान मिक्सर',
          'sukunNatureLabel': 'सुकुन (प्रकृति)',
          'sukunGardenOfPeace': 'शांति के बगीचा',
          'sukunOceanTawheed': 'तौहीद के समुंदर',
          'chatbotCloudAiLabel': 'क्लाउड एआई',
          'chatbotLocalAiLabel': 'ऑफलाइन फॉलबैक',
          'mosques': 'मस्जिद सभ',
          'halalFood': 'हलाल खाना',
          'unknownPlaceName': 'अनजान नाम',
        };
        final debris = RegExp(
          r'के बारे में बतावल गइल बा| के ह$| के बा[।.]?$| के बात बा$',
        );

        for (final entry in expected.entries) {
          final value = arb[entry.key] as String;
          expect(
            value,
            entry.value,
            reason: 'app_bho.arb must keep concise ${entry.key} copy',
          );
          expect(
            value,
            isNot(contains(debris)),
            reason: 'app_bho.arb keeps explanatory debris in ${entry.key}',
          );
        }
      },
    );

    test('Bihari visible labels do not keep explanatory debris', () {
      final arb = _readArb('lib/l10n/app_bh.arb');
      const expected = {
        'dailyZikr': 'रोजाना जिक्र',
        'monthlyProgress': 'मासिक प्रगति',
        'dhikrLibrary': 'ढिकर लाइब्रेरी',
        'changeTarget': 'लक्ष्य बदलीं',
        'spiritualGrowth': 'आध्यात्मिक विकास',
        'mandatoryDuty': 'अनिवार्य कर्तव्य',
        'days': 'दिन',
        'premiumIntegrity': 'प्रीमियम अखंडता',
        'offlineDownloadManager': 'ऑफलाइन डाउनलोड प्रबंधक',
        'quranIntegrity': 'कुरान के अखंडता',
        'fajrAngle': 'फजर एंगल',
        'ishaAngle': 'ईशा एंगल',
        'calibrationOffset': 'कैलिब्रेशन ऑफसेट',
        'diagnosticsPrayerSource': 'प्रार्थना प्राधिकरण',
        'analytics': 'विश्लेषण',
        'resumeDownload': 'डाउनलोड जारी राखीं',
        'revelationMeccan': 'मक्का',
        'revelationMedinan': 'मदीना',
      };
      final debris = RegExp(r'के बारे में बतावल गइल बा| के ह$| के बा$');

      for (final entry in expected.entries) {
        final value = arb[entry.key] as String;
        expect(
          value,
          entry.value,
          reason: 'app_bh.arb must keep concise ${entry.key} copy',
        );
        expect(
          value,
          isNot(contains(debris)),
          reason: 'app_bh.arb keeps explanatory debris in ${entry.key}',
        );
      }
    });
  });
}

Map<String, dynamic> _readArb(String path) {
  return jsonDecode(File(path).readAsStringSync()) as Map<String, dynamic>;
}

const _allowedMultilineMessageKeys = {'chatbotOfflinePrompt'};

const _translationBatchDebris = {
  'ukax mä juk’a pachanakanwa.\n',
  'a ni.\n',
  'के लिये।\n',
  'इति .\n',
  'ዝብል ቃል ንምርካብ ኣብዚ ንጠውቅ።\n',
};

const _translationBatchFragments = {
  'Telecharger Complete',
  'Telechargement Failed',
  'Telecharger Manager',
  'Telechargement Manager',
  'Télécharger Complete',
  'Téléchargement Failed',
  'Télécharger Manager',
  'Téléchargement Manager',
  'Fichier Téléchargées',
  'Filew Téléchargements',
};

bool _hasRepeatedWordRun(String value) {
  final words = value
      .split(RegExp(r'\s+'))
      .where((word) => word.trim().isNotEmpty)
      .map((word) => word.trim())
      .toList(growable: false);

  var previous = '';
  var runLength = 0;
  for (final word in words) {
    if (word == previous) {
      runLength += 1;
    } else {
      previous = word;
      runLength = 1;
    }

    if (runLength >= 6) {
      return true;
    }
  }

  return false;
}
