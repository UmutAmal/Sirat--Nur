import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/presentation/widgets/word_by_word_renderer.dart';
import 'package:just_audio/just_audio.dart';
import 'package:sirat_i_nur/domain/entities/ayah_entity.dart';
import 'package:sirat_i_nur/presentation/blocs/quran_provider.dart';
import 'package:sirat_i_nur/presentation/blocs/quran_state_provider.dart';
import 'package:sirat_i_nur/core/services/iap_service.dart';
import 'package:sirat_i_nur/presentation/blocs/settings_provider.dart';
import 'package:sirat_i_nur/core/utils/l10n_utils.dart';

class SurahReadingPage extends ConsumerStatefulWidget {
  final int surahNumber;
  final String surahName;

  const SurahReadingPage({
    super.key,
    required this.surahNumber,
    required this.surahName,
  });

  @override
  ConsumerState<SurahReadingPage> createState() => _SurahReadingPageState();
}

class _SurahReadingPageState extends ConsumerState<SurahReadingPage> {
  double _fontSizeBase = 24.0;
  bool _showTranslation = true;
  late AudioPlayer _audioPlayer;
  late final StreamSubscription<PlayerState> _playerStateSub;
  late final StreamSubscription<PlaybackEvent> _playbackEventSub;
  late final ProviderSubscription<SettingsState> _settingsSub;
  bool _isPlaying = false;
  bool _isLoadingAudio = false;
  String? _audioError;
  String _audioSourceLabel = 'Mishary Alafasy';

  String _selectTranslation(BuildContext context, AyahEntity ayah) {
    final isTurkish = Localizations.localeOf(context).languageCode == 'tr';
    if (isTurkish) {
      return ayah.trTranslation.isNotEmpty ? ayah.trTranslation : ayah.enTranslation;
    }
    return ayah.enTranslation.isNotEmpty ? ayah.enTranslation : ayah.trTranslation;
  }

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _playerStateSub = _audioPlayer.playerStateStream.listen((state) {
      if (!mounted) return;
      setState(() {
        _isPlaying = state.playing;
        _isLoadingAudio = state.processingState == ProcessingState.buffering ||
            state.processingState == ProcessingState.loading;
      });
    });
    _playbackEventSub = _audioPlayer.playbackEventStream.listen(
      (_) {},
      onError: (Object error, StackTrace stackTrace) {
        if (!mounted) return;
        setState(() {
          _audioError = trEnGlobal(context, tr: 'Ses hatası. Lütfen tekrar deneyin.', en: 'Audio error. Please retry.');
          _isPlaying = false;
        });
      },
    );
    ref.listen<SettingsState>(settingsProvider, (previous, next) {
      if (previous?.audioVoice != next.audioVoice) {
        _initAudio();
      }
    });
    _initAudio();
  }

  Future<void> _initAudio() async {
    final settings = ref.read(settingsProvider);
    final isFemale = _isFemaleVoice(settings.audioVoice);
    final formattedSurah = widget.surahNumber.toString().padLeft(3, '0');
    final candidates = _buildAudioSources(isFemale, formattedSurah);

    if (mounted) {
      setState(() {
        _audioError = null;
      });
    }

    Object? lastError;
    try {
      await _audioPlayer.stop();
      for (final candidate in candidates) {
        try {
          await _audioPlayer.setUrl(candidate.url);
          if (!mounted) return;
          setState(() {
            _audioSourceLabel = candidate.label;
            _audioError = null;
          });
          return;
        } catch (e) {
          lastError = e;
        }
      }
    } catch (e) {
      lastError = e;
    }

    if (!mounted) return;
    setState(() {
      _audioError = trEnGlobal(context,
          tr: 'Ses bulunamadı. Bağlantıyı kontrol edin veya farklı ses seçin.',
          en: 'Audio unavailable. Check connection or try another voice.');
    });
    if (lastError != null) {
      debugPrint('Error loading audio: $lastError');
    }
  }

  @override
  void dispose() {
    _playerStateSub.cancel();
    _playbackEventSub.cancel();
    _settingsSub.close();
    _audioPlayer.dispose();
    super.dispose();
  }

  void _togglePlay() {
    if (_isPlaying) {
      _audioPlayer.pause();
    } else {
      _audioPlayer.play();
    }
  }

  bool _isFemaleVoice(String voice) {
    return voice.toLowerCase().contains('female');
  }

  // Map of reciter names to their folder names and base URLs
  static const Map<String, _ReciterInfo> _reciters = {
    'Mishary Alafasy': _ReciterInfo('mishari_rashid_al-afasy', 'https://server8.mp3quran.net/afs/'),
    'Mahmoud Khalil Al-Husary': _ReciterInfo('husary', 'https://server8.mp3quran.net/husr/'),
    'Abdul Basit (Murattal)': _ReciterInfo('abdul_basit_murattal', 'https://server8.mp3quran.net/basit_murattal/'),
    'Abdul Basit (Mujawwad)': _ReciterInfo('abdul_basit_mujawwad', 'https://server8.mp3quran.net/basit/'),
    'Saud Al-Shuraim': _ReciterInfo('shuraim', 'https://server8.mp3quran.net/shuraim/'),
    'Abu Bakr al-Shatri': _ReciterInfo('shatri', 'https://server8.mp3quran.net/shatri/'),
    'Saad Al-Ghamdi': _ReciterInfo('ghamadi', 'https://server8.mp3quran.net/ghamadi/'),
    'Hani Ar-Rifai': _ReciterInfo('hani_ar_rifai', 'https://server8.mp3quran.net/hani/'),
    'Maher Al-Muaiqly': _ReciterInfo('maher_al-muaiqly', 'https://server8.mp3quran.net/maher/'),
    'Khaled Al-Qahtani': _ReciterInfo('qhtani', 'https://server8.mp3quran.net/qhtani/'),
  };

  List<_AudioSourceCandidate> _buildAudioSources(bool isFemale, String formattedSurah) {
    if (isFemale) {
      return [
        _AudioSourceCandidate('Female (English)', 'https://download.quranicaudio.com/quran/english_walk/$formattedSurah.mp3'),
        _AudioSourceCandidate('Mishary Alafasy', 'https://server8.mp3quran.net/afs/$formattedSurah.mp3'),
      ];
    }

    // Get the selected reciter from settings
    final selectedVoice = ref.read(settingsProvider).audioVoice;
    final reciterInfo = _reciters[selectedVoice];

    if (reciterInfo != null) {
      // Primary source for selected reciter
      return [
        _AudioSourceCandidate(selectedVoice, '${reciterInfo.baseUrl}$formattedSurah.mp3'),
        // Fallback to Mishary Alafasy
        _AudioSourceCandidate('Mishary Alafasy (Fallback)', 'https://server8.mp3quran.net/afs/$formattedSurah.mp3'),
      ];
    }

    // Default to Mishary Alafasy if no match
    return [
      _AudioSourceCandidate('Mishary Alafasy', 'https://server8.mp3quran.net/afs/$formattedSurah.mp3'),
      _AudioSourceCandidate('Mishary Alafasy (Alt)', 'https://download.quranicaudio.com/quran/mishari_rashid_al-afasy/$formattedSurah.mp3'),
    ];
  }

  Widget _buildAudioStatusCard(SettingsState settings) {
    final theme = Theme.of(context);
    final hasError = _audioError != null;
    final isFallback = _audioSourceLabel != settings.audioVoice;
    final statusText = hasError
        ? _audioError!
        : (isFallback
            ? trEnGlobal(context, 
                tr: 'Seçilen: ${settings.audioVoice}. Kullanılan: $_audioSourceLabel.',
                en: 'Selected: ${settings.audioVoice}. Using: $_audioSourceLabel.')
            : trEnGlobal(context, tr: 'Ses: $_audioSourceLabel', en: 'Voice: $_audioSourceLabel'));

    return Container(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: hasError
            ? theme.colorScheme.errorContainer.withValues(alpha: 0.3)
            : theme.colorScheme.primary.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: hasError 
            ? theme.colorScheme.error.withValues(alpha: 0.2) 
            : theme.colorScheme.primary.withValues(alpha: 0.1),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: hasError
                  ? theme.colorScheme.error.withValues(alpha: 0.1)
                  : theme.colorScheme.primary.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              hasError ? Icons.error_outline_rounded : Icons.volume_up_rounded,
              color: hasError ? theme.colorScheme.error : theme.colorScheme.primary,
              size: 20,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hasError 
                    ? trEnGlobal(context, tr: 'Ses Sorunu', en: 'Audio Issue') 
                    : trEnGlobal(context, tr: 'Ses Hazır', en: 'Audio Ready'),
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w900,
                    fontSize: 12,
                    letterSpacing: 0.5,
                    color: hasError ? theme.colorScheme.error : theme.colorScheme.onSurface,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  statusText,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: _isLoadingAudio ? null : _initAudio,
            icon: Icon(Icons.refresh_rounded, size: 20, color: theme.colorScheme.primary),
            tooltip: trEnGlobal(context, tr: 'Tekrar Dene', en: 'Retry'),
          ),
        ],
      ),
    );
  }

  List<QuranWord> _generateMockWordByWord(String arabic, String translation) {
    if (arabic.isEmpty) return [];
    
    final arabicWords = arabic.split(' ');
    // Naive mock split. In production, this maps to a strict json array.
    final translationWords = translation.split(' '); 
    
    List<QuranWord> words = [];
    for (int i = 0; i < arabicWords.length; i++) {
      words.add(QuranWord(
        arabic: arabicWords[i],
        translation: i < translationWords.length ? translationWords[i] : '',
      ));
    }
    return words;
  }

  @override
  Widget build(BuildContext context) {
    final ayahsAsync = ref.watch(surahAyahsProvider(widget.surahNumber));
    final isPro = ref.watch(proStatusProvider);
    final settings = ref.watch(settingsProvider);
    final canPlay = !_isLoadingAudio && _audioError == null;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.surahName, style: const TextStyle(fontWeight: FontWeight.w900)),
        actions: [
          IconButton(
            icon: Icon(_showTranslation ? Icons.translate : Icons.g_translate),
            onPressed: () {
              setState(() {
                _showTranslation = !_showTranslation;
              });
            },
            tooltip: trEnGlobal(
              context,
              tr: 'Tam çeviriyi aç/kapat',
              en: 'Toggle Full Translation',
            ),
          ),
          IconButton(
            icon: const Icon(Icons.zoom_in),
            onPressed: () {
              setState(() {
                if (_fontSizeBase < 48) _fontSizeBase += 2;
              });
            },
          ),
          IconButton(
            icon: const Icon(Icons.zoom_out),
            onPressed: () {
              setState(() {
                if (_fontSizeBase > 16) _fontSizeBase -= 2;
              });
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: canPlay ? _togglePlay : null,
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        child: _isLoadingAudio 
          ? const CircularProgressIndicator(color: Colors.white)
          : Icon(_isPlaying ? Icons.pause_rounded : Icons.play_arrow_rounded),
      ),
      body: ayahsAsync.when(
        data: (ayahs) {
          if (ayahs.isEmpty) {
            return Center(
              child: Text(
                trEnGlobal(context, tr: 'Ayet bulunamadı.', en: 'No Ayahs found.'),
              ),
            );
          }
          return Column(
            children: [
              _buildAudioStatusCard(settings),
              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24).copyWith(bottom: 80),
                  itemCount: ayahs.length,
                  separatorBuilder: (context, index) => const Divider(height: 32),
                  itemBuilder: (context, index) {
                    final ayah = ayahs[index];
                    final translationText = _selectTranslation(context, ayah);
                    final mockWords = _generateMockWordByWord(ayah.text, translationText);
                    
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             Container(
                              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                '${ayah.numberInSurah}',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 12,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                 IconButton(
                                  icon: Icon(Icons.history_edu_rounded, color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.6)),
                                  tooltip: trEnGlobal(
                                    context,
                                    tr: 'Son okunan olarak ayarla',
                                    en: 'Set as Last Read',
                                  ),
                                  onPressed: () {
                                    ref.read(lastReadProvider.notifier).saveLastRead(
                                      widget.surahNumber,
                                      widget.surahName,
                                      ayah.numberInSurah,
                                    );
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        behavior: SnackBarBehavior.floating,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                        content: Text(
                                          trEnGlobal(
                                            context,
                                            tr: 'Ayet ${ayah.numberInSurah} son okunan olarak işaretlendi',
                                            en: 'Marked Ayah ${ayah.numberInSurah} as Last Read',
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                Consumer(
                                  builder: (context, ref, child) {
                                     final isBookmarked = ref.watch(bookmarksProvider.notifier).isBookmarked(widget.surahNumber, ayah.numberInSurah);
                                     return IconButton(
                                       icon: Icon(isBookmarked ? Icons.bookmark_rounded : Icons.bookmark_border_rounded),
                                       color: isBookmarked ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.primary.withValues(alpha: 0.6),
                                       onPressed: () {
                                         ref.read(bookmarksProvider.notifier).toggleBookmark(
                                            widget.surahNumber,
                                            widget.surahName,
                                            ayah.numberInSurah,
                                         );
                                       },
                                     );
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 16),
                        
                        WordByWordRenderer(
                          words: mockWords,
                          isPremium: isPro,
                          textStyle: TextStyle(
                            fontFamily: 'Amiri',
                            fontSize: _fontSizeBase,
                            height: 1.8,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        
                        if (_showTranslation) ...[
                          const SizedBox(height: 16),
                          Text(
                            translationText,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: _fontSizeBase * 0.65,
                              height: 1.5,
                              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.8),
                            ),
                          ),
                        ]
                      ],
                    );
                  },
                ),
              ),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, st) => Center(
          child: Text(
            trEnGlobal(context, tr: 'Hata: $err', en: 'Error: $err'),
          ),
        ),
      ),
    );
  }
}

class _AudioSourceCandidate {
  final String label;
  final String url;

  const _AudioSourceCandidate(this.label, this.url);
}

class _ReciterInfo {
  final String folder;
  final String baseUrl;

  const _ReciterInfo(this.folder, this.baseUrl);
}

