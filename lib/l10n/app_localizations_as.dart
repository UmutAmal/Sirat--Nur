// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Assamese (`as`).
class AppLocalizationsAs extends AppLocalizations {
  AppLocalizationsAs([String locale = 'as']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'ইছলামিক ৱে অৱ লাইট';

  @override
  String get home => 'গৃহ';

  @override
  String get quran => 'কোৰআন';

  @override
  String get qibla => 'কিবলা';

  @override
  String get zikr => 'জিকিৰ';

  @override
  String get calendar => 'কেলেণ্ডাৰ';

  @override
  String get settings => 'ছেটিংছ';

  @override
  String get nextPrayer => 'পৰৱৰ্তী প্ৰাৰ্থনা';

  @override
  String get prayerTimes => 'প্ৰাৰ্থনাৰ সময়';

  @override
  String get continueReading => 'পঢ়া অব্যাহত ৰাখক';

  @override
  String get getLifetimePro => 'লাইফটাইম প্ৰ\' লাভ কৰক';

  @override
  String get unlockTajweed => 'তাজৱীদ আৰু উন্নত বৈশিষ্ট্যসমূহ আনলক কৰক';

  @override
  String get prayerCalculation => 'প্ৰাৰ্থনাৰ গণনা';

  @override
  String get method => 'গণনা পদ্ধতি';

  @override
  String get madhab => 'Asr ন্যায়িক পদ্ধতি';

  @override
  String get surahs => 'ছূৰা';

  @override
  String get ayahs => 'আয়াহছ';

  @override
  String get fajr => 'ফজৰ';

  @override
  String get sunrise => 'সূৰ্য্য উদয়';

  @override
  String get dhuhr => 'ধুহৰ';

  @override
  String get asr => 'আছৰ';

  @override
  String get maghrib => 'মাঘৰিব';

  @override
  String get isha => 'ঈশা';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerNameৰ সময়';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '$prayerName প্ৰাৰ্থনা কৰাৰ সময় হৈছে।';
  }

  @override
  String get dataStorage => 'ডাটা আৰু সংৰক্ষণ';

  @override
  String get clearCache => 'কেচ পৰিষ্কাৰ কৰক';

  @override
  String get cacheClearedSuccess => 'কেচ সফলতাৰে ক্লিয়াৰ কৰা হ\'ল';

  @override
  String get location => 'অৱস্থান';

  @override
  String get language => 'ভাষা';

  @override
  String get selectLanguage => 'ভাষা নিৰ্বাচন কৰক';

  @override
  String get searchLanguage => '180+ ভাষা অনুসন্ধান...';

  @override
  String get systemDefault => 'চিস্টেম অবিকল্পিত';

  @override
  String get currentLocation => 'বৰ্তমানৰ অৱস্থান (GPS)';

  @override
  String get locationServiceDisabled => 'অৱস্থান সেৱা নিষ্ক্ৰিয় কৰা হৈছে।';

  @override
  String get locationPermissionDenied => 'স্থানৰ অনুমতি অস্বীকাৰ কৰা হৈছে।';

  @override
  String get locationDetectionFailed =>
      'আপোনাৰ অৱস্থান ধৰা পেলাব পৰা নগ\'ল। অনুগ্ৰহ কৰি এখন চহৰ হস্তচালিতভাৱে বাছক বা পুনৰ চেষ্টা কৰক।';

  @override
  String citiesCount(String count) {
    return '$count চহৰসমূহ';
  }

  @override
  String get search => 'সন্ধান';

  @override
  String get searchHint => 'সন্ধান...';

  @override
  String get noResults => 'No results found';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get appErrorOccurred => 'এটা ভুল হ’ল';

  @override
  String get appUnknownError => 'অজ্ঞাত ভুল';

  @override
  String get quranLoadFailed =>
      'কোৰআনৰ বিষয়বস্তু লোড কৰিব পৰা নগ\'ল। অনুগ্ৰহ কৰি পুনৰ চেষ্টা কৰক।';

  @override
  String get retry => 'পুনৰ চেষ্টা কৰক';

  @override
  String get refreshAction => 'Refresh';

  @override
  String get cancel => 'বাতিল কৰক';

  @override
  String get save => 'সঞ্চয় কৰা';

  @override
  String get delete => 'Delete';

  @override
  String get edit => 'সম্পাদনা কৰক';

  @override
  String get close => 'বন্ধ';

  @override
  String get ok => 'ঠিক আছে';

  @override
  String get yes => 'হয়';

  @override
  String get no => 'নহয়';

  @override
  String get surah => 'ছূৰা';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'জুজ';

  @override
  String get page => 'পৃষ্ঠা';

  @override
  String get reading => 'পঢ়ি থকা';

  @override
  String get recitation => 'আবৃত্তি';

  @override
  String get translation => 'অনুবাদ';

  @override
  String get tafsir => 'তফছিৰ';

  @override
  String get tafsirLoading => 'লোড হচ্ছে tafsir...';

  @override
  String get tafsirSourceLabel => 'তফছিৰ উৎস';

  @override
  String get tafsirNoSurahFound => 'এই চুৰাটোৰ বাবে কোনো তফছিৰ পোৱা নগ’ল।';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'ayah $ayah ৰ বাবে কোনো tafsir পোৱা নগ\'ল।';
  }

  @override
  String get tafsirLoadFailed => 'তফছিৰ লোড কৰিব পৰা নগ’ল।';

  @override
  String get tafsirNoTextForAyah => 'এই আয়াহৰ বাবে কোনো তফছিৰ গ্ৰন্থ নাই।';

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
    return 'Tafsir উৎসে এটা HTTP $statusCode ভুল ঘূৰাই দিলে।';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'নিৰ্বাচিত tafsir উৎসই কোনো প্ৰৱেশ ঘূৰাই নিদিলে।';

  @override
  String get tafsirCacheUnavailable =>
      'Verified tafsir এতিয়াও অফলাইনত উপলব্ধ নহয়। ব্ৰাউজ কৰাৰ আগতে এটা উৎসযুক্ত tafsir ডাটাছেট ছিঙ্ক কৰক।';

  @override
  String get bookmarks => 'বুকমাৰ্ক';

  @override
  String get addBookmark => 'বুকমাৰ্ক যোগ কৰক';

  @override
  String get removeBookmark => 'বুকমাৰ্ক আঁতৰাওক';

  @override
  String get lastRead => 'শেষ পঢ়া';

  @override
  String get dailyZikr => 'দৈনিক জিকিৰ';

  @override
  String get duaMeaning1 =>
      'আন কিছুমানে প্ৰাৰ্থনা কৰে, ‘হে আমাৰ প্ৰভু, আমাক এই পৃথিৱীত আৰু আখিৰাতত মংগল দিয়ক, আৰু আমাক অগ্নিৰ যন্ত্ৰণাৰ পৰা ৰক্ষা কৰক।’';

  @override
  String get duaMeaning2 =>
      'ঈশ্বৰে কোনো আত্মাই সহ্য কৰিব পৰাতকৈ অধিক বোজা নিদিয়ে: প্ৰত্যেকেই যি ভাল কাম কৰিছে, সেইটোৱেই লাভ কৰে, আৰু নিজৰ বেয়া ভোগ কৰে- ‘ প্ৰভু, আমি পাহৰি গ’লে বা ভুল কৰিলে আমাক দায়িত্বত নল’বা। প্ৰভু, আমাৰ আগৰ লোকসকলক যিদৰে বোজা দিছিল, তেনেকৈ আমাৰ ওপৰত বোজা নিদিব। প্ৰভু, আমাৰ সহ্য কৰিব পৰা শক্তিতকৈ বেছি বোজা নধৰিবা। আমাক ক্ষমা কৰা, আমাক ক্ষমা কৰা আৰু আমাক দয়া কৰা। তুমি আমাৰ ৰক্ষক, গতিকে কাফিৰৰ বিৰুদ্ধে আমাক সহায় কৰক।’';

  @override
  String get duaMeaning3 =>
      '‘হে আমাৰ প্ৰভু, আপুনি আমাক পথ প্ৰদৰ্শন কৰাৰ পিছত আমাৰ হৃদয় বিচ্যুত হ’বলৈ নিদিব। আমাক তোমাৰ দয়া প্ৰদান কৰা: তুমিয়েই চিৰদানকাৰী।';

  @override
  String get duaMeaning4 =>
      'প্ৰভু, মই আৰু মোৰ সন্তানসকলে যাতে প্ৰাৰ্থনা কৰি যাব পাৰো। আমাৰ প্ৰভু মোৰ অনুৰোধ গ্ৰহণ কৰক।';

  @override
  String get duaMeaning5 =>
      'আৰু তেওঁলোকৰ প্ৰতি নম্ৰতাৰে ডেউকা তললৈ নমাই কওক, ‘প্ৰভু, তেওঁলোকৰ ওপৰত দয়া কৰক, যেনেকৈ তেওঁলোকে মোৰ সৰুতে যত্ন লৈছিল।’';

  @override
  String get duaMeaning6 =>
      'যিজনে সঁচাকৈয়ে নিয়ন্ত্ৰণত আছে, তেওঁ ঈশ্বৰক উচ্চ হওক। [নবী], ওহী সম্পূৰ্ণৰূপে সম্পূৰ্ণ হোৱাৰ আগতেই পাঠ কৰিবলৈ খৰখেদা নকৰিব কিন্তু কওক, ‘প্ৰভু, মোক জ্ঞান বৃদ্ধি কৰক!’';

  @override
  String get duaMeaning7 =>
      'কওক [নবী], ‘প্ৰভু, ক্ষমা কৰা আৰু দয়া কৰা: আপুনি সকলোতকৈ দয়ালু।’';

  @override
  String get duaMeaning8 =>
      'যিসকলে প্ৰাৰ্থনা কৰে, ‘আমাৰ প্ৰভু, আমাৰ পত্নী আৰু সন্তানত আমাক আনন্দ দিয়ক। আপোনাৰ বিষয়ে সচেতন সকলৰ বাবে আমাক ভাল আদৰ্শ হিচাপে গঢ়ি তোলক’।';

  @override
  String get morningZikr => 'ৰাতিপুৱাৰ জিকৰ';

  @override
  String get eveningZikr => 'সন্ধিয়া জিকৰ';

  @override
  String get tasbih => 'তছবিহ';

  @override
  String get ahkab => 'আহকম';

  @override
  String get masaail => 'মাছা\'ইল';

  @override
  String get hadith => 'হাদীছ';

  @override
  String get hadithCollection => 'হাদীছ সংগ্ৰহ';

  @override
  String get hadithBooks => 'হাদীছৰ কিতাপ';

  @override
  String get searchHadith => 'হাদীছ সন্ধান কৰক';

  @override
  String get asmaulHusna => 'আছমা-উল-হুছনা';

  @override
  String get namesOfAllah => 'আল্লাহৰ নাম';

  @override
  String get liveTv => 'লাইভ টিভি';

  @override
  String get watchLive => 'লাইভ চাওক';

  @override
  String get streamError => 'ষ্ট্ৰিম ত্ৰুটি';

  @override
  String get reload => 'পুনৰ লোড কৰক';

  @override
  String get openInYoutube => 'ইউটিউবত খোলা';

  @override
  String get ibadahTracker => 'ইবাদাহ ট্ৰেকাৰ';

  @override
  String get fasting => 'উপবাস';

  @override
  String get quranReading => 'কোৰআন পঢ়া';

  @override
  String get prayers => 'প্ৰাৰ্থনা';

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
  String get dhikrCount => 'ধিকৰ কাউন্ট';

  @override
  String get weeklyProgress => 'সাপ্তাহিক অগ্ৰগতি';

  @override
  String get monthlyProgress => 'মাহেকীয়া অগ্ৰগতি';

  @override
  String get statistics => 'পৰিসংখ্যা';

  @override
  String get hijriCalendar => 'হিজৰী কেলেণ্ডাৰ';

  @override
  String get gregorianCalendar => 'গ্ৰেগ\'ৰিয়ান কেলেণ্ডাৰ';

  @override
  String get today => 'আজি';

  @override
  String get tomorrow => 'কাইলৈ';

  @override
  String get yesterday => 'কালি';

  @override
  String get specialDays => 'বিশেষ দিন';

  @override
  String get ramadan => 'ৰমজান';

  @override
  String get eidAlFitr => 'ঈদ আল-ফিতৰ';

  @override
  String get eidAlAdha => 'ঈদ আল আধা';

  @override
  String get islamicNewYear => 'ইছলামিক নৱবৰ্ষ';

  @override
  String get mawlidAnNabi => 'মৌলিদ আন-নবি';

  @override
  String get specialDayDateRamadanStart => '১ ৰমজান';

  @override
  String get specialDayDateLaylatAlQadr => '২৭ ৰমজান';

  @override
  String get specialDayDateEidAlFitr => '১ শ্বাৱাল';

  @override
  String get specialDayDateEidAlAdha => '১০ ধুল হিজ্জা';

  @override
  String get specialDayDateIslamicNewYear => '১ মুহৰম';

  @override
  String get specialDayDateMawlidAnNabi => '১২ ৰাবি আল-আৱাল';

  @override
  String get laylatAlQadr => 'লাইলাত আল-কাদৰ';

  @override
  String get qiblaDirection => 'কিবলা দিশ';

  @override
  String get compass => 'কম্পাছ';

  @override
  String get degrees => 'ডিগ্ৰী লাভ কৰে';

  @override
  String get north => 'উত্তৰদিশ';

  @override
  String get qiblaFound => 'কিবলা বিচাৰি পালে!';

  @override
  String get turnDevice => 'আপোনাৰ ডিভাইচটো Qibla ৰ ফালে ঘূৰাই দিয়ক';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'কম্পাছৰ ভুল: $error';
  }

  @override
  String get qiblaSensorUnavailable => 'এই ডিভাইচত কম্পাছ চেন্সৰ উপলব্ধ নহয়।';

  @override
  String get qiblaLocationRequiredTitle => 'Location required for Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Set your actual location before using the Qibla compass so the direction can be calculated accurately.';

  @override
  String get adhanNotificationChannelName => 'Adhan Notifications';

  @override
  String get adhanNotificationChannelDescription =>
      'Prayer time alerts with adhan sound.';

  @override
  String get notifications => 'জাননীসমূহ';

  @override
  String get prayerNotifications => 'প্ৰাৰ্থনাৰ জাননী';

  @override
  String get enableNotifications => 'জাননীসমূহ সামৰ্থবান কৰক';

  @override
  String get notificationTime => 'অধিসূচনাৰ সময়';

  @override
  String get beforePrayer => 'প্ৰাৰ্থনাৰ মিনিট আগতে';

  @override
  String get theme => 'বিষয়বস্তু';

  @override
  String get lightMode => 'লাইট মোড';

  @override
  String get darkMode => 'ডাৰ্ক মোড';

  @override
  String get systemTheme => 'চিস্টেম থিম';

  @override
  String get about => 'বিষয়ে';

  @override
  String get version => 'সংস্কৰণ';

  @override
  String get privacyPolicy => 'গোপনীয়তা নীতি';

  @override
  String get termsOfService => 'সেৱাৰ চৰ্তসমূহ';

  @override
  String get contactUs => 'আমাৰ সৈতে যোগাযোগ কৰক';

  @override
  String get rateApp => 'ৰেট এপ';

  @override
  String get shareApp => 'শ্বেয়াৰ এপ';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'ডাউনলোডসমূহ';

  @override
  String get downloading => 'ডাউনলোড...';

  @override
  String get downloadComplete => 'Download Complete';

  @override
  String get downloadFailed => 'Download Failed';

  @override
  String get offlineMode => 'অফলাইন মোড';

  @override
  String get noInternet => 'No Internet Connection';

  @override
  String get checkConnection => 'অনুগ্ৰহ কৰি আপোনাৰ সংযোগ পৰীক্ষা কৰক';

  @override
  String get premium => 'প্ৰিমিয়াম';

  @override
  String get upgradeToPro => 'Pro লৈ উন্নীত কৰক';

  @override
  String get proFeatures => 'প্ৰ\' বৈশিষ্ট্যসমূহ';

  @override
  String get removeAds => 'বিজ্ঞাপন আঁতৰাওক';

  @override
  String get unlockAll => 'সকলো বিষয়বস্তু আনলক কৰক';

  @override
  String get exclusiveContent => 'একচেটিয়া বিষয়বস্তু';

  @override
  String get welcome => 'স্বাগতম';

  @override
  String get getStarted => 'আৰম্ভ কৰক';

  @override
  String get skip => 'বাদ দিয়া';

  @override
  String get next => 'পৰৱৰ্তী';

  @override
  String get done => 'কৰা হ’ল';

  @override
  String get onboarding1Title => 'আল্লাহৰ ৰাস্তালৈ আপোনাক স্বাগতম';

  @override
  String get onboarding1Desc =>
      'নামাজৰ সময়, কোৰআন, আৰু অধিক বাবে আপোনাৰ সম্পূৰ্ণ ইছলামিক সংগী এপ';

  @override
  String get onboarding2Title => 'প্ৰাৰ্থনাৰ সময়';

  @override
  String get onboarding2Desc =>
      'আপোনাৰ স্থানৰ ওপৰত ভিত্তি কৰি সঠিক প্ৰাৰ্থনাৰ সময়';

  @override
  String get onboarding3Title => 'কোৰআন আৰু অধিক';

  @override
  String get onboarding3Desc =>
      'কোৰআন পঢ়ক, আপোনাৰ পঢ়া অনুসৰণ কৰক, আৰু ইছলামিক বিষয়বস্তু অন্বেষণ কৰক';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'কাউণ্টাৰ ৰিছেট কৰক';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'লক্ষ্য গণনা: $target';
  }

  @override
  String get tapToCount => 'গণনা কৰিবলৈ টেপ কৰক';

  @override
  String get zikrCompletedMashAllah => 'সম্পূৰ্ণ হ’ল! মাছআল্লাহ';

  @override
  String get zikrMeaningSubhanAllah => 'আল্লাহ প্ৰতিটো অসম্পূৰ্ণতাৰ বহু ওপৰত।';

  @override
  String get zikrMeaningAlhamdulillah => 'সকলো প্ৰশংসা আল্লাহৰ।';

  @override
  String get zikrMeaningAllahuAkbar => 'আল্লাহ সৰ্বশ্ৰেষ্ঠ।';

  @override
  String get zikrMeaningLaIlahaIllallah => 'আল্লাহৰ বাহিৰে আন কোনো ভগৱান নাই।';

  @override
  String get zikrMeaningAstaghfirullah => 'মই আল্লাহৰ পৰা ক্ষমা বিচাৰিছো।';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'আল্লাহৰ বাহিৰে কোনো শক্তি আৰু শক্তি নাই।';

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
  String get dailyProgress => 'দৈনিক অগ্ৰগতি';

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
      'প্ৰিমিয়াম চাবস্ক্ৰিপচনৰ অৱস্থা পুনৰ পৰীক্ষা কৰক';

  @override
  String get syncStore =>
      'আপোনাৰ প্ৰিমিয়াম চাবস্ক্ৰিপচন নিশ্চিত কৰিবলৈ এপ ষ্ট\'ৰৰ সৈতে ছিঙ্ক কৰক।';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'প্ৰিমিয়াম চাবস্ক্ৰিপচন পৰীক্ষা কৰা হৈছে।';

  @override
  String get premiumNotFound => 'প্ৰিমিয়াম চাবস্ক্ৰিপচন পোৱা নগ\'ল।';

  @override
  String premiumRefreshError(Object error) {
    return 'প্ৰিমিয়াম স্বাক্ষৰণ অৱস্থা সতেজ কৰিব পৰা নগ\'ল: $error';
  }

  @override
  String get offlineDownloadManager => 'Offline Download Manager';

  @override
  String get manageDatasets =>
      'বৃহৎ অফলাইন অডিঅ\' আৰু ডাটাছেট পেকসমূহ পৰিচালনা কৰক।';

  @override
  String get freeStorage => 'অভ্যন্তৰীণ ডিভাইচ সংৰক্ষণ মুক্ত কৰক।';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'কোৰআন ডাটাবেছ পৰীক্ষণ...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'কোৰআন ডাটাবেছৰ অৱস্থা';

  @override
  String statusLabel(Object status) {
    return 'অৱস্থা: $status';
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
  String get audioVoice => 'অডিঅ\' ভয়েচ';

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
  String get qiblaCalibration => 'Qibla মানাংকন';

  @override
  String get compassSmoothing => 'কম্পাছ মসৃণ কৰা';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'মানাংকন অফছেট';

  @override
  String currentOffset(Object offset) {
    return 'বৰ্তমান: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'যদি আপোনাৰ কম্পাছক এটা হাতৰ সংশোধনৰ প্ৰয়োজন হয় তেন্তে সামঞ্জস্য কৰক। ধনাত্মক মানবোৰ ঘড়ীৰ কাঁটাৰ দিশত ঘূৰি থাকে।';

  @override
  String get apply => 'পৰিৱৰ্তন প্ৰয়োগ কৰক';

  @override
  String get resetOnboarding => 'পৰিচয় ছেটআপ পুনৰায় সেট কৰক';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'ডায়েগনষ্টিকছ';

  @override
  String get diagnosticsNotSet => 'ছেট কৰা হোৱা নাই';

  @override
  String get diagnosticsPrayerProfile => 'প্ৰাৰ্থনাৰ প্ৰফাইল';

  @override
  String get diagnosticsPrayerSource => 'প্ৰাৰ্থনা কৰ্তৃপক্ষ';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'মেনুৱেল কাষ্টম এংগেল (কোনো প্ৰতিষ্ঠানিক উৎস নাই)';

  @override
  String get diagnosticsCloudDriven => 'ক্লাউড চালিত';

  @override
  String get diagnosticsAdhanAudioAssets => 'অধন অডিঅ\' সম্পত্তি';

  @override
  String get diagnosticsUiAudioAssets => 'UI অডিঅ\' সম্পত্তি';

  @override
  String get diagnosticsQuranAudioAssets => 'কোৰআন অডিঅ\' সম্পত্তি';

  @override
  String get diagnosticsAudioAssets => 'অডিঅ\' সম্পত্তি';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count ফাইলসমূহ';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'মেনিফেষ্ট পঢ়া ব্যৰ্থ: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'স্থানীয়কৰণ স্থানীয়কৰণসমূহ';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count সমৰ্থিত';
  }

  @override
  String get diagnosticsQuranDataset => 'কোৰআনৰ ডাটাছেট';

  @override
  String get diagnosticsQuranSurahs => 'কোৰআনৰ চুৰা';

  @override
  String get diagnosticsQuranAyahs => 'কোৰআন আয়াহ';

  @override
  String get diagnosticsQuranJuzMetadata => 'কোৰআন জুজ মেটাডাটা';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Supabase ত ক্লাউড টেবুল অনুপস্থিত; বাণ্ডিল কৰা ফ\'লবেক সক্ৰিয়';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'ক্লাউড পৰীক্ষা ব্যৰ্থ: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'ক্লাউড juz মেটাডাটা অনুপস্থিত; বাণ্ডিলড ষ্ট্ৰাকচাৰেল ফ\'লবেক সক্ৰিয়';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'ক্লাউড গাঁথনিগত পৰীক্ষা ব্যৰ্থ: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'মানাংকনৰ প্ৰয়োজন। চিত্ৰ-৮ ত ডিভাইচ ঘূৰাওক।';

  @override
  String get dailyVerse => 'দৈনিক পদ্য';

  @override
  String get dailyVerseUnavailableTitle => 'দৈনিক পদ উপলব্ধ নহয়';

  @override
  String get dailyVerseUnavailableBody =>
      'এই নিৰ্মাণৰ বাবে পৰীক্ষা কৰা দৈনিক পদ্যৰ বিষয়বস্তু এতিয়াও বিন্যাস কৰা হোৱা নাই। ক্লাউড উৎসৰ সৈতে সংযোগ কৰক বা ব্ৰাউজ কৰাৰ আগতে এটা পৰীক্ষা কৰা কেশ্ব সিঙ্ক কৰক।';

  @override
  String get todaysIbadah => 'আজিৰ ইবাদাহ';

  @override
  String get quickAccess => 'দ্ৰুত প্ৰৱেশ';

  @override
  String get assistant => 'সহায়ক';

  @override
  String get places => 'স্থানসমূহ';

  @override
  String get library => 'পুথিভঁৰাল';

  @override
  String get analytics => 'বিশ্লেষণ';

  @override
  String get dailyDuas => 'দৈনিক দুয়াছ';

  @override
  String essentialDuas(String count) {
    return '$count অত্যাৱশ্যকীয় দুয়া';
  }

  @override
  String get duaUnavailableTitle => 'পৰীক্ষিত duas এতিয়াও উপলব্ধ নহয়';

  @override
  String get duaUnavailableBody =>
      'পৰীক্ষা কৰা দৈনিক duas এই ডিভাইচত এতিয়াও সিঙ্ক কৰা হোৱা নাই। এটা অসত্যাপন কৰা ফ\'লবেকৰ পৰিবৰ্তে উৎস কৰা দুয়াসমূহ লোড কৰিবলে ক্লাউড উৎসৰ সৈতে সংযোগ কৰক।';

  @override
  String get duaCategoryQuranic => 'কোৰআনৰ দুআ';

  @override
  String get duaCategoryMorningEvening => 'ৰাতিপুৱা আৰু সন্ধিয়া';

  @override
  String get duaCategoryTasbih => 'তছবিহ';

  @override
  String get duaCategoryProtection => 'সুৰক্ষা';

  @override
  String get duaCategoryBeginning => 'আৰম্ভণি';

  @override
  String get duaCategorySleep => 'টোপনি';

  @override
  String get duaCategoryFoodDrink => 'খাদ্য আৰু পানীয়';

  @override
  String get duaCategoryForgiveness => 'ক্ষমা';

  @override
  String get duaCategoryHome => 'গৃহ';

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
  String get islamicEducation => 'ইছলামিক শিক্ষা';

  @override
  String get sukunAudioTitle => 'সুকুন চাউণ্ডস্কেপ';

  @override
  String get hadithCollections => 'হাদীছ সংগ্ৰহ';

  @override
  String get hadithSourcePending => 'পৰীক্ষা কৰা উৎস বাকী আছে';

  @override
  String get hadithUnavailableTitle =>
      'পৰীক্ষিত হাদীছ সংগ্ৰহ এতিয়াও উপলব্ধ নহয়';

  @override
  String get hadithUnavailableBody =>
      'এই বিল্ড এতিয়াও এটা অপৰীক্ষিত বাহ্যিক হাদীছ ফিডৰ ওপৰত নিৰ্ভৰশীল। এটা উৎস ডাটাছেট সিঙ্ক নোহোৱালৈকে হাদীছ ব্ৰাউজিং নিষ্ক্ৰিয় হৈ থাকে।';

  @override
  String get paywallUnlockAll =>
      'আপোনাৰ আধ্যাত্মিক যাত্ৰাৰ বাবে সকলো বৈশিষ্ট্য আনলক কৰক';

  @override
  String get premiumProductUnavailable =>
      'বৰ্তমান প্ৰিমিয়াম প্ৰডাক্ট উপলব্ধ নহয়। অনুগ্ৰহ কৰি পিছত পুনৰ চেষ্টা কৰক।';

  @override
  String get premiumPurchaseFailed =>
      'ক্ৰয় সম্পূৰ্ণ কৰিব পৰা নগ’ল। অনুগ্ৰহ কৰি পুনৰ চেষ্টা কৰক।';

  @override
  String get paywallFeature1Title => 'স্নায়ু সহায়ক প্লাছ';

  @override
  String get paywallFeature1Desc => 'সীমাহীন এআই-চালিত প্ৰশ্নোত্তৰ';

  @override
  String get paywallFeature2Title => 'সীমাহীন অফলাইন';

  @override
  String get paywallFeature2Desc => 'সকলো আবৃত্তি ডাউনলোড কৰক';

  @override
  String get paywallFeature3Title => 'একচেটিয়া ডিজাইন';

  @override
  String get paywallFeature3Desc => 'প্ৰিমিয়াম থিম আৰু ফন্ট';

  @override
  String get paywallFeature4Title => 'বিজ্ঞাপন বিনামূলীয়া';

  @override
  String get paywallFeature4Desc => 'শূন্য বিজ্ঞাপন';

  @override
  String get paywallGetAccess => 'আজীৱন প্ৰৱেশ লাভ কৰক — \$1.00';

  @override
  String get restorePurchases => 'ক্ৰয়সমূহ পুনৰুদ্ধাৰ কৰক';

  @override
  String get zakatCalculator => 'জাকাত কেলকুলেটৰ';

  @override
  String get zakatGold => 'সোণ (Altın)';

  @override
  String get zakatSilver => 'ৰূপালী (Gümüş)';

  @override
  String get zakatCashBank => 'নগদ ধন / বেংক';

  @override
  String get zakatBusiness => 'ব্যৱসায়';

  @override
  String get zakatInvestments => 'বিনিয়োগ';

  @override
  String get zakatWeightGrams => 'ওজন (ছ)';

  @override
  String get zakatPricePerGram => 'মূল্য/গ্ৰাম';

  @override
  String get zakatTotalAmount => 'মুঠ ধনৰাশি';

  @override
  String get zakatInventoryValue => 'ইনভেণ্টৰী মূল্য';

  @override
  String get zakatDebts => 'ঋণ';

  @override
  String get zakatTotal => 'মুঠ';

  @override
  String get calculateZakat => 'জাকাত গণনা কৰা';

  @override
  String get nisabNotReached => 'নিছাবৰ হাত নাপালে। জাকাত বাধ্যতামূলক নহয়।';

  @override
  String get totalZakat => 'মুঠ জাকাত';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'সোণৰ জাকাত';

  @override
  String get zakatSilverZakat => 'ৰূপালী জাকাত';

  @override
  String get zakatCashZakat => 'নগদ জাকাত';

  @override
  String get zakatBusinessZakat => 'ব্যৱসায়িক জাকাত';

  @override
  String get zakatInvestmentZakat => 'বিনিয়োগৰ জাকাত';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'দৈনিক প্ৰশ্নৰ সীমাত উপনীত হ’ল। সীমাহীনৰ বাবে প্ৰিমিয়ামলৈ উন্নীত কৰক।';

  @override
  String get chatbotErrorMsg =>
      'মই কোনো সঁহাৰি সৃষ্টি কৰিব নোৱাৰিলোঁ। অনুগ্ৰহ কৰি পুনৰ চেষ্টা কৰক।';

  @override
  String get chatbotOfflinePrompt =>
      'পৰীক্ষিত অফলাইন ইছলামিক জ্ঞানৰ ভিত্তি এতিয়াও কিউৰেট কৰা হৈছে। আপুনি এতিয়া অফলাইন ফ\'লবেক সামৰ্থবান কৰিব পাৰিব, কিন্তু ই কেৱল সীমিত সুৰক্ষিত বাৰ্তাসমূহ দেখুৱাব যেতিয়ালৈকে উৎস ডাটাছেট প্ৰস্তুত নহয়।\n\nআপুনি অফলাইন ফ\'লবেক সামৰ্থবান কৰিব বিচাৰেনে?';

  @override
  String get chatbotOfflineSwitched =>
      'অফলাইন ফ\'লবেক সামৰ্থবান কৰা হৈছে। পৰীক্ষিত স্থানীয় ইছলামিক উত্তৰ এতিয়াও সাজু হোৱা নাই।';

  @override
  String get chatbotOfflineDownloadLabel => 'অফলাইন ফ\'লবেক সামৰ্থবান কৰক';

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
  String get offlineQuranAudioPacks => 'অফলাইন কোৰআন অডিঅ\' পেক';

  @override
  String storedOnDeviceMb(String size) {
    return 'ডিভাইচত সংৰক্ষণ কৰা হৈছে: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surahs downloaded';
  }

  @override
  String get redownloadMissingRepair => 'Repair / Download Missing';

  @override
  String get downloadAction => 'ডাউনল’ড';

  @override
  String get resumeDownload => 'ডাউনলোড অব্যাহত ৰাখক';

  @override
  String get deleteDownloadedFiles => 'ডাউনলোড কৰা ফাইলসমূহ মচি পেলাওক';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return '$reciter ৰ বাবে ডাউনলোড বাতিল কৰা হৈছে।';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return '$reciter ৰ বাবে ডাউনলোড সম্পূৰ্ণ হৈছে।';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return '$reciter ৰ বাবে ডাউনলোড সমাপ্ত হৈছে $failed ব্যৰ্থ চুৰাসমূহৰ সৈতে ($downloaded/$total ডাউনলোড কৰা হৈছে)।';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return '$reciter ৰ বাবে অফলাইন নথিপত্ৰসমূহ মচি পেলোৱা হৈছে।';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Verified Quran audio sources are unavailable right now.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'পৰীক্ষা কৰা কোৰআন অডিঅ\' পেক অসম্পূৰ্ণ ($available/$total)। অডিঅ\' কেটেলগ আপডেট কৰাৰ পিছত পুনৰ চেষ্টা কৰক।';
  }

  @override
  String get chatbotHint => 'Ask a question...';

  @override
  String get chatbotThinking => 'Thinking...';

  @override
  String get sukunMixerSubtitle => 'প্ৰকৃতি আৰু কোৰআন মিক্সাৰ';

  @override
  String get audioPlayFailed => 'অডিঅ\' প্লেবেক বিফল হ\'ল';

  @override
  String get sukunNatureLabel => 'সুকুন (প্ৰকৃতি)';

  @override
  String get sukunRainOfMercy => 'দয়াৰ বৰষুণ';

  @override
  String get sukunGardenOfPeace => 'শান্তিৰ বাগিচা';

  @override
  String get sukunMidnightCalm => 'মাজনিশা শান্ত';

  @override
  String get sukunOceanTawheed => 'অ\'চেন তাওহীদ';

  @override
  String get sukunUnavailableTitle => 'শব্দৰ দৃশ্য উপলব্ধ নহয়';

  @override
  String get sukunUnavailableBody =>
      'এই বিল্ডত এতিয়াও প্ৰয়োজনীয় সুকুন চাউণ্ডস্কেপ সম্পত্তি অন্তৰ্ভুক্ত কৰা হোৱা নাই।';

  @override
  String get prayerCompletion => 'প্ৰাৰ্থনা সম্পূৰ্ণ কৰা';

  @override
  String get streaks => 'ষ্ট্ৰেইক';

  @override
  String get dayStreak => 'দিনৰ ধাৰা';

  @override
  String get bestStreak => 'শ্ৰেষ্ঠ ষ্ট্ৰিক';

  @override
  String get chatbotCloudAiLabel => 'ক্লাউড এআই';

  @override
  String get chatbotLocalAiLabel => 'অফলাইন Fallback';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'অফলাইন ফ\'লবেক সামৰ্থবান কৰক';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count বাওঁফালে';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'ক্লাউড API বিন্যাস কৰা হোৱা নাই। ভেৰিফাইড অফলাইন ইছলামিক গাইডেন্স এতিয়াও উপলব্ধ নহয়।';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] পৰীক্ষা কৰা স্থানীয় ইছলামিক নিৰ্দেশনা এতিয়াও উপলব্ধ নহয়। উৎস উত্তৰৰ বাবে ক্লাউড AI লৈ সলনি কৰক।';

  @override
  String get mosques => 'মছজিদ';

  @override
  String get halalFood => 'হালাল খাদ্য';

  @override
  String get placesSearchArea => 'এই অঞ্চলত সন্ধান কৰক';

  @override
  String get nearbyMosques => 'ওচৰৰ মছজিদ';

  @override
  String get islamicSchools => 'ইছলামিক স্কুল';

  @override
  String placesFoundCount(String count) {
    return '$count পোৱা গৈছে';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance কিলোমিটাৰ দূৰত';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API ত্ৰুটি: $statusCode';
  }

  @override
  String get placesNetworkError =>
      'নেটৱৰ্ক ত্ৰুটি। অনুগ্ৰহ কৰি পুনৰ চেষ্টা কৰক।';

  @override
  String get placesLocationRequiredTitle => 'স্থানৰ প্ৰয়োজন';

  @override
  String get placesLocationRequiredBody =>
      'প্ৰথমে এটা স্থান নিৰ্ধাৰণ কৰক যাতে ওচৰৰ মছজিদ, হালাল খাদ্য, আৰু ইছলামিক স্কুলবোৰ সঠিকভাৱে বিচাৰিব পৰা যায়।';

  @override
  String get placesMapTilesUnavailableTitle => 'মেপ টাইল উপলব্ধ নহয়';

  @override
  String get placesMapTilesUnavailableBody =>
      'এই নিৰ্মাণৰ বাবে এটা পৰীক্ষা কৰা মেপ টাইল উৎস এতিয়াও বিন্যাস কৰা হোৱা নাই । ওচৰৰ ঠাইসমূহে এতিয়াও আপোনাৰ সংৰক্ষিত অৱস্থানৰ পৰা লোড কৰিব পাৰে।';

  @override
  String get placesDataSourceUnavailableTitle => 'তথ্য অনুপলব্ধ কৰি ৰাখে';

  @override
  String get placesDataSourceUnavailableBody =>
      'এই নিৰ্মাণৰ বাবে এটা পৰীক্ষা কৰা স্থান তথ্য শেষবিন্দু এতিয়াও বিন্যাস কৰা হোৱা নাই । ওচৰৰ সন্ধান সামৰ্থবান কৰাৰ আগতে PLACES_OVERPASS_API_URLক এটা অনুমোদিত প্ৰক্সি বা প্ৰদানকাৰীলৈ সংহতি কৰক।';

  @override
  String get unknownPlaceName => 'অজ্ঞাত নাম';

  @override
  String get islamicPlaceFallback => 'ইছলামিক প্লেচ';

  @override
  String get asmaMeaning1 => 'উপকাৰী';

  @override
  String get asmaMeaning2 => 'দয়ালু';

  @override
  String get asmaMeaning3 => 'ৰজা / চিৰন্তন প্ৰভু';

  @override
  String get asmaMeaning4 => 'অতি পবিত্ৰ';

  @override
  String get asmaMeaning5 => 'শান্তিৰ উৎস';

  @override
  String get asmaMeaning6 => 'নিৰাপত্তাৰ দাতা';

  @override
  String get asmaMeaning7 => 'দ্য গাৰ্ডিয়ান';

  @override
  String get asmaMeaning8 => 'মূল্যৱান / আটাইতকৈ শক্তিশালী';

  @override
  String get asmaMeaning9 => 'দ্য কম্পেলাৰ';

  @override
  String get asmaMeaning10 => 'গ্ৰেটেষ্ট';

  @override
  String get asmaMeaning11 => 'সৃষ্টিকৰ্তা';

  @override
  String get asmaMeaning12 => 'দ্য মেকাৰ অৱ অৰ্ডাৰ';

  @override
  String get asmaMeaning13 => 'সৌন্দৰ্য্যৰ শ্বেপাৰ';

  @override
  String get asmaMeaning14 => 'ক্ষমাশীল';

  @override
  String get asmaMeaning15 => 'দ্য চাবডুয়াৰ';

  @override
  String get asmaMeaning16 => 'সকলোৰে দাতা';

  @override
  String get asmaMeaning17 => 'দ্য ছাষ্টেইনাৰ';

  @override
  String get asmaMeaning18 => 'দ্য ওপেনাৰ';

  @override
  String get asmaMeaning19 => 'সকলোৰে জ্ঞানী';

  @override
  String get asmaMeaning20 => 'কনষ্ট্ৰিক্টৰ';

  @override
  String get asmaMeaning21 => 'ৰিলিভাৰ';

  @override
  String get asmaMeaning22 => 'দ্য আবেছাৰ';

  @override
  String get asmaMeaning23 => 'দ্য এক্সেলটাৰ';

  @override
  String get asmaMeaning24 => 'সন্মান প্ৰদানকাৰী';

  @override
  String get asmaMeaning25 => 'অপমানকাৰী';

  @override
  String get asmaMeaning26 => 'সকলোৰে শ্ৰোতা';

  @override
  String get asmaMeaning27 => 'সকলোৰে দৰ্শক';

  @override
  String get asmaMeaning28 => 'ন্যায়াধীশ';

  @override
  String get asmaMeaning29 => 'দ্য জাষ্ট';

  @override
  String get asmaMeaning30 => 'সূক্ষ্মজন';

  @override
  String get asmaMeaning31 => 'দ্য অল এৱেৰ';

  @override
  String get asmaMeaning32 => 'দ্য ফ’ৰবেয়াৰিং';

  @override
  String get asmaMeaning33 => 'দ্য মেগনিফিচেণ্ট';

  @override
  String get asmaMeaning34 => 'মহান ক্ষমাকাৰী';

  @override
  String get asmaMeaning35 => 'ধন্যবাদৰ পুৰস্কাৰদাতা';

  @override
  String get asmaMeaning36 => 'সৰ্বোচ্চ';

  @override
  String get asmaMeaning37 => 'গ্ৰেটেষ্ট';

  @override
  String get asmaMeaning38 => 'সংৰক্ষক';

  @override
  String get asmaMeaning39 => 'দ্য ন\'ৰিচাৰ';

  @override
  String get asmaMeaning40 => 'দ্য ৰেক’নাৰ';

  @override
  String get asmaMeaning41 => 'দ্য মেজেষ্টিক';

  @override
  String get asmaMeaning42 => 'দ্য জেনাৰাছ';

  @override
  String get asmaMeaning43 => 'দ্য ৱাচফুল ৱান';

  @override
  String get asmaMeaning44 => 'প্ৰাৰ্থনাৰ প্ৰতি সঁহাৰি জনোৱা ব্যক্তি';

  @override
  String get asmaMeaning45 => 'দ্য অল কম্প্ৰেহেণ্ডিং';

  @override
  String get asmaMeaning46 => 'দ্য পাৰ্ফেক্টলি ৱাইজ';

  @override
  String get asmaMeaning47 => 'প্ৰেমময়জন';

  @override
  String get asmaMeaning48 => 'আটাইতকৈ গৌৰৱময়জন';

  @override
  String get asmaMeaning49 => 'পুনৰুত্থানকাৰী';

  @override
  String get asmaMeaning50 => 'সাক্ষীজন';

  @override
  String get asmaMeaning51 => 'সত্য';

  @override
  String get asmaMeaning52 => 'সৰ্বপৰ্যাপ্ত ট্ৰাষ্টী';

  @override
  String get asmaMeaning53 => 'সকলো শক্তিৰ অধিকাৰী';

  @override
  String get asmaMeaning54 => 'দ্য ফৰ্চফুল';

  @override
  String get asmaMeaning55 => 'প্ৰটেক্টৰ';

  @override
  String get asmaMeaning56 => 'প্ৰাইজড';

  @override
  String get asmaMeaning57 => 'মূল্যায়ক';

  @override
  String get asmaMeaning58 => 'উৎপত্তিকাৰী';

  @override
  String get asmaMeaning59 => 'পুনৰুদ্ধাৰকাৰী';

  @override
  String get asmaMeaning60 => 'জীৱন দাতা';

  @override
  String get asmaMeaning61 => 'জীৱন গ্ৰহণকাৰী';

  @override
  String get asmaMeaning62 => 'দ্য এভাৰ লিভিং';

  @override
  String get asmaMeaning63 => 'আত্মনিৰ্ভৰশীল জীৱিকা';

  @override
  String get asmaMeaning64 => 'দ্য ফাইণ্ডাৰ';

  @override
  String get asmaMeaning65 => 'গ্ল\'ৰিয়াছ';

  @override
  String get asmaMeaning66 => 'একমাত্ৰ এজন';

  @override
  String get asmaMeaning67 => 'দ্য ৱান';

  @override
  String get asmaMeaning68 => 'সকলোৱে বিচৰাজন';

  @override
  String get asmaMeaning69 => 'দ্য পাৱাৰফুল';

  @override
  String get asmaMeaning70 => 'সকলো শক্তিৰ সৃষ্টিকৰ্তা';

  @override
  String get asmaMeaning71 => 'দ্য এক্সপিডিটাৰ';

  @override
  String get asmaMeaning72 => 'ডিলেয়াৰ';

  @override
  String get asmaMeaning73 => 'প্ৰথমটো';

  @override
  String get asmaMeaning74 => 'দ্য লাষ্ট';

  @override
  String get asmaMeaning75 => 'দ্য মেনিফেষ্ট';

  @override
  String get asmaMeaning76 => 'দ্য হিডেন';

  @override
  String get asmaMeaning77 => 'ৰাজ্যপাল';

  @override
  String get asmaMeaning78 => 'পৰমজন';

  @override
  String get asmaMeaning79 => 'ভালৰ কৰ্তা';

  @override
  String get asmaMeaning80 => 'অনুতাপৰ গাইড';

  @override
  String get asmaMeaning81 => 'দ্য এভেঞ্জাৰ';

  @override
  String get asmaMeaning82 => 'ক্ষমাকাৰী';

  @override
  String get asmaMeaning83 => 'ক্লেমেণ্ট';

  @override
  String get asmaMeaning84 => 'সকলোৰে মালিক / সাৰ্বভৌম';

  @override
  String get asmaMeaning85 => 'মেজেষ্টী এণ্ড বাউন্টিৰ প’চেছৰ';

  @override
  String get asmaMeaning86 => 'ইকুইটেবল ৱান';

  @override
  String get asmaMeaning87 => 'গেদাৰৰ';

  @override
  String get asmaMeaning88 => 'ধনীজন';

  @override
  String get asmaMeaning89 => 'দ্য এনৰিচাৰ';

  @override
  String get asmaMeaning90 => 'ক্ষতি প্ৰতিৰোধক';

  @override
  String get asmaMeaning91 => 'ক্ষতিৰ কঢ়িয়াই অনা';

  @override
  String get asmaMeaning92 => 'সুবিধা প্ৰদানকাৰী';

  @override
  String get asmaMeaning93 => 'পোহৰ';

  @override
  String get asmaMeaning94 => 'গাইডাৰ';

  @override
  String get asmaMeaning95 => 'উৎপত্তিকাৰী';

  @override
  String get asmaMeaning96 => 'চিৰন্তনজন';

  @override
  String get asmaMeaning97 => 'উত্তৰাধিকাৰী';

  @override
  String get asmaMeaning98 => 'আটাইতকৈ ধাৰ্মিক গাইড';

  @override
  String get asmaMeaning99 => 'ৰোগীজন';
}
