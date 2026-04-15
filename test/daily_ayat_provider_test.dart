import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirat_i_nur/core/providers/supabase_providers.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

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

    await cacheDailyAyat(prefs, {
      'content_ar': 'المخزن',
      'content_tr': 'Onbellek',
      'content_en': 'Cached',
      'reference': 'Al-Fatihah 1:1',
    }, now: cachedAt);

    final ayat = await resolveDailyAyat(
      prefs: prefs,
      now: () => cachedAt.add(const Duration(hours: 2)),
      fetchScheduledAyat: () async => throw Exception('offline'),
      fetchFallbackAyat: () async => null,
    );

    expect(ayat['content_en'], 'Cached');
    expect(ayat['reference'], 'Al-Fatihah 1:1');
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
}
