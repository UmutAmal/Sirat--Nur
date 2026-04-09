// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appTitle => 'আল্লাহর পথ';

  @override
  String get home => 'হোম';

  @override
  String get quran => 'কুরআন';

  @override
  String get qibla => 'কিবলা';

  @override
  String get zikr => 'যিকির';

  @override
  String get calendar => 'ক্যালেন্ডার';

  @override
  String get settings => 'সেটিংস';

  @override
  String get nextPrayer => 'পরবর্তী নামাজ';

  @override
  String get prayerTimes => 'নামাজের সময়';

  @override
  String get continueReading => 'পড়া চালিয়ে যান';

  @override
  String get getLifetimePro => 'লাইফটাইম প্রো পান';

  @override
  String get unlockTajweed => 'তাজওয়িদ ও উন্নত বৈশিষ্ট্য খুলুন';

  @override
  String get prayerCalculation => 'নামাজ হিসাব';

  @override
  String get method => 'গণনা পদ্ধতি';

  @override
  String get madhab => 'আসরের ফিকাহ পদ্ধতি';

  @override
  String get surahs => 'সূরা';

  @override
  String get ayahs => 'আয়াত';

  @override
  String get fajr => 'ফজর';

  @override
  String get sunrise => 'সূর্যোদয়';

  @override
  String get dhuhr => 'যোহর';

  @override
  String get asr => 'আছর';

  @override
  String get maghrib => 'মাগরিব';

  @override
  String get isha => 'এশা';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName এর জন্য সময়';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'প্রার্থনা করার সময় হয়েছে $prayerName';
  }

  @override
  String get dataStorage => 'ডেটা ও স্টোরেজ';

  @override
  String get clearCache => 'ক্যাশ পরিষ্কার করুন';

  @override
  String get cacheClearedSuccess => 'ক্যাশ সফলভাবে পরিষ্কার হয়েছে';

  @override
  String get location => 'লোকেশন';

  @override
  String get language => 'ভাষা';

  @override
  String get selectLanguage => 'ভাষা নির্বাচন করুন';

  @override
  String get searchLanguage => '১৮০+ ভাষায় খুঁজুন...';

  @override
  String get systemDefault => 'সিস্টেম ডিফল্ট';

  @override
  String get currentLocation => 'বর্তমান লোকেশন (GPS)';

  @override
  String get locationServiceDisabled => 'অবস্থান পরিষেবা অক্ষম করা হয়েছে৷';

  @override
  String get locationPermissionDenied =>
      'অবস্থানের অনুমতি অস্বীকার করা হয়েছে৷';

  @override
  String citiesCount(String count) {
    return '$count শহর';
  }

  @override
  String get search => 'খুঁজুন';

  @override
  String get searchHint => 'খুঁজুন...';

  @override
  String get noResults => 'কোনো ফলাফল পাওয়া যায়নি';

  @override
  String get loading => 'লোড হচ্ছে...';

  @override
  String get error => 'ত্রুটি';

  @override
  String get appErrorOccurred => 'একটি ত্রুটি ঘটেছে';

  @override
  String get appUnknownError => 'অজানা ত্রুটি';

  @override
  String get retry => 'আবার চেষ্টা করুন';

  @override
  String get cancel => 'বাতিল';

  @override
  String get save => 'সংরক্ষণ';

  @override
  String get delete => 'মুছুন';

  @override
  String get edit => 'সম্পাদনা';

  @override
  String get close => 'বন্ধ';

  @override
  String get ok => 'ঠিক আছে';

  @override
  String get yes => 'হ্যাঁ';

  @override
  String get no => 'না';

  @override
  String get surah => 'সূরা';

  @override
  String get juz => 'জুয';

  @override
  String get page => 'পৃষ্ঠা';

  @override
  String get reading => 'পড়া';

  @override
  String get recitation => 'তিলাওয়াত';

  @override
  String get translation => 'অনুবাদ';

  @override
  String get tafsir => 'তাফসীর';

  @override
  String get bookmarks => 'বুকমার্ক';

  @override
  String get addBookmark => 'বুকমার্ক যোগ করুন';

  @override
  String get removeBookmark => 'বুকমার্ক সরান';

  @override
  String get lastRead => 'শেষ পড়া';

  @override
  String get dailyZikr => 'দৈনিক যিকির';

  @override
  String get morningZikr => 'সকালের যিকির';

  @override
  String get eveningZikr => 'সন্ধ্যার যিকির';

  @override
  String get tasbih => 'তাসবীহ';

  @override
  String get ahkab => 'আহকাম';

  @override
  String get masaail => 'মাসাইল';

  @override
  String get hadith => 'হাদিস';

  @override
  String get hadithCollection => 'হাদিস সংগ্রহ';

  @override
  String get hadithBooks => 'হাদিসের বই';

  @override
  String get searchHadith => 'হাদিস অনুসন্ধান করুন';

  @override
  String get asmaulHusna => 'আসমা-উল-হুসনা';

  @override
  String get namesOfAllah => 'আল্লাহর নাম';

  @override
  String get liveTv => 'লাইভ টিভি';

  @override
  String get watchLive => 'লাইভ দেখুন';

  @override
  String get streamError => 'স্ট্রিম ত্রুটি';

  @override
  String get reload => 'রিলোড';

  @override
  String get openInYoutube => 'ইউটিউবে খুলুন';

  @override
  String get ibadahTracker => 'ইবাদত ট্র্যাকার';

  @override
  String get fasting => 'রোজা';

  @override
  String get quranReading => 'কুরআন পড়া';

  @override
  String get prayers => 'নামাজ';

  @override
  String get dhikrCount => 'যিকির সংখ্যা';

  @override
  String get weeklyProgress => 'সাপ্তাহিক অগ্রগতি';

  @override
  String get monthlyProgress => 'মাসিক অগ্রগতি';

  @override
  String get statistics => 'পরিসংখ্যান';

  @override
  String get hijriCalendar => 'হিজরি ক্যালেন্ডার';

  @override
  String get gregorianCalendar => 'খ্রিস্টান ক্যালেন্ডার';

  @override
  String get today => 'আজ';

  @override
  String get tomorrow => 'কাল';

  @override
  String get yesterday => 'গতকাল';

  @override
  String get specialDays => 'বিশেষ দিন';

  @override
  String get ramadan => 'রমজান';

  @override
  String get eidAlFitr => 'ঈদুল ফিতর';

  @override
  String get eidAlAdha => 'ঈদুল আযহা';

  @override
  String get laylatAlQadr => 'লাইলাতুল কদর';

  @override
  String get qiblaDirection => 'কিবলার দিক';

  @override
  String get compass => 'কম্পাস';

  @override
  String get degrees => 'ডিগ্রি';

  @override
  String get north => 'উত্তর';

  @override
  String get qiblaFound => 'কিবলা পাওয়া গেছে!';

  @override
  String get turnDevice => 'কিবলার দিকে মুখ করতে আপনার ডিভাইস ঘুরান';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'কম্পাস ত্রুটি: $error';
  }

  @override
  String get notifications => 'নোটিফিকেশন';

  @override
  String get prayerNotifications => 'নামাজ নোটিফিকেশন';

  @override
  String get enableNotifications => 'নোটিফিকেশন চালু করুন';

  @override
  String get notificationTime => 'নোটিফিকেশন সময়';

  @override
  String get beforePrayer => 'নামাজের আগে মিনিট';

  @override
  String get theme => 'থিম';

  @override
  String get lightMode => 'লাইট মোড';

  @override
  String get darkMode => 'ডার্ক মোড';

  @override
  String get systemTheme => 'সিস্টেম থিম';

  @override
  String get about => 'সম্পর্কে';

  @override
  String get version => 'ভার্সন';

  @override
  String get privacyPolicy => 'গোপনীয়তা নীতি';

  @override
  String get termsOfService => 'সেবার শর্তাবলী';

  @override
  String get contactUs => 'যোগাযোগ করুন';

  @override
  String get rateApp => 'অ্যাপ রেট করুন';

  @override
  String get shareApp => 'অ্যাশ শেয়ার করুন';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'ডাউনলোড ম্যানেজার';

  @override
  String get downloads => 'ডাউনলোড';

  @override
  String get downloading => 'ডাউনলোড হচ্ছে...';

  @override
  String get downloadComplete => 'ডাউনলোড সম্পন্ন';

  @override
  String get downloadFailed => 'ডাউনলোড ব্যর্থ';

  @override
  String get offlineMode => 'অফলাইন মোড';

  @override
  String get noInternet => 'ইন্টারনেট সংযোগ নেই';

  @override
  String get checkConnection => 'অনুগ্রহ করে আপনার সংযোগ পরীক্ষা করুন';

  @override
  String get premium => 'প্রিমিয়াম';

  @override
  String get upgradeToPro => 'প্রোতে আপগ্রেড করুন';

  @override
  String get proFeatures => 'প্রো বৈশিষ্ট্য';

  @override
  String get removeAds => 'বিজ্ঞাপন সরান';

  @override
  String get unlockAll => 'সব কন্টেন্ট খুলুন';

  @override
  String get exclusiveContent => 'এক্সক্লুসিভ কন্টেন্ট';

  @override
  String get welcome => 'স্বাগতম';

  @override
  String get getStarted => 'শুরু করুন';

  @override
  String get skip => 'এড়িয়ে যান';

  @override
  String get next => 'পরবর্তী';

  @override
  String get done => 'হয়ে গেছে';

  @override
  String get onboarding1Title => 'আল্লাহর পথে স্বাগতম';

  @override
  String get onboarding1Desc =>
      'নামাজের সময়, কুরআন এবং আরও অনেক কিছুর জন্য আপনার সম্পূর্ণ ইসলামিক সঙ্গী অ্যাপ';

  @override
  String get onboarding2Title => 'নামাজের সময়';

  @override
  String get onboarding2Desc => 'আপনার লোকেশন অনুযায়ী সঠিক নামাজের সময়';

  @override
  String get onboarding3Title => 'কুরআন এবং আরও';

  @override
  String get onboarding3Desc =>
      'কুরআন পড়ুন, আপনার পড়া ট্র্যাক করুন এবং ইসলামিক কন্টেন্ট আবিষ্কার করুন';

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
  String get zikrCompletedMashAllah => 'সমাপ্ত ! মাশাআল্লাহ';

  @override
  String get zikrMeaningSubhanAllah => 'আল্লাহ সকল অপূর্ণতার ঊর্ধ্বে।';

  @override
  String get zikrMeaningAlhamdulillah => 'সকল প্রশংসা আল্লাহর।';

  @override
  String get zikrMeaningAllahuAkbar => 'আল্লাহ সর্বশ্রেষ্ঠ।';

  @override
  String get zikrMeaningLaIlahaIllallah => 'আল্লাহ ছাড়া কোন মাবুদ নেই।';

  @override
  String get zikrMeaningAstaghfirullah => 'আমি আল্লাহর কাছে ক্ষমা চাই।';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'আল্লাহ ছাড়া কোন শক্তি ও শক্তি নেই।';

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
  String get diagnosticsNotSet => 'সেট করা হয়নি';

  @override
  String get diagnosticsPrayerProfile => 'প্রার্থনা প্রোফাইল';

  @override
  String get diagnosticsPrayerSource => 'প্রার্থনা কর্তৃপক্ষ';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'ম্যানুয়াল কাস্টম কোণ (কোন প্রাতিষ্ঠানিক উত্স নেই)';

  @override
  String get diagnosticsCloudDriven => 'মেঘ চালিত';

  @override
  String get diagnosticsAdhanAudioAssets => 'আযান অডিও সম্পদ';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'কুরআন অডিও সম্পদ';

  @override
  String get diagnosticsAudioAssets => 'অডিও সম্পদ';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count ফাইল';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'ম্যানিফেস্ট পড়া ব্যর্থ হয়েছে: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'স্থানীয়করণ লোকেল';

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
  String get dailyVerse => 'দৈনিক আয়াত';

  @override
  String get todaysIbadah => 'আজকের ইবাদত';

  @override
  String get quickAccess => 'দ্রুত অ্যাক্সেস';

  @override
  String get assistant => 'সহকারী';

  @override
  String get places => 'স্থান';

  @override
  String get library => 'লাইব্রেরি';

  @override
  String get analytics => 'বিশ্লেষণ';

  @override
  String get dailyDuas => 'প্রতিদিনের দোয়া';

  @override
  String essentialDuas(String count) {
    return '$count প্রয়োজনীয় দোয়া';
  }

  @override
  String get duaUnavailableTitle => 'যাচাইকৃত দুআ এখনো পাওয়া যায় না';

  @override
  String get duaUnavailableBody =>
      'যাচাই করা দৈনিক ডুয়াস এখনও এই ডিভাইসে সিঙ্ক করা হয়নি। অযাচাইকৃত ফলব্যাকের পরিবর্তে সোর্সড ডুয়াস লোড করতে ক্লাউড সোর্সের সাথে সংযোগ করুন৷';

  @override
  String get duaCategoryQuranic => 'কুরআনী দুআ';

  @override
  String get duaCategoryMorningEvening => 'সকাল ও সন্ধ্যা';

  @override
  String get duaCategoryTasbih => 'তসবিহ';

  @override
  String get duaCategoryProtection => 'সুরক্ষা';

  @override
  String get duaCategoryBeginning => 'শুরু';

  @override
  String get duaCategorySleep => 'ঘুম';

  @override
  String get duaCategoryFoodDrink => 'খাদ্য ও পানীয়';

  @override
  String get duaCategoryForgiveness => 'ক্ষমা';

  @override
  String get duaCategoryHome => 'বাড়ি';

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
  String get islamicEducation => 'ইসলামী শিক্ষা';

  @override
  String get sukunAudioTitle => 'সুকুন সাউন্ডস্কেপ';

  @override
  String get hadithCollections => 'হাদিস সংগ্রহ';

  @override
  String get hadithSourcePending => 'যাচাইকৃত উৎস মুলতুবি আছে';

  @override
  String get hadithUnavailableTitle =>
      'যাচাইকৃত হাদীস সংগ্রহ এখনো পাওয়া যায় নি';

  @override
  String get hadithUnavailableBody =>
      'এই বিল্ড এখনও একটি অযাচাই করা বহিরাগত হাদীস ফিড উপর নির্ভর করে. একটি উৎসকৃত ডেটাসেট সিঙ্ক না হওয়া পর্যন্ত হাদিস ব্রাউজিং নিষ্ক্রিয় থাকে৷';

  @override
  String get paywallUnlockAll =>
      'আপনার আধ্যাত্মিক যাত্রার জন্য সমস্ত বৈশিষ্ট্য আনলক করুন';

  @override
  String get paywallFeature1Title => 'নিউরাল অ্যাসিস্ট্যান্ট প্লাস';

  @override
  String get paywallFeature1Desc => 'আনলিমিটেড এআই-চালিত প্রশ্নোত্তর';

  @override
  String get paywallFeature2Title => 'সীমাহীন অফলাইন';

  @override
  String get paywallFeature2Desc => 'সকল আবৃত্তি ডাউনলোড করুন';

  @override
  String get paywallFeature3Title => 'এক্সক্লুসিভ ডিজাইন';

  @override
  String get paywallFeature3Desc => 'প্রিমিয়াম থিম এবং ফন্ট';

  @override
  String get paywallFeature4Title => 'বিজ্ঞাপন-মুক্ত';

  @override
  String get paywallFeature4Desc => 'শূন্য বিজ্ঞাপন';

  @override
  String get paywallGetAccess => 'লাইফটাইম অ্যাক্সেস পান - \$1.00';

  @override
  String get restorePurchases => 'কেনাকাটা পুনরুদ্ধার করুন';

  @override
  String get zakatCalculator => 'যাকাত ক্যালকুলেটর';

  @override
  String get zakatGold => 'সোনা (Altın)';

  @override
  String get zakatSilver => 'সিলভার (Gümüş)';

  @override
  String get zakatCashBank => 'নগদ/ব্যাংক';

  @override
  String get zakatBusiness => 'ব্যবসা';

  @override
  String get zakatInvestments => 'বিনিয়োগ';

  @override
  String get zakatWeightGrams => 'ওজন (গ্রাম)';

  @override
  String get zakatPricePerGram => 'মূল্য/জি';

  @override
  String get zakatTotalAmount => 'মোট পরিমাণ';

  @override
  String get zakatInventoryValue => 'ইনভেন্টরি মান';

  @override
  String get zakatDebts => 'ঋণ';

  @override
  String get zakatTotal => 'মোট';

  @override
  String get calculateZakat => 'যাকাত হিসাব করুন';

  @override
  String get nisabNotReached => 'নিসাব পৌঁছেনি। যাকাত ফরজ নয়।';

  @override
  String get totalZakat => 'মোট যাকাত';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'নিসাব: $nisab • সম্পদ: $assets';
  }

  @override
  String get zakatGoldZakat => 'সোনার যাকাত';

  @override
  String get zakatSilverZakat => 'রৌপ্য যাকাত';

  @override
  String get zakatCashZakat => 'নগদ যাকাত';

  @override
  String get zakatBusinessZakat => 'ব্যবসায়িক যাকাত';

  @override
  String get zakatInvestmentZakat => 'বিনিয়োগ যাকাত';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'দৈনিক ক্যোয়ারী সীমা পৌঁছেছে. সীমাহীন জন্য প্রিমিয়াম আপগ্রেড করুন.';

  @override
  String get chatbotErrorMsg =>
      'আমি একটি প্রতিক্রিয়া তৈরি করতে পারে না. আবার চেষ্টা করুন.';

  @override
  String get chatbotOfflinePrompt =>
      'যাচাইকৃত অফলাইন ইসলামিক জ্ঞানের ভিত্তি এখনও কিউরেট করা হচ্ছে। আপনি এখন অফলাইন ফলব্যাক সক্ষম করতে পারেন, কিন্তু উৎসকৃত ডেটাসেট প্রস্তুত না হওয়া পর্যন্ত এটি শুধুমাত্র সীমিত নিরাপদ বার্তাগুলি দেখাবে৷\n\nআপনি কি অফলাইন ফলব্যাক সক্ষম করতে চান?';

  @override
  String get chatbotOfflineSwitched =>
      'অফলাইন ফলব্যাক সক্ষম। যাচাইকৃত স্থানীয় ইসলামিক উত্তর এখনও প্রস্তুত নয়।';

  @override
  String get chatbotOfflineDownloadLabel => 'অফলাইন ফলব্যাক সক্ষম করুন৷';

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
  String get sukunMixerSubtitle => 'প্রকৃতি ও কোরআন মিক্সার';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'সুকুন (প্রকৃতি)';

  @override
  String get sukunRainOfMercy => 'রহমতের বৃষ্টি';

  @override
  String get sukunGardenOfPeace => 'শান্তির বাগান';

  @override
  String get sukunMidnightCalm => 'মধ্যরাত শান্ত';

  @override
  String get sukunOceanTawheed => 'সাগর তাওহীদ';

  @override
  String get sukunUnavailableTitle => 'সাউন্ডস্কেপ অনুপলব্ধ';

  @override
  String get sukunUnavailableBody =>
      'এই বিল্ডটিতে এখনও প্রয়োজনীয় Sukun সাউন্ডস্কেপ সম্পদ অন্তর্ভুক্ত করা হয়নি।';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'দিনের ধারা';

  @override
  String get bestStreak => 'সেরা ধারা';

  @override
  String get chatbotCloudAiLabel => 'ক্লাউড এআই';

  @override
  String get chatbotLocalAiLabel => 'অফলাইন ফলব্যাক';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'অফলাইন ফলব্যাক সক্ষম করুন৷';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count বাকি';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API কনফিগার করা হয়নি। অনুগ্রহ করে স্থানীয় AI-তে স্যুইচ করুন।';

  @override
  String get chatbotLocalNoInfo =>
      '[অফলাইন] যাচাইকৃত স্থানীয় ইসলামিক নির্দেশিকা এখনও উপলব্ধ নয়। সোর্স করা উত্তরের জন্য ক্লাউড এআই-তে স্যুইচ করুন।';

  @override
  String get mosques => 'মসজিদ';

  @override
  String get halalFood => 'হালাল খাবার';

  @override
  String get placesSearchArea => 'এই এলাকায় অনুসন্ধান করুন';

  @override
  String get nearbyMosques => 'কাছাকাছি মসজিদ';

  @override
  String get islamicSchools => 'ইসলামিক স্কুল';

  @override
  String placesFoundCount(String count) {
    return '$count পাওয়া গেছে';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance কিমি দূরে';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API ত্রুটি: $statusCode';
  }

  @override
  String get placesNetworkError => 'নেটওয়ার্ক ত্রুটি। আবার চেষ্টা করুন.';

  @override
  String get unknownPlaceName => 'অজানা নাম';

  @override
  String get islamicPlaceFallback => 'ইসলামিক স্থান';

  @override
  String get asmaMeaning1 => 'The Beneficient';

  @override
  String get asmaMeaning2 => 'দয়াময়';

  @override
  String get asmaMeaning3 => 'রাজা / চিরন্তন প্রভু';

  @override
  String get asmaMeaning4 => 'পরম পবিত্র';

  @override
  String get asmaMeaning5 => 'শান্তির উৎস';

  @override
  String get asmaMeaning6 => 'নিরাপত্তা প্রদানকারী';

  @override
  String get asmaMeaning7 => 'The Guardian';

  @override
  String get asmaMeaning8 => 'মূল্যবান / পরাক্রমশালী';

  @override
  String get asmaMeaning9 => 'বাধ্যকারী';

  @override
  String get asmaMeaning10 => 'সর্বশ্রেষ্ঠ';

  @override
  String get asmaMeaning11 => 'স্রষ্টা';

  @override
  String get asmaMeaning12 => 'The Maker of Order';

  @override
  String get asmaMeaning13 => 'The Shaper of Beauty';

  @override
  String get asmaMeaning14 => 'ক্ষমাকারী';

  @override
  String get asmaMeaning15 => 'সাবডুয়ার';

  @override
  String get asmaMeaning16 => 'সকলের দাতা';

  @override
  String get asmaMeaning17 => 'Sustainer';

  @override
  String get asmaMeaning18 => 'ওপেনার';

  @override
  String get asmaMeaning19 => 'সকলের জ্ঞানী';

  @override
  String get asmaMeaning20 => 'কনস্ট্রিক্টর';

  @override
  String get asmaMeaning21 => 'রিলিভার';

  @override
  String get asmaMeaning22 => 'আবেসার';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'সম্মান দানকারী';

  @override
  String get asmaMeaning25 => 'অপমানকারী';

  @override
  String get asmaMeaning26 => 'সকলের শ্রবণকারী';

  @override
  String get asmaMeaning27 => 'সকলের দ্রষ্টা';

  @override
  String get asmaMeaning28 => 'বিচারক';

  @override
  String get asmaMeaning29 => 'শুধু';

  @override
  String get asmaMeaning30 => 'সূক্ষ্ম এক';

  @override
  String get asmaMeaning31 => 'সকল সচেতন';

  @override
  String get asmaMeaning32 => 'পূর্ববর্তী';

  @override
  String get asmaMeaning33 => 'The Magnificent';

  @override
  String get asmaMeaning34 => 'মহান ক্ষমাকারী';

  @override
  String get asmaMeaning35 => 'কৃতজ্ঞতার পুরস্কারদাতা';

  @override
  String get asmaMeaning36 => 'সর্বোচ্চ';

  @override
  String get asmaMeaning37 => 'সর্বশ্রেষ্ঠ';

  @override
  String get asmaMeaning38 => 'সংরক্ষক';

  @override
  String get asmaMeaning39 => 'নিউরিশার';

  @override
  String get asmaMeaning40 => 'দ্য রেকনার';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'উদার';

  @override
  String get asmaMeaning43 => 'সতর্ক একজন';

  @override
  String get asmaMeaning44 => 'প্রার্থনার জবাবদানকারী';

  @override
  String get asmaMeaning45 => 'সমস্ত বোধগম্য';

  @override
  String get asmaMeaning46 => 'The Perfectly Wise';

  @override
  String get asmaMeaning47 => 'প্রেমময় একজন';

  @override
  String get asmaMeaning48 => 'সবচেয়ে গৌরবময় এক';

  @override
  String get asmaMeaning49 => 'পুনরুত্থানকারী';

  @override
  String get asmaMeaning50 => 'সাক্ষী';

  @override
  String get asmaMeaning51 => 'সত্য';

  @override
  String get asmaMeaning52 => 'অল-পর্যাপ্ত ট্রাস্টি';

  @override
  String get asmaMeaning53 => 'সমস্ত শক্তির অধিকারী';

  @override
  String get asmaMeaning54 => 'The Forceful';

  @override
  String get asmaMeaning55 => 'রক্ষক';

  @override
  String get asmaMeaning56 => 'প্রশংসিত';

  @override
  String get asmaMeaning57 => 'মূল্যায়নকারী';

  @override
  String get asmaMeaning58 => 'প্রবর্তক';

  @override
  String get asmaMeaning59 => 'The Restorer';

  @override
  String get asmaMeaning60 => 'জীবন দাতা';

  @override
  String get asmaMeaning61 => 'জীবনের গ্রহণকারী';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'স্ব-সহায়ক ধারক';

  @override
  String get asmaMeaning64 => 'The Finder';

  @override
  String get asmaMeaning65 => 'The Glorious';

  @override
  String get asmaMeaning66 => 'একমাত্র';

  @override
  String get asmaMeaning67 => 'একটি';

  @override
  String get asmaMeaning68 => 'The One Sought by All';

  @override
  String get asmaMeaning69 => 'শক্তিশালী';

  @override
  String get asmaMeaning70 => 'সমস্ত শক্তির স্রষ্টা';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'বিলম্বক';

  @override
  String get asmaMeaning73 => 'প্রথম';

  @override
  String get asmaMeaning74 => 'শেষ';

  @override
  String get asmaMeaning75 => 'দি ম্যানিফেস্ট';

  @override
  String get asmaMeaning76 => 'লুকানো';

  @override
  String get asmaMeaning77 => 'গভর্নর';

  @override
  String get asmaMeaning78 => 'সর্বোচ্চ এক';

  @override
  String get asmaMeaning79 => 'The Doer of Good';

  @override
  String get asmaMeaning80 => 'অনুতাপের নির্দেশিকা';

  @override
  String get asmaMeaning81 => 'The Avenger';

  @override
  String get asmaMeaning82 => 'ক্ষমাকারী';

  @override
  String get asmaMeaning83 => 'The Clement';

  @override
  String get asmaMeaning84 => 'সকলের মালিক/সার্বভৌম';

  @override
  String get asmaMeaning85 => 'মহিমা ও অনুগ্রহের অধিকারী';

  @override
  String get asmaMeaning86 => 'The Equitable One';

  @override
  String get asmaMeaning87 => 'সংগ্রহকারী';

  @override
  String get asmaMeaning88 => 'The Rich One';

  @override
  String get asmaMeaning89 => 'The Enricher';

  @override
  String get asmaMeaning90 => 'ক্ষতি প্রতিরোধক';

  @override
  String get asmaMeaning91 => 'ক্ষতির আনয়নকারী';

  @override
  String get asmaMeaning92 => 'সুবিধা প্রদানকারী';

  @override
  String get asmaMeaning93 => 'আলো';

  @override
  String get asmaMeaning94 => 'দ্যা গাইড';

  @override
  String get asmaMeaning95 => 'প্রবর্তক';

  @override
  String get asmaMeaning96 => 'The Everlasting One';

  @override
  String get asmaMeaning97 => 'উত্তরাধিকারী';

  @override
  String get asmaMeaning98 => 'সর্বাধিক ধার্মিক গাইড';

  @override
  String get asmaMeaning99 => 'একজন রোগী';
}
