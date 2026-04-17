// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'วิถีแห่งแสงสว่างของอิสลาม';

  @override
  String get home => 'บ้าน';

  @override
  String get quran => 'อัลกุรอาน';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'ซิกร์';

  @override
  String get calendar => 'ปฏิทิน';

  @override
  String get settings => 'การตั้งค่า';

  @override
  String get nextPrayer => 'คำอธิษฐานถัดไป';

  @override
  String get prayerTimes => 'เวลาละหมาด';

  @override
  String get continueReading => 'Continue Reading';

  @override
  String get getLifetimePro => 'Get Lifetime Pro';

  @override
  String get unlockTajweed => 'Unlock Tajweed & Advanced Features';

  @override
  String get prayerCalculation => 'การคำนวณคำอธิษฐาน';

  @override
  String get method => 'วิธีการคำนวณ';

  @override
  String get madhab => 'วิธีนิติบุคคล Asr';

  @override
  String get surahs => 'ซูเราะห์';

  @override
  String get ayahs => 'อายะห์';

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
  String get dataStorage => 'ข้อมูลและการจัดเก็บ';

  @override
  String get clearCache => 'ล้างแคช';

  @override
  String get cacheClearedSuccess => 'ล้างแคชเรียบร้อยแล้ว';

  @override
  String get location => 'ที่ตั้ง';

  @override
  String get language => 'ภาษา';

  @override
  String get selectLanguage => 'เลือกภาษา';

  @override
  String get searchLanguage => 'Search 180+ languages...';

  @override
  String get systemDefault => 'ค่าเริ่มต้นของระบบ';

  @override
  String get currentLocation => 'ตำแหน่งปัจจุบัน (GPS)';

  @override
  String get locationServiceDisabled => 'บริการตำแหน่งถูกปิดใช้งาน';

  @override
  String get locationPermissionDenied => 'การอนุญาตตำแหน่งถูกปฏิเสธ';

  @override
  String get locationDetectionFailed =>
      'ตรวจไม่พบตำแหน่งของคุณ โปรดเลือกเมืองด้วยตนเองหรือลองอีกครั้ง';

  @override
  String citiesCount(String count) {
    return '$count เมือง';
  }

  @override
  String get search => 'ค้นหา';

  @override
  String get searchHint => 'ค้นหา...';

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
  String get retry => 'ลองอีกครั้ง';

  @override
  String get refreshAction => 'Refresh';

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get save => 'บันทึก';

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
  String get no => 'เลขที่';

  @override
  String get surah => 'ซูเราะห์';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'จูซ';

  @override
  String get page => 'หน้าหนังสือ';

  @override
  String get reading => 'Reading';

  @override
  String get recitation => 'Recitation';

  @override
  String get translation => 'Translation';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'กำลังโหลดทาฟเซอร์...';

  @override
  String get tafsirSourceLabel => 'แหล่งที่มาของตัฟซีร์';

  @override
  String get tafsirNoSurahFound => 'ไม่พบตัฟซีร์สำหรับซูเราะห์นี้';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'ไม่พบตัฟซีร์สำหรับอายะห์ $ayah';
  }

  @override
  String get tafsirLoadFailed => 'ไม่สามารถโหลด Tafsir ได้';

  @override
  String get tafsirNoTextForAyah => 'ไม่มีข้อความตัฟซีร์สำหรับอายะห์นี้';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'กำลังดาวน์โหลดทาฟซีร์ $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'กำลังโหลดทาฟซีร์ $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'แหล่งที่มาของ Tafsir ส่งคืนข้อผิดพลาด HTTP $statusCode';
  }

  @override
  String get tafsirNoEntriesReturned => 'แหล่ง tafsir ที่เลือกไม่ส่งคืนรายการ';

  @override
  String get tafsirCacheUnavailable =>
      'tafsir ที่ตรวจสอบแล้วยังไม่พร้อมใช้งานแบบออฟไลน์ ซิงค์ชุดข้อมูล tafsir ที่มาก่อนที่จะเรียกดู';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get addBookmark => 'เพิ่มบุ๊กมาร์ก';

  @override
  String get removeBookmark => 'ลบบุ๊กมาร์ก';

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
  String get namesOfAllah => 'ชื่อของอัลลอฮ';

  @override
  String get liveTv => 'รายการสดทางทีวี';

  @override
  String get watchLive => 'ดูสด';

  @override
  String get streamError => 'ข้อผิดพลาดในการสตรีม';

  @override
  String get reload => 'โหลดซ้ำ';

  @override
  String get openInYoutube => 'เปิดในยูทูป';

  @override
  String get ibadahTracker => 'อิบาดะห์ติดตาม';

  @override
  String get fasting => 'การถือศีลอด';

  @override
  String get quranReading => 'การอ่านอัลกุรอาน';

  @override
  String get prayers => 'คำอธิษฐาน';

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
  String get weeklyProgress => 'ความคืบหน้ารายสัปดาห์';

  @override
  String get monthlyProgress => 'Monthly Progress';

  @override
  String get statistics => 'Statistics';

  @override
  String get hijriCalendar => 'ปฏิทินฮิจเราะห์';

  @override
  String get gregorianCalendar => 'Gregorian Calendar';

  @override
  String get today => 'วันนี้';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get specialDays => 'วันพิเศษ';

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
  String get qiblaDirection => 'ทิศทางกิบลัต';

  @override
  String get compass => 'เข็มทิศ';

  @override
  String get degrees => 'degrees';

  @override
  String get north => 'North';

  @override
  String get qiblaFound => 'พบกิบลัตแล้ว!';

  @override
  String get turnDevice => 'หมุนอุปกรณ์ของคุณให้หันหน้าไปทางกิบลัต';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'ข้อผิดพลาดของเข็มทิศ: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'เซ็นเซอร์เข็มทิศไม่พร้อมใช้งานบนอุปกรณ์นี้';

  @override
  String get qiblaLocationRequiredTitle => 'Location required for Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Set your actual location before using the Qibla compass so the direction can be calculated accurately.';

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
  String get theme => 'ธีม';

  @override
  String get lightMode => 'โหมดแสง';

  @override
  String get darkMode => 'โหมดมืด';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'เกี่ยวกับ';

  @override
  String get version => 'เวอร์ชัน';

  @override
  String get privacyPolicy => 'นโยบายความเป็นส่วนตัว';

  @override
  String get termsOfService => 'ข้อกำหนดในการให้บริการ';

  @override
  String get contactUs => 'ติดต่อเรา';

  @override
  String get rateApp => 'ให้คะแนนแอป';

  @override
  String get shareApp => 'แชร์แอป';

  @override
  String shareAppMessage(String appName, String url) {
    return 'ลองดู $appName: สุดยอดแอปไลฟ์สไตล์อิสลาม! $url';
  }

  @override
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'ดาวน์โหลด';

  @override
  String get downloading => 'กำลังดาวน์โหลด...';

  @override
  String get downloadComplete => 'Download Complete';

  @override
  String get downloadFailed => 'Download Failed';

  @override
  String get offlineMode => 'โหมดออฟไลน์';

  @override
  String get noInternet => 'No Internet Connection';

  @override
  String get checkConnection => 'กรุณาตรวจสอบการเชื่อมต่อของคุณ';

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
  String get getStarted => 'เริ่มต้นเลย';

  @override
  String get skip => 'Skip';

  @override
  String get next => 'ต่อไป';

  @override
  String get done => 'เสร็จแล้ว';

  @override
  String get onboarding1Title => 'ยินดีต้อนรับสู่ Sirat-ı Nur';

  @override
  String get onboarding1Desc =>
      'แอพคู่หูอิสลามที่สมบูรณ์แบบของคุณสำหรับเวลาละหมาดคัมภีร์อัลกุรอานและอีกมากมาย';

  @override
  String get onboarding2Title => 'เวลาละหมาด';

  @override
  String get onboarding2Desc => 'เวลาละหมาดที่แม่นยำตามตำแหน่งของคุณ';

  @override
  String get onboarding3Title => 'อัลกุรอานและอื่น ๆ';

  @override
  String get onboarding3Desc =>
      'อ่านอัลกุรอาน ติดตามการอ่านของคุณ และสำรวจเนื้อหาอิสลาม';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'รีเซ็ตตัวนับ';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'จำนวนเป้าหมาย: $target';
  }

  @override
  String get tapToCount => 'แตะเพื่อนับ';

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
  String get dailyProgress => 'ความคืบหน้ารายวัน';

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
  String get recheckPremium => 'ตรวจสอบสถานะการสมัครสมาชิกแบบพรีเมียมอีกครั้ง';

  @override
  String get syncStore =>
      'ซิงค์กับ App Store เพื่อยืนยันการสมัครสมาชิกระดับพรีเมียมของคุณ';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'ยืนยันการสมัครสมาชิกแบบพรีเมียมแล้ว';

  @override
  String get premiumNotFound => 'ไม่พบการสมัครสมาชิกแบบพรีเมียม';

  @override
  String premiumRefreshError(Object error) {
    return 'ไม่สามารถรีเฟรชสถานะการสมัครรับข้อมูลแบบพรีเมียม: $error';
  }

  @override
  String get offlineDownloadManager => 'Offline Download Manager';

  @override
  String get manageDatasets => 'จัดการชุดเสียงและชุดข้อมูลออฟไลน์ขนาดใหญ่';

  @override
  String get freeStorage => 'เพิ่มพื้นที่จัดเก็บข้อมูลภายในอุปกรณ์';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'กำลังตรวจสอบฐานข้อมูลอัลกุรอาน...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'สถานะฐานข้อมูลอัลกุรอาน';

  @override
  String statusLabel(Object status) {
    return 'สถานะ: $status';
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
  String get audioVoice => 'เสียง เสียง';

  @override
  String get audioVoiceMisharyAlafasy => 'ชาย (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'ชาย (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'ชาย (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'การสอบเทียบกิบลัต';

  @override
  String get compassSmoothing => 'การปรับเข็มทิศให้เรียบ';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'ชดเชยการปรับเทียบ';

  @override
  String currentOffset(Object offset) {
    return 'ปัจจุบัน: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'ปรับหากเข็มทิศของคุณต้องการการแก้ไขด้วยตนเอง ค่าบวกจะหมุนตามเข็มนาฬิกา';

  @override
  String get apply => 'ใช้การเปลี่ยนแปลง';

  @override
  String get resetOnboarding => 'รีเซ็ตการตั้งค่าอินโทร';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'การวินิจฉัย';

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
  String get diagnosticsUiAudioAssets => 'เนื้อหาเสียง UI';

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
    return '$count รองรับ';
  }

  @override
  String get diagnosticsQuranDataset => 'ชุดข้อมูลอัลกุรอาน';

  @override
  String get diagnosticsQuranSurahs => 'คัมภีร์อัลกุรอาน Surahs';

  @override
  String get diagnosticsQuranAyahs => 'อัลกุรอานอายะห์';

  @override
  String get diagnosticsQuranJuzMetadata => 'ข้อมูลเมตาคัมภีร์อัลกุรอาน Juz';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'ตารางคลาวด์หายไปใน Supabase รวมทางเลือกที่ใช้งานอยู่';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'การตรวจสอบระบบคลาวด์ล้มเหลว: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'ข้อมูลเมตาของ Cloud juz หายไป ทางเลือกเชิงโครงสร้างแบบรวมที่ใช้งานอยู่';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'การตรวจสอบโครงสร้างคลาวด์ล้มเหลว: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'จำเป็นต้องมีการสอบเทียบ หมุนอุปกรณ์ในรูปที่ 8';

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
      'สินค้าพรีเมี่ยมไม่มีจำหน่ายในขณะนี้ โปรดลองอีกครั้งในภายหลัง';

  @override
  String get premiumPurchaseFailed =>
      'ไม่สามารถดำเนินการซื้อให้เสร็จสิ้นได้ โปรดลองอีกครั้ง';

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
      'ฐานความรู้อิสลามแบบออฟไลน์ที่ได้รับการตรวจสอบแล้วยังคงได้รับการดูแลจัดการ คุณสามารถเปิดใช้งานทางเลือกแบบออฟไลน์ได้ในขณะนี้ แต่จะแสดงเฉพาะข้อความที่ปลอดภัยแบบจำกัดจนกว่าชุดข้อมูลที่มาจะพร้อม\n\nคุณต้องการเปิดใช้งานทางเลือกแบบออฟไลน์หรือไม่';

  @override
  String get chatbotOfflineSwitched =>
      'เปิดใช้งานทางเลือกแบบออฟไลน์แล้ว คำตอบของศาสนาอิสลามในท้องถิ่นที่ได้รับการยืนยันแล้วยังไม่พร้อม';

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
  String get offlineQuranAudioPacks => 'ชุดเสียงอัลกุรอานออฟไลน์';

  @override
  String storedOnDeviceMb(String size) {
    return 'เก็บไว้ในอุปกรณ์: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surahs downloaded';
  }

  @override
  String get redownloadMissingRepair => 'Repair / Download Missing';

  @override
  String get downloadAction => 'ดาวน์โหลด';

  @override
  String get resumeDownload => 'ดาวน์โหลดต่อ';

  @override
  String get deleteDownloadedFiles => 'ลบไฟล์ที่ดาวน์โหลด';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'การดาวน์โหลดถูกยกเลิกสำหรับ $reciter';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'ดาวน์โหลดเสร็จสมบูรณ์สำหรับ $reciter';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'ดาวน์โหลดเสร็จสิ้นสำหรับ $reciter โดยมี $failed ล้มเหลวใน Surahs ($downloaded/$total ดาวน์โหลดแล้ว)';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'ลบไฟล์ออฟไลน์สำหรับ $reciter แล้ว';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Verified Quran audio sources are unavailable right now.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'ชุดเสียงอัลกุรอานที่ยืนยันแล้วไม่สมบูรณ์ ($available/$total) ลองอีกครั้งหลังจากอัปเดตแค็ตตาล็อกเสียงแล้ว';
  }

  @override
  String get chatbotHint => 'Ask a question...';

  @override
  String get chatbotThinking => 'Thinking...';

  @override
  String get sukunMixerSubtitle => 'มิกเซอร์ธรรมชาติและอัลกุรอาน';

  @override
  String get audioPlayFailed => 'การเล่นเสียงล้มเหลว';

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
  String get prayerCompletion => 'สวดมนต์เสร็จ';

  @override
  String get streaks => 'มีลายทาง';

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
      'ไม่ได้กำหนดค่า Cloud API ยังไม่มีคำแนะนำอิสลามแบบออฟไลน์ที่ได้รับการยืนยัน';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] ยังไม่มีคำแนะนำอิสลามในท้องถิ่นที่ได้รับการยืนยัน เปลี่ยนไปใช้ Cloud AI เพื่อดูคำตอบที่มา';

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
  String get placesLocationRequiredTitle => 'จำเป็นต้องระบุตำแหน่ง';

  @override
  String get placesLocationRequiredBody =>
      'กำหนดสถานที่ก่อนเพื่อให้สามารถค้นหามัสยิดใกล้เคียง อาหารฮาลาล และโรงเรียนสอนศาสนาอิสลามได้อย่างแม่นยำ';

  @override
  String get placesMapTilesUnavailableTitle => 'ชิ้นส่วนแผนที่ไม่พร้อมใช้งาน';

  @override
  String get placesMapTilesUnavailableBody =>
      'ยังไม่ได้กำหนดค่าแหล่งที่มาของชิ้นส่วนแผนที่ที่ได้รับการยืนยันสำหรับรุ่นนี้ สถานที่ใกล้เคียงยังคงสามารถโหลดจากตำแหน่งที่คุณบันทึกไว้ได้';

  @override
  String get placesDataSourceUnavailableTitle => 'ไม่มีข้อมูลสถานที่';

  @override
  String get placesDataSourceUnavailableBody =>
      'ยังไม่ได้กำหนดค่าปลายทางข้อมูลสถานที่ที่ยืนยันแล้วสำหรับบิลด์นี้ ตั้งค่า PLACES_OVERPASS_API_URL เป็นพร็อกซีหรือผู้ให้บริการที่ได้รับอนุมัติก่อนเปิดใช้งานการค้นหาในบริเวณใกล้เคียง';

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
