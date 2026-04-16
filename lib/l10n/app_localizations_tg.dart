// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tajik (`tg`).
class AppLocalizationsTg extends AppLocalizations {
  AppLocalizationsTg([String locale = 'tg']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Роҳи нури исломӣ';

  @override
  String get home => 'Хона';

  @override
  String get quran => 'Қуръон';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Зикр';

  @override
  String get calendar => 'Тақвим';

  @override
  String get settings => 'Танзимотҳо';

  @override
  String get nextPrayer => 'Намози навбатӣ';

  @override
  String get prayerTimes => 'Вакти Намоз';

  @override
  String get continueReading => 'Continue Reading';

  @override
  String get getLifetimePro => 'Get Lifetime Pro';

  @override
  String get unlockTajweed => 'Unlock Tajweed & Advanced Features';

  @override
  String get prayerCalculation => 'Ҳисоб кардани намоз';

  @override
  String get method => 'Усули ҳисоб';

  @override
  String get madhab => 'Усули ҳуқуқшиносии аср';

  @override
  String get surahs => 'Сураҳо';

  @override
  String get ayahs => 'Оятхо';

  @override
  String get fajr => 'Бомдод';

  @override
  String get sunrise => 'тулӯи офтоб';

  @override
  String get dhuhr => 'Зуҳ';

  @override
  String get asr => 'Аср';

  @override
  String get maghrib => 'Мағриб';

  @override
  String get isha => 'Иша';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Вақти $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '$prayerName вақти дуо кардан аст.';
  }

  @override
  String get dataStorage => 'Маълумот ва нигоҳдорӣ';

  @override
  String get clearCache => 'Тоза кардани кэш';

  @override
  String get cacheClearedSuccess => 'Кэш бомуваффақият тоза карда шуд';

  @override
  String get location => 'Ҷойгиршавӣ';

  @override
  String get language => 'Забон';

  @override
  String get selectLanguage => 'Забонро интихоб кунед';

  @override
  String get searchLanguage => 'Search 180+ languages...';

  @override
  String get systemDefault => 'Системаи пешфарз';

  @override
  String get currentLocation => 'Ҷойгиршавии ҷорӣ (GPS)';

  @override
  String get locationServiceDisabled => 'Хадамоти ҷойгиршавӣ ғайрифаъол аст.';

  @override
  String get locationPermissionDenied => 'Иҷозати ҷойгиршавӣ рад карда шуд.';

  @override
  String get locationDetectionFailed =>
      'Ҷойгиршавии шуморо муайян карда натавонист. Лутфан шаҳрро дастӣ интихоб кунед ё дубора кӯшиш кунед.';

  @override
  String citiesCount(String count) {
    return '$count шаҳрҳо';
  }

  @override
  String get search => 'Ҷустуҷӯ';

  @override
  String get searchHint => 'Ҷустуҷӯ...';

  @override
  String get noResults => 'Ягон натиҷа ёфт нашуд';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Хатогӣ';

  @override
  String get appErrorOccurred => 'Хатогӣ рӯй дод';

  @override
  String get appUnknownError => 'Хатогии номаълум';

  @override
  String get quranLoadFailed =>
      'Мундариҷаи Қуръон бор карда нашуд. Лутфан бори дигар кӯшиш кунед.';

  @override
  String get retry => 'Аз нав кӯшиш кунед';

  @override
  String get refreshAction => 'Навсозӣ';

  @override
  String get cancel => 'Бекор кардан';

  @override
  String get save => 'Захира кунед';

  @override
  String get delete => 'Нобуд кунед';

  @override
  String get edit => 'Edit';

  @override
  String get close => 'Close';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'Не';

  @override
  String get surah => 'Сура';

  @override
  String ayahLabel(String ayah) {
    return 'Оят $ayah';
  }

  @override
  String get juz => 'Юз';

  @override
  String get page => 'Саҳифа';

  @override
  String get reading => 'Reading';

  @override
  String get recitation => 'Recitation';

  @override
  String get translation => 'Translation';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Loading тафсир...';

  @override
  String get tafsirSourceLabel => 'Манбаи тафсир';

  @override
  String get tafsirNoSurahFound => 'Барои ин сура тафсир ёфт нашуд.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Барои оят $ayah тафсир ёфт нашуд.';
  }

  @override
  String get tafsirLoadFailed => 'Тафсир бор карда нашуд.';

  @override
  String get tafsirNoTextForAyah => 'Барои ин оят матни тафсир нест.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Зеркашии тафсири $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Боркунии тафсири $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Манбаи тафсир хатои HTTP $statusCode баргардонид.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Сарчашмаи интихобшудаи тафсир ягон сабтро барнагардондааст.';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get addBookmark => 'Иловаи хатчӯб';

  @override
  String get removeBookmark => 'Хатчӯбро хориҷ кунед';

  @override
  String get lastRead => 'Last Read';

  @override
  String get dailyZikr => 'Daily Zikr';

  @override
  String get duaMeaning1 =>
      'Дигарон дуо мекунанд: «Эй Парвардигори мо, ба мо дар дунёву охират некӣ ато кун ва моро аз азоби оташ нигоҳ дор».';

  @override
  String get duaMeaning2 =>
      'Худованд ҳеҷ касро ба андозаи тоқати тавонаш бор намекунад: ҳар кас ҳар кори хайре, ки кардааст, ба даст меорад ва ба бади худ гирифтор мешавад. Эй Парвардигори мо, агар фаромӯш кардаем ё хато кардаем, моро бозхост макун. Парвардигоро, ба мо бор макун, чунон ки ба касоне, ки пеш аз мо будӣ. Парвардигоро, бар мо аз он чизе, ки тавони тоқат кардан дорем, бор макун. Моро бубахш, моро биёмурз ва бар мо раҳм кун. Ту ёвари мо ҳастӣ, пас моро бар зидди кофирон ёрӣ деҳ».';

  @override
  String get duaMeaning3 =>
      '«Эй Парвардигори мо, пас аз он, ки моро ҳидоят кардаӣ, дилҳои моро аз он гумроҳ макун. Раҳмати худро ба мо ато кун, ки Ту бахшанда ҳастӣ.';

  @override
  String get duaMeaning4 =>
      'Парвардигоро, бигзор ману авлоди ман намоз бигузорем. Парвардигоро, дуои маро қабул кун.';

  @override
  String get duaMeaning5 =>
      'ва боли худро ба хоксорӣ дар баробари эҳсонашон фуруд ор ва бигӯ: «Парвардигоро!';

  @override
  String get duaMeaning6 =>
      'Пок аст Худое, ки ҳоким аст! [Пайғамбар], пеш аз он ки ваҳй тамом шавад, ба хондан шитоб накун, балки бигӯ: «Парвардигоро, илми маро афзун кун!».';

  @override
  String get duaMeaning7 =>
      'Бигӯ: «Парвардигоро, биёмурз ва раҳм кун, ки Ту меҳрубонтарини ҳама ҳастӣ».';

  @override
  String get duaMeaning8 =>
      'Онон, ки дуо мекунанд: «Эй Парвардигори мо, моро ба ҳамсарон ва фарзандонамон шод гардон. Моро барои касоне, ки аз Ту огоҳанд, намунаи нек кун».';

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
  String get hadithCollection => 'Маҷмӯаи Ҳадис';

  @override
  String get hadithBooks => 'Китобҳои Ҳадис';

  @override
  String get searchHadith => 'Ҷустуҷӯи Ҳадис';

  @override
  String get asmaulHusna => 'Асмо-ул-ҳусно';

  @override
  String get namesOfAllah => 'Номҳои Аллоҳ';

  @override
  String get liveTv => 'Телевизиони зинда';

  @override
  String get watchLive => 'Зиндагӣ тамошо кунед';

  @override
  String get streamError => 'Хатогии ҷараён';

  @override
  String get reload => 'Аз нав бор кунед';

  @override
  String get openInYoutube => 'Дар YouTube кушоед';

  @override
  String get ibadahTracker => 'Tracker Ibadah';

  @override
  String get fasting => 'Рӯза';

  @override
  String get quranReading => 'Хониши Қуръон';

  @override
  String get prayers => 'Дуоҳо';

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
  String get weeklyProgress => 'Пешрафти ҳафта';

  @override
  String get monthlyProgress => 'Monthly Progress';

  @override
  String get statistics => 'Statistics';

  @override
  String get hijriCalendar => 'Тақвими Ҳиҷрӣ';

  @override
  String get gregorianCalendar => 'Gregorian Calendar';

  @override
  String get today => 'Имруз';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get specialDays => 'Рӯзҳои махсус';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Соли нави исломи';

  @override
  String get mawlidAnNabi => 'Мавлиди Наби';

  @override
  String get specialDayDateRamadanStart => '1 Рамазон';

  @override
  String get specialDayDateLaylatAlQadr => '27 Рамазон';

  @override
  String get specialDayDateEidAlFitr => '1 Шаввол';

  @override
  String get specialDayDateEidAlAdha => '10 Зулҳиҷҷа';

  @override
  String get specialDayDateIslamicNewYear => '1 Муҳаррам';

  @override
  String get specialDayDateMawlidAnNabi => '12 Рабиул-аввал';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'Самти қибла';

  @override
  String get compass => 'Компас';

  @override
  String get degrees => 'degrees';

  @override
  String get north => 'North';

  @override
  String get qiblaFound => 'Қибла ёфт!';

  @override
  String get turnDevice => 'Дастгоҳи худро ба сӯи қибла рӯ кунед';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Хатогии компас: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Дар ин дастгоҳ сенсори қутбнамо мавҷуд нест.';

  @override
  String get qiblaLocationRequiredTitle => 'Ҷой барои қибла лозим аст';

  @override
  String get qiblaLocationRequiredBody =>
      'Пеш аз истифодаи қутбнамо аз қибла макони воқеии худро таъин кунед, то самт дуруст ҳисоб карда шавад.';

  @override
  String get adhanNotificationChannelName => 'Огоҳиҳои азон';

  @override
  String get adhanNotificationChannelDescription =>
      'Огоҳии вақти намоз бо садои азон.';

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
  String get theme => 'Мавзӯъ';

  @override
  String get lightMode => 'Ҳолати нур';

  @override
  String get darkMode => 'Ҳолати торик';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'Дар бораи';

  @override
  String get version => 'Версия';

  @override
  String get privacyPolicy => 'Сиёсати махфият';

  @override
  String get termsOfService => 'Шартҳои хизматрасонӣ';

  @override
  String get contactUs => 'Бо мо тамос гиред';

  @override
  String get rateApp => 'Барномаи нархгузорӣ';

  @override
  String get shareApp => 'Мубодилаи барнома';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Менеҷери зеркашӣ';

  @override
  String get downloads => 'Боргириҳо';

  @override
  String get downloading => 'Зеркашӣ карда мешавад...';

  @override
  String get downloadComplete => 'Зеркашӣ пурра';

  @override
  String get downloadFailed => 'Зеркашӣ карда нашуд';

  @override
  String get offlineMode => 'Ҳолати офлайн';

  @override
  String get noInternet => 'Пайвасти интернет нест';

  @override
  String get checkConnection => 'Лутфан пайвасти худро санҷед';

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
  String get getStarted => 'Оғоз кунед';

  @override
  String get skip => 'Skip';

  @override
  String get next => 'Оянда';

  @override
  String get done => 'Иҷро шуд';

  @override
  String get onboarding1Title => 'Хуш омадед ба Сирати Нур';

  @override
  String get onboarding1Desc =>
      'Барномаи мукаммали шарики исломии шумо барои вақтҳои намоз, Қуръон ва ғайра';

  @override
  String get onboarding2Title => 'Вакти Намоз';

  @override
  String get onboarding2Desc => 'Вақтҳои дақиқи намоз дар асоси макони шумо';

  @override
  String get onboarding3Title => 'Қуръон ва ғайра';

  @override
  String get onboarding3Desc =>
      'Қуръон бихонед, хондани худро пайгирӣ кунед ва мундариҷаи исломиро биомӯзед';

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
  String get tapToCount => 'Барои ҳисоб клик кунед';

  @override
  String get zikrCompletedMashAllah => 'Ба итмом расид! МашаАллах';

  @override
  String get zikrMeaningSubhanAllah => 'Аллоҳ ҳар бир ноқулайликдан устундир.';

  @override
  String get zikrMeaningAlhamdulillah => 'Ҳамду ситоиш аз они Худост.';

  @override
  String get zikrMeaningAllahuAkbar => 'Аллоҳ бузургтар аст.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Ҳеҷ худое ҷуз Аллоҳ нест.';

  @override
  String get zikrMeaningAstaghfirullah => 'Аллоҳдан мағфират сўрайман.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Ҳеҷ қудрат ва тавоноӣ ҷуз ба воситаи Аллоҳ нест.';

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
  String get offlineDownloadManager => 'Менеҷери зеркашии офлайн';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Захираи дохилии дастгоҳро холӣ кунед.';

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
  String get audioVoice => 'Овози аудио';

  @override
  String get audioVoiceMisharyAlafasy => 'Мард (Мишари Алафаси)';

  @override
  String get audioVoiceAbdulBaset => 'Мард (АбдулБасет)';

  @override
  String get audioVoiceSudais => 'Мард (Судайс)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Калибргузории қибла';

  @override
  String get compassSmoothing => 'Ҳамворкунии компас';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Офсети калибрченкунӣ';

  @override
  String currentOffset(Object offset) {
    return 'Айни замон: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Танзим кунед, ки агар қутбнамои шумо ба ислоҳи дастӣ ниёз дошта бошад. Қиматҳои мусбат бо ақрабаки соат гардиш мекунанд.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Диагностика';

  @override
  String get diagnosticsNotSet => 'Муқаррар нашудааст';

  @override
  String get diagnosticsPrayerProfile => 'Профили намоз';

  @override
  String get diagnosticsPrayerSource => 'Идораи намоз';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Фармоишгар / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Кунҷҳои фармоишии дастӣ (манбаи институтсионалӣ нест)';

  @override
  String get diagnosticsCloudDriven => 'Абри рондашуда';

  @override
  String get diagnosticsAdhanAudioAssets => 'Дороиҳои аудио азон';

  @override
  String get diagnosticsUiAudioAssets => 'Дороиҳои UI Audio';

  @override
  String get diagnosticsQuranAudioAssets => 'Воситаҳои аудиоии Қуръон';

  @override
  String get diagnosticsAudioAssets => 'Дороиҳои аудио';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count файлҳо';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Хониши манифест ноком шуд: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Маҳалликунонии маҳаллӣ';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count дастгирӣ карда мешавад';
  }

  @override
  String get diagnosticsQuranDataset => 'Маҷмӯи маълумотҳои Қуръон';

  @override
  String get diagnosticsQuranSurahs => 'Сурахои Куръон';

  @override
  String get diagnosticsQuranAyahs => 'Оятхои Куръон';

  @override
  String get diagnosticsQuranJuzMetadata => 'Маълумоти Қуръон Ҷуз';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Ҷадвалҳои абрӣ дар Supabase нестанд; Бозгашти маҷмӯӣ фаъол';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Санҷиши абр ноком шуд: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz метамаълумотҳо нест; бозгашти сохтории маҷмӯи фаъол';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Санҷиши сохтории абр ноком шуд: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Калибрченкунӣ лозим аст. Таҷҳизотро дар расм-8 гардиш кунед.';

  @override
  String get dailyVerse => 'Сурати ҳаррӯза';

  @override
  String get todaysIbadah => 'Ибодати имрӯза';

  @override
  String get quickAccess => 'Дастрасии зуд';

  @override
  String get assistant => 'Ёрдамчӣ';

  @override
  String get places => 'Ҷойҳо';

  @override
  String get library => 'Китобхона';

  @override
  String get analytics => 'Таҳлилҳо';

  @override
  String get dailyDuas => 'Дуои ҳаррӯза';

  @override
  String essentialDuas(String count) {
    return '$count дуоҳои муҳим';
  }

  @override
  String get duaUnavailableTitle => 'Дуоҳои тасдиқшуда ҳанӯз дастрас нестанд';

  @override
  String get duaUnavailableBody =>
      'Дуоҳои ҳаррӯзаи тасдиқшуда то ҳол бо ин дастгоҳ ҳамоҳанг карда нашудаанд. Ба манбаи абр пайваст шавед, то дуоҳои сарчашмаро ба ҷои бозгашти тасдиқнашуда бор кунед.';

  @override
  String get duaCategoryQuranic => 'Дуои Қуръон';

  @override
  String get duaCategoryMorningEvening => 'Субх ва шом';

  @override
  String get duaCategoryTasbih => 'Тасбих';

  @override
  String get duaCategoryProtection => 'Муҳофизат';

  @override
  String get duaCategoryBeginning => 'Оғозҳо';

  @override
  String get duaCategorySleep => 'Хоб';

  @override
  String get duaCategoryFoodDrink => 'Хӯрок ва нӯшокӣ';

  @override
  String get duaCategoryForgiveness => 'бахшидан';

  @override
  String get duaCategoryHome => 'Хона';

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
  String get islamicEducation => 'Таълими исломӣ';

  @override
  String get sukunAudioTitle => 'Манзараҳои садои Сукун';

  @override
  String get hadithCollections => 'Маҷмӯаи Ҳадис';

  @override
  String get hadithSourcePending => 'Манбаи тасдиқшуда интизор аст';

  @override
  String get hadithUnavailableTitle =>
      'Маҷмӯаҳои ҳадисҳои тасдиқшуда ҳанӯз дастрас нестанд';

  @override
  String get hadithUnavailableBody =>
      'Ин сохтмон то ҳол аз як канали ҳадисҳои берунии тасдиқнашуда вобаста аст. Баррасии ҳадисҳо то синхронизатсияи маҷмӯи додаҳои манбаъ ғайрифаъол мемонад.';

  @override
  String get paywallUnlockAll =>
      'Тамоми хусусиятҳоро барои сафари рӯҳонии худ кушоед';

  @override
  String get premiumProductUnavailable =>
      'Маҳсулоти Premium ҳоло дастрас нест. Лутфан баъдтар бори дигар кӯшиш кунед.';

  @override
  String get premiumPurchaseFailed =>
      'Харид анҷом дода нашуд. Лутфан бори дигар кӯшиш кунед.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'Саволҳо ва ҷавобҳои бемаҳдуд аз ҷониби AI';

  @override
  String get paywallFeature2Title => 'Офлайн бемаҳдуд';

  @override
  String get paywallFeature2Desc => 'Ҳама қироатҳоро зеркашӣ кунед';

  @override
  String get paywallFeature3Title => 'Тарҳҳои истисноӣ';

  @override
  String get paywallFeature3Desc => 'Мавзӯъҳо ва шрифтҳои олӣ';

  @override
  String get paywallFeature4Title => 'Бе реклама';

  @override
  String get paywallFeature4Desc => 'Рекламаҳои сифр';

  @override
  String get paywallGetAccess => 'Дастрасии якумрӣ гиред - \$1.00';

  @override
  String get restorePurchases => 'Барқарор кардани харидҳо';

  @override
  String get zakatCalculator => 'Ҳисобкунаки закот';

  @override
  String get zakatGold => 'Тилло (Алтин)';

  @override
  String get zakatSilver => 'Нуқра (Гүмүш)';

  @override
  String get zakatCashBank => 'Пули нақд / Бонк';

  @override
  String get zakatBusiness => 'Бизнес';

  @override
  String get zakatInvestments => 'Сармоягузориҳо';

  @override
  String get zakatWeightGrams => 'Вазн (г)';

  @override
  String get zakatPricePerGram => 'Нарх/г';

  @override
  String get zakatTotalAmount => 'Ҳамагӣ';

  @override
  String get zakatInventoryValue => 'Арзиши инвентаризатсия';

  @override
  String get zakatDebts => 'Қарзҳо';

  @override
  String get zakatTotal => 'Ҳамагӣ';

  @override
  String get calculateZakat => 'Ҳисоб кардани закот';

  @override
  String get nisabNotReached => 'Нисоб нарасид. Закот воҷиб нест.';

  @override
  String get totalZakat => 'Ҳама закот';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Нисоби: $nisab • Дороиҳо: $assets';
  }

  @override
  String get zakatGoldZakat => 'Закоти тилло';

  @override
  String get zakatSilverZakat => 'Закоти нуқра';

  @override
  String get zakatCashZakat => 'Закот пули нақд';

  @override
  String get zakatBusinessZakat => 'Закоти тиҷорат';

  @override
  String get zakatInvestmentZakat => 'Закоти сармоягузорӣ';

  @override
  String get chatbotGreeting =>
      'Ассалому алайкум! Ман ёвари исломии шумо ҳастам. Намоз, руза, закот ва ё ягон мавзуи исломиро аз ман пурсед.';

  @override
  String get chatbotLimitReached =>
      'Ба ҳадди ниҳоии дархости ҳаррӯза расид. Барои бемаҳдуд ба Premium навсозӣ кунед.';

  @override
  String get chatbotErrorMsg =>
      'Ман ҷавоб тавлид карда натавонистам. Лутфан бори дигар кӯшиш кунед.';

  @override
  String get chatbotOfflinePrompt =>
      'Пойгоҳи донишҳои исломии тасдиқшудаи офлайнӣ ҳоло ҳам такмил дода мешавад. Шумо ҳоло метавонед бозгашти офлайнро фаъол созед, аммо он танҳо паёмҳои маҳдуди бехатарро то омода шудани маҷмӯи додаҳои сарчашма нишон медиҳад.\n\nОё шумо мехоҳед бозгашти офлайнро фаъол созед?';

  @override
  String get chatbotOfflineSwitched =>
      'Бозгашти офлайнӣ фаъол аст. Ҷавобҳои тасдиқшудаи исломии маҳаллӣ ҳанӯз омода нестанд.';

  @override
  String get chatbotOfflineDownloadLabel => 'Бозгашти офлайнро фаъол созед';

  @override
  String get downloadPreparing => 'Зеркашӣ омода мешавад...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Downloading surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Ҳама сураҳо барои ин қироат аллакай бор карда шудаанд.';

  @override
  String get offlineQuranAudioPacks => 'Бастаҳои аудиоии офлайнии Қуръон';

  @override
  String storedOnDeviceMb(String size) {
    return 'Дар дастгоҳ захира шудааст: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total сураҳо зеркашӣ карда шуданд';
  }

  @override
  String get redownloadMissingRepair => 'Таъмир / Зеркашӣ гумшуда';

  @override
  String get downloadAction => 'Зеркашӣ кунед';

  @override
  String get resumeDownload => 'Боргириро идома диҳед';

  @override
  String get deleteDownloadedFiles => 'Файлҳои зеркашидашударо нест кунед';

  @override
  String get downloadCancelling => 'Бекор карда мешавад...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Зеркашӣ барои $reciter бекор карда шуд.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Зеркашӣ барои $reciter анҷом ёфт.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Зеркашӣ барои $reciter бо $failed сураҳои ноком анҷом ёфт ($downloaded/$total бор карда шудааст).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Файлҳои офлайнӣ барои $reciter нест карда шуданд.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Манбаъҳои аудиоии тасдиқшудаи Қуръон ҳоло дастрас нестанд.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Бастаи аудиоии тасдиқшудаи Қуръон нопурра аст ($available/$total). Насли абрро нав кунед ва бори дигар кӯшиш кунед.';
  }

  @override
  String get chatbotHint => 'Савол диҳед...';

  @override
  String get chatbotThinking => 'Фикр кардан...';

  @override
  String get sukunMixerSubtitle => 'Омехтагари табиат ва Қуръон';

  @override
  String get audioPlayFailed => 'Навозиши аудио ноком шуд';

  @override
  String get sukunNatureLabel => 'Сукун (Табиат)';

  @override
  String get sukunRainOfMercy => 'Борони раҳмат';

  @override
  String get sukunGardenOfPeace => 'Боги сулх';

  @override
  String get sukunMidnightCalm => 'Нисфи шаб ором';

  @override
  String get sukunOceanTawheed => 'Тавҳиди уқёнус';

  @override
  String get sukunUnavailableTitle => 'Манзараҳои садоӣ дастрас нестанд';

  @override
  String get sukunUnavailableBody =>
      'Ин сохтмон дороиҳои зарурии садои Сукунро ҳанӯз дар бар намегирад.';

  @override
  String get prayerCompletion => 'Анҷоми намоз';

  @override
  String get streaks => 'Стрейкҳо';

  @override
  String get dayStreak => 'Давраи рӯзона';

  @override
  String get bestStreak => 'Беҳтарин силсила';

  @override
  String get chatbotCloudAiLabel => 'Абри AI';

  @override
  String get chatbotLocalAiLabel => 'Бозгашти офлайнӣ';

  @override
  String get chatbotUseCloudAi => 'Истифодаи Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Бозгашти офлайнро фаъол созед';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count чап шуд';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'API Cloud танзим карда нашудааст. Ҳидоятҳои офлайнии тасдиқшудаи исломӣ ҳанӯз дастрас нестанд.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Ҳидоятҳои маҳаллии исломии тасдиқшуда ҳанӯз дастрас нест. Барои ҷавобҳои манбаъ ба Cloud AI гузаред.';

  @override
  String get mosques => 'Масҷидҳо';

  @override
  String get halalFood => 'Хӯроки ҳалол';

  @override
  String get placesSearchArea => 'Ин минтақаро ҷустуҷӯ кунед';

  @override
  String get nearbyMosques => 'Масҷидҳои наздик';

  @override
  String get islamicSchools => 'Мактабҳои исломӣ';

  @override
  String placesFoundCount(String count) {
    return '$count ёфт шуд';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance км дуртар';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Хатои API: $statusCode';
  }

  @override
  String get placesNetworkError =>
      'Хатогии шабака. Лутфан бори дигар кӯшиш кунед.';

  @override
  String get placesLocationRequiredTitle => 'Ҷойгиршавӣ талаб карда мешавад';

  @override
  String get placesLocationRequiredBody =>
      'Аввалан як макон таъин кунед, то масҷидҳои наздик, ғизои ҳалол ва мактабҳои исломиро дақиқ ҷустуҷӯ кунанд.';

  @override
  String get placesMapTilesUnavailableTitle =>
      'Плитаҳои харита дастрас нестанд';

  @override
  String get placesMapTilesUnavailableBody =>
      'Манбаи сафҳаи тасдиқшудаи харита барои ин сохтмон ҳанӯз танзим нашудааст. Ҷойҳои ҳамсоя ҳоло ҳам метавонанд аз макони захирашудаи шумо бор кунанд.';

  @override
  String get placesDataSourceUnavailableTitle => 'Маълумоти ҷойҳо дастрас нест';

  @override
  String get placesDataSourceUnavailableBody =>
      'Нуқтаи ниҳоии маълумотҳои тасдиқшудаи ҷойҳо барои ин сохтмон ҳанӯз танзим нашудааст. Пеш аз фаъол кардани ҷустуҷӯи наздик PLACES_OVERPASS_API_URL-ро ба прокси ё провайдери тасдиқшуда насб кунед.';

  @override
  String get unknownPlaceName => 'Номи номаълум';

  @override
  String get islamicPlaceFallback => 'Ҷойи исломӣ';

  @override
  String get asmaMeaning1 => 'Раҳмон';

  @override
  String get asmaMeaning2 => 'Раҳмон';

  @override
  String get asmaMeaning3 => 'Подшоҳ / Худованди абадӣ';

  @override
  String get asmaMeaning4 => 'Муқаддастарин';

  @override
  String get asmaMeaning5 => 'Манбаи сулҳ';

  @override
  String get asmaMeaning6 => 'Офарандаи амният';

  @override
  String get asmaMeaning7 => 'The Guardian';

  @override
  String get asmaMeaning8 => 'Қиматбаҳо / Бузургтарин';

  @override
  String get asmaMeaning9 => 'Маҷбуркунанда';

  @override
  String get asmaMeaning10 => 'Беҳтарин';

  @override
  String get asmaMeaning11 => 'Офаридгор';

  @override
  String get asmaMeaning12 => 'Офарандаи фармоиш';

  @override
  String get asmaMeaning13 => 'Шаклдиҳандаи Зебоӣ';

  @override
  String get asmaMeaning14 => 'бахшанда';

  @override
  String get asmaMeaning15 => 'Муттасир';

  @override
  String get asmaMeaning16 => 'Офарандаи ҳама';

  @override
  String get asmaMeaning17 => 'Парводор';

  @override
  String get asmaMeaning18 => 'Кушодкунанда';

  @override
  String get asmaMeaning19 => 'Донои ҳама';

  @override
  String get asmaMeaning20 => 'The Constrictor';

  @override
  String get asmaMeaning21 => 'Раоҳдиҳанда';

  @override
  String get asmaMeaning22 => 'Абазер';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'Шараф';

  @override
  String get asmaMeaning25 => 'Хуркунанда';

  @override
  String get asmaMeaning26 => 'Шунавои ҳама';

  @override
  String get asmaMeaning27 => 'Дидани ҳама';

  @override
  String get asmaMeaning28 => 'Довар';

  @override
  String get asmaMeaning29 => 'Адолат';

  @override
  String get asmaMeaning30 => 'Нозук';

  @override
  String get asmaMeaning31 => 'Ҳама огоҳ';

  @override
  String get asmaMeaning32 => 'Пешбарӣ';

  @override
  String get asmaMeaning33 => 'Бозидор';

  @override
  String get asmaMeaning34 => 'Бузургандаи бахшанда';

  @override
  String get asmaMeaning35 => 'Мукофоти шукрона';

  @override
  String get asmaMeaning36 => 'Бтарин';

  @override
  String get asmaMeaning37 => 'Беҳтарин';

  @override
  String get asmaMeaning38 => 'Ҳифзкунанда';

  @override
  String get asmaMeaning39 => 'Низодиҳанда';

  @override
  String get asmaMeaning40 => 'Ҳисобкунанда';

  @override
  String get asmaMeaning41 => 'Аълоҳазрат';

  @override
  String get asmaMeaning42 => 'Саховатманд';

  @override
  String get asmaMeaning43 => 'Бедор';

  @override
  String get asmaMeaning44 => 'Иҷобаткунандаи дуо';

  @override
  String get asmaMeaning45 => 'Ҳама фаҳмо';

  @override
  String get asmaMeaning46 => 'Хакими комил';

  @override
  String get asmaMeaning47 => 'Дӯстдошта';

  @override
  String get asmaMeaning48 => 'Шаъну шараф';

  @override
  String get asmaMeaning49 => 'Эҳё';

  @override
  String get asmaMeaning50 => 'Шоҳид';

  @override
  String get asmaMeaning51 => 'Ҳақиқат';

  @override
  String get asmaMeaning52 => 'Мусоиди ҳама кофӣ';

  @override
  String get asmaMeaning53 => 'Соҳиби ҳама нерӯ';

  @override
  String get asmaMeaning54 => 'Қудратманд';

  @override
  String get asmaMeaning55 => 'Ҳимоятгар';

  @override
  String get asmaMeaning56 => 'Ситоишшуда';

  @override
  String get asmaMeaning57 => 'Баҳогузор';

  @override
  String get asmaMeaning58 => 'Оригинатор';

  @override
  String get asmaMeaning59 => 'Барқароркунанда';

  @override
  String get asmaMeaning60 => 'Ҳаётбахш';

  @override
  String get asmaMeaning61 => 'Ҳаётгиранда';

  @override
  String get asmaMeaning62 => 'Зиндагӣ';

  @override
  String get asmaMeaning63 => 'Барои худтаъминкунанда';

  @override
  String get asmaMeaning64 => 'The Finder';

  @override
  String get asmaMeaning65 => 'Шариф';

  @override
  String get asmaMeaning66 => 'Ягона';

  @override
  String get asmaMeaning67 => 'Як';

  @override
  String get asmaMeaning68 => 'Оне, ки ҳама ҷустуҷӯ мекунанд';

  @override
  String get asmaMeaning69 => 'Қудратманд';

  @override
  String get asmaMeaning70 => 'Офаридгори тамоми қудрат';

  @override
  String get asmaMeaning71 => 'Экспедитер';

  @override
  String get asmaMeaning72 => 'Таъхиркунанда';

  @override
  String get asmaMeaning73 => 'Аввал';

  @override
  String get asmaMeaning74 => 'Охирин';

  @override
  String get asmaMeaning75 => 'Манифест';

  @override
  String get asmaMeaning76 => 'Пинҳон';

  @override
  String get asmaMeaning77 => 'Губернатор';

  @override
  String get asmaMeaning78 => 'Оли Олӣ';

  @override
  String get asmaMeaning79 => 'Неккор';

  @override
  String get asmaMeaning80 => 'Роҳнамои тавба';

  @override
  String get asmaMeaning81 => 'Интиқомгир';

  @override
  String get asmaMeaning82 => 'бахшанда';

  @override
  String get asmaMeaning83 => 'Клемент';

  @override
  String get asmaMeaning84 => 'Соҳиб / Ҳокими Ҳама';

  @override
  String get asmaMeaning85 => 'Соҳиби ҷалол ва файз';

  @override
  String get asmaMeaning86 => 'Одил';

  @override
  String get asmaMeaning87 => 'Ҷамъоваранда';

  @override
  String get asmaMeaning88 => 'Бой';

  @override
  String get asmaMeaning89 => 'Бойкунанда';

  @override
  String get asmaMeaning90 => 'Пешгирикунандаи зарар';

  @override
  String get asmaMeaning91 => 'Барандаи зарар';

  @override
  String get asmaMeaning92 => 'Беҳтарин неъматҳо';

  @override
  String get asmaMeaning93 => 'Нур';

  @override
  String get asmaMeaning94 => 'Роҳнамо';

  @override
  String get asmaMeaning95 => 'Оригинатор';

  @override
  String get asmaMeaning96 => 'Ҷовидон';

  @override
  String get asmaMeaning97 => 'Ворис';

  @override
  String get asmaMeaning98 => 'Роҳнамои одилтарин';

  @override
  String get asmaMeaning99 => 'Сабр';
}
