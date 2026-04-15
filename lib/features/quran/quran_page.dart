import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/features/quran/providers/bundled_quran_provider.dart';
import 'package:sirat_i_nur/features/quran/surah_display_info.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

class QuranPage extends ConsumerStatefulWidget {
  const QuranPage({super.key});

  @override
  ConsumerState<QuranPage> createState() => _QuranPageState();
}

class _QuranPageState extends ConsumerState<QuranPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final _searchController = TextEditingController();
  List<SurahDisplayInfo> _surahs = const [];
  bool _isLoading = true;
  String? _error;
  String _query = '';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _loadSurahs();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _loadSurahs({bool forceRefresh = false}) async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      if (forceRefresh) {
        ref.invalidate(bundledQuranProvider);
      }
      final data = await ref.read(bundledQuranProvider.future);

      if (!mounted) return;
      setState(() {
        _surahs = parseBundledSurahDisplayInfoList(data);
        _isLoading = false;
      });
    } catch (error) {
      debugPrint('Quran index load failed: $error');
      if (!mounted) return;
      final l10n = AppLocalizations.of(context)!;
      setState(() {
        _isLoading = false;
        _error = l10n.quranLoadFailed;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final l10n = AppLocalizations.of(context)!;
    final filteredSurahs = filterSurahDisplayInfos(_surahs, _query);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.quran),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: l10n.surahs),
            Tab(text: l10n.juz),
          ],
          indicatorSize: TabBarIndicatorSize.label,
          labelStyle: const TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 14,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: _searchController,
              onChanged: (value) => setState(() => _query = value),
              enabled: !_isLoading && _error == null,
              decoration: InputDecoration(
                hintText: '${l10n.search} ${l10n.surah.toLowerCase()}...',
                prefixIcon: const Icon(Icons.search_rounded),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: isDark
                    ? AppColors.darkSurface
                    : AppColors.emeraldSurface,
              ),
            ),
          ),
          Expanded(child: _buildBody(context, filteredSurahs)),
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context, List<SurahDisplayInfo> surahs) {
    final l10n = AppLocalizations.of(context)!;

    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(color: AppColors.emerald),
      );
    }

    if (_error != null) {
      return _buildErrorState(context, l10n);
    }

    return TabBarView(
      controller: _tabController,
      children: [
        surahs.isEmpty
            ? _buildEmptyState(context, l10n)
            : _buildSurahList(context, surahs),
        _buildJuzList(context),
      ],
    );
  }

  Widget _buildSurahList(BuildContext context, List<SurahDisplayInfo> surahs) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: surahs.length,
      itemBuilder: (context, index) {
        final l10n = AppLocalizations.of(context)!;
        final surah = surahs[index];

        return Container(
          margin: const EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.dark
                ? AppColors.darkCard
                : AppColors.cardLight,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.04),
                blurRadius: 8,
              ),
            ],
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 4,
            ),
            leading: Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: AppColors.emeraldSurface,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  '${surah.number}',
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    color: AppColors.emerald,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            title: Row(
              children: [
                Expanded(
                  child: Text(
                    surah.transliteration,
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 15,
                    ),
                  ),
                ),
                Text(
                  surah.nameArabic,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: AppColors.emerald,
                  ),
                ),
              ],
            ),
            subtitle: Row(
              children: [
                Expanded(
                  child: Text(
                    surah.translatedName,
                    style: TextStyle(
                      fontSize: 12,
                      color: Theme.of(
                        context,
                      ).colorScheme.onSurface.withValues(alpha: 0.5),
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: surah.revelationType == 'Meccan'
                        ? AppColors.emeraldSurface
                        : AppColors.goldLight,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    '${surah.ayahCount} ${l10n.ayahs.toLowerCase()} • ${surah.revelationType}',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: surah.revelationType == 'Meccan'
                          ? AppColors.emerald
                          : AppColors.gold,
                    ),
                  ),
                ),
              ],
            ),
            onTap: () => context.push(
              '/quran/reading/${surah.number}',
              extra: surah.transliteration,
            ),
          ),
        );
      },
    );
  }

  Widget _buildJuzList(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: 30,
      itemBuilder: (context, index) {
        final num = index + 1;
        return Container(
          margin: const EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.dark
                ? AppColors.darkCard
                : AppColors.cardLight,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.04),
                blurRadius: 8,
              ),
            ],
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            leading: Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: AppColors.emeraldSurface,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  '$num',
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    color: AppColors.emerald,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            title: Text(
              '${l10n.juz} $num',
              style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
            ),
            subtitle: Text(
              '${l10n.page} $num',
              style: TextStyle(
                fontSize: 12,
                color: Theme.of(
                  context,
                ).colorScheme.onSurface.withValues(alpha: 0.5),
              ),
            ),
            trailing: const Icon(Icons.chevron_right_rounded),
            onTap: () =>
                context.push('/quran/juz/$num', extra: '${l10n.juz} $num'),
          ),
        );
      },
    );
  }

  Widget _buildErrorState(BuildContext context, AppLocalizations l10n) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.error_outline_rounded,
              color: Colors.redAccent,
              size: 44,
            ),
            const SizedBox(height: 12),
            Text(
              l10n.error,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 8),
            Text(
              _error ?? '',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                color: Theme.of(
                  context,
                ).colorScheme.onSurface.withValues(alpha: 0.6),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () => _loadSurahs(forceRefresh: true),
              icon: const Icon(Icons.refresh_rounded),
              label: Text(l10n.retry),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context, AppLocalizations l10n) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.menu_book_rounded,
              color: AppColors.emerald,
              size: 44,
            ),
            const SizedBox(height: 12),
            Text(
              l10n.noResults,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 8),
            Text(
              '${l10n.search} ${l10n.surah.toLowerCase()}',
              style: TextStyle(
                fontSize: 13,
                color: Theme.of(
                  context,
                ).colorScheme.onSurface.withValues(alpha: 0.6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
