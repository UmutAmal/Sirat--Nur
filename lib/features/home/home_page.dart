import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/widgets/premium_card.dart';
import 'package:sirat_i_nur/core/services/prayer_times_service.dart';
import 'package:sirat_i_nur/features/tracker/tracker_page.dart';
import 'package:sirat_i_nur/core/constants/daily_ayat_data.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prayerTimes = ref.watch(prayerTimesProvider);
    final prayerDone = ref.watch(prayerDoneProvider);
    final dailyAyat = getDailyAyat();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sirat-i Nur'),
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
            _buildPrayerBanner(context, prayerTimes),
            const SizedBox(height: 20),
            // Prayer times row
            if (prayerTimes != null) _buildPrayerTimesRow(context, prayerTimes),
            if (prayerTimes != null) const SizedBox(height: 20),
            // Quick Access
            Text('Quick Access',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w900)),
            const SizedBox(height: 16),
            _buildQuickAccess(context),
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
                      const Text('Daily Verse', style: TextStyle(fontWeight: FontWeight.w900, color: AppColors.emerald)),
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
                    dailyAyat.english,
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
                      const Text("Today's Ibadah", style: TextStyle(fontWeight: FontWeight.w900, color: AppColors.emerald)),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _buildIbadahRow('Fajr', prayerDone['Fajr'] ?? false),
                  _buildIbadahRow('Dhuhr', prayerDone['Dhuhr'] ?? false),
                  _buildIbadahRow('Asr', prayerDone['Asr'] ?? false),
                  _buildIbadahRow('Maghrib', prayerDone['Maghrib'] ?? false),
                  _buildIbadahRow('Isha', prayerDone['Isha'] ?? false),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPrayerBanner(BuildContext context, PrayerTimesData? pt) {
    final nextPrayer = pt?.nextPrayer ?? 'Dhuhr';
    final nextTime = pt?.nextPrayerTime ?? '--:--';
    final remaining = pt?.timeRemaining;
    final remainStr = remaining != null
        ? '${remaining.inHours}h ${remaining.inMinutes.remainder(60)}m remaining'
        : 'Set location for prayer times';

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
          const Text('Next Prayer',
            style: TextStyle(color: Colors.white70, fontSize: 14, fontWeight: FontWeight.w700)),
          const SizedBox(height: 8),
          Text(nextPrayer,
            style: const TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.w900, letterSpacing: -0.5)),
          const SizedBox(height: 4),
          Text('$nextTime • $remainStr',
            style: TextStyle(color: Colors.white.withValues(alpha: 0.8), fontSize: 14, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }

  Widget _buildPrayerTimesRow(BuildContext context, PrayerTimesData pt) {
    return PremiumCard(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _prayerTimeItem(context, 'Fajr', pt.fajr, pt.nextPrayer == 'Fajr'),
          _prayerTimeItem(context, 'Dhuhr', pt.dhuhr, pt.nextPrayer == 'Dhuhr'),
          _prayerTimeItem(context, 'Asr', pt.asr, pt.nextPrayer == 'Asr'),
          _prayerTimeItem(context, 'Maghrib', pt.maghrib, pt.nextPrayer == 'Maghrib'),
          _prayerTimeItem(context, 'Isha', pt.isha, pt.nextPrayer == 'Isha'),
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

  Widget _buildQuickAccess(BuildContext context) {
    final items = [
      _QuickItem(Icons.psychology_rounded, 'Assistant', '/chatbot'),
      _QuickItem(Icons.mosque_rounded, 'Places', '/places'),
      _QuickItem(Icons.library_books_rounded, 'Library', '/library'),
      _QuickItem(Icons.live_tv_rounded, 'Live TV', '/livetv'),
      _QuickItem(Icons.trending_up_rounded, 'Tracker', '/tracker'),
      _QuickItem(Icons.cloud_download_rounded, 'Downloads', '/downloads'),
      _QuickItem(Icons.analytics_rounded, 'Analytics', '/analytics'),
      _QuickItem(Icons.star_rounded, 'Premium', '/paywall'),
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
