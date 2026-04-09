// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'طريقة الله';

  @override
  String get home => 'الرئيسية';

  @override
  String get quran => 'القرآن الكريم';

  @override
  String get qibla => 'القبلة';

  @override
  String get zikr => 'الذكر';

  @override
  String get calendar => 'التقويم';

  @override
  String get settings => 'الإعدادات';

  @override
  String get nextPrayer => 'الصلاة القادمة';

  @override
  String get prayerTimes => 'أوقات الصلاة';

  @override
  String get continueReading => 'متابعة القراءة';

  @override
  String get getLifetimePro => 'احصل علىLifetime Pro';

  @override
  String get unlockTajweed => 'فتح التجويد والميزات المتقدمة';

  @override
  String get prayerCalculation => 'حساب الصلاة';

  @override
  String get method => 'طريقة الحساب';

  @override
  String get madhab => 'طريقة حساب العصر';

  @override
  String get surahs => 'السور';

  @override
  String get ayahs => 'الآيات';

  @override
  String get fajr => 'الفجر';

  @override
  String get sunrise => 'الشروق';

  @override
  String get dhuhr => 'الظهر';

  @override
  String get asr => 'العصر';

  @override
  String get maghrib => 'المغرب';

  @override
  String get isha => 'العشاء';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'وقت صلاة $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'حان وقت صلاة $prayerName.';
  }

  @override
  String get dataStorage => 'البيانات والتخزين';

  @override
  String get clearCache => 'مسح ذاكرة التخزين المؤقت';

  @override
  String get cacheClearedSuccess => 'تم مسح ذاكرة التخزين بنجاح';

  @override
  String get location => 'الموقع';

  @override
  String get language => 'اللغة';

  @override
  String get selectLanguage => 'اختر اللغة';

  @override
  String get searchLanguage => 'ابحث في 180+ لغة...';

  @override
  String get systemDefault => 'افتراضي النظام';

  @override
  String get currentLocation => 'الموقع الحالي (GPS)';

  @override
  String get locationServiceDisabled => 'تم تعطيل خدمة الموقع.';

  @override
  String get locationPermissionDenied => 'تم رفض إذن تحديد الموقع.';

  @override
  String citiesCount(String count) {
    return '$count المدن';
  }

  @override
  String get search => 'بحث';

  @override
  String get searchHint => 'بحث...';

  @override
  String get noResults => 'لم يتم العثور على نتائج';

  @override
  String get loading => 'جاري التحميل...';

  @override
  String get error => 'خطأ';

  @override
  String get retry => 'إعادة المحاولة';

  @override
  String get cancel => 'إلغاء';

  @override
  String get save => 'حفظ';

  @override
  String get delete => 'حذف';

  @override
  String get edit => 'تعديل';

  @override
  String get close => 'إغلاق';

  @override
  String get ok => 'موافق';

  @override
  String get yes => 'نعم';

  @override
  String get no => 'لا';

  @override
  String get surah => 'سورة';

  @override
  String get juz => 'جزء';

  @override
  String get page => 'صفحة';

  @override
  String get reading => 'القراءة';

  @override
  String get recitation => 'التلاوة';

  @override
  String get translation => 'الترجمة';

  @override
  String get tafsir => 'التفسير';

  @override
  String get bookmarks => 'الإشارات المرجعية';

  @override
  String get addBookmark => 'إضافة إشارة مرجعية';

  @override
  String get removeBookmark => 'إزالة الإشارة المرجعية';

  @override
  String get lastRead => 'آخر قراءة';

  @override
  String get dailyZikr => 'ذكر يومي';

  @override
  String get morningZikr => 'ذكر الصباح';

  @override
  String get eveningZikr => 'ذكر المساء';

  @override
  String get tasbih => 'التسبيح';

  @override
  String get ahkab => 'الأحكام';

  @override
  String get masaail => 'المسائل';

  @override
  String get hadith => 'حديث';

  @override
  String get hadithCollection => 'جمع الحديث';

  @override
  String get hadithBooks => 'كتب الحديث';

  @override
  String get searchHadith => 'بحث الحديث';

  @override
  String get asmaulHusna => 'أسماء الحسنى';

  @override
  String get namesOfAllah => 'أسماء الله';

  @override
  String get liveTv => 'البث المباشر';

  @override
  String get watchLive => 'شاهد البث المباشر';

  @override
  String get streamError => 'خطأ في البث';

  @override
  String get reload => 'إعادة تحميل';

  @override
  String get openInYoutube => 'افتح في يوتيوب';

  @override
  String get ibadahTracker => 'متتبع العبادة';

  @override
  String get fasting => 'الصوم';

  @override
  String get quranReading => 'قراءة القرآن';

  @override
  String get prayers => 'الصلوات';

  @override
  String get dhikrCount => 'عدد الأذكار';

  @override
  String get weeklyProgress => 'التقدم الأسبوعي';

  @override
  String get monthlyProgress => 'التقدم الشهري';

  @override
  String get statistics => 'الإحصائيات';

  @override
  String get hijriCalendar => 'التقويم الهجري';

  @override
  String get gregorianCalendar => 'التقويم الميلادي';

  @override
  String get today => 'اليوم';

  @override
  String get tomorrow => 'غداً';

  @override
  String get yesterday => 'أمس';

  @override
  String get specialDays => 'الأيام الخاصة';

  @override
  String get ramadan => 'رمضان';

  @override
  String get eidAlFitr => 'عيد الفطر';

  @override
  String get eidAlAdha => 'عيد الأضحى';

  @override
  String get laylatAlQadr => 'ليلة القدر';

  @override
  String get qiblaDirection => 'اتجاه القبلة';

  @override
  String get compass => 'البوصلة';

  @override
  String get degrees => 'درجة';

  @override
  String get north => 'شمال';

  @override
  String get qiblaFound => 'تم العثور على القبلة!';

  @override
  String get turnDevice => 'قم بتدوير جهازك لمواجهة القبلة';

  @override
  String get notifications => 'الإشعارات';

  @override
  String get prayerNotifications => 'إشعارات الصلاة';

  @override
  String get enableNotifications => 'تفعيل الإشعارات';

  @override
  String get notificationTime => 'وقت الإشعار';

  @override
  String get beforePrayer => 'دقائق قبل الصلاة';

  @override
  String get theme => 'المظهر';

  @override
  String get lightMode => 'الوضع الفاتح';

  @override
  String get darkMode => 'الوضع الداكن';

  @override
  String get systemTheme => 'موضوع النظام';

  @override
  String get about => 'حول';

  @override
  String get version => 'الإصدار';

  @override
  String get privacyPolicy => 'سياسة الخصوصية';

  @override
  String get termsOfService => 'شروط الخدمة';

  @override
  String get contactUs => 'اتصل بنا';

  @override
  String get rateApp => 'قيّم التطبيق';

  @override
  String get shareApp => 'مشاركة التطبيق';

  @override
  String shareAppMessage(String appName, String url) {
    return 'اطلع على $appName: تطبيق أسلوب الحياة الإسلامي المثالي! $url';
  }

  @override
  String get downloadManager => 'مدير التنزيلات';

  @override
  String get downloads => 'التنزيلات';

  @override
  String get downloading => 'جاري التنزيل...';

  @override
  String get downloadComplete => 'اكتمل التنزيل';

  @override
  String get downloadFailed => 'فشل التنزيل';

  @override
  String get offlineMode => 'الوضع غير المتصل';

  @override
  String get noInternet => 'لا يوجد اتصال بالإنترنت';

  @override
  String get checkConnection => 'يرجى التحقق من اتصالك';

  @override
  String get premium => 'Premium';

  @override
  String get upgradeToPro => 'الترقية إلى Pro';

  @override
  String get proFeatures => 'ميزات Pro';

  @override
  String get removeAds => 'إزالة الإعلانات';

  @override
  String get unlockAll => 'فتح كل المحتوى';

  @override
  String get exclusiveContent => 'محتوى حصري';

  @override
  String get welcome => 'مرحباً';

  @override
  String get getStarted => 'ابدأ';

  @override
  String get skip => 'تخطي';

  @override
  String get next => 'التالي';

  @override
  String get done => 'تم';

  @override
  String get onboarding1Title => 'مرحباً بك في طريقة الله';

  @override
  String get onboarding1Desc =>
      'تطبيق الإسلامية الشامل لأوقات الصلاة والقرآن والمزيد';

  @override
  String get onboarding2Title => 'أوقات الصلاة';

  @override
  String get onboarding2Desc => 'أوقات صلاة دقيقة بناءً على موقعك';

  @override
  String get onboarding3Title => 'القرآن والمزيد';

  @override
  String get onboarding3Desc =>
      'اقرأ القرآن وتتبع قراءتك واستكشف المحتوى الإسلامي';

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
  String get diagnosticsNotSet => 'لم يتم ضبطه';

  @override
  String get diagnosticsPrayerProfile => 'الملف الشخصي للصلاة';

  @override
  String get diagnosticsPrayerSource => 'هيئة الصلاة';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'مخصص / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'الزوايا المخصصة اليدوية (لا يوجد مصدر مؤسسي)';

  @override
  String get diagnosticsCloudDriven => 'سحابة مدفوعة';

  @override
  String get diagnosticsAdhanAudioAssets => 'أصول الصوت الأذان';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'أصول القرآن الصوتية';

  @override
  String get diagnosticsAudioAssets => 'الأصول الصوتية';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count الملفات';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'فشلت قراءة البيان: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'التوطين المحلي';

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
  String get dailyVerse => 'الآية اليومية';

  @override
  String get todaysIbadah => 'عبادة اليوم';

  @override
  String get quickAccess => 'الوصول السريع';

  @override
  String get assistant => 'مساعد';

  @override
  String get places => 'الأماكن';

  @override
  String get library => 'مكتبة';

  @override
  String get analytics => 'التحليلات';

  @override
  String get dailyDuas => 'ادعية يومية';

  @override
  String essentialDuas(String count) {
    return '$count أدعية أساسية';
  }

  @override
  String get duaUnavailableTitle =>
      'الأدعية التي تم التحقق منها ليست متاحة بعد';

  @override
  String get duaUnavailableBody =>
      'لم تتم مزامنة الأدعية اليومية التي تم التحقق منها مع هذا الجهاز حتى الآن. اتصل بالمصدر السحابي لتحميل الأدعية المصدرية بدلاً من الإجراء الاحتياطي الذي لم يتم التحقق منه.';

  @override
  String get duaCategoryQuranic => 'الدعاء القرآني';

  @override
  String get duaCategoryMorningEvening => 'الصباح والمساء';

  @override
  String get duaCategoryTasbih => 'التسبيح';

  @override
  String get duaCategoryProtection => 'حماية';

  @override
  String get duaCategoryBeginning => 'البدايات';

  @override
  String get duaCategorySleep => 'ينام';

  @override
  String get duaCategoryFoodDrink => 'الطعام والشراب';

  @override
  String get duaCategoryForgiveness => 'مغفرة';

  @override
  String get duaCategoryHome => 'بيت';

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
  String get islamicEducation => 'التربية الإسلامية';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'مجموعات الحديث';

  @override
  String get hadithSourcePending => 'المصدر الذي تم التحقق منه معلق';

  @override
  String get hadithUnavailableTitle =>
      'مجموعات الحديث التي تم التحقق منها ليست متاحة بعد';

  @override
  String get hadithUnavailableBody =>
      'لا يزال هذا البناء يعتمد على خلاصة حديث خارجية لم يتم التحقق منها. يظل تصفح الحديث معطلاً حتى تتم مزامنة مجموعة البيانات المصدر.';

  @override
  String get paywallUnlockAll => 'افتح جميع الميزات لرحلتك الروحية';

  @override
  String get paywallFeature1Title => 'المساعد العصبي بلس';

  @override
  String get paywallFeature1Desc =>
      'أسئلة وأجوبة غير محدودة مدعومة بالذكاء الاصطناعي';

  @override
  String get paywallFeature2Title => 'غير محدود غير متصل';

  @override
  String get paywallFeature2Desc => 'تحميل جميع التلاوات';

  @override
  String get paywallFeature3Title => 'تصاميم حصرية';

  @override
  String get paywallFeature3Desc => 'السمات والخطوط المتميزة';

  @override
  String get paywallFeature4Title => 'خالية من الإعلانات';

  @override
  String get paywallFeature4Desc => 'صفر إعلانات';

  @override
  String get paywallGetAccess => 'احصل على وصول مدى الحياة - 1.00 دولار';

  @override
  String get restorePurchases => 'استعادة المشتريات';

  @override
  String get zakatCalculator => 'حاسبة الزكاة';

  @override
  String get zakatGold => 'الذهب (ألتين)';

  @override
  String get zakatSilver => 'الفضة (غوموش)';

  @override
  String get zakatCashBank => 'نقدا / بنك';

  @override
  String get zakatBusiness => 'عمل';

  @override
  String get zakatInvestments => 'الاستثمارات';

  @override
  String get zakatWeightGrams => 'الوزن (ز)';

  @override
  String get zakatPricePerGram => 'السعر/ز';

  @override
  String get zakatTotalAmount => 'المبلغ الإجمالي';

  @override
  String get zakatInventoryValue => 'قيمة المخزون';

  @override
  String get zakatDebts => 'الديون';

  @override
  String get zakatTotal => 'المجموع';

  @override
  String get calculateZakat => 'حساب الزكاة';

  @override
  String get nisabNotReached => 'ولم يبلغ النصاب. الزكاة ليست واجبة.';

  @override
  String get totalZakat => 'مجموع الزكاة';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'النصاب: $nisab • الأصول: $assets';
  }

  @override
  String get zakatGoldZakat => 'زكاة الذهب';

  @override
  String get zakatSilverZakat => 'زكاة الفضة';

  @override
  String get zakatCashZakat => 'الزكاة النقدية';

  @override
  String get zakatBusinessZakat => 'زكاة الأعمال';

  @override
  String get zakatInvestmentZakat => 'زكاة الاستثمار';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'تم الوصول إلى حد الاستعلام اليومي. الترقية إلى Premium لعدد غير محدود.';

  @override
  String get chatbotErrorMsg =>
      'لم أتمكن من توليد الرد. يرجى المحاولة مرة أخرى.';

  @override
  String get chatbotOfflinePrompt =>
      'لا تزال قاعدة المعرفة الإسلامية غير المتصلة بالإنترنت قيد التنظيم. يمكنك تمكين التراجع دون اتصال الآن، ولكنه لن يعرض سوى رسائل آمنة محدودة حتى تصبح مجموعة البيانات المصدر جاهزة.\n\nهل ترغب في تمكين الرجوع دون اتصال؟';

  @override
  String get chatbotOfflineSwitched =>
      'تم تمكين الرجوع دون اتصال بالإنترنت. الإجابات الإسلامية المحلية التي تم التحقق منها ليست جاهزة بعد.';

  @override
  String get chatbotOfflineDownloadLabel => 'تمكين الرجوع دون اتصال';

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
  String get dayStreak => 'خط اليوم';

  @override
  String get bestStreak => 'أفضل خط';

  @override
  String get chatbotCloudAiLabel => 'سحابة الذكاء الاصطناعي';

  @override
  String get chatbotLocalAiLabel => 'احتياطي دون اتصال';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'تمكين الرجوع دون اتصال';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count اليسار';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'لم يتم تكوين Cloud API. يرجى التبديل إلى الذكاء الاصطناعي المحلي.';

  @override
  String get chatbotLocalNoInfo =>
      '[غير متصل] التوجيه الإسلامي المحلي الذي تم التحقق منه غير متوفر بعد. قم بالتبديل إلى Cloud AI للحصول على إجابات من مصادر.';

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
