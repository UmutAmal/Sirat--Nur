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
  String get splashTagline => 'اسلامي روشنيءَ جو رستو';

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
  String get locationDetectionFailed =>
      'توھان جي جڳھ جي سڃاڻپ نه ٿي سگھي. مھرباني ڪري دستي طور شھر چونڊيو يا وري ڪوشش ڪريو.';

  @override
  String citiesCount(String count) {
    return '$count شهر';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'ڪي به نتيجا نه مليا';

  @override
  String get loading => 'لوڊ ٿي رهيو آهي...';

  @override
  String get error => 'نقص';

  @override
  String get appErrorOccurred => 'هڪ غلطي ٿي وئي';

  @override
  String get appUnknownError => 'اڻڄاتل غلطي';

  @override
  String get quranLoadFailed =>
      'قرآن جو مواد لوڊ نه ٿي سگهيو. مهرباني ڪري ٻيهر ڪوشش ڪريو.';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'تازو ڪريو';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'حذف ڪريو';

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
  String ayahLabel(String ayah) {
    return 'آيه $ayah';
  }

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
  String get tafsirLoading => 'تفسير لوڊ ٿي رهيو آهي...';

  @override
  String get tafsirSourceLabel => 'تفسير جو ذريعو';

  @override
  String get tafsirNoSurahFound => 'هن سورت جي ڪا به تفسير نه ملي.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'آيت $ayah جي ڪا به تفسير نه ملي.';
  }

  @override
  String get tafsirLoadFailed => 'تفسير لوڊ نه ٿي سگهي.';

  @override
  String get tafsirNoTextForAyah => 'هن آيت جي ڪا به تفسير نه آهي.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'ڊائون لوڊ ڪندي تفسير $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'لوڊ ڪندي تفسير $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'تفسير ماخذ هڪ HTTP $statusCode غلطي واپس ڪئي.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'منتخب ٿيل تفسير ماخذ ڪو به داخل نه ڪيو.';

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
  String get duaMeaning1 =>
      'ٻيا دعا ڪن ٿا ته اي اسان جا پالڻھار اسان کي دنيا ۽ آخرت ۾ چڱائي ڏي ۽ اسان کي باھ جي عذاب کان بچائي.';

  @override
  String get duaMeaning2 =>
      'خدا ڪنهن به نفس تي ان جي برداشت کان وڌيڪ تڪليف نه ٿو ڏئي: هر هڪ جيڪو سٺو ڪيو آهي اهو حاصل ڪري ٿو، ۽ ان جي برائي کي برداشت ڪري ٿو- \'اي رب، اسان کي پڪڙي نه وٺو جيڪڏهن اسان وساري يا غلطي ڪريون. اي پالڻھار اسان تي بار نه ڪر جيئن تو اسان کان اڳين تي بار ڪيو. اي منهنجا مالڪ، اسان کي برداشت ڪرڻ جي طاقت کان وڌيڪ بوجھ نه ڏيو. اسان کي بخش، اسان کي بخش، ۽ اسان تي رحم ڪر. تون اسان جو نگهبان آهين پوءِ ڪافرن جي مقابلي ۾ اسان جي مدد ڪر“.';

  @override
  String get duaMeaning3 =>
      '”اي اسان جا پالڻھار، اسان جي دلين کي ھدايت ڪرڻ کان پوءِ ٽٽڻ نه ڏي. اسان کي پنهنجي رحمت عطا ڪر: تون هميشه ڏيڻ وارو آهين.';

  @override
  String get duaMeaning4 =>
      'رب، عطا فرماءِ ته مان ۽ منهنجو اولاد نماز قائم رکون. اي منهنجا رب، منهنجي درخواست قبول ڪر.';

  @override
  String get duaMeaning5 =>
      '۽ پنهنجي ونگ کي نرميءَ سان انهن ڏانهن نرميءَ سان جهليو ۽ چئو ته، \'اي رب، انهن تي رحم ڪر، جيئن انهن مون کي ننڍي هوندي کان سنڀاليو.\'';

  @override
  String get duaMeaning6 =>
      'الله پاڪ آهي، جيڪو واقعي قابو ۾ آهي. (پيغمبر)، وحي مڪمل ٿيڻ کان اڳ تلاوت ڪرڻ ۾ جلدي نه ڪريو، پر چئو ته اي منهنجا مالڪ، منهنجي علم ۾ واڌارو ڪر!';

  @override
  String get duaMeaning7 =>
      '(پيغمبر) چؤ ته اي پالڻھار معاف ڪر ۽ رحم ڪر، تون سڀني کان وڌيڪ ٻاجھارو آھين.';

  @override
  String get duaMeaning8 =>
      'جيڪي دعا ڪندا آھن ته اي اسان جا پالڻھار، اسان کي اسان جي زالن ۽ اولاد ۾ خوشي ڏي. اسان کي انهن لاءِ سٺو نمونو ٺاهيو جيڪي توهان کان واقف آهن.';

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
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '${hours}h ${minutes}m';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '${minutes}m';
  }

  @override
  String get prayerRemainingUnavailable => '--';

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
  String get islamicNewYear => 'اسلامي نئون سال';

  @override
  String get mawlidAnNabi => 'ميلاد النبي';

  @override
  String get specialDayDateRamadanStart => '1 رمضان';

  @override
  String get specialDayDateLaylatAlQadr => '27 رمضان';

  @override
  String get specialDayDateEidAlFitr => '1 شوال';

  @override
  String get specialDayDateEidAlAdha => '10 ذوالحج';

  @override
  String get specialDayDateIslamicNewYear => '1 محرم';

  @override
  String get specialDayDateMawlidAnNabi => '12 ربيع الاول';

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
    return 'کمپاس غلطي: $error';
  }

  @override
  String get qiblaSensorUnavailable => 'کمپاس سينسر هن ڊوائيس تي دستياب ناهي.';

  @override
  String get qiblaLocationRequiredTitle => 'قبله لاءِ گهربل مقام';

  @override
  String get qiblaLocationRequiredBody =>
      'قبله کمپاس استعمال ڪرڻ کان اڳ پنھنجي اصل جڳھ کي سيٽ ڪريو ته جيئن ھدايت جي صحيح حساب ڪري سگھجي.';

  @override
  String get adhanNotificationChannelName => 'اذان جا اطلاع';

  @override
  String get adhanNotificationChannelDescription =>
      'اذان جي آواز سان نماز جو وقت خبردار ڪري ٿو.';

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
  String get downloadManager => 'ڊائون لوڊ مئنيجر';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'ڊائون لوڊ مڪمل';

  @override
  String get downloadFailed => 'ڊائون لوڊ ناڪام';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'انٽرنيٽ ڪنيڪشن ناهي';

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
  String get zikrCompletedMashAllah => 'مڪمل ٿيو! ماشاءالله';

  @override
  String get zikrMeaningSubhanAllah => 'الله تعاليٰ هر عيب کان مٿانهون آهي.';

  @override
  String get zikrMeaningAlhamdulillah => 'سڀ تعريفون الله جي لاءِ آهن.';

  @override
  String get zikrMeaningAllahuAkbar => 'الله سڀ کان وڏو آهي.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'الله کان سواءِ ڪوبه معبود ناهي.';

  @override
  String get zikrMeaningAstaghfirullah => 'مان الله کان معافي گهران ٿو.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'الله تعالى کان سواءِ ڪابه طاقت ۽ طاقت نه آهي.';

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
  String get offlineDownloadManager => 'آف لائن ڊائون لوڊ مئنيجر';

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
  String get audioVoice => 'آڊيو آواز';

  @override
  String get audioVoiceMisharyAlafasy => 'مرد (مشري الافسي)';

  @override
  String get audioVoiceAbdulBaset => 'مرد (عبدالباسط)';

  @override
  String get audioVoiceSudais => 'مرد (سوديس)';

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
      'سپابيس ۾ Cloud ٽيبل غائب؛ بنڈل fallback فعال';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz ميٽاداٽا غائب؛ بنڈل structural fallback فعال';

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
  String get premiumProductUnavailable =>
      'پريميئم پراڊڪٽ في الحال دستياب ناهي. مهرباني ڪري ڪجھہ دير رکي ٻيهر ڪوشش ڪندا.';

  @override
  String get premiumPurchaseFailed =>
      'خريداري مڪمل نه ٿي سگهي. مهرباني ڪري ٻيهر ڪوشش ڪريو.';

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
  String get downloadAction => 'ڊائون لوڊ ڪريو';

  @override
  String get resumeDownload => 'ٻيهر شروع ڪريو ڊائون لوڊ';

  @override
  String get deleteDownloadedFiles => 'ڊائون لوڊ ڪيل فائلن کي ختم ڪريو';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'ڊائون لوڊ منسوخ ڪيو ويو $reciter لاءِ.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'ڊائون لوڊ مڪمل ٿيو $reciter لاءِ.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'ڊائون لوڊ مڪمل ٿي ويو $reciter لاءِ $failed ناڪام سورتن سان ($downloaded/$total ڊائون لوڊ ٿيل).';
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
  String get chatbotUseCloudAi => 'استعمال ڪريو Cloud AI (Gemini)';

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
  String get placesLocationRequiredTitle => 'جڳھ گھربل';

  @override
  String get placesLocationRequiredBody =>
      'پهرين جڳھ مقرر ڪريو ته جيئن ويجھي مسجدون، حلال کاڌو، ۽ اسلامي اسڪول صحيح طريقي سان ڳولي سگھجن.';

  @override
  String get placesMapTilesUnavailableTitle => 'نقشي جي ٽائلس دستياب ناهي';

  @override
  String get placesMapTilesUnavailableBody =>
      'هڪ تصديق ٿيل نقشي جي ٽائل جو ماخذ اڃا تائين هن تعمير لاءِ ترتيب نه ڏنو ويو آهي. ويجھي جڳھون اڃا تائين توھان جي محفوظ ڪيل جڳھ تان لوڊ ڪري سگھن ٿيون.';

  @override
  String get unknownPlaceName => 'اڻڄاتل نالو';

  @override
  String get islamicPlaceFallback => 'اسلامي جڳھ';

  @override
  String get asmaMeaning1 => 'رحم ڪندڙ';

  @override
  String get asmaMeaning2 => 'رحم ڪندڙ';

  @override
  String get asmaMeaning3 => 'بادشاهه / ابدي رب';

  @override
  String get asmaMeaning4 => 'پاڪ ترين';

  @override
  String get asmaMeaning5 => 'امن جو ذريعو';

  @override
  String get asmaMeaning6 => 'حفاظت ڏيڻ وارو';

  @override
  String get asmaMeaning7 => 'دي گارجين';

  @override
  String get asmaMeaning8 => 'قيمتي / سڀ کان وڌيڪ طاقتور';

  @override
  String get asmaMeaning9 => 'مجبور ڪندڙ';

  @override
  String get asmaMeaning10 => 'عظيم ترين';

  @override
  String get asmaMeaning11 => 'خالق';

  @override
  String get asmaMeaning12 => 'The Maker of Order';

  @override
  String get asmaMeaning13 => 'The Shaper of Beauty';

  @override
  String get asmaMeaning14 => 'بخشڻ وارو';

  @override
  String get asmaMeaning15 => 'The Subduer';

  @override
  String get asmaMeaning16 => 'سڀني جو ڏيڻ وارو';

  @override
  String get asmaMeaning17 => 'سنڀاليندڙ';

  @override
  String get asmaMeaning18 => 'اوپنر';

  @override
  String get asmaMeaning19 => 'سڀني کي ڄاڻندڙ';

  @override
  String get asmaMeaning20 => 'The Constrictor';

  @override
  String get asmaMeaning21 => 'ريليور';

  @override
  String get asmaMeaning22 => 'The Abser';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'عزّت ڏيڻ وارو';

  @override
  String get asmaMeaning25 => 'ذلت ڪندڙ';

  @override
  String get asmaMeaning26 => 'سڀني جو ٻڌندڙ';

  @override
  String get asmaMeaning27 => 'سڀني جو ڏسندڙ';

  @override
  String get asmaMeaning28 => 'جج';

  @override
  String get asmaMeaning29 => 'The Just';

  @override
  String get asmaMeaning30 => 'The subtle One';

  @override
  String get asmaMeaning31 => 'سڀ خبر';

  @override
  String get asmaMeaning32 => 'The prebearing';

  @override
  String get asmaMeaning33 => 'The Magnificent';

  @override
  String get asmaMeaning34 => 'عظيم بخشيندڙ';

  @override
  String get asmaMeaning35 => 'شڪر جو اجر ڏيندڙ';

  @override
  String get asmaMeaning36 => 'عالي';

  @override
  String get asmaMeaning37 => 'عظيم ترين';

  @override
  String get asmaMeaning38 => 'محفوظ ڪندڙ';

  @override
  String get asmaMeaning39 => 'The Nourisher';

  @override
  String get asmaMeaning40 => 'The Reckoner';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'سخي';

  @override
  String get asmaMeaning43 => 'The watchful One';

  @override
  String get asmaMeaning44 => 'نماز جو جواب ڏيڻ وارو';

  @override
  String get asmaMeaning45 => 'سڀ سمجھڻ وارو';

  @override
  String get asmaMeaning46 => 'بلڪل حڪمت وارو';

  @override
  String get asmaMeaning47 => 'محبت ڪندڙ';

  @override
  String get asmaMeaning48 => 'سڀ کان وڌيڪ شان وارو';

  @override
  String get asmaMeaning49 => 'جيئرو ڪندڙ';

  @override
  String get asmaMeaning50 => 'شاھد';

  @override
  String get asmaMeaning51 => 'حقيقت';

  @override
  String get asmaMeaning52 => 'تمام ڪافي معتبر';

  @override
  String get asmaMeaning53 => 'سڀ طاقت جو مالڪ';

  @override
  String get asmaMeaning54 => 'The Forceful';

  @override
  String get asmaMeaning55 => 'محافظ';

  @override
  String get asmaMeaning56 => 'جي ساراهه ڪئي وئي';

  @override
  String get asmaMeaning57 => 'The appraiser';

  @override
  String get asmaMeaning58 => 'بنائيندڙ';

  @override
  String get asmaMeaning59 => 'بحال ڪندڙ';

  @override
  String get asmaMeaning60 => 'زندگي ڏيندڙ';

  @override
  String get asmaMeaning61 => 'زندگي وٺندڙ';

  @override
  String get asmaMeaning62 => 'The Ever Live';

  @override
  String get asmaMeaning63 => 'خود سنڀاليندڙ';

  @override
  String get asmaMeaning64 => 'ڳوليندڙ';

  @override
  String get asmaMeaning65 => 'The Glorious';

  @override
  String get asmaMeaning66 => 'The only one';

  @override
  String get asmaMeaning67 => 'The One';

  @override
  String get asmaMeaning68 => 'جيڪو سڀني جي ڳولا ۾ آهي';

  @override
  String get asmaMeaning69 => 'طاقتور';

  @override
  String get asmaMeaning70 => 'سڀ طاقت جو خالق';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'دير ڪندڙ';

  @override
  String get asmaMeaning73 => 'پهريون';

  @override
  String get asmaMeaning74 => 'آخري';

  @override
  String get asmaMeaning75 => 'The Manifest';

  @override
  String get asmaMeaning76 => 'The لڪايل';

  @override
  String get asmaMeaning77 => 'گورنر';

  @override
  String get asmaMeaning78 => 'Supreme One';

  @override
  String get asmaMeaning79 => 'نيڪي ڪرڻ وارو';

  @override
  String get asmaMeaning80 => 'توبه جي ھدايت';

  @override
  String get asmaMeaning81 => 'The Avenger';

  @override
  String get asmaMeaning82 => 'بخشيندڙ';

  @override
  String get asmaMeaning83 => 'The Clement';

  @override
  String get asmaMeaning84 => 'سڀني جو مالڪ / حاڪم';

  @override
  String get asmaMeaning85 => 'مال ۽ فضل جو مالڪ';

  @override
  String get asmaMeaning86 => 'The Equitable One';

  @override
  String get asmaMeaning87 => 'گڏيندڙ';

  @override
  String get asmaMeaning88 => 'The Rich One';

  @override
  String get asmaMeaning89 => 'The enricher';

  @override
  String get asmaMeaning90 => 'نقصان کي روڪڻ وارو';

  @override
  String get asmaMeaning91 => 'The Bringer of Harm';

  @override
  String get asmaMeaning92 => 'فائدي ڏيڻ وارو';

  @override
  String get asmaMeaning93 => 'The روشني';

  @override
  String get asmaMeaning94 => 'هدايت ڪندڙ';

  @override
  String get asmaMeaning95 => 'بنائيندڙ';

  @override
  String get asmaMeaning96 => 'هميشه وارو';

  @override
  String get asmaMeaning97 => 'وارث';

  @override
  String get asmaMeaning98 => 'سڀ کان وڌيڪ صحيح ھدايت ڪندڙ';

  @override
  String get asmaMeaning99 => 'مريض ھڪڙو';
}
