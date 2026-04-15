import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/providers/supabase_providers.dart';

void main() {
  group('resolveCloudSukunSources', () {
    test('maps storage-backed cloud rows into expected sukun sound types', () {
      final resolved = resolveCloudSukunSources([
        {
          'type': 'sukun',
          'title': 'Rain of Mercy',
          'storage_path': 'audio-sukun/rain.mp3',
          'url': 'https://cdn.example.com/audio/rain.mp3',
          'source': 'verified audio catalog',
          'verified_at': '2026-04-15T00:00:00Z',
        },
        {
          'type': 'nature',
          'title': 'forest',
          'storage_path': 'audio-sukun/forest.mp3',
          'url': 'https://cdn.example.com/audio/forest.mp3',
          'source': 'verified audio catalog',
          'verified_at': '2026-04-15T00:00:00Z',
        },
      ]);

      expect(resolved, const {
        'rain':
            'https://amevotnudldbbwogtrtw.supabase.co/storage/v1/object/public/audio-sukun/rain.mp3',
        'forest':
            'https://amevotnudldbbwogtrtw.supabase.co/storage/v1/object/public/audio-sukun/forest.mp3',
      });
    });

    test(
      'uses Supabase storage-backed sukun rows when storage_path is present',
      () {
        final resolved = resolveCloudSukunSources([
          {
            'type': 'sukun',
            'title': 'Rain of Mercy',
            'storage_path': 'audio-sukun/rain.mp3',
            'url': 'https://cdn.example.com/audio/rain.mp3',
            'source': 'verified audio catalog',
            'verified_at': '2026-04-15T00:00:00Z',
          },
        ]);

        expect(resolved, const {
          'rain':
              'https://amevotnudldbbwogtrtw.supabase.co/storage/v1/object/public/audio-sukun/rain.mp3',
        });
      },
    );

    test('ignores rows without supported types or storage-backed audio', () {
      final resolved = resolveCloudSukunSources([
        {
          'type': 'adhan',
          'title': 'Rain of Mercy',
          'url': 'https://cdn.example.com/audio/rain.mp3',
          'source': 'verified audio catalog',
          'verified_at': '2026-04-15T00:00:00Z',
        },
        {
          'type': 'sukun',
          'title': 'Ocean Tawheed',
          'url': '',
          'source': 'verified audio catalog',
          'verified_at': '2026-04-15T00:00:00Z',
        },
        {
          'type': 'sukun',
          'title': 'Unknown stream',
          'url': 'https://cdn.example.com/audio/unknown.mp3',
          'source': 'verified audio catalog',
          'verified_at': '2026-04-15T00:00:00Z',
        },
        {
          'type': 'sukun',
          'title': 'Rain of Mercy',
          'url': 'https://cdn.example.com/audio/rain.mp3',
          'source': 'verified audio catalog',
          'verified_at': '2026-04-15T00:00:00Z',
        },
      ]);

      expect(resolved, isEmpty);
    });

    test('rejects playable rows without source and verified_at provenance', () {
      final resolved = resolveCloudSukunSources([
        {
          'type': 'sukun',
          'title': 'Rain of Mercy',
          'url': 'https://cdn.example.com/audio/rain.mp3',
          'verified_at': '2026-04-15T00:00:00Z',
        },
        {
          'type': 'nature',
          'title': 'forest',
          'url': 'https://cdn.example.com/audio/forest.mp3',
          'source': 'verified audio catalog',
        },
      ]);

      expect(resolved, isEmpty);
    });
  });
}
