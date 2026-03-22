import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/constants/quran_data.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';

class SurahReadingPage extends ConsumerStatefulWidget {
  final int surahNumber;
  const SurahReadingPage({super.key, required this.surahNumber});

  @override
  ConsumerState<SurahReadingPage> createState() => _SurahReadingPageState();
}

class _SurahReadingPageState extends ConsumerState<SurahReadingPage> {
  List<dynamic> _ayahs = [];
  bool _isLoading = true;
  late AudioPlayer _audioPlayer;
  bool _isPlaying = false;
  bool _isAudioLoading = false;
  bool _isBookmarked = false;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _audioPlayer.playerStateStream.listen((state) {
      if (mounted) {
        setState(() {
          _isPlaying = state.playing;
          if (state.processingState == ProcessingState.completed) {
            _isPlaying = false;
            _audioPlayer.seek(Duration.zero);
            _audioPlayer.pause();
          }
        });
      }
    });
    _loadSurah();
  }

  Future<void> _loadSurah() async {
    try {
      final jsonStr = await rootBundle.loadString(
        'assets/data/full_quran.json',
      );
      final List<dynamic> data = jsonDecode(jsonStr);
      final surahData = data.firstWhere(
        (s) => s['number'] == widget.surahNumber,
        orElse: () => data.first,
      );
      if (mounted) {
        setState(() {
          _ayahs = surahData['ayahs'] ?? [];
          _isLoading = false;
        });
      }
    } catch (e) {
      debugPrint('Error loading quran json: $e');
      if (mounted) setState(() => _isLoading = false);
    }
  }

  Future<void> _togglePlay(String audioVoice) async {
    if (_isPlaying) {
      await _audioPlayer.pause();
      return;
    }

    setState(() => _isAudioLoading = true);
    final surahNumber = widget.surahNumber.toString().padLeft(3, '0');
    final normalizedVoice = audioVoice.toLowerCase();
    final candidates = _audioCandidatesForVoice(
      normalizedVoice,
    ).map((baseUrl) => '$baseUrl/$surahNumber.mp3').toList();

    Object? lastError;
    for (final url in candidates) {
      try {
        await _audioPlayer.setUrl(url);
        await _audioPlayer.play();
        if (!mounted) return;
        setState(() => _isAudioLoading = false);
        return;
      } catch (error) {
        lastError = error;
        debugPrint('Audio source failed: $url, error: $error');
      }
    }

    if (!mounted) return;
    setState(() => _isAudioLoading = false);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'Could not play audio. Please check connection and try again.',
        ),
      ),
    );
    if (lastError != null) {
      debugPrint('Audio playback failed for all sources: $lastError');
    }
  }

  List<String> _audioCandidatesForVoice(String normalizedVoice) {
    if (normalizedVoice.contains('sudais')) {
      return const [
        'https://download.quranicaudio.com/quran/abdurrahmaan_as-sudays',
        'https://server8.mp3quran.net/sds',
      ];
    }
    if (normalizedVoice.contains('abdulbaset') ||
        normalizedVoice.contains('abdulbasit')) {
      return const [
        'https://download.quranicaudio.com/quran/abdul_basit_murattal',
        'https://server8.mp3quran.net/basit',
      ];
    }

    return const [
      'https://download.quranicaudio.com/quran/mishaari_raashid_al_3afaasee',
      'https://server8.mp3quran.net/afs',
    ];
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final surahInfo = allSurahs.firstWhere(
      (s) => s.number == widget.surahNumber,
      orElse: () => allSurahs.first,
    );
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final settings = ref.watch(settingsProvider);
    final isTr = settings.languageCode == 'tr';

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
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    _isBookmarked ? 'Bookmark Added' : 'Bookmark Removed',
                  ),
                  duration: const Duration(seconds: 1),
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
                          surahInfo.nameEnglish,
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.8),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '${surahInfo.ayahCount} Ayat • ${surahInfo.revelationType}',
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
                        'بِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ',
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

                final ayah = _ayahs[i - 2];
                final textAr = ayah['text'] ?? '';
                final textTrans = isTr
                    ? (ayah['tr_translation'] ?? '')
                    : (ayah['en_translation'] ?? '');

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
                                '${ayah['numberInSurah']}',
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
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.bookmark_border_rounded,
                              size: 18,
                            ),
                            onPressed: () {},
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
}
