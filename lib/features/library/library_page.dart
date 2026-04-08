import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/widgets/premium_card.dart';
import 'package:sirat_i_nur/core/constants/duas_data.dart';
import 'package:sirat_i_nur/core/providers/supabase_providers.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

String buildLibraryErrorText(AppLocalizations l10n, Object error) {
  return '${l10n.error}: $error';
}

String buildLibraryEmptyText(AppLocalizations l10n) {
  return l10n.noResults;
}

List<DuaData> resolveLibraryDuas(AsyncValue<List<DuaData>> asyncDuas) {
  return asyncDuas.valueOrNull ?? dailyDuas;
}

String resolveDuaMeaning(DuaData dua, Locale locale) {
  if (locale.languageCode == 'tr' && dua.turkish.isNotEmpty) {
    return dua.turkish;
  }

  if (dua.english.isNotEmpty) {
    return dua.english;
  }

  return dua.turkish;
}

class LibraryPage extends ConsumerWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final duas = resolveLibraryDuas(ref.watch(dailyDuasProvider));

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
              onTap: () => _openDuas(context),
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
                          l10n.essentialDuas(duas.length.toString()),
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

            // Sukun Soundscapes (Orphan Feature Integration)
            const SizedBox(height: 8),
            AnimatedPremiumCard(
              animationDelay: 150,
              onTap: () => context.go('/library/sukun-audio'),
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
                          l10n.sukunMixerSubtitle,
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
              return AnimatedPremiumCard(
                animationDelay: 600 + (i * 80),
                onTap: () =>
                    context.push('/library/hadith/${h.id}', extra: h.name),
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
                            h.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            h.desc,
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
                    const Icon(Icons.chevron_right_rounded),
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
    _HadithCollection('bukhari', 'Sahih al-Bukhari', '7,563 hadith'),
    _HadithCollection('muslim', 'Sahih Muslim', '7,500 hadith'),
    _HadithCollection('tirmidhi', 'Jami at-Tirmidhi', '3,956 hadith'),
    _HadithCollection('abudawud', 'Sunan Abu Dawud', '5,274 hadith'),
    _HadithCollection('nasai', "Sunan an-Nasa'i", '5,758 hadith'),
    _HadithCollection('ibnmajah', 'Sunan Ibn Majah', '4,341 hadith'),
  ];
}

class _HadithCollection {
  final String id, name, desc;
  const _HadithCollection(this.id, this.name, this.desc);
}

String _translateDuaCategory(String category, String lang) {
  if (lang != 'en') return category;
  switch (category) {
    case 'Sabah Akşam':
      return 'Morning & Evening';
    case 'Tesbih':
      return 'Tasbih';
    case 'Koruma':
      return 'Protection';
    case 'Başlangıç':
      return 'Starting';
    case 'Uyku':
      return 'Sleep';
    case 'Yemek':
      return 'Food & Drink';
    case 'Af Duası':
      return 'Forgiveness';
    case 'Ev':
      return 'Home';
    default:
      return category;
  }
}

String _translateDuaSource(String source, String lang) {
  if (lang != 'en') return source;
  return source
      .replaceAll('Buhari', 'Bukhari')
      .replaceAll('Müslim', 'Muslim')
      .replaceAll('Ebu Davud', 'Abu Dawud')
      .replaceAll('Tirmizi', 'Tirmidhi')
      .replaceAll('Ahmed', 'Ahmad')
      .replaceAll('Kuran-ı Kerim', 'Quran');
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
      body: ListView.builder(
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
                        _translateDuaCategory(
                          dua.category,
                          locale.languageCode,
                        ),
                        style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w800,
                          color: AppColors.emerald,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      _translateDuaSource(dua.source, locale.languageCode),
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
                Text(
                  resolveDuaMeaning(dua, locale),
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
