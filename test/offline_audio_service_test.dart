import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:path/path.dart' as p;
import 'package:sirat_i_nur/core/network/supabase_config.dart';
import 'package:sirat_i_nur/core/services/offline_audio_service.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('OfflineReciters helpers', () {
    test('maps storage-backed cloud quran rows into a surah url index', () {
      final urls = resolveCloudQuranSurahUrls(const [
        {
          'type': 'quran_surah',
          'reciter': 'alafasy',
          'surah_number': 1,
          'storage_path': 'quran-audio/alafasy/001.mp3',
          'url': 'https://cdn.example.com/001.mp3',
          'source': 'QuranFoundation',
          'verified_at': '2026-04-15T00:00:00Z',
        },
        {
          'type': 'quran_surah',
          'reciter': 'alafasy',
          'surah_number': 2,
          'storage_path': 'quran-audio/alafasy/002.mp3',
          'url': 'https://cdn.example.com/002.mp3',
          'source': 'QuranFoundation',
          'verified_at': '2026-04-15T00:00:00Z',
        },
      ], reciterId: 'alafasy');

      expect(urls, const {
        1: 'https://amevotnudldbbwogtrtw.supabase.co/storage/v1/object/public/quran-audio/alafasy/001.mp3',
        2: 'https://amevotnudldbbwogtrtw.supabase.co/storage/v1/object/public/quran-audio/alafasy/002.mp3',
      });
    });

    test('ignores invalid quran audio rows and reports missing surahs', () {
      final urls = resolveCloudQuranSurahUrls(const [
        {
          'type': 'quran_surah',
          'reciter': 'alafasy',
          'surah_number': 1,
          'storage_path': 'quran-audio/alafasy/001.mp3',
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

      expect(urls, const {
        1: 'https://amevotnudldbbwogtrtw.supabase.co/storage/v1/object/public/quran-audio/alafasy/001.mp3',
      });
      expect(missingQuranSurahAudioSources(urls), containsAll(<int>[2, 114]));
      expect(missingQuranSurahAudioSources(urls), hasLength(113));
    });

    test('rejects external-only quran rows even with provenance', () {
      final urls = resolveCloudQuranSurahUrls(const [
        {
          'type': 'quran_surah',
          'reciter': 'alafasy',
          'surah_number': 1,
          'url': 'https://cdn.example.com/001.mp3',
          'source': 'QuranFoundation',
          'verified_at': '2026-04-15T00:00:00Z',
        },
      ], reciterId: 'alafasy');

      expect(urls, isEmpty);
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
          'storage_path': 'quran-audio/alafasy/001.mp3',
          'url': 'https://cdn.example.com/alafasy/001.mp3',
          'source': 'QuranFoundation',
          'verified_at': '2026-04-15T00:00:00Z',
        },
        {
          'type': 'quran_surah',
          'reciter': 'alafasy',
          'surah_number': 2,
          'storage_path': 'quran-audio/alafasy/002.mp3',
          'url': 'https://cdn.example.com/alafasy/002.mp3',
          'source': 'QuranFoundation',
          'verified_at': '2026-04-15T00:00:00Z',
        },
        {
          'type': 'quran_surah',
          'reciter': 'husary',
          'surah_number': 1,
          'storage_path': 'quran-audio/husary/001.mp3',
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
        1: 'https://amevotnudldbbwogtrtw.supabase.co/storage/v1/object/public/quran-audio/alafasy/001.mp3',
        2: 'https://amevotnudldbbwogtrtw.supabase.co/storage/v1/object/public/quran-audio/alafasy/002.mp3',
      });
      expect(catalog['husary'], const {
        1: 'https://amevotnudldbbwogtrtw.supabase.co/storage/v1/object/public/quran-audio/husary/001.mp3',
      });
      expect(catalog.containsKey('sudais'), isFalse);
    });

    test('uses Supabase storage-backed rows when storage_path is present', () {
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

    test('does not expose external urls as playable cloud audio', () {
      final url = resolvePlayableCloudAudioUrl(const {
        'type': 'quran_surah',
        'reciter': 'alafasy',
        'surah_number': 1,
        'url': 'https://cdn.example.com/alafasy/001.mp3',
        'source': 'QuranFoundation',
        'verified_at': '2026-04-15T00:00:00Z',
      });

      expect(url, isNull);
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

    test(
      'validateDownloadedQuranAudioFile rejects empty and non-audio files',
      () async {
        final tempDir = await Directory.systemTemp.createTemp(
          'sir_audio_validate_',
        );
        addTearDown(() => tempDir.delete(recursive: true));

        final emptyFile = File(p.join(tempDir.path, 'empty.mp3'));
        final htmlFile = File(p.join(tempDir.path, 'error.mp3'));
        final audioFile = File(p.join(tempDir.path, 'valid.mp3'));
        await emptyFile.writeAsBytes(const []);
        await htmlFile.writeAsString('<html>not audio</html>');
        await audioFile.writeAsBytes(const [0x49, 0x44, 0x33, 0x04]);

        expect(await validateDownloadedQuranAudioFile(emptyFile.path), isFalse);
        expect(await emptyFile.exists(), isFalse);
        expect(await validateDownloadedQuranAudioFile(htmlFile.path), isFalse);
        expect(await htmlFile.exists(), isFalse);
        expect(await validateDownloadedQuranAudioFile(audioFile.path), isTrue);
        expect(await audioFile.exists(), isTrue);
      },
    );

    test(
      'getDownloadedSurahs ignores and removes corrupt audio files',
      () async {
        final tempDir = await Directory.systemTemp.createTemp(
          'sir_audio_catalog_',
        );
        addTearDown(() => tempDir.delete(recursive: true));

        const channel = MethodChannel('plugins.flutter.io/path_provider');
        TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
            .setMockMethodCallHandler(channel, (_) async => tempDir.path);
        addTearDown(
          () => TestDefaultBinaryMessengerBinding
              .instance
              .defaultBinaryMessenger
              .setMockMethodCallHandler(channel, null),
        );

        final audioDir = Directory(p.join(tempDir.path, 'quran_audio'));
        await audioDir.create(recursive: true);
        final emptySurah = File(p.join(audioDir.path, 'alafasy_001.mp3'));
        final htmlSurah = File(p.join(audioDir.path, 'alafasy_002.mp3'));
        final validSurah = File(p.join(audioDir.path, 'alafasy_003.mp3'));
        await emptySurah.writeAsBytes(const []);
        await htmlSurah.writeAsString('<html>not audio</html>');
        await validSurah.writeAsBytes(const [0x49, 0x44, 0x33, 0x04]);

        expect(await OfflineAudioService.getDownloadedSurahs('alafasy'), [3]);
        expect(await emptySurah.exists(), isFalse);
        expect(await htmlSurah.exists(), isFalse);
        expect(await validSurah.exists(), isTrue);
      },
    );

    test(
      'downloadSurahAudio rejects unowned or invalid requests before IO',
      () async {
        final validStorageUrl =
            '${SupabaseConfig.url}/storage/v1/object/public/quran-audio/alafasy/001.mp3';

        expect(
          await OfflineAudioService.downloadSurahAudio(
            surahNumber: 1,
            reciterId: 'alafasy',
            audioUrl: 'https://cdn.example.com/alafasy/001.mp3',
          ),
          isFalse,
        );
        expect(
          await OfflineAudioService.downloadSurahAudio(
            surahNumber: 1,
            reciterId: 'alafasy',
            audioUrl:
                '${SupabaseConfig.url}/storage/v1/object/public/audio-sukun/rain.mp3',
          ),
          isFalse,
        );
        expect(
          await OfflineAudioService.downloadSurahAudio(
            surahNumber: 1,
            reciterId: 'alafasy',
            audioUrl: '$validStorageUrl?token=secret',
          ),
          isFalse,
        );
        expect(
          await OfflineAudioService.downloadSurahAudio(
            surahNumber: 0,
            reciterId: 'alafasy',
            audioUrl: validStorageUrl,
          ),
          isFalse,
        );
        expect(
          await OfflineAudioService.downloadSurahAudio(
            surahNumber: 1,
            reciterId: '../alafasy',
            audioUrl: validStorageUrl,
          ),
          isFalse,
        );
      },
    );

    test(
      'downloadAllSurahs drains sorted url entries without force lookups',
      () async {
        final completedSurahs = <int>[];
        final result = await OfflineAudioService.downloadAllSurahs(
          reciterId: 'alafasy',
          surahUrls: const {
            2: 'https://cdn.example.com/alafasy/002.mp3',
            1: 'https://cdn.example.com/alafasy/001.mp3',
          },
          onSurahComplete: (surahNumber, _) {
            completedSurahs.add(surahNumber);
          },
        );
        final source = File(
          'lib/core/services/offline_audio_service.dart',
        ).readAsStringSync();

        expect(result.totalSurahs, 2);
        expect(result.succeededSurahs, 0);
        expect(result.failedSurahs, const [1, 2]);
        expect(completedSurahs, const [1, 2]);
        expect(source, isNot(contains('surahUrls[surahNumber]!')));
      },
    );

    test('downloadAllSurahs wires cancellation into active downloads', () {
      final source = File(
        'lib/core/services/offline_audio_service.dart',
      ).readAsStringSync();

      expect(source, contains('final cancelToken = CancelToken();'));
      expect(source, contains('cancelToken: cancelToken'));
      expect(source, contains('cancelToken.cancel('));
      expect(source, contains('if (cancelToken.isCancelled)'));
      expect(source, contains('wasCanceled: true'));
    });

    test('getAudioPath rejects unsupported reciters before path building', () {
      expect(
        OfflineAudioService.getAudioPath(1, '../alafasy'),
        throwsA(isA<ArgumentError>()),
      );
    });
  });
}
