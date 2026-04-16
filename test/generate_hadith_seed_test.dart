import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/services/hadith_api_service.dart';

import '../tool/generate_hadith_seed.dart';

void main() {
  group('generate_hadith_seed tool', () {
    test('supported collection ids match the app library collections', () {
      expect(
        supportedHadithCollections,
        containsAll({
          'bukhari',
          'muslim',
          'tirmidhi',
          'abudawud',
          'nasai',
          'ibnmajah',
        }),
      );
      expect(supportedHadithCollections, hasLength(6));
      expect(
        minimumHadithRowsPerCollection,
        minimumVerifiedHadithRowsPerCollection,
      );
    });

    test('parseVerifiedHadithManifest reads sourced rows safely', () {
      final entries = parseVerifiedHadithManifest(
        _manifestJson(
          entries: [_entry(collectionId: 'BUKHARI', hadithNumber: 1)],
        ),
        requireAllCollections: false,
      );

      expect(entries, hasLength(1));
      expect(entries.single.collectionId, 'bukhari');
      expect(entries.single.book, 'Book of Revelation');
      expect(entries.single.hadithNumber, 1);
      expect(entries.single.textAr, 'نص اختباري موثق');
      expect(entries.single.textEn, 'Verified test translation.');
      expect(entries.single.textTr, 'Doğrulanmış test çevirisi.');
      expect(entries.single.sourceLicense, 'verified-open-license');
    });

    test('rejects partial manifests by default for production seeds', () {
      expect(
        () => parseVerifiedHadithManifest(
          _manifestJson(
            entries: [_entry(collectionId: 'bukhari', hadithNumber: 1)],
          ),
        ),
        throwsA(
          isA<FormatException>().having(
            (error) => error.message,
            'message',
            contains('every supported collection'),
          ),
        ),
      );
    });

    test('accepts production manifests that represent every collection', () {
      final entries = parseVerifiedHadithManifest(
        _manifestJson(entries: _completeProductionEntries()),
      );

      expect(
        entries,
        hasLength(
          supportedHadithCollections.length * minimumHadithRowsPerCollection,
        ),
      );
    });

    test('rejects represented but undersized production manifests', () {
      expect(
        () => parseVerifiedHadithManifest(
          _manifestJson(
            entries: supportedHadithCollections
                .map(
                  (collectionId) =>
                      _entry(collectionId: collectionId, hadithNumber: 1),
                )
                .toList(),
          ),
        ),
        throwsA(
          isA<FormatException>().having(
            (error) => error.message,
            'message',
            contains('at least $minimumHadithRowsPerCollection verified rows'),
          ),
        ),
      );
    });

    test('rejects duplicate hadith rows for the same collection', () {
      final row = _entry(collectionId: 'bukhari', hadithNumber: 1);

      expect(
        () => parseVerifiedHadithManifest(
          _manifestJson(entries: [row, row]),
          requireAllCollections: false,
        ),
        throwsA(
          isA<FormatException>().having(
            (error) => error.message,
            'message',
            contains('Duplicate hadith entry'),
          ),
        ),
      );
    });

    test('rejects unsupported collection ids', () {
      expect(
        () => parseVerifiedHadithManifest(
          _manifestJson(
            entries: [_entry(collectionId: 'unknown', hadithNumber: 1)],
          ),
          requireAllCollections: false,
        ),
        throwsA(
          isA<FormatException>().having(
            (error) => error.message,
            'message',
            contains('Invalid collection_id'),
          ),
        ),
      );
    });

    test('rejects missing source provenance', () {
      expect(
        () => parseVerifiedHadithManifest(
          jsonEncode({
            'source': 'Verified hadith archive',
            'verified_at': '2026-04-16T00:00:00Z',
            'entries': [_entry(collectionId: 'bukhari', hadithNumber: 1)],
          }),
          requireAllCollections: false,
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

    test('rejects empty Arabic hadith text', () {
      final row = _entry(collectionId: 'bukhari', hadithNumber: 1)
        ..['text_ar'] = ' ';

      expect(
        () => parseVerifiedHadithManifest(
          _manifestJson(entries: [row]),
          requireAllCollections: false,
        ),
        throwsA(
          isA<FormatException>().having(
            (error) => error.message,
            'message',
            contains('text_ar'),
          ),
        ),
      );
    });

    test('buildHadithSeedSql creates provenance-backed upserts', () {
      final sql = buildHadithSeedSql([
        VerifiedHadithEntry(
          collectionId: 'bukhari',
          book: "Book of Revelation",
          hadithNumber: 1,
          textAr: 'نص اختباري موثق',
          textTr: 'Doğrulanmış test çevirisi.',
          textEn: "Verified test translation.",
          narrator: "Umar ibn al-Khattab",
          grade: 'sahih',
          source: 'Verified hadith archive',
          sourceLicense: 'verified-open-license',
          verifiedAt: DateTime.utc(2026, 4, 16),
        ),
      ]);

      expect(sql, contains('INSERT INTO public.hadiths'));
      expect(sql, contains('ON CONFLICT (collection_id, hadith_number)'));
      expect(sql, contains("Verified test translation."));
      expect(sql, contains("source_license = EXCLUDED.source_license"));
      expect(sql, isNot(contains('sunnah.com')));
    });

    test('smoke manifest can be converted into hadith seed SQL', () {
      final tempDir = Directory.systemTemp.createTempSync('sirat_hadith_seed_');
      addTearDown(() {
        if (tempDir.existsSync()) {
          tempDir.deleteSync(recursive: true);
        }
      });

      final manifestFile =
          File('${tempDir.path}${Platform.pathSeparator}manifest.json')
            ..writeAsStringSync(
              _manifestJson(
                entries: [_entry(collectionId: 'bukhari', hadithNumber: 1)],
              ),
            );

      final entries = parseVerifiedHadithManifest(
        manifestFile.readAsStringSync(),
        requireAllCollections: false,
      );
      final sql = buildHadithSeedSql(entries);

      expect(entries, hasLength(1));
      expect(sql, contains("'bukhari'"));
      expect(sql, contains("'verified-open-license'"));
    });
  });
}

Map<String, Object?> _entry({
  required String collectionId,
  required int hadithNumber,
}) {
  return {
    'collection_id': collectionId,
    'book': 'Book of Revelation',
    'hadith_number': hadithNumber,
    'text_ar': 'نص اختباري موثق',
    'text_tr': 'Doğrulanmış test çevirisi.',
    'text_en': 'Verified test translation.',
    'narrator': 'Umar ibn al-Khattab',
    'grade': 'sahih',
  };
}

List<Map<String, Object?>> _completeProductionEntries() {
  return supportedHadithCollections
      .expand(
        (collectionId) => List.generate(
          minimumHadithRowsPerCollection,
          (index) =>
              _entry(collectionId: collectionId, hadithNumber: index + 1),
        ),
      )
      .toList(growable: false);
}

String _manifestJson({required List<Map<String, Object?>> entries}) {
  return const JsonEncoder.withIndent('  ').convert({
    'source': 'Verified hadith archive',
    'source_license': 'verified-open-license',
    'verified_at': '2026-04-16T00:00:00Z',
    'entries': entries,
  });
}
