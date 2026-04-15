# Sirat-i Nur v2: The Definitive Rewrite

This repository represents the **V2 architecture** of the Sirat-i Nur Islamic Lifestyle App. The original (`modern_islamic_app`) was entirely archived due to monolithic technical debt and broken API integrations. This version was meticulously rebuilt from the ground up by AI agents (specifically engineered for the ultimate "Codex" handoff) under the strict supervision of the lead developer Umut.

## Project History & "The 109-Point Audit"
The guiding philosophy of this rewrite was: **"100% Functionality, Zero Placeholders."** Every single interactive element, setting, and subpage in this app is genuinely connected to a functional backend, local JSON database, or state management provider.

### Key Refactoring Milestones
1. **Repository Reset**: A completely clean Flutter initialization. Legacy code was discarded.
2. **State Management**: Full migration to **Riverpod** for predictable state, alongside **GoRouter** for declarative navigation.
3. **The Local Data Revolution**: Because relying heavily on 3rd party APIs creates points of failure, we imported gigabytes of `assets/data/`. `full_quran.json` provides instantaneous Arabic and translated text for all 114 Surahs offline.
4. **The 189-Language Matrix**: Using a highly optimized Dart translation automation script, we generated 192 localized `.arb` files dynamically translating the English localization map into every supported standard language code, giving the app massive global reach instantly.
5. **Geospatial Independence**: Google Maps was removed due to API key barriers and replaced with **flutter_map**. Production builds must provide a verified tile source instead of relying on public demo tile servers.
6. **Permanent Live TV**: YouTube iframe widgets with expiring `videoId` strings were thrown out. We integrated raw channel WebViews, meaning the Mekkah/Madinah live feeds will auto-resolve regardless of the current active broadcast URL.
7. **The 109-Point "No Dummy" Sweep**: A massive sweep eradicated placeholder UIs. Paywall purchase buttons route through the platform in-app purchase flow and only persist premium entitlement after a purchased or restored store update. "Daily Verses" actively read the day of the year to pull from `daily_ayat_data.dart`. The Qibla Offset slider actually mathematically alters the user's GPS magnetometer vector. Audio voice selectors use verified Supabase Storage-backed rows instead of direct third-party MP3 playback.

## Core Architecture
- **Framework**: Flutter (Dart)
- **State Management**: `flutter_riverpod` (v2)
- **Navigation**: `go_router`
- **Networking/Audio**: `just_audio`, `audio_session`, `webview_flutter`
- **Location/Math**: `adhan` (Prayer calculation), `flutter_compass`, `geolocator`, `flutter_map`
- **Persistence**: `shared_preferences`
- **BaaS**: Supabase (build-time configured; bundled/cache fallbacks keep the app offline-first when credentials are absent)

## Folder Structure
```
lib/
├── core/
│   ├── network/ (Supabase, GoRouter wrappers)
│   ├── services/ (PrayerMath, AudioServices, QiblaBridge)
│   ├── theme/ (AppColors: Premium Emerald & Gold)
│   ├── constants/ (Static Dictionaries)
│   └── widgets/ (Reusable Premium UI Cards)
├── domain/ (Entities and Models)
└── features/
    ├── home/ (Dashboard, Daily Ibadah, Dynamic Verses)
    ├── quran/ (Juz/Surah reading, just_audio streaming)
    ├── settings/ (Language, Voice, Math Modules, Cache Clearing)
    ├── qibla/ (Sensor hookup and offset calibration)
    ├── tracker/ (Persistent state-managed tracking modules)
    ├── library/ (Hadith, Duas, Asma-ul-Husna matrices)
    └── premium/ (Platform in-app purchase Paywall provider)
```

## Setup & Compilation
No hidden keys are required for normal local development.
1. `flutter pub get`
2. `flutter run` -> Instantly functional with bundled/offline-first data.

Production builds must inject Supabase values explicitly when cloud content, Storage audio, or diagnostics should be live. The anon key is intentionally empty by default and must not be committed as a fallback value:
```bash
flutter build apk \
  --dart-define=SUPABASE_URL=https://... \
  --dart-define=SUPABASE_ANON_KEY=sb_... \
  --dart-define=SUPABASE_QURAN_AUDIO_BUCKET=quran-audio \
  --dart-define=PLACES_TILE_URL_TEMPLATE=https://tiles.example.com/{z}/{x}/{y}.png \
  --dart-define=PLACES_OVERPASS_API_URL=https://places-proxy.example.com/api/interpreter
```

`PLACES_TILE_URL_TEMPLATE` is intentionally empty by default. Without it, the Places screen shows an honest map-unavailable state instead of silently using a public tile server. `PLACES_OVERPASS_API_URL` is also intentionally empty by default; configure it with a monitored proxy, an approved provider, or your own rate-limited Overpass-compatible endpoint before enabling nearby search in production.

## Quran Audio Sovereignty Workflow
The runtime requires Supabase Storage-backed `storage_path` rows for playable audio. `content_seed_quran_audio.sql` and external audio URLs in seed data are mirror inputs only; they are not runtime playback seeds or fallbacks. Do not apply `content_seed_quran_audio_storage.sql` before the matching MP3 files are uploaded to the `quran-audio` bucket.

1. Mirror the verified source audio locally:
```bash
dart run tool/download_verified_quran_audio.dart --overwrite
```

2. Validate the upload plan without writing to Storage:
```bash
dart run tool/upload_quran_audio_storage.dart \
  --manifest=build/verified_quran_audio/manifest.json \
  --supabase-url=https://your-project.supabase.co \
  --dry-run
```

3. Upload the mirrored MP3 files with a service-role key stored in the environment, never in command history:
```bash
$env:SUPABASE_URL="https://your-project.supabase.co"
$env:SUPABASE_SERVICE_ROLE_KEY="..."
dart run tool/upload_quran_audio_storage.dart --manifest=build/verified_quran_audio/manifest.json
```

4. Generate the storage-backed database seed from the completed manifest:
```bash
dart run tool/generate_quran_audio_storage_seed.dart \
  --manifest=build/verified_quran_audio/manifest.json \
  --output=content_seed_quran_audio_storage.sql
```

5. Apply `content_schema.sql` first, then apply the generated storage seed. The generator rejects incomplete or failed mirror manifests, so a partial download cannot silently become a database seed. `--allow-partial` is only for local smoke tests and must not be used for production audio seeding.

---
*Generated for Codex and future AI iterations to understand the absolute structural integrity of the V2 codebase.*
