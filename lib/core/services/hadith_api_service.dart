const bool hasVerifiedHadithDataset = bool.fromEnvironment(
  'SIRAT_HAS_VERIFIED_HADITH_DATASET',
  defaultValue: false,
);

class VerifiedHadithDatasetUnavailable implements Exception {
  const VerifiedHadithDatasetUnavailable();

  @override
  String toString() => 'VerifiedHadithDatasetUnavailable';
}

class HadithApiService {
  static Future<List<Map<String, dynamic>>> fetchHadiths({
    required String collectionId,
    required String langCode,
    int section = 1,
  }) async {
    throw const VerifiedHadithDatasetUnavailable();
  }

  static Future<List<Map<String, dynamic>>> fetchArabicHadiths({
    required String collectionId,
    int section = 1,
  }) async {
    throw const VerifiedHadithDatasetUnavailable();
  }
}
