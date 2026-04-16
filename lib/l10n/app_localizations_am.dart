// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Amharic (`am`).
class AppLocalizationsAm extends AppLocalizations {
  AppLocalizationsAm([String locale = 'am']) : super(locale);

  @override
  String get appTitle => 'የአላህ መንገድ';

  @override
  String get splashTagline => 'ኢስላማዊ የብርሃን መንገድ';

  @override
  String get home => 'ቤት';

  @override
  String get quran => 'ቁርኣን';

  @override
  String get qibla => 'ቂብላ';

  @override
  String get zikr => 'ዚክር';

  @override
  String get calendar => 'የቀን መቁጠሪያ';

  @override
  String get settings => 'ቅንብሮች';

  @override
  String get nextPrayer => 'ቀጣይ ጸሎት';

  @override
  String get prayerTimes => 'የጸሎት ጊዜያት';

  @override
  String get continueReading => 'ማንበቡን ይቀጥሉ';

  @override
  String get getLifetimePro => 'የህይወት ዘመን ፕሮ';

  @override
  String get unlockTajweed => 'Tajweed እና የላቁ ባህሪያትን ይክፈቱ';

  @override
  String get prayerCalculation => 'የጸሎት ስሌት';

  @override
  String get method => 'የሂሳብ ዘዴ';

  @override
  String get madhab => 'የአሳር የሕግ ዘዴ';

  @override
  String get surahs => 'ሱራዎች';

  @override
  String get ayahs => 'አያህ';

  @override
  String get fajr => 'ፈጅር';

  @override
  String get sunrise => 'የፀሐይ መውጣት';

  @override
  String get dhuhr => 'ድሁር';

  @override
  String get asr => 'አስር';

  @override
  String get maghrib => 'መግሪብ';

  @override
  String get isha => 'ኢሻ';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'የ$prayerName ጊዜ';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '$prayerName ለመጸለይ ጊዜው አሁን ነው።';
  }

  @override
  String get dataStorage => 'ውሂብ እና ማከማቻ';

  @override
  String get clearCache => 'መሸጎጫ አጽዳ';

  @override
  String get cacheClearedSuccess => 'መሸጎጫ በተሳካ ሁኔታ ጸድቷል።';

  @override
  String get location => 'አካባቢ';

  @override
  String get language => 'ቋንቋ';

  @override
  String get selectLanguage => 'ቋንቋ ይምረጡ';

  @override
  String get searchLanguage => 'ከ180 በላይ ቋንቋዎችን ፈልግ...';

  @override
  String get systemDefault => 'የስርዓት ነባሪ';

  @override
  String get currentLocation => 'የአሁኑ አካባቢ (ጂፒኤስ)';

  @override
  String get locationServiceDisabled => 'የአካባቢ አገልግሎት ተሰናክሏል።';

  @override
  String get locationPermissionDenied => 'የአካባቢ ፈቃድ ተከልክሏል።';

  @override
  String get locationDetectionFailed =>
      'አካባቢህን ማወቅ አልተቻለም። እባክዎ ከተማን እራስዎ ይምረጡ ወይም እንደገና ይሞክሩ።';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => 'ፈልግ';

  @override
  String get searchHint => 'ፈልግ...';

  @override
  String get noResults => 'ምንም ውጤቶች አልተገኙም።';

  @override
  String get loading => 'በመጫን ላይ...';

  @override
  String get error => 'ስህተት';

  @override
  String get appErrorOccurred => 'ስህተት ተከስቷል።';

  @override
  String get appUnknownError => 'ያልታወቀ ስህተት';

  @override
  String get quranLoadFailed => 'የቁርኣን ይዘት ሊጫን አልቻለም። እባክህ እንደገና ሞክር።';

  @override
  String get retry => 'እንደገና ይሞክሩ';

  @override
  String get refreshAction => 'አድስ';

  @override
  String get cancel => 'ሰርዝ';

  @override
  String get save => 'አስቀምጥ';

  @override
  String get delete => 'ሰርዝ';

  @override
  String get edit => 'አርትዕ';

  @override
  String get close => 'ገጠመ';

  @override
  String get ok => 'እሺ';

  @override
  String get yes => 'አዎ';

  @override
  String get no => 'አይ';

  @override
  String get surah => 'ሱራ';

  @override
  String ayahLabel(String ayah) {
    return 'አያ $ayah';
  }

  @override
  String get juz => 'ጁዝ';

  @override
  String get page => 'ገጽ';

  @override
  String get reading => 'ማንበብ';

  @override
  String get recitation => 'ንባብ';

  @override
  String get translation => 'ትርጉም';

  @override
  String get tafsir => 'ተፍሲር';

  @override
  String get tafsirLoading => 'ተፍሲርን በመጫን ላይ...';

  @override
  String get tafsirSourceLabel => 'የተፍሲር ምንጭ';

  @override
  String get tafsirNoSurahFound => 'ለዚህ ሱራ ምንም ተፍሲር አልተገኘም።';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'ለአያህ $ayah ምንም ተፍሲር አልተገኘም።';
  }

  @override
  String get tafsirLoadFailed => 'ተፍሲርን መጫን አልተቻለም።';

  @override
  String get tafsirNoTextForAyah => 'ለዚህ አያህ ምንም የተፍሲር ጽሑፍ የለም።';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'ተፍሲርን በማውረድ ላይ $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'ተፍሲርን በመጫን ላይ $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'የተፍሲር ምንጭ HTTP $statusCode ስህተት መልሷል።';
  }

  @override
  String get tafsirNoEntriesReturned => 'የተመረጠው የተፍሲር ምንጭ ምንም ግቤት አልተመለሰም።';

  @override
  String get bookmarks => 'ዕልባቶች';

  @override
  String get addBookmark => 'ዕልባት ጨምር';

  @override
  String get removeBookmark => 'ዕልባት አስወግድ';

  @override
  String get lastRead => 'ለመጨረሻ ጊዜ የተነበበ';

  @override
  String get dailyZikr => 'ዕለታዊ ዚክር';

  @override
  String get duaMeaning1 =>
      'ሌሎችም ‘ጌታችን ሆይ በቅርቢቱም ሆነ በመጨረሻይቱ ዓለም መልካምን ነገር ስጠን ከእሳትም ቅጣት ጠብቀን’ ብለው ይጸልያሉ።';

  @override
  String get duaMeaning2 =>
      'እግዚአብሔር የትኛውንም ነፍስ ልትሸከመው ከምትችለው በላይ አይጭንበትም፤ እያንዳንዱ የሠራውን መልካም ነገር ያገኛል፤ በመጥፎዋም ይሠቃያል- ‘ጌታ ሆይ፣ ከረሳን ወይም ከተሳሳትን ወደ ሥራ አታግባን። ጌታ ሆይ ከኛ በፊት የነበሩትን እንደ ሸከምክ አትከብደን። ጌታ ሆይ ለመሸከም ካለን አቅም በላይ አትከብደን። ይቅር በለን ፣ ይቅር በለን ፣ ማረን ። አንተ ረዳታችን ነህና በከሓዲዎችንም እርዳን።';

  @override
  String get duaMeaning3 =>
      '‹ጌታችን ሆይ ከመራኸን በኋላ ልቦቻችንን አታዘንብ። እዝነትህን ስጠን አንተ ሰጭ ነህ።';

  @override
  String get duaMeaning4 =>
      'ጌታ ሆይ እኔና ዘሮቼ ጸሎታችንን እንድንሰግድ ስጠን። ጌታችን ሆይ ልመናዬን ተቀበል።';

  @override
  String get duaMeaning5 => 'በትሕትናም ክንፍህን ወደ እነርሱ በቸርነት ዝቅ አድርግና፡- ‘ጌታ ሆይ!';

  @override
  String get duaMeaning6 =>
      'አላህ የጠራው እርሱ በእርግጥ ተቆጣጣሪው ነው። (ነብዩ) ራዕዩ ሳይፈጸም በፊት ለማንበብ አትቸኩል ነገር ግን ‘ጌታ ሆይ እውቀትን ጨምርልኝ!’ በል።';

  @override
  String get duaMeaning7 =>
      '(ነብዩ)፡- ‘ጌታ ሆይ ይቅር በለን እዘንም አንተ ከምንም በላይ አዛኝ ነህ’ በላቸው።';

  @override
  String get duaMeaning8 =>
      'የሚጸልዩት፡- ጌታችን ሆይ በትዳር አጋሮቻችንና በዘሮቻችን ደስታን ስጠን። አንተን ለሚያውቁ ጥሩ ምሳሌ አድርግልን።';

  @override
  String get morningZikr => 'ጥዋት ዚክር';

  @override
  String get eveningZikr => 'ምሽት ዚክር';

  @override
  String get tasbih => 'ተስቢህ';

  @override
  String get ahkab => 'አህካም';

  @override
  String get masaail => 'ማሳኢል';

  @override
  String get hadith => 'ሀዲስ';

  @override
  String get hadithCollection => 'የሀዲስ ስብስብ';

  @override
  String get hadithBooks => 'የሐዲስ መጽሐፍት።';

  @override
  String get searchHadith => 'ሀዲስ ፈልግ';

  @override
  String get asmaulHusna => 'አስማ-አል-ሑስና';

  @override
  String get namesOfAllah => 'የአላህ ስሞች';

  @override
  String get liveTv => 'የቀጥታ ቲቪ';

  @override
  String get watchLive => 'ቀጥታ ይመልከቱ';

  @override
  String get streamError => 'የዥረት ስህተት';

  @override
  String get reload => 'ዳግም ጫን';

  @override
  String get openInYoutube => 'በዩቲዩብ ውስጥ ክፈት';

  @override
  String get ibadahTracker => 'ኢባዳ መከታተያ';

  @override
  String get fasting => 'መጾም';

  @override
  String get quranReading => 'የቁርኣን ንባብ';

  @override
  String get prayers => 'ጸሎቶች';

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
  String get dhikrCount => 'ዚክር ቆጠራ';

  @override
  String get weeklyProgress => 'ሳምንታዊ እድገት';

  @override
  String get monthlyProgress => 'ወርሃዊ እድገት';

  @override
  String get statistics => 'ስታትስቲክስ';

  @override
  String get hijriCalendar => 'Hijri Calendar';

  @override
  String get gregorianCalendar => 'የግሪጎሪያን የቀን መቁጠሪያ';

  @override
  String get today => 'ዛሬ';

  @override
  String get tomorrow => 'ነገ';

  @override
  String get yesterday => 'ትናንት';

  @override
  String get specialDays => 'ልዩ ቀናት';

  @override
  String get ramadan => 'ረመዳን';

  @override
  String get eidAlFitr => 'ኢድ አልፈጥር';

  @override
  String get eidAlAdha => 'ኢድ አል-አድሓ';

  @override
  String get islamicNewYear => 'ኢስላማዊ አዲስ አመት';

  @override
  String get mawlidAnNabi => 'መውሊድ አን-ናቢ';

  @override
  String get specialDayDateRamadanStart => '1 ረመዳን';

  @override
  String get specialDayDateLaylatAlQadr => '27 ረመዳን';

  @override
  String get specialDayDateEidAlFitr => '1 ሻውል';

  @override
  String get specialDayDateEidAlAdha => '10 ዙል ሂጃህ';

  @override
  String get specialDayDateIslamicNewYear => '1 ሙሀረም';

  @override
  String get specialDayDateMawlidAnNabi => '12 ረቢ አል-አወል';

  @override
  String get laylatAlQadr => 'ሌይላት አልቃድር';

  @override
  String get qiblaDirection => 'የቂብላ አቅጣጫ';

  @override
  String get compass => 'ኮምፓስ';

  @override
  String get degrees => 'ዲግሪዎች';

  @override
  String get north => 'ሰሜን';

  @override
  String get qiblaFound => 'ቂብላ ተገኘ!';

  @override
  String get turnDevice => 'መሳሪያዎን ወደ ቂብላ ያዙሩት';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'የኮምፓስ ስህተት፡ $error';
  }

  @override
  String get qiblaSensorUnavailable => 'የኮምፓስ ዳሳሽ በዚህ መሳሪያ ላይ የለም።';

  @override
  String get qiblaLocationRequiredTitle => 'ለቂብላ ቦታ ያስፈልጋል';

  @override
  String get qiblaLocationRequiredBody =>
      'የቂብላ ኮምፓስን ከመጠቀምዎ በፊት ትክክለኛ ቦታዎን ያዘጋጁ አቅጣጫው በትክክል እንዲሰላ ያድርጉ።';

  @override
  String get adhanNotificationChannelName => 'አድሃን ማሳወቂያዎች';

  @override
  String get adhanNotificationChannelDescription =>
      'የጸሎት ጊዜ ማንቂያዎች ከአድሃን ድምፅ ጋር።';

  @override
  String get notifications => 'ማሳወቂያዎች';

  @override
  String get prayerNotifications => 'የጸሎት ማሳወቂያዎች';

  @override
  String get enableNotifications => 'ማሳወቂያዎችን አንቃ';

  @override
  String get notificationTime => 'የማሳወቂያ ጊዜ';

  @override
  String get beforePrayer => 'ከጸሎት በፊት ደቂቃዎች';

  @override
  String get theme => 'ጭብጥ';

  @override
  String get lightMode => 'የብርሃን ሁነታ';

  @override
  String get darkMode => 'ጨለማ ሁነታ';

  @override
  String get systemTheme => 'የስርዓት ጭብጥ';

  @override
  String get about => 'ስለ';

  @override
  String get version => 'ሥሪት';

  @override
  String get privacyPolicy => 'የግላዊነት ፖሊሲ';

  @override
  String get termsOfService => 'የአገልግሎት ውል';

  @override
  String get contactUs => 'ያግኙን';

  @override
  String get rateApp => 'መተግበሪያ ደረጃ ይስጡ';

  @override
  String get shareApp => 'መተግበሪያ አጋራ';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'አውርድ አስተዳዳሪ';

  @override
  String get downloads => 'ውርዶች';

  @override
  String get downloading => 'በማውረድ ላይ...';

  @override
  String get downloadComplete => 'ማውረድ ተጠናቋል';

  @override
  String get downloadFailed => 'ማውረድ አልተሳካም።';

  @override
  String get offlineMode => 'ከመስመር ውጭ ሁነታ';

  @override
  String get noInternet => 'የበይነመረብ ግንኙነት የለም።';

  @override
  String get checkConnection => 'እባክዎ ግንኙነትዎን ያረጋግጡ';

  @override
  String get premium => 'ፕሪሚየም';

  @override
  String get upgradeToPro => 'ወደ ፕሮ ያሻሽሉ።';

  @override
  String get proFeatures => 'Pro ባህሪዎች';

  @override
  String get removeAds => 'ማስታወቂያዎችን ያስወግዱ';

  @override
  String get unlockAll => 'ሁሉንም ይዘቶች ይክፈቱ';

  @override
  String get exclusiveContent => 'ልዩ ይዘት';

  @override
  String get welcome => 'እንኳን ደህና መጣህ';

  @override
  String get getStarted => 'እንጀምር';

  @override
  String get skip => 'ዝለል';

  @override
  String get next => 'ቀጥሎ';

  @override
  String get done => 'ተከናውኗል';

  @override
  String get onboarding1Title => 'እንኳን ወደ አላህ መንገድ በደህና መጡ';

  @override
  String get onboarding1Desc =>
      'ለጸሎት ጊዜ፣ ቁርኣን እና ሌሎችም የእርስዎ ሙሉ ኢስላማዊ ጓደኛ መተግበሪያ';

  @override
  String get onboarding2Title => 'የጸሎት ጊዜያት';

  @override
  String get onboarding2Desc => 'በአከባቢዎ ላይ በመመስረት ትክክለኛ የጸሎት ጊዜያት';

  @override
  String get onboarding3Title => 'ቁርኣን እና ሌሎችም።';

  @override
  String get onboarding3Desc => 'ቁርኣንን አንብብ፣ ንባብህን ተከታተል እና ኢስላማዊ ይዘትን አስስ';

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
  String get zikrCompletedMashAllah => 'ተጠናቀቀ! ማሻአላህ';

  @override
  String get zikrMeaningSubhanAllah => 'አላህ ከጉድለት ሁሉ በላይ ነው።';

  @override
  String get zikrMeaningAlhamdulillah => 'ምስጋና ሁሉ የአላህ ነው።';

  @override
  String get zikrMeaningAllahuAkbar => 'አላህ ታላቅ ነው።';

  @override
  String get zikrMeaningLaIlahaIllallah => 'ከአላህ በስተቀር ሌላ አምላክ የለም።';

  @override
  String get zikrMeaningAstaghfirullah => 'የአላህን ምህረት እጠይቃለሁ።';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'በአላህ ካልሆነ በስተቀር ምንም ሃይል እና ጥንካሬ የለም።';

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
  String get offlineDownloadManager => 'ከመስመር ውጭ ማውረድ አስተዳዳሪ';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'የውስጥ መሣሪያ ማከማቻ ያስለቅቁ።';

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
  String get audioVoice => 'የድምጽ ድምጽ';

  @override
  String get audioVoiceMisharyAlafasy => 'ወንድ (ሚሻሪ አላፋሲ)';

  @override
  String get audioVoiceAbdulBaset => 'ወንድ (አብዱልባሴት)';

  @override
  String get audioVoiceSudais => 'ወንድ (ሱዳይስ)';

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
  String get diagnosticsNotSet => 'አልተዘጋጀም።';

  @override
  String get diagnosticsPrayerProfile => 'የጸሎት መገለጫ';

  @override
  String get diagnosticsPrayerSource => 'የጸሎት ባለስልጣን';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'ብጁ / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource => 'በእጅ ብጁ ማዕዘኖች (ተቋማዊ ምንጭ የለም)';

  @override
  String get diagnosticsCloudDriven => 'በደመና የሚነዳ';

  @override
  String get diagnosticsAdhanAudioAssets => 'አድሃን ኦዲዮ ንብረቶች';

  @override
  String get diagnosticsUiAudioAssets => 'የዩአይ ኦዲዮ ንብረቶች';

  @override
  String get diagnosticsQuranAudioAssets => 'የቁርዓን ኦዲዮ ንብረቶች';

  @override
  String get diagnosticsAudioAssets => 'የድምጽ ንብረቶች';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count ፋይሎች';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'የተነበበ መግለጫ አልተሳካም፦ $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'አካባቢያዊነት አከባቢዎች';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count ይደገፋል';
  }

  @override
  String get diagnosticsQuranDataset => 'የቁርአን ዳታ ስብስብ';

  @override
  String get diagnosticsQuranSurahs => 'የቁርኣን ሱራዎች';

  @override
  String get diagnosticsQuranAyahs => 'የቁርኣን አያዎች';

  @override
  String get diagnosticsQuranJuzMetadata => 'የቁርዓን ጁዝ ሜታዳታ';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'በ Supabase ውስጥ የደመና ጠረጴዛዎች ጠፍተዋል; የተጠቃለለ ውድቀት ንቁ';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'የደመና ፍተሻ አልተሳካም፦ $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'የክላውድ ጁዝ ዲበ ውሂብ ይጎድላል; የተጠቀለለ መዋቅራዊ ውድቀት ንቁ';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'የክላውድ መዋቅራዊ ፍተሻ አልተሳካም፦ $error';
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
  String get dailyVerse => 'ዕለታዊ ጥቅስ';

  @override
  String get todaysIbadah => 'የዛሬው ኢባዳ';

  @override
  String get quickAccess => 'ፈጣን መዳረሻ';

  @override
  String get assistant => 'ረዳት';

  @override
  String get places => 'ቦታዎች';

  @override
  String get library => 'ቤተ መፃህፍት';

  @override
  String get analytics => 'ትንታኔ';

  @override
  String get dailyDuas => 'ዕለታዊ ዱአስ';

  @override
  String essentialDuas(String count) {
    return '$count አስፈላጊ ዱዓዎች';
  }

  @override
  String get duaUnavailableTitle => 'የተረጋገጡ ዱዓዎች እስካሁን አይገኙም።';

  @override
  String get duaUnavailableBody =>
      'የተረጋገጡ ዕለታዊ ዱዓዎች እስካሁን ከዚህ መሳሪያ ጋር አልተመሳሰሉም። ካልተረጋገጠ መመለሻ ይልቅ የመነጩ ዱአዎችን ለመጫን ከደመና ምንጭ ጋር ይገናኙ።';

  @override
  String get duaCategoryQuranic => 'የቁርዓን ዱአ';

  @override
  String get duaCategoryMorningEvening => 'ጥዋት እና ምሽት';

  @override
  String get duaCategoryTasbih => 'ተስቢህ';

  @override
  String get duaCategoryProtection => 'ጥበቃ';

  @override
  String get duaCategoryBeginning => 'ጅምር';

  @override
  String get duaCategorySleep => 'እንቅልፍ';

  @override
  String get duaCategoryFoodDrink => 'ምግብ እና መጠጥ';

  @override
  String get duaCategoryForgiveness => 'ይቅርታ';

  @override
  String get duaCategoryHome => 'ቤት';

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
  String get islamicEducation => 'ኢስላማዊ ትምህርት';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'የሀዲስ ስብስቦች';

  @override
  String get hadithSourcePending => 'የተረጋገጠ ምንጭ በመጠባበቅ ላይ';

  @override
  String get hadithUnavailableTitle => 'የተረጋገጡ የሀዲስ ስብስቦች እስካሁን አይገኙም።';

  @override
  String get hadithUnavailableBody =>
      'ይህ ግንባታ አሁንም ባልተረጋገጠ የውጪ የሀዲስ ምግብ ላይ የተመሰረተ ነው። የተገኘ የውሂብ ስብስብ እስኪሰምር ድረስ የሃዲስ አሰሳ እንደተሰናከለ ይቆያል።';

  @override
  String get paywallUnlockAll => 'ለመንፈሳዊ ጉዞዎ ሁሉንም ባህሪያት ይክፈቱ';

  @override
  String get premiumProductUnavailable =>
      'ፕሪሚየም ምርት አሁን አይገኝም። እባክዎ ቆይተው እንደገና ይሞክሩ።';

  @override
  String get premiumPurchaseFailed => 'ግዢ ሊጠናቀቅ አልቻለም። እባክህ እንደገና ሞክር።';

  @override
  String get paywallFeature1Title => 'የነርቭ ረዳት ፕላስ';

  @override
  String get paywallFeature1Desc => 'ያልተገደበ AI-የተጎላበተ ጥያቄ እና መልስ';

  @override
  String get paywallFeature2Title => 'ከመስመር ውጭ ያልተገደበ';

  @override
  String get paywallFeature2Desc => 'ሁሉንም ንባቦች ያውርዱ';

  @override
  String get paywallFeature3Title => 'ልዩ ንድፎች';

  @override
  String get paywallFeature3Desc => 'ዋና ገጽታዎች እና ቅርጸ ቁምፊዎች';

  @override
  String get paywallFeature4Title => 'ከማስታወቂያ ነጻ';

  @override
  String get paywallFeature4Desc => 'ዜሮ ማስታወቂያዎች';

  @override
  String get paywallGetAccess => 'የዕድሜ ልክ መዳረሻ ያግኙ - \$1.00';

  @override
  String get restorePurchases => 'ግዢዎችን ወደነበሩበት ይመልሱ';

  @override
  String get zakatCalculator => 'ዘካት ካልኩሌተር';

  @override
  String get zakatGold => 'ወርቅ (አልቲን)';

  @override
  String get zakatSilver => 'ብር (ጉሙሽ)';

  @override
  String get zakatCashBank => 'ገንዘብ / ባንክ';

  @override
  String get zakatBusiness => 'ንግድ';

  @override
  String get zakatInvestments => 'ኢንቨስትመንቶች';

  @override
  String get zakatWeightGrams => 'ክብደት (ሰ)';

  @override
  String get zakatPricePerGram => 'ዋጋ/ግ';

  @override
  String get zakatTotalAmount => 'ጠቅላላ መጠን';

  @override
  String get zakatInventoryValue => 'የእቃ ዝርዝር ዋጋ';

  @override
  String get zakatDebts => 'እዳዎች';

  @override
  String get zakatTotal => 'ጠቅላላ';

  @override
  String get calculateZakat => 'ዘካት አስላ';

  @override
  String get nisabNotReached => 'ኒሳብ አልደረሰም። ዘካት ግዴታ አይደለም።';

  @override
  String get totalZakat => 'ጠቅላላ ዘካት';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'ኒሳብ፡ $nisab • ንብረቶች፡ $assets';
  }

  @override
  String get zakatGoldZakat => 'የወርቅ ዘካት';

  @override
  String get zakatSilverZakat => 'የብር ዘካት';

  @override
  String get zakatCashZakat => 'ጥሬ ገንዘብ ዘካት';

  @override
  String get zakatBusinessZakat => 'የንግድ ዘካት';

  @override
  String get zakatInvestmentZakat => 'የኢንቨስትመንት ዘካት';

  @override
  String get chatbotGreeting =>
      'አሰላሙ አለይኩም እኔ የእናንተ ኢስላማዊ ረዳት ነኝ። ስለ ሶላት ፣ ፆም ፣ ዘካ ፣ ወይም ስለማንኛውም ኢስላማዊ ርዕስ ጠይቁኝ።';

  @override
  String get chatbotLimitReached =>
      'ዕለታዊ መጠይቅ ገደብ ላይ ደርሷል። ላልተገደበ ወደ ፕሪሚየም ያሻሽሉ።';

  @override
  String get chatbotErrorMsg => 'ምላሽ ማመንጨት አልቻልኩም። እባክህ እንደገና ሞክር።';

  @override
  String get chatbotOfflinePrompt =>
      'የተረጋገጠው ከመስመር ውጭ የሆነ ኢስላማዊ እውቀት መሰረት አሁንም እየተዘጋጀ ነው። ከመስመር ውጭ መመለስን አሁን ማንቃት ይችላሉ፣ ነገር ግን የተመደበው የውሂብ ስብስብ ዝግጁ እስኪሆን ድረስ የተገደቡ አስተማማኝ መልዕክቶችን ብቻ ያሳያል።\n\nከመስመር ውጭ መመለስን ማንቃት ይፈልጋሉ?';

  @override
  String get chatbotOfflineSwitched =>
      'ከመስመር ውጭ መመለስ ነቅቷል። የተረጋገጡ የአካባቢ እስላማዊ መልሶች እስካሁን ዝግጁ አይደሉም።';

  @override
  String get chatbotOfflineDownloadLabel => 'ከመስመር ውጭ መመለስን አንቃ';

  @override
  String get downloadPreparing => 'ማውረድን በማዘጋጀት ላይ...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'ሱራ $surah / $total በማውረድ ላይ';
  }

  @override
  String get downloadCompleted => 'ለዚህ አንባቢ አስቀድመው የወረዱ ሁሉም ሱራዎች።';

  @override
  String get offlineQuranAudioPacks => 'ከመስመር ውጭ የቁርአን ኦዲዮ ጥቅሎች';

  @override
  String storedOnDeviceMb(String size) {
    return 'በመሳሪያ ላይ የተከማቸ፡ $size ሜባ';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total ሱራዎች ወርደዋል';
  }

  @override
  String get redownloadMissingRepair => 'መጠገን/ አውርድ ጠፍቷል';

  @override
  String get downloadAction => 'አውርድ';

  @override
  String get resumeDownload => 'ማውረድ ከቆመበት ቀጥል';

  @override
  String get deleteDownloadedFiles => 'የወረዱ ፋይሎችን ሰርዝ';

  @override
  String get downloadCancelling => 'በመሰረዝ ላይ...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'ለ$reciter ማውረድ ተሰርዟል።';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'ለ$reciter ማውረድ ተጠናቅቋል።';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'ለ $reciter ማውረዱ አልቋል $failed ያልተሳኩ ሱራዎች ($downloaded/$total ወርዷል)።';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'ለ$reciter ከመስመር ውጭ ፋይሎች ተሰርዘዋል።';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'የተረጋገጡ የቁርአን የድምጽ ምንጮች አሁን አይገኙም።';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'የተረጋገጠ የቁርአን ኦዲዮ ጥቅል አልተጠናቀቀም ($available/$total)። የደመና ዘርን ያድሱ እና እንደገና ይሞክሩ።';
  }

  @override
  String get chatbotHint => 'ጥያቄ ጠይቅ...';

  @override
  String get chatbotThinking => 'በማሰብ...';

  @override
  String get sukunMixerSubtitle => 'ተፈጥሮ እና ቁርኣን ቀማሚ';

  @override
  String get audioPlayFailed => 'የድምጽ መልሶ ማጫወት አልተሳካም።';

  @override
  String get sukunNatureLabel => 'ሱኩን (ተፈጥሮ)';

  @override
  String get sukunRainOfMercy => 'የምህረት ዝናብ';

  @override
  String get sukunGardenOfPeace => 'የሰላም ገነት';

  @override
  String get sukunMidnightCalm => 'እኩለ ሌሊት መረጋጋት';

  @override
  String get sukunOceanTawheed => 'ውቅያኖስ ተውሂድ';

  @override
  String get sukunUnavailableTitle => 'የድምፅ ምስሎች አይገኙም።';

  @override
  String get sukunUnavailableBody =>
      'ይህ ግንባታ የሚፈለጉትን የሱኩን የድምጽ ገጽታ ንብረቶችን እስካሁን አያካትትም።';

  @override
  String get prayerCompletion => 'የጸሎት ፍጻሜ';

  @override
  String get streaks => 'ጭረቶች';

  @override
  String get dayStreak => 'የቀን ትርኢት';

  @override
  String get bestStreak => 'ምርጥ ሩጫ';

  @override
  String get chatbotCloudAiLabel => 'ደመና AI';

  @override
  String get chatbotLocalAiLabel => 'ከመስመር ውጭ መውደቅ';

  @override
  String get chatbotUseCloudAi => 'ክላውድ AI (Gemini) ተጠቀም';

  @override
  String get chatbotDownloadLocalAi => 'ከመስመር ውጭ መመለስን አንቃ';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count ቀርቷል።';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API አልተዋቀረም። የተረጋገጠ ከመስመር ውጭ እስላማዊ መመሪያ እስካሁን የለም።';

  @override
  String get chatbotLocalNoInfo =>
      '[ከመስመር ውጭ] የተረጋገጠ የአካባቢ እስላማዊ መመሪያ እስካሁን አይገኝም። ምንጭ ለሆኑ መልሶች ወደ Cloud AI ቀይር።';

  @override
  String get mosques => 'መስጊዶች';

  @override
  String get halalFood => 'ሃላል ምግብ';

  @override
  String get placesSearchArea => 'ይህንን አካባቢ ይፈልጉ';

  @override
  String get nearbyMosques => 'በአቅራቢያ ያሉ መስጊዶች';

  @override
  String get islamicSchools => 'ኢስላማዊ ትምህርት ቤቶች';

  @override
  String placesFoundCount(String count) {
    return '$count ተገኝቷል';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance ኪሜ ርቀት ላይ';
  }

  @override
  String placesApiError(String statusCode) {
    return 'የኤፒአይ ስህተት፡ $statusCode';
  }

  @override
  String get placesNetworkError => 'የአውታረ መረብ ስህተት። እባክህ እንደገና ሞክር።';

  @override
  String get placesLocationRequiredTitle => 'ቦታ ያስፈልጋል';

  @override
  String get placesLocationRequiredBody =>
      'በአቅራቢያ ያሉ መስጊዶች፣ ሃላል ምግብ እና ኢስላሚክ ትምህርት ቤቶች በትክክል መፈለግ እንዲችሉ መጀመሪያ ቦታ ያዘጋጁ።';

  @override
  String get placesMapTilesUnavailableTitle => 'የካርታ ሰቆች አይገኙም።';

  @override
  String get placesMapTilesUnavailableBody =>
      'የተረጋገጠ የካርታ ንጣፍ ምንጭ እስካሁን ለዚህ ግንባታ አልተዋቀረም። በአቅራቢያ ያሉ ቦታዎች አሁንም ከተቀመጠው ቦታዎ መጫን ይችላሉ።';

  @override
  String get placesDataSourceUnavailableTitle => 'የቦታዎች ውሂብ አይገኝም';

  @override
  String get placesDataSourceUnavailableBody =>
      'የተረጋገጠ የቦታዎች ውሂብ መጨረሻ ነጥብ ለዚህ ግንባታ ገና አልተዋቀረም። በአቅራቢያ ፍለጋን ከማንቃትዎ በፊት PLACES_OVERPASS_API_URL ወደ ተቀባይነት ያለው ተኪ ወይም አቅራቢ ያቀናብሩ።';

  @override
  String get unknownPlaceName => 'ያልታወቀ ስም';

  @override
  String get islamicPlaceFallback => 'ኢስላማዊ ቦታ';

  @override
  String get asmaMeaning1 => 'በጎ አድራጊው';

  @override
  String get asmaMeaning2 => 'አዛኙ';

  @override
  String get asmaMeaning3 => 'ንጉሱ / ዘላለማዊው ጌታ';

  @override
  String get asmaMeaning4 => 'እጅግ ቅዱስ';

  @override
  String get asmaMeaning5 => 'የሰላም ምንጭ';

  @override
  String get asmaMeaning6 => 'ደህንነት ሰጪው';

  @override
  String get asmaMeaning7 => 'ጠባቂው';

  @override
  String get asmaMeaning8 => 'ውዱ / ኃያል';

  @override
  String get asmaMeaning9 => 'አስገዳጅው';

  @override
  String get asmaMeaning10 => 'ትልቁ';

  @override
  String get asmaMeaning11 => 'ፈጣሪ';

  @override
  String get asmaMeaning12 => 'ትዕዛዝ ሰሪ';

  @override
  String get asmaMeaning13 => 'የውበት ቅርጽ ሰጪ';

  @override
  String get asmaMeaning14 => 'ይቅር ባይ';

  @override
  String get asmaMeaning15 => 'ገዥው';

  @override
  String get asmaMeaning16 => 'የሁሉ ሰጭ';

  @override
  String get asmaMeaning17 => 'ተንከባካቢው';

  @override
  String get asmaMeaning18 => 'መክፈቻው';

  @override
  String get asmaMeaning19 => 'ሁሉን ዐዋቂ ነው።';

  @override
  String get asmaMeaning20 => 'Constrictor';

  @override
  String get asmaMeaning21 => 'ማስታገሻ';

  @override
  String get asmaMeaning22 => 'አበስር';

  @override
  String get asmaMeaning23 => 'ከፍ ከፍ ያለው';

  @override
  String get asmaMeaning24 => 'የክብር ባለቤት';

  @override
  String get asmaMeaning25 => 'አዋራጅ';

  @override
  String get asmaMeaning26 => 'ሁሉን ሰሚው';

  @override
  String get asmaMeaning27 => 'የሁሉም ተመልካች';

  @override
  String get asmaMeaning28 => 'ዳኛው';

  @override
  String get asmaMeaning29 => 'ፍትሃዊው';

  @override
  String get asmaMeaning30 => 'ስውር የሆነው';

  @override
  String get asmaMeaning31 => 'ሁሉም የሚያውቀው';

  @override
  String get asmaMeaning32 => 'ቀዳሚው';

  @override
  String get asmaMeaning33 => 'ግርማ ሞገስ ያለው';

  @override
  String get asmaMeaning34 => 'ታላቁ ይቅር ባይ';

  @override
  String get asmaMeaning35 => 'የምስጋና ተሸላሚ';

  @override
  String get asmaMeaning36 => 'ከፍተኛው';

  @override
  String get asmaMeaning37 => 'ትልቁ';

  @override
  String get asmaMeaning38 => 'ጠባቂው';

  @override
  String get asmaMeaning39 => 'ኑሪሸር';

  @override
  String get asmaMeaning40 => 'ቆጣቢው';

  @override
  String get asmaMeaning41 => 'ግርማ ሞገስ ያለው';

  @override
  String get asmaMeaning42 => 'ለጋሱ';

  @override
  String get asmaMeaning43 => 'ተጠባባቂው';

  @override
  String get asmaMeaning44 => 'ለጸሎት ምላሽ ሰጪ';

  @override
  String get asmaMeaning45 => 'ሁሉም የመረዳት ችሎታ';

  @override
  String get asmaMeaning46 => 'ፍፁም ጥበበኛ';

  @override
  String get asmaMeaning47 => 'አፍቃሪው';

  @override
  String get asmaMeaning48 => 'እጅግ የከበረ';

  @override
  String get asmaMeaning49 => 'ትንሳኤ';

  @override
  String get asmaMeaning50 => 'ምስክሩ';

  @override
  String get asmaMeaning51 => 'እውነት';

  @override
  String get asmaMeaning52 => 'ሁሉን የሚበቃው ባለአደራ';

  @override
  String get asmaMeaning53 => 'የጥንካሬ ሁሉ ባለቤት';

  @override
  String get asmaMeaning54 => 'ኃይለኛው';

  @override
  String get asmaMeaning55 => 'ተከላካይ';

  @override
  String get asmaMeaning56 => 'የተመሰገነው።';

  @override
  String get asmaMeaning57 => 'ገምጋሚው';

  @override
  String get asmaMeaning58 => 'መነሻው';

  @override
  String get asmaMeaning59 => 'መልሶ ሰጪው';

  @override
  String get asmaMeaning60 => 'ሕይወት ሰጪ';

  @override
  String get asmaMeaning61 => 'ሕይወት ሰጪ';

  @override
  String get asmaMeaning62 => 'የዘላለም ህይወት ያለው';

  @override
  String get asmaMeaning63 => 'እራስን የሚተዳደር ደጋፊ';

  @override
  String get asmaMeaning64 => 'አግኚው';

  @override
  String get asmaMeaning65 => 'ግርማ ሞገስ ያለው';

  @override
  String get asmaMeaning66 => 'ብቸኛው';

  @override
  String get asmaMeaning67 => 'አንዱ';

  @override
  String get asmaMeaning68 => 'በሁሉም የሚፈለገው';

  @override
  String get asmaMeaning69 => 'ኃያሉ';

  @override
  String get asmaMeaning70 => 'የኃይል ሁሉ ፈጣሪ';

  @override
  String get asmaMeaning71 => 'ኤክስፔዲተር';

  @override
  String get asmaMeaning72 => 'መዘግየቱ';

  @override
  String get asmaMeaning73 => 'የመጀመሪያው';

  @override
  String get asmaMeaning74 => 'የመጨረሻው';

  @override
  String get asmaMeaning75 => 'አንጸባራቂው';

  @override
  String get asmaMeaning76 => 'የተደበቀው';

  @override
  String get asmaMeaning77 => 'ገዥው';

  @override
  String get asmaMeaning78 => 'የበላይ የሆነው';

  @override
  String get asmaMeaning79 => 'በጎ አድራጊ';

  @override
  String get asmaMeaning80 => 'የንስሐ መመሪያ';

  @override
  String get asmaMeaning81 => 'ተበቃዩ';

  @override
  String get asmaMeaning82 => 'ይቅር ባይ';

  @override
  String get asmaMeaning83 => 'ክሌመንት';

  @override
  String get asmaMeaning84 => 'የሁሉም ባለቤት/ገዢ';

  @override
  String get asmaMeaning85 => 'የግርማዊነት እና ችሮታ ባለቤት';

  @override
  String get asmaMeaning86 => 'ፍትሃዊው';

  @override
  String get asmaMeaning87 => 'ሰብሳቢው።';

  @override
  String get asmaMeaning88 => 'ሀብታሙ';

  @override
  String get asmaMeaning89 => 'ማበልጸጊያው';

  @override
  String get asmaMeaning90 => 'ጉዳት ተከላካይ';

  @override
  String get asmaMeaning91 => 'የጉዳት አድራጊ';

  @override
  String get asmaMeaning92 => 'የጥቅማ ጥቅሞች ሰጪው';

  @override
  String get asmaMeaning93 => 'ብርሃኑ';

  @override
  String get asmaMeaning94 => 'መሪው';

  @override
  String get asmaMeaning95 => 'መነሻው';

  @override
  String get asmaMeaning96 => 'ዘላለማዊው';

  @override
  String get asmaMeaning97 => 'ወራሹ';

  @override
  String get asmaMeaning98 => 'በጣም ትክክለኛ መመሪያ';

  @override
  String get asmaMeaning99 => 'በሽተኛው';
}
