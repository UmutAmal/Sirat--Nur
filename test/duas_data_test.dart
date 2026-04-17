import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/constants/duas_data.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

void main() {
  group('Verified bundled dua fallback', () {
    test('contains only verified Quran references', () {
      final bundled = bundledDailyDuaFallback();

      expect(hasVerifiedBundledDuas, isTrue);
      expect(bundled.map((dua) => dua.source).toList(), const [
        'Quran 2:201',
        'Quran 2:286',
        'Quran 3:8',
        'Quran 14:40',
        'Quran 17:24',
        'Quran 20:114',
        'Quran 23:118',
        'Quran 25:74',
      ]);
      expect(bundled.map((dua) => dua.id).toSet(), hasLength(bundled.length));
      expect(
        bundled.every((dua) => dua.category == quranicDuaCategory),
        isTrue,
      );
      expect(
        bundled.every((dua) => dua.verifiedAt == bundledQuranDuaVerifiedAt),
        isTrue,
      );
    });

    test('keeps unverified transliteration out of the fallback payload', () {
      final bundled = bundledDailyDuaFallback();

      expect(
        bundled.every(
          (dua) =>
              dua.arabic.isNotEmpty &&
              dua.turkish.isNotEmpty &&
              dua.english.isNotEmpty,
        ),
        isTrue,
      );
      expect(bundled.every((dua) => dua.transliteration.isEmpty), isTrue);
    });

    test('keeps Turkish fallback quotation marks balanced', () {
      for (final dua in bundledDailyDuaFallback()) {
        expect(
          '"'.allMatches(dua.turkish).length.isEven,
          isTrue,
          reason: '${dua.source} has unmatched Turkish quote marks',
        );
      }
    });

    test('keeps English fallback smart quotation marks balanced', () {
      for (final dua in bundledDailyDuaFallback()) {
        expect(
          '‘'.allMatches(dua.english).length,
          '’'.allMatches(dua.english).length,
          reason: '${dua.source} has unmatched English smart quote marks',
        );
      }
    });

    test('keeps Quran 2:286 English fallback prose intact', () {
      final quran2286 = bundledDailyDuaFallback().singleWhere(
        (dua) => dua.source == 'Quran 2:286',
      );

      expect(quran2286.english, contains('suffers whatever bad it has done'));
      expect(quran2286.english, isNot(contains('suffers its bad-')));
      expect(quran2286.english, isNot(contains('‘ Lord')));
    });

    test('matches the verified bundled Quran ayah payload exactly', () {
      final quranRows =
          jsonDecode(File('assets/data/full_quran.json').readAsStringSync())
              as List<dynamic>;

      for (final dua in bundledDailyDuaFallback()) {
        final ayah = _findBundledAyah(quranRows, dua.source);

        expect(dua.arabic, ayah['text']);
        expect(dua.turkish, ayah['tr_translation']);
        expect(dua.english, ayah['en_translation']);
      }
    });

    test('keeps Turkish localized Quran 14:40 copy aligned', () async {
      final l10n = await AppLocalizations.delegate.load(const Locale('tr'));
      final quran1440 = bundledDailyDuaFallback().singleWhere(
        (dua) => dua.source == 'Quran 14:40',
      );

      expect(l10n.duaMeaning4, quran1440.turkish);
    });

    test('rejects cloud rows without source and verified_at provenance', () {
      final resolved = resolveCloudDuas([
        {
          'id': 'missing-source',
          'text_ar': 'دعاء',
          'text_tr': 'Turkce dua',
          'text_en': 'English dua',
          'verified_at': '2026-04-15T00:00:00Z',
        },
        {
          'id': 'missing-verified-at',
          'text_ar': 'دعاء',
          'text_tr': 'Turkce dua',
          'text_en': 'English dua',
          'source': 'Diyanet',
        },
      ]);

      expect(resolved, bundledDailyDuaFallback());
    });

    test(
      'keeps verified cloud rows with source and verified_at provenance',
      () {
        final resolved = resolveCloudDuas([
          {
            'id': 'cloud-1',
            'text_ar': 'دعاء',
            'text_tr': 'Turkce dua',
            'text_en': 'English dua',
            'source': 'Diyanet',
            'verified_at': '2026-04-15T00:00:00Z',
            'category': 'Sabah Akşam',
          },
        ]);

        expect(resolved, hasLength(1));
        expect(resolved.first.source, 'Diyanet');
        expect(resolved.first.verifiedAt, '2026-04-15T00:00:00Z');
      },
    );

    test('uses Supabase Storage-backed audio for verified cloud duas', () {
      final resolved = resolveCloudDuas([
        {
          'id': 'cloud-audio',
          'text_ar': 'دعاء',
          'text_tr': 'Turkce dua',
          'text_en': 'English dua',
          'storage_path': 'audio-dua/morning/001.mp3',
          'audio_url': 'https://cdn.example.com/dua/001.mp3',
          'source': 'Diyanet',
          'verified_at': '2026-04-15T00:00:00Z',
          'category': 'Sabah Akşam',
        },
      ]);

      expect(
        resolved.first.audioUrl,
        'https://amevotnudldbbwogtrtw.supabase.co/storage/v1/object/public/audio-dua/morning/001.mp3',
      );
    });

    test('drops verified cloud dua external audio when storage is absent', () {
      final resolved = resolveCloudDuas([
        {
          'id': 'cloud-audio',
          'text_ar': 'دعاء',
          'text_tr': 'Turkce dua',
          'text_en': 'English dua',
          'audio_url': 'https://cdn.example.com/dua/001.mp3',
          'source': 'Diyanet',
          'verified_at': '2026-04-15T00:00:00Z',
          'category': 'Sabah Akşam',
        },
      ]);

      expect(resolved.first.audioUrl, isEmpty);
    });
  });
}

Map<String, dynamic> _findBundledAyah(List<dynamic> quranRows, String source) {
  final reference = source.replaceFirst('Quran ', '').split(':');
  final surahNumber = int.parse(reference[0]);
  final ayahNumber = int.parse(reference[1]);

  final surah = quranRows.whereType<Map<String, dynamic>>().singleWhere(
    (row) => row['number'] == surahNumber,
  );
  final ayahs = surah['ayahs'] as List<dynamic>;

  return ayahs.whereType<Map<String, dynamic>>().singleWhere(
    (row) => row['numberInSurah'] == ayahNumber,
  );
}
