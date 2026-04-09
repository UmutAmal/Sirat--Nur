// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Basque (`eu`).
class AppLocalizationsEu extends AppLocalizations {
  AppLocalizationsEu([String locale = 'eu']) : super(locale);

  @override
  String get appTitle => 'Ala Bidea';

  @override
  String get home => 'Hasiera';

  @override
  String get quran => 'Korana';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Egutegia';

  @override
  String get settings => 'Ezarpenak';

  @override
  String get nextPrayer => 'Hurrengo Otoitza';

  @override
  String get prayerTimes => 'Otoitz Orduak';

  @override
  String get continueReading => 'Jarraitu Irakurtzen';

  @override
  String get getLifetimePro => 'Lortu Lifetime Pro';

  @override
  String get unlockTajweed => 'Desblokeatu Tajweed eta Ezaugarri aurreratuak';

  @override
  String get prayerCalculation => 'Otoitzaren kalkulua';

  @override
  String get method => 'Kalkulu metodoa';

  @override
  String get madhab => 'Asr metodo juridikoa';

  @override
  String get surahs => 'Surak';

  @override
  String get ayahs => 'Aiak';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Egunsentia';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Magreb';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName egiteko ordua';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '$prayerName otoitz egiteko garaia da.';
  }

  @override
  String get dataStorage => 'Datuak eta biltegiratzea';

  @override
  String get clearCache => 'Garbitu cachea';

  @override
  String get cacheClearedSuccess => 'Cachea behar bezala garbitu da';

  @override
  String get location => 'Kokapena';

  @override
  String get language => 'Hizkuntza';

  @override
  String get selectLanguage => 'Hautatu Hizkuntza';

  @override
  String get searchLanguage => 'Bilatu 180 hizkuntza baino gehiago...';

  @override
  String get systemDefault => 'Sistema lehenetsia';

  @override
  String get currentLocation => 'Uneko kokapena (GPS)';

  @override
  String get locationServiceDisabled => 'Kokapen zerbitzua desgaituta dago.';

  @override
  String get locationPermissionDenied => 'Kokapen-baimena ukatu da.';

  @override
  String citiesCount(String count) {
    return '$count hiriak';
  }

  @override
  String get search => 'Bilatu';

  @override
  String get searchHint => 'Bilatu...';

  @override
  String get noResults => 'Ez da emaitzarik aurkitu';

  @override
  String get loading => 'Kargatzen...';

  @override
  String get error => 'Errorea';

  @override
  String get retry => 'Saiatu berriro';

  @override
  String get cancel => 'Utzi';

  @override
  String get save => 'Gorde';

  @override
  String get delete => 'Ezabatu';

  @override
  String get edit => 'Editatu';

  @override
  String get close => 'Itxi';

  @override
  String get ok => 'Ados';

  @override
  String get yes => 'Bai';

  @override
  String get no => 'Ez';

  @override
  String get surah => 'Sura';

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Orria';

  @override
  String get reading => 'Irakurketa';

  @override
  String get recitation => 'Errezitazioa';

  @override
  String get translation => 'Itzulpena';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get bookmarks => 'Laster-markak';

  @override
  String get addBookmark => 'Gehitu laster-marka';

  @override
  String get removeBookmark => 'Kendu laster-marka';

  @override
  String get lastRead => 'Azken Irakurketa';

  @override
  String get dailyZikr => 'Eguneko Zikr';

  @override
  String get morningZikr => 'Goizean Zikr';

  @override
  String get eveningZikr => 'Arratsaldeko Zikr';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masa\'il';

  @override
  String get hadith => 'Hadith';

  @override
  String get hadithCollection => 'Hadith bilduma';

  @override
  String get hadithBooks => 'Hadith Liburuak';

  @override
  String get searchHadith => 'Bilatu Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Ala izenak';

  @override
  String get liveTv => 'Zuzeneko telebista';

  @override
  String get watchLive => 'Ikusi Zuzenean';

  @override
  String get streamError => 'Erreprodukzio-errorea';

  @override
  String get reload => 'Berriz kargatu';

  @override
  String get openInYoutube => 'Ireki YouTube-n';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Baraualdia';

  @override
  String get quranReading => 'Koranaren irakurketa';

  @override
  String get prayers => 'Otoitzak';

  @override
  String get dhikrCount => 'Dhikr Kondea';

  @override
  String get weeklyProgress => 'Asteroko Aurrerapena';

  @override
  String get monthlyProgress => 'Hileko Aurrerapena';

  @override
  String get statistics => 'Estatistikak';

  @override
  String get hijriCalendar => 'Hijri Egutegia';

  @override
  String get gregorianCalendar => 'Egutegi gregorianoa';

  @override
  String get today => 'Gaur';

  @override
  String get tomorrow => 'Bihar';

  @override
  String get yesterday => 'Atzo';

  @override
  String get specialDays => 'Egun bereziak';

  @override
  String get ramadan => 'Ramadana';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'Qibla Zuzendaritza';

  @override
  String get compass => 'Iparrorratza';

  @override
  String get degrees => 'graduak';

  @override
  String get north => 'Ipar';

  @override
  String get qiblaFound => 'Qibla aurkitu!';

  @override
  String get turnDevice => 'Biratu gailua Qiblari begira';

  @override
  String get notifications => 'Jakinarazpenak';

  @override
  String get prayerNotifications => 'Otoitz jakinarazpenak';

  @override
  String get enableNotifications => 'Gaitu Jakinarazpenak';

  @override
  String get notificationTime => 'Jakinarazpen-ordua';

  @override
  String get beforePrayer => 'otoitza baino minutu lehenago';

  @override
  String get theme => 'Gaia';

  @override
  String get lightMode => 'Argi modua';

  @override
  String get darkMode => 'Modu iluna';

  @override
  String get systemTheme => 'Sistemaren gaia';

  @override
  String get about => 'Buruz';

  @override
  String get version => 'Bertsioa';

  @override
  String get privacyPolicy => 'Pribatutasun-politika';

  @override
  String get termsOfService => 'Zerbitzu-baldintzak';

  @override
  String get contactUs => 'Jarri gurekin harremanetan';

  @override
  String get rateApp => 'Tarifa aplikazioa';

  @override
  String get shareApp => 'Partekatu aplikazioa';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Begiratu $appName: Islamiar bizimoduaren azken aplikazioa! $url';
  }

  @override
  String get downloadManager => 'Deskarga kudeatzailea';

  @override
  String get downloads => 'Deskargak';

  @override
  String get downloading => 'Deskargatzen...';

  @override
  String get downloadComplete => 'Deskarga osoa';

  @override
  String get downloadFailed => 'Deskargatu huts egin du';

  @override
  String get offlineMode => 'Lineaz kanpoko modua';

  @override
  String get noInternet => 'Ez dago Interneteko konexiorik';

  @override
  String get checkConnection => 'Mesedez, egiaztatu zure konexioa';

  @override
  String get premium => 'Premium';

  @override
  String get upgradeToPro => 'Berritu Pro-ra';

  @override
  String get proFeatures => 'Pro Ezaugarriak';

  @override
  String get removeAds => 'Kendu iragarkiak';

  @override
  String get unlockAll => 'Desblokeatu Eduki guztia';

  @override
  String get exclusiveContent => 'Eduki esklusiboak';

  @override
  String get welcome => 'Ongi etorri';

  @override
  String get getStarted => 'Hasi';

  @override
  String get skip => 'Saltatu';

  @override
  String get next => 'Hurrengoa';

  @override
  String get done => 'Eginda';

  @override
  String get onboarding1Title => 'Ongi etorri Ala Bidera';

  @override
  String get onboarding1Desc =>
      'Zure islamiar aplikazio osoa otoitz garaietarako, Koranerako eta abarretarako';

  @override
  String get onboarding2Title => 'Otoitz Orduak';

  @override
  String get onboarding2Desc => 'Otoitz ordu zehatzak zure kokapenaren arabera';

  @override
  String get onboarding3Title => 'Quran eta gehiago';

  @override
  String get onboarding3Desc =>
      'Irakurri Quran, jarraitu zure irakurketa eta arakatu islamiar edukia';

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
  String get diagnosticsNotSet => 'Ezarrita';

  @override
  String get diagnosticsPrayerProfile => 'Otoitzaren profila';

  @override
  String get diagnosticsPrayerSource => 'Otoitz Agintaritza';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Pertsonalizatua / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Eskuzko angelu pertsonalizatuak (iturri instituzionala ez)';

  @override
  String get diagnosticsCloudDriven => 'Hodeian bultzatuta';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Aktiboak';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Quran Audio Aktiboak';

  @override
  String get diagnosticsAudioAssets => 'Audio-aktiboak';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count fitxategiak';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifestuaren irakurketa huts egin du: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Lokalizazio lokalak';

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
  String get dailyVerse => 'Eguneko Bertsoa';

  @override
  String get todaysIbadah => 'Gaur Ibadah';

  @override
  String get quickAccess => 'Sarbide azkarra';

  @override
  String get assistant => 'Laguntzailea';

  @override
  String get places => 'Lekuak';

  @override
  String get library => 'Liburutegia';

  @override
  String get analytics => 'Analitika';

  @override
  String get dailyDuas => 'Egunero Duas';

  @override
  String essentialDuas(String count) {
    return '$count ezinbestekoak dira';
  }

  @override
  String get duaUnavailableTitle =>
      'Egiaztatutako duak ez daude eskuragarri oraindik';

  @override
  String get duaUnavailableBody =>
      'Egiaztatutako eguneroko duak ez dira oraindik sinkronizatu gailu honekin. Konektatu hodeiko iturburura iturriko duak kargatzeko, egiaztatu gabeko ordezkapen baten ordez.';

  @override
  String get duaCategoryQuranic => 'Koranikoa dua';

  @override
  String get duaCategoryMorningEvening => 'Goizez eta arratsaldez';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Babesa';

  @override
  String get duaCategoryBeginning => 'Hastapenak';

  @override
  String get duaCategorySleep => 'Lo egin';

  @override
  String get duaCategoryFoodDrink => 'Janaria eta edaria';

  @override
  String get duaCategoryForgiveness => 'Barkamena';

  @override
  String get duaCategoryHome => 'Hasiera';

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
  String get islamicEducation => 'Hezkuntza Islamikoa';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Hadith Bildumak';

  @override
  String get hadithSourcePending => 'Egiaztatutako iturria zain dago';

  @override
  String get hadithUnavailableTitle =>
      'Egiaztatutako hadith bildumak ez daude eskuragarri oraindik';

  @override
  String get hadithUnavailableBody =>
      'Eraikuntza hau egiaztatu gabeko kanpoko hadith jario baten menpe dago oraindik. Hadith arakatzea desgaituta egongo da jatorriko datu-multzo bat sinkronizatu arte.';

  @override
  String get paywallUnlockAll =>
      'Desblokeatu eginbide guztiak zure bidaia espiritualerako';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'AI bidezko galdera-erantzun mugagabeak';

  @override
  String get paywallFeature2Title => 'Lineaz kanpo mugarik gabe';

  @override
  String get paywallFeature2Desc => 'Deskargatu errezitazio guztiak';

  @override
  String get paywallFeature3Title => 'Diseinu esklusiboak';

  @override
  String get paywallFeature3Desc => 'Premium gaiak eta letra-tipoak';

  @override
  String get paywallFeature4Title => 'Iragarkirik gabe';

  @override
  String get paywallFeature4Desc => 'Zero iragarkiak';

  @override
  String get paywallGetAccess => 'Lortu bizitza osorako sarbidea - \$ 1.00';

  @override
  String get restorePurchases => 'Berreskuratu Erosketak';

  @override
  String get zakatCalculator => 'Zakat kalkulagailua';

  @override
  String get zakatGold => 'Urrea (Altın)';

  @override
  String get zakatSilver => 'Zilarrezkoa (Gümüş)';

  @override
  String get zakatCashBank => 'Dirua / Bankua';

  @override
  String get zakatBusiness => 'Negozioak';

  @override
  String get zakatInvestments => 'Inbertsioak';

  @override
  String get zakatWeightGrams => 'Pisua (g)';

  @override
  String get zakatPricePerGram => 'Prezioa/g';

  @override
  String get zakatTotalAmount => 'Zenbateko osoa';

  @override
  String get zakatInventoryValue => 'Inbentarioaren balioa';

  @override
  String get zakatDebts => 'Zorrak';

  @override
  String get zakatTotal => 'Guztira';

  @override
  String get calculateZakat => 'Kalkulatu zakat';

  @override
  String get nisabNotReached =>
      'Nisab ez da iritsi. Zakat ez da derrigorrezkoa.';

  @override
  String get totalZakat => 'Guztira Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Aktiboak: $assets';
  }

  @override
  String get zakatGoldZakat => 'Urrezko Zakat';

  @override
  String get zakatSilverZakat => 'Zilarrezko Zakat';

  @override
  String get zakatCashZakat => 'Eskudirutan Zakat';

  @override
  String get zakatBusinessZakat => 'Enpresa Zakat';

  @override
  String get zakatInvestmentZakat => 'Inbertsio Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Eguneko kontsulten mugara iritsi da. Igotu Premium-era mugarik gabe.';

  @override
  String get chatbotErrorMsg =>
      'Ezin izan dut erantzunik sortu. Mesedez, saiatu berriro.';

  @override
  String get chatbotOfflinePrompt =>
      'Egiaztatutako lineaz kanpoko ezagutza base islamiarra zaintzen ari da oraindik. Lineaz kanpoko babesa gaitu dezakezu orain, baina mezu seguru mugatuak soilik erakutsiko ditu jatorriko datu-multzoa prest dagoen arte.\n\nLineaz kanpoko babesa gaitu nahi duzu?';

  @override
  String get chatbotOfflineSwitched =>
      'Lineaz kanpoko babesa gaituta. Egiaztatutako tokiko erantzun islamiarrak ez daude prest oraindik.';

  @override
  String get chatbotOfflineDownloadLabel => 'Gaitu Lineaz kanpoko Fallback';

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
  String get sukunMixerSubtitle => 'Natura eta Koranaren nahasketa';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (Natura)';

  @override
  String get sukunRainOfMercy => 'Errukiaren euria';

  @override
  String get sukunGardenOfPeace => 'Bakearen Lorategia';

  @override
  String get sukunMidnightCalm => 'Gauerdiko Lasai';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Soinu-paisaiak ez daude erabilgarri';

  @override
  String get sukunUnavailableBody =>
      'Eraikuntza honek oraindik ez ditu Sukunen soinu-paisaia-aktiborik behar.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Eguneko marra';

  @override
  String get bestStreak => 'Boladarik onena';

  @override
  String get chatbotCloudAiLabel => 'Hodei AI';

  @override
  String get chatbotLocalAiLabel => 'Lineaz kanpoko Fallback';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Gaitu Lineaz kanpoko Fallback';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count geratzen da';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Hodeiko APIa ez dago konfiguratuta. Mesedez, aldatu Tokiko AI-ra.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Egiaztatutako tokiko orientazio islamikoa ez dago oraindik erabilgarri. Aldatu Cloud AI-ra iturriko erantzunak lortzeko.';

  @override
  String get mosques => 'Meskitak';

  @override
  String get halalFood => 'Halal Elikadura';

  @override
  String get placesSearchArea => 'Bilatu eremu honetan';

  @override
  String get nearbyMosques => 'Inguruko meskitak';

  @override
  String get islamicSchools => 'Eskola Islamikoak';

  @override
  String placesFoundCount(String count) {
    return '$count aurkitu da';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km-ra';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API errorea: $statusCode';
  }

  @override
  String get placesNetworkError => 'Sareko errorea. Mesedez, saiatu berriro.';

  @override
  String get unknownPlaceName => 'Izen ezezaguna';

  @override
  String get islamicPlaceFallback => 'Leku Islamikoa';
}
