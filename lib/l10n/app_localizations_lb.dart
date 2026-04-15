// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Luxembourgish Letzeburgesch (`lb`).
class AppLocalizationsLb extends AppLocalizations {
  AppLocalizationsLb([String locale = 'lb']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Islamesche Wee vum Liicht';

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
  String get sunrise => 'Sonnenopgang';

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
    return 'Zäit fir $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Et ass Zäit $prayerName ze bieden.';
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
  String get locationServiceDisabled => 'Location Service ass behënnert.';

  @override
  String get locationPermissionDenied => 'Location Erlaabnis refuséiert.';

  @override
  String citiesCount(String count) {
    return '$count Stied';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'Keng Resultater fonnt';

  @override
  String get loading => 'Lueden...';

  @override
  String get error => 'Feeler';

  @override
  String get appErrorOccurred => 'E Feeler ass geschitt';

  @override
  String get appUnknownError => 'Onbekannt Feeler';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Erfrëschen';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Läschen';

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
  String get tafsirLoading => 'Lueden tafsir ...';

  @override
  String get tafsirSourceLabel => 'Tafsir Quell';

  @override
  String get tafsirNoSurahFound => 'Keen Tafsir fonnt fir dës Surah.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Keen Tafsir fonnt fir ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir konnt net gelueden ginn.';

  @override
  String get tafsirNoTextForAyah => 'Keen Tafsir Text fir dës Ayah.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Eroflueden tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Loading tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir Quell huet en HTTP $statusCode Feeler zréckginn.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Der gewielter tafsir Quell huet keng Entréen zréck.';

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
      'anerer bieden: \"Eisen Här, gëff eis gutt an dëser Welt an am Hierscht, a schützt eis virun der Péng vum Feier.\"';

  @override
  String get duaMeaning2 =>
      'Gott belaascht keng Séil mat méi wéi se droen kann: jidderee kritt wat gutt et gemaach huet, a leid säi Schlecht - Här, huelt eis net op d\'Aufgab wa mir vergiessen oder Feeler maachen. Här, belaascht eis net wéi Dir déi virun eis belaascht hutt. Här, belaascht eis net mat méi wéi mir Kraaft hunn ze droen. Entschëllegt eis, verzeien eis, a Barmhäerzegkeet op eis. Dir sidd eise Protecteur, also hëllef eis géint déi Ongleeweg.\'';

  @override
  String get duaMeaning3 =>
      '\"Eisen Här, loosst eis Häerzer net ofwäichen nodeems Dir eis guidéiert hutt. Gëff eis Är Barmhäerzegkeet: Dir sidd deen ëmmer Gëff.';

  @override
  String get duaMeaning4 =>
      'Här, gitt datt ech a meng Nofolger d\'Gebied weiderhalen. Eiser Här, akzeptéiert meng Demande.';

  @override
  String get duaMeaning5 =>
      'an dréckt Äre Fligel an Demut a Frëndlechkeet vis-à-vis vun hinnen a seet: ‘Här, barmhäerzlech mat hinnen, sou wéi si fir mech gesuergt hunn, wéi ech kleng war.';

  @override
  String get duaMeaning6 =>
      'Erhéicht sief Gott, deen, dee wierklech an der Kontroll ass. [Prophéit], presséiert net ze recitéieren ier d\'Offenbarung komplett fäerdeg ass, awer sot: \'Här, vergréissert mech a Wëssen!\'';

  @override
  String get duaMeaning7 =>
      'Sot [Prophéit], \'Här, verzeien a Barmhäerzegkeet: Dir sidd de Barmhäerzlechste vun allem.\'';

  @override
  String get duaMeaning8 =>
      'déi biede: \'Eisen Här, gitt eis Freed an eise Ehepartner an Nofolger. Maacht eis gutt Beispiller fir déi, déi Iech bewosst sinn.';

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
  String get hadithCollection => 'Hadith Kollektioun';

  @override
  String get hadithBooks => 'Hadith Bicher';

  @override
  String get searchHadith => 'Sichen Hadith';

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
  String get openInYoutube => 'Op YouTube opmaachen';

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
  String get islamicNewYear => 'Islamescht Neit Joer';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadan';

  @override
  String get specialDayDateEidAlFitr => '1 Schauer';

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
    return 'Kompassfehler: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Kompasssensor ass op dësem Apparat net verfügbar.';

  @override
  String get adhanNotificationChannelName => 'Adhan Notifikatiounen';

  @override
  String get adhanNotificationChannelDescription =>
      'Gebiedszäit Alarmer mat Adhan Sound.';

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
    return 'Préift $appName: Déi ultimativ islamesch Lifestyle App! $url';
  }

  @override
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Download Komplett';

  @override
  String get downloadFailed => 'Download Ausgefall';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'Keng Internetverbindung';

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
  String get zikrCompletedMashAllah => 'Ofgeschloss! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah ass wäit iwwer all Imperfektioun.';

  @override
  String get zikrMeaningAlhamdulillah => 'All Luef gehéiert dem Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah ass dee Groussste.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Et gëtt kee Gott ausser Allah.';

  @override
  String get zikrMeaningAstaghfirullah =>
      'Ech sichen dem Allah seng Verzeiung.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Et gëtt keng Kraaft a keng Kraaft ausser duerch Allah.';

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
  String get audioVoice => 'Audio Stëmm';

  @override
  String get audioVoiceMisharyAlafasy => 'Mann (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Männlech (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Männlech (Sudais)';

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
  String get diagnosticsNotSet => 'Net gesat';

  @override
  String get diagnosticsPrayerProfile => 'Gebiedsprofil';

  @override
  String get diagnosticsPrayerSource => 'Gebied Autoritéit';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Benotzerdefinéiert / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manuell personaliséiert Wénkel (keng institutionell Quell)';

  @override
  String get diagnosticsCloudDriven => 'Cloud gefuer';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Koran Audio Assets';

  @override
  String get diagnosticsAudioAssets => 'Audio Verméigen';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count Dateien';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifest liesen gescheitert: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Lokalisatioun Locales';

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
      'Cloud Dëscher fehlen an Supabase; gebündelte Fallback aktiv';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz Metadaten feelen; gebündelte strukturelle Fallback aktiv';

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
  String get dailyVerse => 'Deeglech Vers';

  @override
  String get todaysIbadah => 'Haut ass Ibadah';

  @override
  String get quickAccess => 'Schnell Zougang';

  @override
  String get assistant => 'Assistent';

  @override
  String get places => 'Plaze';

  @override
  String get library => 'Bibliothéik';

  @override
  String get analytics => 'Analytics';

  @override
  String get dailyDuas => 'Deeglech Duas';

  @override
  String essentialDuas(String count) {
    return '$count wesentlech Duas';
  }

  @override
  String get duaUnavailableTitle => 'Verifizéiert Duas sinn nach net verfügbar';

  @override
  String get duaUnavailableBody =>
      'Verifizéiert alldeeglech Duas goufen nach net mat dësem Apparat synchroniséiert. Connectéiert mat der Wollekquell fir Quelle Duas ze lueden amplaz vun engem onverifizéierte Réckfall.';

  @override
  String get duaCategoryQuranic => 'Koran dua';

  @override
  String get duaCategoryMorningEvening => 'Moien & Owend';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Schutz';

  @override
  String get duaCategoryBeginning => 'Ufank';

  @override
  String get duaCategorySleep => 'Schlof';

  @override
  String get duaCategoryFoodDrink => 'Iessen & Drénken';

  @override
  String get duaCategoryForgiveness => 'Verzeiung';

  @override
  String get duaCategoryHome => 'Doheem';

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
  String get islamicEducation => 'Islamesch Educatioun';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Hadith Kollektiounen';

  @override
  String get hadithSourcePending => 'Verifizéiert Quell erwaard';

  @override
  String get hadithUnavailableTitle =>
      'Verifizéiert Hadith Sammlungen sinn nach net verfügbar';

  @override
  String get hadithUnavailableBody =>
      'Dëse Bau hänkt nach vun engem onverifizéierten externen Hadith Feed of. Hadith Surfen bleift behënnert bis e sourced Dataset synchroniséiert ass.';

  @override
  String get paywallUnlockAll => 'Spär all Feature fir Är spirituell Rees';

  @override
  String get premiumProductUnavailable =>
      'Premium Produkt ass elo net verfügbar. Probéiert w.e.g. méi spéit nach eng Kéier.';

  @override
  String get premiumPurchaseFailed =>
      'Kaf konnt net ofgeschloss ginn. Probéiert w.e.g. nach eng Kéier.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'Onlimitéiert AI-ugedriwwen Q&A';

  @override
  String get paywallFeature2Title => 'Onlimitéiert Offline';

  @override
  String get paywallFeature2Desc => 'Download all Recitatiounen';

  @override
  String get paywallFeature3Title => 'Exklusiv Designs';

  @override
  String get paywallFeature3Desc => 'Premium Themen & Schrëften';

  @override
  String get paywallFeature4Title => 'Annonce-gratis';

  @override
  String get paywallFeature4Desc => 'Null Annoncen';

  @override
  String get paywallGetAccess => 'Kritt Liewensdauer Zougang - \$ 1,00';

  @override
  String get restorePurchases => 'Restauréieren Akeef';

  @override
  String get zakatCalculator => 'Zakat Rechner';

  @override
  String get zakatGold => 'Gold (Altin)';

  @override
  String get zakatSilver => 'Sëlwer (Gümüş)';

  @override
  String get zakatCashBank => 'Cash / Bank';

  @override
  String get zakatBusiness => 'Business';

  @override
  String get zakatInvestments => 'Investitiounen';

  @override
  String get zakatWeightGrams => 'Gewicht (g)';

  @override
  String get zakatPricePerGram => 'Präis/g';

  @override
  String get zakatTotalAmount => 'Gesamtbetrag';

  @override
  String get zakatInventoryValue => 'Inventar Wäert';

  @override
  String get zakatDebts => 'Scholden';

  @override
  String get zakatTotal => 'Ganzen';

  @override
  String get calculateZakat => 'Berechent Zakat';

  @override
  String get nisabNotReached =>
      'Nisab net erreecht. Zakat ass net obligatoresch.';

  @override
  String get totalZakat => 'Ganz Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Verméigen: $assets';
  }

  @override
  String get zakatGoldZakat => 'Gold Zakat';

  @override
  String get zakatSilverZakat => 'Sëlwer Zakat';

  @override
  String get zakatCashZakat => 'Cash Zakat';

  @override
  String get zakatBusinessZakat => 'Business Zakat';

  @override
  String get zakatInvestmentZakat => 'Investitioun Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Deeglech Ufro Limit erreecht. Upgrade op Premium fir onlimitéiert.';

  @override
  String get chatbotErrorMsg =>
      'Ech konnt keng Äntwert generéieren. Probéiert w.e.g. nach eng Kéier.';

  @override
  String get chatbotOfflinePrompt =>
      'Déi verifizéiert offline islamesch Wëssensbasis gëtt nach ëmmer curéiert. Dir kënnt den Offline Fallback elo aktivéieren, awer et wäert nëmme limitéiert sécher Messagen weisen bis de sourced Dataset fäerdeg ass.\n\nWëllt Dir offline Fallback aktivéieren?';

  @override
  String get chatbotOfflineSwitched =>
      'Offline Fallback aktivéiert. Verifizéiert lokal islamesch Äntwerten sinn nach net fäerdeg.';

  @override
  String get chatbotOfflineDownloadLabel => 'Offline Fallback aktivéieren';

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
  String get deleteDownloadedFiles => 'Läschen erofgeluede Dateien';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Download annuléiert fir $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Download fäerdeg fir $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Download fäerdeg fir $reciter mat $failed gescheitert Surahs ($downloaded/$total erofgelueden).';
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
  String get sukunMixerSubtitle => 'Natur & Koran Mixer';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (Natur)';

  @override
  String get sukunRainOfMercy => 'Reen vun Mercy';

  @override
  String get sukunGardenOfPeace => 'Gaart vum Fridden';

  @override
  String get sukunMidnightCalm => 'Mëtternuecht Rou';

  @override
  String get sukunOceanTawheed => 'Ozean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Soundscapes net verfügbar';

  @override
  String get sukunUnavailableBody =>
      'Dëse Bau enthält nach net déi erfuerderlech Sukun Soundscape Verméigen.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Dag Sträif';

  @override
  String get bestStreak => 'Beschte Streck';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'Benotzt Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Offline Fallback aktivéieren';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count lénks';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API net konfiguréiert. Schalt w.e.g. op Lokal AI.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Verifizéiert lokal islamesch Leedung ass nach net verfügbar. Wiesselt op Cloud AI fir Quellen Äntwerten.';

  @override
  String get mosques => 'Moscheeën';

  @override
  String get halalFood => 'Halal Iessen';

  @override
  String get placesSearchArea => 'Sich dëser Géigend';

  @override
  String get nearbyMosques => 'Emgéigend Moscheeën';

  @override
  String get islamicSchools => 'Islamesch Schoulen';

  @override
  String placesFoundCount(String count) {
    return '$count fonnt';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km ewech';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API Feeler: $statusCode';
  }

  @override
  String get placesNetworkError =>
      'Netzfehler. Probéiert w.e.g. nach eng Kéier.';

  @override
  String get placesLocationRequiredTitle => 'Plaz néideg';

  @override
  String get placesLocationRequiredBody =>
      'Setzt eng Plaz fir d\'éischt sou datt Emgéigend Moscheeën, Halal Iessen, an islamesch Schoule präzis gesicht kënne ginn.';

  @override
  String get placesMapTilesUnavailableTitle => 'Kaart Fliesen net verfügbar';

  @override
  String get placesMapTilesUnavailableBody =>
      'Eng verifizéiert Kaartfliesquell ass nach net fir dëse Build konfiguréiert. Nopesch Plazen kënnen nach ëmmer vun Ärer gespäichert Plaz lueden.';

  @override
  String get unknownPlaceName => 'Onbekannt Numm';

  @override
  String get islamicPlaceFallback => 'Islamesch Plaz';

  @override
  String get asmaMeaning1 => 'The Beneficent';

  @override
  String get asmaMeaning2 => 'Den Barmhäerzlechen';

  @override
  String get asmaMeaning3 => 'De Kinnek / Éiwege Här';

  @override
  String get asmaMeaning4 => 'Déi Helleg';

  @override
  String get asmaMeaning5 => 'D\'Quell vum Fridden';

  @override
  String get asmaMeaning6 => 'The Giver of Security';

  @override
  String get asmaMeaning7 => 'The Guardian';

  @override
  String get asmaMeaning8 => 'Déi wäertvoll / Déi meescht Mighty';

  @override
  String get asmaMeaning9 => 'The Compeller';

  @override
  String get asmaMeaning10 => 'The Greatest';

  @override
  String get asmaMeaning11 => 'De Schëpfer';

  @override
  String get asmaMeaning12 => 'The Maker of Order';

  @override
  String get asmaMeaning13 => 'The Shaper of Beauty';

  @override
  String get asmaMeaning14 => 'D\'Verzeiung';

  @override
  String get asmaMeaning15 => 'The Subduer';

  @override
  String get asmaMeaning16 => 'D\'Gener vun All';

  @override
  String get asmaMeaning17 => 'The Sustainer';

  @override
  String get asmaMeaning18 => 'The Opener';

  @override
  String get asmaMeaning19 => 'De Kenner vun All';

  @override
  String get asmaMeaning20 => 'The Constrictor';

  @override
  String get asmaMeaning21 => 'The Reliever';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'The Bestower of Honor';

  @override
  String get asmaMeaning25 => 'Den Humiliator';

  @override
  String get asmaMeaning26 => 'Den Hearer vun All';

  @override
  String get asmaMeaning27 => 'De Seer vun All';

  @override
  String get asmaMeaning28 => 'De Riichter';

  @override
  String get asmaMeaning29 => 'The Just';

  @override
  String get asmaMeaning30 => 'Den subtile';

  @override
  String get asmaMeaning31 => 'D\'All Aware';

  @override
  String get asmaMeaning32 => 'The Forebearing';

  @override
  String get asmaMeaning33 => 'The Magnificent';

  @override
  String get asmaMeaning34 => 'The Great Forgiver';

  @override
  String get asmaMeaning35 => 'De Belouner vun Dankbarkeet';

  @override
  String get asmaMeaning36 => 'Den héchste';

  @override
  String get asmaMeaning37 => 'The Greatest';

  @override
  String get asmaMeaning38 => 'The Preserver';

  @override
  String get asmaMeaning39 => 'The Nourisher';

  @override
  String get asmaMeaning40 => 'The Reckoner';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'The Generous';

  @override
  String get asmaMeaning43 => 'Den Oppassen';

  @override
  String get asmaMeaning44 => 'Den Äntwert op d\'Gebied';

  @override
  String get asmaMeaning45 => 'The All Comprehending';

  @override
  String get asmaMeaning46 => 'The Perfectly Wise';

  @override
  String get asmaMeaning47 => 'De léiwen';

  @override
  String get asmaMeaning48 => 'Den Herrlechsten';

  @override
  String get asmaMeaning49 => 'De Resurrektor';

  @override
  String get asmaMeaning50 => 'Den Zeien';

  @override
  String get asmaMeaning51 => 'D\'Wourecht';

  @override
  String get asmaMeaning52 => 'Den All-Sufficient Trustee';

  @override
  String get asmaMeaning53 => 'De Besëtzer vun all Kraaft';

  @override
  String get asmaMeaning54 => 'The Forceful';

  @override
  String get asmaMeaning55 => 'De Protecteur';

  @override
  String get asmaMeaning56 => 'D\'Gelueft';

  @override
  String get asmaMeaning57 => 'The Appraiser';

  @override
  String get asmaMeaning58 => 'Den Originator';

  @override
  String get asmaMeaning59 => 'De Restaurateur';

  @override
  String get asmaMeaning60 => 'Der Liewewiesen';

  @override
  String get asmaMeaning61 => 'Den Taker vum Liewen';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'The Self-Subsisting Sustainer';

  @override
  String get asmaMeaning64 => 'De Finder';

  @override
  String get asmaMeaning65 => 'The Glorious';

  @override
  String get asmaMeaning66 => 'Den eenzegen';

  @override
  String get asmaMeaning67 => 'The One';

  @override
  String get asmaMeaning68 => 'Dee vun All gesicht';

  @override
  String get asmaMeaning69 => 'Déi mächteg';

  @override
  String get asmaMeaning70 => 'De Schëpfer vun all Muecht';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'The Delayer';

  @override
  String get asmaMeaning73 => 'Den Éischten';

  @override
  String get asmaMeaning74 => 'Déi lescht';

  @override
  String get asmaMeaning75 => 'D\'Manifest';

  @override
  String get asmaMeaning76 => 'The Hidden';

  @override
  String get asmaMeaning77 => 'De Gouverneur';

  @override
  String get asmaMeaning78 => 'The Supreme One';

  @override
  String get asmaMeaning79 => 'The Doer of Good';

  @override
  String get asmaMeaning80 => 'The Guide to Repentance';

  @override
  String get asmaMeaning81 => 'The Avenger';

  @override
  String get asmaMeaning82 => 'The Forgiver';

  @override
  String get asmaMeaning83 => 'De Clement';

  @override
  String get asmaMeaning84 => 'De Besëtzer / Souverän vun All';

  @override
  String get asmaMeaning85 => 'De Besëtzer vu Majestéit a Bounty';

  @override
  String get asmaMeaning86 => 'The Equitable One';

  @override
  String get asmaMeaning87 => 'The Gatherer';

  @override
  String get asmaMeaning88 => 'De Räich';

  @override
  String get asmaMeaning89 => 'The Enricher';

  @override
  String get asmaMeaning90 => 'The Preventer of Harm';

  @override
  String get asmaMeaning91 => 'The Bringer of Harm';

  @override
  String get asmaMeaning92 => 'The Bestower of Benefits';

  @override
  String get asmaMeaning93 => 'D\'Liicht';

  @override
  String get asmaMeaning94 => 'The Guider';

  @override
  String get asmaMeaning95 => 'Den Originator';

  @override
  String get asmaMeaning96 => 'Den Éiwege';

  @override
  String get asmaMeaning97 => 'The Iheritor';

  @override
  String get asmaMeaning98 => 'The Most Gerecht Guide';

  @override
  String get asmaMeaning99 => 'The Patient One';
}
