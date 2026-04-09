// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tsonga (`ts`).
class AppLocalizationsTs extends AppLocalizations {
  AppLocalizationsTs([String locale = 'ts']) : super(locale);

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
  String get sunrise => 'Ku huma ka dyambu';

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
    return 'Nkarhi wa $prayerName.';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'I nkarhi wo khongela $prayerName.';
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
  String get locationServiceDisabled =>
      'Vukorhokeri bya ndhawu byi pfaleriwile.';

  @override
  String get locationPermissionDenied => 'Mpfumelelo wa ndhawu wu ariwile.';

  @override
  String citiesCount(String count) {
    return '$count cities';
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
  String get hadith => 'Hadith ya Xitsonga';

  @override
  String get hadithCollection => 'Nhlengeleto wa Tihadith';

  @override
  String get hadithBooks => 'Tibuku ta Hadith';

  @override
  String get searchHadith => 'Ku lavisisa Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna, ku vula ka yena';

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
  String get openInYoutube => 'Vula eka YouTube';

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
  String get diagnosticsNotSet => 'A swi vekiwanga';

  @override
  String get diagnosticsPrayerProfile => 'Profayile ya Xikhongelo';

  @override
  String get diagnosticsPrayerSource => 'Vulawuri bya Xikhongelo';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Ti-angle ta ntolovelo ta manual (ku hava xihlovo xa nhlangano) .';

  @override
  String get diagnosticsCloudDriven => 'Ku Fambiwa hi Mapapa';

  @override
  String get diagnosticsAdhanAudioAssets => 'Nhundzu ya Mpfumawulo ya Adhan';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Nhundzu ya mpfumawulo wa Quran';

  @override
  String get diagnosticsAudioAssets => 'Nhundzu ya Mpfumawulo';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count tifayela';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Ku hlayiwa ka manifest ku tsandzekile: $error .';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Tindhawu ta Ndhawu';

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
  String get dailyVerse => 'Ndzimana ya Siku na Siku';

  @override
  String get todaysIbadah => 'Ibadah ya namuntlha';

  @override
  String get quickAccess => 'Mfikelelo wa Xihatla';

  @override
  String get assistant => 'Mpfuneto';

  @override
  String get places => 'Tindhawu';

  @override
  String get library => 'Layiburari';

  @override
  String get analytics => 'Vuxopaxopi';

  @override
  String get dailyDuas => 'Duas ya siku na siku';

  @override
  String essentialDuas(String count) {
    return '$count essential duas';
  }

  @override
  String get duaUnavailableTitle => 'Ti duas leti tiyisisiweke a ti se kumeka';

  @override
  String get duaUnavailableBody =>
      'Ti duas ta siku na siku leti tiyisisiweke a ti si hlanganisiwa na xitirhisiwa lexi. Hlanganisa na xihlovo xa mapapa ku layicha ti duas leti humaka eka xihlovo ematshan’wini ya fallback leyi nga tiyisisiwangiki.';

  @override
  String get duaCategoryQuranic => 'Dua ya Quranic';

  @override
  String get duaCategoryMorningEvening => 'Mixo & Madyambu';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Nsirhelelo';

  @override
  String get duaCategoryBeginning => 'Masungulo';

  @override
  String get duaCategorySleep => 'Etlela';

  @override
  String get duaCategoryFoodDrink => 'Swakudya & Swinwiwa';

  @override
  String get duaCategoryForgiveness => 'Ku rivalela';

  @override
  String get duaCategoryHome => 'Kaya';

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
  String get islamicEducation => 'Dyondzo ya Vuislem';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Nhlengeleto wa Tihadith';

  @override
  String get hadithSourcePending => 'Xihlovo lexi tiyisisiweke xi yimerile';

  @override
  String get hadithUnavailableTitle =>
      'Nhlengeleto wa hadith lowu tiyisisiweke a wu si kumeka';

  @override
  String get hadithUnavailableBody =>
      'Ku aka loku ka ha titshege hi ku phameriwa ka hadith ya le handle leyi nga tiyisisiwangiki. Ku pfula ka Hadith ku tshama ku nga tirhi ku kondza dataset leyi nga na xihlovo yi fambisana.';

  @override
  String get paywallUnlockAll =>
      'Pfula swihlawulekisi hinkwaswo swa riendzo ra wena ra moya';

  @override
  String get paywallFeature1Title => 'Mupfuni wa Tinyiyo Plus';

  @override
  String get paywallFeature1Desc =>
      'Q&A leyi nga pimiwangiki leyi fambiwaka hi AI';

  @override
  String get paywallFeature2Title => 'Leswi nga riki na swipimelo Offline';

  @override
  String get paywallFeature2Desc => 'Download ti recitations hinkwato';

  @override
  String get paywallFeature3Title => 'Tidizayini to Hlawuleka';

  @override
  String get paywallFeature3Desc =>
      'Tinhlokomhaka ta xiyimo xa le henhla & tifonto';

  @override
  String get paywallFeature4Title => 'Ad-Free';

  @override
  String get paywallFeature4Desc => 'Swinavetiso swa zero';

  @override
  String get paywallGetAccess => 'Kuma Mfikelelo wa Vutomi Hinkwabyo — \$1.00';

  @override
  String get restorePurchases => 'Vuyisela Ku Xava';

  @override
  String get zakatCalculator => 'Xikalo xa Zakat';

  @override
  String get zakatGold => 'Nsuku (Altın) .';

  @override
  String get zakatSilver => 'Silivhere (Gümüş) .';

  @override
  String get zakatCashBank => 'Mali / Bangi';

  @override
  String get zakatBusiness => 'Bindzu';

  @override
  String get zakatInvestments => 'Vuvekisi';

  @override
  String get zakatWeightGrams => 'Ndzilo (g) .';

  @override
  String get zakatPricePerGram => 'Ntsengo/g';

  @override
  String get zakatTotalAmount => 'Ntsengo Hinkwawo';

  @override
  String get zakatInventoryValue => 'Nkoka wa Nhundzu ya Nhundzu';

  @override
  String get zakatDebts => 'Swikweleti';

  @override
  String get zakatTotal => 'Hinkwaswo';

  @override
  String get calculateZakat => 'Hlela Zakat';

  @override
  String get nisabNotReached => 'Nisab a nga fiki. Zakat a yi bohi.';

  @override
  String get totalZakat => 'Nhlayo hinkwayo ya Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakat ya Nsuku';

  @override
  String get zakatSilverZakat => 'Zakat ya silivhere';

  @override
  String get zakatCashZakat => 'Zakat ya mali ya xibalo';

  @override
  String get zakatBusinessZakat => 'Zakat ya mabindzu';

  @override
  String get zakatInvestmentZakat => 'Zakat ya vuvekisi';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Ndzilakano wa swivutiso swa siku na siku wu fikeleriwile. Ndlandlamuxa eka Premium for unlimited.';

  @override
  String get chatbotErrorMsg =>
      'A ndzi swi kotanga ku humesa nhlamulo. Hi kombela u ringeta nakambe.';

  @override
  String get chatbotOfflinePrompt =>
      'Xivandla xa vutivi bya Xiislam lexi tiyisisiweke xa le handle ka inthanete xa ha hlayisiwa. U nga pfumelela ku tlhelela endzhaku ka le handle ka inthanete sweswi, kambe yi ta kombisa ntsena marungula lama hlayisekeke lama nga nyawuriki ku kondza dataset leyi humaka eka xihlovo yi lunghekile.\n\nXana u nga tsakela ku endla leswaku ku va na ku tlhelela endzhaku ka offline?';

  @override
  String get chatbotOfflineSwitched =>
      'Offline fallback yi tirhisiwile. Tinhlamulo ta Xiislam ta laha kaya leti tiyisisiweke a ti si lungheka.';

  @override
  String get chatbotOfflineDownloadLabel =>
      'Endla leswaku Offline Fallback yi tirha';

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
  String get dayStreak => 'Ku landzelelana ka siku';

  @override
  String get bestStreak => 'Streak leyinene ngopfu';

  @override
  String get chatbotCloudAiLabel => 'AI ya le mapapa';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi =>
      'Endla leswaku Offline Fallback yi tirha';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API a yi lulamisiwanga. Hi kombela u cincela eka Local AI.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Nkongomiso wa laha kaya lowu tiyisisiweke wa Xiislam a wu si kumeka. Cinca eka Cloud AI ku kuma tinhlamulo leti humaka eka xihlovo.';

  @override
  String get mosques => 'Timosque';

  @override
  String get halalFood => 'Swakudya swa Halal';

  @override
  String get placesSearchArea => 'Lavisisa ndhawu leyi';

  @override
  String get nearbyMosques => 'Timosque ta le kusuhi';

  @override
  String get islamicSchools => 'Swikolo swa Vuislem';

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
  String get placesNetworkError =>
      'Xihoxo xa netiweke. Hi kombela u ringeta nakambe.';

  @override
  String get unknownPlaceName => 'Vito leri nga tiviwiki';

  @override
  String get islamicPlaceFallback => 'Ndhawu ya Vuislem';
}
