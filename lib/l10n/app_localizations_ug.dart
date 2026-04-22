// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uighur Uyghur (`ug`).
class AppLocalizationsUg extends AppLocalizations {
  AppLocalizationsUg([String locale = 'ug']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'ئىسلام نۇر يولى';

  @override
  String get home => 'ئۆي';

  @override
  String get quran => 'قۇرئان';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'كالېندار';

  @override
  String get settings => 'تەڭشەك';

  @override
  String get nextPrayer => 'كېيىنكى دۇئا';

  @override
  String get prayerTimes => 'ناماز ۋاقتى';

  @override
  String get continueReading => 'Continue Reading';

  @override
  String get getLifetimePro => 'Get Lifetime Pro';

  @override
  String get unlockTajweed => 'Unlock Tajweed & Advanced Features';

  @override
  String get prayerCalculation => 'ناماز ھېسابلاش';

  @override
  String get method => 'ھېسابلاش ئۇسۇلى';

  @override
  String get madhab => 'Asr Juristic Method';

  @override
  String get surahs => 'سۈرە';

  @override
  String get ayahs => 'Ayahs';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Sunrise';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'ئەسر';

  @override
  String get maghrib => 'Maghrib';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '$prayerName دۇئا قىلىدىغان ۋاقىت كەلدى.';
  }

  @override
  String get dataStorage => 'سانلىق مەلۇمات ۋە ساقلاش';

  @override
  String get clearCache => 'Cache نى تازىلاش';

  @override
  String get cacheClearedSuccess => 'غەملەك مۇۋەپپەقىيەتلىك تازىلاندى';

  @override
  String get location => 'ئورنى';

  @override
  String get language => 'تىل';

  @override
  String get selectLanguage => 'تىل تاللاڭ';

  @override
  String get searchLanguage => 'Search 180+ languages...';

  @override
  String get systemDefault => 'سىستېما كۆڭۈلدىكى قىممىتى';

  @override
  String get currentLocation => 'نۆۋەتتىكى ئورنى (GPS)';

  @override
  String get locationServiceDisabled => 'ئورۇن مۇلازىمىتى چەكلەنگەن.';

  @override
  String get locationPermissionDenied => 'ئورۇن ئىجازىتى رەت قىلىندى.';

  @override
  String get locationDetectionFailed =>
      'ئورنىڭىزنى بايقىيالمىدى. قولدا شەھەر تاللاڭ ياكى قايتا سىناڭ.';

  @override
  String citiesCount(String count) {
    return '$count شەھەرلەر';
  }

  @override
  String get search => 'ئىزدەش';

  @override
  String get searchHint => 'ئىزدەش ...';

  @override
  String get noResults => 'ھېچقانداق نەتىجە تېپىلمىدى';

  @override
  String get loading => 'Loading ...';

  @override
  String get error => 'خاتالىق';

  @override
  String get appErrorOccurred => 'خاتالىق كۆرۈلدى';

  @override
  String get appUnknownError => 'نامەلۇم خاتالىق';

  @override
  String get quranLoadFailed =>
      'قۇرئان مەزمۇنىنى يۈكلەشكە بولمىدى. قايتا سىناڭ.';

  @override
  String get retry => 'قايتا سىناڭ';

  @override
  String get refreshAction => 'يېڭىلاش';

  @override
  String get cancel => 'بىكار قىلىش';

  @override
  String get save => 'ساقلاش';

  @override
  String get delete => 'ئۆچۈرۈش';

  @override
  String get edit => 'Edit';

  @override
  String get close => 'Close';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'ياق';

  @override
  String get surah => 'سۈرە';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'بەت';

  @override
  String get reading => 'Reading';

  @override
  String get recitation => 'Recitation';

  @override
  String get translation => 'تەرجىمە';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Tafsir نى يۈكلەۋاتىدۇ ...';

  @override
  String get tafsirSourceLabel => 'تەفسىر مەنبەسى';

  @override
  String get tafsirNoSurahFound => 'بۇ سۈرە ئۈچۈن ھېچقانداق تەپسىر تېپىلمىدى.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Ayah $ayah ئۈچۈن تافسىر تېپىلمىدى.';
  }

  @override
  String get tafsirLoadFailed => 'تەفسىرنى يۈكلىگىلى بولمىدى.';

  @override
  String get tafsirNoTextForAyah => 'بۇ ئايەت ئۈچۈن تەفسىر تېكىستى يوق.';

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
    return 'Tafsir مەنبەسى HTTP $statusCode خاتالىقىنى قايتۇردى.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'تاللانغان تەفسىر مەنبەسى ھېچقانداق جاۋاب قايتۇرمىدى.';

  @override
  String get tafsirCacheUnavailable =>
      'دەلىللەنگەن تەفسىر تېخى تورسىز ھالەتتە يوق. كۆرۈشتىن بۇرۇن مەنبەلىك تەفسىر سانلىق مەلۇمات جەدۋىلىنى ماسقەدەملەڭ.';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get addBookmark => 'خەتكۈچ قوشۇڭ';

  @override
  String get removeBookmark => 'خەتكۈچنى ئۆچۈرۈڭ';

  @override
  String get lastRead => 'Last Read';

  @override
  String get dailyZikr => 'Daily Zikr';

  @override
  String get duaMeaning1 =>
      'باشقىلار: «پەرۋەردىگارىمىز ، بىزگە بۇ دۇنيا ۋە ئاخىرەتتە ياخشىلىق ئاتا قىلغىن ، بىزنى دوزاخ ئازابىدىن ساقلىغىن» دەپ دۇئا قىلىدۇ.';

  @override
  String get duaMeaning2 =>
      'تەڭرى ھەر قانداق بىر جاننى كۆتۈرەلەيدىغان نەرسىدىن ئارتۇق يۈكلىمەيدۇ: ھەر بىرى قىلغان ياخشىلىقىغا ئېرىشىدۇ ۋە ئۇنىڭ ناچار ئازابىنى تارتىدۇ- «ئى رەببىم ، ئۇنتۇپ قالساق ياكى خاتالىق سادىر قىلساق ، بىزنى ۋەزىپىگە قويماڭ. ئى رەببىم ، بىزدىن ئىلگىرىكىلەرنى يۈكلىگەندەك بىزگە يۈك قىلما. ئى رەببىم ، بىز كۆتۈرەلەيدىغان كۈچىمىزدىن ئېشىپ كەتمەڭ. بىزنى مەغپىرەت قىلغىن ، بىزنى مەغپىرەت قىلغىن ، بىزگە رەھىم قىلغىن. سەن بىزنىڭ قوغدىغۇچىمىز ، شۇڭا بىزگە كاپىرلارغا قارشى ياردەم قىلغىن ».';

  @override
  String get duaMeaning3 =>
      '«پەرۋەردىگارىمىز ، بىزنى ھىدايەت قىلغاندىن كېيىن ، يۈرىكىمىزنى چەتكە قاقمىغىن. بىزگە رەھىم قىلغايسەن: سەن مەڭگۈ بەرگۈچى.';

  @override
  String get duaMeaning4 =>
      'ئى رەببىم ، مەن ۋە ئەۋلادلىرىم دۇئا-تىلاۋەت قىلسۇن. پەرۋەردىگارىم ، تەلىپىمنى قوبۇل قىلغىن.';

  @override
  String get duaMeaning5 =>
      'ئۇلارغا ياخشىلىق بىلەن كەمتەرلىك بىلەن قانىتىڭىزنى تۆۋەنلىتىڭ ۋە: «ئى رەببىم ، ئۇلارغا كىچىك ۋاقتىمدا ماڭا كۆڭۈل بۆلگەندەك ، ئۇلارغا رەھىم قىلغىن» دېگىن.';

  @override
  String get duaMeaning6 =>
      'ھەقىقىي كونترول قىلغۇچى بولغان خۇدا ئۇلۇغ بولسۇن. [پەيغەمبەر] ، ۋەھىي تولۇق تاماملىنىشتىن بۇرۇن دېكلاماتسىيە قىلىشقا ئالدىرىماڭ ، ئەمما: «ئى رەببىم ، مېنى بىلىمدە ئاشۇرغىن!» دېگىن.';

  @override
  String get duaMeaning7 =>
      '[پەيغەمبەر] ئېيتقىنكى ، «ئى رەببىم ، مەغپىرەت قىلغىن ۋە رەھىم قىلغىن ، سەن ھەممىدىن شەپقەتلىكسەن».';

  @override
  String get duaMeaning8 =>
      '«رەببىمىز ، جۈپتىمىز ۋە ئەۋلادلىرىمىزغا خۇشاللىق ئاتا قىلغىن. سىزنى تونۇغانلارغا بىزگە ياخشى ئۈلگە بولۇڭ ».';

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
  String get hadith => 'ھەدىس';

  @override
  String get hadithCollection => 'ھەدىس توپلىمى';

  @override
  String get hadithBooks => 'ھەدىس كىتابلىرى';

  @override
  String get searchHadith => 'ھەدىسنى ئىزدەڭ';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'ئاللاھنىڭ ئىسمى';

  @override
  String get liveTv => 'Live TV';

  @override
  String get watchLive => 'نەق مەيداننى كۆرۈڭ';

  @override
  String get streamError => 'ئېقىم خاتالىقى';

  @override
  String get reload => 'قايتا يۈكلەڭ';

  @override
  String get openInYoutube => 'YouTube دا ئېچىڭ';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'روزا تۇتۇش';

  @override
  String get quranReading => 'قۇرئان ئوقۇش';

  @override
  String get prayers => 'دۇئا';

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
  String get weeklyProgress => 'ھەپتىلىك ئىلگىرىلەش';

  @override
  String get monthlyProgress => 'Monthly Progress';

  @override
  String get statistics => 'Statistics';

  @override
  String get hijriCalendar => 'ھىجرىيە كالېندارى';

  @override
  String get gregorianCalendar => 'Gregorian Calendar';

  @override
  String get today => 'بۈگۈن';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get specialDays => 'ئالاھىدە كۈنلەر';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'ئىسلام يېڭى يىلى';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 رامىزان';

  @override
  String get specialDayDateLaylatAlQadr => '27 رامىزان';

  @override
  String get specialDayDateEidAlFitr => '1 Shawwal';

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
  String get qiblaFound => 'قىبلە تاپتى!';

  @override
  String get turnDevice => 'ئۈسكۈنىڭىزنى Qibla غا يۈزلەندۈرۈڭ';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'كومپاس خاتالىقى: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'بۇ ئۈسكۈنىدە كومپاس سېنزور ئىشلەتكىلى بولمايدۇ.';

  @override
  String get qiblaLocationRequiredTitle => 'Location required for Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Set your actual location before using the Qibla compass so the direction can be calculated accurately.';

  @override
  String get adhanNotificationChannelName => 'Adhan ئۇقتۇرۇشى';

  @override
  String get adhanNotificationChannelDescription =>
      'ناماز ئاۋازى بىلەن ناماز ۋاقتى ئاگاھلاندۇرۇلىدۇ.';

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
  String get theme => 'باشتېما';

  @override
  String get lightMode => 'يېنىك ھالەت';

  @override
  String get darkMode => 'قاراڭغۇ ھالەت';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'ھەققىدە';

  @override
  String get version => 'نەشرى';

  @override
  String get privacyPolicy => 'مەخپىيەتلىك تۈزۈمى';

  @override
  String get termsOfService => 'مۇلازىمەت شەرتلىرى';

  @override
  String get contactUs => 'بىز بىلەن ئالاقىلىشىڭ';

  @override
  String get rateApp => 'Rate App';

  @override
  String get shareApp => 'ئورتاقلىشىش دېتالى';

  @override
  String shareAppMessage(String appName, String url) {
    return '$appName نى تەكشۈرۈپ بېقىڭ: ئەڭ ئاخىرقى ئىسلام تۇرمۇش ئۇسۇلى! $url';
  }

  @override
  String get downloadManager => 'چۈشۈرۈش باشقۇرغۇچى';

  @override
  String get downloads => 'چۈشۈرۈش';

  @override
  String get downloading => 'چۈشۈرۈش ...';

  @override
  String get downloadComplete => 'چۈشۈرۈش تامام';

  @override
  String get downloadFailed => 'چۈشۈرۈش مەغلۇب بولدى';

  @override
  String get offlineMode => 'تورسىز ھالەت';

  @override
  String get noInternet => 'تور ئۇلىنىشى يوق';

  @override
  String get checkConnection => 'ئۇلىنىشىڭىزنى تەكشۈرۈپ بېقىڭ';

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
  String get getStarted => 'باشلاڭ';

  @override
  String get skip => 'Skip';

  @override
  String get next => 'كېيىنكى';

  @override
  String get done => 'تامام';

  @override
  String get onboarding1Title => 'سىرات-نۇرغا كەلگەنلىكىڭىزنى قارشى ئالىمىز';

  @override
  String get onboarding1Desc =>
      'دۇئا ۋاقتى ، قۇرئان ۋە باشقىلار ئۈچۈن تولۇق ئىسلام ھەمراھىڭىز';

  @override
  String get onboarding2Title => 'ناماز ۋاقتى';

  @override
  String get onboarding2Desc => 'ئورنىڭىزغا ئاساسەن توغرا دۇئا ۋاقتى';

  @override
  String get onboarding3Title => 'قۇرئان ۋە تېخىمۇ كۆپ';

  @override
  String get onboarding3Desc =>
      'قۇرئان ئوقۇش ، ئوقۇشۇڭنى ئىز قوغلاش ۋە ئىسلام مەزمۇنى ئۈستىدە ئىزدىنىش';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'Counter نى ئەسلىگە كەلتۈرۈش';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'نىشان سانى: $target';
  }

  @override
  String get tapToCount => 'ساناپ بېقىڭ';

  @override
  String get zikrCompletedMashAllah => 'تامام! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'ئاللاھ ھەر بىر مۇكەممەللىكتىن ئۈستۈن تۇرىدۇ.';

  @override
  String get zikrMeaningAlhamdulillah => 'بارلىق مەدھىيە ئاللاھقا مەنسۇپ.';

  @override
  String get zikrMeaningAllahuAkbar => 'ئاللاھ ئەڭ ئۇلۇغدۇر.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'ئاللاھتىن باشقا ئىلاھ يوق.';

  @override
  String get zikrMeaningAstaghfirullah => 'ئاللاھنىڭ مەغپىرىتىنى تىلەيمەن.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata => 'ئاللاھتىن باشقا كۈچ ۋە كۈچ يوق.';

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
  String get dailyProgress => 'كۈندىلىك ئىلگىرىلەش';

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
  String get recheckPremium =>
      'ئالىي دەرىجىلىك مۇشتەرىلىك ھالىتىنى قايتا تەكشۈرۈڭ';

  @override
  String get syncStore =>
      'ئەپ دۇكىنى بىلەن ماسقەدەملىنىپ ، ئالىي مۇشتەرىلىكىڭىزنى جەزملەشتۈرۈڭ.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'ھەقلىق مۇشتەرىلىكى دەلىللەندى.';

  @override
  String get premiumNotFound => 'سۇغۇرتا ھەققى تېپىلمىدى.';

  @override
  String premiumRefreshError(Object error) {
    return 'ئالىي دەرىجىلىك مۇشتەرىلىك ھالىتىنى يېڭىلىيالمىدى: $error';
  }

  @override
  String get offlineDownloadManager => 'تورسىز چۈشۈرۈش باشقۇرغۇچى';

  @override
  String get manageDatasets =>
      'كەڭ كۆلەمدە تورسىز ئاۋاز ۋە سانلىق مەلۇمات بوغچىسىنى باشقۇرۇڭ.';

  @override
  String get freeStorage => 'ئىچكى ئۈسكۈنىلەرنى ساقلاشنى ھەقسىز قىلىڭ.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'قۇرئان ساندانىنى تەكشۈرۈش ...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'قۇرئان ساندان ئەھۋالى';

  @override
  String statusLabel(Object status) {
    return 'ھالىتى: $status';
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
    return 'قۇرئان تەكشۈرۈش مەغلۇب بولدى: $error';
  }

  @override
  String get audioVoice => 'Audio Voice';

  @override
  String get audioVoiceMisharyAlafasy => 'ئەر (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'ئەر (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'ئەر (Sudais)';

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
    return 'نۆۋەتتىكى: $offset °';
  }

  @override
  String get manualCorrectionDesc =>
      'ئەگەر كومپاس قولدا تۈزىتىشكە ئېھتىياجلىق بولسا تەڭشەڭ. ئاكتىپ قىممەتلەر سائەت يۆنىلىشىدە ئايلىنىدۇ.';

  @override
  String get apply => 'ئۆزگەرتىشلەرنى ئىشلىتىڭ';

  @override
  String get resetOnboarding => 'ئىچكى تەڭشەشنى ئەسلىگە كەلتۈرۈڭ';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'دىئاگنوز قويۇش';

  @override
  String get diagnosticsNotSet => 'تەڭشەلمىدى';

  @override
  String get diagnosticsPrayerProfile => 'دۇئا ئارخىپى';

  @override
  String get diagnosticsPrayerSource => 'دۇئا ئورگىنى';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manual custom angles (no institutional source)';

  @override
  String get diagnosticsCloudDriven => 'Cloud Driven';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'قۇرئان ئاۋاز مۈلكى';

  @override
  String get diagnosticsAudioAssets => 'Audio Assets';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count files';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'كۆرۈنۈشتە مەغلۇب بولدى: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Localization Locales';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count قوللىدى';
  }

  @override
  String get diagnosticsQuranDataset => 'قۇرئان سانلىق مەلۇماتلىرى';

  @override
  String get diagnosticsQuranSurahs => 'قۇرئان كەرىم';

  @override
  String get diagnosticsQuranAyahs => 'قۇرئان ئايەتلىرى';

  @override
  String get diagnosticsQuranJuzMetadata => 'قۇرئان Juz Metadata';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Supabase دا يوقاپ كەتكەن بۇلۇت جەدۋىلى باغلانغان باغلاش ئاكتىپ';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'بۇلۇت تەكشۈرۈش مەغلۇپ بولدى: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz metadata يوقاپ كەتتى; باغلانغان قۇرۇلما ئارقىغا چېكىنىش ئاكتىپ';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'بۇلۇت قۇرۇلمىسىنى تەكشۈرۈش مەغلۇب بولدى: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'تەڭشەش تەلەپ قىلىنىدۇ. 8-رەسىمدە ئۈسكۈنىنى ئايلاندۇرۇش.';

  @override
  String get dailyVerse => 'كۈندىلىك ئايەت';

  @override
  String get dailyVerseUnavailableTitle =>
      'كۈندىلىك ئايەتنى ئىشلەتكىلى بولمايدۇ';

  @override
  String get dailyVerseUnavailableBody =>
      'دەلىللەنگەن كۈندىلىك ئايەت مەزمۇنى بۇ قۇرۇلۇش ئۈچۈن تېخى تەڭشەلمىگەن. بۇلۇت مەنبەسىگە ئۇلاڭ ياكى كۆرۈشتىن بۇرۇن دەلىللەنگەن غەملەكنى ماسقەدەملەڭ.';

  @override
  String get todaysIbadah => 'بۈگۈنكى ئىبادا';

  @override
  String get quickAccess => 'تېز زىيارەت';

  @override
  String get assistant => 'ياردەمچى';

  @override
  String get places => 'جايلار';

  @override
  String get library => 'كۈتۈپخانا';

  @override
  String get analytics => 'Analytics';

  @override
  String get dailyDuas => 'Daily Duas';

  @override
  String essentialDuas(String count) {
    return '$count مۇھىم دۇئاسى';
  }

  @override
  String get duaUnavailableTitle =>
      'دەلىللەنگەن دۇئانى تېخى ئىشلەتكىلى بولمايدۇ';

  @override
  String get duaUnavailableBody =>
      'تەكشۈرۈلگەن كۈندىلىك دۇئاسى تېخى بۇ ئۈسكۈنىگە ماسقەدەملەنمىدى. بۇلۇت مەنبەسىگە ئۇلىنىپ ، دەلىللەنمىگەن خاتالىقنىڭ ئورنىغا مەنبەلىك دۇئانى يۈكلەڭ.';

  @override
  String get duaCategoryQuranic => 'قۇرئان دۇئاسى';

  @override
  String get duaCategoryMorningEvening => 'ئەتىگەن ۋە كەچ';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'قوغداش';

  @override
  String get duaCategoryBeginning => 'باشلىنىش';

  @override
  String get duaCategorySleep => 'ئۇخلاش';

  @override
  String get duaCategoryFoodDrink => 'يېمەكلىك ۋە ئىچىملىك';

  @override
  String get duaCategoryForgiveness => 'كەچۈرۈم قىلىش';

  @override
  String get duaCategoryHome => 'ئۆي';

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
  String get islamicEducation => 'ئىسلام مائارىپى';

  @override
  String get sukunAudioTitle => 'Sukun Soundscape';

  @override
  String get hadithCollections => 'ھەدىس توپلىمى';

  @override
  String get hadithSourcePending => 'دەلىللەنگەن مەنبە ساقلىنىۋاتىدۇ';

  @override
  String get hadithUnavailableTitle =>
      'دەلىللەنگەن ھەدىس توپلىمى تېخىچە تېپىلمىدى';

  @override
  String get hadithUnavailableBody =>
      'بۇ قۇرۇلۇش يەنىلا دەلىللەنمىگەن تاشقى ھەدىس يەملىرىگە باغلىق. مەنبەلىك سانلىق مەلۇمات ماسقەدەملەنگۈچە ھەدىس كۆرۈش چەكلىنىدۇ.';

  @override
  String get paywallUnlockAll =>
      'مەنىۋى سەپىرىڭىزنىڭ بارلىق ئىقتىدارلىرىنى ئېچىڭ';

  @override
  String get premiumProductUnavailable =>
      'ئەلا مەھسۇلات ھازىر يوق. كېيىن قايتا سىناڭ.';

  @override
  String get premiumPurchaseFailed => 'سېتىۋېلىش تاماملانمىدى. قايتا سىناڭ.';

  @override
  String get paywallFeature1Title => 'نېرۋا ياردەمچىسى';

  @override
  String get paywallFeature1Desc =>
      'چەكلىمىسىز سۈنئىي ئەقىل ئارقىلىق سوئال-جاۋاب';

  @override
  String get paywallFeature2Title => 'چەكسىز تور';

  @override
  String get paywallFeature2Desc => 'بارلىق قىرائەتلەرنى چۈشۈرۈڭ';

  @override
  String get paywallFeature3Title => 'ئالاھىدە لايىھە';

  @override
  String get paywallFeature3Desc => 'ئەلا ئۇسلۇب ۋە خەت نۇسخىسى';

  @override
  String get paywallFeature4Title => 'ئېلانسىز';

  @override
  String get paywallFeature4Desc => 'نۆل ئېلان';

  @override
  String get paywallGetAccess => 'ئۆمۈرلۈك زىيارەتكە ئېرىشىش - 1.00 دوللار';

  @override
  String get restorePurchases => 'سېتىۋېلىشنى ئەسلىگە كەلتۈرۈش';

  @override
  String get zakatCalculator => 'زاكات ھېسابلىغۇچ';

  @override
  String get zakatGold => 'ئالتۇن (Altyn)';

  @override
  String get zakatSilver => 'كۈمۈش (Gümüş)';

  @override
  String get zakatCashBank => 'نەق پۇل / بانكا';

  @override
  String get zakatBusiness => 'سودا';

  @override
  String get zakatInvestments => 'مەبلەغ سېلىش';

  @override
  String get zakatWeightGrams => 'ئېغىرلىقى (g)';

  @override
  String get zakatPricePerGram => 'باھاسى / g';

  @override
  String get zakatTotalAmount => 'ئومۇمىي سومما';

  @override
  String get zakatInventoryValue => 'كەشپىيات قىممىتى';

  @override
  String get zakatDebts => 'قەرز';

  @override
  String get zakatTotal => 'ئومۇمىي';

  @override
  String get calculateZakat => 'Calculate Zakat';

  @override
  String get nisabNotReached => 'نىساب يەتمىدى. زاكات ۋاجىپ ئەمەس.';

  @override
  String get totalZakat => 'ئومۇمىي زاكات';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'نىساب: $nisab • مۈلۈك: $assets';
  }

  @override
  String get zakatGoldZakat => 'Gold Zakat';

  @override
  String get zakatSilverZakat => 'كۈمۈش زاكات';

  @override
  String get zakatCashZakat => 'نەق پۇل زاكات';

  @override
  String get zakatBusinessZakat => 'Business Zakat';

  @override
  String get zakatInvestmentZakat => 'مەبلەغ سېلىش زاكات';

  @override
  String get chatbotGreeting =>
      'ئەسسالامۇ ئەلەيكۇم! مەن سىزنىڭ ئىسلام ياردەمچىسى. مەندىن دۇئا ، روزا ، زاكات ياكى ئىسلام تېمىسى ھەققىدە سوراڭ.';

  @override
  String get chatbotLimitReached =>
      'كۈندىلىك سوئال چېكىگە يەتتى. چەكلىمىسىز Premium غا يېڭىلاش.';

  @override
  String get chatbotErrorMsg => 'مەن جاۋاب بېرەلمىدىم. قايتا سىناڭ.';

  @override
  String get chatbotOfflinePrompt =>
      'دەلىللەنگەن تورسىز ئىسلام بىلىملىرى بازىسى ھازىرمۇ تۈزۈلىۋاتىدۇ. سىز ھازىر تورسىز چېكىنىشنى قوزغىتالايسىز ، ئەمما ئۇ سانلىق مەلۇمات سانلىق مەلۇماتلىرى تەييار بولغۇچە پەقەت چەكلىك بىخەتەر ئۇچۇرلارنى كۆرسىتىدۇ.\n\nتورسىز چېكىنىشنى قوزغىتىشنى خالامسىز؟';

  @override
  String get chatbotOfflineSwitched =>
      'تورسىز چېكىنىش قوزغىتىلدى. تەكشۈرۈلگەن يەرلىك ئىسلام جاۋابلىرى تېخى تەييار ئەمەس.';

  @override
  String get chatbotOfflineDownloadLabel => 'تورسىز چۈشۈشنى قوزغىتىڭ';

  @override
  String get downloadPreparing => 'چۈشۈرۈشكە تەييارلىق قىلىۋاتىدۇ ...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'سۈرىنى چۈشۈرۈش $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'بۇ قىرائەت ئۈچۈن ئاللىبۇرۇن چۈشۈرۈلگەن بارلىق سۈرە.';

  @override
  String get offlineQuranAudioPacks => 'تورسىز قۇرئان ئاۋاز بولىقى';

  @override
  String storedOnDeviceMb(String size) {
    return 'ئۈسكۈنىدە ساقلانغان: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total سۈرىسى چۈشۈرۈلدى';
  }

  @override
  String get redownloadMissingRepair => 'رېمونت قىلىش / چۈشۈرۈش يوقاپ كەتتى';

  @override
  String get downloadAction => 'چۈشۈرۈش';

  @override
  String get resumeDownload => 'چۈشۈرۈشنى داۋاملاشتۇرۇڭ';

  @override
  String get deleteDownloadedFiles => 'چۈشۈرۈلگەن ھۆججەتلەرنى ئۆچۈرۈڭ';

  @override
  String get downloadCancelling => 'بىكار قىلىش ...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'چۈشۈرۈش $reciter ئۈچۈن ئەمەلدىن قالدۇرۇلدى.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'چۈشۈرۈش $reciter ئۈچۈن تاماملاندى.';
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
    return '$reciter ئۈچۈن تورسىز ھۆججەتلەر ئۆچۈرۈلدى.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'دەلىللەنگەن قۇرئان ئاۋاز مەنبەلىرىنى ھازىرچە ئىشلەتكىلى بولمايدۇ.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Verified Quran audio pack is incomplete ($available/$total). Try again after the audio catalog is updated.';
  }

  @override
  String get chatbotHint => 'سوئال سوراڭ ...';

  @override
  String get chatbotThinking => 'تەپەككۇر ...';

  @override
  String get sukunMixerSubtitle => 'تەبىئەت ۋە قۇرئان ئارىلاشتۇرغۇچى';

  @override
  String get audioPlayFailed => 'ئاۋاز قويۇش مەغلۇب بولدى';

  @override
  String get sukunNatureLabel => 'سۇكۇن (تەبىئەت)';

  @override
  String get sukunRainOfMercy => 'رەھىم يامغۇر';

  @override
  String get sukunGardenOfPeace => 'تىنچلىق باغچىسى';

  @override
  String get sukunMidnightCalm => 'Midnight Calm';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'ئاۋازلىق كۆرۈنۈشنى ئىشلەتكىلى بولمايدۇ';

  @override
  String get sukunUnavailableBody =>
      'بۇ قۇرۇلۇش تېخى تەلەپ قىلىنغان سۇكۇن ئاۋازلىق كۆرۈنۈش مۈلۈكلىرىنى ئۆز ئىچىگە ئالمايدۇ.';

  @override
  String get prayerCompletion => 'دۇئا تامام';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'كۈن تەرتىپى';

  @override
  String get bestStreak => 'Best streak';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'Cloud AI (Gemini) نى ئىشلىتىڭ';

  @override
  String get chatbotDownloadLocalAi => 'تورسىز چۈشۈشنى قوزغىتىڭ';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count قالدى';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API سەپلەنمىگەن. دەلىللەنگەن تورسىز ئىسلام يېتەكچىلىكى تېخىچە يوق.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] تەكشۈرۈلگەن يەرلىك ئىسلام يېتەكچىلىكى تېخىچە يوق. مەنبەلىك جاۋاب ئۈچۈن Cloud AI غا ئالماشتۇرۇڭ.';

  @override
  String get mosques => 'مەسچىتلەر';

  @override
  String get halalFood => 'ھالال يېمەكلىك';

  @override
  String get placesSearchArea => 'بۇ يەرنى ئىزدەڭ';

  @override
  String get nearbyMosques => 'مەسچىتلەرگە يېقىن';

  @override
  String get islamicSchools => 'ئىسلام مەكتەپلىرى';

  @override
  String placesFoundCount(String count) {
    return '$count تېپىلدى';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API خاتالىقى: $statusCode';
  }

  @override
  String get placesNetworkError => 'تور خاتالىقى. قايتا سىناڭ.';

  @override
  String get placesLocationRequiredTitle => 'ئورنى تەلەپ قىلىنىدۇ';

  @override
  String get placesLocationRequiredBody =>
      'ئالدى بىلەن ئورۇن بەلگىلەڭ ، شۇڭا يېقىن ئەتراپتىكى مەسچىتلەر ، ھالال يېمەكلىكلەر ۋە ئىسلام مەكتەپلىرىنى توغرا ئىزدىگىلى بولىدۇ.';

  @override
  String get placesMapTilesUnavailableTitle =>
      'خەرىتە كاھىشلىرىنى ئىشلەتكىلى بولمايدۇ';

  @override
  String get placesMapTilesUnavailableBody =>
      'بۇ قۇرۇلۇش ئۈچۈن دەلىللەنگەن خەرىتە كاھىش مەنبەسى تېخى سەپلەنمىگەن. يېقىن جايلار يەنىلا ساقلانغان ئورنىڭىزدىن يۈكلىيەلەيدۇ.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'سانلىق مەلۇماتلارنى ئىشلەتكىلى بولمايدۇ';

  @override
  String get placesDataSourceUnavailableBody =>
      'دەلىللەنگەن ئورۇنلارنىڭ سانلىق مەلۇمات نۇقتىسى بۇ قۇرۇلۇش ئۈچۈن تېخى تەڭشەلمىگەن. يېقىن ئەتراپتىكى ئىزدەشنى قوزغىتىشتىن بۇرۇن PLACES_OVERPASS_API_URL نى تەستىقلانغان ۋاكالەتچى ياكى تەمىنلىگۈچىگە تەڭشەڭ.';

  @override
  String get unknownPlaceName => 'نامەلۇم ئىسىم';

  @override
  String get islamicPlaceFallback => 'ئىسلام ئورنى';

  @override
  String get asmaMeaning1 => 'مەنپەئەتدار';

  @override
  String get asmaMeaning2 => 'رەھىمدىل';

  @override
  String get asmaMeaning3 => 'پادىشاھ / مەڭگۈلۈك رەببى';

  @override
  String get asmaMeaning4 => 'ئەڭ مۇقەددەس';

  @override
  String get asmaMeaning5 => 'تىنچلىقنىڭ مەنبەسى';

  @override
  String get asmaMeaning6 => 'بىخەتەرلىك بەرگۈچى';

  @override
  String get asmaMeaning7 => 'قوغدىغۇچى';

  @override
  String get asmaMeaning8 => 'ئەڭ قىممەتلىك / ئەڭ كۈچلۈك';

  @override
  String get asmaMeaning9 => 'ساتقۇچى';

  @override
  String get asmaMeaning10 => 'ئەڭ ئۇلۇغ';

  @override
  String get asmaMeaning11 => 'ياراتقۇچى';

  @override
  String get asmaMeaning12 => 'زاكاز قىلغۇچى';

  @override
  String get asmaMeaning13 => 'گۈزەللىكنىڭ شەكلى';

  @override
  String get asmaMeaning14 => 'كەچۈرۈم قىلىش';

  @override
  String get asmaMeaning15 => 'بويسۇندۇرغۇچى';

  @override
  String get asmaMeaning16 => 'ھەممىنى بەرگۈچى';

  @override
  String get asmaMeaning17 => 'ساقلىغۇچى';

  @override
  String get asmaMeaning18 => 'ئاچقۇچى';

  @override
  String get asmaMeaning19 => 'ھەممىنى بىلگۈچى';

  @override
  String get asmaMeaning20 => 'چەكلىگۈچى';

  @override
  String get asmaMeaning21 => 'ياردەمچى';

  @override
  String get asmaMeaning22 => 'Abaser';

  @override
  String get asmaMeaning23 => 'Exalter';

  @override
  String get asmaMeaning24 => 'شەرەپ ئىگىسى';

  @override
  String get asmaMeaning25 => 'ھاقارەتلىگۈچى';

  @override
  String get asmaMeaning26 => 'ھەممىنى ئاڭلىغۇچى';

  @override
  String get asmaMeaning27 => 'ھەممىنى كۆرگۈچى';

  @override
  String get asmaMeaning28 => 'سوتچى';

  @override
  String get asmaMeaning29 => 'ئادىل';

  @override
  String get asmaMeaning30 => 'ئىنچىكە';

  @override
  String get asmaMeaning31 => 'ھەممە خەۋەردار';

  @override
  String get asmaMeaning32 => 'ئالدىنئالا';

  @override
  String get asmaMeaning33 => 'ھەيۋەتلىك';

  @override
  String get asmaMeaning34 => 'ئۇلۇغ كەچۈرۈم قىلغۇچى';

  @override
  String get asmaMeaning35 => 'مىننەتدارلىق مۇكاپاتى';

  @override
  String get asmaMeaning36 => 'ئەڭ يۇقىرى';

  @override
  String get asmaMeaning37 => 'ئەڭ ئۇلۇغ';

  @override
  String get asmaMeaning38 => 'ساقلىغۇچى';

  @override
  String get asmaMeaning39 => 'ئوزۇقلاندۇرغۇچى';

  @override
  String get asmaMeaning40 => 'ھېساباتچى';

  @override
  String get asmaMeaning41 => 'مەلىكە';

  @override
  String get asmaMeaning42 => 'كەڭ قورساق';

  @override
  String get asmaMeaning43 => 'كۆزەتكۈچى';

  @override
  String get asmaMeaning44 => 'دۇئاغا جاۋاب بەرگۈچى';

  @override
  String get asmaMeaning45 => 'ھەممىنى چۈشىنىش';

  @override
  String get asmaMeaning46 => 'مۇكەممەل ئەقىللىق';

  @override
  String get asmaMeaning47 => 'سۆيۈملۈك';

  @override
  String get asmaMeaning48 => 'ئەڭ شەرەپلىك';

  @override
  String get asmaMeaning49 => 'تىرىلدۈرگۈچى';

  @override
  String get asmaMeaning50 => 'گۇۋاھچى';

  @override
  String get asmaMeaning51 => 'ھەقىقەت';

  @override
  String get asmaMeaning52 => 'بارلىق ئىشەنچلىك ۋاكالەتچى';

  @override
  String get asmaMeaning53 => 'بارلىق كۈچنىڭ ئىگىسى';

  @override
  String get asmaMeaning54 => 'كۈچلۈك';

  @override
  String get asmaMeaning55 => 'قوغدىغۇچى';

  @override
  String get asmaMeaning56 => 'مەدھىيە';

  @override
  String get asmaMeaning57 => 'باھالىغۇچى';

  @override
  String get asmaMeaning58 => 'ئىجاد قىلغۇچى';

  @override
  String get asmaMeaning59 => 'ئەسلىگە كەلتۈرگۈچى';

  @override
  String get asmaMeaning60 => 'ھاياتلىق بەرگۈچى';

  @override
  String get asmaMeaning61 => 'ھاياتلىق ئىگىسى';

  @override
  String get asmaMeaning62 => 'مەڭگۈ ياشايدۇ';

  @override
  String get asmaMeaning63 => 'ئۆز-ئۆزىگە تايىنىدىغان ياردەمچى';

  @override
  String get asmaMeaning64 => 'تاپقۇچى';

  @override
  String get asmaMeaning65 => 'شەرەپلىك';

  @override
  String get asmaMeaning66 => 'بىردىنبىر';

  @override
  String get asmaMeaning67 => 'بىر';

  @override
  String get asmaMeaning68 => 'ھەممەيلەن تەلەپ قىلغان';

  @override
  String get asmaMeaning69 => 'كۈچلۈك';

  @override
  String get asmaMeaning70 => 'بارلىق كۈچنىڭ ياراتقۇچىسى';

  @override
  String get asmaMeaning71 => 'تېزلەتكۈچى';

  @override
  String get asmaMeaning72 => 'كېچىكىش';

  @override
  String get asmaMeaning73 => 'بىرىنچى';

  @override
  String get asmaMeaning74 => 'ئەڭ ئاخىرقى';

  @override
  String get asmaMeaning75 => 'كۆرۈنۈش';

  @override
  String get asmaMeaning76 => 'يوشۇرۇن';

  @override
  String get asmaMeaning77 => 'ۋالىي';

  @override
  String get asmaMeaning78 => 'ئەڭ ئالىي';

  @override
  String get asmaMeaning79 => 'ياخشىلىق قىلغۇچى';

  @override
  String get asmaMeaning80 => 'تەۋبە يېتەكچىسى';

  @override
  String get asmaMeaning81 => 'قىساسكار';

  @override
  String get asmaMeaning82 => 'كەچۈرۈم قىلغۇچى';

  @override
  String get asmaMeaning83 => 'كلېمېنت';

  @override
  String get asmaMeaning84 => 'ھەممەيلەننىڭ ئىگىسى / ھۆكۈمرانى';

  @override
  String get asmaMeaning85 => 'ئۇلۇغلۇق ۋە مۇكاپاتنىڭ ئىگىسى';

  @override
  String get asmaMeaning86 => 'باراۋەر';

  @override
  String get asmaMeaning87 => 'توپلىغۇچى';

  @override
  String get asmaMeaning88 => 'باي';

  @override
  String get asmaMeaning89 => 'بېيىش';

  @override
  String get asmaMeaning90 => 'زىياننىڭ ئالدىنى ئالغۇچى';

  @override
  String get asmaMeaning91 => 'زىيان تارتقۇچى';

  @override
  String get asmaMeaning92 => 'مەنپەئەت بەرگۈچى';

  @override
  String get asmaMeaning93 => 'نۇر';

  @override
  String get asmaMeaning94 => 'يېتەكچى';

  @override
  String get asmaMeaning95 => 'ئىجاد قىلغۇچى';

  @override
  String get asmaMeaning96 => 'مەڭگۈلۈك';

  @override
  String get asmaMeaning97 => 'ۋارىس';

  @override
  String get asmaMeaning98 => 'ئەڭ ھەققانىي يېتەكچى';

  @override
  String get asmaMeaning99 => 'بىمار';
}
