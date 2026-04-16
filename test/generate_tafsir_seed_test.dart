import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

import '../tool/generate_tafsir_seed.dart';

void main() {
  group('generate_tafsir_seed tool', () {
    test('Quran ayah count table matches the canonical total', () {
      expect(quranAyahCountsBySurah.length, 115);
      expect(quranAyahCountsBySurah.skip(1).reduce((a, b) => a + b), 6236);
    });

    test('parseVerifiedTafsirManifest reads sourced rows safely', () {
      final entries = parseVerifiedTafsirManifest(
        _manifestJson(
          entries: [
            {
              'surah_number': 1,
              'ayah_number': 1,
              'tafsir_source': 'EN.IBN_KATHIR',
              'language': 'EN',
              'tafsir_text': 'Allah opens the Book with mercy.',
            },
          ],
        ),
        requireCompleteCatalog: false,
      );

      expect(entries, hasLength(1));
      expect(entries.single.surahNumber, 1);
      expect(entries.single.ayahNumber, 1);
      expect(entries.single.tafsirSource, 'en.ibn_kathir');
      expect(entries.single.language, 'en');
      expect(entries.single.sourceLicense, 'verified-open-license');
    });

    test('rejects partial manifests by default for production seeds', () {
      expect(
        () => parseVerifiedTafsirManifest(
          _manifestJson(
            entries: [
              {
                'surah_number': 1,
                'ayah_number': 1,
                'tafsir_source': 'en.ibn_kathir',
                'language': 'en',
                'tafsir_text': 'Text',
              },
            ],
          ),
        ),
        throwsA(
          isA<FormatException>().having(
            (error) => error.message,
            'message',
            contains('complete catalog'),
          ),
        ),
      );
    });

    test('rejects duplicate ayah rows for the same tafsir source', () {
      final row = {
        'surah_number': 1,
        'ayah_number': 1,
        'tafsir_source': 'en.ibn_kathir',
        'language': 'en',
        'tafsir_text': 'Text',
      };

      expect(
        () => parseVerifiedTafsirManifest(
          _manifestJson(entries: [row, row]),
          requireCompleteCatalog: false,
        ),
        throwsA(
          isA<FormatException>().having(
            (error) => error.message,
            'message',
            contains('Duplicate tafsir entry'),
          ),
        ),
      );
    });

    test('rejects missing source provenance', () {
      expect(
        () => parseVerifiedTafsirManifest(
          jsonEncode({
            'source': 'Verified source',
            'verified_at': '2026-04-16T00:00:00Z',
            'entries': [
              {
                'surah_number': 1,
                'ayah_number': 1,
                'tafsir_source': 'en.ibn_kathir',
                'language': 'en',
                'tafsir_text': 'Text',
              },
            ],
          }),
          requireCompleteCatalog: false,
        ),
        throwsA(
          isA<FormatException>().having(
            (error) => error.message,
            'message',
            contains('source_license'),
          ),
        ),
      );
    });

    test('rejects ayah numbers outside the Quran reference', () {
      expect(
        () => parseVerifiedTafsirManifest(
          _manifestJson(
            entries: [
              {
                'surah_number': 1,
                'ayah_number': 8,
                'tafsir_source': 'en.ibn_kathir',
                'language': 'en',
                'tafsir_text': 'Text',
              },
            ],
          ),
          requireCompleteCatalog: false,
        ),
        throwsA(
          isA<FormatException>().having(
            (error) => error.message,
            'message',
            contains('Invalid ayah_number for surah 1'),
          ),
        ),
      );
    });

    test('buildTafsirSeedSql creates provenance-backed upserts', () {
      final sql = buildTafsirSeedSql([
        VerifiedTafsirEntry(
          surahNumber: 1,
          ayahNumber: 1,
          tafsirSource: 'en.ibn_kathir',
          language: 'en',
          tafsirText: "Allah's mercy opens the surah.",
          source: 'Verified tafsir archive',
          sourceLicense: 'verified-open-license',
          verifiedAt: DateTime.utc(2026, 4, 16),
        ),
      ]);

      expect(sql, contains('INSERT INTO public.tafsir_entries'));
      expect(
        sql,
        contains('ON CONFLICT (surah_number, ayah_number, tafsir_source)'),
      );
      expect(sql, contains("Allah''s mercy opens the surah."));
      expect(sql, contains('source_license = EXCLUDED.source_license'));
      expect(sql, isNot(contains('https://api.quran.com/api/v4/tafsirs')));
    });

    test('smoke manifest can be converted into tafsir seed SQL', () {
      final tempDir = Directory.systemTemp.createTempSync('sirat_tafsir_seed_');
      addTearDown(() {
        if (tempDir.existsSync()) {
          tempDir.deleteSync(recursive: true);
        }
      });

      final manifestFile =
          File('${tempDir.path}${Platform.pathSeparator}manifest.json')
            ..writeAsStringSync(
              _manifestJson(
                entries: [
                  {
                    'surah_number': 1,
                    'ayah_number': 1,
                    'tafsir_source': 'en.ibn_kathir',
                    'language': 'en',
                    'tafsir_text': 'In the name of Allah begins the surah.',
                  },
                ],
              ),
            );

      final entries = parseVerifiedTafsirManifest(
        manifestFile.readAsStringSync(),
        requireCompleteCatalog: false,
      );
      final sql = buildTafsirSeedSql(entries);

      expect(entries, hasLength(1));
      expect(sql, contains("'en.ibn_kathir'"));
      expect(sql, contains("'verified-open-license'"));
    });
  });
}

String _manifestJson({required List<Map<String, Object?>> entries}) {
  return const JsonEncoder.withIndent('  ').convert({
    'source': 'Verified tafsir archive',
    'source_license': 'verified-open-license',
    'verified_at': '2026-04-16T00:00:00Z',
    'entries': entries,
  });
}
