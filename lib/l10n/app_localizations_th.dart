// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Islamic Way of Light';

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
  String get fajr => 'ฟอจ';

  @override
  String get sunrise => 'พระอาทิตย์ขึ้น';

  @override
  String get dhuhr => 'ดูห์ร';

  @override
  String get asr => 'อาศร';

  @override
  String get maghrib => 'มักริบ';

  @override
  String get isha => 'อิชา';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'ถึงเวลาสำหรับ $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'ถึงเวลาสวดภาวนา $prayerName';
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
  String get locationServiceDisabled => 'บริการตำแหน่งถูกปิดใช้งาน';

  @override
  String get locationPermissionDenied => 'การอนุญาตตำแหน่งถูกปฏิเสธ';

  @override
  String citiesCount(String count) {
    return '$count เมือง';
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
  String get appErrorOccurred => 'เกิดข้อผิดพลาด';

  @override
  String get appUnknownError => 'ข้อผิดพลาดที่ไม่รู้จัก';

  @override
  String get quranLoadFailed =>
      'ไม่สามารถโหลดเนื้อหาอัลกุรอานได้ โปรดลองอีกครั้ง';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Refresh';

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
      'คนอื่น ๆ อธิษฐานว่า \'พระเจ้าของเรา โปรดประทานความดีแก่เราทั้งในโลกนี้และปรโลก และโปรดปกป้องเราให้พ้นจากความทรมานแห่งไฟ\'';

  @override
  String get duaMeaning2 =>
      'พระเจ้าไม่ทรงสร้างภาระแก่จิตวิญญาณใด ๆ เกินกว่าที่จะแบกรับได้ แต่ละคนได้รับความดีที่ได้ทำมา และความทุกข์ทรมานที่ชั่วของมัน - ‘ ข้าแต่พระเจ้า ขออย่าทรงเอาพวกเราไปทำงานหากเราลืมหรือทำผิดพลาด ข้าแต่พระเจ้า ขออย่าทรงวางภาระแก่เราเหมือนที่พระองค์ทรงวางภาระแก่คนก่อนหน้าเรา ข้าแต่พระเจ้า ขออย่าทรงสร้างภาระแก่เราเกินกว่ากำลังที่เราจะแบกรับได้ ยกโทษให้เรา ยกโทษให้เรา และเมตตาเราด้วย คุณคือผู้พิทักษ์ของเรา ดังนั้นโปรดช่วยเราต่อสู้กับผู้ปฏิเสธศรัทธาด้วย”';

  @override
  String get duaMeaning3 =>
      'ข้าแต่พระเจ้าของเรา โปรดอย่าให้จิตใจของเราหันเหไป หลังจากที่พระองค์ได้ทรงแนะนำพวกเราแล้ว โปรดประทานความเมตตาแก่เรา: พระองค์ทรงเป็นผู้ให้เสมอ';

  @override
  String get duaMeaning4 =>
      'ข้าแต่พระเจ้า ขอทรงโปรดให้ข้าพระองค์และลูกหลานของข้าพระองค์รักษาคำอธิษฐานต่อไป ข้าแต่พระเจ้าของเรา โปรดยอมรับคำขอของข้าพเจ้าด้วย';

  @override
  String get duaMeaning5 =>
      'และลดปีกลงด้วยความถ่อมใจต่อพวกเขาด้วยความกรุณาและกล่าวว่า \'ข้าแต่พระเจ้า ขอทรงเมตตาพวกเขา เหมือนที่พวกเขาดูแลข้าพระองค์เมื่อข้าพระองค์ยังเด็ก\'';

  @override
  String get duaMeaning6 =>
      'สรรเสริญพระเจ้าผู้ทรงควบคุมอย่างแท้จริง [ศาสดา] อย่ารีบเร่งท่องก่อนที่การเปิดเผยจะเสร็จสมบูรณ์ แต่จงกล่าวว่า \'ข้าแต่พระเจ้า โปรดเพิ่มพูนความรู้แก่ข้าพระองค์ด้วย!\'';

  @override
  String get duaMeaning7 =>
      'พูดว่า [ศาสดา] \'พระเจ้าโปรดยกโทษและมีความเมตตา: พระองค์ทรงเมตตามากที่สุด\'';

  @override
  String get duaMeaning8 =>
      'บรรดาผู้อธิษฐานว่า \'พระเจ้าของเรา โปรดประทานความยินดีแก่คู่ครองและลูกหลานของเราด้วย\' ขอทรงโปรดให้พวกเราเป็นตัวอย่างที่ดีแก่บรรดาผู้ยำเกรงพระองค์ด้วย”';

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
  String get hadith => 'หะดีษ';

  @override
  String get hadithCollection => 'รวบรวมหะดีษ';

  @override
  String get hadithBooks => 'หนังสือหะดีษ';

  @override
  String get searchHadith => 'ค้นหาหะดีษ';

  @override
  String get asmaulHusna => 'อัสมาอุลฮุสนา';

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
  String get openInYoutube => 'เปิดในยูทูป';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

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
  String get islamicNewYear => 'ปีใหม่อิสลาม';

  @override
  String get mawlidAnNabi => 'เมะลิด อัน-นะบี';

  @override
  String get specialDayDateRamadanStart => '1 รอมฎอน';

  @override
  String get specialDayDateLaylatAlQadr => '27 รอมฎอน';

  @override
  String get specialDayDateEidAlFitr => '1 เชาวาล';

  @override
  String get specialDayDateEidAlAdha => '10 ซุลฮิจญะฮ์';

  @override
  String get specialDayDateIslamicNewYear => '1 มูฮัรรอม';

  @override
  String get specialDayDateMawlidAnNabi => '12 รอบี อัล-เอาวัล';

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
    return 'ข้อผิดพลาดของเข็มทิศ: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'เซ็นเซอร์เข็มทิศไม่พร้อมใช้งานบนอุปกรณ์นี้';

  @override
  String get adhanNotificationChannelName => 'Adhan Notifications';

  @override
  String get adhanNotificationChannelDescription =>
      'Prayer time alerts with adhan sound.';

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
    return 'ลองดู $appName: สุดยอดแอปไลฟ์สไตล์อิสลาม! $url';
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
  String get zikrCompletedMashAllah => 'สมบูรณ์! มาชาอัลลอฮ์';

  @override
  String get zikrMeaningSubhanAllah =>
      'อัลลอฮ์ทรงอยู่เหนือความไม่สมบูรณ์ทุกอย่างมาก';

  @override
  String get zikrMeaningAlhamdulillah => 'การสรรเสริญทั้งหมดเป็นของอัลลอฮ์';

  @override
  String get zikrMeaningAllahuAkbar => 'อัลลอฮฺคือผู้ทรงยิ่งใหญ่';

  @override
  String get zikrMeaningLaIlahaIllallah => 'ไม่มีพระเจ้าอื่นใดนอกจากอัลลอฮ์';

  @override
  String get zikrMeaningAstaghfirullah => 'ฉันขอการอภัยโทษจากอัลลอฮ.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'ไม่มีอำนาจและไม่มีความแข็งแกร่งใด ๆ เว้นแต่ผ่านทางอัลลอฮ์';

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
  String get audioVoiceMisharyAlafasy => 'Male (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Male (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Male (Sudais)';

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
  String get diagnosticsNotSet => 'ไม่ได้ตั้งค่า';

  @override
  String get diagnosticsPrayerProfile => 'รายละเอียดการสวดมนต์';

  @override
  String get diagnosticsPrayerSource => 'อำนาจอธิษฐาน';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'กำหนดเอง / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'มุมที่กำหนดเองแบบแมนนวล (ไม่มีแหล่งที่มาของสถาบัน)';

  @override
  String get diagnosticsCloudDriven => 'ขับเคลื่อนด้วยคลาวด์';

  @override
  String get diagnosticsAdhanAudioAssets => 'สินทรัพย์เสียง Adhan';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'สินทรัพย์เสียงอัลกุรอาน';

  @override
  String get diagnosticsAudioAssets => 'สินทรัพย์เสียง';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count ไฟล์';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'การอ่านไฟล์ Manifest ล้มเหลว: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'การแปลเป็นภาษาท้องถิ่น';

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
  String get dailyVerse => 'กลอนประจำวัน';

  @override
  String get todaysIbadah => 'วันนี้อิบาดะห์';

  @override
  String get quickAccess => 'เข้าถึงด่วน';

  @override
  String get assistant => 'ผู้ช่วย';

  @override
  String get places => 'สถานที่';

  @override
  String get library => 'ห้องสมุด';

  @override
  String get analytics => 'การวิเคราะห์';

  @override
  String get dailyDuas => 'Duas รายวัน';

  @override
  String essentialDuas(String count) {
    return '$count ดุอาสำคัญ';
  }

  @override
  String get duaUnavailableTitle => 'duas ที่ยืนยันแล้วยังไม่พร้อมใช้งาน';

  @override
  String get duaUnavailableBody =>
      'Duas รายวันที่ยืนยันแล้วยังไม่ได้ซิงค์กับอุปกรณ์นี้ เชื่อมต่อกับต้นทางคลาวด์เพื่อโหลด duas ที่มาจากแทนทางเลือกที่ไม่ได้รับการยืนยัน';

  @override
  String get duaCategoryQuranic => 'ดุอาอ์กุรอาน';

  @override
  String get duaCategoryMorningEvening => 'เช้าและเย็น';

  @override
  String get duaCategoryTasbih => 'ตัสบีห์';

  @override
  String get duaCategoryProtection => 'การป้องกัน';

  @override
  String get duaCategoryBeginning => 'จุดเริ่มต้น';

  @override
  String get duaCategorySleep => 'นอน';

  @override
  String get duaCategoryFoodDrink => 'อาหารและเครื่องดื่ม';

  @override
  String get duaCategoryForgiveness => 'การให้อภัย';

  @override
  String get duaCategoryHome => 'บ้าน';

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
  String get islamicEducation => 'การศึกษาอิสลาม';

  @override
  String get sukunAudioTitle => 'สุกุล ซาวด์สเคปส์';

  @override
  String get hadithCollections => 'คอลเลกชันหะดีษ';

  @override
  String get hadithSourcePending =>
      'แหล่งที่มาที่ได้รับการยืนยันอยู่ระหว่างการพิจารณา';

  @override
  String get hadithUnavailableTitle =>
      'คอลเลกชันสุนัตที่ตรวจสอบแล้วยังไม่มีให้บริการ';

  @override
  String get hadithUnavailableBody =>
      'โครงสร้างนี้ยังขึ้นอยู่กับฟีดสุนัตภายนอกที่ไม่ได้รับการยืนยัน การเรียกดูหะดีษจะยังคงปิดใช้งานอยู่จนกว่าจะซิงค์ชุดข้อมูลที่มา';

  @override
  String get paywallUnlockAll =>
      'ปลดล็อกคุณลักษณะทั้งหมดสำหรับการเดินทางทางจิตวิญญาณของคุณ';

  @override
  String get premiumProductUnavailable =>
      'Premium product is not available right now. Please try again later.';

  @override
  String get premiumPurchaseFailed =>
      'Purchase could not be completed. Please try again.';

  @override
  String get paywallFeature1Title => 'ผู้ช่วยระบบประสาทพลัส';

  @override
  String get paywallFeature1Desc => 'ถามตอบโดย AI ไม่จำกัด';

  @override
  String get paywallFeature2Title => 'ออฟไลน์ได้ไม่จำกัด';

  @override
  String get paywallFeature2Desc => 'ดาวน์โหลดบททบทวนทั้งหมด';

  @override
  String get paywallFeature3Title => 'การออกแบบพิเศษ';

  @override
  String get paywallFeature3Desc => 'ธีมและแบบอักษรระดับพรีเมียม';

  @override
  String get paywallFeature4Title => 'ไม่มีโฆษณา';

  @override
  String get paywallFeature4Desc => 'ไม่มีโฆษณา';

  @override
  String get paywallGetAccess => 'รับการเข้าถึงตลอดชีพ — \$1.00';

  @override
  String get restorePurchases => 'คืนค่าการซื้อ';

  @override
  String get zakatCalculator => 'เครื่องคิดเลขซะกาต';

  @override
  String get zakatGold => 'ทอง (อัลติน)';

  @override
  String get zakatSilver => 'เงิน (Gümüş)';

  @override
  String get zakatCashBank => 'เงินสด/ธนาคาร';

  @override
  String get zakatBusiness => 'ธุรกิจ';

  @override
  String get zakatInvestments => 'การลงทุน';

  @override
  String get zakatWeightGrams => 'น้ำหนัก (กรัม)';

  @override
  String get zakatPricePerGram => 'ราคา/กรัม';

  @override
  String get zakatTotalAmount => 'จำนวนเงินทั้งหมด';

  @override
  String get zakatInventoryValue => 'มูลค่าสินค้าคงคลัง';

  @override
  String get zakatDebts => 'หนี้';

  @override
  String get zakatTotal => 'ทั้งหมด';

  @override
  String get calculateZakat => 'คำนวณซะกาต';

  @override
  String get nisabNotReached => 'นิศาบไปไม่ถึง ซะกาตไม่จำเป็น';

  @override
  String get totalZakat => 'รวมซะกาต';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'นิซับ: $nisab • เนื้อหา: $assets';
  }

  @override
  String get zakatGoldZakat => 'ซะกาตทอง';

  @override
  String get zakatSilverZakat => 'ซะกาตเงิน';

  @override
  String get zakatCashZakat => 'ซะกาตเงินสด';

  @override
  String get zakatBusinessZakat => 'ซะกาตธุรกิจ';

  @override
  String get zakatInvestmentZakat => 'การลงทุนซะกาต';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'ถึงขีดจำกัดการค้นหารายวันแล้ว อัปเกรดเป็นพรีเมียมได้ไม่จำกัด';

  @override
  String get chatbotErrorMsg =>
      'ฉันไม่สามารถสร้างการตอบกลับได้ โปรดลองอีกครั้ง';

  @override
  String get chatbotOfflinePrompt =>
      'The verified offline Islamic knowledge base is still being curated. You can enable offline fallback now, but it will only show limited safe messages until the sourced dataset is ready.\n\nWould you like to enable offline fallback?';

  @override
  String get chatbotOfflineSwitched =>
      'Offline fallback enabled. Verified local Islamic answers are not ready yet.';

  @override
  String get chatbotOfflineDownloadLabel => 'เปิดใช้งานทางเลือกสำรองแบบออฟไลน์';

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
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Verified Quran audio pack is incomplete ($available/$total). Refresh cloud seed and try again.';
  }

  @override
  String get chatbotHint => 'Ask a question...';

  @override
  String get chatbotThinking => 'Thinking...';

  @override
  String get sukunMixerSubtitle => 'มิกเซอร์ธรรมชาติและอัลกุรอาน';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'สุกุล (ธรรมชาติ)';

  @override
  String get sukunRainOfMercy => 'ฝนแห่งความเมตตา';

  @override
  String get sukunGardenOfPeace => 'สวนแห่งสันติภาพ';

  @override
  String get sukunMidnightCalm => 'สงบเที่ยงคืน';

  @override
  String get sukunOceanTawheed => 'มหาสมุทรเตาฮีด';

  @override
  String get sukunUnavailableTitle => 'ภาพเสียงไม่พร้อมใช้งาน';

  @override
  String get sukunUnavailableBody =>
      'โครงสร้างนี้ยังไม่รวมเนื้อหาด้านเสียงของ Sukun ที่จำเป็น';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'สตรีควัน';

  @override
  String get bestStreak => 'แนวที่ดีที่สุด';

  @override
  String get chatbotCloudAiLabel => 'คลาวด์เอไอ';

  @override
  String get chatbotLocalAiLabel => 'ทางเลือกออฟไลน์';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'เปิดใช้งานทางเลือกสำรองแบบออฟไลน์';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count เหลือแล้ว';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API not configured. Please switch to Local AI.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Verified local Islamic guidance is not available yet. Switch to Cloud AI for sourced answers.';

  @override
  String get mosques => 'มัสยิด';

  @override
  String get halalFood => 'อาหารฮาลาล';

  @override
  String get placesSearchArea => 'ค้นหาบริเวณนี้';

  @override
  String get nearbyMosques => 'มัสยิดใกล้เคียง';

  @override
  String get islamicSchools => 'โรงเรียนอิสลาม';

  @override
  String placesFoundCount(String count) {
    return 'พบ $count แล้ว';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance กม';
  }

  @override
  String placesApiError(String statusCode) {
    return 'ข้อผิดพลาดของ API: $statusCode';
  }

  @override
  String get placesNetworkError => 'ข้อผิดพลาดของเครือข่าย โปรดลองอีกครั้ง';

  @override
  String get placesLocationRequiredTitle => 'Location required';

  @override
  String get placesLocationRequiredBody =>
      'Set a location first so nearby mosques, halal food, and Islamic schools can be searched accurately.';

  @override
  String get placesMapTilesUnavailableTitle => 'Map tiles unavailable';

  @override
  String get placesMapTilesUnavailableBody =>
      'A verified map tile source is not configured for this build yet. Nearby places can still load from your saved location.';

  @override
  String get unknownPlaceName => 'ชื่อที่ไม่รู้จัก';

  @override
  String get islamicPlaceFallback => 'สถานที่อิสลาม';

  @override
  String get asmaMeaning1 => 'ผู้มีพระคุณ';

  @override
  String get asmaMeaning2 => 'ผู้ทรงเมตตา';

  @override
  String get asmaMeaning3 => 'กษัตริย์ / พระเจ้านิรันดร์';

  @override
  String get asmaMeaning4 => 'สิ่งศักดิ์สิทธิ์ที่สุด';

  @override
  String get asmaMeaning5 => 'แหล่งกำเนิดแห่งสันติภาพ';

  @override
  String get asmaMeaning6 => 'ผู้มอบความปลอดภัย';

  @override
  String get asmaMeaning7 => 'เดอะการ์เดียน';

  @override
  String get asmaMeaning8 => 'ผู้ล้ำค่า / ผู้ทรงพลังที่สุด';

  @override
  String get asmaMeaning9 => 'ผู้ควบคุม';

  @override
  String get asmaMeaning10 => 'ยิ่งใหญ่ที่สุด';

  @override
  String get asmaMeaning11 => 'ผู้สร้าง';

  @override
  String get asmaMeaning12 => 'ผู้สร้างระเบียบ';

  @override
  String get asmaMeaning13 => 'ผู้กำหนดความงาม';

  @override
  String get asmaMeaning14 => 'การให้อภัย';

  @override
  String get asmaMeaning15 => 'ผู้พิชิต';

  @override
  String get asmaMeaning16 => 'ผู้ให้ทุกสิ่ง';

  @override
  String get asmaMeaning17 => 'ผู้สนับสนุน';

  @override
  String get asmaMeaning18 => 'ผู้เปิด';

  @override
  String get asmaMeaning19 => 'ผู้รอบรู้ทุกสิ่ง';

  @override
  String get asmaMeaning20 => 'ตัวบีบรัด';

  @override
  String get asmaMeaning21 => 'ผู้ปลดปล่อย';

  @override
  String get asmaMeaning22 => 'ผู้เหยียดหยาม';

  @override
  String get asmaMeaning23 => 'ผู้ยกย่อง';

  @override
  String get asmaMeaning24 => 'ผู้มอบเกียรติยศ';

  @override
  String get asmaMeaning25 => 'ผู้สร้างความอับอาย';

  @override
  String get asmaMeaning26 => 'ผู้ฟังของทุกสิ่ง';

  @override
  String get asmaMeaning27 => 'ผู้ทำนายทุกสิ่ง';

  @override
  String get asmaMeaning28 => 'ผู้พิพากษา';

  @override
  String get asmaMeaning29 => 'ความยุติธรรม';

  @override
  String get asmaMeaning30 => 'สิ่งที่ละเอียดอ่อน';

  @override
  String get asmaMeaning31 => 'ทุกคนตระหนักดี';

  @override
  String get asmaMeaning32 => 'ผู้เป็นบรรพบุรุษ';

  @override
  String get asmaMeaning33 => 'ความยิ่งใหญ่';

  @override
  String get asmaMeaning34 => 'พระผู้ให้อภัยที่ยิ่งใหญ่';

  @override
  String get asmaMeaning35 => 'ผู้ตอบแทนความกตัญญู';

  @override
  String get asmaMeaning36 => 'สูงสุด';

  @override
  String get asmaMeaning37 => 'ยิ่งใหญ่ที่สุด';

  @override
  String get asmaMeaning38 => 'ผู้ปกป้อง';

  @override
  String get asmaMeaning39 => 'ผู้บำรุง';

  @override
  String get asmaMeaning40 => 'ผู้คำนวณ';

  @override
  String get asmaMeaning41 => 'ความยิ่งใหญ่';

  @override
  String get asmaMeaning42 => 'ผู้ใจกว้าง';

  @override
  String get asmaMeaning43 => 'ผู้เฝ้าระวัง';

  @override
  String get asmaMeaning44 => 'ผู้ตอบสนองต่อคำอธิษฐาน';

  @override
  String get asmaMeaning45 => 'ความเข้าใจทั้งหมด';

  @override
  String get asmaMeaning46 => 'ผู้ชาญฉลาดอย่างยิ่ง';

  @override
  String get asmaMeaning47 => 'ผู้เป็นที่รัก';

  @override
  String get asmaMeaning48 => 'ผู้รุ่งโรจน์ที่สุด';

  @override
  String get asmaMeaning49 => 'ผู้ฟื้นคืนชีพ';

  @override
  String get asmaMeaning50 => 'พยาน';

  @override
  String get asmaMeaning51 => 'ความจริง';

  @override
  String get asmaMeaning52 => 'ผู้ดูแลผลประโยชน์ที่เพียงพอ';

  @override
  String get asmaMeaning53 => 'ผู้ครอบครองความแข็งแกร่งทั้งหมด';

  @override
  String get asmaMeaning54 => 'ผู้มีพลัง';

  @override
  String get asmaMeaning55 => 'ผู้พิทักษ์';

  @override
  String get asmaMeaning56 => 'การสรรเสริญ';

  @override
  String get asmaMeaning57 => 'ผู้ประเมินราคา';

  @override
  String get asmaMeaning58 => 'ผู้สร้าง';

  @override
  String get asmaMeaning59 => 'ผู้คืนค่า';

  @override
  String get asmaMeaning60 => 'ผู้ให้ชีวิต';

  @override
  String get asmaMeaning61 => 'ผู้ครอบครองชีวิต';

  @override
  String get asmaMeaning62 => 'ชีวิตนิรันดร์';

  @override
  String get asmaMeaning63 => 'ผู้ดำรงชีวิตด้วยตนเอง';

  @override
  String get asmaMeaning64 => 'ตัวค้นหา';

  @override
  String get asmaMeaning65 => 'ความรุ่งโรจน์';

  @override
  String get asmaMeaning66 => 'ผู้เดียวเท่านั้น';

  @override
  String get asmaMeaning67 => 'หนึ่งเดียว';

  @override
  String get asmaMeaning68 => 'สิ่งที่ทุกคนตามหา';

  @override
  String get asmaMeaning69 => 'ผู้ทรงพลัง';

  @override
  String get asmaMeaning70 => 'ผู้สร้างพลังทั้งหมด';

  @override
  String get asmaMeaning71 => 'ผู้เร่งดำเนินการ';

  @override
  String get asmaMeaning72 => 'ตัวหน่วงเวลา';

  @override
  String get asmaMeaning73 => 'ครั้งแรก';

  @override
  String get asmaMeaning74 => 'สุดท้าย';

  @override
  String get asmaMeaning75 => 'รายการ';

  @override
  String get asmaMeaning76 => 'สิ่งที่ซ่อนเร้น';

  @override
  String get asmaMeaning77 => 'ผู้ว่าการ';

  @override
  String get asmaMeaning78 => 'ผู้สูงสุด';

  @override
  String get asmaMeaning79 => 'ผู้กระทำความดี';

  @override
  String get asmaMeaning80 => 'คู่มือการกลับใจ';

  @override
  String get asmaMeaning81 => 'ผู้ล้างแค้น';

  @override
  String get asmaMeaning82 => 'ผู้ให้อภัย';

  @override
  String get asmaMeaning83 => 'ความผ่อนผัน';

  @override
  String get asmaMeaning84 => 'เจ้าของ / อธิปไตยของทั้งหมด';

  @override
  String get asmaMeaning85 => 'ผู้ครอบครองความยิ่งใหญ่และความโปรดปราน';

  @override
  String get asmaMeaning86 => 'ผู้เท่าเทียมกัน';

  @override
  String get asmaMeaning87 => 'ผู้รวบรวม';

  @override
  String get asmaMeaning88 => 'คนรวย';

  @override
  String get asmaMeaning89 => 'ผู้เติมเต็ม';

  @override
  String get asmaMeaning90 => 'ผู้ป้องกันอันตราย';

  @override
  String get asmaMeaning91 => 'ผู้ก่อให้เกิดอันตราย';

  @override
  String get asmaMeaning92 => 'ผู้มอบสิทธิประโยชน์';

  @override
  String get asmaMeaning93 => 'แสงสว่าง';

  @override
  String get asmaMeaning94 => 'ผู้นำ';

  @override
  String get asmaMeaning95 => 'ผู้สร้าง';

  @override
  String get asmaMeaning96 => 'ผู้เป็นนิรันดร์';

  @override
  String get asmaMeaning97 => 'ผู้สืบทอด';

  @override
  String get asmaMeaning98 => 'คำแนะนำที่ชอบธรรมที่สุด';

  @override
  String get asmaMeaning99 => 'ผู้ป่วยคนหนึ่ง';
}
