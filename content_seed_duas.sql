-- Verified Quranic dua seed SQL.
-- Apply content_schema.sql before this seed.
-- Rows are derived from the bundled Quran-verified dua fallback.

INSERT INTO public.duas (
  id, title_tr, title_ar, title_en, text_ar, transliteration, text_tr, text_en, audio_url, storage_path, category, source, verified_at
) VALUES (
  1,
  NULL,
  NULL,
  'Quran 2:201',
  $$وَمِنْهُم مَّن يَقُولُ رَبَّنَآ ءَاتِنَا فِى ٱلدُّنْيَا حَسَنَةً وَفِى ٱلْـَٔاخِرَةِ حَسَنَةً وَقِنَا عَذَابَ ٱلنَّارِ$$,
  NULL,
  $$Yine onlardan: "Ey Rabbimiz! Bize dünyada bir güzellik ve ahirette de bir güzellik ver ve bizi ateş azabından koru!" diyenler vardır.$$,
  $$others pray, ‘Our Lord, give us good in this world and in the Hereafter, and protect us from the torment of the Fire.’$$,
  NULL,
  NULL,
  'quranic_dua',
  'https://quran.com/2/201',
  TIMESTAMPTZ '2026-04-17T00:00:00Z'
) ON CONFLICT (id) DO UPDATE SET
  title_tr = EXCLUDED.title_tr,
  title_ar = EXCLUDED.title_ar,
  title_en = EXCLUDED.title_en,
  text_ar = EXCLUDED.text_ar,
  transliteration = EXCLUDED.transliteration,
  text_tr = EXCLUDED.text_tr,
  text_en = EXCLUDED.text_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  category = EXCLUDED.category,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.duas (
  id, title_tr, title_ar, title_en, text_ar, transliteration, text_tr, text_en, audio_url, storage_path, category, source, verified_at
) VALUES (
  2,
  NULL,
  NULL,
  'Quran 2:286',
  $$لَا يُكَلِّفُ ٱللَّهُ نَفْسًا إِلَّا وُسْعَهَا ۚ لَهَا مَا كَسَبَتْ وَعَلَيْهَا مَا ٱكْتَسَبَتْ ۗ رَبَّنَا لَا تُؤَاخِذْنَآ إِن نَّسِينَآ أَوْ أَخْطَأْنَا ۚ رَبَّنَا وَلَا تَحْمِلْ عَلَيْنَآ إِصْرًا كَمَا حَمَلْتَهُۥ عَلَى ٱلَّذِينَ مِن قَبْلِنَا ۚ رَبَّنَا وَلَا تُحَمِّلْنَا مَا لَا طَاقَةَ لَنَا بِهِۦ ۖ وَٱعْفُ عَنَّا وَٱغْفِرْ لَنَا وَٱرْحَمْنَآ ۚ أَنتَ مَوْلَىٰنَا فَٱنصُرْنَا عَلَى ٱلْقَوْمِ ٱلْكَـٰفِرِينَ$$,
  NULL,
  $$Allah hiç kimseye gücünün yeteceğinden başka yük yüklemez. Herkesin kazandığı hayır kendisine, yaptığı kötülüğün zararı yine kendisinedir. Ey Rabbimiz, eğer unuttuk ya da yanıldıysak bizi tutup sorguya çekme! Ey Rabbimiz, bize bizden öncekilere yüklediğin gibi ağır yük yükleme! Ey Rabbimiz, bize gücümüzün yetmeyeceği yükü de yükleme! Bağışla bizi, mağfiret et bizi, rahmet et bize! Sensin bizim Mevlamız, kâfir kavimlere karşı yardım et bize.$$,
  $$God does not burden any soul with more than it can bear: each gains whatever good it has done, and suffers whatever bad it has done. ‘Lord, do not take us to task if we forget or make mistakes. Lord, do not burden us as You burdened those before us. Lord, do not burden us with more than we have strength to bear. Pardon us, forgive us, and have mercy on us. You are our Protector, so help us against the disbelievers.’$$,
  NULL,
  NULL,
  'quranic_dua',
  'https://quran.com/2/286',
  TIMESTAMPTZ '2026-04-17T00:00:00Z'
) ON CONFLICT (id) DO UPDATE SET
  title_tr = EXCLUDED.title_tr,
  title_ar = EXCLUDED.title_ar,
  title_en = EXCLUDED.title_en,
  text_ar = EXCLUDED.text_ar,
  transliteration = EXCLUDED.transliteration,
  text_tr = EXCLUDED.text_tr,
  text_en = EXCLUDED.text_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  category = EXCLUDED.category,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.duas (
  id, title_tr, title_ar, title_en, text_ar, transliteration, text_tr, text_en, audio_url, storage_path, category, source, verified_at
) VALUES (
  3,
  NULL,
  NULL,
  'Quran 3:8',
  $$رَبَّنَا لَا تُزِغْ قُلُوبَنَا بَعْدَ إِذْ هَدَيْتَنَا وَهَبْ لَنَا مِن لَّدُنكَ رَحْمَةً ۚ إِنَّكَ أَنتَ ٱلْوَهَّابُ$$,
  NULL,
  $$Ey Rabbimiz! Bize ihsan ettiğin hidayetten sonra kalblerimizi haktan saptırma, bize kendi katından rahmet ihsan eyle! Şüphesiz ki, Sen bol ihsan sahibisin.$$,
  $$‘Our Lord, do not let our hearts deviate after You have guided us. Grant us Your mercy: You are the Ever Giving.’$$,
  NULL,
  NULL,
  'quranic_dua',
  'https://quran.com/3/8',
  TIMESTAMPTZ '2026-04-17T00:00:00Z'
) ON CONFLICT (id) DO UPDATE SET
  title_tr = EXCLUDED.title_tr,
  title_ar = EXCLUDED.title_ar,
  title_en = EXCLUDED.title_en,
  text_ar = EXCLUDED.text_ar,
  transliteration = EXCLUDED.transliteration,
  text_tr = EXCLUDED.text_tr,
  text_en = EXCLUDED.text_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  category = EXCLUDED.category,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.duas (
  id, title_tr, title_ar, title_en, text_ar, transliteration, text_tr, text_en, audio_url, storage_path, category, source, verified_at
) VALUES (
  4,
  NULL,
  NULL,
  'Quran 14:40',
  $$رَبِّ ٱجْعَلْنِى مُقِيمَ ٱلصَّلَوٰةِ وَمِن ذُرِّيَّتِى ۚ رَبَّنَا وَتَقَبَّلْ دُعَآءِ$$,
  NULL,
  $$"Ey Rabbim! Beni ve soyumdan gelecekleri namazını dosdoğru kılanlardan eyle! Ey Rabbimiz! duamı kabul et!"$$,
  $$Lord, grant that I and my offspring may keep up the prayer. Our Lord, accept my request.$$,
  NULL,
  NULL,
  'quranic_dua',
  'https://quran.com/14/40',
  TIMESTAMPTZ '2026-04-17T00:00:00Z'
) ON CONFLICT (id) DO UPDATE SET
  title_tr = EXCLUDED.title_tr,
  title_ar = EXCLUDED.title_ar,
  title_en = EXCLUDED.title_en,
  text_ar = EXCLUDED.text_ar,
  transliteration = EXCLUDED.transliteration,
  text_tr = EXCLUDED.text_tr,
  text_en = EXCLUDED.text_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  category = EXCLUDED.category,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.duas (
  id, title_tr, title_ar, title_en, text_ar, transliteration, text_tr, text_en, audio_url, storage_path, category, source, verified_at
) VALUES (
  5,
  NULL,
  NULL,
  'Quran 17:24',
  $$وَٱخْفِضْ لَهُمَا جَنَاحَ ٱلذُّلِّ مِنَ ٱلرَّحْمَةِ وَقُل رَّبِّ ٱرْحَمْهُمَا كَمَا رَبَّيَانِى صَغِيرًا$$,
  NULL,
  $$İkisine de acıyarak tevazu kanatlarını indir. Ve şöyle de: "Ey Rabbim! Onların beni küçükten terbiye edip yetiştirdikleri gibi, sen de kendilerine merhamet et."$$,
  $$and lower your wing in humility towards them in kindness and say, ‘Lord, have mercy on them, just as they cared for me when I was little.’$$,
  NULL,
  NULL,
  'quranic_dua',
  'https://quran.com/17/24',
  TIMESTAMPTZ '2026-04-17T00:00:00Z'
) ON CONFLICT (id) DO UPDATE SET
  title_tr = EXCLUDED.title_tr,
  title_ar = EXCLUDED.title_ar,
  title_en = EXCLUDED.title_en,
  text_ar = EXCLUDED.text_ar,
  transliteration = EXCLUDED.transliteration,
  text_tr = EXCLUDED.text_tr,
  text_en = EXCLUDED.text_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  category = EXCLUDED.category,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.duas (
  id, title_tr, title_ar, title_en, text_ar, transliteration, text_tr, text_en, audio_url, storage_path, category, source, verified_at
) VALUES (
  6,
  NULL,
  NULL,
  'Quran 20:114',
  $$فَتَعَـٰلَى ٱللَّهُ ٱلْمَلِكُ ٱلْحَقُّ ۗ وَلَا تَعْجَلْ بِٱلْقُرْءَانِ مِن قَبْلِ أَن يُقْضَىٰٓ إِلَيْكَ وَحْيُهُۥ ۖ وَقُل رَّبِّ زِدْنِى عِلْمًا$$,
  NULL,
  $$Hükmü her yerde geçerli gerçek hükümdar olan Allah yücedir. (Ey Muhammed!) Kur'ân sana vahyedilirken, vahiy bitmeden önce (unutma korkusu ile) Kur'ân'ı okumada acele etme; "Rabbim! benim ilmimi artır" de.$$,
  $$exalted be God, the one who is truly in control. [Prophet], do not rush to recite before the revelation is fully complete but say, ‘Lord, increase me in knowledge!’$$,
  NULL,
  NULL,
  'quranic_dua',
  'https://quran.com/20/114',
  TIMESTAMPTZ '2026-04-17T00:00:00Z'
) ON CONFLICT (id) DO UPDATE SET
  title_tr = EXCLUDED.title_tr,
  title_ar = EXCLUDED.title_ar,
  title_en = EXCLUDED.title_en,
  text_ar = EXCLUDED.text_ar,
  transliteration = EXCLUDED.transliteration,
  text_tr = EXCLUDED.text_tr,
  text_en = EXCLUDED.text_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  category = EXCLUDED.category,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.duas (
  id, title_tr, title_ar, title_en, text_ar, transliteration, text_tr, text_en, audio_url, storage_path, category, source, verified_at
) VALUES (
  7,
  NULL,
  NULL,
  'Quran 23:118',
  $$وَقُل رَّبِّ ٱغْفِرْ وَٱرْحَمْ وَأَنتَ خَيْرُ ٱلرَّٰحِمِينَ$$,
  NULL,
  $$Resulüm! De ki: "Rabbim, bağışla ve merhamet et! Sen merhametlilerin en iyisisin."$$,
  $$Say [Prophet], ‘Lord, forgive and have mercy: You are the most merciful of all.’$$,
  NULL,
  NULL,
  'quranic_dua',
  'https://quran.com/23/118',
  TIMESTAMPTZ '2026-04-17T00:00:00Z'
) ON CONFLICT (id) DO UPDATE SET
  title_tr = EXCLUDED.title_tr,
  title_ar = EXCLUDED.title_ar,
  title_en = EXCLUDED.title_en,
  text_ar = EXCLUDED.text_ar,
  transliteration = EXCLUDED.transliteration,
  text_tr = EXCLUDED.text_tr,
  text_en = EXCLUDED.text_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  category = EXCLUDED.category,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.duas (
  id, title_tr, title_ar, title_en, text_ar, transliteration, text_tr, text_en, audio_url, storage_path, category, source, verified_at
) VALUES (
  8,
  NULL,
  NULL,
  'Quran 25:74',
  $$وَٱلَّذِينَ يَقُولُونَ رَبَّنَا هَبْ لَنَا مِنْ أَزْوَٰجِنَا وَذُرِّيَّـٰتِنَا قُرَّةَ أَعْيُنٍ وَٱجْعَلْنَا لِلْمُتَّقِينَ إِمَامًا$$,
  NULL,
  $$Ve onlar ki: "Ey Rabbimiz! Bize gözümüzü aydınlatacak eşler ve zürriyetler bağışla ve bizi takva sahiplerine önder kıl" derler.$$,
  $$those who pray, ‘Our Lord, give us joy in our spouses and offspring. Make us good examples to those who are aware of You’.$$,
  NULL,
  NULL,
  'quranic_dua',
  'https://quran.com/25/74',
  TIMESTAMPTZ '2026-04-17T00:00:00Z'
) ON CONFLICT (id) DO UPDATE SET
  title_tr = EXCLUDED.title_tr,
  title_ar = EXCLUDED.title_ar,
  title_en = EXCLUDED.title_en,
  text_ar = EXCLUDED.text_ar,
  transliteration = EXCLUDED.transliteration,
  text_tr = EXCLUDED.text_tr,
  text_en = EXCLUDED.text_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  category = EXCLUDED.category,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

select setval(
  pg_get_serial_sequence('public.duas', 'id'),
  greatest((select coalesce(max(id), 1) from public.duas), 1)
);
