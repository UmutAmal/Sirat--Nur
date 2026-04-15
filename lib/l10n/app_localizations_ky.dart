// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kirghiz Kyrgyz (`ky`).
class AppLocalizationsKy extends AppLocalizations {
  AppLocalizationsKy([String locale = 'ky']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Ислам Нур жолу';

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
  String get fajr => 'Фажр';

  @override
  String get sunrise => 'Күн чыгышы';

  @override
  String get dhuhr => 'Түш';

  @override
  String get asr => 'Аср';

  @override
  String get maghrib => 'Магриб';

  @override
  String get isha => 'Иша';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName убактысы';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '$prayerName тиленүү убактысы келди.';
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
      'Жайгашкан жерди аныктоо кызматы өчүрүлгөн.';

  @override
  String get locationPermissionDenied =>
      'Жайгашкан жерди аныктоо уруксаты четке кагылды.';

  @override
  String get locationDetectionFailed =>
      'Жайгашкан жериңиз аныкталган жок. Шаарды кол менен тандаңыз же кайра аракет кылыңыз.';

  @override
  String citiesCount(String count) {
    return '$count шаарлар';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'Эч натыйжа табылган жок';

  @override
  String get loading => 'Жүктөлүүдө...';

  @override
  String get error => 'Ката';

  @override
  String get appErrorOccurred => 'Ката кетти';

  @override
  String get appUnknownError => 'Белгисиз ката';

  @override
  String get quranLoadFailed =>
      'Куран мазмунун жүктөө мүмкүн эмес. Сураныч, кайра аракет кылыңыз.';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Жаңылоо';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Жок кылуу';

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
  String get tafsirLoading => 'Тафсир жүктөлүүдө...';

  @override
  String get tafsirSourceLabel => 'Тафсир булагы';

  @override
  String get tafsirNoSurahFound =>
      'Бул сүрө үчүн эч кандай тафсир табылган жок.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return '$ayah аяты боюнча тафсир табылган жок.';
  }

  @override
  String get tafsirLoadFailed => 'Тафсирди жүктөө мүмкүн эмес.';

  @override
  String get tafsirNoTextForAyah => 'Бул аят үчүн тафсир тексти жок.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Тафсир жүктөлүүдө $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Тафсир жүктөлүүдө $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Тафсир булагы HTTP $statusCode катасын кайтарды.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Тандалган тафсир булагы эч кандай жазууларды кайтарган жок.';

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
      'Кээ бирлери: «Раббибиз, бизге дүйнөдө да, акыретте да жакшылык бер жана бизди тозок азабынан сакта» деп дуба кылышат.';

  @override
  String get duaMeaning2 =>
      'Аллах эч бир жанга көтөрө алгыдай жүк жүктөбөйт: ар бир кылган жакшылыктарына ээ болот жана жамандыгынан азап тартат – Рабби, эгер унутуп калсак же ката кетирсек бизди эсепке алба. Раббим, бизден мурункуларга жүктөгөндөй жүк салба. Раббим, бизге күчүбүз жеткенден ашык жүк салба. Бизди кечир, бизди кечир жана бизге ырайым кыл. Сен биздин коргоочусуң, каапырларга каршы бизге жардам бер!»';

  @override
  String get duaMeaning3 =>
      '«Раббибиз, бизди туура жолго салганыңдан кийин жүрөгүбүздү адаштырба. Бизге ырайымыңды бер: Сен Берүүчүсүң.';

  @override
  String get duaMeaning4 =>
      'Раббим, менин жана менин урпактарымдын намазды улантуусун насип эт. Раббибиз, тилегимди кабыл кыл.';

  @override
  String get duaMeaning5 =>
      'Аларга мээримдүүлүк менен момундук менен канатыңарды ылдый түшүр жана: «Раббим, алар мени кичинекей кезимде багышкандай, аларга да ырайым кыла көр» деп айт.';

  @override
  String get duaMeaning6 =>
      'Чыныгы башкаруучу Аллах улук. [Пайгамбар], вахий толук боло электе окууга шашпа, тескерисинче: “Раббим, илимимди арттыр!” – деп айт.';

  @override
  String get duaMeaning7 =>
      '[Пайгамбарга] айт: “Раббим, кечир жана ырайым кыл, Сен баарынан ырайымдуусуң”.';

  @override
  String get duaMeaning8 =>
      '«Оо, Раббибиз, жубайларыбызды жана урпактарыбызды бактылуу кыл. Сенден кабардар болгондор үчүн бизди жакшы үлгү кыл!».';

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
  String get hadith => 'Хадис';

  @override
  String get hadithCollection => 'Хадистер жыйнагы';

  @override
  String get hadithBooks => 'Хадис китептери';

  @override
  String get searchHadith => 'Хадис издөө';

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
  String get openInYoutube => 'YouTube\'да ачуу';

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
    return '$hoursс $minutesм';
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
  String get islamicNewYear => 'Ислам Жаңы жылы';

  @override
  String get mawlidAnNabi => 'Мавлид ан-Наби';

  @override
  String get specialDayDateRamadanStart => '1 Рамазан';

  @override
  String get specialDayDateLaylatAlQadr => '27 Рамазан';

  @override
  String get specialDayDateEidAlFitr => '1 Шаввал';

  @override
  String get specialDayDateEidAlAdha => '10 Зуль Хижжа';

  @override
  String get specialDayDateIslamicNewYear => '1 Мухаррам';

  @override
  String get specialDayDateMawlidAnNabi => '12 Рабиул-аввал';

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
    return 'Компас катасы: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Компас сенсору бул түзмөктө жеткиликсиз.';

  @override
  String get adhanNotificationChannelName => 'Азан эскертмелери';

  @override
  String get adhanNotificationChannelDescription =>
      'Намаз убактысы азан үнү менен эскертет.';

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
    return '$appName карап көрүңүз: Исламдык жашоо образынын эң сонун колдонмосу! $url';
  }

  @override
  String get downloadManager => 'Жүктөө менеджери';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Жүктөлүп бүттү';

  @override
  String get downloadFailed => 'Жүктөп алуу ишке ашкан жок';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'Интернет байланышы жок';

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
  String get zikrCompletedMashAllah => 'Аякталды! МашАллах';

  @override
  String get zikrMeaningSubhanAllah => 'Аллах бардык кемчиликтерден жогору.';

  @override
  String get zikrMeaningAlhamdulillah => 'Бардык мактоолор Аллахка таандык.';

  @override
  String get zikrMeaningAllahuAkbar => 'Аллах эң улуу.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Аллахтан башка кудай жок.';

  @override
  String get zikrMeaningAstaghfirullah => 'Алладан кечирим сурайм.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Алладан башка эч кандай күч жана күч жок.';

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
  String get audioVoice => 'Аудио үн';

  @override
  String get audioVoiceMisharyAlafasy => 'Эркек (Мишари Алафаси)';

  @override
  String get audioVoiceAbdulBaset => 'Эркек (АбдулБасет)';

  @override
  String get audioVoiceSudais => 'Эркек (Судайлар)';

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
  String get diagnosticsNotSet => 'коюлган эмес';

  @override
  String get diagnosticsPrayerProfile => 'Намаз профили';

  @override
  String get diagnosticsPrayerSource => 'Намаз органы';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Ыңгайлаштырылган / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Кол менен ыңгайлаштырылган бурчтар (институционалдык булак жок)';

  @override
  String get diagnosticsCloudDriven => 'Cloud Driven';

  @override
  String get diagnosticsAdhanAudioAssets => 'Азан аудио активдери';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Куран аудио активдери';

  @override
  String get diagnosticsAudioAssets => 'Аудио активдери';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count файлдары';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Манифест окулбай калды: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Localization Localles';

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
      'Supabase\'де булут таблицалары жок; топтоштурулган кайтаруу активдүү';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz метадайындары жок; бириктирилген структуралык кайра жигердүү';

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
  String get dailyVerse => 'Daily Verse';

  @override
  String get todaysIbadah => 'Бүгүнкү Ибадат';

  @override
  String get quickAccess => 'Ыкчам жетүү';

  @override
  String get assistant => 'Жардамчы';

  @override
  String get places => 'жерлер';

  @override
  String get library => 'Китепкана';

  @override
  String get analytics => 'Аналитика';

  @override
  String get dailyDuas => 'Күнүмдүк дуалар';

  @override
  String essentialDuas(String count) {
    return '$count маанилүү дуалар';
  }

  @override
  String get duaUnavailableTitle =>
      'Текшерилген дуалар азырынча жеткиликтүү эмес';

  @override
  String get duaUnavailableBody =>
      'Текшерилген күнүмдүк дуалар азырынча бул түзмөккө шайкештириле элек. Текшерилбеген калыбына келтирүүнүн ордуна булактан алынган дуаларды жүктөө үчүн булут булагына туташыңыз.';

  @override
  String get duaCategoryQuranic => 'Куран дубасы';

  @override
  String get duaCategoryMorningEvening => 'Эртең менен жана кечинде';

  @override
  String get duaCategoryTasbih => 'Тасбих';

  @override
  String get duaCategoryProtection => 'Коргоо';

  @override
  String get duaCategoryBeginning => 'Башталышы';

  @override
  String get duaCategorySleep => 'Уйку';

  @override
  String get duaCategoryFoodDrink => 'Тамак-аш жана суусундук';

  @override
  String get duaCategoryForgiveness => 'кечирүү';

  @override
  String get duaCategoryHome => 'Үй';

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
  String get islamicEducation => 'Ислам билими';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Хадис жыйнактары';

  @override
  String get hadithSourcePending => 'Текшерилген булак күтүүдө';

  @override
  String get hadithUnavailableTitle =>
      'Текшерилген хадис жыйнактары азырынча жеткиликтүү эмес';

  @override
  String get hadithUnavailableBody =>
      'Бул түзүлүшү дагы эле текшерилбеген тышкы хадис түрмөгүнөн көз каранды. Булактан алынган маалымат топтому шайкештирилмейинче, хадисти карап чыгуу өчүрүлгөн бойдон калат.';

  @override
  String get paywallUnlockAll =>
      'Рухий саякатыңыз үчүн бардык мүмкүнчүлүктөрдү ачыңыз';

  @override
  String get premiumProductUnavailable =>
      'Premium продукт азыр жеткиликтүү эмес. Сураныч, кийинчерээк кайра аракет кылыңыз.';

  @override
  String get premiumPurchaseFailed =>
      'Сатып алуу аягына чыккан жок. Сураныч, кайра аракет кылыңыз.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'AI менен иштеген чексиз суроо-жооп';

  @override
  String get paywallFeature2Title => 'Чексиз оффлайн';

  @override
  String get paywallFeature2Desc => 'Бардык окууларды жүктөп алыңыз';

  @override
  String get paywallFeature3Title => 'Эксклюзивдүү дизайн';

  @override
  String get paywallFeature3Desc => 'Премиум темалар жана шрифттер';

  @override
  String get paywallFeature4Title => 'Жарнамасыз';

  @override
  String get paywallFeature4Desc => 'Нөл жарнамалар';

  @override
  String get paywallGetAccess => 'Өмүр бою мүмкүндүк алуу — \$1.00';

  @override
  String get restorePurchases => 'Сатып алууларды калыбына келтирүү';

  @override
  String get zakatCalculator => 'Зекет калькулятору';

  @override
  String get zakatGold => 'Алтын (Алтын)';

  @override
  String get zakatSilver => 'Silver (Gümüş)';

  @override
  String get zakatCashBank => 'Накталай акча / Банк';

  @override
  String get zakatBusiness => 'Бизнес';

  @override
  String get zakatInvestments => 'Инвестициялар';

  @override
  String get zakatWeightGrams => 'Салмагы (г)';

  @override
  String get zakatPricePerGram => 'Баасы/г';

  @override
  String get zakatTotalAmount => 'Жалпы сумма';

  @override
  String get zakatInventoryValue => 'Инвентарлык баалуулук';

  @override
  String get zakatDebts => 'Карыздар';

  @override
  String get zakatTotal => 'Бардыгы';

  @override
  String get calculateZakat => 'Зекетти эсептегиле';

  @override
  String get nisabNotReached => 'Нисаба жеткен жок. Зекет парз эмес.';

  @override
  String get totalZakat => 'Жалпы зекет';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Нисаб: $nisab • Активдер: $assets';
  }

  @override
  String get zakatGoldZakat => 'Алтын Зекет';

  @override
  String get zakatSilverZakat => 'Күмүш Зекет';

  @override
  String get zakatCashZakat => 'Накталай зекет';

  @override
  String get zakatBusinessZakat => 'Бизнес Зекет';

  @override
  String get zakatInvestmentZakat => 'Инвестиция зекети';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Күнүмдүк суроо чекке жетти. Чексиз Premium кызматына жаңыртыңыз.';

  @override
  String get chatbotErrorMsg =>
      'Мен жооп бере алган жокмун. Сураныч, кайра аракет кылыңыз.';

  @override
  String get chatbotOfflinePrompt =>
      'Текшерилген оффлайн ислам билим базасы дагы эле курацияланууда. Сиз азыр оффлайн калыбына келтирүүнү иштете аласыз, бирок булактан алынган маалымат топтому даяр болмоюнча ал чектелген коопсуз билдирүүлөрдү гана көрсөтөт.\n\nОффлайн кайтарууну иштеткиңиз келеби?';

  @override
  String get chatbotOfflineSwitched =>
      'Оффлайн калыбына келтирүү иштетилди. Тастыкталган жергиликтүү ислам жооптору азырынча даяр эмес.';

  @override
  String get chatbotOfflineDownloadLabel => 'Offline Fallback иштетүү';

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
  String get downloadAction => 'Жүктөп алуу';

  @override
  String get resumeDownload => 'Жүктөөнү улантуу';

  @override
  String get deleteDownloadedFiles => 'Жүктөлгөн файлдарды жок кылуу';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return '$reciter үчүн жүктөп алуу жокко чыгарылды.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return '$reciter үчүн жүктөп алуу аяктады.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return '$reciter үчүн $failed аткарылбай калган сүрөөлөр менен жүктөп алуу аяктады ($downloaded/$total жүктөлүп алынды).';
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
  String get sukunMixerSubtitle => 'Жаратылыш жана Куран аралаштыргыч';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Сукун (жаратылыш)';

  @override
  String get sukunRainOfMercy => 'Мээримдүүлүк жамгыр';

  @override
  String get sukunGardenOfPeace => 'Тынчтык бакчасы';

  @override
  String get sukunMidnightCalm => 'Түн жарымы тынч';

  @override
  String get sukunOceanTawheed => 'Океан Таухид';

  @override
  String get sukunUnavailableTitle => 'Үн пейзаждары жеткиликсиз';

  @override
  String get sukunUnavailableBody =>
      'Бул куруу талап кылынган Сукун үн пейзажынын активдерин камтыбайт.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Күн сызыгы';

  @override
  String get bestStreak => 'Эң мыкты сызык';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'Cloud AI колдонуу (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Offline Fallback иштетүү';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count калды';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API конфигурацияланган эмес. Жергиликтүү AI\'га которулуңуз.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Тастыкталган жергиликтүү исламдык жетекчилик азырынча жеткиликсиз. Булуттан алынган жооптор үчүн Cloud AIге которулуңуз.';

  @override
  String get mosques => 'Мечиттер';

  @override
  String get halalFood => 'Халал тамак';

  @override
  String get placesSearchArea => 'Бул аймакты издөө';

  @override
  String get nearbyMosques => 'Жакынкы мечиттер';

  @override
  String get islamicSchools => 'Ислам мектептери';

  @override
  String placesFoundCount(String count) {
    return '$count табылды';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance км алыстыкта';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API катасы: $statusCode';
  }

  @override
  String get placesNetworkError =>
      'Тармак катасы. Сураныч, кайра аракет кылыңыз.';

  @override
  String get placesLocationRequiredTitle => 'Жайгашкан жер талап кылынат';

  @override
  String get placesLocationRequiredBody =>
      'Адегенде жакын жерде жайгашкан мечиттерди, адал тамактарды жана ислам мектептерин так издөө үчүн жерди коюңуз.';

  @override
  String get placesMapTilesUnavailableTitle => 'Карта плиткалары жеткиликсиз';

  @override
  String get placesMapTilesUnavailableBody =>
      'Текшерилген карта плиткасынын булагы бул куруу үчүн азырынча конфигурациялана элек. Жакын жердеги жерлер сакталган жериңизден дагы эле жүктөй берет.';

  @override
  String get unknownPlaceName => 'Белгисиз ысым';

  @override
  String get islamicPlaceFallback => 'Ислам жери';

  @override
  String get asmaMeaning1 => 'Кайрымдуу';

  @override
  String get asmaMeaning2 => 'Кайрымдуу';

  @override
  String get asmaMeaning3 => 'Падыша / Түбөлүк Теңир';

  @override
  String get asmaMeaning4 => 'Эң ыйык';

  @override
  String get asmaMeaning5 => 'Тынчтыктын булагы';

  @override
  String get asmaMeaning6 => 'Коопсуздукту берүүчү';

  @override
  String get asmaMeaning7 => 'The Guardian';

  @override
  String get asmaMeaning8 => 'Баалуу / Эң Күчтүү';

  @override
  String get asmaMeaning9 => 'The Compeller';

  @override
  String get asmaMeaning10 => 'Эң улуу';

  @override
  String get asmaMeaning11 => 'Жаратуучу';

  @override
  String get asmaMeaning12 => 'Заказ берүүчү';

  @override
  String get asmaMeaning13 => 'Сулуулуктун түзүүчүсү';

  @override
  String get asmaMeaning14 => 'Кечирүүчү';

  @override
  String get asmaMeaning15 => 'Багындыргыч';

  @override
  String get asmaMeaning16 => 'Баарынын Берүүчүсү';

  @override
  String get asmaMeaning17 => 'Кудай берүүчү';

  @override
  String get asmaMeaning18 => 'Ачуучу';

  @override
  String get asmaMeaning19 => 'Баарын Билүүчү';

  @override
  String get asmaMeaning20 => 'The Constrictor';

  @override
  String get asmaMeaning21 => 'Жардам берүүчү';

  @override
  String get asmaMeaning22 => 'Абазер';

  @override
  String get asmaMeaning23 => 'Эксалтер';

  @override
  String get asmaMeaning24 => 'Ардак Берүүчү';

  @override
  String get asmaMeaning25 => 'Басынтуучу';

  @override
  String get asmaMeaning26 => 'Баарын Угуучу';

  @override
  String get asmaMeaning27 => 'Баарынын Көрүүчүсү';

  @override
  String get asmaMeaning28 => 'Судья';

  @override
  String get asmaMeaning29 => 'The Just';

  @override
  String get asmaMeaning30 => 'Кылдат';

  @override
  String get asmaMeaning31 => 'Баарынан кабардар';

  @override
  String get asmaMeaning32 => 'The Forebearing';

  @override
  String get asmaMeaning33 => 'Керемет';

  @override
  String get asmaMeaning34 => 'Улуу Кечиримдүү';

  @override
  String get asmaMeaning35 => 'Шүгүрчүлүктүн Сыйлоочусу';

  @override
  String get asmaMeaning36 => 'Эң Жогорку';

  @override
  String get asmaMeaning37 => 'Эң Улуу';

  @override
  String get asmaMeaning38 => 'Сактоочу';

  @override
  String get asmaMeaning39 => 'Азыктандыруучу';

  @override
  String get asmaMeaning40 => 'Эсептөөчү';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'Жоомарт';

  @override
  String get asmaMeaning43 => 'Кыраакы';

  @override
  String get asmaMeaning44 => 'Дубага жооп берүүчү';

  @override
  String get asmaMeaning45 => 'Баарын түшүнүү';

  @override
  String get asmaMeaning46 => 'Мыкты Даанышман';

  @override
  String get asmaMeaning47 => 'Мээримдүү';

  @override
  String get asmaMeaning48 => 'Эң Даңктуу';

  @override
  String get asmaMeaning49 => 'Тирилүүчү';

  @override
  String get asmaMeaning50 => 'Күбө';

  @override
  String get asmaMeaning51 => 'Чындык';

  @override
  String get asmaMeaning52 => 'Баардыгы Жетиштүү Камкорчу';

  @override
  String get asmaMeaning53 => 'Бардык Күчтүн Ээси';

  @override
  String get asmaMeaning54 => 'Күчтүү';

  @override
  String get asmaMeaning55 => 'Коргоочу';

  @override
  String get asmaMeaning56 => 'Макталган';

  @override
  String get asmaMeaning57 => 'Баалоочу';

  @override
  String get asmaMeaning58 => 'Негиздөөчүсү';

  @override
  String get asmaMeaning59 => 'Калыбына келтирүүчү';

  @override
  String get asmaMeaning60 => 'Өмүр Берүүчү';

  @override
  String get asmaMeaning61 => 'Өмүр алуучу';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'Өзүн-өзү камсыз кылуучу';

  @override
  String get asmaMeaning64 => 'The Finder';

  @override
  String get asmaMeaning65 => 'Даңазалуу';

  @override
  String get asmaMeaning66 => 'Жалгыз Бир';

  @override
  String get asmaMeaning67 => 'Бир';

  @override
  String get asmaMeaning68 => 'Баардыгы издеген';

  @override
  String get asmaMeaning69 => 'Күчтүү';

  @override
  String get asmaMeaning70 => 'Бардык күчтөрдүн Жаратуучусу';

  @override
  String get asmaMeaning71 => 'Экспедитер';

  @override
  String get asmaMeaning72 => 'Кечиктирүүчү';

  @override
  String get asmaMeaning73 => 'Биринчи';

  @override
  String get asmaMeaning74 => 'Акыркы';

  @override
  String get asmaMeaning75 => 'Манифест';

  @override
  String get asmaMeaning76 => 'Жашыруун';

  @override
  String get asmaMeaning77 => 'Губернатор';

  @override
  String get asmaMeaning78 => 'Жогорку';

  @override
  String get asmaMeaning79 => 'Жакшылык кылуучу';

  @override
  String get asmaMeaning80 => 'Өкүнүү үчүн колдонмо';

  @override
  String get asmaMeaning81 => 'Кек алуучу';

  @override
  String get asmaMeaning82 => 'Кечирүүчү';

  @override
  String get asmaMeaning83 => 'The Clement';

  @override
  String get asmaMeaning84 => 'Баарынын Ээси / Эгедери';

  @override
  String get asmaMeaning85 => 'Улуулуктун жана Береметтин Ээси';

  @override
  String get asmaMeaning86 => 'Адилеттүү';

  @override
  String get asmaMeaning87 => 'Жыйноочу';

  @override
  String get asmaMeaning88 => 'Бай';

  @override
  String get asmaMeaning89 => 'Байыткыч';

  @override
  String get asmaMeaning90 => 'Зыяндын алдын алуучу';

  @override
  String get asmaMeaning91 => 'Зыян келтирүүчү';

  @override
  String get asmaMeaning92 => 'Пайдалануучу';

  @override
  String get asmaMeaning93 => 'Жарык';

  @override
  String get asmaMeaning94 => 'Жол көрсөтүүчү';

  @override
  String get asmaMeaning95 => 'Негиздөөчүсү';

  @override
  String get asmaMeaning96 => 'Түбөлүктүү';

  @override
  String get asmaMeaning97 => 'Мурасчы';

  @override
  String get asmaMeaning98 => 'Эң Адил Жол көрсөткүч';

  @override
  String get asmaMeaning99 => 'Сабырдуу';
}
