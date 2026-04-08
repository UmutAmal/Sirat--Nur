import 'dart:convert';
import 'dart:io';

void main() {
  final analyticsKeysEn = {
    "prayerCompletion": "Prayer Completion",
    "streaks": "Streaks",
    "dayStreak": "Day streak",
    "bestStreak": "Best streak",
  };

  final analyticsKeysTr = {
    "prayerCompletion": "Namaz Tamamlama",
    "streaks": "Seriler",
    "dayStreak": "Gün serisi",
    "bestStreak": "En iyi seri",
  };

  void updateArb(String path, Map<String, dynamic> newKeys) {
    final file = File(path);
    if (!file.existsSync()) return;

    final content = file.readAsStringSync();
    final Map<String, dynamic> json = jsonDecode(content);

    for (final entry in newKeys.entries) {
      json.putIfAbsent(entry.key, () => entry.value);
    }

    const encoder = JsonEncoder.withIndent('  ');
    file.writeAsStringSync(encoder.convert(json));
    stdout.writeln('Updated \$path');
  }

  final arbFiles = Directory('lib/l10n')
      .listSync()
      .whereType<File>()
      .where((file) => file.path.endsWith('.arb'))
      .where((file) => file.uri.pathSegments.last.startsWith('app_'));

  for (final file in arbFiles) {
    final isTurkish = file.path.endsWith('app_tr.arb');
    updateArb(file.path, isTurkish ? analyticsKeysTr : analyticsKeysEn);
  }
}
