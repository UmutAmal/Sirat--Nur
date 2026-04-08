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
        },
        {
          'type': 'quran_surah',
          'reciter': 'alafasy',
          'surah_number': 2,
          'url': 'https://cdn.example.com/002.mp3',
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
        },
        {
          'type': 'quran_surah',
          'reciter': 'alafasy',
          'surah_number': 0,
          'url': 'https://cdn.example.com/000.mp3',
        },
        {
          'type': 'quran_surah',
          'reciter': 'husary',
          'surah_number': 2,
          'url': 'https://cdn.example.com/002.mp3',
        },
        {
          'type': 'quran_surah',
          'reciter': 'alafasy',
          'surah_number': 3,
          'url': '',
        },
        {
          'type': 'sukun',
          'reciter': 'alafasy',
          'surah_number': 2,
          'url': 'https://cdn.example.com/rain.mp3',
        },
      ], reciterId: 'alafasy');

      expect(urls, const {1: 'https://cdn.example.com/001.mp3'});
      expect(missingQuranSurahAudioSources(urls), containsAll(<int>[2, 114]));
      expect(missingQuranSurahAudioSources(urls), hasLength(113));
    });
  });
}
