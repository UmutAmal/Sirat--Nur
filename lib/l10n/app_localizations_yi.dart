// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Yiddish (`yi`).
class AppLocalizationsYi extends AppLocalizations {
  AppLocalizationsYi([String locale = 'yi']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'יסלאַמיק וועג פון ליכט';

  @override
  String get home => 'Home';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'זיקר';

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
  String get sunrise => 'זונופגאַנג';

  @override
  String get dhuhr => 'דהוהר';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'מאַהריב';

  @override
  String get isha => 'ישא';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'צייט פֿאַר $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'עס איז צייט צו דאַוונען $prayerName.';
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
  String get systemDefault => 'סיסטעם פעליקייַט';

  @override
  String get currentLocation => 'Current Location (GPS)';

  @override
  String get locationServiceDisabled => 'אָרט דינסט איז פאַרקריפּלט.';

  @override
  String get locationPermissionDenied => 'אָרט דערלויבעניש געלייקנט.';

  @override
  String get locationDetectionFailed =>
      'קען נישט דעטעקט דיין אָרט. ביטע קלייַבן אַ שטאָט מאַניואַלי אָדער פּרובירן ווידער.';

  @override
  String citiesCount(String count) {
    return '$count שטעט';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'קיין רעזולטאטן געפונען';

  @override
  String get loading => 'לאָדן...';

  @override
  String get error => 'טעות';

  @override
  String get appErrorOccurred => 'א טעות איז פארגעקומען';

  @override
  String get appUnknownError => 'אומבאַקאַנט טעות';

  @override
  String get quranLoadFailed =>
      'קווראַן אינהאַלט קען נישט זיין לאָודיד. ביטע פּרוּווט ווידער.';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'דערפרישן';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'ויסמעקן';

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
    return 'יאָ $ayah';
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
  String get tafsirLoading => 'לאָודינג טאַפסיר ...';

  @override
  String get tafsirSourceLabel => 'טפסיר מקור';

  @override
  String get tafsirNoSurahFound => 'קיין טאַפסיר געפונען פֿאַר דעם סוראַה.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'קיין טאַפסיר געפונען פֿאַר ייַאַה $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'טאפסיר האט נישט געקאנט באלאדן.';

  @override
  String get tafsirNoTextForAyah => 'קיין טאַפסיר טעקסט פֿאַר דעם ייַאַה.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'דאַונלאָודינג טאַפסיר $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'לאָודינג טאַפסיר $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir מקור האָט אומגעקערט אַן HTTP $statusCode טעות.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'דער אויסגעקליבטער טאַפסיר מקור האָט ניט אומגעקערט קיין איינסן.';

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
      'אנדערע דאַוונען, \'אונדזער האר, געבן אונדז גוט אין דעם וועלט און אין די לעבעאַפטער, און באַשיצן אונדז פון די מאַטערן פון די פייער.\'';

  @override
  String get duaMeaning2 =>
      'גאָט טוט ניט מאַסע קיין נשמה מיט מער ווי עס קענען טראָגן: יעדער גיינז וועלכער גוט עס האט געטאן, און סאַפערז זייַן שלעכט - \'האר, טאָן ניט נעמען אונדז צו אַרבעט אויב מיר פאַרגעסן אָדער מאַכן מיסטייקס. האר, טאָן ניט מאַסע אונדז ווי איר בערד די פֿאַר אונדז. האר, טאָן ניט מאַסע אונדז מיט מער ווי מיר האָבן שטאַרקייַט צו טראָגן. מוחל אונדז, מוחל אונדז, און האָבן רחמנות אויף אונדז. איר זענט אונדזער פּראָטעקטאָר, אַזוי העלפֿן אונדז קעגן די דיסבעליעווערס.';

  @override
  String get duaMeaning3 =>
      '\'אונדזער האר, טאָן ניט לאָזן אונדזער הערצער אָפּנייגן נאָך איר האָבן גיידיד אונדז. שענק אונדז דיין רחמנות: איר זענט דער שטענדיק געבן.';

  @override
  String get duaMeaning4 =>
      'האר, שענקען אַז איך און מיין זאמען זאלן האַלטן די תפילה. אונדזער האר, אָננעמען מיין בקשה.';

  @override
  String get duaMeaning5 =>
      'און לאָז אַראָפּ דיין פליגל אין עניוות צו זיי אין גוטהאַרציקייַט און זאָגן, \'האר, האָבן רחמנות אויף זיי, פּונקט ווי זיי האָבן זאָרגן פֿאַר מיר ווען איך בין קליין.\'';

  @override
  String get duaMeaning6 =>
      'דערהויבן איז גאָט, דער איינער וואס איז באמת אין קאָנטראָל. [נביא], טאָן ניט קאַמיש צו זאָגן איידער די התגלות איז גאָר גאַנץ אָבער זאָגן, \'האר, פאַרגרעסערן מיר אין וויסן!\'';

  @override
  String get duaMeaning7 =>
      'זאָגן [נביא], \'האר, מוחל און האָבן רחמנות: דו ביסט דער ראַכמאָנעסדיק פון אַלע.\'';

  @override
  String get duaMeaning8 =>
      'די וואס דאַוונען, \'אונדזער האר, געבן אונדז פרייד אין אונדזער ספּאַוסאַז און זאמען. מאַכן אונדז גוטע ביישפילן צו די וואס זענען אַווער פון איר.';

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
  String get hadith => 'חדיטה';

  @override
  String get hadithCollection => 'האַדיטה זאַמלונג';

  @override
  String get hadithBooks => 'האַדיטה ספר';

  @override
  String get searchHadith => 'זוכן האַדיטה';

  @override
  String get asmaulHusna => 'אַסמאַ-על-חוסנאַ';

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
  String get openInYoutube => 'עפֿענען אין יאָוטובע';

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
    return '$hoursה $minutesם';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '$minutesמ';
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
  String get islamicNewYear => 'יסלאַמיק ניו יאָר';

  @override
  String get mawlidAnNabi => 'מוליד אן נאבי';

  @override
  String get specialDayDateRamadanStart => '1 ראַמאַדאַן';

  @override
  String get specialDayDateLaylatAlQadr => '27 ראַמאַדאַן';

  @override
  String get specialDayDateEidAlFitr => '1 שאָוואַל';

  @override
  String get specialDayDateEidAlAdha => '10 דהל היג\'א';

  @override
  String get specialDayDateIslamicNewYear => '1 מוהארם';

  @override
  String get specialDayDateMawlidAnNabi => '12 רבי אל-אווואל';

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
    return 'קאָמפּאַס טעות: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'קאָמפּאַס סענסער איז ניט בנימצא אויף דעם מיטל.';

  @override
  String get qiblaLocationRequiredTitle => 'אָרט פארלאנגט פֿאַר קיבלאַ';

  @override
  String get qiblaLocationRequiredBody =>
      'שטעלן דיין פאַקטיש אָרט איידער ניצן די Qibla קאָמפּאַס אַזוי די ריכטונג קענען זיין קאַלקיאַלייטיד אַקיעראַטלי.';

  @override
  String get adhanNotificationChannelName => 'אַדהאַן נאָוטאַפאַקיישאַנז';

  @override
  String get adhanNotificationChannelDescription =>
      'תפילה צייט אַלערץ מיט אַדהאַן געזונט.';

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
  String get theme => 'טעמע';

  @override
  String get lightMode => 'ליכט מאָדע';

  @override
  String get darkMode => 'טונקל מאָדע';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'About';

  @override
  String get version => 'ווערסיע';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get termsOfService => 'Terms of Service';

  @override
  String get contactUs => 'Contact Us';

  @override
  String get rateApp => 'קורס אַפּ';

  @override
  String get shareApp => 'ייַנטיילן אַפּ';

  @override
  String shareAppMessage(String appName, String url) {
    return 'טשעק $appName: די לעצט יסלאַמיק לייפסטייל אַפּ! $url';
  }

  @override
  String get downloadManager => 'דאַונלאָוד מאַנאַגער';

  @override
  String get downloads => 'דאַונלאָודז';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'אראפקאפיע גאַנץ';

  @override
  String get downloadFailed => 'אראפקאפיע ניט אַנדערש';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'קיין אינטערנעט פֿאַרבינדונג';

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
  String get tapToCount => 'צאַפּן צו ציילן';

  @override
  String get zikrCompletedMashAllah => 'געענדיקט! מאַשאַלאַ';

  @override
  String get zikrMeaningSubhanAllah =>
      'אַלאַ איז ווייַט אויבן יעדער ימפּערפעקשאַן.';

  @override
  String get zikrMeaningAlhamdulillah => 'אַלע לויב געהערט צו אַלאַ.';

  @override
  String get zikrMeaningAllahuAkbar => 'אַלאַ איז דער גרעסטער.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'עס איז קיין גאָט אָבער אַלאַ.';

  @override
  String get zikrMeaningAstaghfirullah => 'איך זוכן אַלאַ ס מחילה.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'עס איז קיין מאַכט און קיין שטאַרקייַט אַחוץ דורך אַלאַ.';

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
  String get offlineDownloadManager => 'אָפפלינע דאַונלאָוד מאַנאַגער';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'פריי ינערלעך מיטל סטאָרידזש.';

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
  String get audioVoice => 'אַודיאָ קול';

  @override
  String get audioVoiceMisharyAlafasy => 'זכר (מישאַרי אַלאַפאַסי)';

  @override
  String get audioVoiceAbdulBaset => 'זכר (אַבדולבאַסעט)';

  @override
  String get audioVoiceSudais => 'זכר (סודאַיס)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'קיבלאַ קאַלאַבריישאַן';

  @override
  String get compassSmoothing => 'קאָמפּאַס סמאָאָאָטינג';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'קאַלאַבריישאַן אָפסעט';

  @override
  String currentOffset(Object offset) {
    return 'קראַנט: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'סטרויערן אויב דיין קאָמפּאַס דאַרף אַ מאַנואַל קערעקשאַן. positive וואַלועס דרייען קלאַקווייז.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'דיאַגנאָסטיקס';

  @override
  String get diagnosticsNotSet => 'ניט באַשטימט';

  @override
  String get diagnosticsPrayerProfile => 'תפילה פּראָפיל';

  @override
  String get diagnosticsPrayerSource => 'תפילה אויטאָריטעט';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manual custom angles (no institutional source)';

  @override
  String get diagnosticsCloudDriven => 'וואָלקן געטריבן';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI אַודיאָ אַסעץ';

  @override
  String get diagnosticsQuranAudioAssets => 'קאָראַן אַודיאָ אַסעץ';

  @override
  String get diagnosticsAudioAssets => 'אַודיאָ אַסעץ';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count files';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifest read failed: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Localization Locales';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count געשטיצט';
  }

  @override
  String get diagnosticsQuranDataset => 'קווראַן דאַטאַסעט';

  @override
  String get diagnosticsQuranSurahs => 'קוראַן סוראַהס';

  @override
  String get diagnosticsQuranAyahs => 'קווראַן ייַאַהס';

  @override
  String get diagnosticsQuranJuzMetadata => 'קווראַן דזשוז מעטאַדאַטאַ';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'וואָלקן טישן פעלנדיק אין Supabase; באַנדאַלד פאַלבאַקק אַקטיוו';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'וואָלקן טשעק ניט אַנדערש: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'וואָלקן דזשוז מעטאַדאַטאַ פעלנדיק; באַנדאַלד סטראַקטשעראַל פאַלבאַק אַקטיוו';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'וואָלקן סטראַקטשעראַל טשעק ניט אַנדערש: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'קאַלאַבריישאַן פארלאנגט. דרייען די מיטל אין פיגור-8.';

  @override
  String get dailyVerse => 'טעגלעך ווערס';

  @override
  String get todaysIbadah => 'היינטיגע איבאדא';

  @override
  String get quickAccess => 'שנעל אַקסעס';

  @override
  String get assistant => 'אַססיסטאַנט';

  @override
  String get places => 'ערטער';

  @override
  String get library => 'ביבליאָטעק';

  @override
  String get analytics => 'אַנאַליטיקס';

  @override
  String get dailyDuas => 'טעגלעך דואַס';

  @override
  String essentialDuas(String count) {
    return '$count יקערדיק דואַס';
  }

  @override
  String get duaUnavailableTitle => 'וועריפיעד דואַס זענען נישט בנימצא נאָך';

  @override
  String get duaUnavailableBody =>
      'וועריפיעד טעגלעך דואַס זענען נישט סינסעד צו דעם מיטל נאָך. קאָננעקט צו די וואָלקן מקור צו לאָדן סאָרסעד דואַס אַנשטאָט פון אַן אַנוועראַפייד פאַלבאַק.';

  @override
  String get duaCategoryQuranic => 'קווראַניק דואַ';

  @override
  String get duaCategoryMorningEvening => 'מאָרגן & אָוונט';

  @override
  String get duaCategoryTasbih => 'טאַסביה';

  @override
  String get duaCategoryProtection => 'שוץ';

  @override
  String get duaCategoryBeginning => 'אָנהייב';

  @override
  String get duaCategorySleep => 'שלאָף';

  @override
  String get duaCategoryFoodDrink => 'עסנוואַרג & טרינקען';

  @override
  String get duaCategoryForgiveness => 'מחילה';

  @override
  String get duaCategoryHome => 'היים';

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
  String get islamicEducation => 'יסלאַמיק בילדונג';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'האַדיטה זאַמלונגען';

  @override
  String get hadithSourcePending => 'וועראַפייד מקור פּענדינג';

  @override
  String get hadithUnavailableTitle =>
      'וועריפיעד האַדיטה זאַמלונגען זענען נישט בנימצא נאָך';

  @override
  String get hadithUnavailableBody =>
      'דעם בויען דעפּענדס נאָך אויף אַן אַנוועראַפייד פונדרויסנדיק האַדיטה פיטער. Hadith בראַוזינג סטייז פאַרקריפּלט ביז אַ סאָורסעד דאַטאַסעט איז סינסעד.';

  @override
  String get paywallUnlockAll =>
      'ופשליסן אַלע פֿעיִקייטן פֿאַר דיין רוחניות נסיעה';

  @override
  String get premiumProductUnavailable =>
      'פּרעמיום פּראָדוקט איז ניט בנימצא רעכט איצט. ביטע פּרובירן ווידער שפּעטער.';

  @override
  String get premiumPurchaseFailed =>
      'קויפן קען נישט זיין געענדיקט. ביטע פּרוּווט ווידער.';

  @override
  String get paywallFeature1Title => 'נעוראַל אַססיסטאַנט פּלוס';

  @override
  String get paywallFeature1Desc => 'אַנלימאַטאַד AI-Powered Q&A';

  @override
  String get paywallFeature2Title => 'אַנלימאַטאַד אָפפלינע';

  @override
  String get paywallFeature2Desc => 'אָפּלאָדירן אַלע רעסיטאַטיאָנס';

  @override
  String get paywallFeature3Title => 'ויסשליסיק דיזיינז';

  @override
  String get paywallFeature3Desc => 'פּרעמיום טעמעס און פאַנץ';

  @override
  String get paywallFeature4Title => 'אַד-פריי';

  @override
  String get paywallFeature4Desc => 'נול אַדווערטייזמאַנץ';

  @override
  String get paywallGetAccess => 'באַקומען לעבן אַקסעס - \$ 1.00';

  @override
  String get restorePurchases => 'ומקערן פּערטשאַסאַז';

  @override
  String get zakatCalculator => 'זאַקאַט קאַלקולאַטאָר';

  @override
  String get zakatGold => 'גאָלד (אַלטין)';

  @override
  String get zakatSilver => 'זילבער (Gümüş)';

  @override
  String get zakatCashBank => 'געלט / באַנק';

  @override
  String get zakatBusiness => 'ביזנעס';

  @override
  String get zakatInvestments => 'ינוועסטמאַנץ';

  @override
  String get zakatWeightGrams => 'וואָג (ג)';

  @override
  String get zakatPricePerGram => 'פּרייַז / ג';

  @override
  String get zakatTotalAmount => 'גאַנץ סומע';

  @override
  String get zakatInventoryValue => 'ינוואַנטאָרי ווערט';

  @override
  String get zakatDebts => 'דעץ';

  @override
  String get zakatTotal => 'גאַנץ';

  @override
  String get calculateZakat => 'Calculate Zakat';

  @override
  String get nisabNotReached => 'ניסאב נישט דערגרייכט. זַכָּאָה חוּלָקָא.';

  @override
  String get totalZakat => 'גאַנץ זאַקאַט';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'ניסאַב: $nisab • אַסעץ: $assets';
  }

  @override
  String get zakatGoldZakat => 'גאָלד זאַקאַט';

  @override
  String get zakatSilverZakat => 'זילבער זאקאט';

  @override
  String get zakatCashZakat => 'מזומן זאקאט';

  @override
  String get zakatBusinessZakat => 'ביזנעס זאקאט';

  @override
  String get zakatInvestmentZakat => 'ינוועסטמענט זאַקאַט';

  @override
  String get chatbotGreeting =>
      'אַסאַלאַמו אַלאַקום! איך בין דיין יסלאַמיק אַסיסטאַנט. פרעגן מיר וועגן תפילה, פאסטן, זאַקאַט אָדער קיין יסלאַמיק טעמע.';

  @override
  String get chatbotLimitReached =>
      'טעגלעך אָנפֿרעג לימיט ריטשט. אַפּגרייד צו פּרעמיום פֿאַר אַנלימאַטאַד.';

  @override
  String get chatbotErrorMsg =>
      'איך קען נישט געבן אַ ענטפער. ביטע פּרוּווט ווידער.';

  @override
  String get chatbotOfflinePrompt =>
      'די וועראַפייד אָפפלינע יסלאַמיק וויסן באַזע איז נאָך קערייטיד. איר קענט איצט געבן אָפפלינע פאַלבאַק, אָבער עס וועט בלויז ווייַזן לימיטעד זיכער אַרטיקלען ביז די סאָורסעד דאַטאַסעט איז גרייט.\n\nוואָלט איר ווי צו געבן אָפפלינע פאַלבאַק?';

  @override
  String get chatbotOfflineSwitched =>
      'אָפפלינע פאַלבאַק ענייבאַלד. וועראַפייד היגע יסלאַמיק ענטפֿערס זענען נישט גרייט נאָך.';

  @override
  String get chatbotOfflineDownloadLabel => 'געבן אָפפלינע פאַלבאַקק';

  @override
  String get downloadPreparing => 'פּריפּערינג אראפקאפיע ...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'דאַונלאָודינג סוראַה $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'אַלע סוראַהס שוין דאַונלאָודיד פֿאַר דעם רעסיטער.';

  @override
  String get offlineQuranAudioPacks => 'אָפפלינע קאָראַן אַודיאָ פּאַקס';

  @override
  String storedOnDeviceMb(String size) {
    return 'סטאָרד אויף מיטל: $size מב';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total סורה דאַונלאָודיד';
  }

  @override
  String get redownloadMissingRepair => 'פאַרריכטן / אראפקאפיע פעלנדיק';

  @override
  String get downloadAction => 'אראפקאפיע';

  @override
  String get resumeDownload => 'נעמענ זיכ ווידער אראפקאפיע';

  @override
  String get deleteDownloadedFiles => 'ויסמעקן דאַונלאָודיד טעקעס';

  @override
  String get downloadCancelling => 'קאַנסאַלד ...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'אראפקאפיע קאַנסאַלד פֿאַר $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'די אראפקאפיע איז געענדיקט פֿאַר $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'די אראפקאפיע איז געענדיקט פֿאַר $reciter מיט $failed דורכפאַל סוראַהס ($downloaded/$total דאַונלאָודיד).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'אויסגעמעקט אָפפלינע טעקעס פֿאַר $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'וועראַפייד קאָראַן אַודיאָ קוואלן זענען אַנאַוויילאַבאַל רעכט איצט.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'וועראַפייד קווראַן אַודיאָ פּאַק איז דערענדיקט ($available/$total). דערפרישן וואָלקן זוימען און פּרוּווט ווידער.';
  }

  @override
  String get chatbotHint => 'פרעג א שאלה...';

  @override
  String get chatbotThinking => 'טראכטן...';

  @override
  String get sukunMixerSubtitle => 'נאַטור & קוור\'אַן מיקסער';

  @override
  String get audioPlayFailed => 'אַודיאָ פּלייבאַק ניט אַנדערש';

  @override
  String get sukunNatureLabel => 'סוקון (נאַטור)';

  @override
  String get sukunRainOfMercy => 'רעגן פון רחמנות';

  @override
  String get sukunGardenOfPeace => 'גאָרטן פון שלום';

  @override
  String get sukunMidnightCalm => 'האַלבנאַכט רויק';

  @override
  String get sukunOceanTawheed => 'אקעאן טאוויד';

  @override
  String get sukunUnavailableTitle => 'סאָונדסקאַפּעס אַנאַוויילאַבאַל';

  @override
  String get sukunUnavailableBody =>
      'דער בויען טוט נישט אַרייַננעמען די פארלאנגט סוקונ סאָונדסקאַפּע אַסעץ נאָך.';

  @override
  String get prayerCompletion => 'תפילה קאַמפּלישאַן';

  @override
  String get streaks => 'סטרייקס';

  @override
  String get dayStreak => 'טאָג סטריק';

  @override
  String get bestStreak => 'Best streak';

  @override
  String get chatbotCloudAiLabel => 'וואָלקן אַי';

  @override
  String get chatbotLocalAiLabel => 'אָפפלינע פאַלבאַקק';

  @override
  String get chatbotUseCloudAi => 'ניצן קלאָוד אַי (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'געבן אָפפלינע פאַלבאַקק';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count לינקס';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'קלאָוד אַפּי איז נישט קאַנפיגיערד. Verified offline Islamic guidance is not available yet.';

  @override
  String get chatbotLocalNoInfo =>
      '[אָפפלינע] וועראַפייד היגע יסלאַמיק גיידאַנס איז נישט בנימצא נאָך. באַשטימען צו קלאָוד אַי פֿאַר מקור ענטפֿערס.';

  @override
  String get mosques => 'מאָסקוועס';

  @override
  String get halalFood => 'האַלל פוד';

  @override
  String get placesSearchArea => 'זוכן דעם געגנט';

  @override
  String get nearbyMosques => 'נירביי מאָסקוועס';

  @override
  String get islamicSchools => 'יסלאַמיק שולן';

  @override
  String placesFoundCount(String count) {
    return '$count געפונען';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance קילאמעטער אַוועק';
  }

  @override
  String placesApiError(String statusCode) {
    return 'אַפּי טעות: $statusCode';
  }

  @override
  String get placesNetworkError => 'נעץ טעות. ביטע פּרוּווט ווידער.';

  @override
  String get placesLocationRequiredTitle => 'אָרט פארלאנגט';

  @override
  String get placesLocationRequiredBody =>
      'שטעלן אַ אָרט ערשטער אַזוי נירביי מאָסקוועס, האַלאַל עסנוואַרג און יסלאַמיק שולן קענען זיין געזוכט אַקיעראַטלי.';

  @override
  String get placesMapTilesUnavailableTitle => 'מאַפּע טיילז אַנאַוויילאַבאַל';

  @override
  String get placesMapTilesUnavailableBody =>
      'א וועראַפייד מאַפּע קאַכל מקור איז נישט קאַנפיגיערד פֿאַר דעם בויען נאָך. נעאַרבי ערטער קענען נאָך לאָדן פֿון דיין געראטעוועט אָרט.';

  @override
  String get placesDataSourceUnavailableTitle => 'Places data unavailable';

  @override
  String get placesDataSourceUnavailableBody =>
      'א וועראַפייד ערטער דאַטן ענדפּוינט איז נישט קאַנפיגיערד פֿאַר דעם בויען נאָך. שטעלן PLACES_OVERPASS_API_URL צו אַ באוויליקט פראקסי אָדער שפּייַזער איידער איר געבן נירביי זוכן.';

  @override
  String get unknownPlaceName => 'אומבאַקאַנט נאָמען';

  @override
  String get islamicPlaceFallback => 'יסלאַמיק אָרט';

  @override
  String get asmaMeaning1 => 'די וווילטויק';

  @override
  String get asmaMeaning2 => 'דער רחמנותדיקער';

  @override
  String get asmaMeaning3 => 'דער מלך / אייביק האר';

  @override
  String get asmaMeaning4 => 'די מערסט הייליק';

  @override
  String get asmaMeaning5 => 'דער מקור פון שלום';

  @override
  String get asmaMeaning6 => 'דער גיטער פון זיכערהייט';

  @override
  String get asmaMeaning7 => 'דער גאַרדיאַן';

  @override
  String get asmaMeaning8 => 'די טייַער / די מערסט גוואַלדיק';

  @override
  String get asmaMeaning9 => 'דער קאָמפּעלער';

  @override
  String get asmaMeaning10 => 'די גרעסטע';

  @override
  String get asmaMeaning11 => 'דער באשעפער';

  @override
  String get asmaMeaning12 => 'דער פאַבריקאַנט פון סדר';

  @override
  String get asmaMeaning13 => 'די שייפּער פון שיינקייט';

  @override
  String get asmaMeaning14 => 'די מוחל';

  @override
  String get asmaMeaning15 => 'דער סובדוער';

  @override
  String get asmaMeaning16 => 'דער געבן פון אַלע';

  @override
  String get asmaMeaning17 => 'דער סוסטאַינער';

  @override
  String get asmaMeaning18 => 'דער אָפּענער';

  @override
  String get asmaMeaning19 => 'דער קענער פון אלע';

  @override
  String get asmaMeaning20 => 'דער קאָנסטריקטאָר';

  @override
  String get asmaMeaning21 => 'דער ריליווער';

  @override
  String get asmaMeaning22 => 'דער אַבאַסער';

  @override
  String get asmaMeaning23 => 'דער עקסאַלטער';

  @override
  String get asmaMeaning24 => 'דער בעל הכבוד';

  @override
  String get asmaMeaning25 => 'דער כיומיליייטער';

  @override
  String get asmaMeaning26 => 'דער צוהערער פון אַלע';

  @override
  String get asmaMeaning27 => 'דער זעער פֿון אַלע';

  @override
  String get asmaMeaning28 => 'דער ריכטער';

  @override
  String get asmaMeaning29 => 'דער גערעכט';

  @override
  String get asmaMeaning30 => 'די סאַטאַל איינער';

  @override
  String get asmaMeaning31 => 'די אַלע אַווער';

  @override
  String get asmaMeaning32 => 'די פאָרעבערינג';

  @override
  String get asmaMeaning33 => 'די גלענצנדיק';

  @override
  String get asmaMeaning34 => 'דער גרויסער פארגיער';

  @override
  String get asmaMeaning35 => 'דער ריוואָרדער פון טהאַנקפולנעסס';

  @override
  String get asmaMeaning36 => 'דער העכסטן';

  @override
  String get asmaMeaning37 => 'דער גרעסטער';

  @override
  String get asmaMeaning38 => 'דער פּרעסערווער';

  @override
  String get asmaMeaning39 => 'דער נערישער';

  @override
  String get asmaMeaning40 => 'דער רעקאנער';

  @override
  String get asmaMeaning41 => 'די מייַעסטעטיש';

  @override
  String get asmaMeaning42 => 'די ברייטהאַרציקייט';

  @override
  String get asmaMeaning43 => 'דער וואך';

  @override
  String get asmaMeaning44 => 'דער ענטפער צו תפילה';

  @override
  String get asmaMeaning45 => 'די אַלע קאַמפּריכענשאַן';

  @override
  String get asmaMeaning46 => 'די פּערפעקטלי קלוג';

  @override
  String get asmaMeaning47 => 'די לאַווינג איינער';

  @override
  String get asmaMeaning48 => 'די מערסט גלאָריאַס איינער';

  @override
  String get asmaMeaning49 => 'דער רעסוררעקטאָר';

  @override
  String get asmaMeaning50 => 'דער עדות';

  @override
  String get asmaMeaning51 => 'דער אמת';

  @override
  String get asmaMeaning52 => 'די אַלע-גענוג טראַסטי';

  @override
  String get asmaMeaning53 => 'דער בעל פון אַלע שטאַרקייט';

  @override
  String get asmaMeaning54 => 'די פאָרספול';

  @override
  String get asmaMeaning55 => 'דער פּראָטעקטאָר';

  @override
  String get asmaMeaning56 => 'די געלויבט';

  @override
  String get asmaMeaning57 => 'דער אַפּפּראַיסער';

  @override
  String get asmaMeaning58 => 'דער אָריגינאַטאָר';

  @override
  String get asmaMeaning59 => 'די רעסטאָרער';

  @override
  String get asmaMeaning60 => 'דער גיטער פון לעבן';

  @override
  String get asmaMeaning61 => 'דער נעמען פון לעבן';

  @override
  String get asmaMeaning62 => 'די אלץ לעבעדיקע';

  @override
  String get asmaMeaning63 => 'די זעלבסט-סאַבסיסטינג סוסטאַינער';

  @override
  String get asmaMeaning64 => 'דער פינדער';

  @override
  String get asmaMeaning65 => 'די גלאָריאַס';

  @override
  String get asmaMeaning66 => 'דער בלויז איינער';

  @override
  String get asmaMeaning67 => 'דער איינער';

  @override
  String get asmaMeaning68 => 'דער איינער געזוכט דורך אַלע';

  @override
  String get asmaMeaning69 => 'די שטאַרק';

  @override
  String get asmaMeaning70 => 'דער באשעפער פון אַלע מאַכט';

  @override
  String get asmaMeaning71 => 'דער עקספּעדיטער';

  @override
  String get asmaMeaning72 => 'די פאַרהאַלטן';

  @override
  String get asmaMeaning73 => 'דער ערשטער';

  @override
  String get asmaMeaning74 => 'די לעצטע';

  @override
  String get asmaMeaning75 => 'דער מאַניפעסט';

  @override
  String get asmaMeaning76 => 'די פאַרבאָרגן';

  @override
  String get asmaMeaning77 => 'דער גאווערנאר';

  @override
  String get asmaMeaning78 => 'דער העכסטער';

  @override
  String get asmaMeaning79 => 'דער טוער פון גוטן';

  @override
  String get asmaMeaning80 => 'דער גייד צו תשובה';

  @override
  String get asmaMeaning81 => 'דער אַווענגער';

  @override
  String get asmaMeaning82 => 'דער פארגיער';

  @override
  String get asmaMeaning83 => 'דער קלעמענט';

  @override
  String get asmaMeaning84 => 'דער באַזיצער / הערשער פון אַלע';

  @override
  String get asmaMeaning85 => 'דער בעל פון מאַדזשעסטי און ברייטהאַרציקייט';

  @override
  String get asmaMeaning86 => 'די יוישער';

  @override
  String get asmaMeaning87 => 'דער גאַדערער';

  @override
  String get asmaMeaning88 => 'דער רייך';

  @override
  String get asmaMeaning89 => 'דער ענריטשער';

  @override
  String get asmaMeaning90 => 'דער פאַרהיטער פון שאָדן';

  @override
  String get asmaMeaning91 => 'דער ברענגען פון שאָדן';

  @override
  String get asmaMeaning92 => 'דער באשעפער פון בענעפיטן';

  @override
  String get asmaMeaning93 => 'די ליכט';

  @override
  String get asmaMeaning94 => 'דער פירער';

  @override
  String get asmaMeaning95 => 'דער אָריגינאַטאָר';

  @override
  String get asmaMeaning96 => 'די ייביק';

  @override
  String get asmaMeaning97 => 'דער ינכעריטאָר';

  @override
  String get asmaMeaning98 => 'דער מערסט צדיקים גייד';

  @override
  String get asmaMeaning99 => 'דער פאציענט איינער';
}
