// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uighur Uyghur (`ug`).
class AppLocalizationsUg extends AppLocalizations {
  AppLocalizationsUg([String locale = 'ug']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'ئىسلام نۇر يولى';

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
  String get sunrise => 'Sunrise';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'ئەسر';

  @override
  String get maghrib => 'Maghrib';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '$prayerName دۇئا قىلىدىغان ۋاقىت كەلدى.';
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
  String get locationServiceDisabled => 'ئورۇن مۇلازىمىتى چەكلەنگەن.';

  @override
  String get locationPermissionDenied => 'ئورۇن ئىجازىتى رەت قىلىندى.';

  @override
  String citiesCount(String count) {
    return '$count شەھەرلەر';
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
  String get appErrorOccurred => 'خاتالىق كۆرۈلدى';

  @override
  String get appUnknownError => 'نامەلۇم خاتالىق';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'يېڭىلاش';

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
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
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
  String get tafsirLoading => 'Tafsir نى يۈكلەۋاتىدۇ ...';

  @override
  String get tafsirSourceLabel => 'تەفسىر مەنبەسى';

  @override
  String get tafsirNoSurahFound => 'بۇ سۈرە ئۈچۈن ھېچقانداق تەپسىر تېپىلمىدى.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Ayah $ayah ئۈچۈن تافسىر تېپىلمىدى.';
  }

  @override
  String get tafsirLoadFailed => 'تەفسىرنى يۈكلىگىلى بولمىدى.';

  @override
  String get tafsirNoTextForAyah => 'بۇ ئايەت ئۈچۈن تەفسىر تېكىستى يوق.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Downloading tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Loading tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir مەنبەسى HTTP $statusCode خاتالىقىنى قايتۇردى.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'تاللانغان تەفسىر مەنبەسى ھېچقانداق جاۋاب قايتۇرمىدى.';

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
      'باشقىلار: «پەرۋەردىگارىمىز ، بىزگە بۇ دۇنيا ۋە ئاخىرەتتە ياخشىلىق ئاتا قىلغىن ، بىزنى دوزاخ ئازابىدىن ساقلىغىن» دەپ دۇئا قىلىدۇ.';

  @override
  String get duaMeaning2 =>
      'تەڭرى ھەر قانداق بىر جاننى كۆتۈرەلەيدىغان نەرسىدىن ئارتۇق يۈكلىمەيدۇ: ھەر بىرى قىلغان ياخشىلىقىغا ئېرىشىدۇ ۋە ئۇنىڭ ناچار ئازابىنى تارتىدۇ- «ئى رەببىم ، ئۇنتۇپ قالساق ياكى خاتالىق سادىر قىلساق ، بىزنى ۋەزىپىگە قويماڭ. ئى رەببىم ، بىزدىن ئىلگىرىكىلەرنى يۈكلىگەندەك بىزگە يۈك قىلما. ئى رەببىم ، بىز كۆتۈرەلەيدىغان كۈچىمىزدىن ئېشىپ كەتمەڭ. بىزنى مەغپىرەت قىلغىن ، بىزنى مەغپىرەت قىلغىن ، بىزگە رەھىم قىلغىن. سەن بىزنىڭ قوغدىغۇچىمىز ، شۇڭا بىزگە كاپىرلارغا قارشى ياردەم قىلغىن ».';

  @override
  String get duaMeaning3 =>
      '«پەرۋەردىگارىمىز ، بىزنى ھىدايەت قىلغاندىن كېيىن ، يۈرىكىمىزنى چەتكە قاقمىغىن. بىزگە رەھىم قىلغايسەن: سەن مەڭگۈ بەرگۈچى.';

  @override
  String get duaMeaning4 =>
      'ئى رەببىم ، مەن ۋە ئەۋلادلىرىم دۇئا-تىلاۋەت قىلسۇن. پەرۋەردىگارىم ، تەلىپىمنى قوبۇل قىلغىن.';

  @override
  String get duaMeaning5 =>
      'ئۇلارغا ياخشىلىق بىلەن كەمتەرلىك بىلەن قانىتىڭىزنى تۆۋەنلىتىڭ ۋە: «ئى رەببىم ، ئۇلارغا كىچىك ۋاقتىمدا ماڭا كۆڭۈل بۆلگەندەك ، ئۇلارغا رەھىم قىلغىن» دېگىن.';

  @override
  String get duaMeaning6 =>
      'ھەقىقىي كونترول قىلغۇچى بولغان خۇدا ئۇلۇغ بولسۇن. [پەيغەمبەر] ، ۋەھىي تولۇق تاماملىنىشتىن بۇرۇن دېكلاماتسىيە قىلىشقا ئالدىرىماڭ ، ئەمما: «ئى رەببىم ، مېنى بىلىمدە ئاشۇرغىن!» دېگىن.';

  @override
  String get duaMeaning7 =>
      '[پەيغەمبەر] ئېيتقىنكى ، «ئى رەببىم ، مەغپىرەت قىلغىن ۋە رەھىم قىلغىن ، سەن ھەممىدىن شەپقەتلىكسەن».';

  @override
  String get duaMeaning8 =>
      '«رەببىمىز ، جۈپتىمىز ۋە ئەۋلادلىرىمىزغا خۇشاللىق ئاتا قىلغىن. سىزنى تونۇغانلارغا بىزگە ياخشى ئۈلگە بولۇڭ ».';

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
  String get hadith => 'ھەدىس';

  @override
  String get hadithCollection => 'ھەدىس توپلىمى';

  @override
  String get hadithBooks => 'ھەدىس كىتابلىرى';

  @override
  String get searchHadith => 'ھەدىسنى ئىزدەڭ';

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
  String get openInYoutube => 'YouTube دا ئېچىڭ';

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
  String get prayerRemainingUnavailable => '-';

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
  String get islamicNewYear => 'ئىسلام يېڭى يىلى';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 رامىزان';

  @override
  String get specialDayDateLaylatAlQadr => '27 رامىزان';

  @override
  String get specialDayDateEidAlFitr => '1 Shawwal';

  @override
  String get specialDayDateEidAlAdha => '10 Dhul Hijjah';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharram';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabi al-Awwal';

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
    return 'كومپاس خاتالىقى: $error';
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
    return '$appName نى تەكشۈرۈپ بېقىڭ: ئەڭ ئاخىرقى ئىسلام تۇرمۇش ئۇسۇلى! $url';
  }

  @override
  String get downloadManager => 'چۈشۈرۈش باشقۇرغۇچى';

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
  String get zikrCompletedMashAllah => 'تامام! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'ئاللاھ ھەر بىر مۇكەممەللىكتىن ئۈستۈن تۇرىدۇ.';

  @override
  String get zikrMeaningAlhamdulillah => 'بارلىق مەدھىيە ئاللاھقا مەنسۇپ.';

  @override
  String get zikrMeaningAllahuAkbar => 'ئاللاھ ئەڭ ئۇلۇغدۇر.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'ئاللاھتىن باشقا ئىلاھ يوق.';

  @override
  String get zikrMeaningAstaghfirullah => 'ئاللاھنىڭ مەغپىرىتىنى تىلەيمەن.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata => 'ئاللاھتىن باشقا كۈچ ۋە كۈچ يوق.';

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
  String get offlineDownloadManager => 'تورسىز چۈشۈرۈش باشقۇرغۇچى';

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
  String get diagnosticsNotSet => 'تەڭشەلمىدى';

  @override
  String get diagnosticsPrayerProfile => 'دۇئا ئارخىپى';

  @override
  String get diagnosticsPrayerSource => 'دۇئا ئورگىنى';

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
      'Supabase دا يوقاپ كەتكەن بۇلۇت جەدۋىلى باغلانغان باغلاش ئاكتىپ';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz metadata يوقاپ كەتتى; باغلانغان قۇرۇلما ئارقىغا چېكىنىش ئاكتىپ';

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
  String get dailyVerse => 'كۈندىلىك ئايەت';

  @override
  String get todaysIbadah => 'بۈگۈنكى ئىبادا';

  @override
  String get quickAccess => 'تېز زىيارەت';

  @override
  String get assistant => 'ياردەمچى';

  @override
  String get places => 'جايلار';

  @override
  String get library => 'كۈتۈپخانا';

  @override
  String get analytics => 'Analytics';

  @override
  String get dailyDuas => 'Daily Duas';

  @override
  String essentialDuas(String count) {
    return '$count مۇھىم دۇئاسى';
  }

  @override
  String get duaUnavailableTitle =>
      'دەلىللەنگەن دۇئانى تېخى ئىشلەتكىلى بولمايدۇ';

  @override
  String get duaUnavailableBody =>
      'تەكشۈرۈلگەن كۈندىلىك دۇئاسى تېخى بۇ ئۈسكۈنىگە ماسقەدەملەنمىدى. بۇلۇت مەنبەسىگە ئۇلىنىپ ، دەلىللەنمىگەن خاتالىقنىڭ ئورنىغا مەنبەلىك دۇئانى يۈكلەڭ.';

  @override
  String get duaCategoryQuranic => 'قۇرئان دۇئاسى';

  @override
  String get duaCategoryMorningEvening => 'ئەتىگەن ۋە كەچ';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'قوغداش';

  @override
  String get duaCategoryBeginning => 'باشلىنىش';

  @override
  String get duaCategorySleep => 'ئۇخلاش';

  @override
  String get duaCategoryFoodDrink => 'يېمەكلىك ۋە ئىچىملىك';

  @override
  String get duaCategoryForgiveness => 'كەچۈرۈم قىلىش';

  @override
  String get duaCategoryHome => 'ئۆي';

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
  String get islamicEducation => 'ئىسلام مائارىپى';

  @override
  String get sukunAudioTitle => 'Sukun Soundscape';

  @override
  String get hadithCollections => 'ھەدىس توپلىمى';

  @override
  String get hadithSourcePending => 'دەلىللەنگەن مەنبە ساقلىنىۋاتىدۇ';

  @override
  String get hadithUnavailableTitle =>
      'دەلىللەنگەن ھەدىس توپلىمى تېخىچە تېپىلمىدى';

  @override
  String get hadithUnavailableBody =>
      'بۇ قۇرۇلۇش يەنىلا دەلىللەنمىگەن تاشقى ھەدىس يەملىرىگە باغلىق. مەنبەلىك سانلىق مەلۇمات ماسقەدەملەنگۈچە ھەدىس كۆرۈش چەكلىنىدۇ.';

  @override
  String get paywallUnlockAll =>
      'مەنىۋى سەپىرىڭىزنىڭ بارلىق ئىقتىدارلىرىنى ئېچىڭ';

  @override
  String get premiumProductUnavailable =>
      'ئەلا مەھسۇلات ھازىر يوق. كېيىن قايتا سىناڭ.';

  @override
  String get premiumPurchaseFailed => 'سېتىۋېلىش تاماملانمىدى. قايتا سىناڭ.';

  @override
  String get paywallFeature1Title => 'نېرۋا ياردەمچىسى';

  @override
  String get paywallFeature1Desc =>
      'چەكلىمىسىز سۈنئىي ئەقىل ئارقىلىق سوئال-جاۋاب';

  @override
  String get paywallFeature2Title => 'چەكسىز تور';

  @override
  String get paywallFeature2Desc => 'بارلىق قىرائەتلەرنى چۈشۈرۈڭ';

  @override
  String get paywallFeature3Title => 'ئالاھىدە لايىھە';

  @override
  String get paywallFeature3Desc => 'ئەلا ئۇسلۇب ۋە خەت نۇسخىسى';

  @override
  String get paywallFeature4Title => 'ئېلانسىز';

  @override
  String get paywallFeature4Desc => 'نۆل ئېلان';

  @override
  String get paywallGetAccess => 'ئۆمۈرلۈك زىيارەتكە ئېرىشىش - 1.00 دوللار';

  @override
  String get restorePurchases => 'سېتىۋېلىشنى ئەسلىگە كەلتۈرۈش';

  @override
  String get zakatCalculator => 'زاكات ھېسابلىغۇچ';

  @override
  String get zakatGold => 'ئالتۇن (Altyn)';

  @override
  String get zakatSilver => 'كۈمۈش (Gümüş)';

  @override
  String get zakatCashBank => 'نەق پۇل / بانكا';

  @override
  String get zakatBusiness => 'سودا';

  @override
  String get zakatInvestments => 'مەبلەغ سېلىش';

  @override
  String get zakatWeightGrams => 'ئېغىرلىقى (g)';

  @override
  String get zakatPricePerGram => 'باھاسى / g';

  @override
  String get zakatTotalAmount => 'ئومۇمىي سومما';

  @override
  String get zakatInventoryValue => 'كەشپىيات قىممىتى';

  @override
  String get zakatDebts => 'قەرز';

  @override
  String get zakatTotal => 'ئومۇمىي';

  @override
  String get calculateZakat => 'Calculate Zakat';

  @override
  String get nisabNotReached => 'نىساب يەتمىدى. زاكات ۋاجىپ ئەمەس.';

  @override
  String get totalZakat => 'ئومۇمىي زاكات';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'نىساب: $nisab • مۈلۈك: $assets';
  }

  @override
  String get zakatGoldZakat => 'Gold Zakat';

  @override
  String get zakatSilverZakat => 'كۈمۈش زاكات';

  @override
  String get zakatCashZakat => 'نەق پۇل زاكات';

  @override
  String get zakatBusinessZakat => 'Business Zakat';

  @override
  String get zakatInvestmentZakat => 'مەبلەغ سېلىش زاكات';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'كۈندىلىك سوئال چېكىگە يەتتى. چەكلىمىسىز Premium غا يېڭىلاش.';

  @override
  String get chatbotErrorMsg => 'مەن جاۋاب بېرەلمىدىم. قايتا سىناڭ.';

  @override
  String get chatbotOfflinePrompt =>
      'دەلىللەنگەن تورسىز ئىسلام بىلىملىرى بازىسى ھازىرمۇ تۈزۈلىۋاتىدۇ. سىز ھازىر تورسىز چېكىنىشنى قوزغىتالايسىز ، ئەمما ئۇ سانلىق مەلۇمات سانلىق مەلۇماتلىرى تەييار بولغۇچە پەقەت چەكلىك بىخەتەر ئۇچۇرلارنى كۆرسىتىدۇ.\n\nتورسىز چېكىنىشنى قوزغىتىشنى خالامسىز؟';

  @override
  String get chatbotOfflineSwitched =>
      'تورسىز چېكىنىش قوزغىتىلدى. تەكشۈرۈلگەن يەرلىك ئىسلام جاۋابلىرى تېخى تەييار ئەمەس.';

  @override
  String get chatbotOfflineDownloadLabel => 'تورسىز چۈشۈشنى قوزغىتىڭ';

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
  String get downloadAction => 'چۈشۈرۈش';

  @override
  String get resumeDownload => 'چۈشۈرۈشنى ئەسلىگە كەلتۈرۈش';

  @override
  String get deleteDownloadedFiles => 'چۈشۈرۈلگەن ھۆججەتلەرنى ئۆچۈرۈڭ';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'چۈشۈرۈش $reciter ئۈچۈن ئەمەلدىن قالدۇرۇلدى.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'چۈشۈرۈش $reciter ئۈچۈن تاماملاندى.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Download finished for $reciter with $failed failed surahs ($downloaded/$total downloaded).';
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
  String get sukunMixerSubtitle => 'تەبىئەت ۋە قۇرئان ئارىلاشتۇرغۇچى';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'سۇكۇن (تەبىئەت)';

  @override
  String get sukunRainOfMercy => 'رەھىم يامغۇر';

  @override
  String get sukunGardenOfPeace => 'تىنچلىق باغچىسى';

  @override
  String get sukunMidnightCalm => 'Midnight Calm';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'ئاۋازلىق كۆرۈنۈشنى ئىشلەتكىلى بولمايدۇ';

  @override
  String get sukunUnavailableBody =>
      'بۇ قۇرۇلۇش تېخى تەلەپ قىلىنغان سۇكۇن ئاۋازلىق كۆرۈنۈش مۈلۈكلىرىنى ئۆز ئىچىگە ئالمايدۇ.';

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
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'تورسىز چۈشۈشنى قوزغىتىڭ';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count قالدى';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API سەپلەنمىگەن. يەرلىك سۈنئىي ئەقىلگە ئالماشتۇرۇڭ.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] تەكشۈرۈلگەن يەرلىك ئىسلام يېتەكچىلىكى تېخىچە يوق. مەنبەلىك جاۋاب ئۈچۈن Cloud AI غا ئالماشتۇرۇڭ.';

  @override
  String get mosques => 'مەسچىتلەر';

  @override
  String get halalFood => 'ھالال يېمەكلىك';

  @override
  String get placesSearchArea => 'بۇ يەرنى ئىزدەڭ';

  @override
  String get nearbyMosques => 'مەسچىتلەرگە يېقىن';

  @override
  String get islamicSchools => 'ئىسلام مەكتەپلىرى';

  @override
  String placesFoundCount(String count) {
    return '$count تېپىلدى';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API خاتالىقى: $statusCode';
  }

  @override
  String get placesNetworkError => 'تور خاتالىقى. قايتا سىناڭ.';

  @override
  String get placesLocationRequiredTitle => 'ئورنى تەلەپ قىلىنىدۇ';

  @override
  String get placesLocationRequiredBody =>
      'ئالدى بىلەن ئورۇن بەلگىلەڭ ، شۇڭا يېقىن ئەتراپتىكى مەسچىتلەر ، ھالال يېمەكلىكلەر ۋە ئىسلام مەكتەپلىرىنى توغرا ئىزدىگىلى بولىدۇ.';

  @override
  String get placesMapTilesUnavailableTitle =>
      'خەرىتە كاھىشلىرىنى ئىشلەتكىلى بولمايدۇ';

  @override
  String get placesMapTilesUnavailableBody =>
      'بۇ قۇرۇلۇش ئۈچۈن دەلىللەنگەن خەرىتە كاھىش مەنبەسى تېخى سەپلەنمىگەن. يېقىن جايلار يەنىلا ساقلانغان ئورنىڭىزدىن يۈكلىيەلەيدۇ.';

  @override
  String get unknownPlaceName => 'نامەلۇم ئىسىم';

  @override
  String get islamicPlaceFallback => 'ئىسلام ئورنى';

  @override
  String get asmaMeaning1 => 'مەنپەئەتدار';

  @override
  String get asmaMeaning2 => 'رەھىمدىل';

  @override
  String get asmaMeaning3 => 'پادىشاھ / مەڭگۈلۈك رەببى';

  @override
  String get asmaMeaning4 => 'ئەڭ مۇقەددەس';

  @override
  String get asmaMeaning5 => 'تىنچلىقنىڭ مەنبەسى';

  @override
  String get asmaMeaning6 => 'بىخەتەرلىك بەرگۈچى';

  @override
  String get asmaMeaning7 => 'قوغدىغۇچى';

  @override
  String get asmaMeaning8 => 'ئەڭ قىممەتلىك / ئەڭ كۈچلۈك';

  @override
  String get asmaMeaning9 => 'ساتقۇچى';

  @override
  String get asmaMeaning10 => 'ئەڭ ئۇلۇغ';

  @override
  String get asmaMeaning11 => 'ياراتقۇچى';

  @override
  String get asmaMeaning12 => 'زاكاز قىلغۇچى';

  @override
  String get asmaMeaning13 => 'گۈزەللىكنىڭ شەكلى';

  @override
  String get asmaMeaning14 => 'كەچۈرۈم قىلىش';

  @override
  String get asmaMeaning15 => 'بويسۇندۇرغۇچى';

  @override
  String get asmaMeaning16 => 'ھەممىنى بەرگۈچى';

  @override
  String get asmaMeaning17 => 'ساقلىغۇچى';

  @override
  String get asmaMeaning18 => 'ئاچقۇچى';

  @override
  String get asmaMeaning19 => 'ھەممىنى بىلگۈچى';

  @override
  String get asmaMeaning20 => 'چەكلىگۈچى';

  @override
  String get asmaMeaning21 => 'ياردەمچى';

  @override
  String get asmaMeaning22 => 'Abaser';

  @override
  String get asmaMeaning23 => 'Exalter';

  @override
  String get asmaMeaning24 => 'شەرەپ ئىگىسى';

  @override
  String get asmaMeaning25 => 'ھاقارەتلىگۈچى';

  @override
  String get asmaMeaning26 => 'ھەممىنى ئاڭلىغۇچى';

  @override
  String get asmaMeaning27 => 'ھەممىنى كۆرگۈچى';

  @override
  String get asmaMeaning28 => 'سوتچى';

  @override
  String get asmaMeaning29 => 'ئادىل';

  @override
  String get asmaMeaning30 => 'ئىنچىكە';

  @override
  String get asmaMeaning31 => 'ھەممە خەۋەردار';

  @override
  String get asmaMeaning32 => 'ئالدىنئالا';

  @override
  String get asmaMeaning33 => 'ھەيۋەتلىك';

  @override
  String get asmaMeaning34 => 'ئۇلۇغ كەچۈرۈم قىلغۇچى';

  @override
  String get asmaMeaning35 => 'مىننەتدارلىق مۇكاپاتى';

  @override
  String get asmaMeaning36 => 'ئەڭ يۇقىرى';

  @override
  String get asmaMeaning37 => 'ئەڭ ئۇلۇغ';

  @override
  String get asmaMeaning38 => 'ساقلىغۇچى';

  @override
  String get asmaMeaning39 => 'ئوزۇقلاندۇرغۇچى';

  @override
  String get asmaMeaning40 => 'ھېساباتچى';

  @override
  String get asmaMeaning41 => 'مەلىكە';

  @override
  String get asmaMeaning42 => 'كەڭ قورساق';

  @override
  String get asmaMeaning43 => 'كۆزەتكۈچى';

  @override
  String get asmaMeaning44 => 'دۇئاغا جاۋاب بەرگۈچى';

  @override
  String get asmaMeaning45 => 'ھەممىنى چۈشىنىش';

  @override
  String get asmaMeaning46 => 'مۇكەممەل ئەقىللىق';

  @override
  String get asmaMeaning47 => 'سۆيۈملۈك';

  @override
  String get asmaMeaning48 => 'ئەڭ شەرەپلىك';

  @override
  String get asmaMeaning49 => 'تىرىلدۈرگۈچى';

  @override
  String get asmaMeaning50 => 'گۇۋاھچى';

  @override
  String get asmaMeaning51 => 'ھەقىقەت';

  @override
  String get asmaMeaning52 => 'بارلىق ئىشەنچلىك ۋاكالەتچى';

  @override
  String get asmaMeaning53 => 'بارلىق كۈچنىڭ ئىگىسى';

  @override
  String get asmaMeaning54 => 'كۈچلۈك';

  @override
  String get asmaMeaning55 => 'قوغدىغۇچى';

  @override
  String get asmaMeaning56 => 'مەدھىيە';

  @override
  String get asmaMeaning57 => 'باھالىغۇچى';

  @override
  String get asmaMeaning58 => 'ئىجاد قىلغۇچى';

  @override
  String get asmaMeaning59 => 'ئەسلىگە كەلتۈرگۈچى';

  @override
  String get asmaMeaning60 => 'ھاياتلىق بەرگۈچى';

  @override
  String get asmaMeaning61 => 'ھاياتلىق ئىگىسى';

  @override
  String get asmaMeaning62 => 'مەڭگۈ ياشايدۇ';

  @override
  String get asmaMeaning63 => 'ئۆز-ئۆزىگە تايىنىدىغان ياردەمچى';

  @override
  String get asmaMeaning64 => 'تاپقۇچى';

  @override
  String get asmaMeaning65 => 'شەرەپلىك';

  @override
  String get asmaMeaning66 => 'بىردىنبىر';

  @override
  String get asmaMeaning67 => 'بىر';

  @override
  String get asmaMeaning68 => 'ھەممەيلەن تەلەپ قىلغان';

  @override
  String get asmaMeaning69 => 'كۈچلۈك';

  @override
  String get asmaMeaning70 => 'بارلىق كۈچنىڭ ياراتقۇچىسى';

  @override
  String get asmaMeaning71 => 'تېزلەتكۈچى';

  @override
  String get asmaMeaning72 => 'كېچىكىش';

  @override
  String get asmaMeaning73 => 'بىرىنچى';

  @override
  String get asmaMeaning74 => 'ئەڭ ئاخىرقى';

  @override
  String get asmaMeaning75 => 'كۆرۈنۈش';

  @override
  String get asmaMeaning76 => 'يوشۇرۇن';

  @override
  String get asmaMeaning77 => 'ۋالىي';

  @override
  String get asmaMeaning78 => 'ئەڭ ئالىي';

  @override
  String get asmaMeaning79 => 'ياخشىلىق قىلغۇچى';

  @override
  String get asmaMeaning80 => 'تەۋبە يېتەكچىسى';

  @override
  String get asmaMeaning81 => 'قىساسكار';

  @override
  String get asmaMeaning82 => 'كەچۈرۈم قىلغۇچى';

  @override
  String get asmaMeaning83 => 'كلېمېنت';

  @override
  String get asmaMeaning84 => 'ھەممەيلەننىڭ ئىگىسى / ھۆكۈمرانى';

  @override
  String get asmaMeaning85 => 'ئۇلۇغلۇق ۋە مۇكاپاتنىڭ ئىگىسى';

  @override
  String get asmaMeaning86 => 'باراۋەر';

  @override
  String get asmaMeaning87 => 'توپلىغۇچى';

  @override
  String get asmaMeaning88 => 'باي';

  @override
  String get asmaMeaning89 => 'بېيىش';

  @override
  String get asmaMeaning90 => 'زىياننىڭ ئالدىنى ئالغۇچى';

  @override
  String get asmaMeaning91 => 'زىيان تارتقۇچى';

  @override
  String get asmaMeaning92 => 'مەنپەئەت بەرگۈچى';

  @override
  String get asmaMeaning93 => 'نۇر';

  @override
  String get asmaMeaning94 => 'يېتەكچى';

  @override
  String get asmaMeaning95 => 'ئىجاد قىلغۇچى';

  @override
  String get asmaMeaning96 => 'مەڭگۈلۈك';

  @override
  String get asmaMeaning97 => 'ۋارىس';

  @override
  String get asmaMeaning98 => 'ئەڭ ھەققانىي يېتەكچى';

  @override
  String get asmaMeaning99 => 'بىمار';
}
