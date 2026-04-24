import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirat_i_nur/core/providers/supabase_providers.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  const approvedDailyAyatSource = 'https://quran.com/2/201';

  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  test(
    'resolveDailyAyat caches and returns the first valid cloud verse',
    () async {
      final prefs = await SharedPreferences.getInstance();
      final now = DateTime.utc(2026, 4, 8, 9);

      final ayat = await resolveDailyAyat(
        prefs: prefs,
        now: () => now,
        fetchScheduledAyat: () async => {
          'content_ar': 'آية اليوم',
          'content_tr': 'Gunun ayeti',
          'content_en': 'Verse of the day',
          'reference': 'Al-Baqarah 2:255',
          'source': approvedDailyAyatSource,
          'verified_at': '2026-04-08T00:00:00Z',
        },
        fetchFallbackAyat: () async => null,
      );

      expect(ayat['content_ar'], 'آية اليوم');
      expect(readCachedDailyAyat(prefs, now: now), ayat);
    },
  );

  test('resolveDailyAyat uses a fresh cache when cloud fetch fails', () async {
    final prefs = await SharedPreferences.getInstance();
    final cachedAt = DateTime.utc(2026, 4, 8, 8);
    final debugMessages = <String>[];
    final previousDebugPrint = debugPrint;
    addTearDown(() => debugPrint = previousDebugPrint);
    debugPrint = (String? message, {int? wrapWidth}) {
      if (message != null) debugMessages.add(message);
    };

    await cacheDailyAyat(prefs, {
      'content_ar': 'المخزن',
      'content_tr': 'Onbellek',
      'content_en': 'Cached',
      'reference': 'Al-Fatihah 1:1',
      'source': approvedDailyAyatSource,
      'verified_at': '2026-04-08T00:00:00Z',
    }, now: cachedAt);

    final ayat = await resolveDailyAyat(
      prefs: prefs,
      now: () => cachedAt.add(const Duration(hours: 2)),
      fetchScheduledAyat: () async => throw Exception('offline'),
      fetchFallbackAyat: () async => null,
    );

    expect(ayat['content_en'], 'Cached');
    expect(ayat['reference'], 'Al-Fatihah 1:1');
    expect(
      debugMessages,
      contains('Daily ayat cloud fetch failed; trying fallback/cache'),
    );
  });

  test(
    'resolveDailyAyat throws when cloud fetch fails and cache is stale',
    () async {
      final prefs = await SharedPreferences.getInstance();
      final cachedAt = DateTime.utc(2026, 4, 6, 8);

      await cacheDailyAyat(prefs, {
        'content_ar': 'قديم',
        'content_tr': 'Eski',
        'content_en': 'Old',
        'reference': 'Al-Fatihah 1:1',
        'source': approvedDailyAyatSource,
        'verified_at': '2026-04-06T00:00:00Z',
      }, now: cachedAt);

      expect(
        () => resolveDailyAyat(
          prefs: prefs,
          now: () => cachedAt.add(const Duration(days: 2)),
          fetchScheduledAyat: () async => null,
          fetchFallbackAyat: () async => null,
        ),
        throwsA(isA<StateError>()),
      );
    },
  );

  test(
    'dailyAyatProvider uses fresh cache when Supabase client is unavailable',
    () async {
      final prefs = await SharedPreferences.getInstance();
      final cachedAt = DateTime.now().toUtc();

      await cacheDailyAyat(prefs, {
        'content_ar': 'آية محفوظة',
        'content_tr': 'Kayitli ayet',
        'content_en': 'Cached verse',
        'reference': 'Al-Fatihah 1:1',
        'source': approvedDailyAyatSource,
        'verified_at': '2026-04-08T00:00:00Z',
      }, now: cachedAt);

      final container = ProviderContainer(
        overrides: [
          sharedPreferencesProvider.overrideWithValue(prefs),
          supabaseClientProvider.overrideWith(
            (_) => throw StateError('supabase_unavailable'),
          ),
        ],
      );
      addTearDown(container.dispose);

      final ayat = await container.read(dailyAyatProvider.future);

      expect(ayat['content_en'], 'Cached verse');
      expect(ayat['reference'], 'Al-Fatihah 1:1');
    },
  );

  test(
    'dailyAyatProvider reports unavailable when Supabase client and cache are missing',
    () async {
      final prefs = await SharedPreferences.getInstance();
      final container = ProviderContainer(
        overrides: [
          sharedPreferencesProvider.overrideWithValue(prefs),
          supabaseClientProvider.overrideWith(
            (_) => throw StateError('supabase_unavailable'),
          ),
        ],
      );
      addTearDown(container.dispose);

      expect(
        container.read(dailyAyatProvider.future),
        throwsA(isA<StateError>()),
      );
    },
  );

  test(
    'fallback-backed cloud providers do not bypass local fallback when Supabase is unavailable',
    () async {
      final prefs = await SharedPreferences.getInstance();
      final container = ProviderContainer(
        overrides: [
          sharedPreferencesProvider.overrideWithValue(prefs),
          supabaseClientProvider.overrideWith(
            (_) => throw StateError('supabase_unavailable'),
          ),
        ],
      );
      addTearDown(container.dispose);

      final sukunSources = await container.read(
        sukunAudioSourcesProvider.future,
      );
      final duas = await container.read(dailyDuasProvider.future);
      final asmaNames = await container.read(asmaUlHusnaProvider.future);

      expect(sukunSources, isEmpty);
      expect(duas, isNotEmpty);
      expect(asmaNames, hasLength(99));
    },
  );

  test('fallback-backed cloud provider catch blocks are logged', () {
    final source = File(
      'lib/core/providers/supabase_providers.dart',
    ).readAsStringSync();

    expect(
      source,
      contains('Sukun audio cloud source load failed; returning empty map'),
    );
    expect(
      source,
      contains(
        'Daily duas cloud load failed; using bundled Quran dua fallback',
      ),
    );
    expect(
      source,
      contains(
        'Asma-ul-Husna cloud load failed; using bundled verified fallback',
      ),
    );
  });

  test(
    'cloud-only providers report a controlled unavailable error when Supabase is unavailable',
    () async {
      final prefs = await SharedPreferences.getInstance();
      final container = ProviderContainer(
        overrides: [
          sharedPreferencesProvider.overrideWithValue(prefs),
          supabaseClientProvider.overrideWith(
            (_) => throw StateError('raw_supabase_secret'),
          ),
        ],
      );
      addTearDown(container.dispose);

      final controlledError = throwsA(
        isA<StateError>().having(
          (error) => error.message,
          'message',
          kCloudContentUnavailableErrorCode,
        ),
      );

      await expectLater(container.read(liveTvProvider.future), controlledError);
      await expectLater(
        container.read(educationCategoriesProvider.future),
        controlledError,
      );
      await expectLater(
        container.read(educationTopicsProvider('faith').future),
        controlledError,
      );
    },
  );

  test('normalizeDailyAyat rejects rows without verified provenance', () {
    expect(
      normalizeDailyAyat({
        'content_ar': 'آية',
        'content_tr': 'Ayet',
        'content_en': 'Verse',
        'reference': 'Al-Fatihah 1:1',
        'source': approvedDailyAyatSource,
      }),
      isNull,
    );

    expect(
      normalizeDailyAyat({
        'content_ar': 'آية',
        'content_tr': 'Ayet',
        'content_en': 'Verse',
        'reference': 'Al-Fatihah 1:1',
        'source': approvedDailyAyatSource,
        'verified_at': 'not-a-date',
      }),
      isNull,
    );

    expect(
      normalizeDailyAyat({
        'content_ar': 'آية',
        'content_tr': 'Ayet',
        'content_en': 'Verse',
        'reference': 'Al-Fatihah 1:1',
        'source': 'https://example.com/ayat',
        'verified_at': '2026-04-08T00:00:00Z',
      }),
      isNull,
    );

    expect(
      normalizeDailyAyat({
        'content_ar': 'آية',
        'content_tr': 'Ayet',
        'content_en': 'Verse',
        'reference': 'Al-Fatihah 1:1',
        'verified_at': '2026-04-08T00:00:00Z',
      }),
      isNull,
    );

    expect(
      normalizeDailyAyat({
        'text_ar': 'آية',
        'text_tr': 'Ayet',
        'text_en': 'Verse',
        'reference': 'Al-Fatihah 1:1',
        'source': approvedDailyAyatSource,
        'verifiedAt': '2026-04-08T00:00:00Z',
      }),
      {
        'content_ar': 'آية',
        'content_tr': 'Ayet',
        'content_en': 'Verse',
        'reference': 'Al-Fatihah 1:1',
        'source': approvedDailyAyatSource,
        'verified_at': '2026-04-08T00:00:00Z',
      },
    );
  });
}
