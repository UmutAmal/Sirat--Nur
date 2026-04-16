import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/services/hadith_api_service.dart';
import 'package:sirat_i_nur/features/library/providers/hadith_provider.dart';

void main() {
  group('verified hadith provider helpers', () {
    test('normalizes only sourced verified hadith rows', () {
      final items = resolveVerifiedHadithItems(
        [
          _row(
            collectionId: 'bukhari',
            hadithNumber: 2,
            textTr: 'Doğrulanmış Türkçe test çevirisi.',
          ),
          _row(
            collectionId: 'bukhari',
            hadithNumber: 1,
            textTr: 'İlk doğrulanmış Türkçe test çevirisi.',
          ),
          _row(
            collectionId: 'muslim',
            hadithNumber: 1,
            textTr: 'Wrong collection must be ignored.',
          ),
          _row(
            collectionId: 'bukhari',
            hadithNumber: 3,
            sourceLicense: null,
            textTr: 'Missing provenance must be ignored.',
          ),
          _row(
            collectionId: 'bukhari',
            hadithNumber: 4,
            verifiedAt: 'not-a-date',
            textTr: 'Bad verified_at must be ignored.',
          ),
          _row(
            collectionId: 'bukhari',
            hadithNumber: 5,
            textAr: ' ',
            textTr: 'Missing Arabic must be ignored.',
          ),
        ],
        collectionId: 'bukhari',
        langCode: 'tr',
      );

      expect(items, hasLength(2));
      expect(items.map((item) => item.number), [1, 2]);
      expect(items.first.arabic, 'نص اختباري موثق');
      expect(items.first.translation, 'İlk doğrulanmış Türkçe test çevirisi.');
      expect(items.first.heading, 'Verified Test Book');
    });

    test('falls back to safe English or Turkish translation only', () {
      final items = resolveVerifiedHadithItems(
        [
          _row(
            collectionId: 'bukhari',
            hadithNumber: 1,
            textEn: 'Verified English test translation.',
            textTr: null,
          ),
          _row(
            collectionId: 'bukhari',
            hadithNumber: 2,
            textEn: null,
            textTr: 'Doğrulanmış Türkçe test çevirisi.',
          ),
          _row(
            collectionId: 'bukhari',
            hadithNumber: 3,
            textEn: null,
            textTr: null,
          ),
        ],
        collectionId: 'bukhari',
        langCode: 'de',
      );

      expect(items, hasLength(2));
      expect(items.first.translation, 'Verified English test translation.');
      expect(items.last.translation, 'Doğrulanmış Türkçe test çevirisi.');
    });

    test('completeness guard requires every supported collection', () {
      final completeRows = supportedHadithCollectionIds
          .expand(
            (collectionId) => List.generate(
              minimumVerifiedHadithRowsPerCollection,
              (index) =>
                  _row(collectionId: collectionId, hadithNumber: index + 1),
            ),
          )
          .toList();

      expect(hasCompleteVerifiedHadithDataset(completeRows), isTrue);

      final representedButTooSmallRows = supportedHadithCollectionIds
          .map(
            (collectionId) => _row(collectionId: collectionId, hadithNumber: 1),
          )
          .toList();
      expect(
        hasCompleteVerifiedHadithDataset(representedButTooSmallRows),
        isFalse,
      );

      final incompleteRows = completeRows
          .where((row) => row['collection_id'] != 'nasai')
          .toList();
      expect(hasCompleteVerifiedHadithDataset(incompleteRows), isFalse);

      final malformedRows = completeRows
          .map((row) => Map<String, dynamic>.from(row))
          .toList();
      malformedRows.first['source_license'] = null;
      expect(hasCompleteVerifiedHadithDataset(malformedRows), isFalse);
    });

    test('provider stays gated and queries only the verified hadith table', () {
      final serviceSource = File(
        'lib/core/services/hadith_api_service.dart',
      ).readAsStringSync();
      final providerSource = File(
        'lib/features/library/providers/hadith_provider.dart',
      ).readAsStringSync();

      expect(
        serviceSource,
        contains(
          "bool.fromEnvironment(\n  'SIRAT_HAS_VERIFIED_HADITH_DATASET'",
        ),
      );
      expect(providerSource, contains("from('hadiths')"));
      expect(
        providerSource,
        contains('verifiedHadithDatasetAvailabilityProvider'),
      );
      expect(providerSource, contains('hasCompleteVerifiedHadithDataset'));
      expect(providerSource, contains('source_license'));
      expect(providerSource, contains('verified_at'));
      expect(providerSource, contains('readOptionalSupabaseClient(ref)'));
      expect(
        providerSource,
        contains('hasCompleteVerifiedHadithDatasetInCloud'),
      );
      expect(
        providerSource,
        contains('minimumVerifiedHadithRowsPerCollection'),
      );
      expect(providerSource, contains('verifiedCount <'));
      expect(providerSource, contains('.limit(_hadithCompletenessProbeLimit)'));
      expect(providerSource, contains(".eq('collection_id', collectionId)"));
      expect(providerSource, isNot(contains(".order('collection_id'")));
      expect(providerSource, isNot(contains('fetchHadiths(')));
      expect(providerSource, isNot(contains('fetchArabicHadiths(')));
    });
  });
}

Map<String, dynamic> _row({
  required String collectionId,
  required int hadithNumber,
  String textAr = 'نص اختباري موثق',
  String? textTr = 'Doğrulanmış Türkçe test çevirisi.',
  String? textEn = 'Verified English test translation.',
  String? source = 'Verified hadith archive',
  String? sourceLicense = 'verified-open-license',
  String? verifiedAt = '2026-04-16T00:00:00Z',
}) {
  return {
    'collection_id': collectionId,
    'book': 'Verified Test Book',
    'hadith_number': hadithNumber,
    'text_ar': textAr,
    'text_tr': textTr,
    'text_en': textEn,
    'source': source,
    'source_license': sourceLicense,
    'verified_at': verifiedAt,
  };
}
