import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/features/library/hadith_collection_copy.dart';

void main() {
  test('resolveHadithCollectionName returns Turkish canonical names for tr locale', () {
    expect(resolveHadithCollectionName('bukhari', 'tr'), 'Sahih-i Buhârî');
    expect(resolveHadithCollectionName('nasai', 'tr'), 'Sünen-i Nesâî');
  });

  test('resolveHadithCollectionName returns English canonical names for non-tr locales', () {
    expect(resolveHadithCollectionName('muslim', 'en'), 'Sahih Muslim');
    expect(resolveHadithCollectionName('ibnmajah', 'de'), 'Sunan Ibn Majah');
  });
}
