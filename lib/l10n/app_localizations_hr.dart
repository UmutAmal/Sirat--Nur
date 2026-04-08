// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get appTitle => 'Put Allahov';

  @override
  String get home => 'Dom';

  @override
  String get quran => 'Kuran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Kalendar';

  @override
  String get settings => 'postavke';

  @override
  String get nextPrayer => 'Sljedeća molitva';

  @override
  String get prayerTimes => 'Vrijeme molitve';

  @override
  String get continueReading => 'Nastavite čitati';

  @override
  String get getLifetimePro => 'Nabavite Lifetime Pro';

  @override
  String get unlockTajweed => 'Otključaj Tajweed i napredne značajke';

  @override
  String get prayerCalculation => 'Izračun molitve';

  @override
  String get method => 'Metoda izračuna';

  @override
  String get madhab => 'Pravna metoda Asr';

  @override
  String get surahs => 'Sure';

  @override
  String get ayahs => 'Ajeti';

  @override
  String get fajr => 'sabah';

  @override
  String get sunrise => 'Izlazak sunca';

  @override
  String get dhuhr => 'Zhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Maghrib';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Vrijeme je za $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Vrijeme je za molitvu $prayerName.';
  }

  @override
  String get dataStorage => 'Podaci i pohrana';

  @override
  String get clearCache => 'Očisti predmemoriju';

  @override
  String get cacheClearedSuccess => 'Predmemorija je uspješno izbrisana';

  @override
  String get location => 'Mjesto';

  @override
  String get language => 'Jezik';

  @override
  String get selectLanguage => 'Odaberite jezik';

  @override
  String get searchLanguage => 'Pretraži više od 180 jezika...';

  @override
  String get systemDefault => 'Zadane postavke sustava';

  @override
  String get currentLocation => 'Trenutna lokacija (GPS)';

  @override
  String get locationServiceDisabled => 'Location service is disabled.';

  @override
  String get locationPermissionDenied => 'Location permission denied.';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => 'Pretraživanje';

  @override
  String get searchHint => 'Pretraživanje...';

  @override
  String get noResults => 'Nema rezultata';

  @override
  String get loading => 'Učitavanje...';

  @override
  String get error => 'Greška';

  @override
  String get retry => 'Pokušaj ponovo';

  @override
  String get cancel => 'Otkazati';

  @override
  String get save => 'Uštedjeti';

  @override
  String get delete => 'Izbrisati';

  @override
  String get edit => 'Uredi';

  @override
  String get close => 'Zatvoriti';

  @override
  String get ok => 'U REDU';

  @override
  String get yes => 'Da';

  @override
  String get no => 'Ne';

  @override
  String get surah => 'Sura';

  @override
  String get juz => 'džuz';

  @override
  String get page => 'Stranica';

  @override
  String get reading => 'Čitanje';

  @override
  String get recitation => 'Recitacija';

  @override
  String get translation => 'Prijevod';

  @override
  String get tafsir => 'tefsir';

  @override
  String get bookmarks => 'Knjižne oznake';

  @override
  String get addBookmark => 'Dodaj oznaku';

  @override
  String get removeBookmark => 'Ukloni oznaku';

  @override
  String get lastRead => 'Zadnje čitanje';

  @override
  String get dailyZikr => 'Dnevni zikr';

  @override
  String get morningZikr => 'Jutarnji zikr';

  @override
  String get eveningZikr => 'Večernji zikr';

  @override
  String get tasbih => 'tesbih';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masa\'il';

  @override
  String get hadith => 'Hadis';

  @override
  String get hadithCollection => 'Zbirka hadisa';

  @override
  String get hadithBooks => 'Knjige hadisa';

  @override
  String get searchHadith => 'Traži hadis';

  @override
  String get asmaulHusna => 'Esma-ul-Husna';

  @override
  String get namesOfAllah => 'Allahova imena';

  @override
  String get liveTv => 'TV uživo';

  @override
  String get watchLive => 'Gledajte uživo';

  @override
  String get streamError => 'Pogreška streama';

  @override
  String get reload => 'Ponovno učitaj';

  @override
  String get openInYoutube => 'Otvorite na YouTubeu';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Post';

  @override
  String get quranReading => 'Čitanje Kur\'ana';

  @override
  String get prayers => 'molitve';

  @override
  String get dhikrCount => 'Brojanje zikra';

  @override
  String get weeklyProgress => 'Tjedni napredak';

  @override
  String get monthlyProgress => 'Mjesečni napredak';

  @override
  String get statistics => 'Statistika';

  @override
  String get hijriCalendar => 'Hidžretski kalendar';

  @override
  String get gregorianCalendar => 'Gregorijanski kalendar';

  @override
  String get today => 'Danas';

  @override
  String get tomorrow => 'Sutra';

  @override
  String get yesterday => 'Jučer';

  @override
  String get specialDays => 'Posebni dani';

  @override
  String get ramadan => 'Ramazan';

  @override
  String get eidAlFitr => 'Ramazanski bajram';

  @override
  String get eidAlAdha => 'Kurban-bajram';

  @override
  String get laylatAlQadr => 'Lejletu-l-Kadr';

  @override
  String get qiblaDirection => 'Smjer Qibla';

  @override
  String get compass => 'Kompas';

  @override
  String get degrees => 'stupnjeva';

  @override
  String get north => 'Sjeverno';

  @override
  String get qiblaFound => 'Kibla pronađena!';

  @override
  String get turnDevice => 'Okrenite uređaj prema Qibli';

  @override
  String get notifications => 'Obavijesti';

  @override
  String get prayerNotifications => 'Molitvene obavijesti';

  @override
  String get enableNotifications => 'Omogući obavijesti';

  @override
  String get notificationTime => 'Vrijeme obavijesti';

  @override
  String get beforePrayer => 'minuta prije molitve';

  @override
  String get theme => 'Tema';

  @override
  String get lightMode => 'Način svjetla';

  @override
  String get darkMode => 'Tamni način rada';

  @override
  String get systemTheme => 'Tema sustava';

  @override
  String get about => 'Oko';

  @override
  String get version => 'Verzija';

  @override
  String get privacyPolicy => 'Politika privatnosti';

  @override
  String get termsOfService => 'Uvjeti usluge';

  @override
  String get contactUs => 'Kontaktirajte nas';

  @override
  String get rateApp => 'Ocijenite aplikaciju';

  @override
  String get shareApp => 'Dijeli aplikaciju';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Upravitelj preuzimanja';

  @override
  String get downloads => 'Preuzimanja';

  @override
  String get downloading => 'Preuzimanje...';

  @override
  String get downloadComplete => 'Preuzimanje dovršeno';

  @override
  String get downloadFailed => 'Preuzimanje nije uspjelo';

  @override
  String get offlineMode => 'Izvanmrežni način rada';

  @override
  String get noInternet => 'Nema internetske veze';

  @override
  String get checkConnection => 'Provjerite vezu';

  @override
  String get premium => 'Premija';

  @override
  String get upgradeToPro => 'Nadogradite na Pro';

  @override
  String get proFeatures => 'Pro značajke';

  @override
  String get removeAds => 'Ukloni oglase';

  @override
  String get unlockAll => 'Otključaj sav sadržaj';

  @override
  String get exclusiveContent => 'Ekskluzivni sadržaj';

  @override
  String get welcome => 'Dobrodošli';

  @override
  String get getStarted => 'Započnite';

  @override
  String get skip => 'Preskočiti';

  @override
  String get next => 'Sljedeći';

  @override
  String get done => 'Gotovo';

  @override
  String get onboarding1Title => 'Dobro došli na Allahov put';

  @override
  String get onboarding1Desc =>
      'Vaša potpuna islamska prateća aplikacija za vrijeme molitve, Kuran i još mnogo toga';

  @override
  String get onboarding2Title => 'Vrijeme molitve';

  @override
  String get onboarding2Desc =>
      'Točna vremena molitve na temelju vaše lokacije';

  @override
  String get onboarding3Title => 'Kur\'an i više';

  @override
  String get onboarding3Desc =>
      'Čitajte Kuran, pratite svoje čitanje i istražujte islamski sadržaj';

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
  String get diagnosticsNotSet => 'Not set';

  @override
  String get diagnosticsPrayerProfile => 'Prayer Profile';

  @override
  String get diagnosticsPrayerSource => 'Prayer Authority';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manual custom angles (no institutional source)';

  @override
  String get diagnosticsCloudDriven => 'Cloud Driven';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Quran Audio Assets';

  @override
  String get diagnosticsAudioAssets => 'Audio Assets';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count files';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifest read failed: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Localization Locales';

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
  String get dailyVerse => 'Daily Verse';

  @override
  String get todaysIbadah => 'Today\'s Ibadah';

  @override
  String get quickAccess => 'Quick Access';

  @override
  String get assistant => 'Assistant';

  @override
  String get places => 'Places';

  @override
  String get library => 'Library';

  @override
  String get analytics => 'Analytics';

  @override
  String get dailyDuas => 'Daily Duas';

  @override
  String essentialDuas(String count) {
    return '$count essential duas';
  }

  @override
  String get islamicEducation => 'Islamic Education';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Hadith Collections';

  @override
  String get paywallUnlockAll =>
      'Unlock all features for your spiritual journey';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'Unlimited AI-powered Q&A';

  @override
  String get paywallFeature2Title => 'Unlimited Offline';

  @override
  String get paywallFeature2Desc => 'Download all recitations';

  @override
  String get paywallFeature3Title => 'Exclusive Designs';

  @override
  String get paywallFeature3Desc => 'Premium themes & fonts';

  @override
  String get paywallFeature4Title => 'Ad-Free';

  @override
  String get paywallFeature4Desc => 'Zero advertisements';

  @override
  String get paywallGetAccess => 'Get Lifetime Access — \$1.00';

  @override
  String get restorePurchases => 'Restore Purchases';

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
  String get calculateZakat => 'Calculate Zakat';

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
      'Daily query limit reached. Upgrade to Premium for unlimited.';

  @override
  String get chatbotErrorMsg =>
      'I could not generate a response. Please try again.';

  @override
  String get chatbotOfflinePrompt =>
      'Verificirana izvanmrežna islamska baza znanja još uvijek se priprema. Sada možete omogućiti izvanmrežnu zamjenu, ali će prikazivati ​​samo ograničene sigurne poruke dok izvorni skup podataka ne bude spreman.\n\nŽelite li omogućiti offline zamjenu?';

  @override
  String get chatbotOfflineSwitched =>
      'Omogućen izvanmrežni rezervni način. Provjereni domaći islamski odgovori još nisu spremni.';

  @override
  String get chatbotOfflineDownloadLabel => 'Omogući izvanmrežnu zamjenu';

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
  String get dayStreak => 'Day streak';

  @override
  String get bestStreak => 'Best streak';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Izvanmrežna zamjena';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Omogući izvanmrežnu zamjenu';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API not configured. Please switch to Local AI.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Potvrđeno lokalno islamsko vodstvo još nije dostupno. Prijeđite na Cloud AI za izvorne odgovore.';

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
