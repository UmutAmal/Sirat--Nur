class QuranDbStatus {
  final int surahCount;
  final int ayahCount;
  final int missingArabicCount;
  final int missingEnglishCount;
  final int missingTurkishCount;
  final int? databaseUserVersion;
  final String? databasePath;

  const QuranDbStatus({
    required this.surahCount,
    required this.ayahCount,
    required this.missingArabicCount,
    required this.missingEnglishCount,
    required this.missingTurkishCount,
    this.databaseUserVersion,
    this.databasePath,
  });

  bool get hasSeedData => surahCount > 0 && ayahCount > 0;

  bool get isComplete =>
      surahCount == 114 &&
      ayahCount == 6236 &&
      missingArabicCount == 0 &&
      missingEnglishCount == 0 &&
      missingTurkishCount == 0;
}
