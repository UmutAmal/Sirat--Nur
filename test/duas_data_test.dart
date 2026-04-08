import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/constants/duas_data.dart';

void main() {
  group('Verified bundled dua fallback', () {
    test('contains only verified Quran references', () {
      final bundled = bundledDailyDuaFallback();

      expect(hasVerifiedBundledDuas, isTrue);
      expect(
        bundled.map((dua) => dua.source).toList(),
        const [
          'Quran 2:201',
          'Quran 2:286',
          'Quran 3:8',
          'Quran 14:40',
          'Quran 17:24',
          'Quran 20:114',
          'Quran 23:118',
          'Quran 25:74',
        ],
      );
      expect(bundled.map((dua) => dua.id).toSet(), hasLength(bundled.length));
      expect(bundled.every((dua) => dua.category == quranicDuaCategory), isTrue);
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
  });
}
