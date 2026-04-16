import 'dart:convert';
import 'dart:io';

import 'package:translator/translator.dart';

Future<void> main(List<String> arguments) async {
  final force = arguments.contains('--force');
  final keys = arguments.where((argument) => argument != '--force').toList();

  if (keys.isEmpty) {
    stderr.writeln(
      'Usage: dart run tool/translate_arb_keys.dart [--force] <key> [<key> ...]',
    );
    exitCode = 64;
    return;
  }

  final english = _readArb('lib/l10n/app_en.arb');
  final turkish = _readArb('lib/l10n/app_tr.arb');
  final translator = GoogleTranslator();
  final arbFiles =
      Directory('lib/l10n')
          .listSync()
          .whereType<File>()
          .where((file) => file.path.endsWith('.arb'))
          .where((file) => file.uri.pathSegments.last.startsWith('app_'))
          .toList()
        ..sort((a, b) => a.path.compareTo(b.path));

  for (final key in keys) {
    if (!english.containsKey(key)) {
      stderr.writeln('Missing template key in app_en.arb: $key');
      exitCode = 65;
      return;
    }
  }

  for (final file in arbFiles) {
    final locale = file.uri.pathSegments.last
        .replaceFirst('app_', '')
        .replaceFirst('.arb', '');
    final current = _readArb(file.path);
    final updated = Map<String, dynamic>.from(current);
    final pendingTranslations = <String, String>{};

    for (final key in keys) {
      final englishValue = english[key];
      final metadataKey = '@$key';

      if (locale == 'en') {
        updated[key] = englishValue;
      } else if (locale == 'tr') {
        updated[key] = turkish[key] ?? englishValue;
      } else if (!force && _shouldPreserve(key, current[key], englishValue)) {
        updated[key] = current[key];
      } else if (englishValue is String) {
        pendingTranslations[key] = englishValue;
      } else {
        updated[key] = englishValue;
      }

      if (english.containsKey(metadataKey)) {
        updated[metadataKey] = english[metadataKey];
      }
    }

    if (pendingTranslations.isNotEmpty) {
      final translatedValues = await _translateValues(
        translator,
        pendingTranslations,
        current,
        _toTranslatorLocale(locale),
      );
      updated.addAll(translatedValues);
    }

    const encoder = JsonEncoder.withIndent('  ');
    file.writeAsStringSync('${encoder.convert(updated)}\n');
    stdout.writeln('Updated ${file.path}');
  }
}

Map<String, dynamic> _readArb(String path) {
  return jsonDecode(File(path).readAsStringSync()) as Map<String, dynamic>;
}

bool _shouldPreserve(String key, dynamic currentValue, dynamic englishValue) {
  if (currentValue is! String || currentValue.trim().isEmpty) {
    return false;
  }

  if (englishValue is! String) {
    return true;
  }

  if (_mustStaySingleLine(key) && _hasLineBreak(currentValue)) {
    return false;
  }

  if (!_hasMatchingPlaceholders(currentValue, englishValue)) {
    return false;
  }

  return currentValue != englishValue;
}

bool _hasMatchingPlaceholders(String currentValue, String englishValue) {
  final currentPlaceholders = _extractPlaceholders(currentValue);
  final englishPlaceholders = _extractPlaceholders(englishValue);
  if (currentPlaceholders.length != englishPlaceholders.length) {
    return false;
  }

  return _placeholderCounts(currentPlaceholders).toString() ==
      _placeholderCounts(englishPlaceholders).toString();
}

List<String> _extractPlaceholders(String value) {
  return RegExp(
    r'\{[^}]+\}',
  ).allMatches(value).map((match) => match.group(0)!).toList();
}

Map<String, int> _placeholderCounts(List<String> placeholders) {
  final counts = <String, int>{};
  for (final placeholder in placeholders) {
    counts[placeholder] = (counts[placeholder] ?? 0) + 1;
  }
  return Map.fromEntries(
    counts.entries.toList()..sort((a, b) => a.key.compareTo(b.key)),
  );
}

Future<Map<String, String>> _translateValues(
  GoogleTranslator translator,
  Map<String, String> sources,
  Map<String, dynamic> currentValues,
  String locale,
) async {
  final tokenizedEntries = <MapEntry<String, _TokenizedValue>>[
    for (final entry in sources.entries)
      MapEntry(entry.key, _tokenizeValue(entry.value)),
  ];
  const separator = '\n__ARB_ENTRY_SPLIT__\n';
  final joinedSource = tokenizedEntries
      .map((entry) => entry.value.tokenizedSource)
      .join(separator);

  try {
    final translated = await translator.translate(
      joinedSource,
      from: 'en',
      to: locale,
    );
    final parts = translated.text.split('__ARB_ENTRY_SPLIT__');
    if (parts.length != tokenizedEntries.length) {
      return _translateValuesIndividually(
        translator,
        tokenizedEntries,
        currentValues,
        locale,
      );
    }

    return {
      for (var index = 0; index < tokenizedEntries.length; index++)
        tokenizedEntries[index].key: resolveTranslatedArbValue(
          key: tokenizedEntries[index].key,
          source: tokenizedEntries[index].value.originalSource,
          currentValue: currentValues[tokenizedEntries[index].key],
          candidate: _restorePlaceholders(
            parts[index].trim(),
            tokenizedEntries[index].value.replacements,
            tokenizedEntries[index].value.originalSource,
          ),
        ),
    };
  } catch (_) {
    return {
      for (final entry in tokenizedEntries)
        entry.key: resolveTranslatedArbValue(
          key: entry.key,
          source: entry.value.originalSource,
          currentValue: currentValues[entry.key],
          candidate: entry.value.originalSource,
        ),
    };
  }
}

Future<Map<String, String>> _translateValuesIndividually(
  GoogleTranslator translator,
  List<MapEntry<String, _TokenizedValue>> tokenizedEntries,
  Map<String, dynamic> currentValues,
  String locale,
) async {
  final translatedValues = <String, String>{};

  for (final entry in tokenizedEntries) {
    var candidate = entry.value.originalSource;
    try {
      final translated = await translator.translate(
        entry.value.tokenizedSource,
        from: 'en',
        to: locale,
      );
      candidate = _restorePlaceholders(
        translated.text.trim(),
        entry.value.replacements,
        entry.value.originalSource,
      );
    } catch (_) {
      candidate = entry.value.originalSource;
    }

    translatedValues[entry.key] = resolveTranslatedArbValue(
      key: entry.key,
      source: entry.value.originalSource,
      currentValue: currentValues[entry.key],
      candidate: candidate,
    );
  }

  return translatedValues;
}

_TokenizedValue _tokenizeValue(String source) {
  final placeholderMatches = RegExp(r'\{[^}]+\}').allMatches(source).toList();
  var tokenizedSource = source;
  final replacements = <MapEntry<String, String>>[];

  for (var index = 0; index < placeholderMatches.length; index++) {
    final placeholder = placeholderMatches[index].group(0)!;
    final token = '__PRAYER_PLACEHOLDER_${index}__';
    tokenizedSource = tokenizedSource.replaceFirst(placeholder, token);
    replacements.add(MapEntry(token, placeholder));
  }

  return _TokenizedValue(
    originalSource: source,
    tokenizedSource: tokenizedSource,
    replacements: replacements,
  );
}

String _restorePlaceholders(
  String translated,
  List<MapEntry<String, String>> replacements,
  String source,
) {
  if (replacements.isEmpty) {
    return translated;
  }

  var restored = translated;
  for (final replacement in replacements) {
    if (!restored.contains(replacement.key)) {
      return source;
    }
    restored = restored.replaceAll(replacement.key, replacement.value);
  }
  return restored;
}

class _TokenizedValue {
  _TokenizedValue({
    required this.originalSource,
    required this.tokenizedSource,
    required this.replacements,
  });

  final String originalSource;
  final String tokenizedSource;
  final List<MapEntry<String, String>> replacements;
}

String resolveTranslatedArbValue({
  required String key,
  required String source,
  required Object? currentValue,
  required String candidate,
}) {
  final processedCandidate = _postProcessTranslation(
    key: key,
    translated: candidate,
    source: source,
  );

  if (_isUsableTranslationCandidate(key, source, processedCandidate)) {
    if (processedCandidate != _normalizeProperNames(source)) {
      return processedCandidate;
    }
  }

  final existingValue = currentValue;
  if (existingValue is String) {
    final processedExistingValue = _postProcessTranslation(
      key: key,
      translated: existingValue,
      source: source,
    );

    if (_isUsableTranslationCandidate(key, source, processedExistingValue) &&
        processedExistingValue != _normalizeProperNames(source)) {
      return processedExistingValue;
    }
  }

  return _normalizeProperNames(source);
}

bool _isUsableTranslationCandidate(
  String key,
  String source,
  String candidate,
) {
  final trimmed = candidate.trim();
  if (trimmed.isEmpty) {
    return false;
  }

  if (!_hasMatchingPlaceholders(trimmed, source)) {
    return false;
  }

  if (_mustStaySingleLine(key) && _hasLineBreak(trimmed)) {
    return false;
  }

  return true;
}

String _postProcessTranslation({
  required String key,
  required String translated,
  required String source,
}) {
  final normalizedTranslated = _normalizeProperNames(translated);
  final normalizedSource = _normalizeProperNames(source);

  if (key == 'chatbotUseCloudAi') {
    return _normalizeGeminiLabel(normalizedTranslated, normalizedSource);
  }

  if (key == 'onboarding1Title') {
    return _normalizeOnboardingBrand(normalizedTranslated, normalizedSource);
  }

  if (_mustStaySingleLine(key) && _hasLineBreak(normalizedTranslated)) {
    return normalizedSource;
  }

  return normalizedTranslated;
}

bool _mustStaySingleLine(String key) {
  return key.startsWith('audioVoice') ||
      key == 'quranLoadFailed' ||
      key == 'locationDetectionFailed' ||
      key == 'tapToCount' ||
      key == 'zikr' ||
      key == 'qiblaCalibration' ||
      key == 'qiblaDirection' ||
      key == 'compass' ||
      key == 'turnDevice' ||
      key == 'qiblaFound' ||
      key == 'search' ||
      key == 'searchHint' ||
      key == 'retry' ||
      key == 'save' ||
      key == 'no' ||
      key == 'addBookmark' ||
      key == 'removeBookmark' ||
      key == 'downloading' ||
      key == 'prayerTimes' ||
      key == 'quran' ||
      key == 'surah' ||
      key == 'surahs' ||
      key == 'ayahs' ||
      key == 'juz' ||
      key == 'page' ||
      key == 'calibrationOffset' ||
      key == 'currentOffset' ||
      key == 'theme' ||
      key == 'lightMode' ||
      key == 'darkMode' ||
      key == 'systemDefault' ||
      key == 'downloads' ||
      key == 'ibadahTracker' ||
      key == 'liveTv' ||
      key == 'watchLive' ||
      key == 'streamError' ||
      key == 'reload' ||
      key == 'checkConnection' ||
      key == 'settings' ||
      key == 'home' ||
      key == 'calendar' ||
      key == 'nextPrayer' ||
      key == 'quranReading' ||
      key == 'prayers' ||
      key == 'fasting' ||
      key == 'analytics' ||
      key == 'weeklyProgress' ||
      key == 'hijriCalendar' ||
      key == 'namesOfAllah' ||
      key == 'today' ||
      key == 'specialDays' ||
      key == 'done' ||
      key == 'prayerCalculation' ||
      key == 'method' ||
      key == 'madhab' ||
      key == 'location' ||
      key == 'language' ||
      key == 'selectLanguage' ||
      key == 'currentLocation' ||
      key == 'dataStorage' ||
      key == 'clearCache' ||
      key == 'cacheClearedSuccess' ||
      key == 'about' ||
      key == 'privacyPolicy' ||
      key == 'termsOfService' ||
      key == 'contactUs' ||
      key == 'version' ||
      key == 'rateApp' ||
      key == 'shareApp' ||
      key == 'shareAppMessage' ||
      key == 'compassSmoothing' ||
      key == 'manualCorrectionDesc' ||
      key == 'calibrationRequiredFigure8' ||
      key == 'qiblaLocationRequiredTitle' ||
      key == 'qiblaLocationRequiredBody' ||
      key == 'downloadCompleted' ||
      key == 'quranAudioSourcesUnavailable' ||
      key == 'quranAudioSourcesIncomplete' ||
      key == 'adhanNotificationChannelName' ||
      key == 'adhanNotificationChannelDescription' ||
      key == 'freeStorage' ||
      key == 'downloadPreparing' ||
      key == 'downloadingSurah' ||
      key == 'downloadedSurahProgress' ||
      key == 'redownloadMissingRepair' ||
      key == 'downloadCancelling' ||
      key == 'downloadAction' ||
      key == 'resumeDownload' ||
      key == 'deleteDownloadedFiles' ||
      key == 'offlineQuranAudioPacks' ||
      key == 'storedOnDeviceMb' ||
      key == 'downloadCanceledForReciter' ||
      key == 'downloadFinishedForReciter' ||
      key == 'downloadPartiallyFinishedForReciter' ||
      key == 'deletedOfflineFilesForReciter' ||
      key == 'audioPlayFailed' ||
      key == 'diagnostics' ||
      key == 'diagnosticsUiAudioAssets' ||
      key == 'diagnosticsQuranAudioAssets' ||
      key == 'diagnosticsSupportedCount' ||
      key == 'diagnosticsQuranDataset' ||
      key == 'diagnosticsQuranSurahs' ||
      key == 'diagnosticsQuranAyahs' ||
      key == 'diagnosticsQuranJuzMetadata' ||
      key == 'diagnosticsQuranCloudCheckFailed' ||
      key == 'diagnosticsQuranCloudStructuralCheckFailed' ||
      key == 'diagnosticsQuranCloudTablesMissing' ||
      key == 'diagnosticsQuranCloudJuzMissing' ||
      key == 'placesDataSourceUnavailableTitle' ||
      key == 'placesDataSourceUnavailableBody' ||
      key == 'chatbotLocalAiLabel' ||
      key == 'chatbotCloudAiLabel' ||
      key == 'chatbotUseCloudAi' ||
      key == 'chatbotDownloadLocalAi' ||
      key == 'chatbotOfflineDownloadLabel' ||
      key == 'offlineMode' ||
      key == 'cancel' ||
      key == 'onboarding1Title' ||
      key == 'onboarding1Desc' ||
      key == 'onboarding2Title' ||
      key == 'onboarding2Desc' ||
      key == 'onboarding3Title' ||
      key == 'onboarding3Desc' ||
      key == 'next' ||
      key == 'getStarted' ||
      key == 'chatbotGreeting' ||
      key == 'chatbotHint' ||
      key == 'chatbotThinking' ||
      key == 'premiumProductUnavailable' ||
      key == 'premiumPurchaseFailed' ||
      key == 'prayerCompletion' ||
      key == 'streaks' ||
      key == 'dayStreak' ||
      key == 'chatbotOfflineSwitched' ||
      key == 'chatbotLocalNoInfo';
}

bool _hasLineBreak(String value) {
  return value.contains('\n') || value.contains('\r');
}

String _normalizeProperNames(String value) {
  return value
      .replaceAll('AbdulBaset', 'Abdul Basit')
      .replaceAll('Abdul Baset', 'Abdul Basit');
}

String _normalizeGeminiLabel(String translated, String source) {
  final hasGemini = translated.contains('Gemini');
  if (!hasGemini) {
    return source;
  }

  return translated.replaceAllMapped(RegExp(r'\([^)]*\)'), (_) => '(Gemini)');
}

String _normalizeOnboardingBrand(String translated, String source) {
  if (!source.contains('Sirat-ı Nur')) {
    return translated;
  }

  const appBrand = 'Sirat-ı Nur';
  const translatedBrandFragments = [
    'Way of Allah',
    "Voie d'Allah",
    'Camino de Allah',
    'Allahs vej',
    'طريقة الله',
    '阿拉之道',
  ];

  var normalized = translated;
  for (final fragment in translatedBrandFragments) {
    normalized = normalized.replaceAll(fragment, appBrand);
  }
  return normalized;
}

String _toTranslatorLocale(String locale) {
  switch (locale) {
    case 'nb':
    case 'nn':
      return 'no';
    case 'tw':
      return 'ak';
    case 'zh':
      return 'zh-cn';
    case 'zh_CN':
      return 'zh-cn';
    case 'zh_TW':
      return 'zh-tw';
    default:
      return locale.replaceAll('_', '-');
  }
}
