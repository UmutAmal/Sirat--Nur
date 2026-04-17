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
signing, Quran audio mirror evidence, or the public privacy policy are missing.
Do not bypass it by using a raw `flutter build` command.

## Required Local Secrets

These values must exist only on the release machine or secure CI secret store:

- `android/key.properties`
- Upload keystore referenced by `android/key.properties`
- `SUPABASE_URL`
- `SUPABASE_ANON_KEY`
- `SUPABASE_SERVICE_ROLE_KEY`
- `PLACES_TILE_URL_TEMPLATE`
- `PLACES_OVERPASS_API_URL`
- Optional: `GEMINI_API_KEY`

No secret value may be committed to git, pasted into documentation, or embedded
in Dart source.

## Quran Audio Release Gate

1. Download the verified Quran audio mirror:

```powershell
dart run tool/download_verified_quran_audio.dart --overwrite
```

2. Upload the complete mirror to Supabase Storage:

```powershell
dart run tool/upload_quran_audio_storage.dart --manifest=build/verified_quran_audio/manifest.json
```

3. Generate the storage-backed seed:

```powershell
dart run tool/generate_quran_audio_storage_seed.dart --manifest=build/verified_quran_audio/manifest.json --output=content_seed_quran_audio_storage.sql
```

4. Apply `content_schema.sql`, then apply `content_seed_quran_audio_storage.sql`
to the production Supabase project.

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
- `flutter analyze` output.
- `flutter test --reporter compact` output.
- Store AAB path and size.
- `jarsigner` verification output.
- Supabase audio upload summary.
- Play Console/App Store Connect screenshots or exported notes showing policy
  forms were completed from the tracked worksheets.
