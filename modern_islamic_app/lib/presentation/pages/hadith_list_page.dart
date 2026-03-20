import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sirat_i_nur/presentation/blocs/library_provider.dart';
import 'package:sirat_i_nur/core/utils/tr_en.dart';
import 'package:sirat_i_nur/presentation/widgets/premium_card.dart';

class HadithListPage extends ConsumerWidget {
  final String collectionId;
  final String collectionName;

  const HadithListPage({
    super.key,
    required this.collectionId,
    required this.collectionName,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // MVP: Loading first 50 hadiths
    final hadithsAsync = ref.watch(hadithListProvider({'collectionId': collectionId, 'limit': 50, 'offset': 0}));

    return Scaffold(
      appBar: AppBar(
        title: Text(collectionName, style: const TextStyle(fontWeight: FontWeight.w900)),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: trEn(context, tr: 'Hadis Ara', en: 'Search Hadith'),
            onPressed: () {
              context.push('/library/search');
            },
          ),
        ],
      ),
      body: hadithsAsync.when(
        data: (hadiths) {
          if (hadiths.isEmpty) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  trEn(
                    context,
                    tr: 'Henüz hadis yok. Bu koleksiyon için resmi veri paketi gerekir.',
                    en: 'No hadiths available yet. An official data pack is required for this collection.',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.all(16).copyWith(bottom: 100),
            itemCount: hadiths.length,
            itemBuilder: (context, index) {
              final h = hadiths[index];
              final isSahih = h.grade.toLowerCase() == 'sahih';
              
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: PremiumCard(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              '${trEn(context, tr: 'HADİS', en: 'HADITH')} ${h.hadithNumber}',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w900,
                                color: Theme.of(context).colorScheme.primary,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: isSahih 
                                  ? Colors.green.withValues(alpha: 0.1) 
                                  : Colors.orange.withValues(alpha: 0.1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              h.grade.toUpperCase(),
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w900,
                                color: isSahih ? Colors.green[800] : Colors.orange[800],
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Text(
                        h.arabicText,
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontFamily: 'Amiri',
                          fontSize: 28,
                          height: 1.8,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Divider(color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.1)),
                      const SizedBox(height: 24),
                      Text(
                        h.translation,
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.6,
                          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.8),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, st) => Center(
          child: Text(
            trEn(context, tr: 'Hata: $err', en: 'Error: $err'),
          ),
        ),
      ),
    );
  }
}
