class SurahDisplayInfo {
  final int number;
  final String nameArabic;
  final String transliteration;
  final String translatedName;
  final int ayahCount;
  final String revelationType;

  const SurahDisplayInfo({
    required this.number,
    required this.nameArabic,
    required this.transliteration,
    required this.translatedName,
    required this.ayahCount,
    required this.revelationType,
  });
}

SurahDisplayInfo resolveSurahDisplayInfo(
  Map<String, dynamic>? surahData,
  int surahNumber,
) {
  if (surahData == null) {
    return SurahDisplayInfo(
      number: surahNumber,
      nameArabic: '',
      transliteration: 'Surah $surahNumber',
      translatedName: '',
      ayahCount: 0,
      revelationType: '',
    );
  }

  final ayahs = surahData['ayahs'];
  final normalizedAyahs = ayahs is List ? ayahs.length : 0;

  return SurahDisplayInfo(
    number: (surahData['number'] as num?)?.toInt() ?? surahNumber,
    nameArabic: (surahData['name'] ?? '').toString().trim(),
    transliteration: (surahData['englishName'] ?? 'Surah $surahNumber')
        .toString()
        .trim(),
    translatedName: (surahData['englishNameTranslation'] ?? '')
        .toString()
        .trim(),
    ayahCount: normalizedAyahs,
    revelationType: (surahData['revelationType'] ?? '').toString().trim(),
  );
}
