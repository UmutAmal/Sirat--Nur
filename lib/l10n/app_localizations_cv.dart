// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chuvash (`cv`).
class AppLocalizationsCv extends AppLocalizations {
  AppLocalizationsCv([String locale = 'cv']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Ислам ҫутӑ ҫулӗ';

  @override
  String get home => 'Кил';

  @override
  String get quran => 'Коран';

  @override
  String get qibla => 'Кибла';

  @override
  String get zikr => 'Зикр';

  @override
  String get calendar => 'Календарь';

  @override
  String get settings => 'Настройкӑсем';

  @override
  String get nextPrayer => 'Тепӗр кӗлӗ';

  @override
  String get prayerTimes => 'Кӗлӗ вӑхӑчӗ';

  @override
  String get continueReading => 'Малалла вулӑр';

  @override
  String get getLifetimePro => 'Lifetime Pro илӗр';

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
  String get dataStorage => 'Даннӑйсем тата упрамалли вырӑн';

  @override
  String get clearCache => 'Кэша тасат';

  @override
  String get cacheClearedSuccess => 'Кэш ӑнӑҫлӑн тасатнӑ';

  @override
  String get location => 'Вырӑн';

  @override
  String get language => 'Чӗлхе';

  @override
  String get selectLanguage => 'Чӗлхене суйласа илӗр';

  @override
  String get searchLanguage => '180 ытла чӗлхе шыра...';

  @override
  String get systemDefault => 'Система стандартлӑ';

  @override
  String get currentLocation => 'Хальхи вырӑн (GPS)';

  @override
  String get locationServiceDisabled => 'Вырӑн служби ӗҫлеме пӑрахнӑ.';

  @override
  String get locationPermissionDenied => 'Вырӑн ирӗкне йышӑнман.';

  @override
  String get locationDetectionFailed =>
      'Сирӗн вырӑна тупаймарӑм. Хулана алӑпа суйласа илӗр е тепӗр хут тытӑнса пӑхӑр.';

  @override
  String citiesCount(String count) {
    return '$count хуласем';
  }

  @override
  String get search => 'Шырав';

  @override
  String get searchHint => 'Шырав...';

  @override
  String get noResults => 'Результатсем тупӑнман';

  @override
  String get loading => 'Загрузка...';

  @override
  String get error => 'Йӑнӑш';

  @override
  String get appErrorOccurred => 'Йӑнӑш пулнӑ';

  @override
  String get appUnknownError => 'Паллӑ мар йӑнӑш';

  @override
  String get quranLoadFailed =>
      'Quran content could not be loaded. Please try again.';

  @override
  String get retry => 'Тепӗр хут тытӑнса пӑхӑр';

  @override
  String get refreshAction => 'Ҫӗнет';

  @override
  String get cancel => 'Пӑрахӑç ту';

  @override
  String get save => 'Хӑтар';

  @override
  String get delete => 'Хурат';

  @override
  String get edit => 'Тӳрлет';

  @override
  String get close => 'Хуп';

  @override
  String get ok => 'ЮРӖ';

  @override
  String get yes => 'Çапла';

  @override
  String get no => 'Çук';

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
  String get reading => 'Вулани';

  @override
  String get recitation => 'Recitation';

  @override
  String get translation => 'Translation';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Loading tafsir...';

  @override
  String get tafsirSourceLabel => 'Tafsir source';

  @override
  String get tafsirNoSurahFound => 'No tafsir found for this surah.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'No tafsir found for ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir could not be loaded.';

  @override
  String get tafsirNoTextForAyah => 'No tafsir text for this ayah.';

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
      'The selected tafsir source returned no entries.';

  @override
  String get tafsirCacheUnavailable =>
      'Verified tafsir is not available offline yet. Sync a sourced tafsir dataset before browsing.';

  @override
  String get bookmarks => 'Закладкӑсем';

  @override
  String get addBookmark => 'Add Bookmark';

  @override
  String get removeBookmark => 'Remove Bookmark';

  @override
  String get lastRead => 'Юлашки хут вуланӑ';

  @override
  String get dailyZikr => 'Кулленхи Зикр';

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
  String get liveTv => 'Тӳрӗ эфир';

  @override
  String get watchLive => 'Watch Live';

  @override
  String get streamError => 'Юхӑм йӑнӑшӗ';

  @override
  String get reload => 'Перезагрузка';

  @override
  String get openInYoutube => 'YouTube-ра уҫӑр';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Fasting';

  @override
  String get quranReading => 'Quran Reading';

  @override
  String get playSurahAudio => 'Сура аудио выляса парӑр';

  @override
  String get pauseSurahAudio => 'Пауза сура аудио';

  @override
  String get revelationMeccan => 'Мекка';

  @override
  String get revelationMedinan => 'Медина';

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
  String get monthlyProgress => 'Уйӑхри ӗҫсем';

  @override
  String get statistics => 'Статистика';

  @override
  String get hijriCalendar => 'Hijri Calendar';

  @override
  String get gregorianCalendar => 'Григориан календарӗ';

  @override
  String get today => 'Today';

  @override
  String get tomorrow => 'Ыран';

  @override
  String get yesterday => 'Ӗнер';

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
  String get degrees => 'градус';

  @override
  String get north => 'Çурçӗр';

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
  String get qiblaLocationRequiredTitle => 'Кибла валли кирлӗ вырӑн';

  @override
  String get qiblaLocationRequiredBody =>
      'Кибла компасӗпе усӑ куриччен хӑвӑрӑн чӑн-чӑн вырӑна палӑртӑр, ҫапла вара ҫул-йӗре тӗрӗс шутласа кӑларма пулать.';

  @override
  String get adhanNotificationChannelName => 'Адхан пӗлтерӗвӗсем';

  @override
  String get adhanNotificationChannelDescription =>
      'Кӗлӗ вӑхӑчӗ азан сасӑпа систерет.';

  @override
  String get notifications => 'Пӗлтерӳсем';

  @override
  String get prayerNotifications => 'Кӗлӗ пӗлтерӗвӗсем';

  @override
  String get enableNotifications => 'Пӗлтерӳсене ӗҫлеттер';

  @override
  String get notificationTime => 'Пӗлтерӳ вӑхӑчӗ';

  @override
  String get beforePrayer => 'minutes before prayer';

  @override
  String get theme => 'Theme';

  @override
  String get lightMode => 'Light Mode';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get systemTheme => 'Система теми';

  @override
  String get about => 'About';

  @override
  String get version => 'Version';

  @override
  String get privacyPolicy => 'Конфиденциаллӑх политики';

  @override
  String get termsOfService => 'Terms of Service';

  @override
  String get contactUs => 'Contact Us';

  @override
  String get rateApp => 'Ҫак приложенине хак парӑр';

  @override
  String get shareApp => 'Ҫак приложенине пайла';

  @override
  String shareAppMessage(String appName, String url) {
    return '$appName: Ислам пурнӑҫ йӗркин чи лайӑх приложенине пӑхӑр! $url';
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
  String get checkConnection => 'Ҫыхӑнӑва тӗрӗслӗр';

  @override
  String get premium => 'Преми';

  @override
  String get upgradeToPro => 'Pro шайне ҫӗнетмелле';

  @override
  String get proFeatures => 'Профессионаллӑ уйрӑмлӑхсем';

  @override
  String get removeAds => 'Пӗлтерӳсене кӑларса пӑрахӑр';

  @override
  String get unlockAll => 'Пур контента та уҫӑр';

  @override
  String get exclusiveContent => 'Эксклюзивлӑ контент';

  @override
  String get welcome => 'Ырӑ сунса кӗтетпӗр';

  @override
  String get getStarted => 'Get Started';

  @override
  String get skip => 'Сиктерсе хӑвар';

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
  String get onboarding2Desc => 'Сирӗн вырӑна кура тӗрӗс кӗлӗ вӑхӑчӗсем';

  @override
  String get onboarding3Title => 'Quran & More';

  @override
  String get onboarding3Desc =>
      'Read Quran, track your reading, and explore Islamic content';

  @override
  String get dhikrLibrary => 'Дхикр библиотеки';

  @override
  String get resetCounter => 'Reset Counter';

  @override
  String get changeTarget => 'Тӗллеве улӑштар';

  @override
  String get newTarget => 'Ҫӗнӗ тӗллев';

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
  String get dailyChecklist => 'Кулленхи тӗрӗслев списокӗ';

  @override
  String get qazaDebt => 'Каза (Парӑм)';

  @override
  String get resetQazaData => 'Qaza даннӑйӗсене ҫӗнӗрен ларт';

  @override
  String get resetQazaDebtQuestion => 'Каза парӑмне ҫӗнӗрен лартмалла-и?';

  @override
  String get rawatib => 'Rawatib';

  @override
  String get tahajjud => 'Tahajjud';

  @override
  String get dailyProgress => 'Daily Progress';

  @override
  String get mandatoryPrayers => 'Обязательнӑй кӗлӗсем';

  @override
  String get sunnahAndOthers => 'Сунна тата ыттисем';

  @override
  String get spiritualGrowth => 'Чун-чӗре ӳсӗмӗ';

  @override
  String get mandatoryDuty => 'Обязательнӑй тивӗҫ';

  @override
  String get totalPrayers => 'Пӗтӗмӗшле кӗлӗсем';

  @override
  String get prayerDebt => 'Кӗлӗ парӑмӗ';

  @override
  String get fastingDebt => 'Типӗ тытнӑ парӑм';

  @override
  String get reset => 'Сброс';

  @override
  String get days => 'Кунсем';

  @override
  String get premiumIntegrity => 'Премиум тӗрӗслӗхӗ';

  @override
  String get recheckPremium => 'Recheck Premium Status';

  @override
  String get syncStore => 'Sync with the store to confirm your entitlement.';

  @override
  String get checkingPremium => 'Премиум статусне тӗрӗслетӗп...';

  @override
  String get premiumVerified => 'Premium verified.';

  @override
  String get premiumNotFound => 'Premium not found.';

  @override
  String premiumRefreshError(Object error) {
    return 'Could not refresh premium status: $error';
  }

  @override
  String get offlineDownloadManager => 'Офлайн скачать менеджерӗ';

  @override
  String get manageDatasets =>
      'Пысӑк офлайн аудио тата даннӑйсен пуххисене ертсе пырӑр.';

  @override
  String get freeStorage => 'Шалти хатӗр упрамалли вырӑна пушатӑр.';

  @override
  String get quranIntegrity => 'Коран тӗрӗслӗхӗ';

  @override
  String get checkQuranDb => 'Коран базине тӗрӗслӗр';

  @override
  String get verifyQuranContent => '114 сурӑпа 6236 аят тӗрӗслемелле.';

  @override
  String get checkingQuranDb => 'Checking Quran database...';

  @override
  String get okLabel => 'ЮРӖ';

  @override
  String get incomplete => 'Тулли мар';

  @override
  String get notSeeded => 'Вӑрлӑх лартман';

  @override
  String get quranDbStatus => 'Quran Database Status';

  @override
  String statusLabel(Object status) {
    return 'Status: $status';
  }

  @override
  String surahsCount(Object count) {
    return 'Сурасем: $count (кӗтнӗ 114)';
  }

  @override
  String ayahsCount(Object count) {
    return 'Аяхсем: $count (кӗтнӗ 6236)';
  }

  @override
  String missingArabic(Object count) {
    return 'Араб чӗлхи ҫук: $count';
  }

  @override
  String missingTurkish(Object count) {
    return 'Ҫухалнӑ турккӑ: $count';
  }

  @override
  String dbVersion(Object version) {
    return 'БД версийӗ: $version';
  }

  @override
  String dbPath(Object path) {
    return 'Ҫул: $path';
  }

  @override
  String quranCheckFailed(Object error) {
    return 'Quran check failed: $error';
  }

  @override
  String get audioVoice => 'Аудио сасӑ';

  @override
  String get audioVoiceMisharyAlafasy => 'Male (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Male (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Male (Sudais)';

  @override
  String get fajrAngle => 'Фаджр кӗтесӗ';

  @override
  String get ishaAngle => 'Иша Англ';

  @override
  String get qiblaCalibration => 'Qibla Calibration';

  @override
  String get compassSmoothing => 'Компас тикӗслевӗ';

  @override
  String get reduceSensorJitter => 'Ҫирӗпрех йӗп валли сенсор дрожьне чакарӑр.';

  @override
  String get calibrationOffset => 'Калибровка офсетӗ';

  @override
  String currentOffset(Object offset) {
    return 'Хальхи: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Сирӗн компаса алӑпа тӳрлетмелле пулсан, ӑна тӳрлетӗр. Ырӑ хаксем сехет йӗппи ҫаврӑннӑ май ҫаврӑнаҫҫӗ.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Малтанхи настройка процесне тепӗр хут пурнӑҫлӑр.';

  @override
  String get diagnostics => 'Diagnostics';

  @override
  String get diagnosticsNotSet => 'Not set';

  @override
  String get diagnosticsPrayerProfile => 'Кӗлӗ профилӗ';

  @override
  String get diagnosticsPrayerSource => 'Кӗлӗ влаҫӗ';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Ятарлӑ / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Алӑпа тунӑ ятарлӑ кӗтессем (институци ҫӑлкуҫӗ ҫук)';

  @override
  String diagnosticsPrayerHybridSource(String sourceName, String madhab) {
    return '$sourceName меслет пользователь суйласа илнӗ $madhab Asr настройкипе';
  }

  @override
  String diagnosticsPrayerRegionalFallbackSource(String sourceName) {
    return '$sourceName усӑ курса регионти каялла тавӑрасси. Вырӑнти кӗлӗ вӑхӑчӗсене хӑвӑрӑн мечӗтпе е официаллӑ тӗн органӗпе ҫирӗплетӗр.';
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
      'Supabase-ра пӗлӗт таблицисем ҫук; ҫыхӑнтарнӑ каялла таврӑнасси активлӑ';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Пӗлӗтри метаданнӑйсем ҫук; ҫыхӑнтарнӑ структурӑллӑ каялла таврӑнасси активлӑ';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Cloud structural check failed: $error';
  }

  @override
  String get healthCheckDesc =>
      'Сывлӑх тӗрӗслевӗсене туса тытӑм статусне пӑхӑр.';

  @override
  String get qiblaAligned => 'Кибла шайлашӑвӗ';

  @override
  String get rotateToFindQibla => 'Киблӑна тупма ҫаврӑнӑр';

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
  String get islamicEducation => 'Ислам вӗрентӗвӗ';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Hadith Collections';

  @override
  String get hadithSourcePending => 'Verified source pending';

  @override
  String get hadithUnavailableTitle =>
      'Тӗрӗсленӗ хадис пуххисем хальлӗхе ҫук-ха';

  @override
  String get hadithUnavailableBody =>
      'Ку стройка халӗ те тӗрӗслемен тулашри хадис каналӗнчен килет. Хадис ҫине пӑхасси ҫӑлкуҫ даннӑйӗсен пуххине синхронизациличчен ӗҫлеме чарӑнать.';

  @override
  String get paywallUnlockAll =>
      'Unlock all features for your spiritual journey';

  @override
  String get premiumProductUnavailable =>
      'Premium product is not available right now. Please try again later.';

  @override
  String get premiumPurchaseFailed =>
      'Туянӑва вӗҫлеме май килмерӗ. Тархасшӑн, тепӗр хут тытӑнса пӑхӑр.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'Unlimited AI-powered Q&A';

  @override
  String get paywallFeature2Title => 'Unlimited Offline';

  @override
  String get paywallFeature2Desc => 'Download all recitations';

  @override
  String get paywallFeature3Title => 'Exclusive Designs';

  @override
  String get paywallFeature3Desc => 'Premium themes & fonts';

  @override
  String get paywallFeature4Title => 'Ad-Free';

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
      'Тӗрӗсленӗ офлайн ислам пӗлӗвӗн базине халӗ те хатӗрлеҫҫӗ. Халӗ эсир офлайн каялла таврӑнассине ӗҫлеттерме пултаратӑр, анчах та вӑл ҫӑлкуҫ даннӑйӗсен пуххи хатӗр пуличчен хӑрушсӑрлӑх хыпарӗсене ҫеҫ кӑтартӗ.\n\nЭсир офлайн каялла тавӑрассине ӗҫлеттересшӗн-и?';

  @override
  String get chatbotOfflineSwitched =>
      'Офлайн каялла таврӑнма май панӑ. Тӗрӗсленӗ вырӑнти ислам хуравӗсем хальлӗхе хатӗр мар-ха.';

  @override
  String get chatbotOfflineDownloadLabel => 'Офлайн ҫыхӑнӑвне ӗҫлеттер';

  @override
  String get downloadPreparing => 'Скачать тума хатӗрленетпӗр...';

  @override
  String downloadingSurah(String surah, String total) {
    return '$surah / $total сурӑна скачать тӑватӑп';
  }

  @override
  String get downloadCompleted =>
      'Ҫак вулакан валли пур сурӑсене те скачать тунӑ ӗнтӗ.';

  @override
  String get offlineQuranAudioPacks => 'Офлайн Коран аудио пакетӗсем';

  @override
  String storedOnDeviceMb(String size) {
    return 'Stored on device: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total сурӑсем скачать тунӑ';
  }

  @override
  String get redownloadMissingRepair => 'Юсав / Скачать Ҫук';

  @override
  String get downloadAction => 'Уçласа ил';

  @override
  String get resumeDownload => 'Малалла скачать ту';

  @override
  String get deleteDownloadedFiles => 'Скачать тунӑ файлсене пӗтер';

  @override
  String get cancelDownloadAction => 'Скачать тума пӑрахӑҫла';

  @override
  String get downloadCancelling => 'Пӑрахӑҫлатӑп...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return '$reciter валли скачать пӑрахӑҫланӑ.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return '$reciter валли скачать туса пӗтернӗ.';
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
      'Аудио янӑрама май килмерӗ. Ҫыхӑнӑва тӗрӗслӗр.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Verified Quran audio pack is incomplete ($available/$total). Try again after the audio catalog is updated.';
  }

  @override
  String get chatbotHint => 'Ask a question...';

  @override
  String get chatbotThinking => 'Thinking...';

  @override
  String get sukunMixerSubtitle => 'Ҫутҫанталӑк тата Коран хутӑшӗ';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Сукун (Природа)';

  @override
  String get sukunRainOfMercy => 'Ырӑлӑх ҫумӑрӗ';

  @override
  String get sukunGardenOfPeace => 'Тӑнӑҫлӑх пахчи';

  @override
  String get sukunMidnightCalm => 'Ҫурҫӗр лӑпкӑлӑхӗ';

  @override
  String get sukunOceanTawheed => 'Океан тавхидӗ';

  @override
  String get sukunUnavailableTitle => 'Сасӑ пейзажӗсем ҫук';

  @override
  String get sukunUnavailableBody =>
      'Ку сборкӑра хальлӗхе кирлӗ Sukun soundscape активӗсем ҫук-ха.';

  @override
  String get prayerCompletion => 'Кӗлӗ вӗҫленни';

  @override
  String get streaks => 'Йӑрӑмсем';

  @override
  String get dayStreak => 'Кун йӗрӗ';

  @override
  String get bestStreak => 'Best streak';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'Cloud AI (Gemini) усӑ курӑр';

  @override
  String get chatbotDownloadLocalAi => 'Enable Offline Fallback';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Пӗлӗт API-не настройка туман. Тӗрӗсленӗ офлайн ислам ҫул-йӗрӗ хальлӗхе ҫук-ха.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Тӗрӗсленӗ вырӑнти ислам ҫул-йӗрӗ хальлӗхе ҫук-ха. Ҫӑлкуҫсенчен илнӗ хуравсемшӗн Cloud AI ҫине куҫӑр.';

  @override
  String get mosques => 'Mosques';

  @override
  String get halalFood => 'Halal Food';

  @override
  String get placesSearchArea => 'Ку тӑрӑхра шырӑр';

  @override
  String get nearbyMosques => 'Ҫывӑхри мечӗтсем';

  @override
  String get islamicSchools => 'Islamic Schools';

  @override
  String placesFoundCount(String count) {
    return '$count тупнӑ';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km away';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API йӑнӑшӗ: $statusCode';
  }

  @override
  String get placesNetworkError =>
      'Сеть йӑнӑшӗ. Тархасшӑн, тепӗр хут тытӑнса пӑхӑр.';

  @override
  String get placesLocationRequiredTitle => 'Вырӑн кирлӗ';

  @override
  String get placesLocationRequiredBody =>
      'Малтан вырӑн палӑртӑр, вара ҫывӑхри мечӗтсене, халал апат-ҫимӗҫне тата ислам шкулӗсене тӗрӗс шырама пулать.';

  @override
  String get placesMapTilesUnavailableTitle => 'Карттӑ плиткисем ҫук';

  @override
  String get placesMapTilesUnavailableBody =>
      'Ку сборка валли тӗрӗсленӗ карттӑ плиткин ҫӑлкуҫӗ хальлӗхе настройка туман-ха. Ҫывӑхри вырӑнсем сирӗн упранӑ вырӑнтан ҫаплах ҫӗклеме пултараҫҫӗ.';

  @override
  String get placesDataSourceUnavailableTitle => 'Даннӑйсем ҫук вырӑнсем';

  @override
  String get placesDataSourceUnavailableBody =>
      'Тӗрӗсленӗ вырӑнсен даннӑйӗсен вӗҫӗ ҫак сборка валли хальлӗхе настройка туман-ха. Ҫывӑхри шырав ӗҫне пуҫличчен PLACES_OVERPASS_API_URL ҫирӗплетнӗ прокси е провайдер ҫине лартӑр.';

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
