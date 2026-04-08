import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/widgets/premium_card.dart';
import 'package:sirat_i_nur/features/library/providers/hadith_provider.dart';

class HadithListPage extends ConsumerWidget {
  final String collectionId;
  const HadithListPage({super.key, required this.collectionId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = Localizations.localeOf(context).languageCode;
    final name = _getCollectionName(collectionId, lang);
    
    final hadithReq = HadithRequest(collectionId, lang);
    final hadithData = ref.watch(hadithSectionProvider(hadithReq));

    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: AppColors.emeraldGradient,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const Icon(Icons.library_books_rounded, color: Colors.white, size: 40),
                  const SizedBox(height: 12),
                  Text(name, style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w900), textAlign: TextAlign.center),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // Data
            hadithData.when(
              loading: () => const Center(
                child: Padding(
                  padding: EdgeInsets.all(32.0),
                  child: CircularProgressIndicator(color: AppColors.emerald),
                ),
              ),
              error: (err, stack) => Center(
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Text(
                    'Error loading hadiths.\nCheck internet connection.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Theme.of(context).colorScheme.error),
                  ),
                ),
              ),
              data: (list) {
                if (list.isEmpty) {
                  return const Center(child: Text('No hadiths found here.'));
                }
                return Column(
                  children: list.asMap().entries.map((e) {
                    final i = e.key;
                    final h = e.value;
                    return AnimatedPremiumCard(
                      animationDelay: (i % 10) * 80,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 32, height: 32,
                                decoration: const BoxDecoration(
                                  color: AppColors.emeraldSurface,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(child: Text('${h.number}', style: const TextStyle(
                                  fontWeight: FontWeight.w900, color: AppColors.emerald, fontSize: 12))),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  h.heading ?? name, 
                                  style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w700,
                                    color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5)
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          if (h.arabic.isNotEmpty) ...[
                            Text(h.arabic, style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w900, height: 2.0),
                              textDirection: TextDirection.rtl, textAlign: TextAlign.right),
                            const SizedBox(height: 12),
                          ],
                          Text(h.translation, style: TextStyle(
                            fontSize: 13, height: 1.7,
                            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.8))),
                        ],
                      ),
                    );
                  }).toList(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  static String _getCollectionName(String id, String lang) {
    if (lang == 'tr') {
      switch (id) {
        case 'bukhari': return 'Sahih-i Buhârî';
        case 'muslim': return 'Sahih-i Müslim';
        case 'tirmidhi': return 'Sünen-i Tirmizî';
        case 'abudawud': return 'Sünen-i Ebû Dâvûd';
        case 'nasai': return 'Sünen-i Nesâî';
        case 'ibnmajah': return 'Sünen-i İbn Mâce';
        default: return id;
      }
    }
    switch (id) {
      case 'bukhari': return 'Sahih al-Bukhari';
      case 'muslim': return 'Sahih Muslim';
      case 'tirmidhi': return 'Jami at-Tirmidhi';
      case 'abudawud': return 'Sunan Abu Dawud';
      case 'nasai': return "Sunan an-Nasa'i";
      case 'ibnmajah': return 'Sunan Ibn Majah';
      default: return id;
    }
  }
}
