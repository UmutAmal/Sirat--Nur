// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nepali (`ne`).
class AppLocalizationsNe extends AppLocalizations {
  AppLocalizationsNe([String locale = 'ne']) : super(locale);

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
  String get fajr => 'फजर';

  @override
  String get sunrise => 'सूर्योदय';

  @override
  String get dhuhr => 'धुहर';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'मगरिब';

  @override
  String get isha => 'ईशा';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName को लागि समय';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'यो प्रार्थना गर्ने समय हो $prayerName।';
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
  String get locationServiceDisabled => 'स्थान सेवा असक्षम गरिएको छ।';

  @override
  String get locationPermissionDenied => 'स्थान अनुमति अस्वीकार गरियो।';

  @override
  String citiesCount(String count) {
    return '$count शहरहरू';
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
  String get appErrorOccurred => 'एउटा त्रुटि भयो';

  @override
  String get appUnknownError => 'अज्ञात त्रुटि';

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
  String get hadith => 'हदीस';

  @override
  String get hadithCollection => 'हदीस संग्रह';

  @override
  String get hadithBooks => 'हदीस पुस्तकहरू';

  @override
  String get searchHadith => 'हदीस खोज्नुहोस्';

  @override
  String get asmaulHusna => 'अस्मा-उल-हुस्ना';

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
  String get openInYoutube => 'YouTube मा खोल्नुहोस्';

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
    return 'कम्पास त्रुटि: $error';
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
    return '$appName को जाँच गर्नुहोस्: परम इस्लामी जीवन शैली एप! $url';
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
  String get diagnosticsNotSet => 'सेट गरिएको छैन';

  @override
  String get diagnosticsPrayerProfile => 'प्रार्थना प्रोफाइल';

  @override
  String get diagnosticsPrayerSource => 'प्रार्थना प्राधिकरण';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'अनुकूलन / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'म्यानुअल अनुकूलन कोण (कुनै संस्थागत स्रोत छैन)';

  @override
  String get diagnosticsCloudDriven => 'क्लाउड संचालित';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan अडियो सम्पत्ति';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'कुरान अडियो सम्पत्ति';

  @override
  String get diagnosticsAudioAssets => 'अडियो सम्पत्ति';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count फाइलहरू';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'म्यानिफेस्ट पढ्न असफल भयो: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'स्थानीयकरण लोकेलहरू';

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
  String get dailyVerse => 'दैनिक पद';

  @override
  String get todaysIbadah => 'आजको इबादह';

  @override
  String get quickAccess => 'द्रुत पहुँच';

  @override
  String get assistant => 'सहायक';

  @override
  String get places => 'स्थानहरू';

  @override
  String get library => 'पुस्तकालय';

  @override
  String get analytics => 'विश्लेषण';

  @override
  String get dailyDuas => 'दैनिक दुआस';

  @override
  String essentialDuas(String count) {
    return '$count आवश्यक दुआहरू';
  }

  @override
  String get duaUnavailableTitle => 'प्रमाणित दुआहरू अझै उपलब्ध छैनन्';

  @override
  String get duaUnavailableBody =>
      'प्रमाणित दैनिक दुआहरू अझै यस यन्त्रमा सिंक गरिएको छैन। अप्रमाणित फलब्याकको सट्टा सोर्स गरिएको डुआ लोड गर्न क्लाउड स्रोतमा जडान गर्नुहोस्।';

  @override
  String get duaCategoryQuranic => 'कुरानिक दुआ';

  @override
  String get duaCategoryMorningEvening => 'बिहान र साँझ';

  @override
  String get duaCategoryTasbih => 'तस्बिह';

  @override
  String get duaCategoryProtection => 'संरक्षण';

  @override
  String get duaCategoryBeginning => 'शुरुवात';

  @override
  String get duaCategorySleep => 'सुत्नुहोस्';

  @override
  String get duaCategoryFoodDrink => 'खाना र पेय';

  @override
  String get duaCategoryForgiveness => 'क्षमा';

  @override
  String get duaCategoryHome => 'घर';

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
  String get islamicEducation => 'इस्लामिक शिक्षा';

  @override
  String get sukunAudioTitle => 'सुकुन साउन्डस्केप';

  @override
  String get hadithCollections => 'हदीस संग्रह';

  @override
  String get hadithSourcePending => 'प्रमाणित स्रोत विचाराधीन';

  @override
  String get hadithUnavailableTitle => 'प्रमाणित हदीस संग्रह अझै उपलब्ध छैन';

  @override
  String get hadithUnavailableBody =>
      'यो निर्माण अझै पनि एक अप्रमाणित बाह्य हदीस फिड मा निर्भर गर्दछ। स्रोत डेटासेट सिंक नभएसम्म हदीस ब्राउजिङ असक्षम रहन्छ।';

  @override
  String get paywallUnlockAll =>
      'तपाईंको आध्यात्मिक यात्राको लागि सबै सुविधाहरू अनलक गर्नुहोस्';

  @override
  String get paywallFeature1Title => 'न्यूरल सहायक प्लस';

  @override
  String get paywallFeature1Desc => 'असीमित एआई-संचालित प्रश्नोत्तर';

  @override
  String get paywallFeature2Title => 'असीमित अफलाइन';

  @override
  String get paywallFeature2Desc => 'सबै पाठहरू डाउनलोड गर्नुहोस्';

  @override
  String get paywallFeature3Title => 'विशेष डिजाइनहरू';

  @override
  String get paywallFeature3Desc => 'प्रिमियम थिमहरू र फन्टहरू';

  @override
  String get paywallFeature4Title => 'विज्ञापन-मुक्त';

  @override
  String get paywallFeature4Desc => 'शून्य विज्ञापन';

  @override
  String get paywallGetAccess => 'लाइफटाइम पहुँच पाउनुहोस् - \$1.00';

  @override
  String get restorePurchases => 'खरिदहरू पुनर्स्थापित गर्नुहोस्';

  @override
  String get zakatCalculator => 'जकात क्याल्कुलेटर';

  @override
  String get zakatGold => 'सुन (Altın)';

  @override
  String get zakatSilver => 'चाँदी (Gümüş)';

  @override
  String get zakatCashBank => 'नगद / बैंक';

  @override
  String get zakatBusiness => 'व्यापार';

  @override
  String get zakatInvestments => 'लगानी';

  @override
  String get zakatWeightGrams => 'वजन (g)';

  @override
  String get zakatPricePerGram => 'मूल्य/g';

  @override
  String get zakatTotalAmount => 'कुल रकम';

  @override
  String get zakatInventoryValue => 'इन्भेन्टरी मूल्य';

  @override
  String get zakatDebts => 'ऋण';

  @override
  String get zakatTotal => 'कुल';

  @override
  String get calculateZakat => 'जकात गणना गर्नुहोस्';

  @override
  String get nisabNotReached => 'निसाब पुगेको छैन। जकात अनिवार्य छैन।';

  @override
  String get totalZakat => 'कुल जकात';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'निसाब: $nisab • सम्पत्ति: $assets';
  }

  @override
  String get zakatGoldZakat => 'सुन जकात';

  @override
  String get zakatSilverZakat => 'चाँदी जकात';

  @override
  String get zakatCashZakat => 'नगद जकात';

  @override
  String get zakatBusinessZakat => 'व्यापार जकात';

  @override
  String get zakatInvestmentZakat => 'लगानी जकात';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'दैनिक क्वेरी सीमा पुग्यो। असीमितका लागि प्रीमियममा स्तरवृद्धि गर्नुहोस्।';

  @override
  String get chatbotErrorMsg =>
      'मैले प्रतिक्रिया उत्पन्न गर्न सकिन। कृपया पुन: प्रयास गर्नुहोस्।';

  @override
  String get chatbotOfflinePrompt =>
      'प्रमाणित अफलाइन इस्लामिक ज्ञान आधार अझै पनि क्युरेट गरिएको छ। तपाईंले अहिले अफलाइन फलब्याक सक्षम गर्न सक्नुहुन्छ, तर स्रोत डेटासेट तयार नभएसम्म यसले सीमित सुरक्षित सन्देशहरू मात्र देखाउनेछ।\n\nके तपाइँ अफलाइन फलब्याक सक्षम गर्न चाहनुहुन्छ?';

  @override
  String get chatbotOfflineSwitched =>
      'अफलाइन फलब्याक सक्षम गरियो। प्रमाणित स्थानीय इस्लामिक जवाफहरू अझै तयार छैनन्।';

  @override
  String get chatbotOfflineDownloadLabel => 'अफलाइन फलब्याक सक्षम गर्नुहोस्';

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
  String get sukunMixerSubtitle => 'प्रकृति र कुरान मिक्सर';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'सुकुन (प्रकृति)';

  @override
  String get sukunRainOfMercy => 'दयाको वर्षा';

  @override
  String get sukunGardenOfPeace => 'शान्ति बगैंचा';

  @override
  String get sukunMidnightCalm => 'मध्यरात शान्त';

  @override
  String get sukunOceanTawheed => 'महासागर तौहीद';

  @override
  String get sukunUnavailableTitle => 'साउन्डस्केपहरू उपलब्ध छैनन्';

  @override
  String get sukunUnavailableBody =>
      'यो निर्माणले आवश्यक Sukun soundscape सम्पत्तिहरू समावेश गर्दैन।';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'दिनको सिलसिला';

  @override
  String get bestStreak => 'उत्कृष्ट स्ट्रीक';

  @override
  String get chatbotCloudAiLabel => 'क्लाउड एआई';

  @override
  String get chatbotLocalAiLabel => 'अफलाइन फलब्याक';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'अफलाइन फलब्याक सक्षम गर्नुहोस्';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count बाँकी';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'क्लाउड API कन्फिगर गरिएको छैन। कृपया स्थानीय AI मा स्विच गर्नुहोस्।';

  @override
  String get chatbotLocalNoInfo =>
      '[अफलाइन] प्रमाणित स्थानीय इस्लामिक मार्गदर्शन अझै उपलब्ध छैन। सोर्स गरिएका उत्तरहरूको लागि क्लाउड एआईमा स्विच गर्नुहोस्।';

  @override
  String get mosques => 'मस्जिदहरू';

  @override
  String get halalFood => 'हलाल खाना';

  @override
  String get placesSearchArea => 'यो क्षेत्र खोज्नुहोस्';

  @override
  String get nearbyMosques => 'नजिकैको मस्जिदहरू';

  @override
  String get islamicSchools => 'इस्लामिक विद्यालयहरू';

  @override
  String placesFoundCount(String count) {
    return '$count भेटियो';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance किमी टाढा';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API त्रुटि: $statusCode';
  }

  @override
  String get placesNetworkError =>
      'नेटवर्क त्रुटि। कृपया पुन: प्रयास गर्नुहोस्।';

  @override
  String get unknownPlaceName => 'अज्ञात नाम';

  @override
  String get islamicPlaceFallback => 'इस्लामिक स्थान';
}
