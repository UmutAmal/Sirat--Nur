// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Icelandic (`is`).
class AppLocalizationsIs extends AppLocalizations {
  AppLocalizationsIs([String locale = 'is']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Íslamskur leið ljóssins';

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
  String get sunrise => 'Sólarupprás';

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
    return 'Tími fyrir $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Það er kominn tími til að biðja $prayerName.';
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
  String get systemDefault => 'Kerfi Sjálfgefið';

  @override
  String get currentLocation => 'Current Location (GPS)';

  @override
  String get locationServiceDisabled => 'Staðsetningarþjónusta er óvirk.';

  @override
  String get locationPermissionDenied => 'Staðsetningarheimild hafnað.';

  @override
  String get locationDetectionFailed =>
      'Gat ekki greint staðsetningu þína. Vinsamlegast veldu borg handvirkt eða reyndu aftur.';

  @override
  String citiesCount(String count) {
    return '$count borgir';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'Engar niðurstöður fundust';

  @override
  String get loading => 'Hleður...';

  @override
  String get error => 'Villa';

  @override
  String get appErrorOccurred => 'Villa kom upp';

  @override
  String get appUnknownError => 'Óþekkt villa';

  @override
  String get quranLoadFailed =>
      'Ekki var hægt að hlaða efni Kóransins. Vinsamlegast reyndu aftur.';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Endurnýja';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Eyða';

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
  String get tafsirLoading => 'Hleður tafsir...';

  @override
  String get tafsirSourceLabel => 'Tafsir heimild';

  @override
  String get tafsirNoSurahFound => 'Enginn tafsir fannst fyrir þessa surah.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Enginn tafsir fannst fyrir ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Ekki tókst að hlaða Tafsir.';

  @override
  String get tafsirNoTextForAyah => 'Enginn tafsir texti fyrir þessa ayah.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Sækir tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Hleður tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir uppspretta skilaði HTTP $statusCode villu.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Valin tafsir heimild skilaði engum færslum.';

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
      'aðrir biðja: „Drottinn vor, gef oss gott í þessum heimi og í hinu síðara, og verndar oss fyrir kvölum Eldsins.';

  @override
  String get duaMeaning2 =>
      'Guð íþyngir ekki neinni sál með meiru en hún getur borið: hver ávinningur af því góða sem hún hefur gert, og þjáist af því slæma- ‘Drottinn, ekki taka okkur til verks ef við gleymum eða gerum mistök. Drottinn, íþyngtu okkur ekki eins og þú lagðir byrðar á þá sem voru á undan okkur. Drottinn, íþyngdu okkur ekki meira en við höfum styrk til að bera. Fyrirgef oss, fyrirgef oss og miskunna þú oss. Þú ert verndari okkar, svo hjálpaðu okkur gegn hinum vantrúuðu.\'';

  @override
  String get duaMeaning3 =>
      '„Drottinn vor, láttu hjörtu okkar ekki víkja eftir að þú hefur leiðbeint okkur. Gefðu okkur miskunn þína: Þú ert alltaf að gefa.';

  @override
  String get duaMeaning4 =>
      'Drottinn, gef að ég og afkvæmi mitt megum halda uppi bæninni. Drottinn vor, þiggðu beiðni mína.';

  @override
  String get duaMeaning5 =>
      'og sæktu væng þinn í auðmýkt í garð þeirra í góðvild og segðu: \'Drottinn, miskunna þú þeim, eins og þeim þótti vænt um mig þegar ég var lítill.\'';

  @override
  String get duaMeaning6 =>
      'Upphafinn sé Guð, sá sem sannarlega ræður. [Spámaður], flýttu þér ekki að segja áður en opinberunin er að fullu lokið heldur segðu: ‚Herra, aukið mig að þekkingu!\'';

  @override
  String get duaMeaning7 =>
      'Segðu [spámann], ‚Drottinn, fyrirgefðu og miskunnaðu þér: Þú ert miskunnsamastur allra.\'';

  @override
  String get duaMeaning8 =>
      'þeir sem biðja: ‚Drottinn vor, gef oss gleði yfir maka okkar og afkvæmi. Gerðu okkur gott fordæmi fyrir þá sem þekkja þig.';

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
  String get hadithCollection => 'Hadith safn';

  @override
  String get hadithBooks => 'Hadith bækur';

  @override
  String get searchHadith => 'Leitaðu að Hadith';

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
  String get openInYoutube => 'Opna á YouTube';

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
    return '${hours}klst ${minutes}m';
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
  String get islamicNewYear => 'Íslamskt nýár';

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
    return 'Áttavitavilla: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Áttavitaskynjari er ekki tiltækur á þessu tæki.';

  @override
  String get qiblaLocationRequiredTitle => 'Staðsetning krafist fyrir Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Stilltu raunverulega staðsetningu þína áður en þú notar Qibla áttavitann svo hægt sé að reikna stefnuna nákvæmlega.';

  @override
  String get adhanNotificationChannelName => 'Adhan tilkynningar';

  @override
  String get adhanNotificationChannelDescription =>
      'Bænatímaviðvaranir með adhan hljóði.';

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
  String get theme => 'Þema';

  @override
  String get lightMode => 'Ljóshamur';

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
    return 'Skoðaðu $appName: Fullkomið íslamska lífsstílsforritið! $url';
  }

  @override
  String get downloadManager => 'Niðurhalsstjóri';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Niðurhali lokið';

  @override
  String get downloadFailed => 'Niðurhal mistókst';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'Engin nettenging';

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
  String get tapToCount => 'Ýttu til að telja';

  @override
  String get zikrCompletedMashAllah => 'Lokið! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah er langt yfir hverri ófullkomleika.';

  @override
  String get zikrMeaningAlhamdulillah => 'Allt lof tilheyrir Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah er hinn mesti.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Það er enginn guð nema Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Ég bið Allah fyrirgefningar.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Það er enginn kraftur og enginn styrkur nema í gegnum Allah.';

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
  String get offlineDownloadManager => 'Ótengdur niðurhalsstjóri';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Losaðu um geymslurými tækisins.';

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
  String get audioVoice => 'Hljóðrödd';

  @override
  String get audioVoiceMisharyAlafasy => 'Karlkyns (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Karlkyns (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Karlkyns (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Qibla kvörðun';

  @override
  String get compassSmoothing => 'Compass smoothing';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Kvörðunarjöfnun';

  @override
  String currentOffset(Object offset) {
    return 'Núverandi: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Stilltu ef áttavitinn þinn þarfnast handvirkrar leiðréttingar. Jákvæð gildi snúast réttsælis.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Greining';

  @override
  String get diagnosticsNotSet => 'Ekki stillt';

  @override
  String get diagnosticsPrayerProfile => 'Bænasnið';

  @override
  String get diagnosticsPrayerSource => 'Bænavald';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Sérsniðin / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Handvirk sérsniðin horn (engin stofnanaheimild)';

  @override
  String get diagnosticsCloudDriven => 'Skýdrifið';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan hljóðeignir';

  @override
  String get diagnosticsUiAudioAssets => 'Hljóðeignir HÍ';

  @override
  String get diagnosticsQuranAudioAssets => 'Hljóðeignir í Kóraninum';

  @override
  String get diagnosticsAudioAssets => 'Hljóðeignir';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count skrár';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Mistókst að lesa ávísun: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Staðsetning Staðsetningar';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count stutt';
  }

  @override
  String get diagnosticsQuranDataset => 'Gagnasett Kóransins';

  @override
  String get diagnosticsQuranSurahs => 'Kóraninn súra';

  @override
  String get diagnosticsQuranAyahs => 'Kóraninn Ayahs';

  @override
  String get diagnosticsQuranJuzMetadata => 'Kóraninn Juz Lýsigögn';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Skýjatöflur vantar í Supabase; búnt fallback virkt';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Skýjaskoðun mistókst: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz lýsigögn vantar; búnt burðarvirki fallback virk';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Athugun á byggingu skýja mistókst: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Kvörðun krafist. Snúðu tækinu á mynd-8.';

  @override
  String get dailyVerse => 'Daglegt vers';

  @override
  String get todaysIbadah => 'Ibadah í dag';

  @override
  String get quickAccess => 'Fljótur aðgangur';

  @override
  String get assistant => 'Aðstoðarmaður';

  @override
  String get places => 'Staðir';

  @override
  String get library => 'Bókasafn';

  @override
  String get analytics => 'Greining';

  @override
  String get dailyDuas => 'Daglega Duas';

  @override
  String essentialDuas(String count) {
    return '$count ómissandi duas';
  }

  @override
  String get duaUnavailableTitle => 'Staðfest duas eru ekki tiltæk ennþá';

  @override
  String get duaUnavailableBody =>
      'Staðfest dagleg duas hafa ekki verið samstillt við þetta tæki ennþá. Tengstu við skýjagjafann til að hlaða upprunnin duas í stað óstaðfestrar vara.';

  @override
  String get duaCategoryQuranic => 'Kóranísk dúa';

  @override
  String get duaCategoryMorningEvening => 'Morgun & kvöld';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Vörn';

  @override
  String get duaCategoryBeginning => 'Upphaf';

  @override
  String get duaCategorySleep => 'Sofðu';

  @override
  String get duaCategoryFoodDrink => 'Matur & drykkur';

  @override
  String get duaCategoryForgiveness => 'Fyrirgefning';

  @override
  String get duaCategoryHome => 'Heim';

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
  String get islamicEducation => 'Íslamsk menntun';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Hadith söfn';

  @override
  String get hadithSourcePending => 'Staðfest heimild í bið';

  @override
  String get hadithUnavailableTitle =>
      'Staðfest hadith söfn eru ekki tiltæk ennþá';

  @override
  String get hadithUnavailableBody =>
      'Þessi smíði er enn háð óstaðfestu utanaðkomandi hadith straumi. Hadith vafra er óvirkt þar til gagnasett er samstillt.';

  @override
  String get paywallUnlockAll =>
      'Opnaðu alla eiginleika fyrir andlega ferð þína';

  @override
  String get premiumProductUnavailable =>
      'Premium vara er ekki fáanleg eins og er. Vinsamlegast reyndu aftur síðar.';

  @override
  String get premiumPurchaseFailed =>
      'Ekki tókst að ganga frá kaupum. Vinsamlegast reyndu aftur.';

  @override
  String get paywallFeature1Title => 'Taugaaðstoðarmaður Plus';

  @override
  String get paywallFeature1Desc => 'Ótakmarkað AI-knúið Q&A';

  @override
  String get paywallFeature2Title => 'Ótakmarkað án nettengingar';

  @override
  String get paywallFeature2Desc => 'Sækja allar upplestur';

  @override
  String get paywallFeature3Title => 'Einstök hönnun';

  @override
  String get paywallFeature3Desc => 'Premium þemu og leturgerðir';

  @override
  String get paywallFeature4Title => 'Auglýsingalaust';

  @override
  String get paywallFeature4Desc => 'Engar auglýsingar';

  @override
  String get paywallGetAccess => 'Fáðu aðgang að ævi – \$1,00';

  @override
  String get restorePurchases => 'Endurheimta innkaup';

  @override
  String get zakatCalculator => 'Zakat reiknivél';

  @override
  String get zakatGold => 'Gull (Altin)';

  @override
  String get zakatSilver => 'Silfur (Gümüş)';

  @override
  String get zakatCashBank => 'reiðufé / banki';

  @override
  String get zakatBusiness => 'Viðskipti';

  @override
  String get zakatInvestments => 'Fjárfestingar';

  @override
  String get zakatWeightGrams => 'Þyngd (g)';

  @override
  String get zakatPricePerGram => 'Verð/g';

  @override
  String get zakatTotalAmount => 'Heildarupphæð';

  @override
  String get zakatInventoryValue => 'Birgðaverðmæti';

  @override
  String get zakatDebts => 'Skuldir';

  @override
  String get zakatTotal => 'Samtals';

  @override
  String get calculateZakat => 'Reiknaðu Zakat';

  @override
  String get nisabNotReached => 'Nisab náðist ekki. Zakat er ekki skylda.';

  @override
  String get totalZakat => 'Alger Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Eignir: $assets';
  }

  @override
  String get zakatGoldZakat => 'Gull Zakat';

  @override
  String get zakatSilverZakat => 'Silfur Zakat';

  @override
  String get zakatCashZakat => 'Cash Zakat';

  @override
  String get zakatBusinessZakat => 'Viðskipti Zakat';

  @override
  String get zakatInvestmentZakat => 'Fjárfesting Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! Ég er íslamskur aðstoðarmaður þinn. Spyrðu mig um bæn, föstu, zakat eða hvaða íslamska efni sem er.';

  @override
  String get chatbotLimitReached =>
      'Daglegu hámarki fyrirspurna náð. Uppfærðu í Premium fyrir ótakmarkað.';

  @override
  String get chatbotErrorMsg =>
      'Ég gat ekki framkallað svar. Vinsamlegast reyndu aftur.';

  @override
  String get chatbotOfflinePrompt =>
      'Enn er verið að sjá um staðfesta íslamska þekkingargrunninn án nettengingar. Þú getur virkjað afturköllun án nettengingar núna, en það mun aðeins sýna takmörkuð örugg skilaboð þar til gagnasettið er tilbúið.\n\nViltu virkja ónettengdan fallback?';

  @override
  String get chatbotOfflineSwitched =>
      'Ótengdur varabúnaður virkur. Staðfest staðbundin íslömsk svör eru ekki tilbúin ennþá.';

  @override
  String get chatbotOfflineDownloadLabel => 'Virkja afturfall án nettengingar';

  @override
  String get downloadPreparing => 'Undirbýr niðurhal...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Sækir surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Allar surahs þegar hlaðið niður fyrir þennan reciter.';

  @override
  String get offlineQuranAudioPacks => 'Ótengdur Kóraninn hljóðpakkar';

  @override
  String storedOnDeviceMb(String size) {
    return 'Vistað á tæki: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total súrur sóttar';
  }

  @override
  String get redownloadMissingRepair => 'Viðgerð / niðurhal vantar';

  @override
  String get downloadAction => 'Sækja';

  @override
  String get resumeDownload => 'Halda niðurhal';

  @override
  String get deleteDownloadedFiles => 'Eyða niðurhaluðum skrám';

  @override
  String get downloadCancelling => 'Hættir við...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Niðurhali hætt fyrir $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Niðurhali lokið fyrir $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Niðurhali lokið fyrir $reciter með $failed misheppnuðum súrum ($downloaded/$total niðurhalað).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Eyddum ónettengdum skrám fyrir $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Staðfestir hljóðgjafar í Kóraninum eru ekki tiltækir eins og er.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Staðfestur hljóðpakki frá Kóraninum er ófullkominn ($available/$total). Endurnýjaðu skýjafræ og reyndu aftur.';
  }

  @override
  String get chatbotHint => 'Spyrðu spurningu...';

  @override
  String get chatbotThinking => 'Er að hugsa...';

  @override
  String get sukunMixerSubtitle => 'Náttúru- og Kóranblandari';

  @override
  String get audioPlayFailed => 'Hljóðspilun mistókst';

  @override
  String get sukunNatureLabel => 'Sukun (náttúra)';

  @override
  String get sukunRainOfMercy => 'Miskunnarregn';

  @override
  String get sukunGardenOfPeace => 'Friðargarðurinn';

  @override
  String get sukunMidnightCalm => 'Miðnæturlogn';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Hljóðmyndir ekki tiltækar';

  @override
  String get sukunUnavailableBody =>
      'Þessi smíði inniheldur ekki nauðsynlegar Sukun soundscape eignir ennþá.';

  @override
  String get prayerCompletion => 'Bænarlok';

  @override
  String get streaks => 'Strákar';

  @override
  String get dayStreak => 'Dagshlaup';

  @override
  String get bestStreak => 'Besta rásin';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'Notaðu Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Virkja afturfall án nettengingar';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count eftir';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API er ekki stillt. Staðfest íslömsk leiðsögn án nettengingar er ekki enn tiltæk.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Staðfestar staðbundnar íslamskar leiðbeiningar eru ekki tiltækar ennþá. Skiptu yfir í Cloud AI til að fá svör.';

  @override
  String get mosques => 'Moskur';

  @override
  String get halalFood => 'Halal matur';

  @override
  String get placesSearchArea => 'Leitaðu á þessu svæði';

  @override
  String get nearbyMosques => 'Nálægt moskur';

  @override
  String get islamicSchools => 'Íslamskir skólar';

  @override
  String placesFoundCount(String count) {
    return '$count fannst';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km í burtu';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API villa: $statusCode';
  }

  @override
  String get placesNetworkError => 'Netvilla. Vinsamlegast reyndu aftur.';

  @override
  String get placesLocationRequiredTitle => 'Staðsetning krafist';

  @override
  String get placesLocationRequiredBody =>
      'Veldu staðsetningu fyrst svo hægt sé að leita nákvæmlega í moskum, halal-mat og íslömskum skólum í nágrenninu.';

  @override
  String get placesMapTilesUnavailableTitle => 'Kortaflísar ekki tiltækar';

  @override
  String get placesMapTilesUnavailableBody =>
      'Staðfestur kortaflisuppspretta er ekki stilltur fyrir þessa smíði ennþá. Nálægir staðir geta samt hlaðið inn frá vistaða staðsetningu þinni.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'Gögn um staði eru ekki tiltæk';

  @override
  String get placesDataSourceUnavailableBody =>
      'Staðfestur gagnaendapunktur er ekki stilltur fyrir þessa byggingu ennþá. Stilltu PLACES_OVERPASS_API_URL á samþykktan umboðsmann eða þjónustuaðila áður en þú kveikir á nærliggjandi leit.';

  @override
  String get unknownPlaceName => 'Óþekkt nafn';

  @override
  String get islamicPlaceFallback => 'Íslamskur staður';

  @override
  String get asmaMeaning1 => 'The Beneficent';

  @override
  String get asmaMeaning2 => 'Hinn miskunnsami';

  @override
  String get asmaMeaning3 => 'Konungurinn / Eilífi Drottinn';

  @override
  String get asmaMeaning4 => 'Hið allra heilaga';

  @override
  String get asmaMeaning5 => 'Uppspretta friðar';

  @override
  String get asmaMeaning6 => 'Sjávarinn um öryggi';

  @override
  String get asmaMeaning7 => 'The Guardian';

  @override
  String get asmaMeaning8 => 'Hið dýrmæta / hið voldugasta';

  @override
  String get asmaMeaning9 => 'Þvingarinn';

  @override
  String get asmaMeaning10 => 'The Greatest';

  @override
  String get asmaMeaning11 => 'Skaparinn';

  @override
  String get asmaMeaning12 => 'The Maker of Order';

  @override
  String get asmaMeaning13 => 'The Shaper of Beauty';

  @override
  String get asmaMeaning14 => 'Fyrirgefandi';

  @override
  String get asmaMeaning15 => 'The Subduer';

  @override
  String get asmaMeaning16 => 'Gefi allra';

  @override
  String get asmaMeaning17 => 'Byrgjandinn';

  @override
  String get asmaMeaning18 => 'Opnarinn';

  @override
  String get asmaMeaning19 => 'Þekkjandi allra';

  @override
  String get asmaMeaning20 => 'The Constrictor';

  @override
  String get asmaMeaning21 => 'The Reliever';

  @override
  String get asmaMeaning22 => 'Abaserinn';

  @override
  String get asmaMeaning23 => 'Exalter';

  @override
  String get asmaMeaning24 => 'Heiðursgjafinn';

  @override
  String get asmaMeaning25 => 'Niðurlæginginn';

  @override
  String get asmaMeaning26 => 'Heyrandi allra';

  @override
  String get asmaMeaning27 => 'Sjáandi allra';

  @override
  String get asmaMeaning28 => 'Dómarinn';

  @override
  String get asmaMeaning29 => 'Hið réttláta';

  @override
  String get asmaMeaning30 => 'Hinn fíngerði';

  @override
  String get asmaMeaning31 => 'The All Aware';

  @override
  String get asmaMeaning32 => 'Fyrirbærinn';

  @override
  String get asmaMeaning33 => 'The Magnificent';

  @override
  String get asmaMeaning34 => 'Hinn mikli fyrirgefandi';

  @override
  String get asmaMeaning35 => 'Verðlaunamaður þakklætis';

  @override
  String get asmaMeaning36 => 'Hið hæsta';

  @override
  String get asmaMeaning37 => 'The Greatest';

  @override
  String get asmaMeaning38 => 'Varðveitan';

  @override
  String get asmaMeaning39 => 'Næringin';

  @override
  String get asmaMeaning40 => 'Reiknarinn';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'Hinir örlátu';

  @override
  String get asmaMeaning43 => 'Hinn vakandi';

  @override
  String get asmaMeaning44 => 'Bænasvarinn';

  @override
  String get asmaMeaning45 => 'The All Comprehending';

  @override
  String get asmaMeaning46 => 'Hin fullkomlega vitri';

  @override
  String get asmaMeaning47 => 'Hinn elskandi';

  @override
  String get asmaMeaning48 => 'Hið glæsilegasta';

  @override
  String get asmaMeaning49 => 'Upprisinn';

  @override
  String get asmaMeaning50 => 'Vitnið';

  @override
  String get asmaMeaning51 => 'Sannleikurinn';

  @override
  String get asmaMeaning52 => 'Hinn fullnægjandi fjárvörsluaðili';

  @override
  String get asmaMeaning53 => 'Eigandi alls styrks';

  @override
  String get asmaMeaning54 => 'The Forceful';

  @override
  String get asmaMeaning55 => 'Verndarinn';

  @override
  String get asmaMeaning56 => 'The Praised';

  @override
  String get asmaMeaning57 => 'Matsmaður';

  @override
  String get asmaMeaning58 => 'Upphafsmaðurinn';

  @override
  String get asmaMeaning59 => 'Restorerinn';

  @override
  String get asmaMeaning60 => 'Lífsgjafi';

  @override
  String get asmaMeaning61 => 'Takandi lífsins';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'Hinn sjálfbæri sjálfbæri';

  @override
  String get asmaMeaning64 => 'Finnandi';

  @override
  String get asmaMeaning65 => 'The Glorious';

  @override
  String get asmaMeaning66 => 'Hinn eini';

  @override
  String get asmaMeaning67 => 'The One';

  @override
  String get asmaMeaning68 => 'Sá sem allir leita að';

  @override
  String get asmaMeaning69 => 'The öflugur';

  @override
  String get asmaMeaning70 => 'Skapari alls valds';

  @override
  String get asmaMeaning71 => 'Framkvæmdastjórinn';

  @override
  String get asmaMeaning72 => 'Tafurinn';

  @override
  String get asmaMeaning73 => 'Hið fyrsta';

  @override
  String get asmaMeaning74 => 'Síðasta';

  @override
  String get asmaMeaning75 => 'The Manifest';

  @override
  String get asmaMeaning76 => 'The Hidden';

  @override
  String get asmaMeaning77 => 'Seðlabankastjóri';

  @override
  String get asmaMeaning78 => 'Hinn æðsti';

  @override
  String get asmaMeaning79 => 'Gerandi hins góða';

  @override
  String get asmaMeaning80 => 'Leiðbeiningar um iðrun';

  @override
  String get asmaMeaning81 => 'Hefnandinn';

  @override
  String get asmaMeaning82 => 'Fyrirgjafinn';

  @override
  String get asmaMeaning83 => 'Klemens';

  @override
  String get asmaMeaning84 => 'Eigandi / fullveldi allra';

  @override
  String get asmaMeaning85 => 'Eigandi hátignar og góðvildar';

  @override
  String get asmaMeaning86 => 'Hinn réttláti';

  @override
  String get asmaMeaning87 => 'The Gatherer';

  @override
  String get asmaMeaning88 => 'Ríki';

  @override
  String get asmaMeaning89 => 'Auðgarinn';

  @override
  String get asmaMeaning90 => 'Vinnur skaða';

  @override
  String get asmaMeaning91 => 'The Bringer of Harm';

  @override
  String get asmaMeaning92 => 'The Gether of Benefits';

  @override
  String get asmaMeaning93 => 'Ljósið';

  @override
  String get asmaMeaning94 => 'Leiðsögumaðurinn';

  @override
  String get asmaMeaning95 => 'Upphafsmaðurinn';

  @override
  String get asmaMeaning96 => 'Hinn eilífi';

  @override
  String get asmaMeaning97 => 'Erfinginn';

  @override
  String get asmaMeaning98 => 'Réttlátasti leiðarvísirinn';

  @override
  String get asmaMeaning99 => 'The Patient One';
}
