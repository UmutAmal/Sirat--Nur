import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirat_i_nur/core/constants/asma_ul_husna_data.dart';
import 'package:sirat_i_nur/core/constants/duas_data.dart';
import 'package:sirat_i_nur/core/network/supabase_config.dart';
import 'package:sirat_i_nur/core/services/audio_sovereignty_service.dart';
import 'package:sirat_i_nur/core/services/offline_audio_service.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabaseClientProvider = Provider<SupabaseClient>((ref) {
  return Supabase.instance.client;
});

const Duration dailyAyatCacheTtl = Duration(hours: 24);
const String _dailyAyatCacheValueKey = 'daily_ayat_cache_value';
const String _dailyAyatCacheStoredAtKey = 'daily_ayat_cache_stored_at';

String? _readFirstAyatValue(Map<String, dynamic> row, List<String> keys) {
  for (final key in keys) {
    final value = row[key];
    final normalized = value?.toString().trim();
    if (normalized != null && normalized.isNotEmpty) {
      return normalized;
    }
  }

  return null;
}

Map<String, dynamic>? normalizeDailyAyat(Map<String, dynamic>? row) {
  if (row == null) {
    return null;
  }

  final normalized = <String, dynamic>{
    'content_ar': _readFirstAyatValue(row, ['content_ar', 'text_ar']),
    'content_tr': _readFirstAyatValue(row, ['content_tr', 'text_tr']),
    'content_en': _readFirstAyatValue(row, ['content_en', 'text_en']),
    'reference': _readFirstAyatValue(row, ['reference', 'source']),
  };

  final hasMissingField = normalized.values.any(
    (value) => value == null || (value is String && value.isEmpty),
  );

  return hasMissingField ? null : normalized;
}

Future<void> cacheDailyAyat(
  SharedPreferences prefs,
  Map<String, dynamic> ayat, {
  DateTime? now,
}) async {
  final normalized = normalizeDailyAyat(ayat);
  if (normalized == null) {
    return;
  }

  final timestamp = (now ?? DateTime.now()).toUtc().toIso8601String();
  await prefs.setString(_dailyAyatCacheValueKey, jsonEncode(normalized));
  await prefs.setString(_dailyAyatCacheStoredAtKey, timestamp);
}

Map<String, dynamic>? readCachedDailyAyat(
  SharedPreferences prefs, {
  DateTime? now,
}) {
  final raw = prefs.getString(_dailyAyatCacheValueKey);
  final storedAt = prefs.getString(_dailyAyatCacheStoredAtKey);

  if (raw == null || storedAt == null) {
    return null;
  }

  final parsedStoredAt = DateTime.tryParse(storedAt);
  if (parsedStoredAt == null) {
    return null;
  }

  final age = (now ?? DateTime.now()).toUtc().difference(
    parsedStoredAt.toUtc(),
  );
  if (age > dailyAyatCacheTtl) {
    return null;
  }

  try {
    final decoded = jsonDecode(raw);
    if (decoded is Map<String, dynamic>) {
      return normalizeDailyAyat(decoded);
    }
    if (decoded is Map) {
      return normalizeDailyAyat(Map<String, dynamic>.from(decoded));
    }
  } catch (_) {}

  return null;
}

Future<Map<String, dynamic>> resolveDailyAyat({
  required SharedPreferences prefs,
  required Future<Map<String, dynamic>?> Function() fetchScheduledAyat,
  required Future<Map<String, dynamic>?> Function() fetchFallbackAyat,
  DateTime Function()? now,
}) async {
  final currentTime = now ?? DateTime.now;

  for (final fetch in [fetchScheduledAyat, fetchFallbackAyat]) {
    try {
      final ayat = normalizeDailyAyat(await fetch());
      if (ayat != null) {
        await cacheDailyAyat(prefs, ayat, now: currentTime());
        return ayat;
      }
    } catch (_) {}
  }

  final cachedAyat = readCachedDailyAyat(prefs, now: currentTime());
  if (cachedAyat != null) {
    return cachedAyat;
  }

  throw StateError('daily_ayat_unavailable');
}

final dailyAyatProvider = FutureProvider<Map<String, dynamic>>((ref) async {
  final supabase = ref.read(supabaseClientProvider);
  final prefs = ref.read(sharedPreferencesProvider);
  final formattedDate = DateTime.now().toIso8601String().split('T')[0];

  return resolveDailyAyat(
    prefs: prefs,
    fetchScheduledAyat: () async {
      final res = await supabase
          .from('daily_content')
          .select()
          .eq('content_type', 'ayat')
          .gte('display_date', formattedDate)
          .order('display_date', ascending: true)
          .limit(1)
          .maybeSingle();
      return res == null ? null : Map<String, dynamic>.from(res);
    },
    fetchFallbackAyat: () async {
      final res = await supabase
          .from('daily_content')
          .select()
          .eq('content_type', 'ayat')
          .limit(1)
          .maybeSingle();
      return res == null ? null : Map<String, dynamic>.from(res);
    },
  );
});

final liveTvProvider = FutureProvider<List<Map<String, dynamic>>>((ref) async {
  final supabase = ref.read(supabaseClientProvider);
  final res = await supabase
      .from('live_tv_channels')
      .select()
      .order('sort_order', ascending: true);
  return List<Map<String, dynamic>>.from(res);
});

Map<String, String> resolveCloudSukunSources(List<Map<String, dynamic>> rows) {
  final sources = <String, String>{};

  for (final row in rows) {
    final type = row['type']?.toString().trim().toLowerCase();
    if (type != 'sukun' && type != 'nature') {
      continue;
    }

    final hasVerifiedProvenance =
        _readFirstAyatValue(row, ['source', 'reference']) != null &&
        _readFirstAyatValue(row, ['verified_at', 'verifiedAt']) != null;
    if (!hasVerifiedProvenance) {
      continue;
    }

    final url = resolvePlayableCloudAudioUrl(
      row,
      bucketName: SupabaseConfig.sukunAudioBucket,
    );
    if (url == null) {
      continue;
    }

    final soundType =
        resolveSukunSoundType(row['title']?.toString() ?? '') ??
        resolveSukunSoundType(row['storage_path']?.toString() ?? '') ??
        resolveSukunSoundType(url);
    if (soundType == null) {
      continue;
    }

    sources.putIfAbsent(soundType, () => url);
  }

  return Map.unmodifiable(sources);
}

final sukunAudioSourcesProvider = FutureProvider<Map<String, String>>((
  ref,
) async {
  final supabase = ref.read(supabaseClientProvider);

  try {
    final res = await supabase.from('audio_files').select().order('id');
    return resolveCloudSukunSources(List<Map<String, dynamic>>.from(res));
  } catch (_) {
    return const {};
  }
});

final educationCategoriesProvider = FutureProvider<List<Map<String, dynamic>>>((
  ref,
) async {
  final supabase = ref.read(supabaseClientProvider);
  final res = await supabase
      .from('education_categories')
      .select()
      .order('sort_order', ascending: true);
  return List<Map<String, dynamic>>.from(res);
});

final educationTopicsProvider =
    FutureProvider.family<List<Map<String, dynamic>>, String>((
      ref,
      categoryId,
    ) async {
      final supabase = ref.read(supabaseClientProvider);
      final res = await supabase
          .from('education_topics')
          .select()
          .eq('category_id', categoryId)
          .order('sort_order', ascending: true);
      return List<Map<String, dynamic>>.from(res);
    });

final dailyDuasProvider = FutureProvider<List<DuaData>>((ref) async {
  final supabase = ref.read(supabaseClientProvider);

  try {
    final res = await supabase
        .from('duas')
        .select()
        .order('id', ascending: true);
    return resolveCloudDuas(List<Map<String, dynamic>>.from(res));
  } catch (_) {
    return bundledDailyDuaFallback();
  }
});

final asmaUlHusnaProvider = FutureProvider<List<Map<String, dynamic>>>((
  ref,
) async {
  final supabase = ref.read(supabaseClientProvider);

  try {
    final res = await supabase
        .from('asma_ul_husna')
        .select()
        .order('id', ascending: true);
    return resolveCloudAsmaUlHusnaRows(List<Map<String, dynamic>>.from(res));
  } catch (_) {
    return buildBundledAsmaUlHusnaFallback();
  }
});
