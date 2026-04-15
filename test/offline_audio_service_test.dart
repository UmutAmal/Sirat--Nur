import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/services/offline_audio_service.dart';

void main() {
  group('OfflineReciters helpers', () {
    test('maps verified cloud quran rows into a surah url index', () {
      final urls = resolveCloudQuranSurahUrls(const [
        {
          'type': 'quran_surah',
          'reciter': 'alafasy',
          'surah_number': 1,
          'url': 'https://cdn.example.com/001.mp3',
          'source': 'QuranFoundation',
          'verified_at': '2026-04-15T00:00:00Z',
        },
        {
          'type': 'quran_surah',
          'reciter': 'alafasy',
          'surah_number': 2,
          'url': 'https://cdn.example.com/002.mp3',
          'source': 'QuranFoundation',
          'verified_at': '2026-04-15T00:00:00Z',
        },
      ], reciterId: 'alafasy');

      expect(urls, const {
        1: 'https://cdn.example.com/001.mp3',
        2: 'https://cdn.example.com/002.mp3',
      });
    });

    test('ignores invalid quran audio rows and reports missing surahs', () {
      final urls = resolveCloudQuranSurahUrls(const [
        {
          'type': 'quran_surah',
          'reciter': 'alafasy',
          'surah_number': 1,
          'url': 'https://cdn.example.com/001.mp3',
          'source': 'QuranFoundation',
          'verified_at': '2026-04-15T00:00:00Z',
        },
        {
          'type': 'quran_surah',
          'reciter': 'alafasy',
          'surah_number': 0,
          'url': 'https://cdn.example.com/000.mp3',
          'source': 'QuranFoundation',
          'verified_at': '2026-04-15T00:00:00Z',
        },
        {
          'type': 'quran_surah',
          'reciter': 'husary',
          'surah_number': 2,
          'url': 'https://cdn.example.com/002.mp3',
          'source': 'QuranFoundation',
          'verified_at': '2026-04-15T00:00:00Z',
        },
        {
          'type': 'quran_surah',
          'reciter': 'alafasy',
          'surah_number': 3,
          'url': '',
          'source': 'QuranFoundation',
          'verified_at': '2026-04-15T00:00:00Z',
        },
        {
          'type': 'sukun',
          'reciter': 'alafasy',
          'surah_number': 2,
          'url': 'https://cdn.example.com/rain.mp3',
          'source': 'QuranFoundation',
          'verified_at': '2026-04-15T00:00:00Z',
        },
      ], reciterId: 'alafasy');

      expect(urls, const {1: 'https://cdn.example.com/001.mp3'});
      expect(missingQuranSurahAudioSources(urls), containsAll(<int>[2, 114]));
      expect(missingQuranSurahAudioSources(urls), hasLength(113));
    });

    test(
      'rejects playable quran rows without source and verified_at provenance',
      () {
        final urls = resolveCloudQuranSurahUrls(const [
          {
            'type': 'quran_surah',
            'reciter': 'alafasy',
            'surah_number': 1,
            'url': 'https://cdn.example.com/001.mp3',
            'verified_at': '2026-04-15T00:00:00Z',
          },
          {
            'type': 'quran_surah',
            'reciter': 'alafasy',
            'surah_number': 2,
            'url': 'https://cdn.example.com/002.mp3',
            'source': 'QuranFoundation',
          },
        ], reciterId: 'alafasy');

        expect(urls, isEmpty);
      },
    );

    test('groups verified rows into a per-reciter quran catalog', () {
      final catalog = resolveCloudQuranAudioCatalog(const [
        {
          'type': 'quran_surah',
          'reciter': 'alafasy',
          'surah_number': 1,
          'url': 'https://cdn.example.com/alafasy/001.mp3',
          'source': 'QuranFoundation',
          'verified_at': '2026-04-15T00:00:00Z',
        },
        {
          'type': 'quran_surah',
          'reciter': 'alafasy',
          'surah_number': 2,
          'url': 'https://cdn.example.com/alafasy/002.mp3',
          'source': 'QuranFoundation',
          'verified_at': '2026-04-15T00:00:00Z',
        },
        {
          'type': 'quran_surah',
          'reciter': 'husary',
          'surah_number': 1,
          'url': 'https://cdn.example.com/husary/001.mp3',
          'source': 'QuranFoundation',
          'verified_at': '2026-04-15T00:00:00Z',
        },
        {
          'type': 'sukun',
          'title': 'rain',
          'url': 'https://cdn.example.com/rain.mp3',
          'source': 'QuranFoundation',
          'verified_at': '2026-04-15T00:00:00Z',
        },
      ]);

      expect(catalog['alafasy'], const {
        1: 'https://cdn.example.com/alafasy/001.mp3',
        2: 'https://cdn.example.com/alafasy/002.mp3',
      });
      expect(catalog['husary'], const {
        1: 'https://cdn.example.com/husary/001.mp3',
      });
      expect(catalog.containsKey('sudais'), isFalse);
    });

    test('prefers Supabase storage-backed rows when storage_path is present', () {
      final url = resolvePlayableCloudAudioUrl(const {
        'type': 'quran_surah',
        'reciter': 'alafasy',
        'surah_number': 1,
        'storage_path': 'quran-audio/alafasy/001.mp3',
        'url':
            'https://download.quranicaudio.com/qdc/mishari_al_afasy/murattal/1.mp3',
        'source': 'QuranFoundation',
        'verified_at': '2026-04-15T00:00:00Z',
      });

      expect(
        url,
        'https://amevotnudldbbwogtrtw.supabase.co/storage/v1/object/public/quran-audio/alafasy/001.mp3',
      );
    });

    test('live quran audio queries include storage_path for owned audio', () {
      final source = File(
        'lib/core/services/offline_audio_service.dart',
      ).readAsStringSync();

      expect(
        source,
        isNot(contains(".select('type, reciter, surah_number, url')")),
      );
      expect(
        source,
        contains(
          ".select(\n            'type, reciter, surah_number, url, storage_path, source, verified_at',\n          )",
        ),
      );
    });
  });
}
