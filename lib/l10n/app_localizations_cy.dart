// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Welsh (`cy`).
class AppLocalizationsCy extends AppLocalizations {
  AppLocalizationsCy([String locale = 'cy']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Ffordd Goleuni Islamaidd';

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
  String get locationServiceDisabled =>
      'Mae\'r gwasanaeth lleoliad wedi\'i analluogi.';

  @override
  String get locationPermissionDenied => 'Caniatâd lleoliad wedi\'i wrthod.';

  @override
  String get locationDetectionFailed =>
      'Methu canfod eich lleoliad. Dewiswch ddinas â llaw neu ceisiwch eto.';

  @override
  String citiesCount(String count) {
    return '$count dinasoedd';
  }

  @override
  String get search => 'Chwiliwch';

  @override
  String get searchHint => 'Chwilio...';

  @override
  String get noResults => 'No results found';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get appErrorOccurred => 'Digwyddodd gwall';

  @override
  String get appUnknownError => 'Gwall anhysbys';

  @override
  String get quranLoadFailed =>
      'Nid oedd modd llwytho cynnwys y Quran. Ceisiwch eto.';

  @override
  String get retry => 'Ceisiwch eto';

  @override
  String get refreshAction => 'Refresh';

  @override
  String get cancel => 'Canslo';

  @override
  String get save => 'Arbed';

  @override
  String get delete => 'Delete';

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
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

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
  String get tafsirLoading => 'Wrthi\'n llwytho tafsir...';

  @override
  String get tafsirSourceLabel => 'ffynhonnell Tafsir';

  @override
  String get tafsirNoSurahFound =>
      'Ni chafwyd hyd i tafsir ar gyfer y surah hwn.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Ni chafwyd hyd i tafsir ar gyfer ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Nid oedd modd llwytho Tafsir.';

  @override
  String get tafsirNoTextForAyah => 'Dim testun tafsir ar gyfer y ayah hwn.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Lawrlwytho tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Yn llwytho tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Dychwelodd ffynhonnell Tafsir wall HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Ni ddychwelodd y ffynhonnell tafsir a ddewiswyd unrhyw gofnodion.';

  @override
  String get tafsirCacheUnavailable =>
      'Nid yw tafsir wedi\'i ddilysu ar gael all-lein eto. Cysoni set ddata tafsir o ffynhonnell cyn pori.';

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
  String get duaMeaning1 =>
      'gweddïa eraill, ‘Ein Harglwydd, dyro inni ddaioni yn y byd hwn ac yn y dyfodol, ac amddiffyn ni rhag poenedigaeth y Tân.’';

  @override
  String get duaMeaning2 =>
      'Nid yw Duw yn rhoi mwy o faich ar unrhyw enaid nag y gall ei ddwyn: y mae pob un yn ennill pa les bynnag y mae wedi’i wneud, ac yn dioddef ei ddrwg - ‘Arglwydd, paid â chymryd ni i orchwyl os anghofiwn neu os gwnawn gamgymeriadau. Arglwydd, paid â rhoi baich arnom fel y gwnaethost feichiau ar y rhai o\'n blaenau. Arglwydd, paid â rhoi mwy o faich arnom nag sydd gennym ni nerth i\'w ddwyn. Maddeu inni, maddau inni, a thrugarha wrthym. Ti yw ein Amddiffynnydd, felly helpa ni yn erbyn yr anghredinwyr.’';

  @override
  String get duaMeaning3 =>
      '‘Ein Harglwydd, paid â gadael i\'n calonnau wyro ar ôl i ti ein harwain. Caniatâ inni Dy drugaredd: Ti yw\'r Rhoddwr Tragwyddol.';

  @override
  String get duaMeaning4 =>
      'Arglwydd, caniatâ i mi a\'m hiliogaeth gadw i fynu y weddi. Ein Harglwydd, derbyn fy nghais.';

  @override
  String get duaMeaning5 =>
      'a gostwng dy adain mewn gostyngeiddrwydd tuag atynt mewn caredigrwydd, a dywed, ‘Arglwydd, trugarha wrthynt, fel yr oeddent yn gofalu amdanaf pan oeddwn yn fach’.';

  @override
  String get duaMeaning6 =>
      'dyrchafedig fyddo Duw, yr hwn sydd yn rheoli yn wirioneddol. [Proffwyd], paid â rhuthro i adrodd cyn y bydd y datguddiad yn gyflawn, ond dywed, ‘Arglwydd, cynydd fi mewn gwybodaeth!’';

  @override
  String get duaMeaning7 =>
      'Dywedwch [Proffwyd], ‘Arglwydd, maddau a thrugarha: Ti yw’r mwyaf trugarog oll.’';

  @override
  String get duaMeaning8 =>
      'y rhai sy’n gweddïo, ‘Ein Harglwydd, rho inni lawenydd yn ein priod a’n hiliogaeth. Gwna ni yn esiamplau da i’r rhai sy’n ymwybodol ohonot Ti’.';

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
  String get islamicNewYear => 'Blwyddyn Newydd Islamaidd';

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
  String qiblaCompassErrorDetails(String error) {
    return 'Gwall cwmpawd: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Nid yw synhwyrydd cwmpawd ar gael ar y ddyfais hon.';

  @override
  String get qiblaLocationRequiredTitle => 'Location required for Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Set your actual location before using the Qibla compass so the direction can be calculated accurately.';

  @override
  String get adhanNotificationChannelName => 'Adhan Notifications';

  @override
  String get adhanNotificationChannelDescription =>
      'Prayer time alerts with adhan sound.';

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
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'Lawrlwythiadau';

  @override
  String get downloading => 'Wrthi\'n llwytho i lawr...';

  @override
  String get downloadComplete => 'Download Complete';

  @override
  String get downloadFailed => 'Download Failed';

  @override
  String get offlineMode => 'Modd All-lein';

  @override
  String get noInternet => 'No Internet Connection';

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
  String get resetCounter => 'Ailosod Cownter';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'Cyfrif targed: $target';
  }

  @override
  String get tapToCount => 'Tapiwch i gyfrif';

  @override
  String get zikrCompletedMashAllah => 'Wedi\'i gwblhau! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Mae Allah ymhell uwchlaw pob amherffeithrwydd.';

  @override
  String get zikrMeaningAlhamdulillah => 'Mae pob clod yn perthyn i Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah yw\'r Mwyaf.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Nid oes duw ond Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Rwy\'n ceisio maddeuant Allah.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Nid oes unrhyw bŵer a dim cryfder ac eithrio trwy Allah.';

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
  String get dailyProgress => 'Cynnydd Dyddiol';

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
  String get recheckPremium => 'Ailwirio statws tanysgrifiad premiwm';

  @override
  String get syncStore =>
      'Cysoni gyda\'r app store i gadarnhau eich tanysgrifiad premiwm.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'Tanysgrifiad premiwm wedi\'i ddilysu.';

  @override
  String get premiumNotFound => 'Heb ganfod tanysgrifiad premiwm.';

  @override
  String premiumRefreshError(Object error) {
    return 'Methu ag adnewyddu statws tanysgrifiad premiwm: $error';
  }

  @override
  String get offlineDownloadManager => 'Offline Download Manager';

  @override
  String get manageDatasets =>
      'Rheoli pecynnau sain a set ddata enfawr all-lein.';

  @override
  String get freeStorage => 'Rhyddhau storfa ddyfais fewnol.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'Wrthi\'n gwirio cronfa ddata Quran...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'Statws Cronfa Ddata Quran';

  @override
  String statusLabel(Object status) {
    return 'Statws: $status';
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
  String get audioVoice => 'Llais Clywedol';

  @override
  String get audioVoiceMisharyAlafasy => 'Gwryw (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Gwryw (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Gwryw (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Calibradu Qibla';

  @override
  String get compassSmoothing => 'Llyfnu Cwmpawd';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Graddnodi Gwrthbwyso';

  @override
  String currentOffset(Object offset) {
    return 'Cyfredol: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Addaswch os oes angen cywiriad â llaw ar eich cwmpawd. Mae gwerthoedd cadarnhaol yn cylchdroi clocwedd.';

  @override
  String get apply => 'Cymhwyso newidiadau';

  @override
  String get resetOnboarding => 'Ailosod gosodiad y cyflwyniad';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Diagnosteg';

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
      'Onglau personol â llaw (dim ffynhonnell sefydliadol)';

  @override
  String get diagnosticsCloudDriven => 'Gyrrwr Cwmwl';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Asedau Sain';

  @override
  String get diagnosticsUiAudioAssets => 'Asedau Sain UI';

  @override
  String get diagnosticsQuranAudioAssets => 'Asedau Sain Quran';

  @override
  String get diagnosticsAudioAssets => 'Asedau Sain';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count ffeil';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Methodd darlleniad y maniffest: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Localization Locales';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count cefnogi';
  }

  @override
  String get diagnosticsQuranDataset => 'Set ddata Quran';

  @override
  String get diagnosticsQuranSurahs => 'Surahs Quran';

  @override
  String get diagnosticsQuranAyahs => 'Quran Ayahs';

  @override
  String get diagnosticsQuranJuzMetadata => 'Metadata Juz Quran';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Tablau cwmwl ar goll yn Supabase; bwndelu wrth gefn yn weithredol';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Methodd y gwiriad cwmwl: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Metadata cwmwl juz ar goll; bwndelu strwythurol wrth gefn yn weithredol';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Methodd gwiriad strwythurol y cwmwl: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Mae angen graddnodi. Cylchdroi dyfais yn ffigur-8.';

  @override
  String get dailyVerse => 'Pennill Dyddiol';

  @override
  String get dailyVerseUnavailableTitle => 'Pennill dyddiol ddim ar gael';

  @override
  String get dailyVerseUnavailableBody =>
      'Nid yw cynnwys pennill dyddiol wedi\'i ddilysu wedi\'i ffurfweddu ar gyfer y llun hwn eto. Cysylltwch â ffynhonnell y cwmwl neu cysoni storfa wedi\'i dilysu cyn pori.';

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
  String get sukunAudioTitle => 'Seinweddau Sukun';

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
      'Datgloi\'r holl nodweddion ar gyfer eich taith ysbrydol';

  @override
  String get premiumProductUnavailable =>
      'Nid yw cynnyrch premiwm ar gael ar hyn o bryd. Ceisiwch eto yn nes ymlaen.';

  @override
  String get premiumPurchaseFailed =>
      'Ni ellid cwblhau\'r pryniant. Ceisiwch eto.';

  @override
  String get paywallFeature1Title => 'Cynorthwy-ydd Niwral Plws';

  @override
  String get paywallFeature1Desc =>
      'Holi ac Ateb diderfyn wedi\'i bweru gan AI';

  @override
  String get paywallFeature2Title => 'Unlimited All-lein';

  @override
  String get paywallFeature2Desc => 'Lawrlwythwch yr holl ddatganiadau';

  @override
  String get paywallFeature3Title => 'Dyluniadau Unigryw';

  @override
  String get paywallFeature3Desc => 'Themâu a ffontiau premiwm';

  @override
  String get paywallFeature4Title => 'Ad-Free';

  @override
  String get paywallFeature4Desc => 'Hysbysebion sero';

  @override
  String get paywallGetAccess => 'Cael Mynediad Gydol Oes - \$1.00';

  @override
  String get restorePurchases => 'Adfer Pryniannau';

  @override
  String get zakatCalculator => 'Cyfrifiannell Zakat';

  @override
  String get zakatGold => 'Aur (Altın)';

  @override
  String get zakatSilver => 'Arian (Gümüş)';

  @override
  String get zakatCashBank => 'Arian Parod / Banc';

  @override
  String get zakatBusiness => 'Busnes';

  @override
  String get zakatInvestments => 'Buddsoddiadau';

  @override
  String get zakatWeightGrams => 'Pwysau (g)';

  @override
  String get zakatPricePerGram => 'Pris/g';

  @override
  String get zakatTotalAmount => 'Cyfanswm';

  @override
  String get zakatInventoryValue => 'Gwerth Stocrestr';

  @override
  String get zakatDebts => 'Dyledion';

  @override
  String get zakatTotal => 'Cyfanswm';

  @override
  String get calculateZakat => 'Cyfrifwch Zakat';

  @override
  String get nisabNotReached => 'Nisab heb gyrraedd. Nid yw Zakat yn orfodol.';

  @override
  String get totalZakat => 'Cyfanswm Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Asedau: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakat Aur';

  @override
  String get zakatSilverZakat => 'Zakat Arian';

  @override
  String get zakatCashZakat => 'Arian parod Zakat';

  @override
  String get zakatBusinessZakat => 'Busnes Zakat';

  @override
  String get zakatInvestmentZakat => 'Buddsoddiad Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Cyrhaeddwyd terfyn ymholiad dyddiol. Uwchraddio i Premiwm ar gyfer diderfyn.';

  @override
  String get chatbotErrorMsg => 'Ni allwn gynhyrchu ymateb. Ceisiwch eto.';

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
  String get offlineQuranAudioPacks => 'Pecynnau Sain Quran All-lein';

  @override
  String storedOnDeviceMb(String size) {
    return 'Wedi\'i storio ar ddyfais: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surahs downloaded';
  }

  @override
  String get redownloadMissingRepair => 'Repair / Download Missing';

  @override
  String get downloadAction => 'Lawrlwythwch';

  @override
  String get resumeDownload => 'Parhewch i lawrlwytho';

  @override
  String get deleteDownloadedFiles => 'Dileu Ffeiliau Wedi\'u Lawrlwytho';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Llawrlwythiad wedi\'i ganslo ar gyfer $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Lawrlwytho wedi\'i gwblhau ar gyfer $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Gorffennodd y llwytho i lawr ar gyfer $reciter gyda $failed swrahs wedi methu ($downloaded/$total llwytho i lawr).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Ffeiliau all-lein wedi\'u dileu ar gyfer $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Verified Quran audio sources are unavailable right now.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Mae pecyn sain Verified Quran yn anghyflawn ($available/$total). Ceisiwch eto ar ôl i\'r catalog sain gael ei ddiweddaru.';
  }

  @override
  String get chatbotHint => 'Ask a question...';

  @override
  String get chatbotThinking => 'Thinking...';

  @override
  String get sukunMixerSubtitle => 'Cymysgydd Natur a Qur\'an';

  @override
  String get audioPlayFailed => 'Wedi methu chwarae sain';

  @override
  String get sukunNatureLabel => 'Sukun (Natur)';

  @override
  String get sukunRainOfMercy => 'Glaw Trugaredd';

  @override
  String get sukunGardenOfPeace => 'Gardd Heddwch';

  @override
  String get sukunMidnightCalm => 'Tawel hanner nos';

  @override
  String get sukunOceanTawheed => 'Cefnfor Tawheed';

  @override
  String get sukunUnavailableTitle => 'Nid yw seinweddau ar gael';

  @override
  String get sukunUnavailableBody =>
      'Nid yw\'r adeiladwaith hwn yn cynnwys yr asedau seinwedd Sukun gofynnol eto.';

  @override
  String get prayerCompletion => 'Cwblhad Gweddi';

  @override
  String get streaks => 'Rhediadau';

  @override
  String get dayStreak => 'Rhediad dydd';

  @override
  String get bestStreak => 'Rhediad gorau';

  @override
  String get chatbotCloudAiLabel => 'Cwmwl AI';

  @override
  String get chatbotLocalAiLabel => 'All-lein wrth gefn';

  @override
  String get chatbotUseCloudAi => 'Defnyddiwch Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Galluogi All-lein Wrth Gefn';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count chwith';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Nid yw Cloud API wedi\'i ffurfweddu. Nid yw canllawiau Islamaidd all-lein wedi\'u dilysu ar gael eto.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Nid yw canllawiau Islamaidd lleol wedi\'u dilysu ar gael eto. Newidiwch i Cloud AI am atebion o ffynonellau.';

  @override
  String get mosques => 'Mosgiau';

  @override
  String get halalFood => 'Bwyd Halal';

  @override
  String get placesSearchArea => 'Chwiliwch yr ardal hon';

  @override
  String get nearbyMosques => 'Mosgiau cyfagos';

  @override
  String get islamicSchools => 'Ysgolion Islamaidd';

  @override
  String placesFoundCount(String count) {
    return '$count canfuwyd';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km i ffwrdd';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Gwall API: $statusCode';
  }

  @override
  String get placesNetworkError => 'Gwall rhwydwaith. Ceisiwch eto.';

  @override
  String get placesLocationRequiredTitle => 'Angen lleoliad';

  @override
  String get placesLocationRequiredBody =>
      'Gosodwch leoliad yn gyntaf fel y gellir chwilio\'n gywir am fosgiau cyfagos, bwyd halal, ac ysgolion Islamaidd.';

  @override
  String get placesMapTilesUnavailableTitle => 'Nid yw teils map ar gael';

  @override
  String get placesMapTilesUnavailableBody =>
      'Nid yw ffynhonnell teils map wedi\'i dilysu wedi\'i ffurfweddu ar gyfer yr adeilad hwn eto. Gall lleoedd cyfagos ddal i lwytho o\'ch lleoliad sydd wedi\'i gadw.';

  @override
  String get placesDataSourceUnavailableTitle => 'Nid yw data lleoedd ar gael';

  @override
  String get placesDataSourceUnavailableBody =>
      'Nid yw pwynt terfyn data lleoedd wedi\'i ddilysu wedi\'i ffurfweddu ar gyfer yr adeilad hwn eto. Gosod PLACES_OVERPASS_API_URL i ddirprwy neu ddarparwr cymeradwy cyn galluogi chwiliad cyfagos.';

  @override
  String get unknownPlaceName => 'Enw Anhysbys';

  @override
  String get islamicPlaceFallback => 'Lle Islamaidd';

  @override
  String get asmaMeaning1 => 'Y Buddiolwr';

  @override
  String get asmaMeaning2 => 'Y Trugarog';

  @override
  String get asmaMeaning3 => 'Y Brenin / Arglwydd Tragwyddol';

  @override
  String get asmaMeaning4 => 'Y Sanctaidd';

  @override
  String get asmaMeaning5 => 'Ffynhonnell Tangnefedd';

  @override
  String get asmaMeaning6 => 'Y Rhoddwr Diogelwch';

  @override
  String get asmaMeaning7 => 'Y Gwarcheidwad';

  @override
  String get asmaMeaning8 => 'Y Gwerthfawr / Y Mwyaf Galluog';

  @override
  String get asmaMeaning9 => 'Y Cydymaith';

  @override
  String get asmaMeaning10 => 'Y Mwyaf';

  @override
  String get asmaMeaning11 => 'Y Creawdwr';

  @override
  String get asmaMeaning12 => 'Gwneuthurwr Trefn';

  @override
  String get asmaMeaning13 => 'Y Lluniwr Prydferthwch';

  @override
  String get asmaMeaning14 => 'Y Maddeuant';

  @override
  String get asmaMeaning15 => 'Y Subduer';

  @override
  String get asmaMeaning16 => 'Rhoddwr Pawb';

  @override
  String get asmaMeaning17 => 'Y Cynhaliwr';

  @override
  String get asmaMeaning18 => 'Yr Agorwr';

  @override
  String get asmaMeaning19 => 'Gwybodaeth Pawb';

  @override
  String get asmaMeaning20 =>
      'The Withholder, who narrows and restrains by wisdom.';

  @override
  String get asmaMeaning21 => 'Y Gwaredwr';

  @override
  String get asmaMeaning22 => 'Yr Abas';

  @override
  String get asmaMeaning23 => 'Y Goruchaf';

  @override
  String get asmaMeaning24 => 'Y Rhoddwr Anrhydeddus';

  @override
  String get asmaMeaning25 => 'Y Gwaredwr';

  @override
  String get asmaMeaning26 => 'Gwrandawr Pawb';

  @override
  String get asmaMeaning27 => 'Gweledydd Pawb';

  @override
  String get asmaMeaning28 => 'Y Barnwr';

  @override
  String get asmaMeaning29 => 'Y Cyfiawn';

  @override
  String get asmaMeaning30 => 'Yr Un Cynnil';

  @override
  String get asmaMeaning31 => 'Yr Holl Ymwybodol';

  @override
  String get asmaMeaning32 => 'Y Rhagflaenydd';

  @override
  String get asmaMeaning33 => 'Y Gwych';

  @override
  String get asmaMeaning34 => 'Y Maddeuwr Mawr';

  @override
  String get asmaMeaning35 => 'Gwobrwr Diolchgarwch';

  @override
  String get asmaMeaning36 => 'Yr Uchaf';

  @override
  String get asmaMeaning37 => 'Y Mwyaf';

  @override
  String get asmaMeaning38 => 'Y Pregethwr';

  @override
  String get asmaMeaning39 => 'Y Maethwr';

  @override
  String get asmaMeaning40 => 'Y Cyfrifydd';

  @override
  String get asmaMeaning41 => 'Y Mawreddog';

  @override
  String get asmaMeaning42 => 'Yr Hael';

  @override
  String get asmaMeaning43 => 'Yr Un Gwyliwr';

  @override
  String get asmaMeaning44 => 'Yr Atebydd i Weddi';

  @override
  String get asmaMeaning45 => 'Yr Holl Amgyffred';

  @override
  String get asmaMeaning46 => 'Y Perffaith Ddoeth';

  @override
  String get asmaMeaning47 => 'Yr Un Cariadus';

  @override
  String get asmaMeaning48 => 'Yr Un Mwyaf Gogoneddus';

  @override
  String get asmaMeaning49 => 'Yr Atgyfodwr';

  @override
  String get asmaMeaning50 => 'Y Tyst';

  @override
  String get asmaMeaning51 => 'Y Gwir';

  @override
  String get asmaMeaning52 => 'Yr Ymddiriedolwr Holl Ddigonol';

  @override
  String get asmaMeaning53 => 'Meddiannu Pob Nerth';

  @override
  String get asmaMeaning54 => 'Y Grymus';

  @override
  String get asmaMeaning55 => 'Yr Amddiffynnydd';

  @override
  String get asmaMeaning56 => 'Y Clod';

  @override
  String get asmaMeaning57 => 'Y Gwerthuswr';

  @override
  String get asmaMeaning58 => 'Y Cychwynnwr';

  @override
  String get asmaMeaning59 => 'Yr Adferwr';

  @override
  String get asmaMeaning60 => 'Rhoddwr Bywyd';

  @override
  String get asmaMeaning61 => 'Cymerwr Bywyd';

  @override
  String get asmaMeaning62 => 'Y Byw Bythol';

  @override
  String get asmaMeaning63 => 'Y Cynhaliwr Hunangynhaliol';

  @override
  String get asmaMeaning64 => 'Y Darganfyddwr';

  @override
  String get asmaMeaning65 => 'Y Gogoneddus';

  @override
  String get asmaMeaning66 => 'Yr Unig Un';

  @override
  String get asmaMeaning67 => 'Yr Un';

  @override
  String get asmaMeaning68 => 'Yr Un a Geisir gan Bawb';

  @override
  String get asmaMeaning69 => 'Y Pwerus';

  @override
  String get asmaMeaning70 => 'Crëwr pob pŵer';

  @override
  String get asmaMeaning71 => 'Yr Alltudiwr';

  @override
  String get asmaMeaning72 => 'Y Gostyngwr';

  @override
  String get asmaMeaning73 => 'Y Cyntaf';

  @override
  String get asmaMeaning74 => 'Yr Olaf';

  @override
  String get asmaMeaning75 => 'Y Maniffest';

  @override
  String get asmaMeaning76 => 'Y Cudd';

  @override
  String get asmaMeaning77 => 'Y Llywodraethwr';

  @override
  String get asmaMeaning78 => 'Y Goruchaf Un';

  @override
  String get asmaMeaning79 => 'Gwneuthurwr Da';

  @override
  String get asmaMeaning80 => 'Y Canllaw i Edifeirwch';

  @override
  String get asmaMeaning81 => 'Y Dialydd';

  @override
  String get asmaMeaning82 => 'Y Maddeuwr';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'Perchennog / Sofran Pawb';

  @override
  String get asmaMeaning85 => 'Meddiannu Mawredd a Bounty';

  @override
  String get asmaMeaning86 => 'Yr Un Teg';

  @override
  String get asmaMeaning87 => 'Y Casglwr';

  @override
  String get asmaMeaning88 => 'Yr Un Cyfoethog';

  @override
  String get asmaMeaning89 => 'Y Cyfoethogwr';

  @override
  String get asmaMeaning90 => 'Yr Ataliwr Niwed';

  @override
  String get asmaMeaning91 => 'Y Dod â Niwed';

  @override
  String get asmaMeaning92 => 'Y Rhoddwr Buddion';

  @override
  String get asmaMeaning93 => 'Y Goleuni';

  @override
  String get asmaMeaning94 => 'Y Tywysydd';

  @override
  String get asmaMeaning95 => 'Y Cychwynnwr';

  @override
  String get asmaMeaning96 => 'Yr Un Tragwyddol';

  @override
  String get asmaMeaning97 => 'Yr Etifeddwr';

  @override
  String get asmaMeaning98 => 'Y Canllaw Mwyaf Cyfiawn';

  @override
  String get asmaMeaning99 => 'Y Claf Un';
}
