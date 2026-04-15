// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Shona (`sn`).
class AppLocalizationsSn extends AppLocalizations {
  AppLocalizationsSn([String locale = 'sn']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Nzira yechiIslam yeChiedza';

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
  String get sunrise => 'Kubuda kwezuva';

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
    return 'Nguva ye$prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Yave nguva yekunamata $prayerName.';
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
  String get locationServiceDisabled => 'Sevhisi yenzvimbo yakadzimwa.';

  @override
  String get locationPermissionDenied => 'Mvumo yenzvimbo yarambwa.';

  @override
  String get locationDetectionFailed =>
      'Hatina kukwanisa kuona nzvimbo yako. Ndapota sarudza guta nemaoko kana edza zvakare.';

  @override
  String citiesCount(String count) {
    return '$count maguta';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'Hapana zvawanikwa';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get appErrorOccurred => 'Paitika chikanganiso';

  @override
  String get appUnknownError => 'Kukanganisa kusingazivikanwe';

  @override
  String get quranLoadFailed => 'Korani yatadza kurodha. Ndapota edza zvakare.';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Refresh';

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
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

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
  String get tafsirLoading => 'Kurodha tafsir...';

  @override
  String get tafsirSourceLabel => 'Tafsir source';

  @override
  String get tafsirNoSurahFound => 'Hapana tafsir yawanikwa yesurah iyi.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Hapana tafsir yawanikwa yeayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir yatadza kurodha.';

  @override
  String get tafsirNoTextForAyah => 'Hapana mavara etafsir eiyi ayah.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Kudhaunirodha tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Kurodha tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir kwakabva kwadzosa HTTP $statusCode kukanganisa.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Mabviro etafsir akasarudzwa haana kudzoka.';

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
  String get duaMeaning1 =>
      'vamwe vanonamata vachiti, ‘Ishe wedu, tipei zvakanaka munyika ino uye muHera, uye tidzivirirei kubva kumarwadzo emoto.';

  @override
  String get duaMeaning2 =>
      'Allah haaremedzi chero mweya upi zvawo nezvaunokwanisa kutakura: mumwe nemumwe anowana chero chakanaka chaakaita, uye anotambura nekuipa kwawo- ‘Ishe, musatitorera mhosva kana tikakanganwa kana kukanganisa. Ishe musatiremedza sezvamakaremedza avo vaiva pamberi pedu. Ishe musatiremedza nesimba rinopfuura ratiinaro. Tiregererei, tiregererei, mutinzwirewo tsitsi. Ndimi Mudziviriri wedu, saka tibatsirei pane avo vasingatendi.';

  @override
  String get duaMeaning3 =>
      '‘Tenzi vedu, musarega mwoyo yedu ichitsauka mushure mekunge matitungamirira. Tipeiwo ngoni dzenyu: Ndimi Munogara Achipa.';

  @override
  String get duaMeaning4 =>
      'Ishe itai kuti ini nevana vangu tichengete munyengetero. Ishe wedu, gamuchirai chikumbiro changu.';

  @override
  String get duaMeaning5 =>
      'uye udzikise bapiro rako mukuzvininipisa kwavari netsitsi uye uti, ‘Ishe, vanzwirei ngoni, sokundichengeta kwavakaita ndichiri muduku.';

  @override
  String get duaMeaning6 =>
      'ngaakudzwe Mwari, iye anotonga zvirokwazvo. [Muporofita], usamhanyire kutaura zvakazarurwa zvisati zvakwana asi iti, ‘Ishe, ndiwedzerei muzivo!’';

  @override
  String get duaMeaning7 =>
      'Iti [Muporofita], ‘Ishe, kanganwirai uye muve netsitsi: Imi ndimi mune tsitsi huru kupfuura vose.';

  @override
  String get duaMeaning8 =>
      'avo vanonamata vachiti, ‘Ishe wedu, tipei mufaro muwanano yedu uye muvana vedu. Tiitirei mienzaniso yakanaka kune avo vanokuzivai\'.';

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
  String get hadithCollection => 'Hadith Collection';

  @override
  String get hadithBooks => 'Hadith Books';

  @override
  String get searchHadith => 'Tsvaga Hadith';

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
  String get openInYoutube => 'Vhura muYouTube';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Fasting';

  @override
  String get quranReading => 'Quran Reading';

  @override
  String get prayers => 'Prayers';

  @override
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '${hours}h ${minutes}m';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '${minutes}m';
  }

  @override
  String get prayerRemainingUnavailable => '--';

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
  String get islamicNewYear => 'Goredzva reIslam';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadan';

  @override
  String get specialDayDateEidAlFitr => '1 Shawwal';

  @override
  String get specialDayDateEidAlAdha => '10 Dhul Hijjah';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharram';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabi al-Awwal';

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
    return 'Compass kukanganisa: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Compass sensor haisi kuwanikwa pamudziyo uyu.';

  @override
  String get qiblaLocationRequiredTitle => 'Nzvimbo inodiwa kuQibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Seta nzvimbo yako chaiyo usati washandisa kambasi yeQibla kuti gwara rigone kuverengerwa nemazvo.';

  @override
  String get adhanNotificationChannelName => 'Adhan Notifications';

  @override
  String get adhanNotificationChannelDescription =>
      'Nyevero yenguva yemunamato ine adhan ruzha.';

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
    return 'Tarisa uone $appName: Yekupedzisira mararamiro echiIslam app! $url';
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
  String get downloadFailed => 'Kudhaunirodha Kwakundikana';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'Hapana Indaneti';

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
  String get zikrCompletedMashAllah => 'Yakapedzwa! MashAllah';

  @override
  String get zikrMeaningSubhanAllah => 'Allah vari pamusoro pekusakwana kwese.';

  @override
  String get zikrMeaningAlhamdulillah => 'Kurumbidzwa kwese ndekwaAllah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah ndivo Mukuru.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Hakuna mwari kunze kwaAllah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Ndinokumbira ruregerero kuna Allah.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Hapana simba uye hapana simba kunze kwekuna Allah.';

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
  String get offlineDownloadManager => 'Offline Download Maneja';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Sunungura chengetedzo yemukati memudziyo.';

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
  String get audioVoiceMisharyAlafasy => 'Murume (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Murume (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Murume (Sudais)';

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
  String get diagnosticsPrayerProfile => 'Nhoroondo Yemunamato';

  @override
  String get diagnosticsPrayerSource => 'Chiremera Chomunyengetero';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Tsika / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manual tsika angles (hapana masangano sosi)';

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
    return '$count mafaira';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifest yakaverengwa yakundikana: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Localization Nzvimbo';

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
      'Cloud tables isipo muSupabase; bundled fallback inoshanda';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz metadata isipo; bundled structural fallback inoshanda';

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
  String get todaysIbadah => 'Nhasi Ibadah';

  @override
  String get quickAccess => 'Quick Access';

  @override
  String get assistant => 'Mubatsiri';

  @override
  String get places => 'Nzvimbo';

  @override
  String get library => 'Library';

  @override
  String get analytics => 'Analytics';

  @override
  String get dailyDuas => 'Daily Duas';

  @override
  String essentialDuas(String count) {
    return '$count maduas akakosha';
  }

  @override
  String get duaUnavailableTitle => 'Maduas akasimbiswa haasati awanikwa';

  @override
  String get duaUnavailableBody =>
      'Madua emazuva ese anosimbiswa haasati awiriraniswa pamudziyo uyu. Batanidza kune iyo cloud source kuti uise sourced duas pachinzvimbo chefour unverified fallback.';

  @override
  String get duaCategoryQuranic => 'Quran dua';

  @override
  String get duaCategoryMorningEvening => 'Mangwanani & Manheru';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Dziviriro';

  @override
  String get duaCategoryBeginning => 'Mavambo';

  @override
  String get duaCategorySleep => 'Rara';

  @override
  String get duaCategoryFoodDrink => 'Zvokudya Nekunwa';

  @override
  String get duaCategoryForgiveness => 'Kukanganwira';

  @override
  String get duaCategoryHome => 'Kumba';

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
  String get islamicEducation => 'Dzidzo yechiIslam';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Vadivelu Comedy Hadith Collections';

  @override
  String get hadithSourcePending => 'Verified source yakamirira';

  @override
  String get hadithUnavailableTitle =>
      'Verified hadith collections haisati yavapo';

  @override
  String get hadithUnavailableBody =>
      'Ichi chivakwa chichiri kutsamira pane isina kusimbiswa ekunze hadith feed. Kubhurawuza kweHadith kunoramba kwakavharwa kudzamara dataset yawanikwa yawiriraniswa.';

  @override
  String get paywallUnlockAll => 'Vhura zvese zverwendo rwako rwemweya';

  @override
  String get premiumProductUnavailable =>
      'Premium chigadzirwa hachipo pari zvino. Ndapota edza zvakare gare gare.';

  @override
  String get premiumPurchaseFailed =>
      'Kutenga kwatadza kupedzwa. Ndapota edza zvakare.';

  @override
  String get paywallFeature1Title => 'Neural Mubatsiri Plus';

  @override
  String get paywallFeature1Desc => 'Unlimited AI-powered Q&A';

  @override
  String get paywallFeature2Title => 'Unlimited Offline';

  @override
  String get paywallFeature2Desc => 'Dhaunirodha zvese zvakadzokororwa';

  @override
  String get paywallFeature3Title => 'Exclusive Designs';

  @override
  String get paywallFeature3Desc => 'Premium themes & mafonti';

  @override
  String get paywallFeature4Title => 'Ad-Yemahara';

  @override
  String get paywallFeature4Desc => 'Zero zviziviso';

  @override
  String get paywallGetAccess => 'Wana Hupenyu Hwose Kuwana - \$1.00';

  @override
  String get restorePurchases => 'Dzorera Zvakatengwa';

  @override
  String get zakatCalculator => 'Zakat Calculator';

  @override
  String get zakatGold => 'Ndarama (Altın)';

  @override
  String get zakatSilver => 'Sirivha (Gümüş)';

  @override
  String get zakatCashBank => 'Mari / Bank';

  @override
  String get zakatBusiness => 'Business';

  @override
  String get zakatInvestments => 'Investments';

  @override
  String get zakatWeightGrams => 'Huremu (g)';

  @override
  String get zakatPricePerGram => 'Mutengo/g';

  @override
  String get zakatTotalAmount => 'Total Amount';

  @override
  String get zakatInventoryValue => 'Inventory Value';

  @override
  String get zakatDebts => 'Zvikwereti';

  @override
  String get zakatTotal => 'Total';

  @override
  String get calculateZakat => 'Verenga Zakat';

  @override
  String get nisabNotReached => 'Nisab haina kusvika. Zakat haisungirwe.';

  @override
  String get totalZakat => 'Total Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Asset: $assets';
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
      'Zuva rega rega remubvunzo wasvika. Simudzira kuPremium kune isina muganho.';

  @override
  String get chatbotErrorMsg =>
      'Handina kukwanisa kupa mhinduro. Ndapota edza zvakare.';

  @override
  String get chatbotOfflinePrompt =>
      'Iyo yakasimbiswa isina Indaneti ruzivo rwechiIslam ichiri kuchengetedzwa. Iwe unogona kugonesa offline fallback izvozvi, asi inongoratidza mashoma akachengeteka mameseji kusvika sourced dataset yagadzirira.\n\nUnoda kugonesa kudzoreredza pasina indaneti here?';

  @override
  String get chatbotOfflineSwitched =>
      'Offline fallback yakabatidzwa. Mhinduro dzechiIslam dzemuno dzakasimbiswa hadzisati dzagadzirira.';

  @override
  String get chatbotOfflineDownloadLabel => 'Bvisa Offline Fallback';

  @override
  String get downloadPreparing => 'Kugadzirira kudhaunirodha...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Kudhaunirodha surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Masurah ese akatodhawunirodha kune ino reciter.';

  @override
  String get offlineQuranAudioPacks => 'Offline Quran Audio Packs';

  @override
  String storedOnDeviceMb(String size) {
    return 'Stored on device: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total ma surah akadhaunirodwa';
  }

  @override
  String get redownloadMissingRepair => 'Kugadzirisa / Dhaunirodha Isipo';

  @override
  String get downloadAction => 'Download';

  @override
  String get resumeDownload => 'Resume Download';

  @override
  String get deleteDownloadedFiles => 'Delete Downloaded Files';

  @override
  String get downloadCancelling => 'Kukanzura...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Kudhaunirodha kwakanzurwa ku$reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Kudhaunirodha kwe$reciter kwapera.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Kudhaunirodha kwapera nokuda kwe $reciter ne $failed ma surah akundikana ($downloaded/$total akadhaunirodwa).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Deleted offline files for $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Verified Quran audio sources haasi kuwanikwa pari zvino.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Everified Quran audio pack haina kukwana ($available/$total). Zorora mbeu yegore uye edza zvakare.';
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
  String get sukunRainOfMercy => 'Kunaya kweNgoni';

  @override
  String get sukunGardenOfPeace => 'Bindu reRugare';

  @override
  String get sukunMidnightCalm => 'Pakati pehusiku Dzikama';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Soundscapes haisi kuwanikwa';

  @override
  String get sukunUnavailableBody =>
      'Ichi chivakwa hachisanganisi chinodiwa Sukun soundscape assets parizvino.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Mutambo wezuva';

  @override
  String get bestStreak => 'Best streak';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'Shandisa Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Bvisa Offline Fallback';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count vasara';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API haina kugadzirwa. Hwaidzo hwechiIslam yakasimbiswa pasina Indaneti haisati yavapo.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Mazano echiIslam akavimbiswa emuno haasati avapo. Chinja kuCloud AI kune mhinduro dzakatorwa.';

  @override
  String get mosques => 'Misikiti';

  @override
  String get halalFood => 'Halal Chikafu';

  @override
  String get placesSearchArea => 'Tsvaga nzvimbo ino';

  @override
  String get nearbyMosques => 'Nearby Mosques';

  @override
  String get islamicSchools => 'Zvikoro zveIslam';

  @override
  String placesFoundCount(String count) {
    return '$count yawanikwa';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km kure';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API kukanganisa: $statusCode';
  }

  @override
  String get placesNetworkError => 'Network kukanganisa. Ndapota edza zvakare.';

  @override
  String get placesLocationRequiredTitle => 'Nzvimbo inodiwa';

  @override
  String get placesLocationRequiredBody =>
      'Gadza nzvimbo kutanga kuitira kuti mamosque ari padyo, chikafu che halal, uye zvikoro zveIslam zvigone kutsvakwa nemazvo.';

  @override
  String get placesMapTilesUnavailableTitle => 'Mathairi emepu haasi kuwanikwa';

  @override
  String get placesMapTilesUnavailableBody =>
      'Matairi emepu akasimbiswa haasati agadzirirwa kuvaka uku. Nzvimbo dziri pedyo dzinogona kurodha kubva panzvimbo yako yakachengetedzwa.';

  @override
  String get unknownPlaceName => 'Zita risingazivikanwe';

  @override
  String get islamicPlaceFallback => 'Nzvimbo yeIslam';

  @override
  String get asmaMeaning1 => 'Iye Ane Beneficent';

  @override
  String get asmaMeaning2 => 'Vane Tsitsi';

  @override
  String get asmaMeaning3 => 'Mambo / Ishe Asingagumi';

  @override
  String get asmaMeaning4 => 'Nzvimbo Tsvenetsvene';

  @override
  String get asmaMeaning5 => 'Tsime Rorugare';

  @override
  String get asmaMeaning6 => 'Mupi weChengetedzo';

  @override
  String get asmaMeaning7 => 'Muchengeti';

  @override
  String get asmaMeaning8 => 'Iye Anokosha / Ane Simba Mazhinji';

  @override
  String get asmaMeaning9 => 'Mumanikidzi';

  @override
  String get asmaMeaning10 => 'Chikuru';

  @override
  String get asmaMeaning11 => 'Musiki';

  @override
  String get asmaMeaning12 => 'Mugadziri Wehurongwa';

  @override
  String get asmaMeaning13 => 'Muumbi Werunako';

  @override
  String get asmaMeaning14 => 'Kuregerera';

  @override
  String get asmaMeaning15 => 'The Subduer';

  @override
  String get asmaMeaning16 => 'Mupi Wezvose';

  @override
  String get asmaMeaning17 => 'Mutsigiri';

  @override
  String get asmaMeaning18 => 'Muvhura';

  @override
  String get asmaMeaning19 => 'Iye Anoziva Zvese';

  @override
  String get asmaMeaning20 => 'The Constrictor';

  @override
  String get asmaMeaning21 => 'Musununguri';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'Mukwidziri';

  @override
  String get asmaMeaning24 => 'Mupi weKukudza';

  @override
  String get asmaMeaning25 => 'Munyadzi';

  @override
  String get asmaMeaning26 => 'Munzwi Wezvose';

  @override
  String get asmaMeaning27 => 'Muoni Wevose';

  @override
  String get asmaMeaning28 => 'Mutongi';

  @override
  String get asmaMeaning29 => 'Vakarurama';

  @override
  String get asmaMeaning30 => 'Iye Akangwara';

  @override
  String get asmaMeaning31 => 'Vose Vanoziva';

  @override
  String get asmaMeaning32 => 'The Forebearing';

  @override
  String get asmaMeaning33 => 'The Magnificent';

  @override
  String get asmaMeaning34 => 'Muregereri Mukuru';

  @override
  String get asmaMeaning35 => 'Mubairo wekutenda';

  @override
  String get asmaMeaning36 => 'Yepamusoro';

  @override
  String get asmaMeaning37 => 'Chikuru';

  @override
  String get asmaMeaning38 => 'The Preserver';

  @override
  String get asmaMeaning39 => 'Muriritiri';

  @override
  String get asmaMeaning40 => 'The Reckoner';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'The Generous';

  @override
  String get asmaMeaning43 => 'Iye Akatarisa';

  @override
  String get asmaMeaning44 => 'Iye Anopindura Munamato';

  @override
  String get asmaMeaning45 => 'Kunzwisisa Kwese';

  @override
  String get asmaMeaning46 => 'Iye Akachenjera Zvakakwana';

  @override
  String get asmaMeaning47 => 'Iye Anoda';

  @override
  String get asmaMeaning48 => 'Iye Ane Mbiri Yakanyanya';

  @override
  String get asmaMeaning49 => 'Iye Resurrector';

  @override
  String get asmaMeaning50 => 'Chapupu';

  @override
  String get asmaMeaning51 => 'Chokwadi';

  @override
  String get asmaMeaning52 => 'Mutariri Akakwana';

  @override
  String get asmaMeaning53 => 'Muridzi WeSimba Rose';

  @override
  String get asmaMeaning54 => 'Vane Simba';

  @override
  String get asmaMeaning55 => 'Mudziviriri';

  @override
  String get asmaMeaning56 => 'Vakarumbidzwa';

  @override
  String get asmaMeaning57 => 'Muongorori';

  @override
  String get asmaMeaning58 => 'Muvambi';

  @override
  String get asmaMeaning59 => 'Mudzoreri';

  @override
  String get asmaMeaning60 => 'Mupi Wehupenyu';

  @override
  String get asmaMeaning61 => 'Mutore Wehupenyu';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'Iye Anozviraramisa';

  @override
  String get asmaMeaning64 => 'The Finder';

  @override
  String get asmaMeaning65 => 'Iye Anobwinya';

  @override
  String get asmaMeaning66 => 'Iye Chete';

  @override
  String get asmaMeaning67 => 'Iye Mumwe';

  @override
  String get asmaMeaning68 => 'Iyo Inotsvakwa Nevose';

  @override
  String get asmaMeaning69 => 'Iye Ane Simba';

  @override
  String get asmaMeaning70 => 'Musiki wesimba rose';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'The Delayer';

  @override
  String get asmaMeaning73 => 'Yekutanga';

  @override
  String get asmaMeaning74 => 'Yekupedzisira';

  @override
  String get asmaMeaning75 => 'Manifest';

  @override
  String get asmaMeaning76 => 'Zvakavanzika';

  @override
  String get asmaMeaning77 => 'Gavhuna';

  @override
  String get asmaMeaning78 => 'Iye Mukurusa';

  @override
  String get asmaMeaning79 => 'Muiti Wezvakanaka';

  @override
  String get asmaMeaning80 => 'Nhungamiro yeKupfidza';

  @override
  String get asmaMeaning81 => 'Mutsivi';

  @override
  String get asmaMeaning82 => 'Muregereri';

  @override
  String get asmaMeaning83 => 'The Clement';

  @override
  String get asmaMeaning84 => 'Muridzi / Changamire Wezvose';

  @override
  String get asmaMeaning85 => 'Muridzi weHukuru neBounty';

  @override
  String get asmaMeaning86 => 'Iye Yakaenzana';

  @override
  String get asmaMeaning87 => 'Muunganidzi';

  @override
  String get asmaMeaning88 => 'Iye Mupfumi';

  @override
  String get asmaMeaning89 => 'The Enricher';

  @override
  String get asmaMeaning90 => 'Mudziviriri weKukuvadza';

  @override
  String get asmaMeaning91 => 'Muunzi Wekukuvadza';

  @override
  String get asmaMeaning92 => 'Iye anopa mabhenefiti';

  @override
  String get asmaMeaning93 => 'Chiedza';

  @override
  String get asmaMeaning94 => 'Mutungamiri';

  @override
  String get asmaMeaning95 => 'Muvambi';

  @override
  String get asmaMeaning96 => 'Iye Anogara Nokusingaperi';

  @override
  String get asmaMeaning97 => 'Mudyi Wenhaka';

  @override
  String get asmaMeaning98 => 'Mutungamiriri Akarurama';

  @override
  String get asmaMeaning99 => 'Iye Murwere';
}
