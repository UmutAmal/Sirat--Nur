import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/providers/supabase_providers.dart';
import 'package:sirat_i_nur/core/services/offline_audio_service.dart';

const String _approvedSukunAudioSource = 'https://www.diyanet.gov.tr/tr-TR';

void main() {
  group('resolveCloudSukunSources', () {
    test('trusts only approved HTTPS cloud audio source domains', () {
      expect(isApprovedCloudAudioSourceUrl(_approvedSukunAudioSource), isTrue);
      expect(
        isApprovedCloudAudioSourceUrl('https://api.quran.com/api/v4/test'),
        isTrue,
      );
      expect(
        isApprovedCloudAudioSourceUrl('https://www.islamhouse.com/audio'),
        isTrue,
      );

      for (final source in const [
        'verified audio catalog',
        'https://example.com/audio',
        'http://www.diyanet.gov.tr/tr-TR',
        'https://audit@www.diyanet.gov.tr/tr-TR',
        'https://www.diyanet.gov.tr/tr-TR?token=1',
        'https://www.diyanet.gov.tr/tr-TR#fragment',
      ]) {
        expect(isApprovedCloudAudioSourceUrl(source), isFalse, reason: source);
      }
    });

    test('maps storage-backed cloud rows into expected sukun sound types', () {
      final resolved = resolveCloudSukunSources([
        {
          'type': 'sukun',
          'title': 'Rain of Mercy',
          'storage_path': 'audio-sukun/rain.mp3',
          'url': 'https://cdn.example.com/audio/rain.mp3',
          'source': _approvedSukunAudioSource,
          'verified_at': '2026-04-15T00:00:00Z',
        },
        {
          'type': 'nature',
          'title': 'forest',
          'storage_path': 'audio-sukun/forest.mp3',
          'url': 'https://cdn.example.com/audio/forest.mp3',
          'source': _approvedSukunAudioSource,
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
            'source': _approvedSukunAudioSource,
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
          'source': _approvedSukunAudioSource,
          'verified_at': '2026-04-15T00:00:00Z',
        },
        {
          'type': 'sukun',
          'title': 'Ocean Tawheed',
          'url': '',
          'source': _approvedSukunAudioSource,
          'verified_at': '2026-04-15T00:00:00Z',
        },
        {
          'type': 'sukun',
          'title': 'Unknown stream',
          'url': 'https://cdn.example.com/audio/unknown.mp3',
          'source': _approvedSukunAudioSource,
          'verified_at': '2026-04-15T00:00:00Z',
        },
        {
          'type': 'sukun',
          'title': 'Rain of Mercy',
          'url': 'https://cdn.example.com/audio/rain.mp3',
          'source': _approvedSukunAudioSource,
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
          'source': _approvedSukunAudioSource,
        },
        {
          'type': 'sukun',
          'title': 'Rain of Mercy',
          'storage_path': 'audio-sukun/rain.mp3',
          'source': _approvedSukunAudioSource,
          'verified_at': 'not-a-date',
        },
      ]);

      expect(resolved, isEmpty);
    });

    test('rejects storage-backed rows from unapproved source domains', () {
      final resolved = resolveCloudSukunSources([
        {
          'type': 'sukun',
          'title': 'Rain of Mercy',
          'storage_path': 'audio-sukun/rain.mp3',
          'source': 'verified audio catalog',
          'verified_at': '2026-04-15T00:00:00Z',
        },
        {
          'type': 'nature',
          'title': 'forest',
          'storage_path': 'audio-sukun/forest.mp3',
          'source': 'https://example.com/audio/forest',
          'verified_at': '2026-04-15T00:00:00Z',
        },
      ]);

      expect(resolved, isEmpty);
    });
  });
}
