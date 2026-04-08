import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/constants/asma_ul_husna_data.dart';

void main() {
  group('AsmaUlHusna data helpers', () {
    test('cloud rows fall back to bundled names when rows are empty', () {
      expect(resolveCloudAsmaUlHusnaRows([]), same(AsmaUlHusnaData.names));
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
  });
}
