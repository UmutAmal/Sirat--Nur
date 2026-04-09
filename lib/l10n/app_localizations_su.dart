// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sundanese (`su`).
class AppLocalizationsSu extends AppLocalizations {
  AppLocalizationsSu([String locale = 'su']) : super(locale);

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
  String get fajr => 'Subuh';

  @override
  String get sunrise => 'Panonpoé surup';

  @override
  String get dhuhr => 'Dzuhur';

  @override
  String get asr => 'Asar';

  @override
  String get maghrib => 'Magrib';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Waktu keur $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Geus waktuna pikeun ngadoa $prayerName.';
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
  String get locationServiceDisabled => 'Ladenan lokasi ditumpurkeun.';

  @override
  String get locationPermissionDenied => 'Idin lokasi ditolak.';

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
  String get appErrorOccurred => 'Aya kasalahan';

  @override
  String get appUnknownError => 'Kasalahan teu dipikanyaho';

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
  String get hadith => 'Hadits';

  @override
  String get hadithCollection => 'Kumpulan Hadits';

  @override
  String get hadithBooks => 'Kitab Hadits';

  @override
  String get searchHadith => 'Pilarian Hadits';

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
  String get openInYoutube => 'Buka dina YouTube';

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
    return 'Kasalahan kompas: $error';
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
  String get zikrCompletedMashAllah => 'Réngsé! MasyaAllah';

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
  String get diagnosticsNotSet => 'Teu diatur';

  @override
  String get diagnosticsPrayerProfile => 'Propil Doa';

  @override
  String get diagnosticsPrayerSource => 'Pangawasa Sholat';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Sudut custom manual (euweuh sumber institusional)';

  @override
  String get diagnosticsCloudDriven => 'Awan disetir';

  @override
  String get diagnosticsAdhanAudioAssets => 'Aset Audio Adzan';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Aset Audio Quran';

  @override
  String get diagnosticsAudioAssets => 'Aset Audio';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count file';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Gagal maca manifestasi: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Lokalisasi Lokalisasi';

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
  String get dailyVerse => 'Ayat poean';

  @override
  String get todaysIbadah => 'Ibadah ayeuna';

  @override
  String get quickAccess => 'Aksés Gancang';

  @override
  String get assistant => 'Asisten';

  @override
  String get places => 'Tempat-tempat';

  @override
  String get library => 'Perpustakaan';

  @override
  String get analytics => 'Analytics';

  @override
  String get dailyDuas => 'Duas poean';

  @override
  String essentialDuas(String count) {
    return '$count penting duas';
  }

  @override
  String get duaUnavailableTitle => 'duas diverifikasi teu sadia acan';

  @override
  String get duaUnavailableBody =>
      'Duas poean anu diverifikasi teu acan disingkronkeun ka alat ieu. Sambungkeun ka sumber awan pikeun muka duas sourced tinimbang fallback unverified.';

  @override
  String get duaCategoryQuranic => 'Qur\'an dua';

  @override
  String get duaCategoryMorningEvening => 'Isuk & Sore';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Panyalindungan';

  @override
  String get duaCategoryBeginning => 'Mimiti';

  @override
  String get duaCategorySleep => 'Saré';

  @override
  String get duaCategoryFoodDrink => 'Dahareun & Inuman';

  @override
  String get duaCategoryForgiveness => 'Hampura';

  @override
  String get duaCategoryHome => 'Imah';

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
  String get islamicEducation => 'Pendidikan Islam';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Kumpulan Hadits';

  @override
  String get hadithSourcePending => 'Sumber diverifikasi ngantosan';

  @override
  String get hadithUnavailableTitle =>
      'Koléksi hadits anu diverifikasi henteu acan sayogi';

  @override
  String get hadithUnavailableBody =>
      'Ieu ngawangun masih gumantung kana feed hadits éksternal unverified. Ngotéktak Hadits tetep ditumpurkeun dugi ka set data sumber disingkronkeun.';

  @override
  String get paywallUnlockAll =>
      'Buka konci sadaya fitur pikeun perjalanan spiritual anjeun';

  @override
  String get paywallFeature1Title => 'Neural Asisten Ditambah';

  @override
  String get paywallFeature1Desc => 'Tanya Jawab AI-Powered Unlimited';

  @override
  String get paywallFeature2Title => 'Unlimited Offline';

  @override
  String get paywallFeature2Desc => 'Unduh sadaya bacaan';

  @override
  String get paywallFeature3Title => 'Desain ekslusif';

  @override
  String get paywallFeature3Desc => 'Téma & fon premium';

  @override
  String get paywallFeature4Title => 'Bébas Iklan';

  @override
  String get paywallFeature4Desc => 'Iklan nol';

  @override
  String get paywallGetAccess => 'Meunang Aksés Hirupna - \$1.00';

  @override
  String get restorePurchases => 'Mulangkeun Purchases';

  @override
  String get zakatCalculator => 'Kalkulator Zakat';

  @override
  String get zakatGold => 'Emas (Altın)';

  @override
  String get zakatSilver => 'pérak (Gümüş)';

  @override
  String get zakatCashBank => 'Kas/Bank';

  @override
  String get zakatBusiness => 'Usaha';

  @override
  String get zakatInvestments => 'Investasi';

  @override
  String get zakatWeightGrams => 'Beurat (g)';

  @override
  String get zakatPricePerGram => 'Harga / g';

  @override
  String get zakatTotalAmount => 'Jumlah total';

  @override
  String get zakatInventoryValue => 'Niley Inventory';

  @override
  String get zakatDebts => 'Hutang';

  @override
  String get zakatTotal => 'Total';

  @override
  String get calculateZakat => 'Ngitung Zakat';

  @override
  String get nisabNotReached => 'Nisab teu kahontal. Zakat henteu wajib.';

  @override
  String get totalZakat => 'Zakat total';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakat Emas';

  @override
  String get zakatSilverZakat => 'Zakat pérak';

  @override
  String get zakatCashZakat => 'Zakat Tunai';

  @override
  String get zakatBusinessZakat => 'Zakat Usaha';

  @override
  String get zakatInvestmentZakat => 'Zakat Investasi';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'wates query poean ngahontal. Ningkatkeun ka Premium pikeun henteu terbatas.';

  @override
  String get chatbotErrorMsg =>
      'Abdi teu bisa ngahasilkeun respon. Mangga cobian deui.';

  @override
  String get chatbotOfflinePrompt =>
      'Basis pangaweruh Islam offline anu diverifikasi masih dikurasi. Anjeun tiasa ngaktipkeun fallback offline ayeuna, tapi éta ngan bakal nembongkeun pesen aman kawates dugi dataset sourced geus siap.\n\nNaha anjeun badé ngaktipkeun fallback offline?';

  @override
  String get chatbotOfflineSwitched =>
      'Offline fallback diaktipkeun. Jawaban Islam lokal anu diverifikasi henteu acan siap.';

  @override
  String get chatbotOfflineDownloadLabel => 'Aktipkeun Offline Fallback';

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
  String get sukunMixerSubtitle => 'Alam & Qur\'an Adun';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (Alam)';

  @override
  String get sukunRainOfMercy => 'Hujan Rahmat';

  @override
  String get sukunGardenOfPeace => 'Taman Damai';

  @override
  String get sukunMidnightCalm => 'Tengah peuting Tenang';

  @override
  String get sukunOceanTawheed => 'Samudra Tauhid';

  @override
  String get sukunUnavailableTitle => 'Soundscapes teu sadia';

  @override
  String get sukunUnavailableBody =>
      'Wangunan ieu henteu kalebet aset soundscape Sukun anu diperyogikeun.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Beurang streak';

  @override
  String get bestStreak => 'streak pangalusna';

  @override
  String get chatbotCloudAiLabel => 'Awan AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Aktipkeun Offline Fallback';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count ditinggalkeun';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API teu ngonpigurasi. Mangga pindah ka AI Lokal.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Pitunjuk Islam lokal anu diverifikasi teu acan sayogi. Pindah ka Cloud AI pikeun jawaban sumber.';

  @override
  String get mosques => 'masjid-masjid';

  @override
  String get halalFood => 'Dahareun Halal';

  @override
  String get placesSearchArea => 'Pilarian wewengkon ieu';

  @override
  String get nearbyMosques => 'Deukeutna Masjid';

  @override
  String get islamicSchools => 'Sakola Islam';

  @override
  String placesFoundCount(String count) {
    return '$count kapanggih';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km away';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Kasalahan API: $statusCode';
  }

  @override
  String get placesNetworkError => 'Kasalahan jaringan. Mangga cobian deui.';

  @override
  String get unknownPlaceName => 'Ngaran teu kanyahoan';

  @override
  String get islamicPlaceFallback => 'Tempat Islami';
}
