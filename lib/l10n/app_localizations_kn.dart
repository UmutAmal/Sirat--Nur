// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kannada (`kn`).
class AppLocalizationsKn extends AppLocalizations {
  AppLocalizationsKn([String locale = 'kn']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'ಇಸ್ಲಾಮಿಕ್ ವೇ ಆಫ್ ಲೈಟ್';

  @override
  String get home => 'Home';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'ಜಿಕ್ರ್';

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
  String get fajr => 'ಫಜ್ರ್';

  @override
  String get sunrise => 'ಸೂರ್ಯೋದಯ';

  @override
  String get dhuhr => 'ಧುಹ್ರ್';

  @override
  String get asr => 'ಅಸರ್';

  @override
  String get maghrib => 'ಮಗ್ರಿಬ್';

  @override
  String get isha => 'ಇಶಾ';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName ಗಾಗಿ ಸಮಯ';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'ಇದು $prayerName ಪ್ರಾರ್ಥನೆ ಮಾಡುವ ಸಮಯ.';
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
  String get locationServiceDisabled => 'ಸ್ಥಳ ಸೇವೆಯನ್ನು ನಿಷ್ಕ್ರಿಯಗೊಳಿಸಲಾಗಿದೆ.';

  @override
  String get locationPermissionDenied => 'ಸ್ಥಳ ಅನುಮತಿಯನ್ನು ನಿರಾಕರಿಸಲಾಗಿದೆ.';

  @override
  String get locationDetectionFailed =>
      'ನಿಮ್ಮ ಸ್ಥಳವನ್ನು ಪತ್ತೆಹಚ್ಚಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ. ದಯವಿಟ್ಟು ನಗರವನ್ನು ಹಸ್ತಚಾಲಿತವಾಗಿ ಆಯ್ಕೆಮಾಡಿ ಅಥವಾ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String citiesCount(String count) {
    return '$count ನಗರಗಳು';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'ಯಾವುದೇ ಫಲಿತಾಂಶಗಳು ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String get loading => 'ಲೋಡ್ ಆಗುತ್ತಿದೆ...';

  @override
  String get error => 'ದೋಷ';

  @override
  String get appErrorOccurred => 'ದೋಷ ಸಂಭವಿಸಿದೆ';

  @override
  String get appUnknownError => 'ಅಜ್ಞಾತ ದೋಷ';

  @override
  String get quranLoadFailed =>
      'ಕುರಾನ್ ವಿಷಯವನ್ನು ಲೋಡ್ ಮಾಡಲಾಗಲಿಲ್ಲ. ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'ರಿಫ್ರೆಶ್ ಮಾಡಿ';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'ಅಳಿಸಿ';

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
    return 'ಅಯಾ $ayah';
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
  String get tafsirLoading => 'ತಫ್ಸಿರ್ ಲೋಡ್ ಆಗುತ್ತಿದೆ...';

  @override
  String get tafsirSourceLabel => 'ತಫ್ಸಿರ್ ಮೂಲ';

  @override
  String get tafsirNoSurahFound => 'ಈ ಸೂರಾಕ್ಕೆ ಯಾವುದೇ ತಫ್ಸಿರ್ ಕಂಡುಬಂದಿಲ್ಲ.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'ಅಯಾಹ್ $ayah ಗಾಗಿ ಯಾವುದೇ ತಫ್ಸಿರ್ ಕಂಡುಬಂದಿಲ್ಲ.';
  }

  @override
  String get tafsirLoadFailed => 'ತಫ್ಸಿರ್ ಅನ್ನು ಲೋಡ್ ಮಾಡಲಾಗಲಿಲ್ಲ.';

  @override
  String get tafsirNoTextForAyah => 'ಈ ಅಯಾಗೆ ತಫ್ಸಿರ್ ಪಠ್ಯವಿಲ್ಲ.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'ತಫ್ಸಿರ್ ಡೌನ್‌ಲೋಡ್ ಮಾಡಲಾಗುತ್ತಿದೆ $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'ತಫ್ಸಿರ್ ಲೋಡ್ ಆಗುತ್ತಿದೆ $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir ಮೂಲವು HTTP $statusCode ದೋಷವನ್ನು ಹಿಂತಿರುಗಿಸಿದೆ.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'ಆಯ್ಕೆಮಾಡಿದ ತಫ್ಸಿರ್ ಮೂಲವು ಯಾವುದೇ ನಮೂದುಗಳನ್ನು ಹಿಂತಿರುಗಿಸಿಲ್ಲ.';

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
      'ಇನ್ನು ಕೆಲವರು, ‘ನಮ್ಮ ಪ್ರಭುವೇ, ನಮಗೆ ಇಹಲೋಕದಲ್ಲಿ ಮತ್ತು ಪರಲೋಕದಲ್ಲಿ ಒಳ್ಳೆಯದನ್ನು ನೀಡು ಮತ್ತು ಬೆಂಕಿಯ ಯಾತನೆಯಿಂದ ನಮ್ಮನ್ನು ರಕ್ಷಿಸು’ ಎಂದು ಪ್ರಾರ್ಥಿಸುತ್ತಾರೆ.';

  @override
  String get duaMeaning2 =>
      'ದೇವರು ಯಾವುದೇ ಆತ್ಮಕ್ಕೆ ಸಹಿಸಲಾಗದಷ್ಟು ಹೊರೆಯಾಗುವುದಿಲ್ಲ: ಪ್ರತಿಯೊಬ್ಬರೂ ತಾನು ಮಾಡಿದ ಒಳ್ಳೆಯದನ್ನು ಗಳಿಸುತ್ತಾರೆ ಮತ್ತು ಅದರ ಕೆಟ್ಟದ್ದನ್ನು ಅನುಭವಿಸುತ್ತಾರೆ - ಕರ್ತನೇ, ನಾವು ಮರೆತರೆ ಅಥವಾ ತಪ್ಪುಗಳನ್ನು ಮಾಡಿದರೆ ನಮ್ಮನ್ನು ತರಾಟೆಗೆ ತೆಗೆದುಕೊಳ್ಳಬೇಡಿ. ಕರ್ತನೇ, ನೀನು ನಮ್ಮ ಹಿಂದಿನವರಿಗೆ ಹೊರೆಯಾಗಿರುವಂತೆ ನಮ್ಮ ಮೇಲೆ ಹೊರೆ ಹಾಕಬೇಡ. ಕರ್ತನೇ, ನಾವು ಸಹಿಸಿಕೊಳ್ಳುವ ಶಕ್ತಿಗಿಂತ ಹೆಚ್ಚಿನ ಹೊರೆಯನ್ನು ನಮಗೆ ನೀಡಬೇಡಿ. ನಮ್ಮನ್ನು ಕ್ಷಮಿಸಿ, ನಮ್ಮನ್ನು ಕ್ಷಮಿಸಿ ಮತ್ತು ನಮ್ಮ ಮೇಲೆ ಕರುಣಿಸು. ನೀನೇ ನಮ್ಮ ರಕ್ಷಕ, ಆದ್ದರಿಂದ ನಂಬಿಕೆ ದ್ರೋಹಿಗಳ ವಿರುದ್ಧ ನಮಗೆ ಸಹಾಯ ಮಾಡಿ.';

  @override
  String get duaMeaning3 =>
      '‘ನಮ್ಮ ಪ್ರಭುವೇ, ನೀನು ನಮಗೆ ಮಾರ್ಗದರ್ಶನ ನೀಡಿದ ನಂತರ ನಮ್ಮ ಹೃದಯಗಳನ್ನು ವಿಚಲಿತಗೊಳಿಸಬೇಡ. ನಿಮ್ಮ ಕರುಣೆಯನ್ನು ನಮಗೆ ನೀಡಿ: ನೀವು ಯಾವಾಗಲೂ ಕೊಡುವವರಾಗಿದ್ದೀರಿ.';

  @override
  String get duaMeaning4 =>
      'ಕರ್ತನೇ, ನಾನು ಮತ್ತು ನನ್ನ ಸಂತತಿಯು ಪ್ರಾರ್ಥನೆಯನ್ನು ಮುಂದುವರಿಸಲು ಅನುಗ್ರಹಿಸು. ನಮ್ಮ ಕರ್ತನೇ, ನನ್ನ ಕೋರಿಕೆಯನ್ನು ಸ್ವೀಕರಿಸು.';

  @override
  String get duaMeaning5 =>
      'ಮತ್ತು ದಯೆಯಿಂದ ಅವರ ಕಡೆಗೆ ವಿನಯದಿಂದ ನಿಮ್ಮ ರೆಕ್ಕೆಯನ್ನು ತಗ್ಗಿಸಿ ಮತ್ತು \'ಕರ್ತನೇ, ನಾನು ಚಿಕ್ಕವನಿದ್ದಾಗ ಅವರು ನನ್ನನ್ನು ನೋಡಿಕೊಂಡಂತೆ ಅವರ ಮೇಲೆ ಕರುಣಿಸು\' ಎಂದು ಹೇಳಿ.';

  @override
  String get duaMeaning6 =>
      'ಉದಾತ್ತನಾದ ದೇವರು, ನಿಜವಾಗಿಯೂ ನಿಯಂತ್ರಣದಲ್ಲಿರುವವನು. [ಪ್ರವಾದಿ], ಬಹಿರಂಗ ಪೂರ್ಣಗೊಳ್ಳುವ ಮೊದಲು ಪಠಿಸಲು ಆತುರಪಡಬೇಡಿ, ಆದರೆ ‘ಕರ್ತನೇ, ನನಗೆ ಜ್ಞಾನವನ್ನು ಹೆಚ್ಚಿಸು!’ ಎಂದು ಹೇಳಿ.';

  @override
  String get duaMeaning7 =>
      '[ಪ್ರವಾದಿ] ಹೇಳಿ, ‘ಕರ್ತನೇ, ಕ್ಷಮಿಸು ಮತ್ತು ಕರುಣಿಸು: ನೀನು ಎಲ್ಲರಿಗಿಂತ ಹೆಚ್ಚು ಕರುಣಾಮಯಿ.';

  @override
  String get duaMeaning8 =>
      'ಪ್ರಾರ್ಥಿಸುವವರು, \'ನಮ್ಮ ಪ್ರಭುವೇ, ನಮ್ಮ ಸಂಗಾತಿಗಳು ಮತ್ತು ಸಂತತಿಯಲ್ಲಿ ನಮಗೆ ಸಂತೋಷವನ್ನು ನೀಡು. ನಿಮ್ಮ ಬಗ್ಗೆ ತಿಳಿದಿರುವವರಿಗೆ ನಮಗೆ ಉತ್ತಮ ಉದಾಹರಣೆಗಳನ್ನು ನೀಡಿ.';

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
  String get hadith => 'ಹದೀಸ್';

  @override
  String get hadithCollection => 'ಹದೀಸ್ ಸಂಗ್ರಹ';

  @override
  String get hadithBooks => 'ಹದೀಸ್ ಪುಸ್ತಕಗಳು';

  @override
  String get searchHadith => 'ಹದೀಸ್ ಹುಡುಕಿ';

  @override
  String get asmaulHusna => 'ಅಸ್ಮಾ-ಉಲ್-ಹುಸ್ನಾ';

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
  String get openInYoutube => 'YouTube ನಲ್ಲಿ ತೆರೆಯಿರಿ';

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
    return '${hours}h $minutesನಿ';
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
  String get islamicNewYear => 'ಇಸ್ಲಾಮಿಕ್ ಹೊಸ ವರ್ಷ';

  @override
  String get mawlidAnNabi => 'ಮೌಲಿದ್ ಅನ್-ನಬಿ';

  @override
  String get specialDayDateRamadanStart => '1 ರಂಜಾನ್';

  @override
  String get specialDayDateLaylatAlQadr => '27 ರಂಜಾನ್';

  @override
  String get specialDayDateEidAlFitr => '1 ಶವ್ವಾಲ್';

  @override
  String get specialDayDateEidAlAdha => '10 ದುಲ್ ಹಿಜ್ಜಾ';

  @override
  String get specialDayDateIslamicNewYear => '1 ಮೊಹರಂ';

  @override
  String get specialDayDateMawlidAnNabi => '12 ರಬಿ ಅಲ್-ಅವ್ವಲ್';

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
    return 'ದಿಕ್ಸೂಚಿ ದೋಷ: $error';
  }

  @override
  String get qiblaSensorUnavailable => 'ಈ ಸಾಧನದಲ್ಲಿ ದಿಕ್ಸೂಚಿ ಸಂವೇದಕ ಲಭ್ಯವಿಲ್ಲ.';

  @override
  String get qiblaLocationRequiredTitle => 'ಕಿಬ್ಲಾಗೆ ಅಗತ್ಯವಿರುವ ಸ್ಥಳ';

  @override
  String get qiblaLocationRequiredBody =>
      'ಕಿಬ್ಲಾ ದಿಕ್ಸೂಚಿಯನ್ನು ಬಳಸುವ ಮೊದಲು ನಿಮ್ಮ ನಿಜವಾದ ಸ್ಥಳವನ್ನು ಹೊಂದಿಸಿ ಇದರಿಂದ ದಿಕ್ಕನ್ನು ನಿಖರವಾಗಿ ಲೆಕ್ಕಹಾಕಬಹುದು.';

  @override
  String get adhanNotificationChannelName => 'ಅಧಾನ್ ಅಧಿಸೂಚನೆಗಳು';

  @override
  String get adhanNotificationChannelDescription =>
      'ಅಧಾನ್ ಧ್ವನಿಯೊಂದಿಗೆ ಪ್ರಾರ್ಥನೆ ಸಮಯದ ಎಚ್ಚರಿಕೆಗಳು.';

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
    return '$appName ಪರಿಶೀಲಿಸಿ: ಅಂತಿಮ ಇಸ್ಲಾಮಿಕ್ ಜೀವನಶೈಲಿ ಅಪ್ಲಿಕೇಶನ್! $url';
  }

  @override
  String get downloadManager => 'ಡೌನ್‌ಲೋಡ್ ಮ್ಯಾನೇಜರ್';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'ಡೌನ್‌ಲೋಡ್ ಪೂರ್ಣಗೊಂಡಿದೆ';

  @override
  String get downloadFailed => 'ಡೌನ್‌ಲೋಡ್ ವಿಫಲವಾಗಿದೆ';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'ಇಂಟರ್ನೆಟ್ ಸಂಪರ್ಕವಿಲ್ಲ';

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
  String get tapToCount => 'ಎಣಿಸಲು ಟ್ಯಾಪ್ ಮಾಡಿ';

  @override
  String get zikrCompletedMashAllah => 'ಪೂರ್ಣಗೊಂಡಿದೆ! ಮಾಶಾ ಅಲ್ಲಾ';

  @override
  String get zikrMeaningSubhanAllah =>
      'ಅಲ್ಲಾಹನು ಎಲ್ಲಾ ಅಪರಿಪೂರ್ಣತೆಗಳಿಗಿಂತಲೂ ಹೆಚ್ಚಿನವನಾಗಿದ್ದಾನೆ.';

  @override
  String get zikrMeaningAlhamdulillah => 'ಎಲ್ಲ ಹೊಗಳಿಕೆಯೂ ಅಲ್ಲಾಹನಿಗೆ.';

  @override
  String get zikrMeaningAllahuAkbar => 'ಅಲ್ಲಾಹನೇ ಶ್ರೇಷ್ಠ.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'ಅಲ್ಲಾ ಹೊರತು ಬೇರೆ ದೇವರಿಲ್ಲ.';

  @override
  String get zikrMeaningAstaghfirullah => 'ನಾನು ಅಲ್ಲಾಹನ ಕ್ಷಮೆಯನ್ನು ಬೇಡುತ್ತೇನೆ.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'ಅಲ್ಲಾನ ಮೂಲಕ ಹೊರತುಪಡಿಸಿ ಯಾವುದೇ ಶಕ್ತಿ ಮತ್ತು ಶಕ್ತಿ ಇಲ್ಲ.';

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
  String get offlineDownloadManager => 'ಆಫ್‌ಲೈನ್ ಡೌನ್‌ಲೋಡ್ ಮ್ಯಾನೇಜರ್';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'ಆಂತರಿಕ ಸಾಧನ ಸಂಗ್ರಹಣೆಯನ್ನು ಮುಕ್ತಗೊಳಿಸಿ.';

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
  String get audioVoice => 'ಆಡಿಯೋ ವಾಯ್ಸ್';

  @override
  String get audioVoiceMisharyAlafasy => 'ಪುರುಷ (ಮಿಶರಿ ಅಲಾಫಾಸಿ)';

  @override
  String get audioVoiceAbdulBaset => 'ಪುರುಷ (ಅಬ್ದುಲ್‌ಬಾಸೆಟ್)';

  @override
  String get audioVoiceSudais => 'ಪುರುಷ (ಸುಡೈಸ್)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'ಕಿಬ್ಲಾ ಮಾಪನಾಂಕ ನಿರ್ಣಯ';

  @override
  String get compassSmoothing => 'ಕಂಪಾಸ್ ನಯಗೊಳಿಸುವಿಕೆ';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'ಮಾಪನಾಂಕ ನಿರ್ಣಯ ಆಫ್ಸೆಟ್';

  @override
  String currentOffset(Object offset) {
    return 'ಪ್ರಸ್ತುತ: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'ನಿಮ್ಮ ದಿಕ್ಸೂಚಿಗೆ ಹಸ್ತಚಾಲಿತ ತಿದ್ದುಪಡಿ ಅಗತ್ಯವಿದ್ದರೆ ಹೊಂದಿಸಿ. ಧನಾತ್ಮಕ ಮೌಲ್ಯಗಳು ಪ್ರದಕ್ಷಿಣಾಕಾರವಾಗಿ ತಿರುಗುತ್ತವೆ.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'ರೋಗನಿರ್ಣಯ';

  @override
  String get diagnosticsNotSet => 'ಹೊಂದಿಸಿಲ್ಲ';

  @override
  String get diagnosticsPrayerProfile => 'ಪ್ರಾರ್ಥನೆಯ ವಿವರ';

  @override
  String get diagnosticsPrayerSource => 'ಪ್ರಾರ್ಥನಾ ಪ್ರಾಧಿಕಾರ';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'ಕಸ್ಟಮ್ / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'ಹಸ್ತಚಾಲಿತ ಕಸ್ಟಮ್ ಕೋನಗಳು (ಯಾವುದೇ ಸಾಂಸ್ಥಿಕ ಮೂಲವಿಲ್ಲ)';

  @override
  String get diagnosticsCloudDriven => 'ಮೇಘ ಚಾಲಿತ';

  @override
  String get diagnosticsAdhanAudioAssets => 'ಅಧಾನ್ ಆಡಿಯೋ ಸ್ವತ್ತುಗಳು';

  @override
  String get diagnosticsUiAudioAssets => 'UI ಆಡಿಯೋ ಸ್ವತ್ತುಗಳು';

  @override
  String get diagnosticsQuranAudioAssets => 'ಕುರಾನ್ ಆಡಿಯೋ ಸ್ವತ್ತುಗಳು';

  @override
  String get diagnosticsAudioAssets => 'ಆಡಿಯೋ ಸ್ವತ್ತುಗಳು';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count ಫೈಲ್‌ಗಳು';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'ಮ್ಯಾನಿಫೆಸ್ಟ್ ಓದುವಿಕೆ ವಿಫಲವಾಗಿದೆ: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'ಸ್ಥಳೀಕರಣ ಸ್ಥಳಗಳು';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count ಬೆಂಬಲಿತವಾಗಿದೆ';
  }

  @override
  String get diagnosticsQuranDataset => 'ಖುರಾನ್ ಡೇಟಾಸೆಟ್';

  @override
  String get diagnosticsQuranSurahs => 'ಖುರಾನ್ ಸೂರಾಗಳು';

  @override
  String get diagnosticsQuranAyahs => 'ಕುರಾನ್ ಅಯಾಗಳು';

  @override
  String get diagnosticsQuranJuzMetadata => 'ಖುರಾನ್ ಜುಜ್ ಮೆಟಾಡೇಟಾ';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'ಸುಪಾಬೇಸ್‌ನಲ್ಲಿ ಮೇಘ ಕೋಷ್ಟಕಗಳು ಕಾಣೆಯಾಗಿವೆ; ಕಟ್ಟುಗಳ ಫಾಲ್ಬ್ಯಾಕ್ ಸಕ್ರಿಯವಾಗಿದೆ';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'ಮೇಘ ಪರಿಶೀಲನೆ ವಿಫಲವಾಗಿದೆ: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'ಕ್ಲೌಡ್ ಜುಜ್ ಮೆಟಾಡೇಟಾ ಕಾಣೆಯಾಗಿದೆ; ಬಂಡಲ್ಡ್ ಸ್ಟ್ರಕ್ಚರಲ್ ಫಾಲ್ಬ್ಯಾಕ್ ಸಕ್ರಿಯವಾಗಿದೆ';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'ಮೇಘ ರಚನಾತ್ಮಕ ಪರಿಶೀಲನೆ ವಿಫಲವಾಗಿದೆ: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'ಮಾಪನಾಂಕ ನಿರ್ಣಯದ ಅಗತ್ಯವಿದೆ. ಚಿತ್ರ-8 ರಲ್ಲಿ ಸಾಧನವನ್ನು ತಿರುಗಿಸಿ.';

  @override
  String get dailyVerse => 'ದೈನಂದಿನ ಪದ್ಯ';

  @override
  String get todaysIbadah => 'ಇಂದಿನ ಇಬಾದಾ';

  @override
  String get quickAccess => 'ತ್ವರಿತ ಪ್ರವೇಶ';

  @override
  String get assistant => 'ಸಹಾಯಕ';

  @override
  String get places => 'ಸ್ಥಳಗಳು';

  @override
  String get library => 'ಗ್ರಂಥಾಲಯ';

  @override
  String get analytics => 'ಅನಾಲಿಟಿಕ್ಸ್';

  @override
  String get dailyDuas => 'ದೈನಂದಿನ ದುವಾಸ್';

  @override
  String essentialDuas(String count) {
    return '$count ಅಗತ್ಯ ದುವಾಸ್';
  }

  @override
  String get duaUnavailableTitle => 'ಪರಿಶೀಲಿಸಿದ ದುವಾಗಳು ಇನ್ನೂ ಲಭ್ಯವಿಲ್ಲ';

  @override
  String get duaUnavailableBody =>
      'ಪರಿಶೀಲಿಸಲಾದ ದೈನಂದಿನ ದುವಾಗಳನ್ನು ಈ ಸಾಧನಕ್ಕೆ ಇನ್ನೂ ಸಿಂಕ್ ಮಾಡಲಾಗಿಲ್ಲ. ಪರಿಶೀಲಿಸದ ಫಾಲ್‌ಬ್ಯಾಕ್ ಬದಲಿಗೆ ಮೂಲದ ದುವಾಗಳನ್ನು ಲೋಡ್ ಮಾಡಲು ಕ್ಲೌಡ್ ಮೂಲಕ್ಕೆ ಸಂಪರ್ಕಿಸಿ.';

  @override
  String get duaCategoryQuranic => 'ಕುರಾನ್ ದುವಾ';

  @override
  String get duaCategoryMorningEvening => 'ಬೆಳಿಗ್ಗೆ ಮತ್ತು ಸಂಜೆ';

  @override
  String get duaCategoryTasbih => 'ತಸ್ಬಿಹ್';

  @override
  String get duaCategoryProtection => 'ರಕ್ಷಣೆ';

  @override
  String get duaCategoryBeginning => 'ಆರಂಭಗಳು';

  @override
  String get duaCategorySleep => 'ನಿದ್ರೆ';

  @override
  String get duaCategoryFoodDrink => 'ಆಹಾರ ಮತ್ತು ಪಾನೀಯ';

  @override
  String get duaCategoryForgiveness => 'ಕ್ಷಮೆ';

  @override
  String get duaCategoryHome => 'ಮನೆ';

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
  String get islamicEducation => 'ಇಸ್ಲಾಮಿಕ್ ಶಿಕ್ಷಣ';

  @override
  String get sukunAudioTitle => 'ಸುಕುನ್ ಸೌಂಡ್ಸ್ಕೇಪ್ಸ್';

  @override
  String get hadithCollections => 'ಹದೀಸ್ ಸಂಗ್ರಹಗಳು';

  @override
  String get hadithSourcePending => 'ಪರಿಶೀಲಿಸಲಾದ ಮೂಲ ಬಾಕಿ ಉಳಿದಿದೆ';

  @override
  String get hadithUnavailableTitle =>
      'ಪರಿಶೀಲಿಸಿದ ಹದೀಸ್ ಸಂಗ್ರಹಗಳು ಇನ್ನೂ ಲಭ್ಯವಿಲ್ಲ';

  @override
  String get hadithUnavailableBody =>
      'ಈ ನಿರ್ಮಾಣವು ಇನ್ನೂ ಪರಿಶೀಲಿಸದ ಬಾಹ್ಯ ಹದೀಸ್ ಫೀಡ್ ಅನ್ನು ಅವಲಂಬಿಸಿರುತ್ತದೆ. ಮೂಲ ಡೇಟಾಸೆಟ್ ಸಿಂಕ್ ಆಗುವವರೆಗೆ ಹದೀಸ್ ಬ್ರೌಸಿಂಗ್ ನಿಷ್ಕ್ರಿಯವಾಗಿರುತ್ತದೆ.';

  @override
  String get paywallUnlockAll =>
      'ನಿಮ್ಮ ಆಧ್ಯಾತ್ಮಿಕ ಪ್ರಯಾಣಕ್ಕಾಗಿ ಎಲ್ಲಾ ವೈಶಿಷ್ಟ್ಯಗಳನ್ನು ಅನ್ಲಾಕ್ ಮಾಡಿ';

  @override
  String get premiumProductUnavailable =>
      'ಪ್ರೀಮಿಯಂ ಉತ್ಪನ್ನವು ಇದೀಗ ಲಭ್ಯವಿಲ್ಲ. ದಯವಿಟ್ಟು ನಂತರ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get premiumPurchaseFailed =>
      'ಖರೀದಿಯನ್ನು ಪೂರ್ಣಗೊಳಿಸಲಾಗಲಿಲ್ಲ. ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get paywallFeature1Title => 'ನರ ಸಹಾಯಕ ಪ್ಲಸ್';

  @override
  String get paywallFeature1Desc => 'ಅನಿಯಮಿತ AI-ಚಾಲಿತ ಪ್ರಶ್ನೋತ್ತರ';

  @override
  String get paywallFeature2Title => 'ಅನಿಯಮಿತ ಆಫ್‌ಲೈನ್';

  @override
  String get paywallFeature2Desc => 'ಎಲ್ಲಾ ಪಠಣಗಳನ್ನು ಡೌನ್‌ಲೋಡ್ ಮಾಡಿ';

  @override
  String get paywallFeature3Title => 'ವಿಶೇಷ ವಿನ್ಯಾಸಗಳು';

  @override
  String get paywallFeature3Desc => 'ಪ್ರೀಮಿಯಂ ಥೀಮ್‌ಗಳು ಮತ್ತು ಫಾಂಟ್‌ಗಳು';

  @override
  String get paywallFeature4Title => 'ಜಾಹೀರಾತು-ಮುಕ್ತ';

  @override
  String get paywallFeature4Desc => 'ಶೂನ್ಯ ಜಾಹೀರಾತುಗಳು';

  @override
  String get paywallGetAccess => 'ಜೀವಮಾನದ ಪ್ರವೇಶವನ್ನು ಪಡೆಯಿರಿ - \$1.00';

  @override
  String get restorePurchases => 'ಖರೀದಿಗಳನ್ನು ಮರುಸ್ಥಾಪಿಸಿ';

  @override
  String get zakatCalculator => 'ಝಕಾತ್ ಕ್ಯಾಲ್ಕುಲೇಟರ್';

  @override
  String get zakatGold => 'ಚಿನ್ನ (ಆಲ್ಟಿನ್)';

  @override
  String get zakatSilver => 'ಬೆಳ್ಳಿ (Gümüş)';

  @override
  String get zakatCashBank => 'ನಗದು / ಬ್ಯಾಂಕ್';

  @override
  String get zakatBusiness => 'ವ್ಯಾಪಾರ';

  @override
  String get zakatInvestments => 'ಹೂಡಿಕೆಗಳು';

  @override
  String get zakatWeightGrams => 'ತೂಕ (ಗ್ರಾಂ)';

  @override
  String get zakatPricePerGram => 'ಬೆಲೆ/ಗ್ರಾಂ';

  @override
  String get zakatTotalAmount => 'ಒಟ್ಟು ಮೊತ್ತ';

  @override
  String get zakatInventoryValue => 'ದಾಸ್ತಾನು ಮೌಲ್ಯ';

  @override
  String get zakatDebts => 'ಸಾಲಗಳು';

  @override
  String get zakatTotal => 'ಒಟ್ಟು';

  @override
  String get calculateZakat => 'ಝಕಾತ್ ಅನ್ನು ಲೆಕ್ಕ ಹಾಕಿ';

  @override
  String get nisabNotReached => 'ನಿಸಾಬ್ ತಲುಪಲಿಲ್ಲ. ಝಕಾತ್ ಕಡ್ಡಾಯವಲ್ಲ.';

  @override
  String get totalZakat => 'ಒಟ್ಟು ಝಕಾತ್';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'ನಿಸಾಬ್: $nisab • ಸ್ವತ್ತುಗಳು: $assets';
  }

  @override
  String get zakatGoldZakat => 'ಚಿನ್ನದ ಜಕಾತ್';

  @override
  String get zakatSilverZakat => 'ಬೆಳ್ಳಿ ಝಕಾತ್';

  @override
  String get zakatCashZakat => 'ನಗದು ಝಕಾತ್';

  @override
  String get zakatBusinessZakat => 'ವ್ಯಾಪಾರ ಝಕಾತ್';

  @override
  String get zakatInvestmentZakat => 'ಹೂಡಿಕೆ ಝಕಾತ್';

  @override
  String get chatbotGreeting =>
      'ಅಸ್ಸಲಾಮು ಅಲೈಕುಮ್! ನಾನು ನಿಮ್ಮ ಇಸ್ಲಾಮಿಕ್ ಸಹಾಯಕ. ಪ್ರಾರ್ಥನೆ, ಉಪವಾಸ, ಝಕಾತ್ ಅಥವಾ ಯಾವುದೇ ಇಸ್ಲಾಮಿಕ್ ವಿಷಯದ ಬಗ್ಗೆ ನನ್ನನ್ನು ಕೇಳಿ.';

  @override
  String get chatbotLimitReached =>
      'ದೈನಂದಿನ ಪ್ರಶ್ನೆಯ ಮಿತಿಯನ್ನು ತಲುಪಿದೆ. ಅನಿಯಮಿತವಾಗಿ Premium ಗೆ ಅಪ್‌ಗ್ರೇಡ್ ಮಾಡಿ.';

  @override
  String get chatbotErrorMsg =>
      'ನನಗೆ ಪ್ರತಿಕ್ರಿಯೆ ರಚಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ. ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get chatbotOfflinePrompt =>
      'ಪರಿಶೀಲಿಸಿದ ಆಫ್‌ಲೈನ್ ಇಸ್ಲಾಮಿಕ್ ಜ್ಞಾನ ಮೂಲವನ್ನು ಇನ್ನೂ ಕ್ಯುರೇಟ್ ಮಾಡಲಾಗುತ್ತಿದೆ. ನೀವು ಇದೀಗ ಆಫ್‌ಲೈನ್ ಫಾಲ್‌ಬ್ಯಾಕ್ ಅನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಬಹುದು, ಆದರೆ ಮೂಲದ ಡೇಟಾಸೆಟ್ ಸಿದ್ಧವಾಗುವವರೆಗೆ ಇದು ಸೀಮಿತ ಸುರಕ್ಷಿತ ಸಂದೇಶಗಳನ್ನು ಮಾತ್ರ ತೋರಿಸುತ್ತದೆ.\n\nನೀವು ಆಫ್‌ಲೈನ್ ಫಾಲ್‌ಬ್ಯಾಕ್ ಅನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಲು ಬಯಸುವಿರಾ?';

  @override
  String get chatbotOfflineSwitched =>
      'ಆಫ್‌ಲೈನ್ ಫಾಲ್‌ಬ್ಯಾಕ್ ಸಕ್ರಿಯಗೊಳಿಸಲಾಗಿದೆ. ಪರಿಶೀಲಿಸಿದ ಸ್ಥಳೀಯ ಇಸ್ಲಾಮಿಕ್ ಉತ್ತರಗಳು ಇನ್ನೂ ಸಿದ್ಧವಾಗಿಲ್ಲ.';

  @override
  String get chatbotOfflineDownloadLabel =>
      'ಆಫ್‌ಲೈನ್ ಫಾಲ್‌ಬ್ಯಾಕ್ ಅನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String get downloadPreparing => 'ಡೌನ್‌ಲೋಡ್ ಅನ್ನು ಸಿದ್ಧಪಡಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'ಸೂರಾವನ್ನು ಡೌನ್‌ಲೋಡ್ ಮಾಡಲಾಗುತ್ತಿದೆ $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'ಈ ವಾಚನಕಾರರಿಗಾಗಿ ಎಲ್ಲಾ ಸೂರಾಗಳನ್ನು ಈಗಾಗಲೇ ಡೌನ್‌ಲೋಡ್ ಮಾಡಲಾಗಿದೆ.';

  @override
  String get offlineQuranAudioPacks => 'ಆಫ್‌ಲೈನ್ ಕುರಾನ್ ಆಡಿಯೋ ಪ್ಯಾಕ್‌ಗಳು';

  @override
  String storedOnDeviceMb(String size) {
    return 'ಸಾಧನದಲ್ಲಿ ಸಂಗ್ರಹಿಸಲಾಗಿದೆ: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total ಸೂರಾಗಳನ್ನು ಡೌನ್‌ಲೋಡ್ ಮಾಡಲಾಗಿದೆ';
  }

  @override
  String get redownloadMissingRepair => 'ದುರಸ್ತಿ / ಡೌನ್‌ಲೋಡ್ ಕಾಣೆಯಾಗಿದೆ';

  @override
  String get downloadAction => 'ಡೌನ್‌ಲೋಡ್ ಮಾಡಿ';

  @override
  String get resumeDownload => 'ಡೌನ್‌ಲೋಡ್ ಅನ್ನು ಪುನರಾರಂಭಿಸಿ';

  @override
  String get deleteDownloadedFiles => 'ಡೌನ್‌ಲೋಡ್ ಮಾಡಿದ ಫೈಲ್‌ಗಳನ್ನು ಅಳಿಸಿ';

  @override
  String get downloadCancelling => 'ರದ್ದುಗೊಳಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return '$reciter ಗಾಗಿ ಡೌನ್‌ಲೋಡ್ ರದ್ದುಗೊಳಿಸಲಾಗಿದೆ.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return '$reciter ಗಾಗಿ ಡೌನ್‌ಲೋಡ್ ಪೂರ್ಣಗೊಂಡಿದೆ.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return '$reciter ಗಾಗಿ $failed ವಿಫಲವಾದ ಸೂರಾಗಳೊಂದಿಗೆ ಡೌನ್‌ಲೋಡ್ ಪೂರ್ಣಗೊಂಡಿದೆ ($downloaded/$total ಡೌನ್‌ಲೋಡ್ ಮಾಡಲಾಗಿದೆ).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return '$reciter ಗಾಗಿ ಆಫ್‌ಲೈನ್ ಫೈಲ್‌ಗಳನ್ನು ಅಳಿಸಲಾಗಿದೆ.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'ಪರಿಶೀಲಿಸಿದ ಖುರಾನ್ ಆಡಿಯೊ ಮೂಲಗಳು ಇದೀಗ ಲಭ್ಯವಿಲ್ಲ.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'ಪರಿಶೀಲಿಸಿದ ಕುರಾನ್ ಆಡಿಯೊ ಪ್ಯಾಕ್ ಅಪೂರ್ಣವಾಗಿದೆ ($available/$total). ಕ್ಲೌಡ್ ಸೀಡ್ ಅನ್ನು ರಿಫ್ರೆಶ್ ಮಾಡಿ ಮತ್ತು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';
  }

  @override
  String get chatbotHint => 'ಪ್ರಶ್ನೆ ಕೇಳಿ...';

  @override
  String get chatbotThinking => 'ಯೋಚಿಸುತ್ತಿದೆ...';

  @override
  String get sukunMixerSubtitle => 'ಪ್ರಕೃತಿ ಮತ್ತು ಕುರಾನ್ ಮಿಕ್ಸರ್';

  @override
  String get audioPlayFailed => 'ಆಡಿಯೋ ಪ್ಲೇಬ್ಯಾಕ್ ವಿಫಲವಾಗಿದೆ';

  @override
  String get sukunNatureLabel => 'ಸುಕುನ್ (ಪ್ರಕೃತಿ)';

  @override
  String get sukunRainOfMercy => 'ಕರುಣೆಯ ಮಳೆ';

  @override
  String get sukunGardenOfPeace => 'ಶಾಂತಿಯ ಉದ್ಯಾನ';

  @override
  String get sukunMidnightCalm => 'ಮಧ್ಯರಾತ್ರಿ ಶಾಂತ';

  @override
  String get sukunOceanTawheed => 'ಸಾಗರ ತೌಹೀದ್';

  @override
  String get sukunUnavailableTitle => 'ಸೌಂಡ್‌ಸ್ಕೇಪ್‌ಗಳು ಲಭ್ಯವಿಲ್ಲ';

  @override
  String get sukunUnavailableBody =>
      'ಈ ಬಿಲ್ಡ್ ಇನ್ನೂ ಅಗತ್ಯವಿರುವ ಸುಕುನ್ ಸೌಂಡ್‌ಸ್ಕೇಪ್ ಸ್ವತ್ತುಗಳನ್ನು ಒಳಗೊಂಡಿಲ್ಲ.';

  @override
  String get prayerCompletion => 'ಪ್ರಾರ್ಥನೆ ಮುಕ್ತಾಯ';

  @override
  String get streaks => 'ಗೆರೆಗಳು';

  @override
  String get dayStreak => 'ದಿನದ ಗೆರೆ';

  @override
  String get bestStreak => 'ಅತ್ಯುತ್ತಮ ಸ್ಟ್ರೀಕ್';

  @override
  String get chatbotCloudAiLabel => 'ಕ್ಲೌಡ್ AI';

  @override
  String get chatbotLocalAiLabel => 'ಆಫ್‌ಲೈನ್ ಫಾಲ್‌ಬ್ಯಾಕ್';

  @override
  String get chatbotUseCloudAi => 'ಕ್ಲೌಡ್ AI (Gemini) ಬಳಸಿ';

  @override
  String get chatbotDownloadLocalAi =>
      'ಆಫ್‌ಲೈನ್ ಫಾಲ್‌ಬ್ಯಾಕ್ ಅನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count ಉಳಿದಿದೆ';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'ಕ್ಲೌಡ್ API ಅನ್ನು ಕಾನ್ಫಿಗರ್ ಮಾಡಲಾಗಿಲ್ಲ. ಪರಿಶೀಲಿಸಿದ ಆಫ್‌ಲೈನ್ ಇಸ್ಲಾಮಿಕ್ ಮಾರ್ಗದರ್ಶನ ಇನ್ನೂ ಲಭ್ಯವಿಲ್ಲ.';

  @override
  String get chatbotLocalNoInfo =>
      '[ಆಫ್‌ಲೈನ್] ಪರಿಶೀಲಿಸಿದ ಸ್ಥಳೀಯ ಇಸ್ಲಾಮಿಕ್ ಮಾರ್ಗದರ್ಶನ ಇನ್ನೂ ಲಭ್ಯವಿಲ್ಲ. ಮೂಲದ ಉತ್ತರಗಳಿಗಾಗಿ ಕ್ಲೌಡ್ AI ಗೆ ಬದಲಿಸಿ.';

  @override
  String get mosques => 'ಮಸೀದಿಗಳು';

  @override
  String get halalFood => 'ಹಲಾಲ್ ಆಹಾರ';

  @override
  String get placesSearchArea => 'ಈ ಪ್ರದೇಶವನ್ನು ಹುಡುಕಿ';

  @override
  String get nearbyMosques => 'ಹತ್ತಿರದ ಮಸೀದಿಗಳು';

  @override
  String get islamicSchools => 'ಇಸ್ಲಾಮಿಕ್ ಶಾಲೆಗಳು';

  @override
  String placesFoundCount(String count) {
    return '$count ಕಂಡುಬಂದಿದೆ';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance ಕಿಮೀ ದೂರ';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API ದೋಷ: $statusCode';
  }

  @override
  String get placesNetworkError => 'ನೆಟ್‌ವರ್ಕ್ ದೋಷ. ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get placesLocationRequiredTitle => 'ಸ್ಥಳದ ಅಗತ್ಯವಿದೆ';

  @override
  String get placesLocationRequiredBody =>
      'ಮೊದಲು ಸ್ಥಳವನ್ನು ಹೊಂದಿಸಿ ಇದರಿಂದ ಹತ್ತಿರದ ಮಸೀದಿಗಳು, ಹಲಾಲ್ ಆಹಾರ ಮತ್ತು ಇಸ್ಲಾಮಿಕ್ ಶಾಲೆಗಳನ್ನು ನಿಖರವಾಗಿ ಹುಡುಕಬಹುದು.';

  @override
  String get placesMapTilesUnavailableTitle => 'ನಕ್ಷೆಯ ಅಂಚುಗಳು ಲಭ್ಯವಿಲ್ಲ';

  @override
  String get placesMapTilesUnavailableBody =>
      'ಈ ನಿರ್ಮಾಣಕ್ಕಾಗಿ ಪರಿಶೀಲಿಸಿದ ನಕ್ಷೆಯ ಟೈಲ್ ಮೂಲವನ್ನು ಇನ್ನೂ ಕಾನ್ಫಿಗರ್ ಮಾಡಲಾಗಿಲ್ಲ. ನೀವು ಉಳಿಸಿದ ಸ್ಥಳದಿಂದ ಸಮೀಪದ ಸ್ಥಳಗಳು ಇನ್ನೂ ಲೋಡ್ ಆಗಬಹುದು.';

  @override
  String get placesDataSourceUnavailableTitle => 'ಸ್ಥಳಗಳ ಡೇಟಾ ಲಭ್ಯವಿಲ್ಲ';

  @override
  String get placesDataSourceUnavailableBody =>
      'ಈ ಬಿಲ್ಡ್‌ಗಾಗಿ ಪರಿಶೀಲಿಸಿದ ಸ್ಥಳಗಳ ಡೇಟಾ ಎಂಡ್‌ಪಾಯಿಂಟ್ ಅನ್ನು ಇನ್ನೂ ಕಾನ್ಫಿಗರ್ ಮಾಡಲಾಗಿಲ್ಲ. ಹತ್ತಿರದ ಹುಡುಕಾಟವನ್ನು ಸಕ್ರಿಯಗೊಳಿಸುವ ಮೊದಲು PLACES_OVERPASS_API_URL ಅನ್ನು ಅನುಮೋದಿತ ಪ್ರಾಕ್ಸಿ ಅಥವಾ ಪೂರೈಕೆದಾರರಿಗೆ ಹೊಂದಿಸಿ.';

  @override
  String get unknownPlaceName => 'ಅಪರಿಚಿತ ಹೆಸರು';

  @override
  String get islamicPlaceFallback => 'ಇಸ್ಲಾಮಿಕ್ ಸ್ಥಳ';

  @override
  String get asmaMeaning1 => 'ದಿ ಬೆನಿಫಿಸೆಂಟ್';

  @override
  String get asmaMeaning2 => 'ಕರುಣಾಮಯಿ';

  @override
  String get asmaMeaning3 => 'ರಾಜ / ಎಟರ್ನಲ್ ಲಾರ್ಡ್';

  @override
  String get asmaMeaning4 => 'ಅತ್ಯಂತ ಪವಿತ್ರ';

  @override
  String get asmaMeaning5 => 'ಶಾಂತಿಯ ಮೂಲ';

  @override
  String get asmaMeaning6 => 'ಭದ್ರತೆಯನ್ನು ನೀಡುವವರು';

  @override
  String get asmaMeaning7 => 'ದಿ ಗಾರ್ಡಿಯನ್';

  @override
  String get asmaMeaning8 => 'ಅಮೂಲ್ಯ / ಅತ್ಯಂತ ಶಕ್ತಿಶಾಲಿ';

  @override
  String get asmaMeaning9 => 'The Compeller';

  @override
  String get asmaMeaning10 => 'ಅತ್ಯುತ್ತಮ';

  @override
  String get asmaMeaning11 => 'ಸೃಷ್ಟಿಕರ್ತ';

  @override
  String get asmaMeaning12 => 'ದಿ ಮೇಕರ್ ಆಫ್ ಆರ್ಡರ್';

  @override
  String get asmaMeaning13 => 'ದ ಶೇಪರ್ ಆಫ್ ಬ್ಯೂಟಿ';

  @override
  String get asmaMeaning14 => 'ಕ್ಷಮಿಸುವ';

  @override
  String get asmaMeaning15 => 'ಸಬ್ಡ್ಯೂಯರ್';

  @override
  String get asmaMeaning16 => 'ಎಲ್ಲವನ್ನೂ ಕೊಡುವವನು';

  @override
  String get asmaMeaning17 => 'ದಿ ಸಸ್ಟೈನರ್';

  @override
  String get asmaMeaning18 => 'ದಿ ಓಪನರ್';

  @override
  String get asmaMeaning19 => 'ಎಲ್ಲವನ್ನೂ ತಿಳಿದವರು';

  @override
  String get asmaMeaning20 => 'ದಿ ಕನ್‌ಸ್ಟ್ರಿಕ್ಟರ್';

  @override
  String get asmaMeaning21 => 'ನಿವಾರಕ';

  @override
  String get asmaMeaning22 => 'ಅಬೇಸರ್';

  @override
  String get asmaMeaning23 => 'ಎಕ್ಸಾಲ್ಟರ್';

  @override
  String get asmaMeaning24 => 'ಗೌರವ ನೀಡಿದವರು';

  @override
  String get asmaMeaning25 => 'ಹ್ಯೂಮಿಲಿಯೇಟರ್';

  @override
  String get asmaMeaning26 => 'ಎಲ್ಲವನ್ನೂ ಕೇಳುವವರು';

  @override
  String get asmaMeaning27 => 'ಎಲ್ಲರ ನೋಡುಗ';

  @override
  String get asmaMeaning28 => 'ನ್ಯಾಯಾಧೀಶರು';

  @override
  String get asmaMeaning29 => 'ದಿ ಜಸ್ಟ್';

  @override
  String get asmaMeaning30 => 'ಸೂಕ್ಷ್ಮವಾದದ್ದು';

  @override
  String get asmaMeaning31 => 'The All Aware';

  @override
  String get asmaMeaning32 => 'ಮುಂಜಾನೆ';

  @override
  String get asmaMeaning33 => 'ದಿ ಮ್ಯಾಗ್ನಿಫಿಸೆಂಟ್';

  @override
  String get asmaMeaning34 => 'ಮಹಾನ್ ಕ್ಷಮಿಸುವವನು';

  @override
  String get asmaMeaning35 => 'ಧನ್ಯವಾದದ ಪ್ರತಿಫಲ';

  @override
  String get asmaMeaning36 => 'ಅತ್ಯುತ್ತಮ';

  @override
  String get asmaMeaning37 => 'ದಿ ಗ್ರೇಟೆಸ್ಟ್';

  @override
  String get asmaMeaning38 => 'ಸಂರಕ್ಷಕ';

  @override
  String get asmaMeaning39 => 'ಪೋಷಕ';

  @override
  String get asmaMeaning40 => 'The Reckoner';

  @override
  String get asmaMeaning41 => 'ದಿ ಮೆಜೆಸ್ಟಿಕ್';

  @override
  String get asmaMeaning42 => 'ಉದಾರ';

  @override
  String get asmaMeaning43 => 'ಕಾವಲುಗಾರ';

  @override
  String get asmaMeaning44 => 'ಪ್ರಾರ್ಥನೆಗೆ ಪ್ರತಿಕ್ರಿಯಿಸುವವರು';

  @override
  String get asmaMeaning45 => 'ಎಲ್ಲಾ ಗ್ರಹಿಕೆ';

  @override
  String get asmaMeaning46 => 'ದಿ ಪರ್ಫೆಕ್ಟ್ಲಿ ವೈಸ್';

  @override
  String get asmaMeaning47 => 'ಪ್ರೀತಿಯವನು';

  @override
  String get asmaMeaning48 => 'ಅತ್ಯಂತ ಅದ್ಭುತವಾದದ್ದು';

  @override
  String get asmaMeaning49 => 'ಪುನರುತ್ಥಾನಕಾರ';

  @override
  String get asmaMeaning50 => 'The Witness';

  @override
  String get asmaMeaning51 => 'ಸತ್ಯ';

  @override
  String get asmaMeaning52 => 'ಎಲ್ಲಾ-ಸಾಕಷ್ಟು ಟ್ರಸ್ಟಿ';

  @override
  String get asmaMeaning53 => 'ಎಲ್ಲಾ ಸಾಮರ್ಥ್ಯದ ಒಡೆಯ';

  @override
  String get asmaMeaning54 => 'ದಿ ಫೋರ್ಸ್‌ಫುಲ್';

  @override
  String get asmaMeaning55 => 'ಪ್ರೊಟೆಕ್ಟರ್';

  @override
  String get asmaMeaning56 => 'ಪ್ರಶಂಸಕ';

  @override
  String get asmaMeaning57 => 'ಮೌಲ್ಯಮಾಪಕ';

  @override
  String get asmaMeaning58 => 'The Originator';

  @override
  String get asmaMeaning59 => 'The Restorer';

  @override
  String get asmaMeaning60 => 'ಜೀವನ ನೀಡುವವನು';

  @override
  String get asmaMeaning61 => 'ದಿ ಟೇಕರ್ ಆಫ್ ಲೈಫ್';

  @override
  String get asmaMeaning62 => 'ಎವರ್ ಲಿವಿಂಗ್';

  @override
  String get asmaMeaning63 => 'ಸ್ವಯಂ-ಸಬ್ಸಿಸ್ಟಿಂಗ್ ಸಸ್ಟೈನರ್';

  @override
  String get asmaMeaning64 => 'The Finder';

  @override
  String get asmaMeaning65 => 'ದಿ ಗ್ಲೋರಿಯಸ್';

  @override
  String get asmaMeaning66 => 'ಒಂದೇ ಒಂದು';

  @override
  String get asmaMeaning67 => 'The One';

  @override
  String get asmaMeaning68 => 'ಎಲ್ಲರಿಂದ ಹುಡುಕಲ್ಪಟ್ಟ ಒಂದು';

  @override
  String get asmaMeaning69 => 'ಶಕ್ತಿಶಾಲಿ';

  @override
  String get asmaMeaning70 => 'ಎಲ್ಲಾ ಶಕ್ತಿಯ ಸೃಷ್ಟಿಕರ್ತ';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'ದಿ ಲೇಯರ್';

  @override
  String get asmaMeaning73 => 'ಮೊದಲನೆಯದು';

  @override
  String get asmaMeaning74 => 'ದಿ ಲಾಸ್ಟ್';

  @override
  String get asmaMeaning75 => 'ದಿ ಮ್ಯಾನಿಫೆಸ್ಟ್';

  @override
  String get asmaMeaning76 => 'ಹಿಡನ್';

  @override
  String get asmaMeaning77 => 'ಗವರ್ನರ್';

  @override
  String get asmaMeaning78 => 'ಸುಪ್ರೀಂ ಒನ್';

  @override
  String get asmaMeaning79 => 'ಒಳ್ಳೆಯದನ್ನು ಮಾಡುವವನು';

  @override
  String get asmaMeaning80 => 'ಪಶ್ಚಾತ್ತಾಪಕ್ಕೆ ಮಾರ್ಗದರ್ಶಿ';

  @override
  String get asmaMeaning81 => 'ಅವೆಂಜರ್';

  @override
  String get asmaMeaning82 => 'ಕ್ಷಮಿಸುವವನು';

  @override
  String get asmaMeaning83 => 'ದಿ ಕ್ಲೆಮೆಂಟ್';

  @override
  String get asmaMeaning84 => 'ಎಲ್ಲರ ಮಾಲೀಕ / ಸಾರ್ವಭೌಮ';

  @override
  String get asmaMeaning85 => 'ಮೆಜೆಸ್ಟಿ ಮತ್ತು ಬೌಂಟಿಯ ಒಡೆಯ';

  @override
  String get asmaMeaning86 => 'ಈಕ್ವಿಟಬಲ್ ಒನ್';

  @override
  String get asmaMeaning87 => 'ಸಂಗ್ರಹಕಾರ';

  @override
  String get asmaMeaning88 => 'ಶ್ರೀಮಂತ';

  @override
  String get asmaMeaning89 => 'The Enricher';

  @override
  String get asmaMeaning90 => 'ಹಾನಿ ತಡೆಗಟ್ಟುವಿಕೆ';

  @override
  String get asmaMeaning91 => 'ಹಾನಿ ತರುವವನು';

  @override
  String get asmaMeaning92 => 'ಪ್ರಯೋಜನಗಳನ್ನು ನೀಡುವವರು';

  @override
  String get asmaMeaning93 => 'ದಿ ಲೈಟ್';

  @override
  String get asmaMeaning94 => 'ಮಾರ್ಗದರ್ಶಿ';

  @override
  String get asmaMeaning95 => 'The Originator';

  @override
  String get asmaMeaning96 => 'ಎವರ್ಲಾಸ್ಟಿಂಗ್ ಒನ್';

  @override
  String get asmaMeaning97 => 'ಉತ್ತರಾಧಿಕಾರಿ';

  @override
  String get asmaMeaning98 => 'ಅತ್ಯಂತ ನೀತಿವಂತ ಮಾರ್ಗದರ್ಶಿ';

  @override
  String get asmaMeaning99 => 'ರೋಗಿ';
}
