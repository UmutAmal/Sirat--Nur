// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tigrinya (`ti`).
class AppLocalizationsTi extends AppLocalizations {
  AppLocalizationsTi([String locale = 'ti']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'እስላማዊ መንገዲ ብርሃን';

  @override
  String get home => 'ገዛ';

  @override
  String get quran => 'ቁርኣን';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'ዚክሪ';

  @override
  String get calendar => 'Calendar';

  @override
  String get settings => 'ቅጥዕታት';

  @override
  String get nextPrayer => 'Next Prayer';

  @override
  String get prayerTimes => 'ናይ ጸሎት ግዜ';

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
  String get fajr => 'ፋጅር';

  @override
  String get sunrise => 'ምብራቕ ጸሓይ';

  @override
  String get dhuhr => 'ድሑር';

  @override
  String get asr => 'ኣስር';

  @override
  String get maghrib => 'መግሪብ';

  @override
  String get isha => 'ኢሻ';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'ግዜ ን $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '$prayerName ንጸሎት ግዜ እዩ።';
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
  String get locationServiceDisabled => 'ኣገልግሎት ኣቀማምጣ ተሰናኺሉ ኣሎ።';

  @override
  String get locationPermissionDenied => 'ናይ ቦታ ፍቓድ ተኸልኪሉ።';

  @override
  String get locationDetectionFailed =>
      'ኣቀማምጣኻ ክፈልጥ ኣይከኣለን። በጃኹም ብኢድኩም ከተማ ምረጹ ወይ ድማ እንደገና ፈትኑ።';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => 'ድለዩ።';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'ዝኾነ ውጽኢት ኣይተረኽበን።';

  @override
  String get loading => 'ኣብ ምጽዓን...';

  @override
  String get error => 'ጌጋ';

  @override
  String get appErrorOccurred => 'ጌጋ ኣጋጢሙ';

  @override
  String get appUnknownError => 'ዘይፍለጥ ጌጋ';

  @override
  String get quranLoadFailed => 'ትሕዝቶ ቁርኣን ክጽዓን ኣይከኣለን። በጃኹም ደጊምኩም ፈትኑ።';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'ምሕዳስ';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'ምድምሳስ';

  @override
  String get edit => 'Edit';

  @override
  String get close => 'Close';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'አይኮንን';

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
  String get tafsirLoading => 'ኣብ ምጽዓን tafsir...';

  @override
  String get tafsirSourceLabel => 'ታፍሲር ምንጪ';

  @override
  String get tafsirNoSurahFound => 'ነዛ ሱራ ዝኸውን ተፍሲር ኣይተረኽበን።';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'ንኣያ $ayah ዝኾነ ታፍሲር ኣይተረኽበን።';
  }

  @override
  String get tafsirLoadFailed => 'ታፍሲር ክጽዓን ኣይከኣለን።';

  @override
  String get tafsirNoTextForAyah => 'ነዚ ኣያሕ ዝኸውን ታፍሲር ጽሑፍ የለን።';

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
    return 'ምንጪ ታፍሲር ናይ HTTP $statusCode ጌጋ መሊሱ።';
  }

  @override
  String get tafsirNoEntriesReturned => 'እቲ ዝተመርጸ ምንጪ ታፍሲር ዝኾነ ምእታው ኣይመለሰን።';

  @override
  String get tafsirCacheUnavailable =>
      'Verified tafsir ገና ካብ መስመር ወጻኢ ኣይርከብን። ቅድሚ ምድህሳስ ምንጪ ዘለዎ tafsir ዳታሴት ምትእስሳር።';

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
      'ካልኦት ድማ ‘ጐይታና ኣብ ዓለምን ኣብ ኣኼራን ሰናይ ሃበና፡ ካብ ስቓይ ሓዊ ሓልወና’ ኢሎም ይጽልዩ።';

  @override
  String get duaMeaning2 =>
      'እግዚኣብሄር ንዝኾነት ነፍሲ ካብቲ ክትጻወሮ እትኽእል ንላዕሊ ኣይጽዕናን እዩ: ነፍሲ ወከፍ ዝገበሮ ሰናይ ይረክብ: ሕማቕ ድማ ይሳቐ- ‘ ጎይታ እንተረሲዕና ወይ እንተተጋግና ኣብ ዕማም ኣይትውሰደና። ጎይታ ከምቲ ነቶም ቅድሜና ዝሰከምካዮም ኣይትጾረና። ጎይታ ካብቲ ክንስከሞ ዘለና ሓይሊ ንላዕሊ ኣይትጽዕነና። ይቕረ ግበረልና፡ ይቕረ ግበረልና፡ ምሕረት ግበረልና። ንስኻ ሓላዊና ኢኻ እሞ ኣንጻር ካፍር ሓግዘና።’ ኢሉ መለሰሉ።';

  @override
  String get duaMeaning3 =>
      '‘ጐይታና ድሕሪ ምምራሕካ ልብና ከይትዘልል። ምሕረትካ ሃበና: ንስኻ ወትሩ ወሃቢ ኢኻ።';

  @override
  String get duaMeaning4 => 'ጎይታ ኣነን ዘርኣይን ጸሎት ክንቅጽል ፍቐደለይ። ጎይታና ንሕቶይ ተቐበል።';

  @override
  String get duaMeaning5 =>
      'ብትሕትና ድማ ክንፍኻ ብሕያውነት ናብኦም ኣውሪድካ ‘ጐይታይ ከምቲ ንእሽቶይ ከለኹ ዝሓልዩኒ ምሓሮም’ በሎም።';

  @override
  String get duaMeaning6 =>
      'እቲ ብሓቂ ዝቆጻጸር ኣምላኽ ልዕል ይበል። [ነቢይ]፣ እቲ ምግላጽ ምሉእ ብምሉእ ከይተዛዘመ ንምንባብ ኣይትሃወኽ እምበር ‘ጐይታይ ብፍልጠት ኣዕብየኒ!’ በል።';

  @override
  String get duaMeaning7 => '[ነቢይ] በል፡ ‘ጐይታይ ይቕረ በለን ምሓርን፡ ንስኻ ካብ ኩሉ መሓሪ ኢኻ።’';

  @override
  String get duaMeaning8 =>
      'እቶም ‘ጐይታና ኣብ መጻምድትናን ዘርእናን ሓጐስ ሃበና። ነቶም ብዛዕባኻ ዝፈልጡ ጽቡቕ ኣብነት ግበረና’።';

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
  String get hadith => 'ሓዲስ';

  @override
  String get hadithCollection => 'እኩብ ሓዲስ';

  @override
  String get hadithBooks => 'መጻሕፍቲ ሓዲስ';

  @override
  String get searchHadith => 'ሓዲስ ድለዩ።';

  @override
  String get asmaulHusna => 'ኣስማ-ኡል-ሑስና።';

  @override
  String get namesOfAllah => 'Names of Allah';

  @override
  String get liveTv => 'ቀጥታዊ ቲቪ';

  @override
  String get watchLive => 'Watch Live';

  @override
  String get streamError => 'Stream error';

  @override
  String get reload => 'Reload';

  @override
  String get openInYoutube => 'ኣብ ዩቱብ ክፈት';

  @override
  String get ibadahTracker => 'ኢባዳ ትራከር';

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
  String get islamicNewYear => 'እስላማዊ ሓድሽ ዓመት';

  @override
  String get mawlidAnNabi => 'ማውሊድ ኣን-ናቢ';

  @override
  String get specialDayDateRamadanStart => '1 ሮሞዳን';

  @override
  String get specialDayDateLaylatAlQadr => '27 ሮሞዳን';

  @override
  String get specialDayDateEidAlFitr => '1 ሻውዋል';

  @override
  String get specialDayDateEidAlAdha => '10 ዙል ሂጃ';

  @override
  String get specialDayDateIslamicNewYear => '1 ሙሓረም';

  @override
  String get specialDayDateMawlidAnNabi => '12 ረቢ ኣልኣውዋል';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'ኣንፈት ቂብላ';

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
    return 'ናይ ኮምፓስ ጌጋ፡ $error';
  }

  @override
  String get qiblaSensorUnavailable => 'ኣብዚ መሳርሒ ኮምፓስ ሴንሰር የለን።';

  @override
  String get qiblaLocationRequiredTitle => 'ንቂብላ ዘድሊ ቦታ';

  @override
  String get qiblaLocationRequiredBody =>
      'Set your actual location before using the Qibla compass so the direction can be calculated accurately.';

  @override
  String get adhanNotificationChannelName => 'ኣድሃን መፍለጢታት';

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
  String get theme => 'ቴማ';

  @override
  String get lightMode => 'Light Mode';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'About';

  @override
  String get version => 'ስሪት እዩ።';

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
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'ዳውንሎድ ማናጀር';

  @override
  String get downloads => 'ዳውንሎድ ምግባር';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Download ምሉእ ብምሉእ';

  @override
  String get downloadFailed => 'ምውራድ ኣይተዓወተን';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'ምትእስሳር ኢንተርነት የለን';

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
  String get onboarding1Title => 'እንቋዕ ናብ ሲራት-ı ኑር ብደሓን መጻእኩም';

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
  String get tapToCount => 'ንምቑጻር ጠውቕ';

  @override
  String get zikrCompletedMashAllah => 'ተዛዚሙ! ማሽኣላህ';

  @override
  String get zikrMeaningSubhanAllah => 'ኣላህ ልዕሊ ኩሉ ዘይፍጽምና ኣዝዩ እዩ።';

  @override
  String get zikrMeaningAlhamdulillah => 'ኩሉ ምስጋና ናይ ኣላህ እዩ።';

  @override
  String get zikrMeaningAllahuAkbar => 'ኣላህ እቲ ዝዓበየ እዩ።';

  @override
  String get zikrMeaningLaIlahaIllallah => 'ብዘይካ ኣላህ ካልእ ኣምላኽ የለን።';

  @override
  String get zikrMeaningAstaghfirullah => 'ካብ ኣላህ ይቕሬታ ​​እደሊ ኣለኹ።';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata => 'ብዘይካ ብኣሏህ ሓይልን ሓይልን የለን።';

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
  String get offlineDownloadManager => 'ካብ መስመር ወጻኢ ዳውንሎድ ማናጀር';

  @override
  String get manageDatasets => 'ዓበይቲ ናይ ኦፍላይን ድምጺ & ዳታሴት ፓክስ ምምሕዳር።';

  @override
  String get freeStorage => 'ውሽጣዊ መኽዘን መሳርሒ ነጻ ምግባር።';

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
  String get audioVoice => 'ድምጺ ድምጺ';

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
  String get qiblaCalibration => 'ቂብላ ምዕቃን';

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
  String get apply => 'ለውጢ ተግባራዊ ምግባር';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'መርመራታት';

  @override
  String get diagnosticsNotSet => 'ኣይተቐመጠን።';

  @override
  String get diagnosticsPrayerProfile => 'ናይ ጸሎት ፕሮፋይል';

  @override
  String get diagnosticsPrayerSource => 'በዓል መዚ ጸሎት';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource => 'ማንዋል ብሕታዊ ኩርናዓት (ትካላዊ ምንጪ የለን)';

  @override
  String get diagnosticsCloudDriven => 'ደበና ዝመርሖ';

  @override
  String get diagnosticsAdhanAudioAssets => 'ኣድሃን ድምጺ ንብረት';

  @override
  String get diagnosticsUiAudioAssets => 'UI ድምጺ ንብረት';

  @override
  String get diagnosticsQuranAudioAssets => 'ቁርኣን ድምጺ ንብረት';

  @override
  String get diagnosticsAudioAssets => 'ናይ ድምጺ ንብረት';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count ፋይላት';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'ማኒፌስት ንባብ ኣይተዓወተን: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'ሎካላይዜሽን ሎካላት';

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
      'ኣብ Supabase ዝጎደሉ ናይ ደበና ሰደቓታት፤ bundled fallback ንጡፍ እዩ።';

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
  String get dailyVerse => 'መዓልታዊ ጥቕሲ';

  @override
  String get todaysIbadah => 'ናይ ሎሚ ኢባዳ';

  @override
  String get quickAccess => 'ቅልጡፍ ምብጻሕ';

  @override
  String get assistant => 'ሓጋዚ';

  @override
  String get places => 'ቦታታት';

  @override
  String get library => 'ቤተ ንባበ';

  @override
  String get analytics => 'ትንታነታት';

  @override
  String get dailyDuas => 'መዓልታዊ ዱዋስ';

  @override
  String essentialDuas(String count) {
    return '$count essential duas';
  }

  @override
  String get duaUnavailableTitle => 'ዝተረጋገጹ ዱዓታት ገና ኣይተረኽቡን።';

  @override
  String get duaUnavailableBody =>
      'ዝተረጋገጹ መዓልታዊ ዱዓታት ክሳብ ሕጂ ምስዚ መሳርሒ ኣይተሰማምዑን። ኣብ ክንዲ ዘይተረጋገጸ ምምላስ ምምላስ ምንጪ ዘለዎም ዱዓታት ንምጽዓን ምስቲ ምንጪ ደበና ምትእስሳር።';

  @override
  String get duaCategoryQuranic => 'ቁርኣናዊ ዱዓ';

  @override
  String get duaCategoryMorningEvening => 'ንግሆ & ምሸት';

  @override
  String get duaCategoryTasbih => 'ታስቢህ';

  @override
  String get duaCategoryProtection => 'ምክልኻል';

  @override
  String get duaCategoryBeginning => 'መጀመርታ';

  @override
  String get duaCategorySleep => 'ደቅስ';

  @override
  String get duaCategoryFoodDrink => 'መግቢን መስተን።';

  @override
  String get duaCategoryForgiveness => 'ይቕሬታ';

  @override
  String get duaCategoryHome => 'ገዛ';

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
  String get islamicEducation => 'እስላማዊ ትምህርቲ';

  @override
  String get sukunAudioTitle => 'ሱኩን ሳውንድስኬፕስ';

  @override
  String get hadithCollections => 'እኩባት ሓዲስ';

  @override
  String get hadithSourcePending => 'ዝተረጋገጸ ምንጪ ኣብ ምጽባይ ይርከብ።';

  @override
  String get hadithUnavailableTitle =>
      'Verified hadith collections are not available yet';

  @override
  String get hadithUnavailableBody =>
      'This build still depends on an unverified external hadith feed. Hadith browsing stays disabled until a sourced dataset is synced.';

  @override
  String get paywallUnlockAll => 'ንመንፈሳዊ ጉዕዞኻ ዝኸውን ኩሉ ባህርያት ክፈት';

  @override
  String get premiumProductUnavailable =>
      'ፕሪምየም ፍርያት ኣብዚ ሕጂ እዋን የለን። በጃኹም ድሒርኩም ደጊምኩም ፈትኑ።';

  @override
  String get premiumPurchaseFailed => 'ዕድጊ ክዛዘም ኣይከኣለን። በጃኹም ደጊምኩም ፈትኑ።';

  @override
  String get paywallFeature1Title => 'ኒውራል ኣሲስተንት ፕላስ';

  @override
  String get paywallFeature1Desc => 'ደረት ኣልቦ ብAI ዝሰርሕ ሕቶን መልስን';

  @override
  String get paywallFeature2Title => 'ደረት ኣልቦ ካብ መስመር ወጻኢ';

  @override
  String get paywallFeature2Desc => 'ኩሉ ቅብኣታት ኣውርድዎ።';

  @override
  String get paywallFeature3Title => 'ፍሉያት ዲዛይናት';

  @override
  String get paywallFeature3Desc => 'ፕሪምየም ቴማታት & ቅርጺ ፊደላት';

  @override
  String get paywallFeature4Title => 'ካብ ኣድ-ነጻ';

  @override
  String get paywallFeature4Desc => 'ዜሮ መወዓውዒታት';

  @override
  String get paywallGetAccess => 'ናይ ዕድመ ምሉእ ምብጻሕ ረኸብ — \$1.00';

  @override
  String get restorePurchases => 'ዕድጊታት ምምላስ';

  @override
  String get zakatCalculator => 'ዛካት ካልኩሌተር';

  @override
  String get zakatGold => 'ወርቂ (ኣልቲን)';

  @override
  String get zakatSilver => 'ብሩር (ጉሙሽ)';

  @override
  String get zakatCashBank => 'ጥረ ገንዘብ / ባንክ';

  @override
  String get zakatBusiness => 'ስራሕቲ ንግዲ';

  @override
  String get zakatInvestments => 'ወፍሪታት';

  @override
  String get zakatWeightGrams => 'ክብደት (ሰ) .';

  @override
  String get zakatPricePerGram => 'ዋጋ/ግ';

  @override
  String get zakatTotalAmount => 'ጠቕላላ መጠን ገንዘብ';

  @override
  String get zakatInventoryValue => 'ዋጋ ንብረት';

  @override
  String get zakatDebts => 'ዕዳታት';

  @override
  String get zakatTotal => 'ድምር';

  @override
  String get calculateZakat => 'ዘካት ኣስልጥ';

  @override
  String get nisabNotReached => 'ኒሳብ ኣይበጽሐን። ዘካት ግዴታ ኣይኮነን።';

  @override
  String get totalZakat => 'ጠቕላላ ዘካት።';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'ወርቂ ዘካት።';

  @override
  String get zakatSilverZakat => 'ብሩር ዘካት።';

  @override
  String get zakatCashZakat => 'ጥረ ገንዘብ ዘካት።';

  @override
  String get zakatBusinessZakat => 'ቢዝነስ ዘካት።';

  @override
  String get zakatInvestmentZakat => 'ኢንቨስትመንት ዘካት።';

  @override
  String get chatbotGreeting =>
      'ኣሳላሙ ዓላይኩም! ኣነ እስላማዊ ተሓጋጋዚኹም እየ። ብዛዕባ ሰላት፡ ጾም፡ ዘካት፡ ወይ ዝኾነ እስላማዊ ኣርእስቲ ሕተቱኒ።';

  @override
  String get chatbotLimitReached => 'መዓልታዊ ገደብ ሕቶ በጺሑ። ንዘይተወሰነ ናብ ፕሪምየም ምዕባይ።';

  @override
  String get chatbotErrorMsg => 'መልሲ ከመንጩ ኣይከኣልኩን። በጃኹም ደጊምኩም ፈትኑ።';

  @override
  String get chatbotOfflinePrompt =>
      'እቲ ዝተረጋገጸ ካብ መስመር ወጻኢ ዝኾነ እስላማዊ ፍልጠት መሰረት ገና ይሕሎ ኣሎ። ሕጂ ካብ መስመር ወጻኢ ምምላስ ከተኽእሎ ትኽእል ኢኻ፡ ግን እቲ ምንጪ ዳታሴት ድሉው ክሳብ ዝኸውን ውሱን ውሑስ መልእኽትታት ጥራይ እዩ ዘርኢ።\n\nካብ መስመር ወጻኢ ዝግበር ምምላስ (offline fallback) ከተኽእሉ ትደልዩ ዶ?';

  @override
  String get chatbotOfflineSwitched =>
      'ካብ መስመር ወጻኢ ፋልባክ ተኸፊቱ። ዝተረጋገጹ ናይ ከባቢ እስላማዊ መልስታት ገና ድሉዋት ኣይኮኑን።';

  @override
  String get chatbotOfflineDownloadLabel => 'ካብ መስመር ወጻኢ Fallback ኣንቅሕ';

  @override
  String get downloadPreparing => 'Preparing download...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Downloading surah $surah / $total';
  }

  @override
  String get downloadCompleted => 'ኩለን ሱራታት ድሮ ነዚ ቀባኢ ዝወረዳ።';

  @override
  String get offlineQuranAudioPacks => 'ካብ መስመር ወጻኢ ቁርኣን ድምጺ ፓክስ';

  @override
  String storedOnDeviceMb(String size) {
    return 'ኣብ መሳርሒ ዝተዓቀበ: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surahs downloaded';
  }

  @override
  String get redownloadMissingRepair => 'Repair / Download Missing';

  @override
  String get downloadAction => 'ምውራድ';

  @override
  String get resumeDownload => 'ዳግመ-ምጅማር ዳውንሎድ';

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
      'ዝተረጋገጹ ምንጪ ድምጺ ቁርኣን ኣብዚ ሕጂ እዋን የለን።';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Verified Quran audio pack is incomplete ($available/$total). Refresh cloud seed and try again.';
  }

  @override
  String get chatbotHint => 'ሕቶ ሕተቱ...';

  @override
  String get chatbotThinking => 'ምሕሳብ...';

  @override
  String get sukunMixerSubtitle => 'ተፈጥሮን ቁርኣንን መሕወሲ';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'ሱኩን (ተፈጥሮ)';

  @override
  String get sukunRainOfMercy => 'ዝናብ ምሕረት';

  @override
  String get sukunGardenOfPeace => 'ጀርዲን ሰላም';

  @override
  String get sukunMidnightCalm => 'ፍርቂ ለይቲ ህድኣት';

  @override
  String get sukunOceanTawheed => 'ውቅያኖስ ተውሒድ';

  @override
  String get sukunUnavailableTitle => 'ሳውንድስኬፕስ ኣይርከብን።';

  @override
  String get sukunUnavailableBody =>
      'እዚ ህንጸት ክሳብ ሕጂ ዘድልዩ ናይ ሱኩን ሳውንድስኬፕ ንብረት ኣየጠቓልልን።';

  @override
  String get prayerCompletion => 'ምዝዛም ጸሎት';

  @override
  String get streaks => 'ስትሪክስ';

  @override
  String get dayStreak => 'ናይ መዓልቲ መስርዕ';

  @override
  String get bestStreak => 'ዝበለጸ መስርዕ';

  @override
  String get chatbotCloudAiLabel => 'ክላውድ ኤ.ኣይ';

  @override
  String get chatbotLocalAiLabel => 'ካብ መስመር ወጻኢ Fallback';

  @override
  String get chatbotUseCloudAi => 'ክላውድ ኤኣይ (Gemini) ተጠቐም';

  @override
  String get chatbotDownloadLocalAi => 'ካብ መስመር ወጻኢ Fallback ኣንቅሕ';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'ክላውድ ኤፒኣይ ኣይተዋቕረን። ካብ መስመር ወጻኢ ዝተረጋገጸ እስላማዊ መምርሒ ገና ኣይተረኽበን።';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] ዝተረጋገጸ ናይ ከባቢ እስላማዊ መምርሒ ገና ኣይተረኽበን። ምንጪ መልሲ ንምርካብ ናብ Cloud AI ቀይሩ።';

  @override
  String get mosques => 'መሳጊድ';

  @override
  String get halalFood => 'ሓላል መግቢ';

  @override
  String get placesSearchArea => 'ኣብዚ ከባቢ ድለዩ።';

  @override
  String get nearbyMosques => 'ኣብ ቀረባ ዝርከቡ መሳጊድ';

  @override
  String get islamicSchools => 'ኣብያተ ትምህርቲ እስላም';

  @override
  String placesFoundCount(String count) {
    return '$count found';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km away';
  }

  @override
  String placesApiError(String statusCode) {
    return 'ናይ ኤፒኣይ ጌጋ: $statusCode';
  }

  @override
  String get placesNetworkError => 'ናይ መርበብ ጌጋ። በጃኹም ደጊምኩም ፈትኑ።';

  @override
  String get placesLocationRequiredTitle => 'ቦታ የድሊ';

  @override
  String get placesLocationRequiredBody =>
      'ኣብ ቀረባ ዝርከቡ መሳጊድ፡ ሓላል መግቢ፡ ከምኡ’ውን ኣብያተ ትምህርቲ እስላም ብትኽክል ምእንቲ ክድለዩ መጀመርታ ቦታ ኣቐምጥ።';

  @override
  String get placesMapTilesUnavailableTitle => 'Map tiles unavailable';

  @override
  String get placesMapTilesUnavailableBody =>
      'ዝተረጋገጸ ምንጪ ካርታ ታይል ነዚ ህንጸት ገና ኣይተዋቕረን። ኣብ ቀረባ ዝርከቡ ቦታታት ገና ካብቲ ዝተዓቀብካዮ ቦታ ክጽዕኑ ይኽእሉ እዮም።';

  @override
  String get placesDataSourceUnavailableTitle => 'ዳታ ኣብ ዘይርከብ ቦታ የቐምጥ';

  @override
  String get placesDataSourceUnavailableBody =>
      'A verified places data endpoint is not configured for this build yet. Set PLACES_OVERPASS_API_URL to an approved proxy or provider before enabling nearby search.';

  @override
  String get unknownPlaceName => 'ዘይፍለጥ ስም';

  @override
  String get islamicPlaceFallback => 'እስላማዊ ቦታ';

  @override
  String get asmaMeaning1 => 'እቲ ገባሪ ሰናይ';

  @override
  String get asmaMeaning2 => 'መሓሪ';

  @override
  String get asmaMeaning3 => 'ንጉስ / ዘለኣለማዊ ጎይታ';

  @override
  String get asmaMeaning4 => 'ቅዱስ ቅዱስ';

  @override
  String get asmaMeaning5 => 'ምንጪ ሰላም';

  @override
  String get asmaMeaning6 => 'ወሃቢ ውሕስነት';

  @override
  String get asmaMeaning7 => 'ዘ ጋርድያን...';

  @override
  String get asmaMeaning8 => 'እቲ ክቡር / እቲ ዝለዓለ ሓያል';

  @override
  String get asmaMeaning9 => 'እቲ ኣገዳዲ';

  @override
  String get asmaMeaning10 => 'እቲ ዝዓበየ';

  @override
  String get asmaMeaning11 => 'ፈጣሪ';

  @override
  String get asmaMeaning12 => 'ሰራሕ ስርዓት';

  @override
  String get asmaMeaning13 => 'ቅርጺ ዝህብ ጽባቐ';

  @override
  String get asmaMeaning14 => 'ይቕረ ዝብሉ';

  @override
  String get asmaMeaning15 => 'እቲ ተገዛኢ';

  @override
  String get asmaMeaning16 => 'ወሃቢ ኩሉ';

  @override
  String get asmaMeaning17 => 'እቲ ዘላቒ';

  @override
  String get asmaMeaning18 => 'እቲ መኽፈቲ';

  @override
  String get asmaMeaning19 => 'ፈላጢ ኩሉ';

  @override
  String get asmaMeaning20 => 'እቲ ኮንስትሪክተር';

  @override
  String get asmaMeaning21 => 'እቲ ረሊቨር';

  @override
  String get asmaMeaning22 => 'እቲ ኣባሰር';

  @override
  String get asmaMeaning23 => 'እቲ ልዕል ዝበለ';

  @override
  String get asmaMeaning24 => 'ወሃቢ ክብሪ';

  @override
  String get asmaMeaning25 => 'እቲ ዘዋርድ';

  @override
  String get asmaMeaning26 => 'ሰማዒ ኩሉ';

  @override
  String get asmaMeaning27 => 'ረኣዪ ኩሉ';

  @override
  String get asmaMeaning28 => 'ዳኛ';

  @override
  String get asmaMeaning29 => 'እቲ ፍትሓዊ';

  @override
  String get asmaMeaning30 => 'እቲ ረቂቕ';

  @override
  String get asmaMeaning31 => 'እቶም ኩሎም ዝፈልጡ';

  @override
  String get asmaMeaning32 => 'እቲ ትዕግስቲ';

  @override
  String get asmaMeaning33 => 'እቲ መስተንክር';

  @override
  String get asmaMeaning34 => 'እቲ ዓቢይ ይቕረ ዝብል';

  @override
  String get asmaMeaning35 => 'ዓስቢ ምስጋና እዩ።';

  @override
  String get asmaMeaning36 => 'እቲ ዝለዓለ';

  @override
  String get asmaMeaning37 => 'እቲ ዝዓበየ';

  @override
  String get asmaMeaning38 => 'እቲ ዓቃቢ';

  @override
  String get asmaMeaning39 => 'እቲ መመገቢ ዝህብ';

  @override
  String get asmaMeaning40 => 'እቲ ረኮነር';

  @override
  String get asmaMeaning41 => 'እቲ ግርማዊ';

  @override
  String get asmaMeaning42 => 'እቶም ለጋሳት';

  @override
  String get asmaMeaning43 => 'እቲ ንቑሕ';

  @override
  String get asmaMeaning44 => 'ንጸሎት ምላሽ ዝህብ';

  @override
  String get asmaMeaning45 => 'እቲ ኩሉ ዝፈልጥ';

  @override
  String get asmaMeaning46 => 'እቲ ፍጹም ለባም';

  @override
  String get asmaMeaning47 => 'እቲ ፈቃር';

  @override
  String get asmaMeaning48 => 'እቲ ዝኸበረ';

  @override
  String get asmaMeaning49 => 'እቲ ትንሳኤ';

  @override
  String get asmaMeaning50 => 'እቲ ምስክር';

  @override
  String get asmaMeaning51 => 'እቲ ሓቂ';

  @override
  String get asmaMeaning52 => 'እቲ ኩሉ እኹል ኣማሓዳሪ';

  @override
  String get asmaMeaning53 => 'ወናኒ ኩሉ ሓይሊ';

  @override
  String get asmaMeaning54 => 'እቲ ሓያል';

  @override
  String get asmaMeaning55 => 'እቲ ሓላዊ';

  @override
  String get asmaMeaning56 => 'እቶም ዝተመስገኑ';

  @override
  String get asmaMeaning57 => 'እቲ ገምጋሚ';

  @override
  String get asmaMeaning58 => 'እቲ መበገሲ';

  @override
  String get asmaMeaning59 => 'እቲ ዳግመ-ምምላስ ዝገብር';

  @override
  String get asmaMeaning60 => 'ወሃቢ ህይወት';

  @override
  String get asmaMeaning61 => 'እቲ ዝወስድ ህይወት';

  @override
  String get asmaMeaning62 => 'እቲ ኩሉ ግዜ ዝነብር';

  @override
  String get asmaMeaning63 => 'እቲ ባዕሉ ዝነብር ዘላቒ';

  @override
  String get asmaMeaning64 => 'እቲ ፋይንደር';

  @override
  String get asmaMeaning65 => 'እቶም ክቡራት';

  @override
  String get asmaMeaning66 => 'እቲ እንኮ';

  @override
  String get asmaMeaning67 => 'እቲ ሓደ';

  @override
  String get asmaMeaning68 => 'እቲ ብኹሉ ዝድለ';

  @override
  String get asmaMeaning69 => 'እቶም ሓያላት';

  @override
  String get asmaMeaning70 => 'ፈጣሪ ኩሉ ሓይሊ';

  @override
  String get asmaMeaning71 => 'እቲ ኤክስፔዲተር';

  @override
  String get asmaMeaning72 => 'እቲ ደንጉዩ።';

  @override
  String get asmaMeaning73 => 'እቲ ቀዳማይ';

  @override
  String get asmaMeaning74 => 'እቲ ናይ መወዳእታ';

  @override
  String get asmaMeaning75 => 'እቲ ማኒፌስት';

  @override
  String get asmaMeaning76 => 'እቲ ሕቡእ';

  @override
  String get asmaMeaning77 => 'እቲ ኣመሓዳሪ';

  @override
  String get asmaMeaning78 => 'እቲ ልዑል';

  @override
  String get asmaMeaning79 => 'ገባሪ ሰናይ';

  @override
  String get asmaMeaning80 => 'መምርሒ ንስሓ';

  @override
  String get asmaMeaning81 => 'ዘ ኣቨንጀር';

  @override
  String get asmaMeaning82 => 'እቲ ይቕረ ዝብል';

  @override
  String get asmaMeaning83 => 'እቲ ቀሌምንጦስ';

  @override
  String get asmaMeaning84 => 'ዋና / ልኡላዊ ናይ ኩሉ';

  @override
  String get asmaMeaning85 => 'ወናኒ ግርማን ሽልማትን እዩ።';

  @override
  String get asmaMeaning86 => 'እቲ ፍትሓዊ ዝኾነ';

  @override
  String get asmaMeaning87 => 'እቲ ኣከባቢ';

  @override
  String get asmaMeaning88 => 'እቲ ሃብታም';

  @override
  String get asmaMeaning89 => 'እቲ ዘሀብተመ';

  @override
  String get asmaMeaning90 => 'መከላኸሊ ጉድኣት';

  @override
  String get asmaMeaning91 => 'ዘምጽእ ጉድኣት';

  @override
  String get asmaMeaning92 => 'ወሃቢ ጥቕምታት';

  @override
  String get asmaMeaning93 => 'እቲ ብርሃን';

  @override
  String get asmaMeaning94 => 'እቲ መራሒ';

  @override
  String get asmaMeaning95 => 'እቲ መበገሲ';

  @override
  String get asmaMeaning96 => 'እቲ ዘለኣለማዊ';

  @override
  String get asmaMeaning97 => 'እቲ ወራሲ';

  @override
  String get asmaMeaning98 => 'እቲ ኣዝዩ ጻድቕ መምርሒ';

  @override
  String get asmaMeaning99 => 'እቲ ሕሙም ዝኾነ';
}
