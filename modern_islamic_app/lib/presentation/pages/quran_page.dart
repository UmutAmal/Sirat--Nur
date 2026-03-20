import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';
import 'package:sirat_i_nur/presentation/blocs/quran_provider.dart';
import 'package:sirat_i_nur/presentation/blocs/quran_state_provider.dart';
import 'package:sirat_i_nur/core/utils/l10n_utils.dart';

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
            tabs: [
              Tab(text: trEnGlobal(context, tr: 'Sure', en: 'Surah (Chapter)')),
              Tab(text: trEnGlobal(context, tr: 'Cüz', en: 'Juz (Part)')),
            ],
          ),
        ),
        body: Column(
          children: [
            if (lastRead != null)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: InkWell(
                  onTap: () {
                    context.push('/quran/reading/${lastRead.surahNumber}', extra: lastRead.surahName);
                  },
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Theme.of(context).colorScheme.primary,
                          Theme.of(context).colorScheme.secondary,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.7),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        )
                      ]
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.menu_book, size: 40, color: Colors.white),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                l10n.continueReading,
                                style: const TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                lastRead.surahName,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                trEnGlobal(context, tr: 'Ayet ${lastRead.ayahNumber}', en: 'Ayah ${lastRead.ayahNumber}'),
                                style: const TextStyle(color: Colors.white70),
                              ),
                            ],
                          ),
                        ),
                        const Icon(Icons.play_circle_fill, color: Colors.white, size: 32),
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
                            leading: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Theme.of(context).colorScheme.primary,
                                  width: 2,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  surah.number.toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                              ),
                            ),
                            title: Text(
                              surah.englishName,
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text('${surah.englishNameTranslation} • ${surah.numberOfAyahs} ${l10n.ayahs}'),
                            trailing: Text(
                              surah.name,
                              style: const TextStyle(
                                fontFamily: 'Amiri', // Will use standard default until custom font added
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
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
                    separatorBuilder: (context, index) => const Divider(height: 1),
                    itemBuilder: (context, index) {
                      final juzNum = index + 1;
                      return ListTile(
                        leading: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Theme.of(context).colorScheme.secondary,
                              width: 2,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              juzNum.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                          ),
                        ),
                        title: Text(
                          trEnGlobal(context, tr: 'Cüz $juzNum', en: 'Juz $juzNum'),
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
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
