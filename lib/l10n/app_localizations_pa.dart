// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Panjabi Punjabi (`pa`).
class AppLocalizationsPa extends AppLocalizations {
  AppLocalizationsPa([String locale = 'pa']) : super(locale);

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
  String get fajr => 'ਫਜਰ';

  @override
  String get sunrise => 'ਸੂਰਜ ਚੜ੍ਹਨਾ';

  @override
  String get dhuhr => 'ਧੂਹਰ';

  @override
  String get asr => 'ਐਸ.ਆਰ';

  @override
  String get maghrib => 'ਮਗਰੀਬ';

  @override
  String get isha => 'ਈਸ਼ਾ';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName ਦਾ ਸਮਾਂ';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'ਇਹ ਪ੍ਰਾਰਥਨਾ ਦਾ ਸਮਾਂ ਹੈ $prayerName।';
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
  String get locationServiceDisabled => 'ਟਿਕਾਣਾ ਸੇਵਾ ਅਯੋਗ ਹੈ।';

  @override
  String get locationPermissionDenied => 'ਟਿਕਾਣਾ ਇਜਾਜ਼ਤ ਅਸਵੀਕਾਰ ਕੀਤੀ ਗਈ।';

  @override
  String citiesCount(String count) {
    return '$count ਸ਼ਹਿਰ';
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
  String get hadith => 'ਹਦੀਸ';

  @override
  String get hadithCollection => 'ਹਦੀਸ ਸੰਗ੍ਰਹਿ';

  @override
  String get hadithBooks => 'ਹਦੀਸ ਦੀਆਂ ਕਿਤਾਬਾਂ';

  @override
  String get searchHadith => 'ਹਦੀਸ ਦੀ ਖੋਜ ਕਰੋ';

  @override
  String get asmaulHusna => 'ਅਸਮਾ-ਉਲ-ਹੁਸਨਾ';

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
  String get openInYoutube => 'YouTube ਵਿੱਚ ਖੋਲ੍ਹੋ';

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
    return '$appName ਦੇਖੋ: ਅਤਿਅੰਤ ਇਸਲਾਮੀ ਜੀਵਨ ਸ਼ੈਲੀ ਐਪ! $url';
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
  String get diagnosticsNotSet => 'ਸੈੱਟ ਨਹੀਂ ਹੈ';

  @override
  String get diagnosticsPrayerProfile => 'ਪ੍ਰਾਰਥਨਾ ਪ੍ਰੋਫਾਈਲ';

  @override
  String get diagnosticsPrayerSource => 'ਪ੍ਰਾਰਥਨਾ ਅਥਾਰਟੀ';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'ਮੈਨੁਅਲ ਕਸਟਮ ਐਂਗਲ (ਕੋਈ ਸੰਸਥਾਗਤ ਸਰੋਤ ਨਹੀਂ)';

  @override
  String get diagnosticsCloudDriven => 'ਕਲਾਊਡ ਡਰਾਈਵ';

  @override
  String get diagnosticsAdhanAudioAssets => 'ਅਧਾਨ ਆਡੀਓ ਸੰਪਤੀਆਂ';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'ਕੁਰਾਨ ਆਡੀਓ ਸੰਪਤੀਆਂ';

  @override
  String get diagnosticsAudioAssets => 'ਆਡੀਓ ਸੰਪਤੀਆਂ';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count ਫਾਈਲਾਂ';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'ਮੈਨੀਫੈਸਟ ਪੜ੍ਹਨਾ ਅਸਫਲ ਰਿਹਾ: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'ਸਥਾਨੀਕਰਨ ਸਥਾਨ';

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
  String get dailyVerse => 'ਰੋਜ਼ਾਨਾ ਆਇਤ';

  @override
  String get todaysIbadah => 'ਅੱਜ ਦਾ ਇਬਾਦਤ';

  @override
  String get quickAccess => 'ਤਤਕਾਲ ਪਹੁੰਚ';

  @override
  String get assistant => 'ਸਹਾਇਕ';

  @override
  String get places => 'ਸਥਾਨ';

  @override
  String get library => 'ਲਾਇਬ੍ਰੇਰੀ';

  @override
  String get analytics => 'ਵਿਸ਼ਲੇਸ਼ਣ';

  @override
  String get dailyDuas => 'ਰੋਜ਼ਾਨਾ ਦੁਆਵਾਂ';

  @override
  String essentialDuas(String count) {
    return '$count ਜ਼ਰੂਰੀ ਦੁਆਵਾਂ';
  }

  @override
  String get duaUnavailableTitle => 'ਪ੍ਰਮਾਣਿਤ ਦੁਆਵਾਂ ਅਜੇ ਉਪਲਬਧ ਨਹੀਂ ਹਨ';

  @override
  String get duaUnavailableBody =>
      'ਤਸਦੀਕ ਕੀਤੇ ਰੋਜ਼ਾਨਾ ਦੁਆਵਾਂ ਨੂੰ ਅਜੇ ਤੱਕ ਇਸ ਡਿਵਾਈਸ ਨਾਲ ਸਿੰਕ ਨਹੀਂ ਕੀਤਾ ਗਿਆ ਹੈ। ਗੈਰ-ਪ੍ਰਮਾਣਿਤ ਫਾਲਬੈਕ ਦੀ ਬਜਾਏ ਸਰੋਤ ਕੀਤੇ ਡੁਆਸ ਨੂੰ ਲੋਡ ਕਰਨ ਲਈ ਕਲਾਉਡ ਸਰੋਤ ਨਾਲ ਕਨੈਕਟ ਕਰੋ।';

  @override
  String get duaCategoryQuranic => 'ਕੁਰਾਨ ਦੀ ਦੁਆ';

  @override
  String get duaCategoryMorningEvening => 'ਸਵੇਰ ਅਤੇ ਸ਼ਾਮ';

  @override
  String get duaCategoryTasbih => 'ਤਸਬੀਹ';

  @override
  String get duaCategoryProtection => 'ਸੁਰੱਖਿਆ';

  @override
  String get duaCategoryBeginning => 'ਸ਼ੁਰੂਆਤ';

  @override
  String get duaCategorySleep => 'ਸਲੀਪ';

  @override
  String get duaCategoryFoodDrink => 'ਭੋਜਨ ਅਤੇ ਪੀਣ';

  @override
  String get duaCategoryForgiveness => 'ਮਾਫ਼ੀ';

  @override
  String get duaCategoryHome => 'ਘਰ';

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
  String get islamicEducation => 'ਇਸਲਾਮੀ ਸਿੱਖਿਆ';

  @override
  String get sukunAudioTitle => 'ਸੁਕੁਨ ਸਾਊਂਡਸਕੇਪ';

  @override
  String get hadithCollections => 'ਹਦੀਸ ਸੰਗ੍ਰਹਿ';

  @override
  String get hadithSourcePending => 'ਪ੍ਰਮਾਣਿਤ ਸਰੋਤ ਲੰਬਿਤ ਹੈ';

  @override
  String get hadithUnavailableTitle =>
      'ਪ੍ਰਮਾਣਿਤ ਹਦੀਸ ਸੰਗ੍ਰਹਿ ਅਜੇ ਉਪਲਬਧ ਨਹੀਂ ਹਨ';

  @override
  String get hadithUnavailableBody =>
      'ਇਹ ਬਿਲਡ ਅਜੇ ਵੀ ਗੈਰ-ਪ੍ਰਮਾਣਿਤ ਬਾਹਰੀ ਹਦੀਸ ਫੀਡ \'ਤੇ ਨਿਰਭਰ ਕਰਦਾ ਹੈ। ਹਦੀਸ ਬ੍ਰਾਊਜ਼ਿੰਗ ਉਦੋਂ ਤੱਕ ਅਸਮਰੱਥ ਰਹਿੰਦੀ ਹੈ ਜਦੋਂ ਤੱਕ ਇੱਕ ਸਰੋਤ ਕੀਤੇ ਡੇਟਾਸੈਟ ਨੂੰ ਸਿੰਕ ਨਹੀਂ ਕੀਤਾ ਜਾਂਦਾ ਹੈ।';

  @override
  String get paywallUnlockAll =>
      'ਆਪਣੀ ਅਧਿਆਤਮਿਕ ਯਾਤਰਾ ਲਈ ਸਾਰੀਆਂ ਵਿਸ਼ੇਸ਼ਤਾਵਾਂ ਨੂੰ ਅਨਲੌਕ ਕਰੋ';

  @override
  String get paywallFeature1Title => 'ਨਿਊਰਲ ਅਸਿਸਟੈਂਟ ਪਲੱਸ';

  @override
  String get paywallFeature1Desc => 'ਅਸੀਮਤ AI-ਸੰਚਾਲਿਤ ਸਵਾਲ-ਜਵਾਬ';

  @override
  String get paywallFeature2Title => 'ਅਸੀਮਤ ਔਫਲਾਈਨ';

  @override
  String get paywallFeature2Desc => 'ਸਾਰੇ ਪਾਠਾਂ ਨੂੰ ਡਾਊਨਲੋਡ ਕਰੋ';

  @override
  String get paywallFeature3Title => 'ਵਿਸ਼ੇਸ਼ ਡਿਜ਼ਾਈਨ';

  @override
  String get paywallFeature3Desc => 'ਪ੍ਰੀਮੀਅਮ ਥੀਮ ਅਤੇ ਫੌਂਟ';

  @override
  String get paywallFeature4Title => 'ਵਿਗਿਆਪਨ-ਮੁਕਤ';

  @override
  String get paywallFeature4Desc => 'ਜ਼ੀਰੋ ਇਸ਼ਤਿਹਾਰ';

  @override
  String get paywallGetAccess => 'ਲਾਈਫਟਾਈਮ ਐਕਸੈਸ ਪ੍ਰਾਪਤ ਕਰੋ - \$1.00';

  @override
  String get restorePurchases => 'ਖਰੀਦਦਾਰੀ ਰੀਸਟੋਰ ਕਰੋ';

  @override
  String get zakatCalculator => 'ਜ਼ਕਾਤ ਕੈਲਕੁਲੇਟਰ';

  @override
  String get zakatGold => 'ਸੋਨਾ (Altın)';

  @override
  String get zakatSilver => 'ਚਾਂਦੀ (Gümüş)';

  @override
  String get zakatCashBank => 'ਨਕਦ / ਬੈਂਕ';

  @override
  String get zakatBusiness => 'ਵਪਾਰ';

  @override
  String get zakatInvestments => 'ਨਿਵੇਸ਼';

  @override
  String get zakatWeightGrams => 'ਭਾਰ (g)';

  @override
  String get zakatPricePerGram => 'ਕੀਮਤ/ਜੀ';

  @override
  String get zakatTotalAmount => 'ਕੁੱਲ ਮਾਤਰਾ';

  @override
  String get zakatInventoryValue => 'ਵਸਤੂ ਮੁੱਲ';

  @override
  String get zakatDebts => 'ਕਰਜ਼ੇ';

  @override
  String get zakatTotal => 'ਕੁੱਲ';

  @override
  String get calculateZakat => 'ਜ਼ਕਾਤ ਦੀ ਗਣਨਾ ਕਰੋ';

  @override
  String get nisabNotReached => 'ਨਿਸਾਬ ਨਹੀਂ ਪਹੁੰਚਿਆ। ਜ਼ਕਾਤ ਲਾਜ਼ਮੀ ਨਹੀਂ ਹੈ।';

  @override
  String get totalZakat => 'ਕੁੱਲ ਜ਼ਕਾਤ';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'ਨਿਜ਼ਾਬ: $nisab • ਸੰਪਤੀਆਂ: $assets';
  }

  @override
  String get zakatGoldZakat => 'ਸੋਨੇ ਦੀ ਜ਼ਕਾਤ';

  @override
  String get zakatSilverZakat => 'ਚਾਂਦੀ ਦੀ ਜ਼ਕਾਤ';

  @override
  String get zakatCashZakat => 'ਨਕਦ ਜ਼ਕਾਤ';

  @override
  String get zakatBusinessZakat => 'ਵਪਾਰਕ ਜ਼ਕਾਤ';

  @override
  String get zakatInvestmentZakat => 'ਨਿਵੇਸ਼ ਜ਼ਕਾਤ';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'ਰੋਜ਼ਾਨਾ ਪੁੱਛਗਿੱਛ ਦੀ ਸੀਮਾ ਪੂਰੀ ਹੋ ਗਈ ਹੈ। ਅਸੀਮਤ ਲਈ ਪ੍ਰੀਮੀਅਮ \'ਤੇ ਅੱਪਗ੍ਰੇਡ ਕਰੋ।';

  @override
  String get chatbotErrorMsg =>
      'ਮੈਂ ਕੋਈ ਜਵਾਬ ਨਹੀਂ ਬਣਾ ਸਕਿਆ। ਕਿਰਪਾ ਕਰਕੇ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get chatbotOfflinePrompt =>
      'ਪ੍ਰਮਾਣਿਤ ਔਫਲਾਈਨ ਇਸਲਾਮੀ ਗਿਆਨ ਅਧਾਰ ਅਜੇ ਵੀ ਕਿਉਰੇਟ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ। ਤੁਸੀਂ ਹੁਣੇ ਔਫਲਾਈਨ ਫਾਲਬੈਕ ਨੂੰ ਸਮਰੱਥ ਕਰ ਸਕਦੇ ਹੋ, ਪਰ ਇਹ ਸਿਰਫ ਸੀਮਤ ਸੁਰੱਖਿਅਤ ਸੁਨੇਹੇ ਦਿਖਾਏਗਾ ਜਦੋਂ ਤੱਕ ਸਰੋਤ ਡੇਟਾਸੈਟ ਤਿਆਰ ਨਹੀਂ ਹੁੰਦਾ।\n\nਕੀ ਤੁਸੀਂ ਔਫਲਾਈਨ ਫਾਲਬੈਕ ਨੂੰ ਸਮਰੱਥ ਕਰਨਾ ਚਾਹੋਗੇ?';

  @override
  String get chatbotOfflineSwitched =>
      'ਔਫਲਾਈਨ ਫਾਲਬੈਕ ਸਮਰੱਥ ਹੈ। ਪ੍ਰਮਾਣਿਤ ਸਥਾਨਕ ਇਸਲਾਮੀ ਜਵਾਬ ਅਜੇ ਤਿਆਰ ਨਹੀਂ ਹਨ।';

  @override
  String get chatbotOfflineDownloadLabel => 'ਔਫਲਾਈਨ ਫਾਲਬੈਕ ਨੂੰ ਸਮਰੱਥ ਬਣਾਓ';

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
  String get sukunMixerSubtitle => 'ਕੁਦਰਤ ਅਤੇ ਕੁਰਾਨ ਮਿਕਸਰ';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'ਸੁਕੁਨ (ਕੁਦਰਤ)';

  @override
  String get sukunRainOfMercy => 'ਦਇਆ ਦੀ ਵਰਖਾ';

  @override
  String get sukunGardenOfPeace => 'ਸ਼ਾਂਤੀ ਦਾ ਬਾਗ';

  @override
  String get sukunMidnightCalm => 'ਅੱਧੀ ਰਾਤ ਦਾ ਸ਼ਾਂਤ';

  @override
  String get sukunOceanTawheed => 'ਸਾਗਰ ਤੌਹੀਦ';

  @override
  String get sukunUnavailableTitle => 'ਸਾਊਂਡਸਕੇਪ ਉਪਲਬਧ ਨਹੀਂ ਹਨ';

  @override
  String get sukunUnavailableBody =>
      'ਇਸ ਬਿਲਡ ਵਿੱਚ ਹਾਲੇ ਲੋੜੀਂਦੀ Sukun ਸਾਊਂਡਸਕੇਪ ਸੰਪਤੀਆਂ ਸ਼ਾਮਲ ਨਹੀਂ ਹਨ।';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'ਦਿਨ ਦੀ ਲੜੀ';

  @override
  String get bestStreak => 'ਵਧੀਆ ਸਟ੍ਰੀਕ';

  @override
  String get chatbotCloudAiLabel => 'ਕਲਾਊਡ AI';

  @override
  String get chatbotLocalAiLabel => 'ਔਫਲਾਈਨ ਫਾਲਬੈਕ';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'ਔਫਲਾਈਨ ਫਾਲਬੈਕ ਨੂੰ ਸਮਰੱਥ ਬਣਾਓ';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count ਬਾਕੀ';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'ਕਲਾਊਡ API ਕੌਂਫਿਗਰ ਨਹੀਂ ਕੀਤਾ ਗਿਆ। ਕਿਰਪਾ ਕਰਕੇ ਸਥਾਨਕ AI \'ਤੇ ਸਵਿਚ ਕਰੋ।';

  @override
  String get chatbotLocalNoInfo =>
      '[ਆਫਲਾਈਨ] ਪ੍ਰਮਾਣਿਤ ਸਥਾਨਕ ਇਸਲਾਮੀ ਮਾਰਗਦਰਸ਼ਨ ਅਜੇ ਉਪਲਬਧ ਨਹੀਂ ਹੈ। ਸਰੋਤ ਕੀਤੇ ਜਵਾਬਾਂ ਲਈ ਕਲਾਉਡ AI \'ਤੇ ਸਵਿਚ ਕਰੋ।';

  @override
  String get mosques => 'ਮਸਜਿਦਾਂ';

  @override
  String get halalFood => 'ਹਲਾਲ ਭੋਜਨ';

  @override
  String get placesSearchArea => 'ਇਸ ਖੇਤਰ ਦੀ ਖੋਜ ਕਰੋ';

  @override
  String get nearbyMosques => 'ਨੇੜੇ ਦੀਆਂ ਮਸਜਿਦਾਂ';

  @override
  String get islamicSchools => 'ਇਸਲਾਮੀ ਸਕੂਲ';

  @override
  String placesFoundCount(String count) {
    return '$count ਮਿਲਿਆ';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance ਕਿਲੋਮੀਟਰ ਦੂਰ';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API ਗਲਤੀ: $statusCode';
  }

  @override
  String get placesNetworkError =>
      'ਨੈੱਟਵਰਕ ਗੜਬੜ। ਕਿਰਪਾ ਕਰਕੇ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get unknownPlaceName => 'ਅਗਿਆਤ ਨਾਮ';

  @override
  String get islamicPlaceFallback => 'ਇਸਲਾਮੀ ਸਥਾਨ';
}
