// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sindhi (`sd`).
class AppLocalizationsSd extends AppLocalizations {
  AppLocalizationsSd([String locale = 'sd']) : super(locale);

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
  String get fajr => 'فجر';

  @override
  String get sunrise => 'سج اڀرڻ';

  @override
  String get dhuhr => 'ڏهر';

  @override
  String get asr => 'عصر';

  @override
  String get maghrib => 'مغرب';

  @override
  String get isha => 'ايشا';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName لاءِ وقت';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'دعا ڪرڻ جو وقت آهي $prayerName.';
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
  String get locationServiceDisabled => 'جڳھ جي خدمت غير فعال آھي.';

  @override
  String get locationPermissionDenied => 'جڳھ جي اجازت رد ڪئي وئي.';

  @override
  String citiesCount(String count) {
    return '$count شهر';
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
  String get appErrorOccurred => 'هڪ غلطي ٿي وئي';

  @override
  String get appUnknownError => 'اڻڄاتل غلطي';

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
  String get hadith => 'حديث';

  @override
  String get hadithCollection => 'حديث جو مجموعو';

  @override
  String get hadithBooks => 'حديث جا ڪتاب';

  @override
  String get searchHadith => 'حديث جي ڳولا ڪريو';

  @override
  String get asmaulHusna => 'اسماء الحسنه';

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
  String get openInYoutube => 'يوٽيوب ۾ کوليو';

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
    return 'چيڪ آئوٽ ڪريو $appName: انتهائي اسلامي طرز زندگي ايپ! $url';
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
  String get diagnosticsNotSet => 'مقرر نه ٿيو';

  @override
  String get diagnosticsPrayerProfile => 'نماز جي پروفائيل';

  @override
  String get diagnosticsPrayerSource => 'نماز جو اختيار';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'حسب ضرورت / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'دستي حسب ضرورت زاويه (ڪو به ادارو ذريعو نه آهي)';

  @override
  String get diagnosticsCloudDriven => 'Cloud Driven';

  @override
  String get diagnosticsAdhanAudioAssets => 'اذان آڊيو اثاثن';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'قرآن آڊيو اثاثو';

  @override
  String get diagnosticsAudioAssets => 'آڊيو اثاثو';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count فائلون';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'منشور پڙهڻ ناڪام ٿيو: $error';
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
  String get dailyVerse => 'روزانه نظم';

  @override
  String get todaysIbadah => 'اڄ جي عبادت';

  @override
  String get quickAccess => 'تڪڙي پهچ';

  @override
  String get assistant => 'مددگار';

  @override
  String get places => 'جڳهيون';

  @override
  String get library => 'لائبريري';

  @override
  String get analytics => 'تجزياتي';

  @override
  String get dailyDuas => 'روزانه دعا';

  @override
  String essentialDuas(String count) {
    return '$count ضروري دعائون';
  }

  @override
  String get duaUnavailableTitle => 'تصديق ٿيل دعا اڃا تائين دستياب ناهي';

  @override
  String get duaUnavailableBody =>
      'تصديق ٿيل روزاني دعا اڃا تائين هن ڊوائيس سان هم وقت نه ڪئي وئي آهي. اڻ تصديق ٿيل فال بيڪ بدران sourced duas لوڊ ڪرڻ لاءِ ڪلائوڊ ماخذ سان ڳنڍيو.';

  @override
  String get duaCategoryQuranic => 'قرآني دعا';

  @override
  String get duaCategoryMorningEvening => 'صبح ۽ شام';

  @override
  String get duaCategoryTasbih => 'تسبيح';

  @override
  String get duaCategoryProtection => 'تحفظ';

  @override
  String get duaCategoryBeginning => 'شروعات';

  @override
  String get duaCategorySleep => 'سمهڻ';

  @override
  String get duaCategoryFoodDrink => 'کاڌو ۽ پيئڻ';

  @override
  String get duaCategoryForgiveness => 'بخشش';

  @override
  String get duaCategoryHome => 'گهر';

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
  String get islamicEducation => 'اسلامي تعليم';

  @override
  String get sukunAudioTitle => 'سکن صوتي منظر';

  @override
  String get hadithCollections => 'حديث جو مجموعو';

  @override
  String get hadithSourcePending => 'تصديق ٿيل ذريعو انتظار ۾';

  @override
  String get hadithUnavailableTitle =>
      'تصديق ٿيل حديثن جو مجموعو اڃا تائين دستياب ناهي';

  @override
  String get hadithUnavailableBody =>
      'هي تعمير اڃا تائين اڻ تصديق ٿيل خارجي حديث فيڊ تي منحصر آهي. حديث برائوزنگ غير فعال رهي ٿي جيستائين هڪ sourced dataset کي هم وقت نه ڪيو وڃي.';

  @override
  String get paywallUnlockAll => 'پنھنجي روحاني سفر لاءِ سڀ خصوصيتون کوليو';

  @override
  String get paywallFeature1Title => 'نيورل اسسٽنٽ پلس';

  @override
  String get paywallFeature1Desc => 'لامحدود AI-طاقتور سوال ۽ جواب';

  @override
  String get paywallFeature2Title => 'لامحدود آف لائن';

  @override
  String get paywallFeature2Desc => 'سڀ تلاوت ڊائون لوڊ ڪريو';

  @override
  String get paywallFeature3Title => 'خاص ڊيزائن';

  @override
  String get paywallFeature3Desc => 'پريميئم موضوع ۽ فونٽ';

  @override
  String get paywallFeature4Title => 'اشتهارن کان آزاد';

  @override
  String get paywallFeature4Desc => 'صفر اشتهار';

  @override
  String get paywallGetAccess => 'لائف ٽائيم رسائي حاصل ڪريو - \$1.00';

  @override
  String get restorePurchases => 'خريداري بحال ڪريو';

  @override
  String get zakatCalculator => 'زڪوات جو حساب ڪندڙ';

  @override
  String get zakatGold => 'سون (Altın)';

  @override
  String get zakatSilver => 'چاندي (Gümüş)';

  @override
  String get zakatCashBank => 'نقد / بئنڪ';

  @override
  String get zakatBusiness => 'ڌنڌو';

  @override
  String get zakatInvestments => 'سيڙپڪاري';

  @override
  String get zakatWeightGrams => 'وزن (g)';

  @override
  String get zakatPricePerGram => 'قيمت/جي';

  @override
  String get zakatTotalAmount => 'ڪل رقم';

  @override
  String get zakatInventoryValue => 'Inventory Value';

  @override
  String get zakatDebts => 'قرض';

  @override
  String get zakatTotal => 'ڪُل';

  @override
  String get calculateZakat => 'زڪوات جو حساب ڪريو';

  @override
  String get nisabNotReached => 'نصاب نه پهتو. زڪوات واجب نه آهي.';

  @override
  String get totalZakat => 'ڪل زڪوات';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'نصاب: $nisab • اثاثا: $assets';
  }

  @override
  String get zakatGoldZakat => 'سون جي زڪوات';

  @override
  String get zakatSilverZakat => 'چاندي جي زڪوات';

  @override
  String get zakatCashZakat => 'نقد زڪوات';

  @override
  String get zakatBusinessZakat => 'ڪاروباري زڪوات';

  @override
  String get zakatInvestmentZakat => 'سيڙپڪاري زڪوات';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'روزاني سوال جي حد تائين پهچي ويو. لامحدود لاءِ پريميئم ۾ اپڊيٽ ڪريو.';

  @override
  String get chatbotErrorMsg =>
      'مان جواب نه ڏئي سگهيو آهيان. مهرباني ڪري ٻيهر ڪوشش ڪريو.';

  @override
  String get chatbotOfflinePrompt =>
      'تصديق ٿيل آف لائن اسلامي علم جو بنياد اڃا تائين ڪيو پيو وڃي. توھان ھاڻي چالو ڪري سگھو ٿا آف لائن فال بيڪ کي، پر اھو صرف محدود محفوظ پيغام ڏيکاريندو جيستائين sourced dataset تيار نه ٿئي.\n\nڇا توھان چاھيو ٿا آف لائن فال بيڪ کي فعال ڪرڻ؟';

  @override
  String get chatbotOfflineSwitched =>
      'آف لائن فال بيڪ فعال ٿيو. تصديق ٿيل مقامي اسلامي جواب اڃا تائين تيار نه آهن.';

  @override
  String get chatbotOfflineDownloadLabel => 'آف لائن Fallback کي فعال ڪريو';

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
  String get sukunMixerSubtitle => 'فطرت ۽ قرآن ملائيندڙ';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'سکن (فطرت)';

  @override
  String get sukunRainOfMercy => 'رحمت جي برسات';

  @override
  String get sukunGardenOfPeace => 'امن جو باغ';

  @override
  String get sukunMidnightCalm => 'اڌ رات جو آرام';

  @override
  String get sukunOceanTawheed => 'بحر توحيد';

  @override
  String get sukunUnavailableTitle => 'Soundscapes موجود نه آهن';

  @override
  String get sukunUnavailableBody =>
      'ھن تعمير ۾ اڃا تائين گهربل Sukun soundscape اثاثا شامل نه آھن.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'ڏينهن جو سلسلو';

  @override
  String get bestStreak => 'بهترين سلسلو';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'آف لائن Fallback';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'آف لائن Fallback کي فعال ڪريو';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count ڇڏي ويو';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API ترتيب نه ڏني وئي. مھرباني ڪري مقامي AI ڏانھن وڃو.';

  @override
  String get chatbotLocalNoInfo =>
      '[آف لائن] تصديق ٿيل مقامي اسلامي ھدايت اڃا موجود نه آھي. Cloud AI ڏانھن وڃو sourced جوابن لاءِ.';

  @override
  String get mosques => 'مسجدون';

  @override
  String get halalFood => 'حلال کاڌو';

  @override
  String get placesSearchArea => 'هن علائقي جي ڳولا ڪريو';

  @override
  String get nearbyMosques => 'ڀرسان مسجدون';

  @override
  String get islamicSchools => 'اسلامي اسڪول';

  @override
  String placesFoundCount(String count) {
    return '$count مليو';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance ڪلوميٽر پري';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API غلطي: $statusCode';
  }

  @override
  String get placesNetworkError => 'نيٽ ورڪ غلطي. مهرباني ڪري ٻيهر ڪوشش ڪريو.';

  @override
  String get unknownPlaceName => 'اڻڄاتل نالو';

  @override
  String get islamicPlaceFallback => 'اسلامي جڳھ';
}
