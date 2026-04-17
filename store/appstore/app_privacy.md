# App Store Privacy Worksheet

This worksheet mirrors the App Store Connect privacy questionnaire.

## Data Types To Review

- Location: Used for prayer times, Qibla direction, and nearby Islamic places.
- Purchases: StoreKit/in-app purchase status is used to unlock premium access.
- User content: Chatbot prompts if cloud AI mode is enabled.
- Diagnostics: Local content availability and configuration status.
- Identifiers: Review Apple and third-party SDK privacy manifests before upload.

## Purpose

- App functionality: prayer calculations, reminders, Qibla, nearby places,
  premium entitlement, offline content, and optional AI responses.
- No third-party advertising.
- No data sale.

## iOS Binary Requirements

- `NSLocationWhenInUseUsageDescription` must stay in `ios/Runner/Info.plist`.
- App Store Connect privacy answers must be updated whenever providers or SDKs
  change.
- Before submission, archive with the current required Xcode/iOS SDK and verify
  signing under the Apple Developer team.
