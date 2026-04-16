// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lao (`lo`).
class AppLocalizationsLo extends AppLocalizations {
  AppLocalizationsLo([String locale = 'lo']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'ວິ​ທີ​ການ​ອິດ​ສະ​ລາມ​ຂອງ​ແສງ​ສະ​ຫວ່າງ​';

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
  String get fajr => 'ຟາຈ';

  @override
  String get sunrise => 'ຕາເວັນຂຶ້ນ';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Maghrib';

  @override
  String get isha => 'ອິຊາ';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'ເວລາສຳລັບ $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'ມັນແມ່ນເວລາທີ່ຈະອະທິຖານ $prayerName.';
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
  String get systemDefault => 'ຄ່າເລີ່ມຕົ້ນຂອງລະບົບ';

  @override
  String get currentLocation => 'Current Location (GPS)';

  @override
  String get locationServiceDisabled => 'ບໍລິການສະຖານທີ່ຖືກປິດໃຊ້ງານ.';

  @override
  String get locationPermissionDenied => 'ການອະນຸຍາດສະຖານທີ່ຖືກປະຕິເສດ.';

  @override
  String get locationDetectionFailed =>
      'ບໍ່ສາມາດກວດພົບສະຖານທີ່ຂອງທ່ານໄດ້. ກະລຸນາເລືອກເມືອງດ້ວຍຕົນເອງ ຫຼືລອງໃໝ່ອີກ.';

  @override
  String citiesCount(String count) {
    return '$count ເມືອງ';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'ບໍ່ພົບຜົນການຊອກຫາ';

  @override
  String get loading => 'ກຳລັງໂຫລດ...';

  @override
  String get error => 'ຜິດພາດ';

  @override
  String get appErrorOccurred => 'ເກີດຄວາມຜິດພາດຂຶ້ນ';

  @override
  String get appUnknownError => 'ຄວາມຜິດພາດທີ່ບໍ່ຮູ້ຈັກ';

  @override
  String get quranLoadFailed =>
      'ເນື້ອຫາ Quran ບໍ່ສາມາດໂຫລດໄດ້. ກະລຸນາລອງອີກຄັ້ງ.';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'ໂຫຼດຂໍ້ມູນຄືນໃໝ່';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'ລຶບ';

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
  String get tafsirLoading => 'ກຳລັງໂຫລດ tafsir...';

  @override
  String get tafsirSourceLabel => 'ແຫຼ່ງ Tafsir';

  @override
  String get tafsirNoSurahFound => 'ບໍ່ພົບ tafsir ສໍາລັບ Surah ນີ້.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'ບໍ່ພົບ tafsir ສໍາລັບ ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'ບໍ່ສາມາດໂຫຼດ Tafsir ໄດ້.';

  @override
  String get tafsirNoTextForAyah => 'ບໍ່ມີຂໍ້ຄວາມ tafsir ສໍາລັບ ayah ນີ້.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'ກຳລັງດາວໂຫລດ tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'ກຳລັງໂຫລດ tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'ແຫຼ່ງ Tafsir ຕອບ HTTP $statusCode ຂໍ້ຜິດພາດ.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'ແຫຼ່ງ tafsir ທີ່ເລືອກສົ່ງຄືນບໍ່ມີລາຍການ.';

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
      'ຄົນອື່ນອະທິຖານວ່າ, \'ພຣະຜູ້ເປັນເຈົ້າຂອງພວກເຮົາ, ໃຫ້ພວກເຮົາມີຄວາມດີໃນໂລກນີ້ແລະໃນໂລກນີ້, ແລະປົກປ້ອງພວກເຮົາຈາກການທໍລະມານຂອງໄຟ.\'';

  @override
  String get duaMeaning2 =>
      'ພະເຈົ້າ​ບໍ່​ໄດ້​ຮັບ​ພາລະ​ໜັກ​ເກີນ​ກວ່າ​ທີ່​ຈະ​ທົນ​ໄດ້: ແຕ່​ລະ​ຄົນ​ຈະ​ໄດ້​ຜົນ​ດີ​ອັນ​ໃດ​ກໍ​ຕາມ​ທີ່​ໄດ້​ເຮັດ ແລະ​ທົນ​ທຸກ​ກັບ​ຄວາມ​ຊົ່ວ— ‘ພະອົງ​ເຈົ້າ​ເອີຍ ຢ່າ​ເອົາ​ພວກ​ເຮົາ​ໄປ​ເຮັດ​ວຽກ ຖ້າ​ເຮົາ​ລືມ​ຫຼື​ເຮັດ​ຜິດ. ພະອົງ​ເຈົ້າ​ເອີຍ, ຂໍ​ຢ່າ​ແບກ​ພາລະ​ພວກ​ເຮົາ ດັ່ງ​ທີ່​ພຣະອົງ​ໄດ້​ແບກ​ພາລະ​ພວກ​ທີ່​ຢູ່​ຕໍ່ໜ້າ​ພວກ​ເຮົາ. ພຣະ​ອົງ​ເຈົ້າ, ຢ່າ​ພາ​ລະ​ພວກ​ເຮົາ​ຫລາຍ​ກວ່າ​ທີ່​ພວກ​ເຮົາ​ມີ​ຄວາມ​ເຂັ້ມ​ແຂງ​ທີ່​ຈະ​ຮັບ​ເອົາ. ຂໍ​ອະ​ໄພ​ພວກ​ເຮົາ, ໃຫ້​ອະ​ໄພ​ພວກ​ເຮົາ, ແລະ​ມີ​ຄວາມ​ເມດ​ຕາ​ພວກ​ເຮົາ. ທ່ານ​ເປັນ​ຜູ້​ປົກ​ປ້ອງ​ຂອງ​ພວກ​ເຮົາ, ດັ່ງ​ນັ້ນ​ຊ່ວຍ​ພວກ​ເຮົາ​ຕໍ່​ຕ້ານ​ພວກ​ທີ່​ບໍ່​ເຊື່ອ.';

  @override
  String get duaMeaning3 =>
      '‘ອົງພຣະ​ຜູ້​ເປັນເຈົ້າ​ຂອງ​ພວກເຮົາ ຂໍ​ຢ່າ​ໃຫ້​ໃຈ​ຂອງ​ພວກ​ເຮົາ​ຫລົງ​ທາງ​ຫລັງ​ຈາກ​ພຣະອົງ​ໄດ້​ຊີ້​ນຳ​ພວກ​ເຮົາ. ມອບຄວາມເມດຕາຂອງເຈົ້າໃຫ້ພວກເຮົາ: ເຈົ້າເປັນຜູ້ໃຫ້.';

  @override
  String get duaMeaning4 =>
      'ພຣະຜູ້ເປັນເຈົ້າ, ຂໍໃຫ້ຂ້າພະເຈົ້າແລະລູກຫລານຂອງຂ້າພະເຈົ້າສາມາດຮັກສາຄໍາອະທິຖານ. ພຣະຜູ້ເປັນເຈົ້າຂອງພວກເຮົາ, ຍອມຮັບຄໍາຮ້ອງຂໍຂອງຂ້ອຍ.';

  @override
  String get duaMeaning5 =>
      'ແລະ​ຫຼຸດ​ປີກ​ຂອງ​ເຈົ້າ​ລົງ​ໃນ​ຄວາມ​ຖ່ອມ​ຕົວ​ຕໍ່​ພວກ​ເຂົາ​ດ້ວຍ​ຄວາມ​ເມດຕາ ແລະ​ເວົ້າ​ວ່າ, ‘ພະອົງ​ເຈົ້າ​ເອີຍ ຂໍ​ຊົງ​ໂຜດ​ເມດຕາ​ພວກ​ເຂົາ ເໝືອນ​ດັ່ງ​ທີ່​ພວກ​ເຂົາ​ເປັນ​ຫ່ວງ​ຂ້ອຍ​ຕອນ​ຍັງ​ນ້ອຍ.’';

  @override
  String get duaMeaning6 =>
      'ພຣະເຈົ້າ​ຊົງ​ໂຜດ​ປະທານ​ໃຫ້​ແກ່​ຜູ້​ທີ່​ມີ​ອຳນາດ​ຢ່າງ​ແທ້ຈິງ. [ສາດ​ສະ​ດາ], ຢ່າ​ຟ້າວ​ບັນ​ຍາຍ​ກ່ອນ​ການ​ເປີດ​ເຜີຍ​ຈະ​ສຳ​ເລັດ​ຢ່າງ​ເຕັມ​ທີ່ ແຕ່​ຈົ່ງ​ເວົ້າ​ວ່າ, ‘ພຣະ​ຜູ້​ເປັນ​ເຈົ້າ, ຈົ່ງ​ເພີ່ມ​ຄວາມ​ຮູ້​ໃຫ້​ຂ້າ​ພະ​ເຈົ້າ!’';

  @override
  String get duaMeaning7 =>
      'ເວົ້າ [ສາດສະດາ], \'ພຣະອົງເຈົ້າ, ໃຫ້ອະໄພແລະມີຄວາມເມດຕາ: ທ່ານມີຄວາມເມດຕາທີ່ສຸດ.\'';

  @override
  String get duaMeaning8 =>
      'ຜູ້​ທີ່​ອະທິດຖານ​ວ່າ, ‘ອົງພຣະ​ຜູ້​ເປັນເຈົ້າ​ຂອງ​ພວກ​ຂ້ານ້ອຍ​ເອີຍ, ຂໍ​ໃຫ້​ພວກ​ຂ້ານ້ອຍ​ມີ​ຄວາມສຸກ​ໃນ​ຄູ່​ສົມລົດ ແລະ​ລູກ​ຫລານ​ຂອງ​ພວກເຮົາ. ເຮັດ​ໃຫ້​ພວກ​ເຮົາ​ເປັນ​ຕົວ​ຢ່າງ​ທີ່​ດີ​ຕໍ່​ຜູ້​ທີ່​ຮູ້​ຈັກ​ທ່ານ.';

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
  String get hadithCollection => 'ການເກັບກໍາ Hadith';

  @override
  String get hadithBooks => 'ປຶ້ມ Hadith';

  @override
  String get searchHadith => 'ຊອກຫາ Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Names of Allah';

  @override
  String get liveTv => 'ໂທລະພາບສົດ';

  @override
  String get watchLive => 'ເບິ່ງສົດ';

  @override
  String get streamError => 'ການຖ່າຍທອດຜິດພາດ';

  @override
  String get reload => 'ໂຫຼດໃໝ່';

  @override
  String get openInYoutube => 'ເປີດໃນ YouTube';

  @override
  String get ibadahTracker => 'ບົບຕິດຕາມລຸດ Ibadah';

  @override
  String get fasting => 'Fasting';

  @override
  String get quranReading => 'Quran Reading';

  @override
  String get prayers => 'Prayers';

  @override
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '$hoursຊມ $minutesນທ';
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
  String get islamicNewYear => 'ປີໃຫມ່ອິດສະລາມ';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadan';

  @override
  String get specialDayDateEidAlFitr => '1 ຊົວແວວ';

  @override
  String get specialDayDateEidAlAdha => '10 Dhul Hijjah';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharram';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabi al-Awwal';

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
    return 'ເຂັມທິດຜິດພາດ: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'ເຊັນເຊີເຂັມທິດບໍ່ສາມາດໃຊ້ໄດ້ໃນອຸປະກອນນີ້.';

  @override
  String get qiblaLocationRequiredTitle => 'ສະຖານທີ່ຕ້ອງການສໍາລັບ Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'ຕັ້ງຄ່າສະຖານທີ່ຕົວຈິງຂອງເຈົ້າກ່ອນທີ່ຈະໃຊ້ເຂັມທິດ Qibla ເພື່ອໃຫ້ທິດທາງສາມາດຄິດໄລ່ໄດ້ຢ່າງຖືກຕ້ອງ.';

  @override
  String get adhanNotificationChannelName => 'ການແຈ້ງເຕືອນ Adhan';

  @override
  String get adhanNotificationChannelDescription =>
      'ແຈ້ງເຕືອນເວລາອະທິຖານດ້ວຍສຽງ adhan.';

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
  String get theme => 'ຫົວຂໍ້';

  @override
  String get lightMode => 'ໂໝດແສງ';

  @override
  String get darkMode => 'ໂໝດມືດ';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'About';

  @override
  String get version => 'ຮຸ່ນ';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get termsOfService => 'Terms of Service';

  @override
  String get contactUs => 'Contact Us';

  @override
  String get rateApp => 'ໃຫ້ຄະແນນ App';

  @override
  String get shareApp => 'ແບ່ງປັນແອັບ';

  @override
  String shareAppMessage(String appName, String url) {
    return 'ກວດເບິ່ງ $appName: ສຸດຍອດແອັບວິຖີຊີວິດອິດສະລາມ! $url';
  }

  @override
  String get downloadManager => 'ຜູ້ຈັດການດາວໂຫຼດ';

  @override
  String get downloads => 'ດາວໂຫຼດ';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'ດາວໂຫຼດສຳເລັດ';

  @override
  String get downloadFailed => 'ການດາວໂຫຼດລົ້ມເຫລວ';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'ບໍ່ມີການເຊື່ອມຕໍ່ອິນເຕີເນັດ';

  @override
  String get checkConnection => 'ກະລຸນາກວດເບິ່ງການເຊື່ອມຕໍ່ຂອງທ່ານ';

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
  String get tapToCount => 'ແຕະເພື່ອນັບ';

  @override
  String get zikrCompletedMashAllah => 'ສຳເລັດແລ້ວ! MashAllah';

  @override
  String get zikrMeaningSubhanAllah => 'Allah ແມ່ນຢູ່ເຫນືອຄວາມບໍ່ສົມບູນແບບ.';

  @override
  String get zikrMeaningAlhamdulillah => 'ຄໍາສັນລະເສີນທັງຫມົດເປັນຂອງ Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah ແມ່ນຍິ່ງໃຫຍ່ທີ່ສຸດ.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'ບໍ່ມີພຣະເຈົ້າແຕ່ Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'ຂ້າພະເຈົ້າຊອກຫາການໃຫ້ອະໄພ Allah.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'ບໍ່ມີພະລັງງານແລະບໍ່ມີຄວາມເຂັ້ມແຂງຍົກເວັ້ນໂດຍຜ່ານ Allah.';

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
  String get freeStorage => 'ສ້າງພື້ນທີ່ຈັດເກັບຂໍ້ມູນພາຍໃນອຸປະກອນ.';

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
  String get audioVoice => 'ສຽງສຽງ';

  @override
  String get audioVoiceMisharyAlafasy => 'ຜູ້ຊາຍ (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'ຜູ້ຊາຍ (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'ຊາຍ (ຊູໄດ)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'ການ​ປັບ Qibla​';

  @override
  String get compassSmoothing => 'Compass Smoothing';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Calibration Offset';

  @override
  String currentOffset(Object offset) {
    return 'ປັດຈຸບັນ: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'ປັບຖ້າເຂັມທິດຂອງທ່ານຕ້ອງການການແກ້ໄຂດ້ວຍຕົນເອງ. ຄ່າທາງບວກຈະໝຸນຕາມເຂັມໂມງ.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'ການວິນິດໄສ';

  @override
  String get diagnosticsNotSet => 'ບໍ່ໄດ້ຕັ້ງ';

  @override
  String get diagnosticsPrayerProfile => 'ຂໍ້ມູນການອະທິຖານ';

  @override
  String get diagnosticsPrayerSource => 'ອຳນາດການອະທິຖານ';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'ກຳນົດເອງ / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'ມຸມທີ່ກໍາຫນົດເອງດ້ວຍມື (ບໍ່ມີແຫຼ່ງສະຖາບັນ)';

  @override
  String get diagnosticsCloudDriven => 'Cloud Driven';

  @override
  String get diagnosticsAdhanAudioAssets => 'ຊັບສິນສຽງ Adhan';

  @override
  String get diagnosticsUiAudioAssets => 'UI ຊັບສິນສຽງ';

  @override
  String get diagnosticsQuranAudioAssets => 'ຊັບສິນສຽງ Quran';

  @override
  String get diagnosticsAudioAssets => 'ຊັບສິນສຽງ';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count ໄຟລ໌';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'ອ່ານ Manifest ບໍ່ສຳເລັດ: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Localization ທ້ອງຖິ່ນ';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count ຮອງຮັບ';
  }

  @override
  String get diagnosticsQuranDataset => 'ຊຸດ​ຂໍ້​ມູນ Quran';

  @override
  String get diagnosticsQuranSurahs => 'Quran Surahs';

  @override
  String get diagnosticsQuranAyahs => 'Quran Ayahs';

  @override
  String get diagnosticsQuranJuzMetadata => 'Quran Juz Metadata';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'ຕາຕະລາງຄລາວຫາຍໄປໃນ Supabase; bundled fallback ເຮັດວຽກ';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'ການກວດສອບຄລາວບໍ່ສຳເລັດ: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz metadata ຫາຍໄປ; bundled fallback ໂຄງສ້າງມີການເຄື່ອນໄຫວ';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'ການກວດສອບໂຄງສ້າງຄລາວລົ້ມເຫລວ: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'ຕ້ອງການການປັບທຽບ. ໝຸນອຸປະກອນໃນຮູບ-8.';

  @override
  String get dailyVerse => 'ຂໍ້ພຣະຄໍາພີປະຈໍາວັນ';

  @override
  String get todaysIbadah => 'Ibadah ມື້ນີ້';

  @override
  String get quickAccess => 'ການເຂົ້າເຖິງດ່ວນ';

  @override
  String get assistant => 'ຜູ້ຊ່ວຍ';

  @override
  String get places => 'ສະຖານທີ່';

  @override
  String get library => 'ຫໍສະໝຸດ';

  @override
  String get analytics => 'ການວິເຄາະ';

  @override
  String get dailyDuas => 'Duas ປະຈໍາວັນ';

  @override
  String essentialDuas(String count) {
    return '$count duas ທີ່ສໍາຄັນ';
  }

  @override
  String get duaUnavailableTitle => 'duas ທີ່ຢັ້ງຢືນແລ້ວຍັງບໍ່ສາມາດໃຊ້ໄດ້ເທື່ອ';

  @override
  String get duaUnavailableBody =>
      'ຢືນຢັນ duas ປະຈໍາວັນຍັງບໍ່ໄດ້ຖືກຊິງຄ໌ກັບອຸປະກອນນີ້ເທື່ອ. ເຊື່ອມຕໍ່ຫາແຫຼ່ງຄລາວເພື່ອໂຫຼດ duas ທີ່ມາແທນການທົດແທນທີ່ບໍ່ໄດ້ຮັບການຢືນຢັນ.';

  @override
  String get duaCategoryQuranic => 'Quranic dua';

  @override
  String get duaCategoryMorningEvening => 'ເຊົ້າ ແລະ ແລງ';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'ການປົກປ້ອງ';

  @override
  String get duaCategoryBeginning => 'ເລີ່ມຕົ້ນ';

  @override
  String get duaCategorySleep => 'ນອນ';

  @override
  String get duaCategoryFoodDrink => 'ອາຫານ ແລະ ເຄື່ອງດື່ມ';

  @override
  String get duaCategoryForgiveness => 'ການໃຫ້ອະໄພ';

  @override
  String get duaCategoryHome => 'ບ້ານ';

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
  String get islamicEducation => 'ການສຶກສາອິດສະລາມ';

  @override
  String get sukunAudioTitle => 'ສຸກັນ ສຽງສະຫວັນ';

  @override
  String get hadithCollections => 'ການເກັບກໍາ Hadith';

  @override
  String get hadithSourcePending => 'ຢືນຢັນແຫຼ່ງທີ່ລໍຖ້າຢູ່';

  @override
  String get hadithUnavailableTitle =>
      'ຄໍເລັກຊັນ hadith ທີ່ຢັ້ງຢືນແລ້ວຍັງບໍ່ທັນມີໃຫ້ເທື່ອ';

  @override
  String get hadithUnavailableBody =>
      'ການກໍ່ສ້າງນີ້ຍັງຂຶ້ນກັບອາຫານ hadith ພາຍນອກທີ່ບໍ່ໄດ້ຮັບການຢືນຢັນ. ການ​ຊອກ​ຫາ Hadith ຈະ​ປິດ​ການ​ໃຊ້​ງານ​ຈົນ​ກ​່​ວາ​ຊຸດ​ຂໍ້​ມູນ​ທີ່​ມາ​ໄດ້​ຖືກ​ຊິງ​.';

  @override
  String get paywallUnlockAll =>
      'ປົດລັອກຄຸນສົມບັດທັງໝົດສຳລັບການເດີນທາງທາງວິນຍານຂອງທ່ານ';

  @override
  String get premiumProductUnavailable =>
      'ສິນຄ້າພຣີມຽມບໍ່ມີໃຫ້ໃນຕອນນີ້. ກະລຸນາລອງໃໝ່ໃນພາຍຫຼັງ.';

  @override
  String get premiumPurchaseFailed =>
      'ບໍ່ສາມາດສຳເລັດການຊື້ໄດ້. ກະລຸນາລອງອີກຄັ້ງ.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'ຖາມ-ຕອບແບບບໍ່ຈຳກັດ AI';

  @override
  String get paywallFeature2Title => 'ອອບໄລນ໌ບໍ່ຈຳກັດ';

  @override
  String get paywallFeature2Desc => 'ດາວໂຫຼດການບັນຍາຍທັງໝົດ';

  @override
  String get paywallFeature3Title => 'ການອອກແບບສະເພາະ';

  @override
  String get paywallFeature3Desc => 'ຮູບແບບສີສັນພຣີມຽມ ແລະຟອນ';

  @override
  String get paywallFeature4Title => 'ບໍ່ມີໂຄສະນາ';

  @override
  String get paywallFeature4Desc => 'ສູນໂຄສະນາ';

  @override
  String get paywallGetAccess => 'ໄດ້ຮັບການເຂົ້າເຖິງຕະຫຼອດຊີວິດ — \$1.00';

  @override
  String get restorePurchases => 'ຟື້ນຟູການຊື້';

  @override
  String get zakatCalculator => 'ເຄື່ອງຄິດເລກ Zakat';

  @override
  String get zakatGold => 'ຄໍາ (Altın)';

  @override
  String get zakatSilver => 'ເງິນ (Gümüş)';

  @override
  String get zakatCashBank => 'ເງິນສົດ / ທະນາຄານ';

  @override
  String get zakatBusiness => 'ທຸລະກິດ';

  @override
  String get zakatInvestments => 'ການລົງທຶນ';

  @override
  String get zakatWeightGrams => 'ນ້ຳໜັກ (g)';

  @override
  String get zakatPricePerGram => 'ລາຄາ/ກ';

  @override
  String get zakatTotalAmount => 'ຈໍານວນທັງຫມົດ';

  @override
  String get zakatInventoryValue => 'ມູນຄ່າສິນຄ້າຄົງຄັງ';

  @override
  String get zakatDebts => 'ໜີ້ສິນ';

  @override
  String get zakatTotal => 'ທັງໝົດ';

  @override
  String get calculateZakat => 'ຄິດໄລ່ Zakat';

  @override
  String get nisabNotReached =>
      'Nisab ບໍ່​ໄດ້​ບັນ​ລຸ​ໄດ້​. Zakat ແມ່ນບໍ່ບັງຄັບ.';

  @override
  String get totalZakat => 'ທັງໝົດ Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • ຊັບສິນ: $assets';
  }

  @override
  String get zakatGoldZakat => 'ຄໍາ Zakat';

  @override
  String get zakatSilverZakat => 'ເງິນ Zakat';

  @override
  String get zakatCashZakat => 'ເງິນສົດ Zakat';

  @override
  String get zakatBusinessZakat => 'ທຸລະກິດ Zakat';

  @override
  String get zakatInvestmentZakat => 'ການລົງທຶນ Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! ຂ້ອຍເປັນຜູ້ຊ່ວຍອິດສະລາມຂອງເຈົ້າ. ຖາມຂ້ອຍກ່ຽວກັບການອະທິຖານ, ການອົດອາຫານ, zakat, ຫຼືຫົວຂໍ້ອິດສະລາມໃດໆ.';

  @override
  String get chatbotLimitReached =>
      'ຮອດຂີດຈຳກັດການສອບຖາມປະຈຳວັນແລ້ວ. ອັບເກຣດເປັນ Premium ແບບບໍ່ຈຳກັດ.';

  @override
  String get chatbotErrorMsg => 'ຂ້ອຍບໍ່ສາມາດສ້າງຄໍາຕອບໄດ້. ກະລຸນາລອງອີກຄັ້ງ.';

  @override
  String get chatbotOfflinePrompt =>
      'ພື້ນຖານຄວາມຮູ້ອິດສະລາມແບບອອບໄລນ໌ທີ່ຢັ້ງຢືນແລ້ວແມ່ນຍັງຖືກຈັດຫາຢູ່. ທ່ານ​ສາ​ມາດ​ເປີດ​ໃຊ້​ງານ offline offline ໃນ​ປັດ​ຈຸ​ບັນ​, ແຕ່​ວ່າ​ມັນ​ຈະ​ສະ​ແດງ​ໃຫ້​ເຫັນ​ພຽງ​ແຕ່​ຂໍ້​ຄວາມ​ປອດ​ໄພ​ຈໍາ​ກັດ​ຈົນ​ກ​່​ວາ​ຊຸດ​ຂໍ້​ມູນ​ທີ່​ມາ​ຈະ​ພ້ອມ​.\n\nທ່ານຕ້ອງການເປີດໃຊ້ທາງເລືອກ offline ບໍ?';

  @override
  String get chatbotOfflineSwitched =>
      'ເປີດໃຊ້ທາງເລືອກ Offline ແລ້ວ. ຄໍາຕອບຂອງຊາວອິດສະລາມທ້ອງຖິ່ນທີ່ຢືນຢັນແລ້ວຍັງບໍ່ພ້ອມເທື່ອ.';

  @override
  String get chatbotOfflineDownloadLabel => 'ເປີດໃຊ້ Offline Fallback';

  @override
  String get downloadPreparing => 'ກຳລັງກະກຽມການດາວໂຫຼດ...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'ກຳລັງດາວໂຫຼດ surah $surah / $total';
  }

  @override
  String get downloadCompleted => 'ດາວໂຫຼດ Surah ທັງໝົດແລ້ວສຳລັບນັກຂຽນນີ້.';

  @override
  String get offlineQuranAudioPacks => 'Offline Quran Audio Packs';

  @override
  String storedOnDeviceMb(String size) {
    return 'ເກັບໄວ້ໃນອຸປະກອນ: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total ດາວໂຫຼດແລ້ວ';
  }

  @override
  String get redownloadMissingRepair => 'ການສ້ອມແປງ / ດາວໂຫລດຫາຍໄປ';

  @override
  String get downloadAction => 'ດາວໂຫຼດ';

  @override
  String get resumeDownload => 'ສືບຕໍ່ການດາວໂຫຼດ';

  @override
  String get deleteDownloadedFiles => 'ລຶບໄຟລ໌ທີ່ດາວໂຫລດມາ';

  @override
  String get downloadCancelling => 'ກຳລັງຍົກເລີກ...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'ຍົກເລີກການດາວໂຫຼດສຳລັບ $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'ດາວໂຫຼດສຳເລັດແລ້ວສຳລັບ $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'ການດາວໂຫຼດສຳເລັດແລ້ວສຳລັບ $reciter ກັບ $failed ລົ້ມເຫລວ Surah ($downloaded/$total ດາວໂຫຼດແລ້ວ).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'ລຶບໄຟລ໌ອອບລາຍສຳລັບ $reciter ແລ້ວ.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'ແຫຼ່ງສຽງ Quran ທີ່ຢັ້ງຢືນແລ້ວແມ່ນບໍ່ສາມາດໃຊ້ໄດ້ໃນຕອນນີ້.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'ຊຸດສຽງ Quran ຢັ້ງຢືນບໍ່ສົມບູນ ($available/$total). ໂຫຼດເມັດຄລາວຄືນໃໝ່ແລ້ວລອງອີກຄັ້ງ.';
  }

  @override
  String get chatbotHint => 'ຖາມຄຳຖາມ...';

  @override
  String get chatbotThinking => 'ຄິດ...';

  @override
  String get sukunMixerSubtitle => 'ທໍາມະຊາດ & Qur\'an Mixer';

  @override
  String get audioPlayFailed => 'ການຫຼິ້ນສຽງລົ້ມເຫລວ';

  @override
  String get sukunNatureLabel => 'ສຸກັນ (ທຳມະຊາດ)';

  @override
  String get sukunRainOfMercy => 'ຝົນແຫ່ງຄວາມເມດຕາ';

  @override
  String get sukunGardenOfPeace => 'ສວນແຫ່ງສັນຕິພາບ';

  @override
  String get sukunMidnightCalm => 'ເວລາທ່ຽງຄືນສະຫງົບ';

  @override
  String get sukunOceanTawheed => 'ມະຫາສະຫມຸດ Tawheed';

  @override
  String get sukunUnavailableTitle => 'Soundscapes ບໍ່ສາມາດໃຊ້ໄດ້';

  @override
  String get sukunUnavailableBody =>
      'ການກໍ່ສ້າງນີ້ບໍ່ໄດ້ລວມເອົາຊັບສິນ Sukun soundscape ທີ່ຕ້ອງການເທື່ອ.';

  @override
  String get prayerCompletion => 'ການອະທິຖານສໍາເລັດ';

  @override
  String get streaks => 'ສາຍ';

  @override
  String get dayStreak => 'ໄລຍະມື້';

  @override
  String get bestStreak => 'ສະຖິຕິທີ່ດີທີ່ສຸດ';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'ໃຊ້ Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'ເປີດໃຊ້ Offline Fallback';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count ຊ້າຍ';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API ບໍ່ໄດ້ຖືກຕັ້ງຄ່າ. ການແນະນຳອິດສະລາມແບບອອບໄລນ໌ທີ່ຢືນຢັນແລ້ວຍັງບໍ່ທັນມີໃຫ້ເທື່ອ.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFLINE] ການຊີ້ນໍາອິດສະລາມທ້ອງຖິ່ນທີ່ຢັ້ງຢືນແລ້ວຍັງບໍ່ທັນມີໃຫ້ເທື່ອ. ສະຫຼັບໄປໃຊ້ Cloud AI ສໍາລັບຄໍາຕອບທີ່ມາຈາກ.';

  @override
  String get mosques => 'ໂບດ';

  @override
  String get halalFood => 'ອາຫານ Halal';

  @override
  String get placesSearchArea => 'ຊອກຫາພື້ນທີ່ນີ້';

  @override
  String get nearbyMosques => 'Mosques ໃກ້ຄຽງ';

  @override
  String get islamicSchools => 'ໂຮງຮຽນອິດສະລາມ';

  @override
  String placesFoundCount(String count) {
    return '$count ພົບ';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance ກິໂລແມັດ';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API ຜິດພາດ: $statusCode';
  }

  @override
  String get placesNetworkError => 'ເຄືອຂ່າຍຜິດພາດ. ກະລຸນາລອງອີກຄັ້ງ.';

  @override
  String get placesLocationRequiredTitle => 'ຕ້ອງການສະຖານທີ່';

  @override
  String get placesLocationRequiredBody =>
      'ກຳນົດສະຖານທີ່ກ່ອນເພື່ອຄົ້ນຫາວັດວາອາຮາມ, ອາຫານຮາລາ ແລະໂຮງຮຽນອິດສະລາມທີ່ຢູ່ໃກ້ຄຽງ.';

  @override
  String get placesMapTilesUnavailableTitle => 'ແຜ່ນແຜນທີ່ບໍ່ສາມາດໃຊ້ໄດ້';

  @override
  String get placesMapTilesUnavailableBody =>
      'ແຫຼ່ງທີ່ມາຂອງກະເບື້ອງແຜນທີ່ທີ່ຢືນຢັນແລ້ວຍັງບໍ່ທັນໄດ້ກຳນົດຄ່າສຳລັບການສ້າງນີ້ເທື່ອ. ສະຖານທີ່ໃກ້ຄຽງຍັງສາມາດໂຫລດຈາກສະຖານທີ່ທີ່ທ່ານບັນທຶກໄວ້.';

  @override
  String get placesDataSourceUnavailableTitle => 'ບໍ່ມີຂໍ້ມູນສະຖານທີ່';

  @override
  String get placesDataSourceUnavailableBody =>
      'ຈຸດສິ້ນສຸດຂໍ້ມູນສະຖານທີ່ທີ່ຢັ້ງຢືນແລ້ວຍັງບໍ່ໄດ້ຖືກຕັ້ງຄ່າສໍາລັບການກໍ່ສ້າງນີ້ເທື່ອ. ຕັ້ງ PLACES_OVERPASS_API_URL ເປັນພຣັອກຊີ ຫຼືຜູ້ໃຫ້ບໍລິການທີ່ໄດ້ຮັບອະນຸມັດກ່ອນທີ່ຈະເປີດໃຊ້ການຄົ້ນຫາທີ່ຢູ່ໃກ້ຄຽງ.';

  @override
  String get unknownPlaceName => 'ຊື່ທີ່ບໍ່ຮູ້ຈັກ';

  @override
  String get islamicPlaceFallback => 'ສະຖານທີ່ອິດສະລາມ';

  @override
  String get asmaMeaning1 => 'ຜູ້ມີຜົນປະໂຫຍດ';

  @override
  String get asmaMeaning2 => 'ຜູ້ມີເມດຕາ';

  @override
  String get asmaMeaning3 => 'ກະສັດ / ພຣະຜູ້ເປັນເຈົ້ານິລັນດອນ';

  @override
  String get asmaMeaning4 => 'ບໍລິສຸດທີ່ສຸດ';

  @override
  String get asmaMeaning5 => 'ທີ່ມາຂອງສັນຕິພາບ';

  @override
  String get asmaMeaning6 => 'ຜູ້ໃຫ້ຄວາມປອດໄພ';

  @override
  String get asmaMeaning7 => 'ຜູ້ປົກຄອງ';

  @override
  String get asmaMeaning8 => 'ມີຄ່າ / ຍິ່ງໃຫຍ່ທີ່ສຸດ';

  @override
  String get asmaMeaning9 => 'ຜູ້ບັງຄັບ';

  @override
  String get asmaMeaning10 => 'ຍິ່ງໃຫຍ່ທີ່ສຸດ';

  @override
  String get asmaMeaning11 => 'ຜູ້ສ້າງ';

  @override
  String get asmaMeaning12 => 'ຜູ້ສ້າງຄຳສັ່ງ';

  @override
  String get asmaMeaning13 => 'ຮູບຮ່າງຂອງຄວາມງາມ';

  @override
  String get asmaMeaning14 => 'ການໃຫ້ອະໄພ';

  @override
  String get asmaMeaning15 => 'The Subduer';

  @override
  String get asmaMeaning16 => 'ຜູ້ໃຫ້ທັງໝົດ';

  @override
  String get asmaMeaning17 => 'ຜູ້ສະໜັບສະໜູນ';

  @override
  String get asmaMeaning18 => 'ຜູ້ເປີດ';

  @override
  String get asmaMeaning19 => 'ຜູ້ຮູ້ຈັກທັງໝົດ';

  @override
  String get asmaMeaning20 => 'ຜູ້ຄວບຄຸມ';

  @override
  String get asmaMeaning21 => 'ຜູ້ບັນເທົາທຸກ';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'ຜູ້ມອບກຽດຕິຍົດ';

  @override
  String get asmaMeaning25 => 'ຜູ້ເຮັດໃຫ້ອັບອາຍ';

  @override
  String get asmaMeaning26 => 'ຜູ້ຟັງທັງໝົດ';

  @override
  String get asmaMeaning27 => 'ຜູ້ເຫັນເຫດການທັງໝົດ';

  @override
  String get asmaMeaning28 => 'ຜູ້ພິພາກສາ';

  @override
  String get asmaMeaning29 => 'ພຽງແຕ່';

  @override
  String get asmaMeaning30 => 'ອັນທີ່ລະອຽດອ່ອນ';

  @override
  String get asmaMeaning31 => 'ການຮັບຮູ້ທັງໝົດ';

  @override
  String get asmaMeaning32 => 'ຄວາມອົດທົນ';

  @override
  String get asmaMeaning33 => 'ທີ່ງົດງາມ';

  @override
  String get asmaMeaning34 => 'ຜູ້ໃຫ້ອະໄພທີ່ຍິ່ງໃຫຍ່';

  @override
  String get asmaMeaning35 => 'ຜູ້ໃຫ້ລາງວັນແຫ່ງຄວາມຂອບໃຈ';

  @override
  String get asmaMeaning36 => 'ສູງທີ່ສຸດ';

  @override
  String get asmaMeaning37 => 'ຍິ່ງໃຫຍ່ທີ່ສຸດ';

  @override
  String get asmaMeaning38 => 'ຜູ້ຮັກສາ';

  @override
  String get asmaMeaning39 => 'ຜູ້ໃຫ້ອາຫານ';

  @override
  String get asmaMeaning40 => 'ຜູ້ຄິດຄົ້ນ';

  @override
  String get asmaMeaning41 => 'ສະຫງ່າລາສີ';

  @override
  String get asmaMeaning42 => 'ໃຈກວ້າງ';

  @override
  String get asmaMeaning43 => 'ຜູ້ເຝົ້າລະວັງ';

  @override
  String get asmaMeaning44 => 'ການຕອບສະໜອງຕໍ່ການອະທິຖານ';

  @override
  String get asmaMeaning45 => 'ການເຂົ້າໃຈທັງໝົດ';

  @override
  String get asmaMeaning46 => 'ສະຫລາດເລີດ';

  @override
  String get asmaMeaning47 => 'ຄົນຮັກ';

  @override
  String get asmaMeaning48 => 'ອັນສະຫງ່າລາສີທີ່ສຸດ';

  @override
  String get asmaMeaning49 => 'ຜູ້ຟື້ນຄືນຊີວິດ';

  @override
  String get asmaMeaning50 => 'ພະຍານ';

  @override
  String get asmaMeaning51 => 'ຄວາມຈິງ';

  @override
  String get asmaMeaning52 => 'ຜູ້ຮັກສາຄວາມພຽງພໍທັງໝົດ';

  @override
  String get asmaMeaning53 => 'ຜູ້ມີຄວາມເຂັ້ມແຂງທັງໝົດ';

  @override
  String get asmaMeaning54 => 'ການບັງຄັບ';

  @override
  String get asmaMeaning55 => 'ຜູ້ປົກປ້ອງ';

  @override
  String get asmaMeaning56 => 'ການຍ້ອງຍໍ';

  @override
  String get asmaMeaning57 => 'ຜູ້ປະເມີນ';

  @override
  String get asmaMeaning58 => 'ຜູ້ໃຫ້ກຳເນີດ';

  @override
  String get asmaMeaning59 => 'ຜູ້ຟື້ນຟູ';

  @override
  String get asmaMeaning60 => 'ຜູ້ໃຫ້ຊີວິດ';

  @override
  String get asmaMeaning61 => 'ຜູ້ຮັບຊີວິດ';

  @override
  String get asmaMeaning62 => 'ການມີຊີວິດຕະຫຼອດໄປ';

  @override
  String get asmaMeaning63 => 'ການລ້ຽງດູຕົນເອງ';

  @override
  String get asmaMeaning64 => 'ຜູ້ຊອກຫາ';

  @override
  String get asmaMeaning65 => 'ສະຫງ່າລາສີ';

  @override
  String get asmaMeaning66 => 'ອັນດຽວ';

  @override
  String get asmaMeaning67 => 'ອັນ';

  @override
  String get asmaMeaning68 => 'ອັນທີ່ທຸກຄົນສະແຫວງຫາ';

  @override
  String get asmaMeaning69 => 'ມີພະລັງ';

  @override
  String get asmaMeaning70 => 'ຜູ້ສ້າງອຳນາດທັງໝົດ';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'ການລ່າຊ້າ';

  @override
  String get asmaMeaning73 => 'ທຳອິດ';

  @override
  String get asmaMeaning74 => 'ສຸດທ້າຍ';

  @override
  String get asmaMeaning75 => 'Manifest';

  @override
  String get asmaMeaning76 => 'ທີ່ເຊື່ອງໄວ້';

  @override
  String get asmaMeaning77 => 'ເຈົ້າແຂວງ';

  @override
  String get asmaMeaning78 => 'ຜູ້ສູງສຸດ';

  @override
  String get asmaMeaning79 => 'ຜູ້ກະທຳຄວາມດີ';

  @override
  String get asmaMeaning80 => 'ຄູ່ມືການກັບໃຈ';

  @override
  String get asmaMeaning81 => 'The Avenger';

  @override
  String get asmaMeaning82 => 'ຜູ້ໃຫ້ອະໄພ';

  @override
  String get asmaMeaning83 => 'The Clement';

  @override
  String get asmaMeaning84 => 'ເຈົ້າຂອງ / ເຈົ້າຂອງທັງໝົດ';

  @override
  String get asmaMeaning85 => 'ຜູ້ຄອບຄອງຂອງພະມະຫາກະສັດ ແລະບຸນຄຸນ';

  @override
  String get asmaMeaning86 => 'ທີ່ສະເໝີພາບ';

  @override
  String get asmaMeaning87 => 'ຜູ້ຮວບຮວມ';

  @override
  String get asmaMeaning88 => 'ຄົນລວຍ';

  @override
  String get asmaMeaning89 => 'The Enricher';

  @override
  String get asmaMeaning90 => 'ການປ້ອງກັນອັນຕະລາຍ';

  @override
  String get asmaMeaning91 => 'ຜູ້ນໍາເອົາອັນຕະລາຍ';

  @override
  String get asmaMeaning92 => 'ຜູ້ມອບສິດທິປະໂຫຍດ';

  @override
  String get asmaMeaning93 => 'ແສງສະຫວ່າງ';

  @override
  String get asmaMeaning94 => 'ຜູ້ແນະນຳ';

  @override
  String get asmaMeaning95 => 'ຜູ້ລິເລີ່ມ';

  @override
  String get asmaMeaning96 => 'ອັນນິລັນດອນ';

  @override
  String get asmaMeaning97 => 'ຜູ້ສືບທອດ';

  @override
  String get asmaMeaning98 => 'ຄູ່ມືທີ່ຖືກຕ້ອງທີ່ສຸດ';

  @override
  String get asmaMeaning99 => 'ຄົນເຈັບຄົນເຈັບ';
}
