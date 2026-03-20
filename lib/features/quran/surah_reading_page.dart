import 'package:flutter/material.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/constants/quran_data.dart';

class SurahReadingPage extends StatelessWidget {
  final int surahNumber;
  const SurahReadingPage({super.key, required this.surahNumber});

  @override
  Widget build(BuildContext context) {
    final surah = allSurahs.firstWhere((s) => s.number == surahNumber, orElse: () => allSurahs.first);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text(surah.transliteration),
        actions: [
          IconButton(icon: const Icon(Icons.bookmark_border_rounded), onPressed: () {}),
          IconButton(icon: const Icon(Icons.volume_up_rounded), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Surah info header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: AppColors.emeraldGradient,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(surah.nameArabic,
                    style: const TextStyle(color: Colors.white, fontSize: 36, fontWeight: FontWeight.w900)),
                  const SizedBox(height: 8),
                  Text(surah.nameEnglish,
                    style: TextStyle(color: Colors.white.withValues(alpha: 0.8), fontSize: 16, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 4),
                  Text('${surah.ayahCount} Ayat • ${surah.revelationType}',
                    style: TextStyle(color: Colors.white.withValues(alpha: 0.6), fontSize: 13)),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // Bismillah
            if (surah.number != 9)
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Text('بِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900, color: AppColors.emerald, height: 2.0),
                  textAlign: TextAlign.center),
              ),
            // Ayah placeholders (real content would come from API/local DB)
            ...List.generate(surah.ayahCount.clamp(0, 10), (i) {
              final ayahNum = i + 1;
              return Container(
                margin: const EdgeInsets.only(bottom: 16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: isDark ? AppColors.darkCard : AppColors.cardLight,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.04), blurRadius: 8)],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 32, height: 32,
                          decoration: BoxDecoration(
                            color: AppColors.emeraldSurface,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(child: Text('$ayahNum',
                            style: const TextStyle(fontWeight: FontWeight.w900, color: AppColors.emerald, fontSize: 12))),
                        ),
                        const Spacer(),
                        IconButton(icon: const Icon(Icons.share_rounded, size: 18), onPressed: () {}),
                        IconButton(icon: const Icon(Icons.bookmark_border_rounded, size: 18), onPressed: () {}),
                      ],
                    ),
                    const SizedBox(height: 12),
                    // Arabic text placeholder
                    Text(_getPlaceholderAyah(surah.number, ayahNum),
                      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700, height: 2.2),
                      textAlign: TextAlign.right, textDirection: TextDirection.rtl),
                    const SizedBox(height: 12),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Translation will be loaded from Supabase/API',
                        style: TextStyle(fontSize: 13, height: 1.7,
                          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5))),
                    ),
                  ],
                ),
              );
            }),
            if (surah.ayahCount > 10)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Text('... ${surah.ayahCount - 10} more ayat',
                  style: TextStyle(fontWeight: FontWeight.w700,
                    color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.4))),
              ),
          ],
        ),
      ),
    );
  }

  String _getPlaceholderAyah(int surahNum, int ayahNum) {
    // Provide real ayah text for Al-Fatihah
    if (surahNum == 1) {
      const fatihah = [
        'بِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ',
        'ٱلْحَمْدُ لِلَّهِ رَبِّ ٱلْعَٰلَمِينَ',
        'ٱلرَّحْمَٰنِ ٱلرَّحِيمِ',
        'مَٰلِكِ يَوْمِ ٱلدِّينِ',
        'إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ',
        'ٱهْدِنَا ٱلصِّرَٰطَ ٱلْمُسْتَقِيمَ',
        'صِرَٰطَ ٱلَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ ٱلْمَغْضُوبِ عَلَيْهِمْ وَلَا ٱلضَّآلِّينَ',
      ];
      if (ayahNum <= fatihah.length) return fatihah[ayahNum - 1];
    }
    // Al-Ikhlas
    if (surahNum == 112) {
      const ikhlas = [
        'قُلْ هُوَ ٱللَّهُ أَحَدٌ',
        'ٱللَّهُ ٱلصَّمَدُ',
        'لَمْ يَلِدْ وَلَمْ يُولَدْ',
        'وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ',
      ];
      if (ayahNum <= ikhlas.length) return ikhlas[ayahNum - 1];
    }
    // Al-Falaq
    if (surahNum == 113) {
      const falaq = [
        'قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ',
        'مِن شَرِّ مَا خَلَقَ',
        'وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ',
        'وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ',
        'وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ',
      ];
      if (ayahNum <= falaq.length) return falaq[ayahNum - 1];
    }
    // An-Nas
    if (surahNum == 114) {
      const nas = [
        'قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ',
        'مَلِكِ ٱلنَّاسِ',
        'إِلَٰهِ ٱلنَّاسِ',
        'مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ',
        'ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ',
        'مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ',
      ];
      if (ayahNum <= nas.length) return nas[ayahNum - 1];
    }
    return 'ﮰ Ayah $ayahNum ﮰ';
  }
}
