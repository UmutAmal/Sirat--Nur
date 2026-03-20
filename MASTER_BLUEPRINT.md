# 🕋 WAY OF ALLAH - MASTER BLUEPRINT (THE ULTIMATE VISION)

**Authoritative Documentation for AI Agents & Developers**
**Last Updated**: 2026-03-14
**Primary Workspace**: `A:\Way of Allah\modern_islamic_app`

---

## 1. 🌟 CORE IDENTITY & AESTHETIC PHILOSOPHY
The "Way of Allah" app is designed to be the most premium, high-fidelity, and spiritually focused Islamic lifestyle application on the market. It must feel like a "High-End Native Experience," not a generic hybrid app.

### A. Design System (Emerald & Gold)
- **Primary Colors**: Deep Emerald Green, Radiant Gold, Rich Cream/Ivory.
- **Visual Style**: Modern Glassmorphism (Subtle blurs, translucent cards).
- **Typography**: Clean, elegant sans-serif (Inter/Outfit) paired with traditional, high-quality Arabic calligraphy (Uthmani script for Quran).
- **Icons**: Custom-designed Islamic aesthetics. 
  - **CRITICAL**: The app icon must be Emerald and Gold. It must **NEVER** have shapes that resemble horns. Current icon: [App Icon Metadata](assets/icon/app_icon.png).

### B. User Experience (UX)
- **Zero Friction**: Onboarding is mandatory but fast (Welcome -> Location/GPS -> Completion).
- **Accessibility**: Support for 184+ languages with smart regional detection.
- **Performance**: Instant loading with SQLite local databases and smart caching for audio.

---

## 2. 🌍 GLOBAL LOCALIZATION ENGINE (184+ LANGUAGES)
One of the app's crowning features is its universal reach.
- **Architecture**: Supports all ISO 639-1 languages.
- **Smart Switch**: The app automatically suggests the language based on the user's selected city/country.
- **TR/EN Priority**: While 184 languages are supported via ARB files, the **Turkish (TR)** and **English (EN)** experiences are "Polished High-Res" versions with dedicated fallback logic in `lib/core/utils/tr_en.dart`.

---

## 3. 🛠️ FEATURE BREAKDOWN (COMPLETED & VERIFIED)

### 🕌 A. Prayer Times & Hijri Calendar
- **Engine**: Powered by the `adhan` package.
- **Regional Precision**: 
  - Turkey uses **Diyanet** calculations.
  - SE Asia uses **JAKIM/KEMENAG** logic.
- **Next Prayer Banner**: Featured on the home page with a localized countdown timer.
- **Hijri Logic**: Dynamically updates based on the app's locale and current date.

### 📖 B. Quran & Reading Experience
- **Database**: `quran_v3.db` containing 114 Surahs and 6236 Ayahs.
- **Translations**: Bilingual English (Sahih International) and Turkish (Ali Fikri Yavuz).
- **Audio**: High-quality **Mishary Rashid Alafasy** recitations.
- **Reading Modes**: Surah-by-Surah and Juz-by-Juz support with "Last Read" persistence.
- **Word-by-Word**: Interactive word analysis during reading.

### 🔍 C. Live Map Discover (Mosque & Halal Finder)
- **Engine**: Real-time **Overpass API (OpenStreetMap)** integration.
- **Toggles**: Users can switch between finding Mosque (amenity=mosque) and Halal restaurants (cuisine=halal).
- **UX**: Shows name, distance, and "Open in Maps" navigation.

### 📿 D. Zikr (Tasbih) & Tracker
- **Tasbih**: Digital counter with haptic feedback and beautiful circular progress.
- **Ibadah Tracker**: Split into **Daily Checklist** (Fajr, Dhikr, rawatib) and **Qaza/Debt** system for missing prayers/fasts.

### 📺 E. Live TV (Makkah & Madinah)
- **Source**: 24/7 YouTube live streams.
- **Stability**: Single-instance player with "Mute/Reload" controls and an external YouTube fallback button.

### ⏬ F. Offline Download Manager
- **Functionality**: Allows users to download Quran audio and data packs for offline use.
- **Storage Reporting**: Displays exact MB used and allows one-click cleanup.

---

## 4. ⚡ TECHNICAL CONSTRAINTS & CRITICAL FIXES (THE "BATTLE-SPEC")

### 🏗️ Environment: The "A:" Drive Mandate
- **The Issue**: Flutter's build tools (especially `gen_snapshot`) break on Windows if the project path contains Turkish characters (like **'ü'** in "Masaüstü").
- **The Fix**: The project must reside in **`A:\Way of Allah\modern_islamic_app`**. Moving it back to a Desktop/Masaüstü folder will break APK generation immediately.

### 📱 Android SDK & Dependency Patch
- **SDK 36**: The app is upgraded to **Android SDK 36** (compile and target). This is required for `lStar` resource compatibility and modern plugins.
- **Isar Patch**: The `isar_flutter_libs` dependency in the global `.pub-cache` was manually patched to SDK 36. If a new developer machine is used, this patch must be reapplied to `isar_flutter_libs/android/build.gradle`.

### 🧹 Build Hygiene
- **Java Locks**: If `flutter clean` fails with "Access is denied," it is due to a locked `java.exe` (Gradle daemon). 
- **Command**: `taskkill /F /IM java.exe /T` is the standard fix before retrying.

---

## 5. 🎯 ULTIMATE GOALS & FUTURE DATA RULES
- **Rule #1: Official Sources Only**. Never use unverified religious content. Hadiths and Asma meanings must come from recognized bodies (e.g., Diyanet, TDV).
- **Rule #2: Ad Transparency**. Ads must be strictly G-rated (Islamic-safe). Premium users (Lifetime €1.00) have all ads removed permanently.
- **Rule #3: Diagnostics**. The app includes a `DiagnosticsPage` (accessible from Settings). Always check this report when verifying new features.

---

**This project is a work of devotion. All future agents must treat the code with the precision and respect the subject matter deserves.**
