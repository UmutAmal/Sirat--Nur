// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

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
  String get fajr => 'Фаджр';

  @override
  String get sunrise => 'Схід сонця';

  @override
  String get dhuhr => 'Зухр';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Магріб';

  @override
  String get isha => 'Іша';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Час для $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Настав час помолитися $prayerName.';
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
  String get locationServiceDisabled => 'Службу локації вимкнено.';

  @override
  String get locationPermissionDenied =>
      'Дозвіл на місцезнаходження відмовлено.';

  @override
  String citiesCount(String count) {
    return '$count міст';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'No results found';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get retry => 'Retry';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

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
  String get no => 'No';

  @override
  String get surah => 'Surah';

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
  String get hadithCollection => 'Збірка хадисів';

  @override
  String get hadithBooks => 'Книги хадисів';

  @override
  String get searchHadith => 'Пошук хадисів';

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
  String get openInYoutube => 'Відкрити в YouTube';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Fasting';

  @override
  String get quranReading => 'Quran Reading';

  @override
  String get prayers => 'Prayers';

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
    return 'Перегляньте $appName: найкращий додаток для ісламського способу життя! $url';
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
  String get diagnosticsNotSet => 'Не встановлено';

  @override
  String get diagnosticsPrayerProfile => 'Молитовний профіль';

  @override
  String get diagnosticsPrayerSource => 'Авторитет молитви';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manual custom angles (no institutional source)';

  @override
  String get diagnosticsCloudDriven => 'Керований хмарою';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Quran Audio Assets';

  @override
  String get diagnosticsAudioAssets => 'Аудіоактиви';

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
  String get dailyVerse => 'Щоденний вірш';

  @override
  String get todaysIbadah => 'Сьогодні Ібада';

  @override
  String get quickAccess => 'Швидкий доступ';

  @override
  String get assistant => 'помічник';

  @override
  String get places => 'Місця';

  @override
  String get library => 'Бібліотека';

  @override
  String get analytics => 'Аналітика';

  @override
  String get dailyDuas => 'Щоденні дуа';

  @override
  String essentialDuas(String count) {
    return '$count важливі дуа';
  }

  @override
  String get duaUnavailableTitle => 'Перевірені дуа ще недоступні';

  @override
  String get duaUnavailableBody =>
      'Перевірені щоденні дуа ще не синхронізовано з цим пристроєм. Підключіться до хмарного джерела, щоб завантажити вихідні дуа замість неперевіреного резервного варіанту.';

  @override
  String get duaCategoryQuranic => 'Коранічна дуа';

  @override
  String get duaCategoryMorningEvening => 'Ранок і вечір';

  @override
  String get duaCategoryTasbih => 'Тасбіх';

  @override
  String get duaCategoryProtection => 'захист';

  @override
  String get duaCategoryBeginning => 'Початки';

  @override
  String get duaCategorySleep => 'сон';

  @override
  String get duaCategoryFoodDrink => 'Їжа та напої';

  @override
  String get duaCategoryForgiveness => 'Прощення';

  @override
  String get duaCategoryHome => 'додому';

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
  String get islamicEducation => 'Ісламська освіта';

  @override
  String get sukunAudioTitle => 'Звукові пейзажі Sukun';

  @override
  String get hadithCollections => 'Збірники хадисів';

  @override
  String get hadithSourcePending => 'Перевірене джерело очікує на розгляд';

  @override
  String get hadithUnavailableTitle =>
      'Перевірені збірки хадисів поки що недоступні';

  @override
  String get hadithUnavailableBody =>
      'Ця збірка все ще залежить від неперевіреної зовнішньої стрічки хадисів. Перегляд хадисів залишається вимкненим, доки не буде синхронізовано вихідний набір даних.';

  @override
  String get paywallUnlockAll =>
      'Розблокуйте всі функції для своєї духовної подорожі';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc =>
      'Необмежена кількість запитань і відповідей на основі ШІ';

  @override
  String get paywallFeature2Title => 'Необмежений офлайн';

  @override
  String get paywallFeature2Desc => 'Завантажити всі декламації';

  @override
  String get paywallFeature3Title => 'Ексклюзивний дизайн';

  @override
  String get paywallFeature3Desc => 'Преміум теми та шрифти';

  @override
  String get paywallFeature4Title => 'Без реклами';

  @override
  String get paywallFeature4Desc => 'Нуль реклами';

  @override
  String get paywallGetAccess => 'Отримайте безстроковий доступ — 1,00 дол';

  @override
  String get restorePurchases => 'Відновити покупки';

  @override
  String get zakatCalculator => 'Калькулятор закятів';

  @override
  String get zakatGold => 'Золото (Altın)';

  @override
  String get zakatSilver => 'Срібло (Gümüş)';

  @override
  String get zakatCashBank => 'Готівка / Банк';

  @override
  String get zakatBusiness => 'Бізнес';

  @override
  String get zakatInvestments => 'Інвестиції';

  @override
  String get zakatWeightGrams => 'Вага (г)';

  @override
  String get zakatPricePerGram => 'Ціна/г';

  @override
  String get zakatTotalAmount => 'Загальна сума';

  @override
  String get zakatInventoryValue => 'Інвентарна вартість';

  @override
  String get zakatDebts => 'борги';

  @override
  String get zakatTotal => 'Всього';

  @override
  String get calculateZakat => 'Calculate Zakat';

  @override
  String get nisabNotReached => 'Нісаб не досяг. Закят не є обов\'язковим.';

  @override
  String get totalZakat => 'Загальний закят';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Активи: $assets';
  }

  @override
  String get zakatGoldZakat => 'Золотий закят';

  @override
  String get zakatSilverZakat => 'Срібний закят';

  @override
  String get zakatCashZakat => 'Грошовий закят';

  @override
  String get zakatBusinessZakat => 'Бізнес закят';

  @override
  String get zakatInvestmentZakat => 'Інвестиційний закят';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Досягнуто денного ліміту запитів. Оновіть до Premium для необмеженого доступу.';

  @override
  String get chatbotErrorMsg =>
      'Я не міг створити відповідь. Спробуйте ще раз.';

  @override
  String get chatbotOfflinePrompt =>
      'Перевірена офлайн-база ісламських знань все ще курується. Ви можете ввімкнути автономний резервний режим зараз, але він показуватиме лише обмежені безпечні повідомлення, доки вихідний набір даних не буде готовий.\n\nБажаєте ввімкнути автономний резервний режим?';

  @override
  String get chatbotOfflineSwitched =>
      'Увімкнено автономний резервний режим. Перевірені місцеві ісламські відповіді ще не готові.';

  @override
  String get chatbotOfflineDownloadLabel =>
      'Увімкнути автономний резервний режим';

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
  String get sukunMixerSubtitle => 'Змішувач природи та Корану';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Сукун (Природа)';

  @override
  String get sukunRainOfMercy => 'Дощ Милосердя';

  @override
  String get sukunGardenOfPeace => 'Сад Миру';

  @override
  String get sukunMidnightCalm => 'Опівнічний спокій';

  @override
  String get sukunOceanTawheed => 'Океан Таухід';

  @override
  String get sukunUnavailableTitle => 'Звукові пейзажі недоступні';

  @override
  String get sukunUnavailableBody =>
      'Ця збірка ще не містить необхідних ресурсів звукового ландшафту Sukun.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Day streak';

  @override
  String get bestStreak => 'Best streak';

  @override
  String get chatbotCloudAiLabel => 'Хмарний ШІ';

  @override
  String get chatbotLocalAiLabel => 'Автономний резервний варіант';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Увімкнути автономний резервний режим';

  @override
  String chatbotQueriesLeft(String count) {
    return 'Залишилося $count';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API не налаштовано. Будь ласка, перейдіть на локальний ШІ.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Перевірені місцеві ісламські рекомендації ще недоступні. Перейдіть на Cloud AI, щоб отримати відповіді.';

  @override
  String get mosques => 'Мечеті';

  @override
  String get halalFood => 'Халяльна їжа';

  @override
  String get placesSearchArea => 'Пошук у цій області';

  @override
  String get nearbyMosques => 'Мечеті поблизу';

  @override
  String get islamicSchools => 'Ісламські школи';

  @override
  String placesFoundCount(String count) {
    return '$count знайдено';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance км';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Помилка API: $statusCode';
  }

  @override
  String get placesNetworkError => 'Помилка мережі. Спробуйте ще раз.';

  @override
  String get unknownPlaceName => 'Невідоме ім\'я';

  @override
  String get islamicPlaceFallback => 'Ісламське місце';
}
