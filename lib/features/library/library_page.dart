import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/widgets/premium_card.dart';
import 'package:sirat_i_nur/core/constants/duas_data.dart';
import 'package:sirat_i_nur/core/providers/supabase_providers.dart';
import 'package:sirat_i_nur/core/services/audio_sovereignty_service.dart';
import 'package:sirat_i_nur/core/services/hadith_api_service.dart';
import 'package:sirat_i_nur/features/library/hadith_collection_copy.dart';
import 'package:sirat_i_nur/features/library/dua_meaning_localization.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

String buildLibraryErrorText(AppLocalizations l10n, Object error) {
  return '${l10n.error}: $error';
}

String buildLibraryEmptyText(AppLocalizations l10n) {
  return l10n.noResults;
}

bool isSukunAudioAvailable(AudioSovereigntyService audio) {
  return audio.configuredSukunTypes.any(expectedSukunSoundTypes.contains);
}

bool hasCloudSukunAudio(Map<String, String> cloudSources) {
  return cloudSources.keys.any(expectedSukunSoundTypes.contains);
}

bool resolveSukunAvailability(
  AudioSovereigntyService audio, {
  Map<String, String> cloudSources = const {},
}) {
  return isSukunAudioAvailable(audio) || hasCloudSukunAudio(cloudSources);
}

String resolveSukunLibrarySubtitle(AppLocalizations l10n, bool isAvailable) {
  return isAvailable ? l10n.sukunMixerSubtitle : l10n.sukunUnavailableTitle;
}

bool areHadithCollectionsAvailable() {
  return hasVerifiedHadithDataset;
}

String resolveHadithLibrarySubtitle(AppLocalizations l10n) {
  return areHadithCollectionsAvailable()
      ? l10n.hadithBooks
      : l10n.hadithSourcePending;
}

List<DuaData> resolveLibraryDuas(AsyncValue<List<DuaData>> asyncDuas) {
  return asyncDuas.valueOrNull ?? bundledDailyDuaFallback();
}

bool areDailyDuasAvailable(List<DuaData> duas) {
  return duas.isNotEmpty;
}

String resolveDailyDuasLibrarySubtitle(
  AppLocalizations l10n,
  List<DuaData> duas,
) {
  return areDailyDuasAvailable(duas)
      ? l10n.essentialDuas(duas.length.toString())
      : l10n.duaUnavailableTitle;
}

String resolveDuaMeaning(AppLocalizations l10n, DuaData dua, Locale locale) {
  final translations = dua.resolvedTranslations;
  final localeTag = locale.toLanguageTag();
  final normalizedTag = localeTag.replaceAll('-', '_');

  for (final candidate in {
    localeTag,
    normalizedTag,
    locale.languageCode,
  }) {
    final value = translations[candidate];
    if (value != null && value.trim().isNotEmpty) {
      return value;
    }
  }

  final bundledFallback = resolveBundledDuaMeaning(l10n, int.tryParse(dua.id));
  if (bundledFallback.isNotEmpty) {
    return bundledFallback;
  }

  if (dua.english.isNotEmpty) {
    return dua.english;
  }

  return dua.turkish;
}

bool hasDuaTransliteration(DuaData dua) {
  return dua.transliteration.trim().isNotEmpty;
}

class LibraryPage extends ConsumerWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final duas = resolveLibraryDuas(ref.watch(dailyDuasProvider));
    final audio = ref.watch(audioSovereigntyServiceProvider);
    final cloudSukunSources =
        ref.watch(sukunAudioSourcesProvider).valueOrNull ?? const {};
    final isSukunAvailable = resolveSukunAvailability(
      audio,
      cloudSources: cloudSukunSources,
    );
    final areDuasAvailable = areDailyDuasAvailable(duas);
    final areHadithsAvailable = areHadithCollectionsAvailable();

    return Scaffold(
      appBar: AppBar(title: Text(l10n.library)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Asma-ul-Husna
            AnimatedPremiumCard(
              animationDelay: 0,
              onTap: () => _openAsmaUlHusna(context),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: AppColors.emeraldSurface,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Icon(
                      Icons.star_rounded,
                      color: AppColors.emerald,
                      size: 28,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.asmaulHusna,
                          style: const TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          l10n.namesOfAllah,
                          style: TextStyle(
                            fontSize: 13,
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurface.withValues(alpha: 0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.chevron_right_rounded),
                ],
              ),
            ),
            // Daily Duas
            AnimatedPremiumCard(
              animationDelay: 100,
              onTap: areDuasAvailable ? () => _openDuas(context) : null,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: AppColors.goldLight,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Icon(
                      Icons.menu_book_rounded,
                      color: AppColors.gold,
                      size: 28,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.dailyDuas,
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          resolveDailyDuasLibrarySubtitle(l10n, duas),
                          style: TextStyle(
                            fontSize: 13,
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurface.withValues(alpha: 0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    areDuasAvailable
                        ? Icons.chevron_right_rounded
                        : Icons.block_rounded,
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurface.withValues(alpha: 0.4),
                  ),
                ],
              ),
            ),

            // Sukun Soundscapes (Orphan Feature Integration)
            const SizedBox(height: 8),
            AnimatedPremiumCard(
              animationDelay: 150,
              onTap: isSukunAvailable
                  ? () => context.go('/library/sukun-audio')
                  : null,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: AppColors.emeraldLight,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Icon(
                      Icons.spa_rounded,
                      color: AppColors.emerald,
                      size: 28,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.sukunAudioTitle,
                          style: const TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          resolveSukunLibrarySubtitle(l10n, isSukunAvailable),
                          style: TextStyle(
                            fontSize: 13,
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurface.withValues(alpha: 0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    isSukunAvailable
                        ? Icons.chevron_right_rounded
                        : Icons.block_rounded,
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurface.withValues(alpha: 0.4),
                  ),
                ],
              ),
            ),

            // Islamic Education (SUPABASE CLOUD)
            const SizedBox(height: 8),
            Text(
              l10n.islamicEducation,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 12),
            ref
                .watch(educationCategoriesProvider)
                .when(
                  data: (categories) => Column(
                    children: categories.asMap().entries.map((entry) {
                      final i = entry.key;
                      final cat = entry.value;
                      return AnimatedPremiumCard(
                        animationDelay: 200 + (i * 80),
                        onTap: () => _openEducationCategory(
                          context,
                          cat['id'],
                          cat['title'],
                        ),
                        child: Row(
                          children: [
                            Text(
                              cat['icon'] ?? '📚',
                              style: const TextStyle(fontSize: 28),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    cat['title'] ?? '',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    cat['title_en'] ?? '',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface
                                          .withValues(alpha: 0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Icon(
                              Icons.cloud_rounded,
                              size: 16,
                              color: AppColors.emerald,
                            ),
                            const SizedBox(width: 8),
                            const Icon(Icons.chevron_right_rounded),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                  loading: () => const Center(
                    child: Padding(
                      padding: EdgeInsets.all(24),
                      child: CircularProgressIndicator(
                        color: AppColors.emerald,
                      ),
                    ),
                  ),
                  error: (e, s) => PremiumCard(
                    child: Text(
                      buildLibraryErrorText(l10n, e),
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
                ),

            // Hadith Collections
            const SizedBox(height: 16),
            Text(
              l10n.hadithCollections,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 12),
            ..._hadithCollections.asMap().entries.map((entry) {
              final i = entry.key;
              final h = entry.value;
              final hadithName = resolveHadithCollectionName(
                h.id,
                Localizations.localeOf(context).languageCode,
              );
              return AnimatedPremiumCard(
                animationDelay: 600 + (i * 80),
                onTap: areHadithsAvailable
                    ? () => context.push('/library/hadith/${h.id}', extra: hadithName)
                    : null,
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: AppColors.emeraldSurface,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          '${i + 1}',
                          style: const TextStyle(
                            fontWeight: FontWeight.w900,
                            color: AppColors.emerald,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            hadithName,
                            style: const TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            resolveHadithLibrarySubtitle(l10n),
                            style: TextStyle(
                              fontSize: 12,
                              color: Theme.of(
                                context,
                              ).colorScheme.onSurface.withValues(alpha: 0.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      areHadithsAvailable
                          ? Icons.chevron_right_rounded
                          : Icons.block_rounded,
                    ),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  void _openAsmaUlHusna(BuildContext context) {
    context.push('/library/asma-ul-husna');
  }

  void _openDuas(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const _DuasView()),
    );
  }

  void _openEducationCategory(
    BuildContext context,
    String categoryId,
    String title,
  ) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => _EducationView(categoryId: categoryId, title: title),
      ),
    );
  }

  static const _hadithCollections = [
    _HadithCollection('bukhari'),
    _HadithCollection('muslim'),
    _HadithCollection('tirmidhi'),
    _HadithCollection('abudawud'),
    _HadithCollection('nasai'),
    _HadithCollection('ibnmajah'),
  ];
}

class _HadithCollection {
  final String id;
  const _HadithCollection(this.id);
}

String _translateDuaCategory(String category, AppLocalizations l10n) {
  switch (category) {
    case quranicDuaCategory:
      return l10n.duaCategoryQuranic;
    case 'Sabah Akşam':
      return l10n.duaCategoryMorningEvening;
    case 'Tesbih':
      return l10n.duaCategoryTasbih;
    case 'Koruma':
      return l10n.duaCategoryProtection;
    case 'Başlangıç':
      return l10n.duaCategoryBeginning;
    case 'Uyku':
      return l10n.duaCategorySleep;
    case 'Yemek':
      return l10n.duaCategoryFoodDrink;
    case 'Af Duası':
      return l10n.duaCategoryForgiveness;
    case 'Ev':
      return l10n.duaCategoryHome;
    default:
      return category;
  }
}

String _translateDuaSource(String source, AppLocalizations l10n) {
  if (source.startsWith('Quran ')) {
    return '${l10n.quran} ${source.substring('Quran '.length)}';
  }

  return source
      .replaceAll('Buhari', l10n.duaSourceBukhari)
      .replaceAll('Müslim', l10n.duaSourceMuslim)
      .replaceAll('Ebu Davud', l10n.duaSourceAbuDawud)
      .replaceAll('Tirmizi', l10n.duaSourceTirmidhi)
      .replaceAll('Ahmed', l10n.duaSourceAhmad)
      .replaceAll('Kuran-ı Kerim', l10n.quran);
}

// ─── Duas Subview ───
class _DuasView extends ConsumerWidget {
  const _DuasView();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = Localizations.localeOf(context);
    final l10n = AppLocalizations.of(context)!;
    final duas = resolveLibraryDuas(ref.watch(dailyDuasProvider));

    return Scaffold(
      appBar: AppBar(title: Text(l10n.dailyDuas)),
      body: duas.isEmpty
          ? Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Text(
                  l10n.duaUnavailableBody,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.6,
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurface.withValues(alpha: 0.6),
                  ),
                ),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: duas.length,
              itemBuilder: (context, i) {
                final dua = duas[i];
                return PremiumCard(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.emeraldSurface,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              _translateDuaCategory(dua.category, l10n),
                              style: const TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w800,
                                color: AppColors.emerald,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            _translateDuaSource(dua.source, l10n),
                            style: TextStyle(
                              fontSize: 11,
                              color: Theme.of(
                                context,
                              ).colorScheme.onSurface.withValues(alpha: 0.4),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Text(
                        dua.arabic,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                          height: 2.0,
                        ),
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                      ),
                      const SizedBox(height: 12),
                      if (hasDuaTransliteration(dua)) ...[
                        Text(
                          dua.transliteration,
                          style: TextStyle(
                            fontSize: 13,
                            fontStyle: FontStyle.italic,
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurface.withValues(alpha: 0.6),
                          ),
                        ),
                        const SizedBox(height: 8),
                      ],
                      Text(
                        resolveDuaMeaning(l10n, dua, locale),
                        style: TextStyle(
                          fontSize: 13,
                          color: Theme.of(
                            context,
                          ).colorScheme.onSurface.withValues(alpha: 0.5),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}

// ─── Education Category Subview (SUPABASE CLOUD) ───
class _EducationView extends ConsumerWidget {
  final String categoryId;
  final String title;
  const _EducationView({required this.categoryId, required this.title});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.cloud_sync_rounded,
              color: AppColors.emerald,
              size: 20,
            ),
          ),
        ],
      ),
      body: ref
          .watch(educationTopicsProvider(categoryId))
          .when(
            data: (topics) {
              if (topics.isEmpty) {
                return Center(child: Text(buildLibraryEmptyText(l10n)));
              }
              return ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: topics.length,
                itemBuilder: (context, i) {
                  final topic = topics[i];
                  return PremiumCard(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          topic['title'] ?? '',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          topic['title_en'] ?? '',
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: AppColors.emerald,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          topic['content'] ?? '',
                          style: TextStyle(
                            fontSize: 14,
                            height: 1.7,
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurface.withValues(alpha: 0.7),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            loading: () => const Center(
              child: CircularProgressIndicator(color: AppColors.emerald),
            ),
            error: (e, s) =>
                Center(child: Text(buildLibraryErrorText(l10n, e))),
          ),
    );
  }
}
