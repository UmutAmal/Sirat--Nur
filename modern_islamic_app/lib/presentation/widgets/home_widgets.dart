import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:go_router/go_router.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';
import 'package:sirat_i_nur/core/utils/l10n_utils.dart';
import 'package:sirat_i_nur/presentation/widgets/premium_card.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:sirat_i_nur/core/services/intelligence_manager.dart';
import 'package:sirat_i_nur/domain/entities/prayer_times_entity.dart';
import 'package:sirat_i_nur/presentation/blocs/tracker_provider.dart';
import 'package:sirat_i_nur/core/widgets/islamic_decorations.dart';

class NextPrayerBanner extends StatelessWidget {
  final PrayerTimesEntity prayerTimes;
  final String nextPrayerLabel;
  final DateFormat timeFormat;

  const NextPrayerBanner({
    super.key,
    required this.prayerTimes,
    required this.nextPrayerLabel,
    required this.timeFormat,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Container(
      margin: const EdgeInsets.only(bottom: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.primary,
            const Color(0xFF2E7D32), // Complementary darker emerald
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
            blurRadius: 25,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Stack(
              children: [
                Positioned(
                  top: -20,
                  right: -20,
                  child: IslamicPatternDecoration(
                    size: 100,
                    color: Colors.white,
                    opacity: 0.1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 24.0),
                  child: Column(
                    children: [
                      Text(
                        l10n.nextPrayer,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.white.withValues(alpha: 0.8),
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        nextPrayerLabel,
                        style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                          letterSpacing: 3.0,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.15),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          timeFormat.format(prayerTimes.nextPrayerTime),
                          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}

class QuickAccessSection extends StatelessWidget {
  const QuickAccessSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isTr = Localizations.localeOf(context).languageCode == 'tr';
    
    final List<_QuickAccessItem> items = [
      _QuickAccessItem(icon: Icons.live_tv_rounded, label: isTr ? 'Canlı TV' : 'Live TV', color: Colors.red, route: '/livetv'),
      _QuickAccessItem(icon: Icons.map_rounded, label: isTr ? 'Cami Bul' : 'Find Mosque', color: Colors.teal, route: '/places'),
      _QuickAccessItem(icon: Icons.star_rounded, label: isTr ? 'Esmaül Hüsna' : 'Names', color: Colors.amber, route: '/asma'),
      _QuickAccessItem(icon: Icons.library_books_rounded, label: isTr ? 'Kütüphane' : 'Library', color: Colors.blue, route: '/library'),
      _QuickAccessItem(icon: Icons.download_rounded, label: isTr ? 'İndirmeler' : 'Downloads', color: Colors.orange, route: '/downloads'),
      _QuickAccessItem(icon: Icons.track_changes_rounded, label: isTr ? 'İbadet Takibi' : 'Ibadet Tracker', color: Colors.indigo, route: '/tracker'),
      _QuickAccessItem(icon: Icons.settings_rounded, label: isTr ? 'Ayarlar' : 'Settings', color: Colors.grey, route: '/settings'),
      _QuickAccessItem(icon: Icons.info_rounded, label: isTr ? 'Hakkında' : 'About', color: Colors.cyan, route: '/settings/diagnostics'),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        SizedBox(
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 16,
              crossAxisSpacing: 12,
              mainAxisExtent: 100,
            ),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return GestureDetector(
                onTap: () => context.push(item.route),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: item.color.withValues(alpha: 0.08),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: item.color.withValues(alpha: 0.05),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Icon(item.icon, color: item.color, size: 26),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      item.label,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _QuickAccessItem {
  final IconData icon;
  final String label;
  final Color color;
  final String route;

  _QuickAccessItem({required this.icon, required this.label, required this.color, required this.route});
}

class HijriCalendarWidget extends StatelessWidget {
  const HijriCalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isTr = Localizations.localeOf(context).languageCode == 'tr';
    final hijri = HijriCalendar.now();
    final hijriDate = '${hijri.hDay} ${hijri.getLongMonthName()} ${hijri.hYear}';
    final hijriEvent = isTr ? 'Ramazan' : 'Ramadan';

    return PremiumCard(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              Icons.calendar_today_rounded,
              color: Theme.of(context).colorScheme.primary,
              size: 24,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  isTr ? 'Hicri Takvim' : 'Hijri Calendar',
                  style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
                  ),
                ),
                Text(
                  hijriDate,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w800,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              hijriEvent,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TodayIbadetWidget extends ConsumerWidget {
  final PrayerTimesEntity prayerTimes;
  final DateFormat timeFormat;

  const TodayIbadetWidget({
    super.key,
    required this.prayerTimes,
    required this.timeFormat,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final dailyIbadah = ref.watch(dailyIbadahProvider);

    return PremiumCard(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.check_circle_outline_rounded, color: Theme.of(context).colorScheme.primary),
              const SizedBox(width: 8),
              Text(
                trEnGlobal(context, tr: 'Bugünkü Namazlar', en: "Today's Prayers"),
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 16),
          _PrayerStatusItem(
            name: l10n.fajr, 
            time: timeFormat.format(prayerTimes.fajr), 
            isDone: dailyIbadah['Fajr'] ?? false,
            onToggle: () => ref.read(dailyIbadahProvider.notifier).toggle('Fajr'),
          ),
          _PrayerStatusItem(
            name: l10n.dhuhr, 
            time: timeFormat.format(prayerTimes.dhuhr), 
            isDone: dailyIbadah['Dhuhr'] ?? false,
            onToggle: () => ref.read(dailyIbadahProvider.notifier).toggle('Dhuhr'),
          ),
          _PrayerStatusItem(
            name: l10n.asr, 
            time: timeFormat.format(prayerTimes.asr), 
            isDone: dailyIbadah['Asr'] ?? false,
            onToggle: () => ref.read(dailyIbadahProvider.notifier).toggle('Asr'),
          ),
          _PrayerStatusItem(
            name: l10n.maghrib, 
            time: timeFormat.format(prayerTimes.maghrib), 
            isDone: dailyIbadah['Maghrib'] ?? false,
            onToggle: () => ref.read(dailyIbadahProvider.notifier).toggle('Maghrib'),
          ),
          _PrayerStatusItem(
            name: l10n.isha, 
            time: timeFormat.format(prayerTimes.isha), 
            isDone: dailyIbadah['Isha'] ?? false,
            onToggle: () => ref.read(dailyIbadahProvider.notifier).toggle('Isha'),
          ),
        ],
      ),
    );
  }
}

class _PrayerStatusItem extends StatelessWidget {
  final String name;
  final String time;
  final bool isDone;
  final VoidCallback onToggle;

  const _PrayerStatusItem({
    required this.name, 
    required this.time, 
    required this.isDone,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onToggle,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
        child: Row(
          children: [
            Icon(
              isDone ? Icons.check_circle_rounded : Icons.circle_outlined,
              color: isDone ? Theme.of(context).colorScheme.primary : Colors.grey.withValues(alpha: 0.5),
              size: 22,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(name, style: const TextStyle(fontSize: 15)),
            ),
            Text(
              time,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DailyZikrWidget extends StatelessWidget {
  const DailyZikrWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isTr = Localizations.localeOf(context).languageCode == 'tr';
    final zikrList = [
      {'text': 'Subhanallah', 'count': '33', 'meaning': 'Glory be to Allah'},
      {'text': 'Alhamdullilah', 'count': '33', 'meaning': 'Praise be to Allah'},
      {'text': 'Allahu Akbar', 'count': '33', 'meaning': 'Allah is the Greatest'},
    ];

    return PremiumCard(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.auto_awesome_rounded, color: Theme.of(context).colorScheme.secondary),
              const SizedBox(width: 8),
              Text(
                isTr ? 'Günün Zikri' : 'Daily Zikr',
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ...zikrList.map((zikr) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          zikr['text']!,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          zikr['meaning']!,
                          style: TextStyle(
                            fontSize: 12,
                            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      zikr['count']!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}

class AInudgeWidget extends ConsumerStatefulWidget {
  const AInudgeWidget({super.key});

  @override
  ConsumerState<AInudgeWidget> createState() => _AInudgeWidgetState();
}

class _AInudgeWidgetState extends ConsumerState<AInudgeWidget> {
  late final Future<String> _nudgeFuture;

  @override
  void initState() {
    super.initState();
    final intel = ref.read(intelligenceProvider);
    _nudgeFuture =
        intel.getResponse('Give me a short, inspiring Islamic nudge for today.');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: _nudgeFuture,
      builder: (context, snapshot) {
        final text =
            snapshot.data ?? 'Your spiritual assistant is preparing a nudge...';
        return PremiumCard(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              const Icon(Icons.auto_awesome, color: Color(0xFFFFD700)),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 13, fontStyle: FontStyle.italic),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
