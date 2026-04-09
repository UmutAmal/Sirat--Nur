// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

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
  String get fajr => 'פאג\'ר';

  @override
  String get sunrise => 'זְרִיחָה';

  @override
  String get dhuhr => 'דהוהר';

  @override
  String get asr => 'אסר';

  @override
  String get maghrib => 'מגריב';

  @override
  String get isha => 'אשה';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'הגיע הזמן ל-$prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'הגיע הזמן להתפלל $prayerName.';
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
  String get locationServiceDisabled => 'שירות המיקום מושבת.';

  @override
  String get locationPermissionDenied => 'הרשאת המיקום נדחתה.';

  @override
  String citiesCount(String count) {
    return '$count ערים';
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
  String get appErrorOccurred => 'אירעה שגיאה';

  @override
  String get appUnknownError => 'שגיאה לא ידועה';

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
  String get duaMeaning1 =>
      'אחרים מתפללים, \'אדוננו, תן לנו טוב בעולם הזה ובעולם הבא, והגן עלינו מייסורי האש\'.';

  @override
  String get duaMeaning2 =>
      'אלוהים אינו מכביד על אף נשמה יותר ממה שהיא יכולה לשאת: כל אחד זוכה בכל הטוב שעשה, וסובל מהרע שלו- \'אדוני, אל תיקח אותנו למשימה אם אנחנו שוכחים או עושים טעויות. אדוני, אל תכביד עלינו כפי שהעמסת על אלו שלפנינו. אדוני, אל תעמיס עלינו יותר ממה שיש לנו כוח לשאת. סלח לנו, סלח לנו, ורחם עלינו. אתה המגן שלנו, אז עזור לנו נגד הכופרים\'.';

  @override
  String get duaMeaning3 =>
      '\'אדוננו, אל תיתן ללבנו לסטות לאחר שהנחית אותנו. תן לנו את רחמיך: אתה הנותן תמיד.';

  @override
  String get duaMeaning4 =>
      'אדוני, תן ​​שאני וצאצאיי נמשיך בתפילה. אדוננו, קבל את בקשתי.';

  @override
  String get duaMeaning5 =>
      'והורד את כנך בענווה כלפיהם בחסד ואמרת \'אדוני, רחם עליהם, כשם שדאגו לי כשהייתי קטן\'.';

  @override
  String get duaMeaning6 =>
      'יתעלה אלוהים, זה ששולט באמת. [נביא], אל תמהר לדקלם לפני שההתגלות תהיה שלמה במלואה אלא אמור \'אדוני, הגדל אותי לדעת!\'';

  @override
  String get duaMeaning7 =>
      'אמור [הנביא], \'אדוני, סלח ורחם: אתה הרחמן מכולם\'.';

  @override
  String get duaMeaning8 =>
      'אלה המתפללים, \'אדוננו, תן לנו שמחה על בני זוגנו וצאצאינו. תן לנו דוגמאות טובות למי שמודע לך\'.';

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
  String get hadith => 'חדית\'';

  @override
  String get hadithCollection => 'אוסף חדית\'';

  @override
  String get hadithBooks => 'ספרי חדית\'';

  @override
  String get searchHadith => 'חפש בחדית\'';

  @override
  String get asmaulHusna => 'אסמה-אול-חוסנה';

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
  String get openInYoutube => 'פתח ביוטיוב';

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
  String get islamicNewYear => 'ראש השנה האסלאמית';

  @override
  String get mawlidAnNabi => 'מאוליד אן-נבי';

  @override
  String get specialDayDateRamadanStart => '1 רמדאן';

  @override
  String get specialDayDateLaylatAlQadr => '27 רמדאן';

  @override
  String get specialDayDateEidAlFitr => '1 שווואל';

  @override
  String get specialDayDateEidAlAdha => '10 דהול היג\'ה';

  @override
  String get specialDayDateIslamicNewYear => '1 מוהר\"ם';

  @override
  String get specialDayDateMawlidAnNabi => '12 רבי אל-אוואל';

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
    return 'שגיאת מצפן: $error';
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
    return 'בדוק את $appName: אפליקציית סגנון החיים האיסלאמי האולטימטיבית! $url';
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
  String get zikrCompletedMashAllah => 'הושלם! משאאללה';

  @override
  String get zikrMeaningSubhanAllah => 'אללה הוא הרבה מעל כל חוסר שלמות.';

  @override
  String get zikrMeaningAlhamdulillah => 'כל השבחים שייכים לאללה.';

  @override
  String get zikrMeaningAllahuAkbar => 'אללה הוא הגדול ביותר.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'אין אלוהים מלבד אללה.';

  @override
  String get zikrMeaningAstaghfirullah => 'אני מבקש את סליחתו של אללה.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata => 'אין כוח ואין כוח אלא דרך אללה.';

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
  String get diagnosticsNotSet => 'לא מוגדר';

  @override
  String get diagnosticsPrayerProfile => 'פרופיל תפילה';

  @override
  String get diagnosticsPrayerSource => 'רשות התפילה';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'מותאם אישית / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'זוויות מותאמות אישית ידניות (ללא מקור מוסדי)';

  @override
  String get diagnosticsCloudDriven => 'מונע בענן';

  @override
  String get diagnosticsAdhanAudioAssets => 'קובצי שמע של אדהאן';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'נכסי אודיו של הקוראן';

  @override
  String get diagnosticsAudioAssets => 'נכסי אודיו';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count קבצים';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'קריאת המניפסט נכשלה: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'מקומות לוקליזציה';

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
  String get dailyVerse => 'פסוק יומי';

  @override
  String get todaysIbadah => 'איבאדה של היום';

  @override
  String get quickAccess => 'גישה מהירה';

  @override
  String get assistant => 'עוֹזֵר';

  @override
  String get places => 'מקומות';

  @override
  String get library => 'סִפְרִיָה';

  @override
  String get analytics => 'אנליטיקס';

  @override
  String get dailyDuas => 'דואס יומי';

  @override
  String essentialDuas(String count) {
    return '$count דואס חיוני';
  }

  @override
  String get duaUnavailableTitle => 'דואס מאומת אינם זמינים עדיין';

  @override
  String get duaUnavailableBody =>
      'עדיין לא סונכרנו דואס יומיים מאומתים עם המכשיר הזה. התחבר למקור הענן כדי לטעון דואס ממקור במקום סתירה לא מאומתת.';

  @override
  String get duaCategoryQuranic => 'דואה קוראנית';

  @override
  String get duaCategoryMorningEvening => 'בוקר וערב';

  @override
  String get duaCategoryTasbih => 'טסביח';

  @override
  String get duaCategoryProtection => 'הֲגָנָה';

  @override
  String get duaCategoryBeginning => 'התחלות';

  @override
  String get duaCategorySleep => 'לִישׁוֹן';

  @override
  String get duaCategoryFoodDrink => 'אוכל ושתייה';

  @override
  String get duaCategoryForgiveness => 'סְלִיחָה';

  @override
  String get duaCategoryHome => 'בַּיִת';

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
  String get islamicEducation => 'חינוך איסלאמי';

  @override
  String get sukunAudioTitle => 'נופי סאונד של סוקון';

  @override
  String get hadithCollections => 'אוספי חדית\'';

  @override
  String get hadithSourcePending => 'מקור מאומת בהמתנה';

  @override
  String get hadithUnavailableTitle => 'אוספי חדית\' מאומתים אינם זמינים עדיין';

  @override
  String get hadithUnavailableBody =>
      'המבנה הזה עדיין תלוי בפיד חדית\' חיצוני לא מאומת. הגלישה בחדית\' נשארת מושבתת עד שמסנכרן מערך נתונים ממקור.';

  @override
  String get paywallUnlockAll => 'פתח את כל התכונות למסע הרוחני שלך';

  @override
  String get paywallFeature1Title => 'עוזר עצבי פלוס';

  @override
  String get paywallFeature1Desc =>
      'שאלות ותשובות המופעלות על ידי AI ללא הגבלה';

  @override
  String get paywallFeature2Title => 'אופליין ללא הגבלה';

  @override
  String get paywallFeature2Desc => 'הורד את כל הדקלומים';

  @override
  String get paywallFeature3Title => 'עיצובים בלעדיים';

  @override
  String get paywallFeature3Desc => 'ערכות נושא וגופנים מובחרים';

  @override
  String get paywallFeature4Title => 'ללא פרסומות';

  @override
  String get paywallFeature4Desc => 'אפס פרסומות';

  @override
  String get paywallGetAccess => 'קבל גישה לכל החיים - \$1.00';

  @override
  String get restorePurchases => 'שחזור רכישות';

  @override
  String get zakatCalculator => 'מחשבון זכאת';

  @override
  String get zakatGold => 'זהב (אלטין)';

  @override
  String get zakatSilver => 'כסף (Gümüş)';

  @override
  String get zakatCashBank => 'מזומן / בנק';

  @override
  String get zakatBusiness => 'עֵסֶק';

  @override
  String get zakatInvestments => 'השקעות';

  @override
  String get zakatWeightGrams => 'משקל (ג)';

  @override
  String get zakatPricePerGram => 'מחיר/גרם';

  @override
  String get zakatTotalAmount => 'סכום כולל';

  @override
  String get zakatInventoryValue => 'ערך מלאי';

  @override
  String get zakatDebts => 'חובות';

  @override
  String get zakatTotal => 'סַך הַכֹּל';

  @override
  String get calculateZakat => 'חשב זקאת';

  @override
  String get nisabNotReached => 'לניסאב לא הגיע. זכאת לא מחייבת.';

  @override
  String get totalZakat => 'סך הכל זכאת';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'ניסאב: $nisab • נכסים: $assets';
  }

  @override
  String get zakatGoldZakat => 'זהב זכאת';

  @override
  String get zakatSilverZakat => 'כסף זכאת';

  @override
  String get zakatCashZakat => 'מזומן זכאת';

  @override
  String get zakatBusinessZakat => 'ביזנס זכאת';

  @override
  String get zakatInvestmentZakat => 'השקעות זכאת';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'הגעת למגבלת השאילתות היומית. שדרג לפרימיום ללא הגבלה.';

  @override
  String get chatbotErrorMsg => 'לא הצלחתי ליצור תגובה. אנא נסה שוב.';

  @override
  String get chatbotOfflinePrompt =>
      'בסיס הידע האיסלאמי הלא מקוון המאומת עדיין מאוצר. אתה יכול להפעיל חילוץ לא מקוון עכשיו, אבל זה יציג רק הודעות בטוחות מוגבלות עד שמערך הנתונים של המקור יהיה מוכן.\n\nהאם ברצונך להפעיל חילוץ לא מקוון?';

  @override
  String get chatbotOfflineSwitched =>
      'החזרה במצב לא מקוון מופעלת. תשובות אסלאמיות מקומיות מאומתות עדיין אינן מוכנות.';

  @override
  String get chatbotOfflineDownloadLabel => 'אפשר סתירה לא מקוונת';

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
  String get sukunMixerSubtitle => 'מיקסר טבע וקוראן';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'סוקון (טבע)';

  @override
  String get sukunRainOfMercy => 'גשם של רחמים';

  @override
  String get sukunGardenOfPeace => 'גן השלום';

  @override
  String get sukunMidnightCalm => 'שקט חצות';

  @override
  String get sukunOceanTawheed => 'אושן טאוויד';

  @override
  String get sukunUnavailableTitle => 'נופי סאונד אינם זמינים';

  @override
  String get sukunUnavailableBody =>
      'המבנה הזה עדיין לא כולל את הנכסים הדרושים לנוף הסאונד של Sukun.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'רצף יום';

  @override
  String get bestStreak => 'הרצף הטוב ביותר';

  @override
  String get chatbotCloudAiLabel => 'ענן AI';

  @override
  String get chatbotLocalAiLabel => 'סתירה לא מקוונת';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'אפשר סתירה לא מקוונת';

  @override
  String chatbotQueriesLeft(String count) {
    return 'נותרו $count';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API לא מוגדר. נא לעבור ל- AI מקומי.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] הדרכה אסלאמית מקומית מאומתת אינה זמינה עדיין. עבור ל-Cloud AI לקבלת תשובות מקוריות.';

  @override
  String get mosques => 'מסגדים';

  @override
  String get halalFood => 'אוכל חלאל';

  @override
  String get placesSearchArea => 'חפש באזור זה';

  @override
  String get nearbyMosques => 'מסגדים בקרבת מקום';

  @override
  String get islamicSchools => 'בתי ספר איסלאמיים';

  @override
  String placesFoundCount(String count) {
    return 'נמצאו $count';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance ק\"מ משם';
  }

  @override
  String placesApiError(String statusCode) {
    return 'שגיאת API: $statusCode';
  }

  @override
  String get placesNetworkError => 'שגיאת רשת. אנא נסה שוב.';

  @override
  String get unknownPlaceName => 'שם לא ידוע';

  @override
  String get islamicPlaceFallback => 'מקום איסלאמי';

  @override
  String get asmaMeaning1 => 'המיטיב';

  @override
  String get asmaMeaning2 => 'הרחמן';

  @override
  String get asmaMeaning3 => 'המלך / האדון הנצחי';

  @override
  String get asmaMeaning4 => 'הקדוש ביותר';

  @override
  String get asmaMeaning5 => 'מקור השלום';

  @override
  String get asmaMeaning6 => 'נותן הביטחון';

  @override
  String get asmaMeaning7 => 'השומר';

  @override
  String get asmaMeaning8 => 'היקר / האדיר ביותר';

  @override
  String get asmaMeaning9 => 'הקומפלר';

  @override
  String get asmaMeaning10 => 'הגדולים ביותר';

  @override
  String get asmaMeaning11 => 'הבורא';

  @override
  String get asmaMeaning12 => 'יוצר הסדר';

  @override
  String get asmaMeaning13 => 'מעצב היופי';

  @override
  String get asmaMeaning14 => 'הסולח';

  @override
  String get asmaMeaning15 => 'המשכנע';

  @override
  String get asmaMeaning16 => 'הנותן של הכל';

  @override
  String get asmaMeaning17 => 'המקיים';

  @override
  String get asmaMeaning18 => 'הפותחן';

  @override
  String get asmaMeaning19 => 'היודע מכולם';

  @override
  String get asmaMeaning20 => 'המכווץ';

  @override
  String get asmaMeaning21 => 'המשחרר';

  @override
  String get asmaMeaning22 => 'האבאסר';

  @override
  String get asmaMeaning23 => 'המעלה';

  @override
  String get asmaMeaning24 => 'מעניק הכבוד';

  @override
  String get asmaMeaning25 => 'המשפיל';

  @override
  String get asmaMeaning26 => 'השומע של כולם';

  @override
  String get asmaMeaning27 => 'הרואה מכולם';

  @override
  String get asmaMeaning28 => 'השופט';

  @override
  String get asmaMeaning29 => 'הצודק';

  @override
  String get asmaMeaning30 => 'העדין';

  @override
  String get asmaMeaning31 => 'הכל מודע';

  @override
  String get asmaMeaning32 => 'הקדמה';

  @override
  String get asmaMeaning33 => 'המפואר';

  @override
  String get asmaMeaning34 => 'הסולח הגדול';

  @override
  String get asmaMeaning35 => 'מתגמל הכרת התודה';

  @override
  String get asmaMeaning36 => 'הגבוה ביותר';

  @override
  String get asmaMeaning37 => 'הגדולים ביותר';

  @override
  String get asmaMeaning38 => 'השומר';

  @override
  String get asmaMeaning39 => 'המזון';

  @override
  String get asmaMeaning40 => 'החשבון';

  @override
  String get asmaMeaning41 => 'המג\'סטיק';

  @override
  String get asmaMeaning42 => 'הנדיבים';

  @override
  String get asmaMeaning43 => 'המשמר';

  @override
  String get asmaMeaning44 => 'המשיב לתפילה';

  @override
  String get asmaMeaning45 => 'הכל';

  @override
  String get asmaMeaning46 => 'החכמים המושלם';

  @override
  String get asmaMeaning47 => 'האוהב';

  @override
  String get asmaMeaning48 => 'המפואר ביותר';

  @override
  String get asmaMeaning49 => 'המתים';

  @override
  String get asmaMeaning50 => 'העד';

  @override
  String get asmaMeaning51 => 'האמת';

  @override
  String get asmaMeaning52 => 'הנאמן המספיק';

  @override
  String get asmaMeaning53 => 'בעל כל הכוח';

  @override
  String get asmaMeaning54 => 'הכוחני';

  @override
  String get asmaMeaning55 => 'המגן';

  @override
  String get asmaMeaning56 => 'השבחים';

  @override
  String get asmaMeaning57 => 'השמאי';

  @override
  String get asmaMeaning58 => 'היוצר';

  @override
  String get asmaMeaning59 => 'המשחזר';

  @override
  String get asmaMeaning60 => 'נותן החיים';

  @override
  String get asmaMeaning61 => 'לוקח החיים';

  @override
  String get asmaMeaning62 => 'זה שיש לו חיי נצח והוא תמיד חי.';

  @override
  String get asmaMeaning63 => 'המקיים את עצמו';

  @override
  String get asmaMeaning64 => 'המאתר';

  @override
  String get asmaMeaning65 => 'זה עם כבוד ותפארת גדולים, נדיבות ונדיבות בשפע.';

  @override
  String get asmaMeaning66 => 'היחיד';

  @override
  String get asmaMeaning67 => 'האחד';

  @override
  String get asmaMeaning68 => 'המבוקש על ידי כולם';

  @override
  String get asmaMeaning69 => 'העוצמה';

  @override
  String get asmaMeaning70 => 'בורא כל הכוח';

  @override
  String get asmaMeaning71 => 'המזרז';

  @override
  String get asmaMeaning72 => 'המעכב';

  @override
  String get asmaMeaning73 => 'הראשון';

  @override
  String get asmaMeaning74 => 'האחרון';

  @override
  String get asmaMeaning75 => 'המניפסט';

  @override
  String get asmaMeaning76 => 'הנסתר';

  @override
  String get asmaMeaning77 => 'המושל';

  @override
  String get asmaMeaning78 => 'העליון';

  @override
  String get asmaMeaning79 => 'עושה הטוב';

  @override
  String get asmaMeaning80 => 'המדריך לתשובה';

  @override
  String get asmaMeaning81 => 'הנוקם';

  @override
  String get asmaMeaning82 => 'הסולח';

  @override
  String get asmaMeaning83 => 'הקלמנט';

  @override
  String get asmaMeaning84 => 'הבעלים / הריבון של כולם';

  @override
  String get asmaMeaning85 => 'בעל הוד והוד';

  @override
  String get asmaMeaning86 => 'השוויון';

  @override
  String get asmaMeaning87 => 'המלקט';

  @override
  String get asmaMeaning88 => 'העשירה';

  @override
  String get asmaMeaning89 => 'המעשיר';

  @override
  String get asmaMeaning90 => 'המונע נזק';

  @override
  String get asmaMeaning91 => 'מביא הפגיעה';

  @override
  String get asmaMeaning92 => 'מעניק ההטבות';

  @override
  String get asmaMeaning93 => 'האור';

  @override
  String get asmaMeaning94 => 'המדריך';

  @override
  String get asmaMeaning95 => 'היוצר';

  @override
  String get asmaMeaning96 => 'הנצח';

  @override
  String get asmaMeaning97 => 'היורש';

  @override
  String get asmaMeaning98 => 'המדריך הכי צדיק';

  @override
  String get asmaMeaning99 => 'המטופל';
}
