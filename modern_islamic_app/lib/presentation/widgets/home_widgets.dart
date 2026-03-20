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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.primary,
            const Color(0xFF0D3B11), // Deeper forest green
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.35),
            blurRadius: 30,
            offset: const Offset(0, 15),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32),
        child: Stack(
          children: [
            Positioned(
              top: -30,
              right: -30,
              child: Opacity(
                opacity: 0.08,
                child: IslamicPatternDecoration(
                  size: 180,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: -40,
              left: -40,
              child: Opacity(
                opacity: 0.05,
                child: IslamicPatternDecoration(
                  size: 150,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      l10n.nextPrayer.toUpperCase(),
                      style: const TextStyle(
                        color: Colors.white70,
                        letterSpacing: 2.0,
                        fontSize: 11,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    nextPrayerLabel,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      letterSpacing: 4.0,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    timeFormat.format(prayerTimes.nextPrayerTime),
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.9),
                      fontSize: 48,
                      fontWeight: FontWeight.w200, // Elegant thin look
                      letterSpacing: -1,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    height: 4,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.5),
                      borderRadius: BorderRadius.circular(2),
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
}

class QuickAccessSection extends StatelessWidget {
  const QuickAccessSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isTr = Localizations.localeOf(context).languageCode == 'tr';
    
    final List<_QuickAccessItem> items = [
      _QuickAccessItem(icon: Icons.live_tv_rounded, label: isTr ? 'Canlı TV' : 'Live TV', color: const Color(0xFFE57373), route: '/livetv'),
      _QuickAccessItem(icon: Icons.map_rounded, label: isTr ? 'Cami Bul' : 'Mosque', color: const Color(0xFF4DB6AC), route: '/places'),
      _QuickAccessItem(icon: Icons.star_rounded, label: isTr ? 'Ezmâ' : 'Names', color: const Color(0xFFFFB74D), route: '/asma'),
      _QuickAccessItem(icon: Icons.library_books_rounded, label: isTr ? 'Kütüphane' : 'Library', color: const Color(0xFF64B5F6), route: '/library'),
      _QuickAccessItem(icon: Icons.download_rounded, label: isTr ? 'İndir' : 'Downloads', color: const Color(0xFFFF8A65), route: '/downloads'),
      _QuickAccessItem(icon: Icons.track_changes_rounded, label: isTr ? 'Takip' : 'Tracker', color: const Color(0xFF7986CB), route: '/tracker'),
      _QuickAccessItem(icon: Icons.chat_bubble_rounded, label: isTr ? 'Chat' : 'Assistant', color: const Color(0xFF4FC3F7), route: '/chatbot'),
      _QuickAccessItem(icon: Icons.settings_rounded, label: isTr ? 'Ayarlar' : 'Settings', color: const Color(0xFF90A4AE), route: '/settings'),
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 20,
        crossAxisSpacing: 16,
        mainAxisExtent: 95,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return InkWell(
          onTap: () => context.push(item.route),
          borderRadius: BorderRadius.circular(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: item.color.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: item.color.withValues(alpha: 0.1), width: 1.5),
                ),
                child: Icon(item.icon, color: item.color, size: 24),
              ),
              const SizedBox(height: 8),
              Text(
                item.label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.8),
                ),
              ),
            ],
          ),
        );
      },
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
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    trEnGlobal(context, tr: 'Namaz Takibi', en: "Prayer Tracker"),
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w900,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    trEnGlobal(context, tr: 'Bugünkü namazlarınızı işaretleyin', en: "Mark your prayers for today"),
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
                    ),
                  ),
                ],
              ),
              Icon(Icons.check_circle_outline_rounded, color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.2), size: 32),
            ],
          ),
          const SizedBox(height: 24),
          _PrayerStatusItem(
            name: l10n.fajr, 
            time: timeFormat.format(prayerTimes.fajr), 
            isDone: dailyIbadah['Fajr'] ?? false,
            onToggle: () => ref.read(dailyIbadahProvider.notifier).toggle('Fajr'),
          ),
          const SizedBox(height: 8),
          _PrayerStatusItem(
            name: l10n.dhuhr, 
            time: timeFormat.format(prayerTimes.dhuhr), 
            isDone: dailyIbadah['Dhuhr'] ?? false,
            onToggle: () => ref.read(dailyIbadahProvider.notifier).toggle('Dhuhr'),
          ),
          const SizedBox(height: 8),
          _PrayerStatusItem(
            name: l10n.asr, 
            time: timeFormat.format(prayerTimes.asr), 
            isDone: dailyIbadah['Asr'] ?? false,
            onToggle: () => ref.read(dailyIbadahProvider.notifier).toggle('Asr'),
          ),
          const SizedBox(height: 8),
          _PrayerStatusItem(
            name: l10n.maghrib, 
            time: timeFormat.format(prayerTimes.maghrib), 
            isDone: dailyIbadah['Maghrib'] ?? false,
            onToggle: () => ref.read(dailyIbadahProvider.notifier).toggle('Maghrib'),
          ),
          const SizedBox(height: 8),
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
    return Container(
      decoration: BoxDecoration(
        color: isDone 
          ? Theme.of(context).colorScheme.primary.withValues(alpha: 0.08)
          : Theme.of(context).colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isDone 
            ? Theme.of(context).colorScheme.primary.withValues(alpha: 0.2)
            : Colors.transparent,
        ),
      ),
      child: InkWell(
        onTap: onToggle,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isDone ? Theme.of(context).colorScheme.primary : Colors.transparent,
                  border: Border.all(
                    color: isDone ? Theme.of(context).colorScheme.primary : Colors.grey.withValues(alpha: 0.4),
                    width: 2,
                  ),
                ),
                child: Icon(
                  Icons.check,
                  size: 14,
                  color: isDone ? Colors.white : Colors.transparent,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  name, 
                  style: TextStyle(
                    fontSize: 16, 
                    fontWeight: isDone ? FontWeight.w800 : FontWeight.w600,
                    color: isDone ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
              Text(
                time,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
                ),
              ),
            ],
          ),
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
      {'text': 'Subhanallah', 'count': '33', 'meaning': isTr ? 'Allah her türlü eksiklikten berîdir' : 'Glory be to Allah'},
      {'text': 'Alhamdullilah', 'count': '33', 'meaning': isTr ? 'Hamd Allah\'adır' : 'Praise be to Allah'},
      {'text': 'Allahu Akbar', 'count': '33', 'meaning': isTr ? 'Allah en büyüktür' : 'Allah is the Greatest'},
    ];

    return PremiumCard(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            isTr ? 'Günün Zikri' : 'Daily Zikr',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w900,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(height: 20),
          ...zikrList.map((zikr) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainerHighest.withValues(alpha: 0.4),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.05)),
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
                            fontWeight: FontWeight.w900,
                            letterSpacing: 0.5,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          zikr['meaning']!,
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Theme.of(context).colorScheme.primary,
                          const Color(0xFF2E7D32),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.2),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Text(
                      zikr['count']!,
                      style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontSize: 14,
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
