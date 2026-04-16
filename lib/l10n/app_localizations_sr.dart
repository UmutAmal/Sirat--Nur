// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Serbian (`sr`).
class AppLocalizationsSr extends AppLocalizations {
  AppLocalizationsSr([String locale = 'sr']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Islamic Way of Light';

  @override
  String get home => 'Хоме';

  @override
  String get quran => 'Кур\'ан';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Зикр';

  @override
  String get calendar => 'Календар';

  @override
  String get settings => 'Подешавања';

  @override
  String get nextPrayer => 'Следећа молитва';

  @override
  String get prayerTimes => 'Праиер Тимес';

  @override
  String get continueReading => 'Continue Reading';

  @override
  String get getLifetimePro => 'Get Lifetime Pro';

  @override
  String get unlockTajweed => 'Unlock Tajweed & Advanced Features';

  @override
  String get prayerCalculation => 'Калкулација молитве';

  @override
  String get method => 'Метод израчунавања';

  @override
  String get madhab => 'Аср Јуристиц Метход';

  @override
  String get surahs => 'Суре';

  @override
  String get ayahs => 'Аиахс';

  @override
  String get fajr => 'Фајр';

  @override
  String get sunrise => 'Излазак сунца';

  @override
  String get dhuhr => 'Дхухр';

  @override
  String get asr => 'Аср';

  @override
  String get maghrib => 'Магхриб';

  @override
  String get isha => 'Исха';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Време је за $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Време је да се молите $prayerName.';
  }

  @override
  String get dataStorage => 'Подаци и складиштење';

  @override
  String get clearCache => 'Цлеар Цацхе';

  @override
  String get cacheClearedSuccess => 'Кеш је успешно обрисан';

  @override
  String get location => 'Локација';

  @override
  String get language => 'Језик';

  @override
  String get selectLanguage => 'Изаберите Језик';

  @override
  String get searchLanguage => 'Search 180+ languages...';

  @override
  String get systemDefault => 'Систем Дефаулт';

  @override
  String get currentLocation => 'Тренутна локација (ГПС)';

  @override
  String get locationServiceDisabled => 'Услуга локације је онемогућена.';

  @override
  String get locationPermissionDenied => 'Дозвола за локацију је одбијена.';

  @override
  String get locationDetectionFailed =>
      'Није могуће открити вашу локацију. Изаберите град ручно или покушајте поново.';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => 'Тражи';

  @override
  String get searchHint => 'Тражи...';

  @override
  String get noResults => 'No results found';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get appErrorOccurred => 'Дошло је до грешке';

  @override
  String get appUnknownError => 'Непозната грешка';

  @override
  String get quranLoadFailed =>
      'Није могуће учитати садржај Курана. Покушајте поново.';

  @override
  String get retry => 'Покушајте поново';

  @override
  String get refreshAction => 'Refresh';

  @override
  String get cancel => 'Откажи';

  @override
  String get save => 'Сачувај';

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
  String get no => 'бр';

  @override
  String get surah => 'Сура';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Јуз';

  @override
  String get page => 'Страница';

  @override
  String get reading => 'Reading';

  @override
  String get recitation => 'Recitation';

  @override
  String get translation => 'Translation';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Учитавање тафсира...';

  @override
  String get tafsirSourceLabel => 'Тафсир извор';

  @override
  String get tafsirNoSurahFound => 'За ову суру није пронађен тефсир.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'No tafsir found for ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Тафсир није могао да се учита.';

  @override
  String get tafsirNoTextForAyah => 'Нема текста тефсира за овај ајет.';

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
    return 'Tafsir source returned an HTTP $statusCode error.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Одабрани извор тафсира није вратио ниједан унос.';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get addBookmark => 'Додај обележивач';

  @override
  String get removeBookmark => 'Уклони обележивач';

  @override
  String get lastRead => 'Last Read';

  @override
  String get dailyZikr => 'Daily Zikr';

  @override
  String get duaMeaning1 =>
      'други се моле: ‘Господару наш, дај нам добро на овом и на оном свијету и заштити нас од муке у огњу.’';

  @override
  String get duaMeaning2 =>
      'Бог не оптерећује ниједну душу више него што може да поднесе: свака добија све што је добро учинила, а трпи своје лоше – „Господе, не стављај нас на задатак ако заборавимо или погрешимо. Господе, немој нас оптерећивати као што си оптеретио оне пре нас. Господе, не оптерећуј нас више него што имамо снаге да поднесемо. Опрости нам, опрости и помилуј нас. Ти си наш Заштитник, па нам помози против невјерника.’';

  @override
  String get duaMeaning3 =>
      '„Господару наш, не допусти да наша срца одступе након што си нас упутио. Удијели нам своју милост: Ти си вјечни.';

  @override
  String get duaMeaning4 =>
      'Господе, дај да ја и моје потомство држимо молитву. Господе наш, прими моју молбу.';

  @override
  String get duaMeaning5 =>
      'и спусти своје крило у понизности према њима у доброти и реци: ’Господе, помилуј их, као што су се и они бринули за мене када сам био мали.’';

  @override
  String get duaMeaning6 =>
      'узвишен нека је Бог, онај који заиста влада. [Пророче], не жури да рецитујеш пре него што се откровење у потпуности заврши, већ реци: „Господе, увећај ме у знању!“';

  @override
  String get duaMeaning7 =>
      'Реци [Пророку]: \'Господару, опрости и смилуј се: Ти си најмилостивији од свих.\'';

  @override
  String get duaMeaning8 =>
      'они који се моле: „Господару наш, дај нам радост у нашим супружницима и потомству. Учини нас добрим примерима онима који су Тебе свесни.';

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
  String get hadithCollection => 'Збирка хадиса';

  @override
  String get hadithBooks => 'Књиге хадиса';

  @override
  String get searchHadith => 'Претражи хадис';

  @override
  String get asmaulHusna => 'Асма-ул-Хусна';

  @override
  String get namesOfAllah => 'Аллахова имена';

  @override
  String get liveTv => 'ТВ уживо';

  @override
  String get watchLive => 'Гледајте уживо';

  @override
  String get streamError => 'Грешка у току';

  @override
  String get reload => 'Поново учитај';

  @override
  String get openInYoutube => 'Отвори на ИоуТубе-у';

  @override
  String get ibadahTracker => 'Ибадах Трацкер';

  @override
  String get fasting => 'Пости';

  @override
  String get quranReading => 'Читање Курана';

  @override
  String get prayers => 'Молитве';

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
  String get weeklyProgress => 'Недељни напредак';

  @override
  String get monthlyProgress => 'Monthly Progress';

  @override
  String get statistics => 'Statistics';

  @override
  String get hijriCalendar => 'Хиџретски календар';

  @override
  String get gregorianCalendar => 'Gregorian Calendar';

  @override
  String get today => 'данас';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get specialDays => 'Посебни дани';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Исламска Нова година';

  @override
  String get mawlidAnNabi => 'Мавлид ан-Наби';

  @override
  String get specialDayDateRamadanStart => '1 Рамадан';

  @override
  String get specialDayDateLaylatAlQadr => '27 Рамазана';

  @override
  String get specialDayDateEidAlFitr => '1 Схаввал';

  @override
  String get specialDayDateEidAlAdha => '10 Зул Хиџа';

  @override
  String get specialDayDateIslamicNewYear => '1 Мухаррам';

  @override
  String get specialDayDateMawlidAnNabi => '12 Раби ал-Аввал';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'Кибла Дирецтион';

  @override
  String get compass => 'Компас';

  @override
  String get degrees => 'degrees';

  @override
  String get north => 'North';

  @override
  String get qiblaFound => 'Кибла пронађена!';

  @override
  String get turnDevice => 'Окрените уређај према Кибли';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Compass error: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Сензор компаса није доступан на овом уређају.';

  @override
  String get qiblaLocationRequiredTitle => 'Location required for Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Set your actual location before using the Qibla compass so the direction can be calculated accurately.';

  @override
  String get adhanNotificationChannelName => 'Adhan Notifications';

  @override
  String get adhanNotificationChannelDescription =>
      'Prayer time alerts with adhan sound.';

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
  String get theme => 'Тема';

  @override
  String get lightMode => 'Лигхт Моде';

  @override
  String get darkMode => 'Дарк Моде';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'Абоут';

  @override
  String get version => 'Версион';

  @override
  String get privacyPolicy => 'Политика приватности';

  @override
  String get termsOfService => 'Услови коришћења услуге';

  @override
  String get contactUs => 'Контактирајте нас';

  @override
  String get rateApp => 'Оцените апликацију';

  @override
  String get shareApp => 'Делите апликацију';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'Преузимања';

  @override
  String get downloading => 'Преузимање...';

  @override
  String get downloadComplete => 'Download Complete';

  @override
  String get downloadFailed => 'Download Failed';

  @override
  String get offlineMode => 'Оффлине Моде';

  @override
  String get noInternet => 'No Internet Connection';

  @override
  String get checkConnection => 'Проверите своју везу';

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
  String get getStarted => 'Започните';

  @override
  String get skip => 'Skip';

  @override
  String get next => 'Следеће';

  @override
  String get done => 'Готово';

  @override
  String get onboarding1Title => 'Добродошли у Сират-ı Нур';

  @override
  String get onboarding1Desc =>
      'Ваша комплетна исламска пратећа апликација за време молитве, Кур\'ан и још много тога';

  @override
  String get onboarding2Title => 'Праиер Тимес';

  @override
  String get onboarding2Desc => 'Тачна времена молитве на основу ваше локације';

  @override
  String get onboarding3Title => 'Куран и више';

  @override
  String get onboarding3Desc =>
      'Читајте Кур\'ан, пратите своје читање и истражите исламски садржај';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'Ресетујте бројач';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'Target: $target';
  }

  @override
  String get tapToCount => 'Додирните да бројите';

  @override
  String get zikrCompletedMashAllah => 'Завршено! МасхАллах';

  @override
  String get zikrMeaningSubhanAllah =>
      'Алах је далеко изнад сваке несавршености.';

  @override
  String get zikrMeaningAlhamdulillah => 'Сва хвала припада Аллаху.';

  @override
  String get zikrMeaningAllahuAkbar => 'Алах је Највећи.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Нема бога осим Аллаха.';

  @override
  String get zikrMeaningAstaghfirullah => 'Тражим Аллахов опрост.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Нема моћи и снаге осим преко Аллаха.';

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
  String get dailyProgress => 'Дневни напредак';

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
  String get recheckPremium => 'Поново проверите статус премиум претплате';

  @override
  String get syncStore =>
      'Синхронизујте са продавницом апликација да бисте потврдили своју премиум претплату.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'Премијум претплата је верификована.';

  @override
  String get premiumNotFound => 'Премиум претплата није пронађена.';

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
  String get checkingQuranDb => 'Провера базе података Курана...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'Статус базе података Курана';

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
  String get audioVoice => 'Audio Voice';

  @override
  String get audioVoiceMisharyAlafasy => 'Male (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Male (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Male (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Кибла Цалибратион';

  @override
  String get compassSmoothing => 'Компас Смоотхинг';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Цалибратион Оффсет';

  @override
  String currentOffset(Object offset) {
    return 'Current: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Подесите ако је вашем компасу потребна ручна корекција. Позитивне вредности се ротирају у смеру казаљке на сату.';

  @override
  String get apply => 'Примени промене';

  @override
  String get resetOnboarding => 'Ресетујте уводно подешавање';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Дијагностика';

  @override
  String get diagnosticsNotSet => 'Није постављено';

  @override
  String get diagnosticsPrayerProfile => 'Молитвени профил';

  @override
  String get diagnosticsPrayerSource => 'Молитвени ауторитет';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Ручни прилагођени углови (без институционалног извора)';

  @override
  String get diagnosticsCloudDriven => 'Цлоуд Дривен';

  @override
  String get diagnosticsAdhanAudioAssets => 'Адхан Аудио Средства';

  @override
  String get diagnosticsUiAudioAssets =>
      'Аудио средства корисничког интерфејса';

  @override
  String get diagnosticsQuranAudioAssets => 'Аудио средства Курана';

  @override
  String get diagnosticsAudioAssets => 'Аудио средства';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count files';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifest read failed: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Локали за локализацију';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count supported';
  }

  @override
  String get diagnosticsQuranDataset => 'Куран Датасет';

  @override
  String get diagnosticsQuranSurahs => 'Кур\'ан Сурахс';

  @override
  String get diagnosticsQuranAyahs => 'Куран Аиахс';

  @override
  String get diagnosticsQuranJuzMetadata => 'Кур\'ан Јуз Метадата';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Cloud tables missing in Supabase; bundled fallback active';

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
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Потребна је калибрација. Окрените уређај на слици-8.';

  @override
  String get dailyVerse => 'Даили Версе';

  @override
  String get todaysIbadah => 'Данашњи Ибадах';

  @override
  String get quickAccess => 'Брзи приступ';

  @override
  String get assistant => 'асистент';

  @override
  String get places => 'Места';

  @override
  String get library => 'Библиотека';

  @override
  String get analytics => 'Аналитика';

  @override
  String get dailyDuas => 'Даили Дуас';

  @override
  String essentialDuas(String count) {
    return '$count essential duas';
  }

  @override
  String get duaUnavailableTitle => 'Верификоване дуа још увек нису доступне';

  @override
  String get duaUnavailableBody =>
      'Верификоване дневне дојаве још увек нису синхронизоване са овим уређајем. Повежите се са извором у облаку да бисте учитали дуа-ове из извора уместо непровереног резервног.';

  @override
  String get duaCategoryQuranic => 'Кур\'анска дова';

  @override
  String get duaCategoryMorningEvening => 'Јутро & Вече';

  @override
  String get duaCategoryTasbih => 'Тасбих';

  @override
  String get duaCategoryProtection => 'Заштита';

  @override
  String get duaCategoryBeginning => 'Почеци';

  @override
  String get duaCategorySleep => 'Спавај';

  @override
  String get duaCategoryFoodDrink => 'Храна и пиће';

  @override
  String get duaCategoryForgiveness => 'Опрост';

  @override
  String get duaCategoryHome => 'Хоме';

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
  String get islamicEducation => 'Исламско образовање';

  @override
  String get sukunAudioTitle => 'Сукун Соундсцапес';

  @override
  String get hadithCollections => 'Збирке хадиса';

  @override
  String get hadithSourcePending => 'Верификован извор на чекању';

  @override
  String get hadithUnavailableTitle =>
      'Верификоване збирке хадиса још увек нису доступне';

  @override
  String get hadithUnavailableBody =>
      'Ова изградња и даље зависи од непровереног спољног хадиског фееда. Претраживање хадиса остаје онемогућено док се изворни скуп података не синхронизује.';

  @override
  String get paywallUnlockAll =>
      'Откључајте све функције за своје духовно путовање';

  @override
  String get premiumProductUnavailable =>
      'Премиум производ тренутно није доступан. Покушајте поново касније.';

  @override
  String get premiumPurchaseFailed =>
      'Куповина није могла да се заврши. Покушајте поново.';

  @override
  String get paywallFeature1Title => 'Неурал Ассистант Плус';

  @override
  String get paywallFeature1Desc => 'Неограничена питања и одговори са АИ-ом';

  @override
  String get paywallFeature2Title => 'Унлимитед Оффлине';

  @override
  String get paywallFeature2Desc => 'Преузмите све рецитације';

  @override
  String get paywallFeature3Title => 'Ексклузивни дизајни';

  @override
  String get paywallFeature3Desc => 'Премиум теме и фонтови';

  @override
  String get paywallFeature4Title => 'Без огласа';

  @override
  String get paywallFeature4Desc => 'Нула реклама';

  @override
  String get paywallGetAccess => 'Добијте доживотни приступ — 1,00 УСД';

  @override
  String get restorePurchases => 'Ресторе Пурцхасес';

  @override
  String get zakatCalculator => 'Калкулатор зеката';

  @override
  String get zakatGold => 'злато (Алтıн)';

  @override
  String get zakatSilver => 'Сребро (Гумус)';

  @override
  String get zakatCashBank => 'Готовина / Банка';

  @override
  String get zakatBusiness => 'Посао';

  @override
  String get zakatInvestments => 'Инвестиције';

  @override
  String get zakatWeightGrams => 'Тежина (г)';

  @override
  String get zakatPricePerGram => 'Цена/гр';

  @override
  String get zakatTotalAmount => 'Укупан износ';

  @override
  String get zakatInventoryValue => 'Вредност инвентара';

  @override
  String get zakatDebts => 'Дугови';

  @override
  String get zakatTotal => 'Укупно';

  @override
  String get calculateZakat => 'Израчунајте зекат';

  @override
  String get nisabNotReached => 'Нисаб није стигао. Зекат није обавезан.';

  @override
  String get totalZakat => 'Тотал Закат';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'Златни зекат';

  @override
  String get zakatSilverZakat => 'Сребрни зекат';

  @override
  String get zakatCashZakat => 'Цасх Закат';

  @override
  String get zakatBusinessZakat => 'Пословни зекат';

  @override
  String get zakatInvestmentZakat => 'Инвестициони зекат';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Достигнуто је дневно ограничење упита. Надоградите на Премиум за неограничено.';

  @override
  String get chatbotErrorMsg =>
      'Нисам могао да генеришем одговор. Покушајте поново.';

  @override
  String get chatbotOfflinePrompt =>
      'Верификована ванмрежна исламска база знања се још увек курира. Сада можете да омогућите резервни приступ ван мреже, али ће приказивати само ограничене безбедне поруке док изворни скуп података не буде спреман.\n\nДа ли желите да омогућите резервни приступ ван мреже?';

  @override
  String get chatbotOfflineSwitched =>
      'Оффлине резервни је омогућен. Провјерени локални исламски одговори још нису спремни.';

  @override
  String get chatbotOfflineDownloadLabel => 'Омогући резервни режим ван мреже';

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
  String get offlineQuranAudioPacks => 'Офлајн аудио пакети Кур\'ана';

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
  String get deleteDownloadedFiles => 'Delete Downloaded Files';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Download canceled for $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Download completed for $reciter.';
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
  String get sukunMixerSubtitle => 'Природа и миксер Кур\'ана';

  @override
  String get audioPlayFailed => 'Аудио репродукција није успела';

  @override
  String get sukunNatureLabel => 'Сукун (природа)';

  @override
  String get sukunRainOfMercy => 'Киша милосрђа';

  @override
  String get sukunGardenOfPeace => 'Врт мира';

  @override
  String get sukunMidnightCalm => 'Миднигхт Цалм';

  @override
  String get sukunOceanTawheed => 'Оцеан Тавхеед';

  @override
  String get sukunUnavailableTitle => 'Звучни пејзажи су недоступни';

  @override
  String get sukunUnavailableBody =>
      'Ова верзија још увек не укључује потребна средства Сукун звучне сцене.';

  @override
  String get prayerCompletion => 'Завршетак молитве';

  @override
  String get streaks => 'Стреакс';

  @override
  String get dayStreak => 'Дневни низ';

  @override
  String get bestStreak => 'Најбољи низ';

  @override
  String get chatbotCloudAiLabel => 'Цлоуд АИ';

  @override
  String get chatbotLocalAiLabel => 'Оффлине Фаллбацк';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Омогући резервни режим ван мреже';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Цлоуд АПИ није конфигурисан. Верификоване ванмрежне исламске смернице још нису доступне.';

  @override
  String get chatbotLocalNoInfo =>
      '[ОФФЛИНЕ] Верификоване локалне исламске смернице још увек нису доступне. Пређите на вештачку интелигенцију у облаку да бисте добили одговоре.';

  @override
  String get mosques => 'џамије';

  @override
  String get halalFood => 'Халал Фоод';

  @override
  String get placesSearchArea => 'Претражите ову област';

  @override
  String get nearbyMosques => 'Оближње џамије';

  @override
  String get islamicSchools => 'Исламске школе';

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
    return 'API Error: $statusCode';
  }

  @override
  String get placesNetworkError => 'Мрежна грешка. Покушајте поново.';

  @override
  String get placesLocationRequiredTitle => 'Location required';

  @override
  String get placesLocationRequiredBody =>
      'Set a location first so nearby mosques, halal food, and Islamic schools can be searched accurately.';

  @override
  String get placesMapTilesUnavailableTitle => 'Map tiles unavailable';

  @override
  String get placesMapTilesUnavailableBody =>
      'A verified map tile source is not configured for this build yet. Nearby places can still load from your saved location.';

  @override
  String get placesDataSourceUnavailableTitle => 'Places data unavailable';

  @override
  String get placesDataSourceUnavailableBody =>
      'A verified places data endpoint is not configured for this build yet. Set PLACES_OVERPASS_API_URL to an approved proxy or provider before enabling nearby search.';

  @override
  String get unknownPlaceName => 'Непознато име';

  @override
  String get islamicPlaceFallback => 'Исламиц Плаце';

  @override
  String get asmaMeaning1 => 'Тхе Бенефицент';

  @override
  String get asmaMeaning2 => 'Милостиви';

  @override
  String get asmaMeaning3 => 'Краљ / Вечни Господ';

  @override
  String get asmaMeaning4 => 'Пресвета';

  @override
  String get asmaMeaning5 => 'Извор мира';

  @override
  String get asmaMeaning6 => 'Давалац сигурности';

  @override
  String get asmaMeaning7 => 'Тхе Гуардиан';

  @override
  String get asmaMeaning8 => 'Предрагоцени / Најмоћнији';

  @override
  String get asmaMeaning9 => 'Тхе Цомпеллер';

  @override
  String get asmaMeaning10 => 'Највећи';

  @override
  String get asmaMeaning11 => 'Тхе Цреатор';

  @override
  String get asmaMeaning12 => 'Креатор реда';

  @override
  String get asmaMeaning13 => 'Обликовалац лепоте';

  @override
  String get asmaMeaning14 => 'Тхе Форгивинг';

  @override
  String get asmaMeaning15 => 'Тхе Субдуер';

  @override
  String get asmaMeaning16 => 'Давалац свега';

  @override
  String get asmaMeaning17 => 'Тхе Сустаинер';

  @override
  String get asmaMeaning18 => 'Тхе Опенер';

  @override
  String get asmaMeaning19 => 'Зналац свега';

  @override
  String get asmaMeaning20 => 'Тхе Цонстрицтор';

  @override
  String get asmaMeaning21 => 'Тхе Релиевер';

  @override
  String get asmaMeaning22 => 'Тхе Абасер';

  @override
  String get asmaMeaning23 => 'Тхе Екалтер';

  @override
  String get asmaMeaning24 => 'Даровалац части';

  @override
  String get asmaMeaning25 => 'Тхе Хумилиатор';

  @override
  String get asmaMeaning26 => 'Слушалац свих';

  @override
  String get asmaMeaning27 => 'Провидац свих';

  @override
  String get asmaMeaning28 => 'Судија';

  @override
  String get asmaMeaning29 => 'Тхе Јуст';

  @override
  String get asmaMeaning30 => 'Тхе Субтле Оне';

  @override
  String get asmaMeaning31 => 'Тхе Алл Аваре';

  @override
  String get asmaMeaning32 => 'Тхе Форебеаринг';

  @override
  String get asmaMeaning33 => 'Тхе Магнифицент';

  @override
  String get asmaMeaning34 => 'Велики опроститељ';

  @override
  String get asmaMeaning35 => 'Награђивач захвалности';

  @override
  String get asmaMeaning36 => 'Највиши';

  @override
  String get asmaMeaning37 => 'Највећи';

  @override
  String get asmaMeaning38 => 'Тхе Пресервер';

  @override
  String get asmaMeaning39 => 'Тхе Ноурисхер';

  @override
  String get asmaMeaning40 => 'Тхе Рецконер';

  @override
  String get asmaMeaning41 => 'Мајестиц';

  @override
  String get asmaMeaning42 => 'Тхе Генереус';

  @override
  String get asmaMeaning43 => 'Тхе Ватцхфул Оне';

  @override
  String get asmaMeaning44 => 'Одговор на молитву';

  @override
  String get asmaMeaning45 => 'Тхе Алл Цомпрехендинг';

  @override
  String get asmaMeaning46 => 'Тхе Перфецтли Висе';

  @override
  String get asmaMeaning47 => 'Тхе Ловинг Оне';

  @override
  String get asmaMeaning48 => 'Најславнији';

  @override
  String get asmaMeaning49 => 'Васкрситељ';

  @override
  String get asmaMeaning50 => 'Тхе Витнесс';

  @override
  String get asmaMeaning51 => 'Истина';

  @override
  String get asmaMeaning52 => 'Сведовољни повереник';

  @override
  String get asmaMeaning53 => 'Власник све снаге';

  @override
  String get asmaMeaning54 => 'Тхе Форцефул';

  @override
  String get asmaMeaning55 => 'Заштитник';

  @override
  String get asmaMeaning56 => 'Тхе Праисед';

  @override
  String get asmaMeaning57 => 'Тхе Аппраисер';

  @override
  String get asmaMeaning58 => 'Тхе Оригинатор';

  @override
  String get asmaMeaning59 => 'Тхе Ресторер';

  @override
  String get asmaMeaning60 => 'Давалац живота';

  @override
  String get asmaMeaning61 => 'Узималац живота';

  @override
  String get asmaMeaning62 => 'Тхе Евер Ливинг';

  @override
  String get asmaMeaning63 => 'Самоодрживи хранитељ';

  @override
  String get asmaMeaning64 => 'Тхе Финдер';

  @override
  String get asmaMeaning65 => 'Тхе Глориоус';

  @override
  String get asmaMeaning66 => 'Једини';

  @override
  String get asmaMeaning67 => 'Тхе Оне';

  @override
  String get asmaMeaning68 => 'Онај кога сви траже';

  @override
  String get asmaMeaning69 => 'Тхе Поверфул';

  @override
  String get asmaMeaning70 => 'Творац сваке моћи';

  @override
  String get asmaMeaning71 => 'Тхе Екпедитер';

  @override
  String get asmaMeaning72 => 'Тхе Делаиер';

  @override
  String get asmaMeaning73 => 'Први';

  @override
  String get asmaMeaning74 => 'Последњи';

  @override
  String get asmaMeaning75 => 'Манифест';

  @override
  String get asmaMeaning76 => 'Тхе Хидден';

  @override
  String get asmaMeaning77 => 'Гувернер';

  @override
  String get asmaMeaning78 => 'Свевишњи';

  @override
  String get asmaMeaning79 => 'Чинилац добра';

  @override
  String get asmaMeaning80 => 'Водич за покајање';

  @override
  String get asmaMeaning81 => 'Тхе Авенгер';

  @override
  String get asmaMeaning82 => 'Тхе Форгивер';

  @override
  String get asmaMeaning83 => 'Тхе Цлемент';

  @override
  String get asmaMeaning84 => 'Власник/суверен свега';

  @override
  String get asmaMeaning85 => 'Власник Величанства и Благодати';

  @override
  String get asmaMeaning86 => 'Тхе Екуитабле Оне';

  @override
  String get asmaMeaning87 => 'Тхе Гатхерер';

  @override
  String get asmaMeaning88 => 'Тхе Рицх Оне';

  @override
  String get asmaMeaning89 => 'Тхе Енрицхер';

  @override
  String get asmaMeaning90 => 'Превентер штете';

  @override
  String get asmaMeaning91 => 'Доносилац штете';

  @override
  String get asmaMeaning92 => 'Даровалац добробити';

  @override
  String get asmaMeaning93 => 'Светлост';

  @override
  String get asmaMeaning94 => 'Тхе Гуидер';

  @override
  String get asmaMeaning95 => 'Тхе Оригинатор';

  @override
  String get asmaMeaning96 => 'Вечни';

  @override
  String get asmaMeaning97 => 'Наследник';

  @override
  String get asmaMeaning98 => 'Најправеднији водич';

  @override
  String get asmaMeaning99 => 'Тхе Патиент Оне';
}
