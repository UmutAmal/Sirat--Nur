// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Southern Sotho (`st`).
class AppLocalizationsSt extends AppLocalizations {
  AppLocalizationsSt([String locale = 'st']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Tsela ea Boislamo ea Leseli';

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
  String get settings => 'Litlhophiso';

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
  String get prayerCalculation => 'Thapelo Palo';

  @override
  String get method => 'Mokhoa oa Palo';

  @override
  String get madhab => 'Mokhoa oa Asr Juristic';

  @override
  String get surahs => 'Surahs';

  @override
  String get ayahs => 'Ayahs';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Ho chaba ha letsatsi';

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
    return 'Nako ea $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Ke nako ea ho rapela $prayerName.';
  }

  @override
  String get dataStorage => 'Lintlha le Polokelo';

  @override
  String get clearCache => 'Hlakola Cache';

  @override
  String get cacheClearedSuccess => 'Cache e hlakotsoe ka katleho';

  @override
  String get location => 'Sebaka';

  @override
  String get language => 'Puo';

  @override
  String get selectLanguage => 'Kgetha Puo';

  @override
  String get searchLanguage => 'Search 180+ languages...';

  @override
  String get systemDefault => 'Sistimi ea kamehla';

  @override
  String get currentLocation => 'Sebaka sa Hajoale (GPS)';

  @override
  String get locationServiceDisabled => 'Ts\'ebeletso ea sebaka e koetsoe.';

  @override
  String get locationPermissionDenied => 'Tumello ea sebaka e hanetsoe.';

  @override
  String get locationDetectionFailed =>
      'Ha e khone ho bona sebaka sa hau. Ka kopo, khetha toropo ka bouena kapa u leke hape.';

  @override
  String citiesCount(String count) {
    return '$count litoropo';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'Ha ho liphetho tse fumanoeng';

  @override
  String get loading => 'E ea kenya...';

  @override
  String get error => 'Phoso';

  @override
  String get appErrorOccurred => 'Phoso e etsahetse';

  @override
  String get appUnknownError => 'Phoso e sa tsejoeng';

  @override
  String get quranLoadFailed =>
      'Likahare tsa Quran ha lia khona ho kenngoa. Ka kopo, leka hape.';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Hlasimolla';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Hlakola';

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
  String get tafsirLoading => 'E kenya tafsir...';

  @override
  String get tafsirSourceLabel => 'Mohloli oa Tafsir';

  @override
  String get tafsirNoSurahFound =>
      'Ha ho tafsir e fumanoeng bakeng sa surah ena.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Ha ho tafsir e fumanoeng ea ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir ha e khone ho kengoa.';

  @override
  String get tafsirNoTextForAyah =>
      'Ha ho mongolo oa tafsir bakeng sa ayah ena.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'E khoasolla tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'E kenya tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Mohloli oa Tafsir o khutlisitse phoso ea HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Mohloli o khethiloeng oa tafsir ha oa khutlisa mangolo.';

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
      'ba bang ba re: ‘Mong’a rona, re fe tse molemo lefatšeng lena le ka ho sa Feleng, ’me u re sireletse kotlong ea mollo.';

  @override
  String get duaMeaning2 =>
      'Allah ha A imetse moea ofe kapa ofe ka tse fetang tseo o ka li jarang: e mong le e mong o fumana molemo ofe kapa ofe oo o o entseng, \'me o hlaheloa ke bobe ba oona - \"Morena, u se ke ua re nka re lebetse kapa re etsa liphoso. Morena, u se ke ua re imetsa joalo ka ha u ne u imetsa ba neng ba le pele ho rona. Morena, u se ke ua re imetsa ka matla a fetang ao re nang le \'ona. U re tšoarele, u re tšoarele, u re hauhele. U Mosireletsi oa rona, kahoo re thuse khahlanong le ba sa lumeleng.’';

  @override
  String get duaMeaning3 =>
      '‘Mong’a rona, u se ke ua lumella lipelo tsa rona ho kheloha ka mor’a hore u re tataise. U re fe mohau oa Hao: U Ea fanang ka mehla.';

  @override
  String get duaMeaning4 =>
      'Morena, etsa hore nna le bana ba ka re boloke thapelo. Morena oa rona, amohela kopo ea ka.';

  @override
  String get duaMeaning5 =>
      'mme o theolele lepheo la hao ka boikokobetso ho bona ka mosa mme o re, ‘Morena, ba hauhele, jwalokaha ba ile ba ntlhokomela ha ke sa le monyenyane.’';

  @override
  String get duaMeaning6 =>
      'ho phahamisoe Molimo, ea laolang ka ’nete. [Moprofeta], u se ke ua potlakela ho pheta-pheta pele tšenolo e phethahala ka botlalo empa u re, ‘Morena, nkekeletse tsebong!';

  @override
  String get duaMeaning7 =>
      'E-re [Moprofeta], ‘Morena, tšoarela ’me u hauhele: U le mohau ho feta bohle.’';

  @override
  String get duaMeaning8 =>
      'ba rapelang ba re: ‘Morena oa rona, re thabise ka har’a balekane ba rōna le bana ba rōna. Re etse mehlala e metle ho ba O tsebang’.';

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
  String get hadithCollection => 'Pokello ea Hadith';

  @override
  String get hadithBooks => 'Libuka tsa Hadith';

  @override
  String get searchHadith => 'Batla Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Names of Allah';

  @override
  String get liveTv => 'Live TV';

  @override
  String get watchLive => 'Shebella Live';

  @override
  String get streamError => 'Phoso ea ho phallela';

  @override
  String get reload => 'Kenya hape';

  @override
  String get openInYoutube => 'Bula ho YouTube';

  @override
  String get ibadahTracker => 'Tracker ea Ibadah';

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
  String get islamicNewYear => 'Selemo se Secha sa Maislamo';

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
    return 'Phoso ea sesupa-tsela: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Compass sensor ha e fumanehe sesebelisoa sena.';

  @override
  String get qiblaLocationRequiredTitle =>
      'Sebaka se hlokahalang bakeng sa Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Beha sebaka sa hau sa \'nete pele u sebelisa sesupa-tsela sa Qibla e le hore tataiso e ka baloa ka nepo.';

  @override
  String get adhanNotificationChannelName => 'Litsebiso tsa Adhan';

  @override
  String get adhanNotificationChannelDescription =>
      'Litemoso tsa nako ea thapelo ka molumo oa adhan.';

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
  String get theme => 'Sehlooho';

  @override
  String get lightMode => 'Mokhoa oa Leseli';

  @override
  String get darkMode => 'Mokhoa o Lefifi';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'About';

  @override
  String get version => 'Phetolelo';

  @override
  String get privacyPolicy => 'Leano la Lekunutu';

  @override
  String get termsOfService => 'Melao ea Ts\'ebeletso';

  @override
  String get contactUs => 'Ikopanye le Rona';

  @override
  String get rateApp => 'Reita App';

  @override
  String get shareApp => 'Arolelana App';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Sheba $appName: Sesebelisoa sa ho qetela sa bophelo sa Islamic! $url';
  }

  @override
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'Lisebelisoa';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Khoasolla E Felletse';

  @override
  String get downloadFailed => 'E hlolehile ho Khoasolla';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'Ha ho Khokahano ea Marang-rang';

  @override
  String get checkConnection => 'Ka kopo, sheba khokahano ea hau';

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
  String get tapToCount => 'Tlanya ho bala';

  @override
  String get zikrCompletedMashAllah => 'E phethiloe! MashaAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah o phahametse ho se phethahale hohle.';

  @override
  String get zikrMeaningAlhamdulillah => 'Thoriso eohle ke ea Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah ke E moholo.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Ha ho molimo haese Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Ke kopa tšoarelo ho Allah.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Ha ho matla le matla haese ka Allah.';

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
  String get offlineDownloadManager => 'Offline Download Manager';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Lokolla polokelo ea sesebelisoa sa kahare.';

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
  String get audioVoice => 'Lentsoe la Audio';

  @override
  String get audioVoiceMisharyAlafasy => 'Monna (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Monna (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Monna (Sudais)';

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
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Calibration Offset';

  @override
  String currentOffset(Object offset) {
    return 'Hona joale: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Fetola haeba sesupa-tsela sa hao se hloka ho lokisoa ka letsoho. Maemo a nepahetseng a potoloha ho ea ka oache.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Diagnostics';

  @override
  String get diagnosticsNotSet => 'E sa behoa';

  @override
  String get diagnosticsPrayerProfile => 'Boemo ba Thapelo';

  @override
  String get diagnosticsPrayerSource => 'Matla a Thapelo';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Tloaelo / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Li-angles tsa tloaelo (ha ho mohloli oa setsi)';

  @override
  String get diagnosticsCloudDriven => 'Cloud Driven';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Thepa ea Audio ea Quran';

  @override
  String get diagnosticsAudioAssets => 'Lisebelisoa tsa Audio';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count lifaele';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Ho hloleha ho bala: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Libaka tsa Sebaka';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count e tšehelitsoe';
  }

  @override
  String get diagnosticsQuranDataset => 'Koran Dataset';

  @override
  String get diagnosticsQuranSurahs => 'Li-Surah tsa Quran';

  @override
  String get diagnosticsQuranAyahs => 'Li-Ayah tsa Quran';

  @override
  String get diagnosticsQuranJuzMetadata => 'Quran Juz Metadata';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Litafole tsa maru tse sieo Supabase; bundled fallback e sebetsa';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Ho hloleha ha maru ho hlolehile: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz metadata ha e eo; bundled structural fallback e sebetsang';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Leru le hlolehile ho hlahloba sebopeho: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Ho hlokahala ho lekanya. Fetola sesebelisoa setšoantšong-8.';

  @override
  String get dailyVerse => 'Temana ea Letsatsi le Letsatsi';

  @override
  String get todaysIbadah => 'Ibadah ea kajeno';

  @override
  String get quickAccess => 'Ho fihlella ka Potlako';

  @override
  String get assistant => 'Mothusi';

  @override
  String get places => 'Libaka';

  @override
  String get library => 'Laebrari';

  @override
  String get analytics => 'Litlhahlobo';

  @override
  String get dailyDuas => 'Li-Duas tsa Letsatsi le Letsatsi';

  @override
  String essentialDuas(String count) {
    return '$count li-duas tsa bohlokoa';
  }

  @override
  String get duaUnavailableTitle =>
      'Li-dua tse netefalitsoeng ha li so fumanehe';

  @override
  String get duaUnavailableBody =>
      'Li-dua tse netefalitsoeng tsa letsatsi le letsatsi ha li so hokahanngoa sesebelisoa sena. Hokela mohloling oa cloud ho kenya li-duas ho e-na le mokhoa o sa netefatsoang.';

  @override
  String get duaCategoryQuranic => 'Dua ea Quran';

  @override
  String get duaCategoryMorningEvening => 'Hoseng le Mantsiboea';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Tshireletso';

  @override
  String get duaCategoryBeginning => 'Qalo';

  @override
  String get duaCategorySleep => 'Robala';

  @override
  String get duaCategoryFoodDrink => 'Lijo & Lino';

  @override
  String get duaCategoryForgiveness => 'Tšoarelo';

  @override
  String get duaCategoryHome => 'Lehae';

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
  String get islamicEducation => 'Thuto ea Boislamo';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Lipokello tsa Hadith';

  @override
  String get hadithSourcePending => 'Mohloli o netefalitsoeng o ntse o emetse';

  @override
  String get hadithUnavailableTitle =>
      'Lipokello tsa hadith tse netefalitsoeng ha li so fumanehe';

  @override
  String get hadithUnavailableBody =>
      'Kaho ena e ntse e itšetlehile ka phepelo ea hadith e sa netefatsoang. Mokhoa oa ho bala oa Hadith o lula o koalehile ho fihlela dataset ea mohloli o hokahanngoa.';

  @override
  String get paywallUnlockAll =>
      'Notlolla likarolo tsohle tsa leeto la hau la moea';

  @override
  String get premiumProductUnavailable =>
      'Sehlahisoa sa Premium ha se fumanehe hona joale. Ka kopo, leka hape hamorao.';

  @override
  String get premiumPurchaseFailed =>
      'Theko ha e ea phethoa. Ka kopo, leka hape.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'Q&A e se nang moeli e tsamaisoang ke AI';

  @override
  String get paywallFeature2Title => 'Unlimited Offline';

  @override
  String get paywallFeature2Desc => 'Khoasolla litlhaloso tsohle';

  @override
  String get paywallFeature3Title => 'Meetso e Ikhethang';

  @override
  String get paywallFeature3Desc => 'Litema tsa Premium le lifonti';

  @override
  String get paywallFeature4Title => 'Ha e na Papatso';

  @override
  String get paywallFeature4Desc => 'Lipapatso tse se nang letho';

  @override
  String get paywallGetAccess => 'Fumana Phihlelo ea Bophelo Bohle - \$1.00';

  @override
  String get restorePurchases => 'Khutlisa Litheko';

  @override
  String get zakatCalculator => 'Zakat Calculator';

  @override
  String get zakatGold => 'Khauta (Altın)';

  @override
  String get zakatSilver => 'Silevera (Gümüş)';

  @override
  String get zakatCashBank => 'Chelete / Banka';

  @override
  String get zakatBusiness => 'Khoebo';

  @override
  String get zakatInvestments => 'Matsete';

  @override
  String get zakatWeightGrams => 'Boima ba \'mele (g)';

  @override
  String get zakatPricePerGram => 'Theko/g';

  @override
  String get zakatTotalAmount => 'Kakaretso';

  @override
  String get zakatInventoryValue => 'Boleng ba Inventory';

  @override
  String get zakatDebts => 'Likoloto';

  @override
  String get zakatTotal => 'Kakaretso';

  @override
  String get calculateZakat => 'Bala Zakat';

  @override
  String get nisabNotReached => 'Nisab ha ea fihla. Zakat ha e tlamehe.';

  @override
  String get totalZakat => 'Kakaretso ea Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Thepa: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakat ea Khauta';

  @override
  String get zakatSilverZakat => 'Zakat ea silevera';

  @override
  String get zakatCashZakat => 'Cash Zakat';

  @override
  String get zakatBusinessZakat => 'Zakat ea khoebo';

  @override
  String get zakatInvestmentZakat => 'Investment Zakat';

  @override
  String get chatbotGreeting =>
      'Assalam Alaikum! Ke mothusi oa hau oa Islamic. Mpotse ka thapelo, ho itima lijo, zakat, kapa taba efe kapa efe ea Boislamo.';

  @override
  String get chatbotLimitReached =>
      'Lipotso tsa letsatsi le letsatsi li fihletsoe. Ntlafatsa ho Premium bakeng sa se nang moeli.';

  @override
  String get chatbotErrorMsg =>
      'Ha ke khone ho fana ka karabo. Ka kopo, leka hape.';

  @override
  String get chatbotOfflinePrompt =>
      'Setsi se netefalitsoeng sa Maislamo kantle ho Marang-rang se ntse se lokisetsoa. O ka lumella ho khutlisa ha kantle ho Marang-rang hona joale, empa e tla bonts\'a melaetsa e fokolang e bolokehileng ho fihlela dataset e fumanoeng e se e lokile.\n\nA na u ka rata ho bulela mokhoa oa ho khutlisa kantle ho marang-rang?';

  @override
  String get chatbotOfflineSwitched =>
      'Ts\'ebetso ea offline e lumelletsoe. Likarabo tse netefalitsoeng tsa Maislamo tsa lehae ha li so lokisoe.';

  @override
  String get chatbotOfflineDownloadLabel => 'Lumella Fallback Offline';

  @override
  String get downloadPreparing => 'E lokisetsa ho khoasolla...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'E khoasolla surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Li-surah tsohle li se li ntse li jarollotsoe bakeng sa sebali sena.';

  @override
  String get offlineQuranAudioPacks => 'Offline Quran Audio Packs';

  @override
  String storedOnDeviceMb(String size) {
    return 'E bolokiloe sesebelisoa: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total litšoantšo tse jarollotsoeng';
  }

  @override
  String get redownloadMissingRepair => 'Lokisa / Khoasolla Ha e eo';

  @override
  String get downloadAction => 'Khoasolla';

  @override
  String get resumeDownload => 'Resume Download';

  @override
  String get deleteDownloadedFiles => 'Hlakola Lifaele tse Jarollotsoeng';

  @override
  String get downloadCancelling => 'E ea hlakola...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Khoasolla e hlakotsoe bakeng sa $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Ho phethela ho khoasolla $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'E felile bakeng sa $reciter ka $failed li-surah tse hlōlehileng ($downloaded/$total li jarollotsoe).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'E hlakotsoe lifaele tse kantle ho Marang-rang tsa $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Mehloli ea molumo e netefalitsoeng ea Quran ha e fumanehe hajoale.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Sephutheloana sa molumo oa Quran se netefalitsoeng ha se ea fella ($available/$total). Hlahisa peo ea leru \'me u leke hape.';
  }

  @override
  String get chatbotHint => 'Botsa potso...';

  @override
  String get chatbotThinking => 'Ho nahana...';

  @override
  String get sukunMixerSubtitle => 'Tlhaho le Motsoako oa Qur\'an';

  @override
  String get audioPlayFailed => 'Ho hloleha ho bapala molumo';

  @override
  String get sukunNatureLabel => 'Sukun (Tlhaho)';

  @override
  String get sukunRainOfMercy => 'Pula ya Mohau';

  @override
  String get sukunGardenOfPeace => 'Serapa sa Khotso';

  @override
  String get sukunMidnightCalm => 'Khutso ea Har\'a mp\'a bosiu';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Sebopeho sa molumo ha se fumanehe';

  @override
  String get sukunUnavailableBody =>
      'Moaho ona ha o kenyelletse matlotlo a hlokahalang a Sukun soundscape hajoale.';

  @override
  String get prayerCompletion => 'Ho Phetha Thapelo';

  @override
  String get streaks => 'Methapo';

  @override
  String get dayStreak => 'Lebelo la letsatsi';

  @override
  String get bestStreak => 'Molemo ka ho fetisisa streak';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'Sebelisa Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Lumella Fallback Offline';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count le tlohile';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API ha e ea hlophisoa. Tataiso e netefalitsoeng ea Maislamo ntle le Marang-rang ha e so fumanehe.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Litaelo tse netefalitsoeng tsa Maislamo tsa lehae ha li so fumanehe. Fetohela ho Cloud AI bakeng sa likarabo tse tsoang mohloling.';

  @override
  String get mosques => 'Mamosleme';

  @override
  String get halalFood => 'Lijo tsa Halal';

  @override
  String get placesSearchArea => 'Batla sebakeng sena';

  @override
  String get nearbyMosques => 'Mesikiti e Haufi';

  @override
  String get islamicSchools => 'Likolo tsa Boislamo';

  @override
  String placesFoundCount(String count) {
    return '$count e fumanoe';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km hole';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Phoso ea API: $statusCode';
  }

  @override
  String get placesNetworkError => 'Phoso ea marang-rang. Ka kopo, leka hape.';

  @override
  String get placesLocationRequiredTitle => 'Ho hlokahala sebaka';

  @override
  String get placesLocationRequiredBody =>
      'Beha sebaka pele e le hore li-mosque tse haufi, lijo tsa halal le likolo tsa Mamoseleme li ka batlisisoa ka nepo.';

  @override
  String get placesMapTilesUnavailableTitle =>
      'Lithaele tsa \'mapa ha li fumanehe';

  @override
  String get placesMapTilesUnavailableBody =>
      'Mohloli o netefalitsoeng oa lithaele ha o so lokisoe molemong oa moaho ona hajoale. Libaka tse haufi li ntse li ka bula ho tsoa sebakeng sa hau se bolokiloeng.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'Lintlha tsa libaka ha li fumanehe';

  @override
  String get placesDataSourceUnavailableBody =>
      'Qetello ea lintlha tsa libaka tse netefalitsoeng ha e so lokisoe molemong oa moaho ona hajoale. Beha PLACES_OVERPASS_API_URL ho moemeli kapa mofani ea lumelletsoeng pele o lumella patlo e haufi.';

  @override
  String get unknownPlaceName => 'Lebitso le sa Tsejweng';

  @override
  String get islamicPlaceFallback => 'Sebaka sa Maislamo';

  @override
  String get asmaMeaning1 => 'Molemohi';

  @override
  String get asmaMeaning2 => 'Ba Mohau';

  @override
  String get asmaMeaning3 => 'Morena / Morena wa ka ho sa Feleng';

  @override
  String get asmaMeaning4 => 'Sehalalelisiso';

  @override
  String get asmaMeaning5 => 'Mohloli oa Khotso';

  @override
  String get asmaMeaning6 => 'Mofani wa Tshireletso';

  @override
  String get asmaMeaning7 => 'Mohlokomedi';

  @override
  String get asmaMeaning8 => 'Ya Bohlokoa / Ea Matla Ka ho Fetisisa';

  @override
  String get asmaMeaning9 => 'Mohatelli';

  @override
  String get asmaMeaning10 => 'E Kholo ka ho Fetisisa';

  @override
  String get asmaMeaning11 => 'Mopi';

  @override
  String get asmaMeaning12 => 'Moetsi oa Tsamaiso';

  @override
  String get asmaMeaning13 => 'Sebōpi sa Botle';

  @override
  String get asmaMeaning14 => 'Ea Tshwarelang';

  @override
  String get asmaMeaning15 => 'The Subduer';

  @override
  String get asmaMeaning16 => 'Mofani oa Tsohle';

  @override
  String get asmaMeaning17 => 'Motshehetsi';

  @override
  String get asmaMeaning18 => 'Sebula';

  @override
  String get asmaMeaning19 => 'Ya Tseba Tsohle';

  @override
  String get asmaMeaning20 => 'Moqhobi';

  @override
  String get asmaMeaning21 => 'Mopholosi';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'Mophahamisi';

  @override
  String get asmaMeaning24 => 'Mofani wa Tlotlo';

  @override
  String get asmaMeaning25 => 'Monyenyetsi';

  @override
  String get asmaMeaning26 => 'Ea Utloang Tsohle';

  @override
  String get asmaMeaning27 => 'Seboni sa Bohle';

  @override
  String get asmaMeaning28 => 'Moahloli';

  @override
  String get asmaMeaning29 => 'Ba lokileng';

  @override
  String get asmaMeaning30 => 'E Bonolo';

  @override
  String get asmaMeaning31 => 'Bohle ba Tseba';

  @override
  String get asmaMeaning32 => 'Moetapele';

  @override
  String get asmaMeaning33 => 'E Hlollang';

  @override
  String get asmaMeaning34 => 'Motshwarelo e Moholo';

  @override
  String get asmaMeaning35 => 'Moputsi wa Teboho';

  @override
  String get asmaMeaning36 => 'E Hodimodimo';

  @override
  String get asmaMeaning37 => 'E Kholo ka ho Fetisisa';

  @override
  String get asmaMeaning38 => 'Mosireletsi';

  @override
  String get asmaMeaning39 => 'Mofepi';

  @override
  String get asmaMeaning40 => 'Mohlahlobi';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'Ea Fana ka seatla se bulehileng';

  @override
  String get asmaMeaning43 => 'Ea Mahlohonolo';

  @override
  String get asmaMeaning44 => 'Ya Arabang Thapelo';

  @override
  String get asmaMeaning45 => 'Kutloisiso Tsohle';

  @override
  String get asmaMeaning46 => 'Ba Bohlale ka ho Fetisisa';

  @override
  String get asmaMeaning47 => 'Moratuwa';

  @override
  String get asmaMeaning48 => 'Ya Tlotlehang ka ho Fetisisa';

  @override
  String get asmaMeaning49 => 'Motsosi';

  @override
  String get asmaMeaning50 => 'Paki';

  @override
  String get asmaMeaning51 => 'Nnete';

  @override
  String get asmaMeaning52 => 'Mookameli ea Itekanetseng';

  @override
  String get asmaMeaning53 => 'Mong\'a Matla \'Ohle';

  @override
  String get asmaMeaning54 => 'E matla';

  @override
  String get asmaMeaning55 => 'Mosireletsi';

  @override
  String get asmaMeaning56 => 'Ba Bokang';

  @override
  String get asmaMeaning57 => 'Mohlahlobi';

  @override
  String get asmaMeaning58 => 'Moqapi';

  @override
  String get asmaMeaning59 => 'Motsoseletsi';

  @override
  String get asmaMeaning60 => 'Mofani wa Bophelo';

  @override
  String get asmaMeaning61 => 'Mophehi';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'Moithati';

  @override
  String get asmaMeaning64 => 'Mohloli';

  @override
  String get asmaMeaning65 => 'Ya Kganya';

  @override
  String get asmaMeaning66 => 'Yena Feela';

  @override
  String get asmaMeaning67 => 'Eona';

  @override
  String get asmaMeaning68 => 'E Batlang Ke Bohle';

  @override
  String get asmaMeaning69 => 'E Matla';

  @override
  String get asmaMeaning70 => 'Mopi wa matla ohle';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'Moeti';

  @override
  String get asmaMeaning73 => 'Ya Pele';

  @override
  String get asmaMeaning74 => 'Ya ho Qetela';

  @override
  String get asmaMeaning75 => 'Ponahatso';

  @override
  String get asmaMeaning76 => 'E Patiloeng';

  @override
  String get asmaMeaning77 => 'Musisi';

  @override
  String get asmaMeaning78 => 'Ya Hodimodimo';

  @override
  String get asmaMeaning79 => 'Moetsi wa ho loka';

  @override
  String get asmaMeaning80 => 'Tlhahlo ya Pako';

  @override
  String get asmaMeaning81 => 'Mopheteletsi';

  @override
  String get asmaMeaning82 => 'Motshwarelo';

  @override
  String get asmaMeaning83 => 'The Clement';

  @override
  String get asmaMeaning84 => 'Mong\'a / \'Musi oa Tsohle';

  @override
  String get asmaMeaning85 => 'Mong\'a Boholo le Bounty';

  @override
  String get asmaMeaning86 => 'E Equitable';

  @override
  String get asmaMeaning87 => 'Mopokelli';

  @override
  String get asmaMeaning88 => 'Morui';

  @override
  String get asmaMeaning89 => 'Morui';

  @override
  String get asmaMeaning90 => 'Sethibelo sa Kotsi';

  @override
  String get asmaMeaning91 => 'E Tlisang Kotsi';

  @override
  String get asmaMeaning92 => 'Mofani wa Melemo';

  @override
  String get asmaMeaning93 => 'Leseli';

  @override
  String get asmaMeaning94 => 'Motataisi';

  @override
  String get asmaMeaning95 => 'Moqapi';

  @override
  String get asmaMeaning96 => 'Ya sa Feleng';

  @override
  String get asmaMeaning97 => 'Mojalefa';

  @override
  String get asmaMeaning98 => 'Motataisi ea lokileng ka ho Fetisisa';

  @override
  String get asmaMeaning99 => 'Mokudi';
}
