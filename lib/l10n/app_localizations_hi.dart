// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'अल्लाह का रास्ता';

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
  String get retry => 'पुनः प्रयास करें';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get save => 'सहेजें';

  @override
  String get delete => 'हटाएं';

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
  String get downloadManager => 'डाउनलोड मैनेजर';

  @override
  String get downloads => 'डाउनलोड';

  @override
  String get downloading => 'डाउनलोड हो रहा है...';

  @override
  String get downloadComplete => 'डाउनलोड पूरा हुआ';

  @override
  String get downloadFailed => 'डाउनलोड विफल';

  @override
  String get offlineMode => 'ऑफ़लाइन मोड';

  @override
  String get noInternet => 'इंटरनेट कनेक्शन नहीं है';

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
  String get offlineDownloadManager => 'Offline Download Manager';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Free up internal device storage.';

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
  String missingEnglish(Object count) {
    return 'Missing English: $count';
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
  String get audioVoice => 'Audio Voice';

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
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

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
      'Cloud tables missing in Supabase; bundled fallback active';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz metadata missing; bundled structural fallback active';

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
  String get dailyVerse => 'दैनिक श्लोक';

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
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

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
  String get downloadPreparing => 'Preparing download...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Downloading surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'All surahs already downloaded for this reciter.';

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
  String get downloadAction => 'Download';

  @override
  String get resumeDownload => 'Resume Download';

  @override
  String get deleteDownloadedFiles => 'Delete Downloaded Files';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Download canceled for $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Download completed for $reciter.';
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
  String get sukunMixerSubtitle => 'प्रकृति और कुरान मिक्सर';

  @override
  String get audioPlayFailed => 'Audio playback failed';

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
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'दिन का सिलसिला';

  @override
  String get bestStreak => 'सर्वोत्तम स्ट्रीक';

  @override
  String get chatbotCloudAiLabel => 'क्लाउड ए.आई';

  @override
  String get chatbotLocalAiLabel => 'ऑफ़लाइन फ़ॉलबैक';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'ऑफ़लाइन फ़ॉलबैक सक्षम करें';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count शेष';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'क्लाउड एपीआई कॉन्फ़िगर नहीं किया गया. कृपया स्थानीय एआई पर स्विच करें।';

  @override
  String get chatbotLocalNoInfo =>
      '[ऑफ़लाइन] सत्यापित स्थानीय इस्लामी मार्गदर्शन अभी तक उपलब्ध नहीं है। स्रोतित उत्तरों के लिए क्लाउड AI पर स्विच करें।';

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
  String get unknownPlaceName => 'अज्ञात नाम';

  @override
  String get islamicPlaceFallback => 'इस्लामिक स्थान';
}
