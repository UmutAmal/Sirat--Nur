// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'ഇസ്ലാമിക വെളിച്ചത്തിൻ്റെ വഴി';

  @override
  String get home => 'Home';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'സിക്ർ';

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
  String get fajr => 'ഫജ്ർ';

  @override
  String get sunrise => 'സൂര്യോദയം';

  @override
  String get dhuhr => 'ദുഹ്ർ';

  @override
  String get asr => 'അസർ';

  @override
  String get maghrib => 'മഗ്‌രിബ്';

  @override
  String get isha => 'ഇഷ';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName എന്നതിനുള്ള സമയം';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '$prayerName പ്രാർത്ഥിക്കാനുള്ള സമയമാണിത്.';
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
  String get systemDefault => 'സിസ്റ്റം ഡിഫോൾട്ട്';

  @override
  String get currentLocation => 'Current Location (GPS)';

  @override
  String get locationServiceDisabled => 'ലൊക്കേഷൻ സേവനം പ്രവർത്തനരഹിതമാക്കി.';

  @override
  String get locationPermissionDenied => 'ലൊക്കേഷൻ അനുമതി നിഷേധിച്ചു.';

  @override
  String get locationDetectionFailed =>
      'നിങ്ങളുടെ സ്ഥാനം കണ്ടെത്താനായില്ല. ഒരു നഗരം നേരിട്ട് തിരഞ്ഞെടുക്കുക അല്ലെങ്കിൽ വീണ്ടും ശ്രമിക്കുക.';

  @override
  String citiesCount(String count) {
    return '$count നഗരങ്ങൾ';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'ഫലങ്ങളൊന്നും കണ്ടെത്തിയില്ല';

  @override
  String get loading => 'ലോഡ് ചെയ്യുന്നു...';

  @override
  String get error => 'പിശക്';

  @override
  String get appErrorOccurred => 'ഒരു പിശക് സംഭവിച്ചു';

  @override
  String get appUnknownError => 'അജ്ഞാത പിശക്';

  @override
  String get quranLoadFailed =>
      'ഖുറാൻ ഉള്ളടക്കം ലോഡ് ചെയ്യാൻ കഴിഞ്ഞില്ല. ദയവായി വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'പുതുക്കുക';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'ഇല്ലാതാക്കുക';

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
    return 'ആയഹ് $ayah';
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
  String get tafsirLoading => 'തഫ്സീർ ലോഡ് ചെയ്യുന്നു...';

  @override
  String get tafsirSourceLabel => 'തഫ്സീർ ഉറവിടം';

  @override
  String get tafsirNoSurahFound => 'ഈ സൂറത്തിന് തഫ്സീറൊന്നും കണ്ടെത്തിയില്ല.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'ആയത്ത് $ayah എന്നതിനായി തഫ്സീറൊന്നും കണ്ടെത്തിയില്ല.';
  }

  @override
  String get tafsirLoadFailed => 'തഫ്സീർ ലോഡ് ചെയ്യാൻ കഴിഞ്ഞില്ല.';

  @override
  String get tafsirNoTextForAyah => 'ഈ ആയത്തിന് തഫ്സീർ വാചകമില്ല.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'തഫ്സീർ ഡൗൺലോഡ് ചെയ്യുന്നു $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'തഫ്സീർ ലോഡ് ചെയ്യുന്നു $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'തഫ്സീർ ഉറവിടം ഒരു HTTP $statusCode പിശക് നൽകി.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'തിരഞ്ഞെടുത്ത തഫ്സീർ ഉറവിടം എൻട്രികളൊന്നും നൽകിയിട്ടില്ല.';

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
      'മറ്റുചിലർ പ്രാർത്ഥിക്കുന്നു, ‘ഞങ്ങളുടെ നാഥാ, ഞങ്ങൾക്ക് ഇഹത്തിലും പരത്തിലും നന്മ നൽകേണമേ, നരകശിക്ഷയിൽ നിന്ന് ഞങ്ങളെ കാത്തുരക്ഷിക്കണമേ.';

  @override
  String get duaMeaning2 =>
      'ഒരു ആത്മാവിനും സഹിക്കാവുന്നതിലധികം ദൈവം ഭാരപ്പെടുത്തുന്നില്ല: ഓരോരുത്തർക്കും താൻ ചെയ്ത നന്മകൾ നേടുകയും അതിൻ്റെ ദോഷം അനുഭവിക്കുകയും ചെയ്യുന്നു- \'കർത്താവേ, ഞങ്ങൾ മറക്കുകയോ തെറ്റുകൾ വരുത്തുകയോ ചെയ്താൽ ഞങ്ങളെ കുറ്റപ്പെടുത്തരുത്. നാഥാ, ഞങ്ങളുടെ മുമ്പുള്ളവരെ നീ ഭാരപ്പെടുത്തിയത് പോലെ ഞങ്ങൾക്കും ഭാരമാകരുതേ. കർത്താവേ, ഞങ്ങൾക്കു താങ്ങാനുള്ള ശക്തിയേക്കാൾ കൂടുതൽ ഭാരം ചുമത്തരുതേ. ഞങ്ങളോട് ക്ഷമിക്കേണമേ, ഞങ്ങളോട് ക്ഷമിക്കേണമേ, ഞങ്ങളോട് കരുണ കാണിക്കണമേ. നീയാണ് ഞങ്ങളുടെ സംരക്ഷകൻ, അതിനാൽ അവിശ്വാസികൾക്കെതിരെ ഞങ്ങളെ സഹായിക്കൂ.';

  @override
  String get duaMeaning3 =>
      '‘ഞങ്ങളുടെ നാഥാ, നീ ഞങ്ങളെ നേർവഴിയിലാക്കിയതിന് ശേഷം ഞങ്ങളുടെ ഹൃദയങ്ങൾ വ്യതിചലിക്കരുതേ. നിൻ്റെ കാരുണ്യം ഞങ്ങൾക്ക് നൽകേണമേ: നീ എന്നും നൽകുന്നവനാണ്.';

  @override
  String get duaMeaning4 =>
      'കർത്താവേ, ഞാനും എൻ്റെ സന്തതികളും പ്രാർത്ഥന നിലനിർത്താൻ അനുവദിക്കണമേ. ഞങ്ങളുടെ നാഥാ, എൻ്റെ അപേക്ഷ സ്വീകരിക്കണമേ.';

  @override
  String get duaMeaning5 =>
      'അവരോട് ദയയോടെ നിങ്ങളുടെ ചിറക് താഴ്ത്തുക, \'കർത്താവേ, അവർ എന്നെ ചെറുപ്പത്തിൽ പരിപാലിച്ചതുപോലെ അവരോട് കരുണ കാണിക്കണമേ\' എന്ന് പറയുക.';

  @override
  String get duaMeaning6 =>
      'യഥാർത്ഥത്തിൽ നിയന്ത്രിക്കുന്ന ദൈവം ഉന്നതനായിരിക്കട്ടെ. [പ്രവാചകൻ], വെളിപാട് പൂർണമാകുന്നതിന് മുമ്പ് പാരായണം ചെയ്യാൻ തിരക്കുകൂട്ടരുത്, എന്നാൽ \'കർത്താവേ, എനിക്ക് അറിവ് വർദ്ധിപ്പിക്കേണമേ!\'';

  @override
  String get duaMeaning7 =>
      '[പ്രവാചകൻ] പറയുക, ‘കർത്താവേ, ക്ഷമിക്കുകയും കരുണ കാണിക്കുകയും ചെയ്യേണമേ: നീ എല്ലാവരിലും ഏറ്റവും കരുണയുള്ളവനാണ്.';

  @override
  String get duaMeaning8 =>
      'ഞങ്ങളുടെ രക്ഷിതാവേ, ഞങ്ങളുടെ ഇണകളിലും സന്തതികളിലും ഞങ്ങൾക്ക് സന്തോഷം നൽകേണമേ എന്ന് പ്രാർത്ഥിക്കുന്നവർ. നിന്നെ അറിയുന്നവർക്ക് ഞങ്ങളെ നല്ല മാതൃകയാക്കേണമേ.';

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
  String get hadith => 'ഹദീസ്';

  @override
  String get hadithCollection => 'ഹദീസ് ശേഖരണം';

  @override
  String get hadithBooks => 'ഹദീസ് പുസ്തകങ്ങൾ';

  @override
  String get searchHadith => 'ഹദീസ് തിരയുക';

  @override
  String get asmaulHusna => 'അസ്മ-ഉൽ-ഹുസ്ന';

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
  String get openInYoutube => 'YouTube-ൽ തുറക്കുക';

  @override
  String get ibadahTracker => 'ഇബാദ ട്രാക്കർ';

  @override
  String get fasting => 'Fasting';

  @override
  String get quranReading => 'Quran Reading';

  @override
  String get prayers => 'Prayers';

  @override
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '${hours}h $minutesമി';
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
  String get islamicNewYear => 'ഇസ്ലാമിക പുതുവർഷം';

  @override
  String get mawlidAnNabi => 'മൗലിദ് നബി';

  @override
  String get specialDayDateRamadanStart => '1 റമദാൻ';

  @override
  String get specialDayDateLaylatAlQadr => '27 റമദാൻ';

  @override
  String get specialDayDateEidAlFitr => '1 ശവ്വാൽ';

  @override
  String get specialDayDateEidAlAdha => '10 ദുൽ ഹിജ്ജ';

  @override
  String get specialDayDateIslamicNewYear => '1 മുഹറം';

  @override
  String get specialDayDateMawlidAnNabi => '12 റാബി അൽ അവ്വൽ';

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
    return 'കോമ്പസ് പിശക്: $error';
  }

  @override
  String get qiblaSensorUnavailable => 'ഈ ഉപകരണത്തിൽ കോമ്പസ് സെൻസർ ലഭ്യമല്ല.';

  @override
  String get qiblaLocationRequiredTitle => 'ഖിബ്ലയ്ക്ക് ആവശ്യമായ സ്ഥലം';

  @override
  String get qiblaLocationRequiredBody =>
      'ഖിബ്ല കോമ്പസ് ഉപയോഗിക്കുന്നതിന് മുമ്പ് നിങ്ങളുടെ യഥാർത്ഥ സ്ഥാനം സജ്ജമാക്കുക, അങ്ങനെ ദിശ കൃത്യമായി കണക്കാക്കാം.';

  @override
  String get adhanNotificationChannelName => 'അധാൻ അറിയിപ്പുകൾ';

  @override
  String get adhanNotificationChannelDescription =>
      'അദാൻ ശബ്ദത്തോടുകൂടിയ പ്രാർത്ഥന സമയ അലേർട്ടുകൾ.';

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
  String get theme => 'തീം';

  @override
  String get lightMode => 'ലൈറ്റ് മോഡ്';

  @override
  String get darkMode => 'ഡാർക്ക് മോഡ്';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'About';

  @override
  String get version => 'പതിപ്പ്';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get termsOfService => 'Terms of Service';

  @override
  String get contactUs => 'Contact Us';

  @override
  String get rateApp => 'ആപ്പ് റേറ്റ് ചെയ്യുക';

  @override
  String get shareApp => 'ആപ്പ് പങ്കിടുക';

  @override
  String shareAppMessage(String appName, String url) {
    return '$appName പരിശോധിക്കുക: പരമമായ ഇസ്ലാമിക ജീവിതശൈലി ആപ്പ്! $url';
  }

  @override
  String get downloadManager => 'ഡൗൺലോഡ് മാനേജർ';

  @override
  String get downloads => 'ഡൗൺലോഡുകൾ';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'ഡൗൺലോഡ് പൂർത്തിയായി';

  @override
  String get downloadFailed => 'ഡൗൺലോഡ് പരാജയപ്പെട്ടു';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'ഇൻ്റർനെറ്റ് കണക്ഷനില്ല';

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
  String get tapToCount => 'എണ്ണാൻ ടാപ്പ് ചെയ്യുക';

  @override
  String get zikrCompletedMashAllah => 'പൂർത്തിയായി! മാഷാ അല്ലാഹ്';

  @override
  String get zikrMeaningSubhanAllah => 'എല്ലാ അപൂർണതകൾക്കും അതീതനാണ് അല്ലാഹു.';

  @override
  String get zikrMeaningAlhamdulillah => 'എല്ലാ സ്തുതിയും അല്ലാഹുവിനാണ്.';

  @override
  String get zikrMeaningAllahuAkbar => 'അല്ലാഹുവാണ് ഏറ്റവും വലിയവൻ.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'അല്ലാഹുവല്ലാതെ ഒരു ദൈവവുമില്ല.';

  @override
  String get zikrMeaningAstaghfirullah =>
      'ഞാൻ അല്ലാഹുവിനോട് പാപമോചനം തേടുന്നു.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'അല്ലാഹുവിലൂടെയല്ലാതെ ഒരു ശക്തിയും ശക്തിയുമില്ല.';

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
  String get offlineDownloadManager => 'ഓഫ്‌ലൈൻ ഡൗൺലോഡ് മാനേജർ';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'ഉപകരണത്തിൻ്റെ ആന്തരിക സംഭരണം ശൂന്യമാക്കുക.';

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
  String get audioVoice => 'ഓഡിയോ വോയ്സ്';

  @override
  String get audioVoiceMisharyAlafasy => 'പുരുഷൻ (മിഷാരി അലഫാസി)';

  @override
  String get audioVoiceAbdulBaset => 'പുരുഷൻ (അബ്ദുൾബാസെറ്റ്)';

  @override
  String get audioVoiceSudais => 'പുരുഷൻ (സുദൈസ്)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'ഖിബ്ല കാലിബ്രേഷൻ';

  @override
  String get compassSmoothing => 'കോമ്പസ് സുഗമമാക്കൽ';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'കാലിബ്രേഷൻ ഓഫ്‌സെറ്റ്';

  @override
  String currentOffset(Object offset) {
    return 'നിലവിലെ: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'നിങ്ങളുടെ കോമ്പസിന് മാനുവൽ തിരുത്തൽ ആവശ്യമുണ്ടെങ്കിൽ ക്രമീകരിക്കുക. പോസിറ്റീവ് മൂല്യങ്ങൾ ഘടികാരദിശയിൽ കറങ്ങുന്നു.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'ഡയഗ്നോസ്റ്റിക്സ്';

  @override
  String get diagnosticsNotSet => 'സജ്ജമാക്കിയിട്ടില്ല';

  @override
  String get diagnosticsPrayerProfile => 'പ്രാർത്ഥന പ്രൊഫൈൽ';

  @override
  String get diagnosticsPrayerSource => 'പ്രാർത്ഥന അതോറിറ്റി';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'ഇഷ്ടാനുസൃതം / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'മാനുവൽ ഇഷ്‌ടാനുസൃത ആംഗിളുകൾ (ഇൻസ്റ്റിറ്റ്യൂഷണൽ ഉറവിടങ്ങളില്ല)';

  @override
  String get diagnosticsCloudDriven => 'ക്ലൗഡ് ഡ്രൈവൺ';

  @override
  String get diagnosticsAdhanAudioAssets => 'അധാൻ ഓഡിയോ അസറ്റുകൾ';

  @override
  String get diagnosticsUiAudioAssets => 'UI ഓഡിയോ അസറ്റുകൾ';

  @override
  String get diagnosticsQuranAudioAssets => 'ഖുർആൻ ഓഡിയോ അസറ്റുകൾ';

  @override
  String get diagnosticsAudioAssets => 'ഓഡിയോ അസറ്റുകൾ';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count ഫയലുകൾ';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'മാനിഫെസ്റ്റ് വായന പരാജയപ്പെട്ടു: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'പ്രാദേശികവൽക്കരണം ലോക്കലുകൾ';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count പിന്തുണയ്ക്കുന്നു';
  }

  @override
  String get diagnosticsQuranDataset => 'ഖുറാൻ ഡാറ്റാസെറ്റ്';

  @override
  String get diagnosticsQuranSurahs => 'ഖുർആൻ സൂറത്തുകൾ';

  @override
  String get diagnosticsQuranAyahs => 'ഖുർആൻ ആയത്തുകൾ';

  @override
  String get diagnosticsQuranJuzMetadata => 'ഖുർആൻ ജുസ് മെറ്റാഡാറ്റ';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'സുപാബേസിൽ ക്ലൗഡ് ടേബിളുകൾ കാണുന്നില്ല; ബണ്ടിൽഡ് ഫാൾബാക്ക് സജീവമാണ്';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'ക്ലൗഡ് പരിശോധന പരാജയപ്പെട്ടു: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'ക്ലൗഡ് ജുസ് മെറ്റാഡാറ്റ കാണുന്നില്ല; ബണ്ടിൽഡ് സ്ട്രക്ചറൽ ഫാൾബാക്ക് സജീവമാണ്';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'ക്ലൗഡ് ഘടനാപരമായ പരിശോധന പരാജയപ്പെട്ടു: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'കാലിബ്രേഷൻ ആവശ്യമാണ്. ചിത്രം-8-ൽ ഉപകരണം തിരിക്കുക.';

  @override
  String get dailyVerse => 'ദൈനംദിന വാക്യം';

  @override
  String get todaysIbadah => 'ഇന്നത്തെ ഇബാദത്ത്';

  @override
  String get quickAccess => 'ദ്രുത പ്രവേശനം';

  @override
  String get assistant => 'അസിസ്റ്റൻ്റ്';

  @override
  String get places => 'സ്ഥലങ്ങൾ';

  @override
  String get library => 'ലൈബ്രറി';

  @override
  String get analytics => 'അനലിറ്റിക്സ്';

  @override
  String get dailyDuas => 'ദിവസേനയുള്ള ദുആകൾ';

  @override
  String essentialDuas(String count) {
    return '$count അത്യാവശ്യ ദുആകൾ';
  }

  @override
  String get duaUnavailableTitle => 'പരിശോധിച്ച ദുആകൾ ഇതുവരെ ലഭ്യമല്ല';

  @override
  String get duaUnavailableBody =>
      'പരിശോധിച്ചുറപ്പിച്ച പ്രതിദിന ദുആകൾ ഇതുവരെ ഈ ഉപകരണത്തിലേക്ക് സമന്വയിപ്പിച്ചിട്ടില്ല. പരിശോധിച്ചുറപ്പിക്കാത്ത ഫാൾബാക്കിന് പകരം സോഴ്‌സ് ചെയ്‌ത ദുആകൾ ലോഡുചെയ്യാൻ ക്ലൗഡ് ഉറവിടത്തിലേക്ക് കണക്റ്റുചെയ്യുക.';

  @override
  String get duaCategoryQuranic => 'ഖുർആൻ ദുആ';

  @override
  String get duaCategoryMorningEvening => 'രാവിലെയും വൈകുന്നേരവും';

  @override
  String get duaCategoryTasbih => 'തസ്ബിഹ്';

  @override
  String get duaCategoryProtection => 'സംരക്ഷണം';

  @override
  String get duaCategoryBeginning => 'തുടക്കം';

  @override
  String get duaCategorySleep => 'ഉറങ്ങുക';

  @override
  String get duaCategoryFoodDrink => 'ഭക്ഷണവും പാനീയവും';

  @override
  String get duaCategoryForgiveness => 'ക്ഷമാപണം';

  @override
  String get duaCategoryHome => 'വീട്';

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
  String get islamicEducation => 'ഇസ്ലാമിക വിദ്യാഭ്യാസം';

  @override
  String get sukunAudioTitle => 'സുകുൻ സൗണ്ട്സ്കേപ്പുകൾ';

  @override
  String get hadithCollections => 'ഹദീസ് ശേഖരങ്ങൾ';

  @override
  String get hadithSourcePending =>
      'പരിശോധിച്ച ഉറവിടം തീർച്ചപ്പെടുത്തിയിട്ടില്ല';

  @override
  String get hadithUnavailableTitle =>
      'പരിശോധിച്ച ഹദീസ് ശേഖരങ്ങൾ ഇതുവരെ ലഭ്യമല്ല';

  @override
  String get hadithUnavailableBody =>
      'ഈ ബിൽഡ് ഇപ്പോഴും സ്ഥിരീകരിക്കാത്ത ഒരു ബാഹ്യ ഹദീസ് ഫീഡിനെ ആശ്രയിച്ചിരിക്കുന്നു. ഒരു ഉറവിട ഡാറ്റാസെറ്റ് സമന്വയിപ്പിക്കുന്നതുവരെ ഹദീസ് ബ്രൗസിംഗ് പ്രവർത്തനരഹിതമായി തുടരും.';

  @override
  String get paywallUnlockAll =>
      'നിങ്ങളുടെ ആത്മീയ യാത്രയ്ക്കുള്ള എല്ലാ സവിശേഷതകളും അൺലോക്ക് ചെയ്യുക';

  @override
  String get premiumProductUnavailable =>
      'പ്രീമിയം ഉൽപ്പന്നം ഇപ്പോൾ ലഭ്യമല്ല. ദയവായി പിന്നീട് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get premiumPurchaseFailed =>
      'വാങ്ങൽ പൂർത്തിയാക്കാനായില്ല. ദയവായി വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get paywallFeature1Title => 'ന്യൂറൽ അസിസ്റ്റൻ്റ് പ്ലസ്';

  @override
  String get paywallFeature1Desc => 'അൺലിമിറ്റഡ് AI- പവർഡ് Q&A';

  @override
  String get paywallFeature2Title => 'അൺലിമിറ്റഡ് ഓഫ്‌ലൈൻ';

  @override
  String get paywallFeature2Desc => 'എല്ലാ പാരായണങ്ങളും ഡൗൺലോഡ് ചെയ്യുക';

  @override
  String get paywallFeature3Title => 'എക്സ്ക്ലൂസീവ് ഡിസൈനുകൾ';

  @override
  String get paywallFeature3Desc => 'പ്രീമിയം തീമുകളും ഫോണ്ടുകളും';

  @override
  String get paywallFeature4Title => 'പരസ്യരഹിതം';

  @override
  String get paywallFeature4Desc => 'സീറോ പരസ്യങ്ങൾ';

  @override
  String get paywallGetAccess => 'ആജീവനാന്ത ആക്സസ് നേടുക - \$1.00';

  @override
  String get restorePurchases => 'വാങ്ങലുകൾ പുനഃസ്ഥാപിക്കുക';

  @override
  String get zakatCalculator => 'സകാത്ത് കാൽക്കുലേറ്റർ';

  @override
  String get zakatGold => 'സ്വർണ്ണം (Altın)';

  @override
  String get zakatSilver => 'വെള്ളി (Gümüş)';

  @override
  String get zakatCashBank => 'പണം / ബാങ്ക്';

  @override
  String get zakatBusiness => 'ബിസിനസ്സ്';

  @override
  String get zakatInvestments => 'നിക്ഷേപങ്ങൾ';

  @override
  String get zakatWeightGrams => 'ഭാരം (ഗ്രാം)';

  @override
  String get zakatPricePerGram => 'വില/ഗ്രാം';

  @override
  String get zakatTotalAmount => 'മൊത്തം തുക';

  @override
  String get zakatInventoryValue => 'ഇൻവെൻ്ററി മൂല്യം';

  @override
  String get zakatDebts => 'കടങ്ങൾ';

  @override
  String get zakatTotal => 'ആകെ';

  @override
  String get calculateZakat => 'സകാത്ത് കണക്കാക്കുക';

  @override
  String get nisabNotReached => 'നിസാബ് എത്തിയില്ല. സകാത്ത് നിർബന്ധമല്ല.';

  @override
  String get totalZakat => 'മൊത്തം സകാത്ത്';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'നിസാബ്: $nisab • അസറ്റുകൾ: $assets';
  }

  @override
  String get zakatGoldZakat => 'സ്വർണ്ണ സകാത്ത്';

  @override
  String get zakatSilverZakat => 'വെള്ളി സകാത്ത്';

  @override
  String get zakatCashZakat => 'കാഷ് സകാത്ത്';

  @override
  String get zakatBusinessZakat => 'ബിസിനസ് സകാത്ത്';

  @override
  String get zakatInvestmentZakat => 'നിക്ഷേപം സകാത്ത്';

  @override
  String get chatbotGreeting =>
      'അസ്സലാമു അലൈക്കും! ഞാൻ നിങ്ങളുടെ ഇസ്ലാമിക സഹായിയാണ്. പ്രാർത്ഥന, ഉപവാസം, സകാത്ത് അല്ലെങ്കിൽ ഏതെങ്കിലും ഇസ്ലാമിക വിഷയത്തെക്കുറിച്ച് എന്നോട് ചോദിക്കൂ.';

  @override
  String get chatbotLimitReached =>
      'പ്രതിദിന അന്വേഷണ പരിധി എത്തി. അൺലിമിറ്റഡ് പ്രീമിയത്തിലേക്ക് അപ്‌ഗ്രേഡ് ചെയ്യുക.';

  @override
  String get chatbotErrorMsg =>
      'എനിക്ക് ഒരു പ്രതികരണം സൃഷ്ടിക്കാൻ കഴിഞ്ഞില്ല. ദയവായി വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get chatbotOfflinePrompt =>
      'പരിശോധിച്ച ഓഫ്‌ലൈൻ ഇസ്ലാമിക് വിജ്ഞാന അടിത്തറ ഇപ്പോഴും ക്യൂറേറ്റ് ചെയ്യപ്പെടുകയാണ്. നിങ്ങൾക്ക് ഇപ്പോൾ ഓഫ്‌ലൈൻ ഫാൾബാക്ക് പ്രവർത്തനക്ഷമമാക്കാൻ കഴിയും, എന്നാൽ ഉറവിട ഡാറ്റാസെറ്റ് തയ്യാറാകുന്നത് വരെ പരിമിതമായ സുരക്ഷിത സന്ദേശങ്ങൾ മാത്രമേ ഇത് കാണിക്കൂ.\n\nഓഫ്‌ലൈൻ ഫാൾബാക്ക് പ്രവർത്തനക്ഷമമാക്കാൻ നിങ്ങൾ ആഗ്രഹിക്കുന്നുണ്ടോ?';

  @override
  String get chatbotOfflineSwitched =>
      'ഓഫ്‌ലൈൻ ഫാൾബാക്ക് പ്രവർത്തനക്ഷമമാക്കി. പരിശോധിച്ചുറപ്പിച്ച പ്രാദേശിക ഇസ്ലാമിക ഉത്തരങ്ങൾ ഇതുവരെ തയ്യാറായിട്ടില്ല.';

  @override
  String get chatbotOfflineDownloadLabel =>
      'ഓഫ്‌ലൈൻ ഫോൾബാക്ക് പ്രവർത്തനക്ഷമമാക്കുക';

  @override
  String get downloadPreparing => 'ഡൗൺലോഡ് തയ്യാറാക്കുന്നു...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'സൂറ ഡൗൺലോഡ് ചെയ്യുന്നു $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'ഈ പാരായണക്കാരനായി എല്ലാ സൂറകളും ഇതിനകം ഡൗൺലോഡ് ചെയ്തിട്ടുണ്ട്.';

  @override
  String get offlineQuranAudioPacks => 'ഓഫ്‌ലൈൻ ഖുർആൻ ഓഡിയോ പായ്ക്കുകൾ';

  @override
  String storedOnDeviceMb(String size) {
    return 'ഉപകരണത്തിൽ സംഭരിച്ചിരിക്കുന്നത്: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total സൂറത്തുകൾ ഡൗൺലോഡ് ചെയ്തു';
  }

  @override
  String get redownloadMissingRepair => 'നന്നാക്കൽ / ഡൗൺലോഡ് നഷ്‌ടമായി';

  @override
  String get downloadAction => 'ഡൗൺലോഡ് ചെയ്യുക';

  @override
  String get resumeDownload => 'ഡൗൺലോഡ് പുനരാരംഭിക്കുക';

  @override
  String get deleteDownloadedFiles => 'ഡൗൺലോഡ് ചെയ്ത ഫയലുകൾ ഇല്ലാതാക്കുക';

  @override
  String get downloadCancelling => 'റദ്ദാക്കുന്നു...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return '$reciter എന്നതിനായി ഡൗൺലോഡ് റദ്ദാക്കി.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return '$reciter എന്നതിനായി ഡൗൺലോഡ് പൂർത്തിയായി.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return '$reciter എന്നതിനായി $failed പരാജയപ്പെട്ട സൂറത്തുകൾക്കൊപ്പം ഡൗൺലോഡ് പൂർത്തിയായി ($downloaded/$total ഡൗൺലോഡ് ചെയ്തു).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return '$reciter എന്നതിനായുള്ള ഓഫ്‌ലൈൻ ഫയലുകൾ ഇല്ലാതാക്കി.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'പരിശോധിച്ചുറപ്പിച്ച ഖുർആൻ ഓഡിയോ ഉറവിടങ്ങൾ ഇപ്പോൾ ലഭ്യമല്ല.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'പരിശോധിച്ച ഖുറാൻ ഓഡിയോ പായ്ക്ക് അപൂർണ്ണമാണ് ($available/$total). ക്ലൗഡ് സീഡ് പുതുക്കി വീണ്ടും ശ്രമിക്കുക.';
  }

  @override
  String get chatbotHint => 'ഒരു ചോദ്യം ചോദിക്കൂ...';

  @override
  String get chatbotThinking => 'ചിന്തിക്കുന്നു...';

  @override
  String get sukunMixerSubtitle => 'പ്രകൃതിയും ഖുറാനും മിക്സർ';

  @override
  String get audioPlayFailed => 'ഓഡിയോ പ്ലേബാക്ക് പരാജയപ്പെട്ടു';

  @override
  String get sukunNatureLabel => 'സുകുൻ (പ്രകൃതി)';

  @override
  String get sukunRainOfMercy => 'കാരുണ്യത്തിൻ്റെ മഴ';

  @override
  String get sukunGardenOfPeace => 'സമാധാനത്തിൻ്റെ പൂന്തോട്ടം';

  @override
  String get sukunMidnightCalm => 'അർദ്ധരാത്രി ശാന്തത';

  @override
  String get sukunOceanTawheed => 'ഓഷ്യൻ തൗഹീദ്';

  @override
  String get sukunUnavailableTitle => 'സൗണ്ട്സ്കേപ്പുകൾ ലഭ്യമല്ല';

  @override
  String get sukunUnavailableBody =>
      'ഈ ബിൽഡിൽ ഇതുവരെ ആവശ്യമായ സുകുൻ സൗണ്ട്‌സ്‌കേപ്പ് അസറ്റുകൾ ഉൾപ്പെട്ടിട്ടില്ല.';

  @override
  String get prayerCompletion => 'പ്രാർത്ഥന പൂർത്തീകരണം';

  @override
  String get streaks => 'വരകൾ';

  @override
  String get dayStreak => 'പകൽ സ്ട്രീക്ക്';

  @override
  String get bestStreak => 'മികച്ച സ്ട്രീക്ക്';

  @override
  String get chatbotCloudAiLabel => 'ക്ലൗഡ് AI';

  @override
  String get chatbotLocalAiLabel => 'ഓഫ്‌ലൈൻ ഫോൾബാക്ക്';

  @override
  String get chatbotUseCloudAi => 'ക്ലൗഡ് AI (Gemini) ഉപയോഗിക്കുക';

  @override
  String get chatbotDownloadLocalAi => 'ഓഫ്‌ലൈൻ ഫോൾബാക്ക് പ്രവർത്തനക്ഷമമാക്കുക';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count അവശേഷിക്കുന്നു';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'ക്ലൗഡ് API കോൺഫിഗർ ചെയ്തിട്ടില്ല. പരിശോധിച്ച ഓഫ്‌ലൈൻ ഇസ്ലാമിക മാർഗ്ഗനിർദ്ദേശം ഇതുവരെ ലഭ്യമല്ല.';

  @override
  String get chatbotLocalNoInfo =>
      '[ഓഫ്‌ലൈൻ] പരിശോധിച്ചുറപ്പിച്ച പ്രാദേശിക ഇസ്ലാമിക മാർഗ്ഗനിർദ്ദേശം ഇതുവരെ ലഭ്യമല്ല. ഉറവിട ഉത്തരങ്ങൾക്കായി ക്ലൗഡ് AI-ലേക്ക് മാറുക.';

  @override
  String get mosques => 'മസ്ജിദുകൾ';

  @override
  String get halalFood => 'ഹലാൽ ഭക്ഷണം';

  @override
  String get placesSearchArea => 'ഈ പ്രദേശത്ത് തിരയുക';

  @override
  String get nearbyMosques => 'അടുത്തുള്ള മസ്ജിദുകൾ';

  @override
  String get islamicSchools => 'ഇസ്ലാമിക് സ്കൂളുകൾ';

  @override
  String placesFoundCount(String count) {
    return '$count കണ്ടെത്തി';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance കിലോമീറ്റർ അകലെ';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API പിശക്: $statusCode';
  }

  @override
  String get placesNetworkError =>
      'നെറ്റ്‌വർക്ക് പിശക്. ദയവായി വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get placesLocationRequiredTitle => 'സ്ഥലം ആവശ്യമാണ്';

  @override
  String get placesLocationRequiredBody =>
      'അടുത്തുള്ള മസ്ജിദുകൾ, ഹലാൽ ഭക്ഷണം, ഇസ്ലാമിക് സ്കൂളുകൾ എന്നിവ കൃത്യമായി തിരയാൻ കഴിയുന്ന തരത്തിൽ ആദ്യം ഒരു സ്ഥലം സജ്ജമാക്കുക.';

  @override
  String get placesMapTilesUnavailableTitle => 'മാപ്പ് ടൈലുകൾ ലഭ്യമല്ല';

  @override
  String get placesMapTilesUnavailableBody =>
      'ഈ ബിൽഡിനായി പരിശോധിച്ച മാപ്പ് ടൈൽ ഉറവിടം ഇതുവരെ കോൺഫിഗർ ചെയ്‌തിട്ടില്ല. നിങ്ങളുടെ സംരക്ഷിച്ച ലൊക്കേഷനിൽ നിന്ന് സമീപ സ്ഥലങ്ങൾക്ക് തുടർന്നും ലോഡ് ചെയ്യാൻ കഴിയും.';

  @override
  String get placesDataSourceUnavailableTitle => 'സ്ഥലങ്ങളുടെ ഡാറ്റ ലഭ്യമല്ല';

  @override
  String get placesDataSourceUnavailableBody =>
      'ഈ ബിൽഡിനായി പരിശോധിച്ച സ്ഥലങ്ങളുടെ ഡാറ്റ എൻഡ്‌പോയിൻ്റ് ഇതുവരെ കോൺഫിഗർ ചെയ്‌തിട്ടില്ല. സമീപത്തുള്ള തിരയൽ പ്രവർത്തനക്ഷമമാക്കുന്നതിന് മുമ്പ് PLACES_OVERPASS_API_URL ഒരു അംഗീകൃത പ്രോക്സി അല്ലെങ്കിൽ ദാതാവായി സജ്ജമാക്കുക.';

  @override
  String get unknownPlaceName => 'അജ്ഞാത നാമം';

  @override
  String get islamicPlaceFallback => 'ഇസ്ലാമിക സ്ഥലം';

  @override
  String get asmaMeaning1 => 'ദി ബെനിഫിയൻ്റ്';

  @override
  String get asmaMeaning2 => 'ദയയുള്ളവൻ';

  @override
  String get asmaMeaning3 => 'രാജാവ് / നിത്യനാഥൻ';

  @override
  String get asmaMeaning4 => 'ഏറ്റവും വിശുദ്ധം';

  @override
  String get asmaMeaning5 => 'സമാധാനത്തിൻ്റെ ഉറവിടം';

  @override
  String get asmaMeaning6 => 'സുരക്ഷാ ദാതാവ്';

  @override
  String get asmaMeaning7 => 'ദ ഗാർഡിയൻ';

  @override
  String get asmaMeaning8 => 'അമൂല്യമായ / ഏറ്റവും ശക്തൻ';

  @override
  String get asmaMeaning9 => 'The Compeller';

  @override
  String get asmaMeaning10 => 'ഏറ്റവും മികച്ചത്';

  @override
  String get asmaMeaning11 => 'സ്രഷ്ടാവ്';

  @override
  String get asmaMeaning12 => 'The Maker of Order';

  @override
  String get asmaMeaning13 => 'സൗന്ദര്യത്തിൻ്റെ ഷേപ്പർ';

  @override
  String get asmaMeaning14 => 'ക്ഷമിക്കുന്നവൻ';

  @override
  String get asmaMeaning15 => 'സബ്ഡ്യൂയർ';

  @override
  String get asmaMeaning16 => 'എല്ലാം നൽകുന്നവൻ';

  @override
  String get asmaMeaning17 => 'ദ സസ്റ്റൈനർ';

  @override
  String get asmaMeaning18 => 'ഓപ്പണർ';

  @override
  String get asmaMeaning19 => 'എല്ലാം അറിയുന്നവൻ';

  @override
  String get asmaMeaning20 => 'The Constrictor';

  @override
  String get asmaMeaning21 => 'ദി റിലീവർ';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'ബഹുമാനം നൽകുന്നയാൾ';

  @override
  String get asmaMeaning25 => 'ഹ്യൂമിലിയേറ്റർ';

  @override
  String get asmaMeaning26 => 'എല്ലാവരും കേൾക്കുന്നവൻ';

  @override
  String get asmaMeaning27 => 'എല്ലാവരുടെയും ദർശകൻ';

  @override
  String get asmaMeaning28 => 'ജഡ്ജ്';

  @override
  String get asmaMeaning29 => 'ജസ്റ്റ്';

  @override
  String get asmaMeaning30 => 'സൂക്ഷ്മമായ ഒന്ന്';

  @override
  String get asmaMeaning31 => 'എല്ലാവർക്കും അറിയാം';

  @override
  String get asmaMeaning32 => 'മുൻകൂട്ടി';

  @override
  String get asmaMeaning33 => 'ഗംഭീരം';

  @override
  String get asmaMeaning34 => 'ക്ഷമിക്കുന്നവൻ';

  @override
  String get asmaMeaning35 => 'നന്ദിയുടെ പ്രതിഫലം';

  @override
  String get asmaMeaning36 => 'ഏറ്റവും ഉയർന്നത്';

  @override
  String get asmaMeaning37 => 'ഏറ്റവും മികച്ചത്';

  @override
  String get asmaMeaning38 => 'സംരക്ഷകൻ';

  @override
  String get asmaMeaning39 => 'പോഷകൻ';

  @override
  String get asmaMeaning40 => 'The Reckoner';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'ഉദാരമതി';

  @override
  String get asmaMeaning43 => 'The Watchful One';

  @override
  String get asmaMeaning44 => 'പ്രാർത്ഥനയ്ക്കുള്ള പ്രതികരണം';

  @override
  String get asmaMeaning45 => 'എല്ലാം മനസ്സിലാക്കുന്നു';

  @override
  String get asmaMeaning46 => 'തികഞ്ഞ ജ്ഞാനി';

  @override
  String get asmaMeaning47 => 'സ്നേഹമുള്ളവൻ';

  @override
  String get asmaMeaning48 => 'ഏറ്റവും മഹത്വമുള്ള ഒന്ന്';

  @override
  String get asmaMeaning49 => 'പുനരുത്ഥാനക്കാരൻ';

  @override
  String get asmaMeaning50 => 'സാക്ഷി';

  @override
  String get asmaMeaning51 => 'സത്യം';

  @override
  String get asmaMeaning52 => 'എല്ലാം മതിയായ ട്രസ്റ്റി';

  @override
  String get asmaMeaning53 => 'എല്ലാ ശക്തിയുടെയും ഉടമ';

  @override
  String get asmaMeaning54 => 'ദ ഫോഴ്സ്ഫുൾ';

  @override
  String get asmaMeaning55 => 'സംരക്ഷകൻ';

  @override
  String get asmaMeaning56 => 'സ്തുതിക്കപ്പെട്ടത്';

  @override
  String get asmaMeaning57 => 'അപ്രൈസർ';

  @override
  String get asmaMeaning58 => 'The Originator';

  @override
  String get asmaMeaning59 => 'The Restorer';

  @override
  String get asmaMeaning60 => 'ജീവൻ്റെ ദാതാവ്';

  @override
  String get asmaMeaning61 => 'ജീവൻ എടുക്കുന്നയാൾ';

  @override
  String get asmaMeaning62 => 'എവർ ലിവിംഗ്';

  @override
  String get asmaMeaning63 => 'സ്വയം-ഉപജീവനം';

  @override
  String get asmaMeaning64 => 'The Finder';

  @override
  String get asmaMeaning65 => 'The Glorious';

  @override
  String get asmaMeaning66 => 'ഒരേ ഒന്ന്';

  @override
  String get asmaMeaning67 => 'The One';

  @override
  String get asmaMeaning68 => 'എല്ലാവരും അന്വേഷിക്കുന്ന ഒന്ന്';

  @override
  String get asmaMeaning69 => 'ശക്തമായത്';

  @override
  String get asmaMeaning70 => 'എല്ലാ ശക്തിയുടെയും സ്രഷ്ടാവ്';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'The Delayer';

  @override
  String get asmaMeaning73 => 'ആദ്യം';

  @override
  String get asmaMeaning74 => 'The Last';

  @override
  String get asmaMeaning75 => 'പ്രകടനം';

  @override
  String get asmaMeaning76 => 'The Hidden';

  @override
  String get asmaMeaning77 => 'ഗവർണർ';

  @override
  String get asmaMeaning78 => 'പരമോന്നതമായ ഒന്ന്';

  @override
  String get asmaMeaning79 => 'നന്മ ചെയ്യുന്നവൻ';

  @override
  String get asmaMeaning80 => 'മാനസാന്തരത്തിലേക്കുള്ള വഴികാട്ടി';

  @override
  String get asmaMeaning81 => 'The Avenger';

  @override
  String get asmaMeaning82 => 'ക്ഷമിക്കുന്നവൻ';

  @override
  String get asmaMeaning83 => 'The Clement';

  @override
  String get asmaMeaning84 => 'എല്ലാവരുടെയും ഉടമ / പരമാധികാരി';

  @override
  String get asmaMeaning85 => 'മഹത്വത്തിൻ്റെയും ഔദാര്യത്തിൻ്റെയും ഉടമ';

  @override
  String get asmaMeaning86 => 'ഇക്വിറ്റബിൾ ഒന്ന്';

  @override
  String get asmaMeaning87 => 'The Gatherer';

  @override
  String get asmaMeaning88 => 'ധനികൻ';

  @override
  String get asmaMeaning89 => 'The Enricher';

  @override
  String get asmaMeaning90 => 'ദോഷം തടയുന്നവൻ';

  @override
  String get asmaMeaning91 => 'ഹാനി വരുത്തുന്നവൻ';

  @override
  String get asmaMeaning92 => 'ആനുകൂല്യങ്ങൾ നൽകുന്നയാൾ';

  @override
  String get asmaMeaning93 => 'വെളിച്ചം';

  @override
  String get asmaMeaning94 => 'ഗൈഡർ';

  @override
  String get asmaMeaning95 => 'The Originator';

  @override
  String get asmaMeaning96 => 'ശാശ്വതമായ ഒന്ന്';

  @override
  String get asmaMeaning97 => 'The Inheritor';

  @override
  String get asmaMeaning98 => 'ഏറ്റവും നീതിയുള്ള വഴികാട്ടി';

  @override
  String get asmaMeaning99 => 'രോഗി';
}
