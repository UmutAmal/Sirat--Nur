import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/domain/entities/ayah_entity.dart';
import 'package:sirat_i_nur/presentation/blocs/quran_provider.dart';
import 'package:sirat_i_nur/presentation/blocs/quran_state_provider.dart';
import 'package:sirat_i_nur/core/services/iap_service.dart';
import 'package:sirat_i_nur/presentation/widgets/word_by_word_renderer.dart';
import 'package:sirat_i_nur/core/utils/tr_en.dart';

class JuzReadingPage extends ConsumerStatefulWidget {
  final int juzNumber;
  final String title;

  const JuzReadingPage({
    super.key,
    required this.juzNumber,
    required this.title,
  });

  @override
  ConsumerState<JuzReadingPage> createState() => _JuzReadingPageState();
}

class _JuzReadingPageState extends ConsumerState<JuzReadingPage> {
  double _fontSizeBase = 24.0;
  bool _showTranslation = true;

  String _selectTranslation(BuildContext context, AyahEntity ayah) {
    final isTurkish = Localizations.localeOf(context).languageCode == 'tr';
    if (isTurkish) {
      return ayah.trTranslation.isNotEmpty ? ayah.trTranslation : ayah.enTranslation;
    }
    return ayah.enTranslation.isNotEmpty ? ayah.enTranslation : ayah.trTranslation;
  }

  List<QuranWord> _generateMockWordByWord(String arabic, String translation) {
    if (arabic.isEmpty) return [];
    
    final arabicWords = arabic.split(' ');
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
    final ayahsAsync = ref.watch(juzAyahsProvider(widget.juzNumber));
    final isPro = ref.watch(proStatusProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: const TextStyle(fontWeight: FontWeight.w900)),
        actions: [
          IconButton(
            icon: Icon(_showTranslation ? Icons.translate : Icons.g_translate),
            onPressed: () {
              setState(() {
                _showTranslation = !_showTranslation;
              });
            },
            tooltip: trEn(context, tr: 'Tam çeviriyi aç/kapat', en: 'Toggle Full Translation'),
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
      body: ayahsAsync.when(
        data: (ayahs) {
          if (ayahs.isEmpty) {
            return Center(
              child: Text(
                trEn(context, tr: 'Bu cüzde ayet bulunamadı.', en: 'No Ayahs found in this Juz.'),
              ),
            );
          }
          
          return ListView.separated(
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
                            tooltip: trEn(context, tr: 'Son okunan olarak ayarla', en: 'Set as Last Read'),
                            onPressed: () {
                              final surahLabel = trEn(context, tr: 'Sure', en: 'Surah');
                              ref.read(lastReadProvider.notifier).saveLastRead(
                                ayah.surahNumber,
                                '$surahLabel ${ayah.surahNumber}',
                                ayah.numberInSurah,
                              );
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  behavior: SnackBarBehavior.floating,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                  content: Text(
                                    trEn(
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
                               final isBookmarked = ref.watch(bookmarksProvider.notifier).isBookmarked(ayah.surahNumber, ayah.numberInSurah);
                               return IconButton(
                                 icon: Icon(isBookmarked ? Icons.bookmark_rounded : Icons.bookmark_border_rounded),
                                 color: isBookmarked ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.primary.withValues(alpha: 0.6),
                                 onPressed: () {
                                   final surahLabel = trEn(context, tr: 'Sure', en: 'Surah');
                                   ref.read(bookmarksProvider.notifier).toggleBookmark(
                                      ayah.surahNumber,
                                      '$surahLabel ${ayah.surahNumber}',
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
                  
                  // Word By Word Integration
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
                  
                  // Standard Full Translation Text
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
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, st) => Center(
          child: Text(
            trEn(context, tr: 'Hata: $err', en: 'Error: $err'),
          ),
        ),
      ),
    );
  }
}
