// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Amharic (`am`).
class AppLocalizationsAm extends AppLocalizations {
  AppLocalizationsAm([String locale = 'am']) : super(locale);

  @override
  String get appTitle => 'የአላህ መንገድ';

  @override
  String get home => 'ቤት';

  @override
  String get quran => 'ቁርኣን';

  @override
  String get qibla => 'ቂብላ';

  @override
  String get zikr => 'ዚክር';

  @override
  String get calendar => 'የቀን መቁጠሪያ';

  @override
  String get settings => 'ቅንብሮች';

  @override
  String get nextPrayer => 'ቀጣይ ጸሎት';

  @override
  String get prayerTimes => 'የጸሎት ጊዜያት';

  @override
  String get continueReading => 'ማንበቡን ይቀጥሉ';

  @override
  String get getLifetimePro => 'የህይወት ዘመን ፕሮ';

  @override
  String get unlockTajweed => 'Tajweed እና የላቁ ባህሪያትን ይክፈቱ';

  @override
  String get prayerCalculation => 'የጸሎት ስሌት';

  @override
  String get method => 'የሂሳብ ዘዴ';

  @override
  String get madhab => 'የአሳር የሕግ ዘዴ';

  @override
  String get surahs => 'ሱራዎች';

  @override
  String get ayahs => 'አያህ';

  @override
  String get fajr => 'ፈጅር';

  @override
  String get sunrise => 'የፀሐይ መውጣት';

  @override
  String get dhuhr => 'ድሁር';

  @override
  String get asr => 'አስር';

  @override
  String get maghrib => 'መግሪብ';

  @override
  String get isha => 'ኢሻ';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'የ$prayerName ጊዜ';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '$prayerName ለመጸለይ ጊዜው አሁን ነው።';
  }

  @override
  String get dataStorage => 'ውሂብ እና ማከማቻ';

  @override
  String get clearCache => 'መሸጎጫ አጽዳ';

  @override
  String get cacheClearedSuccess => 'መሸጎጫ በተሳካ ሁኔታ ጸድቷል።';

  @override
  String get location => 'አካባቢ';

  @override
  String get language => 'ቋንቋ';

  @override
  String get selectLanguage => 'ቋንቋ ይምረጡ';

  @override
  String get searchLanguage => 'ከ180 በላይ ቋንቋዎችን ፈልግ...';

  @override
  String get systemDefault => 'የስርዓት ነባሪ';

  @override
  String get currentLocation => 'የአሁኑ አካባቢ (ጂፒኤስ)';

  @override
  String get locationServiceDisabled => 'Location service is disabled.';

  @override
  String get locationPermissionDenied => 'Location permission denied.';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => 'ፈልግ';

  @override
  String get searchHint => 'ፈልግ...';

  @override
  String get noResults => 'ምንም ውጤቶች አልተገኙም።';

  @override
  String get loading => 'በመጫን ላይ...';

  @override
  String get error => 'ስህተት';

  @override
  String get retry => 'እንደገና ይሞክሩ';

  @override
  String get cancel => 'ሰርዝ';

  @override
  String get save => 'አስቀምጥ';

  @override
  String get delete => 'ሰርዝ';

  @override
  String get edit => 'አርትዕ';

  @override
  String get close => 'ገጠመ';

  @override
  String get ok => 'እሺ';

  @override
  String get yes => 'አዎ';

  @override
  String get no => 'አይ';

  @override
  String get surah => 'ሱራ';

  @override
  String get juz => 'ጁዝ';

  @override
  String get page => 'ገጽ';

  @override
  String get reading => 'ማንበብ';

  @override
  String get recitation => 'ንባብ';

  @override
  String get translation => 'ትርጉም';

  @override
  String get tafsir => 'ተፍሲር';

  @override
  String get bookmarks => 'ዕልባቶች';

  @override
  String get addBookmark => 'ዕልባት ጨምር';

  @override
  String get removeBookmark => 'ዕልባት አስወግድ';

  @override
  String get lastRead => 'ለመጨረሻ ጊዜ የተነበበ';

  @override
  String get dailyZikr => 'ዕለታዊ ዚክር';

  @override
  String get morningZikr => 'ጥዋት ዚክር';

  @override
  String get eveningZikr => 'ምሽት ዚክር';

  @override
  String get tasbih => 'ተስቢህ';

  @override
  String get ahkab => 'አህካም';

  @override
  String get masaail => 'ማሳኢል';

  @override
  String get hadith => 'ሀዲስ';

  @override
  String get hadithCollection => 'የሀዲስ ስብስብ';

  @override
  String get hadithBooks => 'የሐዲስ መጽሐፍት።';

  @override
  String get searchHadith => 'ሀዲስ ፈልግ';

  @override
  String get asmaulHusna => 'አስማ-አል-ሑስና';

  @override
  String get namesOfAllah => 'የአላህ ስሞች';

  @override
  String get liveTv => 'የቀጥታ ቲቪ';

  @override
  String get watchLive => 'ቀጥታ ይመልከቱ';

  @override
  String get streamError => 'የዥረት ስህተት';

  @override
  String get reload => 'ዳግም ጫን';

  @override
  String get openInYoutube => 'በዩቲዩብ ውስጥ ክፈት';

  @override
  String get ibadahTracker => 'ኢባዳ መከታተያ';

  @override
  String get fasting => 'መጾም';

  @override
  String get quranReading => 'የቁርኣን ንባብ';

  @override
  String get prayers => 'ጸሎቶች';

  @override
  String get dhikrCount => 'ዚክር ቆጠራ';

  @override
  String get weeklyProgress => 'ሳምንታዊ እድገት';

  @override
  String get monthlyProgress => 'ወርሃዊ እድገት';

  @override
  String get statistics => 'ስታትስቲክስ';

  @override
  String get hijriCalendar => 'Hijri Calendar';

  @override
  String get gregorianCalendar => 'የግሪጎሪያን የቀን መቁጠሪያ';

  @override
  String get today => 'ዛሬ';

  @override
  String get tomorrow => 'ነገ';

  @override
  String get yesterday => 'ትናንት';

  @override
  String get specialDays => 'ልዩ ቀናት';

  @override
  String get ramadan => 'ረመዳን';

  @override
  String get eidAlFitr => 'ኢድ አልፈጥር';

  @override
  String get eidAlAdha => 'ኢድ አል-አድሓ';

  @override
  String get laylatAlQadr => 'ሌይላት አልቃድር';

  @override
  String get qiblaDirection => 'የቂብላ አቅጣጫ';

  @override
  String get compass => 'ኮምፓስ';

  @override
  String get degrees => 'ዲግሪዎች';

  @override
  String get north => 'ሰሜን';

  @override
  String get qiblaFound => 'ቂብላ ተገኘ!';

  @override
  String get turnDevice => 'መሳሪያዎን ወደ ቂብላ ያዙሩት';

  @override
  String get notifications => 'ማሳወቂያዎች';

  @override
  String get prayerNotifications => 'የጸሎት ማሳወቂያዎች';

  @override
  String get enableNotifications => 'ማሳወቂያዎችን አንቃ';

  @override
  String get notificationTime => 'የማሳወቂያ ጊዜ';

  @override
  String get beforePrayer => 'ከጸሎት በፊት ደቂቃዎች';

  @override
  String get theme => 'ጭብጥ';

  @override
  String get lightMode => 'የብርሃን ሁነታ';

  @override
  String get darkMode => 'ጨለማ ሁነታ';

  @override
  String get systemTheme => 'የስርዓት ጭብጥ';

  @override
  String get about => 'ስለ';

  @override
  String get version => 'ሥሪት';

  @override
  String get privacyPolicy => 'የግላዊነት ፖሊሲ';

  @override
  String get termsOfService => 'የአገልግሎት ውል';

  @override
  String get contactUs => 'ያግኙን';

  @override
  String get rateApp => 'መተግበሪያ ደረጃ ይስጡ';

  @override
  String get shareApp => 'መተግበሪያ አጋራ';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'አውርድ አስተዳዳሪ';

  @override
  String get downloads => 'ውርዶች';

  @override
  String get downloading => 'በማውረድ ላይ...';

  @override
  String get downloadComplete => 'ማውረድ ተጠናቋል';

  @override
  String get downloadFailed => 'ማውረድ አልተሳካም።';

  @override
  String get offlineMode => 'ከመስመር ውጭ ሁነታ';

  @override
  String get noInternet => 'የበይነመረብ ግንኙነት የለም።';

  @override
  String get checkConnection => 'እባክዎ ግንኙነትዎን ያረጋግጡ';

  @override
  String get premium => 'ፕሪሚየም';

  @override
  String get upgradeToPro => 'ወደ ፕሮ ያሻሽሉ።';

  @override
  String get proFeatures => 'Pro ባህሪዎች';

  @override
  String get removeAds => 'ማስታወቂያዎችን ያስወግዱ';

  @override
  String get unlockAll => 'ሁሉንም ይዘቶች ይክፈቱ';

  @override
  String get exclusiveContent => 'ልዩ ይዘት';

  @override
  String get welcome => 'እንኳን ደህና መጣህ';

  @override
  String get getStarted => 'እንጀምር';

  @override
  String get skip => 'ዝለል';

  @override
  String get next => 'ቀጥሎ';

  @override
  String get done => 'ተከናውኗል';

  @override
  String get onboarding1Title => 'እንኳን ወደ አላህ መንገድ በደህና መጡ';

  @override
  String get onboarding1Desc =>
      'ለጸሎት ጊዜ፣ ቁርኣን እና ሌሎችም የእርስዎ ሙሉ ኢስላማዊ ጓደኛ መተግበሪያ';

  @override
  String get onboarding2Title => 'የጸሎት ጊዜያት';

  @override
  String get onboarding2Desc => 'በአከባቢዎ ላይ በመመስረት ትክክለኛ የጸሎት ጊዜያት';

  @override
  String get onboarding3Title => 'ቁርኣን እና ሌሎችም።';

  @override
  String get onboarding3Desc => 'ቁርኣንን አንብብ፣ ንባብህን ተከታተል እና ኢስላማዊ ይዘትን አስስ';

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
  String get dailyDuas => 'ዕለታዊ ዱአስ';

  @override
  String essentialDuas(String count) {
    return '$count አስፈላጊ ዱአዎች';
  }

  @override
  String get duaUnavailableTitle => 'የተረጋገጡ ዱዓዎች እስካሁን አይገኙም።';

  @override
  String get duaUnavailableBody =>
      'የተረጋገጡ ዕለታዊ ዱዓዎች እስካሁን ከዚህ መሳሪያ ጋር አልተመሳሰሉም። ካልተረጋገጠ መመለሻ ይልቅ የመነጩ ዱአዎችን ለመጫን ከደመና ምንጭ ጋር ይገናኙ።';

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
      'የተረጋገጠው ከመስመር ውጭ የሆነ ኢስላማዊ እውቀት መሰረት አሁንም እየተዘጋጀ ነው። ከመስመር ውጭ መመለስን አሁን ማንቃት ይችላሉ፣ ነገር ግን የተመደበው የውሂብ ስብስብ ዝግጁ እስኪሆን ድረስ የተገደቡ አስተማማኝ መልዕክቶችን ብቻ ያሳያል።\n\nከመስመር ውጭ መመለስን ማንቃት ይፈልጋሉ?';

  @override
  String get chatbotOfflineSwitched =>
      'ከመስመር ውጭ መመለስ ነቅቷል። የተረጋገጡ የአካባቢ እስላማዊ መልሶች እስካሁን ዝግጁ አይደሉም።';

  @override
  String get chatbotOfflineDownloadLabel => 'ከመስመር ውጭ መመለስን አንቃ';

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
  String get chatbotLocalAiLabel => 'ከመስመር ውጭ መውደቅ';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'ከመስመር ውጭ መመለስን አንቃ';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API not configured. Please switch to Local AI.';

  @override
  String get chatbotLocalNoInfo =>
      '[ከመስመር ውጭ] የተረጋገጠ የአካባቢ እስላማዊ መመሪያ እስካሁን አይገኝም። ምንጭ ለሆኑ መልሶች ወደ Cloud AI ቀይር።';

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
