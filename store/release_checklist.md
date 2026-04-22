# Store Release Checklist

This checklist is the release operator contract for Sirat-i Nur. It is not a
marketing document; every item must be true before calling a build
production-ready.

## Official Policy References

- Google Play Data safety form:
  https://support.google.com/googleplay/android-developer/answer/10787469
- Android exact alarm behavior and permission flow:
  https://developer.android.com/about/versions/14/changes/schedule-exact-alarms
- Android alarm scheduling guidance:
  https://developer.android.com/develop/background-work/services/alarms/schedule
- Apple App Privacy details:
  https://developer.apple.com/app-store/app-privacy-details/
- App Store Connect privacy management:
  https://developer.apple.com/help/app-store-connect/manage-app-information/manage-app-privacy
- Apple App Review Guidelines, privacy policy requirement:
  https://developer.apple.com/app-store/review/guidelines

## Machine Gate

Run this before every store upload:

```powershell
.\tool\check_store_readiness.ps1
```

The checker intentionally fails if production environment variables, upload
signing, Quran audio mirror/distribution evidence, or the public privacy policy are missing.
Do not bypass it by using a raw `flutter build` command.

Run this after installing the current Android candidate on an emulator or test
device with Appium running:

```powershell
.\tool\appium_runtime_smoke.ps1
```

The Appium smoke must pass before release sign-off. Keep
`build/appium-runtime-smoke-summary.json` with the release evidence; it proves
first launch did not open Android Settings, onboarding completed, bottom
navigation and quick access pages opened, legacy offline copy did not appear,
and logcat stayed crash-free.

## Required Local Secrets

These values must exist only on the release machine or secure CI secret store:

- `android/key.properties`
- Upload keystore referenced by `android/key.properties`
- `SUPABASE_URL`
- `SUPABASE_PUBLISHABLE_KEY` (legacy `SUPABASE_ANON_KEY` is still accepted)
- `SUPABASE_DB_URL` for applying production content schema/seed SQL
- `PLACES_TILE_URL_TEMPLATE`
- `PLACES_OVERPASS_API_URL`
- `QURAN_AUDIO_CLOUDFLARE_BASE_URL`
- `QURAN_AUDIO_GITHUB_URL_TEMPLATE`
- `QURAN_AUDIO_CLOUDFLARE_BUCKET` for the upload operator script, or pass
  `-CloudflareBucket` explicitly
- Optional: `GEMINI_API_KEY`

No secret value may be committed to git, pasted into documentation, or embedded
in Dart source.

## Quran Audio Release Gate

1. Download the verified Quran audio mirror:

```powershell
dart run tool/download_verified_quran_audio.dart --overwrite
```

2. Generate the storage-path seed:

```powershell
dart run tool/generate_quran_audio_storage_seed.dart --manifest=build/verified_quran_audio/manifest.json --output=content_seed_quran_audio_storage.sql
```

3. Upload the complete mirror to first-party distribution providers:

- Cloudflare partition: every reciter except `abdul_basit_murattal`; checker
  must report this partition below 10 GB.
- GitHub Releases overflow partition: complete `abdul_basit_murattal` set
  with 114 files.
- Use the tracked upload gate so the release has machine-readable evidence:

```powershell
.\tool\upload_quran_audio_distribution.ps1 -DryRun
.\tool\upload_quran_audio_distribution.ps1 -CloudflareBucket <r2-bucket-name> -GithubReleaseTag quran-audio-v1
```

The real upload must write
`build/quran_audio_distribution_upload_summary.json` with `dry_run=false`,
Cloudflare `uploaded=570`, and GitHub `uploaded=114`.

4. Generate verified hadith and tafsir seeds from operator-reviewed manifests.
Do not write placeholder or unsourced religious content.

```powershell
dart run tool/generate_hadith_seed.dart --manifest=content_hadith_manifest.json --output=content_seed_hadith.sql
dart run tool/generate_tafsir_seed.dart --manifest=content_tafsir_manifest.json --output=content_seed_tafsir.sql
```

- Hadith production manifests must represent every supported collection and
  include at least 100 verified rows per collection.
- Tafsir production manifests must provide a complete 6,236-ayah catalog per
  tafsir source.
- Every hadith and tafsir row must carry `source`, `source_license`, and
  `verified_at`; missing provenance is a release blocker.

5. Apply `content_schema.sql`, Quran surah/ayah seed data,
`content_seed_quran_audio_storage.sql`, core seed data,
`content_seed_hadith.sql`, and `content_seed_tafsir.sql` to the production
Supabase project with the tracked apply gate:

```powershell
.\tool\apply_supabase_content_bundle.ps1 -DryRun
.\tool\apply_supabase_content_bundle.ps1
```

The real apply must write `build/supabase_content_apply_summary.json` with
`dry_run=false` and every required SQL file listed under `files_applied`.

The mirror is complete only when the manifest has `requested=684`,
`files=684`, and zero failures. Partial manifests are development-only and must
not be used for production seeding.

## Android Store Gate

- `android.permission.SCHEDULE_EXACT_ALARM` is present for user-enabled prayer
  reminders.
- `android.permission.USE_EXACT_ALARM` is not present. The app uses the
  revocable runtime exact-alarm flow and falls back to inexact reminders when
  exact alarms are unavailable.
- `.\tool\build_store_appbundle.ps1` must produce the release AAB.
- `jarsigner -verify build\app\outputs\bundle\release\app-release.aab` must
  report `jar verified`.
- Google Play Data safety answers must match `store/play/data_safety.md`.
- Exact alarm declaration must match `store/play/exact_alarm_declaration.md`.
- Billing test steps must match `store/play/billing_test_plan.md`.

## iOS Store Gate

- `NSLocationWhenInUseUsageDescription` must remain in
  `ios/Runner/Info.plist`.
- App privacy answers must match `store/appstore/app_privacy.md`.
- App Store Connect privacy policy URL must point to
  `docs/privacy_policy.md` on the public repository or an equivalent hosted
  policy URL.
- Archive and signing must be verified on a macOS release machine with the
  Apple Developer team configured.

## Final Evidence To Keep

- Store readiness checker output.
- Appium runtime smoke summary: `build/appium-runtime-smoke-summary.json`.
- `flutter analyze` output.
- `flutter test --reporter compact` output.
- Store AAB path and size.
- `jarsigner` verification output.
- Cloudflare/GitHub Quran audio upload summary:
  `build/quran_audio_distribution_upload_summary.json`.
- Play Console/App Store Connect screenshots or exported notes showing policy
  forms were completed from the tracked worksheets.
