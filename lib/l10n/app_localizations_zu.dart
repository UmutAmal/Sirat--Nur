// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Zulu (`zu`).
class AppLocalizationsZu extends AppLocalizations {
  AppLocalizationsZu([String locale = 'zu']) : super(locale);

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
  String get fajr => 'I-Fajr';

  @override
  String get sunrise => 'Ukuphuma kwelanga';

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
    return 'Isikhathi se-$prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Isikhathi sokuthandaza $prayerName.';
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
  String get locationServiceDisabled => 'Isevisi yendawo ivaliwe.';

  @override
  String get locationPermissionDenied => 'Imvume yendawo inqatshiwe.';

  @override
  String citiesCount(String count) {
    return '$count amadolobha';
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
  String get appErrorOccurred => 'Kwenzeke iphutha';

  @override
  String get appUnknownError => 'Iphutha elingaziwa';

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
  String get hadith => 'Hadith';

  @override
  String get hadithCollection => 'Iqoqo leHadith';

  @override
  String get hadithBooks => 'Hadith Izincwadi';

  @override
  String get searchHadith => 'Sesha iHadith';

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
  String get openInYoutube => 'Vula ku-YouTube';

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
    return 'Iphutha lekhampasi: $error';
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
    return 'Hlola $appName: Uhlelo lokusebenza oluhle kakhulu lwendlela yokuphila yamaSulumane! $url';
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
  String get zikrCompletedMashAllah => 'Kuqediwe! MashaAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'UAllah ungaphezulu kakhulu kukho konke ukungapheleli.';

  @override
  String get zikrMeaningAlhamdulillah => 'Udumo lonke malube kuAllah.';

  @override
  String get zikrMeaningAllahuAkbar => 'UAllah mkhulu.';

  @override
  String get zikrMeaningLaIlahaIllallah =>
      'Akekho unkulunkulu ngaphandle kukaAllah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Ngicela intethelelo kuAllah.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Akukho mandla namandla ngaphandle kukaAllah.';

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
  String get diagnosticsNotSet => 'Akusethiwe';

  @override
  String get diagnosticsPrayerProfile => 'Iphrofayili Yomkhuleko';

  @override
  String get diagnosticsPrayerSource => 'Igunya Lokuthandaza';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manual custom angles (no institutional source)';

  @override
  String get diagnosticsCloudDriven => 'Iqhutshwa ngamafu';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Quran Audio Assets';

  @override
  String get diagnosticsAudioAssets => 'Izimpahla Zomsindo';

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
  String get dailyVerse => 'Ivesi Lansuku zonke';

  @override
  String get todaysIbadah => 'I-Ibadah yanamuhla';

  @override
  String get quickAccess => 'Ukufinyelela Ngokushesha';

  @override
  String get assistant => 'Umsizi';

  @override
  String get places => 'Izindawo';

  @override
  String get library => 'Umtapowolwazi';

  @override
  String get analytics => 'Izibalo';

  @override
  String get dailyDuas => 'I-Daily Duas';

  @override
  String essentialDuas(String count) {
    return '$count ama-duas abalulekile';
  }

  @override
  String get duaUnavailableTitle =>
      'Ama-duas aqinisekisiwe awatholakali okwamanje';

  @override
  String get duaUnavailableBody =>
      'I-duas yansuku zonke eqinisekisiwe ayikavunyelaniswa kule divayisi okwamanje. Xhuma kumthombo wamafu ukuze ulayishe ama-duas atholakala esikhundleni sokubuyela emuva okungaqinisekisiwe.';

  @override
  String get duaCategoryQuranic => 'I-Quranic dua';

  @override
  String get duaCategoryMorningEvening => 'Ekuseni nakusihlwa';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Ukuvikelwa';

  @override
  String get duaCategoryBeginning => 'Iziqalo';

  @override
  String get duaCategorySleep => 'Lala';

  @override
  String get duaCategoryFoodDrink => 'Ukudla Neziphuzo';

  @override
  String get duaCategoryForgiveness => 'Ukuthethelela';

  @override
  String get duaCategoryHome => 'Ikhaya';

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
  String get islamicEducation => 'Imfundo YamaSulumane';

  @override
  String get sukunAudioTitle => 'I-Sukun Soundscapes';

  @override
  String get hadithCollections => 'Hadith Amaqoqo';

  @override
  String get hadithSourcePending => 'Umthombo oqinisekisiwe ulindile';

  @override
  String get hadithUnavailableTitle =>
      'Amaqoqo ama-hadith aqinisekisiwe awatholakali okwamanje';

  @override
  String get hadithUnavailableBody =>
      'Lokhu kwakhiwa kusancike kokuphakelayo kwe-hadith yangaphandle engaqinisekisiwe. Ukuphequlula kwe-Hadith kuhlala kuvaliwe kuze kube yilapho isethi yedatha etholakalayo ivunyelaniswa.';

  @override
  String get paywallUnlockAll => 'Vula zonke izici zohambo lwakho lokomoya';

  @override
  String get paywallFeature1Title => 'I-Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'I-Q&A ene-AI engenamkhawulo';

  @override
  String get paywallFeature2Title =>
      'Okungaxhunyiwe ku-inthanethi okungenamkhawulo';

  @override
  String get paywallFeature2Desc => 'Landa zonke izingcaphuno';

  @override
  String get paywallFeature3Title => 'Imiklamo Ekhethekile';

  @override
  String get paywallFeature3Desc => 'Izingqikithi namafonti e-Premium';

  @override
  String get paywallFeature4Title => 'Akunazikhangiso';

  @override
  String get paywallFeature4Desc => 'Azikho izikhangiso';

  @override
  String get paywallGetAccess => 'Thola Ukufinyelela Konke Kuphila — \$1.00';

  @override
  String get restorePurchases => 'Buyisela Okuthengiwe';

  @override
  String get zakatCalculator => 'I-Zakat Calculator';

  @override
  String get zakatGold => 'Igolide (Altın)';

  @override
  String get zakatSilver => 'Isiliva (Gümüş)';

  @override
  String get zakatCashBank => 'Imali / Ibhange';

  @override
  String get zakatBusiness => 'Ibhizinisi';

  @override
  String get zakatInvestments => 'Ukutshalwa kwezimali';

  @override
  String get zakatWeightGrams => 'Isisindo (g)';

  @override
  String get zakatPricePerGram => 'Inani/g';

  @override
  String get zakatTotalAmount => 'Ingqikithi yemali';

  @override
  String get zakatInventoryValue => 'Inani lokusungula';

  @override
  String get zakatDebts => 'Izikweletu';

  @override
  String get zakatTotal => 'Ingqikithi';

  @override
  String get calculateZakat => 'Calculate Zakat';

  @override
  String get nisabNotReached =>
      'UNisab akafinyelelwanga. I-Zakat ayiphoqelekile.';

  @override
  String get totalZakat => 'I-Zakat ephelele';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Amafa: $assets';
  }

  @override
  String get zakatGoldZakat => 'Gold Zakat';

  @override
  String get zakatSilverZakat => 'I-Silver Zakat';

  @override
  String get zakatCashZakat => 'Cash Zakat';

  @override
  String get zakatBusinessZakat => 'Ibhizinisi Zakat';

  @override
  String get zakatInvestmentZakat => 'Investment Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Umkhawulo wombuzo wansuku zonke ufinyelelwe. Thuthukela ku-Premium ukuze uthole okungenamkhawulo.';

  @override
  String get chatbotErrorMsg =>
      'Angikwazanga ukwenza impendulo. Sicela uzame futhi.';

  @override
  String get chatbotOfflinePrompt =>
      'Isisekelo solwazi lwamaSulumane olungaxhunyiwe ku-inthanethi esiqinisekisiwe sisalungiswa. Ungakwazi ukunika amandla ukubuyela emuva ungaxhunyiwe ku-inthanethi manje, kodwa kuzobonisa kuphela imilayezo ephephile elinganiselwe kuze kube yilapho isethi yedatha etholiwe isilungile.\n\nUngathanda ukunika amandla ukubuyela emuva ungaxhunyiwe ku-inthanethi?';

  @override
  String get chatbotOfflineSwitched =>
      'Ukubuyela emuva kokungaxhunyiwe ku-inthanethi kunikwe amandla. Izimpendulo zasendaweni zamaSulumane eziqinisekisiwe azikakalungi.';

  @override
  String get chatbotOfflineDownloadLabel => 'Nika amandla i-Offline Fallback';

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
  String get sukunMixerSubtitle => 'Imvelo & I-Qur\'an Mixer';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'I-Sukun (Imvelo)';

  @override
  String get sukunRainOfMercy => 'Imvula Yomusa';

  @override
  String get sukunGardenOfPeace => 'Insimu Yokuthula';

  @override
  String get sukunMidnightCalm => 'Ebusuku Zolile';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'I-Soundscapes ayitholakali';

  @override
  String get sukunUnavailableBody =>
      'Lesi sakhiwo asifaki amafa we-Sukun soundscape okwamanje.';

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
  String get chatbotLocalAiLabel => 'I-Fallback engaxhunyiwe ku-inthanethi';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Nika amandla i-Offline Fallback';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count osele';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'I-Cloud API ayilungiselelwe. Sicela ushintshele ku-Local AI.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Isiqondiso sendawo samaSulumane esiqinisekisiwe asitholakali okwamanje. Shintshela ku-Cloud AI ukuze uthole izimpendulo ezitholakalayo.';

  @override
  String get mosques => 'Ama-mosque';

  @override
  String get halalFood => 'Ukudla kwe-Halal';

  @override
  String get placesSearchArea => 'Sesha le ndawo';

  @override
  String get nearbyMosques => 'Ama-Mosque aseduze';

  @override
  String get islamicSchools => 'Izikole zamaSulumane';

  @override
  String placesFoundCount(String count) {
    return '$count itholiwe';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km kude';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Iphutha le-API: $statusCode';
  }

  @override
  String get placesNetworkError => 'Iphutha lenethiwekhi. Sicela uzame futhi.';

  @override
  String get unknownPlaceName => 'Igama Elingaziwa';

  @override
  String get islamicPlaceFallback => 'Indawo yamaSulumane';
}
