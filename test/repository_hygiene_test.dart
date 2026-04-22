import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('repository hygiene', () {
    test('does not keep stale root patch artifacts', () {
      final rootPatchFiles = Directory.current
          .listSync()
          .whereType<File>()
          .map((file) => file.path.split(Platform.pathSeparator).last)
          .where((name) => name.endsWith('.patch'))
          .toList();

      expect(rootPatchFiles, isEmpty);
    });

    test('ignores Android emulator bugreport archives', () {
      final gitignore = File('.gitignore').readAsLinesSync();

      expect(
        gitignore,
        contains('bugreport-*.zip'),
        reason: 'Appium/emulator bugreports are large local diagnostics only.',
      );
    });

    test('keeps runtime environment secrets out of git', () {
      final gitignore = File('.gitignore').readAsLinesSync();

      expect(gitignore, contains('/.env'));
      expect(gitignore, contains('/.env.*'));
      expect(gitignore, contains('!/.env.example'));

      final example = File('.env.example');
      expect(example.existsSync(), isTrue);

      final exampleContent = example.readAsStringSync();
      for (final key in [
        'SUPABASE_URL=',
        'SUPABASE_PUBLISHABLE_KEY=',
        'SUPABASE_DB_URL=',
        'PLACES_TILE_URL_TEMPLATE=',
        'PLACES_OVERPASS_API_URL=',
        'QURAN_AUDIO_CLOUDFLARE_BASE_URL=',
        'QURAN_AUDIO_GITHUB_URL_TEMPLATE=',
      ]) {
        expect(exampleContent, contains(key));
      }

      expect(exampleContent, isNot(contains('sb_publishable_')));
      expect(exampleContent, isNot(contains('eyJ')));
    });
  });
}
