import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/core/services/hadith_api_service.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/widgets/premium_card.dart';
import 'package:sirat_i_nur/features/library/hadith_collection_copy.dart';
import 'package:sirat_i_nur/features/library/providers/hadith_provider.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

String buildHadithListErrorText(AppLocalizations l10n) {
  return '${l10n.error}\n${l10n.checkConnection}';
}

String buildHadithListEmptyText(AppLocalizations l10n) {
  return l10n.noResults;
}

class HadithListPage extends ConsumerWidget {
  final String collectionId;
  const HadithListPage({super.key, required this.collectionId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = Localizations.localeOf(context).languageCode;
    final name = resolveHadithCollectionName(collectionId, lang);
    final l10n = AppLocalizations.of(context)!;

    if (!hasVerifiedHadithDataset) {
      return Scaffold(
        appBar: AppBar(title: Text(name)),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: PremiumCard(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.block_rounded,
                    size: 40,
                    color: AppColors.emerald,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    l10n.hadithUnavailableTitle,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    l10n.hadithUnavailableBody,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      height: 1.6,
                      color: Theme.of(
                        context,
                      ).colorScheme.onSurface.withValues(alpha: 0.7),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

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
                  const Icon(
                    Icons.library_books_rounded,
                    color: Colors.white,
                    size: 40,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.center,
                  ),
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
                    buildHadithListErrorText(l10n),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                ),
              ),
              data: (list) {
                if (list.isEmpty) {
                  return Center(child: Text(buildHadithListEmptyText(l10n)));
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
                                width: 32,
                                height: 32,
                                decoration: const BoxDecoration(
                                  color: AppColors.emeraldSurface,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Text(
                                    '${h.number}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: AppColors.emerald,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  h.heading ?? name,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface
                                        .withValues(alpha: 0.5),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          if (h.arabic.isNotEmpty) ...[
                            Text(
                              h.arabic,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                                height: 2.0,
                              ),
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                            ),
                            const SizedBox(height: 12),
                          ],
                          Text(
                            h.translation,
                            style: TextStyle(
                              fontSize: 13,
                              height: 1.7,
                              color: Theme.of(
                                context,
                              ).colorScheme.onSurface.withValues(alpha: 0.8),
                            ),
                          ),
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
}
