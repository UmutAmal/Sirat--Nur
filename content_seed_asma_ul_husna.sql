-- Verified Asma-ul-Husna seed generated from bundled TDV-aligned data.
-- Source: https://islamansiklopedisi.org.tr/esma-i-husna

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  1,
  'الرَّحْمَنُ',
  'Ar Rahmaan',
  'Dünyadaki bütün yaratılmışlara merhamet eden, acıyan, esirgeyen.',
  'The Beneficent',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  2,
  'الرَّحِيمُ',
  'Ar Raheem',
  'Ahirette müminlere sonsuz ihsanda, lütufta ve ikramda bulunan.',
  'The Merciful',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  3,
  'الْمَلِكُ',
  'Al Malik',
  'Kainatın sahibi, mülk ve saltanatı sürekli olan, hakimiyetin mutlak sahibi.',
  'The King / Eternal Lord',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  4,
  'الْقُدُّوسُ',
  'Al Quddus',
  'Her türlü eksiklikten uzak olan, her türlü noksanlıktan münezzeh.',
  'The Most Holy',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  5,
  'السَّلاَمُ',
  'As Salaam',
  'Her tehlikeden selamete çıkaran, esenlik veren.',
  'The Source of Peace',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  6,
  'الْمُؤْمِنُ',
  'Al Mu''min',
  'Güven veren, emin kılan, koruyan, vaadine güvenilen.',
  'The Giver of Security',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  7,
  'الْمُهَيْمِنُ',
  'Al Muhaymin',
  'Her şeyi görüp gözeten, denetleyen, kâinatın hâkim ve yöneticisi.',
  'The Watchful Guardian, who observes and safeguards all creation.',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  8,
  'الْعَزِيزُ',
  'Al Azeez',
  'İzzet sahibi, her şeye galip olan, mutlak güç sahibi.',
  'The Precious / The Most Mighty',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  9,
  'الْجَبَّارُ',
  'Al Jabbaar',
  'Azamet ve kudret sahibi, dilediğini yapan ve yaptıran.',
  'The Restorer and Irresistible, whose will prevails with perfect power.',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  10,
  'الْمُتَكَبِّرُ',
  'Al Mutakabbir',
  'Büyüklükte eşi, benzeri olmayan, azametini gösteren.',
  'The Greatest',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  11,
  'الْخَالِقُ',
  'Al Khaaliq',
  'Yaratan, yoktan var eden, varlıkların hallerini takdir eden.',
  'The Creator',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  12,
  'الْبَارِئُ',
  'Al Baari',
  'Her şeyi kusursuz ve uyumlu yaratan.',
  'The Maker of Order',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  13,
  'الْمُصَوِّرُ',
  'Al Musawwir',
  'Varlıklara şekil veren ve onları birbirinden farklı kılan.',
  'The Shaper of Beauty',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  14,
  'الْغَفَّارُ',
  'Al Ghaffaar',
  'Çok mağfiret eden, daima affeden, günahları bağışlayan.',
  'The Forgiving',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  15,
  'الْقَهَّارُ',
  'Al Qahhaar',
  'Her şeye hakim ve galip, yenilmeyen mutlak galip.',
  'The Subduer',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  16,
  'الْوَهَّابُ',
  'Al Wahhaab',
  'Karşılık beklemeden bol bol lütfeden ve veren.',
  'The Giver of All',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  17,
  'الرَّزَّاقُ',
  'Ar Razzaaq',
  'Bedenlerin ve ruhların gıdasını yaratıp veren.',
  'The Sustainer',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  18,
  'الْفَتَّاحُ',
  'Al Fattaah',
  'İyilik kapılarını açan, hakemlik yapan.',
  'The Opener',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  19,
  'اَلْعَلِيْمُ',
  'Al ''Aleem',
  'Her şeyi hakkıyla bilen, her şeyi en iyi bilen.',
  'The Knower of All',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  20,
  'الْقَابِضُ',
  'Al Qaabid',
  'Dilediğine darlık veren, sıkan, daraltan.',
  'The Withholder, who narrows and restrains by wisdom.',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  21,
  'الْبَاسِطُ',
  'Al Baasit',
  'Dilediğine bolluk veren, açan, genişleten.',
  'The Expander, who opens, eases, and grants abundance by wisdom.',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  22,
  'الْخَافِضُ',
  'Al Khaafid',
  'Alçaltan, aşağı indiren.',
  'The Abaser',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  23,
  'الرَّافِعُ',
  'Ar Raafi''',
  'Şeref verip yükselten, dilediğini yücelten.',
  'The Exalter',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  24,
  'الْمُعِزُّ',
  'Al Mu''iz',
  'Dilediğini aziz eden, izzet ve şeref veren.',
  'The Bestower of Honour',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  25,
  'المُذِلُّ',
  'Al Mudhil',
  'Dilediğini zillete düşüren, alçaltan.',
  'The Humiliator',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  26,
  'السَّمِيعُ',
  'As Samee''',
  'Her şeyi en iyi işiten.',
  'The Hearer of All',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  27,
  'الْبَصِيرُ',
  'Al Baseer',
  'Gizli açık, her şeyi en iyi gören.',
  'The Seer of All',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  28,
  'الْحَكَمُ',
  'Al Hakam',
  'Mutlak hakim, hakkı batıldan ayıran, son hükmü veren.',
  'The Judge',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  29,
  'الْعَدْلُ',
  'Al ''Adl',
  'Mutlak adil, çok adaletli, yerli yerinde yapan.',
  'The Just',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  30,
  'اللَّطِيفُ',
  'Al Lateef',
  'Lütuf ve ihsan sahibi, bütün incelikleri bilen.',
  'The Subtle One',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  31,
  'الْخَبِيرُ',
  'Al Khabeer',
  'Olmuş olacak her şeyin iç yüzünden haberdar olan.',
  'The All Aware',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  32,
  'الْحَلِيمُ',
  'Al Haleem',
  'Cezada acele etmeyen, yumuşak davranan, hilm sahibi.',
  'The Forebearing',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  33,
  'الْعَظِيمُ',
  'Al ''Azeem',
  'Pek yüce, zat ve sıfatlarının mahiyeti anlaşılamayacak kadar yüce.',
  'The Magnificent',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  34,
  'الْغَفُورُ',
  'Al Ghafoor',
  'Affı, mağfireti bol, bütün günahları bağışlayan.',
  'The Great Forgiver',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  35,
  'الشَّكُورُ',
  'Ash Shakoor',
  'Az amele, çok sevap veren, şükürleri kabul eden.',
  'The Rewarder of Thankfulness',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  36,
  'الْعَلِيُّ',
  'Al ''Aliyy',
  'Yüceler yücesi, çok yüce.',
  'The Highest',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  37,
  'الْكَبِيرُ',
  'Al Kabeer',
  'Büyüklükte benzeri olmayan, pek büyük.',
  'The Greatest',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  38,
  'الْحَفِيظُ',
  'Al Hafeez',
  'Her şeyi koruyucu olan, koruyup gözeten.',
  'The Preserver',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  39,
  'المُقيِت',
  'Al Muqeet',
  'Her yaratılmışın rızkını, gıdasını veren ve tayin eden.',
  'The Nourisher',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  40,
  'الْحسِيبُ',
  'Al Haseeb',
  'Kulların hesabını en iyi gören.',
  'The Reckoner',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  41,
  'الْجَلِيلُ',
  'Al Jaleel',
  'Celal ve azamet sahibi olan.',
  'The Majestic',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  42,
  'الْكَرِيمُ',
  'Al Kareem',
  'Keremi, lütuf ve ihsanı bol, çok ikram eden.',
  'The Generous',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  43,
  'الرَّقِيبُ',
  'Ar Raqeeb',
  'Her varlığı her an görüp gözeten, kontrolü altında tutan.',
  'The Watchful One',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  44,
  'الْمُجِيبُ',
  'Al Mujeeb',
  'Duaları, istekleri kabul eden.',
  'The Responder to Prayer',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  45,
  'الْوَاسِعُ',
  'Al Waasi''',
  'İlmi ve rahmeti her şeyi kuşatan.',
  'The All Comprehending',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  46,
  'الْحَكِيمُ',
  'Al Hakeem',
  'Her işi hikmetli, her şeyi hikmetle yaratan.',
  'The Perfectly Wise',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  47,
  'الْوَدُودُ',
  'Al Wudood',
  'Kullarını en fazla seven, sevilmeye en layık olan.',
  'The Loving One',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  48,
  'الْمَجِيدُ',
  'Al Majeed',
  'Her türlü övgüye layık, kadri ve şânı büyük.',
  'The Most Glorious One',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  49,
  'الْبَاعِثُ',
  'Al Baa''ith',
  'Ölüleri dirilten, peygamber gönderen.',
  'The Resurrector',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  50,
  'الشَّهِيدُ',
  'Ash Shaheed',
  'Her zaman her yerde hazır ve nazır olan.',
  'The Witness',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  51,
  'الْحَقُّ',
  'Al Haqq',
  'Varlığı hiç değişmeden duran, var olan, hakkı ortaya çıkaran.',
  'The Truth',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  52,
  'الْوَكِيلُ',
  'Al Wakeel',
  'Kendisine tevekkül edenlerin işlerini en iyi sonuçlandıran.',
  'The All-Sufficient Trustee',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  53,
  'الْقَوِيُّ',
  'Al Qawiyy',
  'Kudreti en üstün ve hiç azalmaz olan.',
  'The Possessor of All Strength',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  54,
  'الْمَتِينُ',
  'Al Mateen',
  'Kuvvet ve kudret kaynağı, pek güçlü.',
  'The Forceful',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  55,
  'الْوَلِيُّ',
  'Al Waliyy',
  'Dost ve yardımcı olan.',
  'The Protector',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  56,
  'الْحَمِيدُ',
  'Al Hameed',
  'Her türlü övgüye, hamd ve senaya layık olan.',
  'The Praised',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  57,
  'الْمُحْصِي',
  'Al Muhsi',
  'Her şeyin sayısını bilen, her şeyi tek tek sayan.',
  'The Appraiser',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  58,
  'الْمُبْدِئُ',
  'Al Mubdi',
  'Yarattıklarını maddesiz ve modelsiz olarak ilk baştan yaratan.',
  'The Originator',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  59,
  'الْمُعِيدُ',
  'Al Mu''eed',
  'Yarattıklarını yok edip, sonra tekrar diriltecek olan.',
  'The Restorer',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  60,
  'الْمُحْيِي',
  'Al Muhiy',
  'İhya eden, dirilten, can veren.',
  'The Giver of Life',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  61,
  'اَلْمُمِيتُ',
  'Al Mumeet',
  'Her canlıya ölümü tattıran.',
  'The Taker of Life',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  62,
  'الْحَيُّ',
  'Al Haiyy',
  'Ezeli ve ebedi hayat sahibi, daima diri olan.',
  'The Ever Living',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  63,
  'الْقَيُّومُ',
  'Al Qayyoom',
  'Varlıkları diri tutan, zatı ile kaim olan.',
  'The Self-Subsisting Sustainer',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  64,
  'الْوَاجِدُ',
  'Al Waajid',
  'İstediğini, istediği vakit bulan, hiçbir şeye muhtaç olmayan.',
  'The Finder',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  65,
  'الْمَاجِدُ',
  'Al Maajid',
  'Kadri ve şanı büyük, keremi, ihsanı bol olan.',
  'The Glorious',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  66,
  'الْواحِدُ',
  'Al Waahid',
  'Zat, sıfat ve fiillerinde ortağı olmayan, tek olan.',
  'The Only One',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  67,
  'اَلاَحَدُ',
  'Al Ahad',
  'Zatında tek olan (Vahidin pekiştirilmiş hali).',
  'The One',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  68,
  'الصَّمَدُ',
  'As Samad',
  'Hiçbir şeye ihtiyacı olmayan, herkesin muhtaç olduğu merci.',
  'The One Sought by All',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  69,
  'الْقَادِرُ',
  'Al Qaadir',
  'Dilediğini dilediği gibi yaratmaya muktedir olan.',
  'The Powerful',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  70,
  'الْمُقْتَدِرُ',
  'Al Muqtadir',
  'Dilediği gibi tasarruf eden, her şeye gücü yeten.',
  'The Creator of all power',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  71,
  'الْمُقَدِّمُ',
  'Al Muqaddim',
  'Dilediğini öne alan, yükselten.',
  'The Expediter',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  72,
  'الْمُؤَخِّرُ',
  'Al Mu’akhir',
  'Dilediğini sona alan, erteleyen, geriye bırakan.',
  'The Delayer',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  73,
  'الأوَّلُ',
  'Al Awwal',
  'Ezeli olan, varlığının başlangıcı olmayan.',
  'The First',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  74,
  'الآخِرُ',
  'Al Aakhir',
  'Ebedi olan, varlığının sonu olmayan.',
  'The Last',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  75,
  'الظَّاهِرُ',
  'Az Zaahir',
  'Varlığı açık, aşikar olan, kesin delillerle bilinen.',
  'The Manifest',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  76,
  'الْبَاطِنُ',
  'Al Baatin',
  'Akılların idrak edemeyeceği yüceliği gizli olan.',
  'The Hidden',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  77,
  'الْوَالِي',
  'Al Waali',
  'Bütün kainatı idare eden.',
  'The Protecting Patron, who governs and cares for all creation.',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  78,
  'الْمُتَعَالِي',
  'Al Muta’ali',
  'Son derece yüce olan.',
  'The Supreme One',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  79,
  'الْبَرُّ',
  'Al Barr',
  'İyilik ve ihsanı bol, iyilik kaynağı.',
  'The Doer of Good',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  80,
  'التَّوَابُ',
  'At Tawwaab',
  'Tevbeleri kabul edip, günahları bağışlayan.',
  'The Guide to Repentance',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  81,
  'الْمُنْتَقِمُ',
  'Al Muntaqim',
  'Zalimlerin cezasını veren, intikam alan.',
  'The Avenger',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  82,
  'العَفُوُّ',
  'Al Afuww',
  'Affı çok olan, günahları silen.',
  'The Forgiver',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  83,
  'الرَّؤُوفُ',
  'Ar Ra’oof',
  'Çok merhametli, pek şefkatli.',
  'The Most Kind and Compassionate, full of tender mercy.',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  84,
  'مَالِكُ الْمُلْكِ',
  'Maalik Ul Mulk',
  'Mülkün, her varlığın asıl sahibi.',
  'The Owner / Sovereign of All',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  85,
  'ذُوالْجَلاَلِ وَالإكْرَامِ',
  'Dhu Al Jalaali Wa Al Ikraam',
  'Celal, azamet ve pek büyük ikram sahibi.',
  'The Possessor of Majesty and Bounty',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  86,
  'الْمُقْسِطُ',
  'Al Muqsit',
  'Her işi birbirine uygun yapan, adaletle hükmeden.',
  'The Equitable One',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  87,
  'الْجَامِعُ',
  'Al Jaami''',
  'Mahşerde mahlükatı bir araya toplayan.',
  'The Gatherer',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  88,
  'الْغَنِيُّ',
  'Al Ghaniyy',
  'İhtiyaçsız, hiç kimseye muhtaç olmayan.',
  'The Rich One',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  89,
  'الْمُغْنِي',
  'Al Mughni',
  'İhtiyaç gideren, zengin eden.',
  'The Enricher',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  90,
  'اَلْمَانِعُ',
  'Al Maani''',
  'Dilemediği şeye mani olan, engelleyen.',
  'The Preventer of Harm',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  91,
  'الضَّارَّ',
  'Ad Darr',
  'Elem ve zarar verenleri yaratan, dilediğine zarar veren.',
  'The Bringer of Harm',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  92,
  'النَّافِعُ',
  'An Naafi’',
  'Fayda veren şeyleri yaratan, dilediğine fayda veren.',
  'The Bestower of Benefits',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  93,
  'النُّورُ',
  'An Noor',
  'Âlemleri nurlandıran, dilediğine nur veren.',
  'The Light',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  94,
  'الْهَادِي',
  'Al Haadi',
  'Hidayet veren, doğru yola ileten.',
  'The Guider',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  95,
  'الْبَدِيعُ',
  'Al Badi''',
  'Örneksiz, hayret verici harikalar yaratan.',
  'The Originator',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  96,
  'اَلْبَاقِي',
  'Al Baaqi',
  'Varlığının sonu olmayan, ebedi olan.',
  'The Everlasting One',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  97,
  'الْوَارِثُ',
  'Al Waarith',
  'Her şeyin asıl sahibi ve varisi olan.',
  'The Inheritor',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  98,
  'الرَّشِيدُ',
  'Ar Rasheed',
  'Doğru yolu gösteren, irşad eden.',
  'The Most Righteous Guide',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

INSERT INTO public.asma_ul_husna (
  id, name_ar, transliteration, meaning_tr, meaning_en,
  audio_url, storage_path, source, verified_at
) VALUES (
  99,
  'الصَّبُورُ',
  'As Saboor',
  'Cezada acele etmeyen, sabırlı olan.',
  'The Patient, who does not hasten punishment and acts with perfect forbearance.',
  NULL,
  NULL,
  'https://islamansiklopedisi.org.tr/esma-i-husna',
  TIMESTAMPTZ '2026-04-23T21:59:06.532113Z'
) ON CONFLICT (id) DO UPDATE SET
  name_ar = EXCLUDED.name_ar,
  transliteration = EXCLUDED.transliteration,
  meaning_tr = EXCLUDED.meaning_tr,
  meaning_en = EXCLUDED.meaning_en,
  audio_url = EXCLUDED.audio_url,
  storage_path = EXCLUDED.storage_path,
  source = EXCLUDED.source,
  verified_at = EXCLUDED.verified_at;

