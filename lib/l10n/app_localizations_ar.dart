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
  String get splashTagline => 'طريق النور الاسلامي';

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
  String get prayerCalculation => 'حساب أوقات الصلاة';

  @override
  String get method => 'طريقة الحساب';

  @override
  String get madhab => 'طريقة فقهية لصلاة العصر';

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
  String get locationDetectionFailed =>
      'لا يمكن الكشف عن موقعك. يرجى اختيار المدينة يدويًا أو حاول مرة أخرى.';

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
  String get loading => 'جار التحميل...';

  @override
  String get error => 'خطأ';

  @override
  String get appErrorOccurred => 'حدث خطأ';

  @override
  String get appUnknownError => 'خطأ غير معروف';

  @override
  String get quranLoadFailed =>
      'لا يمكن تحميل محتوى القرآن. يرجى المحاولة مرة أخرى.';

  @override
  String get retry => 'إعادة المحاولة';

  @override
  String get refreshAction => 'تحديث';

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
  String ayahLabel(String ayah) {
    return 'آية $ayah';
  }

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
  String get tafsirLoading => 'جاري تحميل التفسير...';

  @override
  String get tafsirSourceLabel => 'المصدر تفسير';

  @override
  String get tafsirNoSurahFound => 'لم يتم العثور على تفسير لهذه السورة.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'لم يتم العثور على تفسير للآية $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'لا يمكن تحميل التفسير.';

  @override
  String get tafsirNoTextForAyah => 'لا يوجد نص تفسير لهذه الآية.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'تنزيل التفسير $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'جاري تحميل التفسير $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'أرجع مصدر التفسير خطأ HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'لم يُرجع مصدر التفسير المحدد أي إدخالات.';

  @override
  String get tafsirCacheUnavailable =>
      'التفسير الذي تم التحقق منه غير متوفر حاليا. مزامنة مجموعة بيانات التفسير المصدرية قبل التصفح.';

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
  String get duaMeaning1 =>
      'وآخرون يدعون: ربنا آتنا في الدنيا حسنة وفي الآخرة حسنة وقنا عذاب النار.';

  @override
  String get duaMeaning2 =>
      'لا يكلف الله نفسا إلا وسعها، كل يكسب ما عملت من خير ويصيب من شره، \"رب لا تؤاخذنا إن نسينا أو أخطأنا\". يارب لا تحملنا كما ثقلت على الذين من قبلنا. يا رب لا تحملنا ما لا طاقة لنا به. واعف عنا واغفر لنا وارحمنا. أنت مولانا فانصرنا على الكافرين.';

  @override
  String get duaMeaning3 =>
      'ربنا لا تزغ قلوبنا بعد إذ هديتنا، وهب لنا من لدنك رحمة؛ إنك أنت الوهاب.';

  @override
  String get duaMeaning4 => 'رب أجعلني وذريتي مقيمين الصلاة. ربنا تقبل طلبي.';

  @override
  String get duaMeaning5 =>
      'واخفض جناحك لهم ذلاً وقل رب ارحمهم كما ربيوني صغيرًا.';

  @override
  String get duaMeaning6 =>
      'سبحان الله الذي هو المسيطر حقاً. [أيها النبي]، لا تعجل بالقراءة قبل أن يتم الوحي، وقل: رب زدني علما.';

  @override
  String get duaMeaning7 => 'قل [النبي]: رب اغفر وارحم وأنت أرحم الراحمين.';

  @override
  String get duaMeaning8 =>
      'الذين يقولون: ربنا هب لنا في أزواجنا وذرياتنا. واجعل لنا قدوة حسنة للذين يتقون».';

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
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '$hours س $minutes د';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '$minutesم';
  }

  @override
  String get prayerRemainingUnavailable => '--';

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
  String get islamicNewYear => 'السنة الإسلامية الجديدة';

  @override
  String get mawlidAnNabi => 'مولد النبي';

  @override
  String get specialDayDateRamadanStart => '1 رمضان';

  @override
  String get specialDayDateLaylatAlQadr => '27 رمضان';

  @override
  String get specialDayDateEidAlFitr => '1 شوال';

  @override
  String get specialDayDateEidAlAdha => '10 ذي الحجة';

  @override
  String get specialDayDateIslamicNewYear => '1 محرم';

  @override
  String get specialDayDateMawlidAnNabi => '12 ربيع الأول';

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
  String qiblaCompassErrorDetails(String error) {
    return 'خطأ البوصلة: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'مستشعر البوصلة غير متوفر على هذا الجهاز.';

  @override
  String get qiblaLocationRequiredTitle => 'الموقع المطلوب للقبلة';

  @override
  String get qiblaLocationRequiredBody =>
      'قم بتعيين موقعك الفعلي قبل استخدام بوصلة القبلة حتى يمكن حساب الاتجاه بدقة.';

  @override
  String get adhanNotificationChannelName => 'إشعارات الأذان';

  @override
  String get adhanNotificationChannelDescription =>
      'تنبيهات لأوقات الصلاة مع صوت الأذان.';

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
  String get downloadManager => 'مدير التحميل';

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
  String get onboarding1Title => 'مرحباً بك في Sirat-ı Nur';

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
  String get resetCounter => 'إعادة ضبط العداد';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'عدد الأهداف: $target';
  }

  @override
  String get tapToCount => 'انقر للعد';

  @override
  String get zikrCompletedMashAllah => 'مكتمل! ما شاء الله';

  @override
  String get zikrMeaningSubhanAllah => 'والله فوق كل نقص.';

  @override
  String get zikrMeaningAlhamdulillah => 'الحمد لله.';

  @override
  String get zikrMeaningAllahuAkbar => 'الله أكبر.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'لا إله إلا الله.';

  @override
  String get zikrMeaningAstaghfirullah => 'أستغفر الله .';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata => 'ولا حول ولا قوة إلا بالله.';

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
  String get dailyProgress => 'التقدم اليومي';

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
  String get recheckPremium => 'أعد التحقق من حالة الاشتراك المميز';

  @override
  String get syncStore =>
      'قم بالمزامنة مع متجر التطبيقات لتأكيد اشتراكك المميز.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'تم التحقق من الاشتراك المميز.';

  @override
  String get premiumNotFound => 'لم يتم العثور على الاشتراك المميز.';

  @override
  String premiumRefreshError(Object error) {
    return 'تعذر تحديث حالة الاشتراك المميز: $error';
  }

  @override
  String get offlineDownloadManager => 'مدير التحميل دون اتصال';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'تحرير مساحة التخزين الداخلية للجهاز.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'التحقق من قاعدة بيانات القرآن الكريم...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'حالة قاعدة بيانات القرآن الكريم';

  @override
  String statusLabel(Object status) {
    return 'الحالة: $status';
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
  String get audioVoice => 'صوت الصوت';

  @override
  String get audioVoiceMisharyAlafasy => 'ذكر (مشاري العفاسي)';

  @override
  String get audioVoiceAbdulBaset => 'ذكر (عبد الباسط)';

  @override
  String get audioVoiceSudais => 'ذكر (السديس)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'معايرة القبلة';

  @override
  String get compassSmoothing => 'تجانس البوصلة';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'إزاحة المعايرة';

  @override
  String currentOffset(Object offset) {
    return 'الحالي: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'اضبط ما إذا كانت البوصلة تحتاج إلى تصحيح يدوي. تدور القيم الإيجابية في اتجاه عقارب الساعة.';

  @override
  String get apply => 'تطبيق التغييرات';

  @override
  String get resetOnboarding => 'إعادة ضبط إعداد المقدمة';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'التشخيص';

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
  String get diagnosticsUiAudioAssets => 'الأصول الصوتية لواجهة المستخدم';

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
    return '$count مدعوم';
  }

  @override
  String get diagnosticsQuranDataset => 'مجموعة بيانات القرآن';

  @override
  String get diagnosticsQuranSurahs => 'سور القرآن';

  @override
  String get diagnosticsQuranAyahs => 'آيات قرآنية';

  @override
  String get diagnosticsQuranJuzMetadata => 'بيانات تعريف أجزاء القرآن';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'الجداول السحابية مفقودة في Supabase؛ الاحتياطية المجمعة نشطة';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'فشل التحقق من السحابة: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'البيانات التعريفية لأجزاء السحابة مفقودة؛ الاحتياطي الهيكلي المجمع نشط';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'فشل الفحص الهيكلي للسحابة: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'المعايرة مطلوبة. قم بتدوير الجهاز في الشكل 8.';

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
  String get sukunAudioTitle => 'سوكون Soundscapes';

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
  String get premiumProductUnavailable =>
      'المنتج المتميز غير متوفر حاليًا. يرجى المحاولة مرة أخرى في وقت لاحق.';

  @override
  String get premiumPurchaseFailed =>
      'لا يمكن إكمال عملية الشراء. يرجى المحاولة مرة أخرى.';

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
      'السلام عليكم! أنا مساعدك الإسلامي. اسألني عن الصلاة أو الصيام أو الزكاة أو أي موضوع إسلامي.';

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
  String get chatbotOfflineDownloadLabel => 'تفعيل البديل دون اتصال';

  @override
  String get downloadPreparing => 'جاري التحضير للتحميل...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'تحميل سورة $surah / $total';
  }

  @override
  String get downloadCompleted => 'جميع السور تم تنزيلها بالفعل لهذا القارئ.';

  @override
  String get offlineQuranAudioPacks => 'حزم القرآن الصوتية دون اتصال';

  @override
  String storedOnDeviceMb(String size) {
    return 'مخزنة على الجهاز: $size ميغابايت';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total تم تنزيل السور';
  }

  @override
  String get redownloadMissingRepair => 'إصلاح / تنزيل مفقود';

  @override
  String get downloadAction => 'تحميل';

  @override
  String get resumeDownload => 'استئناف التنزيل';

  @override
  String get deleteDownloadedFiles => 'حذف الملفات التي تم تنزيلها';

  @override
  String get downloadCancelling => 'جارٍ الإلغاء...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'تم إلغاء التنزيل لـ $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'اكتمل التنزيل لـ $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'انتهى التنزيل لـ $reciter مع $failed السور الفاشلة (تم تنزيل $downloaded/$total).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'تم حذف الملفات غير المتصلة لـ $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'المصادر الصوتية للقرآن الكريم التي تم التحقق منها غير متوفرة في الوقت الحالي.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'حزمة القرآن الصوتية التي تم التحقق منها غير مكتملة ($available/$total). قم بتحديث بذور السحابة وحاول مرة أخرى.';
  }

  @override
  String get chatbotHint => 'اطرح سؤالا...';

  @override
  String get chatbotThinking => 'أفكر...';

  @override
  String get sukunMixerSubtitle => 'الطبيعة وخلاط القرآن';

  @override
  String get audioPlayFailed => 'فشل تشغيل الصوت';

  @override
  String get sukunNatureLabel => 'سكون (طبيعة)';

  @override
  String get sukunRainOfMercy => 'أمطار الرحمة';

  @override
  String get sukunGardenOfPeace => 'حديقة السلام';

  @override
  String get sukunMidnightCalm => 'منتصف الليل هادئ';

  @override
  String get sukunOceanTawheed => 'محيط التوحيد';

  @override
  String get sukunUnavailableTitle => 'مقاطع الصوت غير متاحة';

  @override
  String get sukunUnavailableBody =>
      'لا يتضمن هذا الإصدار أصول Sukun soundscape المطلوبة حتى الآن.';

  @override
  String get prayerCompletion => 'إتمام الصلوات';

  @override
  String get streaks => 'سلاسل مستمرة';

  @override
  String get dayStreak => 'أيام متتالية';

  @override
  String get bestStreak => 'أفضل خط';

  @override
  String get chatbotCloudAiLabel => 'سحابة الذكاء الاصطناعي';

  @override
  String get chatbotLocalAiLabel => 'بديل دون اتصال';

  @override
  String get chatbotUseCloudAi => 'استخدام Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'تفعيل البديل دون اتصال';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count اليسار';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'لم يتم تكوين Cloud API. الإرشادات الإسلامية التي تم التحقق منها دون اتصال بالإنترنت غير متوفرة بعد.';

  @override
  String get chatbotLocalNoInfo =>
      '[غير متصل] التوجيه الإسلامي المحلي الذي تم التحقق منه غير متوفر بعد. قم بالتبديل إلى Cloud AI للحصول على إجابات من مصادر.';

  @override
  String get mosques => 'المساجد';

  @override
  String get halalFood => 'الطعام الحلال';

  @override
  String get placesSearchArea => 'ابحث في هذه المنطقة';

  @override
  String get nearbyMosques => 'المساجد القريبة';

  @override
  String get islamicSchools => 'المدارس الإسلامية';

  @override
  String placesFoundCount(String count) {
    return 'تم العثور على $count';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance كم';
  }

  @override
  String placesApiError(String statusCode) {
    return 'خطأ في واجهة برمجة التطبيقات: $statusCode';
  }

  @override
  String get placesNetworkError => 'خطأ في الشبكة. يرجى المحاولة مرة أخرى.';

  @override
  String get placesLocationRequiredTitle => 'الموقع مطلوب';

  @override
  String get placesLocationRequiredBody =>
      'قم بتعيين موقع أولاً حتى يمكن البحث بدقة عن المساجد القريبة والطعام الحلال والمدارس الإسلامية.';

  @override
  String get placesMapTilesUnavailableTitle => 'مربعات الخريطة غير متاحة';

  @override
  String get placesMapTilesUnavailableBody =>
      'لم يتم تكوين مصدر تجانب الخريطة الذي تم التحقق منه لهذا الإصدار حتى الآن. لا يزال من الممكن تحميل الأماكن القريبة من موقعك المحفوظ.';

  @override
  String get placesDataSourceUnavailableTitle => 'بيانات الأماكن غير متاحة';

  @override
  String get placesDataSourceUnavailableBody =>
      'لم يتم تكوين نقطة نهاية بيانات الأماكن التي تم التحقق منها لهذا الإصدار حتى الآن. قم بتعيين PLACES_OVERPASS_API_URL على وكيل أو مزود معتمد قبل تمكين البحث القريب.';

  @override
  String get unknownPlaceName => 'اسم غير معروف';

  @override
  String get islamicPlaceFallback => 'المكان الاسلامي';

  @override
  String get asmaMeaning1 => 'واسع الرحمة بجميع الخلق.';

  @override
  String get asmaMeaning2 => 'كثير الرحمة بالمؤمنين.';

  @override
  String get asmaMeaning3 => 'المالك المتصرف في كل شيء.';

  @override
  String get asmaMeaning4 => 'المنزه عن كل نقص وعيب.';

  @override
  String get asmaMeaning5 => 'السالم من كل نقص ومانح السلام.';

  @override
  String get asmaMeaning6 => 'الذي يؤمن عباده ويصدق وعده.';

  @override
  String get asmaMeaning7 => 'الرقيب الحافظ القائم على كل شيء.';

  @override
  String get asmaMeaning8 => 'الغالب القوي الذي لا يغلب.';

  @override
  String get asmaMeaning9 => 'العظيم القاهر الذي يجبر كسر عباده.';

  @override
  String get asmaMeaning10 => 'المتفرد بالكبرياء والعظمة.';

  @override
  String get asmaMeaning11 => 'المبدع والموجد لكل شيء.';

  @override
  String get asmaMeaning12 => 'المنشئ للخلق على غير مثال سابق.';

  @override
  String get asmaMeaning13 => 'الذي يصور الخلق ويمنحهم هيئاتهم.';

  @override
  String get asmaMeaning14 => 'كثير المغفرة والستر.';

  @override
  String get asmaMeaning15 => 'الغالب القاهر فوق عباده.';

  @override
  String get asmaMeaning16 => 'كثير العطاء بلا عوض.';

  @override
  String get asmaMeaning17 => 'الذي يرزق جميع خلقه.';

  @override
  String get asmaMeaning18 => 'الذي يفتح أبواب الرحمة والرزق والحكم.';

  @override
  String get asmaMeaning19 => 'المحيط علمه بكل شيء.';

  @override
  String get asmaMeaning20 => 'الذي يقبض الأرزاق والأرواح بحكمته.';

  @override
  String get asmaMeaning21 => 'الذي يبسط الرزق والفضل بحكمته.';

  @override
  String get asmaMeaning22 => 'الذي يخفض من شاء بعدله.';

  @override
  String get asmaMeaning23 => 'الذي يرفع من شاء بفضله.';

  @override
  String get asmaMeaning24 => 'الذي يهب العزة لمن شاء.';

  @override
  String get asmaMeaning25 => 'الذي يذل من شاء بعدله.';

  @override
  String get asmaMeaning26 => 'الذي يسمع كل شيء.';

  @override
  String get asmaMeaning27 => 'الذي يرى كل شيء.';

  @override
  String get asmaMeaning28 => 'الحاكم العدل الذي يفصل بين عباده.';

  @override
  String get asmaMeaning29 => 'المنزه عن الظلم، العادل في حكمه.';

  @override
  String get asmaMeaning30 => 'الرفيق بعباده، العليم بدقائق الأمور.';

  @override
  String get asmaMeaning31 => 'العليم ببواطن الأشياء وحقائقها.';

  @override
  String get asmaMeaning32 => 'الذي لا يعاجل بالعقوبة.';

  @override
  String get asmaMeaning33 => 'ذو العظمة والجلال.';

  @override
  String get asmaMeaning34 => 'كثير المغفرة لعباده.';

  @override
  String get asmaMeaning35 => 'الذي يقبل القليل ويثيب عليه كثيرا.';

  @override
  String get asmaMeaning36 => 'المتعالي فوق خلقه قدرا وقهرا.';

  @override
  String get asmaMeaning37 => 'العظيم الذي لا أكبر منه.';

  @override
  String get asmaMeaning38 => 'الحافظ لكل شيء.';

  @override
  String get asmaMeaning39 => 'المتكفل بأقوات الخلق والقائم عليهم.';

  @override
  String get asmaMeaning40 => 'الكافي لعباده والمحاسب لهم.';

  @override
  String get asmaMeaning41 => 'ذو الجلال والعظمة.';

  @override
  String get asmaMeaning42 => 'كثير الخير والعطاء.';

  @override
  String get asmaMeaning43 => 'المطلع على كل شيء.';

  @override
  String get asmaMeaning44 => 'الذي يجيب دعاء عباده.';

  @override
  String get asmaMeaning45 => 'الذي وسعت رحمته وعلمه كل شيء.';

  @override
  String get asmaMeaning46 => 'الذي يضع كل شيء في موضعه.';

  @override
  String get asmaMeaning47 => 'المحب لعباده الصالحين والمحبوب لهم.';

  @override
  String get asmaMeaning48 => 'واسع المجد كامل الشرف.';

  @override
  String get asmaMeaning49 => 'باعث الخلق بعد الموت.';

  @override
  String get asmaMeaning50 => 'الحاضر الذي لا يغيب عنه شيء.';

  @override
  String get asmaMeaning51 => 'الثابت الذي لا شك فيه.';

  @override
  String get asmaMeaning52 => 'الكافي لمن توكل عليه.';

  @override
  String get asmaMeaning53 => 'كامل القوة والقدرة.';

  @override
  String get asmaMeaning54 => 'شديد القوة الذي لا يلحقه ضعف.';

  @override
  String get asmaMeaning55 => 'الناصر والمتولي لعباده المؤمنين.';

  @override
  String get asmaMeaning56 => 'المستحق للحمد والثناء.';

  @override
  String get asmaMeaning57 => 'الذي أحصى كل شيء عددا وعلما.';

  @override
  String get asmaMeaning58 => 'الذي يبدأ الخلق من العدم.';

  @override
  String get asmaMeaning59 => 'الذي يعيد الخلق بعد فنائهم.';

  @override
  String get asmaMeaning60 => 'الذي يهب الحياة.';

  @override
  String get asmaMeaning61 => 'الذي يقدر الموت على كل حي.';

  @override
  String get asmaMeaning62 => 'كامل الحياة التي لا تزول.';

  @override
  String get asmaMeaning63 => 'القائم بنفسه المقيم لغيره.';

  @override
  String get asmaMeaning64 => 'الغني الذي لا يفوته شيء.';

  @override
  String get asmaMeaning65 => 'ذو المجد والكرم.';

  @override
  String get asmaMeaning66 => 'المتفرد في ذاته وصفاته.';

  @override
  String get asmaMeaning67 => 'الذي لا شريك له ولا مثيل.';

  @override
  String get asmaMeaning68 => 'المقصود في الحوائج، الغني عن خلقه.';

  @override
  String get asmaMeaning69 => 'الذي يقدر على كل شيء.';

  @override
  String get asmaMeaning70 => 'كامل القدرة النافذة.';

  @override
  String get asmaMeaning71 => 'الذي يقدم من شاء بحكمته.';

  @override
  String get asmaMeaning72 => 'الذي يؤخر من شاء بحكمته.';

  @override
  String get asmaMeaning73 => 'الذي ليس قبله شيء.';

  @override
  String get asmaMeaning74 => 'الذي ليس بعده شيء.';

  @override
  String get asmaMeaning75 => 'العالي فوق كل شيء، الظاهر بآياته.';

  @override
  String get asmaMeaning76 =>
      'الذي لا تحيط به الأبصار وهو أقرب إلى عباده بعلمه.';

  @override
  String get asmaMeaning77 => 'المالك المتولي لأمر خلقه.';

  @override
  String get asmaMeaning78 => 'المنزه عن صفات الخلق، العالي فوقهم.';

  @override
  String get asmaMeaning79 => 'كثير الإحسان والبر بعباده.';

  @override
  String get asmaMeaning80 => 'الذي يوفق للتوبة ويقبلها.';

  @override
  String get asmaMeaning81 => 'الذي ينتقم من الظالمين بعدله.';

  @override
  String get asmaMeaning82 => 'كثير العفو عن الذنوب.';

  @override
  String get asmaMeaning83 => 'شديد الرحمة واللطف بعباده.';

  @override
  String get asmaMeaning84 => 'مالك كل ملك والمتصرف فيه.';

  @override
  String get asmaMeaning85 => 'صاحب العظمة والكمال والإكرام.';

  @override
  String get asmaMeaning86 => 'العادل الذي يقيم القسط.';

  @override
  String get asmaMeaning87 => 'الذي يجمع الخلائق ليوم الحساب.';

  @override
  String get asmaMeaning88 => 'الذي لا يحتاج إلى أحد.';

  @override
  String get asmaMeaning89 => 'الذي يغني من شاء بفضله.';

  @override
  String get asmaMeaning90 => 'الذي يمنع الضرر أو العطاء بحكمته.';

  @override
  String get asmaMeaning91 => 'الذي يقدر الضر بحكمته وعدله.';

  @override
  String get asmaMeaning92 => 'الذي يقدر النفع لعباده.';

  @override
  String get asmaMeaning93 => 'منور السماوات والأرض وهادي القلوب.';

  @override
  String get asmaMeaning94 => 'الذي يهدي من يشاء إلى الصراط المستقيم.';

  @override
  String get asmaMeaning95 => 'المبدع على غير مثال سابق.';

  @override
  String get asmaMeaning96 => 'الدائم الذي لا يفنى.';

  @override
  String get asmaMeaning97 => 'الباقي بعد فناء الخلق.';

  @override
  String get asmaMeaning98 => 'المرشد إلى مصالح الدين والدنيا.';

  @override
  String get asmaMeaning99 => 'الذي لا يعجل بالعقوبة.';
}
