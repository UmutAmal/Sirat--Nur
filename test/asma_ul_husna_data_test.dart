import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/constants/asma_ul_husna_data.dart';
import 'dart:io';

void main() {
  group('AsmaUlHusna data helpers', () {
    test('cloud rows fall back to bundled names when rows are empty', () {
      final resolved = resolveCloudAsmaUlHusnaRows([]);

      expect(resolved, isNot(same(AsmaUlHusnaData.names)));
      expect(resolved, hasLength(AsmaUlHusnaData.names.length));
      expect(resolved.first['audioUrl'], isEmpty);
    });

    test('cloud rows map Supabase fields without external audio fallback', () {
      final resolved = resolveCloudAsmaUlHusnaRows([
        {
          'id': '1',
          'name_ar': 'الرَّحْمَنُ',
          'transliteration': 'Ar Rahmaan',
          'meaning_tr': 'Merhameti her seyi kusatan',
          'meaning_en': 'The Beneficent',
          'audio_url': 'https://example.com/001.mp3',
          'source': 'TDV Islam Ansiklopedisi',
          'verified_at': '2026-04-15T00:00:00Z',
        },
      ]);

      expect(resolved, hasLength(1));
      expect(resolved.first['id'], '1');
      expect(resolved.first['arabic'], 'الرَّحْمَنُ');
      expect(resolved.first['transliteration'], 'Ar Rahmaan');
      expect(
        (resolved.first['translations'] as Map<String, dynamic>)['tr'],
        'Merhameti her seyi kusatan',
      );
      expect(
        (resolved.first['translations'] as Map<String, dynamic>)['en'],
        'The Beneficent',
      );
      expect(resolved.first['audioUrl'], isEmpty);
      expect(resolved.first['source'], 'TDV Islam Ansiklopedisi');
      expect(resolved.first['verifiedAt'], '2026-04-15T00:00:00Z');
    });

    test('cloud rows use Supabase Storage-backed audio when available', () {
      final resolved = resolveCloudAsmaUlHusnaRows([
        {
          'id': '1',
          'name_ar': 'الرَّحْمَنُ',
          'transliteration': 'Ar Rahmaan',
          'meaning_tr': 'Merhameti her seyi kusatan',
          'meaning_en': 'The Beneficent',
          'storage_path': 'audio-asma/001.mp3',
          'audio_url': 'https://example.com/001.mp3',
          'source': 'TDV Islam Ansiklopedisi',
          'verified_at': '2026-04-15T00:00:00Z',
        },
      ]);

      expect(
        resolved.first['audioUrl'],
        'https://amevotnudldbbwogtrtw.supabase.co/storage/v1/object/public/audio-asma/001.mp3',
      );
    });

    test('cloud rows preserve locale-specific translation maps', () {
      final resolved = resolveCloudAsmaUlHusnaRows([
        {
          'id': '1',
          'name_ar': 'الرَّحْمَنُ',
          'transliteration': 'Ar Rahmaan',
          'translations': {
            'en': 'The Beneficent',
            'tr': 'Rahmeti her seyi kusatan',
            'de': 'Der Allerbarmer',
          },
          'source': 'TDV Islam Ansiklopedisi',
          'verified_at': '2026-04-15T00:00:00Z',
        },
      ]);

      final translations =
          resolved.first['translations'] as Map<String, dynamic>;
      expect(translations['tr'], 'Rahmeti her seyi kusatan');
      expect(translations['en'], 'The Beneficent');
      expect(translations['de'], 'Der Allerbarmer');
    });

    test(
      'cloud rows without source and verified_at fall back to bundled names',
      () {
        final resolved = resolveCloudAsmaUlHusnaRows([
          {
            'id': '1',
            'name_ar': 'الرَّحْمَنُ',
            'transliteration': 'Ar Rahmaan',
            'meaning_tr': 'Merhameti her seyi kusatan',
            'meaning_en': 'The Beneficent',
            'verified_at': '2026-04-15T00:00:00Z',
          },
          {
            'id': '2',
            'name_ar': 'الرَّحِيمُ',
            'transliteration': 'Ar Raheem',
            'meaning_tr': 'Merhamet eden',
            'meaning_en': 'The Merciful',
            'source': 'TDV Islam Ansiklopedisi',
          },
        ]);

        expect(resolved, hasLength(AsmaUlHusnaData.names.length));
        expect(resolved.first['audioUrl'], isEmpty);
        expect(resolved.first['arabic'], AsmaUlHusnaData.names.first['arabic']);
      },
    );

    test(
      'bundled fallback strips bundled audio urls to avoid false playback',
      () {
        final resolved = buildBundledAsmaUlHusnaFallback();

        expect(resolved, hasLength(AsmaUlHusnaData.names.length));
        expect(
          resolved.every((item) => (item['audioUrl'] ?? '') == ''),
          isTrue,
        );
        expect(resolved.first['arabic'], AsmaUlHusnaData.names.first['arabic']);
      },
    );

    test(
      'bundled source no longer embeds legacy audio urls or authoring notes',
      () {
        final source = File(
          'lib/core/constants/asma_ul_husna_data.dart',
        ).readAsStringSync();

        expect(source.contains('https://download.quranicaudio.com'), isFalse);
        expect(source.contains('https://server7.mp3quran.net'), isFalse);
        expect(source.contains('Simplified for brevity'), isFalse);
        expect(source.contains('high precision CDN'), isFalse);
      },
    );

    test(
      'bundled source keeps corrected asma spellings and transliterations',
      () {
        final byId = {
          for (final item in AsmaUlHusnaData.names) item['id']: item,
        };

        expect(byId[44]!['transliteration'], 'Al Mujeeb');
        expect(byId[80]!['transliteration'], 'At Tawwaab');
        expect(byId[89]!['transliteration'], 'Al Mughni');
        expect(byId[91]!['transliteration'], 'Ad Darr');

        expect(
          (byId[80]!['translations'] as Map<String, dynamic>)['en'],
          'The Guide to Repentance',
        );
        expect(
          (byId[84]!['translations'] as Map<String, dynamic>)['en'],
          'The Owner / Sovereign of All',
        );
        expect(
          (byId[85]!['translations'] as Map<String, dynamic>)['en'],
          'The Possessor of Majesty and Bounty',
        );
        expect(
          (byId[97]!['translations'] as Map<String, dynamic>)['en'],
          'The Inheritor',
        );
      },
    );

    test('bundled source keeps TDV-aligned meanings for high-risk names', () {
      final byId = {for (final item in AsmaUlHusnaData.names) item['id']: item};

      expect(
        (byId[4]!['translations'] as Map<String, dynamic>)['en'],
        'The Most Holy',
      );
      expect(
        (byId[6]!['translations'] as Map<String, dynamic>)['en'],
        'The Giver of Security',
      );
      expect(
        (byId[52]!['translations'] as Map<String, dynamic>)['en'],
        'The All-Sufficient Trustee',
      );
      expect(
        (byId[63]!['translations'] as Map<String, dynamic>)['en'],
        'The Self-Subsisting Sustainer',
      );
      expect(
        (byId[68]!['translations'] as Map<String, dynamic>)['en'],
        'The One Sought by All',
      );
      expect(
        (byId[91]!['translations'] as Map<String, dynamic>)['en'],
        'The Bringer of Harm',
      );
    });
  });
}
