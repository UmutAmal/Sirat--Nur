import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/presentation/widgets/premium_card.dart';
import 'package:sirat_i_nur/presentation/blocs/tracker_provider.dart';
import 'package:sirat_i_nur/core/utils/prayer_name_localization.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';
import 'package:sirat_i_nur/core/utils/l10n_utils.dart';

class TrackerPage extends ConsumerWidget {
  const TrackerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(l10n.ibadahTracker),
          bottom: TabBar(
            tabs: [
              Tab(text: l10n.dailyChecklist, icon: const Icon(Icons.today_outlined)),
              Tab(text: l10n.qazaDebt, icon: const Icon(Icons.history_outlined)),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh),
              tooltip: l10n.resetQazaData,
              onPressed: () => _showResetDialog(context, ref),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            _DailyChecklistSubPage(),
            _QazaSubPage(),
          ],
        ),
      ),
    );
  }

  void _showResetDialog(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.resetQazaDebtQuestion),
        content: Text(
          trEnGlobal(context, 
            tr: 'Tüm namaz ve oruç borçları silinecek. Emin misiniz?',
            en: 'This will clear all your prayer and fasting debts. Are you sure?'),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: Text(l10n.cancel)),
          TextButton(
            onPressed: () {
              ref.read(qazaStateProvider.notifier).resetAll();
              Navigator.pop(ctx);
            }, 
            child: Text(
              l10n.reset,
              style: const TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}

String _localizeTrackerItem(BuildContext context, String key) {
  final l10n = AppLocalizations.of(context)!;
  final locale = Localizations.localeOf(context);
  switch (key) {
    case 'Fajr':
    case 'Sunrise':
    case 'Dhuhr':
    case 'Asr':
    case 'Maghrib':
    case 'Isha':
      return localizePrayerName(key, locale);
    case 'Fasting':
      return l10n.fasting;
    case 'Rawatib':
      return l10n.rawatib;
    case 'Tahajjud':
      return l10n.tahajjud;
    case 'Dhikr':
      return l10n.zikr;
    default:
      return key;
  }
}

String _localizeUnit(BuildContext context, String unit) {
  final l10n = AppLocalizations.of(context)!;
  switch (unit) {
    case 'Prayers':
      return l10n.prayers;
    case 'Days':
      return l10n.days;
    default:
      return unit;
  }
}

class _DailyChecklistSubPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final dailyData = ref.watch(dailyIbadahProvider);
    final completedCount = dailyData.values.where((v) => v).length;
    final totalCount = dailyData.length;
    final progress = totalCount > 0 ? completedCount / totalCount : 0.0;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          PremiumCard(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Text(
                  l10n.dailyProgress,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                LinearProgressIndicator(
                  value: progress,
                  minHeight: 12,
                  borderRadius: BorderRadius.circular(6),
                ),
                const SizedBox(height: 8),
                Text(
                  trEnGlobal(context,
                    tr: '$completedCount / $totalCount Tamamlandı',
                    en: '$completedCount / $totalCount Completed'),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Text(
            l10n.mandatoryPrayers,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(height: 8),
          ...['Fajr', 'Dhuhr', 'Asr', 'Maghrib', 'Isha'].map((prayer) => _buildCheckItem(context, ref, prayer, dailyData[prayer] ?? false)),
          const SizedBox(height: 24),
          Text(
            l10n.sunnahAndOthers,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(height: 8),
          ...['Rawatib', 'Tahajjud', 'Dhikr'].map((item) => _buildCheckItem(context, ref, item, dailyData[item] ?? false, isSunnah: true)),
        ],
      ),
    );
  }

  Widget _buildCheckItem(BuildContext context, WidgetRef ref, String title, bool isDone, {bool isSunnah = false}) {
    final l10n = AppLocalizations.of(context)!;
    final displayTitle = _localizeTrackerItem(context, title);
    return Card(
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 4),
      color: isDone ? Theme.of(context).colorScheme.primaryContainer.withValues(alpha: 0.3) : Theme.of(context).colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: isDone ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.outlineVariant),
      ),
      child: CheckboxListTile(
        title: Text(
          displayTitle,
          style: TextStyle(fontWeight: FontWeight.bold, color: isDone ? Theme.of(context).colorScheme.primary : null),
        ),
        subtitle: Text(
          isSunnah
              ? l10n.spiritualGrowth
              : l10n.mandatoryDuty,
        ),
        value: isDone,
        onChanged: (_) => ref.read(dailyIbadahProvider.notifier).toggle(title),
        secondary: Icon(isSunnah ? Icons.star_border : Icons.priority_high, color: isDone ? Theme.of(context).colorScheme.primary : null),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}

class _QazaSubPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final qazaData = ref.watch(qazaStateProvider);
    final totalPrayerDebt = qazaData.entries
        .where((e) => e.key != 'Fasting')
        .fold(0, (sum, e) => sum + e.value);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
            PremiumCard(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Text(l10n.totalPrayers.toUpperCase(), style: const TextStyle(color: Colors.white70, fontSize: 12, letterSpacing: 2)),
                  const SizedBox(height: 8),
                  Text('$totalPrayerDebt', style: const TextStyle(color: Color(0xFFFFD700), fontSize: 40, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 16),
                  LinearProgressIndicator(
                    value: totalPrayerDebt > 0 ? 0.3 : 1.0, 
                    backgroundColor: Colors.white12, 
                    color: const Color(0xFFFFD700)
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              l10n.prayerDebt,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ...['Fajr', 'Dhuhr', 'Asr', 'Maghrib', 'Isha'].map((prayer) => _buildTrackerCard(context, ref, prayer, qazaData[prayer]!, 'Prayers')),
            const SizedBox(height: 24),
            Text(
              l10n.fastingDebt,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            _buildTrackerCard(context, ref, 'Fasting', qazaData['Fasting']!, 'Days', icon: Icons.wb_sunny),
        ],
      ),
    );
  }


  Widget _buildTrackerCard(BuildContext context, WidgetRef ref, String title, int count, String unit, {IconData icon = Icons.access_time}) {
    final displayTitle = _localizeTrackerItem(context, title);
    final displayUnit = _localizeUnit(context, unit);
    return PremiumCard(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1), borderRadius: BorderRadius.circular(12)),
            child: Icon(icon, color: Theme.of(context).colorScheme.primary, size: 24),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(displayTitle, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Text(
                  trEnGlobal(context,
                    tr: '$count $displayUnit kaldı',
                    en: '$count $displayUnit Remaining'),
                  style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontSize: 12),
                ),
              ],
            ),
          ),
          Row(
              children: [
                IconButton(icon: const Icon(Icons.remove_circle_outline), color: Colors.green, onPressed: count > 0 ? () => ref.read(qazaStateProvider.notifier).decrement(title) : null),
                IconButton(icon: const Icon(Icons.add_circle_outline), color: Colors.red, onPressed: () => ref.read(qazaStateProvider.notifier).increment(title)),
              ],
          )
        ],
      ),
    );
  }
}
