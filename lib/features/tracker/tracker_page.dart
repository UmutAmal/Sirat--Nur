import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/widgets/premium_card.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

// ──────────────────────────────────────────────────────────────
// Persistent tracker providers — date-keyed, surviving app restarts
// ──────────────────────────────────────────────────────────────

String _todayKey() {
  final now = DateTime.now();
  return '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';
}

class TrackerNotifier extends StateNotifier<Map<String, bool>> {
  final SharedPreferences _prefs;
  TrackerNotifier(this._prefs) : super(_load(_prefs));

  static Map<String, bool> _load(SharedPreferences prefs) {
    final key = 'prayers_${_todayKey()}';
    final json = prefs.getString(key);
    if (json != null) {
      final decoded = jsonDecode(json) as Map<String, dynamic>;
      return decoded.map((k, v) => MapEntry(k, v as bool));
    }
    return {
      'Fajr': false,
      'Dhuhr': false,
      'Asr': false,
      'Maghrib': false,
      'Isha': false,
    };
  }

  void toggle(String prayer) {
    final map = Map<String, bool>.from(state);
    map[prayer] = !(map[prayer] ?? false);
    state = map;
    _prefs.setString('prayers_${_todayKey()}', jsonEncode(state));
  }
}

final prayerDoneProvider =
    StateNotifierProvider<TrackerNotifier, Map<String, bool>>((ref) {
      return TrackerNotifier(ref.watch(sharedPreferencesProvider));
    });

class QuranPagesNotifier extends StateNotifier<int> {
  final SharedPreferences _prefs;
  QuranPagesNotifier(this._prefs)
    : super(_prefs.getInt('quranPages_${_todayKey()}') ?? 0);

  void increment() {
    state++;
    _prefs.setInt('quranPages_${_todayKey()}', state);
  }

  void decrement() {
    if (state > 0) {
      state--;
      _prefs.setInt('quranPages_${_todayKey()}', state);
    }
  }
}

final quranPagesProvider = StateNotifierProvider<QuranPagesNotifier, int>((
  ref,
) {
  return QuranPagesNotifier(ref.watch(sharedPreferencesProvider));
});

class FastingNotifier extends StateNotifier<bool> {
  final SharedPreferences _prefs;
  FastingNotifier(this._prefs)
    : super(_prefs.getBool('fasting_${_todayKey()}') ?? false);

  void toggle() {
    state = !state;
    _prefs.setBool('fasting_${_todayKey()}', state);
  }
}

final fastingProvider = StateNotifierProvider<FastingNotifier, bool>((ref) {
  return FastingNotifier(ref.watch(sharedPreferencesProvider));
});

// ──────────────────────────────────────────────────────────────
// Tracker Page
// ──────────────────────────────────────────────────────────────

class TrackerPage extends ConsumerWidget {
  const TrackerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final prayerDone = ref.watch(prayerDoneProvider);
    final quranPages = ref.watch(quranPagesProvider);
    final fasting = ref.watch(fastingProvider);
    final prayerCount = prayerDone.values.where((v) => v).length;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.ibadahTracker)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Summary card
            AnimatedPremiumCard(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _statCircle(
                    context,
                    '$prayerCount/5',
                    l10n.prayers,
                    prayerCount / 5,
                    AppColors.emerald,
                  ),
                  _statCircle(
                    context,
                    '$quranPages',
                    l10n.page,
                    (quranPages / 20).clamp(0, 1).toDouble(),
                    AppColors.gold,
                  ),
                  _statCircle(
                    context,
                    fasting ? '✓' : '✗',
                    l10n.fasting,
                    fasting ? 1.0 : 0.0,
                    Colors.blue,
                  ),
                ],
              ),
            ),
            // Prayer tracking
            const SizedBox(height: 8),
            Text(
              l10n.prayers,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 12),
            PremiumCard(
              child: Column(
                children: prayerDone.entries.map((entry) {
                  final prayerName = _localizedPrayerName(entry.key, l10n);
                  return InkWell(
                    onTap: () =>
                        ref.read(prayerDoneProvider.notifier).toggle(entry.key),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Icon(
                            entry.value
                                ? Icons.check_circle_rounded
                                : Icons.radio_button_unchecked_rounded,
                            color: entry.value
                                ? AppColors.emerald
                                : Colors.grey,
                            size: 24,
                          ),
                          const SizedBox(width: 16),
                          Text(
                            prayerName,
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                              decoration: entry.value
                                  ? TextDecoration.lineThrough
                                  : null,
                              color: entry.value
                                  ? Theme.of(context).colorScheme.onSurface
                                        .withValues(alpha: 0.4)
                                  : null,
                            ),
                          ),
                          const Spacer(),
                          if (entry.value)
                            Text(
                              l10n.done,
                              style: const TextStyle(
                                color: AppColors.emerald,
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                              ),
                            ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            // Quran reading
            const SizedBox(height: 8),
            Text(
              l10n.quranReading,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 12),
            PremiumCard(
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.remove_circle_outline_rounded),
                    onPressed: quranPages > 0
                        ? () =>
                              ref.read(quranPagesProvider.notifier).decrement()
                        : null,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          '$quranPages',
                          style: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w900,
                            color: AppColors.emerald,
                          ),
                        ),
                        Text(
                          '${l10n.page.toLowerCase()} ${l10n.today.toLowerCase()}',
                          style: const TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.add_circle_outline_rounded,
                      color: AppColors.emerald,
                    ),
                    onPressed: () =>
                        ref.read(quranPagesProvider.notifier).increment(),
                  ),
                ],
              ),
            ),
            // Fasting
            const SizedBox(height: 8),
            Text(
              l10n.fasting,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 12),
            PremiumCard(
              onTap: () => ref.read(fastingProvider.notifier).toggle(),
              child: Row(
                children: [
                  Icon(
                    fasting
                        ? Icons.check_circle_rounded
                        : Icons.radio_button_unchecked_rounded,
                    color: fasting ? AppColors.emerald : Colors.grey,
                    size: 28,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      fasting
                          ? '${l10n.fasting} ${l10n.today} ✓'
                          : '${l10n.fasting}: ${l10n.no}',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                        color: fasting ? AppColors.emerald : null,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _statCircle(
    BuildContext context,
    String value,
    String label,
    double progress,
    Color color,
  ) {
    return Column(
      children: [
        SizedBox(
          width: 68,
          height: 68,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircularProgressIndicator(
                value: progress,
                strokeWidth: 5,
                backgroundColor: color.withValues(alpha: 0.15),
                valueColor: AlwaysStoppedAnimation<Color>(color),
              ),
              Text(
                value,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: color,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Theme.of(
              context,
            ).colorScheme.onSurface.withValues(alpha: 0.5),
          ),
        ),
      ],
    );
  }

  String _localizedPrayerName(String key, AppLocalizations l10n) {
    switch (key) {
      case 'Fajr':
        return l10n.fajr;
      case 'Dhuhr':
        return l10n.dhuhr;
      case 'Asr':
        return l10n.asr;
      case 'Maghrib':
        return l10n.maghrib;
      case 'Isha':
        return l10n.isha;
      default:
        return key;
    }
  }
}
