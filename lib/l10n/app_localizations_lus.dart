// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lushai (`lus`).
class AppLocalizationsLus extends AppLocalizations {
  AppLocalizationsLus([String locale = 'lus']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur chuan a rawn ti a';

  @override
  String get splashTagline => 'Islamic Way of Light tih hi a ni';

  @override
  String get home => 'In lamah';

  @override
  String get quran => 'Quran a ni';

  @override
  String get qibla => 'Qibla a ni';

  @override
  String get zikr => 'Zikr a ni';

  @override
  String get calendar => 'Calendar a ni';

  @override
  String get settings => 'Settings te pawh a awm';

  @override
  String get nextPrayer => 'Tawngtai leh tur';

  @override
  String get prayerTimes => 'Tawngtai Hun';

  @override
  String get continueReading => 'Chhiar chhunzawm rawh';

  @override
  String get getLifetimePro => 'Lifetime Pro dawng rawh';

  @override
  String get unlockTajweed => 'Tajweed & Advanced Features te chu unlock rawh';

  @override
  String get prayerCalculation => 'Tawngtai Chhut dan';

  @override
  String get method => 'Chhiar dan tur';

  @override
  String get madhab => 'Asr Juristic hmanga thil tih dan';

  @override
  String get surahs => 'Surah hrang hrang';

  @override
  String get ayahs => 'Ayahs a ni';

  @override
  String get fajr => 'Fajr a ni';

  @override
  String get sunrise => 'Ni chhuak';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Maghrib a ni';

  @override
  String get isha => 'Isha chuan';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName hun hman a ni.';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '$prayerName tawngtai a hun ta.';
  }

  @override
  String get dataStorage => 'Data & Storage a ni';

  @override
  String get clearCache => 'Cache tihfai rawh';

  @override
  String get cacheClearedSuccess => 'Cache chu hlawhtling takin a clear ta';

  @override
  String get location => 'A awmna hmun';

  @override
  String get language => 'á¹¬awng hman dan';

  @override
  String get selectLanguage => 'á¹¬awng thlang rawh';

  @override
  String get searchLanguage => 'á¹¬awng 180+ zawng rawh...';

  @override
  String get systemDefault => 'System Default a ni';

  @override
  String get currentLocation => 'Tuna a awmna hmun (GPS) .';

  @override
  String get locationServiceDisabled => 'Location service chu tihtawp a ni.';

  @override
  String get locationPermissionDenied => 'Hmun phalna pek a ni lo.';

  @override
  String get locationDetectionFailed =>
      'I awmna hmun a detect thei lo. Khawpui pakhat chu manual-in thlang la, a nih loh leh han tum leh rawh.';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => 'Search rawh';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'Results hmuh tur a awm lo';

  @override
  String get loading => 'Loading mek a ni...';

  @override
  String get error => 'Thil tihsual a awm';

  @override
  String get appErrorOccurred => 'Error a awm a';

  @override
  String get appUnknownError => 'Thil tihsual hriat loh';

  @override
  String get quranLoadFailed =>
      'Quran content a load thei lo. Khawngaihin han lo try leh teh.';

  @override
  String get retry => 'Ti leh rawh';

  @override
  String get refreshAction => 'Refresh leh rawh';

  @override
  String get cancel => 'Cancel rawh';

  @override
  String get save => 'Save rawh';

  @override
  String get delete => 'Delete rawh';

  @override
  String get edit => 'Edit rawh';

  @override
  String get close => 'Khar rawh';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Ni e';

  @override
  String get no => 'Ni lo';

  @override
  String get surah => 'Surah chuan';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Page';

  @override
  String get reading => 'Chhiar tur';

  @override
  String get recitation => 'Recitation neih a ni';

  @override
  String get translation => 'Lehlin a ni';

  @override
  String get tafsir => 'Tafsir a ni';

  @override
  String get tafsirLoading => 'Loading tafsir a ni...';

  @override
  String get tafsirSourceLabel => 'Tafsir atanga lo chhuak a ni';

  @override
  String get tafsirNoSurahFound =>
      'He surah atan hian tafsir hmuh tur a awm lo.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Ayah $ayah tan tafsir hmuh tur a awm lo.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir chu a phur thei lo.';

  @override
  String get tafsirNoTextForAyah => 'He ayah atan hian tafsir text a awm lo.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Downloading tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Loading tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir source chuan HTTP $statusCode error a rawn pe leh a.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Tafsir source thlan chuan entry a rawn pe lo.';

  @override
  String get bookmarks => 'Bookmarks te pawh a awm';

  @override
  String get addBookmark => 'Bookmark tih a ni';

  @override
  String get removeBookmark => 'Bookmark chu paih chhuak rawh';

  @override
  String get lastRead => 'Chhiar hnuhnung ber';

  @override
  String get dailyZikr => 'Nitin Zikr';

  @override
  String get duaMeaning1 =>
      'mi dangte chuan, ‘Kan Lalpa, khawvel leh a tawpah thil tha min pe la, Mei hrehawmna lakah min venghim rawh,’ tiin an tawngtai thin.';

  @override
  String get duaMeaning2 =>
      'Pathian chuan thlarau tu mah phurrit aia tam a phur lo: mi tinin an thil tha tih apiang an hlawh chhuak a, a chhe zawng zawng an tuar bawk- ‘ Lalpa, kan theihnghilh emaw, kan tihsual emaw chuan hna min thawk suh. Lalpa, kan hmaa mite phurrit i phurh ang khan min phur suh. Lalpa, phurrit kan neih aia tam min phur suh. Min ngaidam la, min ngaidam la, min khawngaih rawh. Kan Vênghimtu i ni a, ringlote lakah min pui rawh.’';

  @override
  String get duaMeaning3 =>
      '‘Kan Lalpa, min kaihhruai hnuah kan thinlung hi kal bo suh. I khawngaihna min pe rawh: Nang hi Pe rengtu i ni.';

  @override
  String get duaMeaning4 =>
      'Lalpa, kei leh ka thlahte hian tawngtaina hi kan zawm zel theih nan phalsak rawh. Kan Lalpa, ka ngenna hi pawm rawh.';

  @override
  String get duaMeaning5 =>
      'tin, ngilnei takin an chungah inngaitlawm takin i thla kha han hniam la, ‘Lalpa, ka naupan laia min ngaihsak ang khan khawngaih rawh,’ ti rawh.';

  @override
  String get duaMeaning6 =>
      'Pathian, thunun thei tak chu chawimawiin awm rawh se. [Zâwlnei], thupuan chu a famkim hmain chhiar hmanhmawh suh la, ‘Lalpa, hriatnaah min tipung rawh!’ ti zawk rawh.';

  @override
  String get duaMeaning7 =>
      '[Zâwlnei], ‘Lalpa, ngaidam la, khawngaih rawh: Nang hi mi zawng zawng zînga khawngaihtu ber i ni,’ ti rawh.';

  @override
  String get duaMeaning8 =>
      '‘Kan Lalpa, kan nupui/pasal leh fate chungah lawmna min pe rawh’ tia tawngtai thinte. Nangmah hretute tan entawn tur tha tak min siam ang che’.';

  @override
  String get morningZikr => 'Zing Zikr';

  @override
  String get eveningZikr => 'Zanlai Zikr';

  @override
  String get tasbih => 'Tasbih a ni';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masa\'il a ni';

  @override
  String get hadith => 'Hadith a ni';

  @override
  String get hadithCollection => 'Hadith khawlkhawm a ni';

  @override
  String get hadithBooks => 'Hadith Lehkhabu te';

  @override
  String get searchHadith => 'Hadith zawng rawh';

  @override
  String get asmaulHusna => 'Asma-ul-Husna chuan a rawn ti a';

  @override
  String get namesOfAllah => 'Allah hmingte';

  @override
  String get liveTv => 'Live TV a ni';

  @override
  String get watchLive => 'Live-a en theih a ni';

  @override
  String get streamError => 'Stream tihsual a awm';

  @override
  String get reload => 'Reload leh rawh';

  @override
  String get openInYoutube => 'YouTube ah hawn theih a ni';

  @override
  String get ibadahTracker => 'Ibadah Tracker a ni';

  @override
  String get fasting => 'Chaw nghei';

  @override
  String get quranReading => 'Quran chhiar dan tur';

  @override
  String get prayers => 'Tawngtaina';

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
  String get weeklyProgress => 'Kar tin Hmasawnna';

  @override
  String get monthlyProgress => 'Thla tin Hmasawnna';

  @override
  String get statistics => 'Statistics a ni';

  @override
  String get hijriCalendar => 'Hijri Calendar a ni';

  @override
  String get gregorianCalendar => 'Gregorian Calendar-ah a awm a';

  @override
  String get today => 'Vawiin hian';

  @override
  String get tomorrow => 'Naktuk ah';

  @override
  String get yesterday => 'Nizan khan';

  @override
  String get specialDays => 'Ni bikte';

  @override
  String get ramadan => 'Ramadan thlaah a ni';

  @override
  String get eidAlFitr => 'Eid Al-Fitr a ni a';

  @override
  String get eidAlAdha => 'Eid Al-Adha neih a ni';

  @override
  String get islamicNewYear => 'Islamic kum thar a ni';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadan a ni';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadan-ah a ni';

  @override
  String get specialDayDateEidAlFitr => '1 Shawwal a ni';

  @override
  String get specialDayDateEidAlAdha => '10 Dhul Hijjah a ni';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharram a ni';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabi al-Awwal-a chuan a ziak a';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr chuan a rawn ti a';

  @override
  String get qiblaDirection => 'Qibla Direction a ni';

  @override
  String get compass => 'Compass a ni';

  @override
  String get degrees => 'degree a ni';

  @override
  String get north => 'Hmar lam';

  @override
  String get qiblaFound => 'Qibla a hmu ta!';

  @override
  String get turnDevice => 'I device chu Qibla lam hawiin her rawh';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Compass error: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'He device ah hian Compass sensor a awm lo.';

  @override
  String get qiblaLocationRequiredTitle => 'Qibla tan hmun mamawh a ni';

  @override
  String get qiblaLocationRequiredBody =>
      'Set your actual location before using the Qibla compass so the direction can be calculated accurately.';

  @override
  String get adhanNotificationChannelName => 'Adhan Hriattirna';

  @override
  String get adhanNotificationChannelDescription =>
      'Prayer time alerts with adhan sound.';

  @override
  String get notifications => 'Hriattirna te';

  @override
  String get prayerNotifications => 'Tawngtai Hriattirna';

  @override
  String get enableNotifications => 'Notifications te chu enable rawh';

  @override
  String get notificationTime => 'Hriattirna Hun';

  @override
  String get beforePrayer => 'tawngtai hma minute engemaw zat a awm';

  @override
  String get theme => 'Thupui';

  @override
  String get lightMode => 'Light Mode a ni';

  @override
  String get darkMode => 'Dark Mode a ni';

  @override
  String get systemTheme => 'System Thupui a ni';

  @override
  String get about => 'About';

  @override
  String get version => 'Version a ni';

  @override
  String get privacyPolicy => 'Thuruk humhalh dan tur';

  @override
  String get termsOfService => 'Hnathawh dan tur (terms of Service).';

  @override
  String get contactUs => 'Min rawn biak theih reng e';

  @override
  String get rateApp => 'Rate App a ni';

  @override
  String get shareApp => 'Share App tih hi a ni';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Download Manager tur a ni';

  @override
  String get downloads => 'Downloads te pawh a awm';

  @override
  String get downloading => 'Download mek a ni...';

  @override
  String get downloadComplete => 'Download zawh tawh';

  @override
  String get downloadFailed => 'Download a hlawhchham';

  @override
  String get offlineMode => 'Offline Mode ah a awm';

  @override
  String get noInternet => 'Internet Connection a awm lo';

  @override
  String get checkConnection => 'Khawngaihin i connection kha lo en ve teh';

  @override
  String get premium => 'Premium a ni';

  @override
  String get upgradeToPro => 'Pro ah upgrade rawh';

  @override
  String get proFeatures => 'Pro Features a awm bawk';

  @override
  String get removeAds => 'Ads te chu paih chhuak rawh';

  @override
  String get unlockAll => 'Content zawng zawng Unlock rawh';

  @override
  String get exclusiveContent => 'Thupui bik (Exclusive Content) a ni';

  @override
  String get welcome => 'Kan lo lawm e';

  @override
  String get getStarted => 'A bul tan rawh';

  @override
  String get skip => 'Skip rawh';

  @override
  String get next => 'A dawtah chuan';

  @override
  String get done => 'Tih zo tawh';

  @override
  String get onboarding1Title => 'Sirat-ı Nur-ah hian kan lo lawm a che';

  @override
  String get onboarding1Desc =>
      'Tawngtai hun, Quran, leh thil dang tam tak tan Islamic companion app kimchang';

  @override
  String get onboarding2Title => 'Tawngtai Hun';

  @override
  String get onboarding2Desc => 'I awmna hmun a zirin tawngtai hun dik tak';

  @override
  String get onboarding3Title => 'Quran leh thil dang tam tak';

  @override
  String get onboarding3Desc =>
      'Quran chhiar la, i chhiar dan track la, Islamic content zawng rawh';

  @override
  String get dhikrLibrary => 'Dhikr Library-ah hian a awm a';

  @override
  String get resetCounter => 'Counter chu reset rawh';

  @override
  String get changeTarget => 'Target thlak danglam rawh';

  @override
  String get newTarget => 'Target thar a ni';

  @override
  String targetCount(Object target) {
    return 'Target: $target tih a ni.';
  }

  @override
  String get tapToCount => 'Tap la, chhiar rawh';

  @override
  String get zikrCompletedMashAllah => 'A zo tawh! MashAllah chuan a rawn ti a';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah hi famkim lohna zawng zawng aiin a chungnung zawk daih a ni.';

  @override
  String get zikrMeaningAlhamdulillah => 'Fakna zawng zawng hi Allah ta a ni.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah hi a Ropui ber a ni.';

  @override
  String get zikrMeaningLaIlahaIllallah =>
      'Allah tih loh chu pathian dang a awm lo.';

  @override
  String get zikrMeaningAstaghfirullah => 'Allah ngaihdamna ka dil a ni.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Allah kaltlanga tih loh chu thiltihtheihna leh chakna a awm lo.';

  @override
  String get dailyChecklist => 'Nitin Checklist';

  @override
  String get qazaDebt => 'Qaza (Leiba) 1.1.';

  @override
  String get resetQazaData => 'Qaza Data chu reset rawh';

  @override
  String get resetQazaDebtQuestion => 'Qaza Leiba chu reset rawh?';

  @override
  String get rawatib => 'Rawatib chuan a sawi';

  @override
  String get tahajjud => 'Tahajjud a ni';

  @override
  String get dailyProgress => 'Nitin Hmasawnna';

  @override
  String get mandatoryPrayers => 'Tawngtai tih ngei ngei tur';

  @override
  String get sunnahAndOthers => 'Sunnah & Midangte';

  @override
  String get spiritualGrowth => 'Thlarau lama thanlenna';

  @override
  String get mandatoryDuty => 'Duty ngei ngei tur a ni';

  @override
  String get totalPrayers => 'Tawngtaina zawng zawng';

  @override
  String get prayerDebt => 'Tawngtai Leiba';

  @override
  String get fastingDebt => 'Chaw nghei Leiba';

  @override
  String get reset => 'Reset rawh';

  @override
  String get days => 'Ni tam tak';

  @override
  String get premiumIntegrity => 'Premium Integrity a ni';

  @override
  String get recheckPremium => 'Premium Status chu enfiah leh rawh';

  @override
  String get syncStore => 'Store nen sync la, i entitlement chu confirm rawh.';

  @override
  String get checkingPremium => 'Premium dinhmun enfiah mek...';

  @override
  String get premiumVerified => 'Premium a dik tih finfiah a ni.';

  @override
  String get premiumNotFound => 'Premium hmuh tur a awm lo.';

  @override
  String premiumRefreshError(Object error) {
    return 'Premium status a refresh thei lo: $error';
  }

  @override
  String get offlineDownloadManager => 'Offline a Download theihna tur a ni';

  @override
  String get manageDatasets =>
      'Offline audio & dataset pack lian tak tak enkawl.';

  @override
  String get freeStorage => 'Device chhunga dahna tur free up.';

  @override
  String get quranIntegrity => 'Quran dikna (Integrity) a ni';

  @override
  String get checkQuranDb => 'Quran Database ah hian en theih a ni';

  @override
  String get verifyQuranContent =>
      'Surah 114 leh ayah 6236 a awm tih finfiah rawh.';

  @override
  String get checkingQuranDb => 'Quran database enfiah mek...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'A kim lo';

  @override
  String get notSeeded => 'Seeded a ni lo';

  @override
  String get quranDbStatus => 'Quran Database dinhmun';

  @override
  String statusLabel(Object status) {
    return 'A dinhmun: $status.';
  }

  @override
  String surahsCount(Object count) {
    return 'Surahs: $count (114 beisei a ni) .';
  }

  @override
  String ayahsCount(Object count) {
    return 'Ayahs: $count (6236 beisei a ni)';
  }

  @override
  String missingArabic(Object count) {
    return 'Arabic tawng bo: $count';
  }

  @override
  String missingTurkish(Object count) {
    return 'Turkey tawng bo: $count';
  }

  @override
  String dbVersion(Object version) {
    return 'DB Version: $version tih a ni.';
  }

  @override
  String dbPath(Object path) {
    return 'Kawng: $path.';
  }

  @override
  String quranCheckFailed(Object error) {
    return 'Quran check a hlawhchham: $error';
  }

  @override
  String get audioVoice => 'Audio Voice hmanga tih a ni';

  @override
  String get audioVoiceMisharyAlafasy => 'Male (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Male (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Male (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle a ni';

  @override
  String get ishaAngle => 'Isha Angle chuan a rawn ti a';

  @override
  String get qiblaCalibration => 'Qibla Calibration tih a ni';

  @override
  String get compassSmoothing => 'Compass hmanga tihfai';

  @override
  String get reduceSensorJitter =>
      'Needle nghet zawk neih theih nan sensor jitter tihtlem.';

  @override
  String get calibrationOffset => 'Calibration Offset a ni';

  @override
  String currentOffset(Object offset) {
    return 'Tunah hian: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'I compass-in manual correction a mamawh chuan siamrem rawh. Positive value te chu darkar lam hawiin a inher thin.';

  @override
  String get apply => 'Dil rawh';

  @override
  String get resetOnboarding => 'Onboarding chu reset rawh';

  @override
  String get rerunSetup => 'Setup hmasa ber process kha run leh rawh.';

  @override
  String get diagnostics => 'Diagnostics te pawh a awm';

  @override
  String get diagnosticsNotSet => 'Set lo';

  @override
  String get diagnosticsPrayerProfile => 'Tawngtai Profile';

  @override
  String get diagnosticsPrayerSource => 'Tawngtai Thuneihna';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manual custom angle (institutional source a awm lo) .';

  @override
  String get diagnosticsCloudDriven => 'Cloud Driven a ni';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio a thil neih te';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets te a awm bawk';

  @override
  String get diagnosticsQuranAudioAssets => 'Quran Audio a thil neih te';

  @override
  String get diagnosticsAudioAssets => 'Audio Assets te pawh a awm';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count files te chu a awm a';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifest chhiar a hlawhchham: $error';
  }

  @override
  String get diagnosticsLocalizationLocales =>
      'Localization Local hrang hrang te';

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
      'Supabase-a cloud table awm lo; bundled fallback active a ni';

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
  String get healthCheckDesc => 'Health checks run la, system status en rawh.';

  @override
  String get qiblaAligned => 'Qibla Aligned a ni';

  @override
  String get rotateToFindQibla => 'Qibla zawng turin rotate rawh';

  @override
  String get calibrationRequiredFigure8 =>
      'Calibration a ngai a ni. Figure-8-a device chu rotate rawh.';

  @override
  String get dailyVerse => 'Nitin Châng';

  @override
  String get todaysIbadah => 'Vawiin kan Ibadah';

  @override
  String get quickAccess => 'Quick Access a ni';

  @override
  String get assistant => 'Tanpuitu';

  @override
  String get places => 'Hmun';

  @override
  String get library => 'Library';

  @override
  String get analytics => 'Analytics lam thil a ni';

  @override
  String get dailyDuas => 'Nitin Duas';

  @override
  String essentialDuas(String count) {
    return '$count essential duas';
  }

  @override
  String get duaUnavailableTitle => 'Verified duas hi a la awm lo';

  @override
  String get duaUnavailableBody =>
      'Verified daily duas hi he device ah hian sync a la ni lo. Unverified fallback ai chuan sourced duas load turin cloud source ah connect rawh.';

  @override
  String get duaCategoryQuranic => 'Quranic dua';

  @override
  String get duaCategoryMorningEvening => 'Zing & Zanlai';

  @override
  String get duaCategoryTasbih => 'Tasbih a ni';

  @override
  String get duaCategoryProtection => 'Hriselna atana venhimna';

  @override
  String get duaCategoryBeginning => 'A bul tanna';

  @override
  String get duaCategorySleep => 'Mu';

  @override
  String get duaCategoryFoodDrink => 'Ei leh in tur';

  @override
  String get duaCategoryForgiveness => 'Ngaihdamna';

  @override
  String get duaCategoryHome => 'In';

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
  String get islamicEducation => 'Islamic Zirna';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes te pawh a awm';

  @override
  String get hadithCollections => 'Hadith khawlkhawm te';

  @override
  String get hadithSourcePending => 'Verified source a awm mek a ni';

  @override
  String get hadithUnavailableTitle =>
      'Verified hadith collection hi a la awm lo';

  @override
  String get hadithUnavailableBody =>
      'He build hi unverified external hadith feed ah a la innghat reng a ni. Sourced dataset sync a nih hma chuan Hadith browsing chu disabled a ni reng.';

  @override
  String get paywallUnlockAll =>
      'I thlarau lam zinkawng atan feature zawng zawng unlock rawh';

  @override
  String get premiumProductUnavailable =>
      'Tunah hian Premium product a awm lo. Nakinah han lo en leh teh.';

  @override
  String get premiumPurchaseFailed =>
      'Purchase pawh a zo thei lo. Khawngaihin han lo try leh teh.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus a ni bawk';

  @override
  String get paywallFeature1Desc => 'AI hmanga Q&A tihkhawtlai loh';

  @override
  String get paywallFeature2Title => 'Offline a awm lo';

  @override
  String get paywallFeature2Desc => 'Recitation zawng zawng download vek rawh';

  @override
  String get paywallFeature3Title => 'Design hrang hrang a awm';

  @override
  String get paywallFeature3Desc => 'Premium theme & font te a awm bawk';

  @override
  String get paywallFeature4Title => 'Ad-Free a awm lo';

  @override
  String get paywallFeature4Desc => 'Advertisement zero a awm';

  @override
  String get paywallGetAccess =>
      'Nun chhung zawnga hman theihna hmu rawh — \$1.00';

  @override
  String get restorePurchases => 'Thil lei tawhte chu siam\\hat leh rawh';

  @override
  String get zakatCalculator => 'Zakat Calculator hmanga siam a ni';

  @override
  String get zakatGold => 'Rangkachak (Altın) .';

  @override
  String get zakatSilver => 'Tangkarua (Gümüş) a ni.';

  @override
  String get zakatCashBank => 'Cash / Bank hmanga tih a ni';

  @override
  String get zakatBusiness => 'Sumdawnna';

  @override
  String get zakatInvestments => 'Investment te pawh a awm';

  @override
  String get zakatWeightGrams => 'A rih zawng (g) .';

  @override
  String get zakatPricePerGram => 'A man/g';

  @override
  String get zakatTotalAmount => 'Total Amount';

  @override
  String get zakatInventoryValue => 'Inventory hlutna a ni';

  @override
  String get zakatDebts => 'Leiba a awm';

  @override
  String get zakatTotal => 'Belhkhawm';

  @override
  String get calculateZakat => 'Zakat chhut rawh';

  @override
  String get nisabNotReached =>
      'Nisab a thleng lo. Zakat hi tih ngei ngei tur a ni lo.';

  @override
  String get totalZakat => 'Zakat zawng zawng';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'Rangkachak Zakat a ni';

  @override
  String get zakatSilverZakat => 'Silver Zakat a ni';

  @override
  String get zakatCashZakat => 'Cash Zakat pek a ni';

  @override
  String get zakatBusinessZakat => 'Sumdawnna Zakat a ni';

  @override
  String get zakatInvestmentZakat => 'Investment Zakat pek a ni';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum chu! I Islamic assistant ka ni. Tawngtai, chaw nghei, zakat, Islamic topic eng pawh min zawt rawh.';

  @override
  String get chatbotLimitReached =>
      'Nitin zawhna neih theihna tur limit a thleng. Unlimited atan Premium ah upgrade rawh.';

  @override
  String get chatbotErrorMsg =>
      'Response ka generate thei lo. Khawngaihin han lo try leh teh.';

  @override
  String get chatbotOfflinePrompt =>
      'Offline Islamic knowledge base verified chu an la curate mek a ni. Tunah chuan offline fallback i enable thei tawh a, mahse sourced dataset a inpeih hma chuan safe message tlemte chauh a lantir ang.\n\nOffline fallback hi enable i duh em?';

  @override
  String get chatbotOfflineSwitched =>
      'Offline fallback enabled. Verified local Islamic answers are not ready yet.';

  @override
  String get chatbotOfflineDownloadLabel =>
      'Offline Fallback tih kha enable rawh';

  @override
  String get downloadPreparing => 'Download buatsaih mek...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Downloading surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'He reciter tan hian surah download vek tawh zawng zawng.';

  @override
  String get offlineQuranAudioPacks =>
      'Offline Quran Audio Packs te pawh a awm bawk';

  @override
  String storedOnDeviceMb(String size) {
    return 'Device-ah dah a ni: $size MB';
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
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Download finished for $reciter with $failed failed surahs ($downloaded/$total downloaded).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Deleted offline files for $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Tunah hian Quran audio source verified a awm lo.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Verified Quran audio pack is incomplete ($available/$total). Refresh cloud seed and try again.';
  }

  @override
  String get chatbotHint => 'Zawhna zawt rawh...';

  @override
  String get chatbotThinking => 'Ngaihtuah...';

  @override
  String get sukunMixerSubtitle => 'Nature & Qur’an Mixer a ni';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (Nature) tih a ni.';

  @override
  String get sukunRainOfMercy => 'Khawngaihna ruah';

  @override
  String get sukunGardenOfPeace => 'Remna Huan';

  @override
  String get sukunMidnightCalm => 'Zanlai Kal';

  @override
  String get sukunOceanTawheed => 'Tuipui Tawheed a ni';

  @override
  String get sukunUnavailableTitle => 'Soundscapes a awm lo';

  @override
  String get sukunUnavailableBody =>
      'He build hian Sukun soundscape assets mamawh chu a la huam lo.';

  @override
  String get prayerCompletion => 'Tawngtai zawhfel';

  @override
  String get streaks => 'Streaks a awm';

  @override
  String get dayStreak => 'Ni khat chhunga awm';

  @override
  String get bestStreak => 'Streak tha ber a ni';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI hmanga siam a ni';

  @override
  String get chatbotLocalAiLabel => 'Offline a Fallback a ni';

  @override
  String get chatbotUseCloudAi => 'Cloud AI (Gemini) hmang rawh .';

  @override
  String get chatbotDownloadLocalAi => 'Offline Fallback tih kha enable rawh';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API hi configure a ni lo. Verified offline Islamic guidance hi a la awm lo.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Verified local Islamic guidance is not available yet. Switch to Cloud AI for sourced answers.';

  @override
  String get mosques => 'Mosque hrang hrangah te';

  @override
  String get halalFood => 'Halal Chaw ei tur';

  @override
  String get placesSearchArea => 'He hmunah hian zawng rawh';

  @override
  String get nearbyMosques => 'A bul hnaia Mosque awmte';

  @override
  String get islamicSchools => 'Islamic School hrang hrangah a awm a';

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
      'Network tihsual a awm. Khawngaihin han lo try leh teh.';

  @override
  String get placesLocationRequiredTitle => 'Hmun a ngai a ni';

  @override
  String get placesLocationRequiredBody =>
      'Mosque hnai tak tak, halal food, leh Islamic school te dik taka zawn theih nan hmun siam hmasa phawt ang che.';

  @override
  String get placesMapTilesUnavailableTitle => 'Map tiles a awm lo';

  @override
  String get placesMapTilesUnavailableBody =>
      'He build atan hian verified map tile source hi configure a la ni lo. I saved location atang hian hmun hnai tak tak te chu a la load thei tho.';

  @override
  String get placesDataSourceUnavailableTitle => 'Data awm lohna hmunah a dah';

  @override
  String get placesDataSourceUnavailableBody =>
      'A verified places data endpoint is not configured for this build yet. Set PLACES_OVERPASS_API_URL to an approved proxy or provider before enabling nearby search.';

  @override
  String get unknownPlaceName => 'Hming hriat loh';

  @override
  String get islamicPlaceFallback => 'Islamic Hmun a ni';

  @override
  String get asmaMeaning1 => 'Thil hlawkthlak tak';

  @override
  String get asmaMeaning2 => 'Khawngaihtu';

  @override
  String get asmaMeaning3 => 'Lal / Chatuan Lalpa';

  @override
  String get asmaMeaning4 => 'Thianghlim ber';

  @override
  String get asmaMeaning5 => 'Remna Hmun';

  @override
  String get asmaMeaning6 => 'Hriselna petu';

  @override
  String get asmaMeaning7 => 'A Guardian chuan a rawn ti a';

  @override
  String get asmaMeaning8 => 'A Hlu / Thiltithei Ber';

  @override
  String get asmaMeaning9 => 'A Compeller chu a ni';

  @override
  String get asmaMeaning10 => 'A ropui ber';

  @override
  String get asmaMeaning11 => 'Siamtu';

  @override
  String get asmaMeaning12 => 'Order siamtu';

  @override
  String get asmaMeaning13 => 'Mawina siamtu';

  @override
  String get asmaMeaning14 => 'Ngaidamtu';

  @override
  String get asmaMeaning15 => 'A thununtu';

  @override
  String get asmaMeaning16 => 'Mi zawng zawng petu';

  @override
  String get asmaMeaning17 => 'A chhawmdawltu';

  @override
  String get asmaMeaning18 => 'A hawnna tur';

  @override
  String get asmaMeaning19 => 'Mi zawng zawng hretu';

  @override
  String get asmaMeaning20 => 'A Constrictor chu a ni';

  @override
  String get asmaMeaning21 => 'Chhawmdawltu chu';

  @override
  String get asmaMeaning22 => 'A Abaser te chu';

  @override
  String get asmaMeaning23 => 'Chutiangtu chu';

  @override
  String get asmaMeaning24 => 'Chawimawina petu';

  @override
  String get asmaMeaning25 => 'A Mualphotu';

  @override
  String get asmaMeaning26 => 'Mi zawng zawng ngaithlatu';

  @override
  String get asmaMeaning27 => 'Mi zawng zawng hmutu';

  @override
  String get asmaMeaning28 => 'Roreltu chuan';

  @override
  String get asmaMeaning29 => 'Mi dik tak';

  @override
  String get asmaMeaning30 => 'A Fiah lo';

  @override
  String get asmaMeaning31 => 'Mi zawng zawng hrechiangtu';

  @override
  String get asmaMeaning32 => 'A Hmasawnna';

  @override
  String get asmaMeaning33 => 'A ropui tak';

  @override
  String get asmaMeaning34 => 'Ngaidamtu Ropui';

  @override
  String get asmaMeaning35 => 'The Rewarder of Thankfulness';

  @override
  String get asmaMeaning36 => 'A sang ber';

  @override
  String get asmaMeaning37 => 'A ropui ber';

  @override
  String get asmaMeaning38 => 'A vawnhimtu';

  @override
  String get asmaMeaning39 => 'Ei chawmtu';

  @override
  String get asmaMeaning40 => 'Reckoner chu a ni';

  @override
  String get asmaMeaning41 => 'A ropui ber';

  @override
  String get asmaMeaning42 => 'Mi thilphal tak takte';

  @override
  String get asmaMeaning43 => 'A En rengtu';

  @override
  String get asmaMeaning44 => 'Tawngtaina chhangtu';

  @override
  String get asmaMeaning45 => 'The Engkim Hriatthiamna';

  @override
  String get asmaMeaning46 => 'Mi fing famkim';

  @override
  String get asmaMeaning47 => 'Hmangaihtu';

  @override
  String get asmaMeaning48 => 'Ropui ber';

  @override
  String get asmaMeaning49 => 'Thawhlehtu';

  @override
  String get asmaMeaning50 => 'Hriatpuitu';

  @override
  String get asmaMeaning51 => 'Thudik chu';

  @override
  String get asmaMeaning52 => 'Thil zawng zawng enkawltu';

  @override
  String get asmaMeaning53 => 'Chakna zawng zawng neitu';

  @override
  String get asmaMeaning54 => 'A tharum thawhna';

  @override
  String get asmaMeaning55 => 'A humhimtu chu';

  @override
  String get asmaMeaning56 => 'Mi fakte chu';

  @override
  String get asmaMeaning57 => 'A Appraiser chu a ni';

  @override
  String get asmaMeaning58 => 'A bul tantu';

  @override
  String get asmaMeaning59 => 'A siamthatna tur';

  @override
  String get asmaMeaning60 => 'Nunna petu';

  @override
  String get asmaMeaning61 => 'Nunna latu';

  @override
  String get asmaMeaning62 => 'Mi nung reng';

  @override
  String get asmaMeaning63 => 'Mahni Inrintawkna Sustainer';

  @override
  String get asmaMeaning64 => 'A zawngtu';

  @override
  String get asmaMeaning65 => 'Ropuite chu';

  @override
  String get asmaMeaning66 => 'A Pakhat chauh';

  @override
  String get asmaMeaning67 => 'A Pakhat chu';

  @override
  String get asmaMeaning68 => 'Mi zawng zawngin an zawn chu';

  @override
  String get asmaMeaning69 => 'Thiltihthei tak takte';

  @override
  String get asmaMeaning70 => 'Thiltihtheihna zawng zawng siamtu';

  @override
  String get asmaMeaning71 => 'A Expediter chu a ni';

  @override
  String get asmaMeaning72 => 'A Delayer chu';

  @override
  String get asmaMeaning73 => 'A hmasa ber';

  @override
  String get asmaMeaning74 => 'A hnuhnung ber';

  @override
  String get asmaMeaning75 => 'A Manifest';

  @override
  String get asmaMeaning76 => 'A Thup';

  @override
  String get asmaMeaning77 => 'Bawrhsap chuan';

  @override
  String get asmaMeaning78 => 'A chungnung ber';

  @override
  String get asmaMeaning79 => 'Thil tha titu';

  @override
  String get asmaMeaning80 => 'Simna kaihruaitu';

  @override
  String get asmaMeaning81 => 'Phuba la latu';

  @override
  String get asmaMeaning82 => 'Ngaidamtu';

  @override
  String get asmaMeaning83 => 'Clement-a chuan a rawn ti a';

  @override
  String get asmaMeaning84 => 'Mi zawng zawng neitu / Lalber';

  @override
  String get asmaMeaning85 => 'Majesty leh Bounty neitu';

  @override
  String get asmaMeaning86 => 'A Inthlauhna';

  @override
  String get asmaMeaning87 => 'A khawlkhawmtu';

  @override
  String get asmaMeaning88 => 'Mi Hausa';

  @override
  String get asmaMeaning89 => 'A hausatu';

  @override
  String get asmaMeaning90 => 'Hriselna laka invenna';

  @override
  String get asmaMeaning91 => 'Hriselna thlentu';

  @override
  String get asmaMeaning92 => 'Hamthatna petu';

  @override
  String get asmaMeaning93 => 'Eng chu';

  @override
  String get asmaMeaning94 => 'Kaihruaitu chu';

  @override
  String get asmaMeaning95 => 'A bul tantu';

  @override
  String get asmaMeaning96 => 'Chatuan mi';

  @override
  String get asmaMeaning97 => 'Ro luahtu chu';

  @override
  String get asmaMeaning98 => 'Kaihhruaina Dik Ber';

  @override
  String get asmaMeaning99 => 'Damlo pakhat';
}
