import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/providers/supabase_providers.dart';

void main() {
  group('resolveCloudSukunSources', () {
    test('maps cloud rows into expected sukun sound types', () {
      final resolved = resolveCloudSukunSources([
        {
          'type': 'sukun',
          'title': 'Rain of Mercy',
          'url': 'https://cdn.example.com/audio/rain.mp3',
        },
        {
          'type': 'nature',
          'title': 'forest',
          'url': 'https://cdn.example.com/audio/forest.mp3',
        },
      ]);

      expect(resolved, const {
        'rain': 'https://cdn.example.com/audio/rain.mp3',
        'forest': 'https://cdn.example.com/audio/forest.mp3',
      });
    });

    test('ignores rows without supported types or playable urls', () {
      final resolved = resolveCloudSukunSources([
        {
          'type': 'adhan',
          'title': 'Rain of Mercy',
          'url': 'https://cdn.example.com/audio/rain.mp3',
        },
        {'type': 'sukun', 'title': 'Ocean Tawheed', 'url': ''},
        {
          'type': 'sukun',
          'title': 'Unknown stream',
          'url': 'https://cdn.example.com/audio/unknown.mp3',
        },
      ]);

      expect(resolved, isEmpty);
    });
  });
}
