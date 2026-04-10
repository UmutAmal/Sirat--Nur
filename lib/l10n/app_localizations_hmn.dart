// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hmong Mong (`hmn`).
class AppLocalizationsHmn extends AppLocalizations {
  AppLocalizationsHmn([String locale = 'hmn']) : super(locale);

  @override
  String get appTitle => 'Sirat-i Nur';

  @override
  String get splashTagline => 'Islamic Txoj Kev ntawm Lub Teeb';

  @override
  String get home => 'Tsev';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Daim ntawv qhia hnub';

  @override
  String get settings => 'Chaw';

  @override
  String get nextPrayer => 'Tom ntej no Thov Vajtswv';

  @override
  String get prayerTimes => 'Lub Sijhawm Thov Vajtswv';

  @override
  String get continueReading => 'Nyeem ntxiv';

  @override
  String get getLifetimePro => 'Tau txais Lifetime Pro';

  @override
  String get unlockTajweed => 'Xauv Tajweed & Advanced Features';

  @override
  String get prayerCalculation => 'Kev thov Vajtswv suav';

  @override
  String get method => 'Txoj kev suav';

  @override
  String get madhab => 'Asr Txoj Cai Lij Choj';

  @override
  String get surahs => 'Surahs';

  @override
  String get ayahs => 'Ayahs';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Sunrise';

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
    return 'Sijhawm rau $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Nws yog lub sij hawm thov Vajtswv $prayerName.';
  }

  @override
  String get dataStorage => 'Cov ntaub ntawv & Cia';

  @override
  String get clearCache => 'Clear Cache';

  @override
  String get cacheClearedSuccess => 'Cache cleared tiav';

  @override
  String get location => 'Qhov chaw';

  @override
  String get language => 'Lus';

  @override
  String get selectLanguage => 'Xaiv hom lus';

  @override
  String get searchLanguage => 'Tshawb nrhiav 180+ hom lus...';

  @override
  String get systemDefault => 'System Default';

  @override
  String get currentLocation => 'Qhov chaw tam sim no (GPS)';

  @override
  String get locationServiceDisabled => 'Qhov chaw pabcuam raug kaw.';

  @override
  String get locationPermissionDenied => 'Qhov chaw tso cai tsis kam lees.';

  @override
  String citiesCount(String count) {
    return '$count lub zos';
  }

  @override
  String get search => 'Nrhiav';

  @override
  String get searchHint => 'Nrhiav...';

  @override
  String get noResults => 'Tsis pom qhov tshwm sim';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'yuam kev';

  @override
  String get appErrorOccurred => 'Ib qho yuam kev tshwm sim';

  @override
  String get appUnknownError => 'Unknown yuam kev';

  @override
  String get retry => 'Rov sim dua';

  @override
  String get refreshAction => 'Hloov tshiab';

  @override
  String get cancel => 'Tso tseg';

  @override
  String get save => 'Txuag';

  @override
  String get delete => 'Rho tawm';

  @override
  String get edit => 'Kho kom raug';

  @override
  String get close => 'Kaw';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Yog lawm';

  @override
  String get no => 'Tsis muaj';

  @override
  String get surah => 'Surah';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Nplooj';

  @override
  String get reading => 'Nyeem ntawv';

  @override
  String get recitation => 'Rov hais dua';

  @override
  String get translation => 'Kev txhais lus';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Loading tafsir...';

  @override
  String get tafsirSourceLabel => 'Tafsir qhov chaw';

  @override
  String get tafsirNoSurahFound => 'Tsis muaj tafsir pom rau no surah.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Tsis pom tafsir rau ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir tsis tuaj yeem thauj khoom.';

  @override
  String get tafsirNoTextForAyah => 'Tsis muaj tafsir ntawv rau no ayah.';

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
    return 'Tafsir qhov chaw xa rov qab HTTP $statusCode yuam kev.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Cov xaiv tafsir qhov chaw xa rov qab tsis muaj kev nkag.';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get addBookmark => 'Ntxiv Bookmark';

  @override
  String get removeBookmark => 'Tshem tawm Bookmark';

  @override
  String get lastRead => 'Xeem Nyeem';

  @override
  String get dailyZikr => 'Txhua hnub Zikr';

  @override
  String get duaMeaning1 =>
      'Lwm tus thov Vajtswv tias, \'Peb tus Tswv, thov kom peb muaj kev zoo nyob hauv lub ntiaj teb no thiab hauv ntiaj teb no, thiab tiv thaiv peb los ntawm kev tsim txom ntawm hluav taws.\'';

  @override
  String get duaMeaning2 =>
      'Vajtswv tsis ris lub nra hnyav rau ib tug twg ntau tshaj li qhov nws muaj peev xwm: txhua tus tau txais txhua yam uas nws tau ua, thiab raug kev txom nyem los ntawm nws qhov phem - \'Tus Tswv, tsis txhob coj peb mus ua haujlwm yog tias peb tsis nco qab lossis ua yuam kev. Tus Tswv, tsis txhob ris peb ib yam li koj ris cov neeg ua ntej peb. Tus Tswv, tsis txhob nkim peb ntau dua li peb muaj zog los ris. Thov zam txim rau peb, zam txim rau peb, thiab zam txim rau peb. Koj yog peb tus Cawm Seej, yog li ntawd pab peb tawm tsam cov tsis ntseeg.\'';

  @override
  String get duaMeaning3 =>
      '\'Peb tus Tswv, tsis txhob cia peb lub siab hloov tom qab koj tau coj peb. Muab Koj txoj kev hlub tshua rau peb: Koj yog tus pub.';

  @override
  String get duaMeaning4 =>
      'Tus Tswv, thov pub kom kuv thiab kuv cov xeeb ntxwv ua raws li tej lus thov. Peb tus Tswv, lees txais kuv qhov kev thov.';

  @override
  String get duaMeaning5 =>
      'Thiab txo koj lub tis kom txo hwj chim rau lawv hauv kev ua siab zoo thiab hais tias, \'Tus Tswv, thov koj khuv leej lawv, ib yam li lawv saib xyuas kuv thaum kuv tseem yau.\'';

  @override
  String get duaMeaning6 =>
      'ua Vajtswv tsaug, tus uas tswj tau tiag tiag. [Yehauvas], tsis txhob maj hais ua ntej qhov kev tshwm sim yuav tiav, tiam sis hais tias, \'Tus Tswv, thov kom kuv paub ntxiv!\'';

  @override
  String get duaMeaning7 =>
      'Hais [Yehauvas] hais tias, \'Tus Tswv, zam txim thiab muaj kev hlub tshua: Koj yog tus uas hlub tshua tshaj txhua tus.\'';

  @override
  String get duaMeaning8 =>
      'cov uas thov Vajtswv hais tias, \'Peb tus Tswv, thov kom peb muaj kev xyiv fab ntawm peb cov txij nkawm thiab cov xeeb ntxwv. Ua rau peb ua piv txwv zoo rau cov uas paub txog koj\'.';

  @override
  String get morningZikr => 'Sawv ntxov Zikr';

  @override
  String get eveningZikr => 'Hmo Zikr';

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
  String get hadithBooks => 'Phau ntawv Hadith';

  @override
  String get searchHadith => 'Nrhiav Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Cov npe ntawm Allah';

  @override
  String get liveTv => 'Nyob TV';

  @override
  String get watchLive => 'Saib Live';

  @override
  String get streamError => 'kwj yuam kev';

  @override
  String get reload => 'Rov qab';

  @override
  String get openInYoutube => 'Qhib hauv YouTube';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Kev yoo mov';

  @override
  String get quranReading => 'Nyeem Quran';

  @override
  String get prayers => 'Kev thov Vajtswv';

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
  String get dhikrCount => 'Dhikr suav';

  @override
  String get weeklyProgress => 'Kev vam meej txhua lub lim tiam';

  @override
  String get monthlyProgress => 'Kev nce qib txhua hli';

  @override
  String get statistics => 'Kev txheeb cais';

  @override
  String get hijriCalendar => 'Hijri Calendar';

  @override
  String get gregorianCalendar => 'Gregorian Calendar';

  @override
  String get today => 'Hnub no';

  @override
  String get tomorrow => 'Tag kis';

  @override
  String get yesterday => 'Nag hmo';

  @override
  String get specialDays => 'Hnub tshwj xeeb';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Islamic Xyoo Tshiab';

  @override
  String get mawlidAnNabi => 'Mawlid thiab Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadan';

  @override
  String get specialDayDateEidAlFitr => '1 Shawal';

  @override
  String get specialDayDateEidAlAdha => '10 Dhul Hijjah';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharram';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabi al Awwal';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'Qibla Direction';

  @override
  String get compass => 'Compass';

  @override
  String get degrees => 'qib';

  @override
  String get north => 'North';

  @override
  String get qiblaFound => 'Qibla nrhiav tau!';

  @override
  String get turnDevice => 'Tig koj lub cuab yeej kom fim Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Compass yuam kev: $error';
  }

  @override
  String get notifications => 'Kev ceeb toom';

  @override
  String get prayerNotifications => 'Kev ceeb toom thov Vajtswv';

  @override
  String get enableNotifications => 'Qhib Kev Ceeb Toom';

  @override
  String get notificationTime => 'Ceeb Toom Sijhawm';

  @override
  String get beforePrayer => 'feeb ua ntej thov Vajtswv';

  @override
  String get theme => 'Ntsiab lus';

  @override
  String get lightMode => 'Lub teeb hom';

  @override
  String get darkMode => 'Tsaus hom';

  @override
  String get systemTheme => 'Lub ntsiab lus';

  @override
  String get about => 'Txog';

  @override
  String get version => 'Version';

  @override
  String get privacyPolicy => 'Txoj Cai Tswjfwm Ntiag Tug';

  @override
  String get termsOfService => 'Cov ntsiab lus ntawm Kev Pabcuam';

  @override
  String get contactUs => 'Tiv tauj peb';

  @override
  String get rateApp => 'Rate App';

  @override
  String get shareApp => 'Qhia App';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Mus saib $appName: Qhov kawg Islamic lub neej app! $url';
  }

  @override
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Download tiav';

  @override
  String get downloadFailed => 'Download Tsis Tau';

  @override
  String get offlineMode => 'Offline hom';

  @override
  String get noInternet => 'Tsis muaj Internet txuas';

  @override
  String get checkConnection => 'Thov xyuas koj qhov kev sib txuas';

  @override
  String get premium => 'Hwm';

  @override
  String get upgradeToPro => 'Hloov kho mus rau Pro';

  @override
  String get proFeatures => 'Pro nta';

  @override
  String get removeAds => 'Tshem Tawm Tawm';

  @override
  String get unlockAll => 'Xauv Tag Nrho Cov Ntsiab Lus';

  @override
  String get exclusiveContent => 'Cov ntsiab lus tshwj xeeb';

  @override
  String get welcome => 'Zoo siab txais tos';

  @override
  String get getStarted => 'Pib pib';

  @override
  String get skip => 'Hla';

  @override
  String get next => 'Tom ntej no';

  @override
  String get done => 'Ua tiav';

  @override
  String get onboarding1Title => 'Txais tos rau Sirat-ı Nur';

  @override
  String get onboarding1Desc =>
      'Koj ua tiav Islamic khub app rau lub sijhawm thov Vajtswv, Quran, thiab ntau dua';

  @override
  String get onboarding2Title => 'Lub Sijhawm Thov Vajtswv';

  @override
  String get onboarding2Desc =>
      'Lub sijhawm thov Vajtswv raug raws li koj qhov chaw nyob';

  @override
  String get onboarding3Title => 'Quran & Ntau';

  @override
  String get onboarding3Desc =>
      'Nyeem Quran, taug qab koj nyeem, thiab tshawb nrhiav cov ntsiab lus Islamic';

  @override
  String get dhikrLibrary => 'Lub tsev qiv ntawv Dhikr';

  @override
  String get resetCounter => 'Rov pib dua Counter';

  @override
  String get changeTarget => 'Hloov Lub Hom Phiaj';

  @override
  String get newTarget => 'Lub Hom Phiaj Tshiab';

  @override
  String targetCount(Object target) {
    return 'Hom phiaj: $target';
  }

  @override
  String get tapToCount => 'Coj mus rhaub suav';

  @override
  String get zikrCompletedMashAllah => 'Ua tiav! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah nyob deb tshaj txhua qhov tsis zoo.';

  @override
  String get zikrMeaningAlhamdulillah =>
      'Tag nrho cov qhuas belongs rau Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah yog tus loj tshaj.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Tsis muaj Vajtswv tab sis Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Kuv nrhiav Allah kev zam txim.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Tsis muaj hwj chim thiab tsis muaj zog tsuas yog los ntawm Allah.';

  @override
  String get dailyChecklist => 'Daim ntawv txheeb xyuas txhua hnub';

  @override
  String get qazaDebt => 'Qaza (Cov nuj nqis)';

  @override
  String get resetQazaData => 'Pib dua Qaza Data';

  @override
  String get resetQazaDebtQuestion => 'Rov pib dua Qaza Debt?';

  @override
  String get rawatib => 'Rawatib';

  @override
  String get tahajjud => 'Tahajjud';

  @override
  String get dailyProgress => 'Kev nce qib txhua hnub';

  @override
  String get mandatoryPrayers => 'Yuav Tsum Thov Vajtswv';

  @override
  String get sunnahAndOthers => 'Sunnah & Lwm tus';

  @override
  String get spiritualGrowth => 'Kev loj hlob ntawm sab ntsuj plig';

  @override
  String get mandatoryDuty => 'Yuav Tsum Tau Ua Haujlwm';

  @override
  String get totalPrayers => 'Tag Nrho Kev Thov Vajtswv';

  @override
  String get prayerDebt => 'Thov Vajtswv Ntshaw';

  @override
  String get fastingDebt => 'Fasting Debt';

  @override
  String get reset => 'Rov pib dua';

  @override
  String get days => 'Hnub';

  @override
  String get premiumIntegrity => 'Hwm Kev Ncaj Ncees';

  @override
  String get recheckPremium => 'Recheck Premium Status';

  @override
  String get syncStore => 'Sync nrog lub khw kom paub meej tias koj txoj cai.';

  @override
  String get checkingPremium => 'Tshawb xyuas cov xwm txheej premium...';

  @override
  String get premiumVerified => 'Hwm pov thawj.';

  @override
  String get premiumNotFound => 'Hwm tsis pom.';

  @override
  String premiumRefreshError(Object error) {
    return 'Tsis tuaj yeem hloov kho cov xwm txheej hwm: $error';
  }

  @override
  String get offlineDownloadManager => 'Offline Download Manager';

  @override
  String get manageDatasets => 'Tswj loj heev offline audio & dataset packs.';

  @override
  String get freeStorage => 'Tso cov khoom siv sab hauv cia.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Tshawb xyuas Quran Database';

  @override
  String get verifyQuranContent => 'Txheeb xyuas 114 surahs thiab 6236 ayahs.';

  @override
  String get checkingQuranDb => 'Tshawb xyuas Quran database ...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Tsis tiav';

  @override
  String get notSeeded => 'Tsis noob';

  @override
  String get quranDbStatus => 'Quran Database Status';

  @override
  String statusLabel(Object status) {
    return 'xwm txheej: $status';
  }

  @override
  String surahsCount(Object count) {
    return 'Surahs: $count (xav txog 114)';
  }

  @override
  String ayahsCount(Object count) {
    return 'Ayahs: $count (xav tias 6236)';
  }

  @override
  String missingArabic(Object count) {
    return 'Tsis muaj Arabic: $count';
  }

  @override
  String missingEnglish(Object count) {
    return 'Lus Askiv uas ploj lawm: $count';
  }

  @override
  String missingTurkish(Object count) {
    return 'Tsis muaj Turkish: $count';
  }

  @override
  String dbVersion(Object version) {
    return 'DB Version: $version';
  }

  @override
  String dbPath(Object path) {
    return 'Txoj kev: $path';
  }

  @override
  String quranCheckFailed(Object error) {
    return 'Quran check ua tsis tau tejyam: $error';
  }

  @override
  String get audioVoice => 'Lub Suab';

  @override
  String get audioVoiceMisharyAlafasy => 'Txiv neej (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Txiv neej (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Txiv neej (Sudais)';

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
      'Txo cov sensor jitter rau ib rab koob khov kho.';

  @override
  String get calibrationOffset => 'Calibration Offset';

  @override
  String currentOffset(Object offset) {
    return 'Tam sim no: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Kho yog tias koj lub compass xav tau phau ntawv kho. Cov txiaj ntsig zoo tig clockwise.';

  @override
  String get apply => 'Thov';

  @override
  String get resetOnboarding => 'Pib dua Onboarding';

  @override
  String get rerunSetup => 'Rov ua dua txheej txheem kev teeb tsa thawj zaug.';

  @override
  String get diagnostics => 'Kev kuaj mob';

  @override
  String get diagnosticsNotSet => 'Tsis teem';

  @override
  String get diagnosticsPrayerProfile => 'Thov Vajtswv Profile';

  @override
  String get diagnosticsPrayerSource => 'Txoj Cai Thov Vajtswv';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Kev cai / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manual custom angles (tsis muaj qhov chaw ua haujlwm)';

  @override
  String get diagnosticsCloudDriven => 'Huab Tsav';

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
    return '$count cov ntaub ntawv';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifest nyeem tsis tau: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Localization Qhov chaw';

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
      'Huab rooj ploj hauv Supabase; bundled fallback active';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Huab juz metadata ploj lawm; bundled structural fallback active';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Cloud structural check failed: $error';
  }

  @override
  String get healthCheckDesc =>
      'Khiav kev kuaj mob thiab saib xyuas qhov system.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Tig mus Nrhiav Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Calibration yuav tsum tau. Tig lub cuab yeej hauv daim duab-8.';

  @override
  String get dailyVerse => 'Txhua Hnub Verse';

  @override
  String get todaysIbadah => 'Hnub no yog Ibadah';

  @override
  String get quickAccess => 'Kev nkag ceev';

  @override
  String get assistant => 'Tus pab';

  @override
  String get places => 'Qhov chaw';

  @override
  String get library => 'Lub tsev qiv ntawv';

  @override
  String get analytics => 'Analytics';

  @override
  String get dailyDuas => 'Daily Duas';

  @override
  String essentialDuas(String count) {
    return '$count tseem ceeb duas';
  }

  @override
  String get duaUnavailableTitle => 'Verified duas tseem tsis tau muaj';

  @override
  String get duaUnavailableBody =>
      'Txheeb xyuas txhua hnub duas tseem tsis tau synced rau lub cuab yeej no. Txuas mus rau huab qhov chaw thauj khoom duas es tsis txhob muaj qhov rov qab tsis tau lees paub.';

  @override
  String get duaCategoryQuranic => 'Quranic dua';

  @override
  String get duaCategoryMorningEvening => 'Sawv ntxov & yav tsaus ntuj';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Kev tiv thaiv';

  @override
  String get duaCategoryBeginning => 'Pib';

  @override
  String get duaCategorySleep => 'Pw tsaug zog';

  @override
  String get duaCategoryFoodDrink => 'Khoom noj & haus';

  @override
  String get duaCategoryForgiveness => 'Kev zam txim';

  @override
  String get duaCategoryHome => 'Tsev';

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
  String get islamicEducation => 'Kev Kawm Islamic';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Hadith Collections';

  @override
  String get hadithSourcePending => 'Txheeb xyuas qhov chaw tos';

  @override
  String get hadithUnavailableTitle =>
      'Kev txheeb xyuas hadith collections tseem tsis tau muaj';

  @override
  String get hadithUnavailableBody =>
      'Qhov kev tsim no tseem nyob ntawm qhov tsis tau lees paub sab nraud hadith pub. Hadith browsing nyob twj ywm tsis ua hauj lwm kom txog rau thaum ib tug sourced dataset yog synced.';

  @override
  String get paywallUnlockAll =>
      'Xauv tag nrho cov yam ntxwv rau koj txoj kev mus rau sab ntsuj plig';

  @override
  String get premiumProductUnavailable =>
      'Cov khoom hwm zoo tsis muaj tam sim no. Thov rov sim dua tom qab.';

  @override
  String get premiumPurchaseFailed =>
      'Kev yuav khoom tsis tuaj yeem ua tiav. Thov rov sim dua.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'Unlimited AI-powered Q&A';

  @override
  String get paywallFeature2Title => 'Unlimited Offline';

  @override
  String get paywallFeature2Desc => 'Download tau tag nrho cov lus qhia';

  @override
  String get paywallFeature3Title => 'Tshwj xeeb tsim';

  @override
  String get paywallFeature3Desc => 'Hwm ntxhais & fonts';

  @override
  String get paywallFeature4Title => 'Ad-dawb';

  @override
  String get paywallFeature4Desc => 'Zero tshaj tawm';

  @override
  String get paywallGetAccess =>
      'Tau Txais Kev Nkag Mus Rau Lub Neej - \$ 1.00';

  @override
  String get restorePurchases => 'Rov qab kev yuav khoom';

  @override
  String get zakatCalculator => 'Zakat Tshuab xam zauv';

  @override
  String get zakatGold => 'Kub (Altın)';

  @override
  String get zakatSilver => 'Nyiaj (Gümüş)';

  @override
  String get zakatCashBank => 'Nyiaj ntsuab / Bank';

  @override
  String get zakatBusiness => 'Kev lag luam';

  @override
  String get zakatInvestments => 'Kev nqis peev';

  @override
  String get zakatWeightGrams => 'Qhov hnyav (g)';

  @override
  String get zakatPricePerGram => 'Nqe / g';

  @override
  String get zakatTotalAmount => 'Tus nqi tag nrho';

  @override
  String get zakatInventoryValue => 'Cov khoom muaj nqis';

  @override
  String get zakatDebts => 'Cov nuj nqis';

  @override
  String get zakatTotal => 'Tag nrho';

  @override
  String get calculateZakat => 'Xam Zakat';

  @override
  String get nisabNotReached =>
      'Nisab tsis mus txog. Zakat tsis yog yuav tsum tau ua.';

  @override
  String get totalZakat => 'Total Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Cov khoom muaj nqis: $assets';
  }

  @override
  String get zakatGoldZakat => 'Kub Zakat';

  @override
  String get zakatSilverZakat => 'Silver Zakat';

  @override
  String get zakatCashZakat => 'Nyiaj Zakat';

  @override
  String get zakatBusinessZakat => 'Lag luam Zakat';

  @override
  String get zakatInvestmentZakat => 'Kev nqis peev Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Cov lus nug txhua hnub mus txog qhov txwv. Hloov kho mus rau Premium tsis txwv.';

  @override
  String get chatbotErrorMsg =>
      'Kuv tsis tuaj yeem tsim cov lus teb. Thov rov sim dua.';

  @override
  String get chatbotOfflinePrompt =>
      'Lub hauv paus kev paub txog kev paub txog kev txheeb xyuas offline Islamic tseem raug kho. Koj tuaj yeem qhib offline fallback tam sim no, tab sis nws tsuas yog qhia cov lus tsis muaj kev nyab xeeb kom txog thaum cov ntaub ntawv tau npaj txhij.\n\nKoj puas xav qhib offline fallback?';

  @override
  String get chatbotOfflineSwitched =>
      'Offline fallback enabled. Txheeb xyuas cov lus teb hauv zos Islamic tseem tsis tau npaj.';

  @override
  String get chatbotOfflineDownloadLabel => 'Qhib Offline Fallback';

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
  String get downloadAction => 'Download tau';

  @override
  String get resumeDownload => 'Rov qab Download';

  @override
  String get deleteDownloadedFiles => 'Rho tawm cov ntaub ntawv Downloaded';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Download tau muab tso tseg rau $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Download tau tiav rau $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Download tiav rau $reciter nrog $failed ua tsis tiav surahs ($downloaded/$total rub tawm).';
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
  String get sukunMixerSubtitle => 'Ntuj & Qur\'an Mixer';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (Nature)';

  @override
  String get sukunRainOfMercy => 'Los nag kev hlub';

  @override
  String get sukunGardenOfPeace => 'Lub vaj kaj siab lug';

  @override
  String get sukunMidnightCalm => 'Ib tag hmo Calm';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Soundscapes tsis muaj';

  @override
  String get sukunUnavailableBody =>
      'Qhov kev tsim no tsis suav nrog Sukun soundscape cov cuab tam tseem ceeb.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Hnub streak';

  @override
  String get bestStreak => 'Qhov zoo tshaj plaws streak';

  @override
  String get chatbotCloudAiLabel => 'Huab AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Qhib Offline Fallback';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count sab laug';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API tsis tau teeb tsa. Thov hloov mus rau Local AI.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Txheeb xyuas cov lus qhia hauv zos Islamic tseem tsis tau muaj. Hloov mus rau Cloud AI rau cov lus teb tau txais.';

  @override
  String get mosques => 'Mosques';

  @override
  String get halalFood => 'Khoom noj khoom haus Halal';

  @override
  String get placesSearchArea => 'Tshawb xyuas thaj chaw no';

  @override
  String get nearbyMosques => 'Nyob ze Mosques';

  @override
  String get islamicSchools => 'Cov Tsev Kawm Ntawv Islamic';

  @override
  String placesFoundCount(String count) {
    return '$count pom';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km deb';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API yuam kev: $statusCode';
  }

  @override
  String get placesNetworkError => 'Network yuam kev. Thov rov sim dua.';

  @override
  String get placesLocationRequiredTitle => 'Qhov chaw xav tau';

  @override
  String get placesLocationRequiredBody =>
      'Teem ib qhov chaw ua ntej kom cov mosques nyob ze, cov zaub mov halal, thiab cov tsev kawm Islamic tuaj yeem tshawb xyuas kom raug.';

  @override
  String get placesMapTilesUnavailableTitle => 'Daim ntawv qhia vuas tsis muaj';

  @override
  String get placesMapTilesUnavailableBody =>
      'Ib daim ntawv qhia cov pobzeb cov ntaub ntawv pov thawj tseem tsis tau teeb tsa rau qhov kev tsim no. Cov chaw nyob ze tseem tuaj yeem thauj khoom los ntawm koj qhov chaw khaws cia.';

  @override
  String get unknownPlaceName => 'Tsis paub lub npe';

  @override
  String get islamicPlaceFallback => 'Qhov chaw Islamic';

  @override
  String get asmaMeaning1 => 'The Beneficent';

  @override
  String get asmaMeaning2 => 'The Merciful';

  @override
  String get asmaMeaning3 => 'Tus Vajntxwv / Tus Tswv Nyob Mus Ib Txhis';

  @override
  String get asmaMeaning4 => 'Tus Dawb Huv';

  @override
  String get asmaMeaning5 => 'Txoj Kev Thaj Yeeb';

  @override
  String get asmaMeaning6 => 'Tus Muab Kev Ruaj Ntseg';

  @override
  String get asmaMeaning7 => 'Tus Saib Xyuas';

  @override
  String get asmaMeaning8 => 'Qhov Muaj Nqis / Muaj Hwjchim Loj Kawg Nkaus';

  @override
  String get asmaMeaning9 => 'The Compeller';

  @override
  String get asmaMeaning10 => 'The Greatest';

  @override
  String get asmaMeaning11 => 'Tus Tsim';

  @override
  String get asmaMeaning12 => 'Tus tsim kev txiav txim';

  @override
  String get asmaMeaning13 => 'Lub Shaper of Beauty';

  @override
  String get asmaMeaning14 => 'Kev zam txim';

  @override
  String get asmaMeaning15 => 'The Subduer';

  @override
  String get asmaMeaning16 => 'Tus Muab Txhua Tus';

  @override
  String get asmaMeaning17 => 'The Sustainer';

  @override
  String get asmaMeaning18 => 'The Opener';

  @override
  String get asmaMeaning19 => 'Tus Paub Txhua Tus';

  @override
  String get asmaMeaning20 => 'The Constrictor';

  @override
  String get asmaMeaning21 => 'The Reliever';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'Tus Tswv ntawm Honour';

  @override
  String get asmaMeaning25 => 'The Humiliator';

  @override
  String get asmaMeaning26 => 'Tus Mloog Txhua Tus';

  @override
  String get asmaMeaning27 => 'Tus Saib Xyuas Txhua Tus';

  @override
  String get asmaMeaning28 => 'The Judge';

  @override
  String get asmaMeaning29 => 'The Just';

  @override
  String get asmaMeaning30 => 'The Subtle One';

  @override
  String get asmaMeaning31 => 'The All Aware';

  @override
  String get asmaMeaning32 => 'The Forebearing';

  @override
  String get asmaMeaning33 => 'The Magnificent';

  @override
  String get asmaMeaning34 => 'Tus Tswv zam txim';

  @override
  String get asmaMeaning35 => 'Tus nqi zog ntawm kev ua tsaug';

  @override
  String get asmaMeaning36 => 'Qhov siab tshaj';

  @override
  String get asmaMeaning37 => 'The Greatest';

  @override
  String get asmaMeaning38 => 'The Preserver';

  @override
  String get asmaMeaning39 => 'The Nourisher';

  @override
  String get asmaMeaning40 => 'The Reckoner';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'The Generous';

  @override
  String get asmaMeaning43 => 'Tus Saib Xyuas';

  @override
  String get asmaMeaning44 => 'Lub Teb rau Kev Thov Vajtswv';

  @override
  String get asmaMeaning45 => 'Txhua qhov kev nkag siab';

  @override
  String get asmaMeaning46 => 'Txoj Kev Txawj Ntse';

  @override
  String get asmaMeaning47 => 'Tus Hlub';

  @override
  String get asmaMeaning48 => 'Tus Muaj Hwjchim Loj Kawg Nkaus';

  @override
  String get asmaMeaning49 => 'The Resurrector';

  @override
  String get asmaMeaning50 => 'Cov Timkhawv';

  @override
  String get asmaMeaning51 => 'Qhov Tseeb';

  @override
  String get asmaMeaning52 => 'Txhua Tus Trustee txaus';

  @override
  String get asmaMeaning53 => 'Tus Muaj Peev Xwm Txhua Lub Zog';

  @override
  String get asmaMeaning54 => 'The Forceful';

  @override
  String get asmaMeaning55 => 'Tus tiv thaiv';

  @override
  String get asmaMeaning56 => 'The Praised';

  @override
  String get asmaMeaning57 => 'The Appraiser';

  @override
  String get asmaMeaning58 => 'The Originator';

  @override
  String get asmaMeaning59 => 'The Restorer';

  @override
  String get asmaMeaning60 => 'Tus Muab Txojsia';

  @override
  String get asmaMeaning61 => 'Tus Neeg Lub Neej';

  @override
  String get asmaMeaning62 => 'Lub Neej Nyob';

  @override
  String get asmaMeaning63 => 'Kev Pab Txhawb Tus Kheej';

  @override
  String get asmaMeaning64 => 'The Finder';

  @override
  String get asmaMeaning65 => 'The Glorious';

  @override
  String get asmaMeaning66 => 'The only one';

  @override
  String get asmaMeaning67 => 'The One';

  @override
  String get asmaMeaning68 => 'Tus Neeg Nrhiav Txhua Tus';

  @override
  String get asmaMeaning69 => 'The Powerful';

  @override
  String get asmaMeaning70 => 'Tus tsim ntawm txhua lub hwj chim';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'The Delayer';

  @override
  String get asmaMeaning73 => 'The First';

  @override
  String get asmaMeaning74 => 'Lub Xeem';

  @override
  String get asmaMeaning75 => 'The Manifest';

  @override
  String get asmaMeaning76 => 'The Hidden';

  @override
  String get asmaMeaning77 => 'Tus tswv xeev';

  @override
  String get asmaMeaning78 => 'The Supreme One';

  @override
  String get asmaMeaning79 => 'Tus Ua Zoo';

  @override
  String get asmaMeaning80 => 'Phau Ntawv Qhia Txog Kev Hloov Siab';

  @override
  String get asmaMeaning81 => 'The Avenger';

  @override
  String get asmaMeaning82 => 'Tus zam txim';

  @override
  String get asmaMeaning83 => 'The Clement';

  @override
  String get asmaMeaning84 => 'Tus tswv / Sovereign of All';

  @override
  String get asmaMeaning85 => 'Tus Muaj Peev Xwm ntawm Majesty thiab Nyiaj Pov';

  @override
  String get asmaMeaning86 => 'The Equitable One';

  @override
  String get asmaMeaning87 => 'The Gatherer';

  @override
  String get asmaMeaning88 => 'The Rich One';

  @override
  String get asmaMeaning89 => 'The Enricher';

  @override
  String get asmaMeaning90 => 'Tus Tiv Thaiv Kev Ua Phem';

  @override
  String get asmaMeaning91 => 'Tus coj kev puas tsuaj';

  @override
  String get asmaMeaning92 => 'Cov Kev Pab Zoo Tshaj Plaws';

  @override
  String get asmaMeaning93 => 'Lub Teeb';

  @override
  String get asmaMeaning94 => 'The Guider';

  @override
  String get asmaMeaning95 => 'The Originator';

  @override
  String get asmaMeaning96 => 'Txoj Kev Mus Ib Txhis';

  @override
  String get asmaMeaning97 => 'The Inheritor';

  @override
  String get asmaMeaning98 => 'Cov Lus Qhia Ncaj Ncees';

  @override
  String get asmaMeaning99 => 'Tus Neeg Mob Ib';
}
