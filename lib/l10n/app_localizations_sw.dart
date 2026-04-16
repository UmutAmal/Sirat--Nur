// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class AppLocalizationsSw extends AppLocalizations {
  AppLocalizationsSw([String locale = 'sw']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Njia ya Kiislamu ya Nuru';

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
  String get sunrise => 'Kuchomoza kwa jua';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Magharibi';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Muda wa $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Ni wakati wa kuomba $prayerName.';
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
  String get locationServiceDisabled => 'Huduma ya eneo imezimwa.';

  @override
  String get locationPermissionDenied => 'Ruhusa ya eneo imekataliwa.';

  @override
  String get locationDetectionFailed =>
      'Haikuweza kutambua eneo lako. Tafadhali chagua jiji wewe mwenyewe au ujaribu tena.';

  @override
  String citiesCount(String count) {
    return '$count miji';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'Hakuna matokeo yaliyopatikana';

  @override
  String get loading => 'Inapakia...';

  @override
  String get error => 'Hitilafu';

  @override
  String get appErrorOccurred => 'Hitilafu imetokea';

  @override
  String get appUnknownError => 'Hitilafu isiyojulikana';

  @override
  String get quranLoadFailed =>
      'Maudhui ya Quran hayakuweza kupakiwa. Tafadhali jaribu tena.';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Onyesha upya';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Futa';

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
  String get tafsirLoading => 'Inapakia tafsir...';

  @override
  String get tafsirSourceLabel => 'Chanzo cha Tafsir';

  @override
  String get tafsirNoSurahFound => 'Hakuna tafsir iliyopatikana kwa surah hii.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Hakuna tafsir iliyopatikana ya ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir haikuweza kupakiwa.';

  @override
  String get tafsirNoTextForAyah => 'Hakuna maandishi ya tafsir kwa aya hii.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Inapakua tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Inapakia tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Chanzo cha Tafsir kilileta hitilafu ya HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Chanzo cha tafsir kilichochaguliwa hakikurejesha maingizo.';

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
      'wengine huomba, ‘Mola wetu, tupe mema duniani na Akhera, na utulinde na adhabu ya Moto.';

  @override
  String get duaMeaning2 =>
      'Mwenyezi Mungu haikalifishi nafsi yoyote zaidi ya inavyoweza kustahimili, kila mmoja anapata wema wowote alioufanya, na anapata ubaya wake, ‘Mola Mlezi, usituchukulie tukisahau au kukosea. Ewe Mola, usitutwishe kama ulivyowatwika waliokuwa kabla yetu. Bwana, usitulemee zaidi ya uwezo wetu wa kustahimili. Utusamehe, utusamehe, na utuhurumie. Wewe ndiye Mlinzi wetu, basi tusaidie dhidi ya makafiri.';

  @override
  String get duaMeaning3 =>
      '‘Mola wetu, usizipotoe nyoyo zetu baada ya wewe kutuongoza. Utupe rehema Yako: Wewe ndiwe Mtoaji daima.';

  @override
  String get duaMeaning4 =>
      'Mola wangu nijaalie mimi na dhuria wangu tushike Sala. Mola wetu, ukubali ombi langu.';

  @override
  String get duaMeaning5 =>
      'na uwainamishie bawa lako kwa unyenyekevu na useme, ‘Mola, warehemu, kama walivyonijali nilipokuwa mdogo.';

  @override
  String get duaMeaning6 =>
      'atukuzwe Mungu, ambaye kweli anatawala. [Mtume], usikimbilie kusoma kabla wahyi haujakamilika, bali sema, ‘Mola wangu, niongezee elimu!';

  @override
  String get duaMeaning7 =>
      'Sema [Mtume]: ‘Mola wangu, samehe na urehemu: Wewe ni mwingi wa kurehemu.';

  @override
  String get duaMeaning8 =>
      'wanaoomba: Mola wetu Mlezi, tupe furaha katika wake zetu na watoto wetu. Tufanyie mifano mizuri kwa wale wanaokufahamu wewe’.';

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
  String get hadith => 'Hadithi';

  @override
  String get hadithCollection => 'Mkusanyiko wa Hadith';

  @override
  String get hadithBooks => 'Vitabu vya Hadith';

  @override
  String get searchHadith => 'Tafuta Hadiyth';

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
  String get openInYoutube => 'Fungua kwenye YouTube';

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
    return '${hours}saa ${minutes}dakika';
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
  String get islamicNewYear => 'Mwaka Mpya wa Kiislamu';

  @override
  String get mawlidAnNabi => 'Maulid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadhani';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadhani';

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
    return 'Hitilafu ya dira: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Kihisi cha dira hakipatikani kwenye kifaa hiki.';

  @override
  String get qiblaLocationRequiredTitle => 'Mahali panahitajika kwa Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Weka eneo lako halisi kabla ya kutumia dira ya Qibla ili mwelekeo uweze kuhesabiwa kwa usahihi.';

  @override
  String get adhanNotificationChannelName => 'Arifa za Adhana';

  @override
  String get adhanNotificationChannelDescription =>
      'Tahadhari za wakati wa maombi na sauti ya adhana.';

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
    return 'Angalia $appName: Programu bora zaidi ya mtindo wa maisha ya Kiislamu! $url';
  }

  @override
  String get downloadManager => 'Kidhibiti cha Upakuaji';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Upakuaji umekamilika';

  @override
  String get downloadFailed => 'Imeshindwa Kupakua';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'Hakuna Muunganisho wa Mtandao';

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
  String get zikrCompletedMashAllah => 'Imekamilika! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Mwenyezi Mungu yu mbali sana juu ya kila upungufu.';

  @override
  String get zikrMeaningAlhamdulillah =>
      'Sifa njema zote ni za Mwenyezi Mungu.';

  @override
  String get zikrMeaningAllahuAkbar => 'Mwenyezi Mungu ndiye Mkubwa.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Hapana mungu ila Mwenyezi Mungu.';

  @override
  String get zikrMeaningAstaghfirullah => 'Naomba msamaha kwa Mwenyezi Mungu.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Hakuna nguvu wala nguvu ila kwa Mwenyezi Mungu.';

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
  String get offlineDownloadManager => 'Kidhibiti cha Upakuaji Nje ya Mtandao';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Futa hifadhi ya ndani ya kifaa.';

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
  String get audioVoice => 'Sauti ya Sauti';

  @override
  String get audioVoiceMisharyAlafasy => 'Mwanaume (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Mwanaume (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Mwanaume (Sudais)';

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
  String get diagnosticsNotSet => 'Haijawekwa';

  @override
  String get diagnosticsPrayerProfile => 'Wasifu wa Maombi';

  @override
  String get diagnosticsPrayerSource => 'Mamlaka ya Maombi';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Maalum / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Pembe maalum za mwongozo (hakuna chanzo cha kitaasisi)';

  @override
  String get diagnosticsCloudDriven => 'Inaendeshwa na Wingu';

  @override
  String get diagnosticsAdhanAudioAssets => 'Mali ya Sauti ya Adhan';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Mali za Sauti za Quran';

  @override
  String get diagnosticsAudioAssets => 'Vipengee vya Sauti';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count faili';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Usomaji wa maelezo haujafaulu: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Maeneo ya Ujanibishaji';

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
      'Meza za wingu hazipo katika Supabase; vifurushi njia mbadala vinatumika';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'metadata ya Cloud juz haipo; mrejesho wa muundo uliounganishwa unawashwa';

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
  String get dailyVerse => 'Mstari wa kila siku';

  @override
  String get todaysIbadah => 'Ibada ya leo';

  @override
  String get quickAccess => 'Ufikiaji wa Haraka';

  @override
  String get assistant => 'Msaidizi';

  @override
  String get places => 'Maeneo';

  @override
  String get library => 'Maktaba';

  @override
  String get analytics => 'Uchanganuzi';

  @override
  String get dailyDuas => 'Dua za kila siku';

  @override
  String essentialDuas(String count) {
    return '$count dua muhimu';
  }

  @override
  String get duaUnavailableTitle => 'Dua zilizothibitishwa bado hazipatikani';

  @override
  String get duaUnavailableBody =>
      'Dua za kila siku zilizothibitishwa bado hazijasawazishwa kwenye kifaa hiki. Unganisha kwenye chanzo cha wingu ili kupakia dua zilizotoka badala ya njia mbadala ambayo haijathibitishwa.';

  @override
  String get duaCategoryQuranic => 'Dua ya Quran';

  @override
  String get duaCategoryMorningEvening => 'Asubuhi na Jioni';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Ulinzi';

  @override
  String get duaCategoryBeginning => 'Mwanzo';

  @override
  String get duaCategorySleep => 'Kulala';

  @override
  String get duaCategoryFoodDrink => 'Chakula na Vinywaji';

  @override
  String get duaCategoryForgiveness => 'Msamaha';

  @override
  String get duaCategoryHome => 'Nyumbani';

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
  String get islamicEducation => 'Elimu ya Kiislamu';

  @override
  String get sukunAudioTitle => 'Picha za Sukun';

  @override
  String get hadithCollections => 'Makusanyo ya Hadith';

  @override
  String get hadithSourcePending => 'Chanzo kilichothibitishwa kinasubiri';

  @override
  String get hadithUnavailableTitle =>
      'Mkusanyiko wa Hadith zilizothibitishwa bado hazipatikani';

  @override
  String get hadithUnavailableBody =>
      'Muundo huu bado unategemea mlisho wa Hadith wa nje ambao haujathibitishwa. Uvinjari wa Hadith husalia kuzimwa hadi mkusanyiko wa data uliopatikana ulandanishwe.';

  @override
  String get paywallUnlockAll =>
      'Fungua vipengele vyote vya safari yako ya kiroho';

  @override
  String get premiumProductUnavailable =>
      'Bidhaa ya kulipia haipatikani kwa sasa. Tafadhali jaribu tena baadaye.';

  @override
  String get premiumPurchaseFailed =>
      'Ununuzi haukuweza kukamilika. Tafadhali jaribu tena.';

  @override
  String get paywallFeature1Title => 'Msaidizi wa Neural Plus';

  @override
  String get paywallFeature1Desc =>
      'Maswali na Majibu yanayoendeshwa na AI bila kikomo';

  @override
  String get paywallFeature2Title => 'Unlimited Offline';

  @override
  String get paywallFeature2Desc => 'Pakua vikariri vyote';

  @override
  String get paywallFeature3Title => 'Miundo ya Kipekee';

  @override
  String get paywallFeature3Desc => 'Mandhari na fonti za hali ya juu';

  @override
  String get paywallFeature4Title => 'Bila Matangazo';

  @override
  String get paywallFeature4Desc => 'Matangazo sifuri';

  @override
  String get paywallGetAccess => 'Pata Ufikiaji wa Maisha - \$1.00';

  @override
  String get restorePurchases => 'Rejesha Ununuzi';

  @override
  String get zakatCalculator => 'Kikokotoo cha Zakat';

  @override
  String get zakatGold => 'Dhahabu (Altın)';

  @override
  String get zakatSilver => 'Fedha (Gümüş)';

  @override
  String get zakatCashBank => 'Fedha / Benki';

  @override
  String get zakatBusiness => 'Biashara';

  @override
  String get zakatInvestments => 'Uwekezaji';

  @override
  String get zakatWeightGrams => 'Uzito (g)';

  @override
  String get zakatPricePerGram => 'Bei/g';

  @override
  String get zakatTotalAmount => 'Jumla ya Kiasi';

  @override
  String get zakatInventoryValue => 'Thamani ya Malipo';

  @override
  String get zakatDebts => 'Madeni';

  @override
  String get zakatTotal => 'Jumla';

  @override
  String get calculateZakat => 'Hesabu Zakat';

  @override
  String get nisabNotReached => 'Nisab haijafikiwa. Zaka si wajibu.';

  @override
  String get totalZakat => 'Jumla ya Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Mali: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakat ya dhahabu';

  @override
  String get zakatSilverZakat => 'Zakat ya Fedha';

  @override
  String get zakatCashZakat => 'Zakat ya Fedha';

  @override
  String get zakatBusinessZakat => 'Zakat ya Biashara';

  @override
  String get zakatInvestmentZakat => 'Zaka ya Uwekezaji';

  @override
  String get chatbotGreeting =>
      'Assalam Alaikum! Mimi ni msaidizi wako wa Kiislamu. Niulize kuhusu sala, saumu, zaka, au mada yoyote ya Kiislamu.';

  @override
  String get chatbotLimitReached =>
      'Kikomo cha hoja za kila siku kimefikiwa. Pata toleo jipya la Premium kwa ukomo.';

  @override
  String get chatbotErrorMsg => 'Sikuweza kutoa jibu. Tafadhali jaribu tena.';

  @override
  String get chatbotOfflinePrompt =>
      'Msingi wa maarifa ya Kiislamu nje ya mtandao uliothibitishwa bado unaratibiwa. Unaweza kuwezesha urejeshaji mkondo sasa, lakini itaonyesha ujumbe salama tu hadi mkusanyiko wa data uliyotoka uwe tayari.\n\nJe, ungependa kuwezesha urejeshaji wa nje ya mtandao?';

  @override
  String get chatbotOfflineSwitched =>
      'Njia mbadala ya nje ya mtandao imewezeshwa. Majibu yaliyothibitishwa ya Kiislamu ya ndani bado hayako tayari.';

  @override
  String get chatbotOfflineDownloadLabel => 'Washa Fallback Nje ya Mtandao';

  @override
  String get downloadPreparing => 'Inatayarisha upakuaji...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Inapakua surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Sura zote tayari zimepakuliwa kwa msomaji huyu.';

  @override
  String get offlineQuranAudioPacks =>
      'Vifurushi vya Sauti vya Kurani za nje ya mtandao';

  @override
  String storedOnDeviceMb(String size) {
    return 'Imehifadhiwa kwenye kifaa: MB $size';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surah zimepakuliwa';
  }

  @override
  String get redownloadMissingRepair => 'Urekebishaji / Upakuaji Haipo';

  @override
  String get downloadAction => 'Pakua';

  @override
  String get resumeDownload => 'Endelea Kupakua';

  @override
  String get deleteDownloadedFiles => 'Futa Faili Zilizopakuliwa';

  @override
  String get downloadCancelling => 'Inaghairi...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Upakuaji umeghairiwa kwa $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Upakuaji umekamilika kwa $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Upakuaji umekamilika kwa $reciter na $failed surah zilizoshindwa ($downloaded/$total zimepakuliwa).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Faili za nje ya mtandao zimefutwa za $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Vyanzo vya sauti vya Kurani vilivyothibitishwa havipatikani kwa sasa.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Kifurushi cha sauti cha Kurani kilichothibitishwa hakijakamilika ($available/$total). Onyesha upya mbegu za wingu na ujaribu tena.';
  }

  @override
  String get chatbotHint => 'Uliza swali...';

  @override
  String get chatbotThinking => 'Kufikiri...';

  @override
  String get sukunMixerSubtitle => 'Asili na Mchanganyiko wa Kurani';

  @override
  String get audioPlayFailed => 'Uchezaji wa sauti umeshindwa';

  @override
  String get sukunNatureLabel => 'Sukun (Asili)';

  @override
  String get sukunRainOfMercy => 'Mvua ya Rehema';

  @override
  String get sukunGardenOfPeace => 'Bustani ya Amani';

  @override
  String get sukunMidnightCalm => 'Usiku wa manane Utulivu';

  @override
  String get sukunOceanTawheed => 'Bahari ya Tawhiyd';

  @override
  String get sukunUnavailableTitle => 'Mandhari ya sauti haipatikani';

  @override
  String get sukunUnavailableBody =>
      'Muundo huu bado haujumuishi vipengee vinavyohitajika vya mwonekano wa sauti wa Sukun.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Michirizi';

  @override
  String get dayStreak => 'Mfululizo wa siku';

  @override
  String get bestStreak => 'Mfululizo bora';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Njia ya Kurudi Nje ya Mtandao';

  @override
  String get chatbotUseCloudAi => 'Tumia Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Washa Fallback Nje ya Mtandao';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count imesalia';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'API ya Wingu haijasanidiwa. Mwongozo wa Kiislamu uliothibitishwa nje ya mtandao haupatikani bado.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Mwongozo wa karibu wa Kiislamu uliothibitishwa bado haupatikani. Badili hadi Cloud AI kwa majibu ya chanzo.';

  @override
  String get mosques => 'Misikiti';

  @override
  String get halalFood => 'Chakula cha Halal';

  @override
  String get placesSearchArea => 'Tafuta eneo hili';

  @override
  String get nearbyMosques => 'Misikiti iliyo karibu';

  @override
  String get islamicSchools => 'Shule za Kiislamu';

  @override
  String placesFoundCount(String count) {
    return '$count imepatikana';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance kilomita';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Hitilafu ya API: $statusCode';
  }

  @override
  String get placesNetworkError =>
      'Hitilafu ya mtandao. Tafadhali jaribu tena.';

  @override
  String get placesLocationRequiredTitle => 'Mahali panahitajika';

  @override
  String get placesLocationRequiredBody =>
      'Weka eneo kwanza ili misikiti iliyo karibu, chakula cha halali na shule za Kiislamu zitafutwe kwa usahihi.';

  @override
  String get placesMapTilesUnavailableTitle => 'Vigae vya ramani hazipatikani';

  @override
  String get placesMapTilesUnavailableBody =>
      'Chanzo cha kigae cha ramani kilichothibitishwa bado hakijasanidiwa kwa muundo huu. Maeneo ya karibu bado yanaweza kupakia kutoka eneo lako lililohifadhiwa.';

  @override
  String get placesDataSourceUnavailableTitle => 'Data ya maeneo haipatikani';

  @override
  String get placesDataSourceUnavailableBody =>
      'Mwisho wa data ya maeneo yaliyothibitishwa bado haujasanidiwa kwa muundo huu. Weka PLACES_OVERPASS_API_URL iwe proksi au mtoa huduma aliyeidhinishwa kabla ya kuwezesha utafutaji ulio karibu.';

  @override
  String get unknownPlaceName => 'Jina lisilojulikana';

  @override
  String get islamicPlaceFallback => 'Mahali pa Kiislamu';

  @override
  String get asmaMeaning1 => 'Mwingi wa Rehema';

  @override
  String get asmaMeaning2 => 'Mwenye Rehema';

  @override
  String get asmaMeaning3 => 'Mfalme / Bwana wa Milele';

  @override
  String get asmaMeaning4 => 'Mtakatifu Zaidi';

  @override
  String get asmaMeaning5 => 'Chanzo cha Amani';

  @override
  String get asmaMeaning6 => 'Mtoa Usalama';

  @override
  String get asmaMeaning7 => 'Mlezi';

  @override
  String get asmaMeaning8 => 'Mwenye Thamani / Mwenye Nguvu Zaidi';

  @override
  String get asmaMeaning9 => 'Mwenye Kulazimisha';

  @override
  String get asmaMeaning10 => 'Mkuu';

  @override
  String get asmaMeaning11 => 'Muumba';

  @override
  String get asmaMeaning12 => 'Mtengenezaji wa Utaratibu';

  @override
  String get asmaMeaning13 => 'Mtengenezaji wa Urembo';

  @override
  String get asmaMeaning14 => 'Mwenye Kusamehe';

  @override
  String get asmaMeaning15 => 'Mtawala';

  @override
  String get asmaMeaning16 => 'Mpaji wa Vyote';

  @override
  String get asmaMeaning17 => 'Mfadhili';

  @override
  String get asmaMeaning18 => 'Kifunguaji';

  @override
  String get asmaMeaning19 => 'Mjuzi wa Yote';

  @override
  String get asmaMeaning20 => 'Constrictor';

  @override
  String get asmaMeaning21 => 'Mkombozi';

  @override
  String get asmaMeaning22 => 'Mwenye Abaser';

  @override
  String get asmaMeaning23 => 'Mnyanyuzi';

  @override
  String get asmaMeaning24 => 'Mtoaji wa Heshima';

  @override
  String get asmaMeaning25 => 'Mdhalilishaji';

  @override
  String get asmaMeaning26 => 'Msikiaji wa Yote';

  @override
  String get asmaMeaning27 => 'Mwonaji wa Wote';

  @override
  String get asmaMeaning28 => 'Hakimu';

  @override
  String get asmaMeaning29 => 'Mwenye Haki';

  @override
  String get asmaMeaning30 => 'Yule Mpole';

  @override
  String get asmaMeaning31 => 'Wenye Ufahamu Wote';

  @override
  String get asmaMeaning32 => 'Mtangulizi';

  @override
  String get asmaMeaning33 => 'Mtukufu';

  @override
  String get asmaMeaning34 => 'Msamehevu Mkuu';

  @override
  String get asmaMeaning35 => 'Mthawabishaji wa Shukrani';

  @override
  String get asmaMeaning36 => 'Aliye Juu Zaidi';

  @override
  String get asmaMeaning37 => 'Mkuu';

  @override
  String get asmaMeaning38 => 'Mhifadhi';

  @override
  String get asmaMeaning39 => 'Mlezi';

  @override
  String get asmaMeaning40 => 'Mwenye kuhisabu';

  @override
  String get asmaMeaning41 => 'Mkuu';

  @override
  String get asmaMeaning42 => 'Mwenye Ukarimu';

  @override
  String get asmaMeaning43 => 'Mwenye Kukesha';

  @override
  String get asmaMeaning44 => 'Mwitikio wa Swala';

  @override
  String get asmaMeaning45 => 'Ufahamu Wote';

  @override
  String get asmaMeaning46 => 'Mwenye Hekima Kamili';

  @override
  String get asmaMeaning47 => 'Yule Mpendwa';

  @override
  String get asmaMeaning48 => 'Aliyetukuka zaidi';

  @override
  String get asmaMeaning49 => 'Mfufuaji';

  @override
  String get asmaMeaning50 => 'Shahidi huyo';

  @override
  String get asmaMeaning51 => 'Ukweli';

  @override
  String get asmaMeaning52 => 'Mdhamini wa Kutosha Yote';

  @override
  String get asmaMeaning53 => 'Mmiliki wa Nguvu Zote';

  @override
  String get asmaMeaning54 => 'Mwenye Nguvu';

  @override
  String get asmaMeaning55 => 'Mlinzi';

  @override
  String get asmaMeaning56 => 'Waliosifiwa';

  @override
  String get asmaMeaning57 => 'Mthamini';

  @override
  String get asmaMeaning58 => 'Mwanzilishi';

  @override
  String get asmaMeaning59 => 'Mrejeshaji';

  @override
  String get asmaMeaning60 => 'Mpaji wa Uzima';

  @override
  String get asmaMeaning61 => 'Mtoa Uhai';

  @override
  String get asmaMeaning62 => 'Mwenye Kuishi';

  @override
  String get asmaMeaning63 => 'Mwenye Kujiruzuku';

  @override
  String get asmaMeaning64 => 'Mpataji';

  @override
  String get asmaMeaning65 => 'Mtukufu';

  @override
  String get asmaMeaning66 => 'Mmoja Pekee';

  @override
  String get asmaMeaning67 => 'Yule Mmoja';

  @override
  String get asmaMeaning68 => 'Anayetafutwa na Wote';

  @override
  String get asmaMeaning69 => 'Mwenye Nguvu';

  @override
  String get asmaMeaning70 => 'Muumba wa nguvu zote';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'Mcheleweshaji';

  @override
  String get asmaMeaning73 => 'Ya Kwanza';

  @override
  String get asmaMeaning74 => 'Wa Mwisho';

  @override
  String get asmaMeaning75 => 'Dhihirisho';

  @override
  String get asmaMeaning76 => 'Iliyofichwa';

  @override
  String get asmaMeaning77 => 'Mkuu wa Mkoa';

  @override
  String get asmaMeaning78 => 'Aliye Juu';

  @override
  String get asmaMeaning79 => 'Mwenye kufanya wema';

  @override
  String get asmaMeaning80 => 'Mwongozo wa Toba';

  @override
  String get asmaMeaning81 => 'Mlipiza kisasi';

  @override
  String get asmaMeaning82 => 'Mwenye kusamehe';

  @override
  String get asmaMeaning83 => 'The Clement';

  @override
  String get asmaMeaning84 => 'Mmiliki / Mfalme wa Wote';

  @override
  String get asmaMeaning85 => 'Mwenye Ukuu na Fadhila';

  @override
  String get asmaMeaning86 => 'Mwenye Haki';

  @override
  String get asmaMeaning87 => 'Mkusanyaji';

  @override
  String get asmaMeaning88 => 'Tajiri';

  @override
  String get asmaMeaning89 => 'Mtajirisha';

  @override
  String get asmaMeaning90 => 'Kizuia Madhara';

  @override
  String get asmaMeaning91 => 'Mleta Madhara';

  @override
  String get asmaMeaning92 => 'Mtoaji wa Faida';

  @override
  String get asmaMeaning93 => 'Nuru';

  @override
  String get asmaMeaning94 => 'Mwongozi';

  @override
  String get asmaMeaning95 => 'Mwanzilishi';

  @override
  String get asmaMeaning96 => 'Yule wa Milele';

  @override
  String get asmaMeaning97 => 'Mrithi';

  @override
  String get asmaMeaning98 => 'Mwongozo Muadilifu';

  @override
  String get asmaMeaning99 => 'Yule Mgonjwa';
}
