// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Welsh (`cy`).
class AppLocalizationsCy extends AppLocalizations {
  AppLocalizationsCy([String locale = 'cy']) : super(locale);

  @override
  String get appTitle => 'Ffordd Allah';

  @override
  String get home => 'Cartref';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Calendr';

  @override
  String get settings => 'Gosodiadau';

  @override
  String get nextPrayer => 'Gweddi nesaf';

  @override
  String get prayerTimes => 'Amseroedd Gweddi';

  @override
  String get continueReading => 'Parhau i Ddarllen';

  @override
  String get getLifetimePro => 'Cael Lifetime Pro';

  @override
  String get unlockTajweed => 'Datgloi Tajweed a Nodweddion Uwch';

  @override
  String get prayerCalculation => 'Cyfrifiad Gweddi';

  @override
  String get method => 'Dull Cyfrifo';

  @override
  String get madhab => 'Dull Awdurdodol Asr';

  @override
  String get surahs => 'Surahs';

  @override
  String get ayahs => 'Ystyr geiriau: Ayahs';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Codiad yr haul';

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
    return 'Amser ar gyfer $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Mae\'n amser i weddïo $prayerName.';
  }

  @override
  String get dataStorage => 'Data a Storio';

  @override
  String get clearCache => 'Clirio Cache';

  @override
  String get cacheClearedSuccess => 'Clirio\'r storfa yn llwyddiannus';

  @override
  String get location => 'Lleoliad';

  @override
  String get language => 'Iaith';

  @override
  String get selectLanguage => 'Dewiswch Iaith';

  @override
  String get searchLanguage => 'Chwilio 180+ o ieithoedd...';

  @override
  String get systemDefault => 'System ddiofyn';

  @override
  String get currentLocation => 'Lleoliad Presennol (GPS)';

  @override
  String get locationServiceDisabled => 'Location service is disabled.';

  @override
  String get locationPermissionDenied => 'Location permission denied.';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => 'Chwiliwch';

  @override
  String get searchHint => 'Chwilio...';

  @override
  String get noResults => 'Heb ganfod canlyniadau';

  @override
  String get loading => 'Wrthi\'n llwytho...';

  @override
  String get error => 'Gwall';

  @override
  String get retry => 'Ceisiwch eto';

  @override
  String get cancel => 'Canslo';

  @override
  String get save => 'Arbed';

  @override
  String get delete => 'Dileu';

  @override
  String get edit => 'Golygu';

  @override
  String get close => 'Cau';

  @override
  String get ok => 'iawn';

  @override
  String get yes => 'Oes';

  @override
  String get no => 'Nac ydw';

  @override
  String get surah => 'Surah';

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Tudalen';

  @override
  String get reading => 'Darllen';

  @override
  String get recitation => 'Llefaru';

  @override
  String get translation => 'Cyfieithiad';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get bookmarks => 'Llyfrnodau';

  @override
  String get addBookmark => 'Ychwanegu Nod tudalen';

  @override
  String get removeBookmark => 'Dileu Nod tudalen';

  @override
  String get lastRead => 'Darlleniad Diwethaf';

  @override
  String get dailyZikr => 'Zikr dyddiol';

  @override
  String get morningZikr => 'Bore Zikr';

  @override
  String get eveningZikr => 'Zikr hwyr';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masa\'il';

  @override
  String get hadith => 'Hadith';

  @override
  String get hadithCollection => 'Casgliad Hadith';

  @override
  String get hadithBooks => 'Llyfrau Hadith';

  @override
  String get searchHadith => 'Chwilio Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Enwau Allah';

  @override
  String get liveTv => 'Teledu byw';

  @override
  String get watchLive => 'Gwyliwch yn Fyw';

  @override
  String get streamError => 'Gwall ffrwd';

  @override
  String get reload => 'Ail-lwytho';

  @override
  String get openInYoutube => 'Agor yn YouTube';

  @override
  String get ibadahTracker => 'Traciwr Ibadah';

  @override
  String get fasting => 'Ymprydio';

  @override
  String get quranReading => 'Darllen Quran';

  @override
  String get prayers => 'Gweddiau';

  @override
  String get dhikrCount => 'Cyfrif Dhikr';

  @override
  String get weeklyProgress => 'Cynnydd Wythnosol';

  @override
  String get monthlyProgress => 'Cynnydd Misol';

  @override
  String get statistics => 'Ystadegau';

  @override
  String get hijriCalendar => 'Calendr Hijri';

  @override
  String get gregorianCalendar => 'Calendr Gregori';

  @override
  String get today => 'Heddiw';

  @override
  String get tomorrow => 'Yfory';

  @override
  String get yesterday => 'Ddoe';

  @override
  String get specialDays => 'Dyddiau Arbennig';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'Cyfeiriad Qibla';

  @override
  String get compass => 'Cwmpawd';

  @override
  String get degrees => 'graddau';

  @override
  String get north => 'Gogledd';

  @override
  String get qiblaFound => 'Qibla dod o hyd!';

  @override
  String get turnDevice => 'Trowch eich dyfais i wynebu\'r Qibla';

  @override
  String get notifications => 'Hysbysiadau';

  @override
  String get prayerNotifications => 'Hysbysiadau Gweddi';

  @override
  String get enableNotifications => 'Galluogi Hysbysiadau';

  @override
  String get notificationTime => 'Amser Hysbysu';

  @override
  String get beforePrayer => 'munudau cyn gweddi';

  @override
  String get theme => 'Thema';

  @override
  String get lightMode => 'Modd Ysgafn';

  @override
  String get darkMode => 'Modd Tywyll';

  @override
  String get systemTheme => 'Thema System';

  @override
  String get about => 'Ynghylch';

  @override
  String get version => 'Fersiwn';

  @override
  String get privacyPolicy => 'Polisi Preifatrwydd';

  @override
  String get termsOfService => 'Telerau Gwasanaeth';

  @override
  String get contactUs => 'Cysylltwch â Ni';

  @override
  String get rateApp => 'App Cyfradd';

  @override
  String get shareApp => 'Rhannu App';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Rheolwr Lawrlwytho';

  @override
  String get downloads => 'Lawrlwythiadau';

  @override
  String get downloading => 'Wrthi\'n llwytho i lawr...';

  @override
  String get downloadComplete => 'Lawrlwytho Cyflawn';

  @override
  String get downloadFailed => 'Wedi methu llwytho i lawr';

  @override
  String get offlineMode => 'Modd All-lein';

  @override
  String get noInternet => 'Dim Cysylltiad Rhyngrwyd';

  @override
  String get checkConnection => 'Gwiriwch eich cysylltiad';

  @override
  String get premium => 'Premiwm';

  @override
  String get upgradeToPro => 'Uwchraddio i Pro';

  @override
  String get proFeatures => 'Nodweddion Pro';

  @override
  String get removeAds => 'Dileu Hysbysebion';

  @override
  String get unlockAll => 'Datgloi\'r Holl Gynnwys';

  @override
  String get exclusiveContent => 'Cynnwys Unigryw';

  @override
  String get welcome => 'Croeso';

  @override
  String get getStarted => 'Cychwyn Arni';

  @override
  String get skip => 'Sgipio';

  @override
  String get next => 'Nesaf';

  @override
  String get done => 'Wedi\'i wneud';

  @override
  String get onboarding1Title => 'Croeso i Ffordd Allah';

  @override
  String get onboarding1Desc =>
      'Eich ap cydymaith Islamaidd cyflawn ar gyfer amseroedd gweddi, Quran, a mwy';

  @override
  String get onboarding2Title => 'Amseroedd Gweddi';

  @override
  String get onboarding2Desc =>
      'Amseroedd gweddi cywir yn seiliedig ar eich lleoliad';

  @override
  String get onboarding3Title => 'Quran a Mwy';

  @override
  String get onboarding3Desc =>
      'Darllenwch Quran, olrhain eich darllen, ac archwilio cynnwys Islamaidd';

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
  String get diagnosticsNotSet => 'Heb ei osod';

  @override
  String get diagnosticsPrayerProfile => 'Proffil Gweddi';

  @override
  String get diagnosticsPrayerSource => 'Awdurdod Gweddi';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manual custom angles (no institutional source)';

  @override
  String get diagnosticsCloudDriven => 'Gyrrwr Cwmwl';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Quran Audio Assets';

  @override
  String get diagnosticsAudioAssets => 'Asedau Sain';

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
  String get dailyVerse => 'Pennill Dyddiol';

  @override
  String get todaysIbadah => 'Ibadah heddiw';

  @override
  String get quickAccess => 'Mynediad Cyflym';

  @override
  String get assistant => 'Cynorthwy-ydd';

  @override
  String get places => 'Lleoedd';

  @override
  String get library => 'Llyfrgell';

  @override
  String get analytics => 'Dadansoddeg';

  @override
  String get dailyDuas => 'Duas Dyddiol';

  @override
  String essentialDuas(String count) {
    return '$count deuodau hanfodol';
  }

  @override
  String get duaUnavailableTitle => 'Nid yw deuodau wedi\'u dilysu ar gael eto';

  @override
  String get duaUnavailableBody =>
      'Nid yw deuodau dyddiol wedi\'u dilysu wedi\'u cysoni â\'r ddyfais hon eto. Cysylltwch â ffynhonnell y cwmwl i lwytho deuodau o ffynonellau yn lle wrth gefn heb ei wirio.';

  @override
  String get duaCategoryQuranic => 'Dua Quranic';

  @override
  String get duaCategoryMorningEvening => 'Bore a Hwyr';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Amddiffyniad';

  @override
  String get duaCategoryBeginning => 'Dechreuadau';

  @override
  String get duaCategorySleep => 'Cwsg';

  @override
  String get duaCategoryFoodDrink => 'Bwyd a Diod';

  @override
  String get duaCategoryForgiveness => 'Maddeuant';

  @override
  String get duaCategoryHome => 'Cartref';

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
  String get islamicEducation => 'Addysg Islamaidd';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Casgliadau Hadith';

  @override
  String get hadithSourcePending => 'Ffynhonnell wedi\'i dilysu yn yr arfaeth';

  @override
  String get hadithUnavailableTitle =>
      'Nid yw casgliadau hadith wedi\'u dilysu ar gael eto';

  @override
  String get hadithUnavailableBody =>
      'Mae\'r adeiladwaith hwn yn dal i ddibynnu ar borthiant hadith allanol heb ei wirio. Mae pori Hadith yn aros yn anabl nes bod set ddata o ffynhonnell wedi\'i chysoni.';

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
      'Mae\'r sylfaen wybodaeth Islamaidd all-lein wedi\'i dilysu yn dal i gael ei churadu. Gallwch chi alluogi wrth gefn all-lein nawr, ond dim ond negeseuon diogel cyfyngedig y bydd yn eu dangos nes bod y set ddata o ffynonellau yn barod.\n\nHoffech chi alluogi wrth gefn all-lein?';

  @override
  String get chatbotOfflineSwitched =>
      'Galluogi wrth gefn all-lein. Nid yw atebion Islamaidd lleol wedi\'u dilysu yn barod eto.';

  @override
  String get chatbotOfflineDownloadLabel => 'Galluogi All-lein Wrth Gefn';

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
  String get chatbotLocalAiLabel => 'All-lein wrth gefn';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Galluogi All-lein Wrth Gefn';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API not configured. Please switch to Local AI.';

  @override
  String get chatbotLocalNoInfo =>
      '[All-lein] Nid yw canllawiau Islamaidd lleol wedi\'u dilysu ar gael eto. Newidiwch i Cloud AI i gael atebion o ffynonellau.';

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
