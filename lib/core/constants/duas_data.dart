// Verified Quranic dua fallback collection derived from the bundled Quran seed.
import 'package:sirat_i_nur/core/network/supabase_config.dart';
import 'package:sirat_i_nur/core/network/supabase_storage_url.dart';

class DuaData {
  final String id;
  final String arabic;
  final String transliteration;
  final String turkish;
  final String english;
  final String source;
  final String category;
  final String verifiedAt;
  final String audioUrl;
  final Map<String, String> translations;

  const DuaData({
    required this.id,
    required this.arabic,
    required this.transliteration,
    required this.turkish,
    required this.english,
    required this.source,
    required this.category,
    this.verifiedAt = '',
    this.audioUrl = '',
    this.translations = const {},
  });

  Map<String, String> get resolvedTranslations {
    final merged = <String, String>{...translations};
    if (turkish.trim().isNotEmpty) {
      merged.putIfAbsent('tr', () => turkish);
    }
    if (english.trim().isNotEmpty) {
      merged.putIfAbsent('en', () => english);
    }
    return merged;
  }

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

    final turkish = readFirst(['text_tr', 'turkish', 'content_tr']);
    final english = readFirst(['text_en', 'english', 'content_en']);
    final translations = _readDuaTranslations(row['translations']);
    if (turkish.isNotEmpty) {
      translations.putIfAbsent('tr', () => turkish);
    }
    if (english.isNotEmpty) {
      translations.putIfAbsent('en', () => english);
    }

    return DuaData(
      id: '${row['id'] ?? ''}',
      arabic: readFirst(['text_ar', 'arabic', 'content_ar']),
      transliteration: readFirst([
        'transliteration',
        'text_transliteration',
        'transliteration_en',
      ]),
      turkish: turkish,
      english: english,
      source: readFirst(['source', 'reference']),
      category: readFirst(['category', 'title_tr', 'title_en']),
      verifiedAt: readFirst(['verified_at', 'verifiedAt']),
      audioUrl: _resolveCloudDuaAudioUrl(row),
      translations: translations,
    );
  }
}

String _resolveCloudDuaAudioUrl(Map<String, dynamic> row) {
  final storagePath = _readDuaString(row, const [
    'storage_path',
    'storagePath',
  ]);
  if (storagePath.isNotEmpty) {
    try {
      return buildSupabaseStoragePublicUrl(
        storagePath,
        bucketName: SupabaseConfig.duaAudioBucket,
      );
    } on FormatException {
      return '';
    }
  }

  return '';
}

String _readDuaString(Map<String, dynamic> row, List<String> keys) {
  for (final key in keys) {
    final value = row[key]?.toString().trim();
    if (value != null && value.isNotEmpty) {
      return value;
    }
  }

  return '';
}

Map<String, String> _readDuaTranslations(dynamic rawTranslations) {
  if (rawTranslations is! Map) {
    return <String, String>{};
  }

  final parsed = <String, String>{};
  rawTranslations.forEach((key, value) {
    if (key is! String || value is! String) {
      return;
    }

    final normalizedKey = key.trim();
    final normalizedValue = value.trim();
    if (normalizedKey.isEmpty || normalizedValue.isEmpty) {
      return;
    }

    parsed[normalizedKey] = normalizedValue;
  });

  return parsed;
}

const bool hasVerifiedBundledDuas = true;
const String quranicDuaCategory = 'quranic_dua';

const List<DuaData> dailyDuas = [
  DuaData(
    id: '1',
    arabic:
        'وَمِنْهُم مَّن يَقُولُ رَبَّنَآ ءَاتِنَا فِى ٱلدُّنْيَا حَسَنَةً وَفِى ٱلْـَٔاخِرَةِ حَسَنَةً وَقِنَا عَذَابَ ٱلنَّارِ',
    transliteration: '',
    turkish:
        'Yine onlardan: "Ey Rabbimiz! Bize dünyada bir güzellik ve ahirette de bir güzellik ver ve bizi ateş azabından koru!" diyenler vardır.',
    english:
        'others pray, ‘Our Lord, give us good in this world and in the Hereafter, and protect us from the torment of the Fire.’',
    source: 'Quran 2:201',
    category: quranicDuaCategory,
  ),
  DuaData(
    id: '2',
    arabic:
        'لَا يُكَلِّفُ ٱللَّهُ نَفْسًا إِلَّا وُسْعَهَا ۚ لَهَا مَا كَسَبَتْ وَعَلَيْهَا مَا ٱكْتَسَبَتْ ۗ رَبَّنَا لَا تُؤَاخِذْنَآ إِن نَّسِينَآ أَوْ أَخْطَأْنَا ۚ رَبَّنَا وَلَا تَحْمِلْ عَلَيْنَآ إِصْرًا كَمَا حَمَلْتَهُۥ عَلَى ٱلَّذِينَ مِن قَبْلِنَا ۚ رَبَّنَا وَلَا تُحَمِّلْنَا مَا لَا طَاقَةَ لَنَا بِهِۦ ۖ وَٱعْفُ عَنَّا وَٱغْفِرْ لَنَا وَٱرْحَمْنَآ ۚ أَنتَ مَوْلَىٰنَا فَٱنصُرْنَا عَلَى ٱلْقَوْمِ ٱلْكَـٰفِرِينَ',
    transliteration: '',
    turkish:
        'Allah hiç kimseye gücünün yeteceğinden başka yük yüklemez. Herkesin kazandığı hayır kendisine, yaptığı kötülüğün zararı yine kendisinedir. Ey Rabbimiz, eğer unuttuk ya da yanıldıysak bizi tutup sorguya çekme! Ey Rabbimiz, bize bizden öncekilere yüklediğin gibi ağır yük yükleme! Ey Rabbimiz, bize gücümüzün yetmeyeceği yükü de yükleme! Bağışla bizi, mağfiret et bizi, rahmet et bize! Sensin bizim Mevlamız, kâfir kavimlere karşı yardım et bize.',
    english:
        'God does not burden any soul with more than it can bear: each gains whatever good it has done, and suffers whatever bad it has done. ‘Lord, do not take us to task if we forget or make mistakes. Lord, do not burden us as You burdened those before us. Lord, do not burden us with more than we have strength to bear. Pardon us, forgive us, and have mercy on us. You are our Protector, so help us against the disbelievers.’',
    source: 'Quran 2:286',
    category: quranicDuaCategory,
  ),
  DuaData(
    id: '3',
    arabic:
        'رَبَّنَا لَا تُزِغْ قُلُوبَنَا بَعْدَ إِذْ هَدَيْتَنَا وَهَبْ لَنَا مِن لَّدُنكَ رَحْمَةً ۚ إِنَّكَ أَنتَ ٱلْوَهَّابُ',
    transliteration: '',
    turkish:
        'Ey Rabbimiz! Bize ihsan ettiğin hidayetten sonra kalblerimizi haktan saptırma, bize kendi katından rahmet ihsan eyle! Şüphesiz ki, Sen bol ihsan sahibisin.',
    english:
        '‘Our Lord, do not let our hearts deviate after You have guided us. Grant us Your mercy: You are the Ever Giving.’',
    source: 'Quran 3:8',
    category: quranicDuaCategory,
  ),
  DuaData(
    id: '4',
    arabic:
        'رَبِّ ٱجْعَلْنِى مُقِيمَ ٱلصَّلَوٰةِ وَمِن ذُرِّيَّتِى ۚ رَبَّنَا وَتَقَبَّلْ دُعَآءِ',
    transliteration: '',
    turkish:
        '"Ey Rabbim! Beni ve soyumdan gelecekleri namazını dosdoğru kılanlardan eyle! Ey Rabbimiz! duamı kabul et!"',
    english:
        'Lord, grant that I and my offspring may keep up the prayer. Our Lord, accept my request.',
    source: 'Quran 14:40',
    category: quranicDuaCategory,
  ),
  DuaData(
    id: '5',
    arabic:
        'وَٱخْفِضْ لَهُمَا جَنَاحَ ٱلذُّلِّ مِنَ ٱلرَّحْمَةِ وَقُل رَّبِّ ٱرْحَمْهُمَا كَمَا رَبَّيَانِى صَغِيرًا',
    transliteration: '',
    turkish:
        'İkisine de acıyarak tevazu kanatlarını indir. Ve şöyle de: "Ey Rabbim! Onların beni küçükten terbiye edip yetiştirdikleri gibi, sen de kendilerine merhamet et."',
    english:
        'and lower your wing in humility towards them in kindness and say, ‘Lord, have mercy on them, just as they cared for me when I was little.’',
    source: 'Quran 17:24',
    category: quranicDuaCategory,
  ),
  DuaData(
    id: '6',
    arabic:
        'فَتَعَـٰلَى ٱللَّهُ ٱلْمَلِكُ ٱلْحَقُّ ۗ وَلَا تَعْجَلْ بِٱلْقُرْءَانِ مِن قَبْلِ أَن يُقْضَىٰٓ إِلَيْكَ وَحْيُهُۥ ۖ وَقُل رَّبِّ زِدْنِى عِلْمًا',
    transliteration: '',
    turkish:
        "Hükmü her yerde geçerli gerçek hükümdar olan Allah yücedir. (Ey Muhammed!) Kur'ân sana vahyedilirken, vahiy bitmeden önce (unutma korkusu ile) Kur'ân'ı okumada acele etme; \"Rabbim! benim ilmimi artır\" de.",
    english:
        'exalted be God, the one who is truly in control. [Prophet], do not rush to recite before the revelation is fully complete but say, ‘Lord, increase me in knowledge!’',
    source: 'Quran 20:114',
    category: quranicDuaCategory,
  ),
  DuaData(
    id: '7',
    arabic: 'وَقُل رَّبِّ ٱغْفِرْ وَٱرْحَمْ وَأَنتَ خَيْرُ ٱلرَّٰحِمِينَ',
    transliteration: '',
    turkish:
        'Resulüm! De ki: "Rabbim, bağışla ve merhamet et! Sen merhametlilerin en iyisisin."',
    english:
        'Say [Prophet], ‘Lord, forgive and have mercy: You are the most merciful of all.’',
    source: 'Quran 23:118',
    category: quranicDuaCategory,
  ),
  DuaData(
    id: '8',
    arabic:
        'وَٱلَّذِينَ يَقُولُونَ رَبَّنَا هَبْ لَنَا مِنْ أَزْوَٰجِنَا وَذُرِّيَّـٰتِنَا قُرَّةَ أَعْيُنٍ وَٱجْعَلْنَا لِلْمُتَّقِينَ إِمَامًا',
    transliteration: '',
    turkish:
        'Ve onlar ki: "Ey Rabbimiz! Bize gözümüzü aydınlatacak eşler ve zürriyetler bağışla ve bizi takva sahiplerine önder kıl" derler.',
    english:
        'those who pray, ‘Our Lord, give us joy in our spouses and offspring. Make us good examples to those who are aware of You’.',
    source: 'Quran 25:74',
    category: quranicDuaCategory,
  ),
];

List<DuaData> bundledDailyDuaFallback() {
  return hasVerifiedBundledDuas ? dailyDuas : const <DuaData>[];
}

List<DuaData> resolveCloudDuas(List<Map<String, dynamic>> rows) {
  final parsed = rows
      .map(DuaData.fromSupabaseRow)
      .where(
        (dua) =>
            dua.arabic.isNotEmpty &&
            (dua.turkish.isNotEmpty || dua.english.isNotEmpty) &&
            dua.source.isNotEmpty &&
            dua.verifiedAt.isNotEmpty,
      )
      .toList();

  return parsed.isEmpty ? bundledDailyDuaFallback() : parsed;
}

/// Get duas by category
List<DuaData> getDuasByCategory(String category) {
  return dailyDuas.where((dua) => dua.category == category).toList();
}

/// Get all unique categories
List<String> getDuaCategories() {
  return dailyDuas.map((dua) => dua.category).toSet().toList();
}
