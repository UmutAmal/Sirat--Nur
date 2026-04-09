import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/widgets/premium_card.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

final _zikrCountProvider = StateProvider<int>((ref) => 0);
final _zikrTargetProvider = StateProvider<int>((ref) => 33);
final _selectedZikrProvider = StateProvider<int>((ref) => 0);

String resolveZikrCompletedText(AppLocalizations l10n) {
  return l10n.zikrCompletedMashAllah;
}

class ZikrPage extends ConsumerWidget {
  const ZikrPage({super.key});

  static const _zikrs = [
    _ZikrItem('سُبْحَانَ ٱللَّهِ', 'SubhanAllah', 'Glory be to Allah', 33),
    _ZikrItem('ٱلْحَمْدُ لِلَّهِ', 'Alhamdulillah', 'Praise be to Allah', 33),
    _ZikrItem('ٱللَّهُ أَكْبَرُ', 'Allahu Akbar', 'Allah is Greatest', 33),
    _ZikrItem('لَا إِلَٰهَ إِلَّا ٱللَّهُ', 'La ilaha illallah', 'There is no god but Allah', 100),
    _ZikrItem('أَسْتَغْفِرُ ٱللَّهَ', 'Astaghfirullah', 'I seek forgiveness from Allah', 100),
    _ZikrItem('لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِٱللَّهِ', 'La hawla wa la quwwata illa billah', 'No power except by Allah', 33),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(_zikrCountProvider);
    final target = ref.watch(_zikrTargetProvider);
    final selectedIdx = ref.watch(_selectedZikrProvider);
    final zikr = _zikrs[selectedIdx];
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final progress = target > 0 ? (count / target).clamp(0.0, 1.0) : 0.0;
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.zikr),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () => ref.read(_zikrCountProvider.notifier).state = 0,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Zikr selector chips
            SizedBox(
              height: 44,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _zikrs.length,
                itemBuilder: (context, i) {
                  final isSelected = i == selectedIdx;
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ChoiceChip(
                      label: Text(_zikrs[i].transliteration,
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: isSelected ? Colors.white : null,
                          fontSize: 12,
                        )),
                      selected: isSelected,
                      selectedColor: AppColors.emerald,
                      onSelected: (_) {
                        ref.read(_selectedZikrProvider.notifier).state = i;
                        ref.read(_zikrCountProvider.notifier).state = 0;
                        ref.read(_zikrTargetProvider.notifier).state = _zikrs[i].defaultTarget;
                      },
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 32),
            // Arabic text
            Text(zikr.arabic,
              style: const TextStyle(fontSize: 36, fontWeight: FontWeight.w900, height: 1.8),
              textAlign: TextAlign.center),
            const SizedBox(height: 8),
            Text(zikr.transliteration,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700,
                color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5))),
            const SizedBox(height: 4),
            Text(zikr.meaning,
              style: TextStyle(fontSize: 13, color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.4))),
            const SizedBox(height: 40),
            // Counter circle
            GestureDetector(
              onTap: () {
                if (count < target) {
                  ref.read(_zikrCountProvider.notifier).state++;
                  HapticFeedback.lightImpact();
                } else {
                  HapticFeedback.heavyImpact();
                }
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 200, height: 200,
                    child: CircularProgressIndicator(
                      value: progress,
                      strokeWidth: 8,
                      backgroundColor: (isDark ? Colors.white : Colors.black).withValues(alpha: 0.08),
                      valueColor: AlwaysStoppedAnimation<Color>(
                        count >= target ? AppColors.gold : AppColors.emerald,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('$count',
                        style: TextStyle(
                          fontSize: 56, fontWeight: FontWeight.w900,
                          color: count >= target ? AppColors.gold : AppColors.emerald,
                        )),
                      Text('/ $target',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700,
                          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.4))),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            if (count >= target)
              AnimatedPremiumCard(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.celebration_rounded, color: AppColors.gold),
                    const SizedBox(width: 8),
                    Text(
                      resolveZikrCompletedText(l10n),
                      style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        color: AppColors.gold,
                      ),
                    ),
                  ],
                ),
              ),
            const SizedBox(height: 24),
            Text(l10n.tapToCount, style: TextStyle(
              fontSize: 13, color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.4))),
          ],
        ),
      ),
    );
  }
}

class _ZikrItem {
  final String arabic;
  final String transliteration;
  final String meaning;
  final int defaultTarget;
  const _ZikrItem(this.arabic, this.transliteration, this.meaning, this.defaultTarget);
}
