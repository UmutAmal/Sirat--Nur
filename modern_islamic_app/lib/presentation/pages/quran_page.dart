import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';
import 'package:sirat_i_nur/presentation/blocs/quran_provider.dart';
import 'package:sirat_i_nur/presentation/blocs/quran_state_provider.dart';
import 'package:sirat_i_nur/core/utils/l10n_utils.dart';
import 'package:sirat_i_nur/presentation/widgets/premium_card.dart';

class QuranPage extends ConsumerWidget {
  const QuranPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final surahsAsync = ref.watch(surahListProvider);
    final lastRead = ref.watch(lastReadProvider);
    final l10n = AppLocalizations.of(context)!;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(l10n.quran),
          centerTitle: false,
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            labelStyle: const TextStyle(fontWeight: FontWeight.bold),
            unselectedLabelColor: Colors.white.withValues(alpha: 0.7),
            tabs: [
              Tab(text: trEnGlobal(context, tr: 'Sure', en: 'Surah')),
              Tab(text: trEnGlobal(context, tr: 'Cüz', en: 'Juz')),
            ],
          ),
        ),
        body: Column(
          children: [
            if (lastRead != null)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: PremiumCard(
                  padding: EdgeInsets.zero,
                  onTap: () {
                    context.push('/quran/reading/${lastRead.surahNumber}', extra: lastRead.surahName);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Theme.of(context).colorScheme.primary,
                          const Color(0xFF2E7D32),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.15),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.auto_stories_rounded, size: 28, color: Colors.white),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                l10n.continueReading.toUpperCase(),
                                style: TextStyle(
                                  color: Colors.white.withValues(alpha: 0.7),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: 1.2,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                lastRead.surahName,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                trEnGlobal(context, tr: 'Ayet ${lastRead.ayahNumber}', en: 'Ayah ${lastRead.ayahNumber}'),
                                style: TextStyle(
                                  color: Colors.white.withValues(alpha: 0.8),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white, size: 20),
                      ],
                    ),
                  ),
                ),
              ),
            
            Expanded(
              child: TabBarView(
                children: [
                  // Tab 1: Surah List
                  surahsAsync.when(
                    data: (surahs) {
                      return ListView.separated(
                        itemCount: surahs.length,
                        separatorBuilder: (context, index) => const Divider(height: 1),
                        itemBuilder: (context, index) {
                          final surah = surahs[index];
                          return ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                            leading: Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.08),
                                border: Border.all(
                                  color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.2),
                                  width: 1,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  surah.number.toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 16,
                                    color: Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                              ),
                            ),
                            title: Text(
                              surah.englishName,
                              style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
                            ),
                            subtitle: Text(
                              '${surah.englishNameTranslation} • ${surah.numberOfAyahs} ${l10n.ayahs}',
                              style: TextStyle(
                                fontSize: 13,
                                color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
                              ),
                            ),
                            trailing: Text(
                              surah.name,
                              style: TextStyle(
                                fontFamily: 'Amiri', 
                                fontSize: 24,
                                fontWeight: FontWeight.w900,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            onTap: () {
                              context.push('/quran/reading/${surah.number}', extra: surah.englishName);
                            },
                          );
                        },
                      );
                    },
                    loading: () => const Center(child: CircularProgressIndicator()),
                    error: (e, st) => Center(
                      child: Text(
                        trEnGlobal(context, tr: 'Hata: $e', en: 'Error: $e'),
                      ),
                    ),
                  ),

                  // Tab 2: Juz List
                  ListView.separated(
                    itemCount: 30,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    separatorBuilder: (context, index) => const Divider(height: 1, indent: 80),
                    itemBuilder: (context, index) {
                      final juzNum = index + 1;
                      return ListTile(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        leading: Container(
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1),
                            border: Border.all(
                              color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.3),
                              width: 1,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              juzNum.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 16,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                          ),
                        ),
                        title: Text(
                          trEnGlobal(context, tr: 'Cüz $juzNum', en: 'Juz $juzNum'),
                          style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                        ),
                        subtitle: Text(
                          trEnGlobal(context, tr: 'Kur\'an-ı Kerim Bölümü', en: 'Section of the Holy Quran'),
                          style: TextStyle(
                            fontSize: 13,
                            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_rounded, size: 16, color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3)),
                        onTap: () {
                          context.push(
                            '/quran/juz/$juzNum',
                            extra: trEnGlobal(context, tr: 'Cüz $juzNum', en: 'Juz $juzNum'),
                          );
                        },
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
