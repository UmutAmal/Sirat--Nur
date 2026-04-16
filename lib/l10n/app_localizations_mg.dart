// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malagasy (`mg`).
class AppLocalizationsMg extends AppLocalizations {
  AppLocalizationsMg([String locale = 'mg']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Lalam-pahazavana Islamika';

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
  String get sunrise => 'Fiposahan\'ny masoandro';

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
    return 'Fotoana hanaovana $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Fotoana hivavahana $prayerName izao.';
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
  String get systemDefault => 'System Default';

  @override
  String get currentLocation => 'Current Location (GPS)';

  @override
  String get locationServiceDisabled => 'Tsy miasa ny serivisy toerana.';

  @override
  String get locationPermissionDenied => 'Nolavina ny fahazoan-dàlana toerana.';

  @override
  String get locationDetectionFailed =>
      'Tsy hita ny toerana misy anao. Misafidiana tanàna iray azafady na andramo indray.';

  @override
  String citiesCount(String count) {
    return '$count tanàna';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'Tsy misy valiny hita';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get appErrorOccurred => 'Nisy hadisoana nitranga';

  @override
  String get appUnknownError => 'Error tsy fantatra';

  @override
  String get quranLoadFailed =>
      'Tsy azo nalaina ny votoatin\'ny CORAN. Andramo indray azafady.';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Havaozina';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Fafao';

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
  String get tafsirLoading => 'Loading ny tafsir...';

  @override
  String get tafsirSourceLabel => 'Loharanon\'ny Tafsir';

  @override
  String get tafsirNoSurahFound => 'Tsy nisy tafsir hita tamin\'ity surah ity.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'No tafsir found for ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tsy azo nalaina ny Tafsir.';

  @override
  String get tafsirNoTextForAyah =>
      'Tsy misy soratra tafsir ho an\'ity andininy ity.';

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
    return 'Ny loharanon\'ny Tafsir dia namerina hadisoana HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Ny loharanon\'ny tafsir nofantenana dia tsy naveriny.';

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
      'ny sasany mivavaka hoe: ‘Ry Tomponay, omeo soa izahay eto amin’izao tontolo izao sy any an-koatra, ary arovy amin’ny fampijalian’ny Afo izahay.';

  @override
  String get duaMeaning2 =>
      'Andriamanitra dia tsy mahavesatra ny fanahy mihoatra noho izay zakany: samy mahazo izay soa vitany ny tsirairay, ary miaritra ny faharatsiany- ‘Tompo ô, aza manadino anay, na manao fahadisoana izahay. Tompo ô, aza manavesatra anay tahaka ny nanasanao entana ireo teo alohanay. Tompo ô, aza manavesatra anay mihoatra noho izay zakanay. Mamelà anay, mamelà anay, ary mamindrà fo aminay. Ianao no Mpiaro anay, koa ampio izahay hanohitra ireo tsy mpino.';

  @override
  String get duaMeaning3 =>
      '‘Ry Tomponay, aza avela hivily ny fonay rehefa avy nitari-dalana anay Ianao. Omeo anay ny famindram-ponao: Ianao no Mpanome mandrakizay.';

  @override
  String get duaMeaning4 =>
      'Tompo ô, omeo ahy sy ny taranako ny mivavaka. Tomponay ô, ekeo ny fangatahako.';

  @override
  String get duaMeaning5 =>
      'ary ampidino amin’ny fanetren-tena ny elatrao aminy amim-pitiavana, ka ataovy hoe: ‘Tompo ô, mamindrà fo aminy, tahaka ny nikarakarany ahy fony aho mbola kely.';

  @override
  String get duaMeaning6 =>
      'asandratra anie Andriamanitra, Izay mahafehy tokoa. [Mpaminany], aza maika ny mitanisa alohan’ny fahafenoan’ny fanambarana fa lazao hoe: ‘Tompo ô, ampitomboy fahalalana aho!’';

  @override
  String get duaMeaning7 =>
      'Lazao [ny Mpaminany] hoe: ‘Tompo ô, mamelà heloka sy mamindrà fo: Hianao no mamindra fo indrindra amin’izy rehetra.’';

  @override
  String get duaMeaning8 =>
      'ireo izay mivavaka hoe: ‘Ry Tomponay, omeo fifaliana izahay amin’ny vadinay sy ny taranakay. Ataovy ohatra tsara ho an’izay mahalala Anao izahay’.';

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
  String get hadith => 'hadita';

  @override
  String get hadithCollection => 'Fanangonana Hadith';

  @override
  String get hadithBooks => 'Boky Hadith';

  @override
  String get searchHadith => 'Search Hadith';

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
  String get openInYoutube => 'Sokafy amin\'ny YouTube';

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
  String get islamicNewYear => 'Taom-baovao Islamika';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadany';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadany';

  @override
  String get specialDayDateEidAlFitr => '1 Syawal';

  @override
  String get specialDayDateEidAlAdha => '10 Dzulhijjah';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharram';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabiul Awwal';

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
    return 'Error compass: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Tsy misy sensor compass amin\'ity fitaovana ity.';

  @override
  String get qiblaLocationRequiredTitle => 'Toerana ilaina amin\'ny Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Apetraho ny toerana misy anao alohan\'ny hampiasana ny kompas Qibla mba ho azo kajy tsara ny lalana.';

  @override
  String get adhanNotificationChannelName => 'Adhan Notifications';

  @override
  String get adhanNotificationChannelDescription =>
      'Fampandrenesana ny fotoam-bavaka miaraka amin\'ny feon\'ny adhan.';

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
  String get theme => 'Theme';

  @override
  String get lightMode => 'Light Mode';

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
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Download feno';

  @override
  String get downloadFailed => 'Tsy nahomby ny fampidinana';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'Tsy misy fifandraisana Internet';

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
  String get tapToCount => 'Tap to count';

  @override
  String get zikrCompletedMashAllah => 'Vita! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'I Allah dia ambony lavitra noho ny tsy fahatanterahana rehetra.';

  @override
  String get zikrMeaningAlhamdulillah => 'An\'i Allah ny dera rehetra.';

  @override
  String get zikrMeaningAllahuAkbar => 'I Allah no lehibe indrindra.';

  @override
  String get zikrMeaningLaIlahaIllallah =>
      'Tsy misy andriamanitra afa-tsy Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Mangataka ny famelan\'i Allah aho.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Tsy misy hery sy hery afa-tsy amin’ny alalan’i Allah.';

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
  String get freeStorage => 'Afaho ny fitahirizana fitaovana anatiny.';

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
  String get audioVoice => 'Feo Audio';

  @override
  String get audioVoiceMisharyAlafasy => 'Lahy (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Lehilahy (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Lahy (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Qibla calibration';

  @override
  String get compassSmoothing => 'Compass Smoothing';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Kalibration Offset';

  @override
  String currentOffset(Object offset) {
    return 'Current: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Ahitsio raha mila fanitsiana amin\'ny tanana ny kompaso. Mihodina manaraky ny famantaranandro ny sanda tsara.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Diagnostics';

  @override
  String get diagnosticsNotSet => 'Tsy napetraka';

  @override
  String get diagnosticsPrayerProfile => 'mombamomba ny vavaka';

  @override
  String get diagnosticsPrayerSource => 'Fahefana Vavaka';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Zoro fanao amin\'ny tanana (tsy misy loharano andrim-panjakana)';

  @override
  String get diagnosticsCloudDriven => 'Cloud Driven';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Korana Audio Assets';

  @override
  String get diagnosticsAudioAssets => 'Audio Assets';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count rakitra';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Tsy nahomby ny famakiana ny endrika: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Localization Locales';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count tohanana';
  }

  @override
  String get diagnosticsQuranDataset => 'Takelaka data Quran';

  @override
  String get diagnosticsQuranSurahs => 'Quran Surahs';

  @override
  String get diagnosticsQuranAyahs => 'Quran Ayahs';

  @override
  String get diagnosticsQuranJuzMetadata => 'Quran Juz Metadata';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Tabilao rahona tsy hita ao Supabase; mitambatra fallback mavitrika';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Tsy nahomby ny fisavana rahona: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz metadata tsy hita; mitambatra structural fallback mavitrika';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Tsy nahomby ny fisavana rafitra rahona: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Ilaina ny calibration. Ahodina ny fitaovana amin\'ny sary-8.';

  @override
  String get dailyVerse => 'Andininy isan\'andro';

  @override
  String get todaysIbadah => 'Ibadah anio';

  @override
  String get quickAccess => 'Fidirana haingana';

  @override
  String get assistant => 'mpanampy';

  @override
  String get places => 'TOERAM';

  @override
  String get library => '-BOKIN\'NY Vavolombelon\'i Jehovah';

  @override
  String get analytics => 'Analytics';

  @override
  String get dailyDuas => 'Daily Duas';

  @override
  String essentialDuas(String count) {
    return '$count essential duas';
  }

  @override
  String get duaUnavailableTitle => 'Tsy mbola misy ny roa voamarina';

  @override
  String get duaUnavailableBody =>
      'Ny duas isan\'andro voamarina dia tsy mbola narindra tamin\'ity fitaovana ity. Ampifandraiso amin\'ny loharanon-drahona mba hametahana ny roa avy amin\'ny loharano fa tsy fiverenana tsy voamarina.';

  @override
  String get duaCategoryQuranic => 'Quranic dua';

  @override
  String get duaCategoryMorningEvening => 'Maraina & hariva';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'MIARO';

  @override
  String get duaCategoryBeginning => 'fiandohana';

  @override
  String get duaCategorySleep => 'torimaso';

  @override
  String get duaCategoryFoodDrink => 'Sakafo sy zava-pisotro';

  @override
  String get duaCategoryForgiveness => 'Famelan-keloka';

  @override
  String get duaCategoryHome => 'an-trano';

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
  String get islamicEducation => 'Fampianarana Islamika';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Fanangonana Hadith';

  @override
  String get hadithSourcePending => 'Loharano voamarina miandry';

  @override
  String get hadithUnavailableTitle =>
      'Tsy mbola misy ny fanangonana hadita voamarina';

  @override
  String get hadithUnavailableBody =>
      'Mbola miankina amin\'ny fahana hadita ivelany tsy voamarina io fananganana io. Mijanona ho kilemaina ny fitetezana Hadith mandra-pirindran\'ny angon-drakitra misy loharano iray.';

  @override
  String get paywallUnlockAll =>
      'Sokafy ny endri-javatra rehetra ho an\'ny dianao ara-panahy';

  @override
  String get premiumProductUnavailable =>
      'Ny vokatra Premium dia tsy misy amin\'izao fotoana izao. Andramo indray rahatrizay.';

  @override
  String get premiumPurchaseFailed =>
      'Tsy vita ny fividianana. Andramo indray azafady.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'Q&A tsy misy fetran\'ny AI';

  @override
  String get paywallFeature2Title => 'Tsy voafetra an-tserasera';

  @override
  String get paywallFeature2Desc => 'Ampidino ny recitations rehetra';

  @override
  String get paywallFeature3Title => 'Designs Exclusive';

  @override
  String get paywallFeature3Desc => 'Lohahevitra sy endri-tsoratra Premium';

  @override
  String get paywallFeature4Title => 'Tsy misy doka';

  @override
  String get paywallFeature4Desc => 'Dokam-barotra aotra';

  @override
  String get paywallGetAccess =>
      'Mahazoa fidirana mandritra ny androm-piainana — \$1.00';

  @override
  String get restorePurchases => 'Avereno ny fividianana';

  @override
  String get zakatCalculator => 'Zakat Calculator';

  @override
  String get zakatGold => 'Volamena (Altın)';

  @override
  String get zakatSilver => 'Volafotsy (Gümüş)';

  @override
  String get zakatCashBank => 'Vola / Banky';

  @override
  String get zakatBusiness => 'raharaham-barotra';

  @override
  String get zakatInvestments => 'fampiasam-bola';

  @override
  String get zakatWeightGrams => 'Lanja (g)';

  @override
  String get zakatPricePerGram => 'Vidiny/g';

  @override
  String get zakatTotalAmount => 'Fitambarany';

  @override
  String get zakatInventoryValue => 'Sandan\'ny fitahirizana';

  @override
  String get zakatDebts => 'trosa';

  @override
  String get zakatTotal => 'sokajy';

  @override
  String get calculateZakat => 'Kajy Zakat';

  @override
  String get nisabNotReached => 'Nisab tsy tonga. Tsy voatery ny Zakat.';

  @override
  String get totalZakat => 'Total Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakat volamena';

  @override
  String get zakatSilverZakat => 'Zakat volafotsy';

  @override
  String get zakatCashZakat => 'Zakat vola';

  @override
  String get zakatBusinessZakat => 'Business Zakat';

  @override
  String get zakatInvestmentZakat => 'Zakat fampiasam-bola';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! Mpanampy Islamika anao aho. Anontanio ahy ny momba ny vavaka, ny fifadian-kanina, ny zakat, na izay lohahevitra silamo.';

  @override
  String get chatbotLimitReached =>
      'Tonga ny fetran\'ny fangatahana isan\'andro. Hanavao ny Premium ho tsy voafetra.';

  @override
  String get chatbotErrorMsg =>
      'Tsy afaka namorona valiny aho. Andramo indray azafady.';

  @override
  String get chatbotOfflinePrompt =>
      'Mbola karakaraina ny toby fahalalana Islamika ivelan\'ny aterineto voamarina. Azonao atao ny mamela ny fiverenana an-tserasera amin\'izao fotoana izao, fa ireo hafatra azo antoka voafetra ihany no hanehoana azy mandra-pahavitan\'ny angon-drakitra nalaina.\n\nTe-hanalefa ny fiverenana an-tserasera ve ianao?';

  @override
  String get chatbotOfflineSwitched =>
      'Nalefa ny fiverenana an-tserasera. Tsy mbola vonona ny valinteny islamika voamarina ao an-toerana.';

  @override
  String get chatbotOfflineDownloadLabel => 'Alefaso ny Fallback an-tserasera';

  @override
  String get downloadPreparing => 'Manomana fampidinana...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Downloading surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Ny surah rehetra dia efa alaina ho an\'ity reciter ity.';

  @override
  String get offlineQuranAudioPacks => 'Koran Audio Packs an-tserasera';

  @override
  String storedOnDeviceMb(String size) {
    return 'Voatahiry amin\'ny fitaovana: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surahs downloaded';
  }

  @override
  String get redownloadMissingRepair => 'Repair / Download Tsy hita';

  @override
  String get downloadAction => 'Download';

  @override
  String get resumeDownload => 'Resume Download';

  @override
  String get deleteDownloadedFiles => 'Fafao ny rakitra voasintona';

  @override
  String get downloadCancelling => 'Manafoana...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Nofoanana ny fampidinana noho ny $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Vita ny fampidinana ho an\'ny $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Vita ny fampidinana ho an\'ny $reciter miaraka amin\'ny $failed surah tsy nahomby ($downloaded/$total alaina).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Voafafa ny rakitra an-tserasera ho an\'ny $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Loharanom-peo Quran voamarina dia tsy misy amin\'izao fotoana izao.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Ny fonosan-peo Quran voamarina dia tsy feno ($available/$total). Havaozy ny voa rahona ary andramo indray.';
  }

  @override
  String get chatbotHint => 'Mametraha fanontaniana...';

  @override
  String get chatbotThinking => 'Mieritreritra...';

  @override
  String get sukunMixerSubtitle => 'Nature & Coran Mixer';

  @override
  String get audioPlayFailed => 'Tsy nahomby ny famerenam-peo';

  @override
  String get sukunNatureLabel => 'Sukun (Natiora)';

  @override
  String get sukunRainOfMercy => 'Ranon\'ny famindram-po';

  @override
  String get sukunGardenOfPeace => 'Zaridaina fiadanana';

  @override
  String get sukunMidnightCalm => 'Mamatonalina tony';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Soundscapes tsy misy';

  @override
  String get sukunUnavailableBody =>
      'Ity fananganana ity dia tsy mbola ahitana ny fananana Sukun soundscape ilaina.';

  @override
  String get prayerCompletion => 'Vavaka vita';

  @override
  String get streaks => 'vandana';

  @override
  String get dayStreak => 'Andro streak';

  @override
  String get bestStreak => 'Fitsipika tsara indrindra';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Fallback an-tserasera';

  @override
  String get chatbotUseCloudAi => 'Mampiasà Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Alefaso ny Fallback an-tserasera';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API dia tsy voarindra. Tsy mbola misy ny fitarihana Islamika an-tserasera voamarina.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Tsy mbola misy ny fitarihana Islamika ao an-toerana voamarina. Miverena any amin\'ny Cloud AI hahazoana valiny azo avy amin\'ny loharano.';

  @override
  String get mosques => 'moskea';

  @override
  String get halalFood => 'Sakafo Halal';

  @override
  String get placesSearchArea => 'Tadiavo ity faritra ity';

  @override
  String get nearbyMosques => 'Moske akaiky';

  @override
  String get islamicSchools => 'Sekoly Islamika';

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
    return 'Error API: $statusCode';
  }

  @override
  String get placesNetworkError =>
      'Fahadisoan\'ny tambajotra. Andramo indray azafady.';

  @override
  String get placesLocationRequiredTitle => 'Toerana ilaina';

  @override
  String get placesLocationRequiredBody =>
      'Mametraha toerana aloha mba ho azo karohina tsara ny moske manodidina, ny sakafo halal ary ny sekoly Islamika.';

  @override
  String get placesMapTilesUnavailableTitle => 'Tsy hita ny taila sari-tany';

  @override
  String get placesMapTilesUnavailableBody =>
      'Mbola tsy voarafitra ho an\'ity fananganana ity ny loharano misy sarintany voamarina. Mbola afaka misintona avy amin\'ny toerana voatahiry ny toerana akaiky anao.';

  @override
  String get placesDataSourceUnavailableTitle => 'Tsy misy angona toerana';

  @override
  String get placesDataSourceUnavailableBody =>
      'Mbola tsy voafefy ho an\'ity fananganana ity ny tondro fiafaran\'ny angona toerana voamarina. Mametraha PLACES_OVERPASS_API_URL amin\'ny proxy na mpanome ankatoavina alohan\'ny handefasana ny fikarohana eo akaiky eo.';

  @override
  String get unknownPlaceName => 'Anarana tsy fantatra';

  @override
  String get islamicPlaceFallback => 'Toerana Islamika';

  @override
  String get asmaMeaning1 => 'Ilay Mahasoa';

  @override
  String get asmaMeaning2 => 'Ilay Mamindra fo';

  @override
  String get asmaMeaning3 => 'Ny Mpanjaka / Tompo mandrakizay';

  @override
  String get asmaMeaning4 => 'Ny Masina Indrindra';

  @override
  String get asmaMeaning5 => 'Ny Loharanon\'ny Fiadanana';

  @override
  String get asmaMeaning6 => 'Ilay Mpanome Fiarovana';

  @override
  String get asmaMeaning7 => 'Ilay Mpiambina';

  @override
  String get asmaMeaning8 => 'Ilay Sarobidy / Ilay Mahery Indrindra';

  @override
  String get asmaMeaning9 => 'The Compeller';

  @override
  String get asmaMeaning10 => 'Ny lehibe indrindra';

  @override
  String get asmaMeaning11 => 'Ny Mpahary';

  @override
  String get asmaMeaning12 => 'Ilay Mpamorona ny filaminana';

  @override
  String get asmaMeaning13 => 'Ilay Mpamorona ny hatsaran-tarehy';

  @override
  String get asmaMeaning14 => 'Ilay Mamela heloka';

  @override
  String get asmaMeaning15 => 'Ilay Mpandresy';

  @override
  String get asmaMeaning16 => 'Ilay Mpanome ny Rehetra';

  @override
  String get asmaMeaning17 => 'Ilay Mpiandry';

  @override
  String get asmaMeaning18 => 'Ny fanokafana';

  @override
  String get asmaMeaning19 => 'Ilay Mahalala ny Rehetra';

  @override
  String get asmaMeaning20 => 'The Constrictor';

  @override
  String get asmaMeaning21 => 'Ilay Mpanamaivana';

  @override
  String get asmaMeaning22 => 'Ny Abaser';

  @override
  String get asmaMeaning23 => 'Ilay Mpanandratra';

  @override
  String get asmaMeaning24 => 'Ilay Mpanome voninahitra';

  @override
  String get asmaMeaning25 => 'Ilay mpametraka';

  @override
  String get asmaMeaning26 => 'Mpihaino ny Rehetra';

  @override
  String get asmaMeaning27 => 'Ilay Mpahita ny Rehetra';

  @override
  String get asmaMeaning28 => 'Ny Mpitsara';

  @override
  String get asmaMeaning29 => 'Ny Marina';

  @override
  String get asmaMeaning30 => 'Ilay Matsilo';

  @override
  String get asmaMeaning31 => 'Ny Mahafantatra Rehetra';

  @override
  String get asmaMeaning32 => 'Ny Fitondrana';

  @override
  String get asmaMeaning33 => 'Ilay Lehibe';

  @override
  String get asmaMeaning34 => 'Ilay Mpamela heloka lehibe';

  @override
  String get asmaMeaning35 => 'Ilay Mpamaly soa ny Fisaorana';

  @override
  String get asmaMeaning36 => 'Ny Avo indrindra';

  @override
  String get asmaMeaning37 => 'Ny lehibe indrindra';

  @override
  String get asmaMeaning38 => 'Ilay Mpiaro';

  @override
  String get asmaMeaning39 => 'Ilay Mpiandry';

  @override
  String get asmaMeaning40 => 'Ny Mpisaisa';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'Ilay malala-tanana';

  @override
  String get asmaMeaning43 => 'Ilay Miambena';

  @override
  String get asmaMeaning44 => 'Ilay Mpamaly vavaka';

  @override
  String get asmaMeaning45 => 'Ny Mahatakatra ny Rehetra';

  @override
  String get asmaMeaning46 => 'Ilay Hendry Lavorary';

  @override
  String get asmaMeaning47 => 'Ilay be Fitiavana';

  @override
  String get asmaMeaning48 => 'Ilay be voninahitra indrindra';

  @override
  String get asmaMeaning49 => 'Ilay Mpanangana';

  @override
  String get asmaMeaning50 => 'Ny Vavolombelona';

  @override
  String get asmaMeaning51 => 'Ny Fahamarinana';

  @override
  String get asmaMeaning52 => 'Ilay Mpandraharaha Ampy';

  @override
  String get asmaMeaning53 => 'Ilay manana ny hery rehetra';

  @override
  String get asmaMeaning54 => 'Ny Hery';

  @override
  String get asmaMeaning55 => 'Ilay Mpiaro';

  @override
  String get asmaMeaning56 => 'Ilay Noderaina';

  @override
  String get asmaMeaning57 => 'Ny mpandinika';

  @override
  String get asmaMeaning58 => 'Ilay Mpamorona';

  @override
  String get asmaMeaning59 => 'Ilay Mpampody';

  @override
  String get asmaMeaning60 => 'Ilay Mpanome Aina';

  @override
  String get asmaMeaning61 => 'Ilay Mpanala Aina';

  @override
  String get asmaMeaning62 => 'Ilay Velona Mandrakizay';

  @override
  String get asmaMeaning63 => 'Ilay Mpiandry tena';

  @override
  String get asmaMeaning64 => 'Ilay Mpitady';

  @override
  String get asmaMeaning65 => 'Ilay Be voninahitra';

  @override
  String get asmaMeaning66 => 'Ilay Tokana';

  @override
  String get asmaMeaning67 => 'Ilay iray';

  @override
  String get asmaMeaning68 => 'Ilay tadiavin\'ny rehetra';

  @override
  String get asmaMeaning69 => 'Ilay Mahery';

  @override
  String get asmaMeaning70 => 'Ilay Mpahary ny hery rehetra';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'Ny fanemorana';

  @override
  String get asmaMeaning73 => 'Ny Voalohany';

  @override
  String get asmaMeaning74 => 'Ny Farany';

  @override
  String get asmaMeaning75 => 'Ny fisehoana';

  @override
  String get asmaMeaning76 => 'Ny miafina';

  @override
  String get asmaMeaning77 => 'Ny Governora';

  @override
  String get asmaMeaning78 => 'Ilay Avo Indrindra';

  @override
  String get asmaMeaning79 => 'Ilay Mpanao ny Tsara';

  @override
  String get asmaMeaning80 => 'Ny Torolalana ho an\'ny Fibebahana';

  @override
  String get asmaMeaning81 => 'Ilay mpamaly faty';

  @override
  String get asmaMeaning82 => 'Ilay Mpamela heloka';

  @override
  String get asmaMeaning83 => 'The Clement';

  @override
  String get asmaMeaning84 => 'Ny Tompo / Tompon\'ny Rehetra';

  @override
  String get asmaMeaning85 => 'Ilay manana ny voninahitra sy ny hasoavana';

  @override
  String get asmaMeaning86 => 'Ilay Mitovy';

  @override
  String get asmaMeaning87 => 'Ilay Mpamory';

  @override
  String get asmaMeaning88 => 'Ilay mpanankarena';

  @override
  String get asmaMeaning89 => 'Ilay Mpankarena';

  @override
  String get asmaMeaning90 => 'Ilay Misoroka ny loza';

  @override
  String get asmaMeaning91 => 'Ilay Mpitondra Loza';

  @override
  String get asmaMeaning92 => 'Ilay Mpanome Tombontsoa';

  @override
  String get asmaMeaning93 => 'Ny Fahazavana';

  @override
  String get asmaMeaning94 => 'Ilay Mpitarika';

  @override
  String get asmaMeaning95 => 'Ilay Mpahary';

  @override
  String get asmaMeaning96 => 'Ilay Mandrakizay';

  @override
  String get asmaMeaning97 => 'Ny mpandova';

  @override
  String get asmaMeaning98 => 'Ilay Mpitarika Marina indrindra';

  @override
  String get asmaMeaning99 => 'Ilay marary';
}
