import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/constants/duas_data.dart';
import 'package:sirat_i_nur/core/services/audio_sovereignty_service.dart';
import 'package:sirat_i_nur/features/library/library_page.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

class _NoopAudioEngine implements SovereignAudioEngine {
  @override
  void dispose() {}

  @override
  Future<bool> playAsset(String assetPath) async => true;

  @override
  Future<bool> playUrl(String url) async => true;

  @override
  Future<void> setVolume(double volume) async {}

  @override
  Future<void> stop() async {}
}

void main() {
  group('Library localized copy helpers', () {
    test('error text is localized and hides raw exceptions', () {
      final en = lookupAppLocalizations(const Locale('en'));
      final tr = lookupAppLocalizations(const Locale('tr'));

      expect(buildLibraryErrorText(en), 'Error\nPlease check your connection');
      expect(
        buildLibraryErrorText(tr),
        'Hata\nLütfen bağlantınızı kontrol edin',
      );
      expect(buildLibraryErrorText(en), isNot(contains('timeout')));
      expect(buildLibraryErrorText(tr), isNot(contains('zaman asimi')));
    });

    test('empty text uses the localized no-results label', () {
      final en = lookupAppLocalizations(const Locale('en'));
      final tr = lookupAppLocalizations(const Locale('tr'));

      expect(buildLibraryEmptyText(en), 'No results found');
      expect(buildLibraryEmptyText(tr), 'Sonuç bulunamadı');
    });

    test('dua meaning prefers Turkish text for the Turkish locale', () {
      final tr = lookupAppLocalizations(const Locale('tr'));
      const dua = DuaData(
        id: '1',
        arabic: 'arabic',
        transliteration: 'transliteration',
        turkish: 'Turkce anlam',
        english: 'English meaning',
        source: 'source',
        category: 'category',
      );

      expect(resolveDuaMeaning(tr, dua, const Locale('tr')), 'Turkce anlam');
    });

    test(
      'dua meaning uses localized bundled fallback for supported locales',
      () {
        final de = lookupAppLocalizations(const Locale('de'));
        const dua = DuaData(
          id: '1',
          arabic: 'arabic',
          transliteration: 'transliteration',
          turkish: 'Turkce anlam',
          english: 'English meaning',
          source: 'source',
          category: 'category',
        );

        expect(resolveDuaMeaning(de, dua, const Locale('de')), de.duaMeaning1);
      },
    );

    test(
      'dua meaning uses locale-specific cloud translations when available',
      () {
        final de = lookupAppLocalizations(const Locale('de'));
        const dua = DuaData(
          id: 'cloud-1',
          arabic: 'arabic',
          transliteration: 'transliteration',
          turkish: 'Turkce anlam',
          english: 'English meaning',
          source: 'source',
          category: 'category',
          translations: {'de': 'Deutsche Bedeutung'},
        );

        expect(
          resolveDuaMeaning(de, dua, const Locale('de')),
          'Deutsche Bedeutung',
        );
      },
    );

    test(
      'dua meaning falls back to English for non-bundled rows without locale data',
      () {
        final de = lookupAppLocalizations(const Locale('de'));
        const dua = DuaData(
          id: 'cloud-1',
          arabic: 'arabic',
          transliteration: 'transliteration',
          turkish: 'Turkce anlam',
          english: 'English meaning',
          source: 'source',
          category: 'category',
        );

        expect(
          resolveDuaMeaning(de, dua, const Locale('de')),
          'English meaning',
        );
      },
    );

    test(
      'cloud duas fall back to verified bundled Quran duas when rows are empty',
      () {
        final resolved = resolveCloudDuas([]);
        final bundled = bundledDailyDuaFallback();

        expect(resolved, isNotEmpty);
        expect(bundled, hasLength(8));
        expect(resolved, bundled);
        expect(hasVerifiedBundledDuas, isTrue);
        expect(
          bundled.every((dua) => dua.category == quranicDuaCategory),
          isTrue,
        );
        expect(bundled.first.source, 'Quran 2:201');
        expect(bundled[1].source, 'Quran 2:286');
        expect(bundled.every((dua) => dua.transliteration.isEmpty), isTrue);
      },
    );

    test('cloud duas map Supabase rows into DuaData objects', () {
      final resolved = resolveCloudDuas([
        {
          'id': 'cloud-1',
          'text_ar': 'دعاء',
          'transliteration': 'dua',
          'text_tr': 'Turkce dua',
          'text_en': 'English dua',
          'source': 'Diyanet',
          'category': 'Sabah Akşam',
        },
      ]);

      expect(resolved, hasLength(1));
      expect(resolved.first.id, 'cloud-1');
      expect(resolved.first.arabic, 'دعاء');
      expect(resolved.first.turkish, 'Turkce dua');
      expect(resolved.first.english, 'English dua');
      expect(resolved.first.resolvedTranslations['tr'], 'Turkce dua');
      expect(resolved.first.resolvedTranslations['en'], 'English dua');
      expect(resolved.first.source, 'Diyanet');
      expect(resolved.first.category, 'Sabah Akşam');
    });

    test('daily dua library subtitle switches to unavailable copy', () {
      final en = lookupAppLocalizations(const Locale('en'));
      final tr = lookupAppLocalizations(const Locale('tr'));

      expect(
        resolveDailyDuasLibrarySubtitle(en, const []),
        en.duaUnavailableTitle,
      );
      expect(
        resolveDailyDuasLibrarySubtitle(tr, const [
          DuaData(
            id: '1',
            arabic: 'دعاء',
            transliteration: 'dua',
            turkish: 'Türkçe',
            english: 'English',
            source: 'source',
            category: 'category',
          ),
        ]),
        tr.essentialDuas('1'),
      );
    });

    test(
      'sukun availability is false when no configured soundscapes exist',
      () {
        final audio = AudioSovereigntyService(engine: _NoopAudioEngine());

        expect(isSukunAudioAvailable(audio), isFalse);
        expect(resolveSukunAvailability(audio), isFalse);
      },
    );

    test('cloud sukun sources mark library entry as available', () {
      final audio = AudioSovereigntyService(engine: _NoopAudioEngine());

      expect(
        resolveSukunAvailability(
          audio,
          cloudSources: const {'rain': 'https://cdn.example.com/rain.mp3'},
        ),
        isTrue,
      );
    });

    test('sukun subtitle switches to unavailable copy when audio is empty', () {
      final en = lookupAppLocalizations(const Locale('en'));
      final tr = lookupAppLocalizations(const Locale('tr'));

      expect(resolveSukunLibrarySubtitle(en, false), en.sukunUnavailableTitle);
      expect(resolveSukunLibrarySubtitle(tr, true), tr.sukunMixerSubtitle);
    });

    test('hadith subtitle switches to honest unavailable copy', () {
      final en = lookupAppLocalizations(const Locale('en'));
      final tr = lookupAppLocalizations(const Locale('tr'));

      expect(areHadithCollectionsAvailable(), isFalse);
      expect(resolveHadithLibrarySubtitle(en), en.hadithSourcePending);
      expect(resolveHadithLibrarySubtitle(tr), tr.hadithSourcePending);
    });
  });
}
