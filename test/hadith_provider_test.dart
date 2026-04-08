import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/services/hadith_api_service.dart';
import 'package:sirat_i_nur/features/library/providers/hadith_provider.dart';

void main() {
  test('HadithApiService blocks fetches until a verified dataset is available', () async {
    await expectLater(
      HadithApiService.fetchHadiths(collectionId: 'bukhari', langCode: 'en'),
      throwsA(isA<VerifiedHadithDatasetUnavailable>()),
    );

    await expectLater(
      HadithApiService.fetchArabicHadiths(collectionId: 'bukhari'),
      throwsA(isA<VerifiedHadithDatasetUnavailable>()),
    );
  });

  test('hadithSectionProvider fails fast with an honest verified-dataset error', () async {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    await expectLater(
      container.read(hadithSectionProvider(HadithRequest('bukhari', 'en')).future),
      throwsA(isA<VerifiedHadithDatasetUnavailable>()),
    );
  });
}
