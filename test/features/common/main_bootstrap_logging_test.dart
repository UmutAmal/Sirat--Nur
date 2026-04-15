import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('main bootstrap logs do not include raw exception objects', () {
    final source = File('lib/main.dart').readAsStringSync();

    const forbiddenSnippets = [
      r'Supabase init failed (non-blocking): $e',
      r'Timezone init failed (non-blocking): $e',
      r'Uncaught error: $error',
      r'WidgetService init failed (non-blocking): $e',
      r'Prayer notification bootstrap failed: $error',
      r'Widget update failed (non-blocking): $e',
      r'Prayer widget update failed (non-blocking): $e',
      r'Qibla widget update failed (non-blocking): $e',
      r'Ayah widget update failed (non-blocking): $e',
      'debugPrintStack',
    ];

    for (final snippet in forbiddenSnippets) {
      expect(
        source,
        isNot(contains(snippet)),
        reason: 'main.dart must not log raw bootstrap exception details',
      );
    }
  });

  test('main bootstrap synchronizes every exposed Android widget surface', () {
    final source = File('lib/main.dart').readAsStringSync();

    expect(source, contains('updatePrayerWidget'));
    expect(source, contains('updateAllPrayersWidget'));
    expect(source, contains('updateQiblaWidget'));
    expect(source, contains('updateAyahWidget'));
    expect(source, contains('QiblaUtils.calculateQiblaDirection'));
    expect(source, contains('dailyAyatProvider'));
  });
}
