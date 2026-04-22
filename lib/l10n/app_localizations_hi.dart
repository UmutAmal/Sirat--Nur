// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'प्रकाश का इस्लामी तरीका';

  @override
  String get home => 'होम';

  @override
  String get quran => 'कुरान';

  @override
  String get qibla => 'किबला';

  @override
  String get zikr => 'जिक्र';

  @override
  String get calendar => 'कैलेंडर';

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get nextPrayer => 'अगली नमाज़';

  @override
  String get prayerTimes => 'नमाज़ के वक्त';

  @override
  String get continueReading => 'पढ़ना जारी रखें';

  @override
  String get getLifetimePro => 'लाइफटाइम प्रो प्राप्त करें';

  @override
  String get unlockTajweed => 'तजवीद और एडवांस्ड फीचर्स अनलॉक करें';

  @override
  String get prayerCalculation => 'नमाज़ गणना';

  @override
  String get method => 'गणना विधि';

  @override
  String get madhab => 'असर फिक्ह विधि';

  @override
  String get surahs => 'सूरह';

  @override
  String get ayahs => 'आयात';

  @override
  String get fajr => 'फजर';

  @override
  String get sunrise => 'सूर्योदय';

  @override
  String get dhuhr => 'ज़ुहर';

  @override
  String get asr => 'असर';

  @override
  String get maghrib => 'मग़्रिब';

  @override
  String get isha => 'इशा';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName के लिए समय';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'यह प्रार्थना करने का समय है $prayerName.';
  }

  @override
  String get dataStorage => 'डेटा और स्टोरेज';

  @override
  String get clearCache => 'कैश साफ़ करें';

  @override
  String get cacheClearedSuccess => 'कैश सफलतापूर्वक साफ़ हो गया';

  @override
  String get location => 'स्थान';

  @override
  String get language => 'भाषा';

  @override
  String get selectLanguage => 'भाषा चुनें';

  @override
  String get searchLanguage => '180+ भाषाओं में खोजें...';

  @override
  String get systemDefault => 'सिस्टम डिफ़ॉल्ट';

  @override
  String get currentLocation => 'वर्तमान स्थान (GPS)';

  @override
  String get locationServiceDisabled => 'स्थान सेवा अक्षम है.';

  @override
  String get locationPermissionDenied => 'स्थान की अनुमति अस्वीकृत.';

  @override
  String get locationDetectionFailed =>
      'आपके स्थान का पता नहीं लगाया जा सका. कृपया मैन्युअल रूप से एक शहर चुनें या पुनः प्रयास करें।';

  @override
  String citiesCount(String count) {
    return '$count शहर';
  }

  @override
  String get search => 'खोजें';

  @override
  String get searchHint => 'खोजें...';

  @override
  String get noResults => 'कोई परिणाम नहीं मिला';

  @override
  String get loading => 'लोड हो रहा है...';

  @override
  String get error => 'त्रुटि';

  @override
  String get appErrorOccurred => 'एक त्रुटि पाई गई';

  @override
  String get appUnknownError => 'अज्ञात त्रुटि';

  @override
  String get quranLoadFailed =>
      'कुरान सामग्री लोड नहीं की जा सकी. कृपया पुन: प्रयास करें।';

  @override
  String get retry => 'पुनः प्रयास करें';

  @override
  String get refreshAction => 'ताज़ा करें';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get save => 'सहेजें';

  @override
  String get delete => 'हटाएँ';

  @override
  String get edit => 'संपादित करें';

  @override
  String get close => 'बंद करें';

  @override
  String get ok => 'ठीक है';

  @override
  String get yes => 'हाँ';

  @override
  String get no => 'नहीं';

  @override
  String get surah => 'सूरा';

  @override
  String ayahLabel(String ayah) {
    return 'अयाह $ayah';
  }

  @override
  String get juz => 'जुज़';

  @override
  String get page => 'पृष्ठ';

  @override
  String get reading => 'पढ़ना';

  @override
  String get recitation => 'तिलावत';

  @override
  String get translation => 'अनुवाद';

  @override
  String get tafsir => 'तफ़सीर';

  @override
  String get tafsirLoading => 'तफ़सीर लोड हो रहा है...';

  @override
  String get tafsirSourceLabel => 'तफ़सीर स्रोत';

  @override
  String get tafsirNoSurahFound => 'इस सूरह के लिए कोई तफ़सीर नहीं मिला।';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'अयाह $ayah के लिए कोई तफ़सीर नहीं मिला।';
  }

  @override
  String get tafsirLoadFailed => 'तफ़सीर लोड नहीं किया जा सका.';

  @override
  String get tafsirNoTextForAyah => 'इस आयत के लिए कोई तफ़सीर पाठ नहीं।';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'तफ़सीर डाउनलोड हो रहा है $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'तफ़सीर लोड हो रहा है $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'तफ़सीर स्रोत ने HTTP $statusCode त्रुटि लौटा दी।';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'चयनित तफ़सीर स्रोत ने कोई प्रविष्टियाँ नहीं लौटाईं।';

  @override
  String get tafsirCacheUnavailable =>
      'सत्यापित तफ़सीर अभी ऑफ़लाइन उपलब्ध नहीं है। ब्राउज़ करने से पहले किसी स्रोतित तफ़सीर डेटासेट को सिंक करें।';

  @override
  String get bookmarks => 'बुकमार्क';

  @override
  String get addBookmark => 'बुकमार्क जोड़ें';

  @override
  String get removeBookmark => 'बुकमार्क हटाएं';

  @override
  String get lastRead => 'आखिरी पढ़ा';

  @override
  String get dailyZikr => 'दैनिक जिक्र';

  @override
  String get duaMeaning1 =>
      'अन्य लोग प्रार्थना करते हैं, \'हमारे भगवान, हमें इस दुनिया में और उसके बाद में भलाई प्रदान करें, और हमें आग की पीड़ा से बचाएं।\'';

  @override
  String get duaMeaning2 =>
      'ईश्वर किसी भी आत्मा पर उसकी क्षमता से अधिक बोझ नहीं डालता है: प्रत्येक व्यक्ति ने जो भी अच्छा किया है उसे लाभ होता है, और उसका बुरा भुगतता है- \'भगवान, अगर हम भूल जाते हैं या गलतियाँ करते हैं तो हमें काम पर न लें। हे प्रभु, हम पर वैसा बोझ मत डालो जैसा तुमने हमसे पहले वालों पर डाला था। हे प्रभु, हमारी सहने की शक्ति से अधिक हम पर बोझ मत डालो। हमें क्षमा करें, हमें क्षमा करें और हम पर दया करें। आप हमारे संरक्षक हैं, इसलिए अविश्वासियों के विरुद्ध हमारी सहायता करें।\'';

  @override
  String get duaMeaning3 =>
      '\'ऐ हमारे रब, तूने हमें जो मार्गदर्शन दिया उसके बाद हमारे दिलों को भटकने न दे। हमें अपनी दया प्रदान करें: आप सदैव देने वाले हैं।';

  @override
  String get duaMeaning4 =>
      'प्रभु, अनुदान दीजिए कि मैं और मेरी संतान प्रार्थना जारी रख सकें। हमारे भगवान, मेरा अनुरोध स्वीकार करें।';

  @override
  String get duaMeaning5 =>
      'और उनके प्रति दयालुता से नम्रता से अपना पंख नीचे झुकाओ और कहो, \'हे प्रभु, उन पर दया करो, जैसे उन्होंने मेरी देखभाल तब की थी जब मैं छोटा था।\'';

  @override
  String get duaMeaning6 =>
      'परमपिता परमेश्वर, वह जो वास्तव में नियंत्रण में है। [पैगंबर], रहस्योद्घाटन पूरी तरह से पूरा होने से पहले पढ़ने में जल्दबाजी न करें, बल्कि कहें, \'भगवान, मुझे ज्ञान में बढ़ाओ!\'';

  @override
  String get duaMeaning7 =>
      '[पैगंबर] कहो, \'भगवान, क्षमा करें और दया करें: आप सबसे दयालु हैं।\'';

  @override
  String get duaMeaning8 =>
      'जो लोग प्रार्थना करते हैं, \'हमारे भगवान, हमें हमारे जीवनसाथी और संतानों में खुशी दें। हमें उन लोगों के लिए अच्छे उदाहरण बनाइए जो आपके बारे में जानते हैं।\'';

  @override
  String get morningZikr => 'सुबह की जिक्र';

  @override
  String get eveningZikr => 'शाम की जिक्र';

  @override
  String get tasbih => 'तस्बीह';

  @override
  String get ahkab => 'अहकाम';

  @override
  String get masaail => 'मसाइल';

  @override
  String get hadith => 'हदीथ';

  @override
  String get hadithCollection => 'हदीस संग्रह';

  @override
  String get hadithBooks => 'हदीस किताबें';

  @override
  String get searchHadith => 'हदीस खोजें';

  @override
  String get asmaulHusna => 'अस्मा-उल-हुस्ना';

  @override
  String get namesOfAllah => 'अल्लाह के नाम';

  @override
  String get liveTv => 'लाइव टीवी';

  @override
  String get watchLive => 'लाइव देखें';

  @override
  String get streamError => 'स्ट्रीम त्रुटि';

  @override
  String get reload => 'रीलोड करें';

  @override
  String get openInYoutube => 'यूट्यूब में खोलें';

  @override
  String get ibadahTracker => 'इबादत ट्रैकर';

  @override
  String get fasting => 'रोज़ा';

  @override
  String get quranReading => 'कुरान पढ़ना';

  @override
  String get prayers => 'नमाज़ें';

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
  String get dhikrCount => 'जिक्र की गिनती';

  @override
  String get weeklyProgress => 'साप्ताहिक प्रगति';

  @override
  String get monthlyProgress => 'मासिक प्रगति';

  @override
  String get statistics => 'आंकड़े';

  @override
  String get hijriCalendar => 'हिजरी कैलेंडर';

  @override
  String get gregorianCalendar => 'ग्रेगोरियन कैलेंडर';

  @override
  String get today => 'आज';

  @override
  String get tomorrow => 'कल';

  @override
  String get yesterday => 'कल';

  @override
  String get specialDays => 'विशेष दिन';

  @override
  String get ramadan => 'रमज़ान';

  @override
  String get eidAlFitr => 'ईद-उल-फितर';

  @override
  String get eidAlAdha => 'ईद-उल-अधा';

  @override
  String get islamicNewYear => 'इस्लामी नव वर्ष';

  @override
  String get mawlidAnNabi => 'मावलिद-ए-नबी';

  @override
  String get specialDayDateRamadanStart => '1 रमज़ान';

  @override
  String get specialDayDateLaylatAlQadr => '27 रमज़ान';

  @override
  String get specialDayDateEidAlFitr => '1 शव्वाल';

  @override
  String get specialDayDateEidAlAdha => '10 ज़िल हिज्जा';

  @override
  String get specialDayDateIslamicNewYear => '1 मुहर्रम';

  @override
  String get specialDayDateMawlidAnNabi => '12 रबी अल-अव्वल';

  @override
  String get laylatAlQadr => 'लैलतुल कदर';

  @override
  String get qiblaDirection => 'किबला की दिशा';

  @override
  String get compass => 'कंपास';

  @override
  String get degrees => 'डिग्री';

  @override
  String get north => 'उत्तर';

  @override
  String get qiblaFound => 'किबला मिल गया!';

  @override
  String get turnDevice => 'किबले की ओर मुड़ने के लिए अपना डिवाइस घुमाएं';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'कम्पास त्रुटि: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'इस डिवाइस पर कंपास सेंसर उपलब्ध नहीं है।';

  @override
  String get qiblaLocationRequiredTitle => 'किबला के लिए स्थान आवश्यक है';

  @override
  String get qiblaLocationRequiredBody =>
      'किबला कंपास का उपयोग करने से पहले अपना वास्तविक स्थान निर्धारित करें ताकि दिशा की सटीक गणना की जा सके।';

  @override
  String get adhanNotificationChannelName => 'अज़ान अधिसूचनाएँ';

  @override
  String get adhanNotificationChannelDescription =>
      'अज़ान ध्वनि के साथ प्रार्थना का समय अलर्ट।';

  @override
  String get notifications => 'सूचनाएं';

  @override
  String get prayerNotifications => 'नमाज़ सूचनाएं';

  @override
  String get enableNotifications => 'सूचनाएं सक्षम करें';

  @override
  String get notificationTime => 'सूचना का समय';

  @override
  String get beforePrayer => 'नमाज़ से पहले मिनट';

  @override
  String get theme => 'थीम';

  @override
  String get lightMode => 'लाइट मोड';

  @override
  String get darkMode => 'डार्क मोड';

  @override
  String get systemTheme => 'सिस्टम थीम';

  @override
  String get about => 'के बारे में';

  @override
  String get version => 'संस्करण';

  @override
  String get privacyPolicy => 'गोपनीयता नीति';

  @override
  String get termsOfService => 'सेवा की शर्तें';

  @override
  String get contactUs => 'हमसे संपर्क करें';

  @override
  String get rateApp => 'ऐप को रेट करें';

  @override
  String get shareApp => 'ऐप शेयर करें';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'प्रबंधक डाउनलोड करें';

  @override
  String get downloads => 'डाउनलोड';

  @override
  String get downloading => 'डाउनलोड हो रहा है...';

  @override
  String get downloadComplete => 'पूर्ण डाउनलोड करें';

  @override
  String get downloadFailed => 'डाउनलोड विफल';

  @override
  String get offlineMode => 'ऑफ़लाइन मोड';

  @override
  String get noInternet => 'कोई इंटरनेट कनेक्शन नहीं';

  @override
  String get checkConnection => 'कृपया अपना कनेक्शन जांचें';

  @override
  String get premium => 'प्रीमियम';

  @override
  String get upgradeToPro => 'प्रो में अपग्रेड करें';

  @override
  String get proFeatures => 'प्रो फीचर्स';

  @override
  String get removeAds => 'विज्ञापन हटाएं';

  @override
  String get unlockAll => 'सभी कंटेंट अनलॉक करें';

  @override
  String get exclusiveContent => 'एक्सक्लूसिव कंटेंट';

  @override
  String get welcome => 'स्वागत है';

  @override
  String get getStarted => 'शुरू करें';

  @override
  String get skip => 'छोड़ें';

  @override
  String get next => 'अगला';

  @override
  String get done => 'हो गया';

  @override
  String get onboarding1Title => 'अल्लाह के रास्ते में आपका स्वागत है';

  @override
  String get onboarding1Desc =>
      'नमाज़ के वक्त, कुरान और अधिक के लिए आपका पूरा इस्लामिक साथी ऐप';

  @override
  String get onboarding2Title => 'नमाज़ के वक्त';

  @override
  String get onboarding2Desc => 'आपके स्थान के आधार पर सही नमाज़ के वक्त';

  @override
  String get onboarding3Title => 'कुरान और अधिक';

  @override
  String get onboarding3Desc =>
      'कुरान पढ़ें, अपना पढ़ना ट्रैक करें और इस्लामिक कंटेंट खोजें';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'काउंटर रीसेट करें';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'लक्ष्य संख्या: $target';
  }

  @override
  String get tapToCount => 'गिनने के लिए टैप करें';

  @override
  String get zikrCompletedMashAllah => 'पुरा होना! Mashallah';

  @override
  String get zikrMeaningSubhanAllah => 'अल्लाह हर अपूर्णता से बहुत ऊपर है.';

  @override
  String get zikrMeaningAlhamdulillah => 'सारी प्रशंसा अल्लाह के लिए है।';

  @override
  String get zikrMeaningAllahuAkbar => 'अल्लाह महानतम है।';

  @override
  String get zikrMeaningLaIlahaIllallah => 'कोई भगवान नहीं है सिर्फ अल्लाह।';

  @override
  String get zikrMeaningAstaghfirullah => 'मैं अल्लाह से माफ़ी चाहता हूँ.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'अल्लाह के सिवा कोई शक्ति और शक्ति नहीं।';

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
  String get dailyProgress => 'दैनिक प्रगति';

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
  String get recheckPremium => 'प्रीमियम सदस्यता स्थिति पुनः जाँचें';

  @override
  String get syncStore =>
      'अपनी प्रीमियम सदस्यता की पुष्टि करने के लिए ऐप स्टोर के साथ सिंक करें।';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'प्रीमियम सदस्यता सत्यापित.';

  @override
  String get premiumNotFound => 'प्रीमियम सदस्यता नहीं मिली.';

  @override
  String premiumRefreshError(Object error) {
    return 'प्रीमियम सदस्यता स्थिति ताज़ा नहीं की जा सकी: $error';
  }

  @override
  String get offlineDownloadManager => 'ऑफ़लाइन डाउनलोड प्रबंधक';

  @override
  String get manageDatasets =>
      'बड़े पैमाने पर ऑफ़लाइन ऑडियो और डेटासेट पैक प्रबंधित करें।';

  @override
  String get freeStorage => 'आंतरिक डिवाइस संग्रहण खाली करें.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'कुरान डेटाबेस की जाँच हो रही है...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'कुरान डेटाबेस स्थिति';

  @override
  String statusLabel(Object status) {
    return 'स्थिति: $status';
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
    return 'कुरान की जाँच विफल: $error';
  }

  @override
  String get audioVoice => 'ऑडियो आवाज';

  @override
  String get audioVoiceMisharyAlafasy => 'पुरुष (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'पुरुष (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'पुरुष (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'किबला अंशांकन';

  @override
  String get compassSmoothing => 'कम्पास स्मूथिंग';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'अंशांकन ऑफसेट';

  @override
  String currentOffset(Object offset) {
    return 'वर्तमान: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'यदि आपके कम्पास को मैन्युअल सुधार की आवश्यकता है तो समायोजित करें। सकारात्मक मान दक्षिणावर्त घूमते हैं।';

  @override
  String get apply => 'परिवर्तन लागू करें';

  @override
  String get resetOnboarding => 'परिचय सेटअप रीसेट करें';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'निदान';

  @override
  String get diagnosticsNotSet => 'सेट नहीं';

  @override
  String get diagnosticsPrayerProfile => 'प्रार्थना प्रोफ़ाइल';

  @override
  String get diagnosticsPrayerSource => 'प्रार्थना प्राधिकरण';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'कस्टम / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'मैन्युअल कस्टम कोण (कोई संस्थागत स्रोत नहीं)';

  @override
  String get diagnosticsCloudDriven => 'बादल संचालित';

  @override
  String get diagnosticsAdhanAudioAssets => 'अदन ऑडियो एसेट्स';

  @override
  String get diagnosticsUiAudioAssets => 'यूआई ऑडियो एसेट्स';

  @override
  String get diagnosticsQuranAudioAssets => 'कुरान ऑडियो संपत्ति';

  @override
  String get diagnosticsAudioAssets => 'ऑडियो संपत्ति';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count फ़ाइलें';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'मेनिफेस्ट पढ़ना विफल: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'स्थानीयकरण स्थान';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count समर्थित';
  }

  @override
  String get diagnosticsQuranDataset => 'कुरान डेटासेट';

  @override
  String get diagnosticsQuranSurahs => 'कुरान सूरह';

  @override
  String get diagnosticsQuranAyahs => 'कुरान आयतें';

  @override
  String get diagnosticsQuranJuzMetadata => 'कुरान जुज़ मेटाडेटा';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Supabase में क्लाउड टेबल गायब हैं; बंडल फ़ॉलबैक सक्रिय';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'क्लाउड जाँच विफल: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'क्लाउड जूज़ मेटाडेटा गायब; बंडल संरचनात्मक फ़ॉलबैक सक्रिय';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'क्लाउड संरचनात्मक जाँच विफल: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'अंशांकन आवश्यक है. चित्र-8 में डिवाइस को घुमाएँ।';

  @override
  String get dailyVerse => 'दैनिक श्लोक';

  @override
  String get dailyVerseUnavailableTitle => 'दैनिक पद्य अनुपलब्ध';

  @override
  String get dailyVerseUnavailableBody =>
      'सत्यापित दैनिक पद्य सामग्री अभी तक इस निर्माण के लिए कॉन्फ़िगर नहीं की गई है। ब्राउज़ करने से पहले क्लाउड स्रोत से कनेक्ट करें या सत्यापित कैश को सिंक करें।';

  @override
  String get todaysIbadah => 'आज की इबादत';

  @override
  String get quickAccess => 'त्वरित पहुँच';

  @override
  String get assistant => 'सहायक';

  @override
  String get places => 'स्थानों';

  @override
  String get library => 'पुस्तकालय';

  @override
  String get analytics => 'एनालिटिक्स';

  @override
  String get dailyDuas => 'दैनिक दुआ';

  @override
  String essentialDuas(String count) {
    return '$count आवश्यक दुआएँ';
  }

  @override
  String get duaUnavailableTitle => 'सत्यापित दुआएँ अभी तक उपलब्ध नहीं हैं';

  @override
  String get duaUnavailableBody =>
      'सत्यापित दैनिक दुआओं को अभी तक इस डिवाइस से समन्वयित नहीं किया गया है। असत्यापित फ़ॉलबैक के बजाय स्रोतित युगल को लोड करने के लिए क्लाउड स्रोत से कनेक्ट करें।';

  @override
  String get duaCategoryQuranic => 'कुरानिक दुआ';

  @override
  String get duaCategoryMorningEvening => 'सुबह और शाम';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'सुरक्षा';

  @override
  String get duaCategoryBeginning => 'शुरुआत';

  @override
  String get duaCategorySleep => 'नींद';

  @override
  String get duaCategoryFoodDrink => 'भोजन पेय';

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
  String get islamicEducation => 'इस्लामी शिक्षा';

  @override
  String get sukunAudioTitle => 'सुकुन साउंडस्केप्स';

  @override
  String get hadithCollections => 'हदीस संग्रह';

  @override
  String get hadithSourcePending => 'सत्यापित स्रोत लंबित है';

  @override
  String get hadithUnavailableTitle =>
      'सत्यापित हदीस संग्रह अभी तक उपलब्ध नहीं हैं';

  @override
  String get hadithUnavailableBody =>
      'यह निर्माण अभी भी एक असत्यापित बाहरी हदीस फ़ीड पर निर्भर करता है। हदीस ब्राउज़िंग तब तक अक्षम रहती है जब तक कि कोई स्रोतित डेटासेट समन्वयित न हो जाए।';

  @override
  String get paywallUnlockAll =>
      'अपनी आध्यात्मिक यात्रा के लिए सभी सुविधाएँ अनलॉक करें';

  @override
  String get premiumProductUnavailable =>
      'प्रीमियम उत्पाद अभी उपलब्ध नहीं है. कृपया बाद में पुन: प्रयास करें।';

  @override
  String get premiumPurchaseFailed =>
      'खरीदारी पूरी नहीं हो सकी. कृपया पुन: प्रयास करें।';

  @override
  String get paywallFeature1Title => 'तंत्रिका सहायक प्लस';

  @override
  String get paywallFeature1Desc => 'असीमित एआई-संचालित प्रश्नोत्तर';

  @override
  String get paywallFeature2Title => 'असीमित ऑफ़लाइन';

  @override
  String get paywallFeature2Desc => 'सभी पाठ डाउनलोड करें';

  @override
  String get paywallFeature3Title => 'विशिष्ट डिज़ाइन';

  @override
  String get paywallFeature3Desc => 'प्रीमियम थीम और फ़ॉन्ट';

  @override
  String get paywallFeature4Title => 'विज्ञापन-मुक्त';

  @override
  String get paywallFeature4Desc => 'शून्य विज्ञापन';

  @override
  String get paywallGetAccess => 'लाइफटाइम एक्सेस प्राप्त करें - \$1.00';

  @override
  String get restorePurchases => 'खरीदारी वापस लौटाएं';

  @override
  String get zakatCalculator => 'जकात कैलकुलेटर';

  @override
  String get zakatGold => 'सोना (Altın)';

  @override
  String get zakatSilver => 'चांदी (गुमुस)';

  @override
  String get zakatCashBank => 'नकद/बैंक';

  @override
  String get zakatBusiness => 'व्यापार';

  @override
  String get zakatInvestments => 'निवेश';

  @override
  String get zakatWeightGrams => 'वजन (जी)';

  @override
  String get zakatPricePerGram => 'कीमत/जी';

  @override
  String get zakatTotalAmount => 'कुल राशि';

  @override
  String get zakatInventoryValue => 'इन्वेंटरी मूल्य';

  @override
  String get zakatDebts => 'कर्ज';

  @override
  String get zakatTotal => 'कुल';

  @override
  String get calculateZakat => 'जकात का हिसाब करें';

  @override
  String get nisabNotReached => 'निसाब नहीं पहुंचा. जकात फर्ज नहीं है.';

  @override
  String get totalZakat => 'कुल ज़कात';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'निसाब: $nisab • संपत्ति: $assets';
  }

  @override
  String get zakatGoldZakat => 'सोना जकात';

  @override
  String get zakatSilverZakat => 'चांदी जकात';

  @override
  String get zakatCashZakat => 'नकद जकात';

  @override
  String get zakatBusinessZakat => 'बिजनेस जकात';

  @override
  String get zakatInvestmentZakat => 'निवेश जकात';

  @override
  String get chatbotGreeting =>
      'अस्सलामु अलैकुम! मैं आपका इस्लामिक सहायक हूं. मुझसे प्रार्थना, रोज़ा, ज़कात या किसी इस्लामी विषय के बारे में पूछें।';

  @override
  String get chatbotLimitReached =>
      'दैनिक क्वेरी सीमा पूरी हो गई. असीमित के लिए प्रीमियम में अपग्रेड करें।';

  @override
  String get chatbotErrorMsg =>
      'मैं कोई प्रतिक्रिया उत्पन्न नहीं कर सका. कृपया पुन: प्रयास करें।';

  @override
  String get chatbotOfflinePrompt =>
      'सत्यापित ऑफ़लाइन इस्लामी ज्ञानकोष अभी भी क्यूरेट किया जा रहा है। अब आप ऑफ़लाइन फ़ॉलबैक सक्षम कर सकते हैं, लेकिन यह केवल सीमित सुरक्षित संदेश दिखाएगा जब तक कि स्रोत डेटासेट तैयार न हो जाए।\n\nक्या आप ऑफ़लाइन फ़ॉलबैक सक्षम करना चाहेंगे?';

  @override
  String get chatbotOfflineSwitched =>
      'ऑफ़लाइन फ़ॉलबैक सक्षम किया गया. सत्यापित स्थानीय इस्लामी उत्तर अभी तक तैयार नहीं हैं।';

  @override
  String get chatbotOfflineDownloadLabel => 'ऑफ़लाइन फ़ॉलबैक सक्षम करें';

  @override
  String get downloadPreparing => 'डाउनलोड की तैयारी है...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'सूरह डाउनलोड हो रहा है $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'इस वाचक के लिए सभी सूरह पहले ही डाउनलोड हो चुके हैं।';

  @override
  String get offlineQuranAudioPacks => 'ऑफ़लाइन कुरान ऑडियो पैक';

  @override
  String storedOnDeviceMb(String size) {
    return 'डिवाइस पर संग्रहीत: $size एमबी';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total सूरह डाउनलोड किए गए';
  }

  @override
  String get redownloadMissingRepair => 'मरम्मत/डाउनलोड अनुपलब्ध';

  @override
  String get downloadAction => 'डाउनलोड करें';

  @override
  String get resumeDownload => 'डाउनलोड जारी रखें';

  @override
  String get deleteDownloadedFiles => 'डाउनलोड की गई फ़ाइलें हटाएँ';

  @override
  String get downloadCancelling => 'रद्द किया जा रहा है...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return '$reciter के लिए डाउनलोड रद्द कर दिया गया।';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return '$reciter के लिए डाउनलोड पूरा हुआ।';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return '$reciter के लिए $failed विफल सूरह के साथ डाउनलोड समाप्त हो गया ($downloaded/$total डाउनलोड हो गया)।';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return '$reciter के लिए ऑफ़लाइन फ़ाइलें हटा दी गईं।';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'सत्यापित कुरान ऑडियो स्रोत अभी उपलब्ध नहीं हैं।';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'सत्यापित कुरान ऑडियो पैक अधूरा है ($available/$total)। ऑडियो कैटलॉग अपडेट होने के बाद पुनः प्रयास करें।';
  }

  @override
  String get chatbotHint => 'एक प्रश्न पूछें...';

  @override
  String get chatbotThinking => 'सोच रहा हूँ...';

  @override
  String get sukunMixerSubtitle => 'प्रकृति और कुरान मिक्सर';

  @override
  String get audioPlayFailed => 'ऑडियो प्लेबैक विफल रहा';

  @override
  String get sukunNatureLabel => 'सुकुन (प्रकृति)';

  @override
  String get sukunRainOfMercy => 'दया की वर्षा';

  @override
  String get sukunGardenOfPeace => 'शांति का बगीचा';

  @override
  String get sukunMidnightCalm => 'आधी रात शांत';

  @override
  String get sukunOceanTawheed => 'महासागर तौहीद';

  @override
  String get sukunUnavailableTitle => 'ध्वनि दृश्य अनुपलब्ध हैं';

  @override
  String get sukunUnavailableBody =>
      'इस बिल्ड में अभी तक आवश्यक सुकुन साउंडस्केप संपत्तियां शामिल नहीं हैं।';

  @override
  String get prayerCompletion => 'नमाज़ पूर्णता';

  @override
  String get streaks => 'श्रृंखलाएँ';

  @override
  String get dayStreak => 'लगातार दिन';

  @override
  String get bestStreak => 'सर्वोत्तम स्ट्रीक';

  @override
  String get chatbotCloudAiLabel => 'क्लाउड ए.आई';

  @override
  String get chatbotLocalAiLabel => 'ऑफ़लाइन फ़ॉलबैक';

  @override
  String get chatbotUseCloudAi => 'क्लाउड AI का उपयोग करें (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'ऑफ़लाइन फ़ॉलबैक सक्षम करें';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count शेष';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'क्लाउड एपीआई कॉन्फ़िगर नहीं है. सत्यापित ऑफ़लाइन इस्लामी मार्गदर्शन अभी तक उपलब्ध नहीं है।';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] सत्यापित स्थानीय इस्लामी मार्गदर्शन अभी तक उपलब्ध नहीं है। स्रोतित उत्तरों के लिए क्लाउड AI पर स्विच करें।';

  @override
  String get mosques => 'मस्जिदों';

  @override
  String get halalFood => 'हलाल भोजन';

  @override
  String get placesSearchArea => 'यह क्षेत्र खोजें';

  @override
  String get nearbyMosques => 'आसपास की मस्जिदें';

  @override
  String get islamicSchools => 'इस्लामिक स्कूल';

  @override
  String placesFoundCount(String count) {
    return '$count मिला';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance किमी दूर';
  }

  @override
  String placesApiError(String statusCode) {
    return 'एपीआई त्रुटि: $statusCode';
  }

  @override
  String get placesNetworkError => 'नेटवर्क त्रुटि। कृपया पुन: प्रयास करें।';

  @override
  String get placesLocationRequiredTitle => 'स्थान आवश्यक है';

  @override
  String get placesLocationRequiredBody =>
      'पहले एक स्थान निर्धारित करें ताकि आस-पास की मस्जिदों, हलाल भोजन और इस्लामिक स्कूलों को सटीक रूप से खोजा जा सके।';

  @override
  String get placesMapTilesUnavailableTitle => 'मानचित्र टाइलें अनुपलब्ध हैं';

  @override
  String get placesMapTilesUnavailableBody =>
      'इस निर्माण के लिए सत्यापित मानचित्र टाइल स्रोत अभी तक कॉन्फ़िगर नहीं किया गया है। आस-पास के स्थान अभी भी आपके सहेजे गए स्थान से लोड हो सकते हैं।';

  @override
  String get placesDataSourceUnavailableTitle => 'स्थानों का डेटा अनुपलब्ध है';

  @override
  String get placesDataSourceUnavailableBody =>
      'इस बिल्ड के लिए सत्यापित स्थान डेटा एंडपॉइंट अभी तक कॉन्फ़िगर नहीं किया गया है। आस-पास की खोज को सक्षम करने से पहले PLACES_OVERPASS_API_URL को किसी स्वीकृत प्रॉक्सी या प्रदाता पर सेट करें।';

  @override
  String get unknownPlaceName => 'अज्ञात नाम';

  @override
  String get islamicPlaceFallback => 'इस्लामिक स्थान';

  @override
  String get asmaMeaning1 => 'उपकारी';

  @override
  String get asmaMeaning2 => 'दयालु';

  @override
  String get asmaMeaning3 => 'राजा/शाश्वत भगवान';

  @override
  String get asmaMeaning4 => 'परम पवित्र';

  @override
  String get asmaMeaning5 => 'शांति का स्रोत';

  @override
  String get asmaMeaning6 => 'सुरक्षा का दाता';

  @override
  String get asmaMeaning7 => 'अभिभावक';

  @override
  String get asmaMeaning8 => 'सबसे कीमती/सबसे ताकतवर';

  @override
  String get asmaMeaning9 =>
      'The Restorer and Irresistible, whose will prevails with perfect power.';

  @override
  String get asmaMeaning10 => 'महानतम';

  @override
  String get asmaMeaning11 => 'निर्माता';

  @override
  String get asmaMeaning12 => 'ऑर्डर का निर्माता';

  @override
  String get asmaMeaning13 => 'सुंदरता को आकार देने वाला';

  @override
  String get asmaMeaning14 => 'क्षमा करने वाला';

  @override
  String get asmaMeaning15 => 'मातहत';

  @override
  String get asmaMeaning16 => 'सबका दाता';

  @override
  String get asmaMeaning17 => 'पालनकर्ता';

  @override
  String get asmaMeaning18 => 'खोलने वाला';

  @override
  String get asmaMeaning19 => 'सब कुछ जानने वाला';

  @override
  String get asmaMeaning20 =>
      'The Withholder, who narrows and restrains by wisdom.';

  @override
  String get asmaMeaning21 =>
      'The Expander, who opens, eases, and grants abundance by wisdom.';

  @override
  String get asmaMeaning22 => 'अबेसर';

  @override
  String get asmaMeaning23 => 'द एक्साल्टर';

  @override
  String get asmaMeaning24 => 'मान-सम्मान देने वाला';

  @override
  String get asmaMeaning25 => 'अपमानित करने वाला';

  @override
  String get asmaMeaning26 => 'सबकी सुननेवाला';

  @override
  String get asmaMeaning27 => 'सबका द्रष्टा';

  @override
  String get asmaMeaning28 => 'जज';

  @override
  String get asmaMeaning29 => 'तुरंत';

  @override
  String get asmaMeaning30 => 'सूक्ष्म एक';

  @override
  String get asmaMeaning31 => 'सर्व जागरूक';

  @override
  String get asmaMeaning32 => 'पूर्वाभास';

  @override
  String get asmaMeaning33 => 'शानदार';

  @override
  String get asmaMeaning34 => 'महान क्षमाशील';

  @override
  String get asmaMeaning35 => 'कृतज्ञता का प्रतिफल देने वाला';

  @override
  String get asmaMeaning36 => 'उच्चतम';

  @override
  String get asmaMeaning37 => 'महानतम';

  @override
  String get asmaMeaning38 => 'संरक्षक';

  @override
  String get asmaMeaning39 => 'पोषण देनेवाला';

  @override
  String get asmaMeaning40 => 'रेकनर';

  @override
  String get asmaMeaning41 => 'राजसी';

  @override
  String get asmaMeaning42 => 'उदार';

  @override
  String get asmaMeaning43 => 'चौकस व्यक्ति';

  @override
  String get asmaMeaning44 => 'प्रार्थना का उत्तर देने वाला';

  @override
  String get asmaMeaning45 => 'सब कुछ समझने वाला';

  @override
  String get asmaMeaning46 => 'बिल्कुल बुद्धिमान';

  @override
  String get asmaMeaning47 => 'प्यार करने वाला';

  @override
  String get asmaMeaning48 => 'सबसे शानदार';

  @override
  String get asmaMeaning49 => 'पुनरुत्थानकर्ता';

  @override
  String get asmaMeaning50 => 'साक्षी';

  @override
  String get asmaMeaning51 => 'सच्चाई';

  @override
  String get asmaMeaning52 => 'सर्व-पर्याप्त ट्रस्टी';

  @override
  String get asmaMeaning53 => 'समस्त शक्ति का स्वामी';

  @override
  String get asmaMeaning54 => 'ज़बरदस्त';

  @override
  String get asmaMeaning55 => 'रक्षक';

  @override
  String get asmaMeaning56 => 'स्तुति की गई';

  @override
  String get asmaMeaning57 => 'मूल्यांकनकर्ता';

  @override
  String get asmaMeaning58 => 'प्रवर्तक';

  @override
  String get asmaMeaning59 => 'पुनर्स्थापक';

  @override
  String get asmaMeaning60 => 'जीवन दाता';

  @override
  String get asmaMeaning61 => 'जीवन लेने वाला';

  @override
  String get asmaMeaning62 => 'द एवर लिविंग';

  @override
  String get asmaMeaning63 => 'स्वयंभू पालनकर्ता';

  @override
  String get asmaMeaning64 => 'खोजक';

  @override
  String get asmaMeaning65 => 'गौरवशाली';

  @override
  String get asmaMeaning66 => 'एकमात्र';

  @override
  String get asmaMeaning67 => 'एक';

  @override
  String get asmaMeaning68 => 'वह जिसे सभी ने चाहा';

  @override
  String get asmaMeaning69 => 'शक्तिशाली';

  @override
  String get asmaMeaning70 => 'सारी शक्ति का निर्माता';

  @override
  String get asmaMeaning71 => 'द एक्सपेडिटर';

  @override
  String get asmaMeaning72 => 'देरी करने वाला';

  @override
  String get asmaMeaning73 => 'पहला';

  @override
  String get asmaMeaning74 => 'आखिरी';

  @override
  String get asmaMeaning75 => 'प्रकट';

  @override
  String get asmaMeaning76 => 'छिपा हुआ';

  @override
  String get asmaMeaning77 => 'गर्वनर';

  @override
  String get asmaMeaning78 => 'सर्वोच्च एक';

  @override
  String get asmaMeaning79 => 'भलाई करने वाला';

  @override
  String get asmaMeaning80 => 'पश्चाताप के लिए मार्गदर्शिका';

  @override
  String get asmaMeaning81 => 'बदला लेने वाला';

  @override
  String get asmaMeaning82 => 'क्षमा करने वाला';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'सबका स्वामी/संप्रभु';

  @override
  String get asmaMeaning85 => 'महिमा और इनाम का स्वामी';

  @override
  String get asmaMeaning86 => 'न्यायसंगत एक';

  @override
  String get asmaMeaning87 => 'संग्राहक';

  @override
  String get asmaMeaning88 => 'एक अमीर';

  @override
  String get asmaMeaning89 => 'समृद्ध करने वाला';

  @override
  String get asmaMeaning90 => 'हानि निवारक';

  @override
  String get asmaMeaning91 => 'हानि पहुंचाने वाला';

  @override
  String get asmaMeaning92 => 'लाभ देने वाला';

  @override
  String get asmaMeaning93 => 'प्रकाश';

  @override
  String get asmaMeaning94 => 'मार्गदर्शक';

  @override
  String get asmaMeaning95 => 'प्रवर्तक';

  @override
  String get asmaMeaning96 => 'चिरस्थायी';

  @override
  String get asmaMeaning97 => 'उत्तराधिकारी';

  @override
  String get asmaMeaning98 => 'सबसे धर्मी मार्गदर्शक';

  @override
  String get asmaMeaning99 =>
      'The Patient, who does not hasten punishment and acts with perfect forbearance.';
}
