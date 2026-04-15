import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sirat_i_nur/core/services/offline_audio_service.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/features/quran/providers/bundled_quran_provider.dart';
import 'package:sirat_i_nur/features/quran/surah_display_info.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

class SurahReadingPage extends ConsumerStatefulWidget {
  final int surahNumber;

  const SurahReadingPage({super.key, required this.surahNumber});

  @override
  ConsumerState<SurahReadingPage> createState() => _SurahReadingPageState();
}

class _SurahReadingPageState extends ConsumerState<SurahReadingPage> {
  List<dynamic> _ayahs = [];
  Map<String, dynamic>? _surahData;
  bool _isLoading = true;
  String? _error;
  late final AudioPlayer _audioPlayer;
  bool _isPlaying = false;
  bool _isAudioLoading = false;
  bool _isBookmarked = false;
  final Set<int> _bookmarkedAyahs = <int>{};

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _audioPlayer.playerStateStream.listen((state) {
      if (!mounted) return;
      setState(() {
        _isPlaying = state.playing;
        if (state.processingState == ProcessingState.completed) {
          _isPlaying = false;
          _audioPlayer.seek(Duration.zero);
          _audioPlayer.pause();
        }
      });
    });
    _loadBookmarks();
    _loadSurah();
  }

  Future<void> _loadBookmarks() async {
    final prefs = await SharedPreferences.getInstance();
    final surahKey = 'bookmark_surah_${widget.surahNumber}';
    final ayahKey = 'bookmark_ayahs_${widget.surahNumber}';
    final savedAyahs = prefs.getStringList(ayahKey);
    if (!mounted) return;
    setState(() {
      _isBookmarked = prefs.getBool(surahKey) ?? false;
      if (savedAyahs != null) {
        _bookmarkedAyahs.addAll(savedAyahs.map(int.tryParse).whereType<int>());
      }
    });
  }

  Future<void> _saveBookmarks() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('bookmark_surah_${widget.surahNumber}', _isBookmarked);
    await prefs.setStringList(
      'bookmark_ayahs_${widget.surahNumber}',
      _bookmarkedAyahs.map((e) => e.toString()).toList(),
    );
  }

  Future<void> _loadSurah({bool forceRefresh = false}) async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      if (forceRefresh) {
        ref.invalidate(bundledQuranProvider);
      }
      final data = await ref.read(bundledQuranProvider.future);
      final surahData = findBundledSurahData(data, widget.surahNumber);

      if (!mounted) return;
      final l10n = AppLocalizations.of(context)!;
      setState(() {
        _surahData = surahData;
        _ayahs = surahData?['ayahs'] as List<dynamic>? ?? const <dynamic>[];
        _error = surahData == null ? l10n.noResults : null;
        _isLoading = false;
      });
    } catch (_) {
      debugPrint('Quran surah load failed');
      if (mounted) {
        final l10n = AppLocalizations.of(context)!;
        setState(() {
          _isLoading = false;
          _error = l10n.quranLoadFailed;
        });
      }
    }
  }

  Future<void> _togglePlay(String audioVoice) async {
    if (_isPlaying) {
      await _audioPlayer.pause();
      return;
    }

    if (!mounted) return;
    setState(() => _isAudioLoading = true);

    final normalizedVoice = audioVoice.toLowerCase();

    try {
      final reciterId = _reciterIdForVoice(normalizedVoice);
      if (reciterId != null) {
        final localPath = await OfflineAudioService.getAudioPath(
          widget.surahNumber,
          reciterId,
        );
        if (await File(localPath).exists()) {
          await _audioPlayer.setFilePath(localPath);
          await _audioPlayer.play();
          return;
        }
      }

      final candidates = await _audioCandidatesForVoice(normalizedVoice);

      var hadAudioFailure = false;
      for (var index = 0; index < candidates.length; index++) {
        final url = candidates[index];
        try {
          await _audioPlayer.setUrl(url);
          await _audioPlayer.play();
          return;
        } catch (_) {
          hadAudioFailure = true;
          debugPrint(
            'Audio source failed for reciter $reciterId '
            'at candidate ${index + 1}/${candidates.length}',
          );
        }
      }

      if (mounted) {
        final l10n = AppLocalizations.of(context)!;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('${l10n.streamError}. ${l10n.checkConnection}'),
          ),
        );
      }

      if (hadAudioFailure) {
        debugPrint('Audio playback failed for all verified sources');
      }
    } finally {
      if (mounted) {
        setState(() => _isAudioLoading = false);
      }
    }
  }

  String? _reciterIdForVoice(String normalizedVoice) {
    if (normalizedVoice.contains('sudais')) {
      return 'sudais';
    }
    if (normalizedVoice.contains('abdulbaset') ||
        normalizedVoice.contains('abdulbasit')) {
      return 'abdul_basit_murattal';
    }
    if (normalizedVoice.contains('alafasy') ||
        normalizedVoice.contains('mishary')) {
      return 'alafasy';
    }
    return 'alafasy';
  }

  Future<List<String>> _audioCandidatesForVoice(String normalizedVoice) async {
    final reciterId = _reciterIdForVoice(normalizedVoice) ?? 'alafasy';
    final url = await OfflineReciters.getSurahUrl(
      reciterId,
      widget.surahNumber,
    );
    return [if (url != null && url.isNotEmpty) url];
  }

  Future<void> _shareAyah({
    required SurahDisplayInfo surahInfo,
    required Map<String, dynamic> ayah,
    required bool isTr,
  }) async {
    final ayahNumber = ayah['numberInSurah']?.toString() ?? '-';
    final arabicText = (ayah['text'] ?? '').toString().trim();
    final translation = (isTr ? ayah['tr_translation'] : ayah['en_translation'])
        ?.toString()
        .trim();

    final header = isTr
        ? '${surahInfo.transliteration} Suresi - Ayet $ayahNumber'
        : '${surahInfo.transliteration} - Ayah $ayahNumber';

    await SharePlus.instance.share(
      ShareParams(
        text: [
          header,
          arabicText,
          if (translation != null && translation.isNotEmpty) translation,
        ].join('\n\n'),
      ),
    );
  }

  void _toggleAyahBookmark(int ayahNumber) {
    final alreadySaved = _bookmarkedAyahs.contains(ayahNumber);
    setState(() {
      if (alreadySaved) {
        _bookmarkedAyahs.remove(ayahNumber);
      } else {
        _bookmarkedAyahs.add(ayahNumber);
      }
    });
    _saveBookmarks();

    final l10n = AppLocalizations.of(context)!;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(milliseconds: 900),
        content: Text(alreadySaved ? l10n.removeBookmark : l10n.addBookmark),
      ),
    );
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final surahInfo = resolveSurahDisplayInfo(_surahData, widget.surahNumber);
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final settings = ref.watch(settingsProvider);
    final l10n = AppLocalizations.of(context)!;
    final locale = Localizations.localeOf(context);
    final langCode = settings.languageCode ?? locale.languageCode;
    final isTr = langCode.toLowerCase().startsWith('tr');

    return Scaffold(
      appBar: AppBar(
        title: Text(surahInfo.transliteration),
        actions: [
          IconButton(
            icon: Icon(
              _isBookmarked
                  ? Icons.bookmark_rounded
                  : Icons.bookmark_border_rounded,
            ),
            color: _isBookmarked ? AppColors.emerald : null,
            onPressed: () {
              setState(() => _isBookmarked = !_isBookmarked);
              _saveBookmarks();
              final actionLabel = _isBookmarked
                  ? l10n.addBookmark
                  : l10n.removeBookmark;
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  duration: const Duration(seconds: 1),
                  content: Text(actionLabel),
                ),
              );
            },
          ),
          IconButton(
            icon: _isAudioLoading
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : Icon(
                    _isPlaying
                        ? Icons.pause_circle_filled_rounded
                        : Icons.volume_up_rounded,
                  ),
            color: _isPlaying || _isAudioLoading ? AppColors.emerald : null,
            onPressed: () => _togglePlay(settings.audioVoice),
          ),
        ],
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(color: AppColors.emerald),
            )
          : _error != null
          ? _buildErrorState(context, l10n)
          : ListView.builder(
              padding: const EdgeInsets.all(20),
              itemCount: _ayahs.length + 2,
              itemBuilder: (context, i) {
                if (i == 0) {
                  return Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
                    margin: const EdgeInsets.only(bottom: 24),
                    decoration: BoxDecoration(
                      gradient: AppColors.emeraldGradient,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Text(
                          surahInfo.nameArabic,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Amiri',
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          surahInfo.translatedName,
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.8),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '${surahInfo.ayahCount} ${l10n.ayahs} • ${surahInfo.revelationType}',
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.6),
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  );
                }

                if (i == 1) {
                  if (widget.surahNumber != 9) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 24),
                      child: Text(
                        'بِسْمِ ٱللَّٰهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w900,
                          color: AppColors.emerald,
                          height: 2.0,
                          fontFamily: 'Amiri',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    );
                  }
                  return const SizedBox.shrink();
                }

                final ayah = _ayahs[i - 2] as Map<String, dynamic>;
                final textAr = (ayah['text'] ?? '').toString();
                final textTrans =
                    (isTr ? ayah['tr_translation'] : ayah['en_translation'])
                        ?.toString() ??
                    '';
                final ayahNumber = ayah['numberInSurah'] as int? ?? 0;
                final isAyahBookmarked = _bookmarkedAyahs.contains(ayahNumber);

                return Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: isDark ? AppColors.darkCard : AppColors.cardLight,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.04),
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              color: AppColors.emeraldSurface,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                '$ayahNumber',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: AppColors.emerald,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            icon: const Icon(Icons.share_rounded, size: 18),
                            onPressed: () => _shareAyah(
                              surahInfo: surahInfo,
                              ayah: ayah,
                              isTr: isTr,
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              isAyahBookmarked
                                  ? Icons.bookmark_rounded
                                  : Icons.bookmark_border_rounded,
                              size: 18,
                              color: isAyahBookmarked
                                  ? AppColors.emerald
                                  : null,
                            ),
                            onPressed: () => _toggleAyahBookmark(ayahNumber),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Text(
                        textAr,
                        style: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          height: 2.2,
                          fontFamily: 'Amiri',
                        ),
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                      ),
                      const SizedBox(height: 12),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          textTrans,
                          style: TextStyle(
                            fontSize: 14,
                            height: 1.7,
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurface.withValues(alpha: 0.8),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
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
              _error ?? l10n.noResults,
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
              onPressed: () => _loadSurah(forceRefresh: true),
              icon: const Icon(Icons.refresh_rounded),
              label: Text(l10n.retry),
            ),
          ],
        ),
      ),
    );
  }
}
