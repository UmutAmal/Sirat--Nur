import 'dart:convert';
import 'dart:io';

final _marker = RegExp(r'[ÃÂÄÅØÙâ]');
final _suspicious = RegExp(r'[ÃÂÄÅØÙâ€œâ€â€˜â€™â€“â€”]');

int _score(String input) => _suspicious.allMatches(input).length;

bool _looksMojibake(String input) => _marker.hasMatch(input);

String _repairChunkIterative(String input) {
  var current = input;
  for (var i = 0; i < 4; i++) {
    String decoded;
    try {
      decoded = utf8.decode(latin1.encode(current));
    } catch (_) {
      break;
    }
    if (decoded == current) break;
    if (_score(decoded) < _score(current)) {
      current = decoded;
      continue;
    }
    break;
  }
  return current;
}

String _repairText(String input) {
  return input.splitMapJoin(
    RegExp(r'\S+'),
    onMatch: (m) {
      final token = m.group(0)!;
      if (!_looksMojibake(token)) return token;
      return _repairChunkIterative(token);
    },
    onNonMatch: (s) => s,
  );
}

Future<void> _repairArb(File file) async {
  final raw = await file.readAsString();
  final parsed = jsonDecode(raw);
  if (parsed is! Map<String, dynamic>) return;

  var changed = false;
  final out = <String, dynamic>{};

  for (final entry in parsed.entries) {
    final value = entry.value;
    if (value is String) {
      final repaired = _repairText(value);
      out[entry.key] = repaired;
      if (repaired != value) changed = true;
    } else {
      out[entry.key] = value;
    }
  }

  if (!changed) {
    stdout.writeln('No changes: ${file.path}');
    return;
  }

  final encoder = const JsonEncoder.withIndent('  ');
  await file.writeAsString('${encoder.convert(out)}\n');
  stdout.writeln('Repaired ARB: ${file.path}');
}

Future<void> _repairTextFile(File file) async {
  final raw = await file.readAsString();
  if (!_looksMojibake(raw)) {
    stdout.writeln('No markers: ${file.path}');
    return;
  }

  final repaired = _repairText(raw);
  if (repaired == raw) {
    stdout.writeln('No changes: ${file.path}');
    return;
  }

  await file.writeAsString(repaired);
  stdout.writeln('Repaired text: ${file.path}');
}

Future<void> _repairPath(String path) async {
  final file = File(path);
  if (!await file.exists()) {
    stderr.writeln('Missing file: $path');
    return;
  }

  if (path.endsWith('.arb')) {
    await _repairArb(file);
  } else {
    await _repairTextFile(file);
  }
}

Future<void> main(List<String> args) async {
  final targets = args.isNotEmpty
      ? args
      : const [
          'lib/l10n/app_tr.arb',
          'lib/l10n/app_ar.arb',
          'lib/l10n/app_en.arb',
          'lib/core/constants/app_constants.dart',
        ];

  for (final target in targets) {
    await _repairPath(target);
  }

  stdout.writeln('Repair run complete.');
}
