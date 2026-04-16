// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Исламский путь света';

  @override
  String get home => 'Home';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Зикр';

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
  String get fajr => 'Фаджр';

  @override
  String get sunrise => 'Восход';

  @override
  String get dhuhr => 'Зухр';

  @override
  String get asr => 'Аср';

  @override
  String get maghrib => 'Магриб';

  @override
  String get isha => 'Иша';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Время для $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Пришло время помолиться $prayerName.';
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
  String get systemDefault => 'Системные настройки по умолчанию';

  @override
  String get currentLocation => 'Current Location (GPS)';

  @override
  String get locationServiceDisabled =>
      'Служба определения местоположения отключена.';

  @override
  String get locationPermissionDenied =>
      'Разрешение на определение местоположения отклонено.';

  @override
  String get locationDetectionFailed =>
      'Не удалось определить ваше местоположение. Пожалуйста, выберите город вручную или повторите попытку.';

  @override
  String citiesCount(String count) {
    return '$count городов';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'Результаты не найдены';

  @override
  String get loading => 'Загрузка...';

  @override
  String get error => 'Ошибка';

  @override
  String get appErrorOccurred => 'Произошла ошибка';

  @override
  String get appUnknownError => 'Неизвестная ошибка';

  @override
  String get quranLoadFailed =>
      'Не удалось загрузить содержимое Корана. Пожалуйста, попробуйте еще раз.';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Обновить';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Удалить';

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
  String get tafsirLoading => 'Загрузка тафсира...';

  @override
  String get tafsirSourceLabel => 'Источник Тафсира';

  @override
  String get tafsirNoSurahFound => 'Для этой суры не найден тафсир.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Тафсир для аята $ayah не найден.';
  }

  @override
  String get tafsirLoadFailed => 'Тафсир не удалось загрузить.';

  @override
  String get tafsirNoTextForAyah => 'Текста тафсира для этого аята нет.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Загрузка тафсира $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Загрузка тафсира $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Источник Tafsir вернул ошибку HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Выбранный источник тафсира не дал записей.';

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
      'другие молятся: «Господь наш, дай нам добра в этом мире и в будущей жизни и защити нас от мучений Огня».';

  @override
  String get duaMeaning2 =>
      'Бог не обременяет ни одну душу больше, чем она может вынести: каждый получает то хорошее, что он сделал, и терпит свое плохое. Господь, не обременяй нас, как Ты обременял тех, кто был до нас. Господи, не обременяй нас больше, чем мы можем вынести. Простите нас, прости нас и помилуй нас. Ты наш Защитник, так помоги нам против неверующих».';

  @override
  String get duaMeaning3 =>
      '«Господь наш, не позволяй нашим сердцам отклоняться после того, как Ты направил нас прямым путем. Даруй нам Свою милость: Ты – Вечно Дающий.';

  @override
  String get duaMeaning4 =>
      'Господи, дай мне и моему потомству продолжать молитву. Господь наш, прими мою просьбу.';

  @override
  String get duaMeaning5 =>
      'и опусти свое крыло в смирении перед ними, в доброте и скажи: «Господи, помилуй их, как они заботились обо мне, когда я был маленьким».';

  @override
  String get duaMeaning6 =>
      'превознесён Бог, Тот, Кто действительно контролирует ситуацию. [Пророк], не спешите читать, пока откровение не будет полностью завершено, но скажите: «Господь, приумножь мои знания!»';

  @override
  String get duaMeaning7 =>
      'Скажи [Пророку]: «Господи, прости и помилуй: Ты милостивейший из всех».';

  @override
  String get duaMeaning8 =>
      'те, кто молятся: «Господь наш, дай нам радость в наших супругах и потомстве». Подари нам хороший пример тем, кто знает Тебя».';

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
  String get hadithCollection => 'Сборник хадисов';

  @override
  String get hadithBooks => 'Книги хадисов';

  @override
  String get searchHadith => 'Поиск хадисов';

  @override
  String get asmaulHusna => 'Асма-уль-Хусна';

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
  String get openInYoutube => 'Открыть на YouTube';

  @override
  String get ibadahTracker => 'Учёт ибады';

  @override
  String get fasting => 'Fasting';

  @override
  String get quranReading => 'Quran Reading';

  @override
  String get prayers => 'Prayers';

  @override
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '$hoursч $minutesм';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '$minutes мин.';
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
  String get islamicNewYear => 'Исламский Новый год';

  @override
  String get mawlidAnNabi => 'Мавлид ан-Наби';

  @override
  String get specialDayDateRamadanStart => '1 Рамадан';

  @override
  String get specialDayDateLaylatAlQadr => '27 Рамадан';

  @override
  String get specialDayDateEidAlFitr => '1 шавваль';

  @override
  String get specialDayDateEidAlAdha => '10 Зуль Хиджа';

  @override
  String get specialDayDateIslamicNewYear => '1 Мухаррам';

  @override
  String get specialDayDateMawlidAnNabi => '12 Раби аль-Авваль';

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
    return 'Ошибка компаса: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Датчик компаса недоступен на этом устройстве.';

  @override
  String get qiblaLocationRequiredTitle => 'Требуется местоположение для Киблы';

  @override
  String get qiblaLocationRequiredBody =>
      'Прежде чем использовать компас Киблы, установите свое фактическое местоположение, чтобы можно было точно рассчитать направление.';

  @override
  String get adhanNotificationChannelName => 'Уведомления об Азане';

  @override
  String get adhanNotificationChannelDescription =>
      'Оповещения о времени молитвы со звуком азана.';

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
  String get lightMode => 'Светлый режим';

  @override
  String get darkMode => 'Темный режим';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'About';

  @override
  String get version => 'Версия';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get termsOfService => 'Terms of Service';

  @override
  String get contactUs => 'Contact Us';

  @override
  String get rateApp => 'Оцените приложение';

  @override
  String get shareApp => 'Поделиться приложением';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Попробуйте $appName: лучшее приложение для исламского образа жизни! $url';
  }

  @override
  String get downloadManager => 'Менеджер загрузок';

  @override
  String get downloads => 'Загрузки';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Загрузка завершена';

  @override
  String get downloadFailed => 'Загрузка не удалась';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'Нет подключения к Интернету';

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
  String get tapToCount => 'Нажмите, чтобы посчитать';

  @override
  String get zikrCompletedMashAllah => 'Завершенный! МашАллах';

  @override
  String get zikrMeaningSubhanAllah => 'Аллах превыше всякого несовершенства.';

  @override
  String get zikrMeaningAlhamdulillah => 'Вся хвала принадлежит Аллаху.';

  @override
  String get zikrMeaningAllahuAkbar => 'Аллах Величайший.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Нет бога, кроме Аллаха.';

  @override
  String get zikrMeaningAstaghfirullah => 'Я прошу прощения у Аллаха.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Нет мощи и силы, кроме как через Аллаха.';

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
  String get offlineDownloadManager => 'Автономный менеджер загрузок';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Освободите внутреннюю память устройства.';

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
  String get audioVoice => 'Аудио Голос';

  @override
  String get audioVoiceMisharyAlafasy => 'Мужской (Мишарий Алафаси)';

  @override
  String get audioVoiceAbdulBaset => 'Мале (АбдулБасет)';

  @override
  String get audioVoiceSudais => 'Мале (Судаис)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Калибровка Киблы';

  @override
  String get compassSmoothing => 'Компасное сглаживание';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Калибровочное смещение';

  @override
  String currentOffset(Object offset) {
    return 'Текущее: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Отрегулируйте, если ваш компас нуждается в ручной корректировке. Положительные значения вращаются по часовой стрелке.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Диагностика';

  @override
  String get diagnosticsNotSet => 'Не установлено';

  @override
  String get diagnosticsPrayerProfile => 'Молитвенный профиль';

  @override
  String get diagnosticsPrayerSource => 'Молитвенный авторитет';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Пользовательский / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Пользовательские углы вручную (без институционального источника)';

  @override
  String get diagnosticsCloudDriven => 'Облачное управление';

  @override
  String get diagnosticsAdhanAudioAssets => 'Аудиоактивы Адана';

  @override
  String get diagnosticsUiAudioAssets =>
      'Аудиоактивы пользовательского интерфейса';

  @override
  String get diagnosticsQuranAudioAssets => 'Аудиоматериалы Корана';

  @override
  String get diagnosticsAudioAssets => 'Аудио ресурсы';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count файлов';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Не удалось прочитать манифест: $error.';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Локализация';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count поддерживается';
  }

  @override
  String get diagnosticsQuranDataset => 'Набор данных Корана';

  @override
  String get diagnosticsQuranSurahs => 'Суры Корана';

  @override
  String get diagnosticsQuranAyahs => 'Аяты Корана';

  @override
  String get diagnosticsQuranJuzMetadata => 'Метаданные джузов Корана';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'В Supabase отсутствуют облачные таблицы; включенный резервный вариант активен';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Проверка облака не удалась: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Метаданные Cloud Juz отсутствуют; включенный структурный резервный вариант активен';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Не удалось выполнить проверку структуры облака: $error.';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Требуется калибровка. Поверните устройство, изображенное на рисунке 8.';

  @override
  String get dailyVerse => 'Ежедневный стих';

  @override
  String get todaysIbadah => 'Сегодняшний Ибада';

  @override
  String get quickAccess => 'Быстрый доступ';

  @override
  String get assistant => 'Ассистент';

  @override
  String get places => 'Места';

  @override
  String get library => 'Библиотека';

  @override
  String get analytics => 'Аналитика';

  @override
  String get dailyDuas => 'Ежедневные дуа';

  @override
  String essentialDuas(String count) {
    return '$count важные дуа';
  }

  @override
  String get duaUnavailableTitle => 'Проверенные дуа пока недоступны';

  @override
  String get duaUnavailableBody =>
      'Проверенные ежедневные дуа еще не синхронизированы с этим устройством. Подключитесь к облачному источнику, чтобы загрузить исходные данные вместо непроверенного резервного варианта.';

  @override
  String get duaCategoryQuranic => 'Кораническое дуа';

  @override
  String get duaCategoryMorningEvening => 'Утро и вечер';

  @override
  String get duaCategoryTasbih => 'Тасбих';

  @override
  String get duaCategoryProtection => 'Защита';

  @override
  String get duaCategoryBeginning => 'Начало';

  @override
  String get duaCategorySleep => 'Спать';

  @override
  String get duaCategoryFoodDrink => 'Еда и напитки';

  @override
  String get duaCategoryForgiveness => 'Прощение';

  @override
  String get duaCategoryHome => 'Дом';

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
  String get islamicEducation => 'Исламское образование';

  @override
  String get sukunAudioTitle => 'Звуковые ландшафты Сукуна';

  @override
  String get hadithCollections => 'Сборники хадисов';

  @override
  String get hadithSourcePending =>
      'Подтвержденный источник находится на рассмотрении';

  @override
  String get hadithUnavailableTitle =>
      'Проверенные сборники хадисов пока недоступны.';

  @override
  String get hadithUnavailableBody =>
      'Эта сборка по-прежнему зависит от непроверенного внешнего источника хадисов. Просмотр хадисов остается отключенным до тех пор, пока исходный набор данных не будет синхронизирован.';

  @override
  String get paywallUnlockAll =>
      'Разблокируйте все функции для своего духовного путешествия';

  @override
  String get premiumProductUnavailable =>
      'Премиум-продукт сейчас недоступен. Пожалуйста, повторите попытку позже.';

  @override
  String get premiumPurchaseFailed =>
      'Покупка не может быть завершена. Пожалуйста, попробуйте еще раз.';

  @override
  String get paywallFeature1Title => 'Нейронный помощник плюс';

  @override
  String get paywallFeature1Desc =>
      'Неограниченное количество вопросов и ответов с помощью искусственного интеллекта';

  @override
  String get paywallFeature2Title => 'Безлимитный оффлайн';

  @override
  String get paywallFeature2Desc => 'Скачать все декламации';

  @override
  String get paywallFeature3Title => 'Эксклюзивный дизайн';

  @override
  String get paywallFeature3Desc => 'Премиум-темы и шрифты';

  @override
  String get paywallFeature4Title => 'Без рекламы';

  @override
  String get paywallFeature4Desc => 'Ноль рекламы';

  @override
  String get paywallGetAccess => 'Получите пожизненный доступ — \$1,00';

  @override
  String get restorePurchases => 'Восстановить покупки';

  @override
  String get zakatCalculator => 'Калькулятор закята';

  @override
  String get zakatGold => 'Золото (Алтын)';

  @override
  String get zakatSilver => 'Серебро (Гюмюш)';

  @override
  String get zakatCashBank => 'Наличные / Банк';

  @override
  String get zakatBusiness => 'Бизнес';

  @override
  String get zakatInvestments => 'Инвестиции';

  @override
  String get zakatWeightGrams => 'Вес (г)';

  @override
  String get zakatPricePerGram => 'Цена/г';

  @override
  String get zakatTotalAmount => 'Общая сумма';

  @override
  String get zakatInventoryValue => 'Стоимость инвентаря';

  @override
  String get zakatDebts => 'Долги';

  @override
  String get zakatTotal => 'Общий';

  @override
  String get calculateZakat => 'Рассчитать закят';

  @override
  String get nisabNotReached =>
      'Нисаб не достигнут. Закят не является обязательным.';

  @override
  String get totalZakat => 'Общий закят';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Нисаб: $nisab • Активы: $assets';
  }

  @override
  String get zakatGoldZakat => 'Золотой закят';

  @override
  String get zakatSilverZakat => 'Серебряный Закят';

  @override
  String get zakatCashZakat => 'Наличный закят';

  @override
  String get zakatBusinessZakat => 'Бизнес Закят';

  @override
  String get zakatInvestmentZakat => 'Инвестиционный Закят';

  @override
  String get chatbotGreeting =>
      'Ассаляму Алейкум! Я ваш исламский помощник. Спросите меня о молитве, посте, закяте или любой исламской теме.';

  @override
  String get chatbotLimitReached =>
      'Достигнут дневной лимит запросов. Обновите до Премиум без ограничений.';

  @override
  String get chatbotErrorMsg =>
      'Я не смог сгенерировать ответ. Пожалуйста, попробуйте еще раз.';

  @override
  String get chatbotOfflinePrompt =>
      'Подтвержденная автономная база исламских знаний все еще находится на стадии курирования. Сейчас вы можете включить резервный режим автономного режима, но он будет отображать только ограниченное количество безопасных сообщений, пока исходный набор данных не будет готов.\n\nХотите включить резервный режим автономного режима?';

  @override
  String get chatbotOfflineSwitched =>
      'Автономный резерв включен. Проверенные местные исламские ответы еще не готовы.';

  @override
  String get chatbotOfflineDownloadLabel =>
      'Включить автономный резервный режим';

  @override
  String get downloadPreparing => 'Подготовка загрузки...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Загрузка суры $surah / $total';
  }

  @override
  String get downloadCompleted => 'Все суры для этого чтеца уже скачаны.';

  @override
  String get offlineQuranAudioPacks => 'Офлайн-аудиопакеты Корана';

  @override
  String storedOnDeviceMb(String size) {
    return 'Хранится на устройстве: $size МБ.';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total сур скачано';
  }

  @override
  String get redownloadMissingRepair => 'Восстановление/загрузка отсутствует';

  @override
  String get downloadAction => 'Скачать';

  @override
  String get resumeDownload => 'Возобновить загрузку';

  @override
  String get deleteDownloadedFiles => 'Удалить загруженные файлы';

  @override
  String get downloadCancelling => 'Отмена...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Загрузка отменена для $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Загрузка завершена для $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Загрузка завершена для $reciter: $failed сур не удалось (загружено $downloaded/$total).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Удалены автономные файлы для $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Проверенные источники аудио Корана сейчас недоступны.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Подтвержденный аудиопакет Корана неполный ($available/$total). Обновите семя облака и повторите попытку.';
  }

  @override
  String get chatbotHint => 'Задайте вопрос...';

  @override
  String get chatbotThinking => 'Думая...';

  @override
  String get sukunMixerSubtitle => 'Миксер природы и Корана';

  @override
  String get audioPlayFailed => 'Воспроизведение аудио не удалось';

  @override
  String get sukunNatureLabel => 'Сукун (Природа)';

  @override
  String get sukunRainOfMercy => 'Дождь милосердия';

  @override
  String get sukunGardenOfPeace => 'Сад Мира';

  @override
  String get sukunMidnightCalm => 'Полуночное спокойствие';

  @override
  String get sukunOceanTawheed => 'Океан Таухид';

  @override
  String get sukunUnavailableTitle => 'Звуковые ландшафты недоступны.';

  @override
  String get sukunUnavailableBody =>
      'Эта сборка еще не включает необходимые звуковые ресурсы Сукуна.';

  @override
  String get prayerCompletion => 'Выполнение намазов';

  @override
  String get streaks => 'Серии';

  @override
  String get dayStreak => 'Дней подряд';

  @override
  String get bestStreak => 'Лучшая серия';

  @override
  String get chatbotCloudAiLabel => 'Облачный ИИ';

  @override
  String get chatbotLocalAiLabel => 'Автономный резерв';

  @override
  String get chatbotUseCloudAi =>
      'Используйте облачный искусственный интеллект (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Включить автономный резервный режим';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count осталось';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API не настроен. Проверенное автономное исламское руководство пока недоступно.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Проверенные местные исламские рекомендации пока недоступны. Переключитесь на Cloud AI для получения ответов.';

  @override
  String get mosques => 'Мечети';

  @override
  String get halalFood => 'Халяльная еда';

  @override
  String get placesSearchArea => 'Искать в этой области';

  @override
  String get nearbyMosques => 'Близлежащие мечети';

  @override
  String get islamicSchools => 'Исламские школы';

  @override
  String placesFoundCount(String count) {
    return '$count найдено';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance км';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Ошибка API: $statusCode';
  }

  @override
  String get placesNetworkError =>
      'Ошибка сети. Пожалуйста, попробуйте еще раз.';

  @override
  String get placesLocationRequiredTitle => 'Требуется местоположение';

  @override
  String get placesLocationRequiredBody =>
      'Сначала укажите местоположение, чтобы можно было точно найти близлежащие мечети, халяльные рестораны и исламские школы.';

  @override
  String get placesMapTilesUnavailableTitle => 'Фрагменты карты недоступны.';

  @override
  String get placesMapTilesUnavailableBody =>
      'Подтвержденный источник фрагментов карты еще не настроен для этой сборки. Места поблизости по-прежнему могут загружаться из сохраненного вами местоположения.';

  @override
  String get placesDataSourceUnavailableTitle => 'Данные о местах недоступны.';

  @override
  String get placesDataSourceUnavailableBody =>
      'Конечная точка данных проверенных мест еще не настроена для этой сборки. Прежде чем включать поиск поблизости, установите для PLACES_OVERPASS_API_URL утвержденный прокси-сервер или поставщика.';

  @override
  String get unknownPlaceName => 'Неизвестное имя';

  @override
  String get islamicPlaceFallback => 'Исламское место';

  @override
  String get asmaMeaning1 => 'Благотворительный';

  @override
  String get asmaMeaning2 => 'Милосердный';

  @override
  String get asmaMeaning3 => 'Король/Вечный Лорд';

  @override
  String get asmaMeaning4 => 'Святейшее';

  @override
  String get asmaMeaning5 => 'Источник мира';

  @override
  String get asmaMeaning6 => 'Гарант безопасности';

  @override
  String get asmaMeaning7 =>
      'Судья и правитель вселенной, который видит и наблюдает за всем.';

  @override
  String get asmaMeaning8 => 'Драгоценный / Самый Могущественный';

  @override
  String get asmaMeaning9 => 'Компеллер';

  @override
  String get asmaMeaning10 => 'Величайший';

  @override
  String get asmaMeaning11 => 'Создатель';

  @override
  String get asmaMeaning12 => 'Творец порядка';

  @override
  String get asmaMeaning13 => 'Творец красоты';

  @override
  String get asmaMeaning14 => 'Прощающий';

  @override
  String get asmaMeaning15 => 'Покоритель';

  @override
  String get asmaMeaning16 => 'Дающий всё';

  @override
  String get asmaMeaning17 => 'Поддерживающий';

  @override
  String get asmaMeaning18 => 'Открытие';

  @override
  String get asmaMeaning19 => 'Знающий всё';

  @override
  String get asmaMeaning20 => 'Констриктор';

  @override
  String get asmaMeaning21 => 'Облегчитель';

  @override
  String get asmaMeaning22 => 'Абасер';

  @override
  String get asmaMeaning23 => 'Возвышающий';

  @override
  String get asmaMeaning24 => 'Почетный даритель';

  @override
  String get asmaMeaning25 => 'Унизитель';

  @override
  String get asmaMeaning26 => 'Всеслышащий';

  @override
  String get asmaMeaning27 => 'Провидец всего';

  @override
  String get asmaMeaning28 => 'Судья';

  @override
  String get asmaMeaning29 => 'Справедливый';

  @override
  String get asmaMeaning30 => 'Тонкий';

  @override
  String get asmaMeaning31 => 'Все знают';

  @override
  String get asmaMeaning32 => 'Выносливый';

  @override
  String get asmaMeaning33 => 'Великолепный';

  @override
  String get asmaMeaning34 => 'Великий прощающий';

  @override
  String get asmaMeaning35 => 'Награда за благодарность';

  @override
  String get asmaMeaning36 => 'Самый высокий';

  @override
  String get asmaMeaning37 => 'Величайший';

  @override
  String get asmaMeaning38 => 'Хранитель';

  @override
  String get asmaMeaning39 => 'Питатель';

  @override
  String get asmaMeaning40 => 'Счетчик';

  @override
  String get asmaMeaning41 => 'Величественный';

  @override
  String get asmaMeaning42 => 'Щедрый';

  @override
  String get asmaMeaning43 => 'Бдительный';

  @override
  String get asmaMeaning44 => 'Ответ на молитву';

  @override
  String get asmaMeaning45 => 'Всепонимающий';

  @override
  String get asmaMeaning46 => 'Совершенно мудрый';

  @override
  String get asmaMeaning47 => 'Любящий';

  @override
  String get asmaMeaning48 => 'Самый славный';

  @override
  String get asmaMeaning49 => 'Воскреситель';

  @override
  String get asmaMeaning50 => 'Свидетель';

  @override
  String get asmaMeaning51 => 'Правда';

  @override
  String get asmaMeaning52 => 'Вседостаточный попечитель';

  @override
  String get asmaMeaning53 => 'Обладатель всей силы';

  @override
  String get asmaMeaning54 => 'Сильный';

  @override
  String get asmaMeaning55 => 'Защитник';

  @override
  String get asmaMeaning56 => 'Похвальный';

  @override
  String get asmaMeaning57 => 'Оценщик';

  @override
  String get asmaMeaning58 => 'Создатель';

  @override
  String get asmaMeaning59 => 'Реставратор';

  @override
  String get asmaMeaning60 => 'Податель жизни';

  @override
  String get asmaMeaning61 => 'Похититель жизни';

  @override
  String get asmaMeaning62 => 'Вечно живой';

  @override
  String get asmaMeaning63 => 'Самоподдерживающийся источник существования';

  @override
  String get asmaMeaning64 => 'Искатель';

  @override
  String get asmaMeaning65 => 'Славный';

  @override
  String get asmaMeaning66 => 'Единственный';

  @override
  String get asmaMeaning67 => 'Единственный';

  @override
  String get asmaMeaning68 => 'Тот, кого ищут все';

  @override
  String get asmaMeaning69 => 'Мощный';

  @override
  String get asmaMeaning70 => 'Творец всей силы';

  @override
  String get asmaMeaning71 => 'Экспедитор';

  @override
  String get asmaMeaning72 => 'Замедлитель';

  @override
  String get asmaMeaning73 => 'Первый';

  @override
  String get asmaMeaning74 => 'Последний';

  @override
  String get asmaMeaning75 => 'Манифест';

  @override
  String get asmaMeaning76 => 'Скрытый';

  @override
  String get asmaMeaning77 => 'Губернатор';

  @override
  String get asmaMeaning78 => 'Высший';

  @override
  String get asmaMeaning79 => 'Добрый делатель';

  @override
  String get asmaMeaning80 => 'Руководство к покаянию';

  @override
  String get asmaMeaning81 => 'Мститель';

  @override
  String get asmaMeaning82 => 'Прощающий';

  @override
  String get asmaMeaning83 => 'Климент';

  @override
  String get asmaMeaning84 => 'Владелец/Повелитель всего';

  @override
  String get asmaMeaning85 => 'Обладатель величия и щедрости';

  @override
  String get asmaMeaning86 => 'Справедливый';

  @override
  String get asmaMeaning87 => 'Собиратель';

  @override
  String get asmaMeaning88 => 'Богатый';

  @override
  String get asmaMeaning89 => 'Обогатитель';

  @override
  String get asmaMeaning90 => 'Предотвращение вреда';

  @override
  String get asmaMeaning91 => 'Приносящий вред';

  @override
  String get asmaMeaning92 => 'Даритель благ';

  @override
  String get asmaMeaning93 => 'Свет';

  @override
  String get asmaMeaning94 => 'Путеводитель';

  @override
  String get asmaMeaning95 => 'Создатель';

  @override
  String get asmaMeaning96 => 'Вечный';

  @override
  String get asmaMeaning97 => 'Наследник';

  @override
  String get asmaMeaning98 => 'Самый праведный проводник';

  @override
  String get asmaMeaning99 => 'Терпеливый';
}
