// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Belarusian (`be`).
class AppLocalizationsBe extends AppLocalizations {
  AppLocalizationsBe([String locale = 'be']) : super(locale);

  @override
  String get appTitle => 'Шлях Алаха';

  @override
  String get splashTagline => 'Ісламскі шлях святла';

  @override
  String get home => 'дадому';

  @override
  String get quran => 'Каран';

  @override
  String get qibla => 'Кібла';

  @override
  String get zikr => 'Зікр';

  @override
  String get calendar => 'Каляндар';

  @override
  String get settings => 'Налады';

  @override
  String get nextPrayer => 'Наступная малітва';

  @override
  String get prayerTimes => 'Час малітвы';

  @override
  String get continueReading => 'Працягнуць чытанне';

  @override
  String get getLifetimePro => 'Атрымаць Lifetime Pro';

  @override
  String get unlockTajweed => 'Разблакіроўка Tajweed & Advanced Features';

  @override
  String get prayerCalculation => 'Разлік малітвы';

  @override
  String get method => 'Метад разліку';

  @override
  String get madhab => 'Юрыдычны метад Аср';

  @override
  String get surahs => 'суры';

  @override
  String get ayahs => 'Аяты';

  @override
  String get fajr => 'Фаджр';

  @override
  String get sunrise => 'Усход сонца';

  @override
  String get dhuhr => 'Зухр';

  @override
  String get asr => 'Аср';

  @override
  String get maghrib => 'Магрыб';

  @override
  String get isha => 'Іша';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Час для $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Прыйшоў час маліцца $prayerName.';
  }

  @override
  String get dataStorage => 'Даныя і захоўванне';

  @override
  String get clearCache => 'Ачысціць кэш';

  @override
  String get cacheClearedSuccess => 'Кэш паспяхова ачышчаны';

  @override
  String get location => 'Размяшчэнне';

  @override
  String get language => 'мова';

  @override
  String get selectLanguage => 'Выберыце мову';

  @override
  String get searchLanguage => 'Пошук на 180+ мовах...';

  @override
  String get systemDefault => 'Сістэма па змаўчанні';

  @override
  String get currentLocation => 'Бягучае месцазнаходжанне (GPS)';

  @override
  String get locationServiceDisabled =>
      'Служба вызначэння месцазнаходжання адключана.';

  @override
  String get locationPermissionDenied =>
      'У дазволе на вызначэнне месцазнаходжання адмоўлена.';

  @override
  String citiesCount(String count) {
    return '$count гарадоў';
  }

  @override
  String get search => 'Пошук';

  @override
  String get searchHint => 'Пошук...';

  @override
  String get noResults => 'Вынікаў не знойдзена';

  @override
  String get loading => 'Загрузка...';

  @override
  String get error => 'Памылка';

  @override
  String get appErrorOccurred => 'Адбылася памылка';

  @override
  String get appUnknownError => 'Невядомая памылка';

  @override
  String get retry => 'Паўтарыць';

  @override
  String get refreshAction => 'Абнавіць';

  @override
  String get cancel => 'Адмяніць';

  @override
  String get save => 'Захаваць';

  @override
  String get delete => 'Выдаліць';

  @override
  String get edit => 'Рэдагаваць';

  @override
  String get close => 'Блізка';

  @override
  String get ok => 'добра';

  @override
  String get yes => 'так';

  @override
  String get no => 'няма';

  @override
  String get surah => 'Сура';

  @override
  String ayahLabel(String ayah) {
    return 'Айя $ayah';
  }

  @override
  String get juz => 'жуз';

  @override
  String get page => 'старонка';

  @override
  String get reading => 'Чытанне';

  @override
  String get recitation => 'Дэкламацыя';

  @override
  String get translation => 'Пераклад';

  @override
  String get tafsir => 'Тафсір';

  @override
  String get tafsirLoading => 'Загрузка тафсіра...';

  @override
  String get tafsirSourceLabel => 'Крыніца тафсір';

  @override
  String get tafsirNoSurahFound => 'Для гэтай суры тафсір не знойдзены.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Не знойдзены тафсір для аята $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Не ўдалося загрузіць Tafsir.';

  @override
  String get tafsirNoTextForAyah => 'Няма тэксту тафсіра для гэтага аята.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Спампоўка тафсіра $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Загрузка тафсіра $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Крыніца Tafsir вярнула памылку HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Выбраная крыніца тафсіра не дала запісаў.';

  @override
  String get bookmarks => 'Закладкі';

  @override
  String get addBookmark => 'Дадаць закладку';

  @override
  String get removeBookmark => 'Выдаліць закладку';

  @override
  String get lastRead => 'Апошняе чытанне';

  @override
  String get dailyZikr => 'Штодзённы зікр';

  @override
  String get duaMeaning1 =>
      'іншыя моляцца: «Госпадзе наш, дай нам дабра ў гэтым свеце і ў будучыні, і захавай нас ад пакут агню».';

  @override
  String get duaMeaning2 =>
      'Бог не абцяжарвае ніводную душу большым цяжарам, чым яна можа вынесці: кожная набывае тое, што зрабіла добрае, і церпіць ад дрэннага: «Пане, не дай нам адказнасці, калі мы забываемся або робім памылкі». Пане, не абцяжарвай нас, як Ты абцяжарваў тых, хто быў перад намі. Госпадзе, не абцяжарвай нас большым цяжарам, чым маем сілы. Прабач нас, прабач нас і памілуй нас. Ты наш абаронца, таму дапамажы нам супраць няверуючых».';

  @override
  String get duaMeaning3 =>
      '«Наш Пане, не дазваляй нашым сэрцам адхіляцца пасля таго, як Ты вядзеш нас. Дай нам Тваю міласэрнасць: Ты Вечна Даючы.';

  @override
  String get duaMeaning4 =>
      'Госпадзе, дай, каб я і нашчадкі мае працягвалі малітву. Пане наш, прымі маю просьбу.';

  @override
  String get duaMeaning5 =>
      'і апусці крыло сваё ў пакоры да іх у дабрыні і скажы: \"Госпадзе, змілуйся над імі, як яны клапаціліся пра мяне, калі я быў малы\".';

  @override
  String get duaMeaning6 =>
      'праслаўлены Бог, той, хто сапраўды кіруе. [Прарок], не спяшайцеся чытаць, перш чым адкрыцьцё цалкам завершана, але скажы: \"Госпадзе, павяліч мяне ў ведах!\"';

  @override
  String get duaMeaning7 =>
      'Скажы [Прарок]: «Госпадзе, прабач і памілуй: Ты міласэрнейшы з усіх».';

  @override
  String get duaMeaning8 =>
      'тых, хто моліцца: «Пане наш, дай нам радасць у нашых сужэнцах і нашчадках». Зрабі нас добрым прыкладам для тых, хто ведае пра Цябе».';

  @override
  String get morningZikr => 'Ранішні зікр';

  @override
  String get eveningZikr => 'Вячэрні зікр';

  @override
  String get tasbih => 'тасбіх';

  @override
  String get ahkab => 'Ахкам';

  @override
  String get masaail => 'Масаіл';

  @override
  String get hadith => 'хадысе';

  @override
  String get hadithCollection => 'Зборнік хадысаў';

  @override
  String get hadithBooks => 'Кнігі хадысаў';

  @override
  String get searchHadith => 'Шукаць хадысы';

  @override
  String get asmaulHusna => 'Асма-уль-Хусна';

  @override
  String get namesOfAllah => 'Імёны Алаха';

  @override
  String get liveTv => 'Жывое тэлебачанне';

  @override
  String get watchLive => 'Глядзець у прамым эфіры';

  @override
  String get streamError => 'Памылка плыні';

  @override
  String get reload => 'Перазагрузіць';

  @override
  String get openInYoutube => 'Адкрыць у YouTube';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Галаданне';

  @override
  String get quranReading => 'Чытанне Карана';

  @override
  String get prayers => 'Малітвы';

  @override
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '$hoursг $minutesхв';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '$minutesм';
  }

  @override
  String get prayerRemainingUnavailable => '--';

  @override
  String get dhikrCount => 'Граф Зікр';

  @override
  String get weeklyProgress => 'Штотыднёвы прагрэс';

  @override
  String get monthlyProgress => 'Штомесячны прагрэс';

  @override
  String get statistics => 'Статыстыка';

  @override
  String get hijriCalendar => 'Каляндар хіджры';

  @override
  String get gregorianCalendar => 'Грыгарыянскі каляндар';

  @override
  String get today => 'сёння';

  @override
  String get tomorrow => 'Заўтра';

  @override
  String get yesterday => 'Учора';

  @override
  String get specialDays => 'Асаблівыя дні';

  @override
  String get ramadan => 'Рамадан';

  @override
  String get eidAlFitr => 'Ід аль-Фітр';

  @override
  String get eidAlAdha => 'Ід аль-Адха';

  @override
  String get islamicNewYear => 'Ісламскі Новы год';

  @override
  String get mawlidAnNabi => 'Маўлід ан-Набі';

  @override
  String get specialDayDateRamadanStart => '1 Рамадан';

  @override
  String get specialDayDateLaylatAlQadr => '27 Рамадан';

  @override
  String get specialDayDateEidAlFitr => '1 Шаўваль';

  @override
  String get specialDayDateEidAlAdha => '10 зуль хіджа';

  @override
  String get specialDayDateIslamicNewYear => '1 Мухаррам';

  @override
  String get specialDayDateMawlidAnNabi => '12 Рабі аль-Авваль';

  @override
  String get laylatAlQadr => 'Лейлат Аль-Кадр';

  @override
  String get qiblaDirection => 'Напрамак Кіблы';

  @override
  String get compass => 'компас';

  @override
  String get degrees => 'ступені';

  @override
  String get north => 'Поўнач';

  @override
  String get qiblaFound => 'Кібла знойдзена!';

  @override
  String get turnDevice => 'Павярніце прыладу тварам да Кіблы';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Памылка компаса: $error';
  }

  @override
  String get notifications => 'Апавяшчэнні';

  @override
  String get prayerNotifications => 'Малітоўныя апавяшчэнні';

  @override
  String get enableNotifications => 'Уключыць апавяшчэнні';

  @override
  String get notificationTime => 'Час паведамлення';

  @override
  String get beforePrayer => 'хвілін перад малітвай';

  @override
  String get theme => 'Тэма';

  @override
  String get lightMode => 'Светлавы рэжым';

  @override
  String get darkMode => 'Цёмны рэжым';

  @override
  String get systemTheme => 'Сістэмная тэма';

  @override
  String get about => 'Аб';

  @override
  String get version => 'Версія';

  @override
  String get privacyPolicy => 'Палітыка прыватнасці';

  @override
  String get termsOfService => 'Умовы абслугоўвання';

  @override
  String get contactUs => 'Звяжыцеся з намі';

  @override
  String get rateApp => 'Ацаніць дадатак';

  @override
  String get shareApp => 'Падзяліцца праграмай';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Праверце $appName: лепшае прыкладанне для ісламскага ладу жыцця! $url';
  }

  @override
  String get downloadManager => 'Менеджэр загрузак';

  @override
  String get downloads => 'Загрузкі';

  @override
  String get downloading => 'Спампоўка...';

  @override
  String get downloadComplete => 'Загрузка завершана';

  @override
  String get downloadFailed => 'Памылка спампоўкі';

  @override
  String get offlineMode => 'Аўтаномны рэжым';

  @override
  String get noInternet => 'Няма падключэння да Інтэрнэту';

  @override
  String get checkConnection => 'Праверце падключэнне';

  @override
  String get premium => 'Прэміум';

  @override
  String get upgradeToPro => 'Абнаўленне да Pro';

  @override
  String get proFeatures => 'Pro Асаблівасці';

  @override
  String get removeAds => 'Выдаліць рэкламу';

  @override
  String get unlockAll => 'Разблакіраваць увесь кантэнт';

  @override
  String get exclusiveContent => 'Эксклюзіўны кантэнт';

  @override
  String get welcome => 'Сардэчна запрашаем';

  @override
  String get getStarted => 'Пачніце';

  @override
  String get skip => 'Прапусціць';

  @override
  String get next => 'Далей';

  @override
  String get done => 'Гатова';

  @override
  String get onboarding1Title => 'Сардэчна запрашаем у Шлях Алаха';

  @override
  String get onboarding1Desc =>
      'Ваша поўнае ісламскае спадарожнае прыкладанне для часу малітвы, Карана і многае іншае';

  @override
  String get onboarding2Title => 'Час малітвы';

  @override
  String get onboarding2Desc =>
      'Дакладны час малітвы ў залежнасці ад вашага месцазнаходжання';

  @override
  String get onboarding3Title => 'Каран і многае іншае';

  @override
  String get onboarding3Desc =>
      'Чытайце Каран, адсочвайце сваё чытанне і вывучайце ісламскі кантэнт';

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
  String get zikrCompletedMashAllah => 'Завершана! Машаллах';

  @override
  String get zikrMeaningSubhanAllah =>
      'Алах значна вышэй за ўсякую недасканаласць.';

  @override
  String get zikrMeaningAlhamdulillah => 'Уся хвала належыць Алаху.';

  @override
  String get zikrMeaningAllahuAkbar => 'Алах найвялікшы.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Няма бога, акрамя Алаха.';

  @override
  String get zikrMeaningAstaghfirullah => 'Я шукаю прабачэння ў Алаха.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Няма ўлады і сілы, акрамя як праз Алаха.';

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
  String get offlineDownloadManager => 'Менеджэр пазасеткавых загрузак';

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
  String get audioVoice => 'Аўдыё голас';

  @override
  String get audioVoiceMisharyAlafasy => 'Самец (Мішары Алафасы)';

  @override
  String get audioVoiceAbdulBaset => 'Мужчына (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Мужчына (Sudais)';

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
  String get diagnosticsNotSet => 'Не ўстаноўлена';

  @override
  String get diagnosticsPrayerProfile => 'Малітоўны профіль';

  @override
  String get diagnosticsPrayerSource => 'Аўтарытэт малітвы';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Індывідуальны / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Карыстальніцкія куты ўручную (няма інстытуцыйнай крыніцы)';

  @override
  String get diagnosticsCloudDriven => 'Кіраваны воблакам';

  @override
  String get diagnosticsAdhanAudioAssets => 'Аўдыярэсурсы Adhan';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Аўдыярэсурсы Карана';

  @override
  String get diagnosticsAudioAssets => 'Аўдыярэсурсы';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count файлы';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Памылка прачытання маніфеста: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Лакалізацыя Лакалі';

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
      'Воблачныя табліцы адсутнічаюць у Supabase; у камплекце рэзервовы актыўны';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Адсутнічаюць метаданыя Cloud Juz; у камплекце структурны запасны актыўны';

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
  String get dailyVerse => 'Штодзённы верш';

  @override
  String get todaysIbadah => 'Сённяшні ібадах';

  @override
  String get quickAccess => 'Хуткі доступ';

  @override
  String get assistant => 'Памочнік';

  @override
  String get places => 'Месцы';

  @override
  String get library => 'Бібліятэка';

  @override
  String get analytics => 'Аналітыка';

  @override
  String get dailyDuas => 'Штодзённыя дуа';

  @override
  String essentialDuas(String count) {
    return '$count важныя дуа';
  }

  @override
  String get duaUnavailableTitle => 'Правераныя дуа пакуль недаступныя';

  @override
  String get duaUnavailableBody =>
      'Правераныя штодзённыя дуа яшчэ не сінхранізаваны з гэтай прыладай. Падключыцеся да воблачнай крыніцы, каб загрузіць дуа з крыніцы замест неправеранага запаснога варыянту.';

  @override
  String get duaCategoryQuranic => 'Каранічная дуа';

  @override
  String get duaCategoryMorningEvening => 'Раніцай і вечарам';

  @override
  String get duaCategoryTasbih => 'тасбіх';

  @override
  String get duaCategoryProtection => 'Ахова';

  @override
  String get duaCategoryBeginning => 'Пачаткі';

  @override
  String get duaCategorySleep => 'спаць';

  @override
  String get duaCategoryFoodDrink => 'Ежа і напоі';

  @override
  String get duaCategoryForgiveness => 'Дараванне';

  @override
  String get duaCategoryHome => 'дадому';

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
  String get islamicEducation => 'Ісламская адукацыя';

  @override
  String get sukunAudioTitle => 'Гукавыя пейзажы Sukun';

  @override
  String get hadithCollections => 'Зборнікі хадысаў';

  @override
  String get hadithSourcePending => 'Чакаецца пацверджаная крыніца';

  @override
  String get hadithUnavailableTitle =>
      'Правераныя зборнікі хадзісаў пакуль недаступныя';

  @override
  String get hadithUnavailableBody =>
      'Гэтая зборка па-ранейшаму залежыць ад неправеранай знешняй стужкі хадысаў. Прагляд хадысаў застаецца адключаным, пакуль не будзе сінхранізаваны зыходны набор даных.';

  @override
  String get paywallUnlockAll =>
      'Разблакіруйце ўсе функцыі для вашага духоўнага падарожжа';

  @override
  String get premiumProductUnavailable =>
      'Прэміяльны прадукт зараз недаступны. Паўтарыце спробу пазней.';

  @override
  String get premiumPurchaseFailed =>
      'Купля не можа быць завершана. Калі ласка, паспрабуйце яшчэ раз.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc =>
      'Неабмежаваная колькасць пытанняў і адказаў на базе AI';

  @override
  String get paywallFeature2Title => 'Неабмежаваны аўтаномны рэжым';

  @override
  String get paywallFeature2Desc => 'Спампаваць усе дэкламацыі';

  @override
  String get paywallFeature3Title => 'Эксклюзіўны дызайн';

  @override
  String get paywallFeature3Desc => 'Прэміум тэмы і шрыфты';

  @override
  String get paywallFeature4Title => 'Без рэкламы';

  @override
  String get paywallFeature4Desc => 'Нуль рэкламы';

  @override
  String get paywallGetAccess => 'Атрымайце пажыццёвы доступ — \$1,00';

  @override
  String get restorePurchases => 'Аднавіць пакупкі';

  @override
  String get zakatCalculator => 'Калькулятар закята';

  @override
  String get zakatGold => 'Золата (Altın)';

  @override
  String get zakatSilver => 'Срэбра (Gümüş)';

  @override
  String get zakatCashBank => 'Наяўныя / Банк';

  @override
  String get zakatBusiness => 'Бізнес';

  @override
  String get zakatInvestments => 'Інвестыцыі';

  @override
  String get zakatWeightGrams => 'Вага (г)';

  @override
  String get zakatPricePerGram => 'Кошт/г';

  @override
  String get zakatTotalAmount => 'Агульная сума';

  @override
  String get zakatInventoryValue => 'Інвентарны кошт';

  @override
  String get zakatDebts => 'Даўгі';

  @override
  String get zakatTotal => 'Усяго';

  @override
  String get calculateZakat => 'Разлічыць закят';

  @override
  String get nisabNotReached => 'Нісаб не дайшоў. Закят не абавязковы.';

  @override
  String get totalZakat => 'Агульны закят';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Актывы: $assets';
  }

  @override
  String get zakatGoldZakat => 'Залаты закят';

  @override
  String get zakatSilverZakat => 'Сярэбраны закят';

  @override
  String get zakatCashZakat => 'Грашовы закят';

  @override
  String get zakatBusinessZakat => 'Дзелавы закят';

  @override
  String get zakatInvestmentZakat => 'Інвестыцыйны закят';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Дасягнуты дзённы ліміт запытаў. Перайдзіце на прэміум без абмежаванняў.';

  @override
  String get chatbotErrorMsg =>
      'Я не змог стварыць адказ. Калі ласка, паспрабуйце яшчэ раз.';

  @override
  String get chatbotOfflinePrompt =>
      'Правераная афлайн-база ісламскіх ведаў усё яшчэ знаходзіцца ў стадыі куратара. Вы можаце ўключыць аўтаномны рэзервовы рэжым зараз, але ён будзе паказваць толькі абмежаваныя бяспечныя паведамленні, пакуль крыніца даных не будзе гатовая.\n\nВы жадаеце ўключыць рэзервовы аўтаномны рэжым?';

  @override
  String get chatbotOfflineSwitched =>
      'Пазасеткавы рэзервовы рэжым уключаны. Правераныя мясцовыя ісламскія адказы яшчэ не гатовыя.';

  @override
  String get chatbotOfflineDownloadLabel =>
      'Уключыць аўтаномны рэзервовы рэжым';

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
  String get downloadAction => 'Спампаваць';

  @override
  String get resumeDownload => 'Аднавіць загрузку';

  @override
  String get deleteDownloadedFiles => 'Выдаліць спампаваныя файлы';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Спампоўка для $reciter скасавана.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Спампоўка для $reciter завершана.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Спампоўка завершана для $reciter з $failed няўдалымі сурамі ($downloaded/$total спампавана).';
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
  String get sukunMixerSubtitle => 'Прырода і Каран Mixer';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Сукун (прырода)';

  @override
  String get sukunRainOfMercy => 'Дождж міласэрнасці';

  @override
  String get sukunGardenOfPeace => 'Сад міру';

  @override
  String get sukunMidnightCalm => 'Апоўначны спакой';

  @override
  String get sukunOceanTawheed => 'Акіян Таўхід';

  @override
  String get sukunUnavailableTitle => 'Гукавыя пейзажы недаступныя';

  @override
  String get sukunUnavailableBody =>
      'Гэтая зборка пакуль не ўключае неабходныя актывы гукавога ландшафту Sukun.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Дзённая паласа';

  @override
  String get bestStreak => 'Лепшая серыя';

  @override
  String get chatbotCloudAiLabel => 'Воблака AI';

  @override
  String get chatbotLocalAiLabel => 'Пазасеткавы рэзервовы варыянт';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Уключыць аўтаномны рэзервовы рэжым';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count засталося';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API не наладжаны. Пераключыцеся на мясцовы штучны інтэлект.';

  @override
  String get chatbotLocalNoInfo =>
      '[ПА-ЗА ЛАЙНАМ] Правераныя мясцовыя ісламскія рэкамендацыі пакуль недаступныя. Пераключыцеся на Cloud AI, каб атрымаць адказы з крыніц.';

  @override
  String get mosques => 'Мячэці';

  @override
  String get halalFood => 'Халяльная ежа';

  @override
  String get placesSearchArea => 'Пошук у гэтай вобласці';

  @override
  String get nearbyMosques => 'Блізкія мячэці';

  @override
  String get islamicSchools => 'Ісламскія школы';

  @override
  String placesFoundCount(String count) {
    return '$count знойдзены';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance км';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Памылка API: $statusCode';
  }

  @override
  String get placesNetworkError =>
      'Памылка сеткі. Калі ласка, паспрабуйце яшчэ раз.';

  @override
  String get placesLocationRequiredTitle => 'Патрабуецца месцазнаходжанне';

  @override
  String get placesLocationRequiredBody =>
      'Спачатку ўсталюйце месцазнаходжанне, каб можна было дакладна шукаць бліжэйшыя мячэці, халяльную ежу і ісламскія школы.';

  @override
  String get placesMapTilesUnavailableTitle => 'Пліткі карты недаступныя';

  @override
  String get placesMapTilesUnavailableBody =>
      'Правераная крыніца пліткі карты яшчэ не настроена для гэтай зборкі. Месцы паблізу могуць загружацца з вашага захаванага месцазнаходжання.';

  @override
  String get unknownPlaceName => 'Невядомае імя';

  @override
  String get islamicPlaceFallback => 'Ісламскае месца';

  @override
  String get asmaMeaning1 => 'The Beneficent';

  @override
  String get asmaMeaning2 => 'Міласэрны';

  @override
  String get asmaMeaning3 => 'Кароль / Вечны Гасподзь';

  @override
  String get asmaMeaning4 => 'Найсвяцейшае';

  @override
  String get asmaMeaning5 => 'Крыніца міру';

  @override
  String get asmaMeaning6 => 'Даўца бяспекі';

  @override
  String get asmaMeaning7 => 'The Guardian';

  @override
  String get asmaMeaning8 => 'The Precious / The Most Mighty';

  @override
  String get asmaMeaning9 => 'The Compeller';

  @override
  String get asmaMeaning10 => 'Найвялікшы';

  @override
  String get asmaMeaning11 => 'Творца';

  @override
  String get asmaMeaning12 => 'Стваральнік парадку';

  @override
  String get asmaMeaning13 => 'The Shaper of Beauty';

  @override
  String get asmaMeaning14 => 'Даравальны';

  @override
  String get asmaMeaning15 => 'Пакорыцель';

  @override
  String get asmaMeaning16 => 'Даўца ўсяго';

  @override
  String get asmaMeaning17 => 'The Sustainer';

  @override
  String get asmaMeaning18 => 'Адкрыццё';

  @override
  String get asmaMeaning19 => 'Ведаючы ўсё';

  @override
  String get asmaMeaning20 => 'The Constrictor';

  @override
  String get asmaMeaning21 => 'The Reliever';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'Узвышэнец';

  @override
  String get asmaMeaning24 => 'The Bestower of Honor';

  @override
  String get asmaMeaning25 => 'Зневажальнік';

  @override
  String get asmaMeaning26 => 'The Hearer of All';

  @override
  String get asmaMeaning27 => 'Празорлівец усіх';

  @override
  String get asmaMeaning28 => 'Суддзя';

  @override
  String get asmaMeaning29 => 'Праведны';

  @override
  String get asmaMeaning30 => 'Тонкі';

  @override
  String get asmaMeaning31 => 'The All Aware';

  @override
  String get asmaMeaning32 => 'Прадказанне';

  @override
  String get asmaMeaning33 => 'The Magnificent';

  @override
  String get asmaMeaning34 => 'Вялікі Даравальнік';

  @override
  String get asmaMeaning35 => 'Узнагароджвальнік падзякі';

  @override
  String get asmaMeaning36 => 'Самы высокі';

  @override
  String get asmaMeaning37 => 'Найвялікшы';

  @override
  String get asmaMeaning38 => 'Захавальнік';

  @override
  String get asmaMeaning39 => 'The Nourisher';

  @override
  String get asmaMeaning40 => 'The Reckoner';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'Шчодры';

  @override
  String get asmaMeaning43 => 'Пільны';

  @override
  String get asmaMeaning44 => 'Адказчык на малітву';

  @override
  String get asmaMeaning45 => 'The All Comprehending';

  @override
  String get asmaMeaning46 => 'The Perfectly Wise';

  @override
  String get asmaMeaning47 => 'Закаханы';

  @override
  String get asmaMeaning48 => 'The Most Glorious One';

  @override
  String get asmaMeaning49 => 'Уваскрасіцель';

  @override
  String get asmaMeaning50 => 'Сведка';

  @override
  String get asmaMeaning51 => 'Праўда';

  @override
  String get asmaMeaning52 => 'Уседастатковы папячыцель';

  @override
  String get asmaMeaning53 => 'Уладальнік усёй сілы';

  @override
  String get asmaMeaning54 => 'The Forceful';

  @override
  String get asmaMeaning55 => 'Пратэктар';

  @override
  String get asmaMeaning56 => 'Хвалёны';

  @override
  String get asmaMeaning57 => 'Ацэншчык';

  @override
  String get asmaMeaning58 => 'Стваральнік';

  @override
  String get asmaMeaning59 => 'Рэстаўратар';

  @override
  String get asmaMeaning60 => 'Даўца жыцця';

  @override
  String get asmaMeaning61 => 'Захопнік жыцця';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'Самастойны карміцель';

  @override
  String get asmaMeaning64 => 'Шукальнік';

  @override
  String get asmaMeaning65 => 'Слаўны';

  @override
  String get asmaMeaning66 => 'Адзіны';

  @override
  String get asmaMeaning67 => 'Адзіны';

  @override
  String get asmaMeaning68 => 'Адзіны, якога шукаюць усе';

  @override
  String get asmaMeaning69 => 'Магутны';

  @override
  String get asmaMeaning70 => 'Творца ўсёй моцы';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'Затрымка';

  @override
  String get asmaMeaning73 => 'Першы';

  @override
  String get asmaMeaning74 => 'Апошні';

  @override
  String get asmaMeaning75 => 'Маніфест';

  @override
  String get asmaMeaning76 => 'Схаваны';

  @override
  String get asmaMeaning77 => 'Губернатар';

  @override
  String get asmaMeaning78 => 'Вярхоўны';

  @override
  String get asmaMeaning79 => 'Творца дабра';

  @override
  String get asmaMeaning80 => 'Кіраўніцтва па пакаянні';

  @override
  String get asmaMeaning81 => 'Мсціўца';

  @override
  String get asmaMeaning82 => 'Даравальны';

  @override
  String get asmaMeaning83 => 'Клімент';

  @override
  String get asmaMeaning84 => 'Уладальнік / Уладар усяго';

  @override
  String get asmaMeaning85 => 'The Possessor of Majesty and Bounty';

  @override
  String get asmaMeaning86 => 'The Equitable One';

  @override
  String get asmaMeaning87 => 'Збіральнік';

  @override
  String get asmaMeaning88 => 'Багаты';

  @override
  String get asmaMeaning89 => 'The Enricher';

  @override
  String get asmaMeaning90 => 'Прадухіленне шкоды';

  @override
  String get asmaMeaning91 => 'Прыносіць шкоду';

  @override
  String get asmaMeaning92 => 'Даравальнік пераваг';

  @override
  String get asmaMeaning93 => 'Святло';

  @override
  String get asmaMeaning94 => 'Правадыр';

  @override
  String get asmaMeaning95 => 'Стваральнік';

  @override
  String get asmaMeaning96 => 'Вечны';

  @override
  String get asmaMeaning97 => 'Спадчыннік';

  @override
  String get asmaMeaning98 => 'The Most Righteous Guide';

  @override
  String get asmaMeaning99 => 'The Patient One';
}
