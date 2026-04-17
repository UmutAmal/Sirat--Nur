// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'इस्लामिक प्रकाशाचा मार्ग';

  @override
  String get home => 'घर';

  @override
  String get quran => 'कुराण';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'जिक्र';

  @override
  String get calendar => 'कॅलेंडर';

  @override
  String get settings => 'सेटिंग्ज';

  @override
  String get nextPrayer => 'पुढील प्रार्थना';

  @override
  String get prayerTimes => 'प्रार्थनेच्या वेळा';

  @override
  String get continueReading => 'Continue Reading';

  @override
  String get getLifetimePro => 'Get Lifetime Pro';

  @override
  String get unlockTajweed => 'Unlock Tajweed & Advanced Features';

  @override
  String get prayerCalculation => 'प्रार्थना गणना';

  @override
  String get method => 'गणना पद्धत';

  @override
  String get madhab => 'Asr न्यायिक पद्धत';

  @override
  String get surahs => 'सुरा';

  @override
  String get ayahs => 'अय्या';

  @override
  String get fajr => 'फजर';

  @override
  String get sunrise => 'सूर्योदय';

  @override
  String get dhuhr => 'धुहर';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'मगरीब';

  @override
  String get isha => 'ईशा';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName साठी वेळ';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'प्रार्थना करण्याची वेळ आली आहे $prayerName.';
  }

  @override
  String get dataStorage => 'डेटा आणि स्टोरेज';

  @override
  String get clearCache => 'कॅशे साफ करा';

  @override
  String get cacheClearedSuccess => 'कॅशे यशस्वीरित्या साफ केले';

  @override
  String get location => 'स्थान';

  @override
  String get language => 'भाषा';

  @override
  String get selectLanguage => 'भाषा निवडा';

  @override
  String get searchLanguage => 'Search 180+ languages...';

  @override
  String get systemDefault => 'सिस्टम डीफॉल्ट';

  @override
  String get currentLocation => 'वर्तमान स्थान (GPS)';

  @override
  String get locationServiceDisabled => 'स्थान सेवा अक्षम केली आहे.';

  @override
  String get locationPermissionDenied => 'स्थान परवानगी नाकारली.';

  @override
  String get locationDetectionFailed =>
      'तुमचे स्थान शोधू शकलो नाही. कृपया व्यक्तिचलितपणे शहर निवडा किंवा पुन्हा प्रयत्न करा.';

  @override
  String citiesCount(String count) {
    return '$count शहरे';
  }

  @override
  String get search => 'शोधा';

  @override
  String get searchHint => 'शोधा...';

  @override
  String get noResults => 'कोणतेही परिणाम आढळले नाहीत';

  @override
  String get loading => 'लोड करत आहे...';

  @override
  String get error => 'त्रुटी';

  @override
  String get appErrorOccurred => 'एक त्रुटी आली';

  @override
  String get appUnknownError => 'अज्ञात त्रुटी';

  @override
  String get quranLoadFailed =>
      'कुराण सामग्री लोड करणे शक्य नाही. कृपया पुन्हा प्रयत्न करा.';

  @override
  String get retry => 'पुन्हा प्रयत्न करा';

  @override
  String get refreshAction => 'रिफ्रेश करा';

  @override
  String get cancel => 'रद्द करा';

  @override
  String get save => 'जतन करा';

  @override
  String get delete => 'हटवा';

  @override
  String get edit => 'Edit';

  @override
  String get close => 'Close';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'नाही';

  @override
  String get surah => 'सुरा';

  @override
  String ayahLabel(String ayah) {
    return 'अय्या $ayah';
  }

  @override
  String get juz => 'जुझ';

  @override
  String get page => 'पान';

  @override
  String get reading => 'Reading';

  @override
  String get recitation => 'Recitation';

  @override
  String get translation => 'Translation';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'ताफसीर लोड करत आहे...';

  @override
  String get tafsirSourceLabel => 'तफसीर स्त्रोत';

  @override
  String get tafsirNoSurahFound => 'या सूरासाठी कोणतीही तफसीर सापडली नाही.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'अया $ayah साठी कोणतीही तफसीर आढळली नाही.';
  }

  @override
  String get tafsirLoadFailed => 'तफसीर लोड करता आले नाही.';

  @override
  String get tafsirNoTextForAyah => 'या आयहासाठी कोणताही तफसीर मजकूर नाही.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'तफसीर डाउनलोड करत आहे $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'तफसीर लोड करत आहे $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir स्त्रोताने HTTP $statusCode त्रुटी परत केली.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'निवडलेल्या तफसीर स्त्रोताने कोणत्याही प्रविष्ट्या परत केल्या नाहीत.';

  @override
  String get tafsirCacheUnavailable =>
      'सत्यापित तफसीर अद्याप ऑफलाइन उपलब्ध नाही. ब्राउझिंग करण्यापूर्वी स्रोत तफसीर डेटासेट समक्रमित करा.';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get addBookmark => 'बुकमार्क जोडा';

  @override
  String get removeBookmark => 'बुकमार्क काढा';

  @override
  String get lastRead => 'Last Read';

  @override
  String get dailyZikr => 'Daily Zikr';

  @override
  String get duaMeaning1 =>
      'इतर प्रार्थना करतात, \'हे आमच्या प्रभु, आम्हाला या जगात आणि परलोकात चांगले दे आणि आम्हाला अग्नीच्या यातनापासून वाचव.\'';

  @override
  String get duaMeaning2 =>
      'देव कोणत्याही जीवावर त्याच्या क्षमतेपेक्षा जास्त भार टाकत नाही: प्रत्येकाने जे काही चांगले केले आहे ते मिळवतो आणि त्याचे वाईट भोगतो - \'प्रभु, आम्ही विसरलो किंवा चुका केल्या तर आमच्यावर कारवाई करू नका. प्रभु, आमच्या आधीच्या लोकांवर जसे भार टाकले होते तसे आमच्यावर भार टाकू नकोस. परमेश्वरा, आमच्याकडे सहन करण्याची ताकद आहे त्यापेक्षा जास्त ओझे आमच्यावर टाकू नकोस. आम्हाला क्षमा करा, आम्हाला क्षमा करा आणि आमच्यावर दया करा. तूच आमचा रक्षक आहेस, म्हणून काफिरांच्या विरोधात आम्हाला मदत कर.';

  @override
  String get duaMeaning3 =>
      '\'हे आमच्या प्रभु, तू आम्हाला मार्गदर्शन केल्यावर आमची अंतःकरणे विचलित होऊ देऊ नकोस. आम्हाला तुझी दया द्या: तू नेहमीच देणारा आहेस.';

  @override
  String get duaMeaning4 =>
      'प्रभु, मी आणि माझी संतती प्रार्थना चालू ठेवू दे. आमच्या प्रभु, माझी विनंती मान्य करा.';

  @override
  String get duaMeaning5 =>
      'आणि दयाळूपणे त्यांच्यासाठी नम्रतेने आपले पंख खाली करा आणि म्हणा, \'प्रभू, मी लहान असताना त्यांनी जशी माझी काळजी घेतली तशी त्यांच्यावर दया कर.\'';

  @override
  String get duaMeaning6 =>
      'देव, जो खरोखर नियंत्रणात आहे तो महान असो. [संदेष्टा], प्रकटीकरण पूर्ण होण्यापूर्वी पाठ करण्यास घाई करू नका तर म्हणा, ‘प्रभु, मला ज्ञान वाढवा!’';

  @override
  String get duaMeaning7 =>
      '[संदेष्टा] म्हणा, \'प्रभु, क्षमा कर आणि दया कर: तू सर्वांपेक्षा दयाळू आहेस.\'';

  @override
  String get duaMeaning8 =>
      'जे प्रार्थना करतात, \'हे प्रभु, आम्हाला आमच्या जोडीदारात आणि संततीमध्ये आनंद दे. ज्यांना तुमची जाणीव आहे त्यांच्यासाठी आम्हाला चांगले उदाहरण द्या.';

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
  String get hadithBooks => 'हदीस पुस्तके';

  @override
  String get searchHadith => 'हदीस शोधा';

  @override
  String get asmaulHusna => 'अस्मा-उल-हुस्ना';

  @override
  String get namesOfAllah => 'अल्लाहची नावे';

  @override
  String get liveTv => 'थेट टीव्ही';

  @override
  String get watchLive => 'थेट पहा';

  @override
  String get streamError => 'प्रवाह त्रुटी';

  @override
  String get reload => 'रीलोड करा';

  @override
  String get openInYoutube => 'YouTube मध्ये उघडा';

  @override
  String get ibadahTracker => 'इबादा ट्रॅकर';

  @override
  String get fasting => 'उपवास';

  @override
  String get quranReading => 'कुराण वाचन';

  @override
  String get prayers => 'प्रार्थना';

  @override
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '$hoursता ${minutes}m';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '$minutesमि';
  }

  @override
  String get prayerRemainingUnavailable => '--';

  @override
  String get dhikrCount => 'Dhikr Count';

  @override
  String get weeklyProgress => 'साप्ताहिक प्रगती';

  @override
  String get monthlyProgress => 'Monthly Progress';

  @override
  String get statistics => 'Statistics';

  @override
  String get hijriCalendar => 'हिजरी कॅलेंडर';

  @override
  String get gregorianCalendar => 'Gregorian Calendar';

  @override
  String get today => 'आज';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get specialDays => 'विशेष दिवस';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'इस्लामिक नवीन वर्ष';

  @override
  String get mawlidAnNabi => 'मौलिद अन नबी';

  @override
  String get specialDayDateRamadanStart => '१ रमजान';

  @override
  String get specialDayDateLaylatAlQadr => '27 रमजान';

  @override
  String get specialDayDateEidAlFitr => '१ शव्वाल';

  @override
  String get specialDayDateEidAlAdha => '10 धुल हिज्जा';

  @override
  String get specialDayDateIslamicNewYear => '१ मोहरम';

  @override
  String get specialDayDateMawlidAnNabi => '12 रबी अल-अव्वाल';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'किब्ला दिशा';

  @override
  String get compass => 'होकायंत्र';

  @override
  String get degrees => 'degrees';

  @override
  String get north => 'North';

  @override
  String get qiblaFound => 'किब्ला सापडला!';

  @override
  String get turnDevice => 'तुमचे डिव्हाइस किब्लाकडे वळवा';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'कंपास त्रुटी: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'या डिव्हाइसवर कंपास सेन्सर अनुपलब्ध आहे.';

  @override
  String get qiblaLocationRequiredTitle => 'किबला साठी आवश्यक स्थान';

  @override
  String get qiblaLocationRequiredBody =>
      'किब्ला होकायंत्र वापरण्यापूर्वी तुमचे खरे स्थान सेट करा जेणेकरून दिशा अचूकपणे मोजता येईल.';

  @override
  String get adhanNotificationChannelName => 'अधान सूचना';

  @override
  String get adhanNotificationChannelDescription =>
      'अजान आवाजासह प्रार्थनेची वेळ अलर्ट.';

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
  String get theme => 'थीम';

  @override
  String get lightMode => 'लाइट मोड';

  @override
  String get darkMode => 'गडद मोड';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'बद्दल';

  @override
  String get version => 'आवृत्ती';

  @override
  String get privacyPolicy => 'गोपनीयता धोरण';

  @override
  String get termsOfService => 'सेवा अटी';

  @override
  String get contactUs => 'आमच्याशी संपर्क साधा';

  @override
  String get rateApp => 'ॲपला रेट करा';

  @override
  String get shareApp => 'ॲप शेअर करा';

  @override
  String shareAppMessage(String appName, String url) {
    return '$appName पहा: अंतिम इस्लामिक जीवनशैली ॲप! $url';
  }

  @override
  String get downloadManager => 'व्यवस्थापक डाउनलोड करा';

  @override
  String get downloads => 'डाउनलोड';

  @override
  String get downloading => 'डाउनलोड करत आहे...';

  @override
  String get downloadComplete => 'डाउनलोड पूर्ण';

  @override
  String get downloadFailed => 'डाउनलोड अयशस्वी';

  @override
  String get offlineMode => 'ऑफलाइन मोड';

  @override
  String get noInternet => 'इंटरनेट कनेक्शन नाही';

  @override
  String get checkConnection => 'कृपया तुमचे कनेक्शन तपासा';

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
  String get getStarted => 'प्रारंभ करा';

  @override
  String get skip => 'Skip';

  @override
  String get next => 'पुढे';

  @override
  String get done => 'झाले';

  @override
  String get onboarding1Title => 'Sirat-ı Nur मध्ये आपले स्वागत आहे';

  @override
  String get onboarding1Desc =>
      'प्रार्थनेच्या वेळा, कुराण आणि बरेच काहीसाठी तुमचे संपूर्ण इस्लामिक सहचर ॲप';

  @override
  String get onboarding2Title => 'प्रार्थनेच्या वेळा';

  @override
  String get onboarding2Desc => 'तुमच्या स्थानावर आधारित अचूक प्रार्थना वेळा';

  @override
  String get onboarding3Title => 'कुराण आणि बरेच काही';

  @override
  String get onboarding3Desc =>
      'कुराण वाचा, तुमच्या वाचनाचा मागोवा घ्या आणि इस्लामिक सामग्री एक्सप्लोर करा';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'काउंटर रीसेट करा';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'लक्ष्य संख्या: $target';
  }

  @override
  String get tapToCount => 'मोजण्यासाठी टॅप करा';

  @override
  String get zikrCompletedMashAllah => 'पूर्ण झाले! माशाअल्लाह';

  @override
  String get zikrMeaningSubhanAllah => 'अल्लाह प्रत्येक अपूर्णतेच्या वर आहे.';

  @override
  String get zikrMeaningAlhamdulillah => 'सर्व स्तुती अल्लाहची आहे.';

  @override
  String get zikrMeaningAllahuAkbar => 'अल्लाह सर्वात महान आहे.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'अल्लाहशिवाय कोणीही देव नाही.';

  @override
  String get zikrMeaningAstaghfirullah => 'मी अल्लाहची क्षमा मागतो.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'अल्लाहशिवाय कोणतीही शक्ती आणि शक्ती नाही.';

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
  String get dailyProgress => 'रोजची प्रगती';

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
  String get recheckPremium => 'प्रीमियम सदस्यता स्थिती पुन्हा तपासा';

  @override
  String get syncStore =>
      'तुमच्या प्रीमियम सदस्यतेची पुष्टी करण्यासाठी ॲप स्टोअरसह सिंक करा.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'प्रीमियम सदस्यता सत्यापित.';

  @override
  String get premiumNotFound => 'प्रीमियम सदस्यता आढळली नाही.';

  @override
  String premiumRefreshError(Object error) {
    return 'प्रीमियम सदस्यता स्थिती रीफ्रेश करू शकलो नाही: $error';
  }

  @override
  String get offlineDownloadManager => 'ऑफलाइन डाउनलोड व्यवस्थापक';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'अंतर्गत डिव्हाइस संचयन मोकळे करा.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'कुराण डेटाबेस तपासत आहे...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'कुराण डेटाबेस स्थिती';

  @override
  String statusLabel(Object status) {
    return 'स्थिती: $status';
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
  String get audioVoice => 'ऑडिओ आवाज';

  @override
  String get audioVoiceMisharyAlafasy => 'पुरुष (मिशारी अलाफसी)';

  @override
  String get audioVoiceAbdulBaset => 'पुरुष (अब्दुलबसेट)';

  @override
  String get audioVoiceSudais => 'पुरुष (सुदाई)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'किब्ला कॅलिब्रेशन';

  @override
  String get compassSmoothing => 'कंपास स्मूथिंग';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'कॅलिब्रेशन ऑफसेट';

  @override
  String currentOffset(Object offset) {
    return 'वर्तमान: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'तुमच्या होकायंत्राला व्यक्तिचलित सुधारणा आवश्यक असल्यास समायोजित करा. सकारात्मक मूल्ये घड्याळाच्या दिशेने फिरतात.';

  @override
  String get apply => 'बदल लागू करा';

  @override
  String get resetOnboarding => 'परिचय सेटअप रीसेट करा';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'निदान';

  @override
  String get diagnosticsNotSet => 'सेट नाही';

  @override
  String get diagnosticsPrayerProfile => 'प्रार्थना प्रोफाइल';

  @override
  String get diagnosticsPrayerSource => 'प्रार्थना प्राधिकरण';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'कस्टम / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'मॅन्युअल सानुकूल कोन (संस्थागत स्रोत नाही)';

  @override
  String get diagnosticsCloudDriven => 'ढग चालवलेले';

  @override
  String get diagnosticsAdhanAudioAssets => 'अधान ऑडिओ मालमत्ता';

  @override
  String get diagnosticsUiAudioAssets => 'UI ऑडिओ मालमत्ता';

  @override
  String get diagnosticsQuranAudioAssets => 'कुराण ऑडिओ मालमत्ता';

  @override
  String get diagnosticsAudioAssets => 'ऑडिओ मालमत्ता';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count फायली';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'मॅनिफेस्ट वाचन अयशस्वी: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'स्थानिकीकरण लोकेल';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count समर्थित';
  }

  @override
  String get diagnosticsQuranDataset => 'कुराण डेटासेट';

  @override
  String get diagnosticsQuranSurahs => 'कुराण सुरा';

  @override
  String get diagnosticsQuranAyahs => 'कुराण आयह';

  @override
  String get diagnosticsQuranJuzMetadata => 'कुराण जुझ मेटाडेटा';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'सुपाबेसमध्ये क्लाउड टेबल गायब; बंडल फॉलबॅक सक्रिय';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'मेघ तपासणी अयशस्वी: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'क्लाउड juz मेटाडेटा गहाळ आहे; बंडल स्ट्रक्चरल फॉलबॅक सक्रिय';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'मेघ संरचनात्मक तपासणी अयशस्वी: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'कॅलिब्रेशन आवश्यक आहे. आकृती-8 मध्ये उपकरण फिरवा.';

  @override
  String get dailyVerse => 'दैनिक श्लोक';

  @override
  String get todaysIbadah => 'आजचा इबादा';

  @override
  String get quickAccess => 'द्रुत प्रवेश';

  @override
  String get assistant => 'सहाय्यक';

  @override
  String get places => 'ठिकाणे';

  @override
  String get library => 'लायब्ररी';

  @override
  String get analytics => 'विश्लेषण';

  @override
  String get dailyDuas => 'रोजची दुआ';

  @override
  String essentialDuas(String count) {
    return '$count आवश्यक दुआ';
  }

  @override
  String get duaUnavailableTitle => 'सत्यापित दुआ अद्याप उपलब्ध नाहीत';

  @override
  String get duaUnavailableBody =>
      'सत्यापित दैनिक दुआ अद्याप या डिव्हाइसवर समक्रमित केले गेले नाहीत. असत्यापित फॉलबॅक ऐवजी सोर्स केलेले डुआ लोड करण्यासाठी क्लाउड स्त्रोताशी कनेक्ट करा.';

  @override
  String get duaCategoryQuranic => 'कुराण दुआ';

  @override
  String get duaCategoryMorningEvening => 'सकाळ आणि संध्याकाळ';

  @override
  String get duaCategoryTasbih => 'तस्बिह';

  @override
  String get duaCategoryProtection => 'संरक्षण';

  @override
  String get duaCategoryBeginning => 'सुरुवात';

  @override
  String get duaCategorySleep => 'झोप';

  @override
  String get duaCategoryFoodDrink => 'अन्न आणि पेय';

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
  String get islamicEducation => 'इस्लामिक शिक्षण';

  @override
  String get sukunAudioTitle => 'सुकुन साउंडस्केप्स';

  @override
  String get hadithCollections => 'हदीस संग्रह';

  @override
  String get hadithSourcePending => 'सत्यापित स्रोत प्रलंबित';

  @override
  String get hadithUnavailableTitle =>
      'सत्यापित हदीस संग्रह अद्याप उपलब्ध नाहीत';

  @override
  String get hadithUnavailableBody =>
      'हे बिल्ड अजूनही असत्यापित बाह्य हदीस फीडवर अवलंबून आहे. स्त्रोत केलेला डेटासेट समक्रमित होईपर्यंत हदीथ ब्राउझिंग अक्षम राहते.';

  @override
  String get paywallUnlockAll =>
      'तुमच्या आध्यात्मिक प्रवासासाठी सर्व वैशिष्ट्ये अनलॉक करा';

  @override
  String get premiumProductUnavailable =>
      'प्रीमियम उत्पादन सध्या उपलब्ध नाही. कृपया नंतर पुन्हा प्रयत्न करा.';

  @override
  String get premiumPurchaseFailed =>
      'खरेदी पूर्ण होऊ शकली नाही. कृपया पुन्हा प्रयत्न करा.';

  @override
  String get paywallFeature1Title => 'न्यूरल असिस्टंट प्लस';

  @override
  String get paywallFeature1Desc => 'अमर्यादित AI-सक्षम प्रश्नोत्तरे';

  @override
  String get paywallFeature2Title => 'अमर्यादित ऑफलाइन';

  @override
  String get paywallFeature2Desc => 'सर्व पठण डाउनलोड करा';

  @override
  String get paywallFeature3Title => 'अनन्य डिझाईन्स';

  @override
  String get paywallFeature3Desc => 'प्रीमियम थीम आणि फॉन्ट';

  @override
  String get paywallFeature4Title => 'जाहिरात-मुक्त';

  @override
  String get paywallFeature4Desc => 'शून्य जाहिराती';

  @override
  String get paywallGetAccess => 'आजीवन प्रवेश मिळवा - \$1.00';

  @override
  String get restorePurchases => 'खरेदी पुनर्संचयित करा';

  @override
  String get zakatCalculator => 'जकात कॅल्क्युलेटर';

  @override
  String get zakatGold => 'सोने (Altın)';

  @override
  String get zakatSilver => 'चांदी (Gümüş)';

  @override
  String get zakatCashBank => 'रोख / बँक';

  @override
  String get zakatBusiness => 'व्यवसाय';

  @override
  String get zakatInvestments => 'गुंतवणूक';

  @override
  String get zakatWeightGrams => 'वजन (ग्रॅम)';

  @override
  String get zakatPricePerGram => 'किंमत/ग्रॅ';

  @override
  String get zakatTotalAmount => 'एकूण रक्कम';

  @override
  String get zakatInventoryValue => 'इन्व्हेंटरी मूल्य';

  @override
  String get zakatDebts => 'कर्ज';

  @override
  String get zakatTotal => 'एकूण';

  @override
  String get calculateZakat => 'जकात मोजा';

  @override
  String get nisabNotReached => 'निसाब पोहोचला नाही. जकात बंधनकारक नाही.';

  @override
  String get totalZakat => 'एकूण जकात';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'नियम: $nisab • मालमत्ता: $assets';
  }

  @override
  String get zakatGoldZakat => 'सोन्याची जकात';

  @override
  String get zakatSilverZakat => 'चांदीची जकात';

  @override
  String get zakatCashZakat => 'रोख जकात';

  @override
  String get zakatBusinessZakat => 'व्यवसाय जकात';

  @override
  String get zakatInvestmentZakat => 'गुंतवणूक जकात';

  @override
  String get chatbotGreeting =>
      'अस्सलमु अलैकुम! मी तुमचा इस्लामिक सहाय्यक आहे. मला प्रार्थना, उपवास, जकात किंवा कोणत्याही इस्लामिक विषयाबद्दल विचारा.';

  @override
  String get chatbotLimitReached =>
      'दैनिक क्वेरी मर्यादा गाठली. अमर्यादित प्रीमियम वर श्रेणीसुधारित करा.';

  @override
  String get chatbotErrorMsg =>
      'मी प्रतिसाद देऊ शकलो नाही. कृपया पुन्हा प्रयत्न करा.';

  @override
  String get chatbotOfflinePrompt =>
      'सत्यापित ऑफलाइन इस्लामिक ज्ञान बेस अद्याप क्युरेट केले जात आहे. तुम्ही आता ऑफलाइन फॉलबॅक सक्षम करू शकता, परंतु स्त्रोत डेटासेट तयार होईपर्यंत ते केवळ मर्यादित सुरक्षित संदेश दर्शवेल.\n\nतुम्ही ऑफलाइन फॉलबॅक सक्षम करू इच्छिता?';

  @override
  String get chatbotOfflineSwitched =>
      'ऑफलाइन फॉलबॅक सक्षम केले. सत्यापित स्थानिक इस्लामिक उत्तरे अद्याप तयार नाहीत.';

  @override
  String get chatbotOfflineDownloadLabel => 'ऑफलाइन फॉलबॅक सक्षम करा';

  @override
  String get downloadPreparing => 'डाउनलोड तयार करत आहे...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'सुरा डाउनलोड करत आहे $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'या पठणकर्त्यासाठी सर्व सूर आधीच डाउनलोड केल्या आहेत.';

  @override
  String get offlineQuranAudioPacks => 'ऑफलाइन कुराण ऑडिओ पॅक';

  @override
  String storedOnDeviceMb(String size) {
    return 'डिव्हाइसवर संग्रहित: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total सूर डाउनलोड केले';
  }

  @override
  String get redownloadMissingRepair => 'दुरुस्ती / डाउनलोड गहाळ';

  @override
  String get downloadAction => 'डाउनलोड करा';

  @override
  String get resumeDownload => 'डाउनलोड पुन्हा सुरू करा';

  @override
  String get deleteDownloadedFiles => 'डाउनलोड केलेल्या फाइल्स हटवा';

  @override
  String get downloadCancelling => 'रद्द करत आहे...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return '$reciter साठी डाउनलोड रद्द केले.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return '$reciter साठी डाउनलोड पूर्ण झाले.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return '$reciter साठी $failed अयशस्वी सूरांसह डाउनलोड पूर्ण झाले ($downloaded/$total डाउनलोड केले).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return '$reciter साठी ऑफलाइन फायली हटवल्या.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'सत्यापित कुराण ऑडिओ स्रोत सध्या अनुपलब्ध आहेत.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'सत्यापित कुराण ऑडिओ पॅक अपूर्ण आहे ($available/$total). क्लाउड सीड रिफ्रेश करा आणि पुन्हा प्रयत्न करा.';
  }

  @override
  String get chatbotHint => 'एक प्रश्न विचारा...';

  @override
  String get chatbotThinking => 'विचार करत आहे...';

  @override
  String get sukunMixerSubtitle => 'निसर्ग आणि कुराण मिक्सर';

  @override
  String get audioPlayFailed => 'ऑडिओ प्लेबॅक अयशस्वी';

  @override
  String get sukunNatureLabel => 'सुकुन (निसर्ग)';

  @override
  String get sukunRainOfMercy => 'दयेचा पाऊस';

  @override
  String get sukunGardenOfPeace => 'शांततेची बाग';

  @override
  String get sukunMidnightCalm => 'मध्यरात्री शांतता';

  @override
  String get sukunOceanTawheed => 'महासागर तौहीद';

  @override
  String get sukunUnavailableTitle => 'साउंडस्केप अनुपलब्ध';

  @override
  String get sukunUnavailableBody =>
      'या बिल्डमध्ये अद्याप आवश्यक Sukun साउंडस्केप मालमत्ता समाविष्ट नाही.';

  @override
  String get prayerCompletion => 'प्रार्थना पूर्ण';

  @override
  String get streaks => 'पट्ट्या';

  @override
  String get dayStreak => 'दिवसाची ओढ';

  @override
  String get bestStreak => 'सर्वोत्तम स्ट्रीक';

  @override
  String get chatbotCloudAiLabel => 'क्लाउड AI';

  @override
  String get chatbotLocalAiLabel => 'ऑफलाइन फॉलबॅक';

  @override
  String get chatbotUseCloudAi => 'क्लाउड एआय (Gemini) वापरा';

  @override
  String get chatbotDownloadLocalAi => 'ऑफलाइन फॉलबॅक सक्षम करा';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count बाकी';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'क्लाउड API कॉन्फिगर केलेले नाही. सत्यापित ऑफलाइन इस्लामिक मार्गदर्शन अद्याप उपलब्ध नाही.';

  @override
  String get chatbotLocalNoInfo =>
      '[ऑफलाइन] सत्यापित स्थानिक इस्लामिक मार्गदर्शन अद्याप उपलब्ध नाही. सोर्स केलेल्या उत्तरांसाठी Cloud AI वर स्विच करा.';

  @override
  String get mosques => 'मशिदी';

  @override
  String get halalFood => 'हलाल अन्न';

  @override
  String get placesSearchArea => 'या भागात शोधा';

  @override
  String get nearbyMosques => 'जवळच्या मशिदी';

  @override
  String get islamicSchools => 'इस्लामिक शाळा';

  @override
  String placesFoundCount(String count) {
    return '$count सापडले';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance किमी दूर';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API त्रुटी: $statusCode';
  }

  @override
  String get placesNetworkError => 'नेटवर्क त्रुटी. कृपया पुन्हा प्रयत्न करा.';

  @override
  String get placesLocationRequiredTitle => 'स्थान आवश्यक आहे';

  @override
  String get placesLocationRequiredBody =>
      'प्रथम स्थान सेट करा जेणेकरून जवळपासच्या मशिदी, हलाल अन्न आणि इस्लामिक शाळा अचूकपणे शोधल्या जाऊ शकतात.';

  @override
  String get placesMapTilesUnavailableTitle => 'नकाशा टाइल अनुपलब्ध';

  @override
  String get placesMapTilesUnavailableBody =>
      'या बिल्डसाठी सत्यापित नकाशा टाइल स्रोत अद्याप कॉन्फिगर केलेला नाही. तुमच्या सेव्ह केलेल्या स्थानावरून जवळपासची ठिकाणे अजूनही लोड होऊ शकतात.';

  @override
  String get placesDataSourceUnavailableTitle => 'ठिकाणे डेटा अनुपलब्ध';

  @override
  String get placesDataSourceUnavailableBody =>
      'या बिल्डसाठी सत्यापित ठिकाणे डेटा एंडपॉइंट अद्याप कॉन्फिगर केलेला नाही. जवळपासचा शोध सक्षम करण्यापूर्वी PLACES_OVERPASS_API_URL मंजूर प्रॉक्सी किंवा प्रदात्यावर सेट करा.';

  @override
  String get unknownPlaceName => 'अज्ञात नाव';

  @override
  String get islamicPlaceFallback => 'इस्लामिक ठिकाण';

  @override
  String get asmaMeaning1 => 'The Beneficient';

  @override
  String get asmaMeaning2 => 'दयाळू';

  @override
  String get asmaMeaning3 => 'राजा / शाश्वत परमेश्वर';

  @override
  String get asmaMeaning4 => 'सर्वात पवित्र';

  @override
  String get asmaMeaning5 => 'शांतीचा स्रोत';

  @override
  String get asmaMeaning6 => 'सुरक्षा देणारा';

  @override
  String get asmaMeaning7 => 'द गार्डियन';

  @override
  String get asmaMeaning8 => 'द मौल्यवान / सर्वात पराक्रमी';

  @override
  String get asmaMeaning9 => 'द कंपेलर';

  @override
  String get asmaMeaning10 => 'सर्वश्रेष्ठ';

  @override
  String get asmaMeaning11 => 'निर्माता';

  @override
  String get asmaMeaning12 => 'ऑर्डर ऑफ ऑर्डर';

  @override
  String get asmaMeaning13 => 'सौंदर्याचा आकार';

  @override
  String get asmaMeaning14 => 'क्षमाशील';

  @override
  String get asmaMeaning15 => 'Subduer';

  @override
  String get asmaMeaning16 => 'सर्वांचा दाता';

  @override
  String get asmaMeaning17 => 'द सस्टेनर';

  @override
  String get asmaMeaning18 => 'सलामीवीर';

  @override
  String get asmaMeaning19 => 'सर्वांचा जाणता';

  @override
  String get asmaMeaning20 =>
      'The Withholder, who narrows and restrains by wisdom.';

  @override
  String get asmaMeaning21 => 'रिलीव्हर';

  @override
  String get asmaMeaning22 => 'Abaser';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'सन्मान देणारा';

  @override
  String get asmaMeaning25 => 'अपमानकर्ता';

  @override
  String get asmaMeaning26 => 'सर्वांचे ऐकणारा';

  @override
  String get asmaMeaning27 => 'सर्वांचा द्रष्टा';

  @override
  String get asmaMeaning28 => 'न्यायाधीश';

  @override
  String get asmaMeaning29 => 'The just';

  @override
  String get asmaMeaning30 => 'सूक्ष्म एक';

  @override
  String get asmaMeaning31 => 'सर्व जागरूक';

  @override
  String get asmaMeaning32 => 'पूर्ववर्ती';

  @override
  String get asmaMeaning33 => 'The Magnificent';

  @override
  String get asmaMeaning34 => 'महान क्षमा करणारा';

  @override
  String get asmaMeaning35 => 'कृतज्ञतेचा पुरस्कारकर्ता';

  @override
  String get asmaMeaning36 => 'सर्वोच्च';

  @override
  String get asmaMeaning37 => 'सर्वश्रेष्ठ';

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
  String get asmaMeaning43 => 'सतर्क';

  @override
  String get asmaMeaning44 => 'प्रार्थनेला प्रतिसाद देणारा';

  @override
  String get asmaMeaning45 => 'सर्व आकलन';

  @override
  String get asmaMeaning46 => 'The Perfectly Wise';

  @override
  String get asmaMeaning47 => 'प्रेम करणारा';

  @override
  String get asmaMeaning48 => 'सर्वात गौरवशाली';

  @override
  String get asmaMeaning49 => 'पुनरुत्थानकर्ता';

  @override
  String get asmaMeaning50 => 'साक्षी';

  @override
  String get asmaMeaning51 => 'सत्य';

  @override
  String get asmaMeaning52 => 'सर्व-पर्याप्त विश्वस्त';

  @override
  String get asmaMeaning53 => 'सर्व शक्तीचा मालक';

  @override
  String get asmaMeaning54 => 'द फोर्सफुल';

  @override
  String get asmaMeaning55 => 'संरक्षक';

  @override
  String get asmaMeaning56 => 'प्रशंसित';

  @override
  String get asmaMeaning57 => 'मूल्यांकनकर्ता';

  @override
  String get asmaMeaning58 => 'प्रवर्तक';

  @override
  String get asmaMeaning59 => 'The Restorer';

  @override
  String get asmaMeaning60 => 'जीवन देणारा';

  @override
  String get asmaMeaning61 => 'जीवन घेणारा';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'स्व-निर्वाहक';

  @override
  String get asmaMeaning64 => 'The Finder';

  @override
  String get asmaMeaning65 => 'द ग्लोरियस';

  @override
  String get asmaMeaning66 => 'एकमात्र';

  @override
  String get asmaMeaning67 => 'एक';

  @override
  String get asmaMeaning68 => 'सर्वांनी शोधलेला एक';

  @override
  String get asmaMeaning69 => 'द शक्तिशाली';

  @override
  String get asmaMeaning70 => 'सर्व शक्तीचा निर्माता';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'विलंब';

  @override
  String get asmaMeaning73 => 'पहिला';

  @override
  String get asmaMeaning74 => 'अंतिम';

  @override
  String get asmaMeaning75 => 'मॅनिफेस्ट';

  @override
  String get asmaMeaning76 => 'लपलेले';

  @override
  String get asmaMeaning77 => 'राज्यपाल';

  @override
  String get asmaMeaning78 => 'सर्वोच्च';

  @override
  String get asmaMeaning79 => 'The Doer of Good';

  @override
  String get asmaMeaning80 => 'पश्चात्तापासाठी मार्गदर्शक';

  @override
  String get asmaMeaning81 => 'The Avenger';

  @override
  String get asmaMeaning82 => 'क्षमा करणारा';

  @override
  String get asmaMeaning83 => 'द क्लेमेंट';

  @override
  String get asmaMeaning84 => 'सर्वांचा मालक/सार्वभौम';

  @override
  String get asmaMeaning85 => 'वैभव आणि बक्षीसाचा मालक';

  @override
  String get asmaMeaning86 => 'The Equitable One';

  @override
  String get asmaMeaning87 => 'द गॅदरर';

  @override
  String get asmaMeaning88 => 'श्रीमंत';

  @override
  String get asmaMeaning89 => 'The Enricher';

  @override
  String get asmaMeaning90 => 'हानी प्रतिबंधक';

  @override
  String get asmaMeaning91 => 'हानी आणणारा';

  @override
  String get asmaMeaning92 => 'लाभ देणारा';

  @override
  String get asmaMeaning93 => 'द लाइट';

  @override
  String get asmaMeaning94 => 'मार्गदर्शक';

  @override
  String get asmaMeaning95 => 'प्रवर्तक';

  @override
  String get asmaMeaning96 => 'सर्वकालीन एक';

  @override
  String get asmaMeaning97 => 'इनहेरिटर';

  @override
  String get asmaMeaning98 => 'सर्वात योग्य मार्गदर्शक';

  @override
  String get asmaMeaning99 => 'रुग्ण एक';
}
