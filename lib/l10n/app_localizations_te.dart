// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'ఇస్లామిక్ వే ఆఫ్ లైట్';

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
  String get fajr => 'ఫజర్';

  @override
  String get sunrise => 'సూర్యోదయం';

  @override
  String get dhuhr => 'ధుర్';

  @override
  String get asr => 'అసర్';

  @override
  String get maghrib => 'మగ్రిబ్';

  @override
  String get isha => 'ఇషా';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName కోసం సమయం';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'ఇది $prayerName ప్రార్థన చేయడానికి సమయం.';
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
  String get locationServiceDisabled => 'స్థాన సేవ నిలిపివేయబడింది.';

  @override
  String get locationPermissionDenied => 'స్థాన అనుమతి నిరాకరించబడింది.';

  @override
  String citiesCount(String count) {
    return '$count నగరాలు';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'ఫలితాలు ఏవీ కనుగొనబడలేదు';

  @override
  String get loading => 'లోడ్ అవుతోంది...';

  @override
  String get error => 'లోపం';

  @override
  String get appErrorOccurred => 'ఒక లోపం సంభవించింది';

  @override
  String get appUnknownError => 'తెలియని లోపం';

  @override
  String get quranLoadFailed =>
      'ఖురాన్ కంటెంట్ లోడ్ చేయబడలేదు. దయచేసి మళ్లీ ప్రయత్నించండి.';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'రిఫ్రెష్ చేయండి';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'తొలగించు';

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
    return 'అయ్యా $ayah';
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
  String get tafsirLoading => 'తఫ్సీర్ లోడ్ అవుతోంది...';

  @override
  String get tafsirSourceLabel => 'తఫ్సీర్ మూలం';

  @override
  String get tafsirNoSurahFound => 'ఈ సూరా కోసం తఫ్సీర్ కనుగొనబడలేదు.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'అయా $ayah కోసం తఫ్సీర్ కనుగొనబడలేదు.';
  }

  @override
  String get tafsirLoadFailed => 'తఫ్సీర్ లోడ్ కాలేదు.';

  @override
  String get tafsirNoTextForAyah => 'ఈ అయాకు తఫ్సీర్ వచనం లేదు.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'తఫ్సీర్ డౌన్‌లోడ్ చేస్తోంది $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'తఫ్సీర్ లోడ్ అవుతోంది $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir మూలం HTTP $statusCode లోపాన్ని అందించింది.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'ఎంచుకున్న తఫ్సీర్ మూలం ఎలాంటి ఎంట్రీలను అందించలేదు.';

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
      'మరికొందరు, ‘మా ప్రభూ, మాకు ఇహలోకంలో మరియు పరలోకంలో మంచిని ప్రసాదించు, మరియు అగ్ని యొక్క వేదన నుండి మమ్మల్ని రక్షించు’ అని ప్రార్థిస్తారు.';

  @override
  String get duaMeaning2 =>
      'దేవుడు ఏ ఆత్మపైనా అది భరించగలిగే దానికంటే ఎక్కువ భారం వేయడు: ప్రతి ఒక్కరూ తాను చేసిన మంచిని పొందుతాడు మరియు దాని చెడును అనుభవిస్తాడు- ‘ప్రభూ, మేము మరచిపోయినా లేదా తప్పులు చేసినా మమ్మల్ని శిక్షించవద్దు. ప్రభూ, మా ముందున్న వారిపై భారం మోపినట్లు మాపై భారం వేయకు. ప్రభూ, మాకు భరించే శక్తి కంటే ఎక్కువ భారం వేయకు. మమ్మల్ని క్షమించు, క్షమించు మరియు మాపై దయ చూపండి. నువ్వే మా రక్షకుడివి, కాబట్టి అవిశ్వాసులకు వ్యతిరేకంగా మాకు సహాయం చెయ్యి.’';

  @override
  String get duaMeaning3 =>
      '‘మా ప్రభూ, నీవు మాకు మార్గనిర్దేశం చేసిన తర్వాత మా హృదయాలను విడదీయకు. నీ దయను మాకు ప్రసాదించు: నువ్వే ఎప్పటికీ ఇచ్చేవాడివి.';

  @override
  String get duaMeaning4 =>
      'ప్రభూ, నేను మరియు నా సంతానం ప్రార్థనను కొనసాగించేలా అనుగ్రహించు. మా ప్రభూ, నా అభ్యర్థనను అంగీకరించండి.';

  @override
  String get duaMeaning5 =>
      'మరియు దయతో వారి పట్ల వినయంతో మీ రెక్కలను తగ్గించి, \'ప్రభూ, నేను చిన్నగా ఉన్నప్పుడు వారు నన్ను ఎలా చూసుకున్నారో వారిపై దయ చూపండి\' అని చెప్పండి.';

  @override
  String get duaMeaning6 =>
      'నిజంగా నియంత్రణలో ఉన్న దేవుడు గొప్పవాడు. [ప్రవక్త], ద్యోతకం పూర్తిగా పూర్తికాకముందే పఠించడానికి తొందరపడకండి, ‘ప్రభూ, నాకు జ్ఞానాన్ని పెంచు!’ అని చెప్పండి.';

  @override
  String get duaMeaning7 =>
      '[ప్రవక్త], ‘ప్రభూ, క్షమించు మరియు దయ చూపు: నీవు అందరికంటే దయగలవాడివి’ అని చెప్పండి.';

  @override
  String get duaMeaning8 =>
      'ప్రార్థించే వారు, \'మా ప్రభూ, మా భార్యాభర్తలు మరియు సంతానంలో మాకు సంతోషాన్ని ప్రసాదించు. మీ గురించి అవగాహన ఉన్నవారికి మమ్మల్ని మంచి ఉదాహరణగా చేయండి.';

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
  String get hadith => 'హదీసు';

  @override
  String get hadithCollection => 'హదీథ్ సేకరణ';

  @override
  String get hadithBooks => 'హదీసు పుస్తకాలు';

  @override
  String get searchHadith => 'హదీథ్‌లను శోధించండి';

  @override
  String get asmaulHusna => 'అస్మా-ఉల్-హుస్నా';

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
  String get openInYoutube => 'YouTubeలో తెరవండి';

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
    return '${hours}h $minutesని';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '$minutesని';
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
  String get islamicNewYear => 'ఇస్లామిక్ నూతన సంవత్సరం';

  @override
  String get mawlidAnNabi => 'మవ్లీద్ అన్-నబీ';

  @override
  String get specialDayDateRamadanStart => '1 రంజాన్';

  @override
  String get specialDayDateLaylatAlQadr => '27 రంజాన్';

  @override
  String get specialDayDateEidAlFitr => '1 షవ్వాల్';

  @override
  String get specialDayDateEidAlAdha => '10 దుల్ హిజ్జా';

  @override
  String get specialDayDateIslamicNewYear => '1 మొహర్రం';

  @override
  String get specialDayDateMawlidAnNabi => '12 రబీ అల్-అవ్వల్';

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
    return 'కంపాస్ లోపం: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'ఈ పరికరంలో కంపాస్ సెన్సార్ అందుబాటులో లేదు.';

  @override
  String get adhanNotificationChannelName => 'అధాన్ నోటిఫికేషన్‌లు';

  @override
  String get adhanNotificationChannelDescription =>
      'అధాన్ ధ్వనితో ప్రార్థన సమయ హెచ్చరికలు.';

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
    return '$appNameని తనిఖీ చేయండి: అంతిమ ఇస్లామిక్ జీవనశైలి యాప్! $url';
  }

  @override
  String get downloadManager => 'డౌన్‌లోడ్ మేనేజర్';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'డౌన్‌లోడ్ పూర్తయింది';

  @override
  String get downloadFailed => 'డౌన్‌లోడ్ విఫలమైంది';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'ఇంటర్నెట్ కనెక్షన్ లేదు';

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
  String get zikrCompletedMashAllah => 'పూర్తయింది! మాషాఅల్లాహ్';

  @override
  String get zikrMeaningSubhanAllah =>
      'అల్లాహ్ ప్రతి అసంపూర్ణత కంటే చాలా ఎక్కువ.';

  @override
  String get zikrMeaningAlhamdulillah => 'అన్ని ప్రశంసలు అల్లాహ్‌కే చెందుతాయి.';

  @override
  String get zikrMeaningAllahuAkbar => 'అల్లాహ్ గొప్పవాడు.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'అల్లా తప్ప మరే దేవుడు లేడు.';

  @override
  String get zikrMeaningAstaghfirullah => 'నేను అల్లాహ్ క్షమాపణ కోరుతున్నాను.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'అల్లాహ్ ద్వారా తప్ప శక్తి మరియు బలం లేదు.';

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
  String get offlineDownloadManager => 'ఆఫ్‌లైన్ డౌన్‌లోడ్ మేనేజర్';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Free up internal device storage.';

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
  String missingEnglish(Object count) {
    return 'Missing English: $count';
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
  String get audioVoice => 'ఆడియో వాయిస్';

  @override
  String get audioVoiceMisharyAlafasy => 'పురుషుడు (మిషరీ అలఫాసీ)';

  @override
  String get audioVoiceAbdulBaset => 'మగ (అబ్దుల్ బాసెట్)';

  @override
  String get audioVoiceSudais => 'మగ (సుడైస్)';

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
    return 'Current: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Adjust if your compass needs a manual correction. Positive values rotate clockwise.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Diagnostics';

  @override
  String get diagnosticsNotSet => 'సెట్ కాలేదు';

  @override
  String get diagnosticsPrayerProfile => 'ప్రార్థన ప్రొఫైల్';

  @override
  String get diagnosticsPrayerSource => 'ప్రార్థన అధికారం';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'అనుకూలం / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'మాన్యువల్ అనుకూల కోణాలు (సంస్థాగత మూలం లేదు)';

  @override
  String get diagnosticsCloudDriven => 'క్లౌడ్ నడిచేది';

  @override
  String get diagnosticsAdhanAudioAssets => 'అధాన్ ఆడియో ఆస్తులు';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'ఖురాన్ ఆడియో ఆస్తులు';

  @override
  String get diagnosticsAudioAssets => 'ఆడియో ఆస్తులు';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count ఫైల్‌లు';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'మానిఫెస్ట్ చదవడం విఫలమైంది: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'స్థానికీకరణ లొకేల్స్';

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
      'సుపాబేస్‌లో క్లౌడ్ పట్టికలు లేవు; బండిల్ ఫాల్‌బ్యాక్ యాక్టివ్';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'క్లౌడ్ జుజ్ మెటాడేటా లేదు; బండిల్డ్ స్ట్రక్చరల్ ఫాల్‌బ్యాక్ యాక్టివ్';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Cloud structural check failed: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Calibration required. Rotate device in figure-8.';

  @override
  String get dailyVerse => 'రోజువారీ పద్యం';

  @override
  String get todaysIbadah => 'నేటి ఇబాదా';

  @override
  String get quickAccess => 'త్వరిత యాక్సెస్';

  @override
  String get assistant => 'సహాయకుడు';

  @override
  String get places => 'స్థలాలు';

  @override
  String get library => 'లైబ్రరీ';

  @override
  String get analytics => 'విశ్లేషణలు';

  @override
  String get dailyDuas => 'రోజువారీ దువాస్';

  @override
  String essentialDuas(String count) {
    return '$count అవసరమైన దువాస్';
  }

  @override
  String get duaUnavailableTitle => 'ధృవీకరించబడిన దువాలు ఇంకా అందుబాటులో లేవు';

  @override
  String get duaUnavailableBody =>
      'ధృవీకరించబడిన రోజువారీ దువాలు ఇంకా ఈ పరికరానికి సమకాలీకరించబడలేదు. ధృవీకరించని ఫాల్‌బ్యాక్‌కు బదులుగా మూలాధారమైన దువాలను లోడ్ చేయడానికి క్లౌడ్ సోర్స్‌కి కనెక్ట్ చేయండి.';

  @override
  String get duaCategoryQuranic => 'ఖురాన్ దువా';

  @override
  String get duaCategoryMorningEvening => 'ఉదయం & సాయంత్రం';

  @override
  String get duaCategoryTasbih => 'తస్బిహ్';

  @override
  String get duaCategoryProtection => 'రక్షణ';

  @override
  String get duaCategoryBeginning => 'ప్రారంభం';

  @override
  String get duaCategorySleep => 'నిద్రించు';

  @override
  String get duaCategoryFoodDrink => 'ఆహారం & పానీయం';

  @override
  String get duaCategoryForgiveness => 'క్షమాపణ';

  @override
  String get duaCategoryHome => 'హోమ్';

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
  String get islamicEducation => 'ఇస్లామిక్ విద్య';

  @override
  String get sukunAudioTitle => 'సుకున్ సౌండ్‌స్కేప్స్';

  @override
  String get hadithCollections => 'హదీథ్ సేకరణలు';

  @override
  String get hadithSourcePending => 'ధృవీకరించబడిన మూలం పెండింగ్‌లో ఉంది';

  @override
  String get hadithUnavailableTitle =>
      'ధృవీకరించబడిన హదీసు సేకరణలు ఇంకా అందుబాటులో లేవు';

  @override
  String get hadithUnavailableBody =>
      'ఈ బిల్డ్ ఇప్పటికీ ధృవీకరించబడని బాహ్య హదీసు ఫీడ్‌పై ఆధారపడి ఉంటుంది. మూలాధార డేటాసెట్ సమకాలీకరించబడే వరకు హదీత్ బ్రౌజింగ్ నిలిపివేయబడుతుంది.';

  @override
  String get paywallUnlockAll =>
      'మీ ఆధ్యాత్మిక ప్రయాణం కోసం అన్ని లక్షణాలను అన్‌లాక్ చేయండి';

  @override
  String get premiumProductUnavailable =>
      'ప్రీమియం ఉత్పత్తి ప్రస్తుతం అందుబాటులో లేదు. దయచేసి తర్వాత మళ్లీ ప్రయత్నించండి.';

  @override
  String get premiumPurchaseFailed =>
      'కొనుగోలు పూర్తి కాలేదు. దయచేసి మళ్లీ ప్రయత్నించండి.';

  @override
  String get paywallFeature1Title => 'న్యూరల్ అసిస్టెంట్ ప్లస్';

  @override
  String get paywallFeature1Desc => 'అపరిమిత AI-ఆధారిత Q&A';

  @override
  String get paywallFeature2Title => 'అపరిమిత ఆఫ్‌లైన్';

  @override
  String get paywallFeature2Desc => 'అన్ని పారాయణాలను డౌన్‌లోడ్ చేయండి';

  @override
  String get paywallFeature3Title => 'ప్రత్యేకమైన డిజైన్లు';

  @override
  String get paywallFeature3Desc => 'ప్రీమియం థీమ్‌లు & ఫాంట్‌లు';

  @override
  String get paywallFeature4Title => 'ప్రకటన-రహితం';

  @override
  String get paywallFeature4Desc => 'సున్నా ప్రకటనలు';

  @override
  String get paywallGetAccess => 'జీవితకాల యాక్సెస్ పొందండి — \$1.00';

  @override
  String get restorePurchases => 'కొనుగోళ్లను పునరుద్ధరించండి';

  @override
  String get zakatCalculator => 'జకాత్ కాలిక్యులేటర్';

  @override
  String get zakatGold => 'బంగారం (ఆల్టిన్)';

  @override
  String get zakatSilver => 'వెండి (Gümüş)';

  @override
  String get zakatCashBank => 'నగదు / బ్యాంక్';

  @override
  String get zakatBusiness => 'వ్యాపారం';

  @override
  String get zakatInvestments => 'పెట్టుబడులు';

  @override
  String get zakatWeightGrams => 'బరువు (గ్రా)';

  @override
  String get zakatPricePerGram => 'ధర/గ్రా';

  @override
  String get zakatTotalAmount => 'మొత్తం మొత్తం';

  @override
  String get zakatInventoryValue => 'ఇన్వెంటరీ విలువ';

  @override
  String get zakatDebts => 'అప్పులు';

  @override
  String get zakatTotal => 'మొత్తం';

  @override
  String get calculateZakat => 'జకాత్‌ను లెక్కించండి';

  @override
  String get nisabNotReached => 'నిసాబ్ చేరుకోలేదు. జకాత్ తప్పనిసరి కాదు.';

  @override
  String get totalZakat => 'మొత్తం జకాత్';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'నిసాబ్: $nisab • ఆస్తులు: $assets';
  }

  @override
  String get zakatGoldZakat => 'బంగారు జకాత్';

  @override
  String get zakatSilverZakat => 'వెండి జకాత్';

  @override
  String get zakatCashZakat => 'నగదు జకాత్';

  @override
  String get zakatBusinessZakat => 'వ్యాపారం జకాత్';

  @override
  String get zakatInvestmentZakat => 'పెట్టుబడి జకాత్';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'రోజువారీ ప్రశ్న పరిమితిని చేరుకున్నారు. అపరిమితంగా ప్రీమియంకు అప్‌గ్రేడ్ చేయండి.';

  @override
  String get chatbotErrorMsg =>
      'నేను ప్రతిస్పందనను రూపొందించలేకపోయాను. దయచేసి మళ్లీ ప్రయత్నించండి.';

  @override
  String get chatbotOfflinePrompt =>
      'ధృవీకరించబడిన ఆఫ్‌లైన్ ఇస్లామిక్ నాలెడ్జ్ బేస్ ఇప్పటికీ క్యూరేట్ చేయబడుతోంది. మీరు ఇప్పుడు ఆఫ్‌లైన్ ఫాల్‌బ్యాక్‌ను ప్రారంభించవచ్చు, కానీ మూలాధార డేటాసెట్ సిద్ధమయ్యే వరకు ఇది పరిమిత సురక్షిత సందేశాలను మాత్రమే చూపుతుంది.\n\nమీరు ఆఫ్‌లైన్ ఫాల్‌బ్యాక్‌ని ప్రారంభించాలనుకుంటున్నారా?';

  @override
  String get chatbotOfflineSwitched =>
      'ఆఫ్‌లైన్ ఫాల్‌బ్యాక్ ప్రారంభించబడింది. ధృవీకరించబడిన స్థానిక ఇస్లామిక్ సమాధానాలు ఇంకా సిద్ధంగా లేవు.';

  @override
  String get chatbotOfflineDownloadLabel =>
      'ఆఫ్‌లైన్ ఫాల్‌బ్యాక్‌ని ప్రారంభించండి';

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
  String get downloadAction => 'డౌన్‌లోడ్ చేయండి';

  @override
  String get resumeDownload => 'డౌన్‌లోడ్ పునఃప్రారంభించండి';

  @override
  String get deleteDownloadedFiles => 'డౌన్‌లోడ్ చేసిన ఫైల్‌లను తొలగించండి';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return '$reciterకి డౌన్‌లోడ్ రద్దు చేయబడింది.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return '$reciter కోసం డౌన్‌లోడ్ పూర్తయింది.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return '$reciter కోసం $failed విఫలమైన సూరాలతో డౌన్‌లోడ్ పూర్తయింది ($downloaded/$total డౌన్‌లోడ్ చేయబడింది).';
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
  String get sukunMixerSubtitle => 'ప్రకృతి & ఖురాన్ మిక్సర్';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'సుకున్ (ప్రకృతి)';

  @override
  String get sukunRainOfMercy => 'దయ యొక్క వర్షం';

  @override
  String get sukunGardenOfPeace => 'శాంతి తోట';

  @override
  String get sukunMidnightCalm => 'అర్ధరాత్రి ప్రశాంతత';

  @override
  String get sukunOceanTawheed => 'ఓషన్ తౌహీద్';

  @override
  String get sukunUnavailableTitle => 'సౌండ్‌స్కేప్‌లు అందుబాటులో లేవు';

  @override
  String get sukunUnavailableBody =>
      'ఈ బిల్డ్‌లో ఇంకా అవసరమైన సుకున్ సౌండ్‌స్కేప్ ఆస్తులు లేవు.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'రోజు పరంపర';

  @override
  String get bestStreak => 'ఉత్తమ పరంపర';

  @override
  String get chatbotCloudAiLabel => 'క్లౌడ్ AI';

  @override
  String get chatbotLocalAiLabel => 'ఆఫ్‌లైన్ ఫాల్‌బ్యాక్';

  @override
  String get chatbotUseCloudAi => 'క్లౌడ్ AI (Gemini) ఉపయోగించండి';

  @override
  String get chatbotDownloadLocalAi => 'ఆఫ్‌లైన్ ఫాల్‌బ్యాక్‌ని ప్రారంభించండి';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count మిగిలి ఉంది';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'క్లౌడ్ API కాన్ఫిగర్ చేయబడలేదు. దయచేసి స్థానిక AIకి మారండి.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] ధృవీకరించబడిన స్థానిక ఇస్లామిక్ మార్గదర్శకత్వం ఇంకా అందుబాటులో లేదు. మూలాధార సమాధానాల కోసం క్లౌడ్ AIకి మారండి.';

  @override
  String get mosques => 'మసీదులు';

  @override
  String get halalFood => 'హలాల్ ఆహారం';

  @override
  String get placesSearchArea => 'ఈ ప్రాంతాన్ని శోధించండి';

  @override
  String get nearbyMosques => 'సమీపంలోని మసీదులు';

  @override
  String get islamicSchools => 'ఇస్లామిక్ పాఠశాలలు';

  @override
  String placesFoundCount(String count) {
    return '$count కనుగొనబడింది';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance కి.మీ దూరంలో';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API లోపం: $statusCode';
  }

  @override
  String get placesNetworkError =>
      'నెట్‌వర్క్ లోపం. దయచేసి మళ్లీ ప్రయత్నించండి.';

  @override
  String get placesLocationRequiredTitle => 'స్థానం అవసరం';

  @override
  String get placesLocationRequiredBody =>
      'ముందుగా లొకేషన్‌ను సెట్ చేయండి, తద్వారా సమీపంలోని మసీదులు, హలాల్ ఫుడ్ మరియు ఇస్లామిక్ పాఠశాలలను ఖచ్చితంగా శోధించవచ్చు.';

  @override
  String get placesMapTilesUnavailableTitle => 'మ్యాప్ టైల్స్ అందుబాటులో లేవు';

  @override
  String get placesMapTilesUnavailableBody =>
      'ఈ బిల్డ్ కోసం ధృవీకరించబడిన మ్యాప్ టైల్ మూలం ఇంకా కాన్ఫిగర్ చేయబడలేదు. మీరు సేవ్ చేసిన స్థానం నుండి సమీప స్థలాలు ఇప్పటికీ లోడ్ అవుతాయి.';

  @override
  String get unknownPlaceName => 'తెలియని పేరు';

  @override
  String get islamicPlaceFallback => 'ఇస్లామిక్ ప్లేస్';

  @override
  String get asmaMeaning1 => 'ది బెనిఫిసెంట్';

  @override
  String get asmaMeaning2 => 'దయగల';

  @override
  String get asmaMeaning3 => 'రాజు / ఎటర్నల్ లార్డ్';

  @override
  String get asmaMeaning4 => 'అత్యంత పవిత్రమైనది';

  @override
  String get asmaMeaning5 => 'శాంతికి మూలం';

  @override
  String get asmaMeaning6 => 'భద్రతను ఇచ్చేవాడు';

  @override
  String get asmaMeaning7 => 'ది గార్డియన్';

  @override
  String get asmaMeaning8 => 'అమూల్యమైన / అత్యంత శక్తివంతమైన';

  @override
  String get asmaMeaning9 => 'ది కంపెల్లర్';

  @override
  String get asmaMeaning10 => 'ది గ్రేటెస్ట్';

  @override
  String get asmaMeaning11 => 'సృష్టికర్త';

  @override
  String get asmaMeaning12 => 'ది మేకర్ ఆఫ్ ఆర్డర్';

  @override
  String get asmaMeaning13 => 'ది షేపర్ ఆఫ్ బ్యూటీ';

  @override
  String get asmaMeaning14 => 'క్షమించేవాడు';

  @override
  String get asmaMeaning15 => 'ది సబ్‌డ్యూయర్';

  @override
  String get asmaMeaning16 => 'అందరికీ ఇచ్చేవాడు';

  @override
  String get asmaMeaning17 => 'ది సస్టైనర్';

  @override
  String get asmaMeaning18 => 'ఓపెనర్';

  @override
  String get asmaMeaning19 => 'అందరికీ తెలిసినవాడు';

  @override
  String get asmaMeaning20 => 'ది కన్‌స్ట్రిక్టర్';

  @override
  String get asmaMeaning21 => 'ది రిలీవర్';

  @override
  String get asmaMeaning22 => 'ది అబాసర్';

  @override
  String get asmaMeaning23 => 'ఎక్సాల్టర్';

  @override
  String get asmaMeaning24 => 'గౌరవ ప్రదాత';

  @override
  String get asmaMeaning25 => 'అవమానకరుడు';

  @override
  String get asmaMeaning26 => 'అందరినీ వినేవాడు';

  @override
  String get asmaMeaning27 => 'అందరిని చూసేవాడు';

  @override
  String get asmaMeaning28 => 'న్యాయమూర్తి';

  @override
  String get asmaMeaning29 => 'ది జస్ట్';

  @override
  String get asmaMeaning30 => 'సూక్ష్మమైనది';

  @override
  String get asmaMeaning31 => 'The All Aware';

  @override
  String get asmaMeaning32 => 'నిర్ధారణ';

  @override
  String get asmaMeaning33 => 'మగ్నిఫిసెంట్';

  @override
  String get asmaMeaning34 => 'గొప్ప క్షమించేవాడు';

  @override
  String get asmaMeaning35 => 'ధన్యవాదానికి రివార్డర్';

  @override
  String get asmaMeaning36 => 'అత్యున్నతమైనది';

  @override
  String get asmaMeaning37 => 'ది గ్రేటెస్ట్';

  @override
  String get asmaMeaning38 => 'ది ప్రిజర్వర్';

  @override
  String get asmaMeaning39 => 'ది నోరిషర్';

  @override
  String get asmaMeaning40 => 'The Reckoner';

  @override
  String get asmaMeaning41 => 'ది మెజెస్టిక్';

  @override
  String get asmaMeaning42 => 'ఉదారమైనది';

  @override
  String get asmaMeaning43 => 'జాగ్రత్తగా ఉండే వ్యక్తి';

  @override
  String get asmaMeaning44 => 'ప్రార్థనకు ప్రతిస్పందన';

  @override
  String get asmaMeaning45 => 'అన్ని గ్రహణశక్తి';

  @override
  String get asmaMeaning46 => 'ది పర్ఫెక్ట్లీ వైజ్';

  @override
  String get asmaMeaning47 => 'ప్రేమించే వ్యక్తి';

  @override
  String get asmaMeaning48 => 'అత్యంత మహిమాన్వితమైనది';

  @override
  String get asmaMeaning49 => 'ది రిసరెక్టర్';

  @override
  String get asmaMeaning50 => 'సాక్షి';

  @override
  String get asmaMeaning51 => 'నిజం';

  @override
  String get asmaMeaning52 => 'ఆల్-సఫిషియెంట్ ట్రస్టీ';

  @override
  String get asmaMeaning53 => 'అన్ని శక్తి యొక్క యజమాని';

  @override
  String get asmaMeaning54 => 'ది ఫోర్స్‌ఫుల్';

  @override
  String get asmaMeaning55 => 'ది ప్రొటెక్టర్';

  @override
  String get asmaMeaning56 => 'ప్రశంసించబడినది';

  @override
  String get asmaMeaning57 => 'అప్రైజర్';

  @override
  String get asmaMeaning58 => 'ది ఆర్జినేటర్';

  @override
  String get asmaMeaning59 => 'ది రిస్టోరర్';

  @override
  String get asmaMeaning60 => 'జీవితం ఇచ్చేవాడు';

  @override
  String get asmaMeaning61 => 'ది టేకర్ ఆఫ్ లైఫ్';

  @override
  String get asmaMeaning62 => 'ది ఎవర్ లివింగ్';

  @override
  String get asmaMeaning63 => 'స్వయం-సబ్సిస్టింగ్ సస్టైనర్';

  @override
  String get asmaMeaning64 => 'ది ఫైండర్';

  @override
  String get asmaMeaning65 => 'ది గ్లోరియస్';

  @override
  String get asmaMeaning66 => 'ఒకటే';

  @override
  String get asmaMeaning67 => 'ది వన్';

  @override
  String get asmaMeaning68 => 'అందరూ కోరినది';

  @override
  String get asmaMeaning69 => 'ది పవర్‌ఫుల్';

  @override
  String get asmaMeaning70 => 'అన్ని శక్తి యొక్క సృష్టికర్త';

  @override
  String get asmaMeaning71 => 'ది ఎక్స్‌పెడిటర్';

  @override
  String get asmaMeaning72 => 'ది డిలేయర్';

  @override
  String get asmaMeaning73 => 'మొదటిది';

  @override
  String get asmaMeaning74 => 'ది లాస్ట్';

  @override
  String get asmaMeaning75 => 'ది మానిఫెస్ట్';

  @override
  String get asmaMeaning76 => 'ద హిడెన్';

  @override
  String get asmaMeaning77 => 'గవర్నర్';

  @override
  String get asmaMeaning78 => 'అత్యున్నతమైనది';

  @override
  String get asmaMeaning79 => 'మంచిని చేసేవాడు';

  @override
  String get asmaMeaning80 => 'పశ్చాత్తాపానికి మార్గదర్శకం';

  @override
  String get asmaMeaning81 => 'ది అవెంజర్';

  @override
  String get asmaMeaning82 => 'క్షమించువాడు';

  @override
  String get asmaMeaning83 => 'ది క్లెమెంట్';

  @override
  String get asmaMeaning84 => 'అన్నింటికి యజమాని / సార్వభౌమాధికారి';

  @override
  String get asmaMeaning85 => 'మెజెస్టి మరియు బౌంటీ యొక్క యజమాని';

  @override
  String get asmaMeaning86 => 'ఈక్విటబుల్ వన్';

  @override
  String get asmaMeaning87 => 'ది గాదరర్';

  @override
  String get asmaMeaning88 => 'ధనవంతుడు';

  @override
  String get asmaMeaning89 => 'ది ఎన్‌రిచర్';

  @override
  String get asmaMeaning90 => 'హాని నివారిణి';

  @override
  String get asmaMeaning91 => 'హాని కలిగించేవాడు';

  @override
  String get asmaMeaning92 => 'ప్రయోజనాలను అందించేది';

  @override
  String get asmaMeaning93 => 'ది లైట్';

  @override
  String get asmaMeaning94 => 'ది గైడర్';

  @override
  String get asmaMeaning95 => 'ది ఆర్జినేటర్';

  @override
  String get asmaMeaning96 => 'ఎవర్‌లాస్టింగ్ వన్';

  @override
  String get asmaMeaning97 => 'ది ఇన్‌హెరిటర్';

  @override
  String get asmaMeaning98 => 'అత్యంత నీతివంతమైన మార్గదర్శి';

  @override
  String get asmaMeaning99 => 'రోగి వన్';
}
