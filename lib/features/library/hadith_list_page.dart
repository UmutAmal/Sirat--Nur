import 'package:flutter/material.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/widgets/premium_card.dart';

class HadithListPage extends StatelessWidget {
  final String collectionId;
  const HadithListPage({super.key, required this.collectionId});

  @override
  Widget build(BuildContext context) {
    final lang = Localizations.localeOf(context).languageCode;
    final name = _getCollectionName(collectionId, lang);
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
                  Text(name, style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w900), textAlign: TextAlign.center),
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
                        Expanded(child: Text(lang == 'tr' && h.turkishNarrator != null ? h.turkishNarrator! : h.narrator, style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w700,
                          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5)))),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(h.arabic, style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w900, height: 2.0),
                      textDirection: TextDirection.rtl, textAlign: TextAlign.right),
                    const SizedBox(height: 12),
                    Text(lang == 'tr' && h.turkish != null ? h.turkish! : h.english, style: TextStyle(
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

  static String _getCollectionName(String id, String lang) {
    if (lang == 'tr') {
      switch (id) {
        case 'bukhari': return 'Sahih-i Buhârî';
        case 'muslim': return 'Sahih-i Müslim';
        case 'tirmidhi': return 'Sünen-i Tirmizî';
        case 'abudawud': return 'Sünen-i Ebû Dâvûd';
        case 'nasai': return 'Sünen-i Nesâî';
        case 'ibnmajah': return 'Sünen-i İbn Mâce';
        default: return id;
      }
    }
    switch (id) {
      case 'bukhari': return 'Sahih al-Bukhari';
      case 'muslim': return 'Sahih Muslim';
      case 'tirmidhi': return 'Jami at-Tirmidhi';
      case 'abudawud': return 'Sunan Abu Dawud';
      case 'nasai': return "Sunan an-Nasa'i";
      case 'ibnmajah': return 'Sunan Ibn Majah';
      default: return id;
    }
  }

  static const _sampleHadith = [
    _Hadith(
      narrator: 'Narrated by Umar ibn al-Khattab (RA)',
      turkishNarrator: 'Hz. Ömer (r.a) rivayet etmiştir',
      arabic: 'إِنَّمَا الْأَعْمَالُ بِالنِّيَّاتِ وَإِنَّمَا لِكُلِّ امْرِئٍ مَا نَوَى',
      english: 'Actions are judged by intentions, and every person will get what they intended.',
      turkish: 'Ameller niyetlere göredir; herkesin niyeti ne ise eline geçecek olan da odur.',
    ),
    _Hadith(
      narrator: 'Narrated by Abu Hurairah (RA)',
      turkishNarrator: 'Ebû Hüreyre (r.a) rivayet etmiştir',
      arabic: 'مَنْ كَانَ يُؤْمِنُ بِاللَّهِ وَالْيَوْمِ الآخِرِ فَلْيَقُلْ خَيْرًا أَوْ لِيَصْمُتْ',
      english: 'Whoever believes in Allah and the Last Day, let him speak good or remain silent.',
      turkish: 'Allah\'a ve ahiret gününe iman eden ya hayır söylesin ya da sussun.',
    ),
    _Hadith(
      narrator: 'Narrated by Anas ibn Malik (RA)',
      turkishNarrator: 'Enes b. Mâlik (r.a) rivayet etmiştir',
      arabic: 'لَا يُؤْمِنُ أَحَدُكُمْ حَتَّى يُحِبَّ لِأَخِيهِ مَا يُحِبُّ لِنَفْسِهِ',
      english: 'None of you truly believes until he loves for his brother what he loves for himself.',
      turkish: 'Sizden biriniz, kendisi için arzu edip istediği şeyi, din kardeşi için de arzu edip istemedikçe gerçek anlamda iman etmiş olmaz.',
    ),
    _Hadith(
      narrator: 'Narrated by Abu Hurairah (RA)',
      turkishNarrator: 'Ebû Hüreyre (r.a) rivayet etmiştir',
      arabic: 'مَنْ سَلَكَ طَرِيقًا يَلْتَمِسُ فِيهِ عِلْمًا سَهَّلَ اللَّهُ لَهُ طَرِيقًا إِلَى الْجَنَّةِ',
      english: 'Whoever follows a path seeking knowledge, Allah will make easy for him the path to Paradise.',
      turkish: 'Kim ilim tahsil etmek için bir yola girerse, Allah o kişiye cennetin yolunu kolaylaştırır.',
    ),
    _Hadith(
      narrator: 'Narrated by Abu Musa Al-Ashari (RA)',
      turkishNarrator: 'Ebû Mûsâ el-Eş\'arî (r.a) rivayet etmiştir',
      arabic: 'الْمُؤْمِنُ لِلْمُؤْمِنِ كَالْبُنْيَانِ يَشُدُّ بَعْضُهُ بَعْضًا',
      english: 'A believer to another believer is like a building whose parts support each other.',
      turkish: 'Mümin müminin kardeşi gibidir; onlar birbirine sımsıkı kenetlenmiş bir bina gibidirler.',
    ),
  ];
}

class _Hadith {
  final String narrator, arabic, english;
  final String? turkish, turkishNarrator;
  const _Hadith({
    required this.narrator,
    required this.arabic,
    required this.english,
    this.turkish,
    this.turkishNarrator,
  });
}
