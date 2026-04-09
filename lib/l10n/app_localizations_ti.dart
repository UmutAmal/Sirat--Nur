// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tigrinya (`ti`).
class AppLocalizationsTi extends AppLocalizations {
  AppLocalizationsTi([String locale = 'ti']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get home => 'Home';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Calendar';

  @override
  String get settings => 'Settings';

  @override
  String get nextPrayer => 'Next Prayer';

  @override
  String get prayerTimes => 'Prayer Times';

  @override
  String get continueReading => 'Continue Reading';

  @override
  String get getLifetimePro => 'Get Lifetime Pro';

  @override
  String get unlockTajweed => 'Unlock Tajweed & Advanced Features';

  @override
  String get prayerCalculation => 'Prayer Calculation';

  @override
  String get method => 'Calculation Method';

  @override
  String get madhab => 'Asr Juristic Method';

  @override
  String get surahs => 'Surahs';

  @override
  String get ayahs => 'Ayahs';

  @override
  String get fajr => 'ፋጅር';

  @override
  String get sunrise => 'ምብራቕ ጸሓይ';

  @override
  String get dhuhr => 'ድሑር';

  @override
  String get asr => 'ኣስር';

  @override
  String get maghrib => 'መግሪብ';

  @override
  String get isha => 'ኢሻ';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'ግዜ ን $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '$prayerName ንጸሎት ግዜ እዩ።';
  }

  @override
  String get dataStorage => 'Data & Storage';

  @override
  String get clearCache => 'Clear Cache';

  @override
  String get cacheClearedSuccess => 'Cache cleared successfully';

  @override
  String get location => 'Location';

  @override
  String get language => 'Language';

  @override
  String get selectLanguage => 'Select Language';

  @override
  String get searchLanguage => 'Search 180+ languages...';

  @override
  String get systemDefault => 'System Default';

  @override
  String get currentLocation => 'Current Location (GPS)';

  @override
  String get locationServiceDisabled => 'ኣገልግሎት ኣቀማምጣ ተሰናኺሉ ኣሎ።';

  @override
  String get locationPermissionDenied => 'ናይ ቦታ ፍቓድ ተኸልኪሉ።';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'No results found';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get appErrorOccurred => 'ጌጋ ኣጋጢሙ';

  @override
  String get appUnknownError => 'ዘይፍለጥ ጌጋ';

  @override
  String get retry => 'Retry';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Delete';

  @override
  String get edit => 'Edit';

  @override
  String get close => 'Close';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'No';

  @override
  String get surah => 'Surah';

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Page';

  @override
  String get reading => 'Reading';

  @override
  String get recitation => 'Recitation';

  @override
  String get translation => 'Translation';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get addBookmark => 'Add Bookmark';

  @override
  String get removeBookmark => 'Remove Bookmark';

  @override
  String get lastRead => 'Last Read';

  @override
  String get dailyZikr => 'Daily Zikr';

  @override
  String get morningZikr => 'Morning Zikr';

  @override
  String get eveningZikr => 'Evening Zikr';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masa\'il';

  @override
  String get hadith => 'ሓዲስ';

  @override
  String get hadithCollection => 'እኩብ ሓዲስ';

  @override
  String get hadithBooks => 'መጻሕፍቲ ሓዲስ';

  @override
  String get searchHadith => 'ሓዲስ ድለዩ።';

  @override
  String get asmaulHusna => 'ኣስማ-ኡል-ሑስና።';

  @override
  String get namesOfAllah => 'Names of Allah';

  @override
  String get liveTv => 'Live TV';

  @override
  String get watchLive => 'Watch Live';

  @override
  String get streamError => 'Stream error';

  @override
  String get reload => 'Reload';

  @override
  String get openInYoutube => 'ኣብ ዩቱብ ክፈት';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Fasting';

  @override
  String get quranReading => 'Quran Reading';

  @override
  String get prayers => 'Prayers';

  @override
  String get dhikrCount => 'Dhikr Count';

  @override
  String get weeklyProgress => 'Weekly Progress';

  @override
  String get monthlyProgress => 'Monthly Progress';

  @override
  String get statistics => 'Statistics';

  @override
  String get hijriCalendar => 'Hijri Calendar';

  @override
  String get gregorianCalendar => 'Gregorian Calendar';

  @override
  String get today => 'Today';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get specialDays => 'Special Days';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'Qibla Direction';

  @override
  String get compass => 'Compass';

  @override
  String get degrees => 'degrees';

  @override
  String get north => 'North';

  @override
  String get qiblaFound => 'Qibla found!';

  @override
  String get turnDevice => 'Turn your device to face the Qibla';

  @override
  String get notifications => 'Notifications';

  @override
  String get prayerNotifications => 'Prayer Notifications';

  @override
  String get enableNotifications => 'Enable Notifications';

  @override
  String get notificationTime => 'Notification Time';

  @override
  String get beforePrayer => 'minutes before prayer';

  @override
  String get theme => 'Theme';

  @override
  String get lightMode => 'Light Mode';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'About';

  @override
  String get version => 'Version';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get termsOfService => 'Terms of Service';

  @override
  String get contactUs => 'Contact Us';

  @override
  String get rateApp => 'Rate App';

  @override
  String get shareApp => 'Share App';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Download Complete';

  @override
  String get downloadFailed => 'Download Failed';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'No Internet Connection';

  @override
  String get checkConnection => 'Please check your connection';

  @override
  String get premium => 'Premium';

  @override
  String get upgradeToPro => 'Upgrade to Pro';

  @override
  String get proFeatures => 'Pro Features';

  @override
  String get removeAds => 'Remove Ads';

  @override
  String get unlockAll => 'Unlock All Content';

  @override
  String get exclusiveContent => 'Exclusive Content';

  @override
  String get welcome => 'Welcome';

  @override
  String get getStarted => 'Get Started';

  @override
  String get skip => 'Skip';

  @override
  String get next => 'Next';

  @override
  String get done => 'Done';

  @override
  String get onboarding1Title => 'Welcome to Sirat-ı Nur';

  @override
  String get onboarding1Desc =>
      'Your complete Islamic companion app for prayer times, Quran, and more';

  @override
  String get onboarding2Title => 'Prayer Times';

  @override
  String get onboarding2Desc => 'Accurate prayer times based on your location';

  @override
  String get onboarding3Title => 'Quran & More';

  @override
  String get onboarding3Desc =>
      'Read Quran, track your reading, and explore Islamic content';

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
  String get diagnosticsNotSet => 'ኣይተቐመጠን።';

  @override
  String get diagnosticsPrayerProfile => 'ናይ ጸሎት ፕሮፋይል';

  @override
  String get diagnosticsPrayerSource => 'በዓል መዚ ጸሎት';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource => 'ማንዋል ብሕታዊ ኩርናዓት (ትካላዊ ምንጪ የለን)';

  @override
  String get diagnosticsCloudDriven => 'ደበና ዝመርሖ';

  @override
  String get diagnosticsAdhanAudioAssets => 'ኣድሃን ድምጺ ንብረት';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'ቁርኣን ድምጺ ንብረት';

  @override
  String get diagnosticsAudioAssets => 'ናይ ድምጺ ንብረት';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count ፋይላት';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'ማኒፌስት ንባብ ኣይተዓወተን: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'ሎካላይዜሽን ሎካላት';

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
  String get dailyVerse => 'መዓልታዊ ጥቕሲ';

  @override
  String get todaysIbadah => 'ናይ ሎሚ ኢባዳ';

  @override
  String get quickAccess => 'ቅልጡፍ ምብጻሕ';

  @override
  String get assistant => 'ሓጋዚ';

  @override
  String get places => 'ቦታታት';

  @override
  String get library => 'ቤተ ንባበ';

  @override
  String get analytics => 'ትንታነታት';

  @override
  String get dailyDuas => 'መዓልታዊ ዱዋስ';

  @override
  String essentialDuas(String count) {
    return '$count essential duas';
  }

  @override
  String get duaUnavailableTitle => 'ዝተረጋገጹ ዱዓታት ገና ኣይተረኽቡን።';

  @override
  String get duaUnavailableBody =>
      'ዝተረጋገጹ መዓልታዊ ዱዓታት ክሳብ ሕጂ ምስዚ መሳርሒ ኣይተሰማምዑን። ኣብ ክንዲ ዘይተረጋገጸ ምምላስ ምምላስ ምንጪ ዘለዎም ዱዓታት ንምጽዓን ምስቲ ምንጪ ደበና ምትእስሳር።';

  @override
  String get duaCategoryQuranic => 'ቁርኣናዊ ዱዓ';

  @override
  String get duaCategoryMorningEvening => 'ንግሆ & ምሸት';

  @override
  String get duaCategoryTasbih => 'ታስቢህ';

  @override
  String get duaCategoryProtection => 'ምክልኻል';

  @override
  String get duaCategoryBeginning => 'መጀመርታ';

  @override
  String get duaCategorySleep => 'ደቅስ';

  @override
  String get duaCategoryFoodDrink => 'መግቢን መስተን።';

  @override
  String get duaCategoryForgiveness => 'ይቕሬታ';

  @override
  String get duaCategoryHome => 'ገዛ';

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
  String get islamicEducation => 'እስላማዊ ትምህርቲ';

  @override
  String get sukunAudioTitle => 'ሱኩን ሳውንድስኬፕስ';

  @override
  String get hadithCollections => 'እኩባት ሓዲስ';

  @override
  String get hadithSourcePending => 'ዝተረጋገጸ ምንጪ ኣብ ምጽባይ ይርከብ።';

  @override
  String get hadithUnavailableTitle => 'ዝተረጋገጹ እኩባት ሓዲስ ገና ኣይተረኽበን።';

  @override
  String get hadithUnavailableBody =>
      'እዚ ህንጸት ሕጂ ውን ኣብ ዘይተረጋገጸ ናይ ደገ ሓዲስ መግቢ እዩ ዝምርኮስ። ሓዲስ ምድህሳስ ክሳብ ምንጪ ዳታሴት ዝመሳሰል ስንኩል ኮይኑ ይጸንሕ።';

  @override
  String get paywallUnlockAll => 'ንመንፈሳዊ ጉዕዞኻ ዝኸውን ኩሉ ባህርያት ክፈት';

  @override
  String get paywallFeature1Title => 'ኒውራል ኣሲስተንት ፕላስ';

  @override
  String get paywallFeature1Desc => 'ደረት ኣልቦ ብAI ዝሰርሕ ሕቶን መልስን';

  @override
  String get paywallFeature2Title => 'ደረት ኣልቦ ካብ መስመር ወጻኢ';

  @override
  String get paywallFeature2Desc => 'ኩሉ ቅብኣታት ኣውርድዎ።';

  @override
  String get paywallFeature3Title => 'ፍሉያት ዲዛይናት';

  @override
  String get paywallFeature3Desc => 'ፕሪምየም ቴማታት & ቅርጺ ፊደላት';

  @override
  String get paywallFeature4Title => 'ካብ ኣድ-ነጻ';

  @override
  String get paywallFeature4Desc => 'ዜሮ መወዓውዒታት';

  @override
  String get paywallGetAccess => 'ናይ ዕድመ ምሉእ ምብጻሕ ረኸብ — \$1.00';

  @override
  String get restorePurchases => 'ዕድጊታት ምምላስ';

  @override
  String get zakatCalculator => 'ዛካት ካልኩሌተር';

  @override
  String get zakatGold => 'ወርቂ (ኣልቲን)';

  @override
  String get zakatSilver => 'ብሩር (ጉሙሽ)';

  @override
  String get zakatCashBank => 'ጥረ ገንዘብ / ባንክ';

  @override
  String get zakatBusiness => 'ስራሕቲ ንግዲ';

  @override
  String get zakatInvestments => 'ወፍሪታት';

  @override
  String get zakatWeightGrams => 'ክብደት (ሰ) .';

  @override
  String get zakatPricePerGram => 'ዋጋ/ግ';

  @override
  String get zakatTotalAmount => 'ጠቕላላ መጠን ገንዘብ';

  @override
  String get zakatInventoryValue => 'ዋጋ ንብረት';

  @override
  String get zakatDebts => 'ዕዳታት';

  @override
  String get zakatTotal => 'ድምር';

  @override
  String get calculateZakat => 'ዘካት ኣስልጥ';

  @override
  String get nisabNotReached => 'ኒሳብ ኣይበጽሐን። ዘካት ግዴታ ኣይኮነን።';

  @override
  String get totalZakat => 'ጠቕላላ ዘካት።';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'ወርቂ ዘካት።';

  @override
  String get zakatSilverZakat => 'ብሩር ዘካት።';

  @override
  String get zakatCashZakat => 'ጥረ ገንዘብ ዘካት።';

  @override
  String get zakatBusinessZakat => 'ቢዝነስ ዘካት።';

  @override
  String get zakatInvestmentZakat => 'ኢንቨስትመንት ዘካት።';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached => 'መዓልታዊ ገደብ ሕቶ በጺሑ። ንዘይተወሰነ ናብ ፕሪምየም ምዕባይ።';

  @override
  String get chatbotErrorMsg => 'መልሲ ከመንጩ ኣይከኣልኩን። በጃኹም ደጊምኩም ፈትኑ።';

  @override
  String get chatbotOfflinePrompt =>
      'እቲ ዝተረጋገጸ ካብ መስመር ወጻኢ ዝኾነ እስላማዊ ፍልጠት መሰረት ገና ይሕሎ ኣሎ። ሕጂ ካብ መስመር ወጻኢ ምምላስ ከተኽእሎ ትኽእል ኢኻ፡ ግን እቲ ምንጪ ዳታሴት ድሉው ክሳብ ዝኸውን ውሱን ውሑስ መልእኽትታት ጥራይ እዩ ዘርኢ።\n\nካብ መስመር ወጻኢ ዝግበር ምምላስ (offline fallback) ከተኽእሉ ትደልዩ ዶ?';

  @override
  String get chatbotOfflineSwitched =>
      'ካብ መስመር ወጻኢ ፋልባክ ተኸፊቱ። ዝተረጋገጹ ናይ ከባቢ እስላማዊ መልስታት ገና ድሉዋት ኣይኮኑን።';

  @override
  String get chatbotOfflineDownloadLabel => 'ካብ መስመር ወጻኢ Fallback ኣንቅሕ';

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
  String get sukunMixerSubtitle => 'ተፈጥሮን ቁርኣንን መሕወሲ';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'ሱኩን (ተፈጥሮ)';

  @override
  String get sukunRainOfMercy => 'ዝናብ ምሕረት';

  @override
  String get sukunGardenOfPeace => 'ጀርዲን ሰላም';

  @override
  String get sukunMidnightCalm => 'ፍርቂ ለይቲ ህድኣት';

  @override
  String get sukunOceanTawheed => 'ውቅያኖስ ተውሒድ';

  @override
  String get sukunUnavailableTitle => 'ሳውንድስኬፕስ ኣይርከብን።';

  @override
  String get sukunUnavailableBody =>
      'እዚ ህንጸት ክሳብ ሕጂ ዘድልዩ ናይ ሱኩን ሳውንድስኬፕ ንብረት ኣየጠቓልልን።';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'ናይ መዓልቲ መስርዕ';

  @override
  String get bestStreak => 'ዝበለጸ መስርዕ';

  @override
  String get chatbotCloudAiLabel => 'ክላውድ ኤ.ኣይ';

  @override
  String get chatbotLocalAiLabel => 'ካብ መስመር ወጻኢ Fallback';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'ካብ መስመር ወጻኢ Fallback ኣንቅሕ';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'ክላውድ ኤፒኣይ ኣይተዋቕረን። በጃኹም ናብ Local AI ቀይሩ።';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] ዝተረጋገጸ ናይ ከባቢ እስላማዊ መምርሒ ገና ኣይተረኽበን። ምንጪ መልሲ ንምርካብ ናብ Cloud AI ቀይሩ።';

  @override
  String get mosques => 'መሳጊድ';

  @override
  String get halalFood => 'ሓላል መግቢ';

  @override
  String get placesSearchArea => 'ኣብዚ ከባቢ ድለዩ።';

  @override
  String get nearbyMosques => 'ኣብ ቀረባ ዝርከቡ መሳጊድ';

  @override
  String get islamicSchools => 'ኣብያተ ትምህርቲ እስላም';

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
    return 'ናይ ኤፒኣይ ጌጋ: $statusCode';
  }

  @override
  String get placesNetworkError => 'ናይ መርበብ ጌጋ። በጃኹም ደጊምኩም ፈትኑ።';

  @override
  String get unknownPlaceName => 'ዘይፍለጥ ስም';

  @override
  String get islamicPlaceFallback => 'እስላማዊ ቦታ';
}
