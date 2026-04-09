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
  String citiesCount(String count) {
    return '$count ទីក្រុង';
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
  String get appErrorOccurred => 'កំហុសមួយបានកើតឡើង';

  @override
  String get appUnknownError => 'កំហុសមិនស្គាល់';

  @override
  String get retry => 'Retry';

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
  String get zikrCompletedMashAllah => 'ចប់ហើយ! MashAllah';

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
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

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
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'ស្ទ្រីមថ្ងៃ';

  @override
  String get bestStreak => 'កម្រិតល្អបំផុត';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'បើកដំណើរការ Offline Fallback';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count ចាកចេញ';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API មិនបានកំណត់រចនាសម្ព័ន្ធទេ។ សូមប្តូរទៅ Local AI។';

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
  String get unknownPlaceName => 'មិនស្គាល់ឈ្មោះ';

  @override
  String get islamicPlaceFallback => 'កន្លែងអ៊ីស្លាម';
}
