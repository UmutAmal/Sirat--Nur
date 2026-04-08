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

  group('normalizeCloudQuranRows', () {
    final bundledRows = parseBundledQuranRows('''
[
  {
    "number": 1,
    "name": "سورة الفاتحة",
    "englishName": "Al-Fatihah",
    "englishNameTranslation": "The Opening",
    "revelationType": "Meccan",
    "ayahs": [
      {"number": 1, "numberInSurah": 1, "juz": 1},
      {"number": 2, "numberInSurah": 2, "juz": 1}
    ]
  }
]
''');

    test('maps complete cloud rows into reader payload shape', () {
      final rows = normalizeCloudQuranRows(
        surahRows: const [
          {
            'id': 11,
            'surah_number': 1,
            'name_ar': 'الفاتحة',
            'name_en': 'The Opening',
            'name_transliteration': 'Al-Fatihah',
            'ayah_count': 2,
            'revelation_type': 'Meccan',
          },
        ],
        ayahRows: const [
          {
            'surah_id': 11,
            'ayah_number': 1,
            'juz_number': 2,
            'text_ar': 'بِسْمِ اللَّهِ',
            'text_tr': 'Rahman ve Rahim Allah\'ın adıyla',
            'text_en': 'In the name of Allah',
          },
          {
            'surah_id': 11,
            'ayah_number': 2,
            'juz_number': 2,
            'text_ar': 'الْحَمْدُ لِلَّهِ',
            'text_tr': 'Hamd Allah\'adır',
            'text_en': 'Praise belongs to Allah',
          },
        ],
        bundledRows: bundledRows,
        expectedSurahCount: 1,
        expectedAyahCount: 2,
      );

      expect(rows, isNotNull);
      expect(rows, hasLength(1));
      expect(rows!.single['englishName'], 'Al-Fatihah');
      expect(rows.single['englishNameTranslation'], 'The Opening');
      expect(rows.single['revelationType'], 'Meccan');
      expect((rows.single['ayahs'] as List), hasLength(2));
      expect((rows.single['ayahs'] as List).first['juz'], 2);
      expect((rows.single['ayahs'] as List).last['en_translation'], 'Praise belongs to Allah');
    });

    test('returns null when cloud dataset is incomplete', () {
      final rows = normalizeCloudQuranRows(
        surahRows: const [
          {
            'id': 11,
            'surah_number': 1,
            'name_ar': 'الفاتحة',
            'name_en': 'The Opening',
            'name_transliteration': 'Al-Fatihah',
            'ayah_count': 2,
            'revelation_type': 'Meccan',
          },
        ],
        ayahRows: const [
          {
            'surah_id': 11,
            'ayah_number': 1,
            'text_ar': 'بِسْمِ اللَّهِ',
            'text_tr': 'Rahman ve Rahim Allah\'ın adıyla',
            'text_en': 'In the name of Allah',
          },
        ],
        bundledRows: bundledRows,
        expectedSurahCount: 1,
        expectedAyahCount: 2,
      );

      expect(rows, isNull);
    });

    test('falls back to bundled juz metadata when cloud rows do not expose it', () {
      final rows = normalizeCloudQuranRows(
        surahRows: const [
          {
            'id': 11,
            'surah_number': 1,
            'name_ar': 'الفاتحة',
            'name_en': 'The Opening',
            'name_transliteration': 'Al-Fatihah',
            'ayah_count': 2,
            'revelation_type': 'Meccan',
          },
        ],
        ayahRows: const [
          {
            'surah_id': 11,
            'ayah_number': 1,
            'text_ar': 'بِسْمِ اللَّهِ',
            'text_tr': 'Rahman ve Rahim Allah\'ın adıyla',
            'text_en': 'In the name of Allah',
          },
          {
            'surah_id': 11,
            'ayah_number': 2,
            'text_ar': 'الْحَمْدُ لِلَّهِ',
            'text_tr': 'Hamd Allah\'adır',
            'text_en': 'Praise belongs to Allah',
          },
        ],
        bundledRows: bundledRows,
        expectedSurahCount: 1,
        expectedAyahCount: 2,
      );

      expect(rows, isNotNull);
      expect((rows!.single['ayahs'] as List).first['juz'], 1);
    });
  });

  group('resolveQuranRows', () {
    final bundledRows = parseBundledQuranRows('''
[
  {"number": 1, "name": "الفاتحة", "ayahs": []}
]
''');

    test('prefers cloud rows when available', () async {
      final rows = await resolveQuranRows(
        loadCloudRows: () async => const [
          {'number': 1, 'name': 'cloud'}
        ],
        loadBundledRows: () async => bundledRows,
      );

      expect(rows.single['name'], 'cloud');
    });

    test('falls back to bundled rows when cloud rows are unavailable', () async {
      final rows = await resolveQuranRows(
        loadCloudRows: () async => null,
        loadBundledRows: () async => bundledRows,
      );

      expect(rows.single['name'], 'الفاتحة');
    });

    test('falls back to bundled rows when cloud loading throws', () async {
      final rows = await resolveQuranRows(
        loadCloudRows: () => Future<List<Map<String, dynamic>>?>.error(
          StateError('boom'),
        ),
        loadBundledRows: () async => bundledRows,
      );

      expect(rows.single['name'], 'الفاتحة');
    });
  });
}
