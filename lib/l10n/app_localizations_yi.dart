// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Yiddish (`yi`).
class AppLocalizationsYi extends AppLocalizations {
  AppLocalizationsYi([String locale = 'yi']) : super(locale);

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
  String get sunrise => 'זונופגאַנג';

  @override
  String get dhuhr => 'דהוהר';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'מאַהריב';

  @override
  String get isha => 'ישא';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'צייט פֿאַר $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'עס איז צייט צו דאַוונען $prayerName.';
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
  String get locationServiceDisabled => 'אָרט דינסט איז פאַרקריפּלט.';

  @override
  String get locationPermissionDenied => 'אָרט דערלויבעניש געלייקנט.';

  @override
  String citiesCount(String count) {
    return '$count שטעט';
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
  String get hadith => 'חדיטה';

  @override
  String get hadithCollection => 'האַדיטה זאַמלונג';

  @override
  String get hadithBooks => 'האַדיטה ספר';

  @override
  String get searchHadith => 'זוכן האַדיטה';

  @override
  String get asmaulHusna => 'אַסמאַ-על-חוסנאַ';

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
  String get openInYoutube => 'עפֿענען אין יאָוטובע';

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
    return 'טשעק $appName: די לעצט יסלאַמיק לייפסטייל אַפּ! $url';
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
  String get diagnosticsNotSet => 'ניט באַשטימט';

  @override
  String get diagnosticsPrayerProfile => 'תפילה פּראָפיל';

  @override
  String get diagnosticsPrayerSource => 'תפילה אויטאָריטעט';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manual custom angles (no institutional source)';

  @override
  String get diagnosticsCloudDriven => 'וואָלקן געטריבן';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Quran Audio Assets';

  @override
  String get diagnosticsAudioAssets => 'אַודיאָ אַסעץ';

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
  String get dailyVerse => 'טעגלעך ווערס';

  @override
  String get todaysIbadah => 'היינטיגע איבאדא';

  @override
  String get quickAccess => 'שנעל אַקסעס';

  @override
  String get assistant => 'אַססיסטאַנט';

  @override
  String get places => 'ערטער';

  @override
  String get library => 'ביבליאָטעק';

  @override
  String get analytics => 'אַנאַליטיקס';

  @override
  String get dailyDuas => 'טעגלעך דואַס';

  @override
  String essentialDuas(String count) {
    return '$count יקערדיק דואַס';
  }

  @override
  String get duaUnavailableTitle => 'וועריפיעד דואַס זענען נישט בנימצא נאָך';

  @override
  String get duaUnavailableBody =>
      'וועריפיעד טעגלעך דואַס זענען נישט סינסעד צו דעם מיטל נאָך. קאָננעקט צו די וואָלקן מקור צו לאָדן סאָרסעד דואַס אַנשטאָט פון אַן אַנוועראַפייד פאַלבאַק.';

  @override
  String get duaCategoryQuranic => 'קווראַניק דואַ';

  @override
  String get duaCategoryMorningEvening => 'מאָרגן & אָוונט';

  @override
  String get duaCategoryTasbih => 'טאַסביה';

  @override
  String get duaCategoryProtection => 'שוץ';

  @override
  String get duaCategoryBeginning => 'אָנהייב';

  @override
  String get duaCategorySleep => 'שלאָף';

  @override
  String get duaCategoryFoodDrink => 'עסנוואַרג & טרינקען';

  @override
  String get duaCategoryForgiveness => 'מחילה';

  @override
  String get duaCategoryHome => 'היים';

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
  String get islamicEducation => 'יסלאַמיק בילדונג';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'האַדיטה זאַמלונגען';

  @override
  String get hadithSourcePending => 'וועראַפייד מקור פּענדינג';

  @override
  String get hadithUnavailableTitle =>
      'וועריפיעד האַדיטה זאַמלונגען זענען נישט בנימצא נאָך';

  @override
  String get hadithUnavailableBody =>
      'דעם בויען דעפּענדס נאָך אויף אַן אַנוועראַפייד פונדרויסנדיק האַדיטה פיטער. Hadith בראַוזינג סטייז פאַרקריפּלט ביז אַ סאָורסעד דאַטאַסעט איז סינסעד.';

  @override
  String get paywallUnlockAll =>
      'ופשליסן אַלע פֿעיִקייטן פֿאַר דיין רוחניות נסיעה';

  @override
  String get paywallFeature1Title => 'נעוראַל אַססיסטאַנט פּלוס';

  @override
  String get paywallFeature1Desc => 'אַנלימאַטאַד AI-Powered Q&A';

  @override
  String get paywallFeature2Title => 'אַנלימאַטאַד אָפפלינע';

  @override
  String get paywallFeature2Desc => 'אָפּלאָדירן אַלע רעסיטאַטיאָנס';

  @override
  String get paywallFeature3Title => 'ויסשליסיק דיזיינז';

  @override
  String get paywallFeature3Desc => 'פּרעמיום טעמעס און פאַנץ';

  @override
  String get paywallFeature4Title => 'אַד-פריי';

  @override
  String get paywallFeature4Desc => 'נול אַדווערטייזמאַנץ';

  @override
  String get paywallGetAccess => 'באַקומען לעבן אַקסעס - \$ 1.00';

  @override
  String get restorePurchases => 'ומקערן פּערטשאַסאַז';

  @override
  String get zakatCalculator => 'זאַקאַט קאַלקולאַטאָר';

  @override
  String get zakatGold => 'גאָלד (אַלטין)';

  @override
  String get zakatSilver => 'זילבער (Gümüş)';

  @override
  String get zakatCashBank => 'געלט / באַנק';

  @override
  String get zakatBusiness => 'ביזנעס';

  @override
  String get zakatInvestments => 'ינוועסטמאַנץ';

  @override
  String get zakatWeightGrams => 'וואָג (ג)';

  @override
  String get zakatPricePerGram => 'פּרייַז / ג';

  @override
  String get zakatTotalAmount => 'גאַנץ סומע';

  @override
  String get zakatInventoryValue => 'ינוואַנטאָרי ווערט';

  @override
  String get zakatDebts => 'דעץ';

  @override
  String get zakatTotal => 'גאַנץ';

  @override
  String get calculateZakat => 'Calculate Zakat';

  @override
  String get nisabNotReached => 'ניסאב נישט דערגרייכט. זַכָּאָה חוּלָקָא.';

  @override
  String get totalZakat => 'גאַנץ זאַקאַט';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'ניסאַב: $nisab • אַסעץ: $assets';
  }

  @override
  String get zakatGoldZakat => 'גאָלד זאַקאַט';

  @override
  String get zakatSilverZakat => 'זילבער זאקאט';

  @override
  String get zakatCashZakat => 'מזומן זאקאט';

  @override
  String get zakatBusinessZakat => 'ביזנעס זאקאט';

  @override
  String get zakatInvestmentZakat => 'ינוועסטמענט זאַקאַט';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'טעגלעך אָנפֿרעג לימיט ריטשט. אַפּגרייד צו פּרעמיום פֿאַר אַנלימאַטאַד.';

  @override
  String get chatbotErrorMsg =>
      'איך קען נישט געבן אַ ענטפער. ביטע פּרוּווט ווידער.';

  @override
  String get chatbotOfflinePrompt =>
      'די וועראַפייד אָפפלינע יסלאַמיק וויסן באַזע איז נאָך קערייטיד. איר קענט איצט געבן אָפפלינע פאַלבאַק, אָבער עס וועט בלויז ווייַזן לימיטעד זיכער אַרטיקלען ביז די סאָורסעד דאַטאַסעט איז גרייט.\n\nוואָלט איר ווי צו געבן אָפפלינע פאַלבאַק?';

  @override
  String get chatbotOfflineSwitched =>
      'אָפפלינע פאַלבאַק ענייבאַלד. וועראַפייד היגע יסלאַמיק ענטפֿערס זענען נישט גרייט נאָך.';

  @override
  String get chatbotOfflineDownloadLabel => 'געבן אָפפלינע פאַלבאַקק';

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
  String get chatbotCloudAiLabel => 'וואָלקן אַי';

  @override
  String get chatbotLocalAiLabel => 'אָפפלינע פאַלבאַקק';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'געבן אָפפלינע פאַלבאַקק';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count לינקס';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'וואָלקן אַפּי ניט קאַנפיגיערד. ביטע באַשטימען צו לאקאלע אַי.';

  @override
  String get chatbotLocalNoInfo =>
      '[אָפפלינע] וועראַפייד היגע יסלאַמיק גיידאַנס איז נישט בנימצא נאָך. באַשטימען צו קלאָוד אַי פֿאַר מקור ענטפֿערס.';

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
