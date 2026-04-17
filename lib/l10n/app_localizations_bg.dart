// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bulgarian (`bg`).
class AppLocalizationsBg extends AppLocalizations {
  AppLocalizationsBg([String locale = 'bg']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Ислямският път на светлината';

  @override
  String get home => 'Начало';

  @override
  String get quran => 'Коран';

  @override
  String get qibla => 'Кибла';

  @override
  String get zikr => 'Зикр';

  @override
  String get calendar => 'Календар';

  @override
  String get settings => 'Настройки';

  @override
  String get nextPrayer => 'Следваща молитва';

  @override
  String get prayerTimes => 'Времена за молитва';

  @override
  String get continueReading => 'Продължете да четете';

  @override
  String get getLifetimePro => 'Вземете Lifetime Pro';

  @override
  String get unlockTajweed => 'Отключете Tajweed и разширени функции';

  @override
  String get prayerCalculation => 'Изчисление на молитва';

  @override
  String get method => 'Метод на изчисление';

  @override
  String get madhab => 'Юридически метод на Asr';

  @override
  String get surahs => 'сури';

  @override
  String get ayahs => 'Аят';

  @override
  String get fajr => 'Фаджр';

  @override
  String get sunrise => 'Изгрев';

  @override
  String get dhuhr => 'Зухр';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Магриб';

  @override
  String get isha => 'Иша';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Време за $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Време е да се молим на $prayerName.';
  }

  @override
  String get dataStorage => 'Данни и съхранение';

  @override
  String get clearCache => 'Изчистване на кеша';

  @override
  String get cacheClearedSuccess => 'Кешът е изчистен успешно';

  @override
  String get location => 'Местоположение';

  @override
  String get language => 'език';

  @override
  String get selectLanguage => 'Изберете език';

  @override
  String get searchLanguage => 'Търсене на 180+ езика...';

  @override
  String get systemDefault => 'Системни настройки по подразбиране';

  @override
  String get currentLocation => 'Текущо местоположение (GPS)';

  @override
  String get locationServiceDisabled =>
      'Услугата за местоположение е деактивирана.';

  @override
  String get locationPermissionDenied =>
      'Разрешението за местоположение е отказано.';

  @override
  String get locationDetectionFailed =>
      'Could not detect your location. Моля, изберете град ръчно или опитайте отново.';

  @override
  String citiesCount(String count) {
    return '$count града';
  }

  @override
  String get search => 'Търсене';

  @override
  String get searchHint => 'Търсене...';

  @override
  String get noResults => 'Няма намерени резултати';

  @override
  String get loading => 'Зареждане...';

  @override
  String get error => 'Грешка';

  @override
  String get appErrorOccurred => 'Възникна грешка';

  @override
  String get appUnknownError => 'Неизвестна грешка';

  @override
  String get quranLoadFailed =>
      'Съдържанието на Корана не можа да бъде заредено. Моля, опитайте отново.';

  @override
  String get retry => 'Опитайте отново';

  @override
  String get refreshAction => 'Опресняване';

  @override
  String get cancel => 'Отказ';

  @override
  String get save => 'Запазване';

  @override
  String get delete => 'Изтриване';

  @override
  String get edit => 'Редактиране';

  @override
  String get close => 'затвори';

  @override
  String get ok => 'добре';

  @override
  String get yes => 'да';

  @override
  String get no => 'не';

  @override
  String get surah => 'сура';

  @override
  String ayahLabel(String ayah) {
    return 'Ая $ayah';
  }

  @override
  String get juz => 'джуз';

  @override
  String get page => 'Страница';

  @override
  String get reading => 'Четене';

  @override
  String get recitation => 'Рецитация';

  @override
  String get translation => 'Превод';

  @override
  String get tafsir => 'Тафсир';

  @override
  String get tafsirLoading => 'Зарежда се тафсир...';

  @override
  String get tafsirSourceLabel => 'Източник на тафсир';

  @override
  String get tafsirNoSurahFound => 'Няма намерен тефсир за тази сура.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Няма намерен тефсир за ая $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir не можа да бъде зареден.';

  @override
  String get tafsirNoTextForAyah => 'Няма тефсирски текст за този аят.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Изтегля се тафсир $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Зарежда се тафсир $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Източникът на Tafsir върна HTTP $statusCode грешка.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Избраният източник на тафсир не върна записи.';

  @override
  String get tafsirCacheUnavailable =>
      'Провереният тафсир все още не е достъпен офлайн. Синхронизирайте набор от данни за tafsir, преди да сърфирате.';

  @override
  String get bookmarks => 'Отметки';

  @override
  String get addBookmark => 'Добавяне на отметка';

  @override
  String get removeBookmark => 'Премахване на отметка';

  @override
  String get lastRead => 'Последно прочетено';

  @override
  String get dailyZikr => 'Ежедневен зикр';

  @override
  String get duaMeaning1 =>
      'други се молят: „Господи наш, дай ни добро в този свят и в отвъдния и ни защити от мъчението на Огъня.“';

  @override
  String get duaMeaning2 =>
      'Бог не натоварва никоя душа с повече, отколкото тя може да понесе: всяка печели каквото и да е добро, което е направила, и страда от лошото – „Господи, не ни карай, ако забравяме или правим грешки. Господи, не ни натоварвай, както си натоварил тези преди нас. Господи, не ни натоварвай с повече, отколкото имаме сили да понесем. Прости ни, прости ни и се смили над нас. Ти си наш защитник, затова ни помогни срещу неверниците.“';

  @override
  String get duaMeaning3 =>
      '„Господи наш, не позволявай на сърцата ни да се отклонят, след като си ни напътил. Дари ни Своята милост: Ти си Вечно даващият.';

  @override
  String get duaMeaning4 =>
      'Господи, дай аз и моето потомство да поддържаме молитвата. Господи наш, приеми молбата ми.';

  @override
  String get duaMeaning5 =>
      'и спусни крилото си в смирение към тях в доброта и кажи: „Господи, смили се над тях, както те се грижеха за мен, когато бях малък.“';

  @override
  String get duaMeaning6 =>
      'възвишен да бъде Бог, този, който наистина контролира. [Пророк], не бързай да рецитираш, преди откровението да е напълно завършено, но кажи: „Господи, увеличи ме в знанието!“';

  @override
  String get duaMeaning7 =>
      'Кажете [Пророк]: „Господи, прости и имай милост: Ти си най-милосърдният от всички.“';

  @override
  String get duaMeaning8 =>
      'онези, които се молят: „Господи наш, дай ни радост в нашите съпрузи и потомство. Направи ни добър пример за онези, които Те познават.';

  @override
  String get morningZikr => 'Сутрешен зикр';

  @override
  String get eveningZikr => 'Вечерен зикр';

  @override
  String get tasbih => 'тасбих';

  @override
  String get ahkab => 'Ахкам';

  @override
  String get masaail => 'Масаил';

  @override
  String get hadith => 'Хадис';

  @override
  String get hadithCollection => 'Колекция от хадиси';

  @override
  String get hadithBooks => 'Книги с хадиси';

  @override
  String get searchHadith => 'Търсете хадиси';

  @override
  String get asmaulHusna => 'Асма-ул-Хусна';

  @override
  String get namesOfAllah => 'Имената на Аллах';

  @override
  String get liveTv => 'Телевизия на живо';

  @override
  String get watchLive => 'Гледайте на живо';

  @override
  String get streamError => 'Грешка в потока';

  @override
  String get reload => 'Презареди';

  @override
  String get openInYoutube => 'Отворете в YouTube';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'На гладно';

  @override
  String get quranReading => 'Четене на Коран';

  @override
  String get prayers => 'молитви';

  @override
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '$hoursч $minutesм';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '$minutesм';
  }

  @override
  String get prayerRemainingUnavailable => '--';

  @override
  String get dhikrCount => 'Зикр Брой';

  @override
  String get weeklyProgress => 'Седмичен напредък';

  @override
  String get monthlyProgress => 'Месечен напредък';

  @override
  String get statistics => 'Статистика';

  @override
  String get hijriCalendar => 'Хиджри календар';

  @override
  String get gregorianCalendar => 'Григориански календар';

  @override
  String get today => 'Днес';

  @override
  String get tomorrow => 'утре';

  @override
  String get yesterday => 'Вчера';

  @override
  String get specialDays => 'Специални дни';

  @override
  String get ramadan => 'Рамадан';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Курбан Байрам';

  @override
  String get islamicNewYear => 'ислямска нова година';

  @override
  String get mawlidAnNabi => 'Маулид ан-Наби';

  @override
  String get specialDayDateRamadanStart => '1 Рамадан';

  @override
  String get specialDayDateLaylatAlQadr => '27 Рамадан';

  @override
  String get specialDayDateEidAlFitr => '1 Шавал';

  @override
  String get specialDayDateEidAlAdha => '10 зул хиджа';

  @override
  String get specialDayDateIslamicNewYear => '1 Мухаррам';

  @override
  String get specialDayDateMawlidAnNabi => '12 Раби ал-Аувал';

  @override
  String get laylatAlQadr => 'Лейлат Ал-Кадр';

  @override
  String get qiblaDirection => 'Посока Qibla';

  @override
  String get compass => 'Компас';

  @override
  String get degrees => 'степени';

  @override
  String get north => 'север';

  @override
  String get qiblaFound => 'Qibla намерена!';

  @override
  String get turnDevice => 'Обърнете устройството си с лице към Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Грешка в компаса: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Сензорът за компас не е наличен на това устройство.';

  @override
  String get qiblaLocationRequiredTitle =>
      'Необходимо е местоположение за Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Задайте действителното си местоположение, преди да използвате компаса Qibla, така че посоката да може да се изчисли точно.';

  @override
  String get adhanNotificationChannelName => 'Езан известия';

  @override
  String get adhanNotificationChannelDescription =>
      'Сигнали за време за молитва със звук на езан.';

  @override
  String get notifications => 'Известия';

  @override
  String get prayerNotifications => 'Молитвени известия';

  @override
  String get enableNotifications => 'Активиране на известията';

  @override
  String get notificationTime => 'Време за уведомяване';

  @override
  String get beforePrayer => 'минути преди молитва';

  @override
  String get theme => 'Тема';

  @override
  String get lightMode => 'Светлинен режим';

  @override
  String get darkMode => 'Тъмен режим';

  @override
  String get systemTheme => 'Системна тема';

  @override
  String get about => 'За';

  @override
  String get version => 'Версия';

  @override
  String get privacyPolicy => 'Политика за поверителност';

  @override
  String get termsOfService => 'Условия за ползване';

  @override
  String get contactUs => 'Свържете се с нас';

  @override
  String get rateApp => 'Оценете приложението';

  @override
  String get shareApp => 'Приложение за споделяне';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Разгледайте $appName: Най-доброто приложение за ислямски начин на живот! $url';
  }

  @override
  String get downloadManager => 'Мениджър за изтегляне';

  @override
  String get downloads => 'Изтегляния';

  @override
  String get downloading => 'Изтегля се...';

  @override
  String get downloadComplete => 'Изтеглянето завърши';

  @override
  String get downloadFailed => 'Неуспешно изтегляне';

  @override
  String get offlineMode => 'Офлайн режим';

  @override
  String get noInternet => 'Няма интернет връзка';

  @override
  String get checkConnection => 'Моля, проверете връзката си';

  @override
  String get premium => 'Премиум';

  @override
  String get upgradeToPro => 'Надстройте до Pro';

  @override
  String get proFeatures => 'Професионални функции';

  @override
  String get removeAds => 'Премахване на реклами';

  @override
  String get unlockAll => 'Отключете цялото съдържание';

  @override
  String get exclusiveContent => 'Ексклузивно съдържание';

  @override
  String get welcome => 'Добре дошли';

  @override
  String get getStarted => 'Започнете';

  @override
  String get skip => 'Пропускане';

  @override
  String get next => 'Следваща';

  @override
  String get done => 'Готово';

  @override
  String get onboarding1Title => 'Добре дошли в Пътя на Аллах';

  @override
  String get onboarding1Desc =>
      'Вашето пълно ислямско придружаващо приложение за времена за молитва, Коран и др';

  @override
  String get onboarding2Title => 'Времена за молитва';

  @override
  String get onboarding2Desc =>
      'Точни часове за молитва въз основа на вашето местоположение';

  @override
  String get onboarding3Title => 'Коран и още';

  @override
  String get onboarding3Desc =>
      'Четете Корана, проследявайте четенето си и изследвайте ислямско съдържание';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'Нулиране на брояча';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'Целеви брой: $target';
  }

  @override
  String get tapToCount => 'Докоснете, за да преброите';

  @override
  String get zikrCompletedMashAllah => 'Завършено! МашАллах';

  @override
  String get zikrMeaningSubhanAllah =>
      'Аллах е далеч над всяко несъвършенство.';

  @override
  String get zikrMeaningAlhamdulillah => 'Цялата хвала принадлежи на Аллах.';

  @override
  String get zikrMeaningAllahuAkbar => 'Аллах е най-великият.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Няма друг бог освен Аллах.';

  @override
  String get zikrMeaningAstaghfirullah => 'Търся опрощението на Аллах.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Няма сила и сила освен чрез Аллах.';

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
  String get dailyProgress => 'Ежедневен напредък';

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
  String get recheckPremium =>
      'Проверете отново състоянието на премиум абонамента';

  @override
  String get syncStore =>
      'Синхронизирайте с магазина за приложения, за да потвърдите своя премиум абонамент.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'Премиум абонаментът е потвърден.';

  @override
  String get premiumNotFound => 'Премиум абонаментът не е намерен.';

  @override
  String premiumRefreshError(Object error) {
    return 'Не можа да се опресни състоянието на премиум абонамента: $error';
  }

  @override
  String get offlineDownloadManager => 'Офлайн мениджър за изтегляне';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Освободете вътрешната памет на устройството.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'Проверка на базата данни на Корана...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'Състояние на базата данни на Корана';

  @override
  String statusLabel(Object status) {
    return 'Статус: $status';
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
  String get audioVoice => 'Аудио глас';

  @override
  String get audioVoiceMisharyAlafasy => 'Мъжки (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Мъжки (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Мъжки (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Калибриране на Qibla';

  @override
  String get compassSmoothing => 'Изглаждане с компас';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Отместване на калибриране';

  @override
  String currentOffset(Object offset) {
    return 'Текущо: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Настройте, ако вашият компас се нуждае от ръчна корекция. Положителните стойности се въртят по посока на часовниковата стрелка.';

  @override
  String get apply => 'Прилагане на промените';

  @override
  String get resetOnboarding => 'Нулирайте интро настройките';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Диагностика';

  @override
  String get diagnosticsNotSet => 'Не е зададено';

  @override
  String get diagnosticsPrayerProfile => 'Молитвен профил';

  @override
  String get diagnosticsPrayerSource => 'Молитвен авторитет';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Персонализирано / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Ръчни потребителски ъгли (без институционален източник)';

  @override
  String get diagnosticsCloudDriven => 'Облачно управление';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets =>
      'Аудио активи на потребителския интерфейс';

  @override
  String get diagnosticsQuranAudioAssets => 'Аудио активи на Корана';

  @override
  String get diagnosticsAudioAssets => 'Аудио активи';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count файла';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Неуспешно четене на манифеста: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Локализации';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count се поддържа';
  }

  @override
  String get diagnosticsQuranDataset => 'Набор от данни за Корана';

  @override
  String get diagnosticsQuranSurahs => 'Сура на Корана';

  @override
  String get diagnosticsQuranAyahs => 'Аятите на Корана';

  @override
  String get diagnosticsQuranJuzMetadata => 'Метаданни за Коран Джуз';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Липсват облачни таблици в Supabase; пакетен резервен активен';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Проверката в облака не бе успешна: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Липсват метаданни за Cloud Juz; пакетен структурен резервен активен';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Облачната структурна проверка не бе успешна: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Изисква се калибриране. Завъртете устройството във фигура-8.';

  @override
  String get dailyVerse => 'Ежедневен стих';

  @override
  String get todaysIbadah => 'Днес е ибадах';

  @override
  String get quickAccess => 'Бърз достъп';

  @override
  String get assistant => 'Помощник';

  @override
  String get places => 'Места';

  @override
  String get library => 'Библиотека';

  @override
  String get analytics => 'Анализ';

  @override
  String get dailyDuas => 'Ежедневни дуа';

  @override
  String essentialDuas(String count) {
    return '$count основни дуа';
  }

  @override
  String get duaUnavailableTitle => 'Проверените дуа все още не са налични';

  @override
  String get duaUnavailableBody =>
      'Проверените ежедневни дуа все още не са синхронизирани с това устройство. Свържете се с облачния източник, за да заредите дуа с източник вместо непотвърден резервен вариант.';

  @override
  String get duaCategoryQuranic => 'Коранската дуа';

  @override
  String get duaCategoryMorningEvening => 'Сутрин и вечер';

  @override
  String get duaCategoryTasbih => 'тасбих';

  @override
  String get duaCategoryProtection => 'защита';

  @override
  String get duaCategoryBeginning => 'Наченки';

  @override
  String get duaCategorySleep => 'сън';

  @override
  String get duaCategoryFoodDrink => 'Храна и напитки';

  @override
  String get duaCategoryForgiveness => 'прошка';

  @override
  String get duaCategoryHome => 'Начало';

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
  String get islamicEducation => 'Ислямско образование';

  @override
  String get sukunAudioTitle => 'Сукун звукови пейзажи';

  @override
  String get hadithCollections => 'Колекции от хадиси';

  @override
  String get hadithSourcePending => 'Очаква се потвърден източник';

  @override
  String get hadithUnavailableTitle =>
      'Все още не са налични проверени колекции от хадиси';

  @override
  String get hadithUnavailableBody =>
      'Тази компилация все още зависи от непотвърдена външна емисия на хадиси. Преглеждането на хадиси остава деактивирано, докато не бъде синхронизиран набор от данни.';

  @override
  String get paywallUnlockAll =>
      'Отключете всички функции за вашето духовно пътуване';

  @override
  String get premiumProductUnavailable =>
      'Премиум продуктът не е наличен в момента. Моля, опитайте отново по-късно.';

  @override
  String get premiumPurchaseFailed =>
      'Покупката не можа да бъде завършена. Моля, опитайте отново.';

  @override
  String get paywallFeature1Title => 'Неврален асистент плюс';

  @override
  String get paywallFeature1Desc =>
      'Неограничени въпроси и отговори, задвижвани от AI';

  @override
  String get paywallFeature2Title => 'Неограничен офлайн';

  @override
  String get paywallFeature2Desc => 'Изтеглете всички рецитации';

  @override
  String get paywallFeature3Title => 'Ексклузивни дизайни';

  @override
  String get paywallFeature3Desc => 'Първокласни теми и шрифтове';

  @override
  String get paywallFeature4Title => 'Без реклами';

  @override
  String get paywallFeature4Desc => 'Нула реклами';

  @override
  String get paywallGetAccess => 'Получете доживотен достъп — \$1,00';

  @override
  String get restorePurchases => 'Възстановяване на покупките';

  @override
  String get zakatCalculator => 'Калкулатор за закат';

  @override
  String get zakatGold => 'Злато (Altın)';

  @override
  String get zakatSilver => 'Сребро (Gümüş)';

  @override
  String get zakatCashBank => 'Парични средства / Банка';

  @override
  String get zakatBusiness => 'Бизнес';

  @override
  String get zakatInvestments => 'Инвестиции';

  @override
  String get zakatWeightGrams => 'Тегло (g)';

  @override
  String get zakatPricePerGram => 'Цена/гр';

  @override
  String get zakatTotalAmount => 'Обща сума';

  @override
  String get zakatInventoryValue => 'Инвентарна стойност';

  @override
  String get zakatDebts => 'Дългове';

  @override
  String get zakatTotal => 'Общо';

  @override
  String get calculateZakat => 'Изчислете Закат';

  @override
  String get nisabNotReached =>
      'Нисаб не е достигнат. Зекятът не е задължителен.';

  @override
  String get totalZakat => 'Общ закат';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Активи: $assets';
  }

  @override
  String get zakatGoldZakat => 'Златен закат';

  @override
  String get zakatSilverZakat => 'Сребърен закат';

  @override
  String get zakatCashZakat => 'Паричен закат';

  @override
  String get zakatBusinessZakat => 'Бизнес зекят';

  @override
  String get zakatInvestmentZakat => 'Инвестиционен закат';

  @override
  String get chatbotGreeting =>
      'Асаламу алейкум! Аз съм вашият ислямски помощник. Попитайте ме за молитва, пост, зекят или друга ислямска тема.';

  @override
  String get chatbotLimitReached =>
      'Дневният лимит на заявките е достигнат. Надстройте до Premium за неограничен брой.';

  @override
  String get chatbotErrorMsg =>
      'Не можах да генерирам отговор. Моля, опитайте отново.';

  @override
  String get chatbotOfflinePrompt =>
      'Проверената офлайн ислямска база знания все още се подготвя. Можете да активирате офлайн резервен режим сега, но той ще показва само ограничени безопасни съобщения, докато наборът от данни не бъде готов.\n\nИскате ли да активирате резервно офлайн?';

  @override
  String get chatbotOfflineSwitched =>
      'Активиран резервен офлайн режим. Проверените местни ислямски отговори все още не са готови.';

  @override
  String get chatbotOfflineDownloadLabel =>
      'Активиране на резервен офлайн режим';

  @override
  String get downloadPreparing => 'Изтеглянето се подготвя...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Изтегля се сура $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Всички сури вече са изтеглени за този рецитатор.';

  @override
  String get offlineQuranAudioPacks => 'Офлайн аудио пакети от Коран';

  @override
  String storedOnDeviceMb(String size) {
    return 'Съхранява се на устройство: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total изтеглени сури';
  }

  @override
  String get redownloadMissingRepair => 'Липсва поправка/изтегляне';

  @override
  String get downloadAction => 'Изтегляне';

  @override
  String get resumeDownload => 'Възобновете изтеглянето';

  @override
  String get deleteDownloadedFiles => 'Изтриване на изтеглените файлове';

  @override
  String get downloadCancelling => 'Отменя се...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Изтеглянето е анулирано за $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Изтеглянето за $reciter завърши.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Изтеглянето завърши за $reciter с $failed неуспешни сури ($downloaded/$total изтеглени).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Изтрити офлайн файлове за $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Потвърдените аудио източници на Коран не са налични в момента.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Потвърденият аудио пакет от Корана е непълен ($available/$total). Обновете облачното семе и опитайте отново.';
  }

  @override
  String get chatbotHint => 'Задайте въпрос...';

  @override
  String get chatbotThinking => 'мислене...';

  @override
  String get sukunMixerSubtitle => 'Смесител на природата и Корана';

  @override
  String get audioPlayFailed => 'Неуспешно възпроизвеждане на аудио';

  @override
  String get sukunNatureLabel => 'сукун (природа)';

  @override
  String get sukunRainOfMercy => 'Дъжд от милост';

  @override
  String get sukunGardenOfPeace => 'Градина на мира';

  @override
  String get sukunMidnightCalm => 'Среднощно спокойствие';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Няма налични звукови пейзажи';

  @override
  String get sukunUnavailableBody =>
      'Тази компилация все още не включва необходимите активи за звуков пейзаж на Sukun.';

  @override
  String get prayerCompletion => 'Завършване на молитвата';

  @override
  String get streaks => 'ивици';

  @override
  String get dayStreak => 'Дневна ивица';

  @override
  String get bestStreak => 'Най-добра серия';

  @override
  String get chatbotCloudAiLabel => 'Облачен AI';

  @override
  String get chatbotLocalAiLabel => 'Офлайн резервен вариант';

  @override
  String get chatbotUseCloudAi => 'Използвайте Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Активиране на резервен офлайн режим';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count остава';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API не е конфигуриран. Все още не е налично потвърдено офлайн ислямско ръководство.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Все още не е налично проверено местно ислямско ръководство. Превключете към Cloud AI за отговори с източник.';

  @override
  String get mosques => 'джамии';

  @override
  String get halalFood => 'Halal Food';

  @override
  String get placesSearchArea => 'Търсете тази област';

  @override
  String get nearbyMosques => 'Близки джамии';

  @override
  String get islamicSchools => 'Ислямски училища';

  @override
  String placesFoundCount(String count) {
    return '$count намерен';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance км';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Грешка в API: $statusCode';
  }

  @override
  String get placesNetworkError => 'Мрежова грешка. Моля, опитайте отново.';

  @override
  String get placesLocationRequiredTitle => 'Изисква се местоположение';

  @override
  String get placesLocationRequiredBody =>
      'Първо задайте местоположение, така че близките джамии, халал храна и ислямски училища да могат да се търсят точно.';

  @override
  String get placesMapTilesUnavailableTitle =>
      'Не са налични плочки на картата';

  @override
  String get placesMapTilesUnavailableBody =>
      'Все още не е конфигуриран потвърден източник на плочки за тази компилация. Местата наблизо все още могат да се зареждат от запазеното ви местоположение.';

  @override
  String get placesDataSourceUnavailableTitle => 'Няма налични данни за места';

  @override
  String get placesDataSourceUnavailableBody =>
      'Крайна точка за данни за проверени места все още не е конфигурирана за тази компилация. Задайте PLACES_OVERPASS_API_URL на одобрен прокси или доставчик, преди да активирате търсенето наблизо.';

  @override
  String get unknownPlaceName => 'Неизвестно име';

  @override
  String get islamicPlaceFallback => 'Ислямско място';

  @override
  String get asmaMeaning1 => 'Благотворният';

  @override
  String get asmaMeaning2 => 'Милостивият';

  @override
  String get asmaMeaning3 => 'Кралят / Вечният господар';

  @override
  String get asmaMeaning4 => 'Пресветото';

  @override
  String get asmaMeaning5 => 'Изворът на мира';

  @override
  String get asmaMeaning6 => 'Даващият сигурност';

  @override
  String get asmaMeaning7 =>
      'The Watchful Guardian, who observes and safeguards all creation.';

  @override
  String get asmaMeaning8 => 'The Precious / The Most Mighty';

  @override
  String get asmaMeaning9 =>
      'The Restorer and Irresistible, whose will prevails with perfect power.';

  @override
  String get asmaMeaning10 => 'Най-великият';

  @override
  String get asmaMeaning11 => 'Създателят';

  @override
  String get asmaMeaning12 => 'Създателят на ред';

  @override
  String get asmaMeaning13 => 'Оформителят на красотата';

  @override
  String get asmaMeaning14 => 'Прощаващият';

  @override
  String get asmaMeaning15 => 'Покорителят';

  @override
  String get asmaMeaning16 => 'Даващият всичко';

  @override
  String get asmaMeaning17 => 'Поддържателят';

  @override
  String get asmaMeaning18 => 'Отварачката';

  @override
  String get asmaMeaning19 => 'Знаещият всичко';

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
  String get asmaMeaning24 => 'Подарителят на честта';

  @override
  String get asmaMeaning25 => 'Унизителят';

  @override
  String get asmaMeaning26 => 'The Hearer of All';

  @override
  String get asmaMeaning27 => 'Виждащият на всичко';

  @override
  String get asmaMeaning28 => 'Съдията';

  @override
  String get asmaMeaning29 => 'The Just';

  @override
  String get asmaMeaning30 => 'The Subtle One';

  @override
  String get asmaMeaning31 => 'The All Aware';

  @override
  String get asmaMeaning32 => 'The Forebearing';

  @override
  String get asmaMeaning33 => 'Великолепният';

  @override
  String get asmaMeaning34 => 'Великият прощаващ';

  @override
  String get asmaMeaning35 => 'Възнаграждаващият благодарност';

  @override
  String get asmaMeaning36 => 'Най-високият';

  @override
  String get asmaMeaning37 => 'Най-великият';

  @override
  String get asmaMeaning38 => 'The Preserver';

  @override
  String get asmaMeaning39 => 'The Nourisher';

  @override
  String get asmaMeaning40 => 'The Reckoner';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'Щедрият';

  @override
  String get asmaMeaning43 => 'Бдителният';

  @override
  String get asmaMeaning44 => 'Отговорът на молитвата';

  @override
  String get asmaMeaning45 => 'The All Comprehending';

  @override
  String get asmaMeaning46 => 'The Perfectly Wise';

  @override
  String get asmaMeaning47 => 'Влюбеният';

  @override
  String get asmaMeaning48 => 'Най-славният';

  @override
  String get asmaMeaning49 => 'Възкресителят';

  @override
  String get asmaMeaning50 => 'Свидетелят';

  @override
  String get asmaMeaning51 => 'Истината';

  @override
  String get asmaMeaning52 => 'Вседостатъчният попечител';

  @override
  String get asmaMeaning53 => 'Притежателят на цялата сила';

  @override
  String get asmaMeaning54 => 'The Forceful';

  @override
  String get asmaMeaning55 => 'Защитникът';

  @override
  String get asmaMeaning56 => 'Хвалените';

  @override
  String get asmaMeaning57 => 'Оценителят';

  @override
  String get asmaMeaning58 => 'Създателят';

  @override
  String get asmaMeaning59 => 'Възстановителят';

  @override
  String get asmaMeaning60 => 'Даващият живот';

  @override
  String get asmaMeaning61 => 'The Taker of Life';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'Самостоятелният поддържащ се';

  @override
  String get asmaMeaning64 => 'Търсачът';

  @override
  String get asmaMeaning65 => 'Славният';

  @override
  String get asmaMeaning66 => 'Единственият';

  @override
  String get asmaMeaning67 => 'Единственият';

  @override
  String get asmaMeaning68 => 'Търсеният от всички';

  @override
  String get asmaMeaning69 => 'Мощният';

  @override
  String get asmaMeaning70 => 'Създателят на цялата сила';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'Забавителят';

  @override
  String get asmaMeaning73 => 'Първият';

  @override
  String get asmaMeaning74 => 'Последният';

  @override
  String get asmaMeaning75 => 'Манифестът';

  @override
  String get asmaMeaning76 => 'Скритият';

  @override
  String get asmaMeaning77 =>
      'The Protecting Patron, who governs and cares for all creation.';

  @override
  String get asmaMeaning78 => 'Върховният';

  @override
  String get asmaMeaning79 => 'Правителят на добро';

  @override
  String get asmaMeaning80 => 'Ръководството за покаяние';

  @override
  String get asmaMeaning81 => 'Отмъстителят';

  @override
  String get asmaMeaning82 => 'Прощаващият';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'Собственикът / Суверенът на всичко';

  @override
  String get asmaMeaning85 => 'The Possessor of Majesty and Bounty';

  @override
  String get asmaMeaning86 => 'The Equitable';

  @override
  String get asmaMeaning87 => 'Събирачът';

  @override
  String get asmaMeaning88 => 'Богатият';

  @override
  String get asmaMeaning89 => 'The Enricher';

  @override
  String get asmaMeaning90 => 'Превенторът на вредата';

  @override
  String get asmaMeaning91 => 'Принасящият вреда';

  @override
  String get asmaMeaning92 => 'Даващият ползи';

  @override
  String get asmaMeaning93 => 'Светлината';

  @override
  String get asmaMeaning94 => 'Пътеводителят';

  @override
  String get asmaMeaning95 => 'Създателят';

  @override
  String get asmaMeaning96 => 'Вечният';

  @override
  String get asmaMeaning97 => 'Наследникът';

  @override
  String get asmaMeaning98 => 'Най-праведният водач';

  @override
  String get asmaMeaning99 => 'Търпеливият';
}
