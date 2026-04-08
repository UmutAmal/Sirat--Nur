// Essential Islamic Duas (Prayers) collection
// These are important duas for daily life

class DuaData {
  final String id;
  final String arabic;
  final String transliteration;
  final String turkish;
  final String english;
  final String source;
  final String category;

  const DuaData({
    required this.id,
    required this.arabic,
    required this.transliteration,
    required this.turkish,
    required this.english,
    required this.source,
    required this.category,
  });

  factory DuaData.fromSupabaseRow(Map<String, dynamic> row) {
    String readFirst(List<String> keys) {
      for (final key in keys) {
        final value = row[key];
        if (value is String && value.trim().isNotEmpty) {
          return value.trim();
        }
      }
      return '';
    }

    return DuaData(
      id: '${row['id'] ?? ''}',
      arabic: readFirst(['text_ar', 'arabic', 'content_ar']),
      transliteration: readFirst([
        'transliteration',
        'text_transliteration',
        'transliteration_en',
      ]),
      turkish: readFirst(['text_tr', 'turkish', 'content_tr']),
      english: readFirst(['text_en', 'english', 'content_en']),
      source: readFirst(['source', 'reference']),
      category: readFirst(['category', 'title_tr', 'title_en']),
    );
  }
}

const List<DuaData> dailyDuas = [
  // Morning & Evening Duas
  DuaData(
    id: '1',
    arabic:
        'أَصْبَحْنَا وَأَصْبَحَ الْمُلْكُ لِلَّهِ وَالْحَمْدُ لِلَّهِ لاَ إِلَهَ إِلاَّ اللَّهُ وَحْدَهُ لاَ شَرِيكَ لَهُ',
    transliteration:
        'Asbahna wa asbalhu al-mulku lillah wal-hamdu lillah la ilaha illallah wahdahu la sharika lah',
    turkish:
        'Allah\'ın mülkü ile sabah olduk. Hamd Allah\'a mahsustur. Allah\'tan başka ilah yoktur. O tektir, ortağı yoktur.',
    english:
        'We have reached the morning and at this time all sovereignty belongs to Allah. Praise be to Allah. There is no god but Allah alone, without any partner.',
    source: 'Buhari, Muslim',
    category: 'Sabah Akşam',
  ),
  DuaData(
    id: '2',
    arabic:
        'اللَّهُمَّ بِكَ أَصْبَحْنَا وَبِكَ أَمْسَيْنَا وَبِكَ نَحْيَا وَبِكَ نَمُوتُ وَإِلَيْكَ النُّشُورُ',
    transliteration:
        'Allahumma bika asbahna wa bika amsayna wa bika nahya wa bika namutu wa ilayka an-nushur',
    turkish:
        'Allah\'ım! Seninle sabahladık, seninle akşamladık, seninle yaşıyoruz ve seninle öleceğiz. Dönüş de sanadır.',
    english:
        'O Allah, by You we have reached the morning and by You we have reached the evening. By You we live and by You die, and to You is the return.',
    source: 'Tirmizi, Ebu Davud',
    category: 'Sabah Akşam',
  ),
  DuaData(
    id: '3',
    arabic:
        'سُبْحَانَ اللَّهِ وَبِحَمْدِهِ عَدَدَ خَلْقِهِ وَرِضَا نَفْسِهِ وَزِنَةَ عَرْشِهِ وَمِدَادَ كَلِمَاتِهِ',
    transliteration:
        'Subhanallahi wa bi-hamdihi adada khalqihi wa rida nafsihi wa zinata arshihi wa midad kalimatih',
    turkish:
        'Allah\'ı, yarattığı sayısınca, nefsinin rızasınca, arşının ağırlığınca ve kelimelerinin mürekkebi kadar hamd ile tesbih ederim.',
    english:
        'Glory and praise be to Allah as many as the number of His creation, to the extent of His pleasure, to the weight of His Throne, and to the ink of His words.',
    source: 'Müslim',
    category: 'Tesbih',
  ),
  // Protection Duas
  DuaData(
    id: '4',
    arabic: 'أَعُوذُ بِكَلِمَاتِ اللَّهِ التَّامَّاتِ مِنْ شَرِّ مَا خَلَقَ',
    transliteration: 'Auzu bi-kalimatillah at-tammati min shari ma khalaq',
    turkish:
        'Yarattığı şeylerin şerrinden, Allah\'ın tam kelimelerine sığınırım.',
    english:
        'I seek refuge in the perfect words of Allah from the evil of what He has created.',
    source: 'Müslim',
    category: 'Koruma',
  ),
  DuaData(
    id: '5',
    arabic: 'بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ',
    transliteration: 'Bismillahirrahmanirrahim',
    turkish: 'Rahman ve Rahim olan Allah\'ın adıyla.',
    english: 'In the name of Allah, the Most Gracious, the Most Merciful.',
    source: 'Kuran-ı Kerim - Fatiha Suresi 1:1',
    category: 'Başlangıç',
  ),
  // Before Sleep
  DuaData(
    id: '6',
    arabic:
        'اللَّهُمَّ أَمْسَكَ نَفْسِي وَتَوَفَّنِي وَأَلْحِقْنِي بِالصَّالِحِينَ',
    transliteration:
        'Allahumma amsik nafsi wa tawaffani wa alhiqni bis-salihin',
    turkish:
        'Allah\'ım! Nefsimi tut, beni vefat ettir ve beni salihlerin arasına kat.',
    english:
        'O Allah, take my soul while I am a believer, and make my death a means of joining the righteous.',
    source: 'Buhari, Müslim',
    category: 'Uyku',
  ),
  // After Sleep
  DuaData(
    id: '7',
    arabic:
        'الْحَمْدُ لِلَّهِ الَّذِي أَحْيَانَا بَعْدَ مَا أَمَاتَنَا وَإِلَيْهِ النُّشُورُ',
    transliteration:
        'Alhmadu lillahil-lazi ahyaana ba\'da ma amatana wa ilayhi an-nushur',
    turkish:
        'Bizi öldürdükten sonra dirilten Allah\'a hamdolsun. Dönüş de sanadır.',
    english:
        'Praise be to Allah who gave us life after causing us to die, and to Him is the return.',
    source: 'Buhari',
    category: 'Uyku',
  ),
  // Before Eating
  DuaData(
    id: '8',
    arabic: 'بِسْمِ اللَّهِ وَجَبَ رِزْقُنَا',
    transliteration: 'Bismillah wa jaba rizquna',
    turkish:
        'Allah\'ın adıyla (yemeye başladık), rızkımız da (bu şekilde) helal oldu.',
    english: 'In the name of Allah, and our sustenance has become lawful.',
    source: 'Ebu Davud, Tirmizi',
    category: 'Yemek',
  ),
  // After Eating
  DuaData(
    id: '9',
    arabic:
        'الْحَمْدُ لِلَّهِ الَّذِي أَطْعَمَنَا وَسَقَانَا وَجَعَلَنَا مُسْلِمِينَ',
    transliteration:
        'Alhmadu lillahil-lazi at-amana wa saqana wa ja\'alana muslimeen',
    turkish: 'Bize yediren, içiren ve Müslüman yaratan Allah\'a hamdolsun.',
    english:
        'Praise be to Allah who fed us and gave us drink and made us Muslims.',
    source: 'Ahmed, Ebu Davud',
    category: 'Yemek',
  ),
  // Forgiveness
  DuaData(
    id: '10',
    arabic:
        'اللَّهُمَّ اغْفِرْ لِي وَارْحَمْنِي وَاهْدِنِي وَعَافِنِي وَارْزُقْنِي',
    transliteration: 'Allahumma-ghfir li warhamni wahdini wa afini warzuqni',
    turkish:
        'Allah\'ım! Beni affet, bana merhamet et, bana hidayet ver, bana afiyet ver ve bana rızkını ver.',
    english:
        'O Allah, forgive me, have mercy on me, guide me, grant me well-being, and provide for me.',
    source: 'Müslim',
    category: 'Af Duası',
  ),
  // Entering Home
  DuaData(
    id: '11',
    arabic:
        'اللَّهُمَّ إِنِّي أَسْأَلُكَ خَيْرَ الْمَوْلِجِ وَخَيْرَ الْمَخْرَجِ بِسْمِ اللَّهِ وَلَجْنَا وَبِسْمِ اللَّهِ خَرَجْنَا',
    transliteration:
        'Allahumma innii as-aluka khayra al-mawliji wa khayra al-makhruji bismillah walajna wa bismillah kharajna',
    turkish:
        'Allah\'ım! İyi giriş ve iyi çıkış isterim. Allah\'ın adıyla girdik ve Allah\'ın adıyla çıktık.',
    english:
        'O Allah, I ask You for the best entry and the best exit. In the name of Allah we enter and in the name of Allah we exit.',
    source: 'Ebu Davud, Tirmizi',
    category: 'Ev',
  ),
  // For children
  DuaData(
    id: '12',
    arabic:
        'أُعِوذُ بِكَلِمَاتِ اللَّهِ التَّامَّاتِ مِنْ كُلِّ شَيْطَانٍ وَهَامَّةٍ وَمِنْ كُلِّ عَيْنٍ لَامَّةٍ',
    transliteration:
        'Auzu bi-kalimatillah at-tammati min kulli shaytanin wa hammatin wa min kulli aynin lammatin',
    turkish:
        'Her şeytandan, her zararlı haşerattan ve her nazar eden gözden, Allah\'ın tam kelimelerine sığınırım.',
    english:
        'I seek refuge in the perfect words of Allah from every devil and every pest and from every envious eye.',
    source: 'Buhari',
    category: 'Koruma',
  ),
];

List<DuaData> resolveCloudDuas(List<Map<String, dynamic>> rows) {
  final parsed = rows
      .map(DuaData.fromSupabaseRow)
      .where(
        (dua) =>
            dua.arabic.isNotEmpty &&
            (dua.turkish.isNotEmpty || dua.english.isNotEmpty),
      )
      .toList();

  return parsed.isEmpty ? dailyDuas : parsed;
}

/// Get duas by category
List<DuaData> getDuasByCategory(String category) {
  return dailyDuas.where((dua) => dua.category == category).toList();
}

/// Get all unique categories
List<String> getDuaCategories() {
  return dailyDuas.map((dua) => dua.category).toSet().toList();
}
