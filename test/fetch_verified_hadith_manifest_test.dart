import 'package:flutter_test/flutter_test.dart';

import '../tool/fetch_verified_hadith_manifest.dart';

void main() {
  test('extractHadithBookLinksFromCollectionIndex returns sorted book numbers', () {
    const html = '''
      <html>
        <body>
          <a href="/bukhari/3">Book 3</a>
          <a href="/bukhari/about">About</a>
          <a href="/bukhari/1">Book 1</a>
          <a href="/bukhari/2">Book 2</a>
          <a href="/muslim/1">Other collection</a>
          <a href="/bukhari/2">Duplicate</a>
        </body>
      </html>
    ''';

    expect(
      extractHadithBookLinksFromCollectionIndex(html, collectionId: 'bukhari'),
      <int>[1, 2, 3],
    );
  });

  test('extractHadithBookNameFromBookPage uses the final crumb', () {
    const html = '''
      <html>
        <body>
          <div class="crumbs">
            Home » Sahih al-Bukhari » Revelation
          </div>
        </body>
      </html>
    ''';

    expect(extractHadithBookNameFromBookPage(html), 'Revelation');
  });

  test('parseHadithBookPageEntries extracts Arabic, English, and reference data', () {
    const html = '''
      <html>
        <body>
          <div class="actualHadithContainer hadith_container_bukhari">
            <div class="english_hadith_full">
              Narrated 'Umar bin Al-Khattab:
              The reward of deeds depends upon intentions.
            </div>
            <div class="arabic_hadith_full arabic">
              <span class="arabic_text_details arabic">
                إنما الأعمال بالنيات
              </span>
            </div>
          </div>
          <table class="hadith_reference">
            <tr>
              <td><a href="/bukhari:1">Sahih al-Bukhari 1</a></td>
            </tr>
          </table>

          <div class="actualHadithContainer hadith_container_bukhari">
            <div class="english_hadith_full">
              Narrated Abu Hurairah:
              Religion is sincere advice.
            </div>
            <div class="arabic_hadith_full arabic">
              <span class="arabic_text_details arabic">
                الدين النصيحة
              </span>
            </div>
            <div class="hadith_grade">Sahih</div>
          </div>
          <table class="hadith_reference">
            <tr>
              <td><a href="/bukhari:2">Sahih al-Bukhari 2</a></td>
            </tr>
          </table>
        </body>
      </html>
    ''';

    final entries = parseHadithBookPageEntries(
      html,
      collectionId: 'bukhari',
      bookName: 'Revelation',
    );

    expect(entries, hasLength(2));
    expect(entries.first.collectionId, 'bukhari');
    expect(entries.first.book, 'Revelation');
    expect(entries.first.hadithNumber, 1);
    expect(entries.first.textAr, contains('إنما الأعمال بالنيات'));
    expect(
      entries.first.textEn,
      contains('The reward of deeds depends upon intentions.'),
    );
    expect(entries.first.narrator, "Narrated 'Umar bin Al-Khattab");
    expect(entries.first.source, 'https://sunnah.com/bukhari:1');
    expect(entries.last.grade, 'Sahih');
  });

  test('buildVerifiedHadithManifestJson emits global provenance metadata', () {
    final manifest = buildVerifiedHadithManifestJson(
      const <VerifiedHadithManifestEntry>[
        VerifiedHadithManifestEntry(
          collectionId: 'bukhari',
          book: 'Revelation',
          hadithNumber: 1,
          textAr: 'إنما الأعمال بالنيات',
          textEn: 'The reward of deeds depends upon intentions.',
          source: 'https://sunnah.com/bukhari:1',
        ),
      ],
      verifiedAt: DateTime.utc(2026, 4, 23),
    );

    expect(manifest['source'], 'https://sunnah.com');
    expect(
      manifest['source_license'],
      contains('Sunnah.com developers and open platform data access notice'),
    );
    expect(manifest['verified_at'], '2026-04-23T00:00:00.000Z');
    final entries = manifest['entries']! as List<Object?>;
    expect(entries, hasLength(1));
  });
}
