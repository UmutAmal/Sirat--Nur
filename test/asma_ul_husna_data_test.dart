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

    test('cloud rows map Supabase fields into bundled item shape', () {
      final resolved = resolveCloudAsmaUlHusnaRows([
        {
          'id': '1',
          'name_ar': 'الرَّحْمَنُ',
          'transliteration': 'Ar Rahmaan',
          'meaning_tr': 'Merhameti her seyi kusatan',
          'meaning_en': 'The Beneficent',
          'audio_url': 'https://example.com/001.mp3',
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
      expect(resolved.first['audioUrl'], 'https://example.com/001.mp3');
    });

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

    test('bundled source no longer embeds legacy audio urls or authoring notes', () {
      final source = File(
        'lib/core/constants/asma_ul_husna_data.dart',
      ).readAsStringSync();

      expect(source.contains('https://download.quranicaudio.com'), isFalse);
      expect(source.contains('https://server7.mp3quran.net'), isFalse);
      expect(source.contains('Simplified for brevity'), isFalse);
      expect(source.contains('high precision CDN'), isFalse);
    });
  });
}
