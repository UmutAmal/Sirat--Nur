// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get appTitle => 'راه الله';

  @override
  String get home => 'خانه';

  @override
  String get quran => 'قرآن';

  @override
  String get qibla => 'قبله';

  @override
  String get zikr => 'ذکر';

  @override
  String get calendar => 'تقویم';

  @override
  String get settings => 'تنظیمات';

  @override
  String get nextPrayer => 'نماز بعدی';

  @override
  String get prayerTimes => 'اوقات نماز';

  @override
  String get continueReading => 'ادامه مطالعه';

  @override
  String get getLifetimePro => 'دریافت Lifetime Pro';

  @override
  String get unlockTajweed => 'تجوید و ویژگی‌های پیشرفته';

  @override
  String get prayerCalculation => 'محاسبه نماز';

  @override
  String get method => 'روش محاسبه';

  @override
  String get madhab => 'روش فقهی عصر';

  @override
  String get surahs => 'سوره‌ها';

  @override
  String get ayahs => 'آیات';

  @override
  String get fajr => 'فجر';

  @override
  String get sunrise => 'طلوع آفتاب';

  @override
  String get dhuhr => 'ظهر';

  @override
  String get asr => 'عصر';

  @override
  String get maghrib => 'مغرب';

  @override
  String get isha => 'عشاء';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'زمان برای $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'وقت دعای $prayerName است.';
  }

  @override
  String get dataStorage => 'داده و ذخیره‌سازی';

  @override
  String get clearCache => 'پاک کردن کش';

  @override
  String get cacheClearedSuccess => 'کش با موفقیت پاک شد';

  @override
  String get location => 'مکان';

  @override
  String get language => 'زبان';

  @override
  String get selectLanguage => 'انتخاب زبان';

  @override
  String get searchLanguage => 'جستجو در 180+ زبان...';

  @override
  String get systemDefault => 'پیش‌فرض سیستم';

  @override
  String get currentLocation => 'مکان فعلی (GPS)';

  @override
  String get locationServiceDisabled => 'Location service is disabled.';

  @override
  String get locationPermissionDenied => 'Location permission denied.';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => 'جستجو';

  @override
  String get searchHint => 'جستجو...';

  @override
  String get noResults => 'نتیجه‌ای یافت نشد';

  @override
  String get loading => 'در حال بارگیری...';

  @override
  String get error => 'خطا';

  @override
  String get retry => 'تلاش مجدد';

  @override
  String get cancel => 'لغو';

  @override
  String get save => 'ذخیره';

  @override
  String get delete => 'حذف';

  @override
  String get edit => 'ویرایش';

  @override
  String get close => 'بستن';

  @override
  String get ok => 'تایید';

  @override
  String get yes => 'بله';

  @override
  String get no => 'خیر';

  @override
  String get surah => 'سوره';

  @override
  String get juz => 'جزء';

  @override
  String get page => 'صفحه';

  @override
  String get reading => 'خواندن';

  @override
  String get recitation => 'تلاوت';

  @override
  String get translation => 'ترجمه';

  @override
  String get tafsir => 'تفسیر';

  @override
  String get bookmarks => 'نشانک‌ها';

  @override
  String get addBookmark => 'افزودن نشانک';

  @override
  String get removeBookmark => 'حذف نشانک';

  @override
  String get lastRead => 'آخرین خوانده شده';

  @override
  String get dailyZikr => 'ذکر روزانه';

  @override
  String get morningZikr => 'ذکر صبح';

  @override
  String get eveningZikr => 'ذکر شب';

  @override
  String get tasbih => 'تسبیح';

  @override
  String get ahkab => 'احکام';

  @override
  String get masaail => 'مسائل';

  @override
  String get hadith => 'حدیث';

  @override
  String get hadithCollection => 'مجموعه حدیث';

  @override
  String get hadithBooks => 'کتب حدیث';

  @override
  String get searchHadith => 'جستجوی حدیث';

  @override
  String get asmaulHusna => 'اسماءالحسنی';

  @override
  String get namesOfAllah => 'نام‌های خدا';

  @override
  String get liveTv => 'تلویزیون زنده';

  @override
  String get watchLive => 'مشاهده زنده';

  @override
  String get streamError => 'خطای استریم';

  @override
  String get reload => 'بارگیری مجدد';

  @override
  String get openInYoutube => 'باز کردن در یوتیوب';

  @override
  String get ibadahTracker => 'ردیاب عبادت';

  @override
  String get fasting => 'روزه';

  @override
  String get quranReading => 'خواندن قرآن';

  @override
  String get prayers => 'نمازها';

  @override
  String get dhikrCount => 'تعداد ذکر';

  @override
  String get weeklyProgress => 'پیشرفت هفتگی';

  @override
  String get monthlyProgress => 'پیشرفت ماهانه';

  @override
  String get statistics => 'آمار';

  @override
  String get hijriCalendar => 'تقویم هجری';

  @override
  String get gregorianCalendar => 'تقویم میلادی';

  @override
  String get today => 'امروز';

  @override
  String get tomorrow => 'فردا';

  @override
  String get yesterday => 'دیروز';

  @override
  String get specialDays => 'روزهای خاص';

  @override
  String get ramadan => 'رمضان';

  @override
  String get eidAlFitr => 'عید فطر';

  @override
  String get eidAlAdha => 'عید قربان';

  @override
  String get laylatAlQadr => 'شب قدر';

  @override
  String get qiblaDirection => 'جهت قبله';

  @override
  String get compass => 'قطب‌نما';

  @override
  String get degrees => 'درجه';

  @override
  String get north => 'شمال';

  @override
  String get qiblaFound => 'قبله یافت شد!';

  @override
  String get turnDevice => 'دستگاه خود را به سمت قبله بچرخانید';

  @override
  String get notifications => 'اعلان‌ها';

  @override
  String get prayerNotifications => 'اعلان‌های نماز';

  @override
  String get enableNotifications => 'فعال کردن اعلان‌ها';

  @override
  String get notificationTime => 'زمان اعلان';

  @override
  String get beforePrayer => 'دقیقه قبل از نماز';

  @override
  String get theme => 'پوسته';

  @override
  String get lightMode => 'حالت روشن';

  @override
  String get darkMode => 'حالت تاریک';

  @override
  String get systemTheme => 'پوسته سیستم';

  @override
  String get about => 'درباره';

  @override
  String get version => 'نسخه';

  @override
  String get privacyPolicy => 'سیاست حفظ حریم خصوصی';

  @override
  String get termsOfService => 'شرایط خدمات';

  @override
  String get contactUs => 'تماس با ما';

  @override
  String get rateApp => 'رتبه‌بندی برنامه';

  @override
  String get shareApp => 'اشتراک‌گذاری برنامه';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'مدیر دانلود';

  @override
  String get downloads => 'دانلودها';

  @override
  String get downloading => 'در حال دانلود...';

  @override
  String get downloadComplete => 'دانلود کامل شد';

  @override
  String get downloadFailed => 'دانلود ناموفق';

  @override
  String get offlineMode => 'حالت آفلاین';

  @override
  String get noInternet => 'اتصال اینترنت وجود ندارد';

  @override
  String get checkConnection => 'لطفاً اتصال خود را بررسی کنید';

  @override
  String get premium => 'پریمیوم';

  @override
  String get upgradeToPro => 'ارتقا به پرو';

  @override
  String get proFeatures => 'ویژگی‌های پرو';

  @override
  String get removeAds => 'حذف تبلیغات';

  @override
  String get unlockAll => 'باز کردن همه محتوا';

  @override
  String get exclusiveContent => 'محتوای انحصاری';

  @override
  String get welcome => 'خوش آمدید';

  @override
  String get getStarted => 'شروع کنید';

  @override
  String get skip => 'رد کردن';

  @override
  String get next => 'بعدی';

  @override
  String get done => 'انجام شد';

  @override
  String get onboarding1Title => 'به راه الله خوش آمدید';

  @override
  String get onboarding1Desc =>
      'همراه کامل اسلامی شما برای اوقات نماز، قرآن و موارد دیگر';

  @override
  String get onboarding2Title => 'اوقات نماز';

  @override
  String get onboarding2Desc => 'اوقات نماز دقیق بر اساس مکان شما';

  @override
  String get onboarding3Title => 'قرآن و بیشتر';

  @override
  String get onboarding3Desc =>
      'قرآن بخوانید، خواندن خود را ردیابی کنید و محتوای اسلامی را کاوش کنید';

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
  String get dailyDuas => 'دعای روزانه';

  @override
  String essentialDuas(String count) {
    return '$count دعاهای ضروری';
  }

  @override
  String get duaUnavailableTitle => 'دعاهای تأیید شده هنوز در دسترس نیستند';

  @override
  String get duaUnavailableBody =>
      'دعاهای روزانه تأیید شده هنوز با این دستگاه همگام سازی نشده است. به منبع ابری متصل شوید تا duas های منبع را به جای نسخه بازگشتی تأیید نشده بارگیری کنید.';

  @override
  String get duaCategoryQuranic => 'دعای قرآنی';

  @override
  String get duaCategoryMorningEvening => 'صبح و عصر';

  @override
  String get duaCategoryTasbih => 'تسبیح';

  @override
  String get duaCategoryProtection => 'حفاظت';

  @override
  String get duaCategoryBeginning => 'آغازها';

  @override
  String get duaCategorySleep => 'بخواب';

  @override
  String get duaCategoryFoodDrink => 'غذا و نوشیدنی';

  @override
  String get duaCategoryForgiveness => 'بخشش';

  @override
  String get duaCategoryHome => 'صفحه اصلی';

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
      'پایگاه دانش آفلاین اسلامی تأیید شده هنوز در حال مدیریت است. اکنون می‌توانید بازگشت آفلاین را فعال کنید، اما فقط تا زمانی که مجموعه داده منبع آماده شود، پیام‌های امن محدودی را نشان می‌دهد.\n\nآیا می‌خواهید بازگشت آفلاین را فعال کنید؟';

  @override
  String get chatbotOfflineSwitched =>
      'بازگشت آفلاین فعال شد. پاسخ‌های اسلامی محلی تأیید شده هنوز آماده نیست.';

  @override
  String get chatbotOfflineDownloadLabel =>
      'بازگشت به حالت آفلاین را فعال کنید';

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
  String get chatbotLocalAiLabel => 'بازگشت به حالت آفلاین';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'بازگشت به حالت آفلاین را فعال کنید';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API not configured. Please switch to Local AI.';

  @override
  String get chatbotLocalNoInfo =>
      '[آفلاین] راهنمایی اسلامی محلی تأیید شده هنوز در دسترس نیست. برای پاسخ‌های منبع، به Cloud AI بروید.';

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
