// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Zulu (`zu`).
class AppLocalizationsZu extends AppLocalizations {
  AppLocalizationsZu([String locale = 'zu']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Indlela YamaSulumane Yokukhanya';

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
  String get fajr => 'I-Fajr';

  @override
  String get sunrise => 'Ukuphuma kwelanga';

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
    return 'Isikhathi se-$prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Isikhathi sokuthandaza $prayerName.';
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
  String get systemDefault => 'Okuzenzakalelayo Kwesistimu';

  @override
  String get currentLocation => 'Current Location (GPS)';

  @override
  String get locationServiceDisabled => 'Isevisi yendawo ivaliwe.';

  @override
  String get locationPermissionDenied => 'Imvume yendawo inqatshiwe.';

  @override
  String get locationDetectionFailed =>
      'Ayikwazanga ukubona indawo yakho. Sicela ukhethe idolobha mathupha noma uzame futhi.';

  @override
  String citiesCount(String count) {
    return '$count amadolobha';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'Ayikho imiphumela etholiwe';

  @override
  String get loading => 'Iyalayisha...';

  @override
  String get error => 'Iphutha';

  @override
  String get appErrorOccurred => 'Kwenzeke iphutha';

  @override
  String get appUnknownError => 'Iphutha elingaziwa';

  @override
  String get quranLoadFailed =>
      'Okuqukethwe kwe-Quran akukwazanga ukulayishwa. Sicela uzame futhi.';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Vuselela';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Susa';

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
  String get tafsirLoading => 'Ilayisha i-tafsir...';

  @override
  String get tafsirSourceLabel => 'Umthombo we-Tafsir';

  @override
  String get tafsirNoSurahFound => 'Ayikho i-tafsir etholakele yale surah.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Ayikho i-tafsir etholakele ye-ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'I-Tafsir ayikwazanga ukulayishwa.';

  @override
  String get tafsirNoTextForAyah => 'Awukho umbhalo we-tafsir wale ayah.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Ilanda i-tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Ilayisha i-tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Umthombo we-Tafsir ubuyisele iphutha le-HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Umthombo we-tafsir okhethiwe awuzange ubuyise okufakiwe.';

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
      'abanye bayakhuleka bethi, ‘Nkosi yethu, siphe okuhle emhlabeni nakwelizayo, futhi usivikele esijezisweni soMlilo.';

  @override
  String get duaMeaning2 =>
      'UNkulunkulu akawuthwali umphefumulo ngokungaphezu kwalokho ongakuthwala: yilowo nalowo uzuza noma yikuphi okuhle akwenzile, futhi ubhekana nobubi bawo- ‘Nkosi, ungasithwesi icala uma sikhohlwa noma senza amaphutha. Nkosi, ungasithwali njengoba Wathwalisa ababephambi kwethu. Nkosi, ungasithwali ngokungaphezu kwamandla ethu. Sithethelele, sithethelele, futhi ube nomusa kithi. Wena unguMvikeli wethu, ngakho-ke sisize ngokumelene nabangakholwa.';

  @override
  String get duaMeaning3 =>
      '‘Nkosi yethu, ungazivumeli izinhliziyo zethu zichezuke emva kokuthi Usiholile. Siphe umusa Wakho: UnguMuphi Waphakade.';

  @override
  String get duaMeaning4 =>
      'Nkosi, ngiphe ukuba mina nenzalo yami sigcine umkhuleko. Nkosi yethu, yamukela isicelo sami.';

  @override
  String get duaMeaning5 =>
      'bese wehlisela uphiko lwakho ngokuzithoba kubo ngomusa uthi, ‘Nkosi, bahawukele, njengoba nje babenginakekela ngisemncane.’';

  @override
  String get duaMeaning6 =>
      'makaphakanyiswe uNkulunkulu, ophethe ngempela. [Mprofethi], ungajahi ukusho ngaphambi kokuba isambulo sipheleliswe kodwa uthi: ‘Nkosi, ngandise olwazini!';

  @override
  String get duaMeaning7 =>
      'Yithi [uMprofethi]: ‘Nkosi, thethelela futhi ube nomusa: Wena unesihe kunazo zonke.’';

  @override
  String get duaMeaning8 =>
      'labo abakhuleka bethi, ‘Nkosi yethu, siphe injabulo kwabashadile bethu nenzalo yethu. Senze sibe yizibonelo ezinhle kulabo abakwaziyo’.';

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
  String get hadithCollection => 'Iqoqo leHadith';

  @override
  String get hadithBooks => 'Hadith Izincwadi';

  @override
  String get searchHadith => 'Sesha iHadith';

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
  String get openInYoutube => 'Vula ku-YouTube';

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
  String get islamicNewYear => 'Unyaka Omusha WamaSulumane';

  @override
  String get mawlidAnNabi => 'UMawlid an-Nabi';

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
    return 'Iphutha lekhampasi: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Inzwa yekhampasi ayitholakali kule divayisi.';

  @override
  String get qiblaLocationRequiredTitle => 'Indawo iyadingeka ku-Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Set your actual location before using the Qibla compass so the direction can be calculated accurately.';

  @override
  String get adhanNotificationChannelName => 'Izaziso ze-Adhan';

  @override
  String get adhanNotificationChannelDescription =>
      'Izaziso zesikhathi somkhuleko ezinomsindo we-adhan.';

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
  String get theme => 'Itimu';

  @override
  String get lightMode => 'Imodi Ekhanyayo';

  @override
  String get darkMode => 'Imodi Emnyama';

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
    return 'Hlola $appName: Uhlelo lokusebenza oluhle kakhulu lwendlela yokuphila yamaSulumane! $url';
  }

  @override
  String get downloadManager => 'Landa Umphathi';

  @override
  String get downloads => 'Okulandwayo';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Ukulanda Kuqediwe';

  @override
  String get downloadFailed => 'Ukulanda Kwehlulekile';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'Alukho Uxhumo Lwe-inthanethi';

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
  String get tapToCount => 'Thepha ukuze ubale';

  @override
  String get zikrCompletedMashAllah => 'Kuqediwe! MashaAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'UAllah ungaphezulu kakhulu kukho konke ukungapheleli.';

  @override
  String get zikrMeaningAlhamdulillah => 'Udumo lonke malube kuAllah.';

  @override
  String get zikrMeaningAllahuAkbar => 'UAllah mkhulu.';

  @override
  String get zikrMeaningLaIlahaIllallah =>
      'Akekho unkulunkulu ngaphandle kukaAllah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Ngicela intethelelo kuAllah.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Akukho mandla namandla ngaphandle kukaAllah.';

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
  String get offlineDownloadManager =>
      'Umphathi Wokulanda Okungaxhunyiwe ku-inthanethi';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Khulula isitoreji sedivayisi yangaphakathi.';

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
  String get audioVoice => 'Izwi Lomsindo';

  @override
  String get audioVoiceMisharyAlafasy => 'Owesilisa (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Owesilisa (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Owesilisa (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Ukulinganisa kwe-Qibla';

  @override
  String get compassSmoothing => 'I-Compass Smoothing';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'I-Calibration Offset';

  @override
  String currentOffset(Object offset) {
    return 'Okwamanje: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Lungisa uma ikhampasi yakho idinga ukulungiswa mathupha. Amanani amahle azungeza njengokuhamba kwewashi.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Ukuxilonga';

  @override
  String get diagnosticsNotSet => 'Akusethiwe';

  @override
  String get diagnosticsPrayerProfile => 'Iphrofayili Yomkhuleko';

  @override
  String get diagnosticsPrayerSource => 'Igunya Lokuthandaza';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manual custom angles (no institutional source)';

  @override
  String get diagnosticsCloudDriven => 'Iqhutshwa ngamafu';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'I-UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'I-Quran Audio Assets';

  @override
  String get diagnosticsAudioAssets => 'Izimpahla Zomsindo';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count files';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifest read failed: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Localization Locales';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count isekelwe';
  }

  @override
  String get diagnosticsQuranDataset => 'Quran Dataset';

  @override
  String get diagnosticsQuranSurahs => 'Quran Surahs';

  @override
  String get diagnosticsQuranAyahs => 'Quran Ayahs';

  @override
  String get diagnosticsQuranJuzMetadata => 'Quran Juz imethadatha';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Amatafula amafu alahlekile eSupabase; i-backback eyinqwaba iyasebenza';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Ukuhlola amafu kuhlulekile: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Imethadatha ye-Cloud juz ayikho; Ukubuyela emuva kwesakhiwo okuhlanganisiwe kuyasebenza';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Ukuhlolwa kwesakhiwo samafu kwehlulekile: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Kudingeka ukulinganisa. Zungezisa idivayisi kumfanekiso-8.';

  @override
  String get dailyVerse => 'Ivesi Lansuku zonke';

  @override
  String get todaysIbadah => 'I-Ibadah yanamuhla';

  @override
  String get quickAccess => 'Ukufinyelela Ngokushesha';

  @override
  String get assistant => 'Umsizi';

  @override
  String get places => 'Izindawo';

  @override
  String get library => 'Umtapowolwazi';

  @override
  String get analytics => 'Izibalo';

  @override
  String get dailyDuas => 'I-Daily Duas';

  @override
  String essentialDuas(String count) {
    return '$count ama-duas abalulekile';
  }

  @override
  String get duaUnavailableTitle =>
      'Ama-duas aqinisekisiwe awatholakali okwamanje';

  @override
  String get duaUnavailableBody =>
      'I-duas yansuku zonke eqinisekisiwe ayikavunyelaniswa kule divayisi okwamanje. Xhuma kumthombo wamafu ukuze ulayishe ama-duas atholakala esikhundleni sokubuyela emuva okungaqinisekisiwe.';

  @override
  String get duaCategoryQuranic => 'I-Quranic dua';

  @override
  String get duaCategoryMorningEvening => 'Ekuseni nakusihlwa';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Ukuvikelwa';

  @override
  String get duaCategoryBeginning => 'Iziqalo';

  @override
  String get duaCategorySleep => 'Lala';

  @override
  String get duaCategoryFoodDrink => 'Ukudla Neziphuzo';

  @override
  String get duaCategoryForgiveness => 'Ukuthethelela';

  @override
  String get duaCategoryHome => 'Ikhaya';

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
  String get islamicEducation => 'Imfundo YamaSulumane';

  @override
  String get sukunAudioTitle => 'I-Sukun Soundscapes';

  @override
  String get hadithCollections => 'Hadith Amaqoqo';

  @override
  String get hadithSourcePending => 'Umthombo oqinisekisiwe ulindile';

  @override
  String get hadithUnavailableTitle =>
      'Amaqoqo ama-hadith aqinisekisiwe awatholakali okwamanje';

  @override
  String get hadithUnavailableBody =>
      'Lokhu kwakhiwa kusancike kokuphakelayo kwe-hadith yangaphandle engaqinisekisiwe. Ukuphequlula kwe-Hadith kuhlala kuvaliwe kuze kube yilapho isethi yedatha etholakalayo ivunyelaniswa.';

  @override
  String get paywallUnlockAll => 'Vula zonke izici zohambo lwakho lokomoya';

  @override
  String get premiumProductUnavailable =>
      'Umkhiqizo we-Premium awutholakali okwamanje. Sicela uzame futhi emuva kwesikhathi.';

  @override
  String get premiumPurchaseFailed =>
      'Ukuthenga akuqedwanga. Sicela uzame futhi.';

  @override
  String get paywallFeature1Title => 'I-Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'I-Q&A ene-AI engenamkhawulo';

  @override
  String get paywallFeature2Title =>
      'Okungaxhunyiwe ku-inthanethi okungenamkhawulo';

  @override
  String get paywallFeature2Desc => 'Landa zonke izingcaphuno';

  @override
  String get paywallFeature3Title => 'Imiklamo Ekhethekile';

  @override
  String get paywallFeature3Desc => 'Izingqikithi namafonti e-Premium';

  @override
  String get paywallFeature4Title => 'Akunazikhangiso';

  @override
  String get paywallFeature4Desc => 'Azikho izikhangiso';

  @override
  String get paywallGetAccess => 'Thola Ukufinyelela Konke Kuphila — \$1.00';

  @override
  String get restorePurchases => 'Buyisela Okuthengiwe';

  @override
  String get zakatCalculator => 'I-Zakat Calculator';

  @override
  String get zakatGold => 'Igolide (Altın)';

  @override
  String get zakatSilver => 'Isiliva (Gümüş)';

  @override
  String get zakatCashBank => 'Imali / Ibhange';

  @override
  String get zakatBusiness => 'Ibhizinisi';

  @override
  String get zakatInvestments => 'Ukutshalwa kwezimali';

  @override
  String get zakatWeightGrams => 'Isisindo (g)';

  @override
  String get zakatPricePerGram => 'Inani/g';

  @override
  String get zakatTotalAmount => 'Ingqikithi yemali';

  @override
  String get zakatInventoryValue => 'Inani lokusungula';

  @override
  String get zakatDebts => 'Izikweletu';

  @override
  String get zakatTotal => 'Ingqikithi';

  @override
  String get calculateZakat => 'Calculate Zakat';

  @override
  String get nisabNotReached =>
      'UNisab akafinyelelwanga. I-Zakat ayiphoqelekile.';

  @override
  String get totalZakat => 'I-Zakat ephelele';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Amafa: $assets';
  }

  @override
  String get zakatGoldZakat => 'Gold Zakat';

  @override
  String get zakatSilverZakat => 'I-Silver Zakat';

  @override
  String get zakatCashZakat => 'Cash Zakat';

  @override
  String get zakatBusinessZakat => 'Ibhizinisi Zakat';

  @override
  String get zakatInvestmentZakat => 'Investment Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! Ngingumsizi wakho wamaSulumane. Ngibuze ngomthandazo, ukuzila ukudla, zakat, nanoma yisiphi isihloko samaSulumane.';

  @override
  String get chatbotLimitReached =>
      'Umkhawulo wombuzo wansuku zonke ufinyelelwe. Thuthukela ku-Premium ukuze uthole okungenamkhawulo.';

  @override
  String get chatbotErrorMsg =>
      'Angikwazanga ukwenza impendulo. Sicela uzame futhi.';

  @override
  String get chatbotOfflinePrompt =>
      'Isisekelo solwazi lwamaSulumane olungaxhunyiwe ku-inthanethi esiqinisekisiwe sisalungiswa. Ungakwazi ukunika amandla ukubuyela emuva ungaxhunyiwe ku-inthanethi manje, kodwa kuzobonisa kuphela imilayezo ephephile elinganiselwe kuze kube yilapho isethi yedatha etholiwe isilungile.\n\nUngathanda ukunika amandla ukubuyela emuva ungaxhunyiwe ku-inthanethi?';

  @override
  String get chatbotOfflineSwitched =>
      'Ukubuyela emuva kokungaxhunyiwe ku-inthanethi kunikwe amandla. Izimpendulo zasendaweni zamaSulumane eziqinisekisiwe azikakalungi.';

  @override
  String get chatbotOfflineDownloadLabel => 'Nika amandla i-Offline Fallback';

  @override
  String get downloadPreparing => 'Ilungiselela ukulanda...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Ilanda i-surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Wonke ama-surah asevele alandiwe kulo mlandeli.';

  @override
  String get offlineQuranAudioPacks =>
      'Amaphekhi omsindo we-Quran angaxhunyiwe ku-inthanethi';

  @override
  String storedOnDeviceMb(String size) {
    return 'Ilondolozwe kudivayisi: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total ama-surah alandiwe';
  }

  @override
  String get redownloadMissingRepair => 'Ukulungisa / Ukulanda Akukho';

  @override
  String get downloadAction => 'Landa';

  @override
  String get resumeDownload => 'Qalisa kabusha Ukulanda';

  @override
  String get deleteDownloadedFiles => 'Susa Amafayela Alandiwe';

  @override
  String get downloadCancelling => 'Iyakhansela...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Ukulanda kukhanselwe i-$reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Ukulanda kuqediwe kwe-$reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Ukulanda kuqediwe kwe-$reciter nge-$failed ama-surah ahlulekile ($downloaded/$total alandiwe).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Amafayela angaxhunyiwe ku-inthanethi asusiwe $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Imithombo yomsindo ye-Quran eqinisekisiwe ayitholakali okwamanje.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Iphekhi yomsindo ye-Quran eqinisekisiwe ayiphelele ($available/$total). Vuselela imbewu yefu bese uzama futhi.';
  }

  @override
  String get chatbotHint => 'Buza umbuzo...';

  @override
  String get chatbotThinking => 'Ukucabanga...';

  @override
  String get sukunMixerSubtitle => 'Imvelo & I-Qur\'an Mixer';

  @override
  String get audioPlayFailed => 'Ukudlalwa komsindo kuhlulekile';

  @override
  String get sukunNatureLabel => 'I-Sukun (Imvelo)';

  @override
  String get sukunRainOfMercy => 'Imvula Yomusa';

  @override
  String get sukunGardenOfPeace => 'Insimu Yokuthula';

  @override
  String get sukunMidnightCalm => 'Ebusuku Zolile';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'I-Soundscapes ayitholakali';

  @override
  String get sukunUnavailableBody =>
      'Lesi sakhiwo asifaki amafa we-Sukun soundscape okwamanje.';

  @override
  String get prayerCompletion => 'Ukuqedwa Komthandazo';

  @override
  String get streaks => 'Imivimbo';

  @override
  String get dayStreak => 'Ukulandelana kosuku';

  @override
  String get bestStreak => 'Best streak';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'I-Fallback engaxhunyiwe ku-inthanethi';

  @override
  String get chatbotUseCloudAi => 'Sebenzisa i-Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Nika amandla i-Offline Fallback';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count osele';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'I-Cloud API ayilungiselelwe. Isiqondiso samaSulumane esiqinisekisiwe ngokungaxhunyiwe ku-inthanethi asitholakali okwamanje.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Isiqondiso sendawo samaSulumane esiqinisekisiwe asitholakali okwamanje. Shintshela ku-Cloud AI ukuze uthole izimpendulo ezitholakalayo.';

  @override
  String get mosques => 'Ama-mosque';

  @override
  String get halalFood => 'Ukudla kwe-Halal';

  @override
  String get placesSearchArea => 'Sesha le ndawo';

  @override
  String get nearbyMosques => 'Ama-Mosque aseduze';

  @override
  String get islamicSchools => 'Izikole zamaSulumane';

  @override
  String placesFoundCount(String count) {
    return '$count itholiwe';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km kude';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Iphutha le-API: $statusCode';
  }

  @override
  String get placesNetworkError => 'Iphutha lenethiwekhi. Sicela uzame futhi.';

  @override
  String get placesLocationRequiredTitle => 'Indawo iyadingeka';

  @override
  String get placesLocationRequiredBody =>
      'Setha indawo kuqala ukuze ama-mosque aseduze, ukudla kwe-halal, nezikole zamaSulumane ziseshwe ngokunembile.';

  @override
  String get placesMapTilesUnavailableTitle => 'Amathayela emephu awatholakali';

  @override
  String get placesMapTilesUnavailableBody =>
      'Umthombo wethayela lemephu oqinisekisiwe awulungiselelwe lesi sakhiwo okwamanje. Izindawo eziseduze zisengalayisha zisuka endaweni yakho elondoloziwe.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'Idatha yezindawo ayitholakali';

  @override
  String get placesDataSourceUnavailableBody =>
      'Indawo yokugcina idatha yezindawo eqinisekisiwe ayilungiselwe lesi sakhiwo okwamanje. Setha i-PLACES_OVERPASS_API_URL kummeleli ogunyaziwe noma umhlinzeki ngaphambi kokunika amandla ukusesha okuseduze.';

  @override
  String get unknownPlaceName => 'Igama Elingaziwa';

  @override
  String get islamicPlaceFallback => 'Indawo yamaSulumane';

  @override
  String get asmaMeaning1 => 'Olungileyo';

  @override
  String get asmaMeaning2 => 'Onomusa';

  @override
  String get asmaMeaning3 => 'Inkosi / Inkosi Yaphakade';

  @override
  String get asmaMeaning4 => 'INgcwelengcwele';

  @override
  String get asmaMeaning5 => 'Umthombo Wokuthula';

  @override
  String get asmaMeaning6 => 'Umniki Wezokuphepha';

  @override
  String get asmaMeaning7 => 'Umqaphi';

  @override
  String get asmaMeaning8 => 'Oyigugu / Onamandla Kakhulu';

  @override
  String get asmaMeaning9 => 'UMphoqi';

  @override
  String get asmaMeaning10 => 'Okukhulu Kakhulu';

  @override
  String get asmaMeaning11 => 'UMdali';

  @override
  String get asmaMeaning12 => 'UMenzi Wokuhleleka';

  @override
  String get asmaMeaning13 => 'UMbumbi Wobuhle';

  @override
  String get asmaMeaning14 => 'Othethelelayo';

  @override
  String get asmaMeaning15 => 'UMthobisi';

  @override
  String get asmaMeaning16 => 'Umniki Wakho Konke';

  @override
  String get asmaMeaning17 => 'Umondli';

  @override
  String get asmaMeaning18 => 'Isivula';

  @override
  String get asmaMeaning19 => 'Owazi Konke';

  @override
  String get asmaMeaning20 => 'I-Constrictor';

  @override
  String get asmaMeaning21 => 'UMkhululi';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'UMphakamisi';

  @override
  String get asmaMeaning24 => 'UMnikazi Wokuhlonishwa';

  @override
  String get asmaMeaning25 => 'Umthobisi';

  @override
  String get asmaMeaning26 => 'UMuzwi Wakho Konke';

  @override
  String get asmaMeaning27 => 'Umboni Wakho Konke';

  @override
  String get asmaMeaning28 => 'IJaji';

  @override
  String get asmaMeaning29 => 'The Just';

  @override
  String get asmaMeaning30 => 'Ocashile';

  @override
  String get asmaMeaning31 => 'Owazi Konke';

  @override
  String get asmaMeaning32 => 'I-Forebearing';

  @override
  String get asmaMeaning33 => 'The Magnificent';

  @override
  String get asmaMeaning34 => 'UMthetheleli Omkhulu';

  @override
  String get asmaMeaning35 => 'Umvuzi Wokubonga';

  @override
  String get asmaMeaning36 => 'Okuphakeme Kakhulu';

  @override
  String get asmaMeaning37 => 'Okukhulu Kakhulu';

  @override
  String get asmaMeaning38 => 'UMlondolozi';

  @override
  String get asmaMeaning39 => 'Umondli';

  @override
  String get asmaMeaning40 => 'I-Reckoner';

  @override
  String get asmaMeaning41 => 'UMkhulukazi';

  @override
  String get asmaMeaning42 => 'Ophanayo';

  @override
  String get asmaMeaning43 => 'Oqaphile';

  @override
  String get asmaMeaning44 => 'Uphendula Umthandazo';

  @override
  String get asmaMeaning45 => 'Ukuqonda Konke';

  @override
  String get asmaMeaning46 => 'Abahlakaniphe Ngokuphelele';

  @override
  String get asmaMeaning47 => 'Othandekayo';

  @override
  String get asmaMeaning48 => 'Okhazimula Kakhulu';

  @override
  String get asmaMeaning49 => 'UMvuseleli';

  @override
  String get asmaMeaning50 => 'UFakazi';

  @override
  String get asmaMeaning51 => 'Iqiniso';

  @override
  String get asmaMeaning52 => 'I-Trustee Onenele Konke';

  @override
  String get asmaMeaning53 => 'UMnini Wamandla Onke';

  @override
  String get asmaMeaning54 => 'Onamandla';

  @override
  String get asmaMeaning55 => 'UMvikeli';

  @override
  String get asmaMeaning56 => 'Ababongekayo';

  @override
  String get asmaMeaning57 => 'Umhloli';

  @override
  String get asmaMeaning58 => 'Umsunguli';

  @override
  String get asmaMeaning59 => 'UMbuyiseli';

  @override
  String get asmaMeaning60 => 'UMniki Wokuphila';

  @override
  String get asmaMeaning61 => 'Umkhiphi Wokuphila';

  @override
  String get asmaMeaning62 => 'I-Ever Living';

  @override
  String get asmaMeaning63 => 'Umondli Oziphilisayo';

  @override
  String get asmaMeaning64 => 'Umtholi';

  @override
  String get asmaMeaning65 => 'Okhazimulayo';

  @override
  String get asmaMeaning66 => 'Oyedwa';

  @override
  String get asmaMeaning67 => 'Iyona yodwa';

  @override
  String get asmaMeaning68 => 'Ofunwa Yibo Bonke';

  @override
  String get asmaMeaning69 => 'Onamandla';

  @override
  String get asmaMeaning70 => 'UMdali wawo wonke amandla';

  @override
  String get asmaMeaning71 => 'I-Expediter';

  @override
  String get asmaMeaning72 => 'Umbambezeli';

  @override
  String get asmaMeaning73 => 'Okokuqala';

  @override
  String get asmaMeaning74 => 'Owokugcina';

  @override
  String get asmaMeaning75 => 'I-Manifest';

  @override
  String get asmaMeaning76 => 'Ofihliwe';

  @override
  String get asmaMeaning77 => 'UMbusi';

  @override
  String get asmaMeaning78 => 'OPhezukonke';

  @override
  String get asmaMeaning79 => 'UMenzi Wokuhle';

  @override
  String get asmaMeaning80 => 'Umhlahlandlela Wokuphenduka';

  @override
  String get asmaMeaning81 => 'Umphindiseli';

  @override
  String get asmaMeaning82 => 'UMthetheleli';

  @override
  String get asmaMeaning83 => 'UClement';

  @override
  String get asmaMeaning84 => 'Umnikazi / uMbusi Wakho Konke';

  @override
  String get asmaMeaning85 => 'Umnikazi Wobukhosi Nobuhle';

  @override
  String get asmaMeaning86 => 'Olinganayo';

  @override
  String get asmaMeaning87 => 'Umqoqi';

  @override
  String get asmaMeaning88 => 'Isicebi';

  @override
  String get asmaMeaning89 => 'Umcebisi';

  @override
  String get asmaMeaning90 => 'Umvikeli Wokulimaza';

  @override
  String get asmaMeaning91 => 'Oletha Ingozi';

  @override
  String get asmaMeaning92 => 'Umnikezeli Wezinzuzo';

  @override
  String get asmaMeaning93 => 'Ukukhanya';

  @override
  String get asmaMeaning94 => 'UMhlahlandlela';

  @override
  String get asmaMeaning95 => 'Umsunguli';

  @override
  String get asmaMeaning96 => 'Ongunaphakade';

  @override
  String get asmaMeaning97 => 'Indlalifa';

  @override
  String get asmaMeaning98 => 'Umhlahlandlela Olungile Kakhulu';

  @override
  String get asmaMeaning99 => 'Isiguli';
}
