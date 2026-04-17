import 'dart:convert';
import 'dart:io';

const _allowEnglishFallbackFlag = '--allow-english-fallback';

void main(List<String> arguments) {
  final unknownArguments = arguments
      .where((argument) => argument != _allowEnglishFallbackFlag)
      .toList(growable: false);
  if (unknownArguments.isNotEmpty) {
    stderr.writeln(
      'Usage: dart run tool/sync_arb_keys.dart '
      '[$_allowEnglishFallbackFlag]',
    );
    exitCode = 64;
    return;
  }

  final allowEnglishFallback = arguments.contains(_allowEnglishFallbackFlag);
  final l10nDir = Directory('lib/l10n');
  final english = _readArb('lib/l10n/app_en.arb');
  final turkish = _readArb('lib/l10n/app_tr.arb');

  final arbFiles =
      l10nDir
          .listSync()
          .whereType<File>()
          .where((file) => file.path.endsWith('.arb'))
          .where((file) => file.uri.pathSegments.last.startsWith('app_'))
          .toList()
        ..sort((a, b) => a.path.compareTo(b.path));

  final plans = <({File file, SyncArbFilePlan plan})>[];
  final blockedFallbacks = <String, List<String>>{};

  for (final file in arbFiles) {
    final locale = file.uri.pathSegments.last
        .replaceFirst('app_', '')
        .replaceFirst('.arb', '');
    final current = _readArb(file.path);
    final plan = buildSyncArbFilePlan(
      locale: locale,
      current: current,
      english: english,
      turkish: turkish,
      allowEnglishFallback: allowEnglishFallback,
    );

    if (plan.blockedEnglishFallbackKeys.isNotEmpty) {
      blockedFallbacks[locale] = plan.blockedEnglishFallbackKeys;
    }
    plans.add((file: file, plan: plan));
  }

  if (blockedFallbacks.isNotEmpty) {
    stderr.writeln(
      'Refusing to seed English fallback copy into non-English locale files.',
    );
    stderr.writeln(
      'Translate these keys first, or re-run with '
      '$_allowEnglishFallbackFlag only for reviewed temporary placeholders.',
    );
    for (final entry in blockedFallbacks.entries) {
      stderr.writeln('app_${entry.key}.arb: ${entry.value.join(', ')}');
    }
    exitCode = 66;
    return;
  }

  for (final item in plans) {
    const encoder = JsonEncoder.withIndent('  ');
    final nextContent = '${encoder.convert(item.plan.updated)}\n';
    final currentContent = item.file.readAsStringSync();
    if (shouldWriteArbFileContent(currentContent, nextContent)) {
      item.file.writeAsStringSync(nextContent);
      stdout.writeln('Synced ${item.file.path}');
    } else {
      stdout.writeln('Unchanged ${item.file.path}');
    }
  }
}

Map<String, dynamic> _readArb(String path) {
  return jsonDecode(File(path).readAsStringSync()) as Map<String, dynamic>;
}

SyncArbFilePlan buildSyncArbFilePlan({
  required String locale,
  required Map<String, dynamic> current,
  required Map<String, dynamic> english,
  required Map<String, dynamic> turkish,
  required bool allowEnglishFallback,
}) {
  final fallback = locale == 'tr' ? turkish : english;
  final updated = <String, dynamic>{};
  final blockedEnglishFallbackKeys = <String>[];

  updated['@@locale'] = current['@@locale'] ?? locale;

  for (final entry in current.entries.where(
    (entry) => entry.key.startsWith('@@') && entry.key != '@@locale',
  )) {
    updated[entry.key] = entry.value;
  }

  for (final entry in fallback.entries.where(
    (entry) => !entry.key.startsWith('@@') && !entry.key.startsWith('@'),
  )) {
    final key = entry.key;
    final maySeedFallback =
        locale == 'en' || locale == 'tr' || allowEnglishFallback;

    if (current.containsKey(key)) {
      updated[key] = current[key];
    } else if (maySeedFallback) {
      updated[key] = entry.value;
    } else {
      blockedEnglishFallbackKeys.add(key);
      continue;
    }

    final metadataKey = '@$key';
    if (current.containsKey(metadataKey)) {
      updated[metadataKey] = current[metadataKey];
    } else if (fallback.containsKey(metadataKey)) {
      updated[metadataKey] = fallback[metadataKey];
    } else if (english.containsKey(metadataKey)) {
      updated[metadataKey] = english[metadataKey];
    }
  }

  for (final entry in current.entries) {
    if (!updated.containsKey(entry.key)) {
      updated[entry.key] = entry.value;
    }
  }

  return SyncArbFilePlan(
    updated: updated,
    blockedEnglishFallbackKeys: blockedEnglishFallbackKeys..sort(),
  );
}

bool shouldWriteArbFileContent(String currentContent, String nextContent) {
  return _normalizeLineEndings(currentContent) !=
      _normalizeLineEndings(nextContent);
}

String _normalizeLineEndings(String value) {
  return value.replaceAll('\r\n', '\n').replaceAll('\r', '\n');
}

class SyncArbFilePlan {
  const SyncArbFilePlan({
    required this.updated,
    required this.blockedEnglishFallbackKeys,
  });

  final Map<String, dynamic> updated;
  final List<String> blockedEnglishFallbackKeys;
}
