import 'dart:convert';
import 'dart:io';

void main() {
  final l10nDir = Directory('lib/l10n');
  final english = _readArb('lib/l10n/app_en.arb');
  final turkish = _readArb('lib/l10n/app_tr.arb');

  final arbFiles = l10nDir
      .listSync()
      .whereType<File>()
      .where((file) => file.path.endsWith('.arb'))
      .where((file) => file.uri.pathSegments.last.startsWith('app_'));

  for (final file in arbFiles) {
    final locale = file.uri.pathSegments.last
        .replaceFirst('app_', '')
        .replaceFirst('.arb', '');
    final current = _readArb(file.path);
    final fallback = locale == 'tr' ? turkish : english;
    final updated = <String, dynamic>{};

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
      updated[key] = current.containsKey(key) ? current[key] : entry.value;

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

    const encoder = JsonEncoder.withIndent('  ');
    file.writeAsStringSync('${encoder.convert(updated)}\n');
    stdout.writeln('Synced ${file.path}');
  }
}

Map<String, dynamic> _readArb(String path) {
  return jsonDecode(File(path).readAsStringSync()) as Map<String, dynamic>;
}
