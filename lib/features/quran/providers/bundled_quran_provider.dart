import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/core/providers/supabase_providers.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

const String bundledQuranAssetPath = 'assets/data/full_quran.json';
const int expectedQuranSurahCount = 114;
const int expectedQuranAyahCount = 6236;

List<Map<String, dynamic>> parseBundledQuranRows(String rawJson) {
  final decoded = jsonDecode(rawJson);
  if (decoded is! List) {
    throw const FormatException('Bundled Quran payload must be a JSON array');
  }

  return decoded
      .whereType<Map>()
      .map((row) => Map<String, dynamic>.from(row))
      .toList(growable: false);
}

Map<String, dynamic>? findBundledSurahData(
  Iterable<Map<String, dynamic>> rows,
  int surahNumber,
) {
  for (final row in rows) {
    if ((row['number'] as num?)?.toInt() == surahNumber) {
      return row;
    }
  }

  return null;
}

Future<List<Map<String, dynamic>>> loadBundledQuranRows(
  AssetBundle assetBundle,
) async {
  final rawJson = await assetBundle.loadString(bundledQuranAssetPath);
  return parseBundledQuranRows(rawJson);
}

Future<List<Map<String, dynamic>>> resolveQuranRows({
  required Future<List<Map<String, dynamic>>?> Function() loadCloudRows,
  required Future<List<Map<String, dynamic>>> Function() loadBundledRows,
}) async {
  try {
    final cloudRows = await loadCloudRows();
    if (cloudRows != null && cloudRows.isNotEmpty) {
      return cloudRows;
    }
  } catch (_) {}

  return loadBundledRows();
}

Future<List<Map<String, dynamic>>?> loadCloudQuranRows({
  required SupabaseClient supabase,
  required List<Map<String, dynamic>> bundledRows,
}) async {
  try {
    final surahResponse = await supabase
        .from('quran_surahs')
        .select(
          'id, surah_number, name_ar, name_en, name_transliteration, ayah_count, revelation_type',
        )
        .order('surah_number', ascending: true);
    final ayahResponse = await _loadCloudAyahRows(supabase);

    return normalizeCloudQuranRows(
      surahRows: List<Map<String, dynamic>>.from(surahResponse),
      ayahRows: List<Map<String, dynamic>>.from(ayahResponse),
      bundledRows: bundledRows,
    );
  } catch (_) {
    return null;
  }
}

Future<List<dynamic>> _loadCloudAyahRows(SupabaseClient supabase) async {
  try {
    return await supabase
        .from('quran_ayahs')
        .select('surah_id, ayah_number, juz_number, text_ar, text_tr, text_en')
        .order('surah_id', ascending: true)
        .order('ayah_number', ascending: true);
  } catch (_) {
    return supabase
        .from('quran_ayahs')
        .select('surah_id, ayah_number, text_ar, text_tr, text_en')
        .order('surah_id', ascending: true)
        .order('ayah_number', ascending: true);
  }
}

List<Map<String, dynamic>>? normalizeCloudQuranRows({
  required List<Map<String, dynamic>> surahRows,
  required List<Map<String, dynamic>> ayahRows,
  required List<Map<String, dynamic>> bundledRows,
  int expectedSurahCount = expectedQuranSurahCount,
  int expectedAyahCount = expectedQuranAyahCount,
}) {
  if (surahRows.length != expectedSurahCount ||
      ayahRows.length != expectedAyahCount) {
    return null;
  }

  final bundledSurahByNumber = <int, Map<String, dynamic>>{};
  final bundledAyahMetaByKey = <String, Map<String, dynamic>>{};
  for (final bundledSurah in bundledRows) {
    final surahNumber = _toInt(bundledSurah['number']);
    if (surahNumber == null || surahNumber <= 0) {
      continue;
    }

    bundledSurahByNumber[surahNumber] = bundledSurah;
    final ayahs =
        bundledSurah['ayahs'] as List<dynamic>? ?? const <dynamic>[];
    for (final ayah in ayahs.whereType<Map>()) {
      final ayahMap = Map<String, dynamic>.from(ayah);
      final ayahNumber = _toInt(ayahMap['numberInSurah']);
      if (ayahNumber == null || ayahNumber <= 0) {
        continue;
      }

      bundledAyahMetaByKey['$surahNumber:$ayahNumber'] = ayahMap;
    }
  }

  final sortedSurahs = [...surahRows]
    ..sort(
      (a, b) => (_toInt(a['surah_number']) ?? 0).compareTo(
        _toInt(b['surah_number']) ?? 0,
      ),
    );
  final sortedAyahs = [...ayahRows]
    ..sort((a, b) {
      final surahOrder = (_toInt(a['surah_id']) ?? 0).compareTo(
        _toInt(b['surah_id']) ?? 0,
      );
      if (surahOrder != 0) {
        return surahOrder;
      }

      return (_toInt(a['ayah_number']) ?? 0).compareTo(
        _toInt(b['ayah_number']) ?? 0,
      );
    });

  final normalizedRows = <Map<String, dynamic>>[];
  final normalizedSurahsById = <int, Map<String, dynamic>>{};
  final expectedAyahCountBySurah = <int, int>{};

  for (final surahRow in sortedSurahs) {
    final surahId = _toInt(surahRow['id']);
    final surahNumber = _toInt(surahRow['surah_number']);
    final ayahCount = _toInt(surahRow['ayah_count']);
    if (surahId == null ||
        surahId <= 0 ||
        surahNumber == null ||
        surahNumber <= 0 ||
        ayahCount == null ||
        ayahCount <= 0) {
      return null;
    }

    final bundledSurah = bundledSurahByNumber[surahNumber];
    if (bundledSurah == null) {
      return null;
    }

    final nameArabic =
        _nonEmptyString(surahRow['name_ar']) ??
        _nonEmptyString(bundledSurah['name']);
    final transliteration =
        _nonEmptyString(surahRow['name_transliteration']) ??
        _nonEmptyString(bundledSurah['englishName']);
    final translatedName =
        _nonEmptyString(surahRow['name_en']) ??
        _nonEmptyString(bundledSurah['englishNameTranslation']) ??
        '';
    final revelationType =
        _nonEmptyString(surahRow['revelation_type']) ??
        _nonEmptyString(bundledSurah['revelationType']);

    if (nameArabic == null || transliteration == null || revelationType == null) {
      return null;
    }

    final normalizedSurah = <String, dynamic>{
      'number': surahNumber,
      'name': nameArabic,
      'englishName': transliteration,
      'englishNameTranslation': translatedName,
      'revelationType': revelationType,
      'ayahs': <Map<String, dynamic>>[],
    };

    normalizedRows.add(normalizedSurah);
    normalizedSurahsById[surahId] = normalizedSurah;
    expectedAyahCountBySurah[surahNumber] = ayahCount;
  }

  for (final ayahRow in sortedAyahs) {
    final surahId = _toInt(ayahRow['surah_id']);
    final ayahNumber = _toInt(ayahRow['ayah_number']);
    if (surahId == null || ayahNumber == null || ayahNumber <= 0) {
      return null;
    }

    final normalizedSurah = normalizedSurahsById[surahId];
    if (normalizedSurah == null) {
      return null;
    }

    final surahNumber = _toInt(normalizedSurah['number']);
    if (surahNumber == null) {
      return null;
    }

    final bundledAyahMeta = bundledAyahMetaByKey['$surahNumber:$ayahNumber'];
    if (bundledAyahMeta == null) {
      return null;
    }

    final textArabic = _nonEmptyString(ayahRow['text_ar']);
    final textTurkish = _nonEmptyString(ayahRow['text_tr']);
    final textEnglish = _nonEmptyString(ayahRow['text_en']);
    final juzNumber =
        _toInt(ayahRow['juz_number']) ?? _toInt(bundledAyahMeta['juz']);
    if (textArabic == null ||
        textTurkish == null ||
        textEnglish == null ||
        juzNumber == null ||
        juzNumber <= 0) {
      return null;
    }

    final normalizedAyahs = normalizedSurah['ayahs'] as List<Map<String, dynamic>>;
    normalizedAyahs.add(<String, dynamic>{
      'number': _toInt(bundledAyahMeta['number']) ?? ayahNumber,
      'text': textArabic,
      'numberInSurah': ayahNumber,
      'juz': juzNumber,
      'en_translation': textEnglish,
      'tr_translation': textTurkish,
    });
  }

  for (final surah in normalizedRows) {
    final surahNumber = _toInt(surah['number']);
    final expectedAyahCountForSurah =
        surahNumber == null ? null : expectedAyahCountBySurah[surahNumber];
    final ayahs = surah['ayahs'] as List<Map<String, dynamic>>;
    if (expectedAyahCountForSurah == null ||
        ayahs.length != expectedAyahCountForSurah) {
      return null;
    }
  }

  return normalizedRows;
}

int? _toInt(dynamic value) {
  if (value is num) {
    return value.toInt();
  }
  if (value is String) {
    return int.tryParse(value.trim());
  }
  return null;
}

String? _nonEmptyString(dynamic value) {
  final normalized = value?.toString().trim();
  if (normalized == null || normalized.isEmpty) {
    return null;
  }
  return normalized;
}

final bundledQuranProvider = FutureProvider<List<Map<String, dynamic>>>((ref) async {
  final bundledRows = await loadBundledQuranRows(rootBundle);
  final supabase = ref.read(supabaseClientProvider);

  return resolveQuranRows(
    loadCloudRows: () => loadCloudQuranRows(
      supabase: supabase,
      bundledRows: bundledRows,
    ),
    loadBundledRows: () async => bundledRows,
  );
});
