// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class AppLocalizationsSw extends AppLocalizations {
  AppLocalizationsSw([String locale = 'sw']) : super(locale);

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
  String get sunrise => 'Kuchomoza kwa jua';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Magharibi';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Muda wa $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Ni wakati wa kuomba $prayerName.';
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
  String get locationServiceDisabled => 'Huduma ya eneo imezimwa.';

  @override
  String get locationPermissionDenied => 'Ruhusa ya eneo imekataliwa.';

  @override
  String citiesCount(String count) {
    return '$count miji';
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
  String get appErrorOccurred => 'Hitilafu imetokea';

  @override
  String get appUnknownError => 'Hitilafu isiyojulikana';

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
  String get hadith => 'Hadithi';

  @override
  String get hadithCollection => 'Mkusanyiko wa Hadith';

  @override
  String get hadithBooks => 'Vitabu vya Hadith';

  @override
  String get searchHadith => 'Tafuta Hadiyth';

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
  String get openInYoutube => 'Fungua kwenye YouTube';

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
    return 'Hitilafu ya dira: $error';
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
    return 'Angalia $appName: Programu bora zaidi ya mtindo wa maisha ya Kiislamu! $url';
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
  String get zikrCompletedMashAllah => 'Imekamilika! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Mwenyezi Mungu yu mbali sana juu ya kila upungufu.';

  @override
  String get zikrMeaningAlhamdulillah =>
      'Sifa njema zote ni za Mwenyezi Mungu.';

  @override
  String get zikrMeaningAllahuAkbar => 'Mwenyezi Mungu ndiye Mkubwa.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Hapana mungu ila Mwenyezi Mungu.';

  @override
  String get zikrMeaningAstaghfirullah => 'Naomba msamaha kwa Mwenyezi Mungu.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Hakuna nguvu wala nguvu ila kwa Mwenyezi Mungu.';

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
  String get diagnosticsNotSet => 'Haijawekwa';

  @override
  String get diagnosticsPrayerProfile => 'Wasifu wa Maombi';

  @override
  String get diagnosticsPrayerSource => 'Mamlaka ya Maombi';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Maalum / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Pembe maalum za mwongozo (hakuna chanzo cha kitaasisi)';

  @override
  String get diagnosticsCloudDriven => 'Inaendeshwa na Wingu';

  @override
  String get diagnosticsAdhanAudioAssets => 'Mali ya Sauti ya Adhan';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Mali za Sauti za Quran';

  @override
  String get diagnosticsAudioAssets => 'Vipengee vya Sauti';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count faili';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Usomaji wa maelezo haujafaulu: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Maeneo ya Ujanibishaji';

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
  String get dailyVerse => 'Mstari wa kila siku';

  @override
  String get todaysIbadah => 'Ibada ya leo';

  @override
  String get quickAccess => 'Ufikiaji wa Haraka';

  @override
  String get assistant => 'Msaidizi';

  @override
  String get places => 'Maeneo';

  @override
  String get library => 'Maktaba';

  @override
  String get analytics => 'Uchanganuzi';

  @override
  String get dailyDuas => 'Dua za kila siku';

  @override
  String essentialDuas(String count) {
    return '$count dua muhimu';
  }

  @override
  String get duaUnavailableTitle => 'Dua zilizothibitishwa bado hazipatikani';

  @override
  String get duaUnavailableBody =>
      'Dua za kila siku zilizothibitishwa bado hazijasawazishwa kwenye kifaa hiki. Unganisha kwenye chanzo cha wingu ili kupakia dua zilizotoka badala ya njia mbadala ambayo haijathibitishwa.';

  @override
  String get duaCategoryQuranic => 'Dua ya Quran';

  @override
  String get duaCategoryMorningEvening => 'Asubuhi na Jioni';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Ulinzi';

  @override
  String get duaCategoryBeginning => 'Mwanzo';

  @override
  String get duaCategorySleep => 'Kulala';

  @override
  String get duaCategoryFoodDrink => 'Chakula na Vinywaji';

  @override
  String get duaCategoryForgiveness => 'Msamaha';

  @override
  String get duaCategoryHome => 'Nyumbani';

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
  String get islamicEducation => 'Elimu ya Kiislamu';

  @override
  String get sukunAudioTitle => 'Picha za Sukun';

  @override
  String get hadithCollections => 'Makusanyo ya Hadith';

  @override
  String get hadithSourcePending => 'Chanzo kilichothibitishwa kinasubiri';

  @override
  String get hadithUnavailableTitle =>
      'Mkusanyiko wa Hadith zilizothibitishwa bado hazipatikani';

  @override
  String get hadithUnavailableBody =>
      'Muundo huu bado unategemea mlisho wa Hadith wa nje ambao haujathibitishwa. Uvinjari wa Hadith husalia kuzimwa hadi mkusanyiko wa data uliopatikana ulandanishwe.';

  @override
  String get paywallUnlockAll =>
      'Fungua vipengele vyote vya safari yako ya kiroho';

  @override
  String get paywallFeature1Title => 'Msaidizi wa Neural Plus';

  @override
  String get paywallFeature1Desc =>
      'Maswali na Majibu yanayoendeshwa na AI bila kikomo';

  @override
  String get paywallFeature2Title => 'Unlimited Offline';

  @override
  String get paywallFeature2Desc => 'Pakua vikariri vyote';

  @override
  String get paywallFeature3Title => 'Miundo ya Kipekee';

  @override
  String get paywallFeature3Desc => 'Mandhari na fonti za hali ya juu';

  @override
  String get paywallFeature4Title => 'Bila Matangazo';

  @override
  String get paywallFeature4Desc => 'Matangazo sifuri';

  @override
  String get paywallGetAccess => 'Pata Ufikiaji wa Maisha - \$1.00';

  @override
  String get restorePurchases => 'Rejesha Ununuzi';

  @override
  String get zakatCalculator => 'Kikokotoo cha Zakat';

  @override
  String get zakatGold => 'Dhahabu (Altın)';

  @override
  String get zakatSilver => 'Fedha (Gümüş)';

  @override
  String get zakatCashBank => 'Fedha / Benki';

  @override
  String get zakatBusiness => 'Biashara';

  @override
  String get zakatInvestments => 'Uwekezaji';

  @override
  String get zakatWeightGrams => 'Uzito (g)';

  @override
  String get zakatPricePerGram => 'Bei/g';

  @override
  String get zakatTotalAmount => 'Jumla ya Kiasi';

  @override
  String get zakatInventoryValue => 'Thamani ya Malipo';

  @override
  String get zakatDebts => 'Madeni';

  @override
  String get zakatTotal => 'Jumla';

  @override
  String get calculateZakat => 'Hesabu Zakat';

  @override
  String get nisabNotReached => 'Nisab haijafikiwa. Zaka si wajibu.';

  @override
  String get totalZakat => 'Jumla ya Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Mali: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakat ya dhahabu';

  @override
  String get zakatSilverZakat => 'Zakat ya Fedha';

  @override
  String get zakatCashZakat => 'Zakat ya Fedha';

  @override
  String get zakatBusinessZakat => 'Zakat ya Biashara';

  @override
  String get zakatInvestmentZakat => 'Zaka ya Uwekezaji';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Kikomo cha hoja za kila siku kimefikiwa. Pata toleo jipya la Premium kwa ukomo.';

  @override
  String get chatbotErrorMsg => 'Sikuweza kutoa jibu. Tafadhali jaribu tena.';

  @override
  String get chatbotOfflinePrompt =>
      'Msingi wa maarifa ya Kiislamu nje ya mtandao uliothibitishwa bado unaratibiwa. Unaweza kuwezesha urejeshaji mkondo sasa, lakini itaonyesha ujumbe salama tu hadi mkusanyiko wa data uliyotoka uwe tayari.\n\nJe, ungependa kuwezesha njia mbadala ya nje ya mtandao?';

  @override
  String get chatbotOfflineSwitched =>
      'Njia mbadala ya nje ya mtandao imewezeshwa. Majibu yaliyothibitishwa ya Kiislamu ya ndani bado hayako tayari.';

  @override
  String get chatbotOfflineDownloadLabel => 'Washa Fallback Nje ya Mtandao';

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
  String get sukunMixerSubtitle => 'Asili na Mchanganyiko wa Kurani';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (Asili)';

  @override
  String get sukunRainOfMercy => 'Mvua ya Rehema';

  @override
  String get sukunGardenOfPeace => 'Bustani ya Amani';

  @override
  String get sukunMidnightCalm => 'Usiku wa manane Utulivu';

  @override
  String get sukunOceanTawheed => 'Bahari ya Tawhiyd';

  @override
  String get sukunUnavailableTitle => 'Mandhari ya sauti haipatikani';

  @override
  String get sukunUnavailableBody =>
      'Muundo huu bado haujumuishi vipengee vinavyohitajika vya mwonekano wa sauti wa Sukun.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Mfululizo wa siku';

  @override
  String get bestStreak => 'Mfululizo bora';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Njia ya Kurudi Nje ya Mtandao';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Washa Fallback Nje ya Mtandao';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count imesalia';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'API ya Wingu haijasanidiwa. Tafadhali badilisha hadi AI ya Ndani.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Mwongozo wa karibu wa Kiislamu uliothibitishwa bado haupatikani. Badili hadi Cloud AI kwa majibu ya chanzo.';

  @override
  String get mosques => 'Misikiti';

  @override
  String get halalFood => 'Chakula cha Halal';

  @override
  String get placesSearchArea => 'Tafuta eneo hili';

  @override
  String get nearbyMosques => 'Misikiti iliyo karibu';

  @override
  String get islamicSchools => 'Shule za Kiislamu';

  @override
  String placesFoundCount(String count) {
    return '$count imepatikana';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance kilomita';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Hitilafu ya API: $statusCode';
  }

  @override
  String get placesNetworkError =>
      'Hitilafu ya mtandao. Tafadhali jaribu tena.';

  @override
  String get unknownPlaceName => 'Jina lisilojulikana';

  @override
  String get islamicPlaceFallback => 'Mahali pa Kiislamu';
}
