import 'package:flutter/material.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/widgets/premium_card.dart';

class HadithListPage extends StatelessWidget {
  final String collectionId;
  const HadithListPage({super.key, required this.collectionId});

  @override
  Widget build(BuildContext context) {
    final name = _collectionNames[collectionId] ?? collectionId;
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: AppColors.emeraldGradient,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const Icon(Icons.library_books_rounded, color: Colors.white, size: 40),
                  const SizedBox(height: 12),
                  Text(name, style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w900)),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // Sample hadith entries
            ..._sampleHadith.asMap().entries.map((e) {
              final i = e.key;
              final h = e.value;
              return AnimatedPremiumCard(
                animationDelay: i * 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 32, height: 32,
                          decoration: const BoxDecoration(
                            color: AppColors.emeraldSurface,
                            shape: BoxShape.circle,
                          ),
                          child: Center(child: Text('${i + 1}', style: const TextStyle(
                            fontWeight: FontWeight.w900, color: AppColors.emerald, fontSize: 12))),
                        ),
                        const SizedBox(width: 12),
                        Expanded(child: Text(h.narrator, style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w700,
                          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5)))),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(h.arabic, style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w900, height: 2.0),
                      textDirection: TextDirection.rtl, textAlign: TextAlign.right),
                    const SizedBox(height: 12),
                    Text(h.english, style: TextStyle(
                      fontSize: 13, height: 1.7,
                      color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6))),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  static const _collectionNames = {
    'bukhari': 'Sahih al-Bukhari',
    'muslim': 'Sahih Muslim',
    'tirmidhi': 'Jami at-Tirmidhi',
    'abudawud': 'Sunan Abu Dawud',
    'nasai': "Sunan an-Nasa'i",
    'ibnmajah': 'Sunan Ibn Majah',
  };

  static const _sampleHadith = [
    _Hadith(
      narrator: 'Narrated by Umar ibn al-Khattab (RA)',
      arabic: 'إِنَّمَا الْأَعْمَالُ بِالنِّيَّاتِ وَإِنَّمَا لِكُلِّ امْرِئٍ مَا نَوَى',
      english: 'Actions are judged by intentions, and every person will get what they intended.',
    ),
    _Hadith(
      narrator: 'Narrated by Abu Hurairah (RA)',
      arabic: 'مَنْ كَانَ يُؤْمِنُ بِاللَّهِ وَالْيَوْمِ الآخِرِ فَلْيَقُلْ خَيْرًا أَوْ لِيَصْمُتْ',
      english: 'Whoever believes in Allah and the Last Day, let him speak good or remain silent.',
    ),
    _Hadith(
      narrator: 'Narrated by Anas ibn Malik (RA)',
      arabic: 'لَا يُؤْمِنُ أَحَدُكُمْ حَتَّى يُحِبَّ لِأَخِيهِ مَا يُحِبُّ لِنَفْسِهِ',
      english: 'None of you truly believes until he loves for his brother what he loves for himself.',
    ),
    _Hadith(
      narrator: 'Narrated by Abu Hurairah (RA)',
      arabic: 'مَنْ سَلَكَ طَرِيقًا يَلْتَمِسُ فِيهِ عِلْمًا سَهَّلَ اللَّهُ لَهُ طَرِيقًا إِلَى الْجَنَّةِ',
      english: 'Whoever follows a path seeking knowledge, Allah will make easy for him the path to Paradise.',
    ),
    _Hadith(
      narrator: 'Narrated by Abu Musa Al-Ashari (RA)',
      arabic: 'الْمُؤْمِنُ لِلْمُؤْمِنِ كَالْبُنْيَانِ يَشُدُّ بَعْضُهُ بَعْضًا',
      english: 'A believer to another believer is like a building whose parts support each other.',
    ),
  ];
}

class _Hadith {
  final String narrator, arabic, english;
  const _Hadith({required this.narrator, required this.arabic, required this.english});
}
