// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Maltese (`mt`).
class AppLocalizationsMt extends AppLocalizations {
  AppLocalizationsMt([String locale = 'mt']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Mod Iżlamiku tad-Dawl';

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
  String get sunrise => 'Tlugħ ix-xemx';

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
    return 'Ħin għal $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Wasal iż-żmien li nitolbu $prayerName.';
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
      'Is-servizz tal-lokazzjoni huwa diżattivat.';

  @override
  String get locationPermissionDenied => 'Permess għall-post miċħud.';

  @override
  String citiesCount(String count) {
    return '$count bliet';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'No results found';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get appErrorOccurred => 'Sar żball';

  @override
  String get appUnknownError => 'Żball mhux magħruf';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Aġġorna';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Delete';

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
  String get tafsirLoading => 'Tagħbija tafsir...';

  @override
  String get tafsirSourceLabel => 'sors Tafsir';

  @override
  String get tafsirNoSurahFound => 'L-ebda tafsir ma nstab għal din is-surah.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'L-ebda tafsir ma nstab għal ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir ma setax jitgħabba.';

  @override
  String get tafsirNoTextForAyah => 'Nru tafsir test għal dan ayah.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Niżżel tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Tagħbija tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Is-sors Tafsir irritorna żball HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Is-sors ta\' tafsir magħżul ma rritorna l-ebda dħul.';

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
      'oħrajn jitolbu, ‘Mulej tagħna, agħtina l-ġid f’din id-dinja u f’hawn ta’ wara, u ħarisna mit-turment tan-Nar.’';

  @override
  String get duaMeaning2 =>
      'Alla ma jgħabbi l-ebda ruħ b’aktar minn dak li jiflaħ: kull wieħed jikseb kull ġid li jkun għamel, u jbati l-ħażin tiegħu- ‘Mulej, teħodnix f’xogħol jekk ninsew jew niżbaljaw. Mulej, tgħabbinix bħalma int għabbit lil dawk ta’ qabilna. Mulej, tgħabbinix b’aktar milli għandna s-saħħa x’niġorru. Aħfirna, aħfrilna, u ħniena minna. Int il-​Protettur tagħna, allura għinna kontra dawk li ma jemmnux.’';

  @override
  String get duaMeaning3 =>
      '‘Mulej tagħna, tħallix qalbna tiddevja wara li Inti tkun ggwidatna. Agħtina l-ħniena Tiegħek: Int Dak li Dejjem Tagħti.';

  @override
  String get duaMeaning4 =>
      'Mulej, agħti li jien u nisli nżommu t-talb. Sidna, aċċetta t-talba tiegħi.';

  @override
  String get duaMeaning5 =>
      'u baxxi ġwenħajk bl-umiltà lejhom bil-qalb tajba u għid, ‘Mulej, ħenn minnhom, bħalma kienu jieħdu ħsiebi meta kont żgħir.’';

  @override
  String get duaMeaning6 =>
      'għola jkun Alla, dak li tassew għandu kontroll. [Profeta], tgħaġġlax biex tirreċita qabel ir-rivelazzjoni tkun kompluta għal kollox imma għid, ‘Mulej, ikabbarni fl-għarfien!’';

  @override
  String get duaMeaning7 =>
      'Għid [Profeta], ‘Mulej, aħfer u ħniena: Inti l-aktar ħanin minn kulħadd.’';

  @override
  String get duaMeaning8 =>
      'dawk li jitolbu, ‘Mulej tagħna, agħtina l-ferħ fil-miżżewġin u n-nisel tagħna. Agħmilna eżempji tajbin għal dawk li huma konxji minnek’.';

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
  String get hadithCollection => 'Ġabra Hadith';

  @override
  String get hadithBooks => 'Kotba tal-Hadith';

  @override
  String get searchHadith => 'Fittex Hadith';

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
  String get openInYoutube => 'Iftaħ fi YouTube';

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
  String get islamicNewYear => 'Is-Sena l-Ġdida Iżlamika';

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
    return 'Żball fil-boxxla: $error';
  }

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
    return 'Ara $appName: L-app aħħarija tal-istil tal-ħajja Iżlamiku! $url';
  }

  @override
  String get downloadManager => 'Niżżel il-Maniġer';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Download Complete';

  @override
  String get downloadFailed => 'Download Failed';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'No Internet Connection';

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
  String get zikrCompletedMashAllah => 'Tlesti! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah huwa ferm ogħla minn kull imperfezzjoni.';

  @override
  String get zikrMeaningAlhamdulillah =>
      'It-tifħir kollu jappartjeni lil Alla.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah huwa l-Akbar.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'M\'hemm l-ebda alla ħlief Alla.';

  @override
  String get zikrMeaningAstaghfirullah => 'Infittex il-maħfra ta’ Alla.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'M\'hemm l-ebda qawwa u l-ebda saħħa ħlief permezz ta \'Allah.';

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
  String get audioVoice => 'Audio Voice';

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
  String get diagnosticsNotSet => 'Mhux issettjat';

  @override
  String get diagnosticsPrayerProfile => 'Profil tat-Talb';

  @override
  String get diagnosticsPrayerSource => 'Awtorità tat-Talb';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Angoli manwali tad-dwana (l-ebda sors istituzzjonali)';

  @override
  String get diagnosticsCloudDriven => 'Sħab Immexxi';

  @override
  String get diagnosticsAdhanAudioAssets => 'Assi Awdjo Adhan';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Assi Awdjo Quran';

  @override
  String get diagnosticsAudioAssets => 'Assi Awdjo';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count fajls';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Il-qari tal-manifest falla: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Lokalizzazzjoni Lokali';

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
      'Cloud tables nieqsa f\'Supabase; bundled fallback attiv';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Metadata tal-juz tal-cloud nieqsa; bundled riżerva strutturali attiva';

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
  String get dailyVerse => 'Vers ta \'Kuljum';

  @override
  String get todaysIbadah => 'Ibadah tal-lum';

  @override
  String get quickAccess => 'Aċċess malajr';

  @override
  String get assistant => 'Assistent';

  @override
  String get places => 'Postijiet';

  @override
  String get library => 'Librerija';

  @override
  String get analytics => 'Analytics';

  @override
  String get dailyDuas => 'Duas kuljum';

  @override
  String essentialDuas(String count) {
    return '$count duas essenzjali';
  }

  @override
  String get duaUnavailableTitle =>
      'Duas verifikati għadhom mhumiex disponibbli';

  @override
  String get duaUnavailableBody =>
      'Duas ta\' kuljum ivverifikati għadhom ma ġewx issinkronizzati ma\' dan l-apparat. Qabbad mas-sors tas-sħab biex tagħbija duas minn sorsi minflok riżerva mhux verifikata.';

  @override
  String get duaCategoryQuranic => 'Dua Koraniku';

  @override
  String get duaCategoryMorningEvening => 'Filgħodu u Filgħaxija';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Protezzjoni';

  @override
  String get duaCategoryBeginning => 'Bidu';

  @override
  String get duaCategorySleep => 'Irqad';

  @override
  String get duaCategoryFoodDrink => 'Ikel u Xorb';

  @override
  String get duaCategoryForgiveness => 'Maħfra';

  @override
  String get duaCategoryHome => 'Dar';

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
  String get islamicEducation => 'Edukazzjoni Iżlamika';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Kollezzjonijiet Hadith';

  @override
  String get hadithSourcePending => 'Sors ivverifikat pendenti';

  @override
  String get hadithUnavailableTitle =>
      'Il-kollezzjonijiet verifikati tal-hadith għadhom mhumiex disponibbli';

  @override
  String get hadithUnavailableBody =>
      'Din il-bini għadha tiddependi fuq għalf hadith estern mhux ivverifikat. L-ibbrawżjar tal-Hadith jibqa\' diżattivat sakemm sett ta\' data misjub jiġi sinkronizzat.';

  @override
  String get paywallUnlockAll =>
      'Nisfruttaw il-karatteristiċi kollha għall-vjaġġ spiritwali tiegħek';

  @override
  String get premiumProductUnavailable =>
      'Prodott premium mhuwiex disponibbli bħalissa. Jekk jogħġbok erġa\' pprova aktar tard.';

  @override
  String get premiumPurchaseFailed =>
      'Ix-xiri ma setax jitlesta. Jekk jogħġbok erġa\' pprova.';

  @override
  String get paywallFeature1Title => 'Assistent newrali Plus';

  @override
  String get paywallFeature1Desc => 'Q&A bla limitu mħaddma bl-AI';

  @override
  String get paywallFeature2Title => 'Offline bla limitu';

  @override
  String get paywallFeature2Desc => 'Niżżel ir-reċitazzjonijiet kollha';

  @override
  String get paywallFeature3Title => 'Disinni Esklussivi';

  @override
  String get paywallFeature3Desc => 'Temi u fonts premium';

  @override
  String get paywallFeature4Title => 'Ħieles mir-Reklami';

  @override
  String get paywallFeature4Desc => 'Reklami żero';

  @override
  String get paywallGetAccess => 'Ikseb Aċċess tul il-Ħajja — \$1.00';

  @override
  String get restorePurchases => 'Irrestawra Xiri';

  @override
  String get zakatCalculator => 'Kalkulatur Zakat';

  @override
  String get zakatGold => 'Deheb (Altın)';

  @override
  String get zakatSilver => 'Fidda (Gümüş)';

  @override
  String get zakatCashBank => 'Flus / Bank';

  @override
  String get zakatBusiness => 'Negozju';

  @override
  String get zakatInvestments => 'Investimenti';

  @override
  String get zakatWeightGrams => 'Piż (g)';

  @override
  String get zakatPricePerGram => 'Prezz/g';

  @override
  String get zakatTotalAmount => 'Ammont Totali';

  @override
  String get zakatInventoryValue => 'Valur tal-Inventarju';

  @override
  String get zakatDebts => 'Djun';

  @override
  String get zakatTotal => 'Total';

  @override
  String get calculateZakat => 'Ikkalkula Zakat';

  @override
  String get nisabNotReached => 'Nisab ma laħaqx. Zakat mhux obbligatorju.';

  @override
  String get totalZakat => 'Total Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assi: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakat tad-deheb';

  @override
  String get zakatSilverZakat => 'Zakat tal-fidda';

  @override
  String get zakatCashZakat => 'Cash Zakat';

  @override
  String get zakatBusinessZakat => 'Negozju Zakat';

  @override
  String get zakatInvestmentZakat => 'Investiment Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Limitu ta\' mistoqsijiet ta\' kuljum milħuq. Aġġorna għal Premium għal illimitat.';

  @override
  String get chatbotErrorMsg =>
      'Ma stajtx niġġenera rispons. Jekk jogħġbok erġa\' pprova.';

  @override
  String get chatbotOfflinePrompt =>
      'Il-bażi ta\' għarfien Iżlamiku offline verifikata għadha qed tiġi kkurata. Tista\' tattiva r-riżerva offline issa, iżda se turi biss messaġġi siguri limitati sakemm is-sett tad-dejta misjub ikun lest.\n\nTixtieq tattiva l-fallback offline?';

  @override
  String get chatbotOfflineSwitched =>
      'Il-fallback offline attivat. It-tweġibiet Iżlamiċi lokali verifikati għadhom mhumiex lesti.';

  @override
  String get chatbotOfflineDownloadLabel => 'Ippermetti Fallback Offline';

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
  String get downloadAction => 'Niżżel';

  @override
  String get resumeDownload => 'Kompli Niżżel';

  @override
  String get deleteDownloadedFiles => 'Ħassar Fajls Mniżżla';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Niżżel ikkanċellat għal $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Niżżel tlesta għal $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'It-tniżżil lest għal $reciter bi $failed surahs falluti ($downloaded/$total imniżżla).';
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
  String get sukunMixerSubtitle => 'Mixer tan-Natura u tal-Koran';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (Natura)';

  @override
  String get sukunRainOfMercy => 'Xita tal-Ħniena';

  @override
  String get sukunGardenOfPeace => 'Ġnien tal-Paċi';

  @override
  String get sukunMidnightCalm => 'Nofs il-lejl Kalma';

  @override
  String get sukunOceanTawheed => 'Oċean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Pajsaġġi tal-ħoss mhux disponibbli';

  @override
  String get sukunUnavailableBody =>
      'Din il-bini għadu ma jinkludix l-assi tal-pajsaġġ tal-ħoss Sukun meħtieġa.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Ġurnata sensiela';

  @override
  String get bestStreak => 'L-aħjar serje';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Fallback offline';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Ippermetti Fallback Offline';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count fadal';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API mhux ikkonfigurat. Jekk jogħġbok aqleb għal AI Lokali.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Gwida Iżlamika lokali verifikata għadha mhix disponibbli. Aqleb għal Cloud AI għal tweġibiet misjuba.';

  @override
  String get mosques => 'Moskej';

  @override
  String get halalFood => 'Ikel Halal';

  @override
  String get placesSearchArea => 'Fittex din iż-żona';

  @override
  String get nearbyMosques => 'Moskej fil-qrib';

  @override
  String get islamicSchools => 'Iskejjel Iżlamiċi';

  @override
  String placesFoundCount(String count) {
    return '$count misjub';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km bogħod';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Żball API: $statusCode';
  }

  @override
  String get placesNetworkError =>
      'Żball tan-netwerk. Jekk jogħġbok erġa\' pprova.';

  @override
  String get placesLocationRequiredTitle => 'Post meħtieġ';

  @override
  String get placesLocationRequiredBody =>
      'Issettja post l-ewwel sabiex moskej fil-qrib, ikel halal, u skejjel Iżlamiċi jkunu jistgħu jiġu mfittxija b\'mod preċiż.';

  @override
  String get placesMapTilesUnavailableTitle =>
      'Madum tal-mappa mhux disponibbli';

  @override
  String get placesMapTilesUnavailableBody =>
      'Sors tal-madum tal-mappa vverifikat għadu mhux ikkonfigurat għal din il-bini. Postijiet fil-qrib xorta jistgħu jgħabbu mill-lokalità salvata tiegħek.';

  @override
  String get unknownPlaceName => 'Isem Mhux Magħruf';

  @override
  String get islamicPlaceFallback => 'Post Iżlamiku';

  @override
  String get asmaMeaning1 => 'Il-Benefiċjenti';

  @override
  String get asmaMeaning2 => 'Il-Ħniena';

  @override
  String get asmaMeaning3 => 'The King / Eternal Lord';

  @override
  String get asmaMeaning4 => 'L-Iktar Qaddis';

  @override
  String get asmaMeaning5 => 'Is-Sors tal-Paċi';

  @override
  String get asmaMeaning6 => 'Il-Donatur tas-Sigurtà';

  @override
  String get asmaMeaning7 => 'The Guardian';

  @override
  String get asmaMeaning8 => 'The Precious / The Most Mighty';

  @override
  String get asmaMeaning9 => 'The Compeller';

  @override
  String get asmaMeaning10 => 'L-Akbar';

  @override
  String get asmaMeaning11 => 'Il-Ħallieq';

  @override
  String get asmaMeaning12 => 'The Maker of Order';

  @override
  String get asmaMeaning13 => 'The Shaper of Beauty';

  @override
  String get asmaMeaning14 => 'The Forgiving';

  @override
  String get asmaMeaning15 => 'Is-Subduer';

  @override
  String get asmaMeaning16 => 'Il-Donatur ta\' Kulħadd';

  @override
  String get asmaMeaning17 => 'The Sustainer';

  @override
  String get asmaMeaning18 => 'The Opener';

  @override
  String get asmaMeaning19 => 'L-Għarfien ta\' Kulħadd';

  @override
  String get asmaMeaning20 => 'Il-Constrictor';

  @override
  String get asmaMeaning21 => 'The Reliever';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'The Bestower of Honor';

  @override
  String get asmaMeaning25 => 'L-Umiljatur';

  @override
  String get asmaMeaning26 => 'Is-Semmiegħ ta\' Kulħadd';

  @override
  String get asmaMeaning27 => 'Is-Seer ta\' Kulħadd';

  @override
  String get asmaMeaning28 => 'L-Imħallef';

  @override
  String get asmaMeaning29 => 'Il-Ġust';

  @override
  String get asmaMeaning30 => 'Il-Wieħed Sottili';

  @override
  String get asmaMeaning31 => 'The Kollha Konxju';

  @override
  String get asmaMeaning32 => 'The Forebearing';

  @override
  String get asmaMeaning33 => 'The Magnificent';

  @override
  String get asmaMeaning34 => 'The Great Forgiver';

  @override
  String get asmaMeaning35 => 'Il-Premjatur tar-Ringrazzjament';

  @override
  String get asmaMeaning36 => 'L-Ogħla';

  @override
  String get asmaMeaning37 => 'L-Akbar';

  @override
  String get asmaMeaning38 => 'Il-Preservatur';

  @override
  String get asmaMeaning39 => 'The Nourisher';

  @override
  String get asmaMeaning40 => 'The Reckoner';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'Il-Ġeneruż';

  @override
  String get asmaMeaning43 => 'L-Għassa';

  @override
  String get asmaMeaning44 => 'It-Twieġeb għat-Talb';

  @override
  String get asmaMeaning45 => 'The All Comprehending';

  @override
  String get asmaMeaning46 => 'The Perfectly Wise';

  @override
  String get asmaMeaning47 => 'The Loving One';

  @override
  String get asmaMeaning48 => 'L-Aktar Glorjuz';

  @override
  String get asmaMeaning49 => 'The Resurrector';

  @override
  String get asmaMeaning50 => 'Ix-Xhud';

  @override
  String get asmaMeaning51 => 'Il-Verità';

  @override
  String get asmaMeaning52 => 'It-Trustee Kollox Suffiċjenti';

  @override
  String get asmaMeaning53 => 'Il-Possessur ta\' Kollha Qawwa';

  @override
  String get asmaMeaning54 => 'Il-Forza';

  @override
  String get asmaMeaning55 => 'Il-Protettur';

  @override
  String get asmaMeaning56 => 'L-Imfaħħar';

  @override
  String get asmaMeaning57 => 'L-Appraiser';

  @override
  String get asmaMeaning58 => 'L-Oriġinatur';

  @override
  String get asmaMeaning59 => 'Ir-Restorer';

  @override
  String get asmaMeaning60 => 'Dak li Jagħti l-Ħajja';

  @override
  String get asmaMeaning61 => 'The Taker of Life';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'Is-Sustenitur Awto-Sussistent';

  @override
  String get asmaMeaning64 => 'The Finder';

  @override
  String get asmaMeaning65 => 'Il-Glorjuż';

  @override
  String get asmaMeaning66 => 'L-Uniku Wieħed';

  @override
  String get asmaMeaning67 => 'The One';

  @override
  String get asmaMeaning68 => 'Dak Imfittex minn Kulħadd';

  @override
  String get asmaMeaning69 => 'Il-Qawwija';

  @override
  String get asmaMeaning70 => 'Il-Ħallieq tas-setgħa kollha';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'The Delayer';

  @override
  String get asmaMeaning73 => 'L-Ewwel';

  @override
  String get asmaMeaning74 => 'L-Ahhar';

  @override
  String get asmaMeaning75 => 'Il-Manifest';

  @override
  String get asmaMeaning76 => 'The Hidden';

  @override
  String get asmaMeaning77 => 'Il-Gvernatur';

  @override
  String get asmaMeaning78 => 'Il-Wieħed Suprem';

  @override
  String get asmaMeaning79 => 'The Doer of Good';

  @override
  String get asmaMeaning80 => 'Il-Gwida għall-Indiema';

  @override
  String get asmaMeaning81 => 'The Avenger';

  @override
  String get asmaMeaning82 => 'The Forgiver';

  @override
  String get asmaMeaning83 => 'Il-Klement';

  @override
  String get asmaMeaning84 => 'Is-Sid / Sovran ta\' Kulħadd';

  @override
  String get asmaMeaning85 => 'Il-Possessur tal-Maestà u Bounty';

  @override
  String get asmaMeaning86 => 'The Equitable One';

  @override
  String get asmaMeaning87 => 'The Gatherer';

  @override
  String get asmaMeaning88 => 'The Rich One';

  @override
  String get asmaMeaning89 => 'The Enricher';

  @override
  String get asmaMeaning90 => 'Il-Preventur tal-Ħsara';

  @override
  String get asmaMeaning91 => 'The Bringer of Harm';

  @override
  String get asmaMeaning92 => 'L-Offerenti tal-Benefiċċji';

  @override
  String get asmaMeaning93 => 'Id-Dawl';

  @override
  String get asmaMeaning94 => 'The Guider';

  @override
  String get asmaMeaning95 => 'L-Oriġinatur';

  @override
  String get asmaMeaning96 => 'The Everlasting One';

  @override
  String get asmaMeaning97 => 'Il-Werriet';

  @override
  String get asmaMeaning98 => 'L-Aktar Gwida Ġust';

  @override
  String get asmaMeaning99 => 'Il-Pazjent Wieħed';
}
