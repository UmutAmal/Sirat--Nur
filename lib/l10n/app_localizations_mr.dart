// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

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
  String get maghrib => 'मगरीब';

  @override
  String get isha => 'ईशा';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName साठी वेळ';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'प्रार्थना करण्याची वेळ आली आहे $prayerName.';
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
  String get locationServiceDisabled => 'स्थान सेवा अक्षम केली आहे.';

  @override
  String get locationPermissionDenied => 'स्थान परवानगी नाकारली.';

  @override
  String citiesCount(String count) {
    return '$count शहरे';
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
  String get hadith => 'हदीस';

  @override
  String get hadithCollection => 'हदीस संग्रह';

  @override
  String get hadithBooks => 'हदीस पुस्तके';

  @override
  String get searchHadith => 'हदीस शोधा';

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
  String get openInYoutube => 'YouTube मध्ये उघडा';

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
    return '$appName पहा: अंतिम इस्लामिक जीवनशैली ॲप! $url';
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
  String get diagnosticsNotSet => 'सेट नाही';

  @override
  String get diagnosticsPrayerProfile => 'प्रार्थना प्रोफाइल';

  @override
  String get diagnosticsPrayerSource => 'प्रार्थना प्राधिकरण';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'कस्टम / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'मॅन्युअल सानुकूल कोन (संस्थागत स्रोत नाही)';

  @override
  String get diagnosticsCloudDriven => 'ढग चालवलेले';

  @override
  String get diagnosticsAdhanAudioAssets => 'अधान ऑडिओ मालमत्ता';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'कुराण ऑडिओ मालमत्ता';

  @override
  String get diagnosticsAudioAssets => 'ऑडिओ मालमत्ता';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count फायली';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'मॅनिफेस्ट वाचन अयशस्वी: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'स्थानिकीकरण लोकेल';

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
  String get dailyVerse => 'दैनिक श्लोक';

  @override
  String get todaysIbadah => 'आजचा इबादा';

  @override
  String get quickAccess => 'द्रुत प्रवेश';

  @override
  String get assistant => 'सहाय्यक';

  @override
  String get places => 'ठिकाणे';

  @override
  String get library => 'लायब्ररी';

  @override
  String get analytics => 'विश्लेषण';

  @override
  String get dailyDuas => 'रोजची दुआ';

  @override
  String essentialDuas(String count) {
    return '$count आवश्यक दुआ';
  }

  @override
  String get duaUnavailableTitle => 'सत्यापित दुआ अद्याप उपलब्ध नाहीत';

  @override
  String get duaUnavailableBody =>
      'सत्यापित दैनिक दुआ अद्याप या डिव्हाइसवर समक्रमित केले गेले नाहीत. असत्यापित फॉलबॅक ऐवजी सोर्स केलेले डुआ लोड करण्यासाठी क्लाउड स्त्रोताशी कनेक्ट करा.';

  @override
  String get duaCategoryQuranic => 'कुराण दुआ';

  @override
  String get duaCategoryMorningEvening => 'सकाळ आणि संध्याकाळ';

  @override
  String get duaCategoryTasbih => 'तस्बिह';

  @override
  String get duaCategoryProtection => 'संरक्षण';

  @override
  String get duaCategoryBeginning => 'सुरुवात';

  @override
  String get duaCategorySleep => 'झोप';

  @override
  String get duaCategoryFoodDrink => 'अन्न आणि पेय';

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
  String get islamicEducation => 'इस्लामिक शिक्षण';

  @override
  String get sukunAudioTitle => 'सुकुन साउंडस्केप्स';

  @override
  String get hadithCollections => 'हदीस संग्रह';

  @override
  String get hadithSourcePending => 'सत्यापित स्रोत प्रलंबित';

  @override
  String get hadithUnavailableTitle =>
      'सत्यापित हदीस संग्रह अद्याप उपलब्ध नाहीत';

  @override
  String get hadithUnavailableBody =>
      'हे बिल्ड अजूनही असत्यापित बाह्य हदीस फीडवर अवलंबून आहे. स्त्रोत केलेला डेटासेट समक्रमित होईपर्यंत हदीथ ब्राउझिंग अक्षम राहते.';

  @override
  String get paywallUnlockAll =>
      'तुमच्या आध्यात्मिक प्रवासासाठी सर्व वैशिष्ट्ये अनलॉक करा';

  @override
  String get paywallFeature1Title => 'न्यूरल असिस्टंट प्लस';

  @override
  String get paywallFeature1Desc => 'अमर्यादित AI-सक्षम प्रश्नोत्तरे';

  @override
  String get paywallFeature2Title => 'अमर्यादित ऑफलाइन';

  @override
  String get paywallFeature2Desc => 'सर्व पठण डाउनलोड करा';

  @override
  String get paywallFeature3Title => 'अनन्य डिझाईन्स';

  @override
  String get paywallFeature3Desc => 'प्रीमियम थीम आणि फॉन्ट';

  @override
  String get paywallFeature4Title => 'जाहिरात-मुक्त';

  @override
  String get paywallFeature4Desc => 'शून्य जाहिराती';

  @override
  String get paywallGetAccess => 'आजीवन प्रवेश मिळवा - \$1.00';

  @override
  String get restorePurchases => 'खरेदी पुनर्संचयित करा';

  @override
  String get zakatCalculator => 'जकात कॅल्क्युलेटर';

  @override
  String get zakatGold => 'सोने (Altın)';

  @override
  String get zakatSilver => 'चांदी (Gümüş)';

  @override
  String get zakatCashBank => 'रोख / बँक';

  @override
  String get zakatBusiness => 'व्यवसाय';

  @override
  String get zakatInvestments => 'गुंतवणूक';

  @override
  String get zakatWeightGrams => 'वजन (ग्रॅम)';

  @override
  String get zakatPricePerGram => 'किंमत/ग्रॅ';

  @override
  String get zakatTotalAmount => 'एकूण रक्कम';

  @override
  String get zakatInventoryValue => 'इन्व्हेंटरी मूल्य';

  @override
  String get zakatDebts => 'कर्ज';

  @override
  String get zakatTotal => 'एकूण';

  @override
  String get calculateZakat => 'जकात मोजा';

  @override
  String get nisabNotReached => 'निसाब पोहोचला नाही. जकात बंधनकारक नाही.';

  @override
  String get totalZakat => 'एकूण जकात';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'नियम: $nisab • मालमत्ता: $assets';
  }

  @override
  String get zakatGoldZakat => 'सोन्याची जकात';

  @override
  String get zakatSilverZakat => 'चांदीची जकात';

  @override
  String get zakatCashZakat => 'रोख जकात';

  @override
  String get zakatBusinessZakat => 'व्यवसाय जकात';

  @override
  String get zakatInvestmentZakat => 'गुंतवणूक जकात';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'दैनिक क्वेरी मर्यादा गाठली. अमर्यादित प्रीमियम वर श्रेणीसुधारित करा.';

  @override
  String get chatbotErrorMsg =>
      'मी प्रतिसाद देऊ शकलो नाही. कृपया पुन्हा प्रयत्न करा.';

  @override
  String get chatbotOfflinePrompt =>
      'सत्यापित ऑफलाइन इस्लामिक ज्ञान बेस अद्याप क्युरेट केले जात आहे. तुम्ही आता ऑफलाइन फॉलबॅक सक्षम करू शकता, परंतु स्त्रोत डेटासेट तयार होईपर्यंत ते केवळ मर्यादित सुरक्षित संदेश दर्शवेल.\n\nतुम्ही ऑफलाइन फॉलबॅक सक्षम करू इच्छिता?';

  @override
  String get chatbotOfflineSwitched =>
      'ऑफलाइन फॉलबॅक सक्षम केले. सत्यापित स्थानिक इस्लामिक उत्तरे अद्याप तयार नाहीत.';

  @override
  String get chatbotOfflineDownloadLabel => 'ऑफलाइन फॉलबॅक सक्षम करा';

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
  String get sukunMixerSubtitle => 'निसर्ग आणि कुराण मिक्सर';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'सुकुन (निसर्ग)';

  @override
  String get sukunRainOfMercy => 'दयेचा पाऊस';

  @override
  String get sukunGardenOfPeace => 'शांततेची बाग';

  @override
  String get sukunMidnightCalm => 'मध्यरात्री शांतता';

  @override
  String get sukunOceanTawheed => 'महासागर तौहीद';

  @override
  String get sukunUnavailableTitle => 'साउंडस्केप अनुपलब्ध';

  @override
  String get sukunUnavailableBody =>
      'या बिल्डमध्ये अद्याप आवश्यक Sukun साउंडस्केप मालमत्ता समाविष्ट नाही.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'दिवसाची ओढ';

  @override
  String get bestStreak => 'सर्वोत्तम स्ट्रीक';

  @override
  String get chatbotCloudAiLabel => 'क्लाउड AI';

  @override
  String get chatbotLocalAiLabel => 'ऑफलाइन फॉलबॅक';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'ऑफलाइन फॉलबॅक सक्षम करा';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count बाकी';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'क्लाउड API कॉन्फिगर केलेले नाही. कृपया स्थानिक AI वर स्विच करा.';

  @override
  String get chatbotLocalNoInfo =>
      '[ऑफलाइन] सत्यापित स्थानिक इस्लामिक मार्गदर्शन अद्याप उपलब्ध नाही. सोर्स केलेल्या उत्तरांसाठी Cloud AI वर स्विच करा.';

  @override
  String get mosques => 'मशिदी';

  @override
  String get halalFood => 'हलाल अन्न';

  @override
  String get placesSearchArea => 'या भागात शोधा';

  @override
  String get nearbyMosques => 'जवळच्या मशिदी';

  @override
  String get islamicSchools => 'इस्लामिक शाळा';

  @override
  String placesFoundCount(String count) {
    return '$count सापडले';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance किमी दूर';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API त्रुटी: $statusCode';
  }

  @override
  String get placesNetworkError => 'नेटवर्क त्रुटी. कृपया पुन्हा प्रयत्न करा.';

  @override
  String get unknownPlaceName => 'अज्ञात नाव';

  @override
  String get islamicPlaceFallback => 'इस्लामिक ठिकाण';
}
