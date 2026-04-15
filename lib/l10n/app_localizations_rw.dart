// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kinyarwanda (`rw`).
class AppLocalizationsRw extends AppLocalizations {
  AppLocalizationsRw([String locale = 'rw']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Inzira yumucyo wa kisilamu';

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
  String get sunrise => 'Izuba rirashe';

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
    return 'Igihe cyo $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Igihe kirageze cyo gusenga $prayerName.';
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
  String get locationServiceDisabled => 'Serivisi yaho irahagarikwa.';

  @override
  String get locationPermissionDenied => 'Uruhushya rwaho rwanze.';

  @override
  String citiesCount(String count) {
    return '$count imigi';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'Nta bisubizo byabonetse';

  @override
  String get loading => 'Kuremera ...';

  @override
  String get error => 'Ikosa';

  @override
  String get appErrorOccurred => 'Habayeho ikosa';

  @override
  String get appUnknownError => 'Ikosa ritazwi';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Ongera';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Siba';

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
  String get tafsirLoading => 'Gutwara tafsir ...';

  @override
  String get tafsirSourceLabel => 'Inkomoko ya Tafsir';

  @override
  String get tafsirNoSurahFound => 'Nta tafsir wabonetse kuriyi sura.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Nta tafsir yabonetse kuri ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir ntiyashoboraga kuremererwa.';

  @override
  String get tafsirNoTextForAyah => 'Nta nyandiko ya tafsir kuriyi ayah.';

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
    return 'Inkomoko ya Tafsir yagaruye ikosa rya HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Inkomoko yatoranijwe ya tafsir yagarutse nta byinjira.';

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
      'abandi basenga bati: \'Mwami wacu, duhe ibyiza muri iyi si ndetse no mu mperuka, kandi uturinde ububabare bw\'umuriro.\'';

  @override
  String get duaMeaning2 =>
      'Imana ntiremerera umuntu uwo ari we wese ibirenze ibyo ishobora kwihanganira: buri wese yunguka icyiza cyose yakoze, kandi akababara- \'Mwami, ntutujyane kumurimo niba twibagiwe cyangwa dukora amakosa. Mwami, ntuturemere nkuko waremereye abatubanjirije. Mwami, ntuturemere ibirenze ibyo dufite imbaraga zo kwihanganira. Utubabarire, utubabarire, kandi utugirire impuhwe. Uri Umurinzi, rero udufashe kurwanya abatizera. \'';

  @override
  String get duaMeaning3 =>
      '\'Mwami wacu, ntukemere ko imitima yacu itandukira umaze kutuyobora. Duhe imbabazi zawe: Uritanga Iteka.';

  @override
  String get duaMeaning4 =>
      'Nyagasani, mpa njye n\'abazabakomokaho gukomeza amasengesho. Mwami wacu, emera icyifuzo cyanjye.';

  @override
  String get duaMeaning5 =>
      'manura ibaba ryawe wicishe bugufi ubagirire neza ubabwire uti: \'Mwami, ubagirire impuhwe, nk\'uko banyitayeho nkiri muto.\'';

  @override
  String get duaMeaning6 =>
      'Imana ikuzwe, niwe uyobora rwose. [Umuhanuzi], ntukihutire gusoma mbere yuko ihishurwa ryuzuye ariko vuga uti: \'Mwami, nyongerera ubumenyi!\'';

  @override
  String get duaMeaning7 =>
      'Vuga [Umuhanuzi], \'Mwami, ubabarire kandi ugirire imbabazi: uri umunyembabazi muri bose.\'';

  @override
  String get duaMeaning8 =>
      'abasenga, \'Mwami wacu, duhe umunezero mu bashakanye no ku rubyaro rwacu. Utugire ingero nziza kubakuzi \'.';

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
  String get hadithCollection => 'Icyegeranyo cya Hadithi';

  @override
  String get hadithBooks => 'Ibitabo bya Hadithi';

  @override
  String get searchHadith => 'Shakisha Hadithi';

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
  String get openInYoutube => 'Fungura muri YouTube';

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
  String get prayerRemainingUnavailable => '-';

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
  String get islamicNewYear => 'Umwaka mushya wa kisilamu';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramazani';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramazani';

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
    return 'Ikosa rya compass: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Rukuruzi ya Compass ntishobora kuboneka kuri iki gikoresho.';

  @override
  String get adhanNotificationChannelName => 'Amatangazo ya Adhan';

  @override
  String get adhanNotificationChannelDescription =>
      'Igihe cyamasengesho kiburira hamwe nijwi rya adhan.';

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
    return 'Reba $appName: Porogaramu yanyuma yubuzima bwa kisilamu! $url';
  }

  @override
  String get downloadManager => 'Gukuramo Umuyobozi';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Kuramo Byuzuye';

  @override
  String get downloadFailed => 'Gukuramo birananirana';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'Nta murongo wa interineti';

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
  String get zikrCompletedMashAllah => 'Byarangiye! MashAllah';

  @override
  String get zikrMeaningSubhanAllah => 'Allah aruta kure cyane kudatungana.';

  @override
  String get zikrMeaningAlhamdulillah => 'Ibisingizo byose ni ibya Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah niwe Ukomeye.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Nta yindi mana ibaho uretse Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Ndashaka imbabazi za Allah.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Nta mbaraga n\'imbaraga keretse binyuze kuri Allah.';

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
  String get offlineDownloadManager => 'Umuyobozi wo gukuramo Offline';

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
  String get audioVoice => 'Ijwi';

  @override
  String get audioVoiceMisharyAlafasy => 'Umugabo (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Umugabo (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Umugabo (Sudais)';

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
  String get diagnosticsNotSet => 'Ntabwo yashyizweho';

  @override
  String get diagnosticsPrayerProfile => 'Umwirondoro w\'amasengesho';

  @override
  String get diagnosticsPrayerSource => 'Ubuyobozi bw\'amasengesho';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Umukiriya / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Intoki gakondo (nta soko yinzego)';

  @override
  String get diagnosticsCloudDriven => 'Igicu';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Umutungo Wamajwi';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Qor\'an Umutungo Wamajwi';

  @override
  String get diagnosticsAudioAssets => 'Umutungo w\'amajwi';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count dosiye';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Kugaragara byasomwe byananiranye: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Ahantu';

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
      'Imbonerahamwe yibicu yabuze muri Supabase; bundled kugaruka gukora';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz metadata yabuze; ihuriro ryimiterere yo gusubira inyuma ikora';

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
  String get dailyVerse => 'Umurongo wa buri munsi';

  @override
  String get todaysIbadah => 'Uyu munsi Ibadah';

  @override
  String get quickAccess => 'Kubona Byihuse';

  @override
  String get assistant => 'Umufasha';

  @override
  String get places => 'Ahantu';

  @override
  String get library => 'Isomero';

  @override
  String get analytics => 'Isesengura';

  @override
  String get dailyDuas => 'Buri munsi Duas';

  @override
  String essentialDuas(String count) {
    return '$count duas ngombwa';
  }

  @override
  String get duaUnavailableTitle => 'Duas yemejwe ntabwo iraboneka';

  @override
  String get duaUnavailableBody =>
      'Kugenzura duas buri munsi ntabwo byahujwe niki gikoresho kugeza ubu. Ihuze nigicu kugirango utware duas ikomoka aho gusubira inyuma.';

  @override
  String get duaCategoryQuranic => 'Qor\'an dua';

  @override
  String get duaCategoryMorningEvening => 'Igitondo & nimugoroba';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Kurinda';

  @override
  String get duaCategoryBeginning => 'Intangiriro';

  @override
  String get duaCategorySleep => 'Sinzira';

  @override
  String get duaCategoryFoodDrink => 'Ibiryo & Ibinyobwa';

  @override
  String get duaCategoryForgiveness => 'Kubabarira';

  @override
  String get duaCategoryHome => 'Murugo';

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
  String get islamicEducation => 'Uburezi bwa kisilamu';

  @override
  String get sukunAudioTitle => 'Sukun';

  @override
  String get hadithCollections => 'Ibyegeranyo bya Hadithi';

  @override
  String get hadithSourcePending => 'Inkomoko yemejwe itegereje';

  @override
  String get hadithUnavailableTitle =>
      'Ibyegeranyo bya Hadithi byemejwe ntibiraboneka';

  @override
  String get hadithUnavailableBody =>
      'Iyi nyubako iracyaterwa nigaburo rya Hadithi yo hanze itagenzuwe. Gushakisha Hadith bigumaho kugeza igihe dataset ikomoka.';

  @override
  String get paywallUnlockAll =>
      'Fungura ibintu byose byurugendo rwawe rwumwuka';

  @override
  String get premiumProductUnavailable =>
      'Igicuruzwa cyiza ntikiboneka nonaha. Nyamuneka gerageza nyuma.';

  @override
  String get premiumPurchaseFailed =>
      'Kugura ntibishobora kurangira. Nyamuneka gerageza.';

  @override
  String get paywallFeature1Title => 'Umufasha wa Neural Wongeyeho';

  @override
  String get paywallFeature1Desc => 'Imipaka itagira imipaka ikoreshwa na Q&A';

  @override
  String get paywallFeature2Title => 'Imipaka itagira imipaka';

  @override
  String get paywallFeature2Desc => 'Kuramo ibisomwa byose';

  @override
  String get paywallFeature3Title => 'Ibishushanyo byihariye';

  @override
  String get paywallFeature3Desc => 'Insanganyamatsiko nziza & Imyandikire';

  @override
  String get paywallFeature4Title => 'Kwamamaza-Ubuntu';

  @override
  String get paywallFeature4Desc => 'Amatangazo ya Zeru';

  @override
  String get paywallGetAccess => 'Kubona Ubuzima Bwose - \$ 1.00';

  @override
  String get restorePurchases => 'Kugarura ibyaguzwe';

  @override
  String get zakatCalculator => 'Kubara Zakat';

  @override
  String get zakatGold => 'Zahabu (Altın)';

  @override
  String get zakatSilver => 'Ifeza (Gümüş)';

  @override
  String get zakatCashBank => 'Amafaranga / Banki';

  @override
  String get zakatBusiness => 'Ubucuruzi';

  @override
  String get zakatInvestments => 'Ishoramari';

  @override
  String get zakatWeightGrams => 'Ibiro (g)';

  @override
  String get zakatPricePerGram => 'Igiciro / g';

  @override
  String get zakatTotalAmount => 'Umubare wose';

  @override
  String get zakatInventoryValue => 'Agaciro k\'ibarura';

  @override
  String get zakatDebts => 'Amadeni';

  @override
  String get zakatTotal => 'Igiteranyo';

  @override
  String get calculateZakat => 'Kubara Zakat';

  @override
  String get nisabNotReached => 'Nisab ntiyageze. Zakat ntabwo ari itegeko.';

  @override
  String get totalZakat => 'Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Umutungo: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zahabu Zakat';

  @override
  String get zakatSilverZakat => 'Ifeza Zakat';

  @override
  String get zakatCashZakat => 'Cash Zakat';

  @override
  String get zakatBusinessZakat => 'Ubucuruzi Zakat';

  @override
  String get zakatInvestmentZakat => 'Ishoramari Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Umubare wibibazo bya buri munsi wageze. Kuzamura Premium kuri unlimited.';

  @override
  String get chatbotErrorMsg =>
      'Ntabwo nashoboye gutanga igisubizo. Nyamuneka gerageza.';

  @override
  String get chatbotOfflinePrompt =>
      'Ubumenyi bwa kisilamu bwagenzuwe kuri interineti buracyakosorwa. Urashobora gushoboza gusubira inyuma kurubu, ariko bizerekana gusa ubutumwa bwizewe bugarukira kugeza igihe dataset ikomoka.\n\nUrashaka gukora kumurongo wa interineti?';

  @override
  String get chatbotOfflineSwitched =>
      'Gusubira inyuma birashoboka. Ibisubizo byukuri bya kisilamu byaho ntabwo byiteguye.';

  @override
  String get chatbotOfflineDownloadLabel => 'Gushoboza Gusubira inyuma';

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
  String get downloadAction => 'Kuramo';

  @override
  String get resumeDownload => 'Komeza gukuramo';

  @override
  String get deleteDownloadedFiles => 'Siba dosiye zakuweho';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Gukuramo byahagaritswe kuri $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Gukuramo byuzuye kuri $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Download finished for $reciter with $failed failed surahs ($downloaded/$total downloaded).';
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
  String get sukunMixerSubtitle => 'Kamere & Qor\'an ivanga';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (Kamere)';

  @override
  String get sukunRainOfMercy => 'Imvura y\'imbabazi';

  @override
  String get sukunGardenOfPeace => 'Ubusitani bwamahoro';

  @override
  String get sukunMidnightCalm => 'Mu gicuku Gutuza';

  @override
  String get sukunOceanTawheed => 'Inyanja Tawheed';

  @override
  String get sukunUnavailableTitle => 'Amajwi ntashobora kuboneka';

  @override
  String get sukunUnavailableBody =>
      'Iyi nyubako ntabwo ikubiyemo umutungo ukenewe wa Sukun amajwi.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Umunsi';

  @override
  String get bestStreak => 'Inzira nziza';

  @override
  String get chatbotCloudAiLabel => 'Igicu AI';

  @override
  String get chatbotLocalAiLabel => 'Gusubira inyuma';

  @override
  String get chatbotUseCloudAi => 'Koresha Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Gushoboza Gusubira inyuma';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count hasigaye';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Igicu API ntabwo cyashyizweho. Nyamuneka hindukira kuri AI yaho.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Kugenzura ubuyobozi bwa kisilamu bwaho ntiburaboneka. Hindura kuri Cloud AI kubisubizo byatanzwe.';

  @override
  String get mosques => 'Imisigiti';

  @override
  String get halalFood => 'Ibiryo bya Halal';

  @override
  String get placesSearchArea => 'Shakisha kariya gace';

  @override
  String get nearbyMosques => 'Imisigiti hafi';

  @override
  String get islamicSchools => 'Amashuri ya kisilamu';

  @override
  String placesFoundCount(String count) {
    return '$count yabonetse';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Ikosa rya API: $statusCode';
  }

  @override
  String get placesNetworkError => 'Ikosa ry\'urusobe. Nyamuneka gerageza.';

  @override
  String get placesLocationRequiredTitle => 'Ahantu hasabwa';

  @override
  String get placesLocationRequiredBody =>
      'Shiraho ahantu mbere kugirango imisigiti iri hafi, ibiryo bya halale, n\'amashuri ya kisilamu birashobora gushakishwa neza.';

  @override
  String get placesMapTilesUnavailableTitle => 'Ikarita yerekana ikarita';

  @override
  String get placesMapTilesUnavailableBody =>
      'Ikarita yagenzuwe neza ntabwo yashyizweho kugirango yubake. Ahantu hegereye harashobora gutwarwa aho wabitswe.';

  @override
  String get unknownPlaceName => 'Izina ritazwi';

  @override
  String get islamicPlaceFallback => 'Ahantu h\'ubuyisilamu';

  @override
  String get asmaMeaning1 => 'Umugiraneza';

  @override
  String get asmaMeaning2 => 'Nyirimpuhwe';

  @override
  String get asmaMeaning3 => 'Umwami / Umwami w\'iteka';

  @override
  String get asmaMeaning4 => 'Ahera cyane';

  @override
  String get asmaMeaning5 => 'Isoko y\'amahoro';

  @override
  String get asmaMeaning6 => 'Utanga umutekano';

  @override
  String get asmaMeaning7 => 'Umurinzi';

  @override
  String get asmaMeaning8 => 'Igiciro Cyinshi / Ikomeye cyane';

  @override
  String get asmaMeaning9 => 'Umugurisha';

  @override
  String get asmaMeaning10 => 'Ikomeye';

  @override
  String get asmaMeaning11 => 'Umuremyi';

  @override
  String get asmaMeaning12 => 'Uwakoze Urutonde';

  @override
  String get asmaMeaning13 => 'Igishusho cyubwiza';

  @override
  String get asmaMeaning14 => 'Kubabarira';

  @override
  String get asmaMeaning15 => 'Umuyoboke';

  @override
  String get asmaMeaning16 => 'Uwatanze Byose';

  @override
  String get asmaMeaning17 => 'Umutunga';

  @override
  String get asmaMeaning18 => 'Gufungura';

  @override
  String get asmaMeaning19 => 'Uzi Byose';

  @override
  String get asmaMeaning20 => 'Umuyobozi';

  @override
  String get asmaMeaning21 => 'Umutabazi';

  @override
  String get asmaMeaning22 => 'Abaser';

  @override
  String get asmaMeaning23 => 'Umukuru';

  @override
  String get asmaMeaning24 => 'Uwatanze icyubahiro';

  @override
  String get asmaMeaning25 => 'Umusuzugura';

  @override
  String get asmaMeaning26 => 'Uwumva Byose';

  @override
  String get asmaMeaning27 => 'Umureba wa Byose';

  @override
  String get asmaMeaning28 => 'Umucamanza';

  @override
  String get asmaMeaning29 => 'Ubutabera';

  @override
  String get asmaMeaning30 => 'Icyoroshye';

  @override
  String get asmaMeaning31 => 'Byose Birabizi';

  @override
  String get asmaMeaning32 => 'Kubanziriza';

  @override
  String get asmaMeaning33 => 'Icyubahiro';

  @override
  String get asmaMeaning34 => 'Umubabarira Ukomeye';

  @override
  String get asmaMeaning35 => 'Igihembo cyo gushimira';

  @override
  String get asmaMeaning36 => 'Isumbabyose';

  @override
  String get asmaMeaning37 => 'Ikomeye';

  @override
  String get asmaMeaning38 => 'Umurinzi';

  @override
  String get asmaMeaning39 => 'Imirire';

  @override
  String get asmaMeaning40 => 'Umubare';

  @override
  String get asmaMeaning41 => 'Umukuru';

  @override
  String get asmaMeaning42 => 'Ubuntu';

  @override
  String get asmaMeaning43 => 'Umwe ureba';

  @override
  String get asmaMeaning44 => 'Igisubizo cyamasengesho';

  @override
  String get asmaMeaning45 => 'Byose birasobanuka';

  @override
  String get asmaMeaning46 => 'Abanyabwenge Byuzuye';

  @override
  String get asmaMeaning47 => 'Urukundo';

  @override
  String get asmaMeaning48 => 'Icyubahiro Cyiza';

  @override
  String get asmaMeaning49 => 'Umuzuko';

  @override
  String get asmaMeaning50 => 'Umuhamya';

  @override
  String get asmaMeaning51 => 'Ukuri';

  @override
  String get asmaMeaning52 => 'Umwishingizi wuzuye-uhagije';

  @override
  String get asmaMeaning53 => 'Ufite imbaraga zose';

  @override
  String get asmaMeaning54 => 'Imbaraga';

  @override
  String get asmaMeaning55 => 'Umurinzi';

  @override
  String get asmaMeaning56 => 'Ishimwe';

  @override
  String get asmaMeaning57 => 'Isuzuma';

  @override
  String get asmaMeaning58 => 'Uwatangije';

  @override
  String get asmaMeaning59 => 'Umugarura';

  @override
  String get asmaMeaning60 => 'Utanga Ubuzima';

  @override
  String get asmaMeaning61 => 'Umutware wubuzima';

  @override
  String get asmaMeaning62 => 'Ibihe Byose';

  @override
  String get asmaMeaning63 => 'Umutunga wenyine';

  @override
  String get asmaMeaning64 => 'Umushakisha';

  @override
  String get asmaMeaning65 => 'Icyubahiro';

  @override
  String get asmaMeaning66 => 'Umwe wenyine';

  @override
  String get asmaMeaning67 => 'Umwe';

  @override
  String get asmaMeaning68 => 'Imwe Yasabwe na Bose';

  @override
  String get asmaMeaning69 => 'Imbaraga';

  @override
  String get asmaMeaning70 => 'Umuremyi wimbaraga zose';

  @override
  String get asmaMeaning71 => 'Umuvuduko';

  @override
  String get asmaMeaning72 => 'Gutinda';

  @override
  String get asmaMeaning73 => 'Iya mbere';

  @override
  String get asmaMeaning74 => 'Iyanyuma';

  @override
  String get asmaMeaning75 => 'Iyerekana';

  @override
  String get asmaMeaning76 => 'Ibihishe';

  @override
  String get asmaMeaning77 => 'Guverineri';

  @override
  String get asmaMeaning78 => 'Isumbabyose';

  @override
  String get asmaMeaning79 => 'Umukora ibyiza';

  @override
  String get asmaMeaning80 => 'Ubuyobozi bwo Kwihana';

  @override
  String get asmaMeaning81 => 'Uwihorera';

  @override
  String get asmaMeaning82 => 'Umubabarira';

  @override
  String get asmaMeaning83 => 'Clement';

  @override
  String get asmaMeaning84 => 'Nyirubwite / Umutegetsi wa Byose';

  @override
  String get asmaMeaning85 => 'Ufite Nyiricyubahiro na Bounty';

  @override
  String get asmaMeaning86 => 'Iringaniye';

  @override
  String get asmaMeaning87 => 'Iteranya';

  @override
  String get asmaMeaning88 => 'Umukire';

  @override
  String get asmaMeaning89 => 'Umutunzi';

  @override
  String get asmaMeaning90 => 'Umurinda ibyago';

  @override
  String get asmaMeaning91 => 'Uzana Ibibi';

  @override
  String get asmaMeaning92 => 'Utanga Inyungu';

  @override
  String get asmaMeaning93 => 'Umucyo';

  @override
  String get asmaMeaning94 => 'Umuyobozi';

  @override
  String get asmaMeaning95 => 'Uwatangije';

  @override
  String get asmaMeaning96 => 'Uhoraho';

  @override
  String get asmaMeaning97 => 'Umurage';

  @override
  String get asmaMeaning98 => 'Umuyobozi Ukiranuka';

  @override
  String get asmaMeaning99 => 'Umurwayi';
}
