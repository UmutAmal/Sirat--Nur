// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Latvian (`lv`).
class AppLocalizationsLv extends AppLocalizations {
  AppLocalizationsLv([String locale = 'lv']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Islāma gaismas ceļš';

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
  String get sunrise => 'Saullēkts';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Magriba';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Laiks $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Ir pienācis laiks lūgt $prayerName.';
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
  String get locationServiceDisabled =>
      'Atrašanās vietas pakalpojums ir atspējots.';

  @override
  String get locationPermissionDenied => 'Atrašanās vietas atļauja liegta.';

  @override
  String get locationDetectionFailed =>
      'Nevarēja noteikt jūsu atrašanās vietu. Lūdzu, izvēlieties pilsētu manuāli vai mēģiniet vēlreiz.';

  @override
  String citiesCount(String count) {
    return '$count pilsētas';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'Nav atrasts neviens rezultāts';

  @override
  String get loading => 'Notiek ielāde...';

  @override
  String get error => 'Kļūda';

  @override
  String get appErrorOccurred => 'Radās kļūda';

  @override
  String get appUnknownError => 'Nezināma kļūda';

  @override
  String get quranLoadFailed =>
      'Korāna saturu nevarēja ielādēt. Lūdzu, mēģiniet vēlreiz.';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Atsvaidzināt';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Dzēst';

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
  String get tafsirLoading => 'Notiek tafsira ielāde...';

  @override
  String get tafsirSourceLabel => 'Tafsira avots';

  @override
  String get tafsirNoSurahFound => 'Šai surai tafsīrs netika atrasts.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Nav atrasts neviens tafsirs priekš ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsiru nevarēja ielādēt.';

  @override
  String get tafsirNoTextForAyah => 'Nav tafsir teksta šim ayah.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Notiek tafsir lejupielāde $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Notiek tafsira ielāde $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir avots atgrieza HTTP $statusCode kļūdu.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Atlasītais tafsir avots neatgrieza nevienu ierakstu.';

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
      'citi lūdz: \"Mūsu Kungs, dāvā mums labu šajā pasaulē un nākotnē un pasargā mūs no uguns mokām.\"';

  @override
  String get duaMeaning2 =>
      'Dievs nevienai dvēselei neapgrūtina vairāk, nekā tā spēj panest: katrs iegūst visu, ko labu ir darījis, un cieš no tā sliktā – “Kungs, neņem mūs pie darba, ja mēs aizmirstam vai pieļaujam kļūdas. Kungs, neapgrūtini mūs tā, kā Tu noslogoji tos, kas bija pirms mums. Kungs, neapgrūtini mūs ar vairāk, nekā mums ir spēks panest. Piedod mums, piedod mums un apžēlojies par mums. Tu esi mūsu Aizsargs, tāpēc palīdzi mums cīnīties pret neticīgajiem.';

  @override
  String get duaMeaning3 =>
      '“Mūsu Kungs, neļauj mūsu sirdīm novirzīties pēc tam, kad Tu mūs esi vadījis. Sniedziet mums savu žēlastību: jūs vienmēr esat dāvātājs.';

  @override
  String get duaMeaning4 =>
      'Kungs, dod, lai es un mani pēcnācēji turpinātu lūgšanu. Mūsu Kungs, pieņem manu lūgumu.';

  @override
  String get duaMeaning5 =>
      'un nolaid savu spārnu pazemībā pret viņiem laipnībā un saki: \"Kungs, apžēlojies par viņiem, tāpat kā viņi rūpējās par mani, kad es biju mazs.\"';

  @override
  String get duaMeaning6 =>
      'Paaugstināts lai ir Dievs, kas patiesi valda. [Pravietis], nesteidzies deklamēt, pirms atklāsme nav pilnībā pabeigta, bet saki: “Kungs, vairo mani zināšanās!”';

  @override
  String get duaMeaning7 =>
      'Sakiet [Pravietis]: \"Kungs, piedod un apžēlojies: Tu esi žēlsirdīgākais no visiem.\"';

  @override
  String get duaMeaning8 =>
      'tie, kas lūdz: \"Mūsu Kungs, dod mums prieku par mūsu laulātajiem un pēcnācējiem.\" Rādi mums labus piemērus tiem, kas Tevi zina.';

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
  String get hadithCollection => 'Hadith kolekcija';

  @override
  String get hadithBooks => 'Hadith grāmatas';

  @override
  String get searchHadith => 'Meklēt Hadith';

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
  String get openInYoutube => 'Atvērt pakalpojumā YouTube';

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
    return '${hours}h ${minutes}min';
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
  String get islamicNewYear => 'Islāma Jaunais gads';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadāns';

  @override
  String get specialDayDateLaylatAlQadr => '27. Ramadāns';

  @override
  String get specialDayDateEidAlFitr => '1 Šovals';

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
    return 'Kompasa kļūda: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Kompasa sensors šajā ierīcē nav pieejams.';

  @override
  String get qiblaLocationRequiredTitle => 'Nepieciešama vieta Qiblai';

  @override
  String get qiblaLocationRequiredBody =>
      'Pirms Qibla kompasa lietošanas iestatiet savu faktisko atrašanās vietu, lai varētu precīzi aprēķināt virzienu.';

  @override
  String get adhanNotificationChannelName => 'Adhan paziņojumi';

  @override
  String get adhanNotificationChannelDescription =>
      'Lūgšanu laika brīdinājumi ar Adhan skaņu.';

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
    return 'Apskatiet $appName: labāko islāma dzīvesveida lietotni! $url';
  }

  @override
  String get downloadManager => 'Lejupielādes pārvaldnieks';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Lejupielāde pabeigta';

  @override
  String get downloadFailed => 'Lejupielāde neizdevās';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'Nav interneta savienojuma';

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
  String get zikrCompletedMashAllah => 'Pabeigts! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allāhs ir daudz augstāks par visām nepilnībām.';

  @override
  String get zikrMeaningAlhamdulillah => 'Visas uzslavas pieder Allāham.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allāhs ir vislielākais.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Nav cita dieva, izņemot Allāhu.';

  @override
  String get zikrMeaningAstaghfirullah => 'Es meklēju Allāha piedošanu.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Nav spēka un spēka, izņemot caur Allāhu.';

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
  String get offlineDownloadManager => 'Bezsaistes lejupielādes pārvaldnieks';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Atbrīvojiet ierīces iekšējo krātuvi.';

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
  String get audioVoice => 'Audio balss';

  @override
  String get audioVoiceMisharyAlafasy => 'Vīrietis (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Vīrietis (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Vīrietis (Sudais)';

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
  String get diagnosticsNotSet => 'Nav iestatīts';

  @override
  String get diagnosticsPrayerProfile => 'Lūgšanu profils';

  @override
  String get diagnosticsPrayerSource => 'Lūgšanu autoritāte';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Pielāgots / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manuāli pielāgoti leņķi (nav institucionāla avota)';

  @override
  String get diagnosticsCloudDriven => 'Mākoņu vadīts';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan audio līdzekļi';

  @override
  String get diagnosticsUiAudioAssets => 'UI audio līdzekļi';

  @override
  String get diagnosticsQuranAudioAssets => 'Korāna audio līdzekļi';

  @override
  String get diagnosticsAudioAssets => 'Audio līdzekļi';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count faili';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifesta lasīšana neizdevās: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Lokalizācijas lokalizācijas';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count atbalstīts';
  }

  @override
  String get diagnosticsQuranDataset => 'Korāna datu kopa';

  @override
  String get diagnosticsQuranSurahs => 'Korāna suras';

  @override
  String get diagnosticsQuranAyahs => 'Korāna Ajas';

  @override
  String get diagnosticsQuranJuzMetadata => 'Korāna Juz metadati';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Supabase trūkst mākoņa tabulas; kompleksā atkāpšanās aktīva';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Mākoņa pārbaude neizdevās: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Trūkst mākoņa juz metadatu; kompleksā strukturālā atkāpšanās aktīva';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Mākoņa struktūras pārbaude neizdevās: $error';
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
  String get dailyVerse => 'Dienas dzejolis';

  @override
  String get todaysIbadah => 'Šodienas Ibada';

  @override
  String get quickAccess => 'Ātrā piekļuve';

  @override
  String get assistant => 'Asistents';

  @override
  String get places => 'Vietas';

  @override
  String get library => 'Bibliotēka';

  @override
  String get analytics => 'Analytics';

  @override
  String get dailyDuas => 'Ikdienas Duas';

  @override
  String essentialDuas(String count) {
    return '$count būtiskas duas';
  }

  @override
  String get duaUnavailableTitle => 'Verificētās duas vēl nav pieejamas';

  @override
  String get duaUnavailableBody =>
      'Verificētās ikdienas duas vēl nav sinhronizētas ar šo ierīci. Izveidojiet savienojumu ar mākoņa avotu, lai ielādētu avota duas, nevis nepārbaudītu atkāpšanos.';

  @override
  String get duaCategoryQuranic => 'Korāna dua';

  @override
  String get duaCategoryMorningEvening => 'Rīts & Vakars';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Aizsardzība';

  @override
  String get duaCategoryBeginning => 'Sākums';

  @override
  String get duaCategorySleep => 'Gulēt';

  @override
  String get duaCategoryFoodDrink => 'Ēdiens un dzērieni';

  @override
  String get duaCategoryForgiveness => 'Piedošana';

  @override
  String get duaCategoryHome => 'Sākums';

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
  String get islamicEducation => 'Islāma izglītība';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Hadith kolekcijas';

  @override
  String get hadithSourcePending => 'Apstiprināts avots gaida';

  @override
  String get hadithUnavailableTitle =>
      'Verificētās hadītu kolekcijas vēl nav pieejamas';

  @override
  String get hadithUnavailableBody =>
      'Šī versija joprojām ir atkarīga no nepārbaudītas ārējās hadīsu plūsmas. Hadith pārlūkošana paliek atspējota, līdz tiek sinhronizēta iegūtā datu kopa.';

  @override
  String get paywallUnlockAll =>
      'Atbloķējiet visas funkcijas savam garīgajam ceļojumam';

  @override
  String get premiumProductUnavailable =>
      'Premium produkts šobrīd nav pieejams. Lūdzu, vēlāk mēģiniet vēlreiz.';

  @override
  String get premiumPurchaseFailed =>
      'Pirkumu nevarēja pabeigt. Lūdzu, mēģiniet vēlreiz.';

  @override
  String get paywallFeature1Title => 'Neironu palīgs Plus';

  @override
  String get paywallFeature1Desc =>
      'Neierobežots ar AI darbināms jautājumu un atbilžu skaits';

  @override
  String get paywallFeature2Title => 'Neierobežots bezsaistē';

  @override
  String get paywallFeature2Desc => 'Lejupielādēt visas deklamācijas';

  @override
  String get paywallFeature3Title => 'Ekskluzīvi modeļi';

  @override
  String get paywallFeature3Desc => 'Premium motīvi un fonti';

  @override
  String get paywallFeature4Title => 'Bez reklāmām';

  @override
  String get paywallFeature4Desc => 'Nulle sludinājumu';

  @override
  String get paywallGetAccess => 'Iegūstiet mūža piekļuvi — 1,00 USD';

  @override
  String get restorePurchases => 'Atjaunot pirkumus';

  @override
  String get zakatCalculator => 'Zakat kalkulators';

  @override
  String get zakatGold => 'Zelts (Altın)';

  @override
  String get zakatSilver => 'Sudrabs (Gümüş)';

  @override
  String get zakatCashBank => 'Skaidra nauda / banka';

  @override
  String get zakatBusiness => 'Bizness';

  @override
  String get zakatInvestments => 'Investīcijas';

  @override
  String get zakatWeightGrams => 'Svars (g)';

  @override
  String get zakatPricePerGram => 'Cena/g';

  @override
  String get zakatTotalAmount => 'Kopējā summa';

  @override
  String get zakatInventoryValue => 'Inventāra vērtība';

  @override
  String get zakatDebts => 'Parādi';

  @override
  String get zakatTotal => 'Kopā';

  @override
  String get calculateZakat => 'Aprēķināt Zakat';

  @override
  String get nisabNotReached => 'Nisab nav sasniegts. Zakat nav obligāts.';

  @override
  String get totalZakat => 'Kopā Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Līdzekļi: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zelta Zakat';

  @override
  String get zakatSilverZakat => 'Sudraba Zakat';

  @override
  String get zakatCashZakat => 'Cash Zakat';

  @override
  String get zakatBusinessZakat => 'Bizness Zakat';

  @override
  String get zakatInvestmentZakat => 'Investīcijas Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! Es esmu jūsu islāma palīgs. Jautājiet man par lūgšanu, gavēni, zakatu vai jebkuru islāma tēmu.';

  @override
  String get chatbotLimitReached =>
      'Sasniegts ikdienas vaicājumu ierobežojums. Jauniniet uz Premium bez ierobežojumiem.';

  @override
  String get chatbotErrorMsg =>
      'Es nevarēju radīt atbildi. Lūdzu, mēģiniet vēlreiz.';

  @override
  String get chatbotOfflinePrompt =>
      'Pārbaudītā bezsaistes islāma zināšanu bāze joprojām tiek apkopota. Varat iespējot bezsaistes atkāpšanos tūlīt, taču tajā tiks rādīti tikai ierobežoti droši ziņojumi, līdz būs gatava iegūtā datu kopa.\n\nVai vēlaties iespējot bezsaistes atkāpšanos?';

  @override
  String get chatbotOfflineSwitched =>
      'Bezsaistes atkāpšanās iespējota. Pārbaudītas vietējās islāma atbildes vēl nav gatavas.';

  @override
  String get chatbotOfflineDownloadLabel => 'Iespējot bezsaistes atkāpšanos';

  @override
  String get downloadPreparing => 'Notiek lejupielādes sagatavošana...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Notiek surah lejupielāde $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Visas šim deklamētājam jau lejupielādētās suras.';

  @override
  String get offlineQuranAudioPacks => 'Bezsaistes Korāna audio pakotnes';

  @override
  String storedOnDeviceMb(String size) {
    return 'Saglabāts ierīcē: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surahs lejupielādētas';
  }

  @override
  String get redownloadMissingRepair => 'Trūkst remonta/lejupielādes';

  @override
  String get downloadAction => 'Lejupielādēt';

  @override
  String get resumeDownload => 'Atsākt lejupielādi';

  @override
  String get deleteDownloadedFiles => 'Dzēst lejupielādētos failus';

  @override
  String get downloadCancelling => 'Notiek atcelšana...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Lejupielāde ir atcelta $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Lejupielāde pabeigta $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Lejupielāde ir pabeigta $reciter ar $failed neveiksmīgām surahām ($downloaded/$total ir lejupielādēta).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Izdzēsti bezsaistes faili $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Verificētie Korāna audio avoti pašlaik nav pieejami.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Verificētā Korāna audio pakotne ir nepilnīga ($available/$total). Atsvaidziniet mākoņa sēklu un mēģiniet vēlreiz.';
  }

  @override
  String get chatbotHint => 'Uzdot jautājumu...';

  @override
  String get chatbotThinking => 'Domājot...';

  @override
  String get sukunMixerSubtitle => 'Dabas un Korāna mikseris';

  @override
  String get audioPlayFailed => 'Audio atskaņošana neizdevās';

  @override
  String get sukunNatureLabel => 'Sukun (daba)';

  @override
  String get sukunRainOfMercy => 'Žēlsirdības lietus';

  @override
  String get sukunGardenOfPeace => 'Miera dārzs';

  @override
  String get sukunMidnightCalm => 'Pusnakts miers';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Skaņu ainavas nav pieejamas';

  @override
  String get sukunUnavailableBody =>
      'Šajā būvniecībā vēl nav iekļauti nepieciešamie Sukun skaņas ainavas līdzekļi.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Svītras';

  @override
  String get dayStreak => 'Dienas sērija';

  @override
  String get bestStreak => 'Labākā sērija';

  @override
  String get chatbotCloudAiLabel => 'Mākoņu AI';

  @override
  String get chatbotLocalAiLabel => 'Atkāpšanās bezsaistē';

  @override
  String get chatbotUseCloudAi => 'Izmantojiet mākoņa AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Iespējot bezsaistes atkāpšanos';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count palicis';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Mākoņa API nav konfigurēts. Verificētas bezsaistes islāma vadlīnijas vēl nav pieejamas.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Verificētas vietējās islāma vadlīnijas vēl nav pieejamas. Pārslēdzieties uz Cloud AI, lai saņemtu atbildes.';

  @override
  String get mosques => 'Mošejas';

  @override
  String get halalFood => 'Halal ēdiens';

  @override
  String get placesSearchArea => 'Meklēt šajā apgabalā';

  @override
  String get nearbyMosques => 'Tuvumā esošās mošejas';

  @override
  String get islamicSchools => 'Islāma skolas';

  @override
  String placesFoundCount(String count) {
    return '$count atrasts';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km attālumā';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API kļūda: $statusCode';
  }

  @override
  String get placesNetworkError => 'Tīkla kļūda. Lūdzu, mēģiniet vēlreiz.';

  @override
  String get placesLocationRequiredTitle => 'Nepieciešama atrašanās vieta';

  @override
  String get placesLocationRequiredBody =>
      'Vispirms iestatiet atrašanās vietu, lai varētu precīzi meklēt tuvumā esošās mošejas, halal ēdienu un islāma skolas.';

  @override
  String get placesMapTilesUnavailableTitle => 'Kartes flīzes nav pieejamas';

  @override
  String get placesMapTilesUnavailableBody =>
      'Verificēts kartes elementu avots šai būvei vēl nav konfigurēts. Netālu esošās vietas joprojām var ielādēt no jūsu saglabātās atrašanās vietas.';

  @override
  String get placesDataSourceUnavailableTitle => 'Vietu dati nav pieejami';

  @override
  String get placesDataSourceUnavailableBody =>
      'Verificēto vietu datu galapunkts šai būvei vēl nav konfigurēts. Pirms tuvumā esošās meklēšanas iespējošanas iestatiet vietni PLACES_OVERPASS_API_URL apstiprinātam starpniekserveri vai pakalpojumu sniedzējam.';

  @override
  String get unknownPlaceName => 'Nezināms Vārds';

  @override
  String get islamicPlaceFallback => 'Islāma vieta';

  @override
  String get asmaMeaning1 => 'Labvēlīgais';

  @override
  String get asmaMeaning2 => 'Žēlsirdīgais';

  @override
  String get asmaMeaning3 => 'Karalis / Mūžīgais Kungs';

  @override
  String get asmaMeaning4 => 'Vissvētākais';

  @override
  String get asmaMeaning5 => 'Miera avots';

  @override
  String get asmaMeaning6 => 'Drošības sniedzējs';

  @override
  String get asmaMeaning7 => 'The Guardian';

  @override
  String get asmaMeaning8 => 'Dārgākais / Visvarenākais';

  @override
  String get asmaMeaning9 => 'The Compeller';

  @override
  String get asmaMeaning10 => 'Vislielākā';

  @override
  String get asmaMeaning11 => 'Radītājs';

  @override
  String get asmaMeaning12 => 'Pasūtījuma veidotājs';

  @override
  String get asmaMeaning13 => 'Skaistuma veidotājs';

  @override
  String get asmaMeaning14 => 'Piedodošais';

  @override
  String get asmaMeaning15 => 'Pakļāvējs';

  @override
  String get asmaMeaning16 => 'Visa devējs';

  @override
  String get asmaMeaning17 => 'Uzturētājs';

  @override
  String get asmaMeaning18 => 'Atvērējs';

  @override
  String get asmaMeaning19 => 'Visu zinātājs';

  @override
  String get asmaMeaning20 => 'Constrictor';

  @override
  String get asmaMeaning21 => 'Atbrīvotājs';

  @override
  String get asmaMeaning22 => 'Abaser';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'Goda dāvinātājs';

  @override
  String get asmaMeaning25 => 'Pazemotājs';

  @override
  String get asmaMeaning26 => 'Visu uzklausītājs';

  @override
  String get asmaMeaning27 => 'Visa redzētājs';

  @override
  String get asmaMeaning28 => 'Tiesnesis';

  @override
  String get asmaMeaning29 => 'Taisnīgais';

  @override
  String get asmaMeaning30 => 'Smalkais';

  @override
  String get asmaMeaning31 => 'Visi informēti';

  @override
  String get asmaMeaning32 => 'Iepriekšējie';

  @override
  String get asmaMeaning33 => 'Lieliskais';

  @override
  String get asmaMeaning34 => 'Lielais piedodošais';

  @override
  String get asmaMeaning35 => 'Pateicības atalgotājs';

  @override
  String get asmaMeaning36 => 'Augstākais';

  @override
  String get asmaMeaning37 => 'Vislielākā';

  @override
  String get asmaMeaning38 => 'Konservētājs';

  @override
  String get asmaMeaning39 => 'Barotājs';

  @override
  String get asmaMeaning40 => 'Rekonner';

  @override
  String get asmaMeaning41 => 'Majestāte';

  @override
  String get asmaMeaning42 => 'Dāsnais';

  @override
  String get asmaMeaning43 => 'Uzmanīgais';

  @override
  String get asmaMeaning44 => 'Atbildētājs uz lūgšanu';

  @override
  String get asmaMeaning45 => 'Visaptveroši';

  @override
  String get asmaMeaning46 => 'Pilnīgi gudrais';

  @override
  String get asmaMeaning47 => 'Mīlošais cilvēks';

  @override
  String get asmaMeaning48 => 'Visslavenākā';

  @override
  String get asmaMeaning49 => 'Resurrector';

  @override
  String get asmaMeaning50 => 'Liecinieks';

  @override
  String get asmaMeaning51 => 'Patiesība';

  @override
  String get asmaMeaning52 => 'Vispārīgais pilnvarnieks';

  @override
  String get asmaMeaning53 => 'Visa spēka īpašnieks';

  @override
  String get asmaMeaning54 => 'Spēcīgais';

  @override
  String get asmaMeaning55 => 'Aizsargs';

  @override
  String get asmaMeaning56 => 'Uzslavētie';

  @override
  String get asmaMeaning57 => 'Vērtētājs';

  @override
  String get asmaMeaning58 => 'Iesācējs';

  @override
  String get asmaMeaning59 => 'Atjaunotājs';

  @override
  String get asmaMeaning60 => 'Dzīvības devējs';

  @override
  String get asmaMeaning61 => 'Dzīvības atņēmējs';

  @override
  String get asmaMeaning62 => 'Ever Living';

  @override
  String get asmaMeaning63 => 'Pašpietiekams uzturētājs';

  @override
  String get asmaMeaning64 => 'Atrastājs';

  @override
  String get asmaMeaning65 => 'Glorious';

  @override
  String get asmaMeaning66 => 'Vienīgais';

  @override
  String get asmaMeaning67 => 'Vienīgais';

  @override
  String get asmaMeaning68 => 'Tā, kuru meklē visi';

  @override
  String get asmaMeaning69 => 'Spēcīgais';

  @override
  String get asmaMeaning70 => 'Visa spēka Radītājs';

  @override
  String get asmaMeaning71 => 'Expediter';

  @override
  String get asmaMeaning72 => 'Kavēšanās';

  @override
  String get asmaMeaning73 => 'Pirmais';

  @override
  String get asmaMeaning74 => 'Pēdējais';

  @override
  String get asmaMeaning75 => 'Manifests';

  @override
  String get asmaMeaning76 => 'Paslēptais';

  @override
  String get asmaMeaning77 => 'Gubernators';

  @override
  String get asmaMeaning78 => 'Augstākā';

  @override
  String get asmaMeaning79 => 'Laba darītājs';

  @override
  String get asmaMeaning80 => 'Grēku nožēlošanas ceļvedis';

  @override
  String get asmaMeaning81 => 'Atriebējs';

  @override
  String get asmaMeaning82 => 'Piedodošais';

  @override
  String get asmaMeaning83 => 'Klements';

  @override
  String get asmaMeaning84 => 'Īpašnieks/Visu Suverēns';

  @override
  String get asmaMeaning85 => 'Majestātes un balvas īpašnieks';

  @override
  String get asmaMeaning86 => 'Equitable One';

  @override
  String get asmaMeaning87 => 'Savācējs';

  @override
  String get asmaMeaning88 => 'Bagātais';

  @override
  String get asmaMeaning89 => 'Bagātinātājs';

  @override
  String get asmaMeaning90 => 'Kaitējuma novēršanas līdzeklis';

  @override
  String get asmaMeaning91 => 'Kaitējuma izraisītājs';

  @override
  String get asmaMeaning92 => 'Priekšrocību sniedzējs';

  @override
  String get asmaMeaning93 => 'Gaisma';

  @override
  String get asmaMeaning94 => 'Vadītājs';

  @override
  String get asmaMeaning95 => 'Iesācējs';

  @override
  String get asmaMeaning96 => 'Mūžīgais';

  @override
  String get asmaMeaning97 => 'Mantinieks';

  @override
  String get asmaMeaning98 => 'Vistaisnīgākais ceļvedis';

  @override
  String get asmaMeaning99 => 'Pacients One';
}
