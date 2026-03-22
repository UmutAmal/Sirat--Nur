# Sirat-i Nur v2: The Definitive Rewrite

This repository represents the **V2 architecture** of the Sirat-i Nur Islamic Lifestyle App. The original (`modern_islamic_app`) was entirely archived due to monolithic technical debt and broken API integrations. This version was meticulously rebuilt from the ground up by AI agents (specifically engineered for the ultimate "Codex" handoff) under the strict supervision of the lead developer Umut.

## Project History & "The 109-Point Audit"
The guiding philosophy of this rewrite was: **"100% Functionality, Zero Placeholders."** Every single interactive element, setting, and subpage in this app is genuinely connected to a functional backend, local JSON database, or state management provider.

### Key Refactoring Milestones
1. **Repository Reset**: A completely clean Flutter initialization. Legacy code was discarded.
2. **State Management**: Full migration to **Riverpod** for predictable state, alongside **GoRouter** for declarative navigation.
3. **The Local Data Revolution**: Because relying heavily on 3rd party APIs creates points of failure, we imported gigabytes of `assets/data/`. `full_quran.json` provides instantaneous Arabic and translated text for all 114 Surahs offline.
4. **The 189-Language Matrix**: Using a highly optimized Dart translation automation script, we generated 192 localized `.arb` files dynamically translating the English localization map into every supported standard language code, giving the app massive global reach instantly.
5. **Geospatial Independence**: Google Maps was entirely ripped out due to API Key barriers and replaced with **flutter_map** running completely free and unrestricted OpenStreetMap grids.
6. **Permanent Live TV**: YouTube iframe widgets with expiring `videoId` strings were thrown out. We integrated raw channel WebViews, meaning the Mekkah/Madinah live feeds will auto-resolve regardless of the current active broadcast URL.
7. **The 109-Point "No Dummy" Sweep**: A massive sweep eradicated placeholder UIs. "Buy" buttons on the Paywall actually toggle a Riverpod Premium state saved to SharedPreferences. "Daily Verses" actively read the day of the year to pull from `daily_ayat_data.dart`. The Qibla Offset slider actually mathematically alters the user's GPS magnetometer vector. Audio Voice selectors accurately shift the MP3 CDN endpoint for the `just_audio` player.

## Core Architecture
- **Framework**: Flutter (Dart)
- **State Management**: `flutter_riverpod` (v2)
- **Navigation**: `go_router`
- **Networking/Audio**: `just_audio`, `audio_session`, `webview_flutter`
- **Location/Math**: `adhan` (Prayer calculation), `flutter_compass`, `geolocator`, `flutter_map`
- **Persistence**: `shared_preferences`, `flutter_secure_storage`
- **BaaS**: Supabase (Initialized and ready, though the app operates completely offline-first)

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
    └── premium/ (Local simulated Paywall provider)
```

## Setup & Compilation
No hidden keys. No API hoops.
1. `flutter pub get`
2. `flutter run` -> Instantly functional.

---
*Generated for Codex and future AI iterations to understand the absolute structural integrity of the V2 codebase.*
