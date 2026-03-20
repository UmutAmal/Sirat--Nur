/// Complete collection of daily ayat (verses) with Arabic text, transliteration, and translations.
/// These are shown on the Home page as "Daily Verse" rotated by day of year.
class DailyAyat {
  final String surahName;
  final String reference;
  final String arabic;
  final String transliteration;
  final String english;
  final String turkish;

  const DailyAyat({
    required this.surahName,
    required this.reference,
    required this.arabic,
    required this.transliteration,
    required this.english,
    required this.turkish,
  });
}

const List<DailyAyat> dailyAyatCollection = [
  DailyAyat(
    surahName: 'Al-Fatihah', reference: '1:1',
    arabic: 'بِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ',
    transliteration: 'Bismillahir-Rahmanir-Rahim',
    english: 'In the name of Allah, the Most Gracious, the Most Merciful.',
    turkish: 'Rahman ve Rahim olan Allah\'ın adıyla.',
  ),
  DailyAyat(
    surahName: 'Al-Baqarah', reference: '2:255',
    arabic: 'ٱللَّهُ لَآ إِلَٰهَ إِلَّا هُوَ ٱلْحَىُّ ٱلْقَيُّومُ ۚ لَا تَأْخُذُهُۥ سِنَةٌ وَلَا نَوْمٌ',
    transliteration: 'Allahu la ilaha illa Huwal-Hayyul-Qayyum, la ta\'khuzuhu sinatun wa la nawm',
    english: 'Allah - there is no deity except Him, the Ever-Living, the Sustainer. Neither drowsiness nor sleep overtakes Him.',
    turkish: 'Allah, O\'ndan başka ilah yoktur. O, Hayy ve Kayyum\'dur. O\'nu ne uyuklama tutar ne de uyku.',
  ),
  DailyAyat(
    surahName: 'Al-Baqarah', reference: '2:286',
    arabic: 'لَا يُكَلِّفُ ٱللَّهُ نَفْسًا إِلَّا وُسْعَهَا',
    transliteration: 'La yukallifullahu nafsan illa wus\'aha',
    english: 'Allah does not burden a soul beyond that it can bear.',
    turkish: 'Allah hiçbir kişiye gücünün üstünde yük yüklemez.',
  ),
  DailyAyat(
    surahName: 'Ali Imran', reference: '3:139',
    arabic: 'وَلَا تَهِنُوا۟ وَلَا تَحْزَنُوا۟ وَأَنتُمُ ٱلْأَعْلَوْنَ إِن كُنتُم مُّؤْمِنِينَ',
    transliteration: 'Wa la tahinu wa la tahzanu wa antumul a\'lawna in kuntum mu\'minin',
    english: 'Do not lose heart, nor be sad, for you will be superior if you are believers.',
    turkish: 'Gevşemeyin, üzülmeyin; eğer inanıyorsanız, üstün olan sizsiniz.',
  ),
  DailyAyat(
    surahName: 'An-Nisa', reference: '4:36',
    arabic: 'وَٱعْبُدُوا۟ ٱللَّهَ وَلَا تُشْرِكُوا۟ بِهِۦ شَيْـًٔا ۖ وَبِٱلْوَٰلِدَيْنِ إِحْسَٰنًا',
    transliteration: 'Wa\'budul-laha wa la tushrika bihi shay\'an wabil-walidayni ihsana',
    english: 'Worship Allah and associate nothing with Him, and to parents do good.',
    turkish: 'Allah\'a ibadet edin ve O\'na hiçbir şeyi ortak koşmayın. Ana-babaya iyilik edin.',
  ),
  DailyAyat(
    surahName: 'Al-An\'am', reference: '6:162',
    arabic: 'قُلْ إِنَّ صَلَاتِى وَنُسُكِى وَمَحْيَاىَ وَمَمَاتِى لِلَّهِ رَبِّ ٱلْعَٰلَمِينَ',
    transliteration: 'Qul inna salati wa nusuki wa mahyaya wa mamati lillahi Rabbil-alamin',
    english: 'Say: My prayer, my sacrifice, my life and my death are all for Allah, the Lord of the worlds.',
    turkish: 'De ki: Namazım, ibadetlerim, hayatım ve ölümüm alemlerin Rabbi Allah içindir.',
  ),
  DailyAyat(
    surahName: 'Al-A\'raf', reference: '7:56',
    arabic: 'إِنَّ رَحْمَتَ ٱللَّهِ قَرِيبٌ مِّنَ ٱلْمُحْسِنِينَ',
    transliteration: 'Inna rahmatal-lahi qaribun minal-muhsinin',
    english: 'Indeed, the mercy of Allah is near to the doers of good.',
    turkish: 'Muhakkak ki Allah\'ın rahmeti iyilik edenlere yakındır.',
  ),
  DailyAyat(
    surahName: 'Yusuf', reference: '12:87',
    arabic: 'وَلَا تَا۟يْـَٔسُوا۟ مِن رَّوْحِ ٱللَّهِ ۖ إِنَّهُۥ لَا يَا۟يْـَٔسُ مِن رَّوْحِ ٱللَّهِ إِلَّا ٱلْقَوْمُ ٱلْكَٰفِرُونَ',
    transliteration: 'Wa la tay\'asu min rawhil-lah, innahu la yay\'asu min rawhil-lahi illal-qawmul-kafirun',
    english: 'Do not despair of the mercy of Allah. Indeed, no one despairs of the mercy of Allah except the disbelieving people.',
    turkish: 'Allah\'ın rahmetinden ümit kesmeyiniz. Çünkü kafir topluluktan başkası Allah\'ın rahmetinden ümit kesmez.',
  ),
  DailyAyat(
    surahName: 'Ibrahim', reference: '14:7',
    arabic: 'لَئِن شَكَرْتُمْ لَأَزِيدَنَّكُمْ',
    transliteration: 'La-in shakartum la-azidannakum',
    english: 'If you are grateful, I will surely increase you in favor.',
    turkish: 'Eğer şükrederseniz, elbette size nimetimi artırırım.',
  ),
  DailyAyat(
    surahName: 'An-Nahl', reference: '16:90',
    arabic: 'إِنَّ ٱللَّهَ يَأْمُرُ بِٱلْعَدْلِ وَٱلْإِحْسَٰنِ',
    transliteration: 'Innal-laha ya\'muru bil-adli wal-ihsan',
    english: 'Indeed, Allah commands justice and good conduct.',
    turkish: 'Muhakkak ki Allah adaleti ve iyiliği emreder.',
  ),
  DailyAyat(
    surahName: 'Al-Isra', reference: '17:23',
    arabic: 'وَقَضَىٰ رَبُّكَ أَلَّا تَعْبُدُوٓا۟ إِلَّآ إِيَّاهُ وَبِٱلْوَٰلِدَيْنِ إِحْسَٰنًا',
    transliteration: 'Wa qada Rabbuka alla ta\'budu illa iyyahu wa bil-walidayni ihsana',
    english: 'Your Lord has decreed that you worship none but Him, and that you be kind to parents.',
    turkish: 'Rabbin, yalnız kendisine ibadet etmenizi ve anne-babaya iyilik yapmanızı emretmiştir.',
  ),
  DailyAyat(
    surahName: 'Al-Kahf', reference: '18:10',
    arabic: 'رَبَّنَآ ءَاتِنَا مِن لَّدُنكَ رَحْمَةً وَهَيِّئْ لَنَا مِنْ أَمْرِنَا رَشَدًا',
    transliteration: 'Rabbana atina min ladunka rahmatan wa hayyi\' lana min amrina rashada',
    english: 'Our Lord, grant us from Yourself mercy and prepare for us from our affair right guidance.',
    turkish: 'Rabbimiz! Bize katından bir rahmet ver ve bize işimizden bir yol göster.',
  ),
  DailyAyat(
    surahName: 'Ta-Ha', reference: '20:114',
    arabic: 'رَّبِّ زِدْنِى عِلْمًا',
    transliteration: 'Rabbi zidni ilma',
    english: 'My Lord, increase me in knowledge.',
    turkish: 'Rabbim! İlmimi artır.',
  ),
  DailyAyat(
    surahName: 'Al-Anbiya', reference: '21:87',
    arabic: 'لَّآ إِلَٰهَ إِلَّآ أَنتَ سُبْحَٰنَكَ إِنِّى كُنتُ مِنَ ٱلظَّٰلِمِينَ',
    transliteration: 'La ilaha illa Anta subhanaka inni kuntu minaz-zalimin',
    english: 'There is no deity except You; exalted are You. Indeed, I have been of the wrongdoers.',
    turkish: 'Senden başka ilah yoktur. Seni tenzih ederim. Ben gerçekten zalimlerden oldum.',
  ),
  DailyAyat(
    surahName: 'Al-Mu\'minun', reference: '23:118',
    arabic: 'رَّبِّ ٱغْفِرْ وَٱرْحَمْ وَأَنتَ خَيْرُ ٱلرَّٰحِمِينَ',
    transliteration: 'Rabbighfir warham wa Anta khayrur-rahimin',
    english: 'My Lord, forgive and have mercy, for You are the best of the merciful.',
    turkish: 'Rabbim! Bağışla, merhamet et. Sen merhamet edenlerin en hayırlısısın.',
  ),
  DailyAyat(
    surahName: 'An-Nur', reference: '24:35',
    arabic: 'ٱللَّهُ نُورُ ٱلسَّمَٰوَٰتِ وَٱلْأَرْضِ',
    transliteration: 'Allahu nurus-samavati wal-ard',
    english: 'Allah is the Light of the heavens and the earth.',
    turkish: 'Allah, göklerin ve yerin nurudur.',
  ),
  DailyAyat(
    surahName: 'Al-Furqan', reference: '25:74',
    arabic: 'رَبَّنَا هَبْ لَنَا مِنْ أَزْوَٰجِنَا وَذُرِّيَّٰتِنَا قُرَّةَ أَعْيُنٍ',
    transliteration: 'Rabbana hab lana min azwajina wa dhurriyyatina qurrata a\'yun',
    english: 'Our Lord, grant us from among our spouses and offspring comfort to our eyes.',
    turkish: 'Rabbimiz! Eşlerimizden ve soyumuzdan bize göz aydınlığı olacak kimseler ver.',
  ),
  DailyAyat(
    surahName: 'Al-Qasas', reference: '28:24',
    arabic: 'رَبِّ إِنِّى لِمَآ أَنزَلْتَ إِلَىَّ مِنْ خَيْرٍ فَقِيرٌ',
    transliteration: 'Rabbi inni lima anzalta ilayya min khayrin faqir',
    english: 'My Lord, indeed I am, for whatever good You send down to me, in need.',
    turkish: 'Rabbim! Doğrusu bana indireceğin her hayra muhtacım.',
  ),
  DailyAyat(
    surahName: 'Ar-Rum', reference: '30:21',
    arabic: 'وَمِنْ ءَايَٰتِهِۦٓ أَنْ خَلَقَ لَكُم مِّنْ أَنفُسِكُمْ أَزْوَٰجًا لِّتَسْكُنُوٓا۟ إِلَيْهَا',
    transliteration: 'Wa min ayatihi an khalaqa lakum min anfusikum azwajan litaskunu ilayha',
    english: 'And of His signs is that He created for you from yourselves mates that you may find tranquillity in them.',
    turkish: 'O\'nun ayetlerinden biri de sizin için nefsinizden eşler yaratmasıdır ki onlara huzur bulasınız.',
  ),
  DailyAyat(
    surahName: 'Ya-Sin', reference: '36:58',
    arabic: 'سَلَٰمٌ قَوْلًا مِّن رَّبٍّ رَّحِيمٍ',
    transliteration: 'Salamun qawlan min Rabbin Rahim',
    english: '"Peace!" - a word from a Merciful Lord.',
    turkish: '"Selam!" Rahim olan Rabb\'in sözüdür.',
  ),
  DailyAyat(
    surahName: 'Az-Zumar', reference: '39:53',
    arabic: 'قُلْ يَٰعِبَادِىَ ٱلَّذِينَ أَسْرَفُوا۟ عَلَىٰٓ أَنفُسِهِمْ لَا تَقْنَطُوا۟ مِن رَّحْمَةِ ٱللَّهِ',
    transliteration: 'Qul ya ibadiyalladhina asrafu ala anfusihim la taqnatu min rahmatillah',
    english: 'Say: O My servants who have transgressed against themselves, do not despair of the mercy of Allah.',
    turkish: 'De ki: Ey kendilerinin aleyhine aşırı giden kullarım! Allah\'ın rahmetinden umut kesmeyiniz.',
  ),
  DailyAyat(
    surahName: 'Fussilat', reference: '41:30',
    arabic: 'إِنَّ ٱلَّذِينَ قَالُوا۟ رَبُّنَا ٱللَّهُ ثُمَّ ٱسْتَقَٰمُوا۟ تَتَنَزَّلُ عَلَيْهِمُ ٱلْمَلَٰٓئِكَةُ',
    transliteration: 'Innalladhina qalu Rabbunallahu thummas-taqamu tatanazzalu alayhimul-malaikah',
    english: 'Indeed, those who have said "Our Lord is Allah" and then remained firm - the angels descend upon them.',
    turkish: '"Rabbimiz Allah\'tır" deyip sonra dosdoğru olanlara melekler iner.',
  ),
  DailyAyat(
    surahName: 'Ash-Sharh', reference: '94:5-6',
    arabic: 'فَإِنَّ مَعَ ٱلْعُسْرِ يُسْرًا ﴿٥﴾ إِنَّ مَعَ ٱلْعُسْرِ يُسْرًا',
    transliteration: 'Fa-inna ma\'al-usri yusra. Inna ma\'al-usri yusra.',
    english: 'For indeed, with hardship comes ease. Indeed, with hardship comes ease.',
    turkish: 'Şüphesiz zorlukla beraber kolaylık vardır. Gerçekten zorlukla beraber kolaylık vardır.',
  ),
  DailyAyat(
    surahName: 'Al-Ikhlas', reference: '112:1-4',
    arabic: 'قُلْ هُوَ ٱللَّهُ أَحَدٌ ﴿١﴾ ٱللَّهُ ٱلصَّمَدُ ﴿٢﴾ لَمْ يَلِدْ وَلَمْ يُولَدْ ﴿٣﴾ وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ',
    transliteration: 'Qul Huwallahu Ahad. Allahus-Samad. Lam yalid wa lam yulad. Wa lam yakun lahu kufuwan ahad.',
    english: 'Say: He is Allah, the One. Allah, the Eternal Refuge. He neither begets nor is born. Nor is there to Him any equivalent.',
    turkish: 'De ki: O Allah birdir. Allah Samed\'dir. Doğurmamıştır ve doğmamıştır. Ve hiçbir şey O\'nun dengi olmamıştır.',
  ),
  DailyAyat(
    surahName: 'Al-Falaq', reference: '113:1-5',
    arabic: 'قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ ﴿١﴾ مِن شَرِّ مَا خَلَقَ',
    transliteration: 'Qul a\'uzhu bi Rabbil-falaq. Min sharri ma khalaq.',
    english: 'Say: I seek refuge in the Lord of daybreak. From the evil of that which He created.',
    turkish: 'De ki: Sabahın Rabbine sığınırım. Yarattığı şeylerin şerrinden.',
  ),
  DailyAyat(
    surahName: 'An-Nas', reference: '114:1-6',
    arabic: 'قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ ﴿١﴾ مَلِكِ ٱلنَّاسِ ﴿٢﴾ إِلَٰهِ ٱلنَّاسِ',
    transliteration: 'Qul a\'uzhu bi Rabbin-nas. Malikin-nas. Ilahin-nas.',
    english: 'Say: I seek refuge in the Lord of mankind. The Sovereign of mankind. The God of mankind.',
    turkish: 'De ki: İnsanların Rabbine sığınırım. İnsanların Melikine. İnsanların İlahına.',
  ),
  DailyAyat(
    surahName: 'Al-Hashr', reference: '59:22-24',
    arabic: 'هُوَ ٱللَّهُ ٱلَّذِى لَآ إِلَٰهَ إِلَّا هُوَ ۖ عَٰلِمُ ٱلْغَيْبِ وَٱلشَّهَٰدَةِ ۖ هُوَ ٱلرَّحْمَٰنُ ٱلرَّحِيمُ',
    transliteration: 'Huwallahulladhi la ilaha illa Hu, Alimul-ghaybi wash-shahadah, Huwar-Rahmanur-Rahim',
    english: 'He is Allah, other than whom there is no deity, Knower of the unseen and the witnessed. He is the Most Gracious, the Most Merciful.',
    turkish: 'O Allah\'tır ki, O\'ndan başka ilah yoktur. Gaybı da, görüneni de bilendir. O, Rahman ve Rahim\'dir.',
  ),
  DailyAyat(
    surahName: 'Al-Mulk', reference: '67:1',
    arabic: 'تَبَٰرَكَ ٱلَّذِى بِيَدِهِ ٱلْمُلْكُ وَهُوَ عَلَىٰ كُلِّ شَىْءٍ قَدِيرٌ',
    transliteration: 'Tabarakalladhi biyadihil-mulku wa Huwa ala kulli shay\'in Qadir',
    english: 'Blessed is He in whose hand is dominion, and He is over all things competent.',
    turkish: 'Mülk elinde olan ne yücedir! O her şeye gücü yetendir.',
  ),
  DailyAyat(
    surahName: 'Al-Qadr', reference: '97:1-5',
    arabic: 'إِنَّآ أَنزَلْنَٰهُ فِى لَيْلَةِ ٱلْقَدْرِ ﴿١﴾ وَمَآ أَدْرَىٰكَ مَا لَيْلَةُ ٱلْقَدْرِ ﴿٢﴾ لَيْلَةُ ٱلْقَدْرِ خَيْرٌ مِّنْ أَلْفِ شَهْرٍ',
    transliteration: 'Inna anzalnahu fi Laylatil-Qadr. Wa ma adraka ma Laylatul-Qadr. Laylatul-Qadri khayrun min alfi shahr.',
    english: 'Indeed, We sent it down during the Night of Decree. And what can make you know what the Night of Decree is? The Night of Decree is better than a thousand months.',
    turkish: 'Şüphesiz biz onu Kadir Gecesi\'nde indirdik. Kadir Gecesi\'nin ne olduğunu sen nereden bileceksin? Kadir Gecesi bin aydan hayırlıdır.',
  ),
];

/// Get the daily ayat based on day of year
DailyAyat getDailyAyat() {
  final dayOfYear = DateTime.now().difference(DateTime(DateTime.now().year, 1, 1)).inDays;
  return dailyAyatCollection[dayOfYear % dailyAyatCollection.length];
}
