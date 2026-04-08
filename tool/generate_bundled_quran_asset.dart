import 'dart:convert';
import 'dart:io';

const String _surahSeedPath = 'content_seed_quran_surahs.sql';
const String _ayahSeedPath = 'content_seed_quran_ayahs.sql';
const String _outputAssetPath = 'assets/data/full_quran.json';

final RegExp _surahPattern = RegExp(
  r"INSERT INTO public\.quran_surahs \([\s\S]*?\) VALUES \(\s*(\d+), '((?:[^']|'')*)', '((?:[^']|'')*)', '((?:[^']|'')*)', '((?:[^']|'')*)', (\d+), '((?:[^']|'')*)', '((?:[^']|'')*)', TIMESTAMPTZ '([^']+)'\s*\) ON CONFLICT",
  multiLine: true,
);

final RegExp _ayahPattern = RegExp(
  r"SELECT\s+id, (\d+), (\d+), '((?:[^']|'')*)', '((?:[^']|'')*)', '((?:[^']|'')*)', NULL, '((?:[^']|'')*)', TIMESTAMPTZ '([^']+)'\s+FROM public\.quran_surahs\s+WHERE surah_number = (\d+)\s+ON CONFLICT",
  multiLine: true,
);

void main() {
  final surahSeed = File(_surahSeedPath).readAsStringSync();
  final ayahSeed = File(_ayahSeedPath).readAsStringSync();
  final rows = buildBundledQuranRows(
    surahSeedSql: surahSeed,
    ayahSeedSql: ayahSeed,
  );

  const encoder = JsonEncoder.withIndent('  ');
  File(_outputAssetPath).writeAsStringSync('${encoder.convert(rows)}\n');
  stdout.writeln(
    'Generated $_outputAssetPath with ${rows.length} surahs and '
    '${rows.fold<int>(0, (total, row) => total + ((row['ayahs'] as List).length))} ayahs.',
  );
}

List<Map<String, dynamic>> buildBundledQuranRows({
  required String surahSeedSql,
  required String ayahSeedSql,
}) {
  final surahs = _parseSurahSeedRows(surahSeedSql);
  final ayahs = _parseAyahSeedRows(ayahSeedSql);

  if (surahs.length != 114) {
    throw StateError('Expected 114 surahs in seed, got ${surahs.length}.');
  }
  if (ayahs.length != 6236) {
    throw StateError('Expected 6236 ayahs in seed, got ${ayahs.length}.');
  }

  final ayahsBySurah = <int, List<_AyahSeedRow>>{};
  for (final ayah in ayahs) {
    ayahsBySurah.putIfAbsent(ayah.surahNumber, () => <_AyahSeedRow>[]).add(ayah);
  }

  var runningAyahNumber = 1;
  return surahs.map((surah) {
    final surahAyahs = [...?ayahsBySurah[surah.surahNumber]]
      ..sort((a, b) => a.ayahNumber.compareTo(b.ayahNumber));

    if (surahAyahs.length != surah.ayahCount) {
      throw StateError(
        'Surah ${surah.surahNumber} expected ${surah.ayahCount} ayahs, '
        'got ${surahAyahs.length}.',
      );
    }

    final ayahMaps = surahAyahs.map((ayah) {
      return <String, dynamic>{
        'number': runningAyahNumber++,
        'text': ayah.textArabic,
        'numberInSurah': ayah.ayahNumber,
        'juz': ayah.juzNumber,
        'en_translation': ayah.textEnglish,
        'tr_translation': ayah.textTurkish,
      };
    }).toList(growable: false);

    return <String, dynamic>{
      'number': surah.surahNumber,
      'name': surah.nameArabic,
      'englishName': surah.transliteration,
      'englishNameTranslation': surah.nameEnglish,
      'revelationType': surah.revelationType,
      'ayahs': ayahMaps,
    };
  }).toList(growable: false);
}

List<_SurahSeedRow> _parseSurahSeedRows(String seedSql) {
  return _surahPattern.allMatches(seedSql).map((match) {
    return _SurahSeedRow(
      surahNumber: int.parse(match.group(1)!),
      nameArabic: _unescapeSql(match.group(2)!),
      nameEnglish: _unescapeSql(match.group(4)!),
      transliteration: _unescapeSql(match.group(5)!),
      ayahCount: int.parse(match.group(6)!),
      revelationType: _unescapeSql(match.group(7)!),
    );
  }).toList(growable: false)
    ..sort((a, b) => a.surahNumber.compareTo(b.surahNumber));
}

List<_AyahSeedRow> _parseAyahSeedRows(String seedSql) {
  return _ayahPattern.allMatches(seedSql).map((match) {
    final surahNumber = int.parse(match.group(8)!);
    return _AyahSeedRow(
      surahNumber: surahNumber,
      ayahNumber: int.parse(match.group(1)!),
      juzNumber: int.parse(match.group(2)!),
      textArabic: _unescapeSql(match.group(3)!),
      textTurkish: _unescapeSql(match.group(4)!),
      textEnglish: _unescapeSql(match.group(5)!),
    );
  }).toList(growable: false)
    ..sort((a, b) {
      final surahOrder = a.surahNumber.compareTo(b.surahNumber);
      if (surahOrder != 0) {
        return surahOrder;
      }
      return a.ayahNumber.compareTo(b.ayahNumber);
    });
}

String _unescapeSql(String value) => value.replaceAll("''", "'");

class _SurahSeedRow {
  const _SurahSeedRow({
    required this.surahNumber,
    required this.nameArabic,
    required this.nameEnglish,
    required this.transliteration,
    required this.ayahCount,
    required this.revelationType,
  });

  final int surahNumber;
  final String nameArabic;
  final String nameEnglish;
  final String transliteration;
  final int ayahCount;
  final String revelationType;
}

class _AyahSeedRow {
  const _AyahSeedRow({
    required this.surahNumber,
    required this.ayahNumber,
    required this.juzNumber,
    required this.textArabic,
    required this.textTurkish,
    required this.textEnglish,
  });

  final int surahNumber;
  final int ayahNumber;
  final int juzNumber;
  final String textArabic;
  final String textTurkish;
  final String textEnglish;
}
