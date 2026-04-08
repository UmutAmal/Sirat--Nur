// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bulgarian (`bg`).
class AppLocalizationsBg extends AppLocalizations {
  AppLocalizationsBg([String locale = 'bg']) : super(locale);

  @override
  String get appTitle => 'Пътят на Аллах';

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
  String get locationServiceDisabled => 'Location service is disabled.';

  @override
  String get locationPermissionDenied => 'Location permission denied.';

  @override
  String citiesCount(String count) {
    return '$count cities';
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
  String get retry => 'Опитайте отново';

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
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
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
  String get audioVoice => 'Audio Voice';

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
  String get diagnosticsNotSet => 'Not set';

  @override
  String get diagnosticsPrayerProfile => 'Prayer Profile';

  @override
  String get diagnosticsPrayerSource => 'Prayer Authority';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manual custom angles (no institutional source)';

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
      'Calibration required. Rotate device in figure-8.';

  @override
  String get dailyVerse => 'Daily Verse';

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
  String get analytics => 'Analytics';

  @override
  String get dailyDuas => 'Daily Duas';

  @override
  String essentialDuas(String count) {
    return '$count essential duas';
  }

  @override
  String get islamicEducation => 'Islamic Education';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Hadith Collections';

  @override
  String get paywallUnlockAll =>
      'Unlock all features for your spiritual journey';

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
      'Downloading the Local AI model requires ~1.5 GB of storage. Once downloaded, Neural Assistant will work completely offline without limits. \n\nWould you like to start the download?';

  @override
  String get chatbotOfflineSwitched =>
      'Switched to simulated offline local LLM mode.';

  @override
  String get chatbotOfflineDownloadLabel => 'Download & Apply';

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
  String get sukunMixerSubtitle => 'Nature & Qur\'an Mixer';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (Nature)';

  @override
  String get sukunRainOfMercy => 'Rain of Mercy';

  @override
  String get sukunGardenOfPeace => 'Garden of Peace';

  @override
  String get sukunMidnightCalm => 'Midnight Calm';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Soundscapes unavailable';

  @override
  String get sukunUnavailableBody =>
      'This build does not include the required Sukun soundscape assets yet.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Day streak';

  @override
  String get bestStreak => 'Best streak';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Local AI';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Download Local AI (1.5 GB)';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API not configured. Please switch to Local AI.';

  @override
  String get chatbotLocalNoInfo =>
      '[LOCAL AI] I don\'t have information on this topic yet. You can ask about prayer, fasting, zakat, hajj, faith, or ethics.';

  @override
  String get mosques => 'Mosques';

  @override
  String get halalFood => 'Halal Food';

  @override
  String get placesSearchArea => 'Search this area';

  @override
  String get nearbyMosques => 'Nearby Mosques';

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
    return 'API Error: $statusCode';
  }

  @override
  String get placesNetworkError => 'Network error. Please try again.';

  @override
  String get unknownPlaceName => 'Unknown Name';

  @override
  String get islamicPlaceFallback => 'Islamic Place';
}
