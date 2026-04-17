# Google Play Data Safety Notes

This file is the source-of-truth worksheet for the Play Console Data safety
form. Keep it aligned with the privacy policy and app behavior before every
release.

## Collected Or Processed Data

- Location: Approximate and precise location may be used for prayer times,
  Qibla direction, and nearby Islamic places. Declare collection/processing for
  app functionality. Declare sharing if the configured map or places provider
  receives coordinates or request metadata.
- Financial info: Purchases are handled by Google Play Billing. Declare purchase
  history or purchase status for app functionality if Play Console asks for data
  processed by the app or SDK.
- App activity and diagnostics: Local feature state, downloaded content status,
  and configuration diagnostics are used for app functionality. Do not declare
  analytics unless an analytics SDK is added.
- User content: Chatbot prompts are user-provided text. Declare user-generated
  content if cloud AI mode is enabled in a production build.
- Device or other IDs: Review third-party SDK disclosures for Google Play
  Billing, WebView/YouTube, Supabase, map providers, and Gemini before upload.

## Security And Purpose

- Data is used for app functionality, account-free premium entitlement, content
  delivery, and user-requested reminders.
- No personal data is sold.
- No third-party advertising SDK is present.
- Network traffic must use HTTPS endpoints.

## Release Gate

- Privacy policy URL in the store listing must match
  `lib/core/services/app_metadata_service.dart`.
- If cloud AI is disabled for a release, do not declare prompt collection for
  that release.
- If places/maps are disabled because provider URLs are not configured, do not
  over-declare coordinate sharing for that disabled flow.
- Re-run a dependency and permission scan before each Play Console submission.
