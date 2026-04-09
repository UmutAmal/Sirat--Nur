// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Burmese (`my`).
class AppLocalizationsMy extends AppLocalizations {
  AppLocalizationsMy([String locale = 'my']) : super(locale);

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
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'နေထွက်';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Maghrib';

  @override
  String get isha => 'အိရှာ';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName အတွက် အချိန်';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'ဆုတောင်းရန် အချိန်တန်ပြီ $prayerName။';
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
  String get locationServiceDisabled => 'တည်နေရာဝန်ဆောင်မှုကို ပိတ်ထားသည်။';

  @override
  String get locationPermissionDenied =>
      'တည်နေရာခွင့်ပြုချက်ကို ငြင်းဆိုထားသည်။';

  @override
  String citiesCount(String count) {
    return '$count မြို့များ';
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
  String get appErrorOccurred => 'အမှားအယွင်းတစ်ခု ဖြစ်ပွားခဲ့သည်။';

  @override
  String get appUnknownError => 'အမည်မသိ အမှား';

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
  String get hadith => 'ဟဒီးစ်';

  @override
  String get hadithCollection => 'Hadith စုစည်းမှု';

  @override
  String get hadithBooks => 'Hadith စာအုပ်များ';

  @override
  String get searchHadith => 'Hadith ကိုရှာပါ။';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

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
  String get openInYoutube => 'YouTube တွင်ဖွင့်ပါ။';

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
  String qiblaCompassErrorDetails(String error) {
    return 'သံလိုက်အိမ်မြှောင် အမှား- $error';
  }

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
    return '$appName ကိုကြည့်ပါ- အဆုံးစွန်သော အစ္စလာမ့်လူနေမှုပုံစံအက်ပ်။ $url';
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
  String get diagnosticsNotSet => 'မသတ်မှတ်ထားဘူး။';

  @override
  String get diagnosticsPrayerProfile => 'ဆုတောင်းပရိုဖိုင်';

  @override
  String get diagnosticsPrayerSource => 'ဆုတောင်းပိုင်ခွင့်';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'စိတ်ကြိုက် / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'ကိုယ်တိုင်စိတ်ကြိုက်ထောင့်များ (အဖွဲ့အစည်းဆိုင်ရာ အရင်းအမြစ်မရှိပါ)';

  @override
  String get diagnosticsCloudDriven => 'Cloud Driven';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan အသံပိုင်ဆိုင်မှုများ';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'ကုရ်အာန် အသံပိုင်ဆိုင်မှုများ';

  @override
  String get diagnosticsAudioAssets => 'အသံပိုင်ဆိုင်မှုများ';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count ဖိုင်များ';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifest ကိုဖတ်၍မရပါ- $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Localization ဒေသများ';

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
  String get dailyVerse => 'နေ့စဉ်ကျမ်းပိုဒ်';

  @override
  String get todaysIbadah => 'ယနေ့ အီဗဒ';

  @override
  String get quickAccess => 'အမြန်ဝင်ရောက်ပါ။';

  @override
  String get assistant => 'လက်ထောက်';

  @override
  String get places => 'နေရာများ';

  @override
  String get library => 'စာကြည့်တိုက်';

  @override
  String get analytics => 'ပိုင်းခြားစိတ်ဖြာပါ။';

  @override
  String get dailyDuas => 'နေ့စဉ် Duas';

  @override
  String essentialDuas(String count) {
    return '$count မရှိမဖြစ်လိုအပ်သော duas';
  }

  @override
  String get duaUnavailableTitle =>
      'အတည်ပြုထားသော duas များကို မရရှိနိုင်သေးပါ။';

  @override
  String get duaUnavailableBody =>
      'အတည်ပြုထားသော နေ့စဉ် duas ကို ဤစက်ပစ္စည်းသို့ စင့်ခ်မလုပ်ရသေးပါ။ အတည်မပြုရသေးသော တုံ့ပြန်မှုအစား အရင်းအမြစ်မှ duas ကို တင်ရန် cloud အရင်းအမြစ်သို့ ချိတ်ဆက်ပါ။';

  @override
  String get duaCategoryQuranic => 'Quranic dua';

  @override
  String get duaCategoryMorningEvening => 'မနက်ပိုင်း ညပိုင်း';

  @override
  String get duaCategoryTasbih => 'တက်ဗိ';

  @override
  String get duaCategoryProtection => 'အကာအကွယ်';

  @override
  String get duaCategoryBeginning => 'အစပိုင်း';

  @override
  String get duaCategorySleep => 'အိပ်ပါ။';

  @override
  String get duaCategoryFoodDrink => 'အစားအသောက်နှင့် သောက်စရာ';

  @override
  String get duaCategoryForgiveness => 'ခွင့်လွှတ်ပါ။';

  @override
  String get duaCategoryHome => 'အိမ်';

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
  String get islamicEducation => 'အစ္စလာမ့်ပညာရေး';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Hadith စုဆောင်းမှုများ';

  @override
  String get hadithSourcePending =>
      'အတည်ပြုပြီးသော အရင်းအမြစ်ကို ဆိုင်းငံ့ထားသည်။';

  @override
  String get hadithUnavailableTitle =>
      'အတည်ပြုထားသော hadith စုဆောင်းမှုများကို မရရှိနိုင်သေးပါ။';

  @override
  String get hadithUnavailableBody =>
      'ဤတည်ဆောက်မှုသည် အတည်မပြုရသေးသော ပြင်ပဟဒီးသ်အဒ်အပေါ် မူတည်နေသေးသည်။ ရင်းမြစ်ဒေတာအစုံကို ထပ်တူပြုသည့်အချိန်အထိ Hadith ရှာဖွေခြင်းကို ပိတ်ထားသည်။';

  @override
  String get paywallUnlockAll =>
      'သင်၏ဝိညာဉ်ရေးခရီးအတွက် အင်္ဂါရပ်အားလုံးကို လော့ခ်ဖွင့်ပါ။';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'အကန့်အသတ်မရှိ AI-ပါဝါ အမေးအဖြေ';

  @override
  String get paywallFeature2Title => 'အကန့်အသတ်မရှိ အော့ဖ်လိုင်း';

  @override
  String get paywallFeature2Desc => 'ရွတ်ဆိုချက်အားလုံးကို ဒေါင်းလုဒ်လုပ်ပါ။';

  @override
  String get paywallFeature3Title => 'သီးသန့်ဒီဇိုင်းများ';

  @override
  String get paywallFeature3Desc => 'ပရီမီယံ အပြင်အဆင်များနှင့် ဖောင့်များ';

  @override
  String get paywallFeature4Title => 'ကြော်ငြာအခမဲ့';

  @override
  String get paywallFeature4Desc => 'သုညကြော်ငြာများ';

  @override
  String get paywallGetAccess => 'တစ်သက်တာအသုံးပြုခွင့်— \$1.00 ရယူပါ။';

  @override
  String get restorePurchases => 'ဝယ်ယူမှုများကို ပြန်လည်ရယူပါ။';

  @override
  String get zakatCalculator => 'Zakat ဂဏန်းပေါင်းစက်';

  @override
  String get zakatGold => 'ရွှေ (Altın)';

  @override
  String get zakatSilver => 'ငွေရောင် (Gümüş)';

  @override
  String get zakatCashBank => 'ငွေသား/ဘဏ်';

  @override
  String get zakatBusiness => 'စီးပွားရေး';

  @override
  String get zakatInvestments => 'ရင်းနှီးမြှုပ်နှံမှုများ';

  @override
  String get zakatWeightGrams => 'အလေးချိန် (ဆ)';

  @override
  String get zakatPricePerGram => 'ဈေးနှုန်း/ဂရမ်';

  @override
  String get zakatTotalAmount => 'စုစုပေါင်းတန်ဘိုး';

  @override
  String get zakatInventoryValue => 'စာရင်းတန်ဖိုး';

  @override
  String get zakatDebts => 'အကြွေးများ';

  @override
  String get zakatTotal => 'စုစုပေါင်း';

  @override
  String get calculateZakat => 'Zakat တွက်ချက်ပါ။';

  @override
  String get nisabNotReached => 'Nisab မရောက်ဘူး။ Zakat သည် မလိုအပ်ပါ။';

  @override
  String get totalZakat => 'စုစုပေါင်း Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab- $nisab • ပိုင်ဆိုင်မှုများ- $assets';
  }

  @override
  String get zakatGoldZakat => 'ရွှေဇကာတ်';

  @override
  String get zakatSilverZakat => 'Silver Zakat';

  @override
  String get zakatCashZakat => 'ငွေသား Zakat';

  @override
  String get zakatBusinessZakat => 'စီးပွားရေး Zakat';

  @override
  String get zakatInvestmentZakat => 'Zakat ရင်းနှီးမြှုပ်နှံမှု';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'နေ့စဉ်မေးမြန်းမှု ကန့်သတ်ချက် ပြည့်သွားပါပြီ။ အကန့်အသတ်မရှိအတွက် Premium သို့ အဆင့်မြှင့်ပါ။';

  @override
  String get chatbotErrorMsg => 'တုံ့ပြန်မှု မထုတ်နိုင်ခဲ့ပါ။ ထပ်စမ်းကြည့်ပါ။';

  @override
  String get chatbotOfflinePrompt =>
      'စိစစ်ပြီး အော့ဖ်လိုင်းအစ္စလာမ့်အသိပညာအခြေခံကို စုစည်းထားဆဲဖြစ်သည်။ အော့ဖ်လိုင်းအလှည့်ကျကို ယခုဖွင့်နိုင်သော်လည်း မူရင်းဒေတာအတွဲအဆင်သင့်မဖြစ်မီအထိ ကန့်သတ်ဘေးကင်းသောစာတိုများကိုသာ ပြသပါမည်။\n\nအော့ဖ်လိုင်း လှည့်စားမှုကို ဖွင့်လိုပါသလား။';

  @override
  String get chatbotOfflineSwitched =>
      'အော့ဖ်လိုင်း လှည့်ကွက်ကို ဖွင့်ထားသည်။ အတည်ပြုထားသော ပြည်တွင်းအစ္စလာမ့်အဖြေများ အဆင်သင့်မဖြစ်သေးပါ။';

  @override
  String get chatbotOfflineDownloadLabel =>
      'အော့ဖ်လိုင်း Fallback ကို ဖွင့်ပါ။';

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
  String get sukunMixerSubtitle => 'သဘာဝနှင့် ကုရ်အာန် ရောသမမွှေပါ။';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (သဘာဝ)';

  @override
  String get sukunRainOfMercy => 'ကရုဏာမိုး';

  @override
  String get sukunGardenOfPeace => 'ငြိမ်းချမ်းရေးဥယျာဉ်';

  @override
  String get sukunMidnightCalm => 'ညသန်းခေါင် အေးချမ်းပါစေ။';

  @override
  String get sukunOceanTawheed => 'သမုဒ္ဒယာသောင်ဟီးဒ်';

  @override
  String get sukunUnavailableTitle => 'အသံထွက်များ မရနိုင်ပါ။';

  @override
  String get sukunUnavailableBody =>
      'ဤတည်ဆောက်မှုတွင် လိုအပ်သော Sukun soundscape ပိုင်ဆိုင်မှုများ မပါဝင်သေးပါ။';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'နေ့စဥ်';

  @override
  String get bestStreak => 'အကောင်းဆုံးစီးရီး';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'အော့ဖ်လိုင်း Fallback';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'အော့ဖ်လိုင်း Fallback ကို ဖွင့်ပါ။';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count ကျန်ခဲ့သည်။';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API ကို ပြင်ဆင်မထားပါ။ Local AI သို့ပြောင်းပါ။';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] အတည်ပြုထားသော ဒေသန္တရအစ္စလာမ့်လမ်းညွှန်ချက်ကို မရရှိနိုင်သေးပါ။ ရင်းမြစ်အဖြေများအတွက် Cloud AI သို့ပြောင်းပါ။';

  @override
  String get mosques => 'ဗလီများ';

  @override
  String get halalFood => 'Halal အစားအစာ';

  @override
  String get placesSearchArea => 'ဤဧရိယာကိုရှာဖွေပါ။';

  @override
  String get nearbyMosques => 'အနီးနားရှိ ဗလီများ';

  @override
  String get islamicSchools => 'အစ္စလာမ်ကျောင်းများ';

  @override
  String placesFoundCount(String count) {
    return '$count တွေ့ရှိခဲ့သည်။';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance ကီလိုမီတာအကွာ';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API အမှား- $statusCode';
  }

  @override
  String get placesNetworkError => 'ကွန်ရက် အမှားအယွင်း ထပ်စမ်းကြည့်ပါ။';

  @override
  String get unknownPlaceName => 'အမည်မသိ';

  @override
  String get islamicPlaceFallback => 'အစ္စလာမ့်နေရာ';
}
