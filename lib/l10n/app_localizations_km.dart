// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Khmer Central Khmer (`km`).
class AppLocalizationsKm extends AppLocalizations {
  AppLocalizationsKm([String locale = 'km']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'ផ្លូវអ៊ីស្លាមនៃពន្លឺ';

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
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'ព្រះអាទិត្យរះ';

  @override
  String get dhuhr => 'ឌូហរ';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'ម៉ាហ្គ្រីប';

  @override
  String get isha => 'អ៊ីសា';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'ពេលវេលាសម្រាប់ $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'ដល់ពេលអធិស្ឋាន $prayerName។';
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
  String get locationServiceDisabled => 'សេវាកម្មទីតាំងត្រូវបានបិទ។';

  @override
  String get locationPermissionDenied => 'ការអនុញ្ញាតទីតាំងត្រូវបានបដិសេធ។';

  @override
  String get locationDetectionFailed =>
      'មិនអាចរកឃើញទីតាំងរបស់អ្នកបានទេ។ សូមជ្រើសរើសទីក្រុងមួយដោយដៃ ឬព្យាយាមម្តងទៀត។';

  @override
  String citiesCount(String count) {
    return '$count ទីក្រុង';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'រកមិនឃើញលទ្ធផលទេ។';

  @override
  String get loading => 'កំពុង​ផ្ទុក...';

  @override
  String get error => 'កំហុស';

  @override
  String get appErrorOccurred => 'កំហុសមួយបានកើតឡើង';

  @override
  String get appUnknownError => 'កំហុសមិនស្គាល់';

  @override
  String get quranLoadFailed =>
      'មាតិកាគម្ពីគូរ៉ាមិនអាចផ្ទុកបានទេ។ សូមព្យាយាមម្តងទៀត។';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'ធ្វើឱ្យស្រស់';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'លុប';

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
    return 'អាយ៉ា $ayah';
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
  String get tafsirLoading => 'កំពុងផ្ទុក tafsir...';

  @override
  String get tafsirSourceLabel => 'ប្រភព Tafsir';

  @override
  String get tafsirNoSurahFound => 'រកមិនឃើញ tafsir សម្រាប់ Surah នេះទេ។';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'រកមិនឃើញ tafsir សម្រាប់ ayah $ayah ទេ។';
  }

  @override
  String get tafsirLoadFailed => 'មិនអាចផ្ទុក Tafsir បានទេ។';

  @override
  String get tafsirNoTextForAyah => 'មិនមានអត្ថបទ tafsir សម្រាប់ ayah នេះទេ។';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'កំពុងទាញយក tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'កំពុងផ្ទុក tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'ប្រភព Tafsir បានត្រឡប់កំហុស HTTP $statusCode ។';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'ប្រភព tafsir ដែលបានជ្រើសរើសបានត្រលប់មកវិញមិនមានធាតុទេ។';

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
      'អ្នក​ខ្លះ​ទៀត​អធិស្ឋាន​ថា \'ព្រះអម្ចាស់​នៃ​យើង សូម​ប្រោស​ប្រទាន​ឲ្យ​យើង​មាន​សេចក្ដី​ល្អ​ក្នុង​លោកិយ​នេះ និង​លោកីយ៍ ហើយ​ការពារ​យើង​ពី​ទុក្ខ​វេទនា​នៃ​ភ្លើង»។';

  @override
  String get duaMeaning2 =>
      'ព្រះ​មិន​ដាក់​បន្ទុក​ដល់​ព្រលឹង​ណា​មួយ​លើស​ពី​អ្វី​ដែល​ខ្លួន​អាច​ទ្រាំ​បាន៖ ម្នាក់ៗ​ទទួល​បាន​នូវ​អំពើ​ល្អ​ដែល​ខ្លួន​បាន​ធ្វើ ហើយ​ទទួល​រង​នូវ​អំពើ​អាក្រក់​របស់​ខ្លួន— ព្រះអម្ចាស់​អើយ សូម​កុំ​យក​យើង​ទៅ​ធ្វើ​ការ​បើ​យើង​ភ្លេច ឬ​ធ្វើ​ខុស។ ព្រះ‌អម្ចាស់​អើយ សូម​កុំ​ដាក់​បន្ទុក​ដល់​យើង ដូច​ព្រះអង្គ​បាន​ដាក់​បន្ទុក​លើ​ពួក​អ្នក​ដែល​នៅ​ចំពោះ​មុខ​យើង​ដែរ។ ឱព្រះជាម្ចាស់អើយ កុំដាក់បន្ទុកលើយើង លើសពីកម្លាំងដែលត្រូវទ្រាំ។ អត់ទោសឱ្យយើង អត់ទោសឱ្យយើង ហើយអាណិតយើង។ អ្នក​គឺ​ជា​អ្នក​ការពារ​របស់​យើង ដូច្នេះ​សូម​ជួយ​យើង​ប្រឆាំង​នឹង​អ្នក​មិន​ជឿ។';

  @override
  String get duaMeaning3 =>
      'ព្រះអម្ចាស់​នៃ​យើង​ខ្ញុំ​អើយ សូម​កុំ​បណ្ដោយ​ឲ្យ​ចិត្ត​របស់​យើង​វង្វេង​ក្រោយ​ពី​ព្រះអង្គ​បាន​ដឹកនាំ​យើង​ឡើយ។ សូម​ផ្តល់​សេចក្តី​មេត្តា​ករុណា​ដល់​យើង៖ អ្នក​គឺ​ជា​អ្នក​ដែល​មិន​ធ្លាប់​ផ្តល់។';

  @override
  String get duaMeaning4 =>
      'ព្រះអម្ចាស់ សូម​ប្រទាន​ឲ្យ​ទូលបង្គំ និង​ពូជពង្ស​របស់​ទូលបង្គំ​អាច​បន្ត​ការ​អធិស្ឋាន។ ព្រះអម្ចាស់​របស់​យើង​អើយ សូម​ទទួល​យក​សំណើ​របស់​ខ្ញុំ។';

  @override
  String get duaMeaning5 =>
      'ហើយ​បន្ទាប​ស្លាប​របស់​អ្នក​ចំពោះ​ពួក​គេ​ដោយ​ចិត្ត​សប្បុរស ហើយ​ពោល​ថា \'ព្រះអម្ចាស់​អើយ សូម​អាណិត​អាសូរ​ដល់​ពួក​គេ ដូច​ជា​ពួក​គេ​បាន​យក​ចិត្ត​ទុក​ដាក់​ចំពោះ​ខ្ញុំ​កាល​ពី​តូច​ដែរ»។';

  @override
  String get duaMeaning6 =>
      'សូម​លើក​តម្កើង​ព្រះជាម្ចាស់ ជា​អ្នក​ដែល​គ្រប់​គ្រង​យ៉ាង​ពិត​ប្រាកដ។ [ព្យាការី] កុំប្រញាប់ប្រញាល់សូត្រ មុនពេលវិវរណៈពេញលេញ ប៉ុន្តែត្រូវនិយាយថា \'ព្រះអម្ចាស់ បង្កើនចំណេះដឹងដល់ខ្ញុំ!\'';

  @override
  String get duaMeaning7 =>
      'ចូរ​និយាយ​ថា [ ព្យាការី ] ‹ ព្រះអម្ចាស់​អើយ សូម​អត់ទោស ហើយ​មាន​សេចក្ដី​មេត្តា​ករុណា ៖ ទ្រង់​ជា​អ្នក​មាន​សេចក្ដី​មេត្តា​ករុណា​បំផុត › ។';

  @override
  String get duaMeaning8 =>
      'អស់​អ្នក​ដែល​អធិដ្ឋាន​ថា​៖ ‹ព្រះអម្ចាស់​នៃ​យើង​ខ្ញុំ​អើយ សូម​ប្រទាន​ឲ្យ​យើង​មាន​សេចក្ដី​អំណរ​ក្នុង​ប្ដី​ប្រពន្ធ និង​ពូជ​ពង្ស​របស់​យើង។ ចូរ​ធ្វើ​ជា​គំរូ​ល្អ​ដល់​ពួក​យើង​ដល់​អ្នក​ដែល​ដឹង​អំពី​ទ្រង់។';

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
  String get hadith => 'ហាឌីត';

  @override
  String get hadithCollection => 'ការប្រមូល Hadith';

  @override
  String get hadithBooks => 'សៀវភៅ Hadith';

  @override
  String get searchHadith => 'ស្វែងរក Hadith';

  @override
  String get asmaulHusna => 'អាម៉ា-អ៊ូល-ហ៊ូសណា';

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
  String get openInYoutube => 'បើកក្នុង YouTube';

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
    return '$hoursម៉ោង ${minutes}m';
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
  String get islamicNewYear => 'ឆ្នាំថ្មីអ៊ីស្លាម';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '១ រ៉ាម៉ាដាន';

  @override
  String get specialDayDateLaylatAlQadr => '២៧ រ៉ាម៉ាដាន';

  @override
  String get specialDayDateEidAlFitr => '1 Shawwal';

  @override
  String get specialDayDateEidAlAdha => '10 Dhul Hijjah';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharram';

  @override
  String get specialDayDateMawlidAnNabi => '១២ រ៉ាប៊ី អាល់ អាវ៉ាល់';

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
    return 'កំហុសត្រីវិស័យ៖ $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'ឧបករណ៍ចាប់សញ្ញាត្រីវិស័យមិនមាននៅលើឧបករណ៍នេះទេ។';

  @override
  String get qiblaLocationRequiredTitle => 'ទីតាំងដែលត្រូវការសម្រាប់ Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'កំណត់ទីតាំងពិតប្រាកដរបស់អ្នក មុនពេលប្រើត្រីវិស័យ Qibla ដូច្នេះទិសដៅអាចត្រូវបានគណនាយ៉ាងត្រឹមត្រូវ។';

  @override
  String get adhanNotificationChannelName => 'ការជូនដំណឹង Adhan';

  @override
  String get adhanNotificationChannelDescription =>
      'ការដាស់តឿនពេលវេលាអធិស្ឋានជាមួយនឹងសំឡេង adhan ។';

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
    return 'ពិនិត្យមើល $appName៖ កម្មវិធីរបៀបរស់នៅបែបឥស្លាមចុងក្រោយ! $url';
  }

  @override
  String get downloadManager => 'កម្មវិធីគ្រប់គ្រងការទាញយក';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'ការទាញយកពេញលេញ';

  @override
  String get downloadFailed => 'ការទាញយកបរាជ័យ';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'គ្មានការភ្ជាប់អ៊ីនធឺណិត';

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
  String get zikrCompletedMashAllah => 'ចប់ហើយ! MashAllah';

  @override
  String get zikrMeaningSubhanAllah => 'អល់ឡោះគឺខ្ពស់ជាងរាល់ភាពមិនល្អឥតខ្ចោះ។';

  @override
  String get zikrMeaningAlhamdulillah =>
      'ការសរសើរទាំងអស់ជាកម្មសិទ្ធិរបស់អល់ឡោះ។';

  @override
  String get zikrMeaningAllahuAkbar => 'អល់ឡោះគឺអស្ចារ្យបំផុត។';

  @override
  String get zikrMeaningLaIlahaIllallah => 'គ្មានព្រះក្រៅពីអល់ឡោះទេ។';

  @override
  String get zikrMeaningAstaghfirullah => 'ខ្ញុំស្វែងរកការអភ័យទោសពីអល់ឡោះ។';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'គ្មានអំណាច និងគ្មានកម្លាំងទេ លើកលែងតែតាមរយៈអល់ឡោះ។';

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
  String get offlineDownloadManager => 'កម្មវិធីគ្រប់គ្រងការទាញយកក្រៅបណ្តាញ';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'បង្កើនទំហំផ្ទុកឧបករណ៍ខាងក្នុង។';

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
  String get audioVoice => 'សំឡេងអូឌីយ៉ូ';

  @override
  String get audioVoiceMisharyAlafasy => 'ប្រុស (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'ប្រុស (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'ប្រុស (ស៊ុយអែត)';

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
  String get diagnosticsNotSet => 'មិនបានកំណត់';

  @override
  String get diagnosticsPrayerProfile => 'ទម្រង់ការអធិស្ឋាន';

  @override
  String get diagnosticsPrayerSource => 'អាជ្ញាធរការអធិស្ឋាន';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'ផ្ទាល់ខ្លួន / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'មុំផ្ទាល់ខ្លួនដោយដៃ (គ្មានប្រភពស្ថាប័ន)';

  @override
  String get diagnosticsCloudDriven => 'ដំណើរការលើពពក';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'ទ្រព្យសម្បត្តិសំឡេងគម្ពីគូរ៉ា';

  @override
  String get diagnosticsAudioAssets => 'ទ្រព្យសម្បត្តិអូឌីយ៉ូ';

  @override
  String diagnosticsFilesCount(String count) {
    return 'ឯកសារ $count';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'ការអាន Manifest បានបរាជ័យ៖ $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'ការធ្វើមូលដ្ឋានីយកម្ម មូលដ្ឋាន';

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
      'តារាងពពកបាត់នៅក្នុង Supabase; កញ្ចប់​ត្រឡប់​មកវិញ​សកម្ម';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'បាត់ទិន្នន័យ Cloud juz; បណ្តុំរចនាសម្ព័ន្ធថយក្រោយសកម្ម';

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
  String get dailyVerse => 'កំណាព្យប្រចាំថ្ងៃ';

  @override
  String get todaysIbadah => 'អ៊ីបាដាថ្ងៃនេះ';

  @override
  String get quickAccess => 'ការចូលប្រើរហ័ស';

  @override
  String get assistant => 'ជំនួយការ';

  @override
  String get places => 'កន្លែង';

  @override
  String get library => 'បណ្ណាល័យ';

  @override
  String get analytics => 'វិភាគ';

  @override
  String get dailyDuas => 'Duas ប្រចាំថ្ងៃ';

  @override
  String essentialDuas(String count) {
    return '$count duas សំខាន់';
  }

  @override
  String get duaUnavailableTitle => 'duas ដែលបានផ្ទៀងផ្ទាត់មិនទាន់មាននៅឡើយទេ';

  @override
  String get duaUnavailableBody =>
      'duas ប្រចាំថ្ងៃដែលបានផ្ទៀងផ្ទាត់មិនទាន់ត្រូវបានធ្វើសមកាលកម្មទៅឧបករណ៍នេះនៅឡើយទេ។ ភ្ជាប់ទៅប្រភពពពកដើម្បីផ្ទុក duas ដែលមានប្រភពជំនួសឱ្យការត្រលប់មកវិញដែលមិនបានបញ្ជាក់។';

  @override
  String get duaCategoryQuranic => 'គម្ពីគូរ៉ានឌូ';

  @override
  String get duaCategoryMorningEvening => 'ពេលព្រឹក និងពេលល្ងាច';

  @override
  String get duaCategoryTasbih => 'តាសប៊ី';

  @override
  String get duaCategoryProtection => 'ការការពារ';

  @override
  String get duaCategoryBeginning => 'ការចាប់ផ្តើម';

  @override
  String get duaCategorySleep => 'គេង';

  @override
  String get duaCategoryFoodDrink => 'អាហារ និងភេសជ្ជៈ';

  @override
  String get duaCategoryForgiveness => 'ការអភ័យទោស';

  @override
  String get duaCategoryHome => 'ផ្ទះ';

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
  String get islamicEducation => 'ការអប់រំអ៊ីស្លាម';

  @override
  String get sukunAudioTitle => 'សុគន្ធ និសា';

  @override
  String get hadithCollections => 'ការប្រមូល Hadith';

  @override
  String get hadithSourcePending => 'រង់ចាំប្រភពដែលបានផ្ទៀងផ្ទាត់';

  @override
  String get hadithUnavailableTitle =>
      'ការប្រមូល hadith ដែលបានផ្ទៀងផ្ទាត់មិនទាន់មាននៅឡើយទេ';

  @override
  String get hadithUnavailableBody =>
      'ការស្ថាបនានេះនៅតែពឹងផ្អែកលើមតិព័ត៌មាន hadith ខាងក្រៅដែលមិនបានបញ្ជាក់។ ការរុករក Hadith នៅតែបិទរហូតដល់សំណុំទិន្នន័យប្រភពត្រូវបានធ្វើសមកាលកម្ម។';

  @override
  String get paywallUnlockAll =>
      'ដោះសោលក្ខណៈពិសេសទាំងអស់សម្រាប់ការធ្វើដំណើរខាងវិញ្ញាណរបស់អ្នក។';

  @override
  String get premiumProductUnavailable =>
      'ផលិតផលពិសេសមិនមានលក់នៅពេលនេះទេ។ សូមព្យាយាមម្តងទៀតនៅពេលក្រោយ។';

  @override
  String get premiumPurchaseFailed =>
      'ការទិញមិនអាចបញ្ចប់បានទេ។ សូមព្យាយាមម្តងទៀត។';

  @override
  String get paywallFeature1Title => 'ជំនួយសរសៃប្រសាទ បូក';

  @override
  String get paywallFeature1Desc =>
      'សំណួរ និងចម្លើយដែលដំណើរការដោយ AI គ្មានដែនកំណត់';

  @override
  String get paywallFeature2Title => 'ក្រៅបណ្តាញគ្មានដែនកំណត់';

  @override
  String get paywallFeature2Desc => 'ទាញយកការសូត្រទាំងអស់។';

  @override
  String get paywallFeature3Title => 'ការរចនាផ្តាច់មុខ';

  @override
  String get paywallFeature3Desc => 'ស្បែក និងពុម្ពអក្សរពិសេស';

  @override
  String get paywallFeature4Title => 'គ្មានការផ្សាយពាណិជ្ជកម្ម';

  @override
  String get paywallFeature4Desc => 'ការផ្សាយពាណិជ្ជកម្មសូន្យ';

  @override
  String get paywallGetAccess => 'ទទួលបានការចូលប្រើប្រាស់ពេញមួយជីវិត — \$1.00';

  @override
  String get restorePurchases => 'ទិញឡើងវិញ';

  @override
  String get zakatCalculator => 'ម៉ាស៊ីនគិតលេខ Zakat';

  @override
  String get zakatGold => 'មាស (Altın)';

  @override
  String get zakatSilver => 'ប្រាក់ (Gümüş)';

  @override
  String get zakatCashBank => 'សាច់ប្រាក់ / ធនាគារ';

  @override
  String get zakatBusiness => 'អាជីវកម្ម';

  @override
  String get zakatInvestments => 'ការវិនិយោគ';

  @override
  String get zakatWeightGrams => 'ទម្ងន់ (ក្រាម)';

  @override
  String get zakatPricePerGram => 'តម្លៃ/ក្រាម';

  @override
  String get zakatTotalAmount => 'ចំនួនសរុប';

  @override
  String get zakatInventoryValue => 'តម្លៃសារពើភ័ណ្ឌ';

  @override
  String get zakatDebts => 'បំណុល';

  @override
  String get zakatTotal => 'សរុប';

  @override
  String get calculateZakat => 'គណនា Zakat';

  @override
  String get nisabNotReached =>
      'Nisab មិនបានទៅដល់ទេ។ Zakat មិនមែនជាកាតព្វកិច្ចទេ។';

  @override
  String get totalZakat => 'Zakat សរុប';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab៖ $nisab • ទ្រព្យសកម្ម៖ $assets';
  }

  @override
  String get zakatGoldZakat => 'មាស ហ្សាកាត';

  @override
  String get zakatSilverZakat => 'ប្រាក់ Zakat';

  @override
  String get zakatCashZakat => 'សាច់ប្រាក់ Zakat';

  @override
  String get zakatBusinessZakat => 'អាជីវកម្ម Zakat';

  @override
  String get zakatInvestmentZakat => 'ការវិនិយោគ Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! ខ្ញុំជាជំនួយការអ៊ីស្លាមរបស់អ្នក។ សួរខ្ញុំអំពីការអធិស្ឋាន ការតមអាហារ zakat ឬប្រធានបទអ៊ីស្លាមណាមួយ។';

  @override
  String get chatbotLimitReached =>
      'បានដល់ដែនកំណត់សំណួរប្រចាំថ្ងៃ។ ដំឡើងកំណែទៅជា Premium ដោយគ្មានដែនកំណត់។';

  @override
  String get chatbotErrorMsg =>
      'ខ្ញុំមិនអាចបង្កើតការឆ្លើយតបបានទេ។ សូមព្យាយាមម្តងទៀត។';

  @override
  String get chatbotOfflinePrompt =>
      'មូលដ្ឋានចំណេះដឹងអ៊ិស្លាមក្រៅបណ្តាញដែលត្រូវបានផ្ទៀងផ្ទាត់នៅតែត្រូវបានរៀបចំ។ អ្នក​អាច​បើក​ការ​ត្រឡប់​ក្រោយ​ក្រៅ​បណ្ដាញ​ឥឡូវ​នេះ ប៉ុន្តែ​វា​នឹង​បង្ហាញ​តែ​សារ​សុវត្ថិភាព​មាន​កម្រិត​រហូត​ដល់​សំណុំ​ទិន្នន័យ​ប្រភព​រួចរាល់។\n\nតើ​អ្នក​ចង់​បើក​ការ​ត្រឡប់​ក្រោយ​ក្រៅ​បណ្ដាញ​ដែរ​ឬ​ទេ?';

  @override
  String get chatbotOfflineSwitched =>
      'បានបើកការត្រលប់ក្រោយក្រៅបណ្តាញ។ ចម្លើយអ៊ីស្លាមក្នុងស្រុកដែលបានផ្ទៀងផ្ទាត់មិនទាន់រួចរាល់នៅឡើយទេ។';

  @override
  String get chatbotOfflineDownloadLabel => 'បើកដំណើរការ Offline Fallback';

  @override
  String get downloadPreparing => 'កំពុងរៀបចំការទាញយក...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'កំពុងទាញយក Surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Surah ទាំងអស់ត្រូវបានទាញយករួចហើយសម្រាប់អ្នកសូត្រនេះ។';

  @override
  String get offlineQuranAudioPacks => 'Offline Quran Audio Packs';

  @override
  String storedOnDeviceMb(String size) {
    return 'Stored on device: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return 'បានទាញយក $downloaded / $total Surah';
  }

  @override
  String get redownloadMissingRepair => 'ជួសជុល / ទាញយកបាត់';

  @override
  String get downloadAction => 'ទាញយក';

  @override
  String get resumeDownload => 'បន្តការទាញយក';

  @override
  String get deleteDownloadedFiles => 'លុបឯកសារដែលបានទាញយក';

  @override
  String get downloadCancelling => 'កំពុងលុបចោល...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'ការទាញយកត្រូវបានលុបចោលសម្រាប់ $reciter ។';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'ការទាញយកបានបញ្ចប់សម្រាប់ $reciter ។';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'ការទាញយកបានបញ្ចប់សម្រាប់ $reciter ជាមួយ $failed បរាជ័យ Surah ($downloaded/$total បានទាញយក)។';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Deleted offline files for $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'ប្រភពសំឡេងគម្ពីគូរ៉ាដែលបានផ្ទៀងផ្ទាត់គឺមិនមានទេឥឡូវនេះ។';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'កញ្ចប់សំឡេងគម្ពីគូរ៉ាដែលបានផ្ទៀងផ្ទាត់គឺមិនពេញលេញទេ ($available/$total)។ ផ្ទុកគ្រាប់ពូជពពកឡើងវិញ ហើយព្យាយាមម្តងទៀត។';
  }

  @override
  String get chatbotHint => 'សួរសំណួរ...';

  @override
  String get chatbotThinking => 'ការគិត...';

  @override
  String get sukunMixerSubtitle => 'ឧបករណ៍លាយធម្មជាតិ និងគម្ពីគូរ៉ា';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'សុគន្ធ (ធម្មជាតិ)';

  @override
  String get sukunRainOfMercy => 'ភ្លៀងនៃមេត្តា';

  @override
  String get sukunGardenOfPeace => 'សួនសន្តិភាព';

  @override
  String get sukunMidnightCalm => 'កណ្តាលអធ្រាត្រស្ងប់ស្ងាត់';

  @override
  String get sukunOceanTawheed => 'មហាសមុទ្រ Tawheed';

  @override
  String get sukunUnavailableTitle => 'Soundscapes មិនអាចប្រើបានទេ។';

  @override
  String get sukunUnavailableBody =>
      'ការស្ថាបនានេះមិនទាន់រួមបញ្ចូលទ្រព្យសម្បត្តិ Sukun soundscape ដែលត្រូវការនៅឡើយទេ។';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'ស្ទ្រីម';

  @override
  String get dayStreak => 'ស្ទ្រីមថ្ងៃ';

  @override
  String get bestStreak => 'កម្រិតល្អបំផុត';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'ប្រើ Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'បើកដំណើរការ Offline Fallback';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count ចាកចេញ';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API មិនត្រូវបានកំណត់រចនាសម្ព័ន្ធទេ។ ការណែនាំអ៊ីស្លាមក្រៅបណ្តាញដែលបានផ្ទៀងផ្ទាត់មិនទាន់មាននៅឡើយទេ។';

  @override
  String get chatbotLocalNoInfo =>
      '[ក្រៅបណ្តាញ] ការណែនាំឥស្លាមក្នុងស្រុកដែលបានផ្ទៀងផ្ទាត់មិនទាន់មាននៅឡើយទេ។ ប្តូរទៅ Cloud AI សម្រាប់ចម្លើយដែលមានប្រភព។';

  @override
  String get mosques => 'វិហារអ៊ីស្លាម';

  @override
  String get halalFood => 'អាហារហាឡាល់';

  @override
  String get placesSearchArea => 'ស្វែងរកតំបន់នេះ។';

  @override
  String get nearbyMosques => 'វិហារអ៊ីស្លាមនៅជិត';

  @override
  String get islamicSchools => 'សាលាអ៊ីស្លាម';

  @override
  String placesFoundCount(String count) {
    return '$count បានរកឃើញ';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance គីឡូម៉ែត្រពីចម្ងាយ';
  }

  @override
  String placesApiError(String statusCode) {
    return 'កំហុស API៖ $statusCode';
  }

  @override
  String get placesNetworkError => 'កំហុសបណ្តាញ។ សូមព្យាយាមម្តងទៀត។';

  @override
  String get placesLocationRequiredTitle => 'ទាមទារទីតាំង';

  @override
  String get placesLocationRequiredBody =>
      'កំណត់ទីតាំងជាមុនសិន ដើម្បីស្វែងរកវិហារអ៊ិស្លាម អាហារហាឡាល និងសាលាឥស្លាមនៅជិតៗនោះ។';

  @override
  String get placesMapTilesUnavailableTitle => 'មិន​មាន​ក្រឡា​ផែនទី​ទេ។';

  @override
  String get placesMapTilesUnavailableBody =>
      'ប្រភព​ក្រឡា​ផែនទី​ដែល​បាន​ផ្ទៀងផ្ទាត់​មិន​ត្រូវ​បាន​កំណត់​រចនាសម្ព័ន្ធ​សម្រាប់​ការ​សាងសង់​នេះ​នៅ​ឡើយ​ទេ។ កន្លែងនៅក្បែរនោះនៅតែអាចផ្ទុកពីទីតាំងដែលអ្នកបានរក្សាទុក។';

  @override
  String get placesDataSourceUnavailableTitle => 'កន្លែងទិន្នន័យមិនអាចប្រើបាន';

  @override
  String get placesDataSourceUnavailableBody =>
      'ចំណុច​បញ្ចប់​ទិន្នន័យ​កន្លែង​ដែល​បាន​ផ្ទៀងផ្ទាត់​មិន​ត្រូវ​បាន​កំណត់​រចនាសម្ព័ន្ធ​សម្រាប់​ការ​បង្កើត​នេះ​នៅ​ឡើយ​ទេ។ កំណត់ PLACES_OVERPASS_API_URL ទៅជាប្រូកស៊ី ឬអ្នកផ្តល់សេវាដែលបានអនុម័ត មុនពេលបើកការស្វែងរកនៅក្បែរនោះ។';

  @override
  String get unknownPlaceName => 'មិនស្គាល់ឈ្មោះ';

  @override
  String get islamicPlaceFallback => 'កន្លែងអ៊ីស្លាម';

  @override
  String get asmaMeaning1 => 'អ្នកទទួលផល';

  @override
  String get asmaMeaning2 => 'ព្រះមេត្ដា';

  @override
  String get asmaMeaning3 => 'ស្តេច / ព្រះអម្ចាស់ដ៏អស់កល្ប';

  @override
  String get asmaMeaning4 => 'បរិសុទ្ធបំផុត។';

  @override
  String get asmaMeaning5 => 'ប្រភពនៃសន្តិភាព';

  @override
  String get asmaMeaning6 => 'អ្នកផ្តល់សុវត្ថិភាព';

  @override
  String get asmaMeaning7 => 'The Guardian';

  @override
  String get asmaMeaning8 => 'វត្ថុមានតម្លៃ / ខ្លាំងបំផុត។';

  @override
  String get asmaMeaning9 => 'អ្នកចងក្រង';

  @override
  String get asmaMeaning10 => 'អស្ចារ្យបំផុត។';

  @override
  String get asmaMeaning11 => 'អ្នកបង្កើត';

  @override
  String get asmaMeaning12 => 'អ្នកបង្កើតការបញ្ជាទិញ';

  @override
  String get asmaMeaning13 => 'រូបរាងនៃភាពស្រស់ស្អាត';

  @override
  String get asmaMeaning14 => 'ការអភ័យទោស';

  @override
  String get asmaMeaning15 => 'The Subduer';

  @override
  String get asmaMeaning16 => 'អ្នកផ្តល់ឱ្យទាំងអស់។';

  @override
  String get asmaMeaning17 => 'អ្នកទ្រទ្រង់';

  @override
  String get asmaMeaning18 => 'អ្នកបើក';

  @override
  String get asmaMeaning19 => 'អ្នកស្គាល់ទាំងអស់។';

  @override
  String get asmaMeaning20 => 'អ្នកបង្ខាំង';

  @override
  String get asmaMeaning21 => 'អ្នកសង្គ្រោះ';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'ការប្រគល់កិត្តិយស';

  @override
  String get asmaMeaning25 => 'អ្នកបំបាក់មុខ';

  @override
  String get asmaMeaning26 => 'អ្នកស្តាប់ទាំងអស់គ្នា';

  @override
  String get asmaMeaning27 => 'អ្នកមើលទាំងអស់';

  @override
  String get asmaMeaning28 => 'ចៅក្រម';

  @override
  String get asmaMeaning29 => 'គ្រាន់តែ';

  @override
  String get asmaMeaning30 => 'ភាពទន់ភ្លន់';

  @override
  String get asmaMeaning31 => 'ការដឹងទាំងអស់';

  @override
  String get asmaMeaning32 => 'ការគិតទុកជាមុន';

  @override
  String get asmaMeaning33 => 'អស្ចារ្យ';

  @override
  String get asmaMeaning34 => 'អ្នកអភ័យទោសដ៏អស្ចារ្យ';

  @override
  String get asmaMeaning35 => 'អ្នកផ្តល់រង្វាន់នៃការដឹងគុណ';

  @override
  String get asmaMeaning36 => 'ខ្ពស់បំផុត';

  @override
  String get asmaMeaning37 => 'អស្ចារ្យបំផុត។';

  @override
  String get asmaMeaning38 => 'អ្នកអភិរក្ស';

  @override
  String get asmaMeaning39 => 'អ្នកចិញ្ចឹម';

  @override
  String get asmaMeaning40 => 'អ្នកគិតលេខ';

  @override
  String get asmaMeaning41 => 'មហាអស្ចារ្យ';

  @override
  String get asmaMeaning42 => 'សប្បុរស';

  @override
  String get asmaMeaning43 => 'អ្នកចាំទី';

  @override
  String get asmaMeaning44 => 'ការ​ឆ្លើយ​តប​នឹង​ការ​អធិស្ឋាន';

  @override
  String get asmaMeaning45 => 'ការយល់ឃើញទាំងអស់។';

  @override
  String get asmaMeaning46 => 'ប្រាជ្ញាល្អឥតខ្ចោះ';

  @override
  String get asmaMeaning47 => 'មនុស្សជាទីស្រឡាញ់';

  @override
  String get asmaMeaning48 => 'ដ៏រុងរឿងបំផុត។';

  @override
  String get asmaMeaning49 => 'អ្នករស់ឡើងវិញ';

  @override
  String get asmaMeaning50 => 'សាក្សី';

  @override
  String get asmaMeaning51 => 'ការពិត';

  @override
  String get asmaMeaning52 => 'អ្នកធានាគ្រប់ចំនួនគ្រប់គ្រាន់';

  @override
  String get asmaMeaning53 => 'ម្ចាស់នៃកម្លាំងទាំងអស់។';

  @override
  String get asmaMeaning54 => 'ការបង្ខំ';

  @override
  String get asmaMeaning55 => 'អ្នកការពារ';

  @override
  String get asmaMeaning56 => 'ការសរសើរ';

  @override
  String get asmaMeaning57 => 'អ្នកវាយតម្លៃ';

  @override
  String get asmaMeaning58 => 'អ្នកបង្កើត';

  @override
  String get asmaMeaning59 => 'អ្នកស្តារ';

  @override
  String get asmaMeaning60 => 'អ្នកផ្តល់ជីវិត';

  @override
  String get asmaMeaning61 => 'អ្នកទទួលជីវិត';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'អ្នកទ្រទ្រង់ខ្លួនឯង';

  @override
  String get asmaMeaning64 => 'អ្នកស្វែងរក';

  @override
  String get asmaMeaning65 => 'រុងរឿង';

  @override
  String get asmaMeaning66 => 'តែមួយគត់';

  @override
  String get asmaMeaning67 => 'The One';

  @override
  String get asmaMeaning68 => 'អ្នកដែលគ្រប់គ្នាស្វែងរក';

  @override
  String get asmaMeaning69 => 'មានថាមពល';

  @override
  String get asmaMeaning70 => 'អ្នកបង្កើតអំណាចទាំងអស់។';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'ការពន្យាពេល';

  @override
  String get asmaMeaning73 => 'ទីមួយ';

  @override
  String get asmaMeaning74 => 'ចុងក្រោយ';

  @override
  String get asmaMeaning75 => 'ការសម្ដែង';

  @override
  String get asmaMeaning76 => 'ការលាក់';

  @override
  String get asmaMeaning77 => 'អភិបាលខេត្ត';

  @override
  String get asmaMeaning78 => 'កំពូលម្នាក់';

  @override
  String get asmaMeaning79 => 'អ្នកធ្វើអំពើល្អ។';

  @override
  String get asmaMeaning80 => 'មគ្គុទ្ទេសក៍ទៅកាន់ការប្រែចិត្ត';

  @override
  String get asmaMeaning81 => 'The Avenger';

  @override
  String get asmaMeaning82 => 'អ្នកអភ័យទោស';

  @override
  String get asmaMeaning83 => 'The Clement';

  @override
  String get asmaMeaning84 => 'ម្ចាស់/អធិបតេយ្យភាពនៃទាំងអស់។';

  @override
  String get asmaMeaning85 => 'ម្ចាស់ក្សត្រី និងអំណោយ';

  @override
  String get asmaMeaning86 => 'សមធម៌';

  @override
  String get asmaMeaning87 => 'អ្នកប្រមូលផ្តុំ';

  @override
  String get asmaMeaning88 => 'អ្នកមាន';

  @override
  String get asmaMeaning89 => 'The Enricher';

  @override
  String get asmaMeaning90 => 'អ្នកការពារគ្រោះថ្នាក់';

  @override
  String get asmaMeaning91 => 'អ្នកនាំមកនូវគ្រោះថ្នាក់';

  @override
  String get asmaMeaning92 => 'អ្នកផ្តល់អត្ថប្រយោជន៍';

  @override
  String get asmaMeaning93 => 'ពន្លឺ';

  @override
  String get asmaMeaning94 => 'អ្នកណែនាំ';

  @override
  String get asmaMeaning95 => 'អ្នកបង្កើត';

  @override
  String get asmaMeaning96 => 'ព្រះដ៏អស់កល្ប';

  @override
  String get asmaMeaning97 => 'អ្នកទទួលមរតក';

  @override
  String get asmaMeaning98 => 'ការណែនាំដ៏ត្រឹមត្រូវបំផុត។';

  @override
  String get asmaMeaning99 => 'អ្នកជំងឺម្នាក់';
}
