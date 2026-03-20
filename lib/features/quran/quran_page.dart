import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/constants/quran_data.dart';

class QuranPage extends ConsumerStatefulWidget {
  const QuranPage({super.key});
  @override
  ConsumerState<QuranPage> createState() => _QuranPageState();
}

class _QuranPageState extends ConsumerState<QuranPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final _searchController = TextEditingController();
  String _query = '';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final filteredSurahs = _query.isEmpty
      ? allSurahs
      : allSurahs.where((s) =>
          s.nameArabic.contains(_query) ||
          s.nameEnglish.toLowerCase().contains(_query.toLowerCase()) ||
          s.nameTurkish.toLowerCase().contains(_query.toLowerCase()) ||
          s.transliteration.toLowerCase().contains(_query.toLowerCase()) ||
          s.number.toString() == _query
        ).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quran'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [Tab(text: 'Surahs'), Tab(text: 'Juz')],
          indicatorSize: TabBarIndicatorSize.label,
          labelStyle: const TextStyle(fontWeight: FontWeight.w900, fontSize: 14),
        ),
      ),
      body: Column(
        children: [
          // Search
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: _searchController,
              onChanged: (v) => setState(() => _query = v),
              decoration: InputDecoration(
                hintText: 'Search surah...',
                prefixIcon: const Icon(Icons.search_rounded),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: BorderSide.none),
                filled: true,
                fillColor: isDark ? AppColors.darkSurface : AppColors.emeraldSurface,
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildSurahList(context, filteredSurahs),
                _buildJuzList(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSurahList(BuildContext context, List<SurahData> surahs) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: surahs.length,
      itemBuilder: (context, index) {
        final surah = surahs[index];
        return Container(
          margin: const EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkCard : AppColors.cardLight,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.04), blurRadius: 8)],
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            leading: Container(
              width: 44, height: 44,
              decoration: BoxDecoration(
                color: AppColors.emeraldSurface,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(child: Text('${surah.number}', style: const TextStyle(
                fontWeight: FontWeight.w900, color: AppColors.emerald, fontSize: 14))),
            ),
            title: Row(
              children: [
                Expanded(child: Text(surah.transliteration, style: const TextStyle(
                  fontWeight: FontWeight.w800, fontSize: 15))),
                Text(surah.nameArabic, style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w900, color: AppColors.emerald)),
              ],
            ),
            subtitle: Row(
              children: [
                Text(surah.nameEnglish, style: TextStyle(fontSize: 12,
                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5))),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: surah.revelationType == 'Meccan'
                      ? AppColors.emeraldSurface
                      : AppColors.goldLight,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text('${surah.ayahCount} ayat • ${surah.revelationType}',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700,
                      color: surah.revelationType == 'Meccan' ? AppColors.emerald : AppColors.gold)),
                ),
              ],
            ),
            onTap: () => context.push('/quran/reading/${surah.number}', extra: surah.transliteration),
          ),
        );
      },
    );
  }

  Widget _buildJuzList(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: 30,
      itemBuilder: (context, index) {
        final num = index + 1;
        return Container(
          margin: const EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkCard : AppColors.cardLight,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.04), blurRadius: 8)],
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            leading: Container(
              width: 44, height: 44,
              decoration: BoxDecoration(
                color: AppColors.emeraldSurface,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(child: Text('$num', style: const TextStyle(
                fontWeight: FontWeight.w900, color: AppColors.emerald, fontSize: 16))),
            ),
            title: Text('Juz $num', style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 15)),
            subtitle: Text('Para $num', style: TextStyle(fontSize: 12,
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5))),
            trailing: const Icon(Icons.chevron_right_rounded),
            onTap: () => context.push('/quran/juz/$num', extra: 'Juz $num'),
          ),
        );
      },
    );
  }
}
