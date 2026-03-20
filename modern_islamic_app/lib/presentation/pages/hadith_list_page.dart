import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sirat_i_nur/presentation/blocs/library_provider.dart';
import 'package:sirat_i_nur/core/utils/tr_en.dart';

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
        title: Text(collectionName),
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

          return ListView.separated(
            padding: const EdgeInsets.all(16).copyWith(bottom: 100),
            itemCount: hadiths.length,
            separatorBuilder: (context, index) => const Divider(height: 32),
            itemBuilder: (context, index) {
              final h = hadiths[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Text(
                          '${trEn(context, tr: 'Hadis', en: 'Hadith')} ${h.hadithNumber}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          color: h.grade.toLowerCase() == 'sahih' 
                              ? Colors.green.withValues(alpha: 0.1) 
                              : Colors.orange.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Text(
                          h.grade,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: h.grade.toLowerCase() == 'sahih' 
                                ? Colors.green[800] 
                                : Colors.orange[800],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    h.arabicText,
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(
                      fontFamily: 'Amiri',
                      fontSize: 24,
                      height: 1.8,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    h.translation,
                    style: const TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                ],
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
