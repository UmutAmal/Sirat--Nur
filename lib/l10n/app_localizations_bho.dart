// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bhojpuri (`bho`).
class AppLocalizationsBho extends AppLocalizations {
  AppLocalizationsBho([String locale = 'bho']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Islamic Way of Light';

  @override
  String get home => 'घर';

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
  String get nextPrayer => 'अगिला प्रार्थना बा';

  @override
  String get prayerTimes => 'प्रार्थना के समय बा';

  @override
  String get continueReading => 'पढ़ल जारी राखीं';

  @override
  String get getLifetimePro => 'लाइफटाइम प्रो मिल जाला';

  @override
  String get unlockTajweed => 'तजवीद अउर एडवांस फीचर के अनलॉक करीं';

  @override
  String get prayerCalculation => 'प्रार्थना के गणना कइल जाला';

  @override
  String get method => 'गणना के तरीका';

  @override
  String get madhab => 'असर न्यायिक विधि';

  @override
  String get surahs => 'सूरह सभ';

  @override
  String get ayahs => 'आयत सभ';

  @override
  String get fajr => 'फजर';

  @override
  String get sunrise => 'सूर्योदय';

  @override
  String get dhuhr => 'धुहर';

  @override
  String get asr => 'अस्र';

  @override
  String get maghrib => 'मगरिब';

  @override
  String get isha => 'ईशा';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName के समय।';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '$prayerName प्रार्थना करे के समय आ गईल बा।';
  }

  @override
  String get dataStorage => 'डाटा अउर स्टोरेज';

  @override
  String get clearCache => 'कैश के साफ कर दिहल जाव';

  @override
  String get cacheClearedSuccess => 'कैश सफलतापूर्वक साफ हो गइल';

  @override
  String get location => 'लोकेशन';

  @override
  String get language => 'भाषा';

  @override
  String get selectLanguage => 'भाषा के चयन करीं';

  @override
  String get searchLanguage => '180+ भाषा के खोज करीं...';

  @override
  String get systemDefault => 'सिस्टम डिफ़ॉल्ट बा';

  @override
  String get currentLocation => 'वर्तमान स्थान (जीपीएस)';

  @override
  String get locationServiceDisabled => 'लोकेशन सेवा अक्षम बा।';

  @override
  String get locationPermissionDenied =>
      'लोकेशन के अनुमति से इनकार कर दिहल गइल.';

  @override
  String get locationDetectionFailed =>
      'राउर लोकेशन के पता ना चल पावल. कृपया कवनो शहर के मैन्युअल रूप से चुनीं या फिर से कोशिश करीं।';

  @override
  String citiesCount(String count) {
    return '$count शहर';
  }

  @override
  String get search => 'खोजल जाव';

  @override
  String get searchHint => 'खोज करीं...';

  @override
  String get noResults => 'No results found';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get appErrorOccurred => 'एगो त्रुटि हो गइल';

  @override
  String get appUnknownError => 'अज्ञात त्रुटि हो गइल बा';

  @override
  String get quranLoadFailed =>
      'कुरान के सामग्री लोड ना हो सकल। कृपया दोबारा कोशिश करीं।';

  @override
  String get retry => 'दोबारा कोशिश करीं';

  @override
  String get refreshAction => 'Refresh';

  @override
  String get cancel => 'रद्द कर दिहल जाव';

  @override
  String get save => 'बचाईं';

  @override
  String get delete => 'Delete';

  @override
  String get edit => 'संपादन कइल जाला';

  @override
  String get close => 'बंद कर दीं';

  @override
  String get ok => 'ठीक बा';

  @override
  String get yes => 'हँ, हँ, हँ';

  @override
  String get no => 'ना';

  @override
  String get surah => 'सूरह';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'जुज';

  @override
  String get page => 'पन्ना';

  @override
  String get reading => 'पढ़त बानी';

  @override
  String get recitation => 'पाठ कइल जाला';

  @override
  String get translation => 'अनुवाद';

  @override
  String get tafsir => 'तफसीर';

  @override
  String get tafsirLoading => 'तफसीर लोड हो रहल बा...';

  @override
  String get tafsirSourceLabel => 'तफसीर के स्रोत बा';

  @override
  String get tafsirNoSurahFound => 'एह सूरह खातिर कवनो तफसीर ना मिलल.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'आयत $ayah खातिर कवनो तफसीर ना मिलल।';
  }

  @override
  String get tafsirLoadFailed => 'तफसीर के लोड ना हो पावल।';

  @override
  String get tafsirNoTextForAyah => 'एह आयत खातिर कवनो तफसीर पाठ नइखे.';

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
    return 'तफसीर स्रोत एगो HTTP $statusCode त्रुटि वापस कइले बा।';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'चुनल तफसीर स्रोत कवनो प्रविष्टि ना लवटा दिहलसि.';

  @override
  String get tafsirCacheUnavailable =>
      'सत्यापन तफसिर अभी तक ऑफलाइन उपलब्ध नइखे। ब्राउजिंग से पहिले कवनो सोर्स कइल तफसीर डाटासेट के सिंक करीं।';

  @override
  String get bookmarks => 'बुकमार्क';

  @override
  String get addBookmark => 'बुकमार्क जोड़ल जाला';

  @override
  String get removeBookmark => 'बुकमार्क के हटा दिहल जाव';

  @override
  String get lastRead => 'आखिरी बेर पढ़ल गइल';

  @override
  String get dailyZikr => 'रोजाना जिक्र';

  @override
  String get duaMeaning1 =>
      'दोसरा लोग प्रार्थना करेला कि ‘हमार प्रभु, हमनी के दुनिया आ परलोक में भलाई दे, आ आग के यातना से बचाईं।’';

  @override
  String get duaMeaning2 =>
      'भगवान कवनो आत्मा पर ओकरा से अधिका बोझ ना डालेलें: हर केहू के जवन भी अच्छाई भइल बा ओकरा के फायदा होला, आ ओकर बुराई भोगेला- ‘ प्रभु, अगर हमनी के भुला जानी जा भा गलती करब जा त हमनी के काम पर मत लगाईं। प्रभु, हमनी पर ओइसहीं बोझ मत डालऽ जइसे हमनी से पहिले के लोग पर बोझ डालले रहलू। प्रभु, हमनी पर जेतना ताकत बा ओकरा से अधिका बोझ मत डालीं। हमनी के माफ करऽ, हमनी के माफ करऽ आ हमनी पर दया करऽ। तू हमनी के रक्षक हउअ, त काफिरन के खिलाफ हमनी के मदद करीं।’';

  @override
  String get duaMeaning3 =>
      '‘हमार प्रभु, रउआ हमनी के मार्गदर्शन कइला के बाद हमनी के दिल के विचलित मत होखे दीं। हमनी के आपन दया दीं: तू हमेशा देवे वाला हउअ।';

  @override
  String get duaMeaning4 =>
      'प्रभु, हम आ हमार संतान के प्रार्थना जारी राखे के अनुमति दीं। हमार प्रभु, हमार निहोरा स्वीकार करीं।';

  @override
  String get duaMeaning5 =>
      'आ दयालुता से ओह लोग के प्रति विनम्रता से आपन पाँख नीचे कर के कहऽ कि ‘प्रभु, ओह लोग पर दया करऽ, ठीक ओइसहीं जइसे ऊ लोग हमरा के छोट रहनी त हमार परवाह कइले रहे.’';

  @override
  String get duaMeaning6 =>
      'उदात्त होखे भगवान, जे सही मायने में नियंत्रण में बा। [नबी], प्रकटीकरण पूरा होखे से पहिले पाठ करे में जल्दबाजी मत करीं बाकिर कह दीं कि ‘प्रभु, हमरा के ज्ञान बढ़ाईं!’';

  @override
  String get duaMeaning7 =>
      '[नबी] कहऽ, ‘प्रभु, माफ करऽ आ दया करऽ: तू सभसे दयालु हउअ।’';

  @override
  String get duaMeaning8 =>
      'जे प्रार्थना करेला कि ‘हमार प्रभु, हमनी के जीवनसाथी आ संतान में आनन्द दीं। जे तोहरा से अवगत बा ओकरा खातिर हमनी के बढ़िया उदाहरण बनाईं’।';

  @override
  String get morningZikr => 'सबेरे के जिक्र';

  @override
  String get eveningZikr => 'शाम के जिक्र';

  @override
  String get tasbih => 'तसबीह';

  @override
  String get ahkab => 'अहकम';

  @override
  String get masaail => 'मसा\'इल';

  @override
  String get hadith => 'हदीस';

  @override
  String get hadithCollection => 'हदीस संग्रह';

  @override
  String get hadithBooks => 'हदीस के किताबन';

  @override
  String get searchHadith => 'हदीस के खोज करीं';

  @override
  String get asmaulHusna => 'असमा-उल-हुसना के नाम से जानल जाला';

  @override
  String get namesOfAllah => 'अल्लाह के नाम के नाम बा';

  @override
  String get liveTv => 'लाइव टीवी पर बा';

  @override
  String get watchLive => 'लाइव देखल जाव';

  @override
  String get streamError => 'स्ट्रीम के त्रुटि हो गइल बा';

  @override
  String get reload => 'रिलोड कइल जाव';

  @override
  String get openInYoutube => 'यूट्यूब में खुलल बा';

  @override
  String get ibadahTracker => 'इबादत ट्रैकर';

  @override
  String get fasting => 'रोजा';

  @override
  String get quranReading => 'कुरान पढ़ाई';

  @override
  String get playSurahAudio => 'सूरह के ऑडियो चलाईं';

  @override
  String get pauseSurahAudio => 'सूरह ऑडियो के रोक दिहल जाव';

  @override
  String get revelationMeccan => 'मक्का';

  @override
  String get revelationMedinan => 'मदीना';

  @override
  String get prayers => 'दुआ कइल जाला';

  @override
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '$hours घंटा $minutes मिनट';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '$minutes मिनट';
  }

  @override
  String get prayerRemainingUnavailable => '--';

  @override
  String get dhikrCount => 'ढिकर गिनती';

  @override
  String get weeklyProgress => 'साप्ताहिक प्रगति';

  @override
  String get monthlyProgress => 'मासिक प्रगति';

  @override
  String get statistics => 'आँकड़ा के जानकारी दिहल गइल बा';

  @override
  String get hijriCalendar => 'हिजरी कैलेंडर';

  @override
  String get gregorianCalendar => 'ग्रेगोरियन कैलेंडर';

  @override
  String get today => 'आज के समय में';

  @override
  String get tomorrow => 'काल्हु';

  @override
  String get yesterday => 'बीते काल्हु';

  @override
  String get specialDays => 'खास दिन';

  @override
  String get ramadan => 'रमजान';

  @override
  String get eidAlFitr => 'ईद अल-फितर';

  @override
  String get eidAlAdha => 'ईद अल-अधा';

  @override
  String get islamicNewYear => 'इस्लामी नया साल';

  @override
  String get mawlidAnNabi => 'मौलिद अन-नबी';

  @override
  String get specialDayDateRamadanStart => '1 रमजान';

  @override
  String get specialDayDateLaylatAlQadr => '27 रमजान';

  @override
  String get specialDayDateEidAlFitr => '1 शव्वाल';

  @override
  String get specialDayDateEidAlAdha => '10 धुल हिज्जा';

  @override
  String get specialDayDateIslamicNewYear => '1 मुहर्रम';

  @override
  String get specialDayDateMawlidAnNabi => '12 रबी अल-अव्वल';

  @override
  String get laylatAlQadr => 'लैलात अल-कदर';

  @override
  String get qiblaDirection => 'किबला दिशा';

  @override
  String get compass => 'कम्पास';

  @override
  String get degrees => 'डिग्री';

  @override
  String get north => 'उत्तर';

  @override
  String get qiblaFound => 'किबला मिल गइल!';

  @override
  String get turnDevice => 'किबला के ओर मुँह करे खातिर आपन डिवाइस घुमाईं';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'कम्पास त्रुटि: $error बा।';
  }

  @override
  String get qiblaSensorUnavailable => 'एह डिवाइस पर कम्पास सेंसर उपलब्ध नइखे.';

  @override
  String get qiblaLocationRequiredTitle => 'Location required for Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'किबला कम्पास के इस्तेमाल से पहिले आपन वास्तविक स्थान सेट करीं ताकि दिशा के सही गणना कईल जा सके।';

  @override
  String get adhanNotificationChannelName => 'Adhan Notifications';

  @override
  String get adhanNotificationChannelDescription =>
      'Prayer time alerts with adhan sound.';

  @override
  String get notifications => 'सूचना दिहल गइल बा';

  @override
  String get prayerNotifications => 'प्रार्थना के सूचना दिहल जाला';

  @override
  String get enableNotifications => 'सूचना के सक्षम करीं';

  @override
  String get notificationTime => 'सूचना के समय बा';

  @override
  String get beforePrayer => 'नमाज से कुछ मिनट पहिले';

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
  String get termsOfService => 'सेवा के शर्त बा';

  @override
  String get contactUs => 'हमनी से संपर्क करीं';

  @override
  String get rateApp => 'ऐप रेट करीं';

  @override
  String get shareApp => 'ऐप शेयर करीं';

  @override
  String shareAppMessage(String appName, String url) {
    return 'ई $appName देखीं: बेहतरीन इस्लामी जीवनशैली ऐप! $url';
  }

  @override
  String get downloadManager => 'डाउनलोड प्रबंधक';

  @override
  String get downloads => 'डाउनलोड हो गइल बा';

  @override
  String get downloading => 'डाउनलोड हो रहल बा...';

  @override
  String get downloadComplete => 'डाउनलोड पूरा हो गइल बा';

  @override
  String get downloadFailed => 'डाउनलोड फेल हो गइल';

  @override
  String get offlineMode => 'ऑफलाइन मोड';

  @override
  String get noInternet => 'No Internet Connection';

  @override
  String get checkConnection => 'कृपया आपन कनेक्शन के जांच करीं';

  @override
  String get premium => 'प्रीमियम';

  @override
  String get upgradeToPro => 'प्रो में अपग्रेड करीं';

  @override
  String get proFeatures => 'प्रो फीचर बा';

  @override
  String get removeAds => 'विज्ञापन हटा दिहल जाव';

  @override
  String get unlockAll => 'सभ सामग्री के अनलॉक करीं';

  @override
  String get exclusiveContent => 'विशेष सामग्री';

  @override
  String get welcome => 'स्वागत बा';

  @override
  String get getStarted => 'शुरू कर दीं';

  @override
  String get skip => 'छोड़ दिहल जाव';

  @override
  String get next => 'आगे';

  @override
  String get done => 'हो गइल बा';

  @override
  String get onboarding1Title => 'सिरात-ı नूर में राउर स्वागत बा';

  @override
  String get onboarding1Desc =>
      'नमाज के समय, कुरान, आ अउरी बहुत कुछ खातिर राउर पूरा इस्लामी साथी ऐप';

  @override
  String get onboarding2Title => 'प्रार्थना के समय बा';

  @override
  String get onboarding2Desc => 'आपके स्थान के आधार पर सही प्रार्थना के समय';

  @override
  String get onboarding3Title => 'कुरान अउर अउरी बहुत कुछ';

  @override
  String get onboarding3Desc =>
      'कुरान पढ़ीं, आपन पढ़ाई के ट्रैक करीं, आ इस्लामी सामग्री के खोज करीं';

  @override
  String get dhikrLibrary => 'ढिकर लाइब्रेरी';

  @override
  String get resetCounter => 'काउंटर के रीसेट करीं';

  @override
  String get changeTarget => 'लक्ष्य बदलीं';

  @override
  String get newTarget => 'नया लक्ष्य बा';

  @override
  String targetCount(Object target) {
    return 'लक्ष्य: $target';
  }

  @override
  String get tapToCount => 'गिनती करे खातिर टैप करीं';

  @override
  String get zikrCompletedMashAllah => 'पूरा हो गइल! मशअल्लाह';

  @override
  String get zikrMeaningSubhanAllah => 'अल्लाह हर अपूर्णता से बहुत ऊपर बाड़े।';

  @override
  String get zikrMeaningAlhamdulillah => 'सब तारीफ अल्लाह के ह।';

  @override
  String get zikrMeaningAllahuAkbar => 'अल्लाह सबसे बड़ बाड़े।';

  @override
  String get zikrMeaningLaIlahaIllallah => 'अल्लाह के अलावा कवनो देवता नइखे।';

  @override
  String get zikrMeaningAstaghfirullah => 'अल्लाह से माफी मांगत बानी।';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'अल्लाह के सिवाय कवनो शक्ति आ कवनो ताकत नइखे.';

  @override
  String get dailyChecklist => 'रोजाना के चेकलिस्ट बा';

  @override
  String get qazaDebt => 'काजा (कर्ज)';

  @override
  String get resetQazaData => 'काजा डेटा के रीसेट करीं';

  @override
  String get resetQazaDebtQuestion => 'काजा कर्ज के रीसेट करीं?';

  @override
  String get rawatib => 'रवातिब';

  @override
  String get tahajjud => 'तहज्जुद';

  @override
  String get dailyProgress => 'रोजाना प्रगति';

  @override
  String get mandatoryPrayers => 'अनिवार्य प्रार्थना कइल जाला';

  @override
  String get sunnahAndOthers => 'सुन्नत अउर अन्य लोग';

  @override
  String get spiritualGrowth => 'आध्यात्मिक विकास';

  @override
  String get mandatoryDuty => 'अनिवार्य कर्तव्य';

  @override
  String get totalPrayers => 'कुल प्रार्थना कइल गइल';

  @override
  String get prayerDebt => 'प्रार्थना के कर्जा बा';

  @override
  String get fastingDebt => 'उपवास के कर्जा बा';

  @override
  String get reset => 'रीसेट हो गइल बा';

  @override
  String get days => 'दिन';

  @override
  String get premiumIntegrity => 'प्रीमियम अखंडता';

  @override
  String get recheckPremium => 'प्रीमियम सदस्यता के स्थिति के दोबारा जांच करीं';

  @override
  String get syncStore =>
      'अपना प्रीमियम सदस्यता के पुष्टि करे खातिर ऐप स्टोर से सिंक करीं।';

  @override
  String get checkingPremium => 'प्रीमियम के स्थिति के जांच हो रहल बा...';

  @override
  String get premiumVerified => 'प्रीमियम सदस्यता के सत्यापन हो गइल.';

  @override
  String get premiumNotFound => 'प्रीमियम सदस्यता ना मिलल.';

  @override
  String premiumRefreshError(Object error) {
    return 'प्रीमियम सदस्यता के स्थिति ताजा ना हो पावल: $error';
  }

  @override
  String get offlineDownloadManager => 'ऑफलाइन डाउनलोड प्रबंधक';

  @override
  String get manageDatasets =>
      'भारी ऑफलाइन ऑडियो & डाटासेट पैक के प्रबंधन करीं।';

  @override
  String get freeStorage => 'आंतरिक डिवाइस भंडारण के मुक्त कर दीं।';

  @override
  String get quranIntegrity => 'कुरान के अखंडता';

  @override
  String get checkQuranDb => 'कुरान डाटाबेस के जांच करीं';

  @override
  String get verifyQuranContent => '114 सूरह आ 6236 आयत के सत्यापन करीं।';

  @override
  String get checkingQuranDb => 'कुरान के डाटाबेस के जांच करत...';

  @override
  String get okLabel => 'ठीक बा';

  @override
  String get incomplete => 'अधूरा बा';

  @override
  String get notSeeded => 'बीज ना लगावल गइल';

  @override
  String get quranDbStatus => 'कुरान डाटाबेस के स्थिति बा';

  @override
  String statusLabel(Object status) {
    return 'स्थिति: $status';
  }

  @override
  String surahsCount(Object count) {
    return 'सूरह: $count (114 के उम्मीद बा)';
  }

  @override
  String ayahsCount(Object count) {
    return 'अयहस: $count (6236 के उम्मीद बा)';
  }

  @override
  String missingArabic(Object count) {
    return 'अरबी गायब बा: $count।';
  }

  @override
  String missingTurkish(Object count) {
    return 'लापता तुर्की: $count';
  }

  @override
  String dbVersion(Object version) {
    return 'डीबी संस्करण: $version';
  }

  @override
  String dbPath(Object path) {
    return 'पथ: $path';
  }

  @override
  String quranCheckFailed(Object error) {
    return 'कुरान जांच फेल हो गइल: $error';
  }

  @override
  String get audioVoice => 'ऑडियो आवाज बा';

  @override
  String get audioVoiceMisharyAlafasy => 'Male (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Male (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Male (Sudais)';

  @override
  String get fajrAngle => 'फजर एंगल';

  @override
  String get ishaAngle => 'ईशा एंगल';

  @override
  String get qiblaCalibration => 'किबला कैलिब्रेशन';

  @override
  String get compassSmoothing => 'कम्पास स्मूथिंग के काम होला';

  @override
  String get reduceSensorJitter => 'स्थिर सुई खातिर सेंसर के जिटर कम करीं।';

  @override
  String get calibrationOffset => 'कैलिब्रेशन ऑफसेट';

  @override
  String currentOffset(Object offset) {
    return 'वर्तमान: $offset° बा';
  }

  @override
  String get manualCorrectionDesc =>
      'अगर आपके कम्पास के मैनुअल सुधार के जरूरत बा त समायोजित करीं। सकारात्मक मान घड़ी के दिशा में घूमेला।';

  @override
  String get apply => 'बदलाव के लागू करीं';

  @override
  String get resetOnboarding => 'परिचय सेटअप के रीसेट करीं';

  @override
  String get rerunSetup => 'शुरुआती सेटअप प्रक्रिया के दोबारा चलाईं।';

  @override
  String get diagnostics => 'निदान के काम कइल जाला';

  @override
  String get diagnosticsNotSet => 'सेट नइखे भइल';

  @override
  String get diagnosticsPrayerProfile => 'प्रार्थना के प्रोफाइल बा';

  @override
  String get diagnosticsPrayerSource => 'प्रार्थना प्राधिकरण';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'कस्टम / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'मैनुअल कस्टम कोण (कोई संस्थागत स्रोत ना)';

  @override
  String diagnosticsPrayerHybridSource(String sourceName, String madhab) {
    return '$sourceName तरीका उपयोगकर्ता द्वारा चुनल $madhab Asr सेटिंग के साथ';
  }

  @override
  String diagnosticsPrayerRegionalFallbackSource(String sourceName) {
    return '$sourceName के उपयोग करके क्षेत्रीय फॉलबैक। स्थानीय नमाज के समय के पुष्टि अपना मस्जिद या आधिकारिक धार्मिक प्राधिकरण से करीं।';
  }

  @override
  String get diagnosticsCloudDriven => 'बादल संचालित बा';

  @override
  String get diagnosticsAdhanAudioAssets => 'अधान ऑडियो एसेट्स';

  @override
  String get diagnosticsUiAudioAssets => 'यूआई ऑडियो एसेट्स';

  @override
  String get diagnosticsQuranAudioAssets => 'कुरान के ऑडियो संपत्ति बा';

  @override
  String get diagnosticsAudioAssets => 'ऑडियो एसेट्स';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count फाइल';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'मेनिफेस्ट रीड फेल हो गइल: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'स्थानीयकरण लोकेल';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count समर्थित बा';
  }

  @override
  String get diagnosticsQuranDataset => 'कुरान डेटासेट';

  @override
  String get diagnosticsQuranSurahs => 'कुरान के सूरह सभ';

  @override
  String get diagnosticsQuranAyahs => 'कुरान के आयत सभ';

  @override
  String get diagnosticsQuranJuzMetadata => 'कुरान जुज मेटाडाटा';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Supabase में क्लाउड टेबल गायब बा; बंडल फॉलबैक सक्रिय बा';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'क्लाउड जांच विफल हो गइल: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'बादल जुज मेटाडाटा गायब बा; बंडल संरचनात्मक फॉलबैक सक्रिय बा';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'क्लाउड संरचनात्मक जांच विफल हो गइल: $error';
  }

  @override
  String get healthCheckDesc =>
      'स्वास्थ्य जांच चलाईं आ सिस्टम के स्थिति देखीं.';

  @override
  String get qiblaAligned => 'किबला संरेखित हो गइल';

  @override
  String get rotateToFindQibla => 'किबला के खोजे खातिर घुमाईं';

  @override
  String get calibrationRequiredFigure8 =>
      'कैलिब्रेशन के जरूरत बा। चित्र-8 में डिवाइस के घुमावल जाला।';

  @override
  String get dailyVerse => 'दैनिक आयत';

  @override
  String get dailyVerseUnavailableTitle => 'दैनिक छंद अनुपलब्ध बा';

  @override
  String get dailyVerseUnavailableBody =>
      'सत्यापन कइल गइल दैनिक छंद सामग्री एह बिल्ड खातिर अबहीं ले कॉन्फ़िगर नइखे कइल गइल। ब्राउजिंग से पहिले क्लाउड स्रोत से कनेक्ट करीं भा कवनो सत्यापन कैश के सिंक करीं.';

  @override
  String get todaysIbadah => 'आज के इबादत';

  @override
  String get quickAccess => 'त्वरित पहुँच';

  @override
  String get assistant => 'सहायक';

  @override
  String get places => 'जगह';

  @override
  String get library => 'पुस्तकालय';

  @override
  String get analytics => 'विश्लेषण';

  @override
  String get dailyDuas => 'रोजाना दुआ';

  @override
  String essentialDuas(String count) {
    return '$count जरूरी दुआ';
  }

  @override
  String get duaUnavailableTitle => 'सत्यापन दुआ अभी तक उपलब्ध नइखे';

  @override
  String get duaUnavailableBody =>
      'सत्यापन कइल गइल दैनिक दुआ अबहीं ले एह डिवाइस पर सिंक नइखे भइल. असत्यापित फॉलबैक के बजाय सोर्स कइल दुआ लोड करे खातिर क्लाउड स्रोत से कनेक्ट होखीं।';

  @override
  String get duaCategoryQuranic => 'कुरान के दुआ';

  @override
  String get duaCategoryMorningEvening => 'सुबह & शाम के समय';

  @override
  String get duaCategoryTasbih => 'तसबीह';

  @override
  String get duaCategoryProtection => 'संरक्षण के काम होला';

  @override
  String get duaCategoryBeginning => 'शुरुआत भइल बा';

  @override
  String get duaCategorySleep => 'सुतल';

  @override
  String get duaCategoryFoodDrink => 'खाए-पीए के सामान';

  @override
  String get duaCategoryForgiveness => 'माफी';

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
  String get sukunAudioTitle => 'सुकुन साउंडस्केप';

  @override
  String get hadithCollections => 'हदीस संग्रह';

  @override
  String get hadithSourcePending => 'सत्यापन स्रोत लंबित बा';

  @override
  String get hadithUnavailableTitle =>
      'सत्यापन कइल हदीस संग्रह अभी तक उपलब्ध नइखे';

  @override
  String get hadithUnavailableBody =>
      'ई बिल्ड अबहियों एगो असत्यापित बाहरी हदीस फीड पर निर्भर बा. जबले कवनो सोर्स कइल डाटासेट सिंक ना हो जाला तबले हदीस ब्राउजिंग अक्षम रहेला.';

  @override
  String get paywallUnlockAll =>
      'अपना आध्यात्मिक यात्रा खातिर सभ फीचर के अनलॉक करीं';

  @override
  String get premiumProductUnavailable =>
      'प्रीमियम उत्पाद अभी उपलब्ध नईखे। कृपया बाद में दोबारा कोशिश करीं।';

  @override
  String get premiumPurchaseFailed =>
      'खरीददारी पूरा ना हो पावल। कृपया दोबारा कोशिश करीं।';

  @override
  String get paywallFeature1Title => 'न्यूरल असिस्टेंट प्लस';

  @override
  String get paywallFeature1Desc => 'असीमित एआई से चले वाला क्यू एंड ए';

  @override
  String get paywallFeature2Title => 'असीमित ऑफलाइन बा';

  @override
  String get paywallFeature2Desc => 'सगरी पाठ डाउनलोड करीं';

  @override
  String get paywallFeature3Title => 'एक्सक्लूसिव डिजाइन';

  @override
  String get paywallFeature3Desc => 'प्रीमियम थीम अउर फॉन्ट';

  @override
  String get paywallFeature4Title => 'विज्ञापन मुक्त बा';

  @override
  String get paywallFeature4Desc => 'विज्ञापन शून्य बा';

  @override
  String get paywallGetAccess => 'आजीवन पहुँच पाईं — \$ 1.00 बा';

  @override
  String get restorePurchases => 'खरीददारी के बहाल कर दिहल जाव';

  @override
  String get zakatCalculator => 'जकात कैलकुलेटर';

  @override
  String get zakatGold => 'सोना (Altın)';

  @override
  String get zakatSilver => 'चांदी (Gümüş)';

  @override
  String get zakatCashBank => 'नकद / बैंक';

  @override
  String get zakatBusiness => 'कारोबार';

  @override
  String get zakatInvestments => 'निवेश';

  @override
  String get zakatWeightGrams => 'वजन (ग्राम)';

  @override
  String get zakatPricePerGram => 'दाम/ग्राम';

  @override
  String get zakatTotalAmount => 'कुल रकम';

  @override
  String get zakatInventoryValue => 'इन्वेंट्री के मूल्य';

  @override
  String get zakatDebts => 'कर्ज';

  @override
  String get zakatTotal => 'कुल';

  @override
  String get calculateZakat => 'जकात के गणना करीं';

  @override
  String get nisabNotReached => 'निसाब ना पहुँचल। जकात जरूरी नइखे।';

  @override
  String get totalZakat => 'कुल जकात';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'सोना के जकात दिहल गइल';

  @override
  String get zakatSilverZakat => 'चांदी के जकात दिहल गइल';

  @override
  String get zakatCashZakat => 'नकद जकात';

  @override
  String get zakatBusinessZakat => 'बिजनेस जकात';

  @override
  String get zakatInvestmentZakat => 'निवेश जकात';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'रोजाना क्वेरी के सीमा तक पहुंच गईल। असीमित खातिर प्रीमियम में अपग्रेड करीं।';

  @override
  String get chatbotErrorMsg =>
      'हम कवनो प्रतिक्रिया ना पैदा कर पवनी। कृपया दोबारा कोशिश करीं।';

  @override
  String get chatbotOfflinePrompt =>
      'सत्यापन कइल ऑफलाइन इस्लामी ज्ञान आधार के अबहीं ले क्यूरेट कइल जा रहल बा. अब रउआँ ऑफलाइन फॉलबैक सक्षम क सकत बानी, बाकी ई तबले सीमित सुरक्षित संदेश तब ले देखावे ला जब ले सोर्स कइल गइल डाटासेट तइयार ना हो जाई।\n\nका रउआँ ऑफलाइन फॉलबैक सक्षम कइल चाहत बानी?';

  @override
  String get chatbotOfflineSwitched =>
      'ऑफलाइन फॉलबैक सक्षम हो गइल बा. सत्यापन स्थानीय इस्लामी जवाब अभी तक तैयार नईखे।';

  @override
  String get chatbotOfflineDownloadLabel => 'ऑफलाइन फॉलबैक के सक्षम करीं';

  @override
  String get downloadPreparing => 'डाउनलोड के तइयारी हो रहल बा...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'सूरह $surah / $total डाउनलोड कइल जा रहल बा।';
  }

  @override
  String get downloadCompleted =>
      'एह पाठक खातिर सगरी सूरह पहिलहीं से डाउनलोड हो चुकल बा.';

  @override
  String get offlineQuranAudioPacks => 'ऑफलाइन कुरान ऑडियो पैक बा';

  @override
  String storedOnDeviceMb(String size) {
    return 'डिवाइस पर संग्रहीत बा: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total सूरह डाउनलोड हो गइल बा';
  }

  @override
  String get redownloadMissingRepair => 'मरम्मत / डाउनलोड गायब बा';

  @override
  String get downloadAction => 'डाउनलोड करीं';

  @override
  String get resumeDownload => 'डाउनलोड जारी राखीं';

  @override
  String get deleteDownloadedFiles => 'डाउनलोड भइल फाइल के हटा दिहल जाव';

  @override
  String get cancelDownloadAction => 'डाउनलोड रद्द कर दीं';

  @override
  String get downloadCancelling => 'रद्द हो रहल बा...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return '$reciter खातिर डाउनलोड रद्द हो गइल।';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return '$reciter खातिर डाउनलोड पूरा हो गइल।';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return '$reciter खातिर डाउनलोड समाप्त हो गइल जवना में $failed असफल सूरह ($downloaded/$total डाउनलोड हो गइल)।';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return '$reciter खातिर ऑफलाइन फाइल हटा दिहल गइल।';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Verified Quran audio sources are unavailable right now.';

  @override
  String get quranAudioPlaybackErrorWithConnectionHint =>
      'ऑडियो प्लेबैक फेल हो गइल. कृपया आपन कनेक्शन के जांच करीं।';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'सत्यापित कुरान ऑडियो पैक अधूरा बा ($available/$total)। ऑडियो कैटलॉग अपडेट होखला के बाद फेर से कोशिश करीं।';
  }

  @override
  String get chatbotHint => 'Ask a question...';

  @override
  String get chatbotThinking => 'Thinking...';

  @override
  String get sukunMixerSubtitle => 'प्रकृति अउर कुरान मिक्सर';

  @override
  String get audioPlayFailed => 'ऑडियो प्लेबैक फेल हो गइल';

  @override
  String get sukunNatureLabel => 'सुकुन (प्रकृति)';

  @override
  String get sukunRainOfMercy => 'दया के बरखा हो गइल';

  @override
  String get sukunGardenOfPeace => 'शांति के बगीचा';

  @override
  String get sukunMidnightCalm => 'आधा रात के शांत हो गइल';

  @override
  String get sukunOceanTawheed => 'तौहीद के समुंदर';

  @override
  String get sukunUnavailableTitle => 'साउंडस्केप उपलब्ध नइखे';

  @override
  String get sukunUnavailableBody =>
      'एह बिल्ड में अबहीं ले जरूरी सुकुन साउंडस्केप संपत्ति शामिल नइखे.';

  @override
  String get prayerCompletion => 'प्रार्थना पूरा हो गइल';

  @override
  String get streaks => 'लकीर बा';

  @override
  String get dayStreak => 'दिन के लकीर बा';

  @override
  String get bestStreak => 'सबसे बढ़िया लकीर बा';

  @override
  String get chatbotCloudAiLabel => 'क्लाउड एआई';

  @override
  String get chatbotLocalAiLabel => 'ऑफलाइन फॉलबैक';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'ऑफलाइन फॉलबैक के सक्षम करीं';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count छोड़ दिहल गइल बा';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'क्लाउड एपीआई कॉन्फ़िगर नइखे भइल. सत्यापन ऑफलाइन इस्लामी मार्गदर्शन अभी तक उपलब्ध नइखे।';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] सत्यापन स्थानीय इस्लामी मार्गदर्शन अभी तक उपलब्ध नइखे। स्रोत से मिलल जवाब खातिर क्लाउड एआई पर स्विच करीं।';

  @override
  String get mosques => 'मस्जिद सभ';

  @override
  String get halalFood => 'हलाल खाना';

  @override
  String get placesSearchArea => 'एह इलाका में खोज करीं';

  @override
  String get nearbyMosques => 'पास के मस्जिद बाड़ी सऽ';

  @override
  String get islamicSchools => 'इस्लामिक स्कूलन';

  @override
  String placesFoundCount(String count) {
    return '$count मिलल बा';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance किमी दूर बा';
  }

  @override
  String placesApiError(String statusCode) {
    return 'एपीआई त्रुटि: $statusCode बा।';
  }

  @override
  String get placesNetworkError =>
      'नेटवर्क में त्रुटि हो गइल बा. कृपया दोबारा कोशिश करीं।';

  @override
  String get placesLocationRequiredTitle => 'लोकेशन के जरूरत बा';

  @override
  String get placesLocationRequiredBody =>
      'पहिले कवनो लोकेशन तय करीं जेहसे कि पास के मस्जिद, हलाल खाना, आ इस्लामी स्कूलन के सही खोजल जा सके.';

  @override
  String get placesMapTilesUnavailableTitle => 'नक्शा के टाइल्स उपलब्ध नइखे';

  @override
  String get placesMapTilesUnavailableBody =>
      'एह बिल्ड खातिर अबहिन ले कौनों सत्यापन कइल मैप टाइल स्रोत कॉन्फ़िगर नइखे कइल गइल। पास के जगह अबहियों रउरा सेव कइल लोकेशन से लोड हो सकेला.';

  @override
  String get placesDataSourceUnavailableTitle => 'डेटा के अनुपलब्ध बना देला';

  @override
  String get placesDataSourceUnavailableBody =>
      'एह बिल्ड खातिर अबहिन ले कौनों सत्यापन कइल जगह डेटा एंडपॉइंट कॉन्फ़िगर नइखे कइल गइल। पास के खोज के सक्षम करे से पहिले PLACES_OVERPASS_API_URL के कवनो मंजूर प्रॉक्सी भा प्रदाता पर सेट करीं।';

  @override
  String get unknownPlaceName => 'अनजान नाम';

  @override
  String get islamicPlaceFallback => 'इस्लामी जगह';

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
