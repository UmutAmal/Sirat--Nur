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
  String get splashTagline => 'דרך האור האסלאמית';

  @override
  String get home => 'דף הבית';

  @override
  String get quran => 'קוראן';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'זיקר';

  @override
  String get calendar => 'לוח שנה';

  @override
  String get settings => 'הגדרות';

  @override
  String get nextPrayer => 'התפילה הבאה';

  @override
  String get prayerTimes => 'Prayer Times';

  @override
  String get continueReading => 'Continue Reading';

  @override
  String get getLifetimePro => 'Get Lifetime Pro';

  @override
  String get unlockTajweed => 'Unlock Tajweed & Advanced Features';

  @override
  String get prayerCalculation => 'חישוב זמני תפילה';

  @override
  String get method => 'שיטת חישוב';

  @override
  String get madhab => 'שיטה הלכתית לעסר';

  @override
  String get surahs => 'סורות';

  @override
  String get ayahs => 'איאת';

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
  String get dataStorage => 'נתונים ואחסון';

  @override
  String get clearCache => 'נקה את המטמון';

  @override
  String get cacheClearedSuccess => 'המטמון נוקה בהצלחה';

  @override
  String get location => 'מיקום';

  @override
  String get language => 'שפה';

  @override
  String get selectLanguage => 'בחר שפה';

  @override
  String get searchLanguage => 'Search 180+ languages...';

  @override
  String get systemDefault => 'מערכת ברירת מחדל';

  @override
  String get currentLocation => 'מיקום נוכחי (GPS)';

  @override
  String get locationServiceDisabled => 'שירות המיקום מושבת.';

  @override
  String get locationPermissionDenied => 'הרשאת המיקום נדחתה.';

  @override
  String get locationDetectionFailed =>
      'לא ניתן היה לזהות את המיקום שלך. אנא בחר עיר באופן ידני או נסה שוב.';

  @override
  String citiesCount(String count) {
    return '$count ערים';
  }

  @override
  String get search => 'חפש';

  @override
  String get searchHint => 'חפש...';

  @override
  String get noResults => 'לא נמצאו תוצאות';

  @override
  String get loading => 'טוען...';

  @override
  String get error => 'שגיאה';

  @override
  String get appErrorOccurred => 'אירעה שגיאה';

  @override
  String get appUnknownError => 'שגיאה לא ידועה';

  @override
  String get quranLoadFailed =>
      'לא ניתן היה לטעון את תוכן הקוראן. אנא נסה שוב.';

  @override
  String get retry => 'נסה שוב';

  @override
  String get refreshAction => 'רענן';

  @override
  String get cancel => 'בטל';

  @override
  String get save => 'שמור';

  @override
  String get delete => 'מחק';

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
  String get surah => 'סורה';

  @override
  String ayahLabel(String ayah) {
    return 'איה $ayah';
  }

  @override
  String get juz => 'ג׳וז';

  @override
  String get page => 'עמוד';

  @override
  String get reading => 'Reading';

  @override
  String get recitation => 'Recitation';

  @override
  String get translation => 'Translation';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'טוען תפסיר...';

  @override
  String get tafsirSourceLabel => 'מקור תפסיר';

  @override
  String get tafsirNoSurahFound => 'לא נמצא טפסיר לסורה זו.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'לא נמצא טפסיר עבור איה $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'לא ניתן היה להטעין את תפסיר.';

  @override
  String get tafsirNoTextForAyah => 'אין טקסט תפירה עבור האיה הזו.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'מוריד את תפסיר $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'טוען תפסיר $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'מקור תפסיר החזיר שגיאת HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned => 'מקור התפסר שנבחר לא החזיר ערכים.';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get addBookmark => 'הוסף סימניה';

  @override
  String get removeBookmark => 'הסר סימניה';

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
  String get liveTv => 'טלוויזיה בשידור חי';

  @override
  String get watchLive => 'צפו בשידור חי';

  @override
  String get streamError => 'שגיאת זרם';

  @override
  String get reload => 'טען מחדש';

  @override
  String get openInYoutube => 'פתח ביוטיוב';

  @override
  String get ibadahTracker => 'מעקב איבאדה';

  @override
  String get fasting => 'צום';

  @override
  String get quranReading => 'קריאת הקוראן';

  @override
  String get prayers => 'תפילות';

  @override
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '${hours}h $minutesמ\'';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '$minutesמ\'';
  }

  @override
  String get prayerRemainingUnavailable => '--';

  @override
  String get dhikrCount => 'Dhikr Count';

  @override
  String get weeklyProgress => 'התקדמות שבועית';

  @override
  String get monthlyProgress => 'Monthly Progress';

  @override
  String get statistics => 'Statistics';

  @override
  String get hijriCalendar => 'לוח השנה ההיג\'רי';

  @override
  String get gregorianCalendar => 'Gregorian Calendar';

  @override
  String get today => 'היום';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get specialDays => 'ימים מיוחדים';

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
  String get qiblaDirection => 'כיוון קיבלה';

  @override
  String get compass => 'מצפן';

  @override
  String get degrees => 'degrees';

  @override
  String get north => 'North';

  @override
  String get qiblaFound => 'הקיבלה נמצאה!';

  @override
  String get turnDevice => 'סובב את המכשיר לכיוון הקיבלה';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'שגיאת מצפן: $error';
  }

  @override
  String get qiblaSensorUnavailable => 'חיישן מצפן אינו זמין במכשיר זה.';

  @override
  String get qiblaLocationRequiredTitle => 'נדרש מיקום עבור Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'הגדר את המיקום האמיתי שלך לפני השימוש במצפן Qibla כך שניתן יהיה לחשב את הכיוון במדויק.';

  @override
  String get adhanNotificationChannelName => 'התראות אדהאן';

  @override
  String get adhanNotificationChannelDescription =>
      'התראות על זמן תפילה עם צליל אדהן.';

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
  String get theme => 'נושא';

  @override
  String get lightMode => 'מצב אור';

  @override
  String get darkMode => 'מצב כהה';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'אודות';

  @override
  String get version => 'גרסה';

  @override
  String get privacyPolicy => 'מדיניות פרטיות';

  @override
  String get termsOfService => 'תנאים והגבלות';

  @override
  String get contactUs => 'צור קשר';

  @override
  String get rateApp => 'דרג את האפליקציה';

  @override
  String get shareApp => 'שתף את האפליקציה';

  @override
  String shareAppMessage(String appName, String url) {
    return 'בדוק את $appName: אפליקציית סגנון החיים האיסלאמי האולטימטיבית! $url';
  }

  @override
  String get downloadManager => 'מנהל הורדות';

  @override
  String get downloads => 'הורדות';

  @override
  String get downloading => 'מוריד...';

  @override
  String get downloadComplete => 'ההורדה הושלמה';

  @override
  String get downloadFailed => 'ההורדה נכשלה';

  @override
  String get offlineMode => 'מצב לא מקוון';

  @override
  String get noInternet => 'אין חיבור לאינטרנט';

  @override
  String get checkConnection => 'אנא בדוק את החיבור שלך';

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
  String get getStarted => 'התחל';

  @override
  String get skip => 'Skip';

  @override
  String get next => 'הבא';

  @override
  String get done => 'בוצע';

  @override
  String get onboarding1Title => 'ברוכים הבאים לסיראט-אי נור';

  @override
  String get onboarding1Desc =>
      'אפליקציית המלווה האיסלמית המלאה שלך לזמני תפילה, קוראן ועוד';

  @override
  String get onboarding2Title => 'זמני תפילה';

  @override
  String get onboarding2Desc => 'זמני תפילה מדויקים על סמך מיקומך';

  @override
  String get onboarding3Title => 'קוראן ועוד';

  @override
  String get onboarding3Desc =>
      'קרא את הקוראן, עקוב אחר הקריאה שלך וחקור תוכן אסלאמי';

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
  String get tapToCount => 'הקש כדי לספור';

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
  String get offlineDownloadManager => 'מנהל הורדות לא מקוון';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'פנה אחסון פנימי במכשיר.';

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
  String get audioVoice => 'קול אודיו';

  @override
  String get audioVoiceMisharyAlafasy => 'זכר (מישרי אלאפסי)';

  @override
  String get audioVoiceAbdulBaset => 'זכר (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'זכר (סודאים)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'כיול קיבלה';

  @override
  String get compassSmoothing => 'החלקת מצפן';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'היסט כיול';

  @override
  String currentOffset(Object offset) {
    return 'נוכחי: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'התאם אם המצפן שלך זקוק לתיקון ידני. ערכים חיוביים מסתובבים בכיוון השעון.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'אבחון';

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
  String get diagnosticsUiAudioAssets => 'נכסי אודיו של ממשק משתמש';

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
    return '$count נתמך';
  }

  @override
  String get diagnosticsQuranDataset => 'מערך נתונים של הקוראן';

  @override
  String get diagnosticsQuranSurahs => 'סורות הקוראן';

  @override
  String get diagnosticsQuranAyahs => 'פסוקי הקוראן';

  @override
  String get diagnosticsQuranJuzMetadata => 'מטא-נתוני ג\'וז של הקוראן';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'חסרים טבלאות ענן ב-Supabase; חילופין מאגד פעיל';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'בדיקת ענן נכשלה: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'חסרים מטא נתונים בענן juz; ארוזות נסיגה מבנית פעילה';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'בדיקה מבנית בענן נכשלה: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 => 'נדרש כיול. סובב את המכשיר באיור 8.';

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
  String get premiumProductUnavailable =>
      'מוצר פרימיום אינו זמין כעת. אנא נסה שוב מאוחר יותר.';

  @override
  String get premiumPurchaseFailed =>
      'לא ניתן היה להשלים את הרכישה. אנא נסה שוב.';

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
      'אסלמו אלאיקום! אני העוזר האיסלאמי שלך. שאל אותי על תפילה, צום, זקאט או כל נושא אסלאמי.';

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
  String get chatbotOfflineDownloadLabel => 'הפעל גיבוי לא מקוון';

  @override
  String get downloadPreparing => 'מכין הורדה...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'מוריד את הסורה $surah / $total';
  }

  @override
  String get downloadCompleted => 'כל הסורות כבר הורדו עבור הדקלם הזה.';

  @override
  String get offlineQuranAudioPacks => 'חבילות אודיו של הקוראן לא מקוונות';

  @override
  String storedOnDeviceMb(String size) {
    return 'מאוחסן במכשיר: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return 'הורדו $downloaded / $total סורות';
  }

  @override
  String get redownloadMissingRepair => 'תיקון / הורדה חסר';

  @override
  String get downloadAction => 'הורד';

  @override
  String get resumeDownload => 'המשך הורדה';

  @override
  String get deleteDownloadedFiles => 'מחק קבצים שהורדת';

  @override
  String get downloadCancelling => 'מבטל...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'ההורדה בוטלה עבור $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'ההורדה הושלמה עבור $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'ההורדה הסתיימה עבור $reciter עם $failed סורות כושלות ($downloaded/$total הורדו).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'נמחקו קבצים לא מקוונים עבור $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'מקורות אודיו מאומתים של הקוראן אינם זמינים כעת.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'חבילת האודיו המאומתת של הקוראן אינה שלמה ($available/$total). רענן את זרע הענן ונסה שוב.';
  }

  @override
  String get chatbotHint => 'שאל שאלה...';

  @override
  String get chatbotThinking => 'חושב...';

  @override
  String get sukunMixerSubtitle => 'מיקסר טבע וקוראן';

  @override
  String get audioPlayFailed => 'השמעת אודיו נכשלה';

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
  String get prayerCompletion => 'השלמת התפילות';

  @override
  String get streaks => 'פסים';

  @override
  String get dayStreak => 'רצף יום';

  @override
  String get bestStreak => 'הרצף הטוב ביותר';

  @override
  String get chatbotCloudAiLabel => 'ענן AI';

  @override
  String get chatbotLocalAiLabel => 'גיבוי לא מקוון';

  @override
  String get chatbotUseCloudAi => 'השתמש ב-Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'הפעל גיבוי לא מקוון';

  @override
  String chatbotQueriesLeft(String count) {
    return 'נותרו $count';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API אינו מוגדר. הדרכה אסלאמית מאומתת לא זמינה עדיין.';

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
  String get placesLocationRequiredTitle => 'נדרש מיקום';

  @override
  String get placesLocationRequiredBody =>
      'תחילה הגדר מיקום כך שניתן יהיה לחפש במדויק מסגדים, אוכל חלאל ובתי ספר איסלאמיים בקרבת מקום.';

  @override
  String get placesMapTilesUnavailableTitle => 'אריחי מפה אינם זמינים';

  @override
  String get placesMapTilesUnavailableBody =>
      'מקור אריחי מפה מאומת עדיין לא מוגדר עבור המבנה הזה. מקומות קרובים עדיין יכולים להיטען מהמיקום השמור שלך.';

  @override
  String get placesDataSourceUnavailableTitle => 'נתוני המקומות אינם זמינים';

  @override
  String get placesDataSourceUnavailableBody =>
      'עדיין לא הוגדרה נקודת קצה נתונים של מקומות מאומתים עבור המבנה הזה. הגדר את PLACES_OVERPASS_API_URL לשרת proxy או ספק מאושר לפני הפעלת חיפוש בקרבת מקום.';

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
