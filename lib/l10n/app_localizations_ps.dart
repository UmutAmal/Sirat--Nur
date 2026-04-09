// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Pushto Pashto (`ps`).
class AppLocalizationsPs extends AppLocalizations {
  AppLocalizationsPs([String locale = 'ps']) : super(locale);

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
  String get sunrise => 'لمر ختو';

  @override
  String get dhuhr => 'ډوهر';

  @override
  String get asr => 'عصر';

  @override
  String get maghrib => 'ماښام';

  @override
  String get isha => 'ایشا';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'د $prayerName لپاره وخت';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'دا د لمانځه وخت دی $prayerName.';
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
  String get locationServiceDisabled => 'د ځای خدمت غیر فعال دی.';

  @override
  String get locationPermissionDenied => 'د ځای اجازه رد شوه.';

  @override
  String citiesCount(String count) {
    return '$count ښارونه';
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
  String get hadith => 'حدیث';

  @override
  String get hadithCollection => 'د حدیثو ټولګه';

  @override
  String get hadithBooks => 'د حدیثو کتابونه';

  @override
  String get searchHadith => 'د حدیث لټون';

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
  String get openInYoutube => 'په یوټیوب کې خلاص کړئ';

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
  String get diagnosticsNotSet => 'ټاکل شوی نه دی';

  @override
  String get diagnosticsPrayerProfile => 'د لمانځه پروفایل';

  @override
  String get diagnosticsPrayerSource => 'د لمانځه اداره';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'د لاسي دودیز زاویې (هیڅ اداري سرچینه نشته)';

  @override
  String get diagnosticsCloudDriven => 'بادل چلول';

  @override
  String get diagnosticsAdhanAudioAssets => 'د اذان آډیو شتمنۍ';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'د قرآن آډیو شتمنۍ';

  @override
  String get diagnosticsAudioAssets => 'آډیو شتمنۍ';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count دوتنې';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'ښکاره لوستل ناکام شول: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'سیمه ایز کول سیمه ایز کول';

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
  String get dailyVerse => 'ورځنی آیت';

  @override
  String get todaysIbadah => 'د نن ورځې عبادت';

  @override
  String get quickAccess => 'چټک لاسرسی';

  @override
  String get assistant => 'معاون';

  @override
  String get places => 'ځایونه';

  @override
  String get library => 'کتابتون';

  @override
  String get analytics => 'تجزیات';

  @override
  String get dailyDuas => 'ورځنۍ دعا';

  @override
  String essentialDuas(String count) {
    return '$count ضروري دعاګانې';
  }

  @override
  String get duaUnavailableTitle => 'تایید شوي دعاګانې لاهم شتون نلري';

  @override
  String get duaUnavailableBody =>
      'تایید شوي ورځني دعاګانې لا تر اوسه دې وسیله سره همغږي شوي ندي. د بادل سرچینې سره وصل شئ ترڅو د غیر تصدیق شوي فال بیک پرځای د سرچینې شوي دعا بار کړئ.';

  @override
  String get duaCategoryQuranic => 'قرآنی دعا';

  @override
  String get duaCategoryMorningEvening => 'سهار او ماښام';

  @override
  String get duaCategoryTasbih => 'تسبیح';

  @override
  String get duaCategoryProtection => 'ساتنه';

  @override
  String get duaCategoryBeginning => 'پیل';

  @override
  String get duaCategorySleep => 'خوب';

  @override
  String get duaCategoryFoodDrink => 'خواړه او څښاک';

  @override
  String get duaCategoryForgiveness => 'بخښنه';

  @override
  String get duaCategoryHome => 'کور';

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
  String get islamicEducation => 'اسلامي زده کړه';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'د حدیثو ټولګه';

  @override
  String get hadithSourcePending => 'تایید شوې سرچینه پاتې ده';

  @override
  String get hadithUnavailableTitle =>
      'د حدیثو تصدیق شوي ټولګه لا تر اوسه شتون نلري';

  @override
  String get hadithUnavailableBody =>
      'دا جوړښت لاهم په غیر تصدیق شوي بهرني حدیث فیډ پورې اړه لري. د حدیث لټون کول غیر فعال پاتې کیږي تر هغه چې سرچینه شوي ډیټاسیټ همغږي نشي.';

  @override
  String get paywallUnlockAll =>
      'ستاسو د روحاني سفر لپاره ټولې ځانګړتیاوې خلاص کړئ';

  @override
  String get paywallFeature1Title => 'د عصبي اسسټنټ پلس';

  @override
  String get paywallFeature1Desc => 'لامحدود AI ځواک لرونکي پوښتنې او ځوابونه';

  @override
  String get paywallFeature2Title => 'لامحدود آف لائن';

  @override
  String get paywallFeature2Desc => 'ټول تلاوتونه ډاونلوډ کړئ';

  @override
  String get paywallFeature3Title => 'ځانګړي ډیزاینونه';

  @override
  String get paywallFeature3Desc => 'پریمیم موضوعات او فونټونه';

  @override
  String get paywallFeature4Title => 'د اعلان څخه پاک';

  @override
  String get paywallFeature4Desc => 'صفر اعلانونه';

  @override
  String get paywallGetAccess => 'د ټول عمر لاسرسی ترلاسه کړئ - \$1.00';

  @override
  String get restorePurchases => 'پیرودونه بیرته راګرځول';

  @override
  String get zakatCalculator => 'د زکات حساب ورکوونکی';

  @override
  String get zakatGold => 'طلا (Altın)';

  @override
  String get zakatSilver => 'سپین زر (Gümüş)';

  @override
  String get zakatCashBank => 'نغدي / بانک';

  @override
  String get zakatBusiness => 'سوداګرۍ';

  @override
  String get zakatInvestments => 'پانګه اچونه';

  @override
  String get zakatWeightGrams => 'وزن (g)';

  @override
  String get zakatPricePerGram => 'قیمت/جی';

  @override
  String get zakatTotalAmount => 'ټول رقم';

  @override
  String get zakatInventoryValue => 'د موجوديت ارزښت';

  @override
  String get zakatDebts => 'پورونه';

  @override
  String get zakatTotal => 'ټول';

  @override
  String get calculateZakat => 'زکات حساب کړئ';

  @override
  String get nisabNotReached => 'نصاب نه دی رسیدلی. زکات فرض نه دی.';

  @override
  String get totalZakat => 'ټول زکات';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'نصاب: $nisab • شتمنۍ: $assets';
  }

  @override
  String get zakatGoldZakat => 'د سرو زرو زکات';

  @override
  String get zakatSilverZakat => 'د سپینو زرو زکات';

  @override
  String get zakatCashZakat => 'نغدي زکات';

  @override
  String get zakatBusinessZakat => 'د سوداګرۍ زکات';

  @override
  String get zakatInvestmentZakat => 'د پانګونې زکات';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'د ورځني پوښتنې حد ته رسیدلی. د لامحدود لپاره پریمیم ته لوړ کړئ.';

  @override
  String get chatbotErrorMsg =>
      'زه نشم کولی ځواب پیدا کړم. مهرباني وکړئ بیا هڅه وکړئ.';

  @override
  String get chatbotOfflinePrompt =>
      'د تصدیق شوي آفلاین اسلامي پوهه اساس لاهم تنظیمیږي. تاسو اوس کولی شئ آفلاین فال بیک فعال کړئ، مګر دا به یوازې محدود خوندي پیغامونه وښيي تر هغه چې سرچینه شوي ډیټاسیټ چمتو نه وي.\n\nایا تاسو غواړئ آفلاین فال بیک فعال کړئ؟';

  @override
  String get chatbotOfflineSwitched =>
      'آف لائن فال بیک فعال شوی. تصدیق شوي محلي اسلامي ځوابونه لاهم چمتو ندي.';

  @override
  String get chatbotOfflineDownloadLabel => 'آف لائن فال بیک فعال کړئ';

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
  String get dayStreak => 'د ورځې جریان';

  @override
  String get bestStreak => 'غوره سلسله';

  @override
  String get chatbotCloudAiLabel => 'کلاوډ AI';

  @override
  String get chatbotLocalAiLabel => 'آف لائن Fallback';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'آف لائن فال بیک فعال کړئ';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count پاتې شو';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'کلاوډ API نه دی ترتیب شوی. مهرباني وکړئ ځایی AI ته لاړشئ.';

  @override
  String get chatbotLocalNoInfo =>
      '[افلاین] تایید شوی محلي اسلامي لارښود لا تر اوسه شتون نلري. د سرچینې ځوابونو لپاره کلاوډ AI ته لاړشئ.';

  @override
  String get mosques => 'جوماتونه';

  @override
  String get halalFood => 'حلال خواړه';

  @override
  String get placesSearchArea => 'دا سیمه وپلټئ';

  @override
  String get nearbyMosques => 'نږدې جوماتونه';

  @override
  String get islamicSchools => 'اسلامي ښوونځي';

  @override
  String placesFoundCount(String count) {
    return '$count وموندل شو';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance کیلومتره لرې';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API تېروتنه: $statusCode';
  }

  @override
  String get placesNetworkError => 'د شبکې تېروتنه. مهرباني وکړئ بیا هڅه وکړئ.';

  @override
  String get unknownPlaceName => 'نامعلوم نوم';

  @override
  String get islamicPlaceFallback => 'اسلامي ځای';
}
