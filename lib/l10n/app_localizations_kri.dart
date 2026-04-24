// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Krio (`kri`).
class AppLocalizationsKri extends AppLocalizations {
  AppLocalizationsKri([String locale = 'kri']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Islamik We fɔ Layt';

  @override
  String get home => 'Na os';

  @override
  String get quran => 'Kɔran';

  @override
  String get qibla => 'Qibla we dɛn kɔl Qibla';

  @override
  String get zikr => 'Zikr we de na di wɔl';

  @override
  String get calendar => 'Kalɛnda we dɛn kɔl';

  @override
  String get settings => 'Sɛtin dɛn we dɛn dɔn mek';

  @override
  String get nextPrayer => 'Nɛks Prea';

  @override
  String get prayerTimes => 'Prea Tɛm dɛn';

  @override
  String get continueReading => 'Kɔntinyu fɔ Rid';

  @override
  String get getLifetimePro => 'Get Layf Taym Pro';

  @override
  String get unlockTajweed => 'Unlock Tajweed & Advans Ficha dɛn';

  @override
  String get prayerCalculation => 'Prea Kɔlkyulɛshɔn';

  @override
  String get method => 'Di We aw Dɛn De Kɔl di Kɔlkyulɛshɔn';

  @override
  String get madhab => 'Asr Juristik Mɛtɔd';

  @override
  String get surahs => 'Surah dɛn we dɛn kin yuz';

  @override
  String get ayahs => 'Ayahs na dɛn';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'San rayz';

  @override
  String get dhuhr => 'Dhuhr we de na di wɔl';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Maghrib we dɛn kɔl Maghrib';

  @override
  String get isha => 'Isha we de na di wɔl';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Taym fɔ $prayerName.';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Na tɛm fɔ pre $prayerName.';
  }

  @override
  String get dataStorage => 'Data & Stɔrej';

  @override
  String get clearCache => 'Klia di Kesh';

  @override
  String get cacheClearedSuccess => 'Kesh bin klia fayn fayn wan';

  @override
  String get location => 'Di say we dɛn de';

  @override
  String get language => 'Langwej we yu de tɔk';

  @override
  String get selectLanguage => 'Pik Langwej';

  @override
  String get searchLanguage => 'Sɔch 180+ langwej dɛn...';

  @override
  String get systemDefault => 'Sistem Difɔlt';

  @override
  String get currentLocation => 'Di say we yu de naw (GPS) .';

  @override
  String get locationServiceDisabled => 'Di lokeshɔn savis nɔ de wok.';

  @override
  String get locationPermissionDenied =>
      'Dɛn nɔ gri fɔ gi pɔsin rayt fɔ mek di ples.';

  @override
  String get locationDetectionFailed =>
      'Nɔ bin ebul fɔ no usay yu de. Duya pik wan siti wit yu an ɔ tray bak.';

  @override
  String citiesCount(String count) {
    return '$count siti dɛm';
  }

  @override
  String get search => 'Sɔch';

  @override
  String get searchHint => 'Sɔch...';

  @override
  String get noResults => 'No results found';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get appErrorOccurred => 'Wan mistek bin apin';

  @override
  String get appUnknownError => 'Mistek we dɛn nɔ no';

  @override
  String get quranLoadFailed =>
      'Di tin dɛn we de insay di Kɔran nɔ bin ebul fɔ lod. Duya tray bak.';

  @override
  String get retry => 'Tray bak';

  @override
  String get refreshAction => 'Refresh';

  @override
  String get cancel => 'Kansel';

  @override
  String get save => 'Sev am';

  @override
  String get delete => 'Delete';

  @override
  String get edit => 'Ɛdit';

  @override
  String get close => 'Klos';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Yɛs';

  @override
  String get no => 'Nɔ';

  @override
  String get surah => 'Surah we dɛn kɔl';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Pej';

  @override
  String get reading => 'Fɔ rid';

  @override
  String get recitation => 'We yu de rid';

  @override
  String get translation => 'Transleshɔn';

  @override
  String get tafsir => 'Tafsir bin de du am';

  @override
  String get tafsirLoading => 'Loading tafsir we yu de lod...';

  @override
  String get tafsirSourceLabel => 'Tafsir sos';

  @override
  String get tafsirNoSurahFound => 'No tafsir fain fo dis surah.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'No tafsir fain fɔ ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir nɔ bin ebul fɔ lod.';

  @override
  String get tafsirNoTextForAyah => 'No tafsir teks fo dis ayah.';

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
    return 'Tafsir sɔs bin ritɔn wan HTTP $statusCode mistek.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Di tafsir sɔs we dɛn pik nɔ bin ritɔn ɛni ɛntri.';

  @override
  String get tafsirCacheUnavailable =>
      'Verified tafsir nɔ de ɔflayna yet. Sink wan sɔs tafsir datasɛt bifo yu browz.';

  @override
  String get bookmarks => 'Bukmak dɛn';

  @override
  String get addBookmark => 'Add Bukmak fɔ yu';

  @override
  String get removeBookmark => 'Rimov di Bukmak';

  @override
  String get lastRead => 'Las Rid';

  @override
  String get dailyZikr => 'Ɛvride Zikr';

  @override
  String get duaMeaning1 =>
      'ɔda wan dɛn de pre se, ‘Wi Masta, gi wi gud na dis wɔl ɛn na di layf we de afta, ɛn protɛkt wi frɔm di sɔfa we di Faya de mek wi sɔfa.’';

  @override
  String get duaMeaning2 =>
      'Gɔd nɔ de lod ɛni sol wit mɔ pas wetin i ebul fɔ bia: ɛni wan de gɛt ɛni gud we i dɔn du, ɛn sɔfa in bad- ‘ Masta, nɔ tek wi fɔ wok if wi fɔgɛt ɔ mek mistek. Masta, nɔ lod wi lɛk aw Yu bin lod di wan dɛn we bin de bifo wi. Masta, nɔ lod wi pas wetin wi gɛt trɛnk fɔ bia. Fɔgiv wi, fɔgiv wi, ɛn sɔri fɔ wi. Yu na wi Protɛkta, so ɛp wi agens di wan dɛn we nɔ biliv.’';

  @override
  String get duaMeaning3 =>
      '‘Wi Masta, nɔ mek wi at kɔmɔt biɛn afta Yu dɔn gayd wi. Gi wi Yu sɔri-at: Yu na di wan we de gi ɔltɛm.';

  @override
  String get duaMeaning4 =>
      'Masta, mek mi ɛn mi pikin dɛn kɔntinyu fɔ pre. Wi Masta, aksept mi ​​rikwest.';

  @override
  String get duaMeaning5 =>
      'ɛn put yu wing dɔŋ wit ɔmbul to dɛn wit gudnɛs ɛn se, ‘Masta, sɔri fɔ dɛn, jɔs lɛk aw dɛn bin de kia fɔ mi we a bin smɔl.’';

  @override
  String get duaMeaning6 =>
      'Gɔd fɔ ɔp, di wan we rili de kɔntrol. [Prɔfɛt], nɔ rɔsh fɔ rid bifo di rivyu dɔn ful-ɔp bɔt se, ‘Masta, mek a no mɔ!’';

  @override
  String get duaMeaning7 =>
      'Se [Prɔfɛt], ‘Masta, fɔgiv ɛn sɔri: Yu gɛt sɔri-at pas ɔlman.’';

  @override
  String get duaMeaning8 =>
      'di wan dɛn we de pre se, ‘Wi Masta, gi wi gladi at pan wi man ɔ wɛf ɛn pikin dɛn. Mek wi gud ɛgzampul to di wan dɛn we no Yu’.';

  @override
  String get morningZikr => 'Mɔnin Zikr';

  @override
  String get eveningZikr => 'Ivinin Zikr';

  @override
  String get tasbih => 'Tasbih bin de';

  @override
  String get ahkab => 'Ahkam we yu de du';

  @override
  String get masaail => 'Masa\'il we de na di wɔl';

  @override
  String get hadith => 'Hadith we dɛn kɔl Hadith';

  @override
  String get hadithCollection => 'Hadith Kɔllɛkshɔn';

  @override
  String get hadithBooks => 'Hadith Buk dɛn';

  @override
  String get searchHadith => 'Sɔch di Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna bin de tɔk bɔt am';

  @override
  String get namesOfAllah => 'Nem dɛn fɔ Allah';

  @override
  String get liveTv => 'Layf TV';

  @override
  String get watchLive => 'Wach Layf';

  @override
  String get streamError => 'Strim mistek';

  @override
  String get reload => 'Rilod bak';

  @override
  String get openInYoutube => 'Opin na Yutub';

  @override
  String get ibadahTracker => 'Ibadah we de tray fɔ du am';

  @override
  String get fasting => 'Fɔ fast';

  @override
  String get quranReading => 'Ridin fɔ di Kɔran';

  @override
  String get prayers => 'Prea dɛn we wi kin pre';

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
  String get dhikrCount => 'Dhikr Kɔnt';

  @override
  String get weeklyProgress => 'Di Prɔgrɛs we De Ɛvri Wik';

  @override
  String get monthlyProgress => 'Di Prɔgrɛs we De Ɛvri Mɔnt';

  @override
  String get statistics => 'Statistikin dɛn';

  @override
  String get hijriCalendar => 'Hijri Kalɛnda we dɛn kɔl';

  @override
  String get gregorianCalendar => 'Gregorian Kalɛnda we dɛn kɔl';

  @override
  String get today => 'Tide tide';

  @override
  String get tomorrow => 'Tumara';

  @override
  String get yesterday => 'Yestede, na so';

  @override
  String get specialDays => 'Speshal De dɛn';

  @override
  String get ramadan => 'Ramadan we dɛn kɔl Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr we de na di wɔl';

  @override
  String get eidAlAdha => 'Eid Al-Adha bin de go';

  @override
  String get islamicNewYear => 'Islamik Nyu Ia';

  @override
  String get mawlidAnNabi => 'Mawlid wan-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadan';

  @override
  String get specialDayDateEidAlFitr => '1 Shawwal, we de na di wɔl';

  @override
  String get specialDayDateEidAlAdha => '10 Dhul Hijjah we dɛn kɔl';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharram, we dɛn kɔl Muharram';

  @override
  String get specialDayDateMawlidAnNabi => '12 Na Rabi al-Awwal bin rayt am';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr we de wok fɔ di kɔmni';

  @override
  String get qiblaDirection => 'Qibla Dairekshɔn';

  @override
  String get compass => 'Kɔmpas we dɛn kin yuz';

  @override
  String get degrees => 'digri dɛn';

  @override
  String get north => 'Nɔt';

  @override
  String get qiblaFound => 'Qibla bin fɛn am!';

  @override
  String get turnDevice => 'Turn yu divais fo fes di Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Kɔmpas mistek: $error .';
  }

  @override
  String get qiblaSensorUnavailable => 'Kɔmpas sɛns nɔ de na dis divays.';

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
  String get notifications => 'Notis dɛn we dɛn kin gi';

  @override
  String get prayerNotifications => 'Notis fɔ Prea';

  @override
  String get enableNotifications => 'Enable Notis dɛn';

  @override
  String get notificationTime => 'Di Taym fɔ Notis';

  @override
  String get beforePrayer => 'minit bifo yu pre';

  @override
  String get theme => 'Di tim';

  @override
  String get lightMode => 'Layt Mɔd';

  @override
  String get darkMode => 'Dak Mɔd';

  @override
  String get systemTheme => 'Sistem Tim';

  @override
  String get about => 'Bɔt';

  @override
  String get version => 'Vɛshɔn we dɛn mek';

  @override
  String get privacyPolicy => 'Prayvesi Polisi';

  @override
  String get termsOfService => 'Di Tɛm dɛn fɔ di Savis';

  @override
  String get contactUs => 'Kɔntakt Wi';

  @override
  String get rateApp => 'Rate App';

  @override
  String get shareApp => 'Share App';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Daunlod Maneja';

  @override
  String get downloads => 'Di tin dɛn we dɛn kin dawnlod';

  @override
  String get downloading => 'We yu de dawnlod...';

  @override
  String get downloadComplete => 'Daunlod Kɔmplit';

  @override
  String get downloadFailed => 'Daunlod nɔ bin wok';

  @override
  String get offlineMode => 'Ɔflayn Mɔd';

  @override
  String get noInternet => 'No Internet Connection';

  @override
  String get checkConnection => 'Duya chɛk yu kɔnɛkshɔn';

  @override
  String get premium => 'Premium';

  @override
  String get upgradeToPro => 'Ɔpgrɛd to Pro';

  @override
  String get proFeatures => 'Pro Ficha dɛn';

  @override
  String get removeAds => 'Rimov di Ads dɛn';

  @override
  String get unlockAll => 'Unlock Ɔl di Kɔntinɛnt';

  @override
  String get exclusiveContent => 'Di Tin dɛn we De Insay di Wan dɛn nɔmɔ';

  @override
  String get welcome => 'Wi de wɛlkɔm yu';

  @override
  String get getStarted => 'Gɛt Start';

  @override
  String get skip => 'Skip am';

  @override
  String get next => 'Neks wan';

  @override
  String get done => 'Dɛn dɔn du am';

  @override
  String get onboarding1Title => 'Wi de wɛlkɔm yu na Sirat-ı Nur';

  @override
  String get onboarding1Desc =>
      'Yu komplit Islamik kompin ap fo prea taim, Quran, en mo';

  @override
  String get onboarding2Title => 'Prea Tɛm dɛn';

  @override
  String get onboarding2Desc => 'Di kɔrɛkt tɛm fɔ pre bay di say we yu de';

  @override
  String get onboarding3Title => 'Quran & Mɔ tin dɛn';

  @override
  String get onboarding3Desc =>
      'Rid Quran, trak yu ridin, ɛn fɛn Islamik kɔntinyu';

  @override
  String get dhikrLibrary => 'Dhikr Laybri';

  @override
  String get resetCounter => 'Riset Kɔnta';

  @override
  String get changeTarget => 'Chenj di Target';

  @override
  String get newTarget => 'Nyu Target';

  @override
  String targetCount(Object target) {
    return 'Target: $target we yu want fɔ du.';
  }

  @override
  String get tapToCount => 'Tap fɔ kɔnt';

  @override
  String get zikrCompletedMashAllah => 'Dɛn dɔn dɔn am! MashAllah na di pɔsin';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah de fa fawe pas ɔl di tin dɛn we nɔ pafɛkt.';

  @override
  String get zikrMeaningAlhamdulillah => 'Ɔl di prez na fɔ Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah na di wan we pas ɔlman.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'No gɔd nɔ de pas Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'A de luk fɔ Allah in fɔgivnɛs.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'No pawa ɛn trɛnk nɔ de pas tru Allah.';

  @override
  String get dailyChecklist => 'Chɛklist ɛvride';

  @override
  String get qazaDebt => 'Qaza (Dɛt) .';

  @override
  String get resetQazaData => 'Riset Qaza Data';

  @override
  String get resetQazaDebtQuestion => 'Riset Qaza Dɛt?';

  @override
  String get rawatib => 'Rawatib bin de tɔk bɔt am';

  @override
  String get tahajjud => 'Tahajjud we de na di wɔl';

  @override
  String get dailyProgress => 'Di Prɔgrɛs we De De Ɛvride';

  @override
  String get mandatoryPrayers => 'Prea dɛn we dɛn fɔ pre';

  @override
  String get sunnahAndOthers => 'Sunnah & Ɔda tin dɛn';

  @override
  String get spiritualGrowth => 'Fɔ Grɔw pan Gɔd biznɛs';

  @override
  String get mandatoryDuty => 'Di Duty we pɔsin fɔ du';

  @override
  String get totalPrayers => 'Tɔtɔl Prea dɛn';

  @override
  String get prayerDebt => 'Dɛt fɔ Prea';

  @override
  String get fastingDebt => 'Dɛt we pɔsin kin gɛt we i de fast';

  @override
  String get reset => 'Riset am';

  @override
  String get days => 'Dez dɛn';

  @override
  String get premiumIntegrity => 'Prɛmiɔm Intɛgriti';

  @override
  String get recheckPremium => 'Richɛk di prɛmiɔm sabskripshɔn stetɔs';

  @override
  String get syncStore =>
      'Sink wit di ap stoa fɔ kɔnfɔm yu prɛmiɔm sabskripshɔn.';

  @override
  String get checkingPremium => 'Chek di prɛmiɔm stetɔs...';

  @override
  String get premiumVerified => 'Premium sabskripshɔn we dɛn dɔn chɛk.';

  @override
  String get premiumNotFound => 'Premium sabskripshɔn nɔ de.';

  @override
  String premiumRefreshError(Object error) {
    return 'Nɔ ebul fɔ rifresh prɛmiɔm sabskripshɔn stetɔs: $error';
  }

  @override
  String get offlineDownloadManager => 'Ɔflayn Daunlod Maneja';

  @override
  String get manageDatasets => 'Manej masɛf ɔflayn ɔdio & datasɛt pak dɛn.';

  @override
  String get freeStorage => 'Fri op intanɛnt divays stɔrɔj.';

  @override
  String get quranIntegrity => 'Di Kɔran Intɛgriti';

  @override
  String get checkQuranDb => 'Chek di Kɔran Database';

  @override
  String get verifyQuranContent => 'Verifay 114 surah ɛn 6236 ayah.';

  @override
  String get checkingQuranDb => 'We yu de chɛk di Quran database...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'I nɔ kɔmplit';

  @override
  String get notSeeded => 'Nɔto sid';

  @override
  String get quranDbStatus => 'Di Status fɔ di Kɔran Database';

  @override
  String statusLabel(Object status) {
    return 'Status: $status we yu gɛt.';
  }

  @override
  String surahsCount(Object count) {
    return 'Surahs: $count (we dɛn de ɛkspɛkt 114)';
  }

  @override
  String ayahsCount(Object count) {
    return 'Ayahs: $count (dɛn de ɛkspɛkt 6236)';
  }

  @override
  String missingArabic(Object count) {
    return 'Arabik we nɔ de: $count';
  }

  @override
  String missingTurkish(Object count) {
    return 'Turkish we nɔ de: $count';
  }

  @override
  String dbVersion(Object version) {
    return 'DB Vɛshɔn: $version';
  }

  @override
  String dbPath(Object path) {
    return 'Path: $path.';
  }

  @override
  String quranCheckFailed(Object error) {
    return 'Quran chɛk nɔ wok: $error.';
  }

  @override
  String get audioVoice => 'Odio Voys';

  @override
  String get audioVoiceMisharyAlafasy => 'Male (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Male (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Male (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle we yu de du';

  @override
  String get ishaAngle => 'Isha Angle we de na di wɔl';

  @override
  String get qiblaCalibration => 'Qibla Kalibreshɔn fɔ di wok';

  @override
  String get compassSmoothing => 'Kɔmpas we de mek pɔsin smol smol';

  @override
  String get reduceSensorJitter => 'Ridyus sensor jitter fɔ wan stedi nidul.';

  @override
  String get calibrationOffset => 'Kalibreshɔn Ɔfset';

  @override
  String currentOffset(Object offset) {
    return 'Kɔrɛnt: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Ajɔst if yu kɔmpas nid fɔ kɔrɛkt yu wit yu an. Pozitiv valyu dɛn de rɔta kloksayz.';

  @override
  String get apply => 'Yuz di chenj dɛn we yu dɔn mek';

  @override
  String get resetOnboarding => 'Riset di intro sɛtup';

  @override
  String get rerunSetup => 'Ri-rɔn di fɔs sɛtup prɔses.';

  @override
  String get diagnostics => 'Diagnostik dɛn we dɛn kin du';

  @override
  String get diagnosticsNotSet => 'Nɔto we dɛn dɔn sɛt';

  @override
  String get diagnosticsPrayerProfile => 'Prea Profayl';

  @override
  String get diagnosticsPrayerSource => 'Di Atɔriti fɔ Prea';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manual kɔstɔm angul dɛn (nɔ institiushɔnal sɔs) .';

  @override
  String diagnosticsPrayerHybridSource(String sourceName, String madhab) {
    return '$sourceName we wit yuz-selekt $madhab Asr sɛtin';
  }

  @override
  String get diagnosticsCloudDriven => 'Klaud Drayv';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Odio Asɛt dɛn';

  @override
  String get diagnosticsUiAudioAssets => 'UI Odio Asɛt dɛn';

  @override
  String get diagnosticsQuranAudioAssets => 'Quran Odio Asɛt dɛn';

  @override
  String get diagnosticsAudioAssets => 'Ɔdio Asɛt dɛn';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count fayl dɛn';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifest rid nɔ wok: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Lokalayzeshɔn Lokal dɛn';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count we dɛn sɔpɔt';
  }

  @override
  String get diagnosticsQuranDataset => 'Dataset fɔ di Kɔran';

  @override
  String get diagnosticsQuranSurahs => 'Di Sura dɛn we de na di Kɔran';

  @override
  String get diagnosticsQuranAyahs => 'Di Ayah dɛn we de na di Kɔran';

  @override
  String get diagnosticsQuranJuzMetadata =>
      'Quran Juz Metadata we de na di wɔl';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Klaud tebul dɛn we nɔ de na Supabase; bundled fallback aktif';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Klaud chɛk nɔ wok: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Klaud juz mɛtadata nɔ de; bundled strɔkchɔral fɔlbak aktif';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Klaud strɔkchɔral chɛk nɔ wok: $error';
  }

  @override
  String get healthCheckDesc => 'Rɔn wɛlbɔdi chɛk ɛn si di sistɛm stetɔs.';

  @override
  String get qiblaAligned => 'Qibla we dɛn dɔn alaynɛd';

  @override
  String get rotateToFindQibla => 'Rotate fɔ Fɛn Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Kalibreshɔn nid fɔ de. Rotate divays na figa-8.';

  @override
  String get dailyVerse => 'Vas we dɛn kin yuz ɛvride';

  @override
  String get dailyVerseUnavailableTitle => 'Vas nɔ de fɔ ɛvride';

  @override
  String get dailyVerseUnavailableBody =>
      'Verified daily verse content nɔ kɔnfigyut fɔ dis bild yet. Kɔnekt to di klawd sɔs ɔ sink wan verified kesh bifo yu browz.';

  @override
  String get todaysIbadah => 'Tide na Ibadah';

  @override
  String get quickAccess => 'Kwik Akses';

  @override
  String get assistant => 'Pɔsin we de ɛp';

  @override
  String get places => 'Ples dɛn';

  @override
  String get library => 'Laybri';

  @override
  String get analytics => 'Analitiks fɔ du tin';

  @override
  String get dailyDuas => 'Duas ɛvride';

  @override
  String essentialDuas(String count) {
    return '$count impɔtant dua dɛn';
  }

  @override
  String get duaUnavailableTitle => 'Verified duas nɔ de yet';

  @override
  String get duaUnavailableBody =>
      'Verified daily duas nɔ dɔn sink to dis divays yet. Konekt to di klawd sɔs fɔ lod sɔs duas instead ɔf wan unverified fallback.';

  @override
  String get duaCategoryQuranic => 'Dua we de na di Kɔran';

  @override
  String get duaCategoryMorningEvening => 'Mɔnin & Ivinin';

  @override
  String get duaCategoryTasbih => 'Tasbih bin de';

  @override
  String get duaCategoryProtection => 'Protɛkshɔn fɔ di pɔsin';

  @override
  String get duaCategoryBeginning => 'Di biginin dɛn';

  @override
  String get duaCategorySleep => 'Slip';

  @override
  String get duaCategoryFoodDrink => 'Fɔd & Drink fɔ it';

  @override
  String get duaCategoryForgiveness => 'Fɔ fɔgiv';

  @override
  String get duaCategoryHome => 'Os';

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
  String get islamicEducation => 'Islamik Ɛdyukeshɔn';

  @override
  String get sukunAudioTitle => 'Sukun Sɔndskɛp dɛn';

  @override
  String get hadithCollections => 'Hadith Kɔllɛkshɔn dɛn';

  @override
  String get hadithSourcePending => 'Verified source pending';

  @override
  String get hadithUnavailableTitle => 'Verified hadith collections nɔ de yet';

  @override
  String get hadithUnavailableBody =>
      'Dis bild stil dipen pan wan unverified eksternal hadith fid. Hadith brawzin de disable te dɛn sink wan sɔs datasɛt.';

  @override
  String get paywallUnlockAll => 'Unlock ɔl di ficha dɛn fɔ yu spiritual joyn';

  @override
  String get premiumProductUnavailable =>
      'Premium prodak nɔ de rayt naw. Duya tray bak leta.';

  @override
  String get premiumPurchaseFailed =>
      'Dɛn nɔ bin ebul fɔ dɔn fɔ bay tin dɛn. Duya tray bak.';

  @override
  String get paywallFeature1Title => 'Nyural Asisten Plɔs';

  @override
  String get paywallFeature1Desc => 'Q&A we nɔ gɛt limit wit AI';

  @override
  String get paywallFeature2Title => 'Nɔ gɛt limit Ɔflayn';

  @override
  String get paywallFeature2Desc => 'Daunlod ɔl di rɛsitɛshɔn dɛn';

  @override
  String get paywallFeature3Title => 'Dizayn dɛn we Nɔ De Eksklusiv';

  @override
  String get paywallFeature3Desc => 'Premium tim & font dɛn';

  @override
  String get paywallFeature4Title => 'Ad-Fri we nɔ gɛt ɛnitin fɔ du wit am';

  @override
  String get paywallFeature4Desc => 'Ziro advatayzmɛnt dɛn';

  @override
  String get paywallGetAccess => 'Get Layf Taym Akses — \$1.00';

  @override
  String get restorePurchases => 'Ristɔr di tin dɛn we yu bay';

  @override
  String get zakatCalculator => 'Zakat Kalkyulatɔ';

  @override
  String get zakatGold => 'Gold (Altın) we dɛn kɔl .';

  @override
  String get zakatSilver => 'Silva (Gümüş) we dɛn kɔl .';

  @override
  String get zakatCashBank => 'Kεsh / Bank';

  @override
  String get zakatBusiness => 'Biznɛs';

  @override
  String get zakatInvestments => 'Invɛstmɛnt dɛn';

  @override
  String get zakatWeightGrams => 'Weyt (g) .';

  @override
  String get zakatPricePerGram => 'Prays/g';

  @override
  String get zakatTotalAmount => 'Tɔtɔl Amaunt';

  @override
  String get zakatInventoryValue => 'Valyu fɔ di Invɛntari';

  @override
  String get zakatDebts => 'Dɛt dɛn we pɔsin kin gɛt';

  @override
  String get zakatTotal => 'Ɔl';

  @override
  String get calculateZakat => 'Kalkul di Zakat';

  @override
  String get nisabNotReached =>
      'Nisab nɔ bin rich. Zakat nɔto tin we pɔsin fɔ du.';

  @override
  String get totalZakat => 'Total Zakat we yu de du';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'Gold Zakat we yu go gɛt';

  @override
  String get zakatSilverZakat => 'Silva Zakat we yu de gi am';

  @override
  String get zakatCashZakat => 'Cash Zakat we yu de gi yu';

  @override
  String get zakatBusinessZakat => 'Biznɛs Zakat';

  @override
  String get zakatInvestmentZakat => 'Invɛstmɛnt Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Di limit fɔ di kwɛstyɔn dɛn we dɛn kin aks ɛvride dɔn rich. Upgrade to Premium fɔ we nɔ gɛt limit.';

  @override
  String get chatbotErrorMsg =>
      'A nɔ bin ebul fɔ jenarayz wan ansa. Duya tray bak.';

  @override
  String get chatbotOfflinePrompt =>
      'Di verified oflain Islamik no bies stil de curate. Yu kin ɛnabul ɔflayn fɔlbak naw, bɔt i go jɔs sho limited sef mɛsej dɛn te di sɔs datasɛt rɛdi.\n\nYu go lɛk fɔ ɛnabul ɔflayn fɔlbak?';

  @override
  String get chatbotOfflineSwitched =>
      'Ɔflayn fɔlbak dɔn ɛnabul. Verified lokal Islamic ansa dem no redi yet.';

  @override
  String get chatbotOfflineDownloadLabel => 'Enable Ɔflayn Fɔlbak';

  @override
  String get downloadPreparing => 'We yu de pripia fɔ dawnlod...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Downloading surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Ɔl di surah dɛn we dɛn dɔn ɔlrɛdi dawnlod fɔ dis pɔsin we de rid.';

  @override
  String get offlineQuranAudioPacks => 'Offlain Quran Odio Pak dɛn';

  @override
  String storedOnDeviceMb(String size) {
    return 'Dɛn kin kip am na divays: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surah dɛn we dɛn dɔn dawnlod';
  }

  @override
  String get redownloadMissingRepair => 'Ripair / Daunlod Mis';

  @override
  String get downloadAction => 'Dɔŋlod';

  @override
  String get resumeDownload => 'Kɔntinyu fɔ dawnlod am';

  @override
  String get deleteDownloadedFiles => 'Dilit Fayl dɛn we yu dɔn Daunlod';

  @override
  String get downloadCancelling => 'We yu de kansel...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Daunlod kansel fɔ $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Daunlod dɔn dɔn fɔ $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Daunlod dɔn fɔ $reciter wit $failed fayl surahs ($downloaded/$total dɔn dawnlod).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Dilit ɔflayn fayl dɛn fɔ $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Verified Quran audio sources are unavailable right now.';

  @override
  String get quranAudioPlaybackErrorWithConnectionHint =>
      'Di odio ple bak nɔ bin wok. Duya chɛk yu kɔnɛkshɔn.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Verified Quran odio pak nɔ kɔmplit ($available/$total). Tray bak afta dɛn dɔn ɔpdet di odio katalog.';
  }

  @override
  String get chatbotHint => 'Ask a question...';

  @override
  String get chatbotThinking => 'Thinking...';

  @override
  String get sukunMixerSubtitle =>
      'Nature & Qur\'an Mixer we de mek yu fil fayn';

  @override
  String get audioPlayFailed => 'Di odio ple bak nɔ bin wok';

  @override
  String get sukunNatureLabel => 'Sukun (Nature) .';

  @override
  String get sukunRainOfMercy => 'Ren fɔ Sɔri-at';

  @override
  String get sukunGardenOfPeace => 'Gadin fɔ Pis';

  @override
  String get sukunMidnightCalm => 'Midnayt Kalm';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed na di wɔl';

  @override
  String get sukunUnavailableTitle => 'Sɔndskɛp dɛn nɔ de';

  @override
  String get sukunUnavailableBody =>
      'Dis bild nɔ inklud di Sukun sawnd skay asɛt dɛn we dɛn nid yet.';

  @override
  String get prayerCompletion => 'Fɔ Kɔmplit di Prea';

  @override
  String get streaks => 'Strik dɛn';

  @override
  String get dayStreak => 'Day streak we yu de du';

  @override
  String get bestStreak => 'Di bɛst streak';

  @override
  String get chatbotCloudAiLabel => 'Klaud AI';

  @override
  String get chatbotLocalAiLabel => 'Ɔflayn Falbak';

  @override
  String get chatbotUseCloudAi => 'Yuz Klɔd AI (Gemini) .';

  @override
  String get chatbotDownloadLocalAi => 'Enable Ɔflayn Fɔlbak';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count lɛf';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Klayd API nɔ kɔnfigyut. Verified offline Islamik gayd nɔ de yet.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Verified lokal Islamik gayd nɔ de yet. Switch to Cloud AI fɔ sɔs ansa dɛn.';

  @override
  String get mosques => 'Moskɛt dɛn';

  @override
  String get halalFood => 'Halal Fɔd fɔ it';

  @override
  String get placesSearchArea => 'Sɔch dis eria';

  @override
  String get nearbyMosques => 'Moskit dɛn we de nia de';

  @override
  String get islamicSchools => 'Islamik Skul dɛn';

  @override
  String placesFoundCount(String count) {
    return '$count dɔn fɛn am';
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
  String get placesNetworkError => 'Netwok mistek. Duya tray bak.';

  @override
  String get placesLocationRequiredTitle => 'Di say we dɛn nid fɔ de';

  @override
  String get placesLocationRequiredBody =>
      'Set ples fɔs so dat dɛn go ebul fɔ fɛn di moskɛt dɛn we de nia de, halal it, ɛn Islamik skul dɛn kɔrɛkt wan.';

  @override
  String get placesMapTilesUnavailableTitle => 'Map tayl dɛn nɔ de';

  @override
  String get placesMapTilesUnavailableBody =>
      'Wan verified map tayl sɔs nɔ kɔnfigyut fɔ dis bild yet. Ples dɛn we de nia yu kin stil lod frɔm di say we yu dɔn sev.';

  @override
  String get placesDataSourceUnavailableTitle => 'Ples di data we nɔ de';

  @override
  String get placesDataSourceUnavailableBody =>
      'Wan verified ples data endpoint nɔ kɔnfigyut fɔ dis bild yet. Set PLACES_OVERPASS_API_URL to wan apruv prɔksi ɔ prɔvayda bifo yu ɛnabul sɔch we de nia.';

  @override
  String get unknownPlaceName => 'Nem we wi nɔ no';

  @override
  String get islamicPlaceFallback => 'Islamik Ples we dɛn kɔl';

  @override
  String get asmaMeaning1 => 'Di Wan we de bɛnifit';

  @override
  String get asmaMeaning2 => 'Di Wan we gɛt sɔri-at';

  @override
  String get asmaMeaning3 => 'Di Kiŋ / Masta we de sote go';

  @override
  String get asmaMeaning4 => 'Di Wan we Oli Pas Ɔl';

  @override
  String get asmaMeaning5 => 'Di Sɔs fɔ Pis';

  @override
  String get asmaMeaning6 => 'Di Giva fɔ Sikyuriti';

  @override
  String get asmaMeaning7 => 'Di Gadian';

  @override
  String get asmaMeaning8 => 'Di Precious / Di Most Mayti';

  @override
  String get asmaMeaning9 => 'Di Kɔmpila';

  @override
  String get asmaMeaning10 => 'Di wan we pas ɔl';

  @override
  String get asmaMeaning11 => 'Di Wan we mek ɔltin';

  @override
  String get asmaMeaning12 => 'Di Wan we Mek Ɔda';

  @override
  String get asmaMeaning13 => 'Di Shepa fɔ Biuti';

  @override
  String get asmaMeaning14 => 'Di Fɔgiv';

  @override
  String get asmaMeaning15 => 'Di pɔsin we de ɔnda';

  @override
  String get asmaMeaning16 => 'Di Wan we Gi Ɔlman';

  @override
  String get asmaMeaning17 => 'Di Sɔstayn';

  @override
  String get asmaMeaning18 => 'Di Opin';

  @override
  String get asmaMeaning19 => 'Di Wan we No Ɔlman';

  @override
  String get asmaMeaning20 => 'Di Kɔnstriktɔ';

  @override
  String get asmaMeaning21 => 'Di Riliva';

  @override
  String get asmaMeaning22 => 'Di Abaser';

  @override
  String get asmaMeaning23 => 'Di Ɛksalta';

  @override
  String get asmaMeaning24 => 'Di Wan we de gi ɔna';

  @override
  String get asmaMeaning25 => 'Di Wan we de mek pɔsin shem';

  @override
  String get asmaMeaning26 => 'Di Wan we de yɛri ɔlman';

  @override
  String get asmaMeaning27 => 'Di Sia fɔ Ɔlman';

  @override
  String get asmaMeaning28 => 'Di Jɔj';

  @override
  String get asmaMeaning29 => 'Di Jɔs';

  @override
  String get asmaMeaning30 => 'Di Subtil Wan';

  @override
  String get asmaMeaning31 => 'Di Ɔl Aware';

  @override
  String get asmaMeaning32 => 'Di Fɔs';

  @override
  String get asmaMeaning33 => 'Di Magnificent';

  @override
  String get asmaMeaning34 => 'Di Gret Fɔgiva';

  @override
  String get asmaMeaning35 => 'Di Riwɔd fɔ Tɛnki';

  @override
  String get asmaMeaning36 => 'Di Wan we Ay pas ɔl';

  @override
  String get asmaMeaning37 => 'Di wan we pas ɔl';

  @override
  String get asmaMeaning38 => 'Di Prɛzɛvɛr';

  @override
  String get asmaMeaning39 => 'Di Nɔrisha';

  @override
  String get asmaMeaning40 => 'Di Rikɔna';

  @override
  String get asmaMeaning41 => 'Di Majestik';

  @override
  String get asmaMeaning42 => 'Di wan dɛn we gɛt Jɛnɛral';

  @override
  String get asmaMeaning43 => 'Di Wan we De Wach';

  @override
  String get asmaMeaning44 => 'Di Rispɔnda fɔ Prea';

  @override
  String get asmaMeaning45 => 'Di Ɔl Kɔmprɛhɛnd';

  @override
  String get asmaMeaning46 => 'Di Pafɛkt Waiz';

  @override
  String get asmaMeaning47 => 'Di Wan we gɛt lɔv';

  @override
  String get asmaMeaning48 => 'Di Wan we gɛt glori pas ɔlman';

  @override
  String get asmaMeaning49 => 'Di Risayz';

  @override
  String get asmaMeaning50 => 'Di Witnɛs';

  @override
  String get asmaMeaning51 => 'Di Trut';

  @override
  String get asmaMeaning52 => 'Di Ɔl-Sufayf Trɔsti';

  @override
  String get asmaMeaning53 => 'Di Pɔsin we gɛt Ɔl di Strɔng';

  @override
  String get asmaMeaning54 => 'Di Fosful wan';

  @override
  String get asmaMeaning55 => 'Di Protɛkta';

  @override
  String get asmaMeaning56 => 'Di wan dɛn we dɛn prez';

  @override
  String get asmaMeaning57 => 'Di Apraiz';

  @override
  String get asmaMeaning58 => 'Di Wan we mek am';

  @override
  String get asmaMeaning59 => 'Di Ristɔra';

  @override
  String get asmaMeaning60 => 'Di Wan we Gi Layf';

  @override
  String get asmaMeaning61 => 'Di Wan we De Tek Layf';

  @override
  String get asmaMeaning62 => 'Di Eva Liv';

  @override
  String get asmaMeaning63 => 'Di Self-Sɔbsistin Sastayn';

  @override
  String get asmaMeaning64 => 'Di Faynda';

  @override
  String get asmaMeaning65 => 'Di wan dɛn we gɛt glori';

  @override
  String get asmaMeaning66 => 'Di Wan Wan';

  @override
  String get asmaMeaning67 => 'Di Wan';

  @override
  String get asmaMeaning68 => 'Di Wan we Ɔlman de luk fɔ';

  @override
  String get asmaMeaning69 => 'Di Pawaful wan';

  @override
  String get asmaMeaning70 => 'Di Wan we mek ɔl di pawa';

  @override
  String get asmaMeaning71 => 'Di Ekspɛditɔ';

  @override
  String get asmaMeaning72 => 'Di Dilɛya';

  @override
  String get asmaMeaning73 => 'Di Fɔs wan';

  @override
  String get asmaMeaning74 => 'Di Las wan';

  @override
  String get asmaMeaning75 => 'Di Manifest';

  @override
  String get asmaMeaning76 => 'Di Ayd';

  @override
  String get asmaMeaning77 => 'Di Gɔvnɔ';

  @override
  String get asmaMeaning78 => 'Di Wan we pas ɔlman';

  @override
  String get asmaMeaning79 => 'Di Wan we De Du Gud';

  @override
  String get asmaMeaning80 => 'Di Gayd fɔ Ripɛnt';

  @override
  String get asmaMeaning81 => 'Di Avɛnjɔ';

  @override
  String get asmaMeaning82 => 'Di Fɔgiva';

  @override
  String get asmaMeaning83 => 'Di Klɛmɛnt';

  @override
  String get asmaMeaning84 => 'Di Ɔna / Sɔvɛrin fɔ Ɔlman';

  @override
  String get asmaMeaning85 => 'Di Possessor of Majesty ɛn Baunti';

  @override
  String get asmaMeaning86 => 'Di Ikwayt Wan';

  @override
  String get asmaMeaning87 => 'Di wan we de gɛda';

  @override
  String get asmaMeaning88 => 'Di Rich Wan';

  @override
  String get asmaMeaning89 => 'Di Enricha';

  @override
  String get asmaMeaning90 => 'Di Prɛventa fɔ Harm';

  @override
  String get asmaMeaning91 => 'Di Wan we de briŋ bad tin';

  @override
  String get asmaMeaning92 => 'Di Wan we De Gi Bɛnifit';

  @override
  String get asmaMeaning93 => 'Di Layt';

  @override
  String get asmaMeaning94 => 'Di Gaydman';

  @override
  String get asmaMeaning95 => 'Di Ɔrijineta';

  @override
  String get asmaMeaning96 => 'Di Wan we De Sote Go';

  @override
  String get asmaMeaning97 => 'Di Inhɛritɔ';

  @override
  String get asmaMeaning98 => 'Di Mɔs Rayt Gayd';

  @override
  String get asmaMeaning99 => 'Di Patient Wan';
}
