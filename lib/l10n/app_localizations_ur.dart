// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get appTitle => 'اللہ کا راستہ';

  @override
  String get splashTagline => 'روشنی کا اسلامی طریقہ';

  @override
  String get home => 'ہوم';

  @override
  String get quran => 'قرآن';

  @override
  String get qibla => 'قبلہ';

  @override
  String get zikr => 'ذکر';

  @override
  String get calendar => 'کیلنڈر';

  @override
  String get settings => 'ترتیبات';

  @override
  String get nextPrayer => 'اگلی نماز';

  @override
  String get prayerTimes => 'نماز کے اوقات';

  @override
  String get continueReading => 'پڑھنا جاری رکھیں';

  @override
  String get getLifetimePro => 'لائف ٹائم پرو حاصل کریں';

  @override
  String get unlockTajweed => 'تجوید اور اعلیٰ فیچرز کھولیں';

  @override
  String get prayerCalculation => 'نماز کا حساب';

  @override
  String get method => 'حساب کا طریقہ';

  @override
  String get madhab => 'عصر کا فقہی طریقہ';

  @override
  String get surahs => 'سورتیں';

  @override
  String get ayahs => 'آیات';

  @override
  String get fajr => 'فجر';

  @override
  String get sunrise => 'سورج نکلنے کا وقت';

  @override
  String get dhuhr => 'ظہر';

  @override
  String get asr => 'عصر';

  @override
  String get maghrib => 'مغرب';

  @override
  String get isha => 'عشاء';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName کا وقت';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'یہ نماز کا وقت ہے $prayerName۔';
  }

  @override
  String get dataStorage => 'ڈیٹا اور اسٹوریج';

  @override
  String get clearCache => 'کیشے صاف کریں';

  @override
  String get cacheClearedSuccess => 'کیشے کامیابی سے صاف ہو گیا';

  @override
  String get location => 'مقام';

  @override
  String get language => 'زبان';

  @override
  String get selectLanguage => 'زبان انتخاب کریں';

  @override
  String get searchLanguage => '180+ زبانوں میں تلاش کریں...';

  @override
  String get systemDefault => 'سسٹم ڈیفالٹ';

  @override
  String get currentLocation => 'موجودہ مقام (GPS)';

  @override
  String get locationServiceDisabled => 'مقام کی خدمت غیر فعال ہے۔';

  @override
  String get locationPermissionDenied => 'مقام کی اجازت مسترد کر دی گئی۔';

  @override
  String get locationDetectionFailed =>
      'آپ کے مقام کا پتہ نہیں چل سکا۔ براہ کرم دستی طور پر شہر کا انتخاب کریں یا دوبارہ کوشش کریں۔';

  @override
  String citiesCount(String count) {
    return '$count شہر';
  }

  @override
  String get search => 'تلاش';

  @override
  String get searchHint => 'تلاش...';

  @override
  String get noResults => 'کوئی نتیجہ نہیں ملا';

  @override
  String get loading => 'لوڈ ہو رہا ہے...';

  @override
  String get error => 'خرابی';

  @override
  String get appErrorOccurred => 'ایک خرابی پیش آ گئی۔';

  @override
  String get appUnknownError => 'نامعلوم خرابی۔';

  @override
  String get quranLoadFailed =>
      'قرآنی مواد لوڈ نہیں ہو سکا۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String get retry => 'دوبارہ کوشش کریں';

  @override
  String get refreshAction => 'ریفریش کریں۔';

  @override
  String get cancel => 'منسوخ';

  @override
  String get save => 'محفوظ کریں';

  @override
  String get delete => 'حذف کریں۔';

  @override
  String get edit => 'ترمیم کریں';

  @override
  String get close => 'بند کریں';

  @override
  String get ok => 'ٹھیک ہے';

  @override
  String get yes => 'ہاں';

  @override
  String get no => 'نہیں';

  @override
  String get surah => 'سورۃ';

  @override
  String ayahLabel(String ayah) {
    return 'آیت $ayah';
  }

  @override
  String get juz => 'جزء';

  @override
  String get page => 'صفحہ';

  @override
  String get reading => 'پڑھنا';

  @override
  String get recitation => 'تلاوت';

  @override
  String get translation => 'ترجمہ';

  @override
  String get tafsir => 'تفسیر';

  @override
  String get tafsirLoading => 'تفسیر لوڈ ہو رہی ہے...';

  @override
  String get tafsirSourceLabel => 'تفسیر ماخذ';

  @override
  String get tafsirNoSurahFound => 'اس سورہ کی کوئی تفسیر نہیں ملی۔';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'آیت $ayah کی کوئی تفسیر نہیں ملی۔';
  }

  @override
  String get tafsirLoadFailed => 'تفسیر لوڈ نہیں ہو سکی۔';

  @override
  String get tafsirNoTextForAyah => 'اس آیت کی کوئی تفسیر نہیں ہے۔';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'تفسیر ڈاؤن لوڈ ہو رہی ہے $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'تفسیر لوڈ ہو رہی ہے $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'تفسیر ماخذ نے ایک HTTP $statusCode غلطی لوٹائی۔';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'منتخب کردہ تفسیر ماخذ نے کوئی اندراج نہیں لوٹایا۔';

  @override
  String get bookmarks => 'بک مارکس';

  @override
  String get addBookmark => 'بک مارک شامل کریں';

  @override
  String get removeBookmark => 'بکمارک ہٹائیں';

  @override
  String get lastRead => 'آخری پڑھی ہوئی';

  @override
  String get dailyZikr => 'روزانہ ذکر';

  @override
  String get duaMeaning1 =>
      'دوسرے دعا کرتے ہیں کہ اے ہمارے رب ہمیں دنیا اور آخرت میں بھلائی عطا فرما اور ہمیں آگ کے عذاب سے بچا۔';

  @override
  String get duaMeaning2 =>
      'خدا کسی نفس پر اس کی طاقت سے زیادہ بوجھ نہیں ڈالتا: ہر ایک نے جو کچھ اچھا کیا ہے اسے حاصل ہوتا ہے، اور اس کی برائیوں کو بھگتنا پڑتا ہے- اے رب، اگر ہم بھول جائیں یا غلطی کریں تو ہمیں عذاب نہ دینا۔ اے رب، ہم پر بوجھ نہ ڈال جیسا کہ تو نے ہم سے پہلے والوں پر بوجھ ڈالا تھا۔ اے رب، ہم پر اس سے زیادہ بوجھ نہ ڈال جس کو اٹھانے کی ہم میں طاقت ہے۔ ہمیں معاف فرما، ہمیں معاف کر، اور ہم پر رحم فرما۔ تو ہی ہمارا کارساز ہے، پس کافروں کے مقابلے میں ہماری مدد فرما۔‘‘';

  @override
  String get duaMeaning3 =>
      'اے ہمارے رب، تو نے ہمیں ہدایت دینے کے بعد ہمارے دلوں کو ٹیڑھا نہ ہونے دینا۔ ہمیں اپنی رحمت عطا فرما: تو ہمیشہ دینے والا ہے۔';

  @override
  String get duaMeaning4 =>
      'اے رب مجھے اور میری اولاد کو نماز قائم کرنے کی توفیق عطا فرما۔ اے ہمارے رب میری درخواست قبول فرما۔';

  @override
  String get duaMeaning5 =>
      'اور اپنے بازو کو نرمی کے ساتھ ان کی طرف جھکاؤ اور کہو، \'خداوند، ان پر رحم فرما، جس طرح انہوں نے بچپن میں میرا خیال رکھا\'۔';

  @override
  String get duaMeaning6 =>
      'خدا بلند ہے، جو واقعی قابو میں ہے۔ [پیغمبر]، وحی کے مکمل ہونے سے پہلے تلاوت کرنے میں جلدی نہ کریں بلکہ یہ کہو کہ اے پروردگار میرے علم میں اضافہ فرما!';

  @override
  String get duaMeaning7 =>
      'کہو اے رب، معاف کر اور رحم کر، تو سب سے زیادہ رحم کرنے والا ہے۔';

  @override
  String get duaMeaning8 =>
      'جو دعا کرتے ہیں کہ اے ہمارے رب ہمیں ہماری بیویوں اور اولاد میں خوشی عطا فرما۔ ہمیں ان لوگوں کے لیے اچھا نمونہ بنا دے جو آپ سے واقف ہیں۔‘‘';

  @override
  String get morningZikr => 'صبح کا ذکر';

  @override
  String get eveningZikr => 'شام کا ذکر';

  @override
  String get tasbih => 'تسبیح';

  @override
  String get ahkab => 'احکام';

  @override
  String get masaail => 'مسائل';

  @override
  String get hadith => 'حدیث';

  @override
  String get hadithCollection => 'احادیث کا مجموعہ';

  @override
  String get hadithBooks => 'کتب حدیث';

  @override
  String get searchHadith => 'حدیث تلاش کریں۔';

  @override
  String get asmaulHusna => 'اسماء الحسنہ';

  @override
  String get namesOfAllah => 'اللہ کے نام';

  @override
  String get liveTv => 'لائیو ٹی وی';

  @override
  String get watchLive => 'لائیو دیکھیں';

  @override
  String get streamError => 'سٹریم خرابی';

  @override
  String get reload => 'دوبارہ لوڈ کریں';

  @override
  String get openInYoutube => 'یوٹیوب میں کھولیں۔';

  @override
  String get ibadahTracker => 'عبادت ٹریکر';

  @override
  String get fasting => 'روزہ';

  @override
  String get quranReading => 'قرآن پڑھنا';

  @override
  String get prayers => 'نمازیں';

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
  String get dhikrCount => 'ذکر کی تعداد';

  @override
  String get weeklyProgress => 'ہفتہ وار پیش رفت';

  @override
  String get monthlyProgress => 'ماہانہ پیش رفت';

  @override
  String get statistics => 'اعدادوشمار';

  @override
  String get hijriCalendar => 'ہجری کیلنڈر';

  @override
  String get gregorianCalendar => 'عیسوی کیلنڈر';

  @override
  String get today => 'آج';

  @override
  String get tomorrow => 'کل';

  @override
  String get yesterday => 'کل';

  @override
  String get specialDays => 'خصوصی دن';

  @override
  String get ramadan => 'رمضان';

  @override
  String get eidAlFitr => 'عید الفطر';

  @override
  String get eidAlAdha => 'عید الاضحیٰ';

  @override
  String get islamicNewYear => 'اسلامی نیا سال';

  @override
  String get mawlidAnNabi => 'میلاد النبی ۔';

  @override
  String get specialDayDateRamadanStart => '1 رمضان';

  @override
  String get specialDayDateLaylatAlQadr => '27 رمضان';

  @override
  String get specialDayDateEidAlFitr => '1 شوال';

  @override
  String get specialDayDateEidAlAdha => '10 ذوالحجہ';

  @override
  String get specialDayDateIslamicNewYear => '1 محرم';

  @override
  String get specialDayDateMawlidAnNabi => '12 ربیع الاول';

  @override
  String get laylatAlQadr => 'لیلۃ القدر';

  @override
  String get qiblaDirection => 'قبلے کی سمت';

  @override
  String get compass => 'کمپاس';

  @override
  String get degrees => 'ڈگری';

  @override
  String get north => 'شمال';

  @override
  String get qiblaFound => 'قبلہ مل گیا!';

  @override
  String get turnDevice => 'قبلے کی طرف موڑنے کے لیے اپنا آلات موڑیں';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'کمپاس کی خرابی: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'کمپاس سینسر اس ڈیوائس پر دستیاب نہیں ہے۔';

  @override
  String get qiblaLocationRequiredTitle => 'Location required for Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'قبلہ کمپاس استعمال کرنے سے پہلے اپنی اصل جگہ کا تعین کریں تاکہ سمت کا درست اندازہ لگایا جا سکے۔';

  @override
  String get adhanNotificationChannelName => 'اذان کی اطلاع';

  @override
  String get adhanNotificationChannelDescription =>
      'اذان کی آواز کے ساتھ نماز کے وقت کے انتباہات۔';

  @override
  String get notifications => 'اطلاعات';

  @override
  String get prayerNotifications => 'نماز کی اطلاعات';

  @override
  String get enableNotifications => 'اطلاعات کو فعال کریں';

  @override
  String get notificationTime => 'اطلاع کا وقت';

  @override
  String get beforePrayer => 'نماز سے پہلے منٹ';

  @override
  String get theme => 'تھیم';

  @override
  String get lightMode => 'لائٹ موڈ';

  @override
  String get darkMode => 'ڈارک موڈ';

  @override
  String get systemTheme => 'سسٹم تھیم';

  @override
  String get about => 'کے بارے میں';

  @override
  String get version => 'ورژن';

  @override
  String get privacyPolicy => 'رازداری کی پالیسی';

  @override
  String get termsOfService => '_SERVICE کی شرائط';

  @override
  String get contactUs => 'ہم سے رابطہ کریں';

  @override
  String get rateApp => 'ایپ کو ریٹ کریں';

  @override
  String get shareApp => 'ایپ شیئر کریں';

  @override
  String shareAppMessage(String appName, String url) {
    return 'چیک کریں $appName: بہترین اسلامی طرز زندگی ایپ! $url';
  }

  @override
  String get downloadManager => 'ڈاؤن لوڈ مینیجر';

  @override
  String get downloads => 'ڈاؤنلوڈز';

  @override
  String get downloading => 'ڈاؤنلوڈ ہو رہا ہے...';

  @override
  String get downloadComplete => 'ڈاؤن لوڈ مکمل';

  @override
  String get downloadFailed => 'ڈاؤن لوڈ ناکام ہو گیا۔';

  @override
  String get offlineMode => 'آف لائن موڈ';

  @override
  String get noInternet => 'انٹرنیٹ کنکشن نہیں ہے۔';

  @override
  String get checkConnection => 'براہ کرم اپنا کنکشن چیک کریں';

  @override
  String get premium => 'پریمیم';

  @override
  String get upgradeToPro => 'پرو میں اپگریڈ کریں';

  @override
  String get proFeatures => 'پرو فیچرز';

  @override
  String get removeAds => 'اشتہارات ہٹائیں';

  @override
  String get unlockAll => 'سبھی مواد کھولیں';

  @override
  String get exclusiveContent => 'مخصوص مواد';

  @override
  String get welcome => 'خوش آمدید';

  @override
  String get getStarted => 'شروع کریں';

  @override
  String get skip => 'چھوڑیں';

  @override
  String get next => 'اگلا';

  @override
  String get done => 'ہو گیا';

  @override
  String get onboarding1Title => 'اللہ کے راستے میں خوش آمدید';

  @override
  String get onboarding1Desc =>
      'نماز کے اوقات، قرآن اور مزید کے لیے آپ کا مکمل اسلامی ساتھی ایپ';

  @override
  String get onboarding2Title => 'نماز کے اوقات';

  @override
  String get onboarding2Desc => 'آپ کے مقام کی بنیاد پر درست نماز کے اوقات';

  @override
  String get onboarding3Title => 'قرآن اور مزید';

  @override
  String get onboarding3Desc =>
      'قرآن پڑھیں، اپنی پڑھائی کو ٹریک کریں اور اسلامی مواد دریافت کریں';

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
  String get zikrCompletedMashAllah => 'مکمل! ماشاءاللہ';

  @override
  String get zikrMeaningSubhanAllah => 'اللہ ہر نقص سے بالاتر ہے۔';

  @override
  String get zikrMeaningAlhamdulillah => 'تمام تعریفیں اللہ کے لیے ہیں۔';

  @override
  String get zikrMeaningAllahuAkbar => 'اللہ سب سے بڑا ہے۔';

  @override
  String get zikrMeaningLaIlahaIllallah => 'اللہ کے سوا کوئی معبود نہیں۔';

  @override
  String get zikrMeaningAstaghfirullah => 'میں اللہ سے معافی چاہتا ہوں۔';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'اللہ کے سوا کوئی طاقت اور طاقت نہیں ہے۔';

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
  String get offlineDownloadManager => 'آف لائن ڈاؤن لوڈ مینیجر';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'اندرونی ڈیوائس اسٹوریج کو خالی کریں۔';

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
  String get audioVoice => 'آڈیو وائس';

  @override
  String get audioVoiceMisharyAlafasy => 'مرد (مشیری الفاسی)';

  @override
  String get audioVoiceAbdulBaset => 'مرد (عبدالباسط)';

  @override
  String get audioVoiceSudais => 'مرد (سدیس)';

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
  String get diagnosticsNotSet => 'سیٹ نہیں ہے۔';

  @override
  String get diagnosticsPrayerProfile => 'نماز کا پروفائل';

  @override
  String get diagnosticsPrayerSource => 'نماز اتھارٹی';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manual custom angles (no institutional source)';

  @override
  String get diagnosticsCloudDriven => 'کلاؤڈ سے چلنے والا';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Quran Audio Assets';

  @override
  String get diagnosticsAudioAssets => 'آڈیو اثاثے';

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
      'سوپا بیس میں کلاؤڈ ٹیبلز غائب ہیں۔ بنڈل فال بیک فعال';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'کلاؤڈ جوز میٹا ڈیٹا غائب ہے۔ بنڈل ساختی فال بیک فعال';

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
  String get dailyVerse => 'روزانہ آیت';

  @override
  String get todaysIbadah => 'آج کی عبادت';

  @override
  String get quickAccess => 'فوری رسائی';

  @override
  String get assistant => 'اسسٹنٹ';

  @override
  String get places => 'مقامات';

  @override
  String get library => 'لائبریری';

  @override
  String get analytics => 'تجزیات';

  @override
  String get dailyDuas => 'روزانہ کی دعا';

  @override
  String essentialDuas(String count) {
    return '$count ضروری دعائیں';
  }

  @override
  String get duaUnavailableTitle => 'تصدیق شدہ دعائیں ابھی دستیاب نہیں ہیں۔';

  @override
  String get duaUnavailableBody =>
      'تصدیق شدہ روزانہ کی دعاؤں کو ابھی تک اس ڈیوائس سے ہم آہنگ نہیں کیا گیا ہے۔ غیر تصدیق شدہ فال بیک کی بجائے سورس شدہ دعاؤں کو لوڈ کرنے کے لیے کلاؤڈ سورس سے جڑیں۔';

  @override
  String get duaCategoryQuranic => 'قرآنی دعا';

  @override
  String get duaCategoryMorningEvening => 'صبح و شام';

  @override
  String get duaCategoryTasbih => 'تسبیح';

  @override
  String get duaCategoryProtection => 'تحفظ';

  @override
  String get duaCategoryBeginning => 'آغاز';

  @override
  String get duaCategorySleep => 'سونا';

  @override
  String get duaCategoryFoodDrink => 'کھانا اور پینا';

  @override
  String get duaCategoryForgiveness => 'بخشش';

  @override
  String get duaCategoryHome => 'گھر';

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
  String get islamicEducation => 'اسلامی تعلیم';

  @override
  String get sukunAudioTitle => 'سکن ساؤنڈ سکیپس';

  @override
  String get hadithCollections => 'احادیث کا مجموعہ';

  @override
  String get hadithSourcePending => 'تصدیق شدہ ذریعہ زیر التواء ہے۔';

  @override
  String get hadithUnavailableTitle =>
      'ابھی تک تصدیق شدہ احادیث کے مجموعے دستیاب نہیں ہیں۔';

  @override
  String get hadithUnavailableBody =>
      'یہ تعمیر اب بھی غیر تصدیق شدہ بیرونی حدیث فیڈ پر منحصر ہے۔ حدیث کی براؤزنگ اس وقت تک غیر فعال رہتی ہے جب تک کہ ایک ماخذ کردہ ڈیٹا سیٹ کی مطابقت پذیری نہ ہو جائے۔';

  @override
  String get paywallUnlockAll =>
      'اپنے روحانی سفر کے لیے تمام خصوصیات کو غیر مقفل کریں۔';

  @override
  String get premiumProductUnavailable =>
      'پریمیم پروڈکٹ ابھی دستیاب نہیں ہے۔ براہ کرم بعد میں دوبارہ کوشش کریں۔';

  @override
  String get premiumPurchaseFailed =>
      'خریداری مکمل نہیں ہو سکی۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String get paywallFeature1Title => 'نیورل اسسٹنٹ پلس';

  @override
  String get paywallFeature1Desc => 'لامحدود AI سے چلنے والا سوال و جواب';

  @override
  String get paywallFeature2Title => 'لامحدود آف لائن';

  @override
  String get paywallFeature2Desc => 'تمام تلاوتیں ڈاؤن لوڈ کریں۔';

  @override
  String get paywallFeature3Title => 'خصوصی ڈیزائن';

  @override
  String get paywallFeature3Desc => 'پریمیم تھیمز اور فونٹس';

  @override
  String get paywallFeature4Title => 'اشتہار سے پاک';

  @override
  String get paywallFeature4Desc => 'صفر اشتہارات';

  @override
  String get paywallGetAccess => 'تاحیات رسائی حاصل کریں - \$1.00';

  @override
  String get restorePurchases => 'خریداریوں کو بحال کریں۔';

  @override
  String get zakatCalculator => 'زکوٰۃ کیلکولیٹر';

  @override
  String get zakatGold => 'گولڈ (Altı)';

  @override
  String get zakatSilver => 'چاندی (Gümüş)';

  @override
  String get zakatCashBank => 'کیش/بینک';

  @override
  String get zakatBusiness => 'کاروبار';

  @override
  String get zakatInvestments => 'سرمایہ کاری';

  @override
  String get zakatWeightGrams => 'وزن (g)';

  @override
  String get zakatPricePerGram => 'قیمت/جی';

  @override
  String get zakatTotalAmount => 'کل رقم';

  @override
  String get zakatInventoryValue => 'انوینٹری ویلیو';

  @override
  String get zakatDebts => 'قرضے';

  @override
  String get zakatTotal => 'کل';

  @override
  String get calculateZakat => 'Calculate Zakat';

  @override
  String get nisabNotReached => 'نصاب نہیں پہنچا۔ زکوٰۃ فرض نہیں ہے۔';

  @override
  String get totalZakat => 'کل زکوٰۃ';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'نصاب: $nisab • اثاثے: $assets';
  }

  @override
  String get zakatGoldZakat => 'سونے کی زکوٰۃ';

  @override
  String get zakatSilverZakat => 'چاندی کی زکوٰۃ';

  @override
  String get zakatCashZakat => 'نقد زکوٰۃ';

  @override
  String get zakatBusinessZakat => 'کاروبار زکوٰۃ';

  @override
  String get zakatInvestmentZakat => 'سرمایہ کاری زکوٰۃ';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'روزانہ استفسار کی حد پوری ہو گئی۔ لامحدود کے لیے پریمیم میں اپ گریڈ کریں۔';

  @override
  String get chatbotErrorMsg =>
      'میں کوئی جواب نہیں دے سکا۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String get chatbotOfflinePrompt =>
      'تصدیق شدہ آف لائن اسلامی نالج بیس کو ابھی بھی تیار کیا جا رہا ہے۔ آپ ابھی آف لائن فال بیک کو فعال کر سکتے ہیں، لیکن یہ صرف اس وقت تک محدود محفوظ پیغامات دکھائے گا جب تک کہ ماخذ کردہ ڈیٹا سیٹ تیار نہ ہو۔\n\nکیا آپ آف لائن فال بیک کو فعال کرنا چاہیں گے؟';

  @override
  String get chatbotOfflineSwitched =>
      'آف لائن فال بیک فعال ہے۔ تصدیق شدہ مقامی اسلامی جوابات ابھی تیار نہیں ہیں۔';

  @override
  String get chatbotOfflineDownloadLabel => 'آف لائن فال بیک کو فعال کریں۔';

  @override
  String get downloadPreparing => 'ڈاؤن لوڈ کی تیاری کر رہا ہے...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'سورہ ڈاؤن لوڈ ہو رہی ہے $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'اس تلاوت کرنے والے کے لیے تمام سورتیں پہلے ہی ڈاؤن لوڈ ہو چکی ہیں۔';

  @override
  String get offlineQuranAudioPacks => 'Offline Quran Audio Packs';

  @override
  String storedOnDeviceMb(String size) {
    return 'Stored on device: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total سورتیں ڈاؤن لوڈ کی گئیں';
  }

  @override
  String get redownloadMissingRepair => 'مرمت / ڈاؤن لوڈ غائب';

  @override
  String get downloadAction => 'ڈاؤن لوڈ کریں۔';

  @override
  String get resumeDownload => 'ڈاؤن لوڈ دوبارہ شروع کریں۔';

  @override
  String get deleteDownloadedFiles => 'ڈاؤن لوڈ کردہ فائلوں کو حذف کریں۔';

  @override
  String get downloadCancelling => 'منسوخ ہو رہا ہے...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return '$reciter کے لیے ڈاؤن لوڈ منسوخ کر دیا گیا۔';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return '$reciter کے لیے ڈاؤن لوڈ مکمل ہو گیا۔';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return '$reciter کے لیے $failed ناکام سورتوں کے ساتھ ڈاؤن لوڈ ختم ہوا ($downloaded/$total ڈاؤن لوڈ کیا گیا)۔';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Deleted offline files for $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'تصدیق شدہ قرآن کے آڈیو ذرائع ابھی دستیاب نہیں ہیں۔';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'تصدیق شدہ قرآن آڈیو پیک نامکمل ہے ($available/$total)۔ بادل کے بیج کو ریفریش کریں اور دوبارہ کوشش کریں۔';
  }

  @override
  String get chatbotHint => 'Ask a question...';

  @override
  String get chatbotThinking => 'Thinking...';

  @override
  String get sukunMixerSubtitle => 'فطرت اور قرآن مکسر';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'سکن (فطرت)';

  @override
  String get sukunRainOfMercy => 'رحمت کی بارش';

  @override
  String get sukunGardenOfPeace => 'امن کا باغ';

  @override
  String get sukunMidnightCalm => 'آدھی رات کا سکون';

  @override
  String get sukunOceanTawheed => 'بحر توحید';

  @override
  String get sukunUnavailableTitle => 'ساؤنڈ اسکیپس دستیاب نہیں ہیں۔';

  @override
  String get sukunUnavailableBody =>
      'اس تعمیر میں ابھی تک مطلوبہ Sukun soundscape اثاثے شامل نہیں ہیں۔';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Day streak';

  @override
  String get bestStreak => 'Best streak';

  @override
  String get chatbotCloudAiLabel => 'کلاؤڈ AI';

  @override
  String get chatbotLocalAiLabel => 'آف لائن فال بیک';

  @override
  String get chatbotUseCloudAi => 'کلاؤڈ AI (Gemini) استعمال کریں';

  @override
  String get chatbotDownloadLocalAi => 'آف لائن فال بیک کو فعال کریں۔';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count باقی ہے۔';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API کنفیگر نہیں ہے۔ تصدیق شدہ آف لائن اسلامی رہنمائی ابھی تک دستیاب نہیں ہے۔';

  @override
  String get chatbotLocalNoInfo =>
      '[آف لائن] تصدیق شدہ مقامی اسلامی رہنمائی ابھی تک دستیاب نہیں ہے۔ حاصل کردہ جوابات کے لیے Cloud AI پر سوئچ کریں۔';

  @override
  String get mosques => 'مساجد';

  @override
  String get halalFood => 'حلال خوراک';

  @override
  String get placesSearchArea => 'اس علاقے کو تلاش کریں۔';

  @override
  String get nearbyMosques => 'آس پاس کی مساجد';

  @override
  String get islamicSchools => 'اسلامی مدارس';

  @override
  String placesFoundCount(String count) {
    return '$count ملا';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance کلومیٹر دور';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API کی خرابی: $statusCode';
  }

  @override
  String get placesNetworkError =>
      'نیٹ ورک کی خرابی۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String get placesLocationRequiredTitle => 'مقام درکار ہے۔';

  @override
  String get placesLocationRequiredBody =>
      'پہلے مقام متعین کریں تاکہ قریبی مساجد، حلال خوراک اور اسلامی اسکولوں کو درست طریقے سے تلاش کیا جا سکے۔';

  @override
  String get placesMapTilesUnavailableTitle =>
      'نقشہ کی ٹائلیں دستیاب نہیں ہیں۔';

  @override
  String get placesMapTilesUnavailableBody =>
      'ایک تصدیق شدہ نقشہ ٹائل ماخذ ابھی تک اس تعمیر کے لیے کنفیگر نہیں کیا گیا ہے۔ قریبی مقامات اب بھی آپ کے محفوظ کردہ مقام سے لوڈ ہو سکتے ہیں۔';

  @override
  String get placesDataSourceUnavailableTitle =>
      'مقامات کا ڈیٹا دستیاب نہیں ہے۔';

  @override
  String get placesDataSourceUnavailableBody =>
      'ایک تصدیق شدہ مقامات کا ڈیٹا اینڈ پوائنٹ ابھی تک اس تعمیر کے لیے کنفیگر نہیں ہوا ہے۔ قریبی تلاش کو فعال کرنے سے پہلے PLACES_OVERPASS_API_URL کو منظور شدہ پراکسی یا فراہم کنندہ پر سیٹ کریں۔';

  @override
  String get unknownPlaceName => 'نامعلوم نام';

  @override
  String get islamicPlaceFallback => 'اسلامی جگہ';

  @override
  String get asmaMeaning1 => 'رحم کرنے والا';

  @override
  String get asmaMeaning2 => 'مہربان';

  @override
  String get asmaMeaning3 => 'بادشاہ / ابدی رب';

  @override
  String get asmaMeaning4 => 'مقدس ترین';

  @override
  String get asmaMeaning5 => 'امن کا ذریعہ';

  @override
  String get asmaMeaning6 => 'تحفظ دینے والا';

  @override
  String get asmaMeaning7 => 'دی گارڈین';

  @override
  String get asmaMeaning8 => 'قیمتی / سب سے زیادہ غالب';

  @override
  String get asmaMeaning9 => 'مجبور';

  @override
  String get asmaMeaning10 => 'عظیم ترین';

  @override
  String get asmaMeaning11 => 'خالق';

  @override
  String get asmaMeaning12 => 'آرڈر بنانے والا';

  @override
  String get asmaMeaning13 => 'خوبصورتی کی تشکیل';

  @override
  String get asmaMeaning14 => 'بخشنے والا';

  @override
  String get asmaMeaning15 => 'ماتحت کرنے والا';

  @override
  String get asmaMeaning16 => 'سب کو دینے والا';

  @override
  String get asmaMeaning17 => 'The Sustainer';

  @override
  String get asmaMeaning18 => 'اوپنر';

  @override
  String get asmaMeaning19 => 'سب کا جاننے والا';

  @override
  String get asmaMeaning20 => 'کنسٹریکٹر';

  @override
  String get asmaMeaning21 => 'The Reliever';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'عزّت دینے والا';

  @override
  String get asmaMeaning25 => 'ذلیل کرنے والا';

  @override
  String get asmaMeaning26 => 'سب کا سننے والا';

  @override
  String get asmaMeaning27 => 'The Seer of All';

  @override
  String get asmaMeaning28 => 'جج';

  @override
  String get asmaMeaning29 => 'The Just';

  @override
  String get asmaMeaning30 => 'لطیف ایک';

  @override
  String get asmaMeaning31 => 'The All Aware';

  @override
  String get asmaMeaning32 => 'پیشگی';

  @override
  String get asmaMeaning33 => 'The Magnificent';

  @override
  String get asmaMeaning34 => 'عظیم بخشنے والا';

  @override
  String get asmaMeaning35 => 'شکر کا بدلہ دینے والا';

  @override
  String get asmaMeaning36 => 'سب سے اعلیٰ';

  @override
  String get asmaMeaning37 => 'عظیم ترین';

  @override
  String get asmaMeaning38 => 'محفوظ کرنے والا';

  @override
  String get asmaMeaning39 => 'پرورش کرنے والا';

  @override
  String get asmaMeaning40 => 'The Reckoner';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'سخی';

  @override
  String get asmaMeaning43 => 'The Watchful One';

  @override
  String get asmaMeaning44 => 'نماز کا جواب دینے والا';

  @override
  String get asmaMeaning45 => 'The All Comprehending';

  @override
  String get asmaMeaning46 => 'The Perfectly Wise';

  @override
  String get asmaMeaning47 => 'محبت کرنے والا';

  @override
  String get asmaMeaning48 => 'سب سے زیادہ شان والا';

  @override
  String get asmaMeaning49 => 'قیامت کرنے والا';

  @override
  String get asmaMeaning50 => 'گواہ';

  @override
  String get asmaMeaning51 => 'حقیقت';

  @override
  String get asmaMeaning52 => 'آل کافی ٹرسٹی';

  @override
  String get asmaMeaning53 => 'تمام طاقت کا مالک';

  @override
  String get asmaMeaning54 => 'The Forceful';

  @override
  String get asmaMeaning55 => 'محافظ';

  @override
  String get asmaMeaning56 => 'تعریف شدہ';

  @override
  String get asmaMeaning57 => 'تشخیص کنندہ';

  @override
  String get asmaMeaning58 => 'موجد';

  @override
  String get asmaMeaning59 => 'بحال کرنے والا';

  @override
  String get asmaMeaning60 => 'زندگی دینے والا';

  @override
  String get asmaMeaning61 => 'زندگی لینے والا';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'خود کو برقرار رکھنے والا';

  @override
  String get asmaMeaning64 => 'The Finder';

  @override
  String get asmaMeaning65 => 'The Glorious';

  @override
  String get asmaMeaning66 => 'صرف ایک';

  @override
  String get asmaMeaning67 => 'The One';

  @override
  String get asmaMeaning68 => 'وہ ایک جسے سب نے تلاش کیا۔';

  @override
  String get asmaMeaning69 => 'The طاقتور';

  @override
  String get asmaMeaning70 => 'تمام طاقتوں کا خالق';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'The Delayer';

  @override
  String get asmaMeaning73 => 'پہلا';

  @override
  String get asmaMeaning74 => 'آخری';

  @override
  String get asmaMeaning75 => 'The Manifest';

  @override
  String get asmaMeaning76 => 'The پوشیدہ';

  @override
  String get asmaMeaning77 => 'گورنر';

  @override
  String get asmaMeaning78 => 'Supreme One';

  @override
  String get asmaMeaning79 => 'نیکی کرنے والا';

  @override
  String get asmaMeaning80 => 'توبہ کی ہدایت';

  @override
  String get asmaMeaning81 => 'The Avenger';

  @override
  String get asmaMeaning82 => 'بخشنے والا';

  @override
  String get asmaMeaning83 => 'The Clement';

  @override
  String get asmaMeaning84 => 'سب کا مالک / خود مختار';

  @override
  String get asmaMeaning85 => 'عظمت اور فضل کا مالک';

  @override
  String get asmaMeaning86 => 'مساوات والا';

  @override
  String get asmaMeaning87 => 'جمع کرنے والا';

  @override
  String get asmaMeaning88 => 'The Rich One';

  @override
  String get asmaMeaning89 => 'The enricher';

  @override
  String get asmaMeaning90 => 'نقصان کو روکنے والا';

  @override
  String get asmaMeaning91 => 'نقصان پہنچانے والا';

  @override
  String get asmaMeaning92 => 'فائدے دینے والا';

  @override
  String get asmaMeaning93 => 'The Light';

  @override
  String get asmaMeaning94 => 'The Guideer';

  @override
  String get asmaMeaning95 => 'موجد';

  @override
  String get asmaMeaning96 => 'لازوال';

  @override
  String get asmaMeaning97 => 'وارث';

  @override
  String get asmaMeaning98 => 'سب سے زیادہ صحیح رہنما';

  @override
  String get asmaMeaning99 => 'مریض ایک';
}
