import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/utils/activity_date_key.dart';
import 'package:sirat_i_nur/core/widgets/premium_card.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

const _trackedPrayerNames = {'Fajr', 'Dhuhr', 'Asr', 'Maghrib', 'Isha'};

class DailyPrayerAnalytics {
  const DailyPrayerAnalytics({required this.date, required this.completed});

  final DateTime date;
  final int completed;
}

class AnalyticsSnapshot {
  const AnalyticsSnapshot({
    required this.weeklyPrayers,
    required this.weeklyQuranPages,
    required this.weeklyFastingDays,
    required this.weeklyZikrCount,
    required this.prayerDays,
    required this.currentPrayerStreak,
    required this.bestPrayerStreak,
  });

  final int weeklyPrayers;
  final int weeklyQuranPages;
  final int weeklyFastingDays;
  final int weeklyZikrCount;
  final List<DailyPrayerAnalytics> prayerDays;
  final int currentPrayerStreak;
  final int bestPrayerStreak;
}

AnalyticsSnapshot buildAnalyticsSnapshot(
  SharedPreferences prefs,
  DateTime now,
) {
  final today = DateTime(now.year, now.month, now.day);
  final days = List<DateTime>.generate(
    7,
    (index) => today.subtract(Duration(days: 6 - index)),
  );

  final prayerDays = <DailyPrayerAnalytics>[];
  var weeklyPrayers = 0;
  var weeklyQuranPages = 0;
  var weeklyFastingDays = 0;
  var weeklyZikrCount = 0;

  for (final day in days) {
    final completedPrayers = _completedPrayerCountForDate(prefs, day);
    weeklyPrayers += completedPrayers;
    weeklyQuranPages += _nonNegativeInt(prefs.getInt(_quranPagesKey(day)));
    weeklyFastingDays += (prefs.getBool(_fastingKey(day)) ?? false) ? 1 : 0;
    weeklyZikrCount += _nonNegativeInt(prefs.getInt(_zikrCountKey(day)));
    prayerDays.add(
      DailyPrayerAnalytics(date: day, completed: completedPrayers),
    );
  }

  return AnalyticsSnapshot(
    weeklyPrayers: weeklyPrayers,
    weeklyQuranPages: weeklyQuranPages,
    weeklyFastingDays: weeklyFastingDays,
    weeklyZikrCount: weeklyZikrCount,
    prayerDays: prayerDays,
    currentPrayerStreak: _currentFullPrayerStreak(prayerDays),
    bestPrayerStreak: _bestFullPrayerStreak(prayerDays),
  );
}

int _completedPrayerCountForDate(SharedPreferences prefs, DateTime date) {
  final raw = prefs.getString(_prayersKey(date));
  if (raw == null || raw.trim().isEmpty) {
    return 0;
  }

  try {
    final decoded = jsonDecode(raw);
    if (decoded is! Map<String, dynamic>) {
      return 0;
    }

    return decoded.entries
        .where(
          (entry) =>
              _trackedPrayerNames.contains(entry.key) && entry.value == true,
        )
        .length;
  } catch (_) {
    return 0;
  }
}

int _currentFullPrayerStreak(List<DailyPrayerAnalytics> prayerDays) {
  var streak = 0;
  for (final day in prayerDays.reversed) {
    if (day.completed == _trackedPrayerNames.length) {
      streak++;
    } else {
      break;
    }
  }
  return streak;
}

int _bestFullPrayerStreak(List<DailyPrayerAnalytics> prayerDays) {
  var best = 0;
  var current = 0;
  for (final day in prayerDays) {
    if (day.completed == _trackedPrayerNames.length) {
      current++;
      if (current > best) {
        best = current;
      }
    } else {
      current = 0;
    }
  }
  return best;
}

int _nonNegativeInt(int? value) {
  if (value == null || value < 0) {
    return 0;
  }
  return value;
}

String _prayersKey(DateTime date) => 'prayers_${activityDateKey(date)}';

String _quranPagesKey(DateTime date) => 'quranPages_${activityDateKey(date)}';

String _fastingKey(DateTime date) => 'fasting_${activityDateKey(date)}';

String _zikrCountKey(DateTime date) => 'zikrCount_${activityDateKey(date)}';

class AnalyticsPage extends ConsumerWidget {
  const AnalyticsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final snapshot = buildAnalyticsSnapshot(
      ref.watch(sharedPreferencesProvider),
      DateTime.now(),
    );
    final numberFormat = NumberFormat.decimalPattern(l10n.localeName);
    String formatNumber(int value) => numberFormat.format(value);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.analytics)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Weekly overview
            AnimatedPremiumCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.weeklyProgress,
                    style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _statItem(
                        context,
                        formatNumber(snapshot.weeklyPrayers),
                        l10n.prayers,
                        AppColors.emerald,
                      ),
                      _statItem(
                        context,
                        formatNumber(snapshot.weeklyQuranPages),
                        l10n.page,
                        AppColors.gold,
                      ),
                      _statItem(
                        context,
                        formatNumber(snapshot.weeklyFastingDays),
                        l10n.fasting,
                        Colors.blue,
                      ),
                      _statItem(
                        context,
                        formatNumber(snapshot.weeklyZikrCount),
                        l10n.zikr,
                        Colors.purple,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Weekly prayer chart
            const SizedBox(height: 8),
            Text(
              l10n.prayerCompletion,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 12),
            PremiumCard(
              child: SizedBox(
                height: 180,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: snapshot.prayerDays
                      .map(
                        (day) => _barItem(
                          context,
                          _weekdayLabel(context, day.date),
                          day.completed,
                          _trackedPrayerNames.length,
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            // Streaks
            const SizedBox(height: 16),
            Text(
              l10n.streaks,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: AnimatedPremiumCard(
                    animationDelay: 100,
                    child: Column(
                      children: [
                        const Icon(
                          Icons.local_fire_department_rounded,
                          color: Colors.orange,
                          size: 32,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          formatNumber(snapshot.currentPrayerStreak),
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w900,
                            color: Colors.orange,
                          ),
                        ),
                        Text(
                          l10n.dayStreak,
                          style: TextStyle(
                            fontSize: 12,
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurface.withValues(alpha: 0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: AnimatedPremiumCard(
                    animationDelay: 200,
                    child: Column(
                      children: [
                        const Icon(
                          Icons.emoji_events_rounded,
                          color: AppColors.gold,
                          size: 32,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          formatNumber(snapshot.bestPrayerStreak),
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w900,
                            color: AppColors.gold,
                          ),
                        ),
                        Text(
                          l10n.bestStreak,
                          style: TextStyle(
                            fontSize: 12,
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurface.withValues(alpha: 0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _statItem(
    BuildContext context,
    String value,
    String label,
    Color color,
  ) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
            color: color,
          ),
        ),
        const SizedBox(height: 4),
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

  String _weekdayLabel(BuildContext context, DateTime date) {
    final localeName = Localizations.localeOf(context).toString();
    return DateFormat.E(localeName).format(date);
  }

  Widget _barItem(BuildContext context, String label, int count, int max) {
    final ratio = max > 0 ? count / max : 0.0;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          '$count',
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w900,
            color: Theme.of(
              context,
            ).colorScheme.onSurface.withValues(alpha: 0.5),
          ),
        ),
        const SizedBox(height: 4),
        Container(
          width: 28,
          height: 120 * ratio,
          decoration: BoxDecoration(
            gradient: AppColors.emeraldGradient,
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        const SizedBox(height: 4),
        if (120 * ratio < 120)
          Container(
            width: 28,
            height: 120 * (1 - ratio),
            decoration: BoxDecoration(
              color: AppColors.emeraldSurface,
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w800,
            color: Theme.of(
              context,
            ).colorScheme.onSurface.withValues(alpha: 0.4),
          ),
        ),
      ],
    );
  }
}
