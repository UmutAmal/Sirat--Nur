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
  final arbFiles = Directory('lib/l10n')
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

    for (final key in keys) {
      final englishValue = english[key];
      final metadataKey = '@$key';

      if (locale == 'en') {
        updated[key] = englishValue;
      } else if (locale == 'tr') {
        updated[key] = turkish[key] ?? englishValue;
      } else if (!force && _shouldPreserve(current[key], englishValue)) {
        updated[key] = current[key];
      } else if (englishValue is String) {
        updated[key] = await _translateValue(
          translator,
          englishValue,
          _toTranslatorLocale(locale),
        );
      } else {
        updated[key] = englishValue;
      }

      if (english.containsKey(metadataKey)) {
        updated[metadataKey] = english[metadataKey];
      }
    }

    const encoder = JsonEncoder.withIndent('  ');
    file.writeAsStringSync('${encoder.convert(updated)}\n');
    stdout.writeln('Updated ${file.path}');
  }
}

Map<String, dynamic> _readArb(String path) {
  return jsonDecode(File(path).readAsStringSync()) as Map<String, dynamic>;
}

bool _shouldPreserve(dynamic currentValue, dynamic englishValue) {
  if (currentValue is! String || currentValue.trim().isEmpty) {
    return false;
  }

  if (englishValue is! String) {
    return true;
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

  for (var index = 0; index < currentPlaceholders.length; index++) {
    if (currentPlaceholders[index] != englishPlaceholders[index]) {
      return false;
    }
  }

  return true;
}

List<String> _extractPlaceholders(String value) {
  return RegExp(r'\{[^}]+\}')
      .allMatches(value)
      .map((match) => match.group(0)!)
      .toList();
}

Future<String> _translateValue(
  GoogleTranslator translator,
  String source,
  String locale,
) async {
  final placeholderMatches = RegExp(r'\{[^}]+\}').allMatches(source).toList();
  var tokenizedSource = source;
  final replacements = <MapEntry<String, String>>[];

  for (var index = 0; index < placeholderMatches.length; index++) {
    final placeholder = placeholderMatches[index].group(0)!;
    final token = '__PRAYER_PLACEHOLDER_${index}__';
    tokenizedSource = tokenizedSource.replaceFirst(placeholder, token);
    replacements.add(MapEntry(token, placeholder));
  }

  try {
    final translated = await translator.translate(
      tokenizedSource,
      from: 'en',
      to: locale,
    );
    return _restorePlaceholders(translated.text, replacements, source);
  } catch (_) {
    return source;
  }
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
