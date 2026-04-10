// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tatar (`tt`).
class AppLocalizationsTt extends AppLocalizations {
  AppLocalizationsTt([String locale = 'tt']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Ислам яктылыгы юлы';

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
  String get fajr => 'Фәҗр';

  @override
  String get sunrise => 'Кояш чыгу';

  @override
  String get dhuhr => 'Зөһрә';

  @override
  String get asr => 'Аср';

  @override
  String get maghrib => 'Магриб';

  @override
  String get isha => 'Иша';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName өчен вакыт';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Дога кылырга вакыт $prayerName.';
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
  String get locationServiceDisabled => 'Урын хезмәте инвалид.';

  @override
  String get locationPermissionDenied => 'Урын рөхсәте кире кагылды.';

  @override
  String citiesCount(String count) {
    return '$count шәһәрләр';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'Нәтиҗә табылмады';

  @override
  String get loading => 'Йөкләү ...';

  @override
  String get error => 'Хата';

  @override
  String get appErrorOccurred => 'Хата килеп чыкты';

  @override
  String get appUnknownError => 'Билгесез хата';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Яңарту';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Бетерү';

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
    return 'Ая $ayah';
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
  String get tafsirLoading => 'Тафсир йөкләү ...';

  @override
  String get tafsirSourceLabel => 'Тафсир чыганагы';

  @override
  String get tafsirNoSurahFound => 'Бу сүрә өчен тафсир табылмады.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Аях $ayah өчен тафсир табылмады.';
  }

  @override
  String get tafsirLoadFailed => 'Тафсирны йөкләп булмады.';

  @override
  String get tafsirNoTextForAyah => 'Бу аять өчен тәфсир тексты юк.';

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
    return 'Тафсир чыганагы HTTP $statusCode хата кайтарды.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Сайланган тафсир чыганагы бернинди язуны да кайтармады.';

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
      'башкалар дога кылалар: «Раббыбыз, безгә бу дөньяда һәм ахирәттә яхшылык бир һәм безне ут газапыннан сакла».';

  @override
  String get duaMeaning2 =>
      'Алла бернинди җанны да күтәрә алмаганнан артык йөкләми: һәрберсе нинди яхшылык эшләсә дә, аның начарлыгын кичерә - «Хуҗабыз, онытсак яки хаталар җибәрсәк, безне эшкә кабул итмә. Ходаем, безнекеләргә йөкләгән кебек, безгә дә йөкләмә. Ходаем, безгә күтәрергә көчебездән күбрәк йөкләмә. Гафу итегез, кичерегез һәм безгә шәфкать күрсәтегез. Син безнең яклаучыбыз, кяферләргә каршы безгә булыш. \"';

  @override
  String get duaMeaning3 =>
      '«Раббыбыз, син безне туры юлга күндергәннән соң йөрәкләребез читкә тайпылмасын. Безгә шәфкатеңне бир: Син һәрвакыт бирәсең.';

  @override
  String get duaMeaning4 =>
      'Ходаем, мин һәм минем токымнар дога кылсын өчен бир. Раббыбыз, минем үтенечемне кабул ит.';

  @override
  String get duaMeaning5 =>
      'аларга карата басынкылык белән канатыгызны түбәнәйтегез һәм әйтегез: \"Хуҗам, алар миңа кечкенә вакытта кайгырткан кебек, аларга да шәфкать күрсәт\".';

  @override
  String get duaMeaning6 =>
      'чыннан да идарә итүче Алла данлансын. [Пәйгамбәр], иңдерелгәнче укырга ашыкма, ләкин әйт: \"Хуҗам, мине белемдә арттыр!\"';

  @override
  String get duaMeaning7 =>
      '[Пәйгамбәр] әйтегез: «Хуҗам, кичер һәм шәфкать күрсәт: Син барыннан да шәфкатьлесең».';

  @override
  String get duaMeaning8 =>
      'дога кылучылар, «Раббыбыз, безгә тормыш иптәшләребездә һәм токымнарыбызда шатлык бир. Сезне белүчеләргә яхшы үрнәк күрсәтегез ».';

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
  String get hadith => 'Хәдис';

  @override
  String get hadithCollection => 'Хәдис җыентыгы';

  @override
  String get hadithBooks => 'Хәдис китаплары';

  @override
  String get searchHadith => 'Хәдисне эзләү';

  @override
  String get asmaulHusna => 'Асма-ул-Хусна';

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
  String get openInYoutube => 'YouTube\'та ачыгыз';

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
    return '$minutesм';
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
  String get islamicNewYear => 'Ислам Яңа елы';

  @override
  String get mawlidAnNabi => 'Мәүлид ан-Нәби';

  @override
  String get specialDayDateRamadanStart => '1 Рамазан';

  @override
  String get specialDayDateLaylatAlQadr => '27 Рамазан';

  @override
  String get specialDayDateEidAlFitr => '1 Шавал';

  @override
  String get specialDayDateEidAlAdha => '10 Зул Хиҗа';

  @override
  String get specialDayDateIslamicNewYear => '1 Мөхәррәм';

  @override
  String get specialDayDateMawlidAnNabi => '12 Раби әл-Аввал';

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
    return 'Компас хата: $error';
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
    return '$appName карагыз: Ислам тормышының соңгы кушымтасы! $url';
  }

  @override
  String get downloadManager => 'Йөкләү менеджеры';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Йөкләү';

  @override
  String get downloadFailed => 'Йөкләү уңышсыз';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'Интернетка тоташу юк';

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
  String get zikrCompletedMashAllah => 'Тәмамланды! МашАллах';

  @override
  String get zikrMeaningSubhanAllah => 'Аллаһ һәр камилсезлектән өстен.';

  @override
  String get zikrMeaningAlhamdulillah => 'Бөтен мактау Аллаһныкы.';

  @override
  String get zikrMeaningAllahuAkbar => 'Аллаһ иң бөек.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Аллаһудан башка илаһ юк.';

  @override
  String get zikrMeaningAstaghfirullah => 'Мин Аллаһның кичерүен сорыйм.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata => 'Аллаһудан башка көч һәм көч юк.';

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
  String get offlineDownloadManager => 'Оффлайн йөкләү менеджеры';

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
  String get audioVoice => 'Аудио тавыш';

  @override
  String get audioVoiceMisharyAlafasy => 'Ир-ат (Мишари Алафаси)';

  @override
  String get audioVoiceAbdulBaset => 'Ир-ат (АбдулБасет)';

  @override
  String get audioVoiceSudais => 'Ир-ат (Судайлар)';

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
  String get diagnosticsNotSet => 'Көтелмәгән';

  @override
  String get diagnosticsPrayerProfile => 'Дога профиле';

  @override
  String get diagnosticsPrayerSource => 'Дога кылу';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manual custom angles (no institutional source)';

  @override
  String get diagnosticsCloudDriven => 'Болыт';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Quran Audio Assets';

  @override
  String get diagnosticsAudioAssets => 'Аудио активлар';

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
      'Супабазда болыт өстәлләре юк; тупланган кире кайту актив';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Болыт джуз метадайыннары юкка чыга; тупланган структур артка актив';

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
  String get dailyVerse => 'Көндәлек шигырь';

  @override
  String get todaysIbadah => 'Бүгенге Ибада';

  @override
  String get quickAccess => 'Тиз керү';

  @override
  String get assistant => 'Ярдәмче';

  @override
  String get places => 'Урыннар';

  @override
  String get library => 'Китапханә';

  @override
  String get analytics => 'Аналитика';

  @override
  String get dailyDuas => 'Көн саен Дуас';

  @override
  String essentialDuas(String count) {
    return '$count кирәкле дуа';
  }

  @override
  String get duaUnavailableTitle => 'Тикшерелгән дуалар әлегә юк';

  @override
  String get duaUnavailableBody =>
      'Тикшерелгән көндәлек дуа бу җайланмага синхронлашмаган. Тикшерелмәгән кире кайту урынына болыт чыганагына тоташыгыз.';

  @override
  String get duaCategoryQuranic => 'Коръән дуа';

  @override
  String get duaCategoryMorningEvening => 'Таң һәм кич';

  @override
  String get duaCategoryTasbih => 'Тасбих';

  @override
  String get duaCategoryProtection => 'Саклау';

  @override
  String get duaCategoryBeginning => 'Башлангычлар';

  @override
  String get duaCategorySleep => 'Йокла';

  @override
  String get duaCategoryFoodDrink => 'Ашамлык һәм эчемлек';

  @override
  String get duaCategoryForgiveness => 'Кичерү';

  @override
  String get duaCategoryHome => 'Өй';

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
  String get islamicEducation => 'Ислам мәгарифе';

  @override
  String get sukunAudioTitle => 'Сукун тавышлары';

  @override
  String get hadithCollections => 'Хәдис коллекцияләре';

  @override
  String get hadithSourcePending => 'Тикшерелгән чыганак көтелә';

  @override
  String get hadithUnavailableTitle =>
      'Тикшерелгән хәдис коллекцияләре әлегә юк';

  @override
  String get hadithUnavailableBody =>
      'Бу төзү әле расланмаган тышкы хәдис азыкына бәйле. Хәдисне карау, мәгълүматлар базасы синхронланганчы инвалид булып кала.';

  @override
  String get paywallUnlockAll =>
      'Рухи сәяхәтегез өчен барлык үзенчәлекләрне ачыгыз';

  @override
  String get premiumProductUnavailable =>
      'Премиум продукт хәзер мөмкин түгел. Зинһар, соңрак кабатлап карагыз.';

  @override
  String get premiumPurchaseFailed =>
      'Сатып алу тәмамланмады. Зинһар, кабатлап карагыз.';

  @override
  String get paywallFeature1Title => 'Нейр ярдәмчесе плюс';

  @override
  String get paywallFeature1Desc => 'Чикләнмәгән ЯИ белән эшләнгән Сораулар';

  @override
  String get paywallFeature2Title => 'Чикләнмәгән оффлайн';

  @override
  String get paywallFeature2Desc => 'Барлык укуларны йөкләү';

  @override
  String get paywallFeature3Title => 'Эксклюзив конструкцияләр';

  @override
  String get paywallFeature3Desc => 'Премиум темалар һәм шрифтлар';

  @override
  String get paywallFeature4Title => 'Реклама';

  @override
  String get paywallFeature4Desc => 'Реклама';

  @override
  String get paywallGetAccess => 'Гомер буе рөхсәт алыгыз - \$ 1.00';

  @override
  String get restorePurchases => 'Сатып алуларны торгызу';

  @override
  String get zakatCalculator => 'Зәкят калькуляторы';

  @override
  String get zakatGold => 'Алтын (Алтын)';

  @override
  String get zakatSilver => 'Көмеш (Гөмүш)';

  @override
  String get zakatCashBank => 'Акча / банк';

  @override
  String get zakatBusiness => 'Бизнес';

  @override
  String get zakatInvestments => 'Инвестицияләр';

  @override
  String get zakatWeightGrams => 'Авырлык (g)';

  @override
  String get zakatPricePerGram => 'Бәя / г.';

  @override
  String get zakatTotalAmount => 'Гомуми сумма';

  @override
  String get zakatInventoryValue => 'Инвентаризация бәясе';

  @override
  String get zakatDebts => 'Бурычлар';

  @override
  String get zakatTotal => 'Барлыгы';

  @override
  String get calculateZakat => 'Зәкәтне санагыз';

  @override
  String get nisabNotReached => 'Нисаб җитмәде. Зәкят фарыз түгел.';

  @override
  String get totalZakat => 'Гомуми зәкәт';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Нисаб: $nisab • Активлар: $assets';
  }

  @override
  String get zakatGoldZakat => 'Алтын Зәкят';

  @override
  String get zakatSilverZakat => 'Көмеш зәкәт';

  @override
  String get zakatCashZakat => 'Акча зәкәте';

  @override
  String get zakatBusinessZakat => 'Бизнес Зәкят';

  @override
  String get zakatInvestmentZakat => 'Зәкят инвестициясе';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Көн саен сорау лимиты җитте. Чикләнмәгән өчен Premium\'ка яңарту.';

  @override
  String get chatbotErrorMsg =>
      'Мин җавап бирә алмадым. Зинһар, кабатлап карагыз.';

  @override
  String get chatbotOfflinePrompt =>
      'Тикшерелгән оффлайн ислам белем базасы әле дә куратор. Сез хәзер оффлайн кире кайтуны эшли аласыз, ләкин ул чикләнгән куркынычсыз хәбәрләрне күрсәтелгән мәгълүматлар базасы әзер булганчы гына күрсәтәчәк.\n\nОффлайн кире кайтуны телисезме?';

  @override
  String get chatbotOfflineSwitched =>
      'Оффлайн кире кайту мөмкинлеге бар. Тикшерелгән җирле ислам җаваплары әле әзер түгел.';

  @override
  String get chatbotOfflineDownloadLabel => 'Оффлайн кире кайтуны куш';

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
  String get downloadAction => 'Йөкләү';

  @override
  String get resumeDownload => 'Йөкләү';

  @override
  String get deleteDownloadedFiles => 'Йөкләнгән файлларны бетерегез';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Йөкләү $reciter өчен юкка чыгарылды.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Йөкләү $reciter өчен тәмамланды.';
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
  String get sukunMixerSubtitle => 'Табигать һәм Коръән Миксеры';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Сукун (Табигать)';

  @override
  String get sukunRainOfMercy => 'Шәфкатьле яңгыр';

  @override
  String get sukunGardenOfPeace => 'Тынычлык бакчасы';

  @override
  String get sukunMidnightCalm => 'Төн уртасы тыныч';

  @override
  String get sukunOceanTawheed => 'Океан Тәүхид';

  @override
  String get sukunUnavailableTitle => 'Тавышлар юк';

  @override
  String get sukunUnavailableBody =>
      'Бу корылма әле кирәкле Сукун тавыш күренешләрен кертми.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Көн сызыгы';

  @override
  String get bestStreak => 'Иң яхшы юл';

  @override
  String get chatbotCloudAiLabel => 'Болыт ЯИ';

  @override
  String get chatbotLocalAiLabel => 'Оффлайн кире кайту';

  @override
  String get chatbotUseCloudAi => 'Cloud AI кулланыгыз (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Оффлайн кире кайтуны куш';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count калды';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API конфигурацияләнмәгән. Зинһар, җирле ЯИга күчә.';

  @override
  String get chatbotLocalNoInfo =>
      '[ОФЛИН] Тикшерелгән җирле ислам җитәкчелеге әлегә юк. Каты җаваплар өчен Cloud AI\'ка күчә.';

  @override
  String get mosques => 'Мәчетләр';

  @override
  String get halalFood => 'Хәләл ризык';

  @override
  String get placesSearchArea => 'Бу өлкәдә эзләгез';

  @override
  String get nearbyMosques => 'Якындагы мәчетләр';

  @override
  String get islamicSchools => 'Ислам мәктәпләре';

  @override
  String placesFoundCount(String count) {
    return '$count табылды';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance км ераклыкта';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API хата: $statusCode';
  }

  @override
  String get placesNetworkError => 'Челтәр хата. Зинһар, кабатлап карагыз.';

  @override
  String get placesLocationRequiredTitle => 'Урын кирәк';

  @override
  String get placesLocationRequiredBody =>
      'Башта якын урнашкан мәчетләр, хәләл ризыклар, Ислам мәктәпләрен төгәл эзләп табу өчен урын билгеләгез.';

  @override
  String get placesMapTilesUnavailableTitle => 'Карта плиткалары юк';

  @override
  String get placesMapTilesUnavailableBody =>
      'Тикшерелгән карта плиткасы чыганагы бу төзелеш өчен конфигурацияләнмәгән. Якындагы урыннар сезнең сакланган урыныгыздан йөкләнә ала.';

  @override
  String get unknownPlaceName => 'Билгесез исем';

  @override
  String get islamicPlaceFallback => 'Ислам урыны';

  @override
  String get asmaMeaning1 => 'Хәйрияче';

  @override
  String get asmaMeaning2 => 'Шәфкатьле';

  @override
  String get asmaMeaning3 => 'Король / Мәңге Хуҗа';

  @override
  String get asmaMeaning4 => 'Иң изге';

  @override
  String get asmaMeaning5 => 'Тынычлык чыганагы';

  @override
  String get asmaMeaning6 => 'Куркынычсызлык бирүче';

  @override
  String get asmaMeaning7 => 'Саклаучы';

  @override
  String get asmaMeaning8 => 'Кыйммәтле / Иң көчле';

  @override
  String get asmaMeaning9 => 'Сатучы';

  @override
  String get asmaMeaning10 => 'Иң бөек';

  @override
  String get asmaMeaning11 => 'Барлыкка Китерүче';

  @override
  String get asmaMeaning12 => 'Заказ ясаучы';

  @override
  String get asmaMeaning13 => 'Матурлык';

  @override
  String get asmaMeaning14 => 'Кичерү';

  @override
  String get asmaMeaning15 => 'Субдер';

  @override
  String get asmaMeaning16 => 'Барысын да бирүче';

  @override
  String get asmaMeaning17 => 'Туктаучы';

  @override
  String get asmaMeaning18 => 'Ачучы';

  @override
  String get asmaMeaning19 => 'Барысын да белүче';

  @override
  String get asmaMeaning20 => 'Конструктор';

  @override
  String get asmaMeaning21 => 'Коткаручы';

  @override
  String get asmaMeaning22 => 'Абасер';

  @override
  String get asmaMeaning23 => 'Күчерүче';

  @override
  String get asmaMeaning24 => 'Хөрмәт бирүче';

  @override
  String get asmaMeaning25 => 'Хурлаучы';

  @override
  String get asmaMeaning26 => 'Барысын да ишетүче';

  @override
  String get asmaMeaning27 => 'Барысын да күрүче';

  @override
  String get asmaMeaning28 => 'Судья';

  @override
  String get asmaMeaning29 => 'Гаделләр';

  @override
  String get asmaMeaning30 => 'Нечкә';

  @override
  String get asmaMeaning31 => 'Барысы да беләләр';

  @override
  String get asmaMeaning32 => '.Әр сүзнең';

  @override
  String get asmaMeaning33 => 'Магнит';

  @override
  String get asmaMeaning34 => 'Бөек Кичерүче';

  @override
  String get asmaMeaning35 => 'Рәхмәт бүләкләүчесе';

  @override
  String get asmaMeaning36 => 'Иң югары';

  @override
  String get asmaMeaning37 => 'Иң бөек';

  @override
  String get asmaMeaning38 => 'Саклаучы';

  @override
  String get asmaMeaning39 => 'Тукландыручы';

  @override
  String get asmaMeaning40 => 'Хисапчы';

  @override
  String get asmaMeaning41 => 'Магистр';

  @override
  String get asmaMeaning42 => 'Erousмарт';

  @override
  String get asmaMeaning43 => 'Уяу';

  @override
  String get asmaMeaning44 => 'Догага җавап бирүче';

  @override
  String get asmaMeaning45 => 'Барысы да аңлау';

  @override
  String get asmaMeaning46 => 'Зирәк зирәк';

  @override
  String get asmaMeaning47 => 'Яратучы';

  @override
  String get asmaMeaning48 => 'Иң данлы';

  @override
  String get asmaMeaning49 => 'Терелтүче';

  @override
  String get asmaMeaning50 => 'Шаһит';

  @override
  String get asmaMeaning51 => 'Хакыйкать';

  @override
  String get asmaMeaning52 => 'Ышанычлы попечитель';

  @override
  String get asmaMeaning53 => 'Барлык көчкә ия';

  @override
  String get asmaMeaning54 => 'Көчле';

  @override
  String get asmaMeaning55 => 'Саклаучы';

  @override
  String get asmaMeaning56 => 'Мактау';

  @override
  String get asmaMeaning57 => 'Бәяләүче';

  @override
  String get asmaMeaning58 => 'Башлангыч';

  @override
  String get asmaMeaning59 => 'Реставрацияләүче';

  @override
  String get asmaMeaning60 => 'Тормыш бирүче';

  @override
  String get asmaMeaning61 => 'Тормыш';

  @override
  String get asmaMeaning62 => 'Мәңге яшәү';

  @override
  String get asmaMeaning63 => 'Selfз-үзен тәэмин итүче';

  @override
  String get asmaMeaning64 => 'Табучы';

  @override
  String get asmaMeaning65 => 'Данлы';

  @override
  String get asmaMeaning66 => 'Бердәнбер';

  @override
  String get asmaMeaning67 => 'Бер';

  @override
  String get asmaMeaning68 => 'Барысы да эзләргә тиеш';

  @override
  String get asmaMeaning69 => 'Көчле';

  @override
  String get asmaMeaning70 => 'Барлык көчне Барлыкка Китерүче';

  @override
  String get asmaMeaning71 => 'Экспедиция';

  @override
  String get asmaMeaning72 => 'Соңга калу';

  @override
  String get asmaMeaning73 => 'Беренче';

  @override
  String get asmaMeaning74 => 'Соңгы';

  @override
  String get asmaMeaning75 => 'Манифест';

  @override
  String get asmaMeaning76 => 'Яшерен';

  @override
  String get asmaMeaning77 => 'Губернатор';

  @override
  String get asmaMeaning78 => 'Аллаһы Тәгалә';

  @override
  String get asmaMeaning79 => 'Яхшылык эшләүче';

  @override
  String get asmaMeaning80 => 'Тәүбә итү өчен кулланма';

  @override
  String get asmaMeaning81 => 'Venч алучы';

  @override
  String get asmaMeaning82 => 'Кичерүче';

  @override
  String get asmaMeaning83 => 'Клемент';

  @override
  String get asmaMeaning84 => 'Барысы да хуҗасы / суверены';

  @override
  String get asmaMeaning85 => 'Бөеклек һәм юмартлык иясе';

  @override
  String get asmaMeaning86 => 'Тигез';

  @override
  String get asmaMeaning87 => '.Ыючы';

  @override
  String get asmaMeaning88 => 'Бай';

  @override
  String get asmaMeaning89 => 'Байлаучы';

  @override
  String get asmaMeaning90 => 'Зыянны кисәтүче';

  @override
  String get asmaMeaning91 => 'Зыян китерүче';

  @override
  String get asmaMeaning92 => 'Файда бирүче';

  @override
  String get asmaMeaning93 => 'Яктылык';

  @override
  String get asmaMeaning94 => 'Гид';

  @override
  String get asmaMeaning95 => 'Башлангыч';

  @override
  String get asmaMeaning96 => 'Мәңгелек';

  @override
  String get asmaMeaning97 => 'Мирас';

  @override
  String get asmaMeaning98 => 'Иң гадел юл күрсәтүче';

  @override
  String get asmaMeaning99 => 'Пациент';
}
