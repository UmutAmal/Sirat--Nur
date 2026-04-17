// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Irish (`ga`).
class AppLocalizationsGa extends AppLocalizations {
  AppLocalizationsGa([String locale = 'ga']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Islamic Way of Light';

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
  String get locationServiceDisabled => 'Tá an tseirbhís suímh díchumasaithe.';

  @override
  String get locationPermissionDenied => 'Diúltaíodh cead suímh.';

  @override
  String get locationDetectionFailed =>
      'Níorbh fhéidir do shuíomh a bhrath. Roghnaigh cathair de láimh nó bain triail eile as.';

  @override
  String citiesCount(String count) {
    return '$count cathracha';
  }

  @override
  String get search => 'Cuardach';

  @override
  String get searchHint => 'Cuardach...';

  @override
  String get noResults => 'No results found';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get appErrorOccurred => 'Tharla earráid';

  @override
  String get appUnknownError => 'Earráid anaithnid';

  @override
  String get quranLoadFailed =>
      'Níorbh fhéidir ábhar an Quran a lódáil. Bain triail eile as.';

  @override
  String get retry => 'Bain triail eile as';

  @override
  String get refreshAction => 'Refresh';

  @override
  String get cancel => 'Cealaigh';

  @override
  String get save => 'Sábháil';

  @override
  String get delete => 'Delete';

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
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

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
  String get tafsirLoading => 'tafsir á lódáil...';

  @override
  String get tafsirSourceLabel => 'Foinse tafsir';

  @override
  String get tafsirNoSurahFound => 'Níor aimsíodh aon tafsir don surah seo.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Níor aimsíodh aon tafsir le haghaidh ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Níorbh fhéidir Tafsir a lódáil.';

  @override
  String get tafsirNoTextForAyah => 'Gan téacs tafsir don ayah seo.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Tasir á íoslódáil $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Tasir á lódáil $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Chuir foinse Tafsir earráid HTTP $statusCode ar ais.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Níor chuir an fhoinse tafsir roghnaithe aon iontrálacha ar ais.';

  @override
  String get tafsirCacheUnavailable =>
      'Níl tafsir deimhnithe ar fáil as líne fós. Sioncronaigh tacar sonraí tafsir foinsithe roimh bhrabhsáil.';

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
  String get duaMeaning1 =>
      'guíonn daoine eile, ‘A Thiarna, tabhair dúinn maitheas sa saol seo agus sa saol ina dhiaidh seo, agus cosnaigh sinn ó phian na Tine.’';

  @override
  String get duaMeaning2 =>
      'Ní chuireann Dia ualach ar aon anam le níos mó ná mar is féidir leis a iompar: gnóthaíonn gach duine cibé maith a rinne sé, agus fulaingíonn sé a olc - ‘ A Thiarna, ná tabhair faoi chúram sinn má dhéanaimid dearmad nó botúin a dhéanamh. A Thiarna, ná bíodh an t-ualach orainn mar a chuir tú ualach orthu siúd atá os ár gcomhair. A Thiarna, ná bíodh an t-ualach ort níos mó ná an neart atá againn le hiompar. Maith dúinn, maith dúinn, agus déan trócaire orainn. Is tusa ár gCosantóirí, mar sin cuidigh linn i gcoinne na ndíchreidmhigh.\'';

  @override
  String get duaMeaning3 =>
      '‘A Thiarna, ná lig ár gcroíthe ar leataobh tar éis duit sinn a threorú. Deonaigh dúinn do thrócaire: Is tusa an té a thugann riamh.';

  @override
  String get duaMeaning4 =>
      'A Thiarna, deonaigh go gcoimeádfaidh mise agus mo sliocht an urnaí. A Thiarna, glac le m’iarratas.';

  @override
  String get duaMeaning5 =>
      'agus ísligh do sciathán go humhal leo i gcineáltas agus abair, ‘A Thiarna, déan trócaire orthu, mar a thug siad aire dom nuair a bhí mé beag.’';

  @override
  String get duaMeaning6 =>
      'Ardaithe go raibh Dia, an té atá i gceannas go fírinneach. [Fáidh], ná déan deifir chun aithris a dhéanamh sula mbeidh an nochtadh iomlán iomlán ach abair, ‘A Thiarna, méadaigh in eolas mé!’';

  @override
  String get duaMeaning7 =>
      'Abair [Fáidh], ‘A Thiarna, maith agus déan trócaire: Is tú an té is trócaire ar fad’.';

  @override
  String get duaMeaning8 =>
      'iad siúd a guí, ‘A Thiarna, déan áthas orainn inár gcéilí agus inár sliocht. Déan samplaí maithe dúinn dóibh siúd atá ar an eolas fút’.';

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
  String get islamicNewYear => 'Athbhliain Ioslamach';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadan';

  @override
  String get specialDayDateEidAlFitr => '1 Seabhall';

  @override
  String get specialDayDateEidAlAdha => '10 Dhul Hijjah';

  @override
  String get specialDayDateIslamicNewYear => '1 Muirram';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabi al-Awwal';

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
  String qiblaCompassErrorDetails(String error) {
    return 'Earráid chompáis: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Níl braiteoir compáis ar fáil ar an ngléas seo.';

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
    return 'Amharc ar $appName: An aip stíl mhaireachtála Ioslamach deiridh! $url';
  }

  @override
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'Íoslódálacha';

  @override
  String get downloading => 'Ag íosluchtú...';

  @override
  String get downloadComplete => 'Download Complete';

  @override
  String get downloadFailed => 'Download Failed';

  @override
  String get offlineMode => 'Mód As Líne';

  @override
  String get noInternet => 'No Internet Connection';

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
  String get resetCounter => 'Athshocraigh Áiritheoir';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'Comhaireamh sprice: $target';
  }

  @override
  String get tapToCount => 'Tapáil chun comhaireamh';

  @override
  String get zikrCompletedMashAllah => 'Críochnaithe! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah i bhfad os cionn gach imperfection.';

  @override
  String get zikrMeaningAlhamdulillah => 'Baineann gach moladh le Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Is é Allah an ceann is mó.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Níl aon dia ann ach Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Lorgaím maithiúnas Allah.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Níl aon chumhacht agus aon neart ach amháin trí Allah.';

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
  String get dailyProgress => 'Dul Chun Cinn Laethúil';

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
  String get recheckPremium => 'Athsheiceáil stádas síntiús préimhe';

  @override
  String get syncStore =>
      'Sioncronaigh leis an appstore chun do shíntiús préimhe a dheimhniú.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'Síntiús préimhe fíoraithe.';

  @override
  String get premiumNotFound => 'Níor aimsíodh síntiús préimhe.';

  @override
  String premiumRefreshError(Object error) {
    return 'Níorbh fhéidir stádas síntiúis phréimhe a athnuachan: $error';
  }

  @override
  String get offlineDownloadManager => 'Offline Download Manager';

  @override
  String get manageDatasets =>
      'Bainistigh pacaí ollmhóra fuaime & tacair as líne.';

  @override
  String get freeStorage => 'Íoslódáil saor in aisce gléas stórála inmheánach.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'Bunachar sonraí Quran a sheiceáil. .';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'Stádas bunachar sonraí Quran';

  @override
  String statusLabel(Object status) {
    return 'Stádas: $status';
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
  String get audioVoice => 'Guth Fuaime';

  @override
  String get audioVoiceMisharyAlafasy => 'Fir (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Fir (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Fir (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Calabrú Qibla';

  @override
  String get compassSmoothing => 'Compass Smoothing';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Fritháireamh Calabrúcháin';

  @override
  String currentOffset(Object offset) {
    return 'Reatha: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Coigeartaigh má tá ceartúchán láimhe de dhíth ar do chompás. Rothlaíonn luachanna dearfacha deiseal.';

  @override
  String get apply => 'Cuir athruithe i bhfeidhm';

  @override
  String get resetOnboarding => 'Athshocraigh socrú an intro';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Diagnóisic';

  @override
  String get diagnosticsNotSet => 'Gan socraithe';

  @override
  String get diagnosticsPrayerProfile => 'Próifíl Urnaí';

  @override
  String get diagnosticsPrayerSource => 'Údarás Urnaí';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Saincheaptha / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Uillinneacha saincheaptha láimhe (gan aon fhoinse institiúideach)';

  @override
  String get diagnosticsCloudDriven => 'Scamall Tiomáinte';

  @override
  String get diagnosticsAdhanAudioAssets => 'Sócmhainní Fuaime Adhan';

  @override
  String get diagnosticsUiAudioAssets => 'Sócmhainní Fuaime Chomhéadain';

  @override
  String get diagnosticsQuranAudioAssets => 'Sócmhainní fuaime Quran';

  @override
  String get diagnosticsAudioAssets => 'Sócmhainní Fuaime';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count comhad';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Theip ar léamh an manifest: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Logánú Logánú';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count tacaithe';
  }

  @override
  String get diagnosticsQuranDataset => 'Sraith sonraí Quran';

  @override
  String get diagnosticsQuranSurahs => 'Surah an Quran';

  @override
  String get diagnosticsQuranAyahs => 'Ayahs an Quran';

  @override
  String get diagnosticsQuranJuzMetadata => 'Meiteashonraí Quran Juz';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Táblaí scamall in easnamh i Supabase; cúltaca cuachta gníomhach';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Theip ar sheiceáil scamall: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Meiteashonraí Cloud juz in easnamh; cúltaca struchtúrach cuachta gníomhach';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Theip ar sheiceáil struchtúrach néal: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Calabrú ag teastáil. Rothlaigh gléas i bhfigiúr-8.';

  @override
  String get dailyVerse => 'Rann Laethúil';

  @override
  String get todaysIbadah => 'Ibadah an lae inniu';

  @override
  String get quickAccess => 'Rochtain Thapa';

  @override
  String get assistant => 'Cúntóir';

  @override
  String get places => 'Áiteanna';

  @override
  String get library => 'Leabharlann';

  @override
  String get analytics => 'Anailísíocht';

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
      'Níor sioncronaíodh dus laethúil fíoraithe leis an ngléas seo fós. Ceangail leis an bhfoinse néil chun duas foinsithe a lódáil in ionad aisghnó neamhfhíoraithe.';

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
  String get duaSourceMuslim => 'Muslim';

  @override
  String get duaSourceAbuDawud => 'Abu Dawud';

  @override
  String get duaSourceTirmidhi => 'Tirmidhi';

  @override
  String get duaSourceAhmad => 'Ahmad';

  @override
  String get islamicEducation => 'Oideachas Ioslamach';

  @override
  String get sukunAudioTitle => 'Fuaimrian Sukun';

  @override
  String get hadithCollections => 'Bailiúcháin de hadith saor in aisce,';

  @override
  String get hadithSourcePending => 'Foinse deimhnithe ar feitheamh';

  @override
  String get hadithUnavailableTitle =>
      'Níl bailiúcháin hadith fíoraithe ar fáil go fóill';

  @override
  String get hadithUnavailableBody =>
      'Braitheann an tógáil seo fós ar bheathú hadith seachtrach neamhfhíoraithe. Fanann brabhsáil Hadith díchumasaithe go dtí go sioncronófar tacar sonraí foinseach.';

  @override
  String get paywallUnlockAll => 'Díghlasáil gach gné do do thuras spioradálta';

  @override
  String get premiumProductUnavailable =>
      'Níl an táirge préimhe ar fáil faoi láthair. Bain triail eile as ar ball.';

  @override
  String get premiumPurchaseFailed =>
      'Níorbh fhéidir an ceannach a chur i gcrích. Bain triail eile as.';

  @override
  String get paywallFeature1Title => 'Cúntóir Néarúil Plus';

  @override
  String get paywallFeature1Desc =>
      'Ceisteanna & Freagraí neamhtheoranta faoi chumhacht AI';

  @override
  String get paywallFeature2Title => 'Gan teorainn As Líne';

  @override
  String get paywallFeature2Desc => 'Íosluchtaigh gach aithriseoireacht';

  @override
  String get paywallFeature3Title => 'Dearthaí Eisiata';

  @override
  String get paywallFeature3Desc => 'Téamaí & clónna préimhe';

  @override
  String get paywallFeature4Title => 'Saor ó fhógraíocht';

  @override
  String get paywallFeature4Desc => 'Fógraí nialais';

  @override
  String get paywallGetAccess => 'Faigh Rochtain Saoil - \$1.00';

  @override
  String get restorePurchases => 'Athchóirigh Ceannacháin';

  @override
  String get zakatCalculator => 'Áireamhán Zakat';

  @override
  String get zakatGold => 'Óir (Altín)';

  @override
  String get zakatSilver => 'Airgid (Gümüş)';

  @override
  String get zakatCashBank => 'Airgead Tirim / Banc';

  @override
  String get zakatBusiness => 'Gnó';

  @override
  String get zakatInvestments => 'Infheistíochtaí';

  @override
  String get zakatWeightGrams => 'Meáchan (g)';

  @override
  String get zakatPricePerGram => 'Praghas/g';

  @override
  String get zakatTotalAmount => 'Méid Iomlán';

  @override
  String get zakatInventoryValue => 'Luach Fardail';

  @override
  String get zakatDebts => 'Fiacha';

  @override
  String get zakatTotal => 'Iomlán';

  @override
  String get calculateZakat => 'Ríomh Zakat';

  @override
  String get nisabNotReached => 'Nisab gan sroicheadh. Níl Zakat éigeantach.';

  @override
  String get totalZakat => 'Zakat iomlán';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Sócmhainní: $assets';
  }

  @override
  String get zakatGoldZakat => 'Óir Zakat';

  @override
  String get zakatSilverZakat => 'Zakat airgid';

  @override
  String get zakatCashZakat => 'Airgead tirim Zakat';

  @override
  String get zakatBusinessZakat => 'Gnó Zakat';

  @override
  String get zakatInvestmentZakat => 'Infheistíocht Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Teorainn laethúil na gceisteanna bainte amach. Uasghrádú go Préimh gan teorainn.';

  @override
  String get chatbotErrorMsg =>
      'Níorbh fhéidir liom freagra a ghiniúint. Bain triail eile as.';

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
  String get offlineQuranAudioPacks => 'Pacáistí Fuaime Quran As Líne';

  @override
  String storedOnDeviceMb(String size) {
    return 'Stóráilte ar ghléas: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surahs downloaded';
  }

  @override
  String get redownloadMissingRepair => 'Repair / Download Missing';

  @override
  String get downloadAction => 'Íosluchtaigh';

  @override
  String get resumeDownload => 'Íosluchtaigh atosú';

  @override
  String get deleteDownloadedFiles => 'Scrios Comhaid Íosluchtaithe';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Cuireadh an t-íoslódáil ar ceal le haghaidh $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Íoslódáil críochnaithe do $reciter.';
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
    return 'Scriosadh comhaid as líne le haghaidh $reciter.';
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
  String get sukunMixerSubtitle => 'Meascthóir Dúlra & Qur\'an';

  @override
  String get audioPlayFailed => 'Theip ar athsheinm fuaime';

  @override
  String get sukunNatureLabel => 'Sukun (Dúlra)';

  @override
  String get sukunRainOfMercy => 'Báisteach na Trócaire';

  @override
  String get sukunGardenOfPeace => 'Gairdín na Síochána';

  @override
  String get sukunMidnightCalm => 'Calma meán oíche';

  @override
  String get sukunOceanTawheed => 'Aigéan Tawheed';

  @override
  String get sukunUnavailableTitle => 'Níl fáil ar fhuaimdhreacha';

  @override
  String get sukunUnavailableBody =>
      'Níl na sócmhainní fuaimdhreacha Sukun riachtanach san áireamh fós sa tógáil seo.';

  @override
  String get prayerCompletion => 'Críochnú Paidir';

  @override
  String get streaks => 'Sruthanna';

  @override
  String get dayStreak => 'Stráice lae';

  @override
  String get bestStreak => 'Sraith is fearr';

  @override
  String get chatbotCloudAiLabel => 'Scamall AI';

  @override
  String get chatbotLocalAiLabel => 'Fallback as Líne';

  @override
  String get chatbotUseCloudAi => 'Úsáid Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Cumasaigh Cúltaca As Líne';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count fágtha';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Níl Cloud API cumraithe. Níl treoir Ioslamach deimhnithe as líne ar fáil go fóill.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Níl treoir Ioslamach áitiúil fíoraithe ar fáil fós. Athraigh go Cloud AI le haghaidh freagraí foinsithe.';

  @override
  String get mosques => 'Moscanna';

  @override
  String get halalFood => 'Bia Halal';

  @override
  String get placesSearchArea => 'Cuardaigh an réimse seo';

  @override
  String get nearbyMosques => 'Moscanna in aice láimhe';

  @override
  String get islamicSchools => 'Scoileanna Ioslamacha';

  @override
  String placesFoundCount(String count) {
    return '$count aimsithe';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km uaidh';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API Error: $statusCode';
  }

  @override
  String get placesNetworkError => 'Earráid líonra. Bain triail eile as.';

  @override
  String get placesLocationRequiredTitle => 'Suíomh ag teastáil';

  @override
  String get placesLocationRequiredBody =>
      'Socraigh suíomh ar dtús ionas gur féidir moscanna in aice láimhe, bia halal, agus scoileanna Ioslamacha a chuardach go cruinn.';

  @override
  String get placesMapTilesUnavailableTitle =>
      'Níl fáil ar thíleanna léarscáile';

  @override
  String get placesMapTilesUnavailableBody =>
      'Níl foinse tíl léarscáile fíoraithe cumraithe don tógáil seo fós. Is féidir le háiteanna in aice láimhe lódáil fós ó do shuíomh sábháilte.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'Níl sonraí faoi áiteanna ar fáil';

  @override
  String get placesDataSourceUnavailableBody =>
      'Níl críochphointe sonraí áiteanna fíoraithe cumraithe don leagan seo fós. Socraigh PLACES_OVERPASS_API_URL chuig seachfhreastalaí nó soláthraí ceadaithe roimh duit cuardach in aice láimhe a chumasú.';

  @override
  String get unknownPlaceName => 'Ainm Anaithnid';

  @override
  String get islamicPlaceFallback => 'Áit Ioslamach';

  @override
  String get asmaMeaning1 => 'An Tairbhí';

  @override
  String get asmaMeaning2 => 'An Trócaireach';

  @override
  String get asmaMeaning3 => 'An Rí / Tiarna Síoraí';

  @override
  String get asmaMeaning4 => 'An Naofa';

  @override
  String get asmaMeaning5 => 'Foinse na Síochána';

  @override
  String get asmaMeaning6 => 'An Bronntóir Slándála';

  @override
  String get asmaMeaning7 => 'An Caomhnóir';

  @override
  String get asmaMeaning8 => 'An Luachmhaire / An Té is Cuma';

  @override
  String get asmaMeaning9 => 'An tUltach';

  @override
  String get asmaMeaning10 => 'An ceann is mó';

  @override
  String get asmaMeaning11 => 'An Cruthaitheoir';

  @override
  String get asmaMeaning12 => 'An Déantóir Ordaithe';

  @override
  String get asmaMeaning13 => 'An Cruthaitheoir na hÁilleachta';

  @override
  String get asmaMeaning14 => 'An Maithiúnas';

  @override
  String get asmaMeaning15 => 'An Fomhuirí';

  @override
  String get asmaMeaning16 => 'Bonntóir Uile';

  @override
  String get asmaMeaning17 => 'An Cothaitheoir';

  @override
  String get asmaMeaning18 => 'An tOsclóir';

  @override
  String get asmaMeaning19 => 'Aitheora Uile';

  @override
  String get asmaMeaning20 =>
      'The Withholder, who narrows and restrains by wisdom.';

  @override
  String get asmaMeaning21 => 'An Fóirithin';

  @override
  String get asmaMeaning22 => 'An tUltach';

  @override
  String get asmaMeaning23 => 'An tEaspag';

  @override
  String get asmaMeaning24 => 'An Bronntóir Onóra';

  @override
  String get asmaMeaning25 => 'An tUltach';

  @override
  String get asmaMeaning26 => 'An Éisteoir Uile';

  @override
  String get asmaMeaning27 => 'Séitheoir Uile';

  @override
  String get asmaMeaning28 => 'An Breitheamh';

  @override
  String get asmaMeaning29 => 'An Díreach';

  @override
  String get asmaMeaning30 => 'An tAon Subtle';

  @override
  String get asmaMeaning31 => 'The All Aware';

  @override
  String get asmaMeaning32 => 'An Saoiste';

  @override
  String get asmaMeaning33 => 'An Iontach';

  @override
  String get asmaMeaning34 => 'An Maithiúnas Mór';

  @override
  String get asmaMeaning35 => 'Luaiteoir na Buíochais';

  @override
  String get asmaMeaning36 => 'An Airde';

  @override
  String get asmaMeaning37 => 'An ceann is mó';

  @override
  String get asmaMeaning38 => 'An Caomhnóir';

  @override
  String get asmaMeaning39 => 'An tUltach';

  @override
  String get asmaMeaning40 => 'An Áireamhán';

  @override
  String get asmaMeaning41 => 'An Maorga';

  @override
  String get asmaMeaning42 => 'An Fial';

  @override
  String get asmaMeaning43 => 'An Fear Faire';

  @override
  String get asmaMeaning44 => 'An Fhreagróir don Phaidir';

  @override
  String get asmaMeaning45 => 'An Chuimsitheach Uile';

  @override
  String get asmaMeaning46 => 'An Sár-Chliste';

  @override
  String get asmaMeaning47 => 'An Grámhar';

  @override
  String get asmaMeaning48 => 'An té is glóire';

  @override
  String get asmaMeaning49 => 'An Aiséirí';

  @override
  String get asmaMeaning50 => 'An Fhinné';

  @override
  String get asmaMeaning51 => 'An Fhírinne';

  @override
  String get asmaMeaning52 => 'An tIontaobhaí Uile-Dhóthanach';

  @override
  String get asmaMeaning53 => 'Sealbhóir an Uile Neart';

  @override
  String get asmaMeaning54 => 'An tUltach';

  @override
  String get asmaMeaning55 => 'An Cosantóir';

  @override
  String get asmaMeaning56 => 'An Moladh';

  @override
  String get asmaMeaning57 => 'An Meastóir';

  @override
  String get asmaMeaning58 => 'An Tionscnóir';

  @override
  String get asmaMeaning59 => 'An tAthóir';

  @override
  String get asmaMeaning60 => 'Bonntóir na Beatha';

  @override
  String get asmaMeaning61 => 'Glacadóir na Beatha';

  @override
  String get asmaMeaning62 => 'An Mhaireachtáil Riamh';

  @override
  String get asmaMeaning63 => 'An Cothaitheoir Féinchothaitheach';

  @override
  String get asmaMeaning64 => 'An Aimsitheoir';

  @override
  String get asmaMeaning65 => 'An Glórmhar';

  @override
  String get asmaMeaning66 => 'An tAon Amháin';

  @override
  String get asmaMeaning67 => 'An tAon';

  @override
  String get asmaMeaning68 => 'An Duine a Lorgaíonn Cách';

  @override
  String get asmaMeaning69 => 'An Cumhachtach';

  @override
  String get asmaMeaning70 => 'Cruthaitheoir na cumhachta go léir';

  @override
  String get asmaMeaning71 => 'An tEaspag';

  @override
  String get asmaMeaning72 => 'An Díograiseoir';

  @override
  String get asmaMeaning73 => 'An Chéad';

  @override
  String get asmaMeaning74 => 'An Duine Deireanach';

  @override
  String get asmaMeaning75 => 'An Manifest';

  @override
  String get asmaMeaning76 => 'An Cheilt';

  @override
  String get asmaMeaning77 => 'An Gobharnóir';

  @override
  String get asmaMeaning78 => 'An tAon Uachtarach';

  @override
  String get asmaMeaning79 => 'Déantóir an Chéasta';

  @override
  String get asmaMeaning80 => 'An Treoir chun Aithrí';

  @override
  String get asmaMeaning81 => 'An Díoltóir';

  @override
  String get asmaMeaning82 => 'An Maithiúnach';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'An tÚinéir / Ceannasach Uile';

  @override
  String get asmaMeaning85 => 'Sealbhóir na Soilse agus na Deolchaire';

  @override
  String get asmaMeaning86 => 'An Duine Cothromasach';

  @override
  String get asmaMeaning87 => 'An Cruinnitheoir';

  @override
  String get asmaMeaning88 => 'An Saibhir';

  @override
  String get asmaMeaning89 => 'An Saibhir';

  @override
  String get asmaMeaning90 => 'An Cosc ar Dhíobháil';

  @override
  String get asmaMeaning91 => 'Bunraí an Dochair';

  @override
  String get asmaMeaning92 => 'An Fearr Sochair';

  @override
  String get asmaMeaning93 => 'An Solas';

  @override
  String get asmaMeaning94 => 'An Treoraí';

  @override
  String get asmaMeaning95 => 'An Tionscnóir';

  @override
  String get asmaMeaning96 => 'An tAon Síoraí';

  @override
  String get asmaMeaning97 => 'An tOidhreadóir';

  @override
  String get asmaMeaning98 => 'An Treoir is Cearta';

  @override
  String get asmaMeaning99 => 'An tOthar a hAon';
}
