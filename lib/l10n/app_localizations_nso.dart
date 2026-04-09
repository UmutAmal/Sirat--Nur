// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Pedi Northern Sotho Sepedi (`nso`).
class AppLocalizationsNso extends AppLocalizations {
  AppLocalizationsNso([String locale = 'nso']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Islamic Way of Light';

  @override
  String get home => 'Gae';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla ya Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Tšhupamabaka';

  @override
  String get settings => 'Dipeakanyo';

  @override
  String get nextPrayer => 'Thapelo e Latelago';

  @override
  String get prayerTimes => 'Dinako tša Thapelo';

  @override
  String get continueReading => 'Tswela pele go Bala';

  @override
  String get getLifetimePro => 'Hwetša Pro ya Bophelo ka Moka';

  @override
  String get unlockTajweed =>
      'Notlolla Tajweed & Dikarolo tše di Tšwetšego Pele';

  @override
  String get prayerCalculation => 'Palo ya Thapelo';

  @override
  String get method => 'Mokgwa wa go Bala';

  @override
  String get madhab => 'Asr Mokgwa wa Molao';

  @override
  String get surahs => 'Di- Surah tša go swana le';

  @override
  String get ayahs => 'Di-Ayah';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Go hlaba ga letšatši';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Maghrib wa naga';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Nako ya $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Ke nako ya go rapela $prayerName.';
  }

  @override
  String get dataStorage => 'Datha & Polokelo';

  @override
  String get clearCache => 'Hlakola Cache';

  @override
  String get cacheClearedSuccess => 'Cache hlakola ka katleho';

  @override
  String get location => 'Lefelo';

  @override
  String get language => 'Polelo';

  @override
  String get selectLanguage => 'Kgetha Polelo';

  @override
  String get searchLanguage => 'Batla maleme a 180+...';

  @override
  String get systemDefault => 'Tshepedišo ya Tlwaelo';

  @override
  String get currentLocation => 'Lefelo la Bjale (GPS) .';

  @override
  String get locationServiceDisabled => 'Tirelo ya lefelo e šitišitšwe.';

  @override
  String get locationPermissionDenied => 'Tumelelo ya lefelo e gannwe.';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => 'Nyaka';

  @override
  String get searchHint => 'Batla...';

  @override
  String get noResults => 'Ga go na dipoelo tše di hweditšwego';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Phošo';

  @override
  String get appErrorOccurred => 'Go ile gwa direga phošo';

  @override
  String get appUnknownError => 'Phošo yeo e sa tsebjego';

  @override
  String get retry => 'Leka gape';

  @override
  String get refreshAction => 'Refresh';

  @override
  String get cancel => 'Khansela';

  @override
  String get save => 'Boloka';

  @override
  String get delete => 'Phimola';

  @override
  String get edit => 'Edita';

  @override
  String get close => 'Tswala';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Ee';

  @override
  String get no => 'Aowa';

  @override
  String get surah => 'Surah ya';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Juse';

  @override
  String get page => 'Page';

  @override
  String get reading => 'Go bala';

  @override
  String get recitation => 'Polelo ya go bolela';

  @override
  String get translation => 'Phetolelo';

  @override
  String get tafsir => 'Tafsir e ile ya re';

  @override
  String get tafsirLoading => 'Loading tafsir...';

  @override
  String get tafsirSourceLabel => 'Tafsir source';

  @override
  String get tafsirNoSurahFound => 'No tafsir found for this surah.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'No tafsir found for ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir could not be loaded.';

  @override
  String get tafsirNoTextForAyah => 'No tafsir text for this ayah.';

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
    return 'Tafsir source returned an HTTP $statusCode error.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'The selected tafsir source returned no entries.';

  @override
  String get bookmarks => 'Dipuku tša go swaya';

  @override
  String get addBookmark => 'Oketša Letshwao la Puku';

  @override
  String get removeBookmark => 'Tloša Letshwao la Puku';

  @override
  String get lastRead => 'Bala La Mafelelo';

  @override
  String get dailyZikr => 'Zikr ya letšatši le letšatši';

  @override
  String get duaMeaning1 =>
      'ba bangwe ba rapela, ‘Morena wa rena, re fe tše botse lefaseng le le ka morago ga lehu, gomme o re šireletše tlhokofatšong ya Mollo.’';

  @override
  String get duaMeaning2 =>
      'Modimo ga a imele moya ofe goba ofe ka tše di fetago tšeo o ka di rwalago: yo mongwe le yo mongwe o hwetša botse le ge e le bofe bjo bo bo dirilego, gomme o tlaišwa ke bobe bja bjona- ‘ Morena, o se ke wa re tšea mošomong ge re lebala goba re dira diphošo. Morena, o se ke wa re imetša bjalo ka ge o ile wa imetša bao ba lego pele ga rena. Morena, o se ke wa re imetša ka go feta kamoo re nago le matla a go rwala. Re swarele, re swarele, o re gaugele. O Mošireletši wa rena, ka gona re thuše kgahlanong le bao ba sa dumelego.’';

  @override
  String get duaMeaning3 =>
      '‘Morena wa rena, o se ke wa dumelela dipelo tša rena di fapoga ka morago ga ge O re hlahlile. Re fe kgaugelo ya Gago: O Mofa ka mehla.';

  @override
  String get duaMeaning4 =>
      'Morena, anke nna le bana ba ka re tšwele pele ka thapelo. Morena wa rena, amogela kgopelo ya ka.';

  @override
  String get duaMeaning5 =>
      'gomme o theošetše lephego la gago ka boikokobetšo go bona ka botho gomme o re, ‘Morena, ba gaugele, go no swana le ge ba be ba ntlhokomela ge ke be ke sa le yo monnyane.’';

  @override
  String get duaMeaning6 =>
      'a godišwe Modimo, yo a laolago e le ka kgonthe. [Moporofeta], o se ke wa kitimela go bolela pele kutollo e felela ka mo go feletšego eupša o re, ‘Morena, nkgoketša tsebo!’';

  @override
  String get duaMeaning7 =>
      'E re [Moporofeta], ‘Morena, tshwarela o gaugele: O mogau go feta bohle.’';

  @override
  String get duaMeaning8 =>
      'bao ba rapelago ba re, ‘Morena wa rena, re thabele balekane ba rena le bana. Re dire mehlala ye mebotse go bao ba go lemogago’.';

  @override
  String get morningZikr => 'Mesong Zikr';

  @override
  String get eveningZikr => 'Mantšiboa Zikr';

  @override
  String get tasbih => 'Tasbih ya go swana';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masa\'il ya ba';

  @override
  String get hadith => 'Hadith ya go swana le yona';

  @override
  String get hadithCollection => 'Kgoboketšo ya Hadith';

  @override
  String get hadithBooks => 'Dipuku tša Hadith';

  @override
  String get searchHadith => 'Batla Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna, ba bangwe';

  @override
  String get namesOfAllah => 'Maina a Allah';

  @override
  String get liveTv => 'TV e phelang';

  @override
  String get watchLive => 'Lebelela Live';

  @override
  String get streamError => 'Phošo ya moela';

  @override
  String get reload => 'Laetša gape';

  @override
  String get openInYoutube => 'Bula ka YouTube';

  @override
  String get ibadahTracker => 'Molatedi wa Ibadah';

  @override
  String get fasting => 'Go ikona dijo';

  @override
  String get quranReading => 'Go Bala Quran';

  @override
  String get prayers => 'Dithapelo';

  @override
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '${hours}h ${minutes}m';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '${minutes}m';
  }

  @override
  String get prayerRemainingUnavailable => '-- .';

  @override
  String get dhikrCount => 'Dhikr Bala';

  @override
  String get weeklyProgress => 'Kgatelopele ya Beke le Beke';

  @override
  String get monthlyProgress => 'Kgatelopele ya Kgwedi le Kgwedi';

  @override
  String get statistics => 'Dipalopalo';

  @override
  String get hijriCalendar => 'Tšhupamabaka ya Hijri';

  @override
  String get gregorianCalendar => 'Tšhupamabaka ya Gregorian';

  @override
  String get today => 'Lehono';

  @override
  String get tomorrow => 'Gosasa';

  @override
  String get yesterday => 'Maabane';

  @override
  String get specialDays => 'Matšatši a Kgethegilego';

  @override
  String get ramadan => 'Ramadan ya Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha ya go swana le yona';

  @override
  String get islamicNewYear => 'Ngwaga o Mofsa wa Boiselamo';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadan ka la 1';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadan ka la 27';

  @override
  String get specialDayDateEidAlFitr => '1 Shawwal';

  @override
  String get specialDayDateEidAlAdha => '10 Dhul Hijjah ya go swana le yona';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharram ka 1. Moharram';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabi al-Awwal o ile a hlokomela';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr, o ile a hlokomela';

  @override
  String get qiblaDirection => 'Tlhahlo ya Qibla';

  @override
  String get compass => 'Khamphase ya';

  @override
  String get degrees => 'likhato';

  @override
  String get north => 'Leboa';

  @override
  String get qiblaFound => 'Qibla e hweditšwe!';

  @override
  String get turnDevice => 'Retolla sesebediswa sa hao ho tobana le Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Compass error: $error';
  }

  @override
  String get notifications => 'Ditsebišo';

  @override
  String get prayerNotifications => 'Ditsebišo tša Thapelo';

  @override
  String get enableNotifications => 'Kgontšha Ditsebišo';

  @override
  String get notificationTime => 'Nako ya Tsebišo';

  @override
  String get beforePrayer => 'metsotso pele ga thapelo';

  @override
  String get theme => 'Sehlogo sa ditaba';

  @override
  String get lightMode => 'Mokgwa wa Seetša';

  @override
  String get darkMode => 'Mokgwa wa Lefifi';

  @override
  String get systemTheme => 'Sehlogo sa Tshepedišo';

  @override
  String get about => 'Mabapi le';

  @override
  String get version => 'Phetolelo';

  @override
  String get privacyPolicy => 'Pholisi ya Sephiri';

  @override
  String get termsOfService => 'Melawana ya Tirelo';

  @override
  String get contactUs => 'Ikgokaganye le Rena';

  @override
  String get rateApp => 'Sekhahla App';

  @override
  String get shareApp => 'Share App';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'Di-download';

  @override
  String get downloading => 'Go taonelouta...';

  @override
  String get downloadComplete => 'Download Feletseng';

  @override
  String get downloadFailed => 'Download e paletšwe';

  @override
  String get offlineMode => 'Mokgwa wa ka ntle ga Inthanete';

  @override
  String get noInternet => 'Ga go na Kgokagano ya Inthanete';

  @override
  String get checkConnection => 'Hle hlahloba kgokagano ya gago';

  @override
  String get premium => 'Premium';

  @override
  String get upgradeToPro => 'Ntlafatsa go Pro';

  @override
  String get proFeatures => 'Dikarolo tša Pro';

  @override
  String get removeAds => 'Tloša Dipapatšo';

  @override
  String get unlockAll => 'Notlolla Diteng ka Moka';

  @override
  String get exclusiveContent => 'Diteng tše di Kgethegilego';

  @override
  String get welcome => 'Re a amogetšwe';

  @override
  String get getStarted => 'Thoma';

  @override
  String get skip => 'Tlola';

  @override
  String get next => 'Se se latelago';

  @override
  String get done => 'E dirilwe';

  @override
  String get onboarding1Title => 'Re a go amogela mo Sirat-ı Nur';

  @override
  String get onboarding1Desc =>
      'Tiriso ya gago ya molekane wa Boiselamo ka botlalo bakeng sa dinako tša thapelo, Quran, le tše dingwe';

  @override
  String get onboarding2Title => 'Dinako tša Thapelo';

  @override
  String get onboarding2Desc =>
      'Dinako tše di nepagetšego tša thapelo go ya ka lefelo la gago';

  @override
  String get onboarding3Title => 'Quran & Tse dingwe';

  @override
  String get onboarding3Desc =>
      'Bala Quran, latela go bala ga gago, gomme o hlahlobje diteng tša Boiselamo';

  @override
  String get dhikrLibrary => 'Bokgobapuku bja Dhikr';

  @override
  String get resetCounter => 'Seta gape Sebadi';

  @override
  String get changeTarget => 'Fetoša Sepheo';

  @override
  String get newTarget => 'Sepheo se Secha';

  @override
  String targetCount(Object target) {
    return 'Sepheo: $target .';
  }

  @override
  String get tapToCount => 'Tlanya go bala';

  @override
  String get zikrCompletedMashAllah => 'E phethilwe! MashAllah ke yena';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah o ka godimo kudu ga go se phethagale mo gongwe le mo gongwe.';

  @override
  String get zikrMeaningAlhamdulillah => 'Theto yohle ke ya Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah ke yo Mogolo.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Ga go na modimo ge e se Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Ke nyaka tshwarelo ya Allah.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Ga go na maatla le maatla ntle le ka Allah.';

  @override
  String get dailyChecklist => 'Lenaneo la go Hlahloba la Letšatši le Letšatši';

  @override
  String get qazaDebt => 'Qaza (Sekoloto) .';

  @override
  String get resetQazaData => 'Seta gape Datha ya Qaza';

  @override
  String get resetQazaDebtQuestion => 'Seta gape Sekoloto sa Qaza?';

  @override
  String get rawatib => 'Rawatib';

  @override
  String get tahajjud => 'Tahajjud wa go swana le yena';

  @override
  String get dailyProgress => 'Kgatelopele ya Letšatši le Letšatši';

  @override
  String get mandatoryPrayers => 'Dithapelo tše di Kgapeletšago';

  @override
  String get sunnahAndOthers => 'Sunnah & Ba bangwe';

  @override
  String get spiritualGrowth => 'Kgolo ya Moya';

  @override
  String get mandatoryDuty => 'Mošomo wa Kgapeletšo';

  @override
  String get totalPrayers => 'Palomoka ya Dithapelo';

  @override
  String get prayerDebt => 'Sekoloto sa Thapelo';

  @override
  String get fastingDebt => 'Sekoloto sa go ikona dijo';

  @override
  String get reset => 'Seta gape';

  @override
  String get days => 'Matšatši';

  @override
  String get premiumIntegrity => 'Botshepegi bja Premium';

  @override
  String get recheckPremium => 'Lekola Boemo bja Premium gape';

  @override
  String get syncStore =>
      'Nyalantšha le lebenkele go tiišetša tshwanelo ya gago.';

  @override
  String get checkingPremium => 'Go hlahloba maemo a premium...';

  @override
  String get premiumVerified => 'Premium e netefaditšwe.';

  @override
  String get premiumNotFound => 'Premium ga se ya hwetšwa.';

  @override
  String premiumRefreshError(Object error) {
    return 'Ga se ya kgona go hlabolla maemo a premium: $error';
  }

  @override
  String get offlineDownloadManager => 'Offline Download Manager';

  @override
  String get manageDatasets =>
      'Laola massive offline mamelwang & dataset diphuthelwana.';

  @override
  String get freeStorage => 'Free ho fihlela ka hare sesebediswa polokelo.';

  @override
  String get quranIntegrity => 'Botshepegi bja Quran';

  @override
  String get checkQuranDb => 'Hlahloba Database ya Quran';

  @override
  String get verifyQuranContent =>
      'Netefatša di- surah tše 114 le di-ayah tše 6236.';

  @override
  String get checkingQuranDb =>
      'Go hlahloba polokelo ya tshedimošo ya Quran...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Ga se ya felela';

  @override
  String get notSeeded => 'Ga se ya bjalwa';

  @override
  String get quranDbStatus => 'Boemo bja Database ya Quran';

  @override
  String statusLabel(Object status) {
    return 'Boemo: $status.';
  }

  @override
  String surahsCount(Object count) {
    return 'Surahs: $count (go letetšwe 114) .';
  }

  @override
  String ayahsCount(Object count) {
    return 'Ayahs: $count (go letetšwe 6236) .';
  }

  @override
  String missingArabic(Object count) {
    return 'Searabia se se hlaelelago: $count';
  }

  @override
  String missingEnglish(Object count) {
    return 'Seisemane se hlaeletseng: $count';
  }

  @override
  String missingTurkish(Object count) {
    return 'Seturkey se se timetšego: $count .';
  }

  @override
  String dbVersion(Object version) {
    return 'DB Version: $version';
  }

  @override
  String dbPath(Object path) {
    return 'Tsela: $path .';
  }

  @override
  String quranCheckFailed(Object error) {
    return 'Tlhahlobo ya Quran e paletšwe: $error';
  }

  @override
  String get audioVoice => 'Lentšu la Mamelwang';

  @override
  String get fajrAngle => 'Khutlo ya Fajr';

  @override
  String get ishaAngle => 'Isha Khutlo';

  @override
  String get qiblaCalibration => 'Go Lekanya ga Qibla';

  @override
  String get compassSmoothing => 'Go Boreletša Khamphase';

  @override
  String get reduceSensorJitter =>
      'Fokotša kutlo jitter bakeng sa nale e tsitsitseng.';

  @override
  String get calibrationOffset => 'Offset ya go lekanya';

  @override
  String currentOffset(Object offset) {
    return 'Bjale: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Beakanya ge e ba khamphase ya gago e nyaka phošollo ya seatla. Ditekanyetšo tše dibotse di dikologa ka go lebana le tšhupamabaka.';

  @override
  String get apply => 'Dira kgopelo';

  @override
  String get resetOnboarding => 'Seta gape go Tsenya ka Sekepeng';

  @override
  String get rerunSetup => 'Matha gape tshepedišo ya mathomo ya go hloma.';

  @override
  String get diagnostics => 'Diteko tša go hlahloba bolwetši';

  @override
  String get diagnosticsNotSet => 'Ga se ya bewa';

  @override
  String get diagnosticsPrayerProfile => 'Profaele ya Thapelo';

  @override
  String get diagnosticsPrayerSource => 'Bolaodi bja Thapelo';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Dikhutlo tša tlwaelo tša seatla (ga go na mohlodi wa setheo) .';

  @override
  String get diagnosticsCloudDriven => 'Leru le Kgannwago';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Matlotlo a Modumo';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Matlotlo a Mamelwang a Quran';

  @override
  String get diagnosticsAudioAssets => 'Matlotlo a Modumo';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count files';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifest read failed: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Mafelo a go Beakanya Selegae';

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
  String get healthCheckDesc =>
      'Matha ditlhahlobo tša maphelo gomme o lebelele maemo a tshepedišo.';

  @override
  String get qiblaAligned => 'Qibla e lokeleditšwe';

  @override
  String get rotateToFindQibla => 'Dikološa go Hwetša Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Go nyakega ga go lekanya. Dikološa sesebediswa ka setšoantšo-8.';

  @override
  String get dailyVerse => 'Temana ya Letšatši le Letšatši';

  @override
  String get todaysIbadah => 'Ibadah ya lehono';

  @override
  String get quickAccess => 'Phihlelelo ya Kapejana';

  @override
  String get assistant => 'Mothuši';

  @override
  String get places => 'Mafelo';

  @override
  String get library => 'Bokgobapuku';

  @override
  String get analytics => 'Ditshekatsheko';

  @override
  String get dailyDuas => 'Duas ya letšatši le letšatši';

  @override
  String essentialDuas(String count) {
    return '$count essential duas';
  }

  @override
  String get duaUnavailableTitle =>
      'Di-dua tše di netefaditšwego ga di hwetšagale ga bjale';

  @override
  String get duaUnavailableBody =>
      'Di-dua tša letšatši le letšatši tše di netefaditšwego ga se tša nyalantšhwa le sedirišwa se ga bjale. Ikgokaganye le mothopo wa leru go laetša di-duas tšeo di tšwago mothopo go e na le go boela morago mo go sa netefatšwago.';

  @override
  String get duaCategoryQuranic => 'Dua ya Quranic';

  @override
  String get duaCategoryMorningEvening => 'Mesong & Mantšiboa';

  @override
  String get duaCategoryTasbih => 'Tasbih ya go swana';

  @override
  String get duaCategoryProtection => 'Tšhireletšo';

  @override
  String get duaCategoryBeginning => 'Mathomo';

  @override
  String get duaCategorySleep => 'Robala';

  @override
  String get duaCategoryFoodDrink => 'Dijo & Dino';

  @override
  String get duaCategoryForgiveness => 'Tshwarelo';

  @override
  String get duaCategoryHome => 'Gae';

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
  String get islamicEducation => 'Thuto ya Boiselamo';

  @override
  String get sukunAudioTitle => 'Sukun Diponagalo tša Medumo';

  @override
  String get hadithCollections => 'Dikgoboketšo tša Hadith';

  @override
  String get hadithSourcePending => 'Mohlodi o netefaditšwego o sa emetše';

  @override
  String get hadithUnavailableTitle =>
      'Dikgoboketšo tša hadith tše di netefaditšwego ga se tša hwetšagala ga bjale';

  @override
  String get hadithUnavailableBody =>
      'Go aga mo go sa ithekgile ka phepo ya hadith ya ka ntle yeo e sa netefatšwago. Go phetla Hadith go dula go šitišitšwe go fihlela sete ya data yeo e hweditšwego e nyalantšhwa.';

  @override
  String get paywallUnlockAll =>
      'Notlolla dikarolo ka moka tša leeto la gago la semoya';

  @override
  String get premiumProductUnavailable =>
      'Premium product is not available right now. Please try again later.';

  @override
  String get premiumPurchaseFailed =>
      'Purchase could not be completed. Please try again.';

  @override
  String get paywallFeature1Title => 'Mothuši wa Neural Plus';

  @override
  String get paywallFeature1Desc =>
      'Q&A ye e sa lekanyetšwego yeo e šomišago AI';

  @override
  String get paywallFeature2Title => 'E sa lekanyetšwego Offline';

  @override
  String get paywallFeature2Desc => 'Download dipolelo ka moka';

  @override
  String get paywallFeature3Title => 'Meralo e Kgethegilego';

  @override
  String get paywallFeature3Desc => 'Dihlooho tsa Premium & difonte';

  @override
  String get paywallFeature4Title => 'Ad-Free';

  @override
  String get paywallFeature4Desc => 'Dipapatšo tša lefela';

  @override
  String get paywallGetAccess =>
      'Hwetša Phihlelelo ya Bophelo ka Moka — \$1.00';

  @override
  String get restorePurchases => 'Tsošološa Ditheko';

  @override
  String get zakatCalculator => 'Sebaleledi sa Zakat';

  @override
  String get zakatGold => 'Gauta (Altın) .';

  @override
  String get zakatSilver => 'Silifera (Gümüş) .';

  @override
  String get zakatCashBank => 'Tšhelete / Panka';

  @override
  String get zakatBusiness => 'Kgwebo';

  @override
  String get zakatInvestments => 'Dipeeletšo';

  @override
  String get zakatWeightGrams => 'Boima (g) .';

  @override
  String get zakatPricePerGram => 'Theko/g';

  @override
  String get zakatTotalAmount => 'Palomoka ya Tšhelete';

  @override
  String get zakatInventoryValue => 'Boleng bja Inventory';

  @override
  String get zakatDebts => 'Dikoloto';

  @override
  String get zakatTotal => 'Palomoka';

  @override
  String get calculateZakat => 'Bala Zakat';

  @override
  String get nisabNotReached =>
      'Nisab ga se a fihlelelwa. Zakat ga se ya tlamo.';

  @override
  String get totalZakat => 'Palomoka ya Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakat ya Gauta';

  @override
  String get zakatSilverZakat => 'Zakat ya Silifera';

  @override
  String get zakatCashZakat => 'Zakat ya tšhelete';

  @override
  String get zakatBusinessZakat => 'Zakat ya Kgwebo';

  @override
  String get zakatInvestmentZakat => 'Zakat ya Peeletšo';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Moedi wa dipotšišo tša letšatši le letšatši o fihleletšwe. Ntlafatsa go Premium bakeng sa e sa lekanyetsoang.';

  @override
  String get chatbotErrorMsg =>
      'Ke be ke sa kgone go tšweletša karabelo. Hle leka gape.';

  @override
  String get chatbotOfflinePrompt =>
      'The verified offline Islamic knowledge base is still being curated. You can enable offline fallback now, but it will only show limited safe messages until the sourced dataset is ready.\n\nWould you like to enable offline fallback?';

  @override
  String get chatbotOfflineSwitched =>
      'Offline fallback enabled. Verified local Islamic answers are not ready yet.';

  @override
  String get chatbotOfflineDownloadLabel =>
      'Kgontšha Fallback ya ka ntle ga inthanete';

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
  String get sukunMixerSubtitle => 'Tlhago & Motswako wa Qur\'an';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (Tlhago) .';

  @override
  String get sukunRainOfMercy => 'Pula ya Mohau';

  @override
  String get sukunGardenOfPeace => 'Serapa sa Khutšo';

  @override
  String get sukunMidnightCalm => 'Bošegogare Bo Khutšo';

  @override
  String get sukunOceanTawheed => 'Tawheed ya Lewatle';

  @override
  String get sukunUnavailableTitle => 'Diponagalo tša medumo ga di hwetšagale';

  @override
  String get sukunUnavailableBody =>
      'Kago ye ga e akaretše dithoto tše di nyakegago tša sebopego sa modumo sa Sukun go fihla ga bjale.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Letšatši streak';

  @override
  String get bestStreak => 'Mothaladi o mobotse kudu';

  @override
  String get chatbotCloudAiLabel => 'AI ya leru';

  @override
  String get chatbotLocalAiLabel => 'Fallback ya ka ntle ga inthanete';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi =>
      'Kgontšha Fallback ya ka ntle ga inthanete';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API not configured. Please switch to Local AI.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Verified local Islamic guidance is not available yet. Switch to Cloud AI for sourced answers.';

  @override
  String get mosques => 'Dimoskete';

  @override
  String get halalFood => 'Dijo tša Halal';

  @override
  String get placesSearchArea => 'Nyaka lefelo le';

  @override
  String get nearbyMosques => 'Mamosleme a Kgauswi';

  @override
  String get islamicSchools => 'Dikolo tša Boiselamo';

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
  String get placesNetworkError => 'Phošo ya netweke. Hle leka gape.';

  @override
  String get placesLocationRequiredTitle => 'Location required';

  @override
  String get placesLocationRequiredBody =>
      'Set a location first so nearby mosques, halal food, and Islamic schools can be searched accurately.';

  @override
  String get placesMapTilesUnavailableTitle => 'Map tiles unavailable';

  @override
  String get placesMapTilesUnavailableBody =>
      'A verified map tile source is not configured for this build yet. Nearby places can still load from your saved location.';

  @override
  String get unknownPlaceName => 'Leina leo le sa Tsebjego';

  @override
  String get islamicPlaceFallback => 'Lefelo la Boiselamo';

  @override
  String get asmaMeaning1 => 'Motho yo a Holago';

  @override
  String get asmaMeaning2 => 'Mogau';

  @override
  String get asmaMeaning3 => 'Kgoši / Morena wa ka mo go sa felego';

  @override
  String get asmaMeaning4 => 'Mokgethwa Kudu';

  @override
  String get asmaMeaning5 => 'Mothopo wa Khutšo';

  @override
  String get asmaMeaning6 => 'Monei wa Tšhireletšo';

  @override
  String get asmaMeaning7 => 'Mohlokomedi wa ditaba';

  @override
  String get asmaMeaning8 => 'Ba Bohlokwa / Ba Matla Kudu';

  @override
  String get asmaMeaning9 => 'Mogapeletši';

  @override
  String get asmaMeaning10 => 'E Kgolo Kudu';

  @override
  String get asmaMeaning11 => 'Mmopi';

  @override
  String get asmaMeaning12 => 'Modiri wa Thulaganyo';

  @override
  String get asmaMeaning13 => 'Mobopi wa Botse';

  @override
  String get asmaMeaning14 => 'Ba Lebalelago';

  @override
  String get asmaMeaning15 => 'Mofetoledi';

  @override
  String get asmaMeaning16 => 'Monei wa Bohle';

  @override
  String get asmaMeaning17 => 'Motšweletši';

  @override
  String get asmaMeaning18 => 'Mobulela';

  @override
  String get asmaMeaning19 => 'Tseba ya Bohle';

  @override
  String get asmaMeaning20 => 'Mokgoboketši wa Dikgokagano';

  @override
  String get asmaMeaning21 => 'Mophološi';

  @override
  String get asmaMeaning22 => 'Mo-Abaser wa Baser';

  @override
  String get asmaMeaning23 => 'Mophagamiši';

  @override
  String get asmaMeaning24 => 'Moabi wa Tlhompho';

  @override
  String get asmaMeaning25 => 'Mohlokiši';

  @override
  String get asmaMeaning26 => 'Mokwi wa Bohle';

  @override
  String get asmaMeaning27 => 'Mmoni wa Bohle';

  @override
  String get asmaMeaning28 => 'Moahlodi';

  @override
  String get asmaMeaning29 => 'Ba Toka';

  @override
  String get asmaMeaning30 => 'Yo a sa lemogegego';

  @override
  String get asmaMeaning31 => 'The All Aware';

  @override
  String get asmaMeaning32 => 'Go Kgotlelela Bogologolo';

  @override
  String get asmaMeaning33 => 'Se se Kgahlišago';

  @override
  String get asmaMeaning34 => 'Molebaleledi yo Mogolo';

  @override
  String get asmaMeaning35 => 'Moputsi wa Tebogo';

  @override
  String get asmaMeaning36 => 'Ya Godimodimo';

  @override
  String get asmaMeaning37 => 'E Kgolo Kudu';

  @override
  String get asmaMeaning38 => 'Mošireletši wa Mošireletši';

  @override
  String get asmaMeaning39 => 'Mofepi wa Phepo';

  @override
  String get asmaMeaning40 => 'Mohlapetši wa Ditšhelete';

  @override
  String get asmaMeaning41 => 'Mohlomphegi';

  @override
  String get asmaMeaning42 => 'Ba ba Fago';

  @override
  String get asmaMeaning43 => 'Yo a Phakgamego';

  @override
  String get asmaMeaning44 => 'Mo arabelago Thapelo';

  @override
  String get asmaMeaning45 => 'Bao ba Kwešišago ka Moka';

  @override
  String get asmaMeaning46 => 'Ba Bohlale ka mo go Phethagetšego';

  @override
  String get asmaMeaning47 => 'Motho yo a nago le Lerato';

  @override
  String get asmaMeaning48 => 'Yo a Kgalago Kudu';

  @override
  String get asmaMeaning49 => 'Motsotsi wa Bahu';

  @override
  String get asmaMeaning50 => 'Hlatse';

  @override
  String get asmaMeaning51 => 'Therešo ya Nnete';

  @override
  String get asmaMeaning52 => 'Mohlokomedi yo a Lekanago ka Moka';

  @override
  String get asmaMeaning53 => 'Mong wa Matla ka Moka';

  @override
  String get asmaMeaning54 => 'Ba Matla';

  @override
  String get asmaMeaning55 => 'Mošireletši wa Mošireletši';

  @override
  String get asmaMeaning56 => 'Ba Rorišwago';

  @override
  String get asmaMeaning57 => 'Mohlahlobi';

  @override
  String get asmaMeaning58 => 'Mothomi wa Mothopo';

  @override
  String get asmaMeaning59 => 'Motsošološi';

  @override
  String get asmaMeaning60 => 'Monei wa Bophelo';

  @override
  String get asmaMeaning61 => 'Motšea Bophelo';

  @override
  String get asmaMeaning62 => 'Ba ba Phelago ka Mehla';

  @override
  String get asmaMeaning63 => 'Motšweletši yo a Itlhokomelago';

  @override
  String get asmaMeaning64 => 'Motho yo a Hwetšago';

  @override
  String get asmaMeaning65 => 'Ba Kgalago';

  @override
  String get asmaMeaning66 => 'Yo a nnoši';

  @override
  String get asmaMeaning67 => 'Yo A Yona';

  @override
  String get asmaMeaning68 => 'Yo A Nyakwago ke Bohle';

  @override
  String get asmaMeaning69 => 'Ba Matla';

  @override
  String get asmaMeaning70 => 'Mmopi wa maatla ka moka';

  @override
  String get asmaMeaning71 => 'Motho wa go Akgofiša';

  @override
  String get asmaMeaning72 => 'Modiragatši';

  @override
  String get asmaMeaning73 => 'Ya Pele';

  @override
  String get asmaMeaning74 => 'Ya Mafelelo';

  @override
  String get asmaMeaning75 => 'Se se Bonago';

  @override
  String get asmaMeaning76 => 'Se se Patilwego';

  @override
  String get asmaMeaning77 => 'Mmušiši wa gagwe';

  @override
  String get asmaMeaning78 => 'Yo a Phagamego';

  @override
  String get asmaMeaning79 => 'Modiri wa Botse';

  @override
  String get asmaMeaning80 => 'Tlhahlo ya go Sokologa';

  @override
  String get asmaMeaning81 => 'Mophetetši';

  @override
  String get asmaMeaning82 => 'Motshwareledi';

  @override
  String get asmaMeaning83 => 'Motho wa Clement';

  @override
  String get asmaMeaning84 => 'Mong / Mmuši wa Bohle';

  @override
  String get asmaMeaning85 => 'Mong wa Bogoši le Bounty';

  @override
  String get asmaMeaning86 => 'Yo a Lekanago';

  @override
  String get asmaMeaning87 => 'Mokgoboketši';

  @override
  String get asmaMeaning88 => 'Mohumi wa Mohumi';

  @override
  String get asmaMeaning89 => 'Mohumiši';

  @override
  String get asmaMeaning90 => 'Mothibela-Kotsi';

  @override
  String get asmaMeaning91 => 'Motho yo a Tlišago Kotsi';

  @override
  String get asmaMeaning92 => 'Moabi wa Mehola';

  @override
  String get asmaMeaning93 => 'Lesedi';

  @override
  String get asmaMeaning94 => 'Mohlahli wa Mohlahli';

  @override
  String get asmaMeaning95 => 'Mothomi wa Mothopo';

  @override
  String get asmaMeaning96 => 'Yo a sa Felego';

  @override
  String get asmaMeaning97 => 'Mojalefa';

  @override
  String get asmaMeaning98 => 'Tlhahlo e Lokilego Kudu';

  @override
  String get asmaMeaning99 => 'Ya Molwetši';
}
