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
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: hasError
            ? theme.colorScheme.errorContainer
            : theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(
            hasError ? Icons.error_outline : Icons.volume_up,
            color: hasError ? theme.colorScheme.error : theme.colorScheme.primary,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hasError 
                    ? trEnGlobal(context, tr: 'Ses sorunu', en: 'Audio issue') 
                    : trEnGlobal(context, tr: 'Ses hazır', en: 'Audio ready'),
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: hasError ? theme.colorScheme.error : theme.colorScheme.onSurface,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  statusText,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                ),
              ],
            ),
          ),
          TextButton.icon(
            onPressed: _isLoadingAudio ? null : _initAudio,
            icon: const Icon(Icons.refresh, size: 18),
            label: Text(trEnGlobal(context, tr: 'Tekrar Dene', en: 'Retry')),
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
        title: Text(widget.surahName),
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
        child: _isLoadingAudio 
          ? const CircularProgressIndicator(color: Colors.white)
          : Icon(_isPlaying ? Icons.pause : Icons.play_arrow),
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
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.surfaceContainerHighest,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Text(
                                '${ayah.numberInSurah}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.history_edu),
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
                                       icon: Icon(isBookmarked ? Icons.bookmark : Icons.bookmark_border),
                                       color: isBookmarked ? Theme.of(context).colorScheme.primary : null,
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

