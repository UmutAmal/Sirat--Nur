// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get appTitle => 'Cesta Alláha';

  @override
  String get home => 'Domov';

  @override
  String get quran => 'Korán';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Kalendář';

  @override
  String get settings => 'Nastavení';

  @override
  String get nextPrayer => 'Další modlitba';

  @override
  String get prayerTimes => 'Modlitební časy';

  @override
  String get continueReading => 'Pokračovat ve čtení';

  @override
  String get getLifetimePro => 'Získejte Lifetime Pro';

  @override
  String get unlockTajweed => 'Odemkněte Tajweed a pokročilé funkce';

  @override
  String get prayerCalculation => 'Výpočet modlitby';

  @override
  String get method => 'Metoda výpočtu';

  @override
  String get madhab => 'Asr Juristická metoda';

  @override
  String get surahs => 'súry';

  @override
  String get ayahs => 'Ayahs';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Východ slunce';

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
    return 'Čas na $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Je čas se modlit $prayerName.';
  }

  @override
  String get dataStorage => 'Data a úložiště';

  @override
  String get clearCache => 'Vymazat mezipaměť';

  @override
  String get cacheClearedSuccess => 'Mezipaměť byla úspěšně vymazána';

  @override
  String get location => 'Umístění';

  @override
  String get language => 'Jazyk';

  @override
  String get selectLanguage => 'Vyberte Jazyk';

  @override
  String get searchLanguage => 'Hledejte ve více než 180 jazycích...';

  @override
  String get systemDefault => 'Výchozí nastavení systému';

  @override
  String get currentLocation => 'Aktuální poloha (GPS)';

  @override
  String get locationServiceDisabled => 'Location service is disabled.';

  @override
  String get locationPermissionDenied => 'Location permission denied.';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => 'Vyhledávání';

  @override
  String get searchHint => 'Vyhledávání...';

  @override
  String get noResults => 'Nebyly nalezeny žádné výsledky';

  @override
  String get loading => 'Načítání...';

  @override
  String get error => 'Chyba';

  @override
  String get retry => 'Zkuste to znovu';

  @override
  String get cancel => 'Zrušit';

  @override
  String get save => 'Uložit';

  @override
  String get delete => 'Vymazat';

  @override
  String get edit => 'Upravit';

  @override
  String get close => 'Blízko';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Ano';

  @override
  String get no => 'Žádný';

  @override
  String get surah => 'súra';

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Strana';

  @override
  String get reading => 'Čtení';

  @override
  String get recitation => 'Přednes';

  @override
  String get translation => 'Překlad';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get bookmarks => 'Záložky';

  @override
  String get addBookmark => 'Přidat záložku';

  @override
  String get removeBookmark => 'Odebrat záložku';

  @override
  String get lastRead => 'Naposledy přečteno';

  @override
  String get dailyZikr => 'Denní Zikr';

  @override
  String get morningZikr => 'Ráno Zikr';

  @override
  String get eveningZikr => 'Večerní Zikr';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masa\'il';

  @override
  String get hadith => 'hadísy';

  @override
  String get hadithCollection => 'Hadith Collection';

  @override
  String get hadithBooks => 'Hadith knihy';

  @override
  String get searchHadith => 'Prohledejte hadísy';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Jména Alláha';

  @override
  String get liveTv => 'Živá televize';

  @override
  String get watchLive => 'Sledujte živě';

  @override
  String get streamError => 'Chyba streamování';

  @override
  String get reload => 'Znovu načíst';

  @override
  String get openInYoutube => 'Otevřít na YouTube';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Půst';

  @override
  String get quranReading => 'Čtení Koránu';

  @override
  String get prayers => 'Modlitby';

  @override
  String get dhikrCount => 'Hrabě Dhikr';

  @override
  String get weeklyProgress => 'Týdenní pokrok';

  @override
  String get monthlyProgress => 'Měsíční pokrok';

  @override
  String get statistics => 'Statistika';

  @override
  String get hijriCalendar => 'Kalendář hidžra';

  @override
  String get gregorianCalendar => 'Gregoriánský kalendář';

  @override
  String get today => 'Dnes';

  @override
  String get tomorrow => 'Zítra';

  @override
  String get yesterday => 'Včera';

  @override
  String get specialDays => 'Speciální dny';

  @override
  String get ramadan => 'Ramadán';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'Směr Qibla';

  @override
  String get compass => 'Kompas';

  @override
  String get degrees => 'stupně';

  @override
  String get north => 'Severní';

  @override
  String get qiblaFound => 'Qibla nalezena!';

  @override
  String get turnDevice => 'Otočte své zařízení čelem k Qibla';

  @override
  String get notifications => 'Oznámení';

  @override
  String get prayerNotifications => 'Modlitební oznámení';

  @override
  String get enableNotifications => 'Povolit oznámení';

  @override
  String get notificationTime => 'Čas oznámení';

  @override
  String get beforePrayer => 'minut před modlitbou';

  @override
  String get theme => 'Téma';

  @override
  String get lightMode => 'Světelný režim';

  @override
  String get darkMode => 'Tmavý režim';

  @override
  String get systemTheme => 'Systémové téma';

  @override
  String get about => 'O';

  @override
  String get version => 'Verze';

  @override
  String get privacyPolicy => 'Zásady ochrany osobních údajů';

  @override
  String get termsOfService => 'Podmínky služby';

  @override
  String get contactUs => 'Kontaktujte nás';

  @override
  String get rateApp => 'Ohodnoťte aplikaci';

  @override
  String get shareApp => 'Sdílet aplikaci';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Správce stahování';

  @override
  String get downloads => 'Stahování';

  @override
  String get downloading => 'Stahování...';

  @override
  String get downloadComplete => 'Stahování dokončeno';

  @override
  String get downloadFailed => 'Stahování se nezdařilo';

  @override
  String get offlineMode => 'Režim offline';

  @override
  String get noInternet => 'Žádné připojení k internetu';

  @override
  String get checkConnection => 'Zkontrolujte prosím své připojení';

  @override
  String get premium => 'Pojistné';

  @override
  String get upgradeToPro => 'Upgradujte na Pro';

  @override
  String get proFeatures => 'Pro funkce';

  @override
  String get removeAds => 'Odebrat reklamy';

  @override
  String get unlockAll => 'Odemknout veškerý obsah';

  @override
  String get exclusiveContent => 'Exkluzivní obsah';

  @override
  String get welcome => 'Vítejte';

  @override
  String get getStarted => 'Začněte';

  @override
  String get skip => 'Přeskočit';

  @override
  String get next => 'Další';

  @override
  String get done => 'Hotovo';

  @override
  String get onboarding1Title => 'Vítejte na cestě Alláha';

  @override
  String get onboarding1Desc =>
      'Vaše kompletní islámská doprovodná aplikace pro modlitební časy, Korán a další';

  @override
  String get onboarding2Title => 'Modlitební časy';

  @override
  String get onboarding2Desc => 'Přesné časy modliteb na základě vaší polohy';

  @override
  String get onboarding3Title => 'Korán a další';

  @override
  String get onboarding3Desc =>
      'Přečtěte si Korán, sledujte své čtení a prozkoumejte islámský obsah';

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
  String get dailyDuas => 'Denní Duas';

  @override
  String essentialDuas(String count) {
    return '$count zásadní duas';
  }

  @override
  String get duaUnavailableTitle => 'Ověřené dua zatím nejsou k dispozici';

  @override
  String get duaUnavailableBody =>
      'Ověřené denní dua zatím nebyly synchronizovány do tohoto zařízení. Připojte se ke cloudovému zdroji a načtěte duas ze zdrojů namísto neověřeného záložního řešení.';

  @override
  String get duaCategoryQuranic => 'Dua koránu';

  @override
  String get duaCategoryMorningEvening => 'Ráno & Večer';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Ochrana';

  @override
  String get duaCategoryBeginning => 'Začátky';

  @override
  String get duaCategorySleep => 'Spát';

  @override
  String get duaCategoryFoodDrink => 'Jídlo a pití';

  @override
  String get duaCategoryForgiveness => 'Odpuštění';

  @override
  String get duaCategoryHome => 'Domov';

  @override
  String get duaSourceBukhari => 'Buchari';

  @override
  String get duaSourceMuslim => 'muslimský';

  @override
  String get duaSourceAbuDawud => 'Abu Dawud';

  @override
  String get duaSourceTirmidhi => 'tirmidhi';

  @override
  String get duaSourceAhmad => 'Ahmad';

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
      'Ověřená offline islámská znalostní báze se stále zpracovává. Záložní režim offline můžete povolit nyní, ale bude zobrazovat pouze omezené bezpečné zprávy, dokud nebude zdrojová datová sada připravena.\n\nChcete povolit záložní režim offline?';

  @override
  String get chatbotOfflineSwitched =>
      'Záložní režim offline povolen. Ověřené místní islámské odpovědi ještě nejsou připraveny.';

  @override
  String get chatbotOfflineDownloadLabel => 'Povolit záložní režim offline';

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
  String get chatbotLocalAiLabel => 'Záložní režim offline';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Povolit záložní režim offline';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API not configured. Please switch to Local AI.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Ověřené místní islámské pokyny zatím nejsou k dispozici. Chcete-li získat odpovědi ze zdrojů, přejděte na cloudovou umělou inteligenci.';

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
