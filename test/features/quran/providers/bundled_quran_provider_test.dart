import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/features/quran/providers/bundled_quran_provider.dart';

void main() {
  group('parseBundledQuranRows', () {
    test('maps bundled quran payload into typed rows', () {
      final rows = parseBundledQuranRows('''
[
  {"number": 1, "name": "الفاتحة", "ayahs": [{"numberInSurah": 1}]},
  {"number": 2, "name": "البقرة", "ayahs": []}
]
''');

      expect(rows, hasLength(2));
      expect(rows.first['number'], 1);
      expect(rows.last['name'], 'البقرة');
    });

    test('throws when payload is not a list', () {
      expect(
        () => parseBundledQuranRows('{"number": 1}'),
        throwsFormatException,
      );
    });
  });

  group('findBundledSurahData', () {
    test('returns matching surah and null when missing', () {
      final rows = parseBundledQuranRows('''
[
  {"number": 1, "name": "الفاتحة", "ayahs": []},
  {"number": 2, "name": "البقرة", "ayahs": []}
]
''');

      expect(findBundledSurahData(rows, 2)?['name'], 'البقرة');
      expect(findBundledSurahData(rows, 3), isNull);
    });
  });
}
