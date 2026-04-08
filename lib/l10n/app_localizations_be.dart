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
  String get locationServiceDisabled => 'Location service is disabled.';

  @override
  String get locationPermissionDenied => 'Location permission denied.';

  @override
  String citiesCount(String count) {
    return '$count cities';
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
  String get retry => 'Паўтарыць';

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
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
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
  String get duaSourceBukhari => 'Бухары';

  @override
  String get duaSourceMuslim => 'мусульманскі';

  @override
  String get duaSourceAbuDawud => 'Абу Дауд';

  @override
  String get duaSourceTirmidhi => 'Тырмізі';

  @override
  String get duaSourceAhmad => 'Ахмад';

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
  String get chatbotLocalAiLabel => 'Пазасеткавы рэзервовы варыянт';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Уключыць аўтаномны рэзервовы рэжым';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API not configured. Please switch to Local AI.';

  @override
  String get chatbotLocalNoInfo =>
      '[ПА-ЗА ЛАЙНАМ] Правераныя мясцовыя ісламскія рэкамендацыі пакуль недаступныя. Пераключыцеся на Cloud AI, каб атрымаць адказы з крыніц.';

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
