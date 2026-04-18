import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/network/quran_audio_distribution_url.dart';

void main() {
  group('Quran audio distribution URL resolver', () {
    const cloudflareBaseUrl = 'https://audio.siratinur.example/quran';
    const githubTemplate =
        'https://github.com/UmutAmal/Sirat--Nur/releases/download/quran-audio-v1/{reciter}_{surah}.mp3';

    test('routes non-overflow reciters to Cloudflare object paths', () {
      expect(
        resolveQuranAudioDistributionUrl(
          reciterId: 'alafasy',
          surahNumber: 1,
          storagePath: 'quran-audio/alafasy/001.mp3',
          cloudflareBaseUrl: cloudflareBaseUrl,
          githubUrlTemplate: githubTemplate,
        ),
        'https://audio.siratinur.example/quran/alafasy/001.mp3',
      );
    });

    test('routes Abdul Basit Murattal to GitHub release assets', () {
      expect(
        resolveQuranAudioDistributionUrl(
          reciterId: kQuranAudioGithubReciterId,
          surahNumber: 114,
          storagePath: 'quran-audio/abdul_basit_murattal/114.mp3',
          cloudflareBaseUrl: cloudflareBaseUrl,
          githubUrlTemplate: githubTemplate,
        ),
        'https://github.com/UmutAmal/Sirat--Nur/releases/download/quran-audio-v1/abdul_basit_murattal_114.mp3',
      );
    });

    test('rejects unsafe or mismatched Quran audio paths', () {
      expect(
        resolveQuranAudioDistributionUrl(
          reciterId: 'alafasy',
          surahNumber: 1,
          storagePath: '../alafasy/001.mp3',
          cloudflareBaseUrl: cloudflareBaseUrl,
          githubUrlTemplate: githubTemplate,
        ),
        isNull,
      );
      expect(
        resolveQuranAudioDistributionUrl(
          reciterId: 'alafasy',
          surahNumber: 1,
          storagePath: 'quran-audio/alafasy/002.mp3',
          cloudflareBaseUrl: cloudflareBaseUrl,
          githubUrlTemplate: githubTemplate,
        ),
        isNull,
      );
    });

    test('rejects missing or unsafe provider configuration', () {
      expect(
        resolveQuranAudioDistributionUrl(
          reciterId: 'alafasy',
          surahNumber: 1,
          storagePath: 'quran-audio/alafasy/001.mp3',
          cloudflareBaseUrl: '',
          githubUrlTemplate: githubTemplate,
        ),
        isNull,
      );
      expect(
        resolveQuranAudioDistributionUrl(
          reciterId: kQuranAudioGithubReciterId,
          surahNumber: 1,
          storagePath: 'quran-audio/abdul_basit_murattal/001.mp3',
          cloudflareBaseUrl: cloudflareBaseUrl,
          githubUrlTemplate:
              'https://github.com/UmutAmal/Sirat--Nur/releases/download/quran-audio-v1/static.mp3',
        ),
        isNull,
      );
      expect(
        resolveQuranAudioDistributionUrl(
          reciterId: 'alafasy',
          surahNumber: 1,
          storagePath: 'quran-audio/alafasy/001.mp3',
          cloudflareBaseUrl: 'https://token@audio.siratinur.example/quran',
          githubUrlTemplate: githubTemplate,
        ),
        isNull,
      );
    });

    test('matches only the expected URL for a reciter and surah', () {
      expect(
        isExpectedQuranAudioDistributionUrl(
          audioUrl: 'https://audio.siratinur.example/quran/alafasy/001.mp3',
          reciterId: 'alafasy',
          surahNumber: 1,
          cloudflareBaseUrl: cloudflareBaseUrl,
          githubUrlTemplate: githubTemplate,
        ),
        isTrue,
      );
      expect(
        isExpectedQuranAudioDistributionUrl(
          audioUrl: 'https://audio.siratinur.example/quran/alafasy/002.mp3',
          reciterId: 'alafasy',
          surahNumber: 1,
          cloudflareBaseUrl: cloudflareBaseUrl,
          githubUrlTemplate: githubTemplate,
        ),
        isFalse,
      );
    });
  });
}
