import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/widgets/premium_card.dart';
import 'package:sirat_i_nur/core/services/prayer_times_service.dart';
import 'package:sirat_i_nur/features/tracker/tracker_page.dart';
import 'package:sirat_i_nur/core/constants/daily_ayat_data.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final isTurkish = Localizations.localeOf(context).languageCode == 'tr';
    final prayerTimes = ref.watch(prayerTimesProvider);
    final prayerDone = ref.watch(prayerDoneProvider);
    final dailyAyat = getDailyAyat();

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.appTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_rounded),
            onPressed: () => context.push('/settings'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Prayer Banner
            _buildPrayerBanner(context, prayerTimes, l10n),
            const SizedBox(height: 20),
            // Prayer times row
            if (prayerTimes != null) _buildPrayerTimesRow(context, prayerTimes, l10n),
            if (prayerTimes != null) const SizedBox(height: 20),
            // Quick Access
            Text(l10n.quickAccess,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w900)),
            const SizedBox(height: 16),
            _buildQuickAccess(context, l10n),
            const SizedBox(height: 24),
            // Daily Verse
            AnimatedPremiumCard(
              animationDelay: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.auto_stories_rounded, color: AppColors.emerald, size: 20),
                      const SizedBox(width: 8),
                      Text(l10n.dailyVerse, style: const TextStyle(fontWeight: FontWeight.w900, color: AppColors.emerald)),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    dailyAyat.arabic,
                    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w900, height: 2.0, fontFamily: 'Amiri'),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    isTurkish ? dailyAyat.turkish : dailyAyat.english,
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, height: 1.6),
                  ),
                  const SizedBox(height: 8),
                  Text('${dailyAyat.surahName} ${dailyAyat.reference}',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700,
                      color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5))),
                ],
              ),
            ),
            const SizedBox(height: 8),
            // Today's Ibadah
            AnimatedPremiumCard(
              animationDelay: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.check_circle_outline_rounded, color: AppColors.emerald, size: 20),
                      const SizedBox(width: 8),
                      Text(l10n.todaysIbadah, style: const TextStyle(fontWeight: FontWeight.w900, color: AppColors.emerald)),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _buildIbadahRow(l10n.fajr, prayerDone['Fajr'] ?? false),
                  _buildIbadahRow(l10n.dhuhr, prayerDone['Dhuhr'] ?? false),
                  _buildIbadahRow(l10n.asr, prayerDone['Asr'] ?? false),
                  _buildIbadahRow(l10n.maghrib, prayerDone['Maghrib'] ?? false),
                  _buildIbadahRow(l10n.isha, prayerDone['Isha'] ?? false),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getLocalizedPrayerName(String nextPrayer, AppLocalizations l10n) {
    switch (nextPrayer) {
      case 'Fajr': return l10n.fajr;
      case 'Sunrise': return l10n.sunrise;
      case 'Dhuhr': return l10n.dhuhr;
      case 'Asr': return l10n.asr;
      case 'Maghrib': return l10n.maghrib;
      case 'Isha': return l10n.isha;
      default: return nextPrayer;
    }
  }

  Widget _buildPrayerBanner(BuildContext context, PrayerTimesData? pt, AppLocalizations l10n) {
    final nextPrayer = pt?.nextPrayer ?? 'Dhuhr';
    final localizedNextPrayer = _getLocalizedPrayerName(nextPrayer, l10n);
    final nextTime = pt?.nextPrayerTime ?? '--:--';
    final remaining = pt?.timeRemaining;
    
    // Quick fallback duration format instead of using intl/localized strings for hours/minutes yet
    final remainStr = remaining != null
        ? '${remaining.inHours}h ${remaining.inMinutes.remainder(60)}m'
        : '--';

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: AppColors.emeraldGradient,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: AppColors.emeraldDeep.withValues(alpha: 0.3),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(l10n.nextPrayer,
            style: const TextStyle(color: Colors.white70, fontSize: 14, fontWeight: FontWeight.w700)),
          const SizedBox(height: 8),
          Text(localizedNextPrayer,
            style: const TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.w900, letterSpacing: -0.5)),
          const SizedBox(height: 4),
          Text('$nextTime • $remainStr',
            style: TextStyle(color: Colors.white.withValues(alpha: 0.8), fontSize: 14, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }

  Widget _buildPrayerTimesRow(BuildContext context, PrayerTimesData pt, AppLocalizations l10n) {
    return PremiumCard(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _prayerTimeItem(context, l10n.fajr, pt.fajr, pt.nextPrayer == 'Fajr'),
          _prayerTimeItem(context, l10n.dhuhr, pt.dhuhr, pt.nextPrayer == 'Dhuhr'),
          _prayerTimeItem(context, l10n.asr, pt.asr, pt.nextPrayer == 'Asr'),
          _prayerTimeItem(context, l10n.maghrib, pt.maghrib, pt.nextPrayer == 'Maghrib'),
          _prayerTimeItem(context, l10n.isha, pt.isha, pt.nextPrayer == 'Isha'),
        ],
      ),
    );
  }

  Widget _prayerTimeItem(BuildContext context, String name, String time, bool isNext) {
    return Column(
      children: [
        Text(name, style: TextStyle(
          fontSize: 11, fontWeight: FontWeight.w800,
          color: isNext ? AppColors.emerald : Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5))),
        const SizedBox(height: 4),
        Text(time, style: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w900,
          color: isNext ? AppColors.emerald : null)),
        if (isNext) Container(
          margin: const EdgeInsets.only(top: 4),
          width: 6, height: 6,
          decoration: const BoxDecoration(color: AppColors.emerald, shape: BoxShape.circle),
        ),
      ],
    );
  }

  Widget _buildQuickAccess(BuildContext context, AppLocalizations l10n) {
    final items = [
      _QuickItem(Icons.psychology_rounded, l10n.assistant, '/chatbot'),
      _QuickItem(Icons.mosque_rounded, l10n.places, '/places'),
      _QuickItem(Icons.library_books_rounded, l10n.library, '/library'),
      _QuickItem(Icons.live_tv_rounded, l10n.liveTv, '/livetv'),
      _QuickItem(Icons.trending_up_rounded, l10n.ibadahTracker, '/tracker'),
      _QuickItem(Icons.cloud_download_rounded, l10n.downloads, '/downloads'),
      _QuickItem(Icons.analytics_rounded, l10n.analytics, '/analytics'),
      _QuickItem(Icons.star_rounded, l10n.premium, '/paywall'),
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 0.85,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return GestureDetector(
          onTap: () => context.push(item.route),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: AppColors.emeraldSurface,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Icon(item.icon, color: AppColors.emerald, size: 24),
              ),
              const SizedBox(height: 6),
              Text(item.label,
                style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w700),
                textAlign: TextAlign.center, overflow: TextOverflow.ellipsis),
            ],
          ),
        );
      },
    );
  }

  Widget _buildIbadahRow(String name, bool done) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Icon(
            done ? Icons.check_circle_rounded : Icons.radio_button_unchecked_rounded,
            color: done ? AppColors.emerald : Colors.grey,
            size: 20,
          ),
          const SizedBox(width: 12),
          Text(name, style: TextStyle(
            fontWeight: FontWeight.w700,
            decoration: done ? TextDecoration.lineThrough : null,
          )),
        ],
      ),
    );
  }
}

class _QuickItem {
  final IconData icon;
  final String label;
  final String route;
  const _QuickItem(this.icon, this.label, this.route);
}
