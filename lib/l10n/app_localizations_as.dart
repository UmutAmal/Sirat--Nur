// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Assamese (`as`).
class AppLocalizationsAs extends AppLocalizations {
  AppLocalizationsAs([String locale = 'as']) : super(locale);

  @override
  String get appTitle => 'আল্লাহৰ পথ';

  @override
  String get home => 'গৃহ';

  @override
  String get quran => 'কোৰআন';

  @override
  String get qibla => 'কিবলা';

  @override
  String get zikr => 'জিকিৰ';

  @override
  String get calendar => 'কেলেণ্ডাৰ';

  @override
  String get settings => 'ছেটিংছ';

  @override
  String get nextPrayer => 'পৰৱৰ্তী প্ৰাৰ্থনা';

  @override
  String get prayerTimes => 'প্ৰাৰ্থনাৰ সময়';

  @override
  String get continueReading => 'পঢ়া অব্যাহত ৰাখক';

  @override
  String get getLifetimePro => 'লাইফটাইম প্ৰ\' লাভ কৰক';

  @override
  String get unlockTajweed => 'তাজৱীদ আৰু উন্নত বৈশিষ্ট্যসমূহ আনলক কৰক';

  @override
  String get prayerCalculation => 'প্ৰাৰ্থনাৰ গণনা';

  @override
  String get method => 'গণনা পদ্ধতি';

  @override
  String get madhab => 'Asr ন্যায়িক পদ্ধতি';

  @override
  String get surahs => 'ছূৰা';

  @override
  String get ayahs => 'আয়াহছ';

  @override
  String get fajr => 'ফজৰ';

  @override
  String get sunrise => 'সূৰ্য্য উদয়';

  @override
  String get dhuhr => 'ধুহৰ';

  @override
  String get asr => 'আছৰ';

  @override
  String get maghrib => 'মাঘৰিব';

  @override
  String get isha => 'ঈশা';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerNameৰ সময়';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '$prayerName প্ৰাৰ্থনা কৰাৰ সময় হৈছে।';
  }

  @override
  String get dataStorage => 'ডাটা আৰু সংৰক্ষণ';

  @override
  String get clearCache => 'কেচ পৰিষ্কাৰ কৰক';

  @override
  String get cacheClearedSuccess => 'কেচ সফলতাৰে ক্লিয়াৰ কৰা হ\'ল';

  @override
  String get location => 'অৱস্থান';

  @override
  String get language => 'ভাষা';

  @override
  String get selectLanguage => 'ভাষা নিৰ্বাচন কৰক';

  @override
  String get searchLanguage => '180+ ভাষা অনুসন্ধান...';

  @override
  String get systemDefault => 'চিস্টেম অবিকল্পিত';

  @override
  String get currentLocation => 'বৰ্তমানৰ অৱস্থান (GPS)';

  @override
  String get locationServiceDisabled => 'Location service is disabled.';

  @override
  String get locationPermissionDenied => 'Location permission denied.';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => 'সন্ধান';

  @override
  String get searchHint => 'সন্ধান...';

  @override
  String get noResults => 'কোনো ফলাফল পোৱা নগ’ল';

  @override
  String get loading => 'লোড হচ্ছে...';

  @override
  String get error => 'আঁসোৱাহ';

  @override
  String get retry => 'পুনৰ চেষ্টা কৰক';

  @override
  String get cancel => 'বাতিল কৰক';

  @override
  String get save => 'সঞ্চয় কৰা';

  @override
  String get delete => 'বিলোপ';

  @override
  String get edit => 'সম্পাদনা কৰক';

  @override
  String get close => 'বন্ধ';

  @override
  String get ok => 'ঠিক আছে';

  @override
  String get yes => 'হয়';

  @override
  String get no => 'নহয়';

  @override
  String get surah => 'ছূৰা';

  @override
  String get juz => 'জুজ';

  @override
  String get page => 'পৃষ্ঠা';

  @override
  String get reading => 'পঢ়ি থকা';

  @override
  String get recitation => 'আবৃত্তি';

  @override
  String get translation => 'অনুবাদ';

  @override
  String get tafsir => 'তফছিৰ';

  @override
  String get bookmarks => 'বুকমাৰ্ক';

  @override
  String get addBookmark => 'বুকমাৰ্ক যোগ কৰক';

  @override
  String get removeBookmark => 'বুকমাৰ্ক আঁতৰাওক';

  @override
  String get lastRead => 'শেষ পঢ়া';

  @override
  String get dailyZikr => 'দৈনিক জিকিৰ';

  @override
  String get morningZikr => 'ৰাতিপুৱাৰ জিকৰ';

  @override
  String get eveningZikr => 'সন্ধিয়া জিকৰ';

  @override
  String get tasbih => 'তছবিহ';

  @override
  String get ahkab => 'আহকম';

  @override
  String get masaail => 'মাছা\'ইল';

  @override
  String get hadith => 'হাদীছ';

  @override
  String get hadithCollection => 'হাদীছ সংগ্ৰহ';

  @override
  String get hadithBooks => 'হাদীছৰ কিতাপ';

  @override
  String get searchHadith => 'হাদীছ সন্ধান কৰক';

  @override
  String get asmaulHusna => 'আছমা-উল-হুছনা';

  @override
  String get namesOfAllah => 'আল্লাহৰ নাম';

  @override
  String get liveTv => 'লাইভ টিভি';

  @override
  String get watchLive => 'লাইভ চাওক';

  @override
  String get streamError => 'ষ্ট্ৰিম ত্ৰুটি';

  @override
  String get reload => 'পুনৰ লোড কৰক';

  @override
  String get openInYoutube => 'ইউটিউবত খোলা';

  @override
  String get ibadahTracker => 'ইবাদাহ ট্ৰেকাৰ';

  @override
  String get fasting => 'উপবাস';

  @override
  String get quranReading => 'কোৰআন পঢ়া';

  @override
  String get prayers => 'প্ৰাৰ্থনা';

  @override
  String get dhikrCount => 'ধিকৰ কাউন্ট';

  @override
  String get weeklyProgress => 'সাপ্তাহিক অগ্ৰগতি';

  @override
  String get monthlyProgress => 'মাহেকীয়া অগ্ৰগতি';

  @override
  String get statistics => 'পৰিসংখ্যা';

  @override
  String get hijriCalendar => 'হিজৰী কেলেণ্ডাৰ';

  @override
  String get gregorianCalendar => 'গ্ৰেগ\'ৰিয়ান কেলেণ্ডাৰ';

  @override
  String get today => 'আজি';

  @override
  String get tomorrow => 'কাইলৈ';

  @override
  String get yesterday => 'কালি';

  @override
  String get specialDays => 'বিশেষ দিন';

  @override
  String get ramadan => 'ৰমজান';

  @override
  String get eidAlFitr => 'ঈদ আল-ফিতৰ';

  @override
  String get eidAlAdha => 'ঈদ আল আধা';

  @override
  String get laylatAlQadr => 'লাইলাত আল-কাদৰ';

  @override
  String get qiblaDirection => 'কিবলা দিশ';

  @override
  String get compass => 'কম্পাছ';

  @override
  String get degrees => 'ডিগ্ৰী লাভ কৰে';

  @override
  String get north => 'উত্তৰদিশ';

  @override
  String get qiblaFound => 'কিবলা বিচাৰি পালে!';

  @override
  String get turnDevice => 'আপোনাৰ ডিভাইচটো Qibla ৰ ফালে ঘূৰাই দিয়ক';

  @override
  String get notifications => 'জাননীসমূহ';

  @override
  String get prayerNotifications => 'প্ৰাৰ্থনাৰ জাননী';

  @override
  String get enableNotifications => 'জাননীসমূহ সামৰ্থবান কৰক';

  @override
  String get notificationTime => 'অধিসূচনাৰ সময়';

  @override
  String get beforePrayer => 'প্ৰাৰ্থনাৰ মিনিট আগতে';

  @override
  String get theme => 'বিষয়বস্তু';

  @override
  String get lightMode => 'লাইট মোড';

  @override
  String get darkMode => 'ডাৰ্ক মোড';

  @override
  String get systemTheme => 'চিস্টেম থিম';

  @override
  String get about => 'বিষয়ে';

  @override
  String get version => 'সংস্কৰণ';

  @override
  String get privacyPolicy => 'গোপনীয়তা নীতি';

  @override
  String get termsOfService => 'সেৱাৰ চৰ্তসমূহ';

  @override
  String get contactUs => 'আমাৰ সৈতে যোগাযোগ কৰক';

  @override
  String get rateApp => 'ৰেট এপ';

  @override
  String get shareApp => 'শ্বেয়াৰ এপ';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'ডাউনলোড ব্যৱস্থাপক';

  @override
  String get downloads => 'ডাউনলোডসমূহ';

  @override
  String get downloading => 'ডাউনলোড...';

  @override
  String get downloadComplete => 'ডাউনলোড সম্পূৰ্ণ';

  @override
  String get downloadFailed => 'ডাউনলোড বিফল';

  @override
  String get offlineMode => 'অফলাইন মোড';

  @override
  String get noInternet => 'কোনো ইণ্টাৰনেট সংযোগ নাই';

  @override
  String get checkConnection => 'অনুগ্ৰহ কৰি আপোনাৰ সংযোগ পৰীক্ষা কৰক';

  @override
  String get premium => 'প্ৰিমিয়াম';

  @override
  String get upgradeToPro => 'Pro লৈ উন্নীত কৰক';

  @override
  String get proFeatures => 'প্ৰ\' বৈশিষ্ট্যসমূহ';

  @override
  String get removeAds => 'বিজ্ঞাপন আঁতৰাওক';

  @override
  String get unlockAll => 'সকলো বিষয়বস্তু আনলক কৰক';

  @override
  String get exclusiveContent => 'একচেটিয়া বিষয়বস্তু';

  @override
  String get welcome => 'স্বাগতম';

  @override
  String get getStarted => 'আৰম্ভ কৰক';

  @override
  String get skip => 'বাদ দিয়া';

  @override
  String get next => 'পৰৱৰ্তী';

  @override
  String get done => 'কৰা হ’ল';

  @override
  String get onboarding1Title => 'আল্লাহৰ ৰাস্তালৈ আপোনাক স্বাগতম';

  @override
  String get onboarding1Desc =>
      'নামাজৰ সময়, কোৰআন, আৰু অধিক বাবে আপোনাৰ সম্পূৰ্ণ ইছলামিক সংগী এপ';

  @override
  String get onboarding2Title => 'প্ৰাৰ্থনাৰ সময়';

  @override
  String get onboarding2Desc =>
      'আপোনাৰ স্থানৰ ওপৰত ভিত্তি কৰি সঠিক প্ৰাৰ্থনাৰ সময়';

  @override
  String get onboarding3Title => 'কোৰআন আৰু অধিক';

  @override
  String get onboarding3Desc =>
      'কোৰআন পঢ়ক, আপোনাৰ পঢ়া অনুসৰণ কৰক, আৰু ইছলামিক বিষয়বস্তু অন্বেষণ কৰক';

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
      'Downloading the Local AI model requires ~1.5 GB of storage. Once downloaded, Neural Assistant will work completely offline without limits. \n\nWould you like to start the download?';

  @override
  String get chatbotOfflineSwitched =>
      'Switched to simulated offline local LLM mode.';

  @override
  String get chatbotOfflineDownloadLabel => 'Download & Apply';

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
  String get chatbotLocalAiLabel => 'Local AI';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Download Local AI (1.5 GB)';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API not configured. Please switch to Local AI.';

  @override
  String get chatbotLocalNoInfo =>
      '[LOCAL AI] I don\'t have information on this topic yet. You can ask about prayer, fasting, zakat, hajj, faith, or ethics.';

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
