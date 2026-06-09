// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Komi (`kv`).
class AppLocalizationsKv extends AppLocalizations {
  AppLocalizationsKv([String locale = 'kv']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Исламскӧй югыд туй .';

  @override
  String get home => 'Керка';

  @override
  String get quran => 'Коран';

  @override
  String get qibla => 'Кибла';

  @override
  String get zikr => 'Зикр';

  @override
  String get calendar => 'Календарь';

  @override
  String get settings => 'Настройкаяс';

  @override
  String get nextPrayer => 'Мӧд молитва .';

  @override
  String get prayerTimes => 'Молитва кадъяс .';

  @override
  String get continueReading => 'Водзӧ лыддьы .';

  @override
  String get getLifetimePro => 'Позьӧ босьтны «Лайфтайм Про» .';

  @override
  String get unlockTajweed =>
      'Разблокируйтны таджвид да сӧвмӧдны позянлунъяс .';

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
  String get sunrise => 'Sunrise';

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
    return 'Time for $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'It is time to pray $prayerName.';
  }

  @override
  String get dataStorage => 'Даннӧйяс да видзанін';

  @override
  String get clearCache => 'Кэш бырӧдӧм .';

  @override
  String get cacheClearedSuccess => 'Кэш бурӧн бырӧдӧма .';

  @override
  String get location => 'Ин';

  @override
  String get language => 'Кыв';

  @override
  String get selectLanguage => 'Бӧрйы кыв .';

  @override
  String get searchLanguage => 'Корсьны 180+ кыв...';

  @override
  String get systemDefault => 'Система умолчание';

  @override
  String get currentLocation => 'Ӧнія меститчӧм (GPS)';

  @override
  String get locationServiceDisabled => 'Места сервис лоӧ бырӧдӧма.';

  @override
  String get locationPermissionDenied => 'Места разрешение сетöма.';

  @override
  String get locationDetectionFailed =>
      'Эз вермы тӧдмавны тіянлысь оланіннытӧ. Бӧрйы карсӧ киӧн либӧ мӧдысь зіля.';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => 'Корсьны';

  @override
  String get searchHint => 'Корсьны...';

  @override
  String get noResults => 'Некутшӧм результат абу аддзӧма .';

  @override
  String get loading => 'Загрузка...';

  @override
  String get error => 'Шыбӧль';

  @override
  String get appErrorOccurred => 'Ӧшыбка лоис';

  @override
  String get appUnknownError => 'Тӧдтӧм ӧшыбка .';

  @override
  String get quranLoadFailed =>
      'Коран содержаниесӧ эз позь лэдзны. Please try again.';

  @override
  String get retry => 'Перепробуйте';

  @override
  String get refreshAction => 'Выльмӧдны';

  @override
  String get cancel => 'Киритӧм';

  @override
  String get save => 'Видзны';

  @override
  String get delete => 'Киритны';

  @override
  String get edit => 'Бурмӧдны';

  @override
  String get close => 'Пӧдлавны';

  @override
  String get ok => 'ЛАДНӦ';

  @override
  String get yes => 'Да';

  @override
  String get no => 'Абу';

  @override
  String get surah => 'Сура';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Джуз';

  @override
  String get page => 'Страница.';

  @override
  String get reading => 'Лыддьысьӧм';

  @override
  String get recitation => 'Декламация';

  @override
  String get translation => 'Вуджӧдӧм';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Загрузка тафсир...';

  @override
  String get tafsirSourceLabel => 'Tafsir source';

  @override
  String get tafsirNoSurahFound => 'Тайӧ сураысь некутшӧм тафсир эз аддзыны.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Некутшӧм тафсир эз аддзыны аят $ayah вылӧ.';
  }

  @override
  String get tafsirLoadFailed => 'Тафсир эз вермы тыртны.';

  @override
  String get tafsirNoTextForAyah => 'Тайӧ аят вылӧ тафсир текст абу.';

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
    return 'Тафсир источник сетіс HTTP $statusCode ӧшыбка.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Бӧрйӧм тафсир источникысь нинӧм эз бергӧд.';

  @override
  String get tafsirCacheUnavailable =>
      'Вердӧм тафсир офлайн ногӧн абу на. Синхронизируйтны источникысь тафсир даннӧйяс чукӧр видлалӧм бӧрын.';

  @override
  String get bookmarks => 'Закладкаяс';

  @override
  String get addBookmark => 'Содты закладка .';

  @override
  String get removeBookmark => 'Закладка бырӧдӧм .';

  @override
  String get lastRead => 'Бӧръя лыддьӧм';

  @override
  String get dailyZikr => 'Быд лун Зикр .';

  @override
  String get duaMeaning1 =>
      'others pray, ‘Our Lord, give us good in this world and in the Hereafter, and protect us from the torment of the Fire.’';

  @override
  String get duaMeaning2 =>
      'God does not burden any soul with more than it can bear: each gains whatever good it has done, and suffers whatever bad it has done. ‘Lord, do not take us to task if we forget or make mistakes. Lord, do not burden us as You burdened those before us. Lord, do not burden us with more than we have strength to bear. Pardon us, forgive us, and have mercy on us. You are our Protector, so help us against the disbelievers.’';

  @override
  String get duaMeaning3 =>
      '‘Our Lord, do not let our hearts deviate after You have guided us. Grant us Your mercy: You are the Ever Giving.';

  @override
  String get duaMeaning4 =>
      'Lord, grant that I and my offspring may keep up the prayer. Our Lord, accept my request.';

  @override
  String get duaMeaning5 =>
      'and lower your wing in humility towards them in kindness and say, ‘Lord, have mercy on them, just as they cared for me when I was little.’';

  @override
  String get duaMeaning6 =>
      'exalted be God, the one who is truly in control. [Prophet], do not rush to recite before the revelation is fully complete but say, ‘Lord, increase me in knowledge!’';

  @override
  String get duaMeaning7 =>
      'Say [Prophet], ‘Lord, forgive and have mercy: You are the most merciful of all.’';

  @override
  String get duaMeaning8 =>
      'those who pray, ‘Our Lord, give us joy in our spouses and offspring. Make us good examples to those who are aware of You’.';

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
  String get hadithCollection => 'Hadith Collection';

  @override
  String get hadithBooks => 'Hadith Books';

  @override
  String get searchHadith => 'Search Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Names of Allah';

  @override
  String get liveTv => 'Веськыд эфирын телевидение';

  @override
  String get watchLive => 'Watch Live';

  @override
  String get streamError => 'Стрим ӧшыбка .';

  @override
  String get reload => 'Перезагрузка';

  @override
  String get openInYoutube => 'Восьтӧма Ютубын .';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Fasting';

  @override
  String get quranReading => 'Quran Reading';

  @override
  String get playSurahAudio => 'Ворсны сура аудио .';

  @override
  String get pauseSurahAudio => 'Пауза сура аудио .';

  @override
  String get revelationMeccan => 'Меккаса';

  @override
  String get revelationMedinan => 'Медян';

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
  String get monthlyProgress => 'Тӧлысь прогресс .';

  @override
  String get statistics => 'Статистика';

  @override
  String get hijriCalendar => 'Hijri Calendar';

  @override
  String get gregorianCalendar => 'Григорианскӧй календар .';

  @override
  String get today => 'Today';

  @override
  String get tomorrow => 'Аски';

  @override
  String get yesterday => 'Тӧрыт';

  @override
  String get specialDays => 'Special Days';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Islamic New Year';

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
  String get degrees => 'градусъяс';

  @override
  String get north => 'Войвыв';

  @override
  String get qiblaFound => 'Qibla found!';

  @override
  String get turnDevice => 'Turn your device to face the Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Compass error: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Compass sensor is unavailable on this device.';

  @override
  String get qiblaLocationRequiredTitle => 'Кибла вылӧ колӧ места .';

  @override
  String get qiblaLocationRequiredBody =>
      'Кибла компасӧн вӧдитчӧм бӧрын лӧсьӧдӧй ассьыныд збыль меститчӧмсӧ, медым туйвизьсӧ позис тырвыйӧ урчитны.';

  @override
  String get adhanNotificationChannelName => 'Адан йылысь юӧртан .';

  @override
  String get adhanNotificationChannelDescription =>
      'Молитва дырйи юӧртӧны азан шыӧн.';

  @override
  String get notifications => 'Уведомлениеяс';

  @override
  String get prayerNotifications => 'Молитва йылысь юӧртанторъяс .';

  @override
  String get enableNotifications => 'Включитны юӧртанторъяс .';

  @override
  String get notificationTime => 'Уведомление кад .';

  @override
  String get beforePrayer => 'minutes before prayer';

  @override
  String get theme => 'Theme';

  @override
  String get lightMode => 'Light Mode';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get systemTheme => 'Система тема .';

  @override
  String get about => 'About';

  @override
  String get version => 'Version';

  @override
  String get privacyPolicy => 'Конфиденциальность йылысь политика .';

  @override
  String get termsOfService => 'Terms of Service';

  @override
  String get contactUs => 'Contact Us';

  @override
  String get rateApp => 'Донъялӧй тайӧ приложениесӧ .';

  @override
  String get shareApp => 'Делитчӧй тайӧ приложениеӧн .';

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
  String get downloadComplete => 'Download Complete';

  @override
  String get downloadFailed => 'Download Failed';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'No Internet Connection';

  @override
  String get checkConnection => 'Прӧверитӧй йитӧднытӧ .';

  @override
  String get premium => 'Вылыс тшупӧда';

  @override
  String get upgradeToPro => 'Выльмӧдны Pro вылӧ .';

  @override
  String get proFeatures => 'Про функцияяс .';

  @override
  String get removeAds => 'Реклама бырӧдӧм .';

  @override
  String get unlockAll => 'Разблокируйтны став контентсӧ .';

  @override
  String get exclusiveContent => 'Эксклюзивнӧй контент';

  @override
  String get welcome => 'Видза корам';

  @override
  String get getStarted => 'Get Started';

  @override
  String get skip => 'Чеччавны';

  @override
  String get next => 'Next';

  @override
  String get done => 'Done';

  @override
  String get onboarding1Title => 'Сират-ы Нюр .';

  @override
  String get onboarding1Desc =>
      'Your complete Islamic companion app for prayer times, Quran, and more';

  @override
  String get onboarding2Title => 'Молитва кадъяс .';

  @override
  String get onboarding2Desc => 'Тіян оланін серти лӧсялана молитва кадъяс .';

  @override
  String get onboarding3Title => 'Коран да мукӧдтор';

  @override
  String get onboarding3Desc =>
      'Read Quran, track your reading, and explore Islamic content';

  @override
  String get dhikrLibrary => 'Зикр библиотека';

  @override
  String get resetCounter => 'Reset Counter';

  @override
  String get changeTarget => 'Вежны тшупӧд .';

  @override
  String get newTarget => 'Выль цель .';

  @override
  String targetCount(Object target) {
    return 'Target: $target';
  }

  @override
  String get tapToCount => 'Tap to count';

  @override
  String get zikrCompletedMashAllah => 'Completed! MashAllah';

  @override
  String get zikrMeaningSubhanAllah => 'Allah is far above every imperfection.';

  @override
  String get zikrMeaningAlhamdulillah => 'All praise belongs to Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah is the Greatest.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'There is no god but Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'I seek Allah\'s forgiveness.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'There is no power and no strength except through Allah.';

  @override
  String get dailyChecklist => 'Быд лунъя контрольнӧй список .';

  @override
  String get qazaDebt => 'Каза (Долг) .';

  @override
  String get resetQazaData => 'Сбросить Каза Данные .';

  @override
  String get resetQazaDebtQuestion => 'Сброситны Каза Долг?';

  @override
  String get rawatib => 'Rawatib';

  @override
  String get tahajjud => 'Tahajjud';

  @override
  String get dailyProgress => 'Daily Progress';

  @override
  String get mandatoryPrayers => 'Обязательнӧй молитваяс .';

  @override
  String get sunnahAndOthers => 'Сунна да мукӧд';

  @override
  String get spiritualGrowth => 'Духовнӧй быдмӧм .';

  @override
  String get mandatoryDuty => 'Обязательнӧй дежурство';

  @override
  String get totalPrayers => 'Ставнас молитваяс .';

  @override
  String get prayerDebt => 'Молитва долг .';

  @override
  String get fastingDebt => 'Пасьтана долг .';

  @override
  String get reset => 'Сброс';

  @override
  String get days => 'Лунъяс';

  @override
  String get premiumIntegrity => 'Премиум интегритет .';

  @override
  String get recheckPremium => 'Recheck Premium Status';

  @override
  String get syncStore => 'Sync with the store to confirm your entitlement.';

  @override
  String get checkingPremium => 'Премиум статус видлалӧм...';

  @override
  String get premiumVerified => 'Premium verified.';

  @override
  String get premiumNotFound => 'Premium not found.';

  @override
  String premiumRefreshError(Object error) {
    return 'Could not refresh premium status: $error';
  }

  @override
  String get offlineDownloadManager => 'Офлайн скачивание менеджер .';

  @override
  String get manageDatasets =>
      'Управляйтны массӧвӧй офлайн аудио & даннӧйяс чукӧр пакетъясӧн.';

  @override
  String get freeStorage => 'Вользовайтны пытшкӧсса устройстволысь хранилище.';

  @override
  String get quranIntegrity => 'Коран тыр-бурлун .';

  @override
  String get checkQuranDb => 'Проверитӧй Коран база .';

  @override
  String get verifyQuranContent => 'Проверитӧй 114 сура да 6236 аят.';

  @override
  String get checkingQuranDb => 'Checking Quran database...';

  @override
  String get okLabel => 'ЛАДНӦ';

  @override
  String get incomplete => 'Неполнӧй';

  @override
  String get notSeeded => 'Не семеннӧй .';

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
    return 'Аятъяс: $count (виччысьӧма 6236) .';
  }

  @override
  String missingArabic(Object count) {
    return 'Араб кыв вылын: $count .';
  }

  @override
  String missingTurkish(Object count) {
    return 'Турецкӧй кыв: $count .';
  }

  @override
  String dbVersion(Object version) {
    return 'БД версия: $version .';
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
  String get audioVoice => 'Аудио гӧлӧс';

  @override
  String get audioVoiceMisharyAlafasy => 'Male (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Male (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Male (Sudais)';

  @override
  String get fajrAngle => 'Фаджр угловӧй .';

  @override
  String get ishaAngle => 'Иша уголь .';

  @override
  String get qiblaCalibration => 'Qibla Calibration';

  @override
  String get compassSmoothing => 'Компасӧн лӧсьӧдӧм .';

  @override
  String get reduceSensorJitter =>
      'Датчиклысь дрожьсӧ чинтыны стабильнӧйджык иглы вылӧ.';

  @override
  String get calibrationOffset => 'Калибровка ӧтувъялун .';

  @override
  String currentOffset(Object offset) {
    return 'Current: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Регулируйтӧй, колӧ кӧ тіян компаслы киӧн лӧсьӧдны. Положительнӧй значениеяс бергалӧны часі серти.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Перезапуск первойя настройка процесс.';

  @override
  String get diagnostics => 'Diagnostics';

  @override
  String get diagnosticsNotSet => 'Not set';

  @override
  String get diagnosticsPrayerProfile => 'Молитва йылысь профиль .';

  @override
  String get diagnosticsPrayerSource => 'Молитва власьт .';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Ручнӧй пользовательскӧй угольяс (институциональнӧй источник абу)';

  @override
  String diagnosticsPrayerHybridSource(String sourceName, String madhab) {
    return '$sourceName метод пользовательӧн бӧрйӧм $madhab Asr настройкаӧн .';
  }

  @override
  String diagnosticsPrayerRegionalFallbackSource(String sourceName) {
    return 'Региональнӧй ӧтувъялун $sourceName отсӧгӧн. Меставывса молитва кадъяссӧ лӧсьӧдӧй асланыд мечетькӧд либӧ официальнӧй дінмуса органкӧд.';
  }

  @override
  String get diagnosticsCloudDriven => 'Cloud Driven';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Quran Audio Assets';

  @override
  String get diagnosticsAudioAssets => 'Audio Assets';

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
      'Supabase -ын абуӧсь ӧблачнӧй таблицаяс; пучок запас активнӧй .';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz metadata missing; bundled structural fallback active';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Cloud structural check failed: $error';
  }

  @override
  String get healthCheckDesc =>
      'Вӧчны дзоньвидзалун видлалӧм да видзӧдны системалысь статуссӧ.';

  @override
  String get qiblaAligned => 'Кибла лӧсьӧдӧм .';

  @override
  String get rotateToFindQibla => 'Ротация да корсьны кибла .';

  @override
  String get calibrationRequiredFigure8 =>
      'Calibration required. Rotate device in figure-8.';

  @override
  String get dailyVerse => 'Daily Verse';

  @override
  String get dailyVerseUnavailableTitle => 'Daily verse unavailable';

  @override
  String get dailyVerseUnavailableBody =>
      'Verified daily verse content is not configured for this build yet. Connect to the cloud source or sync a verified cache before browsing.';

  @override
  String get todaysIbadah => 'Today\'s Ibadah';

  @override
  String get quickAccess => 'Quick Access';

  @override
  String get assistant => 'Assistant';

  @override
  String get places => 'Places';

  @override
  String get library => 'Library';

  @override
  String get analytics => 'Аналитика';

  @override
  String get dailyDuas => 'Daily Duas';

  @override
  String essentialDuas(String count) {
    return '$count essential duas';
  }

  @override
  String get duaUnavailableTitle => 'Verified duas are not available yet';

  @override
  String get duaUnavailableBody =>
      'Verified daily duas have not been synced to this device yet. Connect to the cloud source to load sourced duas instead of an unverified fallback.';

  @override
  String get duaCategoryQuranic => 'Quranic dua';

  @override
  String get duaCategoryMorningEvening => 'Morning & Evening';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Protection';

  @override
  String get duaCategoryBeginning => 'Beginnings';

  @override
  String get duaCategorySleep => 'Sleep';

  @override
  String get duaCategoryFoodDrink => 'Food & Drink';

  @override
  String get duaCategoryForgiveness => 'Forgiveness';

  @override
  String get duaCategoryHome => 'Home';

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
  String get islamicEducation => 'Ислам велӧдӧм';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Hadith Collections';

  @override
  String get hadithSourcePending => 'Verified source pending';

  @override
  String get hadithUnavailableTitle => 'Верифицируйтӧм хадис чукӧръяс абу на .';

  @override
  String get hadithUnavailableBody =>
      'Тайӧ стрӧитчӧмыс ӧні на йитчӧма проверитӧм внешньӧй хадис каналкӧд. Хадисъяс видлалӧм кольӧ ӧтувъяӧн, кытчӧдз оз синхронизируйтчыны источникысь даннӧйяс чукӧр.';

  @override
  String get paywallUnlockAll =>
      'Unlock all features for your spiritual journey';

  @override
  String get premiumProductUnavailable =>
      'Premium product is not available right now. Please try again later.';

  @override
  String get premiumPurchaseFailed =>
      'Ньӧбӧмсӧ эз вермыны помавны. Пожалуйста, мӧдысь зіля.';

  @override
  String get paywallFeature1Title => 'Нейроннӧй отсасьысь Плюс .';

  @override
  String get paywallFeature1Desc => 'Unlimited AI-powered Q&A';

  @override
  String get paywallFeature2Title => 'Неограниченнӧй офлайн .';

  @override
  String get paywallFeature2Desc => 'Download all recitations';

  @override
  String get paywallFeature3Title => 'Эксклюзивнӧй дизайнъяс .';

  @override
  String get paywallFeature3Desc => 'Premium themes & fonts';

  @override
  String get paywallFeature4Title => 'Рекламатӧг';

  @override
  String get paywallFeature4Desc => 'Zero advertisements';

  @override
  String get paywallGetAccess => 'Get Lifetime Access — \$1.00';

  @override
  String get restorePurchases => 'Restore Purchases';

  @override
  String get zakatCalculator => 'Zakat Calculator';

  @override
  String get zakatGold => 'Gold (Altın)';

  @override
  String get zakatSilver => 'Silver (Gümüş)';

  @override
  String get zakatCashBank => 'Cash / Bank';

  @override
  String get zakatBusiness => 'Business';

  @override
  String get zakatInvestments => 'Investments';

  @override
  String get zakatWeightGrams => 'Weight (g)';

  @override
  String get zakatPricePerGram => 'Price/g';

  @override
  String get zakatTotalAmount => 'Total Amount';

  @override
  String get zakatInventoryValue => 'Inventory Value';

  @override
  String get zakatDebts => 'Debts';

  @override
  String get zakatTotal => 'Total';

  @override
  String get calculateZakat => 'Calculate Zakat';

  @override
  String get nisabNotReached => 'Nisab not reached. Zakat is not obligatory.';

  @override
  String get totalZakat => 'Total Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'Gold Zakat';

  @override
  String get zakatSilverZakat => 'Silver Zakat';

  @override
  String get zakatCashZakat => 'Cash Zakat';

  @override
  String get zakatBusinessZakat => 'Business Zakat';

  @override
  String get zakatInvestmentZakat => 'Investment Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Daily query limit reached. Upgrade to Premium for unlimited.';

  @override
  String get chatbotErrorMsg =>
      'I could not generate a response. Please try again.';

  @override
  String get chatbotOfflinePrompt =>
      'Верифицируйтӧм офлайн исламскӧй тӧдӧмлунъяс базаын ӧні на курируйтӧны. Ӧні позьӧ лэдзны офлайн fallback, но сійӧ петкӧдлас сӧмын ӧтувъя безопаснӧй юӧръяс, кытчӧдз оз ло дась источник даннӧйяс чукӧр.\n\nКӧсъянныд-ӧ лэдзны офлайн-файлбек?';

  @override
  String get chatbotOfflineSwitched =>
      'Офлайн падмӧг лӧсьӧдӧма. Вердöм локальнöй исламскöй вочакывъяс абу на дасьöсь.';

  @override
  String get chatbotOfflineDownloadLabel => 'Включитны офлайн-запас .';

  @override
  String get downloadPreparing => 'Дасьтысьӧ скачайтны...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Downloading surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Став сураяссӧ нин скачайтӧма тайӧ лыддьысьысьыслы.';

  @override
  String get offlineQuranAudioPacks => 'Офлайн коран аудио пакетъяс .';

  @override
  String storedOnDeviceMb(String size) {
    return 'Stored on device: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surahs downloaded';
  }

  @override
  String get redownloadMissingRepair => 'Ремонт / Скачать Отсутствует .';

  @override
  String get downloadAction => 'Грузитны';

  @override
  String get resumeDownload => 'Водзӧ скачайтны .';

  @override
  String get deleteDownloadedFiles => 'Удалитны лэдзӧм файлӧвӧй тэчасъяс .';

  @override
  String get cancelDownloadAction => 'Отмена скачивания';

  @override
  String get downloadCancelling => 'Отмена...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Скачайтны бырӧдӧма $reciter вылӧ.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Скачайтны помавсьӧ $reciter вылӧ.';
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
  String get quranAudioPlaybackErrorWithConnectionHint =>
      'Аудио воспроизведение эз артмы. Прӧверитӧй, пӧжалуйста, ассьыныд йитӧднытӧ.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Verified Quran audio pack is incomplete ($available/$total). Try again after the audio catalog is updated.';
  }

  @override
  String get chatbotHint => 'Ask a question...';

  @override
  String get chatbotThinking => 'Thinking...';

  @override
  String get sukunMixerSubtitle => 'Природа да коран миксер .';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Сукун (Природа) .';

  @override
  String get sukunRainOfMercy => 'Милосердиелӧн зэр .';

  @override
  String get sukunGardenOfPeace => 'Мир сад .';

  @override
  String get sukunMidnightCalm => 'Ӧти лун лӧнь .';

  @override
  String get sukunOceanTawheed => 'Океан тавхид .';

  @override
  String get sukunUnavailableTitle => 'Звукопейзажъяс абуӧсь .';

  @override
  String get sukunUnavailableBody =>
      'Тайӧ стрӧитчӧмас абу на пыртӧма колана Сукун звукопейзаж активъяс.';

  @override
  String get prayerCompletion => 'Молитва помалӧм .';

  @override
  String get streaks => 'Полосаяс';

  @override
  String get dayStreak => 'Лун шӧркоддьӧма';

  @override
  String get bestStreak => 'Best streak';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Enable Offline Fallback';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Облачнӧй API абу настроитӧм. Верифицируйтӧм офлайн исламскӧй веськӧдлӧм абу на лӧсьӧдӧма.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Верифицируйтӧм локальнӧй исламскӧй веськӧдланін абу на. Переключитчыны Cloud AI вылӧ источникъясысь вочакывъяс вылӧ.';

  @override
  String get mosques => 'Mosques';

  @override
  String get halalFood => 'Halal Food';

  @override
  String get placesSearchArea => 'Корсьны тайӧ юкӧнсӧ .';

  @override
  String get nearbyMosques => 'Матысса мӧскъяс.';

  @override
  String get islamicSchools => 'Islamic Schools';

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
    return 'API ӧшыбка: $statusCode';
  }

  @override
  String get placesNetworkError => 'Сетöм öшыбка. Пожалуйста, мӧдысь зіля.';

  @override
  String get placesLocationRequiredTitle => 'Колӧ места.';

  @override
  String get placesLocationRequiredBody =>
      'Медводз лӧсьӧдӧй места, медым орчча мечетьяс, халяль сёян, исламскӧй школаяс позис тырвыйӧ корсьны.';

  @override
  String get placesMapTilesUnavailableTitle => 'Карта плиткаяс абуӧсь.';

  @override
  String get placesMapTilesUnavailableBody =>
      'A verified map tile source is not configured for this build yet. Nearby places can still load from your saved location.';

  @override
  String get placesDataSourceUnavailableTitle => 'Places data unavailable';

  @override
  String get placesDataSourceUnavailableBody =>
      'Верифицируйтӧм местаяс даннӧйяс конечнӧй точка абу настроитӧм тайӧ лӧсьӧдӧм вылӧ. Матысса корсьӧм лэдзӧм бӧрын пуктӧй PLACES_OVERPASS_API_URL сӧгласуйтӧм прокси либӧ провайдер вылӧ.';

  @override
  String get unknownPlaceName => 'Unknown Name';

  @override
  String get islamicPlaceFallback => 'Islamic Place';

  @override
  String get asmaMeaning1 => 'The Beneficent';

  @override
  String get asmaMeaning2 => 'The Merciful';

  @override
  String get asmaMeaning3 => 'The King / Eternal Lord';

  @override
  String get asmaMeaning4 => 'The Most Holy';

  @override
  String get asmaMeaning5 => 'The Source of Peace';

  @override
  String get asmaMeaning6 => 'The Giver of Security';

  @override
  String get asmaMeaning7 =>
      'The Watchful Guardian, who observes and safeguards all creation.';

  @override
  String get asmaMeaning8 => 'The Precious / The Most Mighty';

  @override
  String get asmaMeaning9 =>
      'The Restorer and Irresistible, whose will prevails with perfect power.';

  @override
  String get asmaMeaning10 => 'The Greatest';

  @override
  String get asmaMeaning11 => 'The Creator';

  @override
  String get asmaMeaning12 => 'The Maker of Order';

  @override
  String get asmaMeaning13 => 'The Shaper of Beauty';

  @override
  String get asmaMeaning14 => 'The Forgiving';

  @override
  String get asmaMeaning15 => 'The Subduer';

  @override
  String get asmaMeaning16 => 'The Giver of All';

  @override
  String get asmaMeaning17 => 'The Sustainer';

  @override
  String get asmaMeaning18 => 'The Opener';

  @override
  String get asmaMeaning19 => 'The Knower of All';

  @override
  String get asmaMeaning20 =>
      'The Withholder, who narrows and restrains by wisdom.';

  @override
  String get asmaMeaning21 =>
      'The Expander, who opens, eases, and grants abundance by wisdom.';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'The Bestower of Honour';

  @override
  String get asmaMeaning25 => 'The Humiliator';

  @override
  String get asmaMeaning26 => 'The Hearer of All';

  @override
  String get asmaMeaning27 => 'The Seer of All';

  @override
  String get asmaMeaning28 => 'The Judge';

  @override
  String get asmaMeaning29 => 'The Just';

  @override
  String get asmaMeaning30 => 'The Subtle One';

  @override
  String get asmaMeaning31 => 'The All Aware';

  @override
  String get asmaMeaning32 => 'The Forebearing';

  @override
  String get asmaMeaning33 => 'The Magnificent';

  @override
  String get asmaMeaning34 => 'The Great Forgiver';

  @override
  String get asmaMeaning35 => 'The Rewarder of Thankfulness';

  @override
  String get asmaMeaning36 => 'The Highest';

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
  String get asmaMeaning43 => 'The Watchful One';

  @override
  String get asmaMeaning44 => 'The Responder to Prayer';

  @override
  String get asmaMeaning45 => 'The All Comprehending';

  @override
  String get asmaMeaning46 => 'The Perfectly Wise';

  @override
  String get asmaMeaning47 => 'The Loving One';

  @override
  String get asmaMeaning48 => 'The Most Glorious One';

  @override
  String get asmaMeaning49 => 'The Resurrector';

  @override
  String get asmaMeaning50 => 'The Witness';

  @override
  String get asmaMeaning51 => 'The Truth';

  @override
  String get asmaMeaning52 => 'The All-Sufficient Trustee';

  @override
  String get asmaMeaning53 => 'The Possessor of All Strength';

  @override
  String get asmaMeaning54 => 'The Forceful';

  @override
  String get asmaMeaning55 => 'The Protector';

  @override
  String get asmaMeaning56 => 'The Praised';

  @override
  String get asmaMeaning57 => 'The Appraiser';

  @override
  String get asmaMeaning58 => 'The Originator';

  @override
  String get asmaMeaning59 => 'The Restorer';

  @override
  String get asmaMeaning60 => 'The Giver of Life';

  @override
  String get asmaMeaning61 => 'The Taker of Life';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'The Self-Subsisting Sustainer';

  @override
  String get asmaMeaning64 => 'The Finder';

  @override
  String get asmaMeaning65 => 'The Glorious';

  @override
  String get asmaMeaning66 => 'The Only One';

  @override
  String get asmaMeaning67 => 'The One';

  @override
  String get asmaMeaning68 => 'The One Sought by All';

  @override
  String get asmaMeaning69 => 'The Powerful';

  @override
  String get asmaMeaning70 => 'The Creator of all power';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'The Delayer';

  @override
  String get asmaMeaning73 => 'The First';

  @override
  String get asmaMeaning74 => 'The Last';

  @override
  String get asmaMeaning75 => 'The Manifest';

  @override
  String get asmaMeaning76 => 'The Hidden';

  @override
  String get asmaMeaning77 =>
      'The Protecting Patron, who governs and cares for all creation.';

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
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'The Owner / Sovereign of All';

  @override
  String get asmaMeaning85 => 'The Possessor of Majesty and Bounty';

  @override
  String get asmaMeaning86 => 'The Equitable One';

  @override
  String get asmaMeaning87 => 'The Gatherer';

  @override
  String get asmaMeaning88 => 'The Rich One';

  @override
  String get asmaMeaning89 => 'The Enricher';

  @override
  String get asmaMeaning90 => 'The Preventer of Harm';

  @override
  String get asmaMeaning91 => 'The Bringer of Harm';

  @override
  String get asmaMeaning92 => 'The Bestower of Benefits';

  @override
  String get asmaMeaning93 => 'The Light';

  @override
  String get asmaMeaning94 => 'The Guider';

  @override
  String get asmaMeaning95 => 'The Originator';

  @override
  String get asmaMeaning96 => 'The Everlasting One';

  @override
  String get asmaMeaning97 => 'The Inheritor';

  @override
  String get asmaMeaning98 => 'The Most Righteous Guide';

  @override
  String get asmaMeaning99 =>
      'The Patient, who does not hasten punishment and acts with perfect forbearance.';
}
