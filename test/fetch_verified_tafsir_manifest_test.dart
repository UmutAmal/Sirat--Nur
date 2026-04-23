import 'package:flutter_test/flutter_test.dart';

import '../tool/fetch_verified_tafsir_manifest.dart';

void main() {
  test('parseQuranComChapterTafsirPayload reads chapter rows', () {
    const payload = '''
      {
        "tafsirs": [
          {
            "id": 1,
            "resource_id": 169,
            "verse_key": "1:1",
            "language_id": 38,
            "text": "<p>Intro</p>",
            "slug": "en-tafisr-ibn-kathir"
          },
          {
            "id": 2,
            "resource_id": 169,
            "verse_key": "1:2",
            "language_id": 38,
            "text": "<p>Second</p>",
            "slug": "en-tafisr-ibn-kathir"
          }
        ]
      }
    ''';

    final rows = parseQuranComChapterTafsirPayload(payload);
    expect(rows, hasLength(2));
    expect(rows.first.verseKey, '1:1');
    expect(rows.last.textHtml, '<p>Second</p>');
  });

  test('parseQuranComByAyahTafsirPayload exposes covered verse keys', () {
    const payload = '''
{
  "tafsir": {
          "resource_id": 817,
          "text": "<p>Grouped tafsir</p>",
          "verses": {
            "2:5": {"id": 1},
            "2:6": {"id": 2},
            "2:7": {"id": 3}
          }
        }
      }
    ''';

    final coverage = parseQuranComByAyahTafsirPayload(payload);
    expect(coverage.verseKeys, <String>['2:5', '2:6', '2:7']);
    expect(coverage.textHtml, '<p>Grouped tafsir</p>');
  });

  test('expandedCoverageVerseKeys keeps requested ayah when API omits it', () {
    const coverage = QuranComByAyahCoverage(
      verseKeys: <String>['20:22', '20:23', '20:31'],
      textHtml: '<p>Grouped tafsir</p>',
    );

    expect(
      expandedCoverageVerseKeys(coverage, requestedVerseKey: '20:32'),
      <String>['20:22', '20:23', '20:31', '20:32'],
    );
  });

  test('coverageAyahNumbersForSurah ignores adjacent surah coverage keys', () {
    const coverage = QuranComByAyahCoverage(
      verseKeys: <String>['104:1', '104:2', '105:1'],
      textHtml: '<p>Grouped tafsir</p>',
    );

    expect(
      coverageAyahNumbersForSurah(
        coverage,
        requestedVerseKey: '104:3',
        surahNumber: 104,
      ),
      <int>[1, 2, 3],
    );
  });

  test(
    'hasOneToOneChapterCoverage distinguishes grouped and direct chapters',
    () {
      expect(
        hasOneToOneChapterCoverage(
          const <QuranComChapterTafsirRow>[
            QuranComChapterTafsirRow(verseKey: '1:1', textHtml: '<p>a</p>'),
            QuranComChapterTafsirRow(verseKey: '1:2', textHtml: '<p>b</p>'),
            QuranComChapterTafsirRow(verseKey: '1:3', textHtml: '<p>c</p>'),
          ],
          surahNumber: 1,
          ayahCount: 3,
        ),
        isTrue,
      );

      expect(
        hasOneToOneChapterCoverage(
          const <QuranComChapterTafsirRow>[
            QuranComChapterTafsirRow(verseKey: '1:1', textHtml: '<p>a</p>'),
            QuranComChapterTafsirRow(verseKey: '1:3', textHtml: '<p>b</p>'),
          ],
          surahNumber: 1,
          ayahCount: 3,
        ),
        isFalse,
      );

      expect(
        hasOneToOneChapterCoverage(
          const <QuranComChapterTafsirRow>[
            QuranComChapterTafsirRow(verseKey: '1:1', textHtml: '<p>a</p>'),
            QuranComChapterTafsirRow(verseKey: '1:2', textHtml: ''),
            QuranComChapterTafsirRow(verseKey: '1:3', textHtml: '<p>c</p>'),
          ],
          surahNumber: 1,
          ayahCount: 3,
        ),
        isFalse,
      );
    },
  );

  test('stripTafsirHtmlToPlainText preserves paragraph boundaries', () {
    const html =
        '<h1>Heading</h1><p>First paragraph.</p><p>Second <strong>part</strong>.</p>';

    expect(
      stripTafsirHtmlToPlainText(html),
      'Heading\n\nFirst paragraph.\n\nSecond part.',
    );
  });

  test('buildVerifiedTafsirManifestJson emits manifest metadata', () {
    final manifest =
        buildVerifiedTafsirManifestJson(const <VerifiedTafsirManifestEntry>[
          VerifiedTafsirManifestEntry(
            surahNumber: 1,
            ayahNumber: 1,
            tafsirSource: 'en.ibn_kathir',
            language: 'en',
            tafsirText: 'Intro tafsir',
            source: 'https://api.quran.com/api/v4/tafsirs/169/by_chapter/1',
          ),
        ], verifiedAt: DateTime.utc(2026, 4, 23));

    expect(
      manifest['source'],
      'https://api.quran.com/api/v4/resources/tafsirs',
    );
    expect(
      manifest['source_license'],
      contains('Quran.com Terms and Conditions'),
    );
    expect(manifest['verified_at'], '2026-04-23T00:00:00.000Z');
    final entries = manifest['entries']! as List<Object?>;
    expect(entries, hasLength(1));
  });
}
