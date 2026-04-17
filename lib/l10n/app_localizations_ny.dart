// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nyanja Chewa Chichewa (`ny`).
class AppLocalizationsNy extends AppLocalizations {
  AppLocalizationsNy([String locale = 'ny']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Njira Yachisilamu Yowala';

  @override
  String get home => 'Kunyumba';

  @override
  String get quran => 'Korani';

  @override
  String get qibla => 'Chibela';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Kalendala';

  @override
  String get settings => 'Zokonda';

  @override
  String get nextPrayer => 'Pemphero Lotsatira';

  @override
  String get prayerTimes => 'Nthawi za Mapemphero';

  @override
  String get continueReading => 'Pitirizani Kuwerenga';

  @override
  String get getLifetimePro => 'Pezani Lifetime Pro';

  @override
  String get unlockTajweed => 'Tsegulani Tajweed & Zapamwamba';

  @override
  String get prayerCalculation => 'Kuwerengera Pemphero';

  @override
  String get method => 'Njira yowerengera';

  @override
  String get madhab => 'Njira ya Asr Juristic';

  @override
  String get surahs => 'Surahs';

  @override
  String get ayahs => 'Ayahs';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Kutuluka kwa dzuwa';

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
    return 'Nthawi ya $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Yakwana nthawi yopemphera $prayerName.';
  }

  @override
  String get dataStorage => 'Data & Kusunga';

  @override
  String get clearCache => 'Chotsani Cache';

  @override
  String get cacheClearedSuccess => 'Cache yachotsedwa bwino';

  @override
  String get location => 'Malo';

  @override
  String get language => 'Chiyankhulo';

  @override
  String get selectLanguage => 'Sankhani Chiyankhulo';

  @override
  String get searchLanguage => 'Sakani zinenero 180+...';

  @override
  String get systemDefault => 'Zosasintha Zadongosolo';

  @override
  String get currentLocation => 'Malo Apano (GPS)';

  @override
  String get locationServiceDisabled => 'Ntchito zamalo ndizozimitsidwa.';

  @override
  String get locationPermissionDenied => 'Chilolezo cha malo chaletsedwa.';

  @override
  String get locationDetectionFailed =>
      'Sitinathe kuzindikira komwe muli. Chonde sankhani mzinda pamanja kapena yesaninso.';

  @override
  String citiesCount(String count) {
    return '$count mizinda';
  }

  @override
  String get search => 'Sakani';

  @override
  String get searchHint => 'Sakani...';

  @override
  String get noResults => 'Palibe zotsatira zomwe zapezeka';

  @override
  String get loading => 'Tikutsegula...';

  @override
  String get error => 'Cholakwika';

  @override
  String get appErrorOccurred => 'Zalakwika';

  @override
  String get appUnknownError => 'Cholakwika chosadziwika';

  @override
  String get quranLoadFailed =>
      'Zomwe zili mu Quran sizinathe kuyikidwa. Chonde yesaninso.';

  @override
  String get retry => 'Yesaninso';

  @override
  String get refreshAction => 'Tsitsaninso';

  @override
  String get cancel => 'Letsani';

  @override
  String get save => 'Sungani';

  @override
  String get delete => 'Chotsani';

  @override
  String get edit => 'Sinthani';

  @override
  String get close => 'Tsekani';

  @override
  String get ok => 'Chabwino';

  @override
  String get yes => 'Inde';

  @override
  String get no => 'Ayi';

  @override
  String get surah => 'Surah';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Tsamba';

  @override
  String get reading => 'Kuwerenga';

  @override
  String get recitation => 'Kubwereza';

  @override
  String get translation => 'Kumasulira';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Tikutsegula tafsir...';

  @override
  String get tafsirSourceLabel => 'Gwero la Tafsir';

  @override
  String get tafsirNoSurahFound => 'Sura iyi sinapezeke tafsir.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Palibe tafsir yomwe yapezeka ya ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir sinathe kuikidwa.';

  @override
  String get tafsirNoTextForAyah => 'Palibe mawu a tafsir a ayah iyi.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Kutsitsa tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Kutsegula tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Gwero la Tafsir labweza cholakwika cha HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Magwero osankhidwa a tafsir sanabweze chilichonse.';

  @override
  String get tafsirCacheUnavailable =>
      'Tafsir yotsimikizika sinapezekebe pa intaneti. Gwirizanitsani deta ya tafsir yochokera musanayambe kusakatula.';

  @override
  String get bookmarks => 'Zosungira';

  @override
  String get addBookmark => 'Onjezani Bookmark';

  @override
  String get removeBookmark => 'Chotsani Bookmark';

  @override
  String get lastRead => 'Kuwerenga Komaliza';

  @override
  String get dailyZikr => 'Zikr tsiku lililonse';

  @override
  String get duaMeaning1 =>
      'ena amapemphera kuti: ‘Mbuye wathu, tipatseni zabwino padziko lapansi ndi tsiku lomaliza, ndipo titetezeni ku chilango cha moto.';

  @override
  String get duaMeaning2 =>
      'Mulungu sausenzetsa mzimu uliwonse Kuposa umene ungapirire. Aliyense amapeza zabwino zimene wachita, ndipo amakumana ndi zoipa zake, “Ambuye, musatipondereze tikaiwala kapena kulakwa. Ambuye, Musatisenze mtolo monga mudawalemetsa omwe adalipo patsogolo pathu. Ambuye, musatisenzetse ife ndi mphamvu zoposa zimene tili nazo. Tikhululukireni, tikhululukireni, ndipo tichitireni chifundo. Inu ndinu Mtetezi wathu, choncho tithandizeni kwa osakhulupirira.';

  @override
  String get duaMeaning3 =>
      '‘Mbuye wathu, musalole kuti mitima yathu Ipotoke pambuyo potitsogolera. Tipatseni chifundo Chanu: Inu ndinu Wopereka nthawi zonse.';

  @override
  String get duaMeaning4 =>
      'Ambuye ndipatseni ine ndi ana anga kuti tisunge mapemphero. Ambuye wathu, landirani pempho langa.';

  @override
  String get duaMeaning5 =>
      'ndipo tsitsani mapiko anu modzichepetsa kwa iwo mwachifundo ndi kunena, ‘Ambuye, achitireni chifundo monga momwe anandisamalira ine pamene ndinali wamng’ono.';

  @override
  String get duaMeaning6 =>
      'watukuka Mulungu Yemwe ali wolamuliradi. [Mneneri], musamafulumire kunena chivumbulutso chisanakwaniritsidwe koma nenani, Ambuye, ndiwonjezereni kudziwa!';

  @override
  String get duaMeaning7 =>
      'Nena [Mneneri]: “Ambuye, khululukani ndipo chitirani chifundo;';

  @override
  String get duaMeaning8 =>
      'amene amapemphera kuti: ‘Mbuye wathu, tisangalatseni mwa akazi athu ndi ana athu. Tipangeni ife zitsanzo zabwino kwa iwo amene akukudziwani Inu”.';

  @override
  String get morningZikr => 'Morning Zikr';

  @override
  String get eveningZikr => 'Usiku wa Zikr';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masail';

  @override
  String get hadith => 'Hadith';

  @override
  String get hadithCollection => 'Kusonkhanitsa Hadith';

  @override
  String get hadithBooks => 'Mabuku a Hadith';

  @override
  String get searchHadith => 'Sakani Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Mayina a Allah';

  @override
  String get liveTv => 'TV yamoyo';

  @override
  String get watchLive => 'Onerani Live';

  @override
  String get streamError => 'Vuto la mtsinje';

  @override
  String get reload => 'Kwezaninso';

  @override
  String get openInYoutube => 'Tsegulani mu YouTube';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Kusala kudya';

  @override
  String get quranReading => 'Kuwerenga Korani';

  @override
  String get prayers => 'Mapemphero';

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
  String get dhikrCount => 'Mtengo wa Dhikr';

  @override
  String get weeklyProgress => 'Kupita Patsogolo Kwamlungu';

  @override
  String get monthlyProgress => 'Kupita kwa Mwezi ndi Mwezi';

  @override
  String get statistics => 'Ziwerengero';

  @override
  String get hijriCalendar => 'Kalendala ya Hijri';

  @override
  String get gregorianCalendar => 'Kalendala ya Gregorian';

  @override
  String get today => 'Lero';

  @override
  String get tomorrow => 'Mawa';

  @override
  String get yesterday => 'Dzulo';

  @override
  String get specialDays => 'Masiku apadera';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Chaka Chatsopano cha Chisilamu';

  @override
  String get mawlidAnNabi => 'Maulid an-Nabi';

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
  String get compass => 'Kampasi';

  @override
  String get degrees => 'madigiri';

  @override
  String get north => 'Kumpoto';

  @override
  String get qiblaFound => 'Qibla yapezeka!';

  @override
  String get turnDevice =>
      'Sinthani chipangizo chanu kuti chiyang\'ane ndi Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Vuto la Kampasi: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Sensa ya Compass sichikupezeka pachidachi.';

  @override
  String get qiblaLocationRequiredTitle => 'Malo ofunikira ku Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Khazikitsani malo anu enieni musanagwiritse ntchito kampasi ya Qibla kuti kolowera kuwerengedwe molondola.';

  @override
  String get adhanNotificationChannelName => 'Zidziwitso za Adhan';

  @override
  String get adhanNotificationChannelDescription =>
      'Zidziwitso za nthawi ya mapemphero ndi mawu a adhan.';

  @override
  String get notifications => 'Zidziwitso';

  @override
  String get prayerNotifications => 'Zidziwitso za Pemphero';

  @override
  String get enableNotifications => 'Yambitsani Zidziwitso';

  @override
  String get notificationTime => 'Nthawi Yodziwitsa';

  @override
  String get beforePrayer => 'mphindi tisanapemphere';

  @override
  String get theme => 'Mutu';

  @override
  String get lightMode => 'Kuwala Mode';

  @override
  String get darkMode => 'Mdima Wamdima';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'Za';

  @override
  String get version => 'Baibulo';

  @override
  String get privacyPolicy => 'mfundo zazinsinsi';

  @override
  String get termsOfService => 'Terms of Service';

  @override
  String get contactUs => 'Lumikizanani nafe';

  @override
  String get rateApp => 'Rate App';

  @override
  String get shareApp => 'Gawani App';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Onani $appName: Pulogalamu yabwino kwambiri yachisilamu! $url';
  }

  @override
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'Zotsitsa';

  @override
  String get downloading => 'Kutsitsa...';

  @override
  String get downloadComplete => 'Kutsitsa Mwamaliza';

  @override
  String get downloadFailed => 'Kutsitsa Kwalephera';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'Palibe intaneti';

  @override
  String get checkConnection => 'Chonde onani kulumikizana kwanu';

  @override
  String get premium => 'Zofunika';

  @override
  String get upgradeToPro => 'Sinthani kupita ku Pro';

  @override
  String get proFeatures => 'Mawonekedwe a Pro';

  @override
  String get removeAds => 'Chotsani Zotsatsa';

  @override
  String get unlockAll => 'Tsegulani Zonse Zamkatimu';

  @override
  String get exclusiveContent => 'Zinthu Zapadera';

  @override
  String get welcome => 'Takulandirani';

  @override
  String get getStarted => 'Yambanipo';

  @override
  String get skip => 'Dumphani';

  @override
  String get next => 'Ena';

  @override
  String get done => 'Zatheka';

  @override
  String get onboarding1Title => 'Takulandirani ku Njira ya Allah';

  @override
  String get onboarding1Desc =>
      'Pulogalamu yanu yathunthu yachisilamu yanthawi yamapemphero, Korani, ndi zina zambiri';

  @override
  String get onboarding2Title => 'Nthawi za Mapemphero';

  @override
  String get onboarding2Desc =>
      'Nthawi zolondola zopemphera kutengera komwe muli';

  @override
  String get onboarding3Title => 'Quran & Zambiri';

  @override
  String get onboarding3Desc =>
      'Werengani Korani, tsatirani zomwe mwawerenga, ndikuwona zachisilamu';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'Bwezerani Kauntala';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'Chiwerengero cha zomwe mukufuna: $target';
  }

  @override
  String get tapToCount => 'Dinani kuti muwerenge';

  @override
  String get zikrCompletedMashAllah => 'Zatha! MashaAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah ali Pamwambamwamba pa chilichonse chopanda ungwiro.';

  @override
  String get zikrMeaningAlhamdulillah => 'Kuyamikidwa konse nkwa Mulungu.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah ndi wamkulu.';

  @override
  String get zikrMeaningLaIlahaIllallah =>
      'Palibe wopembedzedwa mwachoonadi koma Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Ndikupempha chikhululuko kwa Allah.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Palibe mphamvu ndi mphamvu koma kudzera mwa Mulungu.';

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
  String get dailyProgress => 'Kupita Kwatsiku ndi Tsiku';

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
  String get recheckPremium => 'Yang\'ananinso mbiri yolembetsa';

  @override
  String get syncStore =>
      'Gwirizanitsani ndi app store kuti mutsimikizire kuti mwalembetsa.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'Kulembetsa koyambirira kwatsimikiziridwa.';

  @override
  String get premiumNotFound => 'Kulembetsa koyambirira sikunapezeke.';

  @override
  String premiumRefreshError(Object error) {
    return 'Sitinathe kutsitsimutsanso zolembetsa: $error';
  }

  @override
  String get offlineDownloadManager => 'Offline Download Manager';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Tsegulani zosungira mkati mwa chipangizo.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'Kuyang\'ana database ya Quran...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'Momwe Qur\'an Database Status';

  @override
  String statusLabel(Object status) {
    return 'Momwe: $status';
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
  String get audioVoiceMisharyAlafasy => 'Male (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Male (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Mwamuna (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Kusintha kwa Qibla';

  @override
  String get compassSmoothing => 'Compass Smoothing';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Calibration Offset';

  @override
  String currentOffset(Object offset) {
    return 'Panopa: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Sinthani ngati kampasi yanu ikufunika kukonza pamanja. Makhalidwe abwino amazungulira koloko.';

  @override
  String get apply => 'Ikani zosintha';

  @override
  String get resetOnboarding => 'Bwezerani khwekhwe loyambilira';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Diagnostics';

  @override
  String get diagnosticsNotSet => 'Osayikidwa';

  @override
  String get diagnosticsPrayerProfile => 'Mbiri ya Pemphero';

  @override
  String get diagnosticsPrayerSource => 'Ulamuliro wa Pemphero';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Mwamakonda / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Ma angles okhazikika pamanja (palibe gwero)';

  @override
  String get diagnosticsCloudDriven => 'Cloud Drived';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Korani Audio Assets';

  @override
  String get diagnosticsAudioAssets => 'Zida Zomvera';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count mafayilo';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifest sanawerengedwe: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Malo Okhazikika';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count zothandizidwa';
  }

  @override
  String get diagnosticsQuranDataset => 'Quran Dataset';

  @override
  String get diagnosticsQuranSurahs => 'Quran Surahs';

  @override
  String get diagnosticsQuranAyahs => 'Quran Ayah';

  @override
  String get diagnosticsQuranJuzMetadata => 'Quran Juz Metadata';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Matebulo amtambo akusowa ku Supabase; m\'mitolo fallback yogwira';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Kuwona mtambo kwalephera: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz metadata ikusowa; m\'mitolo structural fallback yogwira';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Kuwunika kwamtambo kwalephera: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Calibration chofunika. Sinthani chipangizo mu chithunzi-8.';

  @override
  String get dailyVerse => 'Ndime yatsiku ndi tsiku';

  @override
  String get todaysIbadah => 'Lero Ibadah';

  @override
  String get quickAccess => 'Kufikira Mwamsanga';

  @override
  String get assistant => 'Wothandizira';

  @override
  String get places => 'Malo';

  @override
  String get library => 'Library';

  @override
  String get analytics => 'Analytics';

  @override
  String get dailyDuas => 'Daily Duas';

  @override
  String essentialDuas(String count) {
    return '$count ma dua ofunikira';
  }

  @override
  String get duaUnavailableTitle => 'Ma dua otsimikizika sakupezeka pano';

  @override
  String get duaUnavailableBody =>
      'Ma dua otsimikiziridwa tsiku ndi tsiku sanagwirizanitsidwe ku chipangizochi panobe. Lumikizani ku mtambo kuti mutsegule ma duas m\'malo mobwerera komwe sikunatsimikizidwe.';

  @override
  String get duaCategoryQuranic => 'Dua ya Quran';

  @override
  String get duaCategoryMorningEvening => 'M\'mawa ndi Madzulo';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Chitetezo';

  @override
  String get duaCategoryBeginning => 'Zoyambira';

  @override
  String get duaCategorySleep => 'Gona';

  @override
  String get duaCategoryFoodDrink => 'Chakudya & Chakumwa';

  @override
  String get duaCategoryForgiveness => 'Kukhululuka';

  @override
  String get duaCategoryHome => 'Kunyumba';

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
  String get islamicEducation => 'Maphunziro achisilamu';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Zosonkhanitsa Hadith';

  @override
  String get hadithSourcePending => 'Gwero lotsimikizika likudikirira';

  @override
  String get hadithUnavailableTitle =>
      'Zopereka zotsimikizika za hadith sizinapezekebe';

  @override
  String get hadithUnavailableBody =>
      'Kumanga uku kumadalirabe chakudya cha hadith chosatsimikizika. Kusakatula kwa Hadith kumakhala kozimitsidwa mpaka dataset yochokera kulumikizidwa.';

  @override
  String get paywallUnlockAll => 'Tsegulani mbali zonse za ulendo wanu wauzimu';

  @override
  String get premiumProductUnavailable =>
      'Chogulitsa chamtengo wapatali sichikupezeka pakali pano. Chonde yesaninso nthawi ina.';

  @override
  String get premiumPurchaseFailed => 'Kugula sikunathe. Chonde yesaninso.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'Q&A yoyendetsedwa ndi AI yopanda malire';

  @override
  String get paywallFeature2Title => 'Zopanda malire Zopanda intaneti';

  @override
  String get paywallFeature2Desc => 'Koperani zobwereza zonse';

  @override
  String get paywallFeature3Title => 'Zojambula Zapadera';

  @override
  String get paywallFeature3Desc => 'Mitu yoyambirira & mafonti';

  @override
  String get paywallFeature4Title => 'Zopanda Zotsatsa';

  @override
  String get paywallFeature4Desc => 'Ziro zotsatsa';

  @override
  String get paywallGetAccess => 'Pezani Moyo Wonse - \$1.00';

  @override
  String get restorePurchases => 'Bwezerani Zogula';

  @override
  String get zakatCalculator => 'Zakat Calculator';

  @override
  String get zakatGold => 'Golide (Altın)';

  @override
  String get zakatSilver => 'Siliva (Gümüş)';

  @override
  String get zakatCashBank => 'Ndalama / Bank';

  @override
  String get zakatBusiness => 'Bizinesi';

  @override
  String get zakatInvestments => 'Investments';

  @override
  String get zakatWeightGrams => 'Kulemera (g)';

  @override
  String get zakatPricePerGram => 'Mtengo/g';

  @override
  String get zakatTotalAmount => 'Kuchuluka kwake pamodzi';

  @override
  String get zakatInventoryValue => 'Inventory Value';

  @override
  String get zakatDebts => 'Ngongole';

  @override
  String get zakatTotal => 'Zonse';

  @override
  String get calculateZakat => 'Werengani Zakat';

  @override
  String get nisabNotReached => 'Nisab sanafikidwe. Zakat sichokakamizika.';

  @override
  String get totalZakat => 'Total Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Katundu: $assets';
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
      'Assalam Alaikum! Ndine wothandizira wanu wachisilamu. Ndifunseni za pemphero, kusala, zakat, kapena mutu uliwonse wachisilamu.';

  @override
  String get chatbotLimitReached =>
      'Zofikira tsiku lililonse zafikira. Sinthani kukhala Premium zopanda malire.';

  @override
  String get chatbotErrorMsg => 'Sindinathe kuyankha. Chonde yesaninso.';

  @override
  String get chatbotOfflinePrompt =>
      'Chidziwitso chachisilamu chotsimikizika pa intaneti chomwe chimatsimikiziridwa chikusungidwabe. Mutha kuloleza kubweza kwapaintaneti tsopano, koma zizingowonetsa mauthenga otetezeka ochepa mpaka dataset yopezeka itakonzeka.\n\nKodi mungakonde kuyatsa kubweza kopanda intaneti?';

  @override
  String get chatbotOfflineSwitched =>
      'Kubweza kopanda intaneti ndikoyatsa. Mayankho otsimikizika achisilamu akumaloko sanakonzekerebe.';

  @override
  String get chatbotOfflineDownloadLabel => 'Yambitsani Offline Fallback';

  @override
  String get downloadPreparing => 'Kukonzekera kutsitsa...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Kutsitsa surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Sura zonse zidatsitsidwa kale za wowerenga uyu.';

  @override
  String get offlineQuranAudioPacks => 'Offline Quran Audio Packs';

  @override
  String storedOnDeviceMb(String size) {
    return 'Zasungidwa pachida: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total ma surah adatsitsidwa';
  }

  @override
  String get redownloadMissingRepair => 'Kukonza / Kutsitsa Kukusowa';

  @override
  String get downloadAction => 'Tsitsani';

  @override
  String get resumeDownload => 'Yambitsaninso Kutsitsa';

  @override
  String get deleteDownloadedFiles => 'Chotsani Mafayilo Otsitsa';

  @override
  String get downloadCancelling => 'Ikuletsa...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Kutsitsa kwalephereka kwa $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Kutsitsa kwatha kwa $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Kutsitsa kwatha kwa $reciter ndi $failed ma surah omwe sanatheke ($downloaded/$total adatsitsidwa).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Fayilo ya $reciter yachotsedwa.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Mawu otsimikizika a Quran sakupezeka pakali pano.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Paketi yotsimikizika ya Korani yotsimikizika ndi yosakwanira ($available/$total). Tsitsaninso mbewu zamtambo ndikuyesanso.';
  }

  @override
  String get chatbotHint => 'Funsani funso...';

  @override
  String get chatbotThinking => 'Kuganiza...';

  @override
  String get sukunMixerSubtitle => 'Chilengedwe & Chosakaniza cha Qur\'an';

  @override
  String get audioPlayFailed => 'Kusewerera mawu kwalephera';

  @override
  String get sukunNatureLabel => 'Sukun (Chilengedwe)';

  @override
  String get sukunRainOfMercy => 'Mvula ya Chifundo';

  @override
  String get sukunGardenOfPeace => 'Munda Wamtendere';

  @override
  String get sukunMidnightCalm => 'Pakati pa Usiku bata';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Zojambulajambula sizikupezeka';

  @override
  String get sukunUnavailableBody =>
      'Kumanga kumeneku sikukuphatikizanso zinthu zomveka za Sukun pano.';

  @override
  String get prayerCompletion => 'Kumaliza Pemphero';

  @override
  String get streaks => 'Mipata';

  @override
  String get dayStreak => 'Mzere wa tsiku';

  @override
  String get bestStreak => 'Kupambana Kwambiri';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'Gwiritsani ntchito Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Yambitsani Offline Fallback';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count atsala';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API sinakonzedwe. Chitsogozo chachisilamu chotsimikizika pa intaneti sichinapezekebe.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Maupangiri otsimikizika achisilamu akumaloko sakupezeka pano. Sinthani ku Cloud AI kuti mupeze mayankho opezeka.';

  @override
  String get mosques => 'Misikiti';

  @override
  String get halalFood => 'Chakudya cha Halal';

  @override
  String get placesSearchArea => 'Sakani m\'derali';

  @override
  String get nearbyMosques => 'Misikiti Yapafupi';

  @override
  String get islamicSchools => 'Sukulu za Chisilamu';

  @override
  String placesFoundCount(String count) {
    return '$count zapezeka';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance makilomita';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Vuto la API: $statusCode';
  }

  @override
  String get placesNetworkError => 'Zolakwika pa netiweki. Chonde yesaninso.';

  @override
  String get placesLocationRequiredTitle => 'Malo ofunikira';

  @override
  String get placesLocationRequiredBody =>
      'Khazikitsani malo kaye kuti mizikiti yapafupi, chakudya cha halal, ndi masukulu achisilamu azifufuzidwa molondola.';

  @override
  String get placesMapTilesUnavailableTitle => 'Matailosi amapu sakupezeka';

  @override
  String get placesMapTilesUnavailableBody =>
      'Malo otsimikizika a matailosi amapu sanakhazikitsidwebe kuti apangidwe pano. Malo apafupi atha kutsegulabe kuchokera komwe mwasungidwa.';

  @override
  String get placesDataSourceUnavailableTitle => 'Deta yamalo palibe';

  @override
  String get placesDataSourceUnavailableBody =>
      'Malo otsimikizika omaliza sanakhazikitsidwe kuti apangidwe pano. Khazikitsani PLACES_OVERPASS_API_URL kukhala wovomerezeka kapena wopereka chithandizo musanayatse kusaka pafupi.';

  @override
  String get unknownPlaceName => 'Dzina Losadziwika';

  @override
  String get islamicPlaceFallback => 'Malo achisilamu';

  @override
  String get asmaMeaning1 => 'Wopindula';

  @override
  String get asmaMeaning2 => 'Wachifundo';

  @override
  String get asmaMeaning3 => 'Mfumu / Ambuye Wamuyaya';

  @override
  String get asmaMeaning4 => 'Opatulikitsa';

  @override
  String get asmaMeaning5 => 'Magwero a Mtendere';

  @override
  String get asmaMeaning6 => 'Wopereka Chitetezo';

  @override
  String get asmaMeaning7 =>
      'The Watchful Guardian, who observes and safeguards all creation.';

  @override
  String get asmaMeaning8 => 'Wamtengo wapatali / Wamphamvu Kwambiri';

  @override
  String get asmaMeaning9 => 'Wokakamiza';

  @override
  String get asmaMeaning10 => 'Chachikulu Kwambiri';

  @override
  String get asmaMeaning11 => 'Mlengi';

  @override
  String get asmaMeaning12 => 'Wopanga Dongosolo';

  @override
  String get asmaMeaning13 => 'Wojambula Wokongola';

  @override
  String get asmaMeaning14 => 'Wokhululuka';

  @override
  String get asmaMeaning15 => 'Wogonjera';

  @override
  String get asmaMeaning16 => 'Wopereka Zonse';

  @override
  String get asmaMeaning17 => 'Wothandizira';

  @override
  String get asmaMeaning18 => 'Chotsegulira';

  @override
  String get asmaMeaning19 => 'Wodziwa Zonse';

  @override
  String get asmaMeaning20 =>
      'The Withholder, who narrows and restrains by wisdom.';

  @override
  String get asmaMeaning21 => 'Wopulumutsa';

  @override
  String get asmaMeaning22 => 'Abaser';

  @override
  String get asmaMeaning23 => 'Wokweza';

  @override
  String get asmaMeaning24 => 'Wopereka Ulemu';

  @override
  String get asmaMeaning25 => 'Wonyozeka';

  @override
  String get asmaMeaning26 => 'Wakumva Zonse';

  @override
  String get asmaMeaning27 => 'Wowona Zonse';

  @override
  String get asmaMeaning28 => 'Woweruza';

  @override
  String get asmaMeaning29 => 'Olungama';

  @override
  String get asmaMeaning30 => 'Wochenjera';

  @override
  String get asmaMeaning31 => 'Onse Akudziwa';

  @override
  String get asmaMeaning32 => 'Wotsogolera';

  @override
  String get asmaMeaning33 => 'The Magnificent';

  @override
  String get asmaMeaning34 => 'Wokhululukira Wamkulu';

  @override
  String get asmaMeaning35 => 'Wopereka mphoto Yachiyamiko';

  @override
  String get asmaMeaning36 => 'Chapamwamba';

  @override
  String get asmaMeaning37 => 'Chachikulu Kwambiri';

  @override
  String get asmaMeaning38 => 'Wosungira';

  @override
  String get asmaMeaning39 => 'Wopatsa';

  @override
  String get asmaMeaning40 => 'Wowerengera';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'Wowolowa manja';

  @override
  String get asmaMeaning43 => 'Woyang\'anira';

  @override
  String get asmaMeaning44 => 'Kuyankha Pemphero';

  @override
  String get asmaMeaning45 => 'Kumvetsetsa Zonse';

  @override
  String get asmaMeaning46 => 'Wanzeru Kwambiri';

  @override
  String get asmaMeaning47 => 'Wokondedwa';

  @override
  String get asmaMeaning48 => 'Wolemekezeka Kwambiri';

  @override
  String get asmaMeaning49 => 'Woukitsa';

  @override
  String get asmaMeaning50 => 'Mboni';

  @override
  String get asmaMeaning51 => 'Choonadi';

  @override
  String get asmaMeaning52 => 'Trasti Wokwanira Zonse';

  @override
  String get asmaMeaning53 => 'Mwini Mphamvu Zonse';

  @override
  String get asmaMeaning54 => 'Wamphamvu';

  @override
  String get asmaMeaning55 => 'Mtetezi';

  @override
  String get asmaMeaning56 => 'Oyamika';

  @override
  String get asmaMeaning57 => 'Woyesa';

  @override
  String get asmaMeaning58 => 'Woyambitsa';

  @override
  String get asmaMeaning59 => 'Wobwezeretsa';

  @override
  String get asmaMeaning60 => 'Wopereka Moyo';

  @override
  String get asmaMeaning61 => 'Wotenga Moyo';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'Wodzisamalira Wekha';

  @override
  String get asmaMeaning64 => 'Wopeza';

  @override
  String get asmaMeaning65 => 'Wolemekezeka';

  @override
  String get asmaMeaning66 => 'Mmodzi Yekhayo';

  @override
  String get asmaMeaning67 => 'Mmodziyo';

  @override
  String get asmaMeaning68 => 'Yofunidwa Ndi Onse';

  @override
  String get asmaMeaning69 => 'Wamphamvu';

  @override
  String get asmaMeaning70 => 'Mlengi wa mphamvu zonse';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'Wochedwa';

  @override
  String get asmaMeaning73 => 'Choyamba';

  @override
  String get asmaMeaning74 => 'Otsiriza';

  @override
  String get asmaMeaning75 => 'Chiwonetsero';

  @override
  String get asmaMeaning76 => 'Zobisika';

  @override
  String get asmaMeaning77 => 'Bwanamkubwa';

  @override
  String get asmaMeaning78 => 'Wam\'mwambamwamba';

  @override
  String get asmaMeaning79 => 'Wochita Zabwino';

  @override
  String get asmaMeaning80 => 'Buku la Kulapa';

  @override
  String get asmaMeaning81 => 'Wobwezera';

  @override
  String get asmaMeaning82 => 'Wokhululuka';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'Mwini / Wolamulira wa Zonse';

  @override
  String get asmaMeaning85 => 'Mwini Ukulu ndi Ubwino';

  @override
  String get asmaMeaning86 => 'Wofanana';

  @override
  String get asmaMeaning87 => 'Wosonkhanitsa';

  @override
  String get asmaMeaning88 => 'Wolemera';

  @override
  String get asmaMeaning89 => 'Wolemeretsa';

  @override
  String get asmaMeaning90 => 'Woteteza Zowopsa';

  @override
  String get asmaMeaning91 => 'Wobweretsa Zowopsa';

  @override
  String get asmaMeaning92 => 'Wopereka Zopindulitsa';

  @override
  String get asmaMeaning93 => 'Kuwala';

  @override
  String get asmaMeaning94 => 'Wotsogolera';

  @override
  String get asmaMeaning95 => 'Woyambitsa';

  @override
  String get asmaMeaning96 => 'Wosatha';

  @override
  String get asmaMeaning97 => 'Wolowa';

  @override
  String get asmaMeaning98 => 'Kalozera Wachilungamo';

  @override
  String get asmaMeaning99 => 'Wodwala';
}
