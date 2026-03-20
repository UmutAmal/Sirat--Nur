import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/widgets/premium_card.dart';
import 'package:sirat_i_nur/core/constants/islamic_education.dart';
import 'package:sirat_i_nur/core/constants/duas_data.dart';
import 'package:sirat_i_nur/core/constants/asma_ul_husna_data.dart';

class LibraryPage extends ConsumerWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Islamic Library')),
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
                    child: const Icon(Icons.star_rounded, color: AppColors.emerald, size: 28),
                  ),
                  const SizedBox(width: 16),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Asma-ul-Husna', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
                      Text('99 Names of Allah', style: TextStyle(
                        fontSize: 13, color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5))),
                    ],
                  )),
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
                    child: const Icon(Icons.menu_book_rounded, color: AppColors.gold, size: 28),
                  ),
                  const SizedBox(width: 16),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Daily Duas', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
                      Text('${dailyDuas.length} essential duas', style: TextStyle(
                        fontSize: 13, color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5))),
                    ],
                  )),
                  const Icon(Icons.chevron_right_rounded),
                ],
              ),
            ),
            // Islamic Education
            const SizedBox(height: 8),
            Text('Islamic Education', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w900)),
            const SizedBox(height: 12),
            ...IslamicEducation.categories.asMap().entries.map((entry) {
              final i = entry.key;
              final cat = entry.value;
              return AnimatedPremiumCard(
                animationDelay: 200 + (i * 80),
                onTap: () => _openEducationCategory(context, cat),
                child: Row(
                  children: [
                    Text(cat.icon, style: const TextStyle(fontSize: 28)),
                    const SizedBox(width: 16),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(cat.title, style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 15)),
                        Text(cat.titleEn, style: TextStyle(
                          fontSize: 12, color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5))),
                      ],
                    )),
                    Text('${cat.topics.length}', style: TextStyle(fontWeight: FontWeight.w900,
                      color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.3))),
                    const SizedBox(width: 4),
                    const Icon(Icons.chevron_right_rounded),
                  ],
                ),
              );
            }),
            // Hadith Collections
            const SizedBox(height: 8),
            Text('Hadith Collections', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w900)),
            const SizedBox(height: 12),
            ..._hadithCollections.asMap().entries.map((entry) {
              final i = entry.key;
              final h = entry.value;
              return AnimatedPremiumCard(
                animationDelay: 600 + (i * 80),
                onTap: () => context.push('/library/hadith/${h.id}', extra: h.name),
                child: Row(
                  children: [
                    Container(
                      width: 40, height: 40,
                      decoration: BoxDecoration(
                        color: AppColors.emeraldSurface,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(child: Text('${i + 1}', style: const TextStyle(fontWeight: FontWeight.w900, color: AppColors.emerald))),
                    ),
                    const SizedBox(width: 16),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(h.name, style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 15)),
                        Text(h.desc, style: TextStyle(
                          fontSize: 12, color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5))),
                      ],
                    )),
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
    Navigator.push(context, MaterialPageRoute(builder: (_) => const _AsmaUlHusnaView()));
  }

  void _openDuas(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => const _DuasView()));
  }

  void _openEducationCategory(BuildContext context, EducationCategory cat) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => _EducationView(category: cat)));
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

// ─── Asma-ul-Husna Subview ───
class _AsmaUlHusnaView extends StatelessWidget {
  const _AsmaUlHusnaView();
  @override
  Widget build(BuildContext context) {
    final names = AsmaUlHusnaData.names;
    return Scaffold(
      appBar: AppBar(title: const Text('99 Names of Allah')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: names.length,
        itemBuilder: (context, i) {
          final name = names[i];
          final translations = name['translations'] as Map<String, dynamic>;
          return PremiumCard(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 40, height: 40,
                  decoration: BoxDecoration(
                    color: AppColors.emeraldSurface,
                    shape: BoxShape.circle,
                  ),
                  child: Center(child: Text('${name['id']}', style: const TextStyle(fontWeight: FontWeight.w900, color: AppColors.emerald, fontSize: 12))),
                ),
                const SizedBox(width: 12),
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name['arabic'] as String, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w900)),
                    Text(name['transliteration'] as String, style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700,
                      color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6))),
                    const SizedBox(height: 4),
                    Text(translations['en'] as String, style: TextStyle(fontSize: 12,
                      color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.4))),
                  ],
                )),
              ],
            ),
          );
        },
      ),
    );
  }
}

// ─── Duas Subview ───
class _DuasView extends StatelessWidget {
  const _DuasView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daily Duas')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: dailyDuas.length,
        itemBuilder: (context, i) {
          final dua = dailyDuas[i];
          return PremiumCard(
            margin: const EdgeInsets.only(bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: AppColors.emeraldSurface,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(dua.category, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w800, color: AppColors.emerald)),
                    ),
                    const Spacer(),
                    Text(dua.source, style: TextStyle(fontSize: 11,
                      color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.4))),
                  ],
                ),
                const SizedBox(height: 16),
                Text(dua.arabic, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w900, height: 2.0),
                  textAlign: TextAlign.right, textDirection: TextDirection.rtl),
                const SizedBox(height: 12),
                Text(dua.transliteration, style: TextStyle(fontSize: 13, fontStyle: FontStyle.italic,
                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6))),
                const SizedBox(height: 8),
                Text(dua.english, style: TextStyle(fontSize: 13,
                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5))),
              ],
            ),
          );
        },
      ),
    );
  }
}

// ─── Education Category Subview ───
class _EducationView extends StatelessWidget {
  final EducationCategory category;
  const _EducationView({required this.category});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(category.title)),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: category.topics.length,
        itemBuilder: (context, i) {
          final topic = category.topics[i];
          return PremiumCard(
            margin: const EdgeInsets.only(bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(topic.title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w900)),
                Text(topic.titleEn, style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700,
                  color: AppColors.emerald)),
                const SizedBox(height: 12),
                Text(topic.content, style: TextStyle(fontSize: 14, height: 1.7,
                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7))),
              ],
            ),
          );
        },
      ),
    );
  }
}
