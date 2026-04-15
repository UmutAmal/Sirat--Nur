// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nepali (`ne`).
class AppLocalizationsNe extends AppLocalizations {
  AppLocalizationsNe([String locale = 'ne']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'इस्लामिक प्रकाशको बाटो';

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
  String get fajr => 'फजर';

  @override
  String get sunrise => 'सूर्योदय';

  @override
  String get dhuhr => 'धुहर';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'मगरिब';

  @override
  String get isha => 'ईशा';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName को लागि समय';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'यो प्रार्थना गर्ने समय हो $prayerName।';
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
  String get locationServiceDisabled => 'स्थान सेवा असक्षम गरिएको छ।';

  @override
  String get locationPermissionDenied => 'स्थान अनुमति अस्वीकार गरियो।';

  @override
  String get locationDetectionFailed =>
      'तपाईंको स्थान पत्ता लगाउन सकेन। कृपया म्यानुअल रूपमा सहर छान्नुहोस् वा पुन: प्रयास गर्नुहोस्।';

  @override
  String citiesCount(String count) {
    return '$count शहरहरू';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'कुनै परिणाम फेला परेन';

  @override
  String get loading => 'लोड गर्दै...';

  @override
  String get error => 'त्रुटि';

  @override
  String get appErrorOccurred => 'एउटा त्रुटि भयो';

  @override
  String get appUnknownError => 'अज्ञात त्रुटि';

  @override
  String get quranLoadFailed =>
      'कुरान सामग्री लोड गर्न सकिएन। कृपया पुन: प्रयास गर्नुहोस्।';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'रिफ्रेस गर्नुहोस्';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'मेट्नुहोस्';

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
    return 'अया $ayah';
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
  String get tafsirLoading => 'tafsir लोड गर्दै...';

  @override
  String get tafsirSourceLabel => 'Tafsir स्रोत';

  @override
  String get tafsirNoSurahFound => 'यस सुराको लागि कुनै tafsir फेला परेन।';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'अयाह $ayah को लागि कुनै tafsir फेला परेन।';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir लोड गर्न सकिएन।';

  @override
  String get tafsirNoTextForAyah => 'यस ayah को लागि कुनै tafsir पाठ।';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'tafsir डाउनलोड गर्दै $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'tafsir लोड गर्दै $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir स्रोतले HTTP $statusCode त्रुटि फिर्ता गर्यो।';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'चयन गरिएको tafsir स्रोतले कुनै प्रविष्टिहरू फिर्ता गरेन।';

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
      'अरूले प्रार्थना गर्छन्, \'हे हाम्रा प्रभु, हामीलाई यस संसार र परलोकमा राम्रो दिनुहोस्, र हामीलाई आगोको यातनाबाट बचाउनुहोस्।\'';

  @override
  String get duaMeaning2 =>
      'भगवानले कुनै पनि आत्मालाई सहन सक्ने भन्दा बढी बोझ दिनुहुन्न: प्रत्येकले जे राम्रो गरेको छ त्यो प्राप्त गर्दछ, र यसको खराबी भोग्छ - \'हे प्रभु, यदि हामीले बिर्सनु वा गल्ती गर्छौं भने हामीलाई दोष नदिनुहोस्। प्रभु, हामीलाई बोझ नपार्नुहोस् जसरी तपाईंले हामीभन्दा अघिकाहरूलाई बोझ पार्नुभयो। हे प्रभु, हामीसँग बोक्न सक्ने शक्ति भन्दा बढी बोझ नदिनुहोस्। हामीलाई माफ गर्नुहोस्, हामीलाई माफ गर्नुहोस्, र हामीमाथि दया गर्नुहोस्। तपाईं हाम्रो रक्षक हुनुहुन्छ, त्यसैले हामीलाई काफिरहरू विरुद्ध मद्दत गर्नुहोस्।';

  @override
  String get duaMeaning3 =>
      '\'हे प्रभु, तपाईंले हामीलाई मार्गनिर्देशन गरिसकेपछि हाम्रो हृदयलाई विचलित हुन नदिनुहोस्। हामीलाई तपाईंको कृपा दिनुहोस्: तपाईं सधैं दिने हुनुहुन्छ।';

  @override
  String get duaMeaning4 =>
      'हे प्रभु, म र मेरो सन्तानले प्रार्थना जारी राख्न सकोस् भनेर दिनुहोस्। हे प्रभु, मेरो अनुरोध स्वीकार गर्नुहोस्।';

  @override
  String get duaMeaning5 =>
      'र दयालु भावमा उनीहरूप्रति नम्रतामा आफ्नो पखेटा झुकाउनुहोस् र भन्नुहोस्, \'प्रभु, उनीहरूलाई दया गर्नुहोस्, जसरी उनीहरूले म सानो छँदा मेरो हेरचाह गरे।\'';

  @override
  String get duaMeaning6 =>
      'परमेश्वर, जो साँच्चै नियन्त्रणमा हुनुहुन्छ। [अगमवक्ता], प्रकाश पूर्णतया पूरा हुनु अघि पाठ गर्न हतार नगर्नुहोस् तर भन, \'प्रभु, मलाई ज्ञानमा वृद्धि गर्नुहोस्!\'';

  @override
  String get duaMeaning7 =>
      'भन्नुहोस्, \'प्रभु, क्षमा गर्नुहोस् र दया गर्नुहोस्: तपाईं सबै भन्दा दयालु हुनुहुन्छ।\'';

  @override
  String get duaMeaning8 =>
      'जो प्रार्थना गर्छन्, \'हे हाम्रा प्रभु, हामीलाई हाम्रा जीवनसाथी र सन्तानमा आनन्द दिनुहोस्। तपाईलाई चिन्नेहरूका लागि हामीलाई राम्रो उदाहरण बनाउनुहोस्।';

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
  String get hadith => 'हदीस';

  @override
  String get hadithCollection => 'हदीस संग्रह';

  @override
  String get hadithBooks => 'हदीस पुस्तकहरू';

  @override
  String get searchHadith => 'हदीस खोज्नुहोस्';

  @override
  String get asmaulHusna => 'अस्मा-उल-हुस्ना';

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
  String get openInYoutube => 'YouTube मा खोल्नुहोस्';

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
    return '${hours}h $minutes मिनेट';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '$minutes मिनेट';
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
  String get islamicNewYear => 'इस्लामी नयाँ वर्ष';

  @override
  String get mawlidAnNabi => 'मौलिद अन-नबी';

  @override
  String get specialDayDateRamadanStart => '१ रमजान';

  @override
  String get specialDayDateLaylatAlQadr => '27 रमजान';

  @override
  String get specialDayDateEidAlFitr => '१ शवल';

  @override
  String get specialDayDateEidAlAdha => '१० धुल हिज्जा';

  @override
  String get specialDayDateIslamicNewYear => '१ मुहर्रम';

  @override
  String get specialDayDateMawlidAnNabi => '१२ रबि अल अव्वल';

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
    return 'कम्पास त्रुटि: $error';
  }

  @override
  String get qiblaSensorUnavailable => 'यस यन्त्रमा कम्पास सेन्सर उपलब्ध छैन।';

  @override
  String get qiblaLocationRequiredTitle => 'Qibla को लागि स्थान आवश्यक छ';

  @override
  String get qiblaLocationRequiredBody =>
      'Qibla कम्पास प्रयोग गर्नु अघि आफ्नो वास्तविक स्थान सेट गर्नुहोस् ताकि दिशा सही रूपमा गणना गर्न सकिन्छ।';

  @override
  String get adhanNotificationChannelName => 'Adhan सूचनाहरू';

  @override
  String get adhanNotificationChannelDescription =>
      'प्रार्थना समय अधान ध्वनि संग अलर्ट।';

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
    return '$appName को जाँच गर्नुहोस्: परम इस्लामी जीवन शैली एप! $url';
  }

  @override
  String get downloadManager => 'डाउनलोड प्रबन्धक';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'डाउनलोड पूरा';

  @override
  String get downloadFailed => 'डाउनलोड असफल भयो';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'इन्टरनेट जडान छैन';

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
  String get zikrCompletedMashAllah => 'पूरा भयो! माशाअल्लाह';

  @override
  String get zikrMeaningSubhanAllah => 'अल्लाह हरेक अपूर्णता माथि छ।';

  @override
  String get zikrMeaningAlhamdulillah => 'सबै प्रशंसा अल्लाहको लागि हो।';

  @override
  String get zikrMeaningAllahuAkbar => 'अल्लाह सबैभन्दा महान हुनुहुन्छ।';

  @override
  String get zikrMeaningLaIlahaIllallah => 'अल्लाह बाहेक कोही ईश्वर छैन।';

  @override
  String get zikrMeaningAstaghfirullah => 'म अल्लाहको क्षमा खोज्छु।';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'अल्लाह बाहेक कुनै शक्ति र शक्ति छैन।';

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
  String get offlineDownloadManager => 'अफलाइन डाउनलोड प्रबन्धक';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'आन्तरिक यन्त्र भण्डारण खाली गर्नुहोस्।';

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
  String get audioVoice => 'अडियो आवाज';

  @override
  String get audioVoiceMisharyAlafasy => 'पुरुष (मिशारी अलाफासी)';

  @override
  String get audioVoiceAbdulBaset => 'पुरुष (अब्दुलबासेट)';

  @override
  String get audioVoiceSudais => 'पुरुष (सुडाई)';

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
  String get diagnosticsNotSet => 'सेट गरिएको छैन';

  @override
  String get diagnosticsPrayerProfile => 'प्रार्थना प्रोफाइल';

  @override
  String get diagnosticsPrayerSource => 'प्रार्थना प्राधिकरण';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'अनुकूलन / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'म्यानुअल अनुकूलन कोण (कुनै संस्थागत स्रोत छैन)';

  @override
  String get diagnosticsCloudDriven => 'क्लाउड संचालित';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan अडियो सम्पत्ति';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'कुरान अडियो सम्पत्ति';

  @override
  String get diagnosticsAudioAssets => 'अडियो सम्पत्ति';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count फाइलहरू';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'म्यानिफेस्ट पढ्न असफल भयो: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'स्थानीयकरण लोकेलहरू';

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
      'सुपाबेसमा क्लाउड तालिकाहरू हराइरहेका छन्; बन्डल गरिएको फलब्याक सक्रिय';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'क्लाउड जुज मेटाडेटा हराइरहेको छ; बन्डल संरचनात्मक फलब्याक सक्रिय';

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
  String get dailyVerse => 'दैनिक पद';

  @override
  String get todaysIbadah => 'आजको इबादह';

  @override
  String get quickAccess => 'द्रुत पहुँच';

  @override
  String get assistant => 'सहायक';

  @override
  String get places => 'स्थानहरू';

  @override
  String get library => 'पुस्तकालय';

  @override
  String get analytics => 'विश्लेषण';

  @override
  String get dailyDuas => 'दैनिक दुआस';

  @override
  String essentialDuas(String count) {
    return '$count आवश्यक दुआहरू';
  }

  @override
  String get duaUnavailableTitle => 'प्रमाणित दुआहरू अझै उपलब्ध छैनन्';

  @override
  String get duaUnavailableBody =>
      'प्रमाणित दैनिक दुआहरू अझै यस यन्त्रमा सिंक गरिएको छैन। अप्रमाणित फलब्याकको सट्टा सोर्स गरिएको डुआ लोड गर्न क्लाउड स्रोतमा जडान गर्नुहोस्।';

  @override
  String get duaCategoryQuranic => 'कुरानिक दुआ';

  @override
  String get duaCategoryMorningEvening => 'बिहान र साँझ';

  @override
  String get duaCategoryTasbih => 'तस्बिह';

  @override
  String get duaCategoryProtection => 'संरक्षण';

  @override
  String get duaCategoryBeginning => 'शुरुवात';

  @override
  String get duaCategorySleep => 'सुत्नुहोस्';

  @override
  String get duaCategoryFoodDrink => 'खाना र पेय';

  @override
  String get duaCategoryForgiveness => 'क्षमा';

  @override
  String get duaCategoryHome => 'घर';

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
  String get islamicEducation => 'इस्लामिक शिक्षा';

  @override
  String get sukunAudioTitle => 'सुकुन साउन्डस्केप';

  @override
  String get hadithCollections => 'हदीस संग्रह';

  @override
  String get hadithSourcePending => 'प्रमाणित स्रोत विचाराधीन';

  @override
  String get hadithUnavailableTitle => 'प्रमाणित हदीस संग्रह अझै उपलब्ध छैन';

  @override
  String get hadithUnavailableBody =>
      'यो निर्माण अझै पनि एक अप्रमाणित बाह्य हदीस फिड मा निर्भर गर्दछ। स्रोत डेटासेट सिंक नभएसम्म हदीस ब्राउजिङ असक्षम रहन्छ।';

  @override
  String get paywallUnlockAll =>
      'तपाईंको आध्यात्मिक यात्राको लागि सबै सुविधाहरू अनलक गर्नुहोस्';

  @override
  String get premiumProductUnavailable =>
      'प्रिमियम उत्पादन अहिले उपलब्ध छैन। कृपया पछि पुन: प्रयास गर्नुहोस्।';

  @override
  String get premiumPurchaseFailed =>
      'खरिद पूरा गर्न सकिएन। कृपया पुन: प्रयास गर्नुहोस्।';

  @override
  String get paywallFeature1Title => 'न्यूरल सहायक प्लस';

  @override
  String get paywallFeature1Desc => 'असीमित एआई-संचालित प्रश्नोत्तर';

  @override
  String get paywallFeature2Title => 'असीमित अफलाइन';

  @override
  String get paywallFeature2Desc => 'सबै पाठहरू डाउनलोड गर्नुहोस्';

  @override
  String get paywallFeature3Title => 'विशेष डिजाइनहरू';

  @override
  String get paywallFeature3Desc => 'प्रिमियम थिमहरू र फन्टहरू';

  @override
  String get paywallFeature4Title => 'विज्ञापन-मुक्त';

  @override
  String get paywallFeature4Desc => 'शून्य विज्ञापन';

  @override
  String get paywallGetAccess => 'लाइफटाइम पहुँच पाउनुहोस् - \$1.00';

  @override
  String get restorePurchases => 'खरिदहरू पुनर्स्थापित गर्नुहोस्';

  @override
  String get zakatCalculator => 'जकात क्याल्कुलेटर';

  @override
  String get zakatGold => 'सुन (Altın)';

  @override
  String get zakatSilver => 'चाँदी (Gümüş)';

  @override
  String get zakatCashBank => 'नगद / बैंक';

  @override
  String get zakatBusiness => 'व्यापार';

  @override
  String get zakatInvestments => 'लगानी';

  @override
  String get zakatWeightGrams => 'वजन (g)';

  @override
  String get zakatPricePerGram => 'मूल्य/g';

  @override
  String get zakatTotalAmount => 'कुल रकम';

  @override
  String get zakatInventoryValue => 'इन्भेन्टरी मूल्य';

  @override
  String get zakatDebts => 'ऋण';

  @override
  String get zakatTotal => 'कुल';

  @override
  String get calculateZakat => 'जकात गणना गर्नुहोस्';

  @override
  String get nisabNotReached => 'निसाब पुगेको छैन। जकात अनिवार्य छैन।';

  @override
  String get totalZakat => 'कुल जकात';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'निसाब: $nisab • सम्पत्ति: $assets';
  }

  @override
  String get zakatGoldZakat => 'सुन जकात';

  @override
  String get zakatSilverZakat => 'चाँदी जकात';

  @override
  String get zakatCashZakat => 'नगद जकात';

  @override
  String get zakatBusinessZakat => 'व्यापार जकात';

  @override
  String get zakatInvestmentZakat => 'लगानी जकात';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'दैनिक क्वेरी सीमा पुग्यो। असीमितका लागि प्रीमियममा स्तरवृद्धि गर्नुहोस्।';

  @override
  String get chatbotErrorMsg =>
      'मैले प्रतिक्रिया उत्पन्न गर्न सकिन। कृपया पुन: प्रयास गर्नुहोस्।';

  @override
  String get chatbotOfflinePrompt =>
      'प्रमाणित अफलाइन इस्लामिक ज्ञान आधार अझै पनि क्युरेट गरिएको छ। तपाईंले अहिले अफलाइन फलब्याक सक्षम गर्न सक्नुहुन्छ, तर स्रोत डेटासेट तयार नभएसम्म यसले सीमित सुरक्षित सन्देशहरू मात्र देखाउनेछ।\n\nके तपाइँ अफलाइन फलब्याक सक्षम गर्न चाहनुहुन्छ?';

  @override
  String get chatbotOfflineSwitched =>
      'अफलाइन फलब्याक सक्षम गरियो। प्रमाणित स्थानीय इस्लामिक जवाफहरू अझै तयार छैनन्।';

  @override
  String get chatbotOfflineDownloadLabel => 'अफलाइन फलब्याक सक्षम गर्नुहोस्';

  @override
  String get downloadPreparing => 'डाउनलोडको तयारी गर्दै...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'सुरा डाउनलोड गर्दै $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'यस पाठकको लागि सबै सुराहरू पहिले नै डाउनलोड गरिएका छन्।';

  @override
  String get offlineQuranAudioPacks => 'Offline Quran Audio Packs';

  @override
  String storedOnDeviceMb(String size) {
    return 'Stored on device: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total सुराहरू डाउनलोड गरियो';
  }

  @override
  String get redownloadMissingRepair => 'मर्मत / डाउनलोड छुटेको छ';

  @override
  String get downloadAction => 'डाउनलोड गर्नुहोस्';

  @override
  String get resumeDownload => 'डाउनलोड पुन: सुरु गर्नुहोस्';

  @override
  String get deleteDownloadedFiles => 'डाउनलोड गरिएका फाइलहरू मेटाउनुहोस्';

  @override
  String get downloadCancelling => 'रद्द गर्दै...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return '$reciter को लागि डाउनलोड रद्द गरियो।';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return '$reciter को लागि डाउनलोड पूरा भयो।';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'डाउनलोड समाप्त भयो $reciter को लागि $failed असफल सुराहरू ($downloaded/$total डाउनलोड गरियो)।';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Deleted offline files for $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'प्रमाणित कुरान अडियो स्रोतहरू अहिले उपलब्ध छैनन्।';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'प्रमाणित कुरान अडियो प्याक अपूर्ण छ ($available/$total)। क्लाउड सीड रिफ्रेस गर्नुहोस् र फेरि प्रयास गर्नुहोस्।';
  }

  @override
  String get chatbotHint => 'Ask a question...';

  @override
  String get chatbotThinking => 'Thinking...';

  @override
  String get sukunMixerSubtitle => 'प्रकृति र कुरान मिक्सर';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'सुकुन (प्रकृति)';

  @override
  String get sukunRainOfMercy => 'दयाको वर्षा';

  @override
  String get sukunGardenOfPeace => 'शान्ति बगैंचा';

  @override
  String get sukunMidnightCalm => 'मध्यरात शान्त';

  @override
  String get sukunOceanTawheed => 'महासागर तौहीद';

  @override
  String get sukunUnavailableTitle => 'साउन्डस्केपहरू उपलब्ध छैनन्';

  @override
  String get sukunUnavailableBody =>
      'यो निर्माणले आवश्यक Sukun soundscape सम्पत्तिहरू समावेश गर्दैन।';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'दिनको सिलसिला';

  @override
  String get bestStreak => 'उत्कृष्ट स्ट्रीक';

  @override
  String get chatbotCloudAiLabel => 'क्लाउड एआई';

  @override
  String get chatbotLocalAiLabel => 'अफलाइन फलब्याक';

  @override
  String get chatbotUseCloudAi => 'क्लाउड एआई (Gemini) प्रयोग गर्नुहोस्';

  @override
  String get chatbotDownloadLocalAi => 'अफलाइन फलब्याक सक्षम गर्नुहोस्';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count बाँकी';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'क्लाउड API कन्फिगर गरिएको छैन। प्रमाणित अफलाइन इस्लामिक मार्गदर्शन अझै उपलब्ध छैन।';

  @override
  String get chatbotLocalNoInfo =>
      '[अफलाइन] प्रमाणित स्थानीय इस्लामिक मार्गदर्शन अझै उपलब्ध छैन। सोर्स गरिएका उत्तरहरूको लागि क्लाउड एआईमा स्विच गर्नुहोस्।';

  @override
  String get mosques => 'मस्जिदहरू';

  @override
  String get halalFood => 'हलाल खाना';

  @override
  String get placesSearchArea => 'यो क्षेत्र खोज्नुहोस्';

  @override
  String get nearbyMosques => 'नजिकैको मस्जिदहरू';

  @override
  String get islamicSchools => 'इस्लामिक विद्यालयहरू';

  @override
  String placesFoundCount(String count) {
    return '$count भेटियो';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance किमी टाढा';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API त्रुटि: $statusCode';
  }

  @override
  String get placesNetworkError =>
      'नेटवर्क त्रुटि। कृपया पुन: प्रयास गर्नुहोस्।';

  @override
  String get placesLocationRequiredTitle => 'स्थान आवश्यक छ';

  @override
  String get placesLocationRequiredBody =>
      'पहिले स्थान सेट गर्नुहोस् ताकि नजिकैका मस्जिदहरू, हलाल खाना, र इस्लामिक विद्यालयहरू सही रूपमा खोज्न सकिन्छ।';

  @override
  String get placesMapTilesUnavailableTitle => 'नक्सा टाइलहरू उपलब्ध छैनन्';

  @override
  String get placesMapTilesUnavailableBody =>
      'यो निर्माणको लागि प्रमाणित नक्सा टाइल स्रोत अझै कन्फिगर गरिएको छैन। नजिकैका ठाउँहरू अझै पनि तपाईंको सुरक्षित स्थानबाट लोड हुन सक्छन्।';

  @override
  String get unknownPlaceName => 'अज्ञात नाम';

  @override
  String get islamicPlaceFallback => 'इस्लामिक स्थान';

  @override
  String get asmaMeaning1 => 'परोपकारी';

  @override
  String get asmaMeaning2 => 'दयालु';

  @override
  String get asmaMeaning3 => 'राजा / अनन्त प्रभु';

  @override
  String get asmaMeaning4 => 'परमपवित्र';

  @override
  String get asmaMeaning5 => 'शान्तिको स्रोत';

  @override
  String get asmaMeaning6 => 'सुरक्षा प्रदान गर्ने';

  @override
  String get asmaMeaning7 => 'द गार्जियन';

  @override
  String get asmaMeaning8 => 'बहुमूल्य / सबैभन्दा शक्तिशाली';

  @override
  String get asmaMeaning9 => 'द कम्पेलर';

  @override
  String get asmaMeaning10 => 'सबैभन्दा ठूलो';

  @override
  String get asmaMeaning11 => 'सृष्टिकर्ता';

  @override
  String get asmaMeaning12 => 'द मेकर अफ अर्डर';

  @override
  String get asmaMeaning13 => 'सौन्दर्य को आकार';

  @override
  String get asmaMeaning14 => 'क्षमा गर्ने';

  @override
  String get asmaMeaning15 => 'Subduer';

  @override
  String get asmaMeaning16 => 'सबैको दाता';

  @override
  String get asmaMeaning17 => 'द सस्टेनर';

  @override
  String get asmaMeaning18 => 'ओपनर';

  @override
  String get asmaMeaning19 => 'सबैको जानकार';

  @override
  String get asmaMeaning20 => 'द कन्स्ट्रक्टर';

  @override
  String get asmaMeaning21 => 'द रिलिभर';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'द एक्सल्टर';

  @override
  String get asmaMeaning24 => 'सम्मान प्रदान गर्ने';

  @override
  String get asmaMeaning25 => 'द अपमानजनक';

  @override
  String get asmaMeaning26 => 'सबैको श्रोता';

  @override
  String get asmaMeaning27 => 'सबैको द्रष्टा';

  @override
  String get asmaMeaning28 => 'न्यायाधीश';

  @override
  String get asmaMeaning29 => 'द बस';

  @override
  String get asmaMeaning30 => 'सूक्ष्म एक';

  @override
  String get asmaMeaning31 => 'सबै सचेत';

  @override
  String get asmaMeaning32 => 'पूर्ववर्ती';

  @override
  String get asmaMeaning33 => 'द म्याग्निफिसेन्ट';

  @override
  String get asmaMeaning34 => 'द महान् क्षमादाता';

  @override
  String get asmaMeaning35 => 'धन्यवादको पुरस्कारदाता';

  @override
  String get asmaMeaning36 => 'उच्चतम';

  @override
  String get asmaMeaning37 => 'सबैभन्दा ठूलो';

  @override
  String get asmaMeaning38 => 'संरक्षक';

  @override
  String get asmaMeaning39 => 'पोषक';

  @override
  String get asmaMeaning40 => 'द रेकनर';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'उदार';

  @override
  String get asmaMeaning43 => 'सतर्क एक';

  @override
  String get asmaMeaning44 => 'प्रार्थनाको जवाफ दिने';

  @override
  String get asmaMeaning45 => 'सबै बुझ्ने';

  @override
  String get asmaMeaning46 => 'The Perfectly Wise';

  @override
  String get asmaMeaning47 => 'द मायालु व्यक्ति';

  @override
  String get asmaMeaning48 => 'सबैभन्दा गौरवशाली';

  @override
  String get asmaMeaning49 => 'पुनरुत्थानकर्ता';

  @override
  String get asmaMeaning50 => 'साक्षी';

  @override
  String get asmaMeaning51 => 'सत्य';

  @override
  String get asmaMeaning52 => 'सबै-पर्याप्त ट्रस्टी';

  @override
  String get asmaMeaning53 => 'सबै शक्तिको मालिक';

  @override
  String get asmaMeaning54 => 'द फोर्सफुल';

  @override
  String get asmaMeaning55 => 'संरक्षक';

  @override
  String get asmaMeaning56 => 'प्रशंसित';

  @override
  String get asmaMeaning57 => 'मूल्याङ्कनकर्ता';

  @override
  String get asmaMeaning58 => 'उत्पत्तिकर्ता';

  @override
  String get asmaMeaning59 => 'The Restorer';

  @override
  String get asmaMeaning60 => 'जीवन दाता';

  @override
  String get asmaMeaning61 => 'द टेकर अफ लाइफ';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'आत्म-निर्भर निर्वाहक';

  @override
  String get asmaMeaning64 => 'खोजकर्ता';

  @override
  String get asmaMeaning65 => 'द ग्लोरियस';

  @override
  String get asmaMeaning66 => 'एक मात्र';

  @override
  String get asmaMeaning67 => 'एक';

  @override
  String get asmaMeaning68 => 'सबैले खोजेको एक';

  @override
  String get asmaMeaning69 => 'द शक्तिशाली';

  @override
  String get asmaMeaning70 => 'सबै शक्तिको सृष्टिकर्ता';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'ढिलाइ';

  @override
  String get asmaMeaning73 => 'पहिलो';

  @override
  String get asmaMeaning74 => 'अन्तिम';

  @override
  String get asmaMeaning75 => 'The Manifest';

  @override
  String get asmaMeaning76 => 'लुकेको';

  @override
  String get asmaMeaning77 => 'राज्यपाल';

  @override
  String get asmaMeaning78 => 'सर्वोच्च एक';

  @override
  String get asmaMeaning79 => 'राम्रोको कर्ता';

  @override
  String get asmaMeaning80 => 'पश्चात्तापको लागि मार्गदर्शक';

  @override
  String get asmaMeaning81 => 'द एभेन्जर';

  @override
  String get asmaMeaning82 => 'क्षमा गर्ने';

  @override
  String get asmaMeaning83 => 'द क्लेमेन्ट';

  @override
  String get asmaMeaning84 => 'सबैको मालिक/सार्वभौम';

  @override
  String get asmaMeaning85 => 'महाराज र इनामको मालिक';

  @override
  String get asmaMeaning86 => 'The Equitable One';

  @override
  String get asmaMeaning87 => 'द गादरर';

  @override
  String get asmaMeaning88 => 'The Rich One';

  @override
  String get asmaMeaning89 => 'The Enricher';

  @override
  String get asmaMeaning90 => 'हानिको रोकथाम';

  @override
  String get asmaMeaning91 => 'हानिको कारक';

  @override
  String get asmaMeaning92 => 'लाभको दाता';

  @override
  String get asmaMeaning93 => 'द लाइट';

  @override
  String get asmaMeaning94 => 'मार्गदर्शक';

  @override
  String get asmaMeaning95 => 'उत्पत्तिकर्ता';

  @override
  String get asmaMeaning96 => 'The Everlasting One';

  @override
  String get asmaMeaning97 => 'इनहेरिटर';

  @override
  String get asmaMeaning98 => 'सबैभन्दा सही गाइड';

  @override
  String get asmaMeaning99 => 'एक बिरामी';
}
