// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Maori (`mi`).
class AppLocalizationsMi extends AppLocalizations {
  AppLocalizationsMi([String locale = 'mi']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Te Ara Ihirama o te Marama';

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
  String get fajr => 'Karaka';

  @override
  String get sunrise => 'Te whitinga o te ra';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Ko Asr';

  @override
  String get maghrib => 'Maghrib';

  @override
  String get isha => 'Iha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Te wa mo $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Kua tae ki te wa ki te inoi $prayerName.';
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
  String get locationServiceDisabled => 'Kua monoa te ratonga tauwāhi.';

  @override
  String get locationPermissionDenied =>
      'I whakakorehia te whakaaetanga waahi.';

  @override
  String get locationDetectionFailed =>
      'Kaore i kitea to waahi. Kōwhiria ā-ringatia tētahi tāone ka ngana anō rānei.';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'Karekau he hua i kitea';

  @override
  String get loading => 'Uta ana...';

  @override
  String get error => 'Hapa';

  @override
  String get appErrorOccurred => 'I puta he hapa';

  @override
  String get appUnknownError => 'Hapa kore mohio';

  @override
  String get quranLoadFailed =>
      'Kaore i taea te utaina nga ihirangi Quran. Me ngana ano.';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Tāmata';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Mukua';

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
  String get tafsirLoading => 'Uta ana tafsir...';

  @override
  String get tafsirSourceLabel => 'puna Tafsir';

  @override
  String get tafsirNoSurahFound => 'Kaore i kitea he tafsir mo tenei surah.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'No tafsir found for ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Kaore i taea te utaina a Tafsir.';

  @override
  String get tafsirNoTextForAyah => 'Karekau he tuhinga tafsir mo tenei papa.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'E tango ana i te tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Loading tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'I whakahokia e te puna Tafsir he hapa HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Ko te puna tafsir i tohua kaore he whakaurunga.';

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
      'ko etahi e inoi ana, ‘E to matou Ariki, homai he pai ki a matou i tenei ao, a muri ake nei, tiakina matou i te mamae o te ahi.’';

  @override
  String get duaMeaning2 =>
      'Eita te Atua e faateimaha i te hoê varua hau atu i ta ’na e nehenehe e amo: e noaa i te taata tataitahi te maitai ta ’na i rave, e te mauiui i to ’na ino- ‘E te Fatu, eiaha e faahapa ia matou mai te peu e e mo‘ehia matou e e hape. E te Ariki, kaua e whakataimahatia matou e koe, me tau i whakataimaha ai ki o ratou mua. E te Ariki, kaua e whakauaua mai ki a matou i nga mea e taea ana e matou. Murua matou, murua matou, tohungia matou. Ko koe to matou Tiaki, no reira awhinatia matou ki te whawhai ki te hunga whakaponokore.';

  @override
  String get duaMeaning3 =>
      '\'E to matou Ariki, kei kotiti ke o matou ngakau i muri i tau arahi i a matou. Tukua mai ki a matou tou atawhai: Ko koe te Kaiwhiwhi.';

  @override
  String get duaMeaning4 =>
      'E te Ariki, tukua matou ko aku uri kia mau tonu te inoi. E to matou Ariki, whakaae mai ki taku inoi.';

  @override
  String get duaMeaning5 =>
      'a ka whakaiti i tou parirau i runga i te ngakau mahaki ki a ratou i runga i te atawhai, ka mea, ‘E te Ariki, kia aroha ki a ratou, me ratou i tiaki i ahau i toku tamarikitanga.';

  @override
  String get duaMeaning6 =>
      'kia whakanuia te Atua, ko ia nei te tino tikanga. [Peropheta], eiaha e ru i te tai‘o hou te heheuraa e hope roa a parau ai, ‘E te Fatu, faarahi i to ’u ite!’';

  @override
  String get duaMeaning7 =>
      'Mea atu [te Peropheta], ‘E te Fatu, e faaore mai i te hara e e aroha mai: o oe tei hau atu i te aroha i te mau mea atoa.’';

  @override
  String get duaMeaning8 =>
      'te hunga e inoi ana, ‘E to matou Ariki, homai ki a matou te hari i roto i o matou hoa wahine me o matou uri. Meinga matou hei tauira pai ki te hunga e mohio ana ki a Koe’.';

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
  String get hadithCollection => 'Kohinga Hadith';

  @override
  String get hadithBooks => 'Pukapuka Hadith';

  @override
  String get searchHadith => 'Rapua Hadith';

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
  String get openInYoutube => 'Tuwhera ki YouTube';

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
  String get islamicNewYear => 'Tau Hou Islamic';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadan';

  @override
  String get specialDayDateEidAlFitr => '1 Hawwara';

  @override
  String get specialDayDateEidAlAdha => '10 Dhul Hijjah';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharama';

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
    return 'Hapa kāpehu: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Karekau te pūoko kāpehu i te wātea ki tēnei pūrere.';

  @override
  String get qiblaLocationRequiredTitle =>
      'Ko te waahi e hiahiatia ana mo Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Tautuhia to waahi tuturu i mua i te whakamahi i te kapehu Qibla kia tika ai te tatau i te ahunga.';

  @override
  String get adhanNotificationChannelName => 'Adhan Notifications';

  @override
  String get adhanNotificationChannelDescription =>
      'Matohi wa inoi me te tangi azan.';

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
  String get downloadManager => 'Kaiwhakahaere Tikiake';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Kua oti te tango';

  @override
  String get downloadFailed => 'I Rahua te Tikiake';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'Kaore he Hononga Ipurangi';

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
  String get tapToCount => 'Tap ki te tatau';

  @override
  String get zikrCompletedMashAllah => 'Kua oti! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Kei runga ake a Allah i nga ngoikoretanga katoa.';

  @override
  String get zikrMeaningAlhamdulillah => 'Ma Allah nga mihi katoa.';

  @override
  String get zikrMeaningAllahuAkbar => 'Ko Allah te Mea Nui.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Karekau he atua engari ko Allah.';

  @override
  String get zikrMeaningAstaghfirullah =>
      'E rapu ana ahau i te murunga hara a Allah.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Karekau he kaha me te kaha engari ma Allah.';

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
  String get offlineDownloadManager => 'Kaiwhakahaere Tikiake Tuimotu';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Whakakorea te rokiroki taputapu o roto.';

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
  String get audioVoice => 'Reo Ororongo';

  @override
  String get audioVoiceMisharyAlafasy => 'Tane (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Tane (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Tane (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Whakatau Kipi';

  @override
  String get compassSmoothing => 'Whakaene Kapehu';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Wehenga Whakatau';

  @override
  String currentOffset(Object offset) {
    return 'Inaianei: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Whakaritea mena ka hiahia to kapehu ki te whakatika a-ringa. Huri karaka te uara takatika.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Diagnostics';

  @override
  String get diagnosticsNotSet => 'Kaore i whakaritea';

  @override
  String get diagnosticsPrayerProfile => 'Prayer Profile';

  @override
  String get diagnosticsPrayerSource => 'Mana Inoi';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Ritenga / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Koki ritenga a-ringa (kaore he puna whakahaere)';

  @override
  String get diagnosticsCloudDriven => 'Kapua Peia';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Ororongo Rawa';

  @override
  String get diagnosticsUiAudioAssets => 'Rawa Ororongo UI';

  @override
  String get diagnosticsQuranAudioAssets => 'Nga Rawa Ororongo Quran';

  @override
  String get diagnosticsAudioAssets => 'Rawa Ororongo';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count kōnae';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'I rahua te panui whakaaturanga: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Rohe Rohe';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count tautokona';
  }

  @override
  String get diagnosticsQuranDataset => 'Raraunga Raraunga Quran';

  @override
  String get diagnosticsQuranSurahs => 'Quran Surah';

  @override
  String get diagnosticsQuranAyahs => 'Quran Ayah';

  @override
  String get diagnosticsQuranJuzMetadata => 'Quran Juz Metadata';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Kei te ngaro nga tepu kapua i Supabase; takai whakamuri hohe';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'I rahua te taki kapua: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Kua ngaro te metadata Cloud juz; paihere hanganga takahuri kaha';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'I rahua te tirotiro hanganga kapua: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'E hiahiatia ana te whakatikatika. Hurihia te taputapu ki te ahua-8.';

  @override
  String get dailyVerse => 'Te whiti o ia ra';

  @override
  String get todaysIbadah => 'Ko Ibadah i tenei ra';

  @override
  String get quickAccess => 'Uru Tere';

  @override
  String get assistant => 'Kaiāwhina';

  @override
  String get places => 'Nga waahi';

  @override
  String get library => 'Whare Pukapuka';

  @override
  String get analytics => 'Tātaritanga';

  @override
  String get dailyDuas => 'Nga Duas ia ra';

  @override
  String essentialDuas(String count) {
    return '$count essential duas';
  }

  @override
  String get duaUnavailableTitle =>
      'Ko nga rua kua whakamanahia kaore ano kia waatea';

  @override
  String get duaUnavailableBody =>
      'Ko nga rua kua whakamanahia ia ra kaore ano kia tukutahia ki tenei taputapu. Hono atu ki te puna kapua ki te uta i nga rua i puta mai hei utu mo te hokinga whakamuri.';

  @override
  String get duaCategoryQuranic => 'Quranic dua';

  @override
  String get duaCategoryMorningEvening => 'Ata me te ahiahi';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Parenga';

  @override
  String get duaCategoryBeginning => 'Nga timatanga';

  @override
  String get duaCategorySleep => 'Moe mai';

  @override
  String get duaCategoryFoodDrink => 'Kai me te Inu';

  @override
  String get duaCategoryForgiveness => 'Te murunga hara';

  @override
  String get duaCategoryHome => 'Kainga';

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
  String get islamicEducation => 'Mātauranga Ihirama';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Kohinga Hadith';

  @override
  String get hadithSourcePending => 'Kei te tarewa te puna manatoko';

  @override
  String get hadithUnavailableTitle =>
      'Ko nga kohinga hadith kua whakamanahia kaore ano kia waatea';

  @override
  String get hadithUnavailableBody =>
      'Kei te whakawhirinaki tonu tenei hanga ki te whangai hadith o waho kaore i whakamanahia. Ka noho monohia te tirotiro Hadith tae noa ki te tukutahia he huinga raraunga puna.';

  @override
  String get paywallUnlockAll =>
      'Wewetehia nga ahuatanga katoa mo to haerenga wairua';

  @override
  String get premiumProductUnavailable =>
      'Ko te hua utu nui kaore i te waatea inaianei. Me ngana ano i muri mai.';

  @override
  String get premiumPurchaseFailed => 'Kāore i taea te hoko. Me ngana ano.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'Uiuinga-a-AI mutunga kore';

  @override
  String get paywallFeature2Title => 'Tuimotu mutunga kore';

  @override
  String get paywallFeature2Desc => 'Tangohia nga korero korero katoa';

  @override
  String get paywallFeature3Title => 'Nga Hoahoa Motuhake';

  @override
  String get paywallFeature3Desc => 'Nga kaupapa me nga momotuhi';

  @override
  String get paywallFeature4Title => 'Panui-Kore';

  @override
  String get paywallFeature4Desc => 'Kore nga panui';

  @override
  String get paywallGetAccess => 'Tikina te Uru Ora — \$1.00';

  @override
  String get restorePurchases => 'Whakahokia nga Hokonga';

  @override
  String get zakatCalculator => 'Tātaitai Zakat';

  @override
  String get zakatGold => 'Koura (Altın)';

  @override
  String get zakatSilver => 'Hiriwa (Gümüş)';

  @override
  String get zakatCashBank => 'Moni / Peeke';

  @override
  String get zakatBusiness => 'Pakihi';

  @override
  String get zakatInvestments => 'Nga haumi';

  @override
  String get zakatWeightGrams => 'Taumaha (g)';

  @override
  String get zakatPricePerGram => 'Utu/g';

  @override
  String get zakatTotalAmount => 'Tapeke Tapeke';

  @override
  String get zakatInventoryValue => 'Uara Rarangi';

  @override
  String get zakatDebts => 'Nga nama';

  @override
  String get zakatTotal => 'Tapeke';

  @override
  String get calculateZakat => 'Tātaihia te Zakat';

  @override
  String get nisabNotReached =>
      'Kaore i tae ki a Nisab. Ko te Zakat ehara i te mea here.';

  @override
  String get totalZakat => 'Tapeke Taaka';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'Taaka koura';

  @override
  String get zakatSilverZakat => 'Taakaa Hiriwa';

  @override
  String get zakatCashZakat => 'Te putea moni';

  @override
  String get zakatBusinessZakat => 'Taakaa Pakihi';

  @override
  String get zakatInvestmentZakat => 'Putea Putanga';

  @override
  String get chatbotGreeting =>
      'Arohanui! Ko ahau to kaiawhina Ihirama. Patai mai ki ahau mo te inoi, te nohopuku, te zakat, tetahi kaupapa Islamic ranei.';

  @override
  String get chatbotLimitReached =>
      'Kua tae ki te rohe uiui ia ra. Whakapai ake ki te Premium mo te mutunga kore.';

  @override
  String get chatbotErrorMsg =>
      'Kaore i taea e au te whakaputa whakautu. Me ngana ano.';

  @override
  String get chatbotOfflinePrompt =>
      'Ko te turanga matauranga Ihirama tuimotu kua whakamanahia kei te whakahaerehia tonutia. Ka taea e koe te whakahoaho tuimotu inaianei, engari ka whakaatu noa i nga karere haumaru kia reri ra ano te huinga raraunga.\n\nKei te pirangi koe ki te whakahohe tuimotu takahuri?';

  @override
  String get chatbotOfflineSwitched =>
      'Whakahoki tuimotu kua whakahohea. Ko nga whakautu Ihirama o te rohe kaore ano kia rite.';

  @override
  String get chatbotOfflineDownloadLabel => 'Whakahohehia te Whakamuri Tuimotu';

  @override
  String get downloadPreparing => 'Kei te whakarite tikiake...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Tikiake ana i te pukapuka $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Ko nga surah katoa kua oti te tango ake mo tenei kaikorero.';

  @override
  String get offlineQuranAudioPacks => 'Ko nga Puka Ororongo Quran Tuimotu';

  @override
  String storedOnDeviceMb(String size) {
    return 'Kua rongoa ki runga taputapu: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surah i tangohia';
  }

  @override
  String get redownloadMissingRepair => 'Whakatikaina / Tikiake Ngaro';

  @override
  String get downloadAction => 'Tikiake';

  @override
  String get resumeDownload => 'Tukuna ano';

  @override
  String get deleteDownloadedFiles => 'Mukua nga Kōnae kua Tikiake';

  @override
  String get downloadCancelling => 'Whakakore...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Kua whakakorehia te tikiake mo $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Kua oti te tango mo $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Kua oti te tango mo $reciter me te $failed i rahua nga surah ($downloaded/$total kua tikiakehia).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Kua mukua nga konae tuimotu mo $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Ko nga puna ororongo Quran kua whakamanahia kaore i te waatea inaianei.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Ko te kete ororongo Quran kua whakamanahia kaore i oti ($available/$total). Tāmatahia te kākano kapua ka ngana anō.';
  }

  @override
  String get chatbotHint => 'Patai he patai...';

  @override
  String get chatbotThinking => 'Whakaaro...';

  @override
  String get sukunMixerSubtitle => 'Nature & Qur\'an Mixer';

  @override
  String get audioPlayFailed => 'I rahua te purei ororongo';

  @override
  String get sukunNatureLabel => 'Sukun (Nature)';

  @override
  String get sukunRainOfMercy => 'Te ua o te Aroha';

  @override
  String get sukunGardenOfPeace => 'Te kari o te rangimarie';

  @override
  String get sukunMidnightCalm => 'Waenganui po Marie';

  @override
  String get sukunOceanTawheed => 'Moana Tawheed';

  @override
  String get sukunUnavailableTitle => 'Karekau i te waatea nga oro';

  @override
  String get sukunUnavailableBody =>
      'Ko tenei hanga kaore ano kia uru ki nga rawa o Sukun soundscape.';

  @override
  String get prayerCompletion => 'Karakia Whakaoti';

  @override
  String get streaks => 'Nga korikori';

  @override
  String get dayStreak => 'Ra streak';

  @override
  String get bestStreak => 'Tino pai';

  @override
  String get chatbotCloudAiLabel => 'Kapua AI';

  @override
  String get chatbotLocalAiLabel => 'Whakamuri Tuimotu';

  @override
  String get chatbotUseCloudAi => 'Whakamahia Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Whakahohehia te Whakamuri Tuimotu';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count i mahue';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Kaore i te whirihorahia te Cloud API. Ko te arataki Ihirama tuimotu kua whakamanahia kaore ano kia waatea.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Ko nga kaiarahi Ihirama o te rohe kaore ano kia waatea. Hurihia ki Cloud AI mo nga whakautu i puta mai.';

  @override
  String get mosques => 'Mosques';

  @override
  String get halalFood => 'Kai Halal';

  @override
  String get placesSearchArea => 'Rapua tenei waahi';

  @override
  String get nearbyMosques => 'Nga Mosques Tata';

  @override
  String get islamicSchools => 'Kura Islamic';

  @override
  String placesFoundCount(String count) {
    return '$count kitea';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km away';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Hapa API: $statusCode';
  }

  @override
  String get placesNetworkError => 'Hapa whatunga. Me ngana ano.';

  @override
  String get placesLocationRequiredTitle => 'Wāhi e hiahiatia ana';

  @override
  String get placesLocationRequiredBody =>
      'Whakatakotoria he waahi i te tuatahi kia taea te rapu tika i nga whare karakia e tata ana, nga kai hara, me nga kura Ihirama.';

  @override
  String get placesMapTilesUnavailableTitle =>
      'Karekau nga taera mapi i te waatea';

  @override
  String get placesMapTilesUnavailableBody =>
      'Kaore ano kia whirihorahia he puna taera mapi mo tenei hanga. Ka taea tonu e nga waahi tata te uta mai i to waahi kua tiakina.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'Ko nga raraunga waahi kaore i te waatea';

  @override
  String get placesDataSourceUnavailableBody =>
      'Kaore ano kia whirihorahia he waahi mutunga raraunga mo tenei hanga. Tautuhia te PLACES_OVERPASS_API_URL ki tetahi takawaenga kua whakaaetia, kaiwhakarato ranei i mua i te whakaahei rapunga tata.';

  @override
  String get unknownPlaceName => 'Ingoa Kaore i mohiotia';

  @override
  String get islamicPlaceFallback => 'Wahi Ihirama';

  @override
  String get asmaMeaning1 => 'Te Manaakitanga';

  @override
  String get asmaMeaning2 => 'Te Aroha';

  @override
  String get asmaMeaning3 => 'Ko te Kingi / Ariki Mutungare';

  @override
  String get asmaMeaning4 => 'Te Tino Tapu';

  @override
  String get asmaMeaning5 => 'The Source of Peace';

  @override
  String get asmaMeaning6 => 'Ko te Kaituku Haumarutanga';

  @override
  String get asmaMeaning7 => 'Te Kaitiaki';

  @override
  String get asmaMeaning8 => 'The Precious / Te Kaha Rawa';

  @override
  String get asmaMeaning9 => 'The Compeller';

  @override
  String get asmaMeaning10 => 'Te Nui Rawa';

  @override
  String get asmaMeaning11 => 'Te Kaihanga';

  @override
  String get asmaMeaning12 => 'Ko te Kaihanga Ota';

  @override
  String get asmaMeaning13 => 'The Shaper of Ataahua';

  @override
  String get asmaMeaning14 => 'Ko te muru hara';

  @override
  String get asmaMeaning15 => 'Te Kaihautu';

  @override
  String get asmaMeaning16 => 'Te Kai homai o te Katoa';

  @override
  String get asmaMeaning17 => 'The Sustainer';

  @override
  String get asmaMeaning18 => 'The Opener';

  @override
  String get asmaMeaning19 => 'Te Moohio o te Katoa';

  @override
  String get asmaMeaning20 => 'The Constrictor';

  @override
  String get asmaMeaning21 => 'Te Kaiawhina';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'Te Whakanuia';

  @override
  String get asmaMeaning24 => 'Te Kaiwhiwhi Whakahonore';

  @override
  String get asmaMeaning25 => 'The Humiliator';

  @override
  String get asmaMeaning26 => 'Te Kai-whakarongo o te Katoa';

  @override
  String get asmaMeaning27 => 'Te Matakite o te Katoa';

  @override
  String get asmaMeaning28 => 'Te Tiati';

  @override
  String get asmaMeaning29 => 'Te Tika';

  @override
  String get asmaMeaning30 => 'Ko te Maamaa';

  @override
  String get asmaMeaning31 => 'The All Aware';

  @override
  String get asmaMeaning32 => 'The Forebearing';

  @override
  String get asmaMeaning33 => 'Te Whakanuia';

  @override
  String get asmaMeaning34 => 'Te Nui muru hara';

  @override
  String get asmaMeaning35 => 'Te Kaihoko Whakawhetai';

  @override
  String get asmaMeaning36 => 'Te Runga Rawa';

  @override
  String get asmaMeaning37 => 'Te Nui Rawa';

  @override
  String get asmaMeaning38 => 'The Preserver';

  @override
  String get asmaMeaning39 => 'The Nourisher';

  @override
  String get asmaMeaning40 => 'The Reckoner';

  @override
  String get asmaMeaning41 => 'Te Nui';

  @override
  String get asmaMeaning42 => 'Te Manawanui';

  @override
  String get asmaMeaning43 => 'Te Mataara';

  @override
  String get asmaMeaning44 => 'Te Kai-whakahoki i te Inoi';

  @override
  String get asmaMeaning45 => 'The All Comprehend';

  @override
  String get asmaMeaning46 => 'The Perfectly Wise';

  @override
  String get asmaMeaning47 => 'Te Aroha';

  @override
  String get asmaMeaning48 => 'Te Tino Kororia';

  @override
  String get asmaMeaning49 => 'Te Aranga';

  @override
  String get asmaMeaning50 => 'Te Kaititiro';

  @override
  String get asmaMeaning51 => 'Te Pono';

  @override
  String get asmaMeaning52 => 'Te Kaitiaki Katoa';

  @override
  String get asmaMeaning53 => 'Ko te rangatira o te kaha katoa';

  @override
  String get asmaMeaning54 => 'Te Kaha';

  @override
  String get asmaMeaning55 => 'Te Kaitiaki';

  @override
  String get asmaMeaning56 => 'Te Whakamoemiti';

  @override
  String get asmaMeaning57 => 'The Appraiser';

  @override
  String get asmaMeaning58 => 'The Originator';

  @override
  String get asmaMeaning59 => 'Te Kaiwhakaora';

  @override
  String get asmaMeaning60 => 'Ko te Kai tuku ora';

  @override
  String get asmaMeaning61 => 'Te Kaihoko ora';

  @override
  String get asmaMeaning62 => 'Te ora tonu';

  @override
  String get asmaMeaning63 => 'The Self-Subsisting Sustainer';

  @override
  String get asmaMeaning64 => 'The Finder';

  @override
  String get asmaMeaning65 => 'Te Kororia';

  @override
  String get asmaMeaning66 => 'Kotahi anake';

  @override
  String get asmaMeaning67 => 'Ko Tetahi';

  @override
  String get asmaMeaning68 => 'Ko te mea i rapua e te katoa';

  @override
  String get asmaMeaning69 => 'Te Kaha';

  @override
  String get asmaMeaning70 => 'Ko te Kaihanga o nga mana katoa';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'Te Taarua';

  @override
  String get asmaMeaning73 => 'Ko te Tuatahi';

  @override
  String get asmaMeaning74 => 'Te Whakamutunga';

  @override
  String get asmaMeaning75 => 'Te Whakaaturanga';

  @override
  String get asmaMeaning76 => 'Te Huna';

  @override
  String get asmaMeaning77 => 'Te Kawana';

  @override
  String get asmaMeaning78 => 'Te Runga Rawa';

  @override
  String get asmaMeaning79 => 'Te Kaimahi i te pai';

  @override
  String get asmaMeaning80 => 'Te Aratohu mo te Ripeneta';

  @override
  String get asmaMeaning81 => 'Te Kaitakitaki';

  @override
  String get asmaMeaning82 => 'Ko te muru hara';

  @override
  String get asmaMeaning83 => 'The Clement';

  @override
  String get asmaMeaning84 => 'The Owner / Sovereign of All';

  @override
  String get asmaMeaning85 => 'Ko te Kaipupuri o te Rangatiratanga me te Tohu';

  @override
  String get asmaMeaning86 => 'Ko te Tika';

  @override
  String get asmaMeaning87 => 'Te Kaikohikohi';

  @override
  String get asmaMeaning88 => 'The Rich One';

  @override
  String get asmaMeaning89 => 'The Enricher';

  @override
  String get asmaMeaning90 => 'Ko te Kaipupuri o te kino';

  @override
  String get asmaMeaning91 => 'Te Kaikawe o te kino';

  @override
  String get asmaMeaning92 => 'Te Kaiwhiwhi Painga';

  @override
  String get asmaMeaning93 => 'Te Maama';

  @override
  String get asmaMeaning94 => 'Te Kaitohutohu';

  @override
  String get asmaMeaning95 => 'The Originator';

  @override
  String get asmaMeaning96 => 'Ko te Mea Tuturu';

  @override
  String get asmaMeaning97 => 'Te Kaiwhiwhi';

  @override
  String get asmaMeaning98 => 'Te Arataki Tino Tika';

  @override
  String get asmaMeaning99 => 'Te Manawanui';
}
