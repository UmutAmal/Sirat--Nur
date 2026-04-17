import 'dart:convert';
import 'dart:io';

import 'package:translator/translator.dart';

const _forceFlag = '--force';
const _reportFlag = '--report';
const _dryRunFlag = '--dry-run';
const _helpFlag = '--help';
const _shortHelpFlag = '-h';
const _optionFlags = <String>{
  _forceFlag,
  _reportFlag,
  _dryRunFlag,
  _helpFlag,
  _shortHelpFlag,
};

String translateArbKeysUsage() {
  return 'Usage: dart run tool/translate_arb_keys.dart '
      '[--force] [--report|--dry-run] <key> [<key> ...]';
}

bool isTranslateArbKeysHelpRequest(List<String> arguments) {
  return arguments.contains(_helpFlag) || arguments.contains(_shortHelpFlag);
}

Future<void> main(List<String> arguments) async {
  if (isTranslateArbKeysHelpRequest(arguments)) {
    stdout.writeln(translateArbKeysUsage());
    return;
  }

  final force = arguments.contains(_forceFlag);
  final reportOnly =
      arguments.contains(_reportFlag) || arguments.contains(_dryRunFlag);
  final keys = arguments
      .where((argument) => !_optionFlags.contains(argument))
      .toList();

  if (keys.isEmpty) {
    stderr.writeln(translateArbKeysUsage());
    exitCode = 64;
    return;
  }

  final english = _readArb('lib/l10n/app_en.arb');
  final turkish = _readArb('lib/l10n/app_tr.arb');
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

  if (reportOnly) {
    final localeArbs = <String, Map<String, dynamic>>{
      for (final file in arbFiles)
        file.uri.pathSegments.last
            .replaceFirst('app_', '')
            .replaceFirst('.arb', ''): _readArb(
          file.path,
        ),
    };
    final report = buildL10nDebtReport(
      keys: keys,
      english: english,
      localeArbs: localeArbs,
    );
    stdout.writeln(report.format());
    return;
  }

  final translator = GoogleTranslator();

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
    final nextContent = '${encoder.convert(updated)}\n';
    final currentContent = file.readAsStringSync();
    if (shouldWriteArbFileContent(currentContent, nextContent)) {
      file.writeAsStringSync(nextContent);
      stdout.writeln('Updated ${file.path}');
    } else {
      stdout.writeln('Unchanged ${file.path}');
    }
  }
}

Map<String, dynamic> _readArb(String path) {
  return jsonDecode(File(path).readAsStringSync()) as Map<String, dynamic>;
}

bool shouldWriteArbFileContent(String currentContent, String nextContent) {
  return _normalizeLineEndings(currentContent) !=
      _normalizeLineEndings(nextContent);
}

String _normalizeLineEndings(String value) {
  return value.replaceAll('\r\n', '\n').replaceAll('\r', '\n');
}

L10nDebtReport buildL10nDebtReport({
  required List<String> keys,
  required Map<String, dynamic> english,
  required Map<String, Map<String, dynamic>> localeArbs,
}) {
  final entries = <L10nDebtEntry>[];

  for (final key in keys) {
    final englishValue = english[key];
    final sameAsEnglishLocales = <String>[];
    final missingOrEmptyLocales = <String>[];
    final placeholderMismatchLocales = <String>[];

    for (final localeEntry in localeArbs.entries) {
      final locale = localeEntry.key;
      if (locale == 'en') {
        continue;
      }

      final currentValue = localeEntry.value[key];
      if (currentValue is! String || currentValue.trim().isEmpty) {
        missingOrEmptyLocales.add(locale);
      } else if (englishValue is String &&
          _isEnglishFallbackEquivalent(currentValue, englishValue)) {
        sameAsEnglishLocales.add(locale);
      } else if (englishValue is String &&
          !_hasMatchingPlaceholders(currentValue, englishValue)) {
        placeholderMismatchLocales.add(locale);
      }
    }

    entries.add(
      L10nDebtEntry(
        key: key,
        sameAsEnglishLocales: _sorted(sameAsEnglishLocales),
        missingOrEmptyLocales: _sorted(missingOrEmptyLocales),
        placeholderMismatchLocales: _sorted(placeholderMismatchLocales),
      ),
    );
  }

  return L10nDebtReport(entries);
}

List<String> _sorted(List<String> values) {
  return values..sort();
}

class L10nDebtReport {
  const L10nDebtReport(this.entries);

  final List<L10nDebtEntry> entries;

  int get sameAsEnglishCount => entries.fold(
    0,
    (total, entry) => total + entry.sameAsEnglishLocales.length,
  );

  int get missingOrEmptyCount => entries.fold(
    0,
    (total, entry) => total + entry.missingOrEmptyLocales.length,
  );

  int get placeholderMismatchCount => entries.fold(
    0,
    (total, entry) => total + entry.placeholderMismatchLocales.length,
  );

  bool get hasDebt =>
      sameAsEnglishCount > 0 ||
      missingOrEmptyCount > 0 ||
      placeholderMismatchCount > 0;

  String format() {
    final buffer = StringBuffer()
      ..writeln('L10n debt report')
      ..writeln('Keys: ${entries.length}')
      ..writeln('Same-as-English locales: $sameAsEnglishCount')
      ..writeln('Missing/empty locales: $missingOrEmptyCount')
      ..writeln('Placeholder mismatch locales: $placeholderMismatchCount');

    final debtEntries = entries.where((entry) => entry.hasDebt);
    if (debtEntries.isEmpty) {
      buffer.writeln('No l10n debt found for selected keys.');
    } else {
      for (final entry in debtEntries) {
        buffer.writeln('- ${entry.key}: ${entry.summary}');
      }
    }

    return buffer.toString().trimRight();
  }
}

class L10nDebtEntry {
  const L10nDebtEntry({
    required this.key,
    required this.sameAsEnglishLocales,
    required this.missingOrEmptyLocales,
    required this.placeholderMismatchLocales,
  });

  final String key;
  final List<String> sameAsEnglishLocales;
  final List<String> missingOrEmptyLocales;
  final List<String> placeholderMismatchLocales;

  bool get hasDebt =>
      sameAsEnglishLocales.isNotEmpty ||
      missingOrEmptyLocales.isNotEmpty ||
      placeholderMismatchLocales.isNotEmpty;

  String get summary {
    final parts = <String>[];
    if (sameAsEnglishLocales.isNotEmpty) {
      parts.add('same-as-English=${sameAsEnglishLocales.join(',')}');
    }
    if (missingOrEmptyLocales.isNotEmpty) {
      parts.add('missing-or-empty=${missingOrEmptyLocales.join(',')}');
    }
    if (placeholderMismatchLocales.isNotEmpty) {
      parts.add('placeholder-mismatch=${placeholderMismatchLocales.join(',')}');
    }
    return parts.join('; ');
  }
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

  if (!_hasRequiredTechnicalTokens(currentValue, englishValue)) {
    return false;
  }

  if (_hasKnownWrongContext(key, currentValue)) {
    return false;
  }

  return !_isEnglishFallbackEquivalent(currentValue, englishValue);
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
      MapEntry(entry.key, _tokenizeValue(entry.key, entry.value)),
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
          candidate: _withoutPromptFallback(
            candidate: _restorePlaceholders(
              parts[index].trim(),
              tokenizedEntries[index].value.replacements,
              tokenizedEntries[index].value.originalSource,
            ),
            tokenizedValue: tokenizedEntries[index].value,
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
      candidate: _withoutPromptFallback(
        candidate: candidate,
        tokenizedValue: entry.value,
      ),
    );
  }

  return translatedValues;
}

_TokenizedValue _tokenizeValue(String key, String source) {
  final translationSource = _translationPromptSourceForKey(key, source);
  final placeholderMatches = RegExp(
    r'\{[^}]+\}',
  ).allMatches(translationSource).toList();
  var tokenizedSource = translationSource;
  final replacements = <MapEntry<String, String>>[];

  for (var index = 0; index < placeholderMatches.length; index++) {
    final placeholder = placeholderMatches[index].group(0)!;
    final token = '__PRAYER_PLACEHOLDER_${index}__';
    tokenizedSource = tokenizedSource.replaceFirst(placeholder, token);
    replacements.add(MapEntry(token, placeholder));
  }

  for (final protectedToken in _protectedTechnicalTokens) {
    if (!tokenizedSource.contains(protectedToken)) {
      continue;
    }
    final token = '__PRAYER_PROTECTED_TOKEN_${replacements.length}__';
    tokenizedSource = tokenizedSource.replaceAll(protectedToken, token);
    replacements.add(MapEntry(token, protectedToken));
  }

  return _TokenizedValue(
    originalSource: source,
    translationSource: translationSource,
    tokenizedSource: tokenizedSource,
    replacements: replacements,
  );
}

String _translationPromptSourceForKey(String key, String source) {
  switch (key) {
    case 'apply':
      return 'Apply changes';
    case 'targetCount':
      return 'Target count: {target}';
    case 'recheckPremium':
      return 'Recheck premium subscription status';
    case 'syncStore':
      return 'Sync with the app store to confirm your premium subscription.';
    case 'premiumVerified':
      return 'Premium subscription verified.';
    case 'premiumNotFound':
      return 'Premium subscription not found.';
    case 'premiumRefreshError':
      return 'Could not refresh premium subscription status: {error}';
    case 'checkingQuranDb':
      return 'Checking the Quran database...';
    case 'resetOnboarding':
      return 'Reset intro setup';
    default:
      return source;
  }
}

String _withoutPromptFallback({
  required String candidate,
  required _TokenizedValue tokenizedValue,
}) {
  if (tokenizedValue.translationSource == tokenizedValue.originalSource) {
    return candidate;
  }

  final normalizedCandidate = _normalizeProperNames(candidate.trim());
  final normalizedPrompt = _normalizeProperNames(
    tokenizedValue.translationSource.trim(),
  );
  if (normalizedCandidate == normalizedPrompt) {
    return tokenizedValue.originalSource;
  }

  return candidate;
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
    required this.translationSource,
    required this.tokenizedSource,
    required this.replacements,
  });

  final String originalSource;
  final String translationSource;
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
    if (!_isEnglishFallbackEquivalent(processedCandidate, source)) {
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
        !_isEnglishFallbackEquivalent(processedExistingValue, source)) {
      return processedExistingValue;
    }
  }

  if (existingValue is String && existingValue.trim().isNotEmpty) {
    final processedExistingValue = _postProcessTranslation(
      key: key,
      translated: existingValue,
      source: source,
    );
    if (_isEnglishFallbackEquivalent(processedExistingValue, source)) {
      return processedExistingValue;
    }
  }

  return _normalizeProperNames(source);
}

bool _isEnglishFallbackEquivalent(String value, String source) {
  return _englishFallbackComparisonToken(value) ==
      _englishFallbackComparisonToken(source);
}

String _englishFallbackComparisonToken(String value) {
  return _normalizeProperNames(value).trim().toLowerCase();
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

  if (!_hasRequiredTechnicalTokens(trimmed, source)) {
    return false;
  }

  if (_mustStaySingleLine(key) && _hasLineBreak(trimmed)) {
    return false;
  }

  if (_hasKnownWrongContext(key, trimmed)) {
    return false;
  }

  return true;
}

bool _hasKnownWrongContext(String key, String value) {
  if (key == 'apply') {
    return _containsAny(value, const ['Bewerben', '申请']);
  }

  if (key == 'resetOnboarding') {
    return _containsAny(value, const ['入职']);
  }

  if (_isPremiumSubscriptionKey(key)) {
    return _containsAny(value, const ['Prämie', '保费', 'قسط']);
  }

  if (_isDownloadCopyKey(key)) {
    return _containsAny(value, _knownDownloadTranslationDebris);
  }

  if (key == 'splashTagline') {
    return _containsAny(value, _knownSplashTaglineTranslationDebris) ||
        _englishFallbackComparisonToken(
          value,
        ).contains(_englishFallbackComparisonToken('Islamic Way of Light'));
  }

  return false;
}

bool _isDownloadCopyKey(String key) {
  return key.toLowerCase().contains('download');
}

const _knownDownloadTranslationDebris = [
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
];

const _knownSplashTaglineTranslationDebris = ['के बारे में', 'बतावल', 'nisqa'];

bool _isPremiumSubscriptionKey(String key) {
  return key == 'recheckPremium' ||
      key == 'syncStore' ||
      key == 'premiumNotFound' ||
      key == 'premiumVerified' ||
      key == 'premiumRefreshError';
}

bool _containsAny(String value, List<String> needles) {
  return needles.any(value.contains);
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

  if (key == 'chatbotLocalNoInfo') {
    return _normalizeOfflineStatusPrefix(
      normalizedTranslated,
      normalizedSource,
    );
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
      key == 'manageDatasets' ||
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
      key == 'splashTagline' ||
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
      key == 'placesSearchArea' ||
      key == 'nearbyMosques' ||
      key == 'placesFoundCount' ||
      key == 'distanceAwayKm' ||
      key == 'placesApiError' ||
      key == 'placesNetworkError' ||
      key == 'placesLocationRequiredTitle' ||
      key == 'placesLocationRequiredBody' ||
      key == 'placesMapTilesUnavailableTitle' ||
      key == 'placesMapTilesUnavailableBody' ||
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
      key == 'okLabel' ||
      key == 'apply' ||
      key == 'statusLabel' ||
      key == 'recheckPremium' ||
      key == 'syncStore' ||
      key == 'premiumNotFound' ||
      key == 'premiumVerified' ||
      key == 'premiumRefreshError' ||
      key == 'quranDbStatus' ||
      key == 'checkingQuranDb' ||
      key == 'dailyProgress' ||
      key == 'targetCount' ||
      key == 'resetCounter' ||
      key == 'resetOnboarding' ||
      key == 'tafsirLoading' ||
      key == 'tafsirSourceLabel' ||
      key == 'tafsirNoSurahFound' ||
      key == 'tafsirNoAyahFound' ||
      key == 'tafsirLoadFailed' ||
      key == 'tafsirNoTextForAyah' ||
      key == 'tafsirDownloadingProgress' ||
      key == 'tafsirLoadingProgress' ||
      key == 'tafsirApiStatusError' ||
      key == 'tafsirNoEntriesReturned' ||
      key == 'tafsirCacheUnavailable' ||
      key == 'premiumProductUnavailable' ||
      key == 'premiumPurchaseFailed' ||
      key == 'hadithUnavailableTitle' ||
      key == 'hadithUnavailableBody' ||
      key == 'prayerCompletion' ||
      key == 'streaks' ||
      key == 'dayStreak' ||
      key == 'chatbotOfflineSwitched' ||
      key == 'chatbotLocalNoInfo';
}

bool _hasLineBreak(String value) {
  return value.contains('\n') || value.contains('\r');
}

const _protectedTechnicalTokens = [
  'Supabase',
  'PLACES_OVERPASS_API_URL',
  'HTTP',
  'Mishary Alafasy',
  'Abdul Basit',
  'Sudais',
];

bool _hasRequiredTechnicalTokens(String translated, String source) {
  for (final token in _protectedTechnicalTokens) {
    if (source.contains(token) && !translated.contains(token)) {
      return false;
    }
  }
  return true;
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

String _normalizeOfflineStatusPrefix(String translated, String source) {
  if (!source.startsWith('[OFFLINE]')) {
    return translated;
  }

  final trimmedLeft = translated.trimLeft();
  final leadingWhitespaceLength = translated.length - trimmedLeft.length;
  final leadingWhitespace = translated.substring(0, leadingWhitespaceLength);
  if (trimmedLeft.startsWith('[OFFLINE]')) {
    return translated;
  }

  final bracketMatch = RegExp(r'^\[[^\]]+\]\s*').firstMatch(trimmedLeft);
  if (bracketMatch != null) {
    final body = trimmedLeft.substring(bracketMatch.end).trimLeft();
    return '$leadingWhitespace[OFFLINE] $body';
  }

  return '$leadingWhitespace[OFFLINE] $trimmedLeft';
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
