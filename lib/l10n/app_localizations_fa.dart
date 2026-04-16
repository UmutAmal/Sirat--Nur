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
  String get splashTagline => 'راه اسلامي نور';

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
  String get locationServiceDisabled => 'سرویس مکان غیرفعال است.';

  @override
  String get locationPermissionDenied => 'مجوز مکان رد شد.';

  @override
  String get locationDetectionFailed =>
      'موقعیت مکانی شما شناسایی نشد. لطفاً یک شهر را به صورت دستی انتخاب کنید یا دوباره امتحان کنید.';

  @override
  String citiesCount(String count) {
    return '$count شهرها';
  }

  @override
  String get search => 'جستجو';

  @override
  String get searchHint => 'جستجو...';

  @override
  String get noResults => 'هیچ نتیجه ای یافت نشد';

  @override
  String get loading => 'در حال بارگیری...';

  @override
  String get error => 'خطا';

  @override
  String get appErrorOccurred => 'خطایی رخ داد';

  @override
  String get appUnknownError => 'خطای ناشناخته';

  @override
  String get quranLoadFailed =>
      'محتوای قرآن بارگیری نشد. لطفا دوباره امتحان کنید.';

  @override
  String get retry => 'تلاش مجدد';

  @override
  String get refreshAction => 'تازه کردن';

  @override
  String get cancel => 'لغو';

  @override
  String get save => 'ذخیره';

  @override
  String get delete => 'حذف کنید';

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
  String ayahLabel(String ayah) {
    return 'آیه $ayah';
  }

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
  String get tafsirLoading => 'در حال بارگیری تفسیر...';

  @override
  String get tafsirSourceLabel => 'منبع تفسیر';

  @override
  String get tafsirNoSurahFound => 'هیچ تفسیری برای این سوره یافت نشد.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'هیچ تفسیری برای آیه $ayah یافت نشد.';
  }

  @override
  String get tafsirLoadFailed => 'تفسیر بارگیری نشد.';

  @override
  String get tafsirNoTextForAyah => 'متن تفسیری برای این آیه وجود ندارد.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'در حال دانلود تفسیر $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'در حال بارگیری تفسیر $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'منبع تفسیر یک خطای HTTP $statusCode را برگرداند.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'منبع تفسیری انتخاب شده هیچ مدخلی برنگشت.';

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
  String get duaMeaning1 =>
      'برخی دیگر دعا می کنند: پروردگارا، ما را در دنیا و آخرت خیر عطا کن و ما را از عذاب آتش حفظ کن.';

  @override
  String get duaMeaning2 =>
      'خداوند هیچ جانی را بیش از توانش بر دوش نمی‌گذارد: هر کس هر کار خیری را انجام داده به‌دست می‌آورد و بدی‌اش را می‌بیند: پروردگارا، اگر فراموش کردیم یا مرتکب اشتباه شدیم، ما را سرزنش مکن. پروردگارا، بر ما تکلیف مکن، همانطور که بر کسانی که پیش از ما بودند تکلیف کردی. پروردگارا، بیش از توانی که داریم بر ما تکلیف مکن. ما را ببخش و ما را ببخش و به ما رحم کن. تو سرپرست ما هستی، پس ما را در برابر کافران یاری کن.»';

  @override
  String get duaMeaning3 =>
      '«پروردگارا، پس از آنکه ما را هدایت کردی، دلهای ما را منحرف مکن. رحمتت را به ما عطا کن که تو همیشه بخشنده ای.';

  @override
  String get duaMeaning4 =>
      'پروردگارا عطا کن که من و فرزندانم نماز را برپا داشته باشیم. پروردگارا، درخواست مرا بپذیر.';

  @override
  String get duaMeaning5 =>
      'و بال خود را با خضوع در برابر آنان با مهربانی فرودآور و بگو: پروردگارا، آنان را بیامرز، همان گونه که در کوچکی به من توجه داشتند.';

  @override
  String get duaMeaning6 =>
      'منزه است خدایی که به راستی صاحب اختیار است. [پیامبر] پیش از تمام شدن وحی در تلاوت عجله نکن، بلکه بگو: پروردگارا بر علمم بیفزا!';

  @override
  String get duaMeaning7 =>
      '[پیامبر] بگو: پروردگارا، بیامرز و بیامرز که تو از همه مهربانترى.';

  @override
  String get duaMeaning8 =>
      'کسانی که دعا می کنند: پروردگارا ما را در همسر و فرزندانمان شادی بخش. ما را برای آگاهان سرمشق خود قرار ده».';

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
  String get hadithCollection => 'مجموعه احادیث';

  @override
  String get hadithBooks => 'کتب حدیث';

  @override
  String get searchHadith => 'جستجو در حدیث';

  @override
  String get asmaulHusna => 'اسماء الحسنه';

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
  String get openInYoutube => 'در یوتیوب باز کنید';

  @override
  String get ibadahTracker => 'ردیاب عبادت';

  @override
  String get fasting => 'روزه';

  @override
  String get quranReading => 'خواندن قرآن';

  @override
  String get prayers => 'نمازها';

  @override
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '$hoursساعت $minutesدقیقه';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '${minutes}m';
  }

  @override
  String get prayerRemainingUnavailable => '--';

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
  String get islamicNewYear => 'سال نو اسلامی';

  @override
  String get mawlidAnNabi => 'مولد النبی';

  @override
  String get specialDayDateRamadanStart => '1 رمضان';

  @override
  String get specialDayDateLaylatAlQadr => '27 رمضان';

  @override
  String get specialDayDateEidAlFitr => '1 شوال';

  @override
  String get specialDayDateEidAlAdha => '10 ذی الحجه';

  @override
  String get specialDayDateIslamicNewYear => '1 محرم';

  @override
  String get specialDayDateMawlidAnNabi => '12 ربیع الاول';

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
  String qiblaCompassErrorDetails(String error) {
    return 'خطای قطب نما: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'سنسور قطب نما در این دستگاه در دسترس نیست.';

  @override
  String get qiblaLocationRequiredTitle => 'مکان مورد نیاز برای قبله';

  @override
  String get qiblaLocationRequiredBody =>
      'مکان واقعی خود را قبل از استفاده از قطب نما قبله تنظیم کنید تا جهت را بتوان به طور دقیق محاسبه کرد.';

  @override
  String get adhanNotificationChannelName => 'اعلان های اذان';

  @override
  String get adhanNotificationChannelDescription =>
      'هشدار زمان نماز با صدای اذان.';

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
    return '$appName را بررسی کنید: برنامه سبک زندگی اسلامی نهایی! $url';
  }

  @override
  String get downloadManager => 'دانلود منیجر';

  @override
  String get downloads => 'دانلودها';

  @override
  String get downloading => 'در حال دانلود...';

  @override
  String get downloadComplete => 'دانلود کامل شد';

  @override
  String get downloadFailed => 'دانلود انجام نشد';

  @override
  String get offlineMode => 'حالت آفلاین';

  @override
  String get noInternet => 'بدون اتصال به اینترنت';

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
  String get zikrCompletedMashAllah => 'تکمیل شد! ماشاالله';

  @override
  String get zikrMeaningSubhanAllah => 'خداوند بسیار بالاتر از هر نقصی است.';

  @override
  String get zikrMeaningAlhamdulillah => 'تمام حمد و ستایش از آن خداست.';

  @override
  String get zikrMeaningAllahuAkbar => 'الله اکبر است.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'معبودی جز الله نیست.';

  @override
  String get zikrMeaningAstaghfirullah => 'از خداوند طلب آمرزش می کنم.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'هیچ قدرت و نیرویی جز به وسیله خداوند نیست.';

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
  String get offlineDownloadManager => 'مدیر دانلود آفلاین';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'حافظه داخلی دستگاه را آزاد کنید.';

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
  String get audioVoice => 'صدای صوتی';

  @override
  String get audioVoiceMisharyAlafasy => 'مرد (میشاری آلفاسی)';

  @override
  String get audioVoiceAbdulBaset => 'مرد (عبدالبسط)';

  @override
  String get audioVoiceSudais => 'نر (Sudais)';

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
  String get diagnosticsNotSet => 'تنظیم نشده است';

  @override
  String get diagnosticsPrayerProfile => 'نمایه دعا';

  @override
  String get diagnosticsPrayerSource => 'مرجع نماز';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'سفارشی / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'زوایای سفارشی دستی (بدون منبع سازمانی)';

  @override
  String get diagnosticsCloudDriven => 'ابر رانده';

  @override
  String get diagnosticsAdhanAudioAssets => 'دارایی های صوتی اذان';

  @override
  String get diagnosticsUiAudioAssets => 'دارایی های صوتی رابط کاربری';

  @override
  String get diagnosticsQuranAudioAssets => 'دارایی های صوتی قرآن';

  @override
  String get diagnosticsAudioAssets => 'دارایی های صوتی';

  @override
  String diagnosticsFilesCount(String count) {
    return 'فایل $count';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'مانیفست خوانده نشد: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'محل های محلی سازی';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count پشتیبانی می شود';
  }

  @override
  String get diagnosticsQuranDataset => 'مجموعه داده های قرآن';

  @override
  String get diagnosticsQuranSurahs => 'سوره های قرآن';

  @override
  String get diagnosticsQuranAyahs => 'آیات قرآن';

  @override
  String get diagnosticsQuranJuzMetadata => 'فراداده قرآن جز';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'جداول ابری در Supabase وجود ندارد. بازگشتی همراه فعال';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'بررسی ابر ناموفق بود: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'ابرداده Cloud juz از دست رفته است. بازگشتی ساختاری همراه فعال';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'بررسی ساختاری ابر ناموفق بود: $error';
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
  String get dailyVerse => 'آیه روزانه';

  @override
  String get todaysIbadah => 'عبادت امروز';

  @override
  String get quickAccess => 'دسترسی سریع';

  @override
  String get assistant => 'دستیار';

  @override
  String get places => 'مکان ها';

  @override
  String get library => 'کتابخانه';

  @override
  String get analytics => 'تجزیه و تحلیل';

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
  String get islamicEducation => 'تعلیم و تربیت اسلامی';

  @override
  String get sukunAudioTitle => 'مناظر صوتی سوکون';

  @override
  String get hadithCollections => 'مجموعه های حدیث';

  @override
  String get hadithSourcePending => 'منبع تأیید شده در انتظار است';

  @override
  String get hadithUnavailableTitle =>
      'مجموعه احادیث تایید شده هنوز در دسترس نیست';

  @override
  String get hadithUnavailableBody =>
      'این ساخت هنوز به یک خوراک حدیث خارجی تایید نشده بستگی دارد. مرور حدیث تا زمانی که یک مجموعه داده منبع همگام‌سازی نشود، غیرفعال می‌ماند.';

  @override
  String get paywallUnlockAll => 'تمام ویژگی ها را برای سفر معنوی خود باز کنید';

  @override
  String get premiumProductUnavailable =>
      'محصول پریمیوم در حال حاضر در دسترس نیست. لطفاً بعداً دوباره امتحان کنید.';

  @override
  String get premiumPurchaseFailed =>
      'خرید تکمیل نشد. لطفا دوباره امتحان کنید.';

  @override
  String get paywallFeature1Title => 'دستیار عصبی پلاس';

  @override
  String get paywallFeature1Desc => 'پرسش و پاسخ نامحدود مبتنی بر هوش مصنوعی';

  @override
  String get paywallFeature2Title => 'نامحدود آفلاین';

  @override
  String get paywallFeature2Desc => 'دانلود تمامی تلاوت ها';

  @override
  String get paywallFeature3Title => 'طرح های انحصاری';

  @override
  String get paywallFeature3Desc => 'تم ها و فونت های ممتاز';

  @override
  String get paywallFeature4Title => 'بدون آگهی';

  @override
  String get paywallFeature4Desc => 'تبلیغات صفر';

  @override
  String get paywallGetAccess => 'دسترسی مادام العمر - 1.00 دلار';

  @override
  String get restorePurchases => 'بازیابی خریدها';

  @override
  String get zakatCalculator => 'ماشین حساب زکات';

  @override
  String get zakatGold => 'طلا (Altın)';

  @override
  String get zakatSilver => 'نقره (Gümüş)';

  @override
  String get zakatCashBank => 'نقدی / بانکی';

  @override
  String get zakatBusiness => 'تجارت';

  @override
  String get zakatInvestments => 'سرمایه گذاری ها';

  @override
  String get zakatWeightGrams => 'وزن (گرم)';

  @override
  String get zakatPricePerGram => 'قیمت/گرم';

  @override
  String get zakatTotalAmount => 'مقدار کل';

  @override
  String get zakatInventoryValue => 'ارزش موجودی';

  @override
  String get zakatDebts => 'بدهی ها';

  @override
  String get zakatTotal => 'مجموع';

  @override
  String get calculateZakat => 'زکات را محاسبه کنید';

  @override
  String get nisabNotReached => 'نصاب نرسید. زکات واجب نیست.';

  @override
  String get totalZakat => 'کل زکات';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • دارایی: $assets';
  }

  @override
  String get zakatGoldZakat => 'زکات طلا';

  @override
  String get zakatSilverZakat => 'زکات نقره';

  @override
  String get zakatCashZakat => 'زکات نقدی';

  @override
  String get zakatBusinessZakat => 'زکات تجارت';

  @override
  String get zakatInvestmentZakat => 'زکات سرمایه گذاری';

  @override
  String get chatbotGreeting =>
      'اسالم علیکم! من دستیار اسلامی شما هستم. در مورد نماز، روزه، زکات یا هر موضوع اسلامی از من بپرسید.';

  @override
  String get chatbotLimitReached =>
      'به حد مجاز درخواست روزانه رسیده است. به صورت نامحدود به Premium ارتقا دهید.';

  @override
  String get chatbotErrorMsg =>
      'من نتوانستم پاسخی ایجاد کنم. لطفا دوباره امتحان کنید.';

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
  String get downloadPreparing => 'در حال آماده سازی دانلود...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'در حال دانلود سوره $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'همه سوره ها قبلا برای این قاری دانلود شده است.';

  @override
  String get offlineQuranAudioPacks => 'بسته های صوتی قرآن آفلاین';

  @override
  String storedOnDeviceMb(String size) {
    return 'ذخیره شده در دستگاه: $size مگابایت';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total سوره دانلود شد';
  }

  @override
  String get redownloadMissingRepair => 'تعمیر / دانلود از دست رفته';

  @override
  String get downloadAction => 'دانلود کنید';

  @override
  String get resumeDownload => 'دانلود رزومه';

  @override
  String get deleteDownloadedFiles => 'حذف فایل های دانلود شده';

  @override
  String get downloadCancelling => 'در حال لغو...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'دانلود برای $reciter لغو شد.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'دانلود برای $reciter تکمیل شد.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'دانلود برای $reciter با سوره های ناموفق $failed به پایان رسید ($downloaded/$total دانلود شد).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'فایل‌های آفلاین برای $reciter حذف شد.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'منابع صوتی قرآن تأیید شده در حال حاضر در دسترس نیستند.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'بسته صوتی قرآن تأیید شده ناقص است ($available/$total). دانه ابر را تازه کنید و دوباره امتحان کنید.';
  }

  @override
  String get chatbotHint => 'سوال بپرس...';

  @override
  String get chatbotThinking => 'فکر کردن...';

  @override
  String get sukunMixerSubtitle => 'همزن طبیعت و قرآن';

  @override
  String get audioPlayFailed => 'پخش صدا انجام نشد';

  @override
  String get sukunNatureLabel => 'سوکون (طبیعت)';

  @override
  String get sukunRainOfMercy => 'باران رحمت';

  @override
  String get sukunGardenOfPeace => 'باغ صلح';

  @override
  String get sukunMidnightCalm => 'نیمه شب آرام';

  @override
  String get sukunOceanTawheed => 'توحید اقیانوس';

  @override
  String get sukunUnavailableTitle => 'مناظر صوتی در دسترس نیست';

  @override
  String get sukunUnavailableBody =>
      'این ساخت هنوز شامل دارایی های صوتی Sukun مورد نیاز نیست.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'رگه ها';

  @override
  String get dayStreak => 'رگه روز';

  @override
  String get bestStreak => 'بهترین خط';

  @override
  String get chatbotCloudAiLabel => 'هوش مصنوعی ابری';

  @override
  String get chatbotLocalAiLabel => 'بازگشت به حالت آفلاین';

  @override
  String get chatbotUseCloudAi => 'استفاده از Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'بازگشت به حالت آفلاین را فعال کنید';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count باقی مانده است';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API پیکربندی نشده است. هدایت اسلامی آفلاین تأیید شده هنوز در دسترس نیست.';

  @override
  String get chatbotLocalNoInfo =>
      '[آفلاین] راهنمایی اسلامی محلی تأیید شده هنوز در دسترس نیست. برای پاسخ‌های منبع، به Cloud AI بروید.';

  @override
  String get mosques => 'مساجد';

  @override
  String get halalFood => 'غذای حلال';

  @override
  String get placesSearchArea => 'این منطقه را جستجو کنید';

  @override
  String get nearbyMosques => 'مساجد مجاور';

  @override
  String get islamicSchools => 'مدارس اسلامی';

  @override
  String placesFoundCount(String count) {
    return '$count پیدا شد';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance کیلومتر دورتر';
  }

  @override
  String placesApiError(String statusCode) {
    return 'خطای API: $statusCode';
  }

  @override
  String get placesNetworkError => 'خطای شبکه لطفا دوباره امتحان کنید.';

  @override
  String get placesLocationRequiredTitle => 'مکان مورد نیاز است';

  @override
  String get placesLocationRequiredBody =>
      'ابتدا مکانی را تعیین کنید تا مساجد، غذای حلال و مدارس اسلامی در نزدیکی شما به طور دقیق جستجو شوند.';

  @override
  String get placesMapTilesUnavailableTitle => 'کاشی های نقشه در دسترس نیست';

  @override
  String get placesMapTilesUnavailableBody =>
      'منبع کاشی نقشه تأیید شده هنوز برای این ساخت پیکربندی نشده است. مکان‌های اطراف همچنان می‌توانند از مکان ذخیره‌شده شما بارگیری شوند.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'داده‌های مکان‌ها در دسترس نیست';

  @override
  String get placesDataSourceUnavailableBody =>
      'نقطه پایانی داده مکان های تأیید شده هنوز برای این ساخت پیکربندی نشده است. قبل از فعال کردن جستجوی اطراف، PLACES_OVERPASS_API_URL را روی یک پروکسی یا ارائه دهنده تأیید شده تنظیم کنید.';

  @override
  String get unknownPlaceName => 'نام نامعلوم';

  @override
  String get islamicPlaceFallback => 'مکان اسلامی';

  @override
  String get asmaMeaning1 => 'خیرخواه';

  @override
  String get asmaMeaning2 => 'مهربان';

  @override
  String get asmaMeaning3 => 'پادشاه / پروردگار ابدی';

  @override
  String get asmaMeaning4 => 'مقدس ترین';

  @override
  String get asmaMeaning5 => 'منبع صلح';

  @override
  String get asmaMeaning6 => 'ارائه دهنده امنیت';

  @override
  String get asmaMeaning7 => 'نگهبان';

  @override
  String get asmaMeaning8 => 'گرانبها / تواناترین';

  @override
  String get asmaMeaning9 => 'اجبار';

  @override
  String get asmaMeaning10 => 'بزرگترین';

  @override
  String get asmaMeaning11 => 'خالق';

  @override
  String get asmaMeaning12 => 'سازنده سفارش';

  @override
  String get asmaMeaning13 => 'شکل دهنده زیبایی';

  @override
  String get asmaMeaning14 => 'بخشنده';

  @override
  String get asmaMeaning15 => 'Suduer';

  @override
  String get asmaMeaning16 => 'بخشنده همه';

  @override
  String get asmaMeaning17 => 'The Sustainer';

  @override
  String get asmaMeaning18 => 'بازکن';

  @override
  String get asmaMeaning19 => 'دانای همه';

  @override
  String get asmaMeaning20 => 'Constrictor';

  @override
  String get asmaMeaning21 => 'تسکین دهنده';

  @override
  String get asmaMeaning22 => 'اباصر';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'اعطا کننده افتخار';

  @override
  String get asmaMeaning25 => 'حقیرکننده';

  @override
  String get asmaMeaning26 => 'شنونده همه';

  @override
  String get asmaMeaning27 => 'بینای همه';

  @override
  String get asmaMeaning28 => 'قاضی';

  @override
  String get asmaMeaning29 => 'عادل';

  @override
  String get asmaMeaning30 => 'The Subtle One';

  @override
  String get asmaMeaning31 => 'همه آگاه';

  @override
  String get asmaMeaning32 => 'مهندس';

  @override
  String get asmaMeaning33 => 'The Magnificent';

  @override
  String get asmaMeaning34 => 'بخشنده بزرگ';

  @override
  String get asmaMeaning35 => 'پاداش دهنده شکرگزاری';

  @override
  String get asmaMeaning36 => 'بالاترین';

  @override
  String get asmaMeaning37 => 'بزرگترین';

  @override
  String get asmaMeaning38 => 'حافظ';

  @override
  String get asmaMeaning39 => 'The Nourisher';

  @override
  String get asmaMeaning40 => 'The Reckoner';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'سخاوتمندان';

  @override
  String get asmaMeaning43 => 'The Watchful One';

  @override
  String get asmaMeaning44 => 'مستجاب دعا';

  @override
  String get asmaMeaning45 => 'The All Comprehending';

  @override
  String get asmaMeaning46 => 'کاملا حکیم';

  @override
  String get asmaMeaning47 => 'The Loving One';

  @override
  String get asmaMeaning48 => 'شکوهمندترین';

  @override
  String get asmaMeaning49 => 'Resurrector';

  @override
  String get asmaMeaning50 => 'شاهد';

  @override
  String get asmaMeaning51 => 'حقیقت';

  @override
  String get asmaMeaning52 => 'متولی همه جانبه';

  @override
  String get asmaMeaning53 => 'دارنده تمام نیرو';

  @override
  String get asmaMeaning54 => 'The Forceful';

  @override
  String get asmaMeaning55 => 'محافظ';

  @override
  String get asmaMeaning56 => 'تحسین شدگان';

  @override
  String get asmaMeaning57 => 'ارزیابی کننده';

  @override
  String get asmaMeaning58 => 'The Originator';

  @override
  String get asmaMeaning59 => 'Restorer';

  @override
  String get asmaMeaning60 => 'بخشنده زندگی';

  @override
  String get asmaMeaning61 => 'گیرنده زندگی';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'Self-sussisting Sustainer';

  @override
  String get asmaMeaning64 => 'یاب';

  @override
  String get asmaMeaning65 => 'The Glorious';

  @override
  String get asmaMeaning66 => 'تنها';

  @override
  String get asmaMeaning67 => 'The One';

  @override
  String get asmaMeaning68 => 'کسی که همه به دنبال آن هستند';

  @override
  String get asmaMeaning69 => 'قدرتمند';

  @override
  String get asmaMeaning70 => 'خالق تمام قدرت';

  @override
  String get asmaMeaning71 => 'تسریع کننده';

  @override
  String get asmaMeaning72 => 'تاخیرکننده';

  @override
  String get asmaMeaning73 => 'اولین';

  @override
  String get asmaMeaning74 => 'آخرین';

  @override
  String get asmaMeaning75 => 'مانیفست';

  @override
  String get asmaMeaning76 => 'The Hidden';

  @override
  String get asmaMeaning77 => 'فرماندار';

  @override
  String get asmaMeaning78 => 'اعلی';

  @override
  String get asmaMeaning79 => 'فاعل خیر';

  @override
  String get asmaMeaning80 => 'راهنمای توبه';

  @override
  String get asmaMeaning81 => 'Avenger';

  @override
  String get asmaMeaning82 => 'بخشنده';

  @override
  String get asmaMeaning83 => 'کلمنت';

  @override
  String get asmaMeaning84 => 'مالک / حاکم بر همه';

  @override
  String get asmaMeaning85 => 'صاحب عظمت و فضل';

  @override
  String get asmaMeaning86 => 'Equitable One';

  @override
  String get asmaMeaning87 => 'گردآورنده';

  @override
  String get asmaMeaning88 => 'The Rich One';

  @override
  String get asmaMeaning89 => 'غنی‌کننده';

  @override
  String get asmaMeaning90 => 'جلوگیری از آسیب';

  @override
  String get asmaMeaning91 => 'آزار دهنده';

  @override
  String get asmaMeaning92 => 'اعطا کننده مزایا';

  @override
  String get asmaMeaning93 => 'نور';

  @override
  String get asmaMeaning94 => 'راهنما';

  @override
  String get asmaMeaning95 => 'Originator';

  @override
  String get asmaMeaning96 => 'آدم ابدی';

  @override
  String get asmaMeaning97 => 'وارث';

  @override
  String get asmaMeaning98 => 'راست ترین راهنمای';

  @override
  String get asmaMeaning99 => 'بیمار یک';
}
