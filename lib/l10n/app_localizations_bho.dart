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
  String get home => 'घर के बा';

  @override
  String get quran => 'कुरान के ह';

  @override
  String get qibla => 'किबला के बा';

  @override
  String get zikr => 'जिक्र के बा';

  @override
  String get calendar => 'कैलेंडर के बा';

  @override
  String get settings => 'सेटिंग्स के बारे में बतावल गइल बा';

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
  String get method => 'गणना के तरीका के बारे में बतावल गइल बा';

  @override
  String get madhab => 'असर न्यायिक विधि के बा';

  @override
  String get surahs => 'सूरह के बारे में बतावल गइल बा';

  @override
  String get ayahs => 'अयहस के बा';

  @override
  String get fajr => 'फजर के ह';

  @override
  String get sunrise => 'सूर्योदय के बा';

  @override
  String get dhuhr => 'धुहर के बा';

  @override
  String get asr => 'अस्र के बा';

  @override
  String get maghrib => 'मगरिब के ह';

  @override
  String get isha => 'ईशा के बा';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName के समय।';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '$prayerName प्रार्थना करे के समय आ गईल बा।';
  }

  @override
  String get dataStorage => 'डाटा एंड स्टोरेज के बारे में बतावल गइल बा';

  @override
  String get clearCache => 'कैश के साफ कर दिहल जाव';

  @override
  String get cacheClearedSuccess => 'कैश सफलतापूर्वक साफ हो गइल';

  @override
  String get location => 'लोकेशन के बा';

  @override
  String get language => 'भाषा के बारे में बतावल गइल बा';

  @override
  String get selectLanguage => 'भाषा के चयन करीं';

  @override
  String get searchLanguage => '180+ भाषा के खोज करीं...';

  @override
  String get systemDefault => 'सिस्टम डिफ़ॉल्ट बा';

  @override
  String get currentLocation => 'वर्तमान स्थान (जीपीएस) के बा।';

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
    return '$count शहरन के बा';
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
  String get save => 'बचावे के बा';

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
  String get surah => 'सूरह के बा';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'जुज के बा';

  @override
  String get page => 'पन्ना के बा';

  @override
  String get reading => 'पढ़त बानी';

  @override
  String get recitation => 'पाठ कइल जाला';

  @override
  String get translation => 'अनुवाद के बा';

  @override
  String get tafsir => 'तफसीर के बा';

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
  String get bookmarks => 'बुकमार्क के बारे में बतावल गइल बा';

  @override
  String get addBookmark => 'बुकमार्क जोड़ल जाला';

  @override
  String get removeBookmark => 'बुकमार्क के हटा दिहल जाव';

  @override
  String get lastRead => 'आखिरी बेर पढ़ल गइल';

  @override
  String get dailyZikr => 'रोजाना जिक्र के बा';

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
  String get tasbih => 'तसबीह के बा';

  @override
  String get ahkab => 'अहकम के बा';

  @override
  String get masaail => 'मसा\'इल के बा';

  @override
  String get hadith => 'हदीस के बा';

  @override
  String get hadithCollection => 'हदीस संग्रह के बारे में बतावल गइल बा';

  @override
  String get hadithBooks => 'हदीस के किताबन के बारे में बतावल गइल बा';

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
  String get ibadahTracker => 'इबादा ट्रैकर के बा';

  @override
  String get fasting => 'उपवास के बा';

  @override
  String get quranReading => 'कुरान पढ़े के बा';

  @override
  String get prayers => 'दुआ कइल जाला';

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
  String get dhikrCount => 'ढिकर गिनती के बा';

  @override
  String get weeklyProgress => 'साप्ताहिक प्रगति के बा';

  @override
  String get monthlyProgress => 'मासिक प्रगति के बा';

  @override
  String get statistics => 'आँकड़ा के जानकारी दिहल गइल बा';

  @override
  String get hijriCalendar => 'हिजरी कैलेंडर के बा';

  @override
  String get gregorianCalendar => 'ग्रेगोरियन कैलेंडर के बा';

  @override
  String get today => 'आज के समय में';

  @override
  String get tomorrow => 'काल्हु के बा';

  @override
  String get yesterday => 'काल्हु के भइल';

  @override
  String get specialDays => 'खास दिन के बा';

  @override
  String get ramadan => 'रमजान के बा';

  @override
  String get eidAlFitr => 'ईद अल फितर के बा';

  @override
  String get eidAlAdha => 'ईद अल अधा के बा';

  @override
  String get islamicNewYear => 'इस्लामी नया साल के बा';

  @override
  String get mawlidAnNabi => 'मौलिद अन-नबी के बा';

  @override
  String get specialDayDateRamadanStart => '१ रमजान के बा';

  @override
  String get specialDayDateLaylatAlQadr => '27 रमजान के भइल';

  @override
  String get specialDayDateEidAlFitr => '१ शववाल के बा';

  @override
  String get specialDayDateEidAlAdha => '10 धुल हिज्जा के बा';

  @override
  String get specialDayDateIslamicNewYear => '१ मुहर्रम के बा';

  @override
  String get specialDayDateMawlidAnNabi => '12 रबी अल-अववाल के बा';

  @override
  String get laylatAlQadr => 'लैलात अल-कदर के ह';

  @override
  String get qiblaDirection => 'किबला डायरेक्शन के बा';

  @override
  String get compass => 'कम्पास के बा';

  @override
  String get degrees => 'डिग्री के बा';

  @override
  String get north => 'उत्तर के ओर से बा';

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
      'Set your actual location before using the Qibla compass so the direction can be calculated accurately.';

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
  String get beforePrayer => 'नमाज से कुछ मिनट पहिले के बा';

  @override
  String get theme => 'विषय के बा';

  @override
  String get lightMode => 'लाइट मोड के बा';

  @override
  String get darkMode => 'डार्क मोड के बा';

  @override
  String get systemTheme => 'सिस्टम के थीम के बारे में बतावल गइल बा';

  @override
  String get about => 'के बारे में';

  @override
  String get version => 'संस्करण के बा';

  @override
  String get privacyPolicy => 'गोपनीयता नीति के बारे में बतावल गइल बा';

  @override
  String get termsOfService => 'सेवा के शर्त बा';

  @override
  String get contactUs => 'हमनी से संपर्क करीं';

  @override
  String get rateApp => 'रेट ऐप के बा';

  @override
  String get shareApp => 'शेयर ऐप के बा';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'डाउनलोड हो गइल बा';

  @override
  String get downloading => 'डाउनलोड हो रहल बा...';

  @override
  String get downloadComplete => 'Download Complete';

  @override
  String get downloadFailed => 'Download Failed';

  @override
  String get offlineMode => 'ऑफलाइन मोड के बा';

  @override
  String get noInternet => 'No Internet Connection';

  @override
  String get checkConnection => 'कृपया आपन कनेक्शन के जांच करीं';

  @override
  String get premium => 'प्रीमियम के बा';

  @override
  String get upgradeToPro => 'प्रो में अपग्रेड करीं';

  @override
  String get proFeatures => 'प्रो फीचर बा';

  @override
  String get removeAds => 'विज्ञापन हटा दिहल जाव';

  @override
  String get unlockAll => 'सभ सामग्री के अनलॉक करीं';

  @override
  String get exclusiveContent => 'विशेष सामग्री के बारे में बतावल गइल बा';

  @override
  String get welcome => 'स्वागत बा';

  @override
  String get getStarted => 'शुरू कर दीं';

  @override
  String get skip => 'छोड़ दिहल जाव';

  @override
  String get next => 'आगे के बात बा';

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
  String get dhikrLibrary => 'ढिकर लाइब्रेरी के ह';

  @override
  String get resetCounter => 'काउंटर के रीसेट करीं';

  @override
  String get changeTarget => 'लक्ष्य बदले के बा';

  @override
  String get newTarget => 'नया लक्ष्य बा';

  @override
  String targetCount(Object target) {
    return 'लक्ष्य: $target के बा।';
  }

  @override
  String get tapToCount => 'गिनती करे खातिर टैप करीं';

  @override
  String get zikrCompletedMashAllah => 'पूरा हो गइल! मशअल्लाह के ह';

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
  String get qazaDebt => 'काजा (कर्ज) के बा।';

  @override
  String get resetQazaData => 'काजा डेटा के रीसेट करीं';

  @override
  String get resetQazaDebtQuestion => 'काजा कर्ज के रीसेट करीं?';

  @override
  String get rawatib => 'रावतीब के ह';

  @override
  String get tahajjud => 'तहज्जुद के ह';

  @override
  String get dailyProgress => 'रोजाना प्रगति के बा';

  @override
  String get mandatoryPrayers => 'अनिवार्य प्रार्थना कइल जाला';

  @override
  String get sunnahAndOthers => 'सुन्नत अउर अन्य लोग';

  @override
  String get spiritualGrowth => 'आध्यात्मिक विकास के बारे में बतावल गइल बा';

  @override
  String get mandatoryDuty => 'अनिवार्य कर्तव्य के बा';

  @override
  String get totalPrayers => 'कुल प्रार्थना कइल गइल';

  @override
  String get prayerDebt => 'प्रार्थना के कर्जा बा';

  @override
  String get fastingDebt => 'उपवास के कर्जा बा';

  @override
  String get reset => 'रीसेट हो गइल बा';

  @override
  String get days => 'दिन भर के बा';

  @override
  String get premiumIntegrity => 'प्रीमियम इंटीग्रेटी के बा';

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
  String get offlineDownloadManager => 'Offline Download Manager';

  @override
  String get manageDatasets =>
      'भारी ऑफलाइन ऑडियो & डाटासेट पैक के प्रबंधन करीं।';

  @override
  String get freeStorage => 'आंतरिक डिवाइस भंडारण के मुक्त कर दीं।';

  @override
  String get quranIntegrity => 'कुरान के अखंडता के बारे में बतावल गइल बा';

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
    return 'स्थिति: $status के बा।';
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
    return 'लापता तुर्की: $count के बा।';
  }

  @override
  String dbVersion(Object version) {
    return 'डीबी संस्करण: $version के बा।';
  }

  @override
  String dbPath(Object path) {
    return 'पथ: $path के बा।';
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
  String get fajrAngle => 'फजर एंगल के बा';

  @override
  String get ishaAngle => 'ईशा एंगल के ह';

  @override
  String get qiblaCalibration => 'किबला कैलिब्रेशन के बा';

  @override
  String get compassSmoothing => 'कम्पास स्मूथिंग के काम होला';

  @override
  String get reduceSensorJitter => 'स्थिर सुई खातिर सेंसर के जिटर कम करीं।';

  @override
  String get calibrationOffset => 'कैलिब्रेशन ऑफसेट के बा';

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
  String get diagnosticsPrayerSource => 'प्रार्थना प्राधिकरण के ह';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'मैनुअल कस्टम कोण (कोई संस्थागत स्रोत ना)';

  @override
  String get diagnosticsCloudDriven => 'बादल संचालित बा';

  @override
  String get diagnosticsAdhanAudioAssets => 'अधान ऑडियो एसेट्स के बा';

  @override
  String get diagnosticsUiAudioAssets => 'यूआई ऑडियो संपत्ति के बा';

  @override
  String get diagnosticsQuranAudioAssets => 'कुरान के ऑडियो संपत्ति बा';

  @override
  String get diagnosticsAudioAssets => 'ऑडियो एसेट्स के बारे में बतावल गइल बा';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count फाइल के बा';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'मेनिफेस्ट रीड फेल हो गइल: $error';
  }

  @override
  String get diagnosticsLocalizationLocales =>
      'स्थानीयकरण लोकेल के बारे में बतावल गइल बा';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count समर्थित बा';
  }

  @override
  String get diagnosticsQuranDataset => 'कुरान के डाटासेट के बा';

  @override
  String get diagnosticsQuranSurahs => 'कुरान के सूरह के बारे में बतावल गइल बा';

  @override
  String get diagnosticsQuranAyahs => 'कुरान के अयह के बा';

  @override
  String get diagnosticsQuranJuzMetadata =>
      'कुरान जुज मेटाडाटा के बारे में बतावल गइल बा';

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
  String get dailyVerse => 'दैनिक छंद के बा';

  @override
  String get dailyVerseUnavailableTitle => 'दैनिक छंद अनुपलब्ध बा';

  @override
  String get dailyVerseUnavailableBody =>
      'सत्यापन कइल गइल दैनिक छंद सामग्री एह बिल्ड खातिर अबहीं ले कॉन्फ़िगर नइखे कइल गइल। ब्राउजिंग से पहिले क्लाउड स्रोत से कनेक्ट करीं भा कवनो सत्यापन कैश के सिंक करीं.';

  @override
  String get todaysIbadah => 'आज के इबादा के बा';

  @override
  String get quickAccess => 'त्वरित पहुँच के बारे में बतावल गइल बा';

  @override
  String get assistant => 'सहायक';

  @override
  String get places => 'जगह';

  @override
  String get library => 'पुस्तकालय';

  @override
  String get analytics => 'विश्लेषणात्मकता के बारे में बतावल गइल बा';

  @override
  String get dailyDuas => 'रोजाना दुआस के बा';

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
  String get duaCategoryTasbih => 'तसबीह के बा';

  @override
  String get duaCategoryProtection => 'संरक्षण के काम होला';

  @override
  String get duaCategoryBeginning => 'शुरुआत भइल बा';

  @override
  String get duaCategorySleep => 'सुतल';

  @override
  String get duaCategoryFoodDrink => 'खाए-पीए के सामान';

  @override
  String get duaCategoryForgiveness => 'माफी के बात बा';

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
  String get islamicEducation => 'इस्लामी शिक्षा के बारे में बतावल गइल बा';

  @override
  String get sukunAudioTitle => 'सुकुन साउंडस्केप के बारे में बतावल गइल बा';

  @override
  String get hadithCollections => 'हदीस संग्रह के बारे में बतावल गइल बा';

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
  String get paywallFeature1Title => 'न्यूरल असिस्टेंट प्लस के बा';

  @override
  String get paywallFeature1Desc => 'असीमित एआई से चले वाला क्यू एंड ए';

  @override
  String get paywallFeature2Title => 'असीमित ऑफलाइन बा';

  @override
  String get paywallFeature2Desc => 'सगरी पाठ डाउनलोड करीं';

  @override
  String get paywallFeature3Title => 'एक्सक्लूसिव डिजाइन के बा';

  @override
  String get paywallFeature3Desc =>
      'प्रीमियम थीम & फॉन्ट के बारे में बतावल गइल बा';

  @override
  String get paywallFeature4Title => 'विज्ञापन मुक्त बा';

  @override
  String get paywallFeature4Desc => 'विज्ञापन शून्य बा';

  @override
  String get paywallGetAccess => 'आजीवन पहुँच पाईं — \$ 1.00 बा';

  @override
  String get restorePurchases => 'खरीददारी के बहाल कर दिहल जाव';

  @override
  String get zakatCalculator => 'जकात कैलकुलेटर के बा';

  @override
  String get zakatGold => 'सोना (अल्टिन) के बा।';

  @override
  String get zakatSilver => 'चांदी (गुमुश) के बा।';

  @override
  String get zakatCashBank => 'नकद / बैंक के बा';

  @override
  String get zakatBusiness => 'कारोबार';

  @override
  String get zakatInvestments => 'निवेश के बा';

  @override
  String get zakatWeightGrams => 'वजन (छ) के बा।';

  @override
  String get zakatPricePerGram => 'कीमत/जी के बा';

  @override
  String get zakatTotalAmount => 'कुल राशि के बा';

  @override
  String get zakatInventoryValue =>
      'इन्वेंट्री के मूल्य के बारे में बतावल गइल बा';

  @override
  String get zakatDebts => 'कर्जा के बा';

  @override
  String get zakatTotal => 'कुल';

  @override
  String get calculateZakat => 'जकात के गणना करीं';

  @override
  String get nisabNotReached => 'निसाब ना पहुँचल। जकात जरूरी नइखे।';

  @override
  String get totalZakat => 'कुल जकात के बा';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'सोना के जकात दिहल गइल';

  @override
  String get zakatSilverZakat => 'चांदी के जकात दिहल गइल';

  @override
  String get zakatCashZakat => 'नकद जकात के बा';

  @override
  String get zakatBusinessZakat => 'बिजनेस जकात के बारे में बतावल गइल बा';

  @override
  String get zakatInvestmentZakat => 'निवेश के जकात के बा';

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
  String get downloadPreparing => 'Preparing download...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Downloading surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'All surahs already downloaded for this reciter.';

  @override
  String get offlineQuranAudioPacks => 'ऑफलाइन कुरान ऑडियो पैक बा';

  @override
  String storedOnDeviceMb(String size) {
    return 'डिवाइस पर संग्रहीत बा: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surahs downloaded';
  }

  @override
  String get redownloadMissingRepair => 'Repair / Download Missing';

  @override
  String get downloadAction => 'डाउनलोड करीं';

  @override
  String get resumeDownload => 'डाउनलोड जारी राखीं';

  @override
  String get deleteDownloadedFiles => 'डाउनलोड भइल फाइल के हटा दिहल जाव';

  @override
  String get downloadCancelling => 'Cancelling...';

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
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'सत्यापित कुरान ऑडियो पैक अधूरा बा ($available/$total)। ऑडियो कैटलॉग अपडेट होखला के बाद फेर से कोशिश करीं।';
  }

  @override
  String get chatbotHint => 'Ask a question...';

  @override
  String get chatbotThinking => 'Thinking...';

  @override
  String get sukunMixerSubtitle => 'प्रकृति & कुरान मिक्सर के बा';

  @override
  String get audioPlayFailed => 'ऑडियो प्लेबैक फेल हो गइल';

  @override
  String get sukunNatureLabel => 'सुकुन (प्रकृति) के बा।';

  @override
  String get sukunRainOfMercy => 'दया के बरखा हो गइल';

  @override
  String get sukunGardenOfPeace => 'शांति के बगीचा के बा';

  @override
  String get sukunMidnightCalm => 'आधा रात के शांत हो गइल';

  @override
  String get sukunOceanTawheed => 'ओशन तौहीद के बा';

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
  String get chatbotCloudAiLabel => 'क्लाउड एआई के बा';

  @override
  String get chatbotLocalAiLabel => 'ऑफलाइन फॉलबैक के बा';

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
  String get mosques => 'मस्जिद के बा';

  @override
  String get halalFood => 'हलाल फूड के बा';

  @override
  String get placesSearchArea => 'एह इलाका में खोज करीं';

  @override
  String get nearbyMosques => 'पास के मस्जिद बाड़ी सऽ';

  @override
  String get islamicSchools => 'इस्लामिक स्कूलन के बारे में बतावल गइल बा';

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
  String get unknownPlaceName => 'अज्ञात नाम के बा';

  @override
  String get islamicPlaceFallback => 'इस्लामी जगह के बारे में बतावल गइल बा';

  @override
  String get asmaMeaning1 => 'द बेनिफिसेंट के ह';

  @override
  String get asmaMeaning2 => 'दयालु लोग के';

  @override
  String get asmaMeaning3 => 'राजा / शाश्वत प्रभु के ह';

  @override
  String get asmaMeaning4 => 'परम पवित्र के कहल जाला';

  @override
  String get asmaMeaning5 => 'शांति के स्रोत के बारे में बतावल गइल बा';

  @override
  String get asmaMeaning6 => 'सुरक्षा के दाता के ह';

  @override
  String get asmaMeaning7 => 'गार्जियन के ह';

  @override
  String get asmaMeaning8 => 'अनमोल / सबसे ताकतवर';

  @override
  String get asmaMeaning9 =>
      'The Restorer and Irresistible, whose will prevails with perfect power.';

  @override
  String get asmaMeaning10 => 'सबसे बड़का के बा';

  @override
  String get asmaMeaning11 => 'सृष्टिकर्ता के ह';

  @override
  String get asmaMeaning12 => 'क्रम के निर्माता के ह';

  @override
  String get asmaMeaning13 => 'सुंदरता के आकार देवे वाला';

  @override
  String get asmaMeaning14 => 'माफ करे वाला लोग';

  @override
  String get asmaMeaning15 => 'द वश में करे वाला के';

  @override
  String get asmaMeaning16 => 'सबके दाता के ह';

  @override
  String get asmaMeaning17 => 'द सस्टेनर के ह';

  @override
  String get asmaMeaning18 => 'ओपनर के नाम से जानल जाला';

  @override
  String get asmaMeaning19 => 'सब के जानकार के ह';

  @override
  String get asmaMeaning20 =>
      'The Withholder, who narrows and restrains by wisdom.';

  @override
  String get asmaMeaning21 =>
      'The Expander, who opens, eases, and grants abundance by wisdom.';

  @override
  String get asmaMeaning22 => 'अबासर के नाम से जानल जाला';

  @override
  String get asmaMeaning23 => 'द एक्साल्टर के नाम से जानल जाला';

  @override
  String get asmaMeaning24 => 'सम्मान के दाता के नाम से जानल जाला';

  @override
  String get asmaMeaning25 => 'अपमानजनक के कहल जाला';

  @override
  String get asmaMeaning26 => 'सब के सुननिहार';

  @override
  String get asmaMeaning27 => 'सबके द्रष्टा के ह';

  @override
  String get asmaMeaning28 => 'जज साहब के कहना बा';

  @override
  String get asmaMeaning29 => 'द जस्ट के नाम से जानल जाला';

  @override
  String get asmaMeaning30 => 'सूक्ष्म वाला के';

  @override
  String get asmaMeaning31 => 'द ऑल अवेयर के ह';

  @override
  String get asmaMeaning32 => 'द फोरबेयरिंग के बा';

  @override
  String get asmaMeaning33 => 'द मैग्निफिसेंट के नाम से जानल जाला';

  @override
  String get asmaMeaning34 => 'महान माफ करे वाला के';

  @override
  String get asmaMeaning35 => 'धन्यवाद के इनाम देवे वाला';

  @override
  String get asmaMeaning36 => 'सबसे उच्चतम के बा';

  @override
  String get asmaMeaning37 => 'सबसे बड़का के बा';

  @override
  String get asmaMeaning38 => 'द प्रिजरवर के ह';

  @override
  String get asmaMeaning39 => 'द नॉरिशर के नाम से जानल जाला';

  @override
  String get asmaMeaning40 => 'हिसाब-किताब करे वाला के';

  @override
  String get asmaMeaning41 => 'द मैजेस्टिक के नाम से जानल जाला';

  @override
  String get asmaMeaning42 => 'उदार लोग के बा';

  @override
  String get asmaMeaning43 => 'चौकस वाला के';

  @override
  String get asmaMeaning44 => 'प्रार्थना के जवाब देवे वाला';

  @override
  String get asmaMeaning45 => 'द ऑल कम्प्रीहेंडिंग के ह';

  @override
  String get asmaMeaning46 => 'द परफेक्टली वाइज के ह';

  @override
  String get asmaMeaning47 => 'प्यार करे वाला के';

  @override
  String get asmaMeaning48 => 'सबसे गौरवशाली आदमी के बा';

  @override
  String get asmaMeaning49 => 'पुनरुत्थान करे वाला के';

  @override
  String get asmaMeaning50 => 'गवाह के कहनाम बा';

  @override
  String get asmaMeaning51 => 'सच्चाई के बात बा';

  @override
  String get asmaMeaning52 => 'सर्वाधिक ट्रस्टी के नाम से जानल जाला';

  @override
  String get asmaMeaning53 => 'सब ताकत के मालिक';

  @override
  String get asmaMeaning54 => 'द फोर्सफुल के ह';

  @override
  String get asmaMeaning55 => 'रक्षक के कहल जाला';

  @override
  String get asmaMeaning56 => 'प्रशंसित लोग के कहल जाला';

  @override
  String get asmaMeaning57 => 'मूल्यांकनकर्ता के ह';

  @override
  String get asmaMeaning58 => 'द ओरिजिनेटर के ह';

  @override
  String get asmaMeaning59 => 'बहाली करे वाला के ह';

  @override
  String get asmaMeaning60 => 'जीवन के दाता के ह';

  @override
  String get asmaMeaning61 => 'जीवन के लेवे वाला के';

  @override
  String get asmaMeaning62 => 'द एवर लिविंग के नाम से जानल जाला';

  @override
  String get asmaMeaning63 => 'स्व-निर्वाह करे वाला सस्टेनर के';

  @override
  String get asmaMeaning64 => 'द फाइंडर के ह';

  @override
  String get asmaMeaning65 => 'द ग्लोरियस के नाम से जानल जाला';

  @override
  String get asmaMeaning66 => 'द ओनली वन के नाम से जानल जाला';

  @override
  String get asmaMeaning67 => 'द वन के बा';

  @override
  String get asmaMeaning68 => 'सबके खोजल जाए वाला के';

  @override
  String get asmaMeaning69 => 'द पावरफुल के बा';

  @override
  String get asmaMeaning70 => 'सब शक्ति के रचयिता';

  @override
  String get asmaMeaning71 => 'द एक्सपीडिटर के ह';

  @override
  String get asmaMeaning72 => 'देरी करे वाला के कहल जाला';

  @override
  String get asmaMeaning73 => 'पहिला के बा';

  @override
  String get asmaMeaning74 => 'द लास्ट के बा';

  @override
  String get asmaMeaning75 => 'द मैनिफेस्ट के बा';

  @override
  String get asmaMeaning76 => 'द हिडन के बा';

  @override
  String get asmaMeaning77 =>
      'The Protecting Patron, who governs and cares for all creation.';

  @override
  String get asmaMeaning78 => 'परमात्मा के ह';

  @override
  String get asmaMeaning79 => 'भलाई के करे वाला';

  @override
  String get asmaMeaning80 => 'पश्चाताप के मार्गदर्शक के बारे में बतावल गइल बा';

  @override
  String get asmaMeaning81 => 'द एवेंजर के नाम से जानल जाला';

  @override
  String get asmaMeaning82 => 'माफ करे वाला के';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'सब के मालिक / सार्वभौम';

  @override
  String get asmaMeaning85 => 'महामहिम आ इनाम के मालिक';

  @override
  String get asmaMeaning86 => 'द इक्विटेबल वन के बा';

  @override
  String get asmaMeaning87 => 'द गदरर के नाम से जानल जाला';

  @override
  String get asmaMeaning88 => 'अमीर वाला के कहल जाला';

  @override
  String get asmaMeaning89 => 'द एनरिचर के नाम से जानल जाला';

  @override
  String get asmaMeaning90 => 'नुकसान के रोके वाला के कहल जाला';

  @override
  String get asmaMeaning91 => 'नुकसान के ले आवे वाला';

  @override
  String get asmaMeaning92 => 'लाभ के दाता के ह';

  @override
  String get asmaMeaning93 => 'द लाइट के बारे में बतावल गइल बा';

  @override
  String get asmaMeaning94 => 'गाइडर के लिखल बा';

  @override
  String get asmaMeaning95 => 'द ओरिजिनेटर के ह';

  @override
  String get asmaMeaning96 => 'सनातन वाला के कहल जाला';

  @override
  String get asmaMeaning97 => 'वारिस के नाम से जानल जाला';

  @override
  String get asmaMeaning98 => 'सबसे धर्मी गाइड के बारे में बतावल गइल बा';

  @override
  String get asmaMeaning99 =>
      'The Patient, who does not hasten punishment and acts with perfect forbearance.';
}
