// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hausa (`ha`).
class AppLocalizationsHa extends AppLocalizations {
  AppLocalizationsHa([String locale = 'ha']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Hanyar Hasken Musulunci';

  @override
  String get home => 'Gida';

  @override
  String get quran => 'Alqur\'ani';

  @override
  String get qibla => 'Alqibla';

  @override
  String get zikr => 'Zikiri';

  @override
  String get calendar => 'Kalanda';

  @override
  String get settings => 'Saituna';

  @override
  String get nextPrayer => 'Addu\'a ta gaba';

  @override
  String get prayerTimes => 'Lokutan Sallah';

  @override
  String get continueReading => 'Ci gaba Karatun';

  @override
  String get getLifetimePro => 'Samun Rayuwa Pro';

  @override
  String get unlockTajweed => 'BuÉ—e Tajweed & Nagartattun Fasaloli';

  @override
  String get prayerCalculation => 'Lissafin Addu\'a';

  @override
  String get method => 'Hanyar Lissafi';

  @override
  String get madhab => 'Hanyar Shari\'a';

  @override
  String get surahs => 'Surori';

  @override
  String get ayahs => 'Ayah';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'fitowar rana';

  @override
  String get dhuhr => 'Duhur';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Magrib';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Lokacin $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Lokaci yayi da za a yi addu\'a $prayerName.';
  }

  @override
  String get dataStorage => 'Bayanai & Ajiya';

  @override
  String get clearCache => 'Share Cache';

  @override
  String get cacheClearedSuccess => 'An share cache cikin nasara';

  @override
  String get location => 'Wuri';

  @override
  String get language => 'Harshe';

  @override
  String get selectLanguage => 'ZaÉ“i Harshe';

  @override
  String get searchLanguage => 'Bincika harsuna 180+';

  @override
  String get systemDefault => 'Tsoffin tsarin';

  @override
  String get currentLocation => 'Wuri na Yanzu (GPS)';

  @override
  String get locationServiceDisabled => 'An kashe sabis na wurin.';

  @override
  String get locationPermissionDenied => 'An ƙi izinin wurin.';

  @override
  String get locationDetectionFailed =>
      'An kasa gano wurin ku. Da fatan za a zaɓi birni da hannu ko a sake gwadawa.';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => 'Bincika';

  @override
  String get searchHint => 'Bincika...';

  @override
  String get noResults => 'Ba a sami sakamako ba';

  @override
  String get loading => 'Ana lodawa...';

  @override
  String get error => 'Kuskure';

  @override
  String get appErrorOccurred => 'An sami kuskure';

  @override
  String get appUnknownError => 'Kuskuren da ba a sani ba';

  @override
  String get quranLoadFailed =>
      'An kasa loda abun cikin Al-Qur\'ani. Da fatan za a sake gwadawa.';

  @override
  String get retry => 'Sake gwadawa';

  @override
  String get refreshAction => 'Sake sabuntawa';

  @override
  String get cancel => 'Soke';

  @override
  String get save => 'Ajiye';

  @override
  String get delete => 'Share';

  @override
  String get edit => 'Gyara';

  @override
  String get close => 'Kusa';

  @override
  String get ok => 'KO';

  @override
  String get yes => 'Ee';

  @override
  String get no => 'A\'a';

  @override
  String get surah => 'Surah';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Shafi';

  @override
  String get reading => 'Karatu';

  @override
  String get recitation => 'Karatun';

  @override
  String get translation => 'Fassara';

  @override
  String get tafsir => 'Tafsiri';

  @override
  String get tafsirLoading => 'Ana loda tafsir...';

  @override
  String get tafsirSourceLabel => 'tushen Tafsiri';

  @override
  String get tafsirNoSurahFound => 'Ba a sami tafsirin wannan sura ba.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Babu tafsirin da aka samu na ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'An kasa loda Tafsiri.';

  @override
  String get tafsirNoTextForAyah => 'Babu rubutun tafsiri na wannan aya.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Ana sauke tafsiri $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Ana loda tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tushen Tafsir ya dawo da kuskuren HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Madogarar tafsirin da aka zaɓa ba ta dawo ba.';

  @override
  String get tafsirCacheUnavailable =>
      'Babu tabbacin tafsirin har yanzu. Daidaita saitin bayanan tafsir da aka samo asali kafin lilo.';

  @override
  String get bookmarks => 'Alamomi';

  @override
  String get addBookmark => 'Æ˜ara Alamar';

  @override
  String get removeBookmark => 'Cire Alamar';

  @override
  String get lastRead => 'Karatun Karshe';

  @override
  String get dailyZikr => 'Zikiri kullum';

  @override
  String get duaMeaning1 =>
      'wasu kuma suna cewa, ‘Ya Ubangijinmu, Ka bamu abu mai kyau a duniya da lahira, kuma ka kare mu daga azabar wuta.';

  @override
  String get duaMeaning2 =>
      'Allah ba Ya kallafa wa wani rai fiye da abin da zai iya dauka: kowanne yana samun duk abin da ya aikata na alheri, kuma yana shan wahalarsa – ‘Ya Ubangiji, kada ka dauke mu a kan aiki idan muka manta ko muka yi kuskure. Ya Ubangiji kada ka dora mu kamar yadda Ka dora wa wadanda suka gabace mu nauyi. Ya Ubangiji, kada ka yi mana nauyi fiye da yadda muke da ƙarfin ɗauka. Ka gafarta mana, ka gafarta mana, kuma ka yi mana rahama. Kai ne Majiɓincinmu, sai ka taimake mu a kan kafirai.';

  @override
  String get duaMeaning3 =>
      '‘Ya Ubangijinmu kada ka karkatar da zukatanmu bayan ka shiryar da mu. Ka ba mu rahamarKa: Kai ne Mai bayarwa.';

  @override
  String get duaMeaning4 =>
      'Ya Ubangiji ka ba ni da zuriyata mu tsai da sallah. Ubangijinmu, ka karɓi roƙota.';

  @override
  String get duaMeaning5 =>
      'Kuma ka sassauta fikafikanka a kansu da kyautatawa, kuma ka ce: ‘Ya Ubangiji!';

  @override
  String get duaMeaning6 =>
      'Tsarki ya tabbata ga Allah, Wanda ya kasance mai iko da gaskiya. (Annabi) kada ka yi gaggawar karantawa kafin wahayi ya cika, amma ka ce: ‘Ya Ubangiji ka kara mini ilimi!';

  @override
  String get duaMeaning7 =>
      'Ka ce [Annabi], ‘Ya Ubangiji, Ka yi gafara kuma ka yi rahama, Kai ne Mafi rahamar kowa.';

  @override
  String get duaMeaning8 =>
      'wadanda suke cewa: ‘Ya Ubangijinmu! Ka sanya mana misalai masu kyau ga waxanda suka san Ka’.';

  @override
  String get morningZikr => 'Zikirin safe';

  @override
  String get eveningZikr => 'Zikirin maraice';

  @override
  String get tasbih => 'Tasbihi';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masa\'il';

  @override
  String get hadith => 'Hadisi';

  @override
  String get hadithCollection => 'Tarin Hadisi';

  @override
  String get hadithBooks => 'Littattafan Hadisi';

  @override
  String get searchHadith => 'Bincika Hadisi';

  @override
  String get asmaulHusna => 'Asma\'ul-Husna';

  @override
  String get namesOfAllah => 'Sunayen Allah';

  @override
  String get liveTv => 'Talabijin kai tsaye';

  @override
  String get watchLive => 'Kalli Kai Tsaye';

  @override
  String get streamError => 'Kuskuren rafi';

  @override
  String get reload => 'Sake kaya';

  @override
  String get openInYoutube => 'Bude a YouTube';

  @override
  String get ibadahTracker => 'Ibada Tracker';

  @override
  String get fasting => 'Azumi';

  @override
  String get quranReading => 'Karatun Alqur\'ani';

  @override
  String get prayers => 'Addu\'a';

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
  String get dhikrCount => 'Æ˜ididdiga na Dhikr';

  @override
  String get weeklyProgress => 'Ci gaban mako-mako';

  @override
  String get monthlyProgress => 'Ci gaban wata-wata';

  @override
  String get statistics => 'Kididdiga';

  @override
  String get hijriCalendar => 'Kalandar Hijira';

  @override
  String get gregorianCalendar => 'Kalanda Gregorian';

  @override
  String get today => 'Yau';

  @override
  String get tomorrow => 'Gobe';

  @override
  String get yesterday => 'Jiya';

  @override
  String get specialDays => 'Kwanaki na Musamman';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Sabuwar Shekarar Musulunci';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadan';

  @override
  String get specialDayDateEidAlFitr => '1 Shawwal';

  @override
  String get specialDayDateEidAlAdha => '10 Zul Hijjah';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharram';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabiul Awwal';

  @override
  String get laylatAlQadr => 'Lailatul Kadri';

  @override
  String get qiblaDirection => 'Hanyar Qibla';

  @override
  String get compass => 'Kamfas';

  @override
  String get degrees => 'digiri';

  @override
  String get north => 'Arewa';

  @override
  String get qiblaFound => 'Qibla samu!';

  @override
  String get turnDevice => 'Juya na\'urarka don fuskantar alÆ™ibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Kuskuren Compass: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Babu firikwensin Compass akan wannan na\'urar.';

  @override
  String get qiblaLocationRequiredTitle => 'Wurin da ake buƙata don alƙibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Saita ainihin wurinka kafin amfani da kamfas ɗin alƙibla domin a iya ƙididdige alkibla daidai.';

  @override
  String get adhanNotificationChannelName => 'Sanarwar Adhan';

  @override
  String get adhanNotificationChannelDescription =>
      'Ana faɗakar da lokacin sallah tare da sautin adhan.';

  @override
  String get notifications => 'Sanarwa';

  @override
  String get prayerNotifications => 'Sanarwa Addu\'a';

  @override
  String get enableNotifications => 'Kunna Fadakarwa';

  @override
  String get notificationTime => 'Lokacin Sanarwa';

  @override
  String get beforePrayer => 'mintuna kafin sallah';

  @override
  String get theme => 'Jigo';

  @override
  String get lightMode => 'Yanayin Haske';

  @override
  String get darkMode => 'Yanayin duhu';

  @override
  String get systemTheme => 'Jigon tsarin';

  @override
  String get about => 'Game da';

  @override
  String get version => 'Sigar';

  @override
  String get privacyPolicy => 'takardar kebantawa';

  @override
  String get termsOfService => 'SharuÉ—É—an Sabis';

  @override
  String get contactUs => 'Tuntube Mu';

  @override
  String get rateApp => 'Rate App';

  @override
  String get shareApp => 'Raba App';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'Zazzagewa';

  @override
  String get downloading => 'Ana saukewa...';

  @override
  String get downloadComplete => 'Sauke Kammala';

  @override
  String get downloadFailed => 'An kasa saukewa';

  @override
  String get offlineMode => 'Yanayin Wuta';

  @override
  String get noInternet => 'Babu Haɗin Intanet';

  @override
  String get checkConnection => 'Da fatan za a duba haÉ—in ku';

  @override
  String get premium => 'Premium';

  @override
  String get upgradeToPro => 'HaÉ“aka zuwa Pro';

  @override
  String get proFeatures => 'Siffofin Pro';

  @override
  String get removeAds => 'Cire Talla';

  @override
  String get unlockAll => 'BuÉ—e Duk Abun ciki';

  @override
  String get exclusiveContent => 'KeÉ“aÉ“É“en Abun ciki';

  @override
  String get welcome => 'Barka da zuwa';

  @override
  String get getStarted => 'Fara';

  @override
  String get skip => 'Tsallake';

  @override
  String get next => 'Na gaba';

  @override
  String get done => 'Anyi';

  @override
  String get onboarding1Title => 'Barka da zuwa tafarkin Allah';

  @override
  String get onboarding1Desc =>
      'Cikakken app na abokan hulÉ—arku na Musulunci don lokutan sallah, Al-Qur\'ani, da Æ™ari';

  @override
  String get onboarding2Title => 'Lokutan Sallah';

  @override
  String get onboarding2Desc =>
      'Madaidaicin lokutan addu\'a dangane da wurin da kuke';

  @override
  String get onboarding3Title => 'Alqur\'ani & More';

  @override
  String get onboarding3Desc =>
      'Karanta Al-Qur\'ani, ku bibiyi karatun ku, da kuma bincika abubuwan Musulunci';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'Sake saitin Counter';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'Manufar: $target';
  }

  @override
  String get tapToCount => 'Matsa don ƙidaya';

  @override
  String get zikrCompletedMashAllah => 'An kammala! MashaAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Lalle ne Allah Yã kasance a kan kõwane azzãlumai.';

  @override
  String get zikrMeaningAlhamdulillah => 'Dukkan godiya ta tabbata ga Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah shi ne mafi girma.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Bãbu abin bautãwa fãce Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Ina neman gafarar Allah.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Babu karfi babu karfi sai ta Allah.';

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
  String get dailyProgress => 'Ci gaban Kullum';

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
  String get recheckPremium => 'Sake duba halin biyan kuɗi na ƙima';

  @override
  String get syncStore =>
      'Yi aiki tare da kantin sayar da app don tabbatar da biyan kuɗin ku na ƙima.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'An tabbatar da biyan kuɗi na ƙima.';

  @override
  String get premiumNotFound => 'Ba a sami biyan kuɗi mai ƙima ba.';

  @override
  String premiumRefreshError(Object error) {
    return 'Ba za a iya sabunta halin biyan kuɗi mai ƙima ba: $error';
  }

  @override
  String get offlineDownloadManager => 'Manajan Zazzagewa Ba layi';

  @override
  String get manageDatasets =>
      'Sarrafa manyan fakitin sauti na layi da saitin bayanai.';

  @override
  String get freeStorage => 'Haɓaka ma\'ajin na\'urar ciki.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'Duba bayanan Al-Qur\'ani...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'Matsayin Database Alqur\'ani';

  @override
  String statusLabel(Object status) {
    return 'Matsayi: $status';
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
  String get audioVoice => 'Muryar Sauti';

  @override
  String get audioVoiceMisharyAlafasy => 'Namiji (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Namiji (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Namiji (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Qibla Calibration';

  @override
  String get compassSmoothing => 'Compass Smooting';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Daidaita Rarraba';

  @override
  String currentOffset(Object offset) {
    return 'Yanzu: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Daidaita idan kamfas ɗin ku yana buƙatar gyaran hannu. Kyawawan dabi\'u suna juyawa agogon hannu.';

  @override
  String get apply => 'Aiwatar da canje-canje';

  @override
  String get resetOnboarding => 'Sake saita saitin intro';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Bincike';

  @override
  String get diagnosticsNotSet => 'Ba a saita ba';

  @override
  String get diagnosticsPrayerProfile => 'Bayanin Addu\'a';

  @override
  String get diagnosticsPrayerSource => 'Hukumar Sallah';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Kusurwoyin al\'ada na hannu (babu tushen cibiyoyi)';

  @override
  String get diagnosticsCloudDriven => 'Cloud Driven';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Alqur\'ani Audio Assets';

  @override
  String get diagnosticsAudioAssets => 'Kayayyakin Audio';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count fayiloli';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Ba a yi nasarar karatun ba: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Yankunan Wuta';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count yana goyan bayan';
  }

  @override
  String get diagnosticsQuranDataset => 'Alqur\'ani Dataset';

  @override
  String get diagnosticsQuranSurahs => 'surorin Alqur\'ani';

  @override
  String get diagnosticsQuranAyahs => 'Ayoyin Qur\'an';

  @override
  String get diagnosticsQuranJuzMetadata => 'Quran Juz Metadata';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Teburan girgije sun ɓace a cikin Supabase; bundled fallback yana aiki';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Binciken gajimare ya kasa: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz metadata ya ɓace; bundled structural fallback yana aiki';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Binciken tsarin girgije ya gaza: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Ana buƙatar daidaitawa. Juya na\'urar a adadi-8.';

  @override
  String get dailyVerse => 'Aya ta Yau';

  @override
  String get todaysIbadah => 'Ibadar yau';

  @override
  String get quickAccess => 'Saurin Shiga';

  @override
  String get assistant => 'Mataimaki';

  @override
  String get places => 'Wurare';

  @override
  String get library => 'Laburare';

  @override
  String get analytics => 'Bincike';

  @override
  String get dailyDuas => 'Addu\'a na yau da kullun';

  @override
  String essentialDuas(String count) {
    return '$count essential duas';
  }

  @override
  String get duaUnavailableTitle => 'Babu tabbacin duas tukuna';

  @override
  String get duaUnavailableBody =>
      'Tabbatar da duas na yau da kullun ba a daidaita su da wannan na\'urar ba tukuna. Haɗa zuwa tushen gajimare don loda duas da aka samo maimakon faɗuwar da ba a tabbatar ba.';

  @override
  String get duaCategoryQuranic => 'Qur\'ani dua';

  @override
  String get duaCategoryMorningEvening => 'Safiya & Maraice';

  @override
  String get duaCategoryTasbih => 'Tasbihi';

  @override
  String get duaCategoryProtection => 'Kariya';

  @override
  String get duaCategoryBeginning => 'Farko';

  @override
  String get duaCategorySleep => 'Barci';

  @override
  String get duaCategoryFoodDrink => 'Abinci & Abin sha';

  @override
  String get duaCategoryForgiveness => 'Gafara';

  @override
  String get duaCategoryHome => 'Gida';

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
  String get islamicEducation => 'Ilimin Musulunci';

  @override
  String get sukunAudioTitle => 'Sukun Sauti';

  @override
  String get hadithCollections => 'Tarin Hadisai';

  @override
  String get hadithSourcePending => 'Tabbatar da tushe yana jiran';

  @override
  String get hadithUnavailableTitle =>
      'Ba a samu ingantattun tarin hadisai ba tukuna';

  @override
  String get hadithUnavailableBody =>
      'Wannan ginin har yanzu ya dogara da ingantaccen abinci na hadisi na waje. Ana kashe binciken hadisi har sai an daidaita saitin bayanan da aka samo asali.';

  @override
  String get paywallUnlockAll => 'Buɗe duk fasalulluka don tafiya ta ruhaniya';

  @override
  String get premiumProductUnavailable =>
      'Babu samfura mai ƙima a yanzu. Da fatan za a sake gwadawa daga baya.';

  @override
  String get premiumPurchaseFailed =>
      'An kasa kammala siyan. Da fatan za a sake gwadawa.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'Q&A mai ƙarfin AI mara iyaka';

  @override
  String get paywallFeature2Title => 'Unlimited Offline';

  @override
  String get paywallFeature2Desc => 'Zazzage dukkan karatun';

  @override
  String get paywallFeature3Title => 'Keɓaɓɓen Zane-zane';

  @override
  String get paywallFeature3Desc => 'Premium jigogi & fonts';

  @override
  String get paywallFeature4Title => 'Talla-Free';

  @override
  String get paywallFeature4Desc => 'Sifili talla';

  @override
  String get paywallGetAccess => 'Samun Samun Rayuwa - \$1.00';

  @override
  String get restorePurchases => 'Mayar da Sayayya';

  @override
  String get zakatCalculator => 'Kalkuletar zakka';

  @override
  String get zakatGold => 'Zinariya (Altın)';

  @override
  String get zakatSilver => 'Azurfa (Gümüş)';

  @override
  String get zakatCashBank => 'Cash / Banki';

  @override
  String get zakatBusiness => 'Kasuwanci';

  @override
  String get zakatInvestments => 'Zuba jari';

  @override
  String get zakatWeightGrams => 'Nauyi (g)';

  @override
  String get zakatPricePerGram => 'Farashin/g';

  @override
  String get zakatTotalAmount => 'Jimla';

  @override
  String get zakatInventoryValue => 'Darajar Inventory';

  @override
  String get zakatDebts => 'Bashi';

  @override
  String get zakatTotal => 'Jimlar';

  @override
  String get calculateZakat => 'Yi lissafin Zakka';

  @override
  String get nisabNotReached => 'Nisab bai kai ba. Zakka ba ta wajaba.';

  @override
  String get totalZakat => 'Jimlar Zakka';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Kayayyaki: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakkar Zinariya';

  @override
  String get zakatSilverZakat => 'Zakkar Azurfa';

  @override
  String get zakatCashZakat => 'Cash Zakka';

  @override
  String get zakatBusinessZakat => 'Zakkar kasuwanci';

  @override
  String get zakatInvestmentZakat => 'Zakkar Zuba Jari';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! Ni ne mataimakin ku na Musulunci. Ku tambaye ni game da sallah, azumi, zakka, ko wani batu na Musulunci.';

  @override
  String get chatbotLimitReached =>
      'An kai iyakar tambayar yau da kullun. Haɓaka zuwa Premium don Unlimited.';

  @override
  String get chatbotErrorMsg =>
      'Ba zan iya ba da amsa ba. Da fatan za a sake gwadawa.';

  @override
  String get chatbotOfflinePrompt =>
      'Har yanzu ana ci gaba da tantance tushen ilimin Islama na intanet da aka tabbatar. Kuna iya kunna koma baya ta layi yanzu, amma zai nuna iyakantaccen saƙon amintattu har sai an shirya saitin bayanan da aka samo asali.\n\nKuna son kunna koma baya a layi?';

  @override
  String get chatbotOfflineSwitched =>
      'An kunna koma baya na layi. Ingantattun amsoshi na Musulunci na cikin gida ba su shirya ba tukuna.';

  @override
  String get chatbotOfflineDownloadLabel => 'Kunna Faɗuwar Wajen Layi';

  @override
  String get downloadPreparing => 'Ana shirin zazzagewa...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Downloading surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'An riga an saukar da dukkan surori don wannan mai karatun.';

  @override
  String get offlineQuranAudioPacks => 'Fakitin Audio na Alqur\'ani Offline';

  @override
  String storedOnDeviceMb(String size) {
    return 'Stored on device: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surahs downloaded';
  }

  @override
  String get redownloadMissingRepair => 'Gyara / Zazzagewa Ba a Bace';

  @override
  String get downloadAction => 'Zazzagewa';

  @override
  String get resumeDownload => 'Ci gaba da saukewa';

  @override
  String get deleteDownloadedFiles => 'Share Fayilolin da Aka Sauke';

  @override
  String get downloadCancelling => 'Ana sokewa...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'An soke saukewa don $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'An gama saukewa don $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'An gama saukewa don $reciter tare da $failed surorin da suka kasa ($downloaded/$total zazzage).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Deleted offline files for $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Ba a samun ingantattun hanyoyin sauti na Alqur\'ani a yanzu.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Verified Quran audio pack is incomplete ($available/$total). Refresh cloud seed and try again.';
  }

  @override
  String get chatbotHint => 'Yi tambaya...';

  @override
  String get chatbotThinking => 'Tunani...';

  @override
  String get sukunMixerSubtitle => 'Nature & Qur\'an Mixer';

  @override
  String get audioPlayFailed => 'An kasa sake kunna sautin';

  @override
  String get sukunNatureLabel => 'Sukun (Nature)';

  @override
  String get sukunRainOfMercy => 'Ruwan Rahma';

  @override
  String get sukunGardenOfPeace => 'Lambun Aminci';

  @override
  String get sukunMidnightCalm => 'Tsakar dare Kwanciyar hankali';

  @override
  String get sukunOceanTawheed => 'Tekun Tauhidi';

  @override
  String get sukunUnavailableTitle => 'Babu yanayin sauti';

  @override
  String get sukunUnavailableBody =>
      'Wannan ginin bai haɗa da kadarorin yanayin yanayin sautin Sukun da ake buƙata ba tukuna.';

  @override
  String get prayerCompletion => 'Kammala Sallah';

  @override
  String get streaks => 'Rinjaye';

  @override
  String get dayStreak => 'Tsawon rana';

  @override
  String get bestStreak => 'Mafi kyawu';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Faɗuwar Wajen Layi';

  @override
  String get chatbotUseCloudAi => 'Yi amfani da Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Kunna Faɗuwar Wajen Layi';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'API ɗin Cloud ba a saita shi ba. Tabbataccen jagorar Musulunci ta layi ba ta samuwa tukuna.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Ba a samu ingantattun jagorar Musulunci na gida ba tukuna. Canja zuwa Cloud AI don samun amsoshi masu tushe.';

  @override
  String get mosques => 'Masallatai';

  @override
  String get halalFood => 'Abincin Halal';

  @override
  String get placesSearchArea => 'Bincika wannan yanki';

  @override
  String get nearbyMosques => 'Masallatan Kusa';

  @override
  String get islamicSchools => 'Makarantun Islamiyya';

  @override
  String placesFoundCount(String count) {
    return 'An samo $count';
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
      'Kuskuren hanyar sadarwa. Da fatan za a sake gwadawa.';

  @override
  String get placesLocationRequiredTitle => 'Wurin da ake buƙata';

  @override
  String get placesLocationRequiredBody =>
      'Saita wuri da farko don a iya bincika masallatai da ke kusa, abinci na halal, da makarantun islamiyya daidai.';

  @override
  String get placesMapTilesUnavailableTitle => 'Babu fale-falen taswira';

  @override
  String get placesMapTilesUnavailableBody =>
      'Ba a saita ingantaccen tushen tayal taswira don wannan ginin ba tukuna. Wuraren da ke kusa za su iya ɗauka daga wurin da aka ajiye.';

  @override
  String get placesDataSourceUnavailableTitle => 'Babu bayanan wuraren';

  @override
  String get placesDataSourceUnavailableBody =>
      'Ba a saita madaidaitan wuraren ƙarshen bayanan don wannan ginin ba tukuna. Saita PLACES_OVERPASS_API_URL zuwa amintaccen wakili ko mai bayarwa kafin kunna bincike na kusa.';

  @override
  String get unknownPlaceName => 'Sunan da ba a sani ba';

  @override
  String get islamicPlaceFallback => 'Wurin Musulunci';

  @override
  String get asmaMeaning1 => 'Mai Amfani';

  @override
  String get asmaMeaning2 => 'Mai rahama';

  @override
  String get asmaMeaning3 => 'Sarki /Ubangiji Madawwami';

  @override
  String get asmaMeaning4 => 'Mafi Tsarki';

  @override
  String get asmaMeaning5 => 'Tsohon Aminci';

  @override
  String get asmaMeaning6 => 'Mai Bada Tsaro';

  @override
  String get asmaMeaning7 => 'Mai gadi';

  @override
  String get asmaMeaning8 => 'Mai daraja/Mafi Girma';

  @override
  String get asmaMeaning9 => 'Mai Taimakawa';

  @override
  String get asmaMeaning10 => 'Mafi Girma';

  @override
  String get asmaMeaning11 => 'Mahalicci';

  @override
  String get asmaMeaning12 => 'Mai yin oda';

  @override
  String get asmaMeaning13 => 'Mai Siffar Kyau';

  @override
  String get asmaMeaning14 => 'Gafara';

  @override
  String get asmaMeaning15 => 'Mai Tausayi';

  @override
  String get asmaMeaning16 => 'Mai Bada Duka';

  @override
  String get asmaMeaning17 => 'Mai Dorewa';

  @override
  String get asmaMeaning18 => 'Mabudin';

  @override
  String get asmaMeaning19 => 'Masanin Kowa';

  @override
  String get asmaMeaning20 => 'Mai Taimakawa';

  @override
  String get asmaMeaning21 => 'Mai Taimako';

  @override
  String get asmaMeaning22 => 'Abaser';

  @override
  String get asmaMeaning23 => 'Maxaukakin Sarki';

  @override
  String get asmaMeaning24 => 'Mai Girmamawa';

  @override
  String get asmaMeaning25 => 'Mai wulakanci';

  @override
  String get asmaMeaning26 => 'Mai Ji Duka';

  @override
  String get asmaMeaning27 => 'Mai Gani Duka';

  @override
  String get asmaMeaning28 => 'Alkali';

  @override
  String get asmaMeaning29 => 'Adalci';

  @override
  String get asmaMeaning30 => 'Mai Tausayi';

  @override
  String get asmaMeaning31 => 'Dukkan Sani';

  @override
  String get asmaMeaning32 => 'Mai Gabatarwa';

  @override
  String get asmaMeaning33 => 'Mai Girma';

  @override
  String get asmaMeaning34 => 'Babban Gafara';

  @override
  String get asmaMeaning35 => 'Mai Ladan Godiya';

  @override
  String get asmaMeaning36 => 'Mafi Girma';

  @override
  String get asmaMeaning37 => 'Mafi Girma';

  @override
  String get asmaMeaning38 => 'Mai kiyayewa';

  @override
  String get asmaMeaning39 => 'Mai ciyarwa';

  @override
  String get asmaMeaning40 => 'Mai hisabi';

  @override
  String get asmaMeaning41 => 'Mai Girma';

  @override
  String get asmaMeaning42 => 'Mai Karimci';

  @override
  String get asmaMeaning43 => 'Mai Kallon';

  @override
  String get asmaMeaning44 => 'Mai Amsa Addu\'a';

  @override
  String get asmaMeaning45 => 'Dukkan Fahimta';

  @override
  String get asmaMeaning46 => 'Mai Hikima';

  @override
  String get asmaMeaning47 => 'Mai Soyayya';

  @override
  String get asmaMeaning48 => 'Mafi daukaka';

  @override
  String get asmaMeaning49 => 'Mai Tashi';

  @override
  String get asmaMeaning50 => 'Shaidan';

  @override
  String get asmaMeaning51 => 'Gaskiya';

  @override
  String get asmaMeaning52 => 'Mai wadatar amintattu';

  @override
  String get asmaMeaning53 => 'Ma\'abucin Qarfi';

  @override
  String get asmaMeaning54 => 'Mai Karfi';

  @override
  String get asmaMeaning55 => 'Mai tsaro';

  @override
  String get asmaMeaning56 => 'Abin Yabo';

  @override
  String get asmaMeaning57 => 'Mai tantancewa';

  @override
  String get asmaMeaning58 => 'Mafari';

  @override
  String get asmaMeaning59 => 'Mai Maidawa';

  @override
  String get asmaMeaning60 => 'Mai Rayuwa';

  @override
  String get asmaMeaning61 => 'Mai daukar Rayuwa';

  @override
  String get asmaMeaning62 => 'Mai Rayuwa';

  @override
  String get asmaMeaning63 => 'Mai Dogara da Kai';

  @override
  String get asmaMeaning64 => 'Mai Neman';

  @override
  String get asmaMeaning65 => 'Mai daukaka';

  @override
  String get asmaMeaning66 => 'Daya Kadai';

  @override
  String get asmaMeaning67 => 'Daya';

  @override
  String get asmaMeaning68 => 'Wanda Kowa Yake Nemansa';

  @override
  String get asmaMeaning69 => 'Mai karfi';

  @override
  String get asmaMeaning70 => 'Mai halicci dukkan iko';

  @override
  String get asmaMeaning71 => 'Mai Bugawa';

  @override
  String get asmaMeaning72 => 'Mai jinkirtawa';

  @override
  String get asmaMeaning73 => 'Na Farko';

  @override
  String get asmaMeaning74 => 'Na Karshe';

  @override
  String get asmaMeaning75 => 'Bayanai';

  @override
  String get asmaMeaning76 => 'Mai Boye';

  @override
  String get asmaMeaning77 => 'Gwamnan';

  @override
  String get asmaMeaning78 => 'Mafi Girma';

  @override
  String get asmaMeaning79 => 'Mai aikata Alheri';

  @override
  String get asmaMeaning80 => 'Jagorar Tuba';

  @override
  String get asmaMeaning81 => 'Mai daukar fansa';

  @override
  String get asmaMeaning82 => 'Mai Gafara';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'Mallakin/Mallakin Duka';

  @override
  String get asmaMeaning85 => 'Ma\'abucin girma da falala';

  @override
  String get asmaMeaning86 => 'Mai Adalci';

  @override
  String get asmaMeaning87 => 'Mai Taruwa';

  @override
  String get asmaMeaning88 => 'Mawadaci';

  @override
  String get asmaMeaning89 => 'Mai wadatar';

  @override
  String get asmaMeaning90 => 'Mai Rigakafin cutarwa';

  @override
  String get asmaMeaning91 => 'Mai Kawowa';

  @override
  String get asmaMeaning92 => 'Mai Bayar da Amfani';

  @override
  String get asmaMeaning93 => 'Haske';

  @override
  String get asmaMeaning94 => 'Mai Jagora';

  @override
  String get asmaMeaning95 => 'Mafari';

  @override
  String get asmaMeaning96 => 'Mai Dawwama';

  @override
  String get asmaMeaning97 => 'Magado';

  @override
  String get asmaMeaning98 => 'Mafi Adalci Jagora';

  @override
  String get asmaMeaning99 => 'Mai haƙuri';
}
