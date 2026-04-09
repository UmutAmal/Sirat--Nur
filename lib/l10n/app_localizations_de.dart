// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Weg Allahs';

  @override
  String get home => 'Heim';

  @override
  String get quran => 'Koran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Kalender';

  @override
  String get settings => 'Einstellungen';

  @override
  String get nextPrayer => 'Nächstes Gebet';

  @override
  String get prayerTimes => 'Gebetszeiten';

  @override
  String get continueReading => 'Lesen Sie weiter';

  @override
  String get getLifetimePro => 'Holen Sie sich Lifetime Pro';

  @override
  String get unlockTajweed =>
      'Schalten Sie Tajweed und erweiterte Funktionen frei';

  @override
  String get prayerCalculation => 'Gebetsberechnung';

  @override
  String get method => 'Berechnungsmethode';

  @override
  String get madhab => 'Asr Juristische Methode';

  @override
  String get surahs => 'Suren';

  @override
  String get ayahs => 'Ayahs';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Sonnenaufgang';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Maghrib';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Zeit für $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Es ist Zeit, $prayerName zu beten.';
  }

  @override
  String get dataStorage => 'Daten & Speicherung';

  @override
  String get clearCache => 'Cache leeren';

  @override
  String get cacheClearedSuccess => 'Cache erfolgreich geleert';

  @override
  String get location => 'Standort';

  @override
  String get language => 'Sprache';

  @override
  String get selectLanguage => 'Wählen Sie Sprache aus';

  @override
  String get searchLanguage => 'Durchsuchen Sie mehr als 180 Sprachen...';

  @override
  String get systemDefault => 'Systemstandard';

  @override
  String get currentLocation => 'Aktueller Standort (GPS)';

  @override
  String get locationServiceDisabled => 'Der Standortdienst ist deaktiviert.';

  @override
  String get locationPermissionDenied => 'Standortberechtigung verweigert.';

  @override
  String citiesCount(String count) {
    return '$count Städte';
  }

  @override
  String get search => 'Suchen';

  @override
  String get searchHint => 'Suchen...';

  @override
  String get noResults => 'Keine Ergebnisse gefunden';

  @override
  String get loading => 'Laden...';

  @override
  String get error => 'Fehler';

  @override
  String get retry => 'Wiederholen';

  @override
  String get cancel => 'Stornieren';

  @override
  String get save => 'Speichern';

  @override
  String get delete => 'Löschen';

  @override
  String get edit => 'Bearbeiten';

  @override
  String get close => 'Schließen';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'NEIN';

  @override
  String get surah => 'Sure';

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Seite';

  @override
  String get reading => 'Lektüre';

  @override
  String get recitation => 'Rezitation';

  @override
  String get translation => 'Übersetzung';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get bookmarks => 'Lesezeichen';

  @override
  String get addBookmark => 'Lesezeichen hinzufügen';

  @override
  String get removeBookmark => 'Lesezeichen entfernen';

  @override
  String get lastRead => 'Zuletzt gelesen';

  @override
  String get dailyZikr => 'Tägliches Zikr';

  @override
  String get morningZikr => 'Morgen Zikr';

  @override
  String get eveningZikr => 'Abend-Zikr';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masa\'il';

  @override
  String get hadith => 'Hadith';

  @override
  String get hadithCollection => 'Hadith-Sammlung';

  @override
  String get hadithBooks => 'Hadith-Bücher';

  @override
  String get searchHadith => 'Hadith durchsuchen';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Namen Allahs';

  @override
  String get liveTv => 'Live-TV';

  @override
  String get watchLive => 'Live ansehen';

  @override
  String get streamError => 'Stream-Fehler';

  @override
  String get reload => 'Neu laden';

  @override
  String get openInYoutube => 'Auf YouTube öffnen';

  @override
  String get ibadahTracker => 'Ibadah-Tracker';

  @override
  String get fasting => 'Fasten';

  @override
  String get quranReading => 'Koranlesung';

  @override
  String get prayers => 'Gebete';

  @override
  String get dhikrCount => 'Dhikr-Zählung';

  @override
  String get weeklyProgress => 'Wöchentlicher Fortschritt';

  @override
  String get monthlyProgress => 'Monatlicher Fortschritt';

  @override
  String get statistics => 'Statistiken';

  @override
  String get hijriCalendar => 'Hijri-Kalender';

  @override
  String get gregorianCalendar => 'Gregorianischer Kalender';

  @override
  String get today => 'Heute';

  @override
  String get tomorrow => 'Morgen';

  @override
  String get yesterday => 'Gestern';

  @override
  String get specialDays => 'Besondere Tage';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'Qibla-Richtung';

  @override
  String get compass => 'Kompass';

  @override
  String get degrees => 'Grad';

  @override
  String get north => 'Norden';

  @override
  String get qiblaFound => 'Qibla gefunden!';

  @override
  String get turnDevice =>
      'Drehen Sie Ihr Gerät so, dass es der Qibla zugewandt ist';

  @override
  String get notifications => 'Benachrichtigungen';

  @override
  String get prayerNotifications => 'Gebetsbenachrichtigungen';

  @override
  String get enableNotifications => 'Benachrichtigungen aktivieren';

  @override
  String get notificationTime => 'Benachrichtigungszeit';

  @override
  String get beforePrayer => 'Minuten vor dem Gebet';

  @override
  String get theme => 'Thema';

  @override
  String get lightMode => 'Lichtmodus';

  @override
  String get darkMode => 'Dunkler Modus';

  @override
  String get systemTheme => 'Systemthema';

  @override
  String get about => 'Um';

  @override
  String get version => 'Version';

  @override
  String get privacyPolicy => 'Datenschutzrichtlinie';

  @override
  String get termsOfService => 'Nutzungsbedingungen';

  @override
  String get contactUs => 'Kontaktieren Sie uns';

  @override
  String get rateApp => 'App bewerten';

  @override
  String get shareApp => 'App teilen';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Schauen Sie sich $appName an: Die ultimative islamische Lifestyle-App! $url';
  }

  @override
  String get downloadManager => 'Download-Manager';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Herunterladen...';

  @override
  String get downloadComplete => 'Download abgeschlossen';

  @override
  String get downloadFailed => 'Download fehlgeschlagen';

  @override
  String get offlineMode => 'Offline-Modus';

  @override
  String get noInternet => 'Keine Internetverbindung';

  @override
  String get checkConnection => 'Bitte überprüfen Sie Ihre Verbindung';

  @override
  String get premium => 'Prämie';

  @override
  String get upgradeToPro => 'Upgrade auf Pro';

  @override
  String get proFeatures => 'Pro-Funktionen';

  @override
  String get removeAds => 'Werbung entfernen';

  @override
  String get unlockAll => 'Schalten Sie alle Inhalte frei';

  @override
  String get exclusiveContent => 'Exklusiver Inhalt';

  @override
  String get welcome => 'Willkommen';

  @override
  String get getStarted => 'Legen Sie los';

  @override
  String get skip => 'Überspringen';

  @override
  String get next => 'Nächste';

  @override
  String get done => 'Erledigt';

  @override
  String get onboarding1Title => 'Willkommen bei Way of Allah';

  @override
  String get onboarding1Desc =>
      'Ihre komplette islamische Begleit-App für Gebetszeiten, Koran und mehr';

  @override
  String get onboarding2Title => 'Gebetszeiten';

  @override
  String get onboarding2Desc =>
      'Genaue Gebetszeiten basierend auf Ihrem Standort';

  @override
  String get onboarding3Title => 'Koran und mehr';

  @override
  String get onboarding3Desc =>
      'Lesen Sie den Koran, verfolgen Sie Ihre Lektüre und erkunden Sie islamische Inhalte';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'Reset Counter';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'Target: $target';
  }

  @override
  String get tapToCount => 'Tap to count';

  @override
  String get dailyChecklist => 'Daily Checklist';

  @override
  String get qazaDebt => 'Qaza (Debt)';

  @override
  String get resetQazaData => 'Reset Qaza Data';

  @override
  String get resetQazaDebtQuestion => 'Reset Qaza Debt?';

  @override
  String get rawatib => 'Rawatib';

  @override
  String get tahajjud => 'Tahajjud';

  @override
  String get dailyProgress => 'Daily Progress';

  @override
  String get mandatoryPrayers => 'Mandatory Prayers';

  @override
  String get sunnahAndOthers => 'Sunnah & Others';

  @override
  String get spiritualGrowth => 'Spiritual Growth';

  @override
  String get mandatoryDuty => 'Mandatory Duty';

  @override
  String get totalPrayers => 'Total Prayers';

  @override
  String get prayerDebt => 'Prayer Debt';

  @override
  String get fastingDebt => 'Fasting Debt';

  @override
  String get reset => 'Reset';

  @override
  String get days => 'Days';

  @override
  String get premiumIntegrity => 'Premium Integrity';

  @override
  String get recheckPremium => 'Recheck Premium Status';

  @override
  String get syncStore => 'Sync with the store to confirm your entitlement.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'Premium verified.';

  @override
  String get premiumNotFound => 'Premium not found.';

  @override
  String premiumRefreshError(Object error) {
    return 'Could not refresh premium status: $error';
  }

  @override
  String get offlineDownloadManager => 'Offline Download Manager';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Free up internal device storage.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'Checking Quran database...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'Quran Database Status';

  @override
  String statusLabel(Object status) {
    return 'Status: $status';
  }

  @override
  String surahsCount(Object count) {
    return 'Surahs: $count (expected 114)';
  }

  @override
  String ayahsCount(Object count) {
    return 'Ayahs: $count (expected 6236)';
  }

  @override
  String missingArabic(Object count) {
    return 'Missing Arabic: $count';
  }

  @override
  String missingEnglish(Object count) {
    return 'Missing English: $count';
  }

  @override
  String missingTurkish(Object count) {
    return 'Missing Turkish: $count';
  }

  @override
  String dbVersion(Object version) {
    return 'DB Version: $version';
  }

  @override
  String dbPath(Object path) {
    return 'Path: $path';
  }

  @override
  String quranCheckFailed(Object error) {
    return 'Quran check failed: $error';
  }

  @override
  String get audioVoice => 'Audio Voice';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Qibla Calibration';

  @override
  String get compassSmoothing => 'Compass Smoothing';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Calibration Offset';

  @override
  String currentOffset(Object offset) {
    return 'Current: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Adjust if your compass needs a manual correction. Positive values rotate clockwise.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Diagnostics';

  @override
  String get diagnosticsNotSet => 'Nicht festgelegt';

  @override
  String get diagnosticsPrayerProfile => 'Gebetsprofil';

  @override
  String get diagnosticsPrayerSource => 'Gebetsautorität';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Benutzerdefiniert / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manuelle benutzerdefinierte Winkel (keine institutionelle Quelle)';

  @override
  String get diagnosticsCloudDriven => 'Cloud-gesteuert';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio-Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Koran-Audio-Assets';

  @override
  String get diagnosticsAudioAssets => 'Audio-Assets';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count Dateien';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Das Lesen des Manifests ist fehlgeschlagen: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Lokalisierungsgebiete';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count supported';
  }

  @override
  String get diagnosticsQuranDataset => 'Quran Dataset';

  @override
  String get diagnosticsQuranSurahs => 'Quran Surahs';

  @override
  String get diagnosticsQuranAyahs => 'Quran Ayahs';

  @override
  String get diagnosticsQuranJuzMetadata => 'Quran Juz Metadata';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Cloud tables missing in Supabase; bundled fallback active';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz metadata missing; bundled structural fallback active';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Cloud structural check failed: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Calibration required. Rotate device in figure-8.';

  @override
  String get dailyVerse => 'Täglicher Vers';

  @override
  String get todaysIbadah => 'Die heutige Ibadah';

  @override
  String get quickAccess => 'Schnellzugriff';

  @override
  String get assistant => 'Assistent';

  @override
  String get places => 'Orte';

  @override
  String get library => 'Bibliothek';

  @override
  String get analytics => 'Analytik';

  @override
  String get dailyDuas => 'Tägliche Duas';

  @override
  String essentialDuas(String count) {
    return '$count wesentliche Duas';
  }

  @override
  String get duaUnavailableTitle =>
      'Verifizierte Duas sind noch nicht verfügbar';

  @override
  String get duaUnavailableBody =>
      'Verifizierte tägliche Duas wurden noch nicht mit diesem Gerät synchronisiert. Stellen Sie eine Verbindung zur Cloud-Quelle her, um Quell-Duas anstelle eines nicht verifizierten Fallbacks zu laden.';

  @override
  String get duaCategoryQuranic => 'Koran-Dua';

  @override
  String get duaCategoryMorningEvening => 'Morgens und abends';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Schutz';

  @override
  String get duaCategoryBeginning => 'Anfänge';

  @override
  String get duaCategorySleep => 'Schlafen';

  @override
  String get duaCategoryFoodDrink => 'Essen & Trinken';

  @override
  String get duaCategoryForgiveness => 'Vergebung';

  @override
  String get duaCategoryHome => 'Heim';

  @override
  String get duaSourceBukhari => 'Bukhari';

  @override
  String get duaSourceMuslim => 'Muslim';

  @override
  String get duaSourceAbuDawud => 'Abu Dawud';

  @override
  String get duaSourceTirmidhi => 'Tirmidhi';

  @override
  String get duaSourceAhmad => 'Ahmad';

  @override
  String get islamicEducation => 'Islamische Bildung';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Hadith-Sammlungen';

  @override
  String get hadithSourcePending => 'Verifizierte Quelle steht noch aus';

  @override
  String get hadithUnavailableTitle =>
      'Verifizierte Hadith-Sammlungen sind noch nicht verfügbar';

  @override
  String get hadithUnavailableBody =>
      'Dieser Build hängt immer noch von einem ungeprüften externen Hadith-Feed ab. Das Durchsuchen von Hadithen bleibt deaktiviert, bis ein Quelldatensatz synchronisiert wird.';

  @override
  String get paywallUnlockAll =>
      'Schalten Sie alle Funktionen für Ihre spirituelle Reise frei';

  @override
  String get paywallFeature1Title => 'Neuronaler Assistent Plus';

  @override
  String get paywallFeature1Desc =>
      'Unbegrenzte KI-gestützte Fragen und Antworten';

  @override
  String get paywallFeature2Title => 'Unbegrenzt offline';

  @override
  String get paywallFeature2Desc => 'Laden Sie alle Rezitationen herunter';

  @override
  String get paywallFeature3Title => 'Exklusive Designs';

  @override
  String get paywallFeature3Desc => 'Premium-Themen und -Schriftarten';

  @override
  String get paywallFeature4Title => 'Werbefrei';

  @override
  String get paywallFeature4Desc => 'Keine Werbung';

  @override
  String get paywallGetAccess => 'Erhalten Sie lebenslangen Zugang – 1,00 \$';

  @override
  String get restorePurchases => 'Einkäufe wiederherstellen';

  @override
  String get zakatCalculator => 'Zakat Calculator';

  @override
  String get zakatGold => 'Gold (Altın)';

  @override
  String get zakatSilver => 'Silver (Gümüş)';

  @override
  String get zakatCashBank => 'Cash / Bank';

  @override
  String get zakatBusiness => 'Business';

  @override
  String get zakatInvestments => 'Investments';

  @override
  String get zakatWeightGrams => 'Weight (g)';

  @override
  String get zakatPricePerGram => 'Price/g';

  @override
  String get zakatTotalAmount => 'Total Amount';

  @override
  String get zakatInventoryValue => 'Inventory Value';

  @override
  String get zakatDebts => 'Debts';

  @override
  String get zakatTotal => 'Total';

  @override
  String get calculateZakat => 'Berechnen Sie Zakat';

  @override
  String get nisabNotReached => 'Nisab not reached. Zakat is not obligatory.';

  @override
  String get totalZakat => 'Total Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'Gold Zakat';

  @override
  String get zakatSilverZakat => 'Silver Zakat';

  @override
  String get zakatCashZakat => 'Cash Zakat';

  @override
  String get zakatBusinessZakat => 'Business Zakat';

  @override
  String get zakatInvestmentZakat => 'Investment Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Das tägliche Abfragelimit wurde erreicht. Upgraden Sie unbegrenzt auf Premium.';

  @override
  String get chatbotErrorMsg =>
      'Ich konnte keine Antwort generieren. Bitte versuchen Sie es erneut.';

  @override
  String get chatbotOfflinePrompt =>
      'Die verifizierte Offline-Islam-Wissensdatenbank wird noch kuratiert. Sie können jetzt den Offline-Fallback aktivieren, es werden jedoch nur begrenzte sichere Meldungen angezeigt, bis der Quelldatensatz bereit ist.\n\nMöchten Sie den Offline-Fallback aktivieren?';

  @override
  String get chatbotOfflineSwitched =>
      'Offline-Fallback aktiviert. Verifizierte lokale islamische Antworten sind noch nicht fertig.';

  @override
  String get chatbotOfflineDownloadLabel => 'Offline-Fallback aktivieren';

  @override
  String get downloadPreparing => 'Preparing download...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Downloading surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'All surahs already downloaded for this reciter.';

  @override
  String get offlineQuranAudioPacks => 'Offline Quran Audio Packs';

  @override
  String storedOnDeviceMb(String size) {
    return 'Stored on device: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surahs downloaded';
  }

  @override
  String get redownloadMissingRepair => 'Repair / Download Missing';

  @override
  String get downloadAction => 'Download';

  @override
  String get resumeDownload => 'Resume Download';

  @override
  String get deleteDownloadedFiles => 'Delete Downloaded Files';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Download canceled for $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Download completed for $reciter.';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Deleted offline files for $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Verified Quran audio sources are unavailable right now.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Verified Quran audio pack is incomplete ($available/$total). Refresh cloud seed and try again.';
  }

  @override
  String get chatbotHint => 'Ask a question...';

  @override
  String get chatbotThinking => 'Thinking...';

  @override
  String get sukunMixerSubtitle => 'Nature & Qur\'an Mixer';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (Nature)';

  @override
  String get sukunRainOfMercy => 'Rain of Mercy';

  @override
  String get sukunGardenOfPeace => 'Garden of Peace';

  @override
  String get sukunMidnightCalm => 'Midnight Calm';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Soundscapes unavailable';

  @override
  String get sukunUnavailableBody =>
      'This build does not include the required Sukun soundscape assets yet.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Tagessträhne';

  @override
  String get bestStreak => 'Beste Serie';

  @override
  String get chatbotCloudAiLabel => 'Cloud-KI';

  @override
  String get chatbotLocalAiLabel => 'Offline-Fallback';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Offline-Fallback aktivieren';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count übrig';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud-API nicht konfiguriert. Bitte wechseln Sie zu Local AI.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Verifizierte lokale islamische Anleitung ist noch nicht verfügbar. Wechseln Sie zu Cloud AI, um Antworten aus Quellen zu erhalten.';

  @override
  String get mosques => 'Mosques';

  @override
  String get halalFood => 'Halal Food';

  @override
  String get placesSearchArea => 'Search this area';

  @override
  String get nearbyMosques => 'Nearby Mosques';

  @override
  String get islamicSchools => 'Islamic Schools';

  @override
  String placesFoundCount(String count) {
    return '$count found';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km away';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API Error: $statusCode';
  }

  @override
  String get placesNetworkError => 'Network error. Please try again.';

  @override
  String get unknownPlaceName => 'Unknown Name';

  @override
  String get islamicPlaceFallback => 'Islamic Place';
}
