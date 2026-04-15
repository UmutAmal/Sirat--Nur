// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Maithili (`mai`).
class AppLocalizationsMai extends AppLocalizations {
  AppLocalizationsMai([String locale = 'mai']) : super(locale);

  @override
  String get appTitle => 'सिरात-ı नूर';

  @override
  String get splashTagline => 'के लिये।\nइस्लामी प्रकाश के तरीका';

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
  String get nextPrayer => 'अगिला प्रार्थना';

  @override
  String get prayerTimes => 'प्रार्थना के समय';

  @override
  String get continueReading => 'पढ़ना जारी रखें';

  @override
  String get getLifetimePro => 'लाइफटाइम प्रो प्राप्त करें';

  @override
  String get unlockTajweed => 'ताजवीद एवं उन्नत सुविधाएँ अनलॉक करें';

  @override
  String get prayerCalculation => 'प्रार्थना गणना';

  @override
  String get method => 'गणना विधि';

  @override
  String get madhab => 'असर न्यायिक विधि';

  @override
  String get surahs => 'सूरह';

  @override
  String get ayahs => 'अयहस';

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
    return '$prayerName के लिये समय।';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '$prayerName प्रार्थना करबाक समय आबि गेल अछि।';
  }

  @override
  String get dataStorage => 'डाटा एवं स्टोरेज';

  @override
  String get clearCache => 'कैश साफ करू';

  @override
  String get cacheClearedSuccess => 'कैश सफलतापूर्वक साफ भ गेल';

  @override
  String get location => 'स्थान';

  @override
  String get language => 'भाषा';

  @override
  String get selectLanguage => 'भाषा चुनें';

  @override
  String get searchLanguage => '180+ भाषा खोजें...';

  @override
  String get systemDefault => 'सिस्टम डिफ़ॉल्ट';

  @override
  String get currentLocation => 'वर्तमान स्थान (जीपीएस) २.';

  @override
  String get locationServiceDisabled => 'स्थान सेवा अक्षम अछि।';

  @override
  String get locationPermissionDenied => 'स्थान अनुमति अस्वीकृत।';

  @override
  String get locationDetectionFailed =>
      'अहाँक स्थानक पता नहि लगा सकल। कृपया कोनो शहर मैन्युअल रूप सँ चुनू अथवा फेर सँ प्रयास करू.';

  @override
  String citiesCount(String count) {
    return '$count शहर';
  }

  @override
  String get search => 'खोजें';

  @override
  String get searchHint => 'खोज...';

  @override
  String get noResults => 'के लिये।\nकोनो परिणाम नहि भेटल';

  @override
  String get loading => 'के लिये।\nलोड भ रहल अछि...';

  @override
  String get error => 'के लिये।\nत्रुटि';

  @override
  String get appErrorOccurred => 'एकटा त्रुटि भेल';

  @override
  String get appUnknownError => 'अज्ञात त्रुटि';

  @override
  String get quranLoadFailed =>
      'कुरान सामग्री लोड नहि भ सकल। कृपया पुनः प्रयास करू।';

  @override
  String get retry => 'पुनः प्रयास करू';

  @override
  String get refreshAction => 'के लिये।\nताज़ा करू';

  @override
  String get cancel => 'रद्द करू';

  @override
  String get save => 'बचाउ';

  @override
  String get delete => 'के लिये।\nमेटाउ';

  @override
  String get edit => 'संपादन करू';

  @override
  String get close => 'बंद करू';

  @override
  String get ok => 'ठीक छै';

  @override
  String get yes => 'हाँ';

  @override
  String get no => 'सं';

  @override
  String get surah => 'सूरह';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'जुज';

  @override
  String get page => 'पृष्ठ';

  @override
  String get reading => 'पढ़ब';

  @override
  String get recitation => 'पाठ';

  @override
  String get translation => 'अनुवाद';

  @override
  String get tafsir => 'तफसीर';

  @override
  String get tafsirLoading => 'के लिये।\nलोड हो रहल अछि tafsir...';

  @override
  String get tafsirSourceLabel => 'के लिये।\nतफसीर स्रोत';

  @override
  String get tafsirNoSurahFound =>
      'के लिये।\nएहि सूरह लेल कोनो तफसीर नहि भेटल।';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'के लिये।\nआयत $ayah के लेल कोनो तफसीर नहि भेटल.';
  }

  @override
  String get tafsirLoadFailed => 'के लिये।\nतफसीर लोड नहि भ सकल।';

  @override
  String get tafsirNoTextForAyah =>
      'के लिये।\nएहि आयत के लेल कोनो तफसीर ग्रंथ नहि।';

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
    return 'के लिये।\nतफसीर स्रोत एकटा HTTP $statusCode त्रुटि वापस केलक.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'के लिये।\nचयनित तफसीर स्रोत कोनो प्रविष्टि वापस नहि केलक.';

  @override
  String get bookmarks => 'बुकमार्क';

  @override
  String get addBookmark => 'बुकमार्क जोड़ू';

  @override
  String get removeBookmark => 'बुकमार्क हटाउ';

  @override
  String get lastRead => 'अंतिम पढ़ल';

  @override
  String get dailyZikr => 'दैनिक जिक्र';

  @override
  String get duaMeaning1 =>
      'दोसर लोक प्रार्थना करैत छथि, ‘हमर प्रभु, हमरा सभ केँ एहि संसार आ परलोक मे भलाई दिअ, आ अग्निक यातना सँ बचाउ।’';

  @override
  String get duaMeaning2 =>
      'भगवान् कोनो आत्मा पर जतेक बोझ सहन क\' सकैत अछि ताहि सँ बेसी बोझ नहि दैत छथि : प्रत्येक केँ जे नीक काज भेल अछि से लाभ होइत छैक, आ अपन अधलाह भोगैत छैक- ‘ प्रभु, जँ हम सभ बिसरि जाइ वा गलती करब तँ हमरा सभ केँ काज पर नहि उठाउ। प्रभु, हमरा सभ पर ओहिना बोझ नहि दियौक जेना अहाँ हमरा सभ सँ पहिने के लोक सभ पर बोझ देलहुँ । प्रभु, हमरा सब पर जतेक शक्ति अछि ताहि सँ बेसी बोझ नहि दियौक। माफ करू, क्षमा करू आ हमरा सभ पर दया करू। अहाँ हमर सभक रक्षक छी, तेँ काफिर सभक विरुद्ध हमरा सभक मदति करू।’';

  @override
  String get duaMeaning3 =>
      '‘हमर प्रभु, अहाँक मार्गदर्शन केलाक बाद हमर सभक हृदय केँ विचलित नहि होउ। हमरा सभ पर अपन दया प्रदान करू : अहाँ सदिखन दाता छी।';

  @override
  String get duaMeaning4 =>
      'प्रभु, हम आ हमर संतान प्रार्थना करैत रहय। हमर प्रभु हमर आग्रह स्वीकार करू।';

  @override
  String get duaMeaning5 =>
      'आ दयापूर्वक हुनका सभक प्रति विनम्रतापूर्वक अपन पाँखि नीचाँ कऽ कऽ कहब जे ‘प्रभु, हुनका सभ पर दया करू, ठीक ओहिना जेना ओ सभ हमरा छोट रही।’';

  @override
  String get duaMeaning6 =>
      'उदात्त होउ भगवान, जे सही मायने मे नियंत्रण मे छथि। [नबी], प्रकटीकरण पूरा होबय सँ पहिने पाठ करबा मे जल्दबाजी नहि करू मुदा कहब, ‘प्रभु, हमरा ज्ञान मे वृद्धि करू!’';

  @override
  String get duaMeaning7 =>
      '[नबी] कहू, ‘प्रभु, क्षमा करू आ दया करू: अहाँ सभसँ बेसी दयालु छी।’';

  @override
  String get duaMeaning8 =>
      'जे प्रार्थना करैत छथि, ‘हमर प्रभु, हमरा सभ केँ अपन जीवनसाथी आ संतान मे आनन्द दिअ। जे अहाँक प्रति जागरूक छथि हुनका लेल हमरा सभ केँ नीक उदाहरण बनाउ’।';

  @override
  String get morningZikr => 'सुबह जिक्र';

  @override
  String get eveningZikr => 'साँझ के जिक्र';

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
  String get hadithBooks => 'हदीस किताबें';

  @override
  String get searchHadith => 'खोज हदीस';

  @override
  String get asmaulHusna => 'असमा-उल-हुस्ना';

  @override
  String get namesOfAllah => 'अल्लाह के नाम';

  @override
  String get liveTv => 'लाइव टीवी';

  @override
  String get watchLive => 'देखिये लाइव';

  @override
  String get streamError => 'स्ट्रीम त्रुटि';

  @override
  String get reload => 'पुनः लोड करे';

  @override
  String get openInYoutube => 'यूट्यूब मे खुलल अछि';

  @override
  String get ibadahTracker => 'इबादा ट्रैकर';

  @override
  String get fasting => 'उपवास';

  @override
  String get quranReading => 'कुरान पढ़ना';

  @override
  String get prayers => 'प्रार्थना';

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
  String get dhikrCount => 'धिक्र काउंट';

  @override
  String get weeklyProgress => 'साप्ताहिक प्रगति';

  @override
  String get monthlyProgress => 'मासिक प्रगति';

  @override
  String get statistics => 'सांख्यिकी';

  @override
  String get hijriCalendar => 'हिजरी कैलेंडर';

  @override
  String get gregorianCalendar => 'ग्रेगोरियन कैलेंडर';

  @override
  String get today => 'आइ';

  @override
  String get tomorrow => 'काल्हि';

  @override
  String get yesterday => 'काल्हि';

  @override
  String get specialDays => 'विशेष दिन';

  @override
  String get ramadan => 'रमजान';

  @override
  String get eidAlFitr => 'ईद अल-फितर';

  @override
  String get eidAlAdha => 'ईद अल-अधा';

  @override
  String get islamicNewYear => 'इस्लामी नव वर्ष';

  @override
  String get mawlidAnNabi => 'मौलिद अन-नबी';

  @override
  String get specialDayDateRamadanStart => '१ रमजान';

  @override
  String get specialDayDateLaylatAlQadr => '27 रमजान';

  @override
  String get specialDayDateEidAlFitr => '१ शववाल';

  @override
  String get specialDayDateEidAlAdha => '१० धुल हिज्जा';

  @override
  String get specialDayDateIslamicNewYear => '१ मुहर्रम';

  @override
  String get specialDayDateMawlidAnNabi => '12 रबी अल-अववाल';

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
  String get qiblaFound => 'किबला भेटल !';

  @override
  String get turnDevice => 'अपन डिवाइस के किबला के सामना करय लेल घुमाउ';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'कम्पास त्रुटि: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'एहि डिवाइस पर कम्पास सेंसर अनुपलब्ध अछि ।';

  @override
  String get qiblaLocationRequiredTitle => 'किबला के लिये स्थान आवश्यक';

  @override
  String get qiblaLocationRequiredBody =>
      'Set your actual location before using the Qibla compass so the direction can be calculated accurately.';

  @override
  String get adhanNotificationChannelName => 'अधान अधिसूचना';

  @override
  String get adhanNotificationChannelDescription =>
      'Prayer time alerts with adhan sound.';

  @override
  String get notifications => 'अधिसूचना';

  @override
  String get prayerNotifications => 'प्रार्थना सूचना';

  @override
  String get enableNotifications => 'सूचना सक्षम करू';

  @override
  String get notificationTime => 'अधिसूचना समय';

  @override
  String get beforePrayer => 'प्रार्थना स मिनट पहिने';

  @override
  String get theme => 'विषय';

  @override
  String get lightMode => 'प्रकाश मोड';

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
  String get termsOfService => 'सेवा के शर्तें';

  @override
  String get contactUs => 'हमसे संपर्क करें';

  @override
  String get rateApp => 'दर एप्लिकेशन';

  @override
  String get shareApp => 'शेयर ऐप';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'डाउनलोड प्रबंधक';

  @override
  String get downloads => 'डाउनलोड';

  @override
  String get downloading => 'डाउनलोड क रहल छी...';

  @override
  String get downloadComplete => 'के लिये।\nडाउनलोड सम्पूर्ण';

  @override
  String get downloadFailed => 'के लिये।\nडाउनलोड असफल';

  @override
  String get offlineMode => 'ऑफलाइन मोड';

  @override
  String get noInternet => 'के लिये।\nइंटरनेट कनेक्शन नहि';

  @override
  String get checkConnection => 'कृपया अपन कनेक्शन देखू';

  @override
  String get premium => 'प्रीमियम';

  @override
  String get upgradeToPro => 'प्रो मे अपग्रेड करू';

  @override
  String get proFeatures => 'प्रो फीचर';

  @override
  String get removeAds => 'विज्ञापन हटाउ';

  @override
  String get unlockAll => 'सब सामग्री अनलॉक करू';

  @override
  String get exclusiveContent => 'अनन्य सामग्री';

  @override
  String get welcome => 'स्वागत अछि';

  @override
  String get getStarted => 'शुरू करू';

  @override
  String get skip => 'छोड़ि दियौक';

  @override
  String get next => 'अगिला';

  @override
  String get done => 'भ गेल';

  @override
  String get onboarding1Title => 'सिरात-ı नूर में अपनेक स्वागत अछि';

  @override
  String get onboarding1Desc =>
      'नमाज के समय, कुरान, और बहुत कुछ के लिए आपका पूरा इस्लामी साथी ऐप |';

  @override
  String get onboarding2Title => 'प्रार्थना के समय';

  @override
  String get onboarding2Desc => 'अपने स्थान के आधार पर सही प्रार्थना समय';

  @override
  String get onboarding3Title => 'कुरान एवं अधिक';

  @override
  String get onboarding3Desc =>
      'कुरान पढ़ू, अपन पढ़ाई के ट्रैक करू, आ इस्लामी सामग्री के खोज करू';

  @override
  String get dhikrLibrary => 'धिक्र पुस्तकालय';

  @override
  String get resetCounter => 'काउंटर रीसेट करू';

  @override
  String get changeTarget => 'लक्ष्य परिवर्तन';

  @override
  String get newTarget => 'नया लक्ष्य';

  @override
  String targetCount(Object target) {
    return 'लक्ष्य: $target।';
  }

  @override
  String get tapToCount => 'गिनती करबाक लेल टैप करू';

  @override
  String get zikrCompletedMashAllah => 'पूरा भ गेल! मशअल्लाह';

  @override
  String get zikrMeaningSubhanAllah => 'अल्लाह हर अपूर्णता स बहुत ऊपर छैथ।';

  @override
  String get zikrMeaningAlhamdulillah => 'सब स्तुति अल्लाह के अछि।';

  @override
  String get zikrMeaningAllahuAkbar => 'अल्लाह सबसँ पैघ छथि।';

  @override
  String get zikrMeaningLaIlahaIllallah => 'अल्लाह के अलावा कोनो देवता नै छै।';

  @override
  String get zikrMeaningAstaghfirullah => 'हम अल्लाह स माफी मांगैत छी।';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'अल्लाह के अलावा कोनो शक्ति आ कोनो ताकत नै छै।';

  @override
  String get dailyChecklist => 'दैनिक चेकलिस्ट';

  @override
  String get qazaDebt => 'काजा (ऋण) २.';

  @override
  String get resetQazaData => 'काजा डाटा रीसेट करू';

  @override
  String get resetQazaDebtQuestion => 'काजा कर्ज रीसेट करू?';

  @override
  String get rawatib => 'रावतीब';

  @override
  String get tahajjud => 'तहज्जुद';

  @override
  String get dailyProgress => 'दैनिक प्रगति';

  @override
  String get mandatoryPrayers => 'अनिवार्य प्रार्थना';

  @override
  String get sunnahAndOthers => 'सुन्नत एवं अन्य';

  @override
  String get spiritualGrowth => 'आध्यात्मिक वृद्धि';

  @override
  String get mandatoryDuty => 'अनिवार्य कर्तव्य';

  @override
  String get totalPrayers => 'कुल प्रार्थना';

  @override
  String get prayerDebt => 'प्रार्थना ऋण';

  @override
  String get fastingDebt => 'उपवास कर्ज';

  @override
  String get reset => 'रीसेट करू';

  @override
  String get days => 'दिन';

  @override
  String get premiumIntegrity => 'प्रीमियम अखंडता';

  @override
  String get recheckPremium => 'प्रीमियम स्थिति के पुनः जाँच करें';

  @override
  String get syncStore => 'अपन हक कें पुष्टि करय कें लेल स्टोर सं सिंक करू.';

  @override
  String get checkingPremium => 'प्रीमियम स्टेटस जाँच क रहल छी...';

  @override
  String get premiumVerified => 'प्रीमियम सत्यापित।';

  @override
  String get premiumNotFound => 'प्रीमियम नहि भेटल।';

  @override
  String premiumRefreshError(Object error) {
    return 'प्रीमियम स्थिति ताजा नै क सकल: $error';
  }

  @override
  String get offlineDownloadManager => 'के लिये।\nऑफलाइन डाउनलोड प्रबंधक';

  @override
  String get manageDatasets =>
      'विशाल ऑफलाइन ऑडियो एवं डाटासेट पैक प्रबंधित करें |';

  @override
  String get freeStorage => 'आंतरिक डिवाइस भंडारण मुक्त करू।';

  @override
  String get quranIntegrity => 'कुरान अखंडता';

  @override
  String get checkQuranDb => 'कुरान डाटाबेस की जाँच करें';

  @override
  String get verifyQuranContent => '114 सूरह आ 6236 आयत के सत्यापन करू।';

  @override
  String get checkingQuranDb => 'कुरान डाटाबेस की जाँच करते हुए...';

  @override
  String get okLabel => 'ठीक छै';

  @override
  String get incomplete => 'अपूर्ण';

  @override
  String get notSeeded => 'बीज नहि';

  @override
  String get quranDbStatus => 'कुरान डाटाबेस स्थिति';

  @override
  String statusLabel(Object status) {
    return 'स्थिति: $status';
  }

  @override
  String surahsCount(Object count) {
    return 'सूरह : $count (अपेक्षित ११४) २.';
  }

  @override
  String ayahsCount(Object count) {
    return 'अयहस: $count (अपेक्षित ६२३६) २.';
  }

  @override
  String missingArabic(Object count) {
    return 'लापता अरबी: $count';
  }

  @override
  String missingEnglish(Object count) {
    return 'गायब अंग्रेजी: $count';
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
    return 'पथ: $path।';
  }

  @override
  String quranCheckFailed(Object error) {
    return 'कुरान जांच असफल: $error';
  }

  @override
  String get audioVoice => 'ऑडियो आवाज';

  @override
  String get audioVoiceMisharyAlafasy => 'Male (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Male (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Male (Sudais)';

  @override
  String get fajrAngle => 'फजर कोण';

  @override
  String get ishaAngle => 'ईशा एंगल';

  @override
  String get qiblaCalibration => 'किबला अंशांकन';

  @override
  String get compassSmoothing => 'कम्पास स्मूथिंग';

  @override
  String get reduceSensorJitter =>
      'एकटा स्थिर सुई कें लेल सेंसर जिटर कें कम करूं.';

  @override
  String get calibrationOffset => 'अंशांकन ऑफसेट';

  @override
  String currentOffset(Object offset) {
    return 'वर्तमान: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'यदि अहां कें कम्पास कें मैनुअल सुधार कें जरूरत छै त समायोजित करूं. सकारात्मक मान घड़ीक दिशा मे घुमैत अछि।';

  @override
  String get apply => 'आवेदन करू';

  @override
  String get resetOnboarding => 'ऑनबोर्डिंग रीसेट करू';

  @override
  String get rerunSetup => 'प्रारंभिक सेटअप प्रक्रिया केँ पुनः चलाउ.';

  @override
  String get diagnostics => 'निदान के लिये';

  @override
  String get diagnosticsNotSet => 'सेट नहि';

  @override
  String get diagnosticsPrayerProfile => 'प्रार्थना प्रोफाइल';

  @override
  String get diagnosticsPrayerSource => 'प्रार्थना प्राधिकरण';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'मैनुअल कस्टम कोण (कोनो संस्थागत स्रोत नहि)';

  @override
  String get diagnosticsCloudDriven => 'बादल संचालित';

  @override
  String get diagnosticsAdhanAudioAssets => 'अधान ऑडियो एसेट्स';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'कुरान ऑडियो संपत्ति';

  @override
  String get diagnosticsAudioAssets => 'ऑडियो संपत्ति';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count फाइल';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'मेनिफेस्ट पढ़ल विफल: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'स्थानीयकरण लोकेल';

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
      'के लिये।\nसुपाबेस मे क्लाउड टेबल गायब; बंडल फॉलबैक सक्रिय';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'के लिये।\nबादल juz मेटाडाटा गायब अछि; बंडल संरचनात्मक फॉलबैक सक्रिय';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Cloud structural check failed: $error';
  }

  @override
  String get healthCheckDesc => 'स्वास्थ्य जांच चलाउ आ सिस्टम स्थिति देखू।';

  @override
  String get qiblaAligned => 'किबला संरेखित';

  @override
  String get rotateToFindQibla => 'किबला खोजने के लिये घुमाए |';

  @override
  String get calibrationRequiredFigure8 =>
      'अंशांकन आवश्यक। चित्र-8 मे डिवाइस घुमाउ।';

  @override
  String get dailyVerse => 'दैनिक छंद';

  @override
  String get todaysIbadah => 'आजुक इबादा';

  @override
  String get quickAccess => 'त्वरित पहुँच';

  @override
  String get assistant => 'सहायक';

  @override
  String get places => 'जगह';

  @override
  String get library => 'पुस्तकालय';

  @override
  String get analytics => 'विश्लेषणात्मकता';

  @override
  String get dailyDuas => 'दैनिक दुआस';

  @override
  String essentialDuas(String count) {
    return '$count आवश्यक दुआ';
  }

  @override
  String get duaUnavailableTitle => 'सत्यापित दुआ एखन धरि उपलब्ध नहि अछि';

  @override
  String get duaUnavailableBody =>
      'सत्यापित दैनिक दुआ एखन धरि एहि डिवाइस पर सिंक नहि कएल गेल अछि । असत्यापित फॉलबैक कें बजाय स्रोत सं प्राप्त दुआ लोड करय कें लेल क्लाउड स्रोत सं कनेक्ट करूं.';

  @override
  String get duaCategoryQuranic => 'कुरान दुआ';

  @override
  String get duaCategoryMorningEvening => 'सुबह एवं साँझ';

  @override
  String get duaCategoryTasbih => 'तसबीह';

  @override
  String get duaCategoryProtection => 'संरक्षण';

  @override
  String get duaCategoryBeginning => 'शुरुआत';

  @override
  String get duaCategorySleep => 'नींद';

  @override
  String get duaCategoryFoodDrink => 'खाद्य एवं पेय पदार्थ';

  @override
  String get duaCategoryForgiveness => 'क्षमा करब';

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
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'हदीस संग्रह';

  @override
  String get hadithSourcePending => 'सत्यापित स्रोत लंबित';

  @override
  String get hadithUnavailableTitle =>
      'सत्यापित हदीस संग्रह एखन धरि उपलब्ध नहि अछि';

  @override
  String get hadithUnavailableBody =>
      'ई बिल्ड एखनो एकटा असत्यापित बाहरी हदीस फीड पर निर्भर करैत अछि | हदीस ब्राउजिंग तखन धरि अक्षम रहैत अछि जा धरि कोनो स्रोत डाटासेट सिंक नहि भ\' जाइत अछि.';

  @override
  String get paywallUnlockAll =>
      'अपन आध्यात्मिक यात्रा के लेल सब फीचर के अनलॉक करू';

  @override
  String get premiumProductUnavailable =>
      'के लिये।\nप्रीमियम प्रोडक्ट एखन उपलब्ध नहि अछि। कृपया बाद मे दोबारा प्रयास करू।';

  @override
  String get premiumPurchaseFailed =>
      'के लिये।\nखरीद पूरा नहि भ सकल। कृपया पुनः प्रयास करू।';

  @override
  String get paywallFeature1Title => 'न्यूरल असिस्टेंट प्लस';

  @override
  String get paywallFeature1Desc => 'असीमित एआई संचालित प्रश्नोत्तर';

  @override
  String get paywallFeature2Title => 'असीमित ऑफलाइन';

  @override
  String get paywallFeature2Desc => 'सब पाठ डाउनलोड करू';

  @override
  String get paywallFeature3Title => 'अनन्य डिजाइन';

  @override
  String get paywallFeature3Desc => 'प्रीमियम थीम एवं फॉन्ट';

  @override
  String get paywallFeature4Title => 'विज्ञापन-मुक्त';

  @override
  String get paywallFeature4Desc => 'शून्य विज्ञापन';

  @override
  String get paywallGetAccess => 'आजीवन पहुँच प्राप्त करू — \$ 1.00';

  @override
  String get restorePurchases => 'खरीद बहाल करे';

  @override
  String get zakatCalculator => 'जकात कैलकुलेटर';

  @override
  String get zakatGold => 'सोना (अल्टिन) २.';

  @override
  String get zakatSilver => 'चांदी (गुमुश) २.';

  @override
  String get zakatCashBank => 'नकद / बैंक';

  @override
  String get zakatBusiness => 'व्यवसाय';

  @override
  String get zakatInvestments => 'निवेश';

  @override
  String get zakatWeightGrams => 'वजन (छ) ८.';

  @override
  String get zakatPricePerGram => 'मूल्य/जी';

  @override
  String get zakatTotalAmount => 'कुल राशि';

  @override
  String get zakatInventoryValue => 'इन्वेंट्री मूल्य';

  @override
  String get zakatDebts => 'कर्ज';

  @override
  String get zakatTotal => 'पूरा';

  @override
  String get calculateZakat => 'जकात की गणना करे';

  @override
  String get nisabNotReached => 'निसाब नहि पहुँचल। जकात अनिवार्य नहि अछि।';

  @override
  String get totalZakat => 'कुल जकात';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'सोना के जकात';

  @override
  String get zakatSilverZakat => 'चांदी के जकात';

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
      'दैनिक क्वेरी सीमा पहुँचि गेल। असीमित के लेल प्रीमियम मे अपग्रेड करू।';

  @override
  String get chatbotErrorMsg =>
      'हम कोनो प्रतिक्रिया नहि उत्पन्न क सकलहुं। कृपया पुनः प्रयास करू।';

  @override
  String get chatbotOfflinePrompt =>
      'के लिये।\nसत्यापित ऑफलाइन इस्लामी ज्ञानकोश केरऽ क्यूरेटिंग अखनी भी करलऽ जाय रहलऽ छै । अहां अखन ऑफलाइन फॉलबैक कें सक्षम कयर सकय छी, मुदा इ केवल सीमित सुरक्षित संदेशक कें देखायत जखन तइक स्रोत डाटासेट तैयार नहि भ जायत.\n\nकी अहाँ ऑफलाइन फॉलबैक सक्षम करय चाहब?';

  @override
  String get chatbotOfflineSwitched =>
      'के लिये।\nऑफलाइन फॉलबैक सक्षम। सत्यापित स्थानीय इस्लामी जवाब एखन धरि तैयार नहि अछि।';

  @override
  String get chatbotOfflineDownloadLabel => 'ऑफलाइन फॉलबैक सक्षम करू';

  @override
  String get downloadPreparing => 'Preparing download...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Downloading surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'एहि पाठक लेल सब सूरह पहिने स डाउनलोड भ गेल अछि।';

  @override
  String get offlineQuranAudioPacks => 'Offline Quran Audio Packs';

  @override
  String storedOnDeviceMb(String size) {
    return 'Stored on device: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surahs downloaded';
  }

  @override
  String get redownloadMissingRepair => 'Repair / Download Missing';

  @override
  String get downloadAction => 'के लिये।\nडाउनलोड करू';

  @override
  String get resumeDownload => 'के लिये।\nरिज्यूमे डाउनलोड';

  @override
  String get deleteDownloadedFiles => 'के लिये।\nडाउनलोड फाइल मेटाउ';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'के लिये।\n$reciter क लेल डाउनलोड रद्द कएल गेल.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'के लिये।\n$reciter के लेल डाउनलोड पूरा भ गेल.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'के लिये।\n$reciter क लेल डाउनलोड समाप्त भ गेल $failed असफल सूरह ($downloaded/$total डाउनलोड कएल गेल) क संग।';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Deleted offline files for $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Verified Quran audio sources are unavailable right now.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Verified Quran audio pack is incomplete ($available/$total). Refresh cloud seed and try again.';
  }

  @override
  String get chatbotHint => 'Ask a question...';

  @override
  String get chatbotThinking => 'Thinking...';

  @override
  String get sukunMixerSubtitle => 'प्रकृति एवं कुरान मिक्सर';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'सुकुन (प्रकृति) २.';

  @override
  String get sukunRainOfMercy => 'दया के वर्षा';

  @override
  String get sukunGardenOfPeace => 'शांति के बगीचा';

  @override
  String get sukunMidnightCalm => 'आधा राति शांत';

  @override
  String get sukunOceanTawheed => 'महासागर तौहीद';

  @override
  String get sukunUnavailableTitle => 'साउंडस्केप अनुपलब्ध अछि';

  @override
  String get sukunUnavailableBody =>
      'एहि बिल्ड मे एखन धरि आवश्यक सुकुन साउंडस्केप संपत्ति शामिल नहि अछि ।';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'दिन के लकीर';

  @override
  String get bestStreak => 'बेस्ट लकीर';

  @override
  String get chatbotCloudAiLabel => 'क्लाउड एआई';

  @override
  String get chatbotLocalAiLabel => 'ऑफलाइन फॉलबैक';

  @override
  String get chatbotUseCloudAi => 'क्लाउड एआई (Gemini) के प्रयोग करू';

  @override
  String get chatbotDownloadLocalAi => 'ऑफलाइन फॉलबैक सक्षम करू';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count बाम';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'के लिये।\nक्लाउड एपीआई कॉन्फ़िगर नहि कएल गेल अछि. कृपया स्थानीय एआई पर स्विच करू।';

  @override
  String get chatbotLocalNoInfo =>
      'के लिये।\n[OFFLINE] सत्यापित स्थानीय इस्लामी मार्गदर्शन एखन धरि उपलब्ध नै अछि। स्रोत उत्तरक लेल क्लाउड एआई पर स्विच करू.';

  @override
  String get mosques => 'मस्जिद';

  @override
  String get halalFood => 'हलाल भोजन';

  @override
  String get placesSearchArea => 'एहि क्षेत्र मे खोज करू';

  @override
  String get nearbyMosques => 'पास के मस्जिद';

  @override
  String get islamicSchools => 'इस्लामिक स्कूल';

  @override
  String placesFoundCount(String count) {
    return '$count भेटल';
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
  String get placesNetworkError => 'नेटवर्क त्रुटि। कृपया पुनः प्रयास करू।';

  @override
  String get placesLocationRequiredTitle => 'के लिये।\nस्थान आवश्यक';

  @override
  String get placesLocationRequiredBody =>
      'के लिये।\nपहिने कोनो स्थान निर्धारित करू जाहि सं नजदीकक मस्जिद, हलाल भोजन, आ इस्लामी स्कूलक सटीक खोज भ सकय.';

  @override
  String get placesMapTilesUnavailableTitle =>
      'के लिये।\nनक्शा टाइल्स अनुपलब्ध';

  @override
  String get placesMapTilesUnavailableBody =>
      'के लिये।\nएकटा सत्यापित मैप टाइल स्रोत एखन धरि एहि बिल्ड क लेल कॉन्फ़िगर नहि कएल गेल अछि. पास के जगह एखनो अहां के सेव कएल गेल लोकेशन सं लोड भ सकैत अछि.';

  @override
  String get unknownPlaceName => 'अज्ञात नाम';

  @override
  String get islamicPlaceFallback => 'इस्लामी स्थान';

  @override
  String get asmaMeaning1 => 'द बेनिफिसेंट';

  @override
  String get asmaMeaning2 => 'दयालु';

  @override
  String get asmaMeaning3 => 'राजा / सनातन प्रभु';

  @override
  String get asmaMeaning4 => 'परम पवित्र';

  @override
  String get asmaMeaning5 => 'शांति के स्रोत';

  @override
  String get asmaMeaning6 => 'सुरक्षा के दाता';

  @override
  String get asmaMeaning7 => 'द गार्जियन';

  @override
  String get asmaMeaning8 => 'अनमोल / परम पराक्रमी';

  @override
  String get asmaMeaning9 => 'द कम्पेलर';

  @override
  String get asmaMeaning10 => 'सबसे बड़का';

  @override
  String get asmaMeaning11 => 'सृष्टिकर्ता';

  @override
  String get asmaMeaning12 => 'व्यवस्था के निर्माता';

  @override
  String get asmaMeaning13 => 'सौन्दर्य के आकार देने वाला';

  @override
  String get asmaMeaning14 => 'क्षमाशील';

  @override
  String get asmaMeaning15 => 'वश में करय वाला';

  @override
  String get asmaMeaning16 => 'सबहक दाता';

  @override
  String get asmaMeaning17 => 'द सस्टेनर';

  @override
  String get asmaMeaning18 => 'द ओपनर';

  @override
  String get asmaMeaning19 => 'सब के ज्ञाता';

  @override
  String get asmaMeaning20 => 'कंस्ट्रिक्टर के';

  @override
  String get asmaMeaning21 => 'द रिलीवर';

  @override
  String get asmaMeaning22 => 'द अबसेर';

  @override
  String get asmaMeaning23 => 'द एक्साल्टर';

  @override
  String get asmaMeaning24 => 'सम्मान के दाता';

  @override
  String get asmaMeaning25 => 'अपमानजनक';

  @override
  String get asmaMeaning26 => 'सबहक श्रोता';

  @override
  String get asmaMeaning27 => 'सबहक द्रष्टा';

  @override
  String get asmaMeaning28 => 'जज साहेब';

  @override
  String get asmaMeaning29 => 'द जस्ट';

  @override
  String get asmaMeaning30 => 'सूक्ष्म वाला';

  @override
  String get asmaMeaning31 => 'द ऑल अवेयर';

  @override
  String get asmaMeaning32 => 'द फोरबेरिंग';

  @override
  String get asmaMeaning33 => 'द मैग्निफिसेंट';

  @override
  String get asmaMeaning34 => 'महान क्षमाकर्ता';

  @override
  String get asmaMeaning35 => 'धन्यवाद के पुरस्कृत';

  @override
  String get asmaMeaning36 => 'सर्वोच्च';

  @override
  String get asmaMeaning37 => 'सबसे बड़का';

  @override
  String get asmaMeaning38 => 'द प्रिजर्वर';

  @override
  String get asmaMeaning39 => 'द पोषक';

  @override
  String get asmaMeaning40 => 'हिसाब-किताब करय वाला';

  @override
  String get asmaMeaning41 => 'द मैजेस्टिक';

  @override
  String get asmaMeaning42 => 'उदार के';

  @override
  String get asmaMeaning43 => 'चौकस वाला';

  @override
  String get asmaMeaning44 => 'प्रार्थना के प्रतिवादी';

  @override
  String get asmaMeaning45 => 'द ऑल कम्प्रीहेन्डिंग';

  @override
  String get asmaMeaning46 => 'द परफेक्टली वाइज';

  @override
  String get asmaMeaning47 => 'प्रेमी';

  @override
  String get asmaMeaning48 => 'परम गौरवशाली';

  @override
  String get asmaMeaning49 => 'पुनरुत्थान करय वाला';

  @override
  String get asmaMeaning50 => 'गवाह';

  @override
  String get asmaMeaning51 => 'सत्य';

  @override
  String get asmaMeaning52 => 'सर्वपर्याप्त न्यासी';

  @override
  String get asmaMeaning53 => 'सब ताकत के स्वामी';

  @override
  String get asmaMeaning54 => 'द फोर्सफुल';

  @override
  String get asmaMeaning55 => 'रक्षक के';

  @override
  String get asmaMeaning56 => 'प्रशंसित';

  @override
  String get asmaMeaning57 => 'मूल्यांकनकर्ता';

  @override
  String get asmaMeaning58 => 'उत्पत्तिकर्ता';

  @override
  String get asmaMeaning59 => 'बहाली करय वाला';

  @override
  String get asmaMeaning60 => 'जीवन के दाता';

  @override
  String get asmaMeaning61 => 'जीवन लेनिहार';

  @override
  String get asmaMeaning62 => 'द एवर लिविंग';

  @override
  String get asmaMeaning63 => 'स्व-निर्भर धारक';

  @override
  String get asmaMeaning64 => 'द फाइंडर';

  @override
  String get asmaMeaning65 => 'गौरवशाली';

  @override
  String get asmaMeaning66 => 'एकमात्र एक';

  @override
  String get asmaMeaning67 => 'द वन';

  @override
  String get asmaMeaning68 => 'सब द्वारा खोजल गेल';

  @override
  String get asmaMeaning69 => 'द पावरफुल';

  @override
  String get asmaMeaning70 => 'सब शक्ति के सृष्टिकर्ता';

  @override
  String get asmaMeaning71 => 'द एक्सपीडिटर';

  @override
  String get asmaMeaning72 => 'देरी करय वाला';

  @override
  String get asmaMeaning73 => 'पहिल';

  @override
  String get asmaMeaning74 => 'द लास्ट';

  @override
  String get asmaMeaning75 => 'द मैनिफेस्ट';

  @override
  String get asmaMeaning76 => 'द हिडन';

  @override
  String get asmaMeaning77 => 'राज्यपाल जी';

  @override
  String get asmaMeaning78 => 'परमात्मा';

  @override
  String get asmaMeaning79 => 'भलाई के कर्ता';

  @override
  String get asmaMeaning80 => 'पश्चाताप के मार्गदर्शक';

  @override
  String get asmaMeaning81 => 'द एवेंजर';

  @override
  String get asmaMeaning82 => 'क्षमाकर्ता';

  @override
  String get asmaMeaning83 => 'द क्लेमेंट';

  @override
  String get asmaMeaning84 => 'सब के मालिक / सार्वभौम';

  @override
  String get asmaMeaning85 => 'महामहिम एवं इनाम के स्वामी';

  @override
  String get asmaMeaning86 => 'इक्विटेबल वाला';

  @override
  String get asmaMeaning87 => 'द गदरर';

  @override
  String get asmaMeaning88 => 'अमीर वाला';

  @override
  String get asmaMeaning89 => 'द एनरिचर';

  @override
  String get asmaMeaning90 => 'हानि के निवारक';

  @override
  String get asmaMeaning91 => 'हानि के लाने वाला';

  @override
  String get asmaMeaning92 => 'लाभ के दाता';

  @override
  String get asmaMeaning93 => 'प्रकाश';

  @override
  String get asmaMeaning94 => 'गाइडर के';

  @override
  String get asmaMeaning95 => 'उत्पत्तिकर्ता';

  @override
  String get asmaMeaning96 => 'शाश्वत वाला';

  @override
  String get asmaMeaning97 => 'उत्तराधिकारी';

  @override
  String get asmaMeaning98 => 'परम धर्मी मार्गदर्शक';

  @override
  String get asmaMeaning99 => 'रोगी एक';
}
