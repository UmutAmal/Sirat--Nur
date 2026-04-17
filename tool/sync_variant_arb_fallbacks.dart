import 'dart:convert';
import 'dart:io';

const _variantPairs = <({String target, String source})>[
  (target: 'nb', source: 'no'),
  (target: 'nn', source: 'no'),
  (target: 'tw', source: 'ak'),
  (target: 'zh', source: 'zh_CN'),
];

Future<void> main() async {
  final english = _readArb('lib/l10n/app_en.arb');

  for (final pair in _variantPairs) {
    final targetPath = 'lib/l10n/app_${pair.target}.arb';
    final sourcePath = 'lib/l10n/app_${pair.source}.arb';
    final target = _readArb(targetPath);
    final source = _readArb(sourcePath);
    final plan = buildVariantFallbackPlan(
      target: target,
      source: source,
      english: english,
    );

    const encoder = JsonEncoder.withIndent('  ');
    final nextContent = '${encoder.convert(plan.updated)}\n';
    final targetFile = File(targetPath);
    final currentContent = targetFile.readAsStringSync();
    if (shouldWriteArbFileContent(currentContent, nextContent)) {
      targetFile.writeAsStringSync(nextContent);
      stdout.writeln(
        'Updated ${pair.target} from ${pair.source}: ${plan.changes} keys',
      );
    } else {
      stdout.writeln(
        'Unchanged ${pair.target} from ${pair.source}: ${plan.changes} keys',
      );
    }
  }
}

Map<String, dynamic> _readArb(String path) {
  return jsonDecode(File(path).readAsStringSync()) as Map<String, dynamic>;
}

VariantFallbackPlan buildVariantFallbackPlan({
  required Map<String, dynamic> target,
  required Map<String, dynamic> source,
  required Map<String, dynamic> english,
}) {
  final updated = Map<String, dynamic>.from(target);
  var changes = 0;

  for (final entry in english.entries) {
    final key = entry.key;
    if (key.startsWith('@')) {
      continue;
    }

    final englishValue = entry.value;
    final sourceValue = source[key];
    final targetValue = target[key];

    if (englishValue is! String ||
        sourceValue is! String ||
        targetValue is! String) {
      continue;
    }

    if (targetValue == englishValue &&
        sourceValue != englishValue &&
        isSafeVariantFallbackValue(
          sourceValue: sourceValue,
          englishValue: englishValue,
        )) {
      updated[key] = sourceValue;
      changes++;
    }
  }

  return VariantFallbackPlan(updated: updated, changes: changes);
}

bool isSafeVariantFallbackValue({
  required String sourceValue,
  required String englishValue,
}) {
  if (sourceValue.trim().isEmpty) {
    return false;
  }

  if (_hasLineBreak(sourceValue) && !_hasLineBreak(englishValue)) {
    return false;
  }

  return _hasMatchingPlaceholders(sourceValue, englishValue);
}

bool shouldWriteArbFileContent(String currentContent, String nextContent) {
  return _normalizeLineEndings(currentContent) !=
      _normalizeLineEndings(nextContent);
}

String _normalizeLineEndings(String value) {
  return value.replaceAll('\r\n', '\n').replaceAll('\r', '\n');
}

bool _hasLineBreak(String value) {
  return value.contains('\n') || value.contains('\r');
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

class VariantFallbackPlan {
  const VariantFallbackPlan({required this.updated, required this.changes});

  final Map<String, dynamic> updated;
  final int changes;
}
