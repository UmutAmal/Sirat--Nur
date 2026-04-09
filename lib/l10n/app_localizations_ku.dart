// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kurdish (`ku`).
class AppLocalizationsKu extends AppLocalizations {
  AppLocalizationsKu([String locale = 'ku']) : super(locale);

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
  String get fajr => 'Fecr';

  @override
  String get sunrise => 'Rohilatî';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Maghrib';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Dema $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Wextê duakirinê ye $prayerName.';
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
  String get locationServiceDisabled => 'Xizmeta cihan neçalak e.';

  @override
  String get locationPermissionDenied => 'Destûra cihan hat redkirin.';

  @override
  String citiesCount(String count) {
    return '$count bajar';
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
  String get appErrorOccurred => 'Çewtiyek derket';

  @override
  String get appUnknownError => 'Çewtiya nenas';

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
  String get hadith => 'Hedîs';

  @override
  String get hadithCollection => 'Berhevoka Hedîs';

  @override
  String get hadithBooks => 'Pirtûkên Hedîsê';

  @override
  String get searchHadith => 'Hedîs bigerin';

  @override
  String get asmaulHusna => 'Esma-ul-Husna';

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
  String get openInYoutube => 'Di YouTube de vekin';

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
    return 'Çewtiya kompasê: $error';
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
    return 'Binihêrin $appName: Serlêdana herî dawî ya şêwaza jiyanê ya Îslamî! $url';
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
  String get diagnosticsNotSet => 'Not set';

  @override
  String get diagnosticsPrayerProfile => 'Profîla Nimêjê';

  @override
  String get diagnosticsPrayerSource => 'Desthilatiya Nimêjê';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Xwestî / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Goşeyên xwerû yên destan (çavkaniyek sazûmanî tune)';

  @override
  String get diagnosticsCloudDriven => 'Cloud Driven';

  @override
  String get diagnosticsAdhanAudioAssets => 'Azan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Qur\'an Audio Assets';

  @override
  String get diagnosticsAudioAssets => 'Amûrên Audio';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count pel';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Xwendina Manîfestê têk çû: $error';
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
  String get dailyVerse => 'Ayeta rojane';

  @override
  String get todaysIbadah => 'Îbadeta îro ye';

  @override
  String get quickAccess => 'Gihîştina Zû';

  @override
  String get assistant => 'Alîkar';

  @override
  String get places => 'Places';

  @override
  String get library => 'Pirtûkxane';

  @override
  String get analytics => 'Analytics';

  @override
  String get dailyDuas => 'Rojane Duas';

  @override
  String essentialDuas(String count) {
    return '$count duayên bingehîn';
  }

  @override
  String get duaUnavailableTitle => 'Duayên verastkirî hîn ne berdest in';

  @override
  String get duaUnavailableBody =>
      'Duayên rojane yên pejirandî hîn bi vê cîhazê re nehatine hevdeng kirin. Bi çavkaniya ewr ve girêdin da ku li şûna paşverûyek nerastkirî duayên jêderkirî bar bikin.';

  @override
  String get duaCategoryQuranic => 'Dua Quranê';

  @override
  String get duaCategoryMorningEvening => 'Sibeh & Êvar';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Parastinî';

  @override
  String get duaCategoryBeginning => 'Destpêk';

  @override
  String get duaCategorySleep => 'Xew';

  @override
  String get duaCategoryFoodDrink => 'Xwarin & Vexwarin';

  @override
  String get duaCategoryForgiveness => 'Lêborînî';

  @override
  String get duaCategoryHome => 'Xane';

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
  String get islamicEducation => 'Perwerdehiya Îslamî';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Berhevokên Hedîsê';

  @override
  String get hadithSourcePending => 'Çavkaniya verastkirî li bendê ye';

  @override
  String get hadithUnavailableTitle =>
      'Berhevokên hedîsên tesdîqkirî hê ne berdest in';

  @override
  String get hadithUnavailableBody =>
      'Ev avahî hîna jî bi pêvek hedîseke derveyî ya nerastkirî ve girêdayî ye. Gera hedîsê neçalak dimîne heya ku danegehek jêderkirî were senkronîze kirin.';

  @override
  String get paywallUnlockAll =>
      'Ji bo rêwîtiya xweya giyanî hemî taybetmendiyan vekin';

  @override
  String get paywallFeature1Title => 'Alîkarê Neural Plus';

  @override
  String get paywallFeature1Desc => 'Q&A bi AI-a bêsînor';

  @override
  String get paywallFeature2Title => 'Bêsînor Offline';

  @override
  String get paywallFeature2Desc => 'Hemî vegotinan dakêşin';

  @override
  String get paywallFeature3Title => 'Designs Exclusive';

  @override
  String get paywallFeature3Desc => 'Mijar û tîpên Premium';

  @override
  String get paywallFeature4Title => 'Bê reklam';

  @override
  String get paywallFeature4Desc => 'Reklamên sifir';

  @override
  String get paywallGetAccess => 'Gihîştina Jiyanê bistînin - 1,00 \$';

  @override
  String get restorePurchases => 'Restore Kirînên';

  @override
  String get zakatCalculator => 'Hesabê Zekatê';

  @override
  String get zakatGold => 'Zêr (Altın)';

  @override
  String get zakatSilver => 'Zîv (Gümüş)';

  @override
  String get zakatCashBank => 'Dirav / Bank';

  @override
  String get zakatBusiness => 'Dikan';

  @override
  String get zakatInvestments => 'Investments';

  @override
  String get zakatWeightGrams => 'Giranî (g)';

  @override
  String get zakatPricePerGram => 'Biha/g';

  @override
  String get zakatTotalAmount => 'Tevahiya Mîqdara';

  @override
  String get zakatInventoryValue => 'Nirxa envanterê';

  @override
  String get zakatDebts => 'Deyn';

  @override
  String get zakatTotal => 'Hemî';

  @override
  String get calculateZakat => 'Zekat hesab bike';

  @override
  String get nisabNotReached => 'Nisab negihiştiye. Zekat ne ferz e.';

  @override
  String get totalZakat => 'Tevahiya Zekatê';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Taybetmendî: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zekatê zêr';

  @override
  String get zakatSilverZakat => 'Zekatê zîv';

  @override
  String get zakatCashZakat => 'Cash Zekat';

  @override
  String get zakatBusinessZakat => 'Zekatê Karsaziyê';

  @override
  String get zakatInvestmentZakat => 'Zekatê veberhênanê';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Sînorê pirsa rojane gihîştiye. Ji bo bêsînor bi Premium nûve bikin.';

  @override
  String get chatbotErrorMsg =>
      'Min nekarî bersivek biafirînim. Ji kerema xwe dîsa biceribîne.';

  @override
  String get chatbotOfflinePrompt =>
      'Bingeha zanîna îslamî ya negirêdayî ya pejirandî hîn jî tê rêve kirin. Naha hûn dikarin paşvekêşana offline çalak bikin, lê ew ê tenê peyamên ewledar ên sînordar nîşan bide heya ku daneya jêder amade be.\n\nMa hûn dixwazin paşvekêşana offline çalak bikin?';

  @override
  String get chatbotOfflineSwitched =>
      'Pêşveçûna negirêdayî çalak bû. Bersivên îslamî yên herêmî yên verastkirî hîn ne amade ne.';

  @override
  String get chatbotOfflineDownloadLabel => 'Vegera negirêdayî çalak bike';

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
  String get sukunMixerSubtitle => 'Xweza û Qur\'an Mikser';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (xweza)';

  @override
  String get sukunRainOfMercy => 'Barana Rehmetê';

  @override
  String get sukunGardenOfPeace => 'Baxçeyê Aştiyê';

  @override
  String get sukunMidnightCalm => 'Midnight Calm';

  @override
  String get sukunOceanTawheed => 'Ocean Tewhîd';

  @override
  String get sukunUnavailableTitle => 'Soundscapes ne berdest in';

  @override
  String get sukunUnavailableBody =>
      'Ev avahî hê jî hebûnên dengê Sukun-ê yên pêwîst nagire.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Rêzika rojê';

  @override
  String get bestStreak => 'Rêza herî baş';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Vegera negirêdayî çalak bike';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count maye';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API nayê mîheng kirin. Ji kerema xwe veguherînin AI-ya Herêmî.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Rêbernameya îslamî ya herêmî ya pejirandî hîna peyda nabe. Ji bo bersivên çavkaniyê veguherînin Cloud AI.';

  @override
  String get mosques => 'Mizgeftan';

  @override
  String get halalFood => 'Xwarina Halal';

  @override
  String get placesSearchArea => 'Li vê herêmê bigerin';

  @override
  String get nearbyMosques => 'Mizgeftên Nêzîkî';

  @override
  String get islamicSchools => 'Dibistanên Îslamî';

  @override
  String placesFoundCount(String count) {
    return '$count hat dîtin';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km dûr';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Çewtiya API: $statusCode';
  }

  @override
  String get placesNetworkError =>
      'Çewtiya torê. Ji kerema xwe dîsa biceribîne.';

  @override
  String get unknownPlaceName => 'Navê nenas';

  @override
  String get islamicPlaceFallback => 'Cihê Îslamî';
}
