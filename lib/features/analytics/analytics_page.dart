import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/widgets/premium_card.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

class AnalyticsPage extends ConsumerWidget {
  const AnalyticsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
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
                      _statItem(context, '23', l10n.prayers, AppColors.emerald),
                      _statItem(context, '45', l10n.page, AppColors.gold),
                      _statItem(context, '5', l10n.fasting, Colors.blue),
                      _statItem(context, '891', l10n.zikr, Colors.purple),
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
                  children: [
                    _barItem(context, _weekdayLabel(context, 0), 4, 5),
                    _barItem(context, _weekdayLabel(context, 1), 5, 5),
                    _barItem(context, _weekdayLabel(context, 2), 3, 5),
                    _barItem(context, _weekdayLabel(context, 3), 5, 5),
                    _barItem(context, _weekdayLabel(context, 4), 4, 5),
                    _barItem(context, _weekdayLabel(context, 5), 2, 5),
                    _barItem(context, _weekdayLabel(context, 6), 0, 5),
                  ],
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
                        const Text(
                          '7',
                          style: TextStyle(
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
                        const Text(
                          '14',
                          style: TextStyle(
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

  String _weekdayLabel(BuildContext context, int dayOffset) {
    final localeName = Localizations.localeOf(context).toString();
    final monday = DateTime.utc(2024, 1, 1);
    return DateFormat.E(
      localeName,
    ).format(monday.add(Duration(days: dayOffset)));
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
