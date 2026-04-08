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

List<SurahDisplayInfo> parseBundledSurahDisplayInfoList(List<dynamic> data) {
  return data
      .whereType<Map>()
      .map((row) => Map<String, dynamic>.from(row))
      .map(
        (surahData) => resolveSurahDisplayInfo(
          surahData,
          (surahData['number'] as num?)?.toInt() ?? 0,
        ),
      )
      .where((surah) => surah.number > 0)
      .toList(growable: false);
}

List<SurahDisplayInfo> filterSurahDisplayInfos(
  Iterable<SurahDisplayInfo> surahs,
  String query,
) {
  final trimmedQuery = query.trim();
  if (trimmedQuery.isEmpty) {
    return List<SurahDisplayInfo>.unmodifiable(surahs);
  }

  final rawQuery = trimmedQuery.toLowerCase();
  final normalizedQuery = _normalizeSurahSearch(trimmedQuery);

  return surahs.where((surah) {
    if (surah.number.toString() == trimmedQuery) {
      return true;
    }

    return _surahSearchTerms(surah).any((term) {
      final rawTerm = term.toLowerCase();
      final normalizedTerm = _normalizeSurahSearch(term);
      return rawTerm.contains(rawQuery) ||
          (normalizedQuery.isNotEmpty &&
              normalizedTerm.contains(normalizedQuery));
    });
  }).toList(growable: false);
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

Iterable<String> _surahSearchTerms(SurahDisplayInfo surah) sync* {
  yield surah.nameArabic;
  yield surah.transliteration;
  yield surah.translatedName;
}

String _normalizeSurahSearch(String value) {
  final lower = value.toLowerCase().trim();
  if (lower.isEmpty) {
    return '';
  }

  final replacements = <String, String>{
    'â': 'a',
    'á': 'a',
    'à': 'a',
    'ä': 'a',
    'î': 'i',
    'í': 'i',
    'ï': 'i',
    'û': 'u',
    'ú': 'u',
    'ü': 'u',
    'ā': 'a',
    'ī': 'i',
    'ū': 'u',
    'q': 'k',
    'th': 't',
    'dh': 'd',
    'kh': 'k',
    'gh': 'g',
    'sh': 's',
  };

  var normalized = lower;
  replacements.forEach((from, to) {
    normalized = normalized.replaceAll(from, to);
  });

  normalized = normalized
      .replaceAll("'", '')
      .replaceAll(RegExp(r'[\s\-_`’".,:;!?()/\\]+'), '');

  normalized = normalized.replaceAllMapped(
    RegExp(r'([aeiou])\1+'),
    (match) => match.group(1) ?? '',
  );

  return normalized;
}
