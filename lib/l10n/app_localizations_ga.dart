// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Irish (`ga`).
class AppLocalizationsGa extends AppLocalizations {
  AppLocalizationsGa([String locale = 'ga']) : super(locale);

  @override
  String get appTitle => 'Bealach Allah';

  @override
  String get home => 'Baile';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Féilire';

  @override
  String get settings => 'Socruithe';

  @override
  String get nextPrayer => 'Ar Aghaidh Paidir';

  @override
  String get prayerTimes => 'Amanna Paidir';

  @override
  String get continueReading => 'Leanúint ar aghaidh ag léamh';

  @override
  String get getLifetimePro => 'Faigh Lifetime Pro';

  @override
  String get unlockTajweed => 'Díghlasáil Tajweed & Ardghnéithe';

  @override
  String get prayerCalculation => 'Ríomh Urnaí';

  @override
  String get method => 'Modh Ríomh';

  @override
  String get madhab => 'Modh Dlínse Asr';

  @override
  String get surahs => 'Surahs';

  @override
  String get ayahs => 'Ayahs';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Éirí na gréine';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Maghrib';

  @override
  String get isha => 'Íse';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Am le haghaidh $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Tá sé in am guí $prayerName.';
  }

  @override
  String get dataStorage => 'Sonraí & Stóráil';

  @override
  String get clearCache => 'Glan Taisce';

  @override
  String get cacheClearedSuccess => 'Glanadh an taisce go rathúil';

  @override
  String get location => 'Suíomh';

  @override
  String get language => 'Teanga';

  @override
  String get selectLanguage => 'Roghnaigh Teanga';

  @override
  String get searchLanguage => 'Cuardaigh 180+ teanga...';

  @override
  String get systemDefault => 'Réamhshocrú Córais';

  @override
  String get currentLocation => 'Suíomh Reatha (GPS)';

  @override
  String get locationServiceDisabled => 'Location service is disabled.';

  @override
  String get locationPermissionDenied => 'Location permission denied.';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => 'Cuardach';

  @override
  String get searchHint => 'Cuardach...';

  @override
  String get noResults => 'Níor aimsíodh aon torthaí';

  @override
  String get loading => 'Á lódáil...';

  @override
  String get error => 'Earráid';

  @override
  String get retry => 'Bain triail eile as';

  @override
  String get cancel => 'Cealaigh';

  @override
  String get save => 'Sábháil';

  @override
  String get delete => 'Scrios';

  @override
  String get edit => 'Cuir in eagar';

  @override
  String get close => 'Dún';

  @override
  String get ok => 'ceart go leor';

  @override
  String get yes => 'Tá';

  @override
  String get no => 'Níl';

  @override
  String get surah => 'Surah';

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Leathanach';

  @override
  String get reading => 'Léamh';

  @override
  String get recitation => 'Aithriseoireacht';

  @override
  String get translation => 'Aistriúchán';

  @override
  String get tafsir => 'Taisceir';

  @override
  String get bookmarks => 'Leabharmharcanna';

  @override
  String get addBookmark => 'Cuir Leabharmharc leis';

  @override
  String get removeBookmark => 'Bain Leabharmharc';

  @override
  String get lastRead => 'Léamh Deireanach';

  @override
  String get dailyZikr => 'Zikr laethúil';

  @override
  String get morningZikr => 'Maidin Zikr';

  @override
  String get eveningZikr => 'Tráthnóna Zikr';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get ahkab => 'Achkam';

  @override
  String get masaail => 'Masa\'il';

  @override
  String get hadith => 'Hadith';

  @override
  String get hadithCollection => 'Bailiúchán de hadith saor in aisce,';

  @override
  String get hadithBooks => 'Leabhair hadith';

  @override
  String get searchHadith => 'Cuardaigh Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Ainmneacha Allah';

  @override
  String get liveTv => 'Teilifís beo';

  @override
  String get watchLive => 'Féach Beo';

  @override
  String get streamError => 'Earráid srutha';

  @override
  String get reload => 'Athlódáil';

  @override
  String get openInYoutube => 'Oscail i YouTube';

  @override
  String get ibadahTracker => 'Lorgaire Ibadah';

  @override
  String get fasting => 'Troscadh';

  @override
  String get quranReading => 'Léamh Quran';

  @override
  String get prayers => 'Paidreacha';

  @override
  String get dhikrCount => 'Comhaireamh Dhikr';

  @override
  String get weeklyProgress => 'Dul Chun Cinn Seachtainiúil';

  @override
  String get monthlyProgress => 'Dul Chun Cinn Míosúil';

  @override
  String get statistics => 'Staitisticí';

  @override
  String get hijriCalendar => 'Féilire Hijri';

  @override
  String get gregorianCalendar => 'Féilire Gregorian';

  @override
  String get today => 'Inniu';

  @override
  String get tomorrow => 'amárach';

  @override
  String get yesterday => 'Inné';

  @override
  String get specialDays => 'Laethanta Speisialta';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'Treo Qibla';

  @override
  String get compass => 'Compás';

  @override
  String get degrees => 'céimeanna';

  @override
  String get north => 'Thuaidh';

  @override
  String get qiblaFound => 'Fuair ​​​​Qibla!';

  @override
  String get turnDevice =>
      'Cas ar do ghléas chun aghaidh a thabhairt ar an Qibla';

  @override
  String get notifications => 'Fógraí';

  @override
  String get prayerNotifications => 'Fógraí Urnaí';

  @override
  String get enableNotifications => 'Cumasaigh Fógraí';

  @override
  String get notificationTime => 'Am Fógra';

  @override
  String get beforePrayer => 'nóiméad roimh urnaí';

  @override
  String get theme => 'Téama';

  @override
  String get lightMode => 'Mód Solas';

  @override
  String get darkMode => 'Mód Dorcha';

  @override
  String get systemTheme => 'Téama an Chórais';

  @override
  String get about => 'Maidir';

  @override
  String get version => 'Leagan';

  @override
  String get privacyPolicy => 'Beartas Príobháideachta';

  @override
  String get termsOfService => 'Téarmaí Seirbhíse';

  @override
  String get contactUs => 'Déan Teagmháil Linn';

  @override
  String get rateApp => 'App Ráta';

  @override
  String get shareApp => 'Comhroinn App';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Bainisteoir íoslódáil';

  @override
  String get downloads => 'Íoslódálacha';

  @override
  String get downloading => 'Ag íosluchtú...';

  @override
  String get downloadComplete => 'Íosluchtaigh Críochnaithe';

  @override
  String get downloadFailed => 'Theip ar íoslódáil';

  @override
  String get offlineMode => 'Mód As Líne';

  @override
  String get noInternet => 'Gan nasc Idirlín';

  @override
  String get checkConnection => 'Seiceáil do cheangal';

  @override
  String get premium => 'Préimh';

  @override
  String get upgradeToPro => 'Uasghrádú go Pro';

  @override
  String get proFeatures => 'Gnéithe Pro';

  @override
  String get removeAds => 'Bain Fógraí';

  @override
  String get unlockAll => 'Díghlasáil Gach Ábhar';

  @override
  String get exclusiveContent => 'Ábhar Eisiach';

  @override
  String get welcome => 'Fáilte';

  @override
  String get getStarted => 'Faigh Tosaigh';

  @override
  String get skip => 'Scipeáil';

  @override
  String get next => 'Ar aghaidh';

  @override
  String get done => 'Déanta';

  @override
  String get onboarding1Title => 'Fáilte go Bealach Allah';

  @override
  String get onboarding1Desc =>
      'Do aip compánach Ioslamach iomlán le haghaidh amanna urnaí, Quran, agus go leor eile';

  @override
  String get onboarding2Title => 'Amanna Paidir';

  @override
  String get onboarding2Desc => 'Amanna urnaí cruinn bunaithe ar do shuíomh';

  @override
  String get onboarding3Title => 'Quran & níos mó';

  @override
  String get onboarding3Desc =>
      'Léigh an Quran, rianaigh do léamh, agus fiosraigh ábhar Ioslamach';

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
  String get diagnosticsPrayerProfile => 'Prayer Profile';

  @override
  String get diagnosticsPrayerSource => 'Prayer Authority';

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
  String get dailyVerse => 'Daily Verse';

  @override
  String get todaysIbadah => 'Today\'s Ibadah';

  @override
  String get quickAccess => 'Quick Access';

  @override
  String get assistant => 'Assistant';

  @override
  String get places => 'Places';

  @override
  String get library => 'Library';

  @override
  String get analytics => 'Analytics';

  @override
  String get dailyDuas => 'Duas Laethúil';

  @override
  String essentialDuas(String count) {
    return '$count duas riachtanach';
  }

  @override
  String get duaUnavailableTitle => 'Níl dus deimhnithe ar fáil go fóill';

  @override
  String get duaUnavailableBody =>
      'Níor sioncronaíodh dus laethúil fíoraithe leis an ngléas seo fós. Ceangail leis an bhfoinse néil chun duas foinsithe a lódáil in ionad aischúiteamh neamhfhíoraithe.';

  @override
  String get duaCategoryQuranic => 'Dua Quranic';

  @override
  String get duaCategoryMorningEvening => 'Maidin & Tráthnóna';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Cosaint';

  @override
  String get duaCategoryBeginning => 'Tús';

  @override
  String get duaCategorySleep => 'Codladh';

  @override
  String get duaCategoryFoodDrink => 'Bia & Deoch';

  @override
  String get duaCategoryForgiveness => 'Maithiúnas';

  @override
  String get duaCategoryHome => 'Baile';

  @override
  String get duaSourceBukhari => 'Bukhari';

  @override
  String get duaSourceMuslim => 'Moslamach';

  @override
  String get duaSourceAbuDawud => 'Abú Dhabhúd';

  @override
  String get duaSourceTirmidhi => 'Tirmidi';

  @override
  String get duaSourceAhmad => 'Ahmad';

  @override
  String get islamicEducation => 'Islamic Education';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Hadith Collections';

  @override
  String get paywallUnlockAll =>
      'Unlock all features for your spiritual journey';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'Unlimited AI-powered Q&A';

  @override
  String get paywallFeature2Title => 'Unlimited Offline';

  @override
  String get paywallFeature2Desc => 'Download all recitations';

  @override
  String get paywallFeature3Title => 'Exclusive Designs';

  @override
  String get paywallFeature3Desc => 'Premium themes & fonts';

  @override
  String get paywallFeature4Title => 'Ad-Free';

  @override
  String get paywallFeature4Desc => 'Zero advertisements';

  @override
  String get paywallGetAccess => 'Get Lifetime Access — \$1.00';

  @override
  String get restorePurchases => 'Restore Purchases';

  @override
  String get zakatCalculator => 'Zakat Calculator';

  @override
  String get zakatGold => 'Gold (Altın)';

  @override
  String get zakatSilver => 'Silver (Gümüş)';

  @override
  String get zakatCashBank => 'Cash / Bank';

  @override
  String get zakatBusiness => 'Business';

  @override
  String get zakatInvestments => 'Investments';

  @override
  String get zakatWeightGrams => 'Weight (g)';

  @override
  String get zakatPricePerGram => 'Price/g';

  @override
  String get zakatTotalAmount => 'Total Amount';

  @override
  String get zakatInventoryValue => 'Inventory Value';

  @override
  String get zakatDebts => 'Debts';

  @override
  String get zakatTotal => 'Total';

  @override
  String get calculateZakat => 'Calculate Zakat';

  @override
  String get nisabNotReached => 'Nisab not reached. Zakat is not obligatory.';

  @override
  String get totalZakat => 'Total Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'Gold Zakat';

  @override
  String get zakatSilverZakat => 'Silver Zakat';

  @override
  String get zakatCashZakat => 'Cash Zakat';

  @override
  String get zakatBusinessZakat => 'Business Zakat';

  @override
  String get zakatInvestmentZakat => 'Investment Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Daily query limit reached. Upgrade to Premium for unlimited.';

  @override
  String get chatbotErrorMsg =>
      'I could not generate a response. Please try again.';

  @override
  String get chatbotOfflinePrompt =>
      'Tá an bonn eolais Ioslamach fíoraithe as líne á choimeád fós. Is féidir leat cúltaca as líne a chumasú anois, ach ní thaispeánfaidh sé ach teachtaireachtaí teoranta sábháilte go dtí go mbeidh an tacar sonraí foinseach réidh.\n\nAr mhaith leat cúltaca as líne a chumasú?';

  @override
  String get chatbotOfflineSwitched =>
      'Cumasaíodh aischur as líne. Níl freagraí Ioslamacha áitiúla fíoraithe réidh fós.';

  @override
  String get chatbotOfflineDownloadLabel => 'Cumasaigh Cúltaca As Líne';

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
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Fallback as Líne';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Cumasaigh Cúltaca As Líne';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API not configured. Please switch to Local AI.';

  @override
  String get chatbotLocalNoInfo =>
      '[AR LÍNE] Níl treoir Ioslamach áitiúil fíoraithe ar fáil fós. Athraigh go Cloud AI le haghaidh freagraí foinsithe.';

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
