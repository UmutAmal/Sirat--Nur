import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const String bundledQuranAssetPath = 'assets/data/full_quran.json';

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

final bundledQuranProvider = FutureProvider<List<Map<String, dynamic>>>((
  ref,
) async {
  final rawJson = await rootBundle.loadString(bundledQuranAssetPath);
  return parseBundledQuranRows(rawJson);
});
