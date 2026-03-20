import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';
import 'package:sirat_i_nur/core/utils/prayer_name_localization.dart';
import 'package:sirat_i_nur/core/utils/l10n_utils.dart';
import 'package:sirat_i_nur/presentation/blocs/prayer_times_provider.dart';
import 'package:sirat_i_nur/presentation/widgets/premium_card.dart';
import 'package:sirat_i_nur/domain/entities/prayer_times_entity.dart';
import 'package:sirat_i_nur/presentation/widgets/home_widgets.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prayerTimesAsyncValue = ref.watch(prayerTimesProvider);

    return Scaffold(
      body: prayerTimesAsyncValue.when(
        data: (prayerTimes) {
          final locale = Localizations.localeOf(context);
          final timeFormat = DateFormat.Hm(locale.toString()); 
          final nextPrayerLabel = localizePrayerName(
            prayerTimes.nextPrayerName,
            locale,
          ).toUpperCase();
          
          return SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // 🕌 Next Prayer Banner Card
                  NextPrayerBanner(
                    prayerTimes: prayerTimes,
                    nextPrayerLabel: nextPrayerLabel,
                    timeFormat: timeFormat,
                  ),
                  const SizedBox(height: 24),
                  
                  // 📱 Quick Access Icons
                  const QuickAccessSection(),
                  const SizedBox(height: 24),
                  
                  // 📅 Hijri Calendar Widget
                  const HijriCalendarWidget(),
                  const SizedBox(height: 24),
                  
                  // Today's Ibadet Tracker Widget
                  TodayIbadetWidget(
                    prayerTimes: prayerTimes,
                    timeFormat: timeFormat,
                  ),
                  const SizedBox(height: 24),
                  
                  // 📿 Daily Zikr Widget
                  const DailyZikrWidget(),
                  const SizedBox(height: 24),
                  
                  // Detailed Prayer Times List
                  _DetailedPrayerTimesList(
                    prayerTimes: prayerTimes,
                    timeFormat: timeFormat,
                  ),
                  const SizedBox(height: 24),
                  
                  // ✨ Daily Inspiration Card
                  const _DailyAyahCard(),
                  const SizedBox(height: 32),
                  
                  // Spiritual AI Nudge
                  const AInudgeWidget(),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator(color: Color(0xFFFFD700))),
        error: (err, stack) => _HomeErrorWidget(error: err.toString()),
      ),
    );
  }
}

class _DetailedPrayerTimesList extends StatelessWidget {
  final PrayerTimesEntity prayerTimes;
  final DateFormat timeFormat;

  const _DetailedPrayerTimesList({
    required this.prayerTimes,
    required this.timeFormat,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return PremiumCard(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            l10n.prayerTimes,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w800,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(height: 16),
          _PrayerTimeRow(l10n.fajr, timeFormat.format(prayerTimes.fajr)),
          _PrayerTimeRow(l10n.sunrise, timeFormat.format(prayerTimes.sunrise)),
          _PrayerTimeRow(l10n.dhuhr, timeFormat.format(prayerTimes.dhuhr)),
          _PrayerTimeRow(l10n.asr, timeFormat.format(prayerTimes.asr)),
          _PrayerTimeRow(l10n.maghrib, timeFormat.format(prayerTimes.maghrib)),
          _PrayerTimeRow(l10n.isha, timeFormat.format(prayerTimes.isha)),
        ],
      ),
    );
  }
}

class _PrayerTimeRow extends StatelessWidget {
  final String name;
  final String time;

  const _PrayerTimeRow(this.name, this.time);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          Text(
            time,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.primary),
          ),
        ],
      ),
    );
  }
}

class _DailyAyahCard extends StatelessWidget {
  const _DailyAyahCard();

  @override
  Widget build(BuildContext context) {
    return PremiumCard(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.auto_awesome, color: Color(0xFFFFD700), size: 24),
              const SizedBox(width: 12),
              Text(
                trEnGlobal(context, tr: 'Günün Ayeti', en: 'Ayah of the Day'),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            trEnGlobal(context, 
              tr: '"Allah kimseye gücünün yettiğinden fazlasını yüklemez.."',
              en: '"Allah does not burden a soul beyond that it can bear.."'),
            style: const TextStyle(
              fontSize: 18, 
              height: 1.6, 
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              '- Surah Al-Baqarah [2:286]',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white.withValues(alpha: 0.5),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _HomeErrorWidget extends ConsumerWidget {
  final String error;
  const _HomeErrorWidget({required this.error});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.location_off, size: 64, color: Colors.grey),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Text(
              trEnGlobal(
                context,
                tr: 'Doğru vakitler için konum servislerini etkinleştirin.\nHata: $error',
                en: 'Please enable location services to calculate accurate prayer times.\nError: $error',
              ),
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.red),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => ref.refresh(prayerTimesProvider),
            child: Text(trEnGlobal(context, tr: 'Tekrar Dene', en: 'Retry')),
          )
        ],
      ),
    );
  }
}
