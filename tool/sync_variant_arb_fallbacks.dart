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

      if (englishValue is! String || sourceValue is! String || targetValue is! String) {
        continue;
      }

      if (targetValue == englishValue && sourceValue != englishValue) {
        updated[key] = sourceValue;
        changes++;
      }
    }

    const encoder = JsonEncoder.withIndent('  ');
    File(targetPath).writeAsStringSync('${encoder.convert(updated)}\n');
    stdout.writeln('Updated ${pair.target} from ${pair.source}: $changes keys');
  }
}

Map<String, dynamic> _readArb(String path) {
  return jsonDecode(File(path).readAsStringSync()) as Map<String, dynamic>;
}
