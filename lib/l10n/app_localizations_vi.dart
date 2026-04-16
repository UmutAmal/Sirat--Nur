// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Con đường ánh sáng Hồi giáo';

  @override
  String get home => 'Trang chủ';

  @override
  String get quran => 'Kinh Qur\'an';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Dhikr';

  @override
  String get calendar => 'Lịch';

  @override
  String get settings => 'Cài đặt';

  @override
  String get nextPrayer => 'Giờ cầu nguyện tiếp theo';

  @override
  String get prayerTimes => 'Giờ cầu nguyện';

  @override
  String get continueReading => 'Continue Reading';

  @override
  String get getLifetimePro => 'Get Lifetime Pro';

  @override
  String get unlockTajweed => 'Unlock Tajweed & Advanced Features';

  @override
  String get prayerCalculation => 'Tính giờ lễ nguyện';

  @override
  String get method => 'Phương pháp tính toán';

  @override
  String get madhab => 'Phương pháp pháp lý cho Asr';

  @override
  String get surahs => 'Các chương';

  @override
  String get ayahs => 'Các ayah';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Bình minh';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Maghrib';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Đã đến lúc dành cho $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Đã đến lúc cầu nguyện $prayerName.';
  }

  @override
  String get dataStorage => 'Dữ liệu & Lưu trữ';

  @override
  String get clearCache => 'Xóa bộ nhớ đệm';

  @override
  String get cacheClearedSuccess => 'Đã xóa bộ nhớ đệm thành công';

  @override
  String get location => 'Vị trí';

  @override
  String get language => 'Ngôn ngữ';

  @override
  String get selectLanguage => 'Chọn ngôn ngữ';

  @override
  String get searchLanguage => 'Search 180+ languages...';

  @override
  String get systemDefault => 'Mặc định hệ thống';

  @override
  String get currentLocation => 'Vị trí hiện tại (GPS)';

  @override
  String get locationServiceDisabled => 'Dịch vụ định vị bị vô hiệu hóa.';

  @override
  String get locationPermissionDenied => 'Quyền vị trí bị từ chối.';

  @override
  String get locationDetectionFailed =>
      'Không thể phát hiện vị trí của bạn. Vui lòng chọn thành phố theo cách thủ công hoặc thử lại.';

  @override
  String citiesCount(String count) {
    return '$count thành phố';
  }

  @override
  String get search => 'Tìm kiếm';

  @override
  String get searchHint => 'Tìm kiếm...';

  @override
  String get noResults => 'Không tìm thấy kết quả nào';

  @override
  String get loading => 'Đang tải...';

  @override
  String get error => 'Lỗi';

  @override
  String get appErrorOccurred => 'Đã xảy ra lỗi';

  @override
  String get appUnknownError => 'Lỗi không xác định';

  @override
  String get quranLoadFailed =>
      'Không thể tải nội dung Kinh Qur\'an. Vui lòng thử lại.';

  @override
  String get retry => 'Thử lại';

  @override
  String get refreshAction => 'Làm mới';

  @override
  String get cancel => 'Hủy';

  @override
  String get save => 'Lưu';

  @override
  String get delete => 'Xóa';

  @override
  String get edit => 'Edit';

  @override
  String get close => 'Close';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'Không';

  @override
  String get surah => 'Chương';

  @override
  String ayahLabel(String ayah) {
    return 'Ôi $ayah';
  }

  @override
  String get juz => 'Juzʾ';

  @override
  String get page => 'Trang';

  @override
  String get reading => 'Reading';

  @override
  String get recitation => 'Recitation';

  @override
  String get translation => 'Translation';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Đang tải tafsir...';

  @override
  String get tafsirSourceLabel => 'nguồn Tafsir';

  @override
  String get tafsirNoSurahFound => 'Không tìm thấy tafsir cho surah này.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Không tìm thấy tafsir cho ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Không thể tải Tafsir.';

  @override
  String get tafsirNoTextForAyah => 'Không có văn bản tafsir cho ayah này.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Đang tải xuống tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Đang tải tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Nguồn Tafsir trả về lỗi HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Nguồn tafsir đã chọn không trả lại mục nào.';

  @override
  String get tafsirCacheUnavailable =>
      'Tafsir đã được xác minh chưa khả dụng ngoại tuyến. Đồng bộ hóa tập dữ liệu tafsir có nguồn gốc trước khi duyệt.';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get addBookmark => 'Thêm dấu trang';

  @override
  String get removeBookmark => 'Xóa dấu trang';

  @override
  String get lastRead => 'Last Read';

  @override
  String get dailyZikr => 'Daily Zikr';

  @override
  String get duaMeaning1 =>
      'những người khác cầu nguyện: ‘Lạy Chúa, xin ban cho chúng con những điều tốt lành ở đời này và Đời sau, và bảo vệ chúng con khỏi sự hành hạ của Lửa.’';

  @override
  String get duaMeaning2 =>
      'Thiên Chúa không tạo gánh nặng cho bất kỳ linh hồn nào nhiều hơn mức nó có thể chịu đựng: mỗi người đạt được bất cứ điều tốt nào họ đã làm và chịu đựng những điều tồi tệ của mình- ‘Lạy Chúa, đừng bắt chúng con phải làm việc nếu chúng con quên hoặc phạm sai lầm. Lạy Chúa, xin đừng tạo gánh nặng cho chúng con như Ngài đã gánh nặng cho những người đi trước chúng con. Lạy Chúa, xin đừng tạo gánh nặng cho chúng con nhiều hơn sức chúng con có thể chịu đựng được. Xin tha thứ cho chúng tôi, tha thứ cho chúng tôi và thương xót chúng tôi. Bạn là Người bảo vệ của chúng tôi, vì vậy hãy giúp chúng tôi chống lại những kẻ không tin tưởng.\'';

  @override
  String get duaMeaning3 =>
      '‘Lạy Chúa, xin đừng để lòng chúng con chệch hướng sau khi Chúa hướng dẫn chúng con. Xin ban cho chúng con lòng thương xót của Chúa: Chúa là Đấng Hằng Cho.';

  @override
  String get duaMeaning4 =>
      'Lạy Chúa, xin cho con và con cháu con có thể tiếp tục cầu nguyện. Lạy Chúa, xin chấp nhận lời cầu xin của con.';

  @override
  String get duaMeaning5 =>
      'và khiêm nhường hạ cánh xuống họ với lòng nhân từ và nói: ‘Lạy Chúa, xin thương xót họ, như họ đã chăm sóc con khi con còn nhỏ.’';

  @override
  String get duaMeaning6 =>
      'tôn cao thay Đức Chúa Trời, Đấng thực sự nắm quyền kiểm soát. [Tiên tri], đừng vội đọc thuộc lòng trước khi sự mặc khải hoàn toàn trọn vẹn mà hãy nói: ‘Lạy Chúa, xin gia tăng kiến ​​thức cho con!’';

  @override
  String get duaMeaning7 =>
      'Hãy nói [Tiên tri]: ‘Lạy Chúa, xin tha thứ và thương xót: Ngài là Đấng có lòng thương xót nhất.’';

  @override
  String get duaMeaning8 =>
      'những người cầu nguyện: ‘Lạy Chúa, xin ban cho chúng con niềm vui nơi vợ chồng và con cái chúng con. Xin hãy làm cho chúng con trở thành những tấm gương tốt cho những ai biết đến Ngài’.';

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
  String get hadith => 'Hadith';

  @override
  String get hadithCollection => 'Bộ sưu tập Hadith';

  @override
  String get hadithBooks => 'Sách Hadith';

  @override
  String get searchHadith => 'Tìm kiếm Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Các danh xưng của Allah';

  @override
  String get liveTv => 'Truyền hình trực tiếp';

  @override
  String get watchLive => 'Xem trực tiếp';

  @override
  String get streamError => 'Lỗi phát trực tiếp';

  @override
  String get reload => 'Tải lại';

  @override
  String get openInYoutube => 'Mở trong YouTube';

  @override
  String get ibadahTracker => 'Theo dõi Ibadah';

  @override
  String get fasting => 'Nhịn chay';

  @override
  String get quranReading => 'Đọc Kinh Qur\'an';

  @override
  String get prayers => 'Các buổi cầu nguyện';

  @override
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '$hours giờ $minutes phút';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '$minutes phút';
  }

  @override
  String get prayerRemainingUnavailable => '--';

  @override
  String get dhikrCount => 'Dhikr Count';

  @override
  String get weeklyProgress => 'Tiến độ hàng tuần';

  @override
  String get monthlyProgress => 'Monthly Progress';

  @override
  String get statistics => 'Statistics';

  @override
  String get hijriCalendar => 'Lịch Hijri';

  @override
  String get gregorianCalendar => 'Gregorian Calendar';

  @override
  String get today => 'Hôm nay';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get specialDays => 'Ngày đặc biệt';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Năm mới Hồi giáo';

  @override
  String get mawlidAnNabi => 'Mawlid Kandili';

  @override
  String get specialDayDateRamadanStart => '1 tháng Ramadan';

  @override
  String get specialDayDateLaylatAlQadr => 'Tháng Ramadan 27';

  @override
  String get specialDayDateEidAlFitr => '1 Shawwal';

  @override
  String get specialDayDateEidAlAdha => '10 Dhu al-Hijjah';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharram';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabiul Awwal';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'Hướng Qibla';

  @override
  String get compass => 'La bàn';

  @override
  String get degrees => 'degrees';

  @override
  String get north => 'North';

  @override
  String get qiblaFound => 'Đã tìm thấy hướng Qibla!';

  @override
  String get turnDevice => 'Xoay thiết bị của bạn về hướng Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Lỗi la bàn: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Cảm biến la bàn không khả dụng trên thiết bị này.';

  @override
  String get qiblaLocationRequiredTitle => 'Vị trí cần thiết cho Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Đặt vị trí thực tế của bạn trước khi sử dụng la bàn Qibla để có thể tính toán hướng chính xác.';

  @override
  String get adhanNotificationChannelName => 'Thông báo Adhan';

  @override
  String get adhanNotificationChannelDescription =>
      'Cảnh báo thời gian cầu nguyện với âm thanh adhan.';

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
  String get theme => 'chủ đề';

  @override
  String get lightMode => 'Chế độ ánh sáng';

  @override
  String get darkMode => 'Chế độ tối';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'Giới thiệu';

  @override
  String get version => 'Phiên bản';

  @override
  String get privacyPolicy => 'Chính sách bảo mật';

  @override
  String get termsOfService => 'Điều khoản dịch vụ';

  @override
  String get contactUs => 'Liên hệ với chúng tôi';

  @override
  String get rateApp => 'Đánh giá ứng dụng';

  @override
  String get shareApp => 'Chia sẻ ứng dụng';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Hãy xem $appName: Ứng dụng phong cách sống Hồi giáo tối ưu! $url';
  }

  @override
  String get downloadManager => 'Trình quản lý tải xuống';

  @override
  String get downloads => 'Tải xuống';

  @override
  String get downloading => 'Đang tải xuống...';

  @override
  String get downloadComplete => 'Tải xuống hoàn tất';

  @override
  String get downloadFailed => 'Tải xuống không thành công';

  @override
  String get offlineMode => 'Chế độ ngoại tuyến';

  @override
  String get noInternet => 'Không có kết nối Internet';

  @override
  String get checkConnection => 'Vui lòng kiểm tra kết nối của bạn';

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
  String get getStarted => 'Bắt đầu';

  @override
  String get skip => 'Skip';

  @override
  String get next => 'Tiếp theo';

  @override
  String get done => 'Xong';

  @override
  String get onboarding1Title => 'Chào mừng đến với Sirat-ı Nur';

  @override
  String get onboarding1Desc =>
      'Ứng dụng đồng hành Hồi giáo hoàn chỉnh của bạn cho thời gian cầu nguyện, Kinh Qur\'an, v.v.';

  @override
  String get onboarding2Title => 'thời gian cầu nguyện';

  @override
  String get onboarding2Desc =>
      'Thời gian cầu nguyện chính xác dựa trên vị trí của bạn';

  @override
  String get onboarding3Title => 'Kinh Qur\'an và hơn thế nữa';

  @override
  String get onboarding3Desc =>
      'Đọc Kinh Qur\'an, theo dõi việc đọc của bạn và khám phá nội dung Hồi giáo';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'Đặt lại bộ đếm';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'Số mục tiêu: $target';
  }

  @override
  String get tapToCount => 'Nhấn để đếm';

  @override
  String get zikrCompletedMashAllah => 'Hoàn thành! MashAllah';

  @override
  String get zikrMeaningSubhanAllah => 'Allah vượt xa mọi sự không hoàn hảo.';

  @override
  String get zikrMeaningAlhamdulillah =>
      'Mọi lời khen ngợi đều thuộc về Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah là Đấng vĩ đại nhất.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Không có thần nào ngoài Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Tôi tìm kiếm sự tha thứ của Allah.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Không có sức mạnh và sức mạnh nào ngoại trừ thông qua Allah.';

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
  String get dailyProgress => 'Tiến độ hàng ngày';

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
  String get recheckPremium => 'Kiểm tra lại trạng thái đăng ký trả phí';

  @override
  String get syncStore =>
      'Đồng bộ hóa với cửa hàng ứng dụng để xác nhận đăng ký trả phí của bạn.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'Đã xác minh đăng ký trả phí.';

  @override
  String get premiumNotFound => 'Không tìm thấy đăng ký trả phí.';

  @override
  String premiumRefreshError(Object error) {
    return 'Không thể làm mới trạng thái đăng ký trả phí: $error';
  }

  @override
  String get offlineDownloadManager => 'Trình quản lý tải xuống ngoại tuyến';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Giải phóng bộ nhớ trong của thiết bị.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'Đang kiểm tra cơ sở dữ liệu Kinh Qur\'an...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'Trạng thái cơ sở dữ liệu Kinh Qur\'an';

  @override
  String statusLabel(Object status) {
    return 'Trạng thái: $status';
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
  String get audioVoice => 'Giọng nói âm thanh';

  @override
  String get audioVoiceMisharyAlafasy => 'Nam (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Nam (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Nam (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Hiệu chỉnh Qibla';

  @override
  String get compassSmoothing => 'Làm mịn la bàn';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Hiệu chuẩn bù đắp';

  @override
  String currentOffset(Object offset) {
    return 'Hiện tại: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Điều chỉnh nếu la bàn của bạn cần chỉnh sửa thủ công. Giá trị dương xoay theo chiều kim đồng hồ.';

  @override
  String get apply => 'Áp dụng thay đổi';

  @override
  String get resetOnboarding => 'Đặt lại thiết lập phần giới thiệu';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Chẩn đoán';

  @override
  String get diagnosticsNotSet => 'Chưa đặt';

  @override
  String get diagnosticsPrayerProfile => 'Hồ sơ cầu nguyện';

  @override
  String get diagnosticsPrayerSource => 'Cơ quan cầu nguyện';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Tùy chỉnh / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Góc tùy chỉnh thủ công (không có nguồn tổ chức)';

  @override
  String get diagnosticsCloudDriven => 'Điều khiển bằng đám mây';

  @override
  String get diagnosticsAdhanAudioAssets => 'Nội dung âm thanh Adhan';

  @override
  String get diagnosticsUiAudioAssets =>
      'Nội dung âm thanh giao diện người dùng';

  @override
  String get diagnosticsQuranAudioAssets => 'Tài sản âm thanh Kinh Qur\'an';

  @override
  String get diagnosticsAudioAssets => 'Nội dung âm thanh';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count tệp';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Đọc tệp kê khai không thành công: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Địa phương hóa';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count được hỗ trợ';
  }

  @override
  String get diagnosticsQuranDataset => 'Bộ dữ liệu Kinh Qur\'an';

  @override
  String get diagnosticsQuranSurahs => 'Các surah của Kinh Qur\'an';

  @override
  String get diagnosticsQuranAyahs => 'Các ayah của Kinh Qur\'an';

  @override
  String get diagnosticsQuranJuzMetadata => 'Siêu dữ liệu juz của Kinh Qur\'an';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Bảng đám mây bị thiếu trong Supabase; dự phòng theo gói đang hoạt động';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Kiểm tra đám mây không thành công: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Thiếu siêu dữ liệu đám mây juz; dự phòng cấu trúc đi kèm đang hoạt động';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Kiểm tra cấu trúc đám mây không thành công: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Cần hiệu chuẩn. Xoay thiết bị trong hình 8.';

  @override
  String get dailyVerse => 'Câu thơ hàng ngày';

  @override
  String get todaysIbadah => 'Ibadah ngày nay';

  @override
  String get quickAccess => 'Truy cập nhanh';

  @override
  String get assistant => 'Trợ lý';

  @override
  String get places => 'Địa điểm';

  @override
  String get library => 'Thư viện';

  @override
  String get analytics => 'Phân tích';

  @override
  String get dailyDuas => 'Duas hàng ngày';

  @override
  String essentialDuas(String count) {
    return '$count bộ đôi thiết yếu';
  }

  @override
  String get duaUnavailableTitle => 'Bộ đôi đã được xác minh chưa có sẵn';

  @override
  String get duaUnavailableBody =>
      'Bộ đôi hàng ngày đã được xác minh chưa được đồng bộ hóa với thiết bị này. Kết nối với nguồn đám mây để tải các bản song ca có nguồn gốc thay vì bản dự phòng chưa được xác minh.';

  @override
  String get duaCategoryQuranic => 'Kinh Qur\'an dua';

  @override
  String get duaCategoryMorningEvening => 'Sáng & Tối';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Sự bảo vệ';

  @override
  String get duaCategoryBeginning => 'Sự khởi đầu';

  @override
  String get duaCategorySleep => 'Ngủ';

  @override
  String get duaCategoryFoodDrink => 'Đồ ăn & Đồ uống';

  @override
  String get duaCategoryForgiveness => 'sự tha thứ';

  @override
  String get duaCategoryHome => 'Trang chủ';

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
  String get islamicEducation => 'Giáo dục Hồi giáo';

  @override
  String get sukunAudioTitle => 'Âm thanh Sukun';

  @override
  String get hadithCollections => 'Bộ sưu tập Hadith';

  @override
  String get hadithSourcePending => 'Nguồn đã được xác minh đang chờ xử lý';

  @override
  String get hadithUnavailableTitle =>
      'Bộ sưu tập hadith đã được xác minh chưa có sẵn';

  @override
  String get hadithUnavailableBody =>
      'Bản dựng này vẫn phụ thuộc vào nguồn cấp dữ liệu hadith bên ngoài chưa được xác minh. Trình duyệt Hadith vẫn bị vô hiệu hóa cho đến khi tập dữ liệu có nguồn gốc được đồng bộ hóa.';

  @override
  String get paywallUnlockAll =>
      'Mở khóa tất cả các tính năng cho hành trình tâm linh của bạn';

  @override
  String get premiumProductUnavailable =>
      'Sản phẩm cao cấp hiện không có sẵn. Vui lòng thử lại sau.';

  @override
  String get premiumPurchaseFailed =>
      'Không thể hoàn tất việc mua hàng. Vui lòng thử lại.';

  @override
  String get paywallFeature1Title => 'Trợ lý thần kinh Plus';

  @override
  String get paywallFeature1Desc => 'Hỏi đáp được hỗ trợ bởi AI không giới hạn';

  @override
  String get paywallFeature2Title => 'Ngoại tuyến không giới hạn';

  @override
  String get paywallFeature2Desc => 'Tải về tất cả các bài tụng';

  @override
  String get paywallFeature3Title => 'Thiết kế độc quyền';

  @override
  String get paywallFeature3Desc => 'Chủ đề và phông chữ cao cấp';

  @override
  String get paywallFeature4Title => 'Không có quảng cáo';

  @override
  String get paywallFeature4Desc => 'Không có quảng cáo';

  @override
  String get paywallGetAccess => 'Nhận quyền truy cập trọn đời - \$1,00';

  @override
  String get restorePurchases => 'Khôi phục mua hàng';

  @override
  String get zakatCalculator => 'Máy tính Zakat';

  @override
  String get zakatGold => 'Vàng (Altin)';

  @override
  String get zakatSilver => 'Bạc (Gümüş)';

  @override
  String get zakatCashBank => 'Tiền mặt / Ngân hàng';

  @override
  String get zakatBusiness => 'Việc kinh doanh';

  @override
  String get zakatInvestments => 'Đầu tư';

  @override
  String get zakatWeightGrams => 'Trọng lượng (g)';

  @override
  String get zakatPricePerGram => 'Giá/g';

  @override
  String get zakatTotalAmount => 'Tổng số tiền';

  @override
  String get zakatInventoryValue => 'Giá trị hàng tồn kho';

  @override
  String get zakatDebts => 'Nợ';

  @override
  String get zakatTotal => 'Tổng cộng';

  @override
  String get calculateZakat => 'Tính Zakat';

  @override
  String get nisabNotReached => 'Nisab không đạt được. Zakat không bắt buộc.';

  @override
  String get totalZakat => 'Tổng Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Tài sản: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakat vàng';

  @override
  String get zakatSilverZakat => 'Zakat bạc';

  @override
  String get zakatCashZakat => 'Zakat tiền mặt';

  @override
  String get zakatBusinessZakat => 'Zakat kinh doanh';

  @override
  String get zakatInvestmentZakat => 'Zakat đầu tư';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! Tôi là trợ lý Hồi giáo của bạn. Hãy hỏi tôi về việc cầu nguyện, nhịn ăn, zakat hoặc bất kỳ chủ đề Hồi giáo nào.';

  @override
  String get chatbotLimitReached =>
      'Đã đạt đến giới hạn truy vấn hàng ngày. Nâng cấp lên Premium không giới hạn.';

  @override
  String get chatbotErrorMsg =>
      'Tôi không thể tạo ra phản hồi. Vui lòng thử lại.';

  @override
  String get chatbotOfflinePrompt =>
      'Cơ sở kiến thức Hồi giáo ngoại tuyến đã được xác minh vẫn đang được quản lý. Bạn có thể bật tính năng dự phòng ngoại tuyến ngay bây giờ nhưng tính năng này sẽ chỉ hiển thị các thông báo an toàn có giới hạn cho đến khi tập dữ liệu có nguồn sẵn sàng.\n\nBạn có muốn bật dự phòng ngoại tuyến không?';

  @override
  String get chatbotOfflineSwitched =>
      'Đã bật dự phòng ngoại tuyến. Các câu trả lời Hồi giáo địa phương đã được xác minh vẫn chưa sẵn sàng.';

  @override
  String get chatbotOfflineDownloadLabel => 'Bật dự phòng ngoại tuyến';

  @override
  String get downloadPreparing => 'Đang chuẩn bị tải xuống...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Đang tải xuống surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Tất cả surahs đã được tải xuống cho người đọc thuộc lòng này.';

  @override
  String get offlineQuranAudioPacks => 'Gói âm thanh Kinh Qur\'an ngoại tuyến';

  @override
  String storedOnDeviceMb(String size) {
    return 'Được lưu trữ trên thiết bị: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surah đã tải xuống';
  }

  @override
  String get redownloadMissingRepair => 'Sửa chữa/Tải xuống bị thiếu';

  @override
  String get downloadAction => 'Tải xuống';

  @override
  String get resumeDownload => 'Tiếp tục tải xuống';

  @override
  String get deleteDownloadedFiles => 'Xóa các tập tin đã tải xuống';

  @override
  String get downloadCancelling => 'Đang hủy...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Đã hủy tải xuống cho $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Đã hoàn tất tải xuống cho $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Đã hoàn tất tải xuống cho $reciter với $failed surah không thành công ($downloaded/$total đã tải xuống).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Đã xóa tệp ngoại tuyến cho $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Các nguồn âm thanh Kinh Qur\'an đã được xác minh hiện không có sẵn.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Gói âm thanh Kinh Qur\'an đã được xác minh chưa đầy đủ ($available/$total). Hãy làm mới hạt giống đám mây và thử lại.';
  }

  @override
  String get chatbotHint => 'Đặt một câu hỏi...';

  @override
  String get chatbotThinking => 'Đang suy nghĩ...';

  @override
  String get sukunMixerSubtitle => 'Máy trộn thiên nhiên & Qur\'an';

  @override
  String get audioPlayFailed => 'Phát lại âm thanh không thành công';

  @override
  String get sukunNatureLabel => 'Sukun (Thiên nhiên)';

  @override
  String get sukunRainOfMercy => 'Cơn mưa nhân ái';

  @override
  String get sukunGardenOfPeace => 'Khu vườn hòa bình';

  @override
  String get sukunMidnightCalm => 'Nửa đêm bình yên';

  @override
  String get sukunOceanTawheed => 'đại dương Tawheed';

  @override
  String get sukunUnavailableTitle => 'Không có âm thanh';

  @override
  String get sukunUnavailableBody =>
      'Bản dựng này chưa bao gồm nội dung cảnh quan âm thanh Sukun cần thiết.';

  @override
  String get prayerCompletion => 'Hoàn thành các buổi cầu nguyện';

  @override
  String get streaks => 'Vệt';

  @override
  String get dayStreak => 'Chuỗi ngày';

  @override
  String get bestStreak => 'Chuỗi tốt nhất';

  @override
  String get chatbotCloudAiLabel => 'Đám mây AI';

  @override
  String get chatbotLocalAiLabel => 'Dự phòng ngoại tuyến';

  @override
  String get chatbotUseCloudAi => 'Dùng Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Bật dự phòng ngoại tuyến';

  @override
  String chatbotQueriesLeft(String count) {
    return 'Còn $count';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'API đám mây không được định cấu hình. Chưa có hướng dẫn Hồi giáo ngoại tuyến đã được xác minh.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Hiện chưa có hướng dẫn Hồi giáo địa phương đã được xác minh. Chuyển sang Cloud AI để có câu trả lời có nguồn gốc.';

  @override
  String get mosques => 'Nhà thờ Hồi giáo';

  @override
  String get halalFood => 'Thực phẩm Halal';

  @override
  String get placesSearchArea => 'Tìm kiếm khu vực này';

  @override
  String get nearbyMosques => 'Nhà thờ Hồi giáo lân cận';

  @override
  String get islamicSchools => 'Trường học Hồi giáo';

  @override
  String placesFoundCount(String count) {
    return 'Đã tìm thấy $count';
  }

  @override
  String distanceAwayKm(String distance) {
    return 'Cách $distance km';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Lỗi API: $statusCode';
  }

  @override
  String get placesNetworkError => 'Lỗi mạng. Vui lòng thử lại.';

  @override
  String get placesLocationRequiredTitle => 'Yêu cầu vị trí';

  @override
  String get placesLocationRequiredBody =>
      'Trước tiên hãy đặt vị trí để có thể tìm kiếm chính xác các nhà thờ Hồi giáo, đồ ăn halal và trường học Hồi giáo gần đó.';

  @override
  String get placesMapTilesUnavailableTitle => 'Ô bản đồ không có sẵn';

  @override
  String get placesMapTilesUnavailableBody =>
      'Nguồn ô bản đồ đã được xác minh chưa được định cấu hình cho bản dựng này. Các địa điểm lân cận vẫn có thể tải từ vị trí đã lưu của bạn.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'Dữ liệu địa điểm không có sẵn';

  @override
  String get placesDataSourceUnavailableBody =>
      'Điểm cuối dữ liệu địa điểm đã xác minh chưa được định cấu hình cho bản dựng này. Đặt PLACES_OVERPASS_API_URL thành proxy hoặc nhà cung cấp được phê duyệt trước khi bật tìm kiếm lân cận.';

  @override
  String get unknownPlaceName => 'Tên không xác định';

  @override
  String get islamicPlaceFallback => 'Địa điểm Hồi giáo';

  @override
  String get asmaMeaning1 => 'Người có lợi';

  @override
  String get asmaMeaning2 => 'Người nhân hậu';

  @override
  String get asmaMeaning3 => 'Vua / Chúa vĩnh cửu';

  @override
  String get asmaMeaning4 => 'Thần thánh nhất';

  @override
  String get asmaMeaning5 => 'Nguồn bình yên';

  @override
  String get asmaMeaning6 => 'Người cung cấp bảo mật';

  @override
  String get asmaMeaning7 =>
      'Đấng Giám hộ luôn quan sát, trông nom và bảo vệ toàn thể tạo vật.';

  @override
  String get asmaMeaning8 => 'Người quý giá / Người hùng mạnh nhất';

  @override
  String get asmaMeaning9 =>
      'Đấng Phục hồi và Không thể cưỡng lại, ý muốn của Ngài thắng thế bằng quyền năng hoàn hảo.';

  @override
  String get asmaMeaning10 => 'Tuyệt vời nhất';

  @override
  String get asmaMeaning11 => 'Người sáng tạo';

  @override
  String get asmaMeaning12 => 'Người tạo đơn hàng';

  @override
  String get asmaMeaning13 => 'Người định hình vẻ đẹp';

  @override
  String get asmaMeaning14 => 'Sự tha thứ';

  @override
  String get asmaMeaning15 => 'Kẻ chinh phục';

  @override
  String get asmaMeaning16 => 'Người cho đi tất cả';

  @override
  String get asmaMeaning17 => 'Người duy trì';

  @override
  String get asmaMeaning18 => 'Bàn mở tỷ số';

  @override
  String get asmaMeaning19 => 'Người biết tất cả';

  @override
  String get asmaMeaning20 =>
      'Đấng Giữ lại, thu hẹp và kiềm giữ bằng sự khôn ngoan.';

  @override
  String get asmaMeaning21 =>
      'Đấng Mở rộng, ban sự dễ dàng, dư dật và rộng rãi bằng sự khôn ngoan.';

  @override
  String get asmaMeaning22 => 'Kẻ phản bội';

  @override
  String get asmaMeaning23 => 'Người tôn vinh';

  @override
  String get asmaMeaning24 => 'Phần thưởng danh dự';

  @override
  String get asmaMeaning25 => 'Kẻ làm nhục';

  @override
  String get asmaMeaning26 => 'Người lắng nghe tất cả';

  @override
  String get asmaMeaning27 => 'Người tiên tri tất cả';

  @override
  String get asmaMeaning28 => 'Thẩm phán';

  @override
  String get asmaMeaning29 => 'Chính nghĩa';

  @override
  String get asmaMeaning30 => 'Người tinh tế';

  @override
  String get asmaMeaning31 => 'Tất cả đều nhận thức được';

  @override
  String get asmaMeaning32 => 'Sự nhẫn nại';

  @override
  String get asmaMeaning33 => 'Tuyệt vời';

  @override
  String get asmaMeaning34 => 'Người tha thứ vĩ đại';

  @override
  String get asmaMeaning35 => 'Người tưởng thưởng cho lòng biết ơn';

  @override
  String get asmaMeaning36 => 'Cao nhất';

  @override
  String get asmaMeaning37 => 'Tuyệt vời nhất';

  @override
  String get asmaMeaning38 => 'Người bảo quản';

  @override
  String get asmaMeaning39 => 'Chất nuôi dưỡng';

  @override
  String get asmaMeaning40 => 'Người tính toán';

  @override
  String get asmaMeaning41 => 'Sự hùng vĩ';

  @override
  String get asmaMeaning42 => 'Người hào phóng';

  @override
  String get asmaMeaning43 => 'Người cảnh giác';

  @override
  String get asmaMeaning44 => 'Người đáp lại lời cầu nguyện';

  @override
  String get asmaMeaning45 => 'Toàn diện';

  @override
  String get asmaMeaning46 => 'Người khôn ngoan hoàn hảo';

  @override
  String get asmaMeaning47 => 'Người yêu thương';

  @override
  String get asmaMeaning48 => 'Người vinh quang nhất';

  @override
  String get asmaMeaning49 => 'Người Phục Sinh';

  @override
  String get asmaMeaning50 => 'Nhân chứng';

  @override
  String get asmaMeaning51 => 'Sự thật';

  @override
  String get asmaMeaning52 => 'Người được ủy thác đầy đủ';

  @override
  String get asmaMeaning53 => 'Người sở hữu mọi sức mạnh';

  @override
  String get asmaMeaning54 => 'Mạnh mẽ';

  @override
  String get asmaMeaning55 => 'Người bảo vệ';

  @override
  String get asmaMeaning56 => 'Người được khen ngợi';

  @override
  String get asmaMeaning57 => 'Người đánh giá';

  @override
  String get asmaMeaning58 => 'Người khởi tạo';

  @override
  String get asmaMeaning59 => 'Trình khôi phục';

  @override
  String get asmaMeaning60 => 'Người ban sự sống';

  @override
  String get asmaMeaning61 => 'Kẻ cướp đi cuộc sống';

  @override
  String get asmaMeaning62 => 'Sự sống mãi mãi';

  @override
  String get asmaMeaning63 => 'Người duy trì khả năng tự tồn tại';

  @override
  String get asmaMeaning64 => 'Trình tìm kiếm';

  @override
  String get asmaMeaning65 => 'Sự vinh quang';

  @override
  String get asmaMeaning66 => 'Người duy nhất';

  @override
  String get asmaMeaning67 => 'Một';

  @override
  String get asmaMeaning68 => 'Người được mọi người tìm kiếm';

  @override
  String get asmaMeaning69 => 'Mạnh mẽ';

  @override
  String get asmaMeaning70 => 'Người tạo ra mọi sức mạnh';

  @override
  String get asmaMeaning71 => 'Máy xúc tiến';

  @override
  String get asmaMeaning72 => 'Người trì hoãn';

  @override
  String get asmaMeaning73 => 'Đầu tiên';

  @override
  String get asmaMeaning74 => 'Cuối cùng';

  @override
  String get asmaMeaning75 => 'Bản kê khai';

  @override
  String get asmaMeaning76 => 'Ẩn';

  @override
  String get asmaMeaning77 =>
      'Đấng Bảo hộ và Quản trị, cai quản và chăm sóc toàn thể tạo vật.';

  @override
  String get asmaMeaning78 => 'Đấng tối cao';

  @override
  String get asmaMeaning79 => 'Người làm điều tốt';

  @override
  String get asmaMeaning80 => 'Hướng dẫn sám hối';

  @override
  String get asmaMeaning81 => 'Kẻ báo thù';

  @override
  String get asmaMeaning82 => 'Người tha thứ';

  @override
  String get asmaMeaning83 =>
      'Đấng Nhân từ và Thương xót nhất, đầy lòng xót thương dịu dàng.';

  @override
  String get asmaMeaning84 => 'Chủ sở hữu / Chủ quyền của tất cả';

  @override
  String get asmaMeaning85 => 'Người sở hữu uy quyền và tiền thưởng';

  @override
  String get asmaMeaning86 => 'Người công bằng';

  @override
  String get asmaMeaning87 => 'Người thu thập';

  @override
  String get asmaMeaning88 => 'Người giàu';

  @override
  String get asmaMeaning89 => 'Bộ làm giàu';

  @override
  String get asmaMeaning90 => 'Người ngăn chặn tác hại';

  @override
  String get asmaMeaning91 => 'Kẻ gây hại';

  @override
  String get asmaMeaning92 => 'Người ban tặng lợi ích';

  @override
  String get asmaMeaning93 => 'Ánh sáng';

  @override
  String get asmaMeaning94 => 'Người hướng dẫn';

  @override
  String get asmaMeaning95 => 'Người khởi tạo';

  @override
  String get asmaMeaning96 => 'Người vĩnh cửu';

  @override
  String get asmaMeaning97 => 'Người thừa kế';

  @override
  String get asmaMeaning98 => 'Hướng dẫn chính đáng nhất';

  @override
  String get asmaMeaning99 =>
      'Đấng Kiên nhẫn, không vội trừng phạt và hành xử với sự khoan dung hoàn hảo.';
}
