// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Pushto Pashto (`ps`).
class AppLocalizationsPs extends AppLocalizations {
  AppLocalizationsPs([String locale = 'ps']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'د اسلام د رڼا لار';

  @override
  String get home => 'Home';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'ذکر';

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
  String get fajr => 'فجر';

  @override
  String get sunrise => 'لمر ختو';

  @override
  String get dhuhr => 'ډوهر';

  @override
  String get asr => 'عصر';

  @override
  String get maghrib => 'ماښام';

  @override
  String get isha => 'ایشا';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'د $prayerName لپاره وخت';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'دا د لمانځه وخت دی $prayerName.';
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
  String get systemDefault => 'د سیسټم ډیفالټ';

  @override
  String get currentLocation => 'Current Location (GPS)';

  @override
  String get locationServiceDisabled => 'د ځای خدمت غیر فعال دی.';

  @override
  String get locationPermissionDenied => 'د ځای اجازه رد شوه.';

  @override
  String get locationDetectionFailed =>
      'ستاسو ځای نشی معلومولی. مهرباني وکړئ په لاسي ډول یو ښار وټاکئ یا بیا هڅه وکړئ.';

  @override
  String citiesCount(String count) {
    return '$count ښارونه';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'هیڅ پایله ونه موندل شوه';

  @override
  String get loading => 'بار کول...';

  @override
  String get error => 'تېروتنه';

  @override
  String get appErrorOccurred => 'یوه تېروتنه رامنځته شوه';

  @override
  String get appUnknownError => 'نامعلومه تېروتنه';

  @override
  String get quranLoadFailed =>
      'د قرآن محتوا نشي پورته کولی. مهرباني وکړئ بیا هڅه وکړئ.';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'تازه کړئ';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'ړنګول';

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
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

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
  String get tafsirLoading => 'د تفسیر بارول...';

  @override
  String get tafsirSourceLabel => 'د تفسیر سرچینه';

  @override
  String get tafsirNoSurahFound => 'د دې سورت لپاره هیڅ تفسیر ندی موندل شوی.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'د آیت $ayah لپاره هیڅ تفسیر ونه موندل شو.';
  }

  @override
  String get tafsirLoadFailed => 'تفسير نشي پورته کولى.';

  @override
  String get tafsirNoTextForAyah => 'د دې آيت لپاره د تفسیر متن نشته.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'د تفسیر ډاونلوډ کول $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'د تفسیر بارول $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'د تفسیر سرچینې د HTTP $statusCode تېروتنه راوګرځوله.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'د تفسير غوره شوې سرچينه هيڅ داخله نه ده راګرځولې.';

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
  String get duaMeaning1 =>
      'نور دا دعا کوي چې ای زموږ ربه موږ ته په دنیا او آخرت کې خیر راکړه او د اور له عذابه مو وساته.';

  @override
  String get duaMeaning2 =>
      'خدای په هیڅ نفس باندې د هغه له توان څخه ډیر بار نه اچوي: هر یو هر هغه څه ترلاسه کوي چې ښه یې کړي وي، او خپل بد یې زیانمن کړي - ای ربه، که موږ هیر کړو یا غلطی وکړو نو موږ ته مه ورکوه. ربه، پر موږ مه باروه لکه څنګه چې تا له موږ څخه مخکې پر خلکو بار کړی و. ربه، موږ له هغه څخه ډیر بار مه راکوه چې موږ یې د زغملو توان لرو. موږ ته بښنه وکړه، موږ ته بښنه وکړه او په موږ رحم وکړه. ته زموږ ساتونکی یې، نو د کافرانو په مقابل کې له موږ سره مرسته وکړه.»';

  @override
  String get duaMeaning3 =>
      '\"زموږ ربه، زموږ زړونه مه پریږده وروسته له دې چې تا موږ ته لارښوونه وکړه. موږ ته خپل رحم راکړه: ته تل ورکونکی یې.';

  @override
  String get duaMeaning4 =>
      'ربه، اجازه راکړه چې زه او زما اولادونه لمونځ ادا کړم. زموږ ربه، زما غوښتنه قبول کړه.';

  @override
  String get duaMeaning5 =>
      'او په مهربانۍ سره د هغوی په وړاندې خپل وزر ښکته کړه او ووایه: ربه، په دوی رحم وکړه لکه څنګه چې دوی زما په کوچنیوالي کې زما پالنه کوله.';

  @override
  String get duaMeaning6 =>
      'خدای پاک دی، هغه څوک چې په ریښتیا کنټرول لري. [رسول الله] مخکې له دې چې وحی بشپړ شي په تلاوت کې بېړه مه کوه، بلکې ووایه: ای ربه زما په علم کې زیاتوالی را کړه!';

  @override
  String get duaMeaning7 =>
      'ووایه: ربه، بښنه وکړه او رحم وکړه، ته تر ټولو زیات رحم کوونکی یې.';

  @override
  String get duaMeaning8 =>
      'هغه څوک چې دعا کوي، \"ای ربه، موږ ته زموږ په میړه او اولاد کې خوښي راکړه. موږ د هغو کسانو لپاره ښه مثالونه جوړ کړه څوک چې تاسو پوهیږي.';

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
  String get hadith => 'حدیث';

  @override
  String get hadithCollection => 'د حدیثو ټولګه';

  @override
  String get hadithBooks => 'د حدیثو کتابونه';

  @override
  String get searchHadith => 'د حدیث لټون';

  @override
  String get asmaulHusna => 'اسماء الحسنه';

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
  String get openInYoutube => 'په یوټیوب کې خلاص کړئ';

  @override
  String get ibadahTracker => 'عبادت تعقیبونکی';

  @override
  String get fasting => 'Fasting';

  @override
  String get quranReading => 'Quran Reading';

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
  String get islamicNewYear => 'نوی اسلامي کال';

  @override
  String get mawlidAnNabi => 'میلاد النبی';

  @override
  String get specialDayDateRamadanStart => '۱ـ روژه';

  @override
  String get specialDayDateLaylatAlQadr => '27 رمضان';

  @override
  String get specialDayDateEidAlFitr => '۱ د شوال';

  @override
  String get specialDayDateEidAlAdha => '۱۰ ذوالحجې';

  @override
  String get specialDayDateIslamicNewYear => '۱ محرم';

  @override
  String get specialDayDateMawlidAnNabi => '۱۲ ربیع الاول';

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
  String qiblaCompassErrorDetails(String error) {
    return 'د کمپاس تېروتنه: $error';
  }

  @override
  String get qiblaSensorUnavailable => 'په دې وسیله د کمپاس سینسر شتون نلري.';

  @override
  String get qiblaLocationRequiredTitle => 'د قبلې لپاره ځای اړین دی';

  @override
  String get qiblaLocationRequiredBody =>
      'د قبلې کمپاس کارولو دمخه خپل اصلي ځای وټاکئ ترڅو سمت په دقیق ډول محاسبه شي.';

  @override
  String get adhanNotificationChannelName => 'د اذان خبرتیاوې';

  @override
  String get adhanNotificationChannelDescription =>
      'د اذان په غږ سره د لمانځه وخت خبرتیا.';

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
  String get theme => 'موضوع';

  @override
  String get lightMode => 'د رڼا حالت';

  @override
  String get darkMode => 'تیاره حالت';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'About';

  @override
  String get version => 'نسخه';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get termsOfService => 'Terms of Service';

  @override
  String get contactUs => 'Contact Us';

  @override
  String get rateApp => 'د اپلیکیشن درجه بندي کړئ';

  @override
  String get shareApp => 'اپلیکیشن شریک کړئ';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'ډاونلوډ مدیر';

  @override
  String get downloads => 'ډاونلوډونه';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'ډاونلوډ بشپړ شو';

  @override
  String get downloadFailed => 'ډاونلوډ ناکام شو';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'د انټرنیټ اتصال نشته';

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
  String get tapToCount => 'د شمیرلو لپاره ټایپ کړئ';

  @override
  String get zikrCompletedMashAllah => 'بشپړ شو! ماشاءالله';

  @override
  String get zikrMeaningSubhanAllah => 'الله جل جلاله له هر عیب څخه لوړ دی.';

  @override
  String get zikrMeaningAlhamdulillah => 'ټول ستاينه د الله لره ده.';

  @override
  String get zikrMeaningAllahuAkbar => 'الله لوی دی.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'له الله پرته بل معبود نشته.';

  @override
  String get zikrMeaningAstaghfirullah => 'زه د الله تعالی څخه بخښنه غواړم.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'د الله جل جلاله له لاری پرته هیڅ ځواک او قوت نشته.';

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
  String get offlineDownloadManager => 'د آفلاین ډاونلوډ مدیر';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'د داخلي وسیلو ذخیره خالي کړئ.';

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
  String get audioVoice => 'د غږ غږ';

  @override
  String get audioVoiceMisharyAlafasy => 'نارینه (مشیری الفاسی)';

  @override
  String get audioVoiceAbdulBaset => 'نارینه (عبدالباسط)';

  @override
  String get audioVoiceSudais => 'نارینه (سدیس)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'د قبلې انډول';

  @override
  String get compassSmoothing => 'د کمپاس نرمول';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'کیلیبریشن آفسیټ';

  @override
  String currentOffset(Object offset) {
    return 'اوسنی: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'تنظیم کړئ که ستاسو کمپاس لاسي سمون ته اړتیا ولري. مثبت ارزښتونه د ساعت په لور حرکت کوي.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'تشخیص';

  @override
  String get diagnosticsNotSet => 'ټاکل شوی نه دی';

  @override
  String get diagnosticsPrayerProfile => 'د لمانځه پروفایل';

  @override
  String get diagnosticsPrayerSource => 'د لمانځه اداره';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'د لاسي دودیز زاویې (هیڅ اداري سرچینه نشته)';

  @override
  String get diagnosticsCloudDriven => 'بادل چلول';

  @override
  String get diagnosticsAdhanAudioAssets => 'د اذان آډیو شتمنۍ';

  @override
  String get diagnosticsUiAudioAssets => 'د UI آډیو شتمنۍ';

  @override
  String get diagnosticsQuranAudioAssets => 'د قرآن آډیو شتمنۍ';

  @override
  String get diagnosticsAudioAssets => 'آډیو شتمنۍ';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count دوتنې';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'ښکاره لوستل ناکام شول: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'سیمه ایز کول سیمه ایز کول';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count ملاتړ شوی';
  }

  @override
  String get diagnosticsQuranDataset => 'د قرآن ډیټاسیټ';

  @override
  String get diagnosticsQuranSurahs => 'د قرآن سورتونه';

  @override
  String get diagnosticsQuranAyahs => 'د قرانکریم ایاتونه';

  @override
  String get diagnosticsQuranJuzMetadata => 'د قرآن جوز میټاډاټا';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'د کلاوډ میزونه په سوپا بیس کې ورک شوي؛ بنډل فال بیک فعال';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'د کلاوډ چک ناکام شو: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'کلاوډ جوز میټاډاټا ورک شوی؛ بنډل ساختماني فال بیک فعال';

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
      'کیلیبریشن ته اړتیا ده. وسیله په 8 شکل کې وګرځوئ.';

  @override
  String get dailyVerse => 'ورځنی آیت';

  @override
  String get todaysIbadah => 'د نن ورځې عبادت';

  @override
  String get quickAccess => 'چټک لاسرسی';

  @override
  String get assistant => 'معاون';

  @override
  String get places => 'ځایونه';

  @override
  String get library => 'کتابتون';

  @override
  String get analytics => 'تجزیات';

  @override
  String get dailyDuas => 'ورځنۍ دعا';

  @override
  String essentialDuas(String count) {
    return '$count ضروري دعاګانې';
  }

  @override
  String get duaUnavailableTitle => 'تایید شوي دعاګانې لاهم شتون نلري';

  @override
  String get duaUnavailableBody =>
      'تایید شوي ورځني دعاګانې لا تر اوسه دې وسیله سره همغږي شوي ندي. د بادل سرچینې سره وصل شئ ترڅو د غیر تصدیق شوي فال بیک پرځای د سرچینې شوي دعا بار کړئ.';

  @override
  String get duaCategoryQuranic => 'قرآنی دعا';

  @override
  String get duaCategoryMorningEvening => 'سهار او ماښام';

  @override
  String get duaCategoryTasbih => 'تسبیح';

  @override
  String get duaCategoryProtection => 'ساتنه';

  @override
  String get duaCategoryBeginning => 'پیل';

  @override
  String get duaCategorySleep => 'خوب';

  @override
  String get duaCategoryFoodDrink => 'خواړه او څښاک';

  @override
  String get duaCategoryForgiveness => 'بخښنه';

  @override
  String get duaCategoryHome => 'کور';

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
  String get islamicEducation => 'اسلامي زده کړه';

  @override
  String get sukunAudioTitle => 'د سوکون غږونه';

  @override
  String get hadithCollections => 'د حدیثو ټولګه';

  @override
  String get hadithSourcePending => 'تایید شوې سرچینه پاتې ده';

  @override
  String get hadithUnavailableTitle =>
      'د حدیثو تصدیق شوي ټولګه لا تر اوسه شتون نلري';

  @override
  String get hadithUnavailableBody =>
      'دا جوړښت لاهم په غیر تصدیق شوي بهرني حدیث فیډ پورې اړه لري. د حدیث لټون کول غیر فعال پاتې کیږي تر هغه چې سرچینه شوي ډیټاسیټ همغږي نشي.';

  @override
  String get paywallUnlockAll =>
      'ستاسو د روحاني سفر لپاره ټولې ځانګړتیاوې خلاص کړئ';

  @override
  String get premiumProductUnavailable =>
      'پریمیم محصول همدا اوس شتون نلري. مهرباني وکړئ وروسته بیا هڅه وکړئ.';

  @override
  String get premiumPurchaseFailed =>
      'پیرود بشپړ نه شو. مهرباني وکړئ بیا هڅه وکړئ.';

  @override
  String get paywallFeature1Title => 'د عصبي اسسټنټ پلس';

  @override
  String get paywallFeature1Desc => 'لامحدود AI ځواک لرونکي پوښتنې او ځوابونه';

  @override
  String get paywallFeature2Title => 'لامحدود آف لائن';

  @override
  String get paywallFeature2Desc => 'ټول تلاوتونه ډاونلوډ کړئ';

  @override
  String get paywallFeature3Title => 'ځانګړي ډیزاینونه';

  @override
  String get paywallFeature3Desc => 'پریمیم موضوعات او فونټونه';

  @override
  String get paywallFeature4Title => 'د اعلان څخه پاک';

  @override
  String get paywallFeature4Desc => 'صفر اعلانونه';

  @override
  String get paywallGetAccess => 'د ټول عمر لاسرسی ترلاسه کړئ - \$1.00';

  @override
  String get restorePurchases => 'پیرودونه بیرته راګرځول';

  @override
  String get zakatCalculator => 'د زکات حساب ورکوونکی';

  @override
  String get zakatGold => 'طلا (Altın)';

  @override
  String get zakatSilver => 'سپین زر (Gümüş)';

  @override
  String get zakatCashBank => 'نغدي / بانک';

  @override
  String get zakatBusiness => 'سوداګرۍ';

  @override
  String get zakatInvestments => 'پانګه اچونه';

  @override
  String get zakatWeightGrams => 'وزن (g)';

  @override
  String get zakatPricePerGram => 'قیمت/جی';

  @override
  String get zakatTotalAmount => 'ټول رقم';

  @override
  String get zakatInventoryValue => 'د موجوديت ارزښت';

  @override
  String get zakatDebts => 'پورونه';

  @override
  String get zakatTotal => 'ټول';

  @override
  String get calculateZakat => 'زکات حساب کړئ';

  @override
  String get nisabNotReached => 'نصاب نه دی رسیدلی. زکات فرض نه دی.';

  @override
  String get totalZakat => 'ټول زکات';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'نصاب: $nisab • شتمنۍ: $assets';
  }

  @override
  String get zakatGoldZakat => 'د سرو زرو زکات';

  @override
  String get zakatSilverZakat => 'د سپینو زرو زکات';

  @override
  String get zakatCashZakat => 'نغدي زکات';

  @override
  String get zakatBusinessZakat => 'د سوداګرۍ زکات';

  @override
  String get zakatInvestmentZakat => 'د پانګونې زکات';

  @override
  String get chatbotGreeting =>
      'السلام علیکم! زه ستاسو اسلامي معاون یم. له ما څخه د لمانځه، روژې، زکات او یا کومې اسلامي موضوع په اړه پوښتنه وکړئ.';

  @override
  String get chatbotLimitReached =>
      'د ورځني پوښتنې حد ته رسیدلی. د لامحدود لپاره پریمیم ته لوړ کړئ.';

  @override
  String get chatbotErrorMsg =>
      'زه نشم کولی ځواب پیدا کړم. مهرباني وکړئ بیا هڅه وکړئ.';

  @override
  String get chatbotOfflinePrompt =>
      'د تصدیق شوي آفلاین اسلامي پوهه اساس لاهم تنظیمیږي. تاسو اوس کولی شئ آفلاین فال بیک فعال کړئ، مګر دا به یوازې محدود خوندي پیغامونه وښيي تر هغه چې سرچینه شوي ډیټاسیټ چمتو نه وي.\n\nایا تاسو غواړئ آفلاین فال بیک فعال کړئ؟';

  @override
  String get chatbotOfflineSwitched =>
      'آف لائن فال بیک فعال شوی. تصدیق شوي محلي اسلامي ځوابونه لاهم چمتو ندي.';

  @override
  String get chatbotOfflineDownloadLabel => 'آف لائن فال بیک فعال کړئ';

  @override
  String get downloadPreparing => 'د ډاونلوډ چمتو کول...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'د سورت ډاونلوډ کول $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'ټول سورتونه لا دمخه د دې تلاوت کونکي لپاره ډاونلوډ شوي.';

  @override
  String get offlineQuranAudioPacks => 'آف لائن قرآن آډیو پیک';

  @override
  String storedOnDeviceMb(String size) {
    return 'په وسیله ذخیره شوی: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total سورتونه ډاونلوډ شوي';
  }

  @override
  String get redownloadMissingRepair => 'ترمیم / ډاونلوډ ورک شوی';

  @override
  String get downloadAction => 'ډاونلوډ کړئ';

  @override
  String get resumeDownload => 'ډاونلوډ بیا پیل کړئ';

  @override
  String get deleteDownloadedFiles => 'ډاونلوډ شوي فایلونه حذف کړئ';

  @override
  String get downloadCancelling => 'لغوه کول...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'ډاونلوډ د $reciter لپاره لغوه شو.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'ډاونلوډ د $reciter لپاره بشپړ شو.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'ډاونلوډ بشپړ شو د $reciter لپاره د $failed ناکام سورتونو سره ($downloaded/$total ډاونلوډ شوی).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'د $reciter لپاره آف لائن فایلونه حذف شوي.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'د قرآن کريم آډیو منابع اوس مهال شتون نلري.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'تصدیق شوی د قرآن آډیو کڅوړه نیمګړې ده ($available/$total). د بادل تخم تازه کړئ او بیا هڅه وکړئ.';
  }

  @override
  String get chatbotHint => 'یوه پوښتنه وکړئ ...';

  @override
  String get chatbotThinking => 'فکر...';

  @override
  String get sukunMixerSubtitle => 'فطرت او قرآن مکسر';

  @override
  String get audioPlayFailed => 'د آډیو پلې بیک ناکام شو';

  @override
  String get sukunNatureLabel => 'سوکون (طبیعت)';

  @override
  String get sukunRainOfMercy => 'د رحمت باران';

  @override
  String get sukunGardenOfPeace => 'د سولې باغ';

  @override
  String get sukunMidnightCalm => 'د نیمې شپې آرام';

  @override
  String get sukunOceanTawheed => 'سمندر توحید';

  @override
  String get sukunUnavailableTitle => 'غږیز منظرونه شتون نلري';

  @override
  String get sukunUnavailableBody =>
      'په دې جوړونه کې تر اوسه د Sukun soundscape اثاثې شاملې ندي.';

  @override
  String get prayerCompletion => 'د لمانځه تکمیل';

  @override
  String get streaks => 'سټریکس';

  @override
  String get dayStreak => 'د ورځې جریان';

  @override
  String get bestStreak => 'غوره سلسله';

  @override
  String get chatbotCloudAiLabel => 'کلاوډ AI';

  @override
  String get chatbotLocalAiLabel => 'آف لائن Fallback';

  @override
  String get chatbotUseCloudAi => 'د کلاوډ AI (Gemini) وکاروئ';

  @override
  String get chatbotDownloadLocalAi => 'آف لائن فال بیک فعال کړئ';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count پاتې شو';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'کلاوډ API نه دی ترتیب شوی. تصدیق شوی آف لائن اسلامی لارښود لا تر اوسه شتون نلري.';

  @override
  String get chatbotLocalNoInfo =>
      '[افلاین] تایید شوی محلي اسلامي لارښود لا تر اوسه شتون نلري. د سرچینې ځوابونو لپاره کلاوډ AI ته لاړشئ.';

  @override
  String get mosques => 'جوماتونه';

  @override
  String get halalFood => 'حلال خواړه';

  @override
  String get placesSearchArea => 'دا سیمه وپلټئ';

  @override
  String get nearbyMosques => 'نږدې جوماتونه';

  @override
  String get islamicSchools => 'اسلامي ښوونځي';

  @override
  String placesFoundCount(String count) {
    return '$count وموندل شو';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance کیلومتره لرې';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API تېروتنه: $statusCode';
  }

  @override
  String get placesNetworkError => 'د شبکې تېروتنه. مهرباني وکړئ بیا هڅه وکړئ.';

  @override
  String get placesLocationRequiredTitle => 'ځای اړین دی';

  @override
  String get placesLocationRequiredBody =>
      'لومړی ځای وټاکئ ترڅو نږدې جوماتونه، حلال خواړه، او اسلامي ښوونځي په سمه توګه وپلټل شي.';

  @override
  String get placesMapTilesUnavailableTitle => 'د نقشې ټایلونه شتون نلري';

  @override
  String get placesMapTilesUnavailableBody =>
      'د دې جوړونې لپاره د تایید شوي نقشې ټایل سرچینه لا نه ده ترتیب شوې. نږدې ځایونه لاهم ستاسو له خوندي شوي ځای څخه بار کولی شي.';

  @override
  String get placesDataSourceUnavailableTitle => 'د ځایونو ډاټا شتون نلري';

  @override
  String get placesDataSourceUnavailableBody =>
      'د تایید شوي ځایونو ډیټا پای ټکی لاهم د دې جوړونې لپاره نه دی ترتیب شوی. د نږدې لټون فعالولو دمخه PLACES_OVERPASS_API_URL یو منظور شوي پراکسي یا چمتو کونکي ته تنظیم کړئ.';

  @override
  String get unknownPlaceName => 'نامعلوم نوم';

  @override
  String get islamicPlaceFallback => 'اسلامي ځای';

  @override
  String get asmaMeaning1 => 'رحم کوونکی';

  @override
  String get asmaMeaning2 => 'رحم کوونکی';

  @override
  String get asmaMeaning3 => 'پاچا / ابدي رب';

  @override
  String get asmaMeaning4 => 'ترټولو مقدس';

  @override
  String get asmaMeaning5 => 'د سولې سرچینه';

  @override
  String get asmaMeaning6 => 'د امنیت ورکوونکی';

  @override
  String get asmaMeaning7 => 'سرپرست';

  @override
  String get asmaMeaning8 => 'قیمتي / خورا غالب';

  @override
  String get asmaMeaning9 => 'مجبور';

  @override
  String get asmaMeaning10 => 'ترټولو لوی';

  @override
  String get asmaMeaning11 => 'خالق';

  @override
  String get asmaMeaning12 => 'د نظم جوړونکی';

  @override
  String get asmaMeaning13 => 'د ښکلا شکل';

  @override
  String get asmaMeaning14 => 'بښونکی';

  @override
  String get asmaMeaning15 => 'فرعي';

  @override
  String get asmaMeaning16 => 'د ټولو ورکوونکی';

  @override
  String get asmaMeaning17 => 'ساتونکی';

  @override
  String get asmaMeaning18 => 'اوپنر';

  @override
  String get asmaMeaning19 => 'په هر څه پوه دی';

  @override
  String get asmaMeaning20 => 'Constrictor';

  @override
  String get asmaMeaning21 => 'د راحت ورکوونکی';

  @override
  String get asmaMeaning22 => 'د اباسر';

  @override
  String get asmaMeaning23 => 'Exalter';

  @override
  String get asmaMeaning24 => 'د درناوي وړ';

  @override
  String get asmaMeaning25 => 'ذلت کوونکی';

  @override
  String get asmaMeaning26 => 'د ټولو اورېدونکی';

  @override
  String get asmaMeaning27 => 'د ټولو لیدونکی';

  @override
  String get asmaMeaning28 => 'قاضي';

  @override
  String get asmaMeaning29 => 'بس';

  @override
  String get asmaMeaning30 => 'فرعي یو';

  @override
  String get asmaMeaning31 => 'ټول خبر دي';

  @override
  String get asmaMeaning32 => 'مخکینی';

  @override
  String get asmaMeaning33 => 'په زړه پورې';

  @override
  String get asmaMeaning34 => 'لوی بخښونکی';

  @override
  String get asmaMeaning35 => 'د شکر ادا کوونکی';

  @override
  String get asmaMeaning36 => 'تر ټولو لوړ';

  @override
  String get asmaMeaning37 => 'ترټولو لوی';

  @override
  String get asmaMeaning38 => 'د ساتونکی';

  @override
  String get asmaMeaning39 => 'د تغذیه کوونکی';

  @override
  String get asmaMeaning40 => 'د حساب ورکوونکی';

  @override
  String get asmaMeaning41 => 'مجلس';

  @override
  String get asmaMeaning42 => 'سخاوتمند';

  @override
  String get asmaMeaning43 => 'څار کوونکی';

  @override
  String get asmaMeaning44 => 'د لمانځه ځواب ورکوونکی';

  @override
  String get asmaMeaning45 => 'ټول درک کول';

  @override
  String get asmaMeaning46 => 'په کامل ډول هوښيار';

  @override
  String get asmaMeaning47 => 'هغه مینه وال';

  @override
  String get asmaMeaning48 => 'تر ټولو غوره';

  @override
  String get asmaMeaning49 => 'قیامت کوونکی';

  @override
  String get asmaMeaning50 => 'شاهد';

  @override
  String get asmaMeaning51 => 'حقیقت';

  @override
  String get asmaMeaning52 => 'ټول کافي امانت دار';

  @override
  String get asmaMeaning53 => 'د ټول ځواک خاوند';

  @override
  String get asmaMeaning54 => 'ځواکمن';

  @override
  String get asmaMeaning55 => 'ساتونکی';

  @override
  String get asmaMeaning56 => 'د ستاینې وړ';

  @override
  String get asmaMeaning57 => 'ارزوونکی';

  @override
  String get asmaMeaning58 => 'پیدا کوونکی';

  @override
  String get asmaMeaning59 => 'بیارغونکی';

  @override
  String get asmaMeaning60 => 'د ژوند ورکوونکی';

  @override
  String get asmaMeaning61 => 'د ژوند اخیستونکی';

  @override
  String get asmaMeaning62 => 'تل ژوندی';

  @override
  String get asmaMeaning63 => 'د ځان ساتونکي ساتونکی';

  @override
  String get asmaMeaning64 => 'موندونکی';

  @override
  String get asmaMeaning65 => 'په زړه پوری';

  @override
  String get asmaMeaning66 => 'یوازې یو';

  @override
  String get asmaMeaning67 => 'هغه یو';

  @override
  String get asmaMeaning68 => 'هغه څوک چې د ټولو په لټه کې دی';

  @override
  String get asmaMeaning69 => 'ځواکمن';

  @override
  String get asmaMeaning70 => 'د ټولو قدرتونو خالق';

  @override
  String get asmaMeaning71 => 'Expediter';

  @override
  String get asmaMeaning72 => 'ځنډونکی';

  @override
  String get asmaMeaning73 => 'لومړی';

  @override
  String get asmaMeaning74 => 'وروستی';

  @override
  String get asmaMeaning75 => 'د منشور';

  @override
  String get asmaMeaning76 => 'پټ';

  @override
  String get asmaMeaning77 => 'والي';

  @override
  String get asmaMeaning78 => 'ستر ذات';

  @override
  String get asmaMeaning79 => 'د ښه کار کوونکی';

  @override
  String get asmaMeaning80 => 'د توبې لارښود';

  @override
  String get asmaMeaning81 => 'د انتقام اخیستونکی';

  @override
  String get asmaMeaning82 => 'بښونکی';

  @override
  String get asmaMeaning83 => 'کلیمینټ';

  @override
  String get asmaMeaning84 => 'مالک / د ټولو حاکم';

  @override
  String get asmaMeaning85 => 'د عظمت او فضل خاوند';

  @override
  String get asmaMeaning86 => 'مساوي یو';

  @override
  String get asmaMeaning87 => 'راټولوونکی';

  @override
  String get asmaMeaning88 => 'بډایه سړی';

  @override
  String get asmaMeaning89 => 'بډایه کونکی';

  @override
  String get asmaMeaning90 => 'د ضرر مخنیوی کوونکی';

  @override
  String get asmaMeaning91 => 'د ضرر راوړونکی';

  @override
  String get asmaMeaning92 => 'د ګټو ورکوونکی';

  @override
  String get asmaMeaning93 => 'رڼا';

  @override
  String get asmaMeaning94 => 'لارښود';

  @override
  String get asmaMeaning95 => 'پیدا کوونکی';

  @override
  String get asmaMeaning96 => 'تلپاتې';

  @override
  String get asmaMeaning97 => 'د وارثانو';

  @override
  String get asmaMeaning98 => 'ترټولو غوره لارښود';

  @override
  String get asmaMeaning99 => 'مریض یو';
}
