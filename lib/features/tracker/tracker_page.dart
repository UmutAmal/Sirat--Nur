import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/widgets/premium_card.dart';

// Prayer tracking state
final prayerDoneProvider = StateProvider<Map<String, bool>>((ref) => {
  'Fajr': false, 'Dhuhr': false, 'Asr': false, 'Maghrib': false, 'Isha': false,
});
final quranPagesProvider = StateProvider<int>((ref) => 0);
final fastingProvider = StateProvider<bool>((ref) => false);

class TrackerPage extends ConsumerWidget {
  const TrackerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prayerDone = ref.watch(prayerDoneProvider);
    final quranPages = ref.watch(quranPagesProvider);
    final fasting = ref.watch(fastingProvider);
    final prayerCount = prayerDone.values.where((v) => v).length;

    return Scaffold(
      appBar: AppBar(title: const Text('Ibadah Tracker')),
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
                  _statCircle(context, '$prayerCount/5', 'Prayers', prayerCount / 5, AppColors.emerald),
                  _statCircle(context, '$quranPages', 'Pages', (quranPages / 20).clamp(0, 1), AppColors.gold),
                  _statCircle(context, fasting ? '✓' : '✗', 'Fasting', fasting ? 1.0 : 0.0, Colors.blue),
                ],
              ),
            ),
            // Prayer tracking
            const SizedBox(height: 8),
            Text('Prayer Tracker', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w900)),
            const SizedBox(height: 12),
            PremiumCard(
              child: Column(
                children: prayerDone.entries.map((entry) {
                  return InkWell(
                    onTap: () {
                      final map = Map<String, bool>.from(prayerDone);
                      map[entry.key] = !entry.value;
                      ref.read(prayerDoneProvider.notifier).state = map;
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Icon(
                            entry.value ? Icons.check_circle_rounded : Icons.radio_button_unchecked_rounded,
                            color: entry.value ? AppColors.emerald : Colors.grey, size: 24,
                          ),
                          const SizedBox(width: 16),
                          Text(entry.key, style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 16,
                            decoration: entry.value ? TextDecoration.lineThrough : null,
                            color: entry.value ? Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.4) : null,
                          )),
                          const Spacer(),
                          if (entry.value)
                            const Text('Done', style: TextStyle(color: AppColors.emerald, fontWeight: FontWeight.w700, fontSize: 12)),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            // Quran reading
            const SizedBox(height: 8),
            Text('Quran Reading', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w900)),
            const SizedBox(height: 12),
            PremiumCard(
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.remove_circle_outline_rounded),
                    onPressed: quranPages > 0
                      ? () => ref.read(quranPagesProvider.notifier).state--
                      : null,
                  ),
                  Expanded(child: Column(
                    children: [
                      Text('$quranPages', style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w900, color: AppColors.emerald)),
                      const Text('pages today', style: TextStyle(fontSize: 13, color: Colors.grey)),
                    ],
                  )),
                  IconButton(
                    icon: const Icon(Icons.add_circle_outline_rounded, color: AppColors.emerald),
                    onPressed: () => ref.read(quranPagesProvider.notifier).state++,
                  ),
                ],
              ),
            ),
            // Fasting
            const SizedBox(height: 8),
            Text('Fasting', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w900)),
            const SizedBox(height: 12),
            PremiumCard(
              onTap: () => ref.read(fastingProvider.notifier).state = !fasting,
              child: Row(
                children: [
                  Icon(
                    fasting ? Icons.check_circle_rounded : Icons.radio_button_unchecked_rounded,
                    color: fasting ? AppColors.emerald : Colors.grey, size: 28,
                  ),
                  const SizedBox(width: 16),
                  Expanded(child: Text(
                    fasting ? 'Fasting today ✓' : 'Not fasting today',
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16,
                      color: fasting ? AppColors.emerald : null),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _statCircle(BuildContext context, String value, String label, double progress, Color color) {
    return Column(
      children: [
        SizedBox(
          width: 68, height: 68,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircularProgressIndicator(
                value: progress,
                strokeWidth: 5,
                backgroundColor: color.withValues(alpha: 0.15),
                valueColor: AlwaysStoppedAnimation<Color>(color),
              ),
              Text(value, style: TextStyle(fontWeight: FontWeight.w900, color: color, fontSize: 16)),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700,
          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5))),
      ],
    );
  }
}
