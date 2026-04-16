// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Burmese (`my`).
class AppLocalizationsMy extends AppLocalizations {
  AppLocalizationsMy([String locale = 'my']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'အစ္စလာမ့်အလင်းလမ်း';

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
  String get sunrise => 'နေထွက်';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Maghrib';

  @override
  String get isha => 'အိရှာ';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName အတွက် အချိန်';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'ဆုတောင်းရန် အချိန်တန်ပြီ $prayerName။';
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
  String get systemDefault => 'စနစ် ပုံသေ';

  @override
  String get currentLocation => 'Current Location (GPS)';

  @override
  String get locationServiceDisabled => 'တည်နေရာဝန်ဆောင်မှုကို ပိတ်ထားသည်။';

  @override
  String get locationPermissionDenied =>
      'တည်နေရာခွင့်ပြုချက်ကို ငြင်းဆိုထားသည်။';

  @override
  String get locationDetectionFailed =>
      'သင့်တည်နေရာကို ရှာမတွေ့ပါ။ မြို့ကို ကိုယ်တိုင်ရွေးချယ်ပါ သို့မဟုတ် ထပ်စမ်းကြည့်ပါ။';

  @override
  String citiesCount(String count) {
    return '$count မြို့များ';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'ရလဒ်များမတွေ့ပါ။';

  @override
  String get loading => 'ဖွင့်နေသည်...';

  @override
  String get error => 'အမှား';

  @override
  String get appErrorOccurred => 'အမှားအယွင်းတစ်ခု ဖြစ်ပွားခဲ့သည်။';

  @override
  String get appUnknownError => 'အမည်မသိ အမှား';

  @override
  String get quranLoadFailed =>
      'ကုရ်အာန်အကြောင်းအရာကို တင်၍မရပါ။ ထပ်စမ်းကြည့်ပါ။';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'ပြန်လည်စတင်ပါ။';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'ဖျက်ပါ။';

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
  String get tafsirLoading => 'တက်ဖ်ဆာကို ဖွင့်နေသည်...';

  @override
  String get tafsirSourceLabel => 'Tafsir အရင်းအမြစ်';

  @override
  String get tafsirNoSurahFound => 'ဤစူရာဟ်အတွက် tafsir မတွေ့ပါ။';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'ayah $ayah အတွက် tafsir မတွေ့ပါ။';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir ကို တင်၍မရပါ။';

  @override
  String get tafsirNoTextForAyah => 'ဤအာယာအတွက် tafsir စာသားမရှိပါ။';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'tafsir $current/$total ကို ဒေါင်းလုဒ်လုပ်နေသည်';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'တက်ဖ်ဆာ $current/$total ကို ဖွင့်နေသည်';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir အရင်းအမြစ်သည် HTTP $statusCode အမှားတစ်ခုကို ပြန်ပေးခဲ့သည်။';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'ရွေးချယ်ထားသော tafsir ရင်းမြစ်သည် ထည့်သွင်းခြင်းမရှိပါ။';

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
      'အချို့က \'\'အရှင်ဘုရား၊ ဤလောက၌လည်းကောင်း၊ နောင်တမလွန်ဘ၀၌လည်းကောင်း ငါတို့အား ကျေးဇူးပြု၍ မီးဘေးဒဏ်မှ ကာကွယ်စောင့်ရှောက်တော်မူပါ\'\'ဟု ဆုတောင်းကြသည်။';

  @override
  String get duaMeaning2 =>
      'ဘုရားသခင်သည် မိမိခံနိုင်ရည်ထက် ပိုသောစိတ်ဝိညာဉ်ကို ဝန်ထုပ်ဝန်ပိုးမဖြစ်စေပါ- လူတိုင်းသည် ကောင်းမှုပြုသမျှကို ရရှိကြပြီး မကောင်းမှုကို ခံစားရသည်- \'သခင်၊ ငါတို့သည် မေ့လျော့ခြင်း သို့မဟုတ် အမှားလုပ်မိပါက ငါတို့ကို တာဝန်မယူပါနှင့်။ သခင်၊ ကိုယ်တော်သည် အကျွန်ုပ်တို့ရှေ့၌ရှိသောသူတို့ကို ဝန်တင်တော်မူသကဲ့သို့၊ သခင်၊ ငါတို့ကိုခံနိုင်ရည်ရှိသည်ထက် ပို၍ဝန်ထုပ်ဝန်ပိုးမဖြစ်ပါနှင့်။ ခွင့်လွှတ်ပါ၊ ခွင့်လွှတ်ပါ၊ ကျွန်ုပ်တို့ကို သနားပါ။ ကိုယ်တော်သည် အကျွန်ုပ်တို့ကို အကာအကွယ်ပေးတော်မူသောကြောင့်၊';

  @override
  String get duaMeaning3 =>
      '‘အကျွန်ုပ်တို့၏သခင်၊ ကိုယ်တော်သည် အကျွန်ုပ်တို့ကို လမ်းပြပြီးနောက် အကျွန်ုပ်တို့၏ စိတ်နှလုံးကို မလွှဲမရှောင်ပါနှင့်။ ကိုယ်တော်၏ကရုဏာကို ကျွန်ုပ်တို့အား ပေးသနားတော်မူပါ- ကိုယ်တော်သည် အစဉ်ပေးတော်မူသောအရှင်ဖြစ်တော်မူ၏။';

  @override
  String get duaMeaning4 =>
      'အရှင်ဘုရား၊ အကျွန်ုပ်နှင့် အမျိုးအနွယ်တို့သည် ဆုတောင်းပဌနာပြုခြင်းငှာ၊ သခင်၊ ကျွန်ုပ်၏တောင်းဆိုချက်ကို လက်ခံပါ။';

  @override
  String get duaMeaning5 =>
      'ကြင်​နာ​မှု​ရှိ​၍​အ​တောင်​ပံ​ကို​နှိမ့်​ချ​၍ ``အ​ရှင်၊ ကျွန်​တော်​ငယ်​ရွယ်​စဉ်​က​သူ​တို့​သည်​အ​ကျွန်ုပ်​ကို​ဂ​ရု​စိုက်​ကြ​သည့်​အ​တိုင်း သနား​တော်​မူ​ပါ​စေ\'\' ဟု​လျှောက်​၏။';

  @override
  String get duaMeaning6 =>
      'စစ်မှန်သော အုပ်စိုးရှင် ဘုရားသခင်ဖြစ်တော်မူစေသတည်း။ [ပရောဖက်]၊ ဗျာဒိတ်တော်မပြီးသေးမီ ရွတ်ဆိုရန် အလျင်စလိုမလုပ်ပါနှင့်၊ \'သခင်၊ အကျွန်ုပ်ကို အသိပညာတိုးပွားစေပါ\'ဟု လျှောက်ပါ။';

  @override
  String get duaMeaning7 =>
      '[နဗီတမန်တော်]၊ သခင်၊ ခွင့်လွှတ်တော်မူပါ၊ ကရုဏာတော်ရှိတော်မူပါ။';

  @override
  String get duaMeaning8 =>
      'ငါတို့၏သခင်၊ ငါတို့၏အိမ်ထောင်ဖက်နှင့် အမျိုးအနွယ်၌ ရွှင်လန်းစေတော်မူပါ။ ကိုယ်တော်ကို သိသောသူတို့အား ကျွန်ုပ်တို့အား စံနမူနာကောင်းများ ပေးတော်မူပါ။\'';

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
  String get hadith => 'ဟဒီးစ်';

  @override
  String get hadithCollection => 'Hadith စုစည်းမှု';

  @override
  String get hadithBooks => 'Hadith စာအုပ်များ';

  @override
  String get searchHadith => 'Hadith ကိုရှာပါ။';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Names of Allah';

  @override
  String get liveTv => 'တိုက်ရိုက်တီဗီ';

  @override
  String get watchLive => 'တိုက်ရိုက်ကြည့်ရှုပါ။';

  @override
  String get streamError => 'ထုတ်လွှင့်မှုအမှား';

  @override
  String get reload => 'ပြန်တင်ပါ။';

  @override
  String get openInYoutube => 'YouTube တွင်ဖွင့်ပါ။';

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
    return '$hoursနာရီ ${minutes}m';
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
  String get islamicNewYear => 'အစ္စလာမ့်နှစ်သစ်ကူး';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => 'ရမ်ဇာန်လ ၁';

  @override
  String get specialDayDateLaylatAlQadr => '၂၇ ရမ်ဇာန်';

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
  String get qiblaFound => 'Qibla found!';

  @override
  String get turnDevice => 'Turn your device to face the Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'သံလိုက်အိမ်မြှောင် အမှား- $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'သံလိုက်အိမ်မြှောင်အာရုံခံကိရိယာကို ဤစက်ပစ္စည်းတွင် မရရှိနိုင်ပါ။';

  @override
  String get qiblaLocationRequiredTitle => 'Qibla အတွက် တည်နေရာ လိုအပ်သည်။';

  @override
  String get qiblaLocationRequiredBody =>
      'Qibla သံလိုက်အိမ်မြှောင်ကို အသုံးမပြုမီ သင်၏အမှန်တကယ်တည်နေရာကို သတ်မှတ်၍ ဦးတည်ချက်ကို တိကျစွာ တွက်ချက်နိုင်သည်။';

  @override
  String get adhanNotificationChannelName => 'Adhan အသိပေးချက်များ';

  @override
  String get adhanNotificationChannelDescription =>
      'အဒ်ဟန်အသံဖြင့် ဆုတောင်းချိန်သတိပေးချက်။';

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
  String get theme => 'အပြင်အဆင်';

  @override
  String get lightMode => 'အလင်းမုဒ်';

  @override
  String get darkMode => 'အမှောင်မုဒ်';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'About';

  @override
  String get version => 'ဗားရှင်း';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get termsOfService => 'Terms of Service';

  @override
  String get contactUs => 'Contact Us';

  @override
  String get rateApp => 'အက်ပ်ကို အဆင့်သတ်မှတ်ပါ။';

  @override
  String get shareApp => 'အက်ပ်ကို မျှဝေပါ။';

  @override
  String shareAppMessage(String appName, String url) {
    return '$appName ကိုကြည့်ပါ- အဆုံးစွန်သော အစ္စလာမ့်လူနေမှုပုံစံအက်ပ်။ $url';
  }

  @override
  String get downloadManager => 'ဒေါင်းလုဒ်မန်နေဂျာ';

  @override
  String get downloads => 'ဒေါင်းလုဒ်များ';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'ဒေါင်းလုဒ် ပြီးအောင်လုပ်ပါ။';

  @override
  String get downloadFailed => 'ဒေါင်းလုဒ် မအောင်မြင်ပါ။';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'အင်တာနက်ချိတ်ဆက်မှု မရှိပါ။';

  @override
  String get checkConnection => 'သင့်ချိတ်ဆက်မှုကို စစ်ဆေးပါ။';

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
  String get tapToCount => 'ရေတွက်ရန် တို့ပါ။';

  @override
  String get zikrCompletedMashAllah => 'ပြီးပါပြီ။ MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'အလ္လာဟ်အရှင်မြတ်သည် မပြည့်စုံမှုတိုင်းထက် သာလွန်တော်မူ၏။';

  @override
  String get zikrMeaningAlhamdulillah =>
      'ချီးမွမ်းခြင်းအားလုံးသည် အလ္လာဟ်အရှင်မြတ်နှင့်သက်ဆိုင်သည်။';

  @override
  String get zikrMeaningAllahuAkbar =>
      'အလ္လာဟ်အရှင်မြတ်သည် အကြီးမြတ်ဆုံးဖြစ်သည်။';

  @override
  String get zikrMeaningLaIlahaIllallah => 'အလ္လာဟ်အရှင်မြတ်မှတပါး ဘုရားမရှိ။';

  @override
  String get zikrMeaningAstaghfirullah =>
      'အလ္လာဟ်အရှင်မြတ်ရဲ့ ခွင့်လွှတ်မှုကို ငါရှာတယ်။';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'အလ္လာဟ်အရှင်မြတ်အားဖြင့်မှတပါး တန်ခိုးနှင့် တန်ခိုးမရှိပေ။';

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
  String get offlineDownloadManager => 'အော့ဖ်လိုင်းဒေါင်းလုဒ်မန်နေဂျာ';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'စက်တွင်း သိုလှောင်ခန်းကို အခမဲ့လုပ်ပါ။';

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
  String get audioVoice => 'အသံအသံ';

  @override
  String get audioVoiceMisharyAlafasy => 'ယောကျာ်းလေး (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'ယောကျာ်းလေး (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'ယောကျာ်းလေး (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Qibla Calibration';

  @override
  String get compassSmoothing => 'သံလိုက်အိမ်မြှောင် ချောချောမွေ့မွေ့';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Calibration Offset';

  @override
  String currentOffset(Object offset) {
    return 'လက်ရှိ- $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'သင့်အိမ်မြှောင်တွင် လက်ဖြင့် ပြုပြင်မှု လိုအပ်ပါက ချိန်ညှိပါ။ အပြုသဘောဆောင်သောတန်ဖိုးများသည် နာရီလက်တံအတိုင်းလှည့်သည်။';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'ရောဂါရှာဖွေရေး';

  @override
  String get diagnosticsNotSet => 'မသတ်မှတ်ထားဘူး။';

  @override
  String get diagnosticsPrayerProfile => 'ဆုတောင်းပရိုဖိုင်';

  @override
  String get diagnosticsPrayerSource => 'ဆုတောင်းပိုင်ခွင့်';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'စိတ်ကြိုက် / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'ကိုယ်တိုင်စိတ်ကြိုက်ထောင့်များ (အဖွဲ့အစည်းဆိုင်ရာ အရင်းအမြစ်မရှိပါ)';

  @override
  String get diagnosticsCloudDriven => 'Cloud Driven';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan အသံပိုင်ဆိုင်မှုများ';

  @override
  String get diagnosticsUiAudioAssets => 'UI အသံ ပိုင်ဆိုင်မှုများ';

  @override
  String get diagnosticsQuranAudioAssets => 'ကုရ်အာန် အသံပိုင်ဆိုင်မှုများ';

  @override
  String get diagnosticsAudioAssets => 'အသံပိုင်ဆိုင်မှုများ';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count ဖိုင်များ';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifest ကိုဖတ်၍မရပါ- $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Localization ဒေသများ';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count ပံ့ပိုးထားသည်။';
  }

  @override
  String get diagnosticsQuranDataset => 'ကုရ်အာန်ဒေတာအတွဲ';

  @override
  String get diagnosticsQuranSurahs => 'ကုရ်အာန်စူရာဟ်များ';

  @override
  String get diagnosticsQuranAyahs => 'ကုရ်အာန် Ayahs';

  @override
  String get diagnosticsQuranJuzMetadata => 'ကုရ်အာန် Juz Metadata';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Supabase တွင် တိမ်တိုက်ဇယားများ ပျောက်ဆုံးနေပါသည်။ အစုလိုက်အပြုံလိုက် တုံ့ပြန်မှု တက်ကြွနေသည်။';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud စစ်ဆေးမှု မအောင်မြင်ပါ- $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz မက်တာဒေတာ ပျောက်ဆုံးနေခြင်း၊ အစုအပြုံလိုက်ဖွဲ့စည်းပုံဆိုင်ရာ ဆုတ်ယုတ်မှု တက်ကြွမှု';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Cloud တည်ဆောက်ပုံ စစ်ဆေးခြင်း မအောင်မြင်ပါ- $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'ချိန်ညှိမှု လိုအပ်သည်။ ပုံ-8 တွင် စက်ကိုလှည့်ပါ။';

  @override
  String get dailyVerse => 'နေ့စဉ်ကျမ်းပိုဒ်';

  @override
  String get todaysIbadah => 'ယနေ့ အီဗဒ';

  @override
  String get quickAccess => 'အမြန်ဝင်ရောက်ပါ။';

  @override
  String get assistant => 'လက်ထောက်';

  @override
  String get places => 'နေရာများ';

  @override
  String get library => 'စာကြည့်တိုက်';

  @override
  String get analytics => 'ပိုင်းခြားစိတ်ဖြာပါ။';

  @override
  String get dailyDuas => 'နေ့စဉ် Duas';

  @override
  String essentialDuas(String count) {
    return '$count မရှိမဖြစ်လိုအပ်သော duas';
  }

  @override
  String get duaUnavailableTitle =>
      'အတည်ပြုထားသော duas များကို မရရှိနိုင်သေးပါ။';

  @override
  String get duaUnavailableBody =>
      'အတည်ပြုထားသော နေ့စဉ် duas ကို ဤစက်ပစ္စည်းသို့ စင့်ခ်မလုပ်ရသေးပါ။ အတည်မပြုရသေးသော တုံ့ပြန်မှုအစား အရင်းအမြစ်မှ duas ကို တင်ရန် cloud အရင်းအမြစ်သို့ ချိတ်ဆက်ပါ။';

  @override
  String get duaCategoryQuranic => 'Quranic dua';

  @override
  String get duaCategoryMorningEvening => 'မနက်ပိုင်း ညပိုင်း';

  @override
  String get duaCategoryTasbih => 'တက်ဗိ';

  @override
  String get duaCategoryProtection => 'အကာအကွယ်';

  @override
  String get duaCategoryBeginning => 'အစပိုင်း';

  @override
  String get duaCategorySleep => 'အိပ်ပါ။';

  @override
  String get duaCategoryFoodDrink => 'အစားအသောက်နှင့် သောက်စရာ';

  @override
  String get duaCategoryForgiveness => 'ခွင့်လွှတ်ပါ။';

  @override
  String get duaCategoryHome => 'အိမ်';

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
  String get islamicEducation => 'အစ္စလာမ့်ပညာရေး';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Hadith စုဆောင်းမှုများ';

  @override
  String get hadithSourcePending =>
      'အတည်ပြုပြီးသော အရင်းအမြစ်ကို ဆိုင်းငံ့ထားသည်။';

  @override
  String get hadithUnavailableTitle =>
      'အတည်ပြုထားသော hadith စုဆောင်းမှုများကို မရရှိနိုင်သေးပါ။';

  @override
  String get hadithUnavailableBody =>
      'ဤတည်ဆောက်မှုသည် အတည်မပြုရသေးသော ပြင်ပဟဒီးသ်အဒ်အပေါ် မူတည်နေသေးသည်။ ရင်းမြစ်ဒေတာအစုံကို ထပ်တူပြုသည့်အချိန်အထိ Hadith ရှာဖွေခြင်းကို ပိတ်ထားသည်။';

  @override
  String get paywallUnlockAll =>
      'သင်၏ဝိညာဉ်ရေးခရီးအတွက် အင်္ဂါရပ်အားလုံးကို လော့ခ်ဖွင့်ပါ။';

  @override
  String get premiumProductUnavailable =>
      'ပရီမီယံထုတ်ကုန်ကို ယခုမရနိုင်ပါ။ နောက်မှ ထပ်စမ်းကြည့်ပါ။';

  @override
  String get premiumPurchaseFailed =>
      'ဝယ်ယူမှု မပြီးမြောက်နိုင်ခဲ့ပါ။ ထပ်စမ်းကြည့်ပါ။';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'အကန့်အသတ်မရှိ AI-ပါဝါ အမေးအဖြေ';

  @override
  String get paywallFeature2Title => 'အကန့်အသတ်မရှိ အော့ဖ်လိုင်း';

  @override
  String get paywallFeature2Desc => 'ရွတ်ဆိုချက်အားလုံးကို ဒေါင်းလုဒ်လုပ်ပါ။';

  @override
  String get paywallFeature3Title => 'သီးသန့်ဒီဇိုင်းများ';

  @override
  String get paywallFeature3Desc => 'ပရီမီယံ အပြင်အဆင်များနှင့် ဖောင့်များ';

  @override
  String get paywallFeature4Title => 'ကြော်ငြာအခမဲ့';

  @override
  String get paywallFeature4Desc => 'သုညကြော်ငြာများ';

  @override
  String get paywallGetAccess => 'တစ်သက်တာအသုံးပြုခွင့်— \$1.00 ရယူပါ။';

  @override
  String get restorePurchases => 'ဝယ်ယူမှုများကို ပြန်လည်ရယူပါ။';

  @override
  String get zakatCalculator => 'Zakat ဂဏန်းပေါင်းစက်';

  @override
  String get zakatGold => 'ရွှေ (Altın)';

  @override
  String get zakatSilver => 'ငွေရောင် (Gümüş)';

  @override
  String get zakatCashBank => 'ငွေသား/ဘဏ်';

  @override
  String get zakatBusiness => 'စီးပွားရေး';

  @override
  String get zakatInvestments => 'ရင်းနှီးမြှုပ်နှံမှုများ';

  @override
  String get zakatWeightGrams => 'အလေးချိန် (ဆ)';

  @override
  String get zakatPricePerGram => 'ဈေးနှုန်း/ဂရမ်';

  @override
  String get zakatTotalAmount => 'စုစုပေါင်းတန်ဘိုး';

  @override
  String get zakatInventoryValue => 'စာရင်းတန်ဖိုး';

  @override
  String get zakatDebts => 'အကြွေးများ';

  @override
  String get zakatTotal => 'စုစုပေါင်း';

  @override
  String get calculateZakat => 'Zakat တွက်ချက်ပါ။';

  @override
  String get nisabNotReached => 'Nisab မရောက်ဘူး။ Zakat သည် မလိုအပ်ပါ။';

  @override
  String get totalZakat => 'စုစုပေါင်း Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab- $nisab • ပိုင်ဆိုင်မှုများ- $assets';
  }

  @override
  String get zakatGoldZakat => 'ရွှေဇကာတ်';

  @override
  String get zakatSilverZakat => 'Silver Zakat';

  @override
  String get zakatCashZakat => 'ငွေသား Zakat';

  @override
  String get zakatBusinessZakat => 'စီးပွားရေး Zakat';

  @override
  String get zakatInvestmentZakat => 'Zakat ရင်းနှီးမြှုပ်နှံမှု';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! ငါက မင်းရဲ့အစ္စလာမ့်လက်ထောက်ပါ။ ဆုတောင်းခြင်း၊ အစာရှောင်ခြင်း၊ zakat သို့မဟုတ် အစ္စလာမ့်အကြောင်းအရာတစ်ခုခုအကြောင်း ကျွန်ုပ်အား မေးပါ။';

  @override
  String get chatbotLimitReached =>
      'နေ့စဉ်မေးမြန်းမှု ကန့်သတ်ချက် ပြည့်သွားပါပြီ။ အကန့်အသတ်မရှိအတွက် Premium သို့ အဆင့်မြှင့်ပါ။';

  @override
  String get chatbotErrorMsg => 'တုံ့ပြန်မှု မထုတ်နိုင်ခဲ့ပါ။ ထပ်စမ်းကြည့်ပါ။';

  @override
  String get chatbotOfflinePrompt =>
      'စိစစ်ပြီး အော့ဖ်လိုင်းအစ္စလာမ့်အသိပညာအခြေခံကို စုစည်းထားဆဲဖြစ်သည်။ အော့ဖ်လိုင်းအလှည့်ကျကို ယခုဖွင့်နိုင်သော်လည်း မူရင်းဒေတာအတွဲအဆင်သင့်မဖြစ်မီအထိ ကန့်သတ်ဘေးကင်းသောစာတိုများကိုသာ ပြသပါမည်။\n\nအော့ဖ်လိုင်း လှည့်စားမှုကို ဖွင့်လိုပါသလား။';

  @override
  String get chatbotOfflineSwitched =>
      'အော့ဖ်လိုင်း လှည့်ကွက်ကို ဖွင့်ထားသည်။ အတည်ပြုထားသော ပြည်တွင်းအစ္စလာမ့်အဖြေများ အဆင်သင့်မဖြစ်သေးပါ။';

  @override
  String get chatbotOfflineDownloadLabel =>
      'အော့ဖ်လိုင်း Fallback ကို ဖွင့်ပါ။';

  @override
  String get downloadPreparing => 'ဒေါင်းလုဒ်ကို ပြင်ဆင်နေသည်...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'စူရဟ် $surah / $total ဒေါင်းလုဒ်လုပ်နေသည်';
  }

  @override
  String get downloadCompleted =>
      'ဤရွတ်ဆိုသူအတွက် စူရဟ်များအားလုံးကို ဒေါင်းလုဒ်လုပ်ထားပြီးဖြစ်သည်။';

  @override
  String get offlineQuranAudioPacks => 'အော့ဖ်လိုင်းကုရ်အာန် အသံအထုပ်များ';

  @override
  String storedOnDeviceMb(String size) {
    return 'စက်ပစ္စည်းပေါ်တွင် သိမ်းဆည်းထားသည်- $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total စူရာဟ်များ ဒေါင်းလုဒ်လုပ်ထားသည်';
  }

  @override
  String get redownloadMissingRepair => 'ပြုပြင်/ဒေါင်းလုဒ် ပျောက်ဆုံးနေပါသည်။';

  @override
  String get downloadAction => 'ဒေါင်းလုဒ်လုပ်ပါ။';

  @override
  String get resumeDownload => 'ဒေါင်းလုဒ်ပြန်လုပ်ပါ။';

  @override
  String get deleteDownloadedFiles => 'ဒေါင်းလုဒ်လုပ်ထားသောဖိုင်များကိုဖျက်ပါ။';

  @override
  String get downloadCancelling => 'ပယ်ဖျက်နေသည်...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return '$reciter အတွက် ဒေါင်းလုဒ်ကို ပယ်ဖျက်လိုက်ပါပြီ။';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return '$reciter အတွက် ဒေါင်းလုဒ် ပြီးသွားပါပြီ။';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return '$reciter အတွက် $failed မအောင်မြင်သော စူရာဟ်များဖြင့် $reciter အတွက် ဒေါင်းလုဒ် ပြီးပါပြီ ($downloaded/$total ဒေါင်းလုဒ်လုပ်ထားသည်)။';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return '$reciter အတွက် အော့ဖ်လိုင်းဖိုင်များကို ဖျက်ထားသည်။';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'အတည်ပြုထားသော ကုရ်အာန်အသံအရင်းအမြစ်များကို ယခုမရနိုင်ပါ။';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'အတည်ပြုထားသော ကုရ်အာန် အသံအထုပ်သည် မပြည့်စုံပါ ($available/$total)။ Cloud Seed ကို ပြန်လည်ဆန်းသစ်ပြီး ထပ်စမ်းကြည့်ပါ။';
  }

  @override
  String get chatbotHint => 'မေးခွန်းတစ်ခုမေးပါ...';

  @override
  String get chatbotThinking => 'တွေးရင်း...';

  @override
  String get sukunMixerSubtitle => 'သဘာဝနှင့် ကုရ်အာန် ရောသမမွှေပါ။';

  @override
  String get audioPlayFailed => 'အသံပြန်ဖွင့်ခြင်း မအောင်မြင်ပါ။';

  @override
  String get sukunNatureLabel => 'Sukun (သဘာဝ)';

  @override
  String get sukunRainOfMercy => 'ကရုဏာမိုး';

  @override
  String get sukunGardenOfPeace => 'ငြိမ်းချမ်းရေးဥယျာဉ်';

  @override
  String get sukunMidnightCalm => 'ညသန်းခေါင် အေးချမ်းပါစေ။';

  @override
  String get sukunOceanTawheed => 'သမုဒ္ဒယာသောင်ဟီးဒ်';

  @override
  String get sukunUnavailableTitle => 'အသံထွက်များ မရနိုင်ပါ။';

  @override
  String get sukunUnavailableBody =>
      'ဤတည်ဆောက်မှုတွင် လိုအပ်သော Sukun soundscape ပိုင်ဆိုင်မှုများ မပါဝင်သေးပါ။';

  @override
  String get prayerCompletion => 'ဆုတောင်းပြည့်';

  @override
  String get streaks => 'ပိန်း';

  @override
  String get dayStreak => 'နေ့စဥ်';

  @override
  String get bestStreak => 'အကောင်းဆုံးစီးရီး';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'အော့ဖ်လိုင်း Fallback';

  @override
  String get chatbotUseCloudAi => 'Cloud AI (Gemini) ကိုသုံးပါ';

  @override
  String get chatbotDownloadLocalAi => 'အော့ဖ်လိုင်း Fallback ကို ဖွင့်ပါ။';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count ကျန်ခဲ့သည်။';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API ကို စီစဉ်မထားပါ။ အတည်ပြုထားသော အော့ဖ်လိုင်းအစ္စလာမ့်လမ်းညွှန်ချက်ကို မရရှိနိုင်သေးပါ။';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] အတည်ပြုထားသော ဒေသန္တရအစ္စလာမ့်လမ်းညွှန်ချက်ကို မရရှိနိုင်သေးပါ။ ရင်းမြစ်အဖြေများအတွက် Cloud AI သို့ပြောင်းပါ။';

  @override
  String get mosques => 'ဗလီများ';

  @override
  String get halalFood => 'Halal အစားအစာ';

  @override
  String get placesSearchArea => 'ဤဧရိယာကိုရှာဖွေပါ။';

  @override
  String get nearbyMosques => 'အနီးနားရှိ ဗလီများ';

  @override
  String get islamicSchools => 'အစ္စလာမ်ကျောင်းများ';

  @override
  String placesFoundCount(String count) {
    return '$count တွေ့ရှိခဲ့သည်။';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance ကီလိုမီတာအကွာ';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API အမှား- $statusCode';
  }

  @override
  String get placesNetworkError => 'ကွန်ရက် အမှားအယွင်း ထပ်စမ်းကြည့်ပါ။';

  @override
  String get placesLocationRequiredTitle => 'တည်နေရာ လိုအပ်သည်။';

  @override
  String get placesLocationRequiredBody =>
      'တည်နေရာကို ဦးစွာသတ်မှတ်ထားပါက အနီးနားရှိ ဗလီများ၊ ဟလာလ်အစားအစာများနှင့် အစ္စလာမ့်ကျောင်းများကို တိကျစွာရှာဖွေနိုင်ပါသည်။';

  @override
  String get placesMapTilesUnavailableTitle => 'မြေပုံအကွက်များ မရနိုင်ပါ။';

  @override
  String get placesMapTilesUnavailableBody =>
      'ဤတည်ဆောက်မှုအတွက် အတည်ပြုထားသော မြေပုံအကွက်အရင်းအမြစ်ကို မသတ်မှတ်ရသေးပါ။ အနီးတဝိုက်ရှိ နေရာများသည် သင်သိမ်းဆည်းထားသော တည်နေရာမှ စတင်နိုင်သေးသည်။';

  @override
  String get placesDataSourceUnavailableTitle => 'နေရာများ ဒေတာ မရနိုင်ပါ။';

  @override
  String get placesDataSourceUnavailableBody =>
      'ဤတည်ဆောက်မှုအတွက် အတည်ပြုထားသော နေရာများဒေတာ အဆုံးမှတ်ကို မသတ်မှတ်ရသေးပါ။ အနီးနားရှိ ရှာဖွေမှုကို မဖွင့်မီ PLACES_OVERPASS_API_URL အား အတည်ပြုထားသော ပရောက်စီ သို့မဟုတ် ဝန်ဆောင်မှုပေးသူအဖြစ် သတ်မှတ်ပါ။';

  @override
  String get unknownPlaceName => 'အမည်မသိ';

  @override
  String get islamicPlaceFallback => 'အစ္စလာမ့်နေရာ';

  @override
  String get asmaMeaning1 => 'အကျိုးပြုသူ';

  @override
  String get asmaMeaning2 => 'ကရုဏာတော်ရှင်';

  @override
  String get asmaMeaning3 => 'ဘုရင်/ထာဝရသခင်';

  @override
  String get asmaMeaning4 => 'အသန့်ရှင်းဆုံး';

  @override
  String get asmaMeaning5 => 'ငြိမ်းချမ်းရေးအရင်းအမြစ်';

  @override
  String get asmaMeaning6 => 'လုံခြုံရေးပေးဆောင်သူ';

  @override
  String get asmaMeaning7 => 'အုပ်ထိန်းသူ';

  @override
  String get asmaMeaning8 => 'အဖိုးတန်/ တန်ခိုးအကြီးဆုံး';

  @override
  String get asmaMeaning9 => 'တောင်းဆိုသူ';

  @override
  String get asmaMeaning10 => 'အကြီးမြတ်ဆုံး';

  @override
  String get asmaMeaning11 => 'ဖန်ဆင်းရှင်';

  @override
  String get asmaMeaning12 => 'အမှာစာပြုလုပ်သူ';

  @override
  String get asmaMeaning13 => 'အလှဖန်တီးရှင်';

  @override
  String get asmaMeaning14 => 'ခွင့်လွှတ်ခြင်း';

  @override
  String get asmaMeaning15 => 'Subduer';

  @override
  String get asmaMeaning16 => 'အားလုံး၏ပေးဆောင်သူ';

  @override
  String get asmaMeaning17 => 'ပံ့ပိုးပေးသူ';

  @override
  String get asmaMeaning18 => 'ဖွင့်ပေးသူ';

  @override
  String get asmaMeaning19 => 'အားလုံး၏ သိသူ';

  @override
  String get asmaMeaning20 => 'ကွန်ထရစ်ရှင်';

  @override
  String get asmaMeaning21 => 'လွတ်မြောက်သူ';

  @override
  String get asmaMeaning22 => 'အာဘေဆာ';

  @override
  String get asmaMeaning23 => 'မြင့်မြတ်သူ';

  @override
  String get asmaMeaning24 => 'ဂုဏ်ထူးဆောင်ဘွဲ့';

  @override
  String get asmaMeaning25 => 'အရှက်ခွဲသူ';

  @override
  String get asmaMeaning26 => 'အားလုံး၏ နားထောင်သူ';

  @override
  String get asmaMeaning27 => 'အားလုံး၏ အကဲဖြတ်သူ';

  @override
  String get asmaMeaning28 => 'တရားသူကြီး';

  @override
  String get asmaMeaning29 => 'တရားမျှတခြင်း။';

  @override
  String get asmaMeaning30 => 'သိမ်မွေ့သော';

  @override
  String get asmaMeaning31 => 'အားလုံးသတိထားပါ။';

  @override
  String get asmaMeaning32 => 'အခံရှိခြင်း';

  @override
  String get asmaMeaning33 => 'ခမ်းနားသော';

  @override
  String get asmaMeaning34 => 'ကြီးမားသောခွင့်လွှတ်သူ';

  @override
  String get asmaMeaning35 => 'ကျေးဇူးသိတတ်ခြင်းဆုချသူ';

  @override
  String get asmaMeaning36 => 'အမြင့်ဆုံး';

  @override
  String get asmaMeaning37 => 'အကြီးမြတ်ဆုံး';

  @override
  String get asmaMeaning38 => 'ထိန်းသိမ်းသူ';

  @override
  String get asmaMeaning39 => 'အာဟာရပေးသူ';

  @override
  String get asmaMeaning40 => 'စာရင်းသွင်းသူ';

  @override
  String get asmaMeaning41 => 'ခမ်းနားသော';

  @override
  String get asmaMeaning42 => 'ရက်ရောသော';

  @override
  String get asmaMeaning43 => 'သတိထားစရာ';

  @override
  String get asmaMeaning44 => 'ဆုတောင်းချက်ကို တုံ့ပြန်ခြင်း။';

  @override
  String get asmaMeaning45 => 'အားလုံးနားလည်နိုင်သော';

  @override
  String get asmaMeaning46 => 'ပြီးပြည့်စုံသော ပညာရှိ';

  @override
  String get asmaMeaning47 => 'မေတ္တာရှင်';

  @override
  String get asmaMeaning48 => 'ဘုန်းအသရေအရှိဆုံး';

  @override
  String get asmaMeaning49 => 'ရှင်ပြန်ထမြောက်သူ';

  @override
  String get asmaMeaning50 => 'သက်သေခံ';

  @override
  String get asmaMeaning51 => 'အမှန်တရား';

  @override
  String get asmaMeaning52 => 'ဖူလုံသော ယုံကြည်သူ';

  @override
  String get asmaMeaning53 => 'ခွန်အားအားလုံးကို ပိုင်ဆိုင်သူ';

  @override
  String get asmaMeaning54 => 'အင်အားပြင်းထန်သော';

  @override
  String get asmaMeaning55 => 'ကာကွယ်သူ';

  @override
  String get asmaMeaning56 => 'ချီးကျူးသည်။';

  @override
  String get asmaMeaning57 => 'အကဲဖြတ်သူ';

  @override
  String get asmaMeaning58 => 'အစပြုသူ';

  @override
  String get asmaMeaning59 => 'ပြန်လည်ထူထောင်သူ';

  @override
  String get asmaMeaning60 => 'အသက်ပေးလှူသူ';

  @override
  String get asmaMeaning61 => 'အသက်ရှင်သူ';

  @override
  String get asmaMeaning62 => 'အစဉ်အမြဲ အသက်ရှင်ခြင်း။';

  @override
  String get asmaMeaning63 => 'မိမိကိုယ်ကို ရပ်တည်ပေးသူ';

  @override
  String get asmaMeaning64 => 'ရှာဖွေသူ';

  @override
  String get asmaMeaning65 => 'ဘုန်းကြီးသည်။';

  @override
  String get asmaMeaning66 => 'တစ်ခုတည်းသော';

  @override
  String get asmaMeaning67 => 'တစ်ခု';

  @override
  String get asmaMeaning68 => 'အားလုံးရှာဖွေထားသောသူ';

  @override
  String get asmaMeaning69 => 'အားကောင်းသော';

  @override
  String get asmaMeaning70 => 'တန်ခိုးရှိသမျှ ဖန်ဆင်းရှင်';

  @override
  String get asmaMeaning71 => 'Expediter';

  @override
  String get asmaMeaning72 => 'နှောင့်နှေးမှု';

  @override
  String get asmaMeaning73 => 'ပထမ';

  @override
  String get asmaMeaning74 => 'နောက်ဆုံး';

  @override
  String get asmaMeaning75 => 'မန်နီးဖက်စ်';

  @override
  String get asmaMeaning76 => 'ဝှက်ထားသည်။';

  @override
  String get asmaMeaning77 => 'အုပ်ချုပ်ရေးမှူး';

  @override
  String get asmaMeaning78 => 'အဓိပတိ';

  @override
  String get asmaMeaning79 => 'ကောင်းမှုပြုသူ';

  @override
  String get asmaMeaning80 => '_နောင်တအတွက် လမ်းညွှန်';

  @override
  String get asmaMeaning81 => 'Avenger';

  @override
  String get asmaMeaning82 => 'ခွင့်လွှတ်သူ';

  @override
  String get asmaMeaning83 => 'ကလီးမန့်';

  @override
  String get asmaMeaning84 => 'ပိုင်ရှင် / အားလုံး၏ အချုပ်အခြာအာဏာ';

  @override
  String get asmaMeaning85 => 'ဘုရင်မင်းမြတ်နှင့် ကျေးဇူးရှင်';

  @override
  String get asmaMeaning86 => 'သာတူညီမျှမှု';

  @override
  String get asmaMeaning87 => 'စုဆောင်းသူ';

  @override
  String get asmaMeaning88 => 'ချမ်းသာသူ';

  @override
  String get asmaMeaning89 => 'တိုးတက်ကောင်းမွန်သူ';

  @override
  String get asmaMeaning90 => 'အန္တရာယ်ကို ကာကွယ်သူ';

  @override
  String get asmaMeaning91 => 'ဒုက္ခပေးသူ';

  @override
  String get asmaMeaning92 => 'အကျိုးခံစားခွင့်များ ပေးအပ်သည်။';

  @override
  String get asmaMeaning93 => 'အလင်း';

  @override
  String get asmaMeaning94 => 'လမ်းညွှန်သူ';

  @override
  String get asmaMeaning95 => 'အစပြုသူ';

  @override
  String get asmaMeaning96 => 'ထာဝရဘုရား';

  @override
  String get asmaMeaning97 => 'အမွေဆက်ခံသူ';

  @override
  String get asmaMeaning98 => 'အဖြောင့်မတ်ဆုံးလမ်းညွှန်';

  @override
  String get asmaMeaning99 => 'လူနာတစ်ဦး';
}
