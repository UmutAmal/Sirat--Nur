import 'dart:convert';

import 'package:flutter/foundation.dart';
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

const String kCloudContentUnavailableErrorCode = 'cloud_content_unavailable';

SupabaseClient? readOptionalSupabaseClient(Ref ref) {
  try {
    return ref.read(supabaseClientProvider);
  } catch (_) {
    debugPrint(
      'Supabase client unavailable; using local fallback when possible',
    );
    return null;
  }
}

SupabaseClient readRequiredSupabaseClient(Ref ref) {
  final supabase = readOptionalSupabaseClient(ref);
  if (supabase == null) {
    throw StateError(kCloudContentUnavailableErrorCode);
  }

  return supabase;
}

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

  final source = _readFirstAyatValue(row, ['source']);
  if (source == null || !isApprovedCloudContentSourceUrl(source)) {
    return null;
  }

  final verifiedAt = _readFirstAyatValue(row, ['verified_at', 'verifiedAt']);
  if (verifiedAt == null || DateTime.tryParse(verifiedAt) == null) {
    return null;
  }

  final normalized = <String, dynamic>{
    'content_ar': _readFirstAyatValue(row, ['content_ar', 'text_ar']),
    'content_tr': _readFirstAyatValue(row, ['content_tr', 'text_tr']),
    'content_en': _readFirstAyatValue(row, ['content_en', 'text_en']),
    'reference': _readFirstAyatValue(row, ['reference']),
    'source': source,
    'verified_at': verifiedAt,
  };

  final hasMissingField = normalized.values.any(
    (value) => value == null || (value is String && value.isEmpty),
  );

  return hasMissingField ? null : normalized;
}

Map<String, dynamic>? normalizeDailyAyatCandidate(
  Object? candidate, {
  bool rotateIterable = false,
  DateTime? now,
}) {
  if (candidate is Map<String, dynamic>) {
    return normalizeDailyAyat(candidate);
  }

  if (candidate is Map) {
    return normalizeDailyAyat(Map<String, dynamic>.from(candidate));
  }

  if (candidate is Iterable) {
    final ayats = <Map<String, dynamic>>[];
    for (final row in candidate) {
      final ayat = normalizeDailyAyatCandidate(row);
      if (ayat != null) {
        if (!rotateIterable) {
          return ayat;
        }

        ayats.add(ayat);
      }
    }

    if (ayats.isNotEmpty) {
      return ayats[_dailyAyatRotationIndex(ayats.length, now: now)];
    }
  }

  return null;
}

int _dailyAyatRotationIndex(int itemCount, {DateTime? now}) {
  if (itemCount <= 1) {
    return 0;
  }

  final current = (now ?? DateTime.now()).toUtc();
  final currentDay = DateTime.utc(current.year, current.month, current.day);
  final epochDay = DateTime.utc(1970);
  return currentDay.difference(epochDay).inDays % itemCount;
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
  } catch (_) {
    debugPrint('Daily ayat cache decode failed');
  }

  return null;
}

Future<Map<String, dynamic>> resolveDailyAyat({
  required SharedPreferences prefs,
  required Future<Object?> Function() fetchScheduledAyat,
  required Future<Object?> Function() fetchFallbackAyat,
  DateTime Function()? now,
  int cloudRetryAttempts = 1,
  Duration cloudRetryDelay = const Duration(milliseconds: 800),
}) async {
  final currentTime = now ?? DateTime.now;
  final totalAttempts = cloudRetryAttempts < 0 ? 1 : cloudRetryAttempts + 1;

  for (var attempt = 0; attempt < totalAttempts; attempt++) {
    try {
      final ayat = normalizeDailyAyatCandidate(await fetchScheduledAyat());
      if (ayat != null) {
        await cacheDailyAyat(prefs, ayat, now: currentTime());
        return ayat;
      }
    } catch (_) {
      debugPrint('Daily ayat cloud fetch failed; trying fallback/cache');
    }

    try {
      final nowForFallback = currentTime();
      final ayat = normalizeDailyAyatCandidate(
        await fetchFallbackAyat(),
        rotateIterable: true,
        now: nowForFallback,
      );
      if (ayat != null) {
        await cacheDailyAyat(prefs, ayat, now: nowForFallback);
        return ayat;
      }
    } catch (_) {
      debugPrint('Daily ayat cloud fetch failed; trying fallback/cache');
    }

    if (attempt < totalAttempts - 1 && cloudRetryDelay > Duration.zero) {
      await Future<void>.delayed(cloudRetryDelay);
    }
  }

  final cachedAyat = readCachedDailyAyat(prefs, now: currentTime());
  if (cachedAyat != null) {
    return cachedAyat;
  }

  throw StateError('daily_ayat_unavailable');
}

final dailyAyatProvider = FutureProvider<Map<String, dynamic>>((ref) async {
  final prefs = ref.read(sharedPreferencesProvider);
  final formattedDate = DateTime.now().toIso8601String().split('T')[0];
  final supabase = readOptionalSupabaseClient(ref);
  if (supabase == null) {
    final cachedAyat = readCachedDailyAyat(prefs);
    if (cachedAyat != null) {
      return cachedAyat;
    }

    throw StateError('daily_ayat_unavailable');
  }

  return resolveDailyAyat(
    prefs: prefs,
    fetchScheduledAyat: () async {
      final res = await supabase
          .from('daily_content')
          .select()
          .eq('content_type', 'ayat')
          .gte('display_date', formattedDate)
          .order('display_date', ascending: true)
          .limit(8);
      return List<Map<String, dynamic>>.from(res);
    },
    fetchFallbackAyat: () async {
      final res = await supabase
          .from('daily_content')
          .select()
          .eq('content_type', 'ayat')
          .order('display_date', ascending: false)
          .limit(8);
      return List<Map<String, dynamic>>.from(res);
    },
  );
});

final liveTvProvider = FutureProvider<List<Map<String, dynamic>>>((ref) async {
  final supabase = readRequiredSupabaseClient(ref);
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

    if (!hasVerifiedCloudAudioProvenance(row)) {
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
  final supabase = readOptionalSupabaseClient(ref);
  if (supabase == null) {
    return const {};
  }

  try {
    final res = await supabase.from('audio_files').select().order('id');
    return resolveCloudSukunSources(List<Map<String, dynamic>>.from(res));
  } catch (_) {
    debugPrint('Sukun audio cloud source load failed; returning empty map');
    return const {};
  }
});

String? _readCloudText(Object? value) {
  if (value is! String) return null;

  final trimmed = value.trim();
  return trimmed.isEmpty ? null : trimmed;
}

String? _readCloudIdentifier(Object? value) {
  if (value is String || value is num) {
    final trimmed = value.toString().trim();
    return trimmed.isEmpty ? null : trimmed;
  }

  return null;
}

const Set<String> _approvedCloudContentSourceHosts = {
  'diyanet.gov.tr',
  'islamansiklopedisi.org.tr',
  'quran.gov.sa',
  'dar-alifta.org',
  'habous.gov.ma',
  'quran.com',
  'sunnah.com',
  'islamhouse.com',
  'mp3quran.net',
  'everyayah.com',
};

bool isApprovedCloudContentSourceUrl(String source) {
  final uri = Uri.tryParse(source.trim());
  if (uri == null ||
      !uri.isScheme('https') ||
      uri.host.trim().isEmpty ||
      uri.userInfo.isNotEmpty ||
      uri.hasFragment ||
      _hasUnsafeCloudSourceQuery(uri)) {
    return false;
  }

  final host = uri.host.toLowerCase();
  return _approvedCloudContentSourceHosts.any(
    (approvedHost) => host == approvedHost || host.endsWith('.$approvedHost'),
  );
}

bool _hasUnsafeCloudSourceQuery(Uri uri) {
  if (!uri.hasQuery) {
    return false;
  }

  const unsafeQueryKeys = {
    'apikey',
    'api-key',
    'api_key',
    'token',
    'secret',
    'password',
    'signature',
    'sig',
  };

  for (final key in uri.queryParametersAll.keys) {
    if (unsafeQueryKeys.contains(key.trim().toLowerCase())) {
      return true;
    }
  }

  try {
    return RegExp(
      r'(^|[&;])\s*(api[_-]?key|token|secret|password|signature|sig)\s*=',
      caseSensitive: false,
    ).hasMatch(Uri.decodeFull(uri.query));
  } catch (_) {
    return true;
  }
}

bool _hasVerifiedCloudContentProvenance(Map<String, dynamic> row) {
  final source = _readCloudProvenanceSource(row);
  return source != null &&
      isApprovedCloudContentSourceUrl(source) &&
      _readCloudVerifiedAt(row) != null;
}

String? _readCloudProvenanceSource(Map<String, dynamic> row) {
  return _readCloudText(row['source']) ?? _readCloudText(row['reference']);
}

String? _readCloudVerifiedAt(Map<String, dynamic> row) {
  final value =
      _readCloudText(row['verified_at']) ?? _readCloudText(row['verifiedAt']);
  return value == null || DateTime.tryParse(value) == null ? null : value;
}

String? resolveEducationCategoryId(Map<String, dynamic> row) {
  return _readCloudIdentifier(row['id']);
}

String resolveEducationText(Map<String, dynamic> row, String key) {
  return _readCloudText(row[key]) ?? '';
}

String resolveEducationIcon(Map<String, dynamic> row) {
  return _readCloudText(row['icon']) ?? '📚';
}

List<Map<String, dynamic>> resolveEducationCategories(
  List<Map<String, dynamic>> rows,
) {
  final categories = <Map<String, dynamic>>[];

  for (final row in rows) {
    final id = resolveEducationCategoryId(row);
    final title = _readCloudText(row['title']);
    if (id == null ||
        title == null ||
        !_hasVerifiedCloudContentProvenance(row)) {
      continue;
    }

    categories.add({
      'id': id,
      'title': title,
      'title_en': _readCloudText(row['title_en']) ?? '',
      'icon': resolveEducationIcon(row),
      'source': _readCloudProvenanceSource(row)!,
      'verified_at': _readCloudVerifiedAt(row)!,
    });
  }

  return List.unmodifiable(categories);
}

List<Map<String, dynamic>> resolveEducationTopics(
  List<Map<String, dynamic>> rows,
) {
  final topics = <Map<String, dynamic>>[];

  for (final row in rows) {
    final title = _readCloudText(row['title']);
    final content = _readCloudText(row['content']);
    if (title == null ||
        content == null ||
        !_hasVerifiedCloudContentProvenance(row)) {
      continue;
    }

    topics.add({
      'title': title,
      'title_en': _readCloudText(row['title_en']) ?? '',
      'content': content,
      'source': _readCloudProvenanceSource(row)!,
      'verified_at': _readCloudVerifiedAt(row)!,
    });
  }

  return List.unmodifiable(topics);
}

final educationCategoriesProvider = FutureProvider<List<Map<String, dynamic>>>((
  ref,
) async {
  final supabase = readRequiredSupabaseClient(ref);
  final res = await supabase
      .from('education_categories')
      .select()
      .order('sort_order', ascending: true);
  return resolveEducationCategories(List<Map<String, dynamic>>.from(res));
});

final educationTopicsProvider =
    FutureProvider.family<List<Map<String, dynamic>>, String>((
      ref,
      categoryId,
    ) async {
      final supabase = readRequiredSupabaseClient(ref);
      final res = await supabase
          .from('education_topics')
          .select()
          .eq('category_id', categoryId)
          .order('sort_order', ascending: true);
      return resolveEducationTopics(List<Map<String, dynamic>>.from(res));
    });

final dailyDuasProvider = FutureProvider<List<DuaData>>((ref) async {
  final supabase = readOptionalSupabaseClient(ref);
  if (supabase == null) {
    return bundledDailyDuaFallback();
  }

  try {
    final res = await supabase
        .from('duas')
        .select()
        .order('id', ascending: true);
    return resolveCloudDuas(List<Map<String, dynamic>>.from(res));
  } catch (_) {
    debugPrint(
      'Daily duas cloud load failed; using bundled Quran dua fallback',
    );
    return bundledDailyDuaFallback();
  }
});

final asmaUlHusnaProvider = FutureProvider<List<Map<String, dynamic>>>((
  ref,
) async {
  final supabase = readOptionalSupabaseClient(ref);
  if (supabase == null) {
    return buildBundledAsmaUlHusnaFallback();
  }

  try {
    final res = await supabase
        .from('asma_ul_husna')
        .select()
        .order('id', ascending: true);
    return resolveCloudAsmaUlHusnaRows(List<Map<String, dynamic>>.from(res));
  } catch (_) {
    debugPrint(
      'Asma-ul-Husna cloud load failed; using bundled verified fallback',
    );
    return buildBundledAsmaUlHusnaFallback();
  }
});
