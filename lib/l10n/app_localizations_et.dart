// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Estonian (`et`).
class AppLocalizationsEt extends AppLocalizations {
  AppLocalizationsEt([String locale = 'et']) : super(locale);

  @override
  String get appTitle => 'Allahi tee';

  @override
  String get home => 'Kodu';

  @override
  String get quran => 'Koraan';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Kalender';

  @override
  String get settings => 'Seaded';

  @override
  String get nextPrayer => 'Järgmine palve';

  @override
  String get prayerTimes => 'Palveajad';

  @override
  String get continueReading => 'Jätka lugemist';

  @override
  String get getLifetimePro => 'Hankige Lifetime Pro';

  @override
  String get unlockTajweed => 'Avage Tajweed ja lisafunktsioonid';

  @override
  String get prayerCalculation => 'Palve arvutamine';

  @override
  String get method => 'Arvutusmeetod';

  @override
  String get madhab => 'Asr juristiline meetod';

  @override
  String get surahs => 'Suura';

  @override
  String get ayahs => 'Ayahs';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Päikesetõus';

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
    return 'Aeg $prayerName jaoks';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'On aeg palvetada $prayerName.';
  }

  @override
  String get dataStorage => 'Andmed ja salvestusruum';

  @override
  String get clearCache => 'Tühjenda vahemälu';

  @override
  String get cacheClearedSuccess => 'Vahemälu tühjendamine õnnestus';

  @override
  String get location => 'Asukoht';

  @override
  String get language => 'Keel';

  @override
  String get selectLanguage => 'Valige keel';

  @override
  String get searchLanguage => 'Otsige 180+ keelest...';

  @override
  String get systemDefault => 'Süsteemi vaikeseade';

  @override
  String get currentLocation => 'Praegune asukoht (GPS)';

  @override
  String get locationServiceDisabled => 'Location service is disabled.';

  @override
  String get locationPermissionDenied => 'Location permission denied.';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => 'Otsi';

  @override
  String get searchHint => 'Otsi...';

  @override
  String get noResults => 'Tulemusi ei leitud';

  @override
  String get loading => 'Laadimine...';

  @override
  String get error => 'Viga';

  @override
  String get retry => 'Proovi uuesti';

  @override
  String get cancel => 'Tühista';

  @override
  String get save => 'Salvesta';

  @override
  String get delete => 'Kustuta';

  @override
  String get edit => 'Muuda';

  @override
  String get close => 'Sule';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Jah';

  @override
  String get no => 'Ei';

  @override
  String get surah => 'Suura';

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Lehekülg';

  @override
  String get reading => 'Lugemine';

  @override
  String get recitation => 'Ettelugemine';

  @override
  String get translation => 'Tõlge';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get bookmarks => 'Järjehoidjad';

  @override
  String get addBookmark => 'Lisa järjehoidja';

  @override
  String get removeBookmark => 'Eemalda järjehoidja';

  @override
  String get lastRead => 'Viimane lugemine';

  @override
  String get dailyZikr => 'Igapäevane Zikr';

  @override
  String get morningZikr => 'Hommik Zikr';

  @override
  String get eveningZikr => 'Õhtu Zikr';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masa\'il';

  @override
  String get hadith => 'hadith';

  @override
  String get hadithCollection => 'Hadithide kollektsioon';

  @override
  String get hadithBooks => 'Hadithi raamatud';

  @override
  String get searchHadith => 'Otsige hadithit';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Allahi nimed';

  @override
  String get liveTv => 'Otsetelevisioon';

  @override
  String get watchLive => 'Vaadake otseülekannet';

  @override
  String get streamError => 'Voo viga';

  @override
  String get reload => 'Laadi uuesti';

  @override
  String get openInYoutube => 'Ava YouTube\'is';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Paastumine';

  @override
  String get quranReading => 'Koraani lugemine';

  @override
  String get prayers => 'Palved';

  @override
  String get dhikrCount => 'Dhikri krahv';

  @override
  String get weeklyProgress => 'Nädala edenemine';

  @override
  String get monthlyProgress => 'Igakuine edusammud';

  @override
  String get statistics => 'Statistika';

  @override
  String get hijriCalendar => 'Hijri kalender';

  @override
  String get gregorianCalendar => 'Gregoriuse kalender';

  @override
  String get today => 'Täna';

  @override
  String get tomorrow => 'Homme';

  @override
  String get yesterday => 'eile';

  @override
  String get specialDays => 'Erilised päevad';

  @override
  String get ramadan => 'Ramadaan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'Qibla suund';

  @override
  String get compass => 'Kompass';

  @override
  String get degrees => 'kraadid';

  @override
  String get north => 'Põhja';

  @override
  String get qiblaFound => 'Qibla leitud!';

  @override
  String get turnDevice => 'Pöörake seade Qibla poole';

  @override
  String get notifications => 'Märguanded';

  @override
  String get prayerNotifications => 'Palveteated';

  @override
  String get enableNotifications => 'Luba märguanded';

  @override
  String get notificationTime => 'Teavitamise aeg';

  @override
  String get beforePrayer => 'minutit enne palvet';

  @override
  String get theme => 'Teema';

  @override
  String get lightMode => 'Valgusrežiim';

  @override
  String get darkMode => 'Tume režiim';

  @override
  String get systemTheme => 'Süsteemi teema';

  @override
  String get about => 'Umbes';

  @override
  String get version => 'Versioon';

  @override
  String get privacyPolicy => 'Privaatsuspoliitika';

  @override
  String get termsOfService => 'Kasutustingimused';

  @override
  String get contactUs => 'Võtke meiega ühendust';

  @override
  String get rateApp => 'Hinda rakendust';

  @override
  String get shareApp => 'Jaga rakendust';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Allalaadimishaldur';

  @override
  String get downloads => 'Allalaadimised';

  @override
  String get downloading => 'Allalaadimine...';

  @override
  String get downloadComplete => 'Allalaadimine on lõpetatud';

  @override
  String get downloadFailed => 'Allalaadimine ebaõnnestus';

  @override
  String get offlineMode => 'Võrguühenduseta režiim';

  @override
  String get noInternet => 'Interneti-ühendus puudub';

  @override
  String get checkConnection => 'Palun kontrollige oma ühendust';

  @override
  String get premium => 'Premium';

  @override
  String get upgradeToPro => 'Minge üle Pro versioonile';

  @override
  String get proFeatures => 'Pro funktsioonid';

  @override
  String get removeAds => 'Eemalda reklaamid';

  @override
  String get unlockAll => 'Avage kogu sisu';

  @override
  String get exclusiveContent => 'Eksklusiivne sisu';

  @override
  String get welcome => 'Tere tulemast';

  @override
  String get getStarted => 'Alustage';

  @override
  String get skip => 'Jäta vahele';

  @override
  String get next => 'Edasi';

  @override
  String get done => 'Valmis';

  @override
  String get onboarding1Title => 'Tere tulemast Allahi teele';

  @override
  String get onboarding1Desc =>
      'Teie täielik islami kaaslase rakendus palveaegade, Koraani ja muu jaoks';

  @override
  String get onboarding2Title => 'Palveajad';

  @override
  String get onboarding2Desc => 'Täpsed palveajad teie asukoha põhjal';

  @override
  String get onboarding3Title => 'Koraan ja palju muud';

  @override
  String get onboarding3Desc =>
      'Lugege Koraani, jälgige oma lugemist ja uurige islami sisu';

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
  String get dailyDuas => 'Igapäevane Duas';

  @override
  String essentialDuas(String count) {
    return '$count olulised duas';
  }

  @override
  String get duaUnavailableTitle => 'Kinnitatud duad pole veel saadaval';

  @override
  String get duaUnavailableBody =>
      'Kinnitatud igapäevaseid duasid pole veel selle seadmega sünkroonitud. Ühendage pilveallikaga, et laadida lähtestatud duasid kinnitamata varu asemel.';

  @override
  String get duaCategoryQuranic => 'Koraani dua';

  @override
  String get duaCategoryMorningEvening => 'Hommik & Õhtu';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Kaitse';

  @override
  String get duaCategoryBeginning => 'Algused';

  @override
  String get duaCategorySleep => 'Magama';

  @override
  String get duaCategoryFoodDrink => 'Söök ja jook';

  @override
  String get duaCategoryForgiveness => 'Andestus';

  @override
  String get duaCategoryHome => 'Kodu';

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
  String get islamicEducation => 'Islamic Education';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Hadithide kollektsioonid';

  @override
  String get hadithSourcePending => 'Verified source pending';

  @override
  String get hadithUnavailableTitle =>
      'Verified hadith collections are not available yet';

  @override
  String get hadithUnavailableBody =>
      'This build still depends on an unverified external hadith feed. Hadith browsing stays disabled until a sourced dataset is synced.';

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
      'Kinnitatud võrguühenduseta islami teadmistebaasi kureerimine on endiselt pooleli. Saate nüüd lubada võrguühenduseta varuvariandi, kuid see kuvab ainult piiratud ohutuid sõnumeid, kuni lähteandmekogum on valmis.\n\nKas soovite lubada võrguühenduseta varuvariandi?';

  @override
  String get chatbotOfflineSwitched =>
      'Võrguühenduseta varuvaru on lubatud. Kontrollitud kohalikud islami vastused pole veel valmis.';

  @override
  String get chatbotOfflineDownloadLabel => 'Luba võrguühenduseta tagavara';

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
  String get chatbotLocalAiLabel => 'Võrguühenduseta tagavara';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Luba võrguühenduseta tagavara';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API not configured. Please switch to Local AI.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Kinnitatud kohalikud islamijuhised pole veel saadaval. Lähteallikate vastuste saamiseks lülituge Cloud AI-le.';

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
