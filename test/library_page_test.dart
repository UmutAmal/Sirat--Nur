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
    test('error text uses the localized error label', () {
      final en = lookupAppLocalizations(const Locale('en'));
      final tr = lookupAppLocalizations(const Locale('tr'));

      expect(buildLibraryErrorText(en, 'timeout'), 'Error: timeout');
      expect(buildLibraryErrorText(tr, 'zaman asimi'), 'Hata: zaman asimi');
    });

    test('empty text uses the localized no-results label', () {
      final en = lookupAppLocalizations(const Locale('en'));
      final tr = lookupAppLocalizations(const Locale('tr'));

      expect(buildLibraryEmptyText(en), 'No results found');
      expect(buildLibraryEmptyText(tr), 'Sonuç bulunamadı');
    });

    test('dua meaning prefers Turkish text for the Turkish locale', () {
      const dua = DuaData(
        id: '1',
        arabic: 'arabic',
        transliteration: 'transliteration',
        turkish: 'Turkce anlam',
        english: 'English meaning',
        source: 'source',
        category: 'category',
      );

      expect(resolveDuaMeaning(dua, const Locale('tr')), 'Turkce anlam');
    });

    test('dua meaning falls back to English for non-Turkish locales', () {
      const dua = DuaData(
        id: '1',
        arabic: 'arabic',
        transliteration: 'transliteration',
        turkish: 'Turkce anlam',
        english: 'English meaning',
        source: 'source',
        category: 'category',
      );

      expect(resolveDuaMeaning(dua, const Locale('de')), 'English meaning');
    });

    test('cloud duas fall back to bundled duas when rows are empty', () {
      expect(resolveCloudDuas([]), isEmpty);
      expect(bundledDailyDuaFallback(), isEmpty);
      expect(hasVerifiedBundledDuas, isFalse);
    });

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
  });
}
