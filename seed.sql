-- Core runtime seed SQL.
-- Keep this file limited to rows that can be replayed safely in production.
-- Religious education content must be imported from sourced manifests that
-- provide source and verified_at; unverified lesson text is intentionally not
-- seeded here.

INSERT INTO public.live_tv_channels (
  short_label,
  title,
  subtitle,
  embed_url,
  fallback_embed_url,
  external_url,
  muted_by_default,
  sort_order
) VALUES (
  'Makkah',
  'Makkah Al-Mukarramah',
  'Live from Masjid al-Haram',
  'https://www.youtube.com/embed/live_stream?channel=UCKJooOkz2wzQ_ofz_yX1_5A&autoplay=1&mute=1&playsinline=1',
  'https://www.youtube-nocookie.com/embed/live_stream?channel=UCKJooOkz2wzQ_ofz_yX1_5A&autoplay=1&mute=1&playsinline=1',
  'https://www.youtube.com/channel/UCKJooOkz2wzQ_ofz_yX1_5A/live',
  true,
  0
) ON CONFLICT (short_label) DO UPDATE SET
  title = EXCLUDED.title,
  subtitle = EXCLUDED.subtitle,
  embed_url = EXCLUDED.embed_url,
  fallback_embed_url = EXCLUDED.fallback_embed_url,
  external_url = EXCLUDED.external_url,
  muted_by_default = EXCLUDED.muted_by_default,
  sort_order = EXCLUDED.sort_order;

INSERT INTO public.live_tv_channels (
  short_label,
  title,
  subtitle,
  embed_url,
  fallback_embed_url,
  external_url,
  muted_by_default,
  sort_order
) VALUES (
  'Madinah',
  'Al-Madinah Al-Munawwarah',
  'Live from Masjid an-Nabawi',
  'https://www.youtube.com/embed/live_stream?channel=UCos6Hg8mF5P01sO8fQ7v7WA&autoplay=1&mute=1&playsinline=1',
  'https://www.youtube-nocookie.com/embed/live_stream?channel=UCos6Hg8mF5P01sO8fQ7v7WA&autoplay=1&mute=1&playsinline=1',
  'https://www.youtube.com/channel/UCos6Hg8mF5P01sO8fQ7v7WA/live',
  true,
  1
) ON CONFLICT (short_label) DO UPDATE SET
  title = EXCLUDED.title,
  subtitle = EXCLUDED.subtitle,
  embed_url = EXCLUDED.embed_url,
  fallback_embed_url = EXCLUDED.fallback_embed_url,
  external_url = EXCLUDED.external_url,
  muted_by_default = EXCLUDED.muted_by_default,
  sort_order = EXCLUDED.sort_order;

WITH daily_ayat_seed(surah_number, ayah_number, reference, display_date) AS (
  VALUES
    (2, 201, 'Al-Baqarah 2:201', CURRENT_DATE + INTERVAL '0 day'),
    (2, 286, 'Al-Baqarah 2:286', CURRENT_DATE + INTERVAL '1 day'),
    (3, 8, 'Ali Imran 3:8', CURRENT_DATE + INTERVAL '2 day'),
    (14, 40, 'Ibrahim 14:40', CURRENT_DATE + INTERVAL '3 day'),
    (17, 24, 'Al-Isra 17:24', CURRENT_DATE + INTERVAL '4 day'),
    (20, 114, 'Ta-Ha 20:114', CURRENT_DATE + INTERVAL '5 day'),
    (23, 118, 'Al-Mu''minun 23:118', CURRENT_DATE + INTERVAL '6 day'),
    (25, 74, 'Al-Furqan 25:74', CURRENT_DATE + INTERVAL '7 day')
)
INSERT INTO public.daily_content (
  content_type,
  content_ar,
  content_tr,
  content_en,
  reference,
  display_date,
  verified_at
)
SELECT
  'ayat',
  ayah.text_ar,
  ayah.text_tr,
  ayah.text_en,
  seed.reference,
  seed.display_date::date,
  ayah.verified_at
FROM daily_ayat_seed seed
JOIN public.quran_surahs surah
  ON surah.surah_number = seed.surah_number
JOIN public.quran_ayahs ayah
  ON ayah.surah_id = surah.id
  AND ayah.ayah_number = seed.ayah_number
ON CONFLICT (content_type, display_date) DO UPDATE SET
  content_type = EXCLUDED.content_type,
  content_ar = EXCLUDED.content_ar,
  content_tr = EXCLUDED.content_tr,
  content_en = EXCLUDED.content_en,
  reference = EXCLUDED.reference,
  verified_at = EXCLUDED.verified_at;
