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
7. **The 109-Point "No Dummy" Sweep**: A massive sweep eradicated placeholder UIs. Paywall purchase buttons route through the platform in-app purchase flow and only persist premium entitlement after a purchased or restored store update. "Daily Verses" actively read the day of the year to pull from `daily_ayat_data.dart`. The Qibla Offset slider actually mathematically alters the user's GPS magnetometer vector. Audio voice selectors use verified storage-path rows and first-party distribution endpoints instead of direct third-party MP3 playback.

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

Production builds must inject Supabase values explicitly when cloud content or diagnostics should be live. Use `SUPABASE_PUBLISHABLE_KEY` for the client-side key; legacy `SUPABASE_ANON_KEY` is still accepted for older local environments. No Supabase client key may be committed as a fallback value:
```powershell
.\tool\build_store_appbundle.ps1
```
Use `.env.example` as the local/CI checklist. Real `.env` files are git-ignored; export the values into the shell or CI secret store before running release scripts.

`PLACES_TILE_URL_TEMPLATE` is intentionally empty by default. Without it, the Places screen shows an honest map-unavailable state instead of silently using a public tile server. Production values must be HTTPS tile templates containing `{z}`, `{x}`, and `{y}`, must not carry client-side query tokens or user-info secrets, and must not point directly at public OpenStreetMap tile hosts. `PLACES_OVERPASS_API_URL` is also intentionally empty by default; configure it with a monitored HTTPS proxy, an approved HTTPS provider, or your own rate-limited HTTPS Overpass-compatible endpoint before enabling nearby search in production. The app refuses known public community Overpass hosts and endpoint URLs containing user info, query strings, or fragments so secrets and unbounded community-service traffic are not shipped in the client.

## Store Release Gates
Release builds never fall back to the Android debug keystore. Local release packaging reads `android/key.properties`, and CI/release automation may instead provide `SIRAT_UPLOAD_STORE_FILE`, `SIRAT_UPLOAD_STORE_PASSWORD`, `SIRAT_UPLOAD_KEY_ALIAS`, and `SIRAT_UPLOAD_KEY_PASSWORD`. Keep the keystore and `android/key.properties` out of git; use `android/key.properties.example` as the template. If signing is missing, `validateStoreReleaseSigning` fails `bundleRelease`/`assembleRelease` before an unsigned or debug-signed artifact can be uploaded. `validateStoreReleaseRuntimeConfig` also fails direct release packaging when the required runtime `--dart-define` values are missing or unsafe. Run `tool/check_store_readiness.ps1` before every upload; it refuses to mark the app ready when production env vars, upload signing, Quran audio mirror evidence, Cloudflare/GitHub Quran audio distribution config, Supabase production content apply evidence, or the public privacy URL are missing. Use `tool/build_store_appbundle.ps1` for store packaging because it refuses to build when `SUPABASE_URL`, `SUPABASE_PUBLISHABLE_KEY` (or legacy `SUPABASE_ANON_KEY`), `PLACES_TILE_URL_TEMPLATE`, `PLACES_OVERPASS_API_URL`, `QURAN_AUDIO_CLOUDFLARE_BASE_URL`, or `QURAN_AUDIO_GITHUB_URL_TEMPLATE` are missing.

Store policy materials are tracked under `store/`. Keep `docs/privacy_policy.md`, `store/release_checklist.md`, `store/play/data_safety.md`, `store/play/exact_alarm_declaration.md`, `store/play/billing_test_plan.md`, and `store/appstore/app_privacy.md` aligned with code before every release. Exact alarms are used only for user-enabled prayer reminders and adhan alerts; when Android does not allow exact alarms, the scheduler falls back to inexact reminders instead of pretending exact scheduling succeeded.

After installing the current Android candidate on an emulator or test device
with Appium running, execute the runtime UI smoke before release sign-off:
```powershell
.\tool\appium_runtime_smoke.ps1
```
The script writes `build/appium-runtime-smoke-summary.json` and fails if first
launch opens Android Settings, onboarding or runtime navigation breaks, legacy
offline copy appears, or logcat contains crash markers.

## Quran Audio Sovereignty Workflow
The runtime requires verified `storage_path` rows and first-party distribution endpoints for playable Quran audio. Supabase stores only metadata/path rows; the 11.6 GB Quran MP3 catalog is not uploaded to Supabase Storage. The planned split is Cloudflare R2/CDN for every reciter except `abdul_basit_murattal`, and GitHub Releases for the complete `abdul_basit_murattal` overflow set. `content_seed_quran_audio.sql` and external audio URLs in seed data are mirror inputs only; they are not runtime playback seeds or fallbacks.

The mirror manifest is the integrity contract between download, provider upload, and seed generation. Every file row must include `size_bytes` and a 64-character `sha256` checksum produced by `tool/download_verified_quran_audio.dart`. `tool/generate_quran_audio_storage_seed.dart` rejects old manifests that do not include this evidence, so regenerate `build/verified_quran_audio/manifest.json` after pulling changes that update the manifest schema.

1. Mirror the verified source audio locally:
```bash
dart run tool/download_verified_quran_audio.dart --overwrite
```

2. Validate the generated storage-path database seed:
```bash
dart run tool/generate_quran_audio_storage_seed.dart \
  --manifest=build/verified_quran_audio/manifest.json \
  --output=content_seed_quran_audio_storage.sql
```

3. Upload the mirrored MP3 files to the selected first-party distribution providers. First produce the provider split plan, then keep `abdul_basit_murattal` as the GitHub overflow partition and all other reciters as the Cloudflare partition. The upload script validates the manifest and writes `build/quran_audio_distribution_upload_summary.json`; the readiness checker rejects dry-run or missing summaries so provider upload cannot be marked complete by documentation alone.
```powershell
.\tool\upload_quran_audio_distribution.ps1 -DryRun
.\tool\upload_quran_audio_distribution.ps1 -CloudflareBucket <r2-bucket-name> -GithubReleaseTag quran-audio-v1
```

4. Generate the verified hadith and tafsir seeds only after an operator supplies sourced manifests. Do not invent, scrape ad-hoc, or placeholder religious text. The hadith generator requires every supported collection and at least 100 verified rows per collection; the tafsir generator requires a complete 6,236-ayah catalog per tafsir source. Both require `source`, `source_license`, and `verified_at` provenance before SQL can be written.
```bash
dart run tool/generate_hadith_seed.dart \
  --manifest=content_hadith_manifest.json \
  --output=content_seed_hadith.sql

dart run tool/generate_tafsir_seed.dart \
  --manifest=content_tafsir_manifest.json \
  --output=content_seed_tafsir.sql
```

5. Apply `content_schema.sql`, Quran surah/ayah seeds, `content_seed_quran_audio_storage.sql`, the Quran-verified `content_seed_duas.sql`, `seed.sql`, `content_seed_hadith.sql`, and `content_seed_tafsir.sql` to production Supabase with the tracked apply gate from a release shell or CI job where `SUPABASE_DB_URL` is injected as a secure secret. The generators reject incomplete or failed manifests, so a partial download or partial religious corpus cannot silently become a database seed. `--allow-partial` is only for local smoke tests, may only write under `build/`, and must not be used for production audio seeding.
```powershell
.\tool\apply_supabase_content_bundle.ps1 -DryRun
.\tool\apply_supabase_content_bundle.ps1
```
The real apply must write `build/supabase_content_apply_summary.json` with `dry_run=false` and every required SQL file listed under `files_applied`; the readiness checker rejects missing or dry-run-only summaries.

---
*Generated for Codex and future AI iterations to understand the absolute structural integrity of the V2 codebase.*
