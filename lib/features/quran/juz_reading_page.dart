import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/features/quran/providers/bundled_quran_provider.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

class JuzReadingPage extends ConsumerStatefulWidget {
  final int juzNumber;
  const JuzReadingPage({super.key, required this.juzNumber});

  @override
  ConsumerState<JuzReadingPage> createState() => _JuzReadingPageState();
}

class _JuzReadingPageState extends ConsumerState<JuzReadingPage> {
  bool _isLoading = true;
  String? _error;
  List<_JuzAyahEntry> _entries = const [];

  @override
  void initState() {
    super.initState();
    _loadJuzData();
  }

  Future<void> _loadJuzData({bool forceRefresh = false}) async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      if (forceRefresh) {
        ref.invalidate(bundledQuranProvider);
      }
      final data = await ref.read(bundledQuranProvider.future);
      final entries = <_JuzAyahEntry>[];

      for (final surah in data) {
        final surahMap = surah;
        final surahNumber = (surahMap['number'] as num?)?.toInt() ?? 0;
        final surahArabicName = (surahMap['name'] ?? '').toString();
        final surahEnglishName = (surahMap['englishName'] ?? '').toString();

        final ayahs =
            (surahMap['ayahs'] as List<dynamic>? ?? const <dynamic>[]);
        for (final ayah in ayahs) {
          final ayahMap = ayah as Map<String, dynamic>;
          final juz = (ayahMap['juz'] as num?)?.toInt();
          if (juz != widget.juzNumber) continue;

          entries.add(
            _JuzAyahEntry(
              surahNumber: surahNumber,
              surahArabicName: surahArabicName,
              surahEnglishName: surahEnglishName,
              numberInSurah: (ayahMap['numberInSurah'] as num?)?.toInt() ?? 0,
              arabicText: (ayahMap['text'] ?? '').toString(),
              englishTranslation: (ayahMap['en_translation'] ?? '').toString(),
              turkishTranslation: (ayahMap['tr_translation'] ?? '').toString(),
            ),
          );
        }
      }

      if (!mounted) return;
      setState(() {
        _entries = entries;
        _isLoading = false;
      });
    } catch (error) {
      debugPrint('Quran juz load failed: $error');
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
    final l10n = AppLocalizations.of(context)!;
    final settings = ref.watch(settingsProvider);
    final isTurkish = settings.languageCode == 'tr';
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text('${l10n.juz} ${widget.juzNumber}'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () => _loadJuzData(forceRefresh: true),
          ),
        ],
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(color: AppColors.emerald),
            )
          : _error != null
          ? _buildErrorState(context, l10n)
          : _entries.isEmpty
          ? _buildEmptyState(context, l10n)
          : ListView.builder(
              padding: const EdgeInsets.all(20),
              itemCount: _entries.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return _buildHeader(context, l10n, isDark);
                }

                final entry = _entries[index - 1];
                final previous = index > 1 ? _entries[index - 2] : null;
                final shouldShowSurahHeader =
                    previous == null ||
                    previous.surahNumber != entry.surahNumber;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (shouldShowSurahHeader)
                      _buildSurahHeader(context, entry),
                    _buildAyahCard(context, entry, isTurkish, isDark),
                  ],
                );
              },
            ),
    );
  }

  Widget _buildHeader(
    BuildContext context,
    AppLocalizations l10n,
    bool isDark,
  ) {
    final firstSurah = _entries.isNotEmpty
        ? _entries.first.surahNumber
        : widget.juzNumber;
    final lastSurah = _entries.isNotEmpty
        ? _entries.last.surahNumber
        : widget.juzNumber;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        gradient: AppColors.emeraldGradient,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            'الجزء ${widget.juzNumber}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w900,
              fontFamily: 'Amiri',
            ),
          ),
          const SizedBox(height: 8),
          Text(
            '${l10n.juz} ${widget.juzNumber}',
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.85),
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            '${_entries.length} ${l10n.ayahs} • ${l10n.surah} $firstSurah-$lastSurah',
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.75),
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSurahHeader(BuildContext context, _JuzAyahEntry entry) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.emeraldSurface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 28,
            height: 28,
            decoration: const BoxDecoration(
              color: AppColors.emerald,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                '${entry.surahNumber}',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              entry.surahEnglishName,
              style: const TextStyle(
                color: AppColors.emeraldDeep,
                fontWeight: FontWeight.w900,
                fontSize: 13,
              ),
            ),
          ),
          Text(
            entry.surahArabicName,
            style: const TextStyle(
              color: AppColors.emerald,
              fontWeight: FontWeight.w900,
              fontSize: 18,
              fontFamily: 'Amiri',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAyahCard(
    BuildContext context,
    _JuzAyahEntry entry,
    bool isTurkish,
    bool isDark,
  ) {
    final translation = isTurkish
        ? entry.turkishTranslation
        : entry.englishTranslation;

    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkCard : AppColors.cardLight,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.black.withValues(alpha: 0.04), blurRadius: 8),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: AppColors.emeraldSurface,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    '${entry.numberInSurah}',
                    style: const TextStyle(
                      color: AppColors.emerald,
                      fontWeight: FontWeight.w900,
                      fontSize: 11,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            entry.arabicText,
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
            style: const TextStyle(
              fontSize: 24,
              height: 1.95,
              fontWeight: FontWeight.w700,
              fontFamily: 'Amiri',
            ),
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              translation,
              style: TextStyle(
                fontSize: 14,
                height: 1.65,
                color: Theme.of(
                  context,
                ).colorScheme.onSurface.withValues(alpha: 0.8),
              ),
            ),
          ),
        ],
      ),
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
              onPressed: () => _loadJuzData(forceRefresh: true),
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
              '${l10n.juz} ${widget.juzNumber}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 8),
            Text(
              l10n.noResults,
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

class _JuzAyahEntry {
  final int surahNumber;
  final String surahArabicName;
  final String surahEnglishName;
  final int numberInSurah;
  final String arabicText;
  final String englishTranslation;
  final String turkishTranslation;

  const _JuzAyahEntry({
    required this.surahNumber,
    required this.surahArabicName,
    required this.surahEnglishName,
    required this.numberInSurah,
    required this.arabicText,
    required this.englishTranslation,
    required this.turkishTranslation,
  });
}
