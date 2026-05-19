// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tibetan (`bo`).
class AppLocalizationsBo extends AppLocalizations {
  AppLocalizationsBo([String locale = 'bo']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'ཨིསི་ལམ་གྱི་འོད་ཀྱི་ལམ།';

  @override
  String get home => 'ཡུལ';

  @override
  String get quran => 'ཁ་ཆེའི་ཀུ་རན།';

  @override
  String get qibla => 'ཁིབ་ལ།';

  @override
  String get zikr => 'ཟིཀར།';

  @override
  String get calendar => 'ལོ་ཐོ།';

  @override
  String get settings => 'སྒྲིག་སྟངས།';

  @override
  String get nextPrayer => 'སྨོན་ལམ་རྗེས་མ།';

  @override
  String get prayerTimes => 'སྨོན་ལམ་དུས་ཚོད།';

  @override
  String get continueReading => 'མུ་མཐུད་ནས་ཀློགས།';

  @override
  String get getLifetimePro => 'མི་ཚེ་གཅིག་གི་ཆེད་ལས་པ་ཐོབ།';

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
  String get sunrise => 'Sunrise';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Maghrib';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Time for $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'It is time to pray $prayerName.';
  }

  @override
  String get dataStorage => 'གཞི་གྲངས་དང་གསོག་འཇོག';

  @override
  String get clearCache => 'མཛོད་བསུབ་པ།';

  @override
  String get cacheClearedSuccess => 'མཛོད་ལམ་ལྷོངས་བྱུང་།';

  @override
  String get location => 'གནས་ཡུལ';

  @override
  String get language => 'སྐད་རིགས';

  @override
  String get selectLanguage => 'སྐད་ཡིག་འདེམས།';

  @override
  String get searchLanguage => 'སྐད་རིགས་180ལྷག་ཙམ་འཚོལ་ཞིབ།';

  @override
  String get systemDefault => 'མ་ལག་སྔོན་སྒྲིག';

  @override
  String get currentLocation => 'ད་ལྟའི་གནས་ཡུལ་ (GPS)';

  @override
  String get locationServiceDisabled => 'ས་གནས་ཞབས་ཞུ་བཀག་འགོག་བྱས་ཡོད།';

  @override
  String get locationPermissionDenied => 'ས་གནས་ཀྱི་ཆོག་མཆན་མ་སྤྲད་པ་རེད།';

  @override
  String get locationDetectionFailed =>
      'ཁྱེད་རང་གི་གནས་ཡུལ་ཤེས་རྟོགས་ཐུབ་མ་སོང་། ལག་ཐོག་ནས་གྲོང་ཁྱེར་ཞིག་འདེམས་པའམ་ཡང་ན་བསྐྱར་དུ་ཚོད་ལྟ་བྱེད་རོགས།';

  @override
  String citiesCount(String count) {
    return '$countགྲོང་ཁྱེར།';
  }

  @override
  String get search => 'བཤེར་འཚོལ';

  @override
  String get searchHint => 'བཤེར་འཚོལ...';

  @override
  String get noResults => 'གྲུབ་འབྲས་གང་ཡང་མ་རྙེད།';

  @override
  String get loading => 'མངོན་འགྱུར་བྱེད་བཞིན་པ།';

  @override
  String get error => 'ནོར་འཁྲུལ';

  @override
  String get appErrorOccurred => 'ནོར་འཁྲུལ་བྱུང་བ།';

  @override
  String get appUnknownError => 'མ་ཤེས་པའི་ནོར་འཁྲུལ།';

  @override
  String get quranLoadFailed =>
      'Quran content could not be loaded. Please try again.';

  @override
  String get retry => 'ཡང་བསྐྱར་ཚོད་ལྟ་བྱེད་པ།';

  @override
  String get refreshAction => 'གསར་བརྗེ།';

  @override
  String get cancel => 'འདོར་བ';

  @override
  String get save => 'སྐྱོབ་པ';

  @override
  String get delete => 'སུབ་པ';

  @override
  String get edit => 'རྩོམ་སྒྲིག';

  @override
  String get close => 'གཏན་པ';

  @override
  String get ok => 'ཆོག';

  @override
  String get yes => 'ཡིན';

  @override
  String get no => 'མིན';

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
  String get reading => 'ཀློག་འདོན';

  @override
  String get recitation => 'Recitation';

  @override
  String get translation => 'Translation';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Loading tafsir...';

  @override
  String get tafsirSourceLabel => 'Tafsir source';

  @override
  String get tafsirNoSurahFound => 'No tafsir found for this surah.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'No tafsir found for ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir could not be loaded.';

  @override
  String get tafsirNoTextForAyah => 'No tafsir text for this ayah.';

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
    return 'Tafsir source returned an HTTP $statusCode error.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'The selected tafsir source returned no entries.';

  @override
  String get tafsirCacheUnavailable =>
      'Verified tafsir is not available offline yet. Sync a sourced tafsir dataset before browsing.';

  @override
  String get bookmarks => 'དེབ་རྟགས།';

  @override
  String get addBookmark => 'Add Bookmark';

  @override
  String get removeBookmark => 'Remove Bookmark';

  @override
  String get lastRead => 'མཐའ་མའི་ཀློག།';

  @override
  String get dailyZikr => 'ཉིན་རེའི་ཟིཀར།';

  @override
  String get duaMeaning1 =>
      'others pray, ‘Our Lord, give us good in this world and in the Hereafter, and protect us from the torment of the Fire.’';

  @override
  String get duaMeaning2 =>
      'God does not burden any soul with more than it can bear: each gains whatever good it has done, and suffers whatever bad it has done. ‘Lord, do not take us to task if we forget or make mistakes. Lord, do not burden us as You burdened those before us. Lord, do not burden us with more than we have strength to bear. Pardon us, forgive us, and have mercy on us. You are our Protector, so help us against the disbelievers.’';

  @override
  String get duaMeaning3 =>
      '‘Our Lord, do not let our hearts deviate after You have guided us. Grant us Your mercy: You are the Ever Giving.';

  @override
  String get duaMeaning4 =>
      'Lord, grant that I and my offspring may keep up the prayer. Our Lord, accept my request.';

  @override
  String get duaMeaning5 =>
      'and lower your wing in humility towards them in kindness and say, ‘Lord, have mercy on them, just as they cared for me when I was little.’';

  @override
  String get duaMeaning6 =>
      'exalted be God, the one who is truly in control. [Prophet], do not rush to recite before the revelation is fully complete but say, ‘Lord, increase me in knowledge!’';

  @override
  String get duaMeaning7 =>
      'Say [Prophet], ‘Lord, forgive and have mercy: You are the most merciful of all.’';

  @override
  String get duaMeaning8 =>
      'those who pray, ‘Our Lord, give us joy in our spouses and offspring. Make us good examples to those who are aware of You’.';

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
  String get hadith => 'Hadith';

  @override
  String get hadithCollection => 'Hadith Collection';

  @override
  String get hadithBooks => 'Hadith Books';

  @override
  String get searchHadith => 'Search Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Names of Allah';

  @override
  String get liveTv => 'ཐད་གཏོང་བརྙན་འཕྲིན།';

  @override
  String get watchLive => 'Watch Live';

  @override
  String get streamError => 'རྒྱུག་ནོར་འཁྲུལ།';

  @override
  String get reload => 'བསྐྱར་དུ་བླུགས།';

  @override
  String get openInYoutube => 'ཡུ་ཊུབ་ནང་ཁ་ཕྱེ།';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Fasting';

  @override
  String get quranReading => 'Quran Reading';

  @override
  String get playSurahAudio => 'སུ་རཱ་སྒྲ་སྒམ།';

  @override
  String get pauseSurahAudio => 'སུ་ར་སྒྲ་མཚམས་འཇོག';

  @override
  String get revelationMeccan => 'མེ་ཁཱན།';

  @override
  String get revelationMedinan => 'མེ་ཌི་ནན།';

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
  String get monthlyProgress => 'ཟླ་རེའི་འཕེལ་རིམ།';

  @override
  String get statistics => 'བསྡོམས་རྩིས་དཔྱད་གཞི།';

  @override
  String get hijriCalendar => 'Hijri Calendar';

  @override
  String get gregorianCalendar => 'གྷི་རི་གྷོ་རི་ཡན་ལོ་ཐོ།';

  @override
  String get today => 'Today';

  @override
  String get tomorrow => 'སང་ཉིན';

  @override
  String get yesterday => 'ཁ་སང';

  @override
  String get specialDays => 'Special Days';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Islamic New Year';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadan';

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
  String get degrees => 'འབུམ་རམས་པ།';

  @override
  String get north => 'བྱང';

  @override
  String get qiblaFound => 'Qibla found!';

  @override
  String get turnDevice => 'Turn your device to face the Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Compass error: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Compass sensor is unavailable on this device.';

  @override
  String get qiblaLocationRequiredTitle => 'ཁིབ་ལ་ལ་དགོས་པའི་གནས་ཡུལ།';

  @override
  String get qiblaLocationRequiredBody =>
      'ཁྱེད་རང་གི་གནས་ཡུལ་ངོ་མ་དེ་ཁིབ་ལ་ཕྱོགས་སྟོན་འཁོར་ལོ་བེད་སྤྱོད་མ་གཏོང་གོང་ལ་སྒྲིག་ནས་ཁ་ཕྱོགས་དེ་གཏན་གཏན་རྩིས་རྒྱག་ཐུབ།';

  @override
  String get adhanNotificationChannelName => 'Adhan བརྡ་ཐོ།';

  @override
  String get adhanNotificationChannelDescription =>
      'སྨོན་ལམ་གྱི་དུས་ཚོད་ལ་ཨ་དྷན་སྒྲ་དང་མཉམ་དུ་ཉེན་བརྡ་གཏོང་བ།';

  @override
  String get notifications => 'བརྡ་ཐོ།';

  @override
  String get prayerNotifications => 'སྨོན་ལམ་བརྡ་ཐོ།';

  @override
  String get enableNotifications => 'བརྡ་ཁྱབ་ལྕོགས་ཅན་བཟོས།';

  @override
  String get notificationTime => 'བརྡ་ཁྱབ་གཏོང་བའི་དུས་ཚོད།';

  @override
  String get beforePrayer => 'minutes before prayer';

  @override
  String get theme => 'Theme';

  @override
  String get lightMode => 'Light Mode';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get systemTheme => 'མ་ལག་བརྗོད་གཞི།';

  @override
  String get about => 'About';

  @override
  String get version => 'Version';

  @override
  String get privacyPolicy => 'གསང་བའི་སྲིད་ཇུས།';

  @override
  String get termsOfService => 'Terms of Service';

  @override
  String get contactUs => 'Contact Us';

  @override
  String get rateApp => 'མཉེན་ཆས་འདི་ལ་ཚད་གཞི་བཟོས།';

  @override
  String get shareApp => 'མཉེན་ཆས་འདི་མཉམ་སྤྱོད།';

  @override
  String shareAppMessage(String appName, String url) {
    return '$appName ལ་ལྟོས་དང་། མཐའ་མའི་ཨིསི་ལམ་གྱི་འཚོ་བའི་མཉེན་ཆས་དེ་ཡིན། $url';
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
  String get checkConnection => 'འབྲེལ་མཐུད་ལ་ཞིབ་བཤེར་གནང་རོགས།';

  @override
  String get premium => 'ཉེན་སྲུང་རིན་པ';

  @override
  String get upgradeToPro => 'Pro ལ་རིམ་སྤོར།';

  @override
  String get proFeatures => 'ཁྱད་ཆོས།';

  @override
  String get removeAds => 'ཁྱབ་བསྒྲགས་མེད་པར་བཟོ་བ།';

  @override
  String get unlockAll => 'ནང་དོན་ཚང་མ་ལྡེ་མིག་ཕྱེ་བ།';

  @override
  String get exclusiveContent => 'དམིགས་བསལ་ནང་དོན།';

  @override
  String get welcome => 'དགའ་བསུ';

  @override
  String get getStarted => 'Get Started';

  @override
  String get skip => 'མཆོང་པ';

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
  String get onboarding2Desc =>
      'གནས་ཡུལ་ལ་གཞིགས་ནས་སྨོན་ལམ་དུས་ཚོད་ཏག་ཏག་གཏོང་བ།';

  @override
  String get onboarding3Title => 'Quran & More';

  @override
  String get onboarding3Desc =>
      'Read Quran, track your reading, and explore Islamic content';

  @override
  String get dhikrLibrary => 'དྷི་ཀར་དཔེ་མཛོད་ཁང་།';

  @override
  String get resetCounter => 'Reset Counter';

  @override
  String get changeTarget => 'དམིགས་འབེན་བསྒྱུར་བ།';

  @override
  String get newTarget => 'དམིགས་འབེན་གསར་པ།';

  @override
  String targetCount(Object target) {
    return 'Target: $target';
  }

  @override
  String get tapToCount => 'Tap to count';

  @override
  String get zikrCompletedMashAllah => 'Completed! MashAllah';

  @override
  String get zikrMeaningSubhanAllah => 'Allah is far above every imperfection.';

  @override
  String get zikrMeaningAlhamdulillah => 'All praise belongs to Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah is the Greatest.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'There is no god but Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'I seek Allah\'s forgiveness.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'There is no power and no strength except through Allah.';

  @override
  String get dailyChecklist => 'ཉིན་རེའི་ཞིབ་བཤེར་ཐོ་གཞུང་།';

  @override
  String get qazaDebt => 'ཁ་ཛ་(བུ་ལོན)།';

  @override
  String get resetQazaData => 'ཁ་ཛ་གཞི་གྲངས་སླར་གསོ་བྱེད་པ།';

  @override
  String get resetQazaDebtQuestion => 'ཁ་ཛ་བུ་ལོན་སླར་གསོ་བྱེད་དགོས་སམ།';

  @override
  String get rawatib => 'Rawatib';

  @override
  String get tahajjud => 'Tahajjud';

  @override
  String get dailyProgress => 'Daily Progress';

  @override
  String get mandatoryPrayers => 'བླ་མེད་སྨོན་ལམ།';

  @override
  String get sunnahAndOthers => 'སུན་ན་དང་གཞན།';

  @override
  String get spiritualGrowth => 'ཆོས་ལུགས་ཀྱི་འཕེལ་རྒྱས།';

  @override
  String get mandatoryDuty => 'མཐའ་གཅིག་ཏུ་འགན་འཁྲི།';

  @override
  String get totalPrayers => 'སྨོན་ལམ་བསྡོམས་པ།';

  @override
  String get prayerDebt => 'སྨོན་ལམ་བུ་ལོན།';

  @override
  String get fastingDebt => 'སྨྱུང་གནས་བུ་ལོན།';

  @override
  String get reset => 'བསྐྱར་སྒྲིག་བྱེད་པ།';

  @override
  String get days => 'ཉིན།';

  @override
  String get premiumIntegrity => 'ཆེས་མཐོའི་དྲང་བདེན།';

  @override
  String get recheckPremium => 'Recheck Premium Status';

  @override
  String get syncStore => 'Sync with the store to confirm your entitlement.';

  @override
  String get checkingPremium =>
      'རིན་གོང་མཐོ་བའི་གནས་ཚུལ་ཞིབ་བཤེར་བྱེད་བཞིན་ཡོད།';

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
  String get manageDatasets =>
      'དྲ་རྒྱའི་ཕྱི་རོལ་གྱི་སྒྲ་དང་གྲངས་ཐོའི་ཐུམ་སྒྲིལ་ཆེན་པོ་དོ་དམ་བྱེད།';

  @override
  String get freeStorage => 'ནང་ཁུལ་གྱི་ཡོ་ཆས་གསོག་འཇོག་བྱེད་ས་གློད་པ།';

  @override
  String get quranIntegrity => 'ཁ་ཆེའི་དཔེ་ཆ།';

  @override
  String get checkQuranDb => 'ཁ་ཆེའི་དཔེ་ཆའི་གྲངས་མཛོད་ལ་ཞིབ་བཤེར་བྱས།';

  @override
  String get verifyQuranContent => 'སུ་ར་ ༡༡༤ དང་ཨ་ཡ་ ༦༢༣༦ བདེན་དཔང་བྱས།';

  @override
  String get checkingQuranDb => 'Checking Quran database...';

  @override
  String get okLabel => 'ཆོག';

  @override
  String get incomplete => 'མ་ཚང་བ།';

  @override
  String get notSeeded => 'ས་བོན་མ་བཏབ་པ།';

  @override
  String get quranDbStatus => 'Quran Database Status';

  @override
  String statusLabel(Object status) {
    return 'Status: $status';
  }

  @override
  String surahsCount(Object count) {
    return 'སུ་ར། $count (རེ་བ་114)';
  }

  @override
  String ayahsCount(Object count) {
    return 'ཨ་ཡཱ་སི། $count (རེ་བ་6236)';
  }

  @override
  String missingArabic(Object count) {
    return 'ཨ་རབ་སྐད་བརླག་སོང་། $count';
  }

  @override
  String missingTurkish(Object count) {
    return 'ཐུར་ཁེའི་སྐད་བརླག་སོང་། $count';
  }

  @override
  String dbVersion(Object version) {
    return 'ཌི་བྷི་ཐོན་རིམ། $version';
  }

  @override
  String dbPath(Object path) {
    return 'ལམ།: $path';
  }

  @override
  String quranCheckFailed(Object error) {
    return 'Quran check failed: $error';
  }

  @override
  String get audioVoice => 'སྒྲ་སྐད་སྒྲ།';

  @override
  String get audioVoiceMisharyAlafasy => 'Male (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Male (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Male (Sudais)';

  @override
  String get fajrAngle => 'ཕ་ཇར་ཟུར།';

  @override
  String get ishaAngle => 'ཨི་ཤ་ཟུར།';

  @override
  String get qiblaCalibration => 'Qibla Calibration';

  @override
  String get compassSmoothing => 'ཕྱོགས་སྟོན་འཁོར་ལོ་འཇམ་པོ་བཟོ་བ།';

  @override
  String get reduceSensorJitter =>
      'སྨན་ཁབ་བརྟན་པོ་ཞིག་གི་ཆེད་དུ་ཚོར་བྱེད་ཀྱི་འགུལ་སྐྱོད་ཉུང་དུ་གཏོང་དགོས།';

  @override
  String get calibrationOffset => 'ཚད་འཇལ་གྱི་ཕྱིར་འཐེན།';

  @override
  String currentOffset(Object offset) {
    return 'ད་ལྟའི་ཆར་$offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'གལ་ཏེ་ཁྱེད་ཀྱི་ཕྱོགས་སྟོན་འཁོར་ལོ་དེ་ལག་ཐོག་ནས་ནོར་བཅོས་བྱེད་དགོས་ན་བསྒྱུར་བཅོས་བྱོས། རིན་ཐང་བཟང་པོ་ཆུ་ཚོད་ཀྱི་ཕྱོགས་སུ་འཁོར་གྱི་ཡོད།';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'ཐོག་མའི་སྒྲིག་བཀོད་བྱ་རིམ་ཡང་བསྐྱར་སྤེལ་དགོས།';

  @override
  String get diagnostics => 'Diagnostics';

  @override
  String get diagnosticsNotSet => 'Not set';

  @override
  String get diagnosticsPrayerProfile => 'སྨོན་ལམ་ངོ་སྤྲོད།';

  @override
  String get diagnosticsPrayerSource => 'སྨོན་ལམ་དབང་འཛིན།';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'སྲོལ་སྒྲིག/$madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'ལག་ཐོག་སྒྲིག་བཀོད་ཀྱི་ཟུར་ཁུག་(གཙུག་ལག་ཁང་གི་ཐོན་ཁུངས་མེད།)';

  @override
  String diagnosticsPrayerHybridSource(String sourceName, String madhab) {
    return '$sourceName ཐབས་ལམ་སྤྱོད་མཁན་གྱིས་འདེམས་པའི་$madhab Asrསྒྲིག་སྟངས་དང་མཉམ་དུ།';
  }

  @override
  String diagnosticsPrayerRegionalFallbackSource(String sourceName) {
    return '$sourceName བཀོལ་ནས་ས་ཁུལ་གྱི་ཕྱིར་ལོག ཁྱེད་རང་གི་ཁ་ཆེའི་ལྷ་ཁང་ཡང་ན་གཞུང་འབྲེལ་གྱི་ཆོས་ལུགས་དབང་འཛིན་དང་མཉམ་དུ་ས་གནས་ཀྱི་སྨོན་ལམ་གྱི་དུས་ཚོད་གཏན་འཁེལ་བྱོས།';
  }

  @override
  String get diagnosticsCloudDriven => 'Cloud Driven';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Quran Audio Assets';

  @override
  String get diagnosticsAudioAssets => 'Audio Assets';

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
      'Supabase ནང་དུ་སྤྲིན་པའི་ཐིག་ཁྲམ་མེད་པ་རེད། བསྡུ་སྒྲིག་བྱས་པའི་ཕྱིར་ལོག་བྱེད་ཤུགས་ལྡན་པ།';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'སྤྲིན་པ་ཇུ་ཟི་མེ་ཊ་ཌེ་ཊ་མེད་པ་རེད། སྒྲིག་བཀོད་ཀྱི་ཕྱིར་ལོག་ཤུགས་ལྡན་པ།';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Cloud structural check failed: $error';
  }

  @override
  String get healthCheckDesc =>
      'འཕྲོད་བསྟེན་ཞིབ་བཤེར་བྱེད་པ་དང་མ་ལག་གི་གནས་ཚུལ་ལ་ལྟ་བ།';

  @override
  String get qiblaAligned => 'ཁིབ་ལ་ཕྲེང་བསྒྲིགས།';

  @override
  String get rotateToFindQibla => 'ཀིབ་ལ་འཚོལ་བར་འཁོར་བ།';

  @override
  String get calibrationRequiredFigure8 =>
      'Calibration required. Rotate device in figure-8.';

  @override
  String get dailyVerse => 'Daily Verse';

  @override
  String get dailyVerseUnavailableTitle => 'Daily verse unavailable';

  @override
  String get dailyVerseUnavailableBody =>
      'Verified daily verse content is not configured for this build yet. Connect to the cloud source or sync a verified cache before browsing.';

  @override
  String get todaysIbadah => 'Today\'s Ibadah';

  @override
  String get quickAccess => 'Quick Access';

  @override
  String get assistant => 'Assistant';

  @override
  String get places => 'Places';

  @override
  String get library => 'Library';

  @override
  String get analytics => 'དབྱེ་ཞིབ།';

  @override
  String get dailyDuas => 'Daily Duas';

  @override
  String essentialDuas(String count) {
    return '$count essential duas';
  }

  @override
  String get duaUnavailableTitle => 'Verified duas are not available yet';

  @override
  String get duaUnavailableBody =>
      'Verified daily duas have not been synced to this device yet. Connect to the cloud source to load sourced duas instead of an unverified fallback.';

  @override
  String get duaCategoryQuranic => 'Quranic dua';

  @override
  String get duaCategoryMorningEvening => 'Morning & Evening';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Protection';

  @override
  String get duaCategoryBeginning => 'Beginnings';

  @override
  String get duaCategorySleep => 'Sleep';

  @override
  String get duaCategoryFoodDrink => 'Food & Drink';

  @override
  String get duaCategoryForgiveness => 'Forgiveness';

  @override
  String get duaCategoryHome => 'Home';

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
  String get islamicEducation => 'ཁ་ཆེའི་སློབ་གསོ།';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Hadith Collections';

  @override
  String get hadithSourcePending => 'Verified source pending';

  @override
  String get hadithUnavailableTitle =>
      'བདེན་དཔང་བྱས་པའི་ཧ་ཌི་ཐི་བསྡུ་རུབ་ད་དུང་མེད་པ་རེད།';

  @override
  String get hadithUnavailableBody =>
      'བཟོ་སྐྲུན་འདི་ད་དུང་ཡང་བདེན་དཔང་མ་བྱས་པའི་ཕྱི་ཕྱོགས་ཀྱི་ཧ་ཌི་ཐི་ཕིཌ་ལ་རག་སླེབས་ཀྱི་ཡོད། ཐོན་ཁུངས་གནས་སྡུད་ཆ་ཚང་མཉམ་སྒྲིག་མ་བྱུང་བར་དུ་ཧ་ཌི་ཐི་བཤར་འཚོལ་བྱེད་པ་དེ་ལྕོགས་མིན་དུ་བསྡད་ཡོད།';

  @override
  String get paywallUnlockAll =>
      'Unlock all features for your spiritual journey';

  @override
  String get premiumProductUnavailable =>
      'Premium product is not available right now. Please try again later.';

  @override
  String get premiumPurchaseFailed =>
      'ཉོ་སྒྲུབ་མཇུག་སྒྲིལ་མ་ཐུབ། ཡང་བསྐྱར་ཚོད་ལྟ་གནང་རོགས།';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'Unlimited AI-powered Q&A';

  @override
  String get paywallFeature2Title => 'Unlimited Offline';

  @override
  String get paywallFeature2Desc => 'Download all recitations';

  @override
  String get paywallFeature3Title => 'Exclusive Designs';

  @override
  String get paywallFeature3Desc => 'Premium themes & fonts';

  @override
  String get paywallFeature4Title => 'Ad-Free';

  @override
  String get paywallFeature4Desc => 'Zero advertisements';

  @override
  String get paywallGetAccess => 'Get Lifetime Access — \$1.00';

  @override
  String get restorePurchases => 'Restore Purchases';

  @override
  String get zakatCalculator => 'Zakat Calculator';

  @override
  String get zakatGold => 'Gold (Altın)';

  @override
  String get zakatSilver => 'Silver (Gümüş)';

  @override
  String get zakatCashBank => 'Cash / Bank';

  @override
  String get zakatBusiness => 'Business';

  @override
  String get zakatInvestments => 'Investments';

  @override
  String get zakatWeightGrams => 'Weight (g)';

  @override
  String get zakatPricePerGram => 'Price/g';

  @override
  String get zakatTotalAmount => 'Total Amount';

  @override
  String get zakatInventoryValue => 'Inventory Value';

  @override
  String get zakatDebts => 'Debts';

  @override
  String get zakatTotal => 'Total';

  @override
  String get calculateZakat => 'Calculate Zakat';

  @override
  String get nisabNotReached => 'Nisab not reached. Zakat is not obligatory.';

  @override
  String get totalZakat => 'Total Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'Gold Zakat';

  @override
  String get zakatSilverZakat => 'Silver Zakat';

  @override
  String get zakatCashZakat => 'Cash Zakat';

  @override
  String get zakatBusinessZakat => 'Business Zakat';

  @override
  String get zakatInvestmentZakat => 'Investment Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Daily query limit reached. Upgrade to Premium for unlimited.';

  @override
  String get chatbotErrorMsg =>
      'I could not generate a response. Please try again.';

  @override
  String get chatbotOfflinePrompt =>
      'བདེན་དཔང་བྱས་པའི་དྲ་རྒྱའི་ཕྱི་རོལ་གྱི་ཨིསི་ལམ་ཤེས་བྱའི་གཞི་རྩ་དེ་ད་དུང་ཡང་བདག་གཉེར་བྱེད་བཞིན་ཡོད། ཁྱེད་ཀྱིས་ད་ལྟ་དྲ་རྒྱའི་ཕྱི་རོལ་གྱི་ཕྱིར་ལོག་ལྕོགས་ཅན་བཟོ་ཐུབ། འོན་ཀྱང་འབྱུང་ཁུངས་ཀྱི་གནས་སྡུད་ཆ་ཚང་གྲ་སྒྲིག་མ་བྱུང་བར་དུ་དེས་ཚད་གཞི་ཅན་གྱི་ཉེན་མེད་བརྡ་འཕྲིན་ཁོ་ན་སྟོན་ཐུབ།\n\nཁྱེད་རང་དྲ་རྒྱའི་ཕྱི་རོལ་གྱི་ཕྱིར་ལོག་བྱེད་འདོད་དམ།';

  @override
  String get chatbotOfflineSwitched =>
      'དྲ་རྒྱའི་ཕྱི་རོལ་གྱི་རྒྱབ་ལོག་ལྕོགས་ཅན་བཟོས། བདེན་དཔང་བྱས་པའི་ས་གནས་ཀྱི་ཨིསི་ལམ་གྱི་ལན་ད་དུང་གྲ་སྒྲིག་མེད་པ་རེད།';

  @override
  String get chatbotOfflineDownloadLabel => 'དྲ་རྒྱའི་ཕྱིར་ལོག་ལྕོགས་ཅན་བཟོས།';

  @override
  String get downloadPreparing => 'ཕབ་ལེན་གྲ་སྒྲིག་བྱེད་བཞིན་ཡོད།';

  @override
  String downloadingSurah(String surah, String total) {
    return 'ཕབ་ལེན་བྱེད་བཞིན་པ། $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'ཀློག་མཁན་འདིའི་ཆེད་དུ་སུ་ར་ཚང་མ་ཕབ་ལེན་བྱས་ཟིན།';

  @override
  String get offlineQuranAudioPacks => 'དྲ་རྒྱའི་ཕྱི་རོལ་གྱི་ཁུ་རཱན་སྒྲ་སྒམ།';

  @override
  String storedOnDeviceMb(String size) {
    return 'Stored on device: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total སུ་རཱ་ཕབ་ལེན་བྱས།';
  }

  @override
  String get redownloadMissingRepair => 'བཟོ་བཅོས།/ཕབ་ལེན་བརླག་པ།';

  @override
  String get downloadAction => 'ཕབ་ལེན';

  @override
  String get resumeDownload => 'མུ་མཐུད་དུ་ཕབ་ལེན།';

  @override
  String get deleteDownloadedFiles => 'ཕབ་ལེན་བྱས་པའི་ཡིག་ཆ་སུབ་པ།';

  @override
  String get cancelDownloadAction => 'ཕབ་ལེན་མེད་པར་བཟོས།';

  @override
  String get downloadCancelling => 'ཆ་མེད་གཏོང་བ།';

  @override
  String downloadCanceledForReciter(String reciter) {
    return '$reciter ཕབ་ལེན་ཆ་མེད་དུ་བཏང་ཡོད།';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return '$reciter ཕབ་ལེན་མཇུག་སྒྲིལ་ཡོད།';
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
      'Verified Quran audio sources are unavailable right now.';

  @override
  String get quranAudioPlaybackErrorWithConnectionHint =>
      'སྒྲ་སྒམ་གཏོང་མ་ཐུབ། འབྲེལ་མཐུད་ལ་ཞིབ་བཤེར་གནང་རོགས།';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Verified Quran audio pack is incomplete ($available/$total). Try again after the audio catalog is updated.';
  }

  @override
  String get chatbotHint => 'Ask a question...';

  @override
  String get chatbotThinking => 'Thinking...';

  @override
  String get sukunMixerSubtitle => 'རང་བྱུང་ཁམས་དང་ཁ་ཆེའི་གསུང་རབ་བསྲེས་ཆས།';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'སུ་ཀུན་༼རང་བྱུང་ཁམས་༽';

  @override
  String get sukunRainOfMercy => 'སྙིང་རྗེའི་ཆར་ཆུ།';

  @override
  String get sukunGardenOfPeace => 'ཞི་བདེའི་ལྡུམ་ར།';

  @override
  String get sukunMidnightCalm => 'མཚན་གུང་ལྷིང་འཇགས།';

  @override
  String get sukunOceanTawheed => 'རྒྱ་མཚོའི་ཏའོ་ཧིད།';

  @override
  String get sukunUnavailableTitle => 'སྒྲ་དབྱངས་མཛེས་ལྗོངས་མེད་པ།';

  @override
  String get sukunUnavailableBody =>
      'བཟོ་སྐྲུན་འདིའི་ནང་དུ་དགོས་མཁོའི་སུ་ཀུན་སྒྲ་སྒམ་གྱི་རྒྱུ་ནོར་ད་དུང་ཚུད་མེད་པ་རེད།';

  @override
  String get prayerCompletion => 'སྨོན་ལམ་མཇུག་སྒྲིལ།';

  @override
  String get streaks => 'ཐིག་ལེ།';

  @override
  String get dayStreak => 'ཉིན་མོའི་རིམ་པ།';

  @override
  String get bestStreak => 'Best streak';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi =>
      'སྤྲིན་པའི་མིས་བཟོས་རིག་ནུས་(Gemini)བེད་སྤྱོད་བྱེད་པ།';

  @override
  String get chatbotDownloadLocalAi => 'Enable Offline Fallback';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API བཀོད་སྒྲིག་བྱས་མེད། དྲ་རྒྱའི་ཕྱི་རོལ་གྱི་ཨིསི་ལམ་གྱི་ལམ་སྟོན་ད་དུང་ཐོབ་ཐུབ་ཀྱི་མེད།';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] བདེན་དཔང་བྱས་པའི་ས་གནས་ཀྱི་ཨིསི་ལམ་གྱི་ལམ་སྟོན་ད་དུང་ཐོབ་ཐུབ་ཀྱི་མེད། ཐོན་ཁུངས་ལན་འདེབས་ཆེད་དུ་སྤྲིན་པའི་མིས་བཟོས་རིག་ནུས་ལ་བསྒྱུར།';

  @override
  String get mosques => 'Mosques';

  @override
  String get halalFood => 'Halal Food';

  @override
  String get placesSearchArea => 'ས་ཁུལ་འདིར་འཚོལ་ཞིབ།';

  @override
  String get nearbyMosques => 'ཉེ་འགྲམ་གྱི་ཁ་ཆེའི་ལྷ་ཁང་།';

  @override
  String get islamicSchools => 'Islamic Schools';

  @override
  String placesFoundCount(String count) {
    return '$count རྙེད།';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance ཀི་ལོ་མི་ཊར་གྱི་སར་ཡོད།';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API ནོར་འཁྲུལ། $statusCode';
  }

  @override
  String get placesNetworkError =>
      'དྲ་རྒྱའི་ནོར་འཁྲུལ། ཡང་བསྐྱར་ཚོད་ལྟ་གནང་རོགས།';

  @override
  String get placesLocationRequiredTitle => 'ས་གནས་དགོས་པ།';

  @override
  String get placesLocationRequiredBody =>
      'དང་པོ་ས་ཆ་ཞིག་གཏན་འབེབས་བྱས་ནས་ཉེ་འགྲམ་གྱི་ཁ་ཆེའི་ལྷ་ཁང་དང་། ཧ་ལལ་ཟ་མ། ཨིསི་ལམ་གྱི་སློབ་གྲྭ་བཅས་འཚོལ་ཞིབ་གཏན་འཁེལ་བྱེད་ཐུབ།';

  @override
  String get placesMapTilesUnavailableTitle => 'ས་ཁྲའི་རྡོ་གཡམ་ཐོབ་མི་ཐུབ།';

  @override
  String get placesMapTilesUnavailableBody =>
      'ད་དུང་བཟོ་སྐྲུན་འདིའི་ཆེད་དུ་བདེན་དཔང་བྱས་པའི་ས་ཁྲའི་བང་རིམ་གྱི་འབྱུང་ཁུངས་སྒྲིག་བཀོད་བྱས་མེད། ཁྱེད་ཀྱི་ཉར་ཚགས་བྱས་པའི་ས་ཆ་ནས་ཉེ་འགྲམ་གྱི་ས་ཆ་ད་དུང་ཡང་མངོན་ཐུབ།';

  @override
  String get placesDataSourceUnavailableTitle => 'གཞི་གྲངས་ཐོབ་མི་ཐུབ་པའི་ས་ཆ།';

  @override
  String get placesDataSourceUnavailableBody =>
      'བདེན་དཔང་བྱས་པའི་ས་ཆའི་གནས་སྡུད་མཐའ་མཚམས་ད་དུང་བཟོ་སྐྲུན་འདིའི་ཆེད་དུ་སྒྲིག་བཀོད་བྱས་མེད། ཉེ་འགྲམ་གྱི་འཚོལ་ཞིབ་ལག་བསྟར་མ་བྱེད་གོང་དུ་PLACES_OVERPASS_API_URL ཆོག་མཆན་ཐོབ་པའི་ཚབ་བྱེད་ཡང་ན་མཁོ་སྤྲོད་བྱེད་མཁན་ལ་སྒྲིག་དགོས།';

  @override
  String get unknownPlaceName => 'Unknown Name';

  @override
  String get islamicPlaceFallback => 'Islamic Place';

  @override
  String get asmaMeaning1 => 'The Beneficent';

  @override
  String get asmaMeaning2 => 'The Merciful';

  @override
  String get asmaMeaning3 => 'The King / Eternal Lord';

  @override
  String get asmaMeaning4 => 'The Most Holy';

  @override
  String get asmaMeaning5 => 'The Source of Peace';

  @override
  String get asmaMeaning6 => 'The Giver of Security';

  @override
  String get asmaMeaning7 =>
      'The Watchful Guardian, who observes and safeguards all creation.';

  @override
  String get asmaMeaning8 => 'The Precious / The Most Mighty';

  @override
  String get asmaMeaning9 =>
      'The Restorer and Irresistible, whose will prevails with perfect power.';

  @override
  String get asmaMeaning10 => 'The Greatest';

  @override
  String get asmaMeaning11 => 'The Creator';

  @override
  String get asmaMeaning12 => 'The Maker of Order';

  @override
  String get asmaMeaning13 => 'The Shaper of Beauty';

  @override
  String get asmaMeaning14 => 'The Forgiving';

  @override
  String get asmaMeaning15 => 'The Subduer';

  @override
  String get asmaMeaning16 => 'The Giver of All';

  @override
  String get asmaMeaning17 => 'The Sustainer';

  @override
  String get asmaMeaning18 => 'The Opener';

  @override
  String get asmaMeaning19 => 'The Knower of All';

  @override
  String get asmaMeaning20 =>
      'The Withholder, who narrows and restrains by wisdom.';

  @override
  String get asmaMeaning21 =>
      'The Expander, who opens, eases, and grants abundance by wisdom.';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'The Bestower of Honour';

  @override
  String get asmaMeaning25 => 'The Humiliator';

  @override
  String get asmaMeaning26 => 'The Hearer of All';

  @override
  String get asmaMeaning27 => 'The Seer of All';

  @override
  String get asmaMeaning28 => 'The Judge';

  @override
  String get asmaMeaning29 => 'The Just';

  @override
  String get asmaMeaning30 => 'The Subtle One';

  @override
  String get asmaMeaning31 => 'The All Aware';

  @override
  String get asmaMeaning32 => 'The Forebearing';

  @override
  String get asmaMeaning33 => 'The Magnificent';

  @override
  String get asmaMeaning34 => 'The Great Forgiver';

  @override
  String get asmaMeaning35 => 'The Rewarder of Thankfulness';

  @override
  String get asmaMeaning36 => 'The Highest';

  @override
  String get asmaMeaning37 => 'The Greatest';

  @override
  String get asmaMeaning38 => 'The Preserver';

  @override
  String get asmaMeaning39 => 'The Nourisher';

  @override
  String get asmaMeaning40 => 'The Reckoner';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'The Generous';

  @override
  String get asmaMeaning43 => 'The Watchful One';

  @override
  String get asmaMeaning44 => 'The Responder to Prayer';

  @override
  String get asmaMeaning45 => 'The All Comprehending';

  @override
  String get asmaMeaning46 => 'The Perfectly Wise';

  @override
  String get asmaMeaning47 => 'The Loving One';

  @override
  String get asmaMeaning48 => 'The Most Glorious One';

  @override
  String get asmaMeaning49 => 'The Resurrector';

  @override
  String get asmaMeaning50 => 'The Witness';

  @override
  String get asmaMeaning51 => 'The Truth';

  @override
  String get asmaMeaning52 => 'The All-Sufficient Trustee';

  @override
  String get asmaMeaning53 => 'The Possessor of All Strength';

  @override
  String get asmaMeaning54 => 'The Forceful';

  @override
  String get asmaMeaning55 => 'The Protector';

  @override
  String get asmaMeaning56 => 'The Praised';

  @override
  String get asmaMeaning57 => 'The Appraiser';

  @override
  String get asmaMeaning58 => 'The Originator';

  @override
  String get asmaMeaning59 => 'The Restorer';

  @override
  String get asmaMeaning60 => 'The Giver of Life';

  @override
  String get asmaMeaning61 => 'The Taker of Life';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'The Self-Subsisting Sustainer';

  @override
  String get asmaMeaning64 => 'The Finder';

  @override
  String get asmaMeaning65 => 'The Glorious';

  @override
  String get asmaMeaning66 => 'The Only One';

  @override
  String get asmaMeaning67 => 'The One';

  @override
  String get asmaMeaning68 => 'The One Sought by All';

  @override
  String get asmaMeaning69 => 'The Powerful';

  @override
  String get asmaMeaning70 => 'The Creator of all power';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'The Delayer';

  @override
  String get asmaMeaning73 => 'The First';

  @override
  String get asmaMeaning74 => 'The Last';

  @override
  String get asmaMeaning75 => 'The Manifest';

  @override
  String get asmaMeaning76 => 'The Hidden';

  @override
  String get asmaMeaning77 =>
      'The Protecting Patron, who governs and cares for all creation.';

  @override
  String get asmaMeaning78 => 'The Supreme One';

  @override
  String get asmaMeaning79 => 'The Doer of Good';

  @override
  String get asmaMeaning80 => 'The Guide to Repentance';

  @override
  String get asmaMeaning81 => 'The Avenger';

  @override
  String get asmaMeaning82 => 'The Forgiver';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'The Owner / Sovereign of All';

  @override
  String get asmaMeaning85 => 'The Possessor of Majesty and Bounty';

  @override
  String get asmaMeaning86 => 'The Equitable One';

  @override
  String get asmaMeaning87 => 'The Gatherer';

  @override
  String get asmaMeaning88 => 'The Rich One';

  @override
  String get asmaMeaning89 => 'The Enricher';

  @override
  String get asmaMeaning90 => 'The Preventer of Harm';

  @override
  String get asmaMeaning91 => 'The Bringer of Harm';

  @override
  String get asmaMeaning92 => 'The Bestower of Benefits';

  @override
  String get asmaMeaning93 => 'The Light';

  @override
  String get asmaMeaning94 => 'The Guider';

  @override
  String get asmaMeaning95 => 'The Originator';

  @override
  String get asmaMeaning96 => 'The Everlasting One';

  @override
  String get asmaMeaning97 => 'The Inheritor';

  @override
  String get asmaMeaning98 => 'The Most Righteous Guide';

  @override
  String get asmaMeaning99 =>
      'The Patient, who does not hasten punishment and acts with perfect forbearance.';
}
