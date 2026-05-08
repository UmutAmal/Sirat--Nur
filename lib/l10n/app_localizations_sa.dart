// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sanskrit (`sa`).
class AppLocalizationsSa extends AppLocalizations {
  AppLocalizationsSa([String locale = 'sa']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'इस्लामिक प्रकाश मार्ग';

  @override
  String get home => 'गृहम्';

  @override
  String get quran => 'कुरान';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'जिक्र';

  @override
  String get calendar => 'Calendar';

  @override
  String get settings => 'सेटिंग्स्';

  @override
  String get nextPrayer => 'अग्रिमः प्रार्थना';

  @override
  String get prayerTimes => 'प्रार्थना समय';

  @override
  String get continueReading => 'पठनं निरन्तरं कुर्वन्तु';

  @override
  String get getLifetimePro => 'आजीवन-प्रो प्राप्नुयात्';

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
  String get fajr => 'फज्र';

  @override
  String get sunrise => 'सूर्योदय';

  @override
  String get dhuhr => 'धुह्र';

  @override
  String get asr => 'अस्र';

  @override
  String get maghrib => 'मघरिब';

  @override
  String get isha => 'ईशा';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName कृते समयः ।';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '$prayerName प्रार्थनायाः समयः अस्ति।';
  }

  @override
  String get dataStorage => 'Data & Storage';

  @override
  String get clearCache => 'Clear Cache';

  @override
  String get cacheClearedSuccess => 'Cache cleared successfully';

  @override
  String get location => 'स्थानीय';

  @override
  String get language => 'Language';

  @override
  String get selectLanguage => 'Select Language';

  @override
  String get searchLanguage => '१८०+ भाषाः अन्विष्यताम्...';

  @override
  String get systemDefault => 'System Default';

  @override
  String get currentLocation => 'Current Location (GPS)';

  @override
  String get locationServiceDisabled => 'स्थानसेवा अक्षमम् अस्ति।';

  @override
  String get locationPermissionDenied => 'स्थानस्य अनुमतिः अङ्गीकृता।';

  @override
  String get locationDetectionFailed =>
      'भवतः स्थानं ज्ञातुं न शक्तवान्। कृपया हस्तचलितरूपेण नगरं चिनुत अथवा पुनः प्रयासं कुर्वन्तु।';

  @override
  String citiesCount(String count) {
    return '$count नगराणि';
  }

  @override
  String get search => 'अन्वेषणम्';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'न परिणामः प्राप्तः';

  @override
  String get loading => 'लोडिंग...';

  @override
  String get error => 'त्रुटिः';

  @override
  String get appErrorOccurred => 'एकः दोषः अभवत्';

  @override
  String get appUnknownError => 'अज्ञातदोषः';

  @override
  String get quranLoadFailed =>
      'कुरान सामग्री लोड् कर्तुं न शक्यते स्म। कृपया पुनः प्रयासं कुर्वन्तु।';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'ताजगी';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'विलोपयतु';

  @override
  String get edit => 'सम्पादयतु';

  @override
  String get close => 'निमील्यताम्';

  @override
  String get ok => 'ठीकम्';

  @override
  String get yes => 'आम्';

  @override
  String get no => 'नहि';

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
  String get reading => 'पठनम्';

  @override
  String get recitation => 'Recitation';

  @override
  String get translation => 'अनुवाद';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'लोडिंग तफसिर...';

  @override
  String get tafsirSourceLabel => 'तफसीर स्रोतः';

  @override
  String get tafsirNoSurahFound => 'अस्य सूरस्य कृते न तफसीरः लब्धः।';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'अयम् $ayah कृते कोऽपि तफसीरः न प्राप्तः।';
  }

  @override
  String get tafsirLoadFailed => 'तफसीरं भारं कर्तुं न शक्तवान् ।';

  @override
  String get tafsirNoTextForAyah => 'अस्य अयस्य कृते न तफसीरग्रन्थः।';

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
    return 'तफ्सिर् स्रोतः HTTP $statusCode त्रुटिं प्रत्यागच्छत् ।';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'चयनितः tafsir स्रोतः कोऽपि प्रविष्टिः न प्रत्यागच्छत् ।';

  @override
  String get tafsirCacheUnavailable =>
      'सत्यापितं tafsir अद्यापि अफलाइनरूपेण उपलब्धं नास्ति। ब्राउजिंग् करणात् पूर्वं स्रोतः tafsir दत्तांशसमूहं समन्वययन्तु ।';

  @override
  String get bookmarks => 'पुस्तकचिह्नानि';

  @override
  String get addBookmark => 'Add Bookmark';

  @override
  String get removeBookmark => 'Remove Bookmark';

  @override
  String get lastRead => 'अन्तिमपठनम्';

  @override
  String get dailyZikr => 'दैनिक जिक्र';

  @override
  String get duaMeaning1 =>
      'अन्ये प्रार्थयन्ति, ‘भगवन् अस्मान् इह लोके परत्र च भद्रं देहि, अग्निपीडनात् रक्ष नः’ इति ।';

  @override
  String get duaMeaning2 =>
      'ईश्वरः कस्यचित् आत्मानः सहनशक्तितः अधिकं भारं न भारयति: प्रत्येकं यत् किमपि हितं कृतवान् तत् प्राप्नोति, तस्य दुष्टं च दुःखं प्राप्नोति- ‘ भगवन्, यदि वयं विस्मरामः वा त्रुटिं कुर्मः वा तर्हि अस्मान् कार्ये मा गृहाण। भगवन् मा नो भारं यथा त्वया अस्माकं पुरतः भारं कृतम् । भगवन्, अस्माकं कृते यत्किमपि बलं वर्तते तस्मात् अधिकं भारं मा अस्मान् धारयतु। क्षमस्व, क्षमस्व, अनुग्रहं कुरु। त्वं अस्माकं रक्षकः असि, अतः अविश्वासिनः विरुद्धं अस्मान् साहाय्यं कुर्वन्तु।’';

  @override
  String get duaMeaning3 =>
      '‘अस्माकं भगवन् त्वया मार्गदर्शनं कृत्वा हृदयं मा व्यभिचरतु । अस्मान् दयां ददातु : त्वं नित्यदाता असि।';

  @override
  String get duaMeaning4 =>
      'प्रभो प्रयच्छ मम सन्तानं च प्रार्थनां कुर्वताम् । अस्माकं भगवन् मम याचनां गृहाण।';

  @override
  String get duaMeaning5 =>
      'तेषां प्रति विनयेन पक्षं अधः कृत्वा वदन्तु यत् ‘प्रभो तान् दयां कुरु यथा ते मम अल्पे काले परिचर्याम् अकरोत्।’ इति।';

  @override
  String get duaMeaning6 =>
      'उच्चः भवतु ईश्वरः, यः यथार्थतया वशं करोति। [भविष्यद्वादिना], प्रकाशनस्य पूर्णतया पूर्णतायाः पूर्वं पठितुं न त्वरितम् किन्तु वदतु, ‘प्रभो, मां ज्ञानं वर्धयतु!’ इति।';

  @override
  String get duaMeaning7 =>
      '[नबी] वदतु, ‘प्रभो, क्षमस्व दयां च कुरु, त्वं सर्वेभ्यः दयालुः असि।’';

  @override
  String get duaMeaning8 =>
      'ये प्रार्थयन्ति, ‘अस्माकं भगवन्, अस्माकं पतिपत्नीषु, सन्तानेषु च आनन्दं ददातु। त्वां विज्ञायानां कृते अस्मान् सुदृष्टान्तान् कुरु’ इति ।';

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
  String get hadithBooks => 'हदीस पुस्तकें';

  @override
  String get searchHadith => 'हदीस खोजें';

  @override
  String get asmaulHusna => 'असमा-उल-हुस्ना';

  @override
  String get namesOfAllah => 'Names of Allah';

  @override
  String get liveTv => 'लाइव टीवी';

  @override
  String get watchLive => 'Watch Live';

  @override
  String get streamError => 'Stream error';

  @override
  String get reload => 'Reload';

  @override
  String get openInYoutube => 'यूट्यूबे उद्घाटितम्';

  @override
  String get ibadahTracker => 'इबादाह ट्रैकर';

  @override
  String get fasting => 'Fasting';

  @override
  String get quranReading => 'Quran Reading';

  @override
  String get playSurahAudio => 'सूरः श्रव्यं वादयन्तु';

  @override
  String get pauseSurahAudio => 'सूरः श्रव्यं विरमयतु';

  @override
  String get revelationMeccan => 'मक्की';

  @override
  String get revelationMedinan => 'मदनी';

  @override
  String get prayers => 'Prayers';

  @override
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '$hours होरा $minutes निमेषाः';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '$minutes निमेषाः';
  }

  @override
  String get prayerRemainingUnavailable => '--';

  @override
  String get dhikrCount => 'Dhikr Count';

  @override
  String get weeklyProgress => 'Weekly Progress';

  @override
  String get monthlyProgress => 'मासिक प्रगति';

  @override
  String get statistics => 'सांख्यिकी';

  @override
  String get hijriCalendar => 'Hijri Calendar';

  @override
  String get gregorianCalendar => 'ग्रेगोरियन पञ्चाङ्गम्';

  @override
  String get today => 'Today';

  @override
  String get tomorrow => 'श्वः';

  @override
  String get yesterday => 'ह्यः';

  @override
  String get specialDays => 'Special Days';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'इस्लामिक नववर्ष';

  @override
  String get mawlidAnNabi => 'मौलिद अण-नबी';

  @override
  String get specialDayDateRamadanStart => '१ रमजान';

  @override
  String get specialDayDateLaylatAlQadr => '२७ रमजान';

  @override
  String get specialDayDateEidAlFitr => '१ शव्वालः';

  @override
  String get specialDayDateEidAlAdha => '१० धुल हिज्जा';

  @override
  String get specialDayDateIslamicNewYear => '१ मुहर्रम';

  @override
  String get specialDayDateMawlidAnNabi => '१२ रबी अल-अववाल';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'किब्ला दिशा';

  @override
  String get compass => 'Compass';

  @override
  String get degrees => 'अंशाः';

  @override
  String get north => 'उत्तरम्';

  @override
  String get qiblaFound => 'Qibla found!';

  @override
  String get turnDevice => 'Turn your device to face the Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'कम्पास त्रुटिः $error .';
  }

  @override
  String get qiblaSensorUnavailable =>
      'अस्मिन् यन्त्रे कम्पाससंवेदकः अनुपलब्धः अस्ति ।';

  @override
  String get qiblaLocationRequiredTitle => 'किब्ला कृते स्थानं आवश्यकम्';

  @override
  String get qiblaLocationRequiredBody =>
      'Qibla कम्पासस्य उपयोगात् पूर्वं स्वस्य वास्तविकं स्थानं सेट् कुर्वन्तु येन दिशायाः गणना सटीकरूपेण कर्तुं शक्यते ।';

  @override
  String get adhanNotificationChannelName => 'अधान अधिसूचना';

  @override
  String get adhanNotificationChannelDescription =>
      'Prayer time alerts with adhan sound.';

  @override
  String get notifications => 'अधिसूचनाः';

  @override
  String get prayerNotifications => 'Prayer Notifications';

  @override
  String get enableNotifications => 'सूचनाः सक्षमाः कुर्वन्तु';

  @override
  String get notificationTime => 'अधिसूचना समयः';

  @override
  String get beforePrayer => 'minutes before prayer';

  @override
  String get theme => 'विषयः';

  @override
  String get lightMode => 'Light Mode';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get systemTheme => 'प्रणालीविषयः';

  @override
  String get about => 'About';

  @override
  String get version => 'संस्करणम्';

  @override
  String get privacyPolicy => 'गोपनीयता नीति';

  @override
  String get termsOfService => 'Terms of Service';

  @override
  String get contactUs => 'Contact Us';

  @override
  String get rateApp => 'अस्य एप् इत्यस्य मूल्याङ्कनं कुर्वन्तु';

  @override
  String get shareApp => 'एतत् एप् साझां कुर्वन्तु';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'डाउनलोड प्रबन्धक';

  @override
  String get downloads => 'डाउनलोड्स्';

  @override
  String get downloading => 'डाउनलोड् करणं...';

  @override
  String get downloadComplete => 'डाउनलोड सम्पूर्ण';

  @override
  String get downloadFailed => 'डाउनलोड् विफलम्';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'अन्तर्जालसम्पर्कः नास्ति';

  @override
  String get checkConnection => 'Please check your connection';

  @override
  String get premium => 'प्रीमियम';

  @override
  String get upgradeToPro => 'प्रो-योजनायां उन्नयन्तु';

  @override
  String get proFeatures => 'प्रो-विशेषताः';

  @override
  String get removeAds => 'विज्ञापनानि निष्कासयन्तु';

  @override
  String get unlockAll => 'सर्वं सामग्रीम् उद्घाटयन्तु';

  @override
  String get exclusiveContent => 'विशिष्टसामग्री';

  @override
  String get welcome => 'स्वागतम्';

  @override
  String get getStarted => 'Get Started';

  @override
  String get skip => 'अतिक्रामतु';

  @override
  String get next => 'Next';

  @override
  String get done => 'Done';

  @override
  String get onboarding1Title => 'सिराट्-ı नूर इत्यत्र स्वागतम्';

  @override
  String get onboarding1Desc =>
      'Your complete Islamic companion app for prayer times, Quran, and more';

  @override
  String get onboarding2Title => 'Prayer Times';

  @override
  String get onboarding2Desc => 'भवतः स्थानस्य आधारेण सटीकाः प्रार्थनासमयाः';

  @override
  String get onboarding3Title => 'Quran & More';

  @override
  String get onboarding3Desc =>
      'Read Quran, track your reading, and explore Islamic content';

  @override
  String get dhikrLibrary => 'धिक्र पुस्तकालय';

  @override
  String get resetCounter => 'Reset Counter';

  @override
  String get changeTarget => 'लक्ष्यं परिवर्तयन्तु';

  @override
  String get newTarget => 'नवीनं लक्ष्यं';

  @override
  String targetCount(Object target) {
    return 'Target: $target';
  }

  @override
  String get tapToCount => 'गणयितुं ट्याप् कुर्वन्तु';

  @override
  String get zikrCompletedMashAllah => 'सम्पन्न! मशअल्लाह';

  @override
  String get zikrMeaningSubhanAllah =>
      'अल्लाहः प्रत्येकं अपूर्णतायाः दूरं उपरि अस्ति।';

  @override
  String get zikrMeaningAlhamdulillah => 'सर्वाणि स्तुतिः अल्लाहस्य एव अस्ति।';

  @override
  String get zikrMeaningAllahuAkbar => 'अल्लाहः सर्वाधिकः अस्ति।';

  @override
  String get zikrMeaningLaIlahaIllallah =>
      'अल्लाहं विना अन्यः कोऽपि देवः नास्ति।';

  @override
  String get zikrMeaningAstaghfirullah => 'अहं अल्लाहस्य क्षमायाचनां करोमि।';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'अल्लाहस्य माध्यमेन विना कोऽपि शक्तिः, बलं च नास्ति।';

  @override
  String get dailyChecklist => 'दैनिक जाँचसूची';

  @override
  String get qazaDebt => 'काजा (ऋण)';

  @override
  String get resetQazaData => 'काजा दत्तांशं पुनः स्थापय';

  @override
  String get resetQazaDebtQuestion => 'काजा ऋणं पुनः स्थापयेत्?';

  @override
  String get rawatib => 'Rawatib';

  @override
  String get tahajjud => 'Tahajjud';

  @override
  String get dailyProgress => 'Daily Progress';

  @override
  String get mandatoryPrayers => 'अनिवार्य प्रार्थनाः';

  @override
  String get sunnahAndOthers => 'सुन्नत एवं अन्य';

  @override
  String get spiritualGrowth => 'आध्यात्मिक वृद्धि';

  @override
  String get mandatoryDuty => 'अनिवार्य कर्तव्य';

  @override
  String get totalPrayers => 'कुल प्रार्थनाः';

  @override
  String get prayerDebt => 'प्रार्थना ऋण';

  @override
  String get fastingDebt => 'उपवास ऋण';

  @override
  String get reset => 'पुनः स्थापय';

  @override
  String get days => 'दिवसाः';

  @override
  String get premiumIntegrity => 'प्रीमियम अखंडता';

  @override
  String get recheckPremium => 'Recheck Premium Status';

  @override
  String get syncStore => 'Sync with the store to confirm your entitlement.';

  @override
  String get checkingPremium => 'प्रीमियमस्य स्थितिं परीक्षते...';

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
  String get manageDatasets =>
      'विशालं ऑफलाइन ऑडियो & डाटासेट् पैक् प्रबन्धयन्तु।';

  @override
  String get freeStorage => 'आन्तरिकयन्त्रभण्डारणं मुक्तं कुर्वन्तु।';

  @override
  String get quranIntegrity => 'कुरान अखंडता';

  @override
  String get checkQuranDb => 'कुरान डाटाबेसं परीक्ष्यताम्';

  @override
  String get verifyQuranContent => '११४ सूराः ६२३६ आयताः च सत्याप्यन्ताम्।';

  @override
  String get checkingQuranDb => 'Checking Quran database...';

  @override
  String get okLabel => 'ठीकम्';

  @override
  String get incomplete => 'अपूर्णम्';

  @override
  String get notSeeded => 'न बीजितम्';

  @override
  String get quranDbStatus => 'Quran Database Status';

  @override
  String statusLabel(Object status) {
    return 'Status: $status';
  }

  @override
  String surahsCount(Object count) {
    return 'सूराः: $count (अपेक्षितम् 114)';
  }

  @override
  String ayahsCount(Object count) {
    return 'आयताः: $count (अपेक्षितम् 6236)';
  }

  @override
  String missingArabic(Object count) {
    return 'अरबी पाठः अनुपलब्धः: $count';
  }

  @override
  String missingTurkish(Object count) {
    return 'तुर्की अनुवादः अनुपलब्धः: $count';
  }

  @override
  String dbVersion(Object version) {
    return 'DB संस्करणम्: $version';
  }

  @override
  String dbPath(Object path) {
    return 'मार्गः: $path';
  }

  @override
  String quranCheckFailed(Object error) {
    return 'कुरान जाँच असफल: $error';
  }

  @override
  String get audioVoice => 'श्रव्य स्वर';

  @override
  String get audioVoiceMisharyAlafasy => 'Male (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Male (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Male (Sudais)';

  @override
  String get fajrAngle => 'फजर कोण';

  @override
  String get ishaAngle => 'ईशा कोण';

  @override
  String get qiblaCalibration => 'किब्ला मापन';

  @override
  String get compassSmoothing => 'कम्पास स्मूथिंग';

  @override
  String get reduceSensorJitter =>
      'स्थिरतर-सूच्यर्थं संवेदक-कम्पनं न्यूनीकरोतु।';

  @override
  String get calibrationOffset => 'मापन ऑफसेट';

  @override
  String currentOffset(Object offset) {
    return 'वर्तमान: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'यदि भवतः कम्पासस्य हस्तशुद्धेः आवश्यकता अस्ति तर्हि समायोजयन्तु। सकारात्मकमूल्यानि घड़ीयानदिशायां परिभ्रमन्ति ।';

  @override
  String get apply => 'परिवर्तनं प्रयोजयन्तु';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'प्रारम्भिकां सेटअप प्रक्रियां पुनः चालयन्तु।';

  @override
  String get diagnostics => 'निदानम्';

  @override
  String get diagnosticsNotSet => 'न सेट्';

  @override
  String get diagnosticsPrayerProfile => 'प्रार्थना प्रोफाइल';

  @override
  String get diagnosticsPrayerSource => 'प्रार्थना प्राधिकरण';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'स्वनिर्धारित / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'मैनुअल् कस्टम् कोणाः (कोऽपि संस्थागतः स्रोतः नास्ति) २.';

  @override
  String diagnosticsPrayerHybridSource(String sourceName, String madhab) {
    return '$sourceName उपयोक्तृ-चयनितेन सह विधिः $madhab Asr सेटिंग्';
  }

  @override
  String diagnosticsPrayerRegionalFallbackSource(String sourceName) {
    return '$sourceName इत्यस्य उपयोगेन क्षेत्रीयः फॉलबैक । स्वमस्जिदेन अथवा आधिकारिकधार्मिकप्राधिकरणेन सह स्थानीयनमाजसमयानां पुष्टिं कुर्वन्तु।';
  }

  @override
  String get diagnosticsCloudDriven => 'मेघ चालित';

  @override
  String get diagnosticsAdhanAudioAssets => 'अधन श्रव्य सम्पत्ति';

  @override
  String get diagnosticsUiAudioAssets => 'यूआई ऑडियो एसेट्स';

  @override
  String get diagnosticsQuranAudioAssets => 'कुरान श्रव्य सम्पत्ति';

  @override
  String get diagnosticsAudioAssets => 'श्रव्य सम्पत्ति';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count सञ्चिकाः';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'प्रकटपठनं विफलम्: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'स्थानीयकरण स्थानीयता';

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
      'Supabase इत्यत्र मेघसारणीः अनुपलब्धाः; bundled fallback सक्रियः';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'मेघ juz मेटाडाटा अनुपलब्धः; bundled संरचनात्मक fallback सक्रिय';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Cloud structural check failed: $error';
  }

  @override
  String get healthCheckDesc =>
      'स्वास्थ्यपरीक्षां चालयन्तु तथा च प्रणाल्याः स्थितिं पश्यन्तु।';

  @override
  String get qiblaAligned => 'किब्ला संरेखिता';

  @override
  String get rotateToFindQibla => 'किब्लां अन्वेष्टुं घुमन्तु';

  @override
  String get calibrationRequiredFigure8 =>
      'Calibration required. Rotate device in figure-8.';

  @override
  String get dailyVerse => 'दैनिक श्लोक';

  @override
  String get dailyVerseUnavailableTitle => 'नित्य श्लोक अनुपलब्ध';

  @override
  String get dailyVerseUnavailableBody =>
      'सत्यापिता दैनिकपद्यसामग्री अद्यापि अस्य निर्माणस्य कृते विन्यस्ता नास्ति । मेघस्रोतेन सह सम्बद्धं कुर्वन्तु अथवा ब्राउज् कर्तुं पूर्वं सत्यापितं संग्रहणं समन्वययन्तु ।';

  @override
  String get todaysIbadah => 'अद्यतन इबादः';

  @override
  String get quickAccess => 'त्वरितप्रवेशः';

  @override
  String get assistant => 'सहायकं';

  @override
  String get places => 'स्थानाः';

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
  String get duaUnavailableTitle => 'सत्यापिताः दुआः अद्यापि न उपलभ्यन्ते';

  @override
  String get duaUnavailableBody =>
      'सत्यापिताः दैनिकदुआः अद्यापि अस्मिन् यन्त्रे समन्वयिताः न सन्ति । असत्यापितस्य फॉलबैकस्य स्थाने स्रोतः दुआस् लोड् कर्तुं मेघस्रोतेन सह संयोजयन्तु ।';

  @override
  String get duaCategoryQuranic => 'कुरान दुआ';

  @override
  String get duaCategoryMorningEvening => 'प्रातः & सायं';

  @override
  String get duaCategoryTasbih => 'तस्बिः';

  @override
  String get duaCategoryProtection => 'रक्षणम्';

  @override
  String get duaCategoryBeginning => 'आरम्भाः';

  @override
  String get duaCategorySleep => 'शयनं करोतु';

  @override
  String get duaCategoryFoodDrink => 'भोजन एवं पेय';

  @override
  String get duaCategoryForgiveness => 'क्षमा';

  @override
  String get duaCategoryHome => 'गृहम्‌';

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
  String get sukunAudioTitle => 'सुकुन ध्वनिदृश्य';

  @override
  String get hadithCollections => 'हदीस संग्रह';

  @override
  String get hadithSourcePending => 'सत्यापितः स्रोतः लम्बितः अस्ति';

  @override
  String get hadithUnavailableTitle =>
      'सत्यापितहदीससङ्ग्रहाः अद्यापि न उपलभ्यन्ते';

  @override
  String get hadithUnavailableBody =>
      'इदं बिल्ड् अद्यापि असत्यापितबाह्यहदीसफीड् इत्यस्य उपरि निर्भरं भवति । यावत् स्रोतः दत्तांशसमूहः समन्वयितः न भवति तावत् हदीथ-ब्राउजिंग् अक्षमं तिष्ठति ।';

  @override
  String get paywallUnlockAll =>
      'भवतः आध्यात्मिकयात्रायाः सर्वाणि विशेषतानि अनलॉक कुर्वन्तु';

  @override
  String get premiumProductUnavailable =>
      'प्रीमियम उत्पादः अधुना उपलब्धः नास्ति। कृपया पश्चात् पुनः प्रयासं कुर्वन्तु।';

  @override
  String get premiumPurchaseFailed =>
      'क्रयणं सम्पन्नं कर्तुं न शक्यते स्म । कृपया पुनः प्रयासं कुर्वन्तु।';

  @override
  String get paywallFeature1Title => 'तंत्रिका सहायक प्लस';

  @override
  String get paywallFeature1Desc => 'असीमित एआइ-सञ्चालित प्रश्नोत्तर';

  @override
  String get paywallFeature2Title => 'असीमित अफलाइन';

  @override
  String get paywallFeature2Desc => 'सर्वाणि पाठाः डाउनलोड् कुर्वन्तु';

  @override
  String get paywallFeature3Title => 'अनन्य डिजाइन';

  @override
  String get paywallFeature3Desc => 'प्रीमियम विषयवस्तु & फ़ॉन्ट्स';

  @override
  String get paywallFeature4Title => 'विज्ञापन-मुक्त';

  @override
  String get paywallFeature4Desc => 'शून्य विज्ञापन';

  @override
  String get paywallGetAccess => 'आजीवनं प्रवेशं प्राप्नुवन्तु — \$1.00';

  @override
  String get restorePurchases => 'क्रयणं पुनर्स्थापयन्तु';

  @override
  String get zakatCalculator => 'जकात गणक';

  @override
  String get zakatGold => 'सुवर्ण (Altın) ९.';

  @override
  String get zakatSilver => 'रजत (गुमुश) २.';

  @override
  String get zakatCashBank => 'नगद / बैंक';

  @override
  String get zakatBusiness => 'व्यवसायः';

  @override
  String get zakatInvestments => 'निवेशाः';

  @override
  String get zakatWeightGrams => 'भारः (छ) २.';

  @override
  String get zakatPricePerGram => 'मूल्य/छ';

  @override
  String get zakatTotalAmount => 'कुल राशि';

  @override
  String get zakatInventoryValue => 'इन्वेन्ट्री मूल्य';

  @override
  String get zakatDebts => 'ऋणानि';

  @override
  String get zakatTotal => 'कुल';

  @override
  String get calculateZakat => 'जकात की गणना करें';

  @override
  String get nisabNotReached => 'निसाबः न प्राप्तः। जकात अनिवार्यं न भवति।';

  @override
  String get totalZakat => 'कुल जकात';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'स्वर्ण जकात';

  @override
  String get zakatSilverZakat => 'रजत जकात';

  @override
  String get zakatCashZakat => 'नगद जकात';

  @override
  String get zakatBusinessZakat => 'व्यापार जकात';

  @override
  String get zakatInvestmentZakat => 'निवेश जकात';

  @override
  String get chatbotGreeting =>
      'अस्सलामु अलैकुम ! अहं भवतः इस्लामिकसहायकः अस्मि। नमाजस्य, उपवासस्य, जकातस्य, अथवा कस्यापि इस्लामिकविषये मां पृच्छन्तु।';

  @override
  String get chatbotLimitReached =>
      'दैनिकप्रश्नसीमा प्राप्ता। असीमितस्य कृते प्रीमियमं प्रति उन्नयनं कुर्वन्तु।';

  @override
  String get chatbotErrorMsg =>
      'अहं प्रतिक्रियां जनयितुं न शक्तवान्। कृपया पुनः प्रयासं कुर्वन्तु।';

  @override
  String get chatbotOfflinePrompt =>
      'सत्यापितं अफलाइन इस्लामिकज्ञानकोशम् अद्यापि क्यूरेटिङ्ग् क्रियते। इदानीं भवान् offline fallback सक्षमं कर्तुं शक्नोति, परन्तु स्रोतः दत्तांशसमूहः सज्जः न भवति तावत् केवलं सीमितसुरक्षितसन्देशान् एव दर्शयिष्यति ।\n\nकिं भवान् अफलाइन-फॉलबैक् सक्षमं कर्तुम् इच्छति?';

  @override
  String get chatbotOfflineSwitched =>
      'अफलाइन fallback सक्षमम्। सत्यापितस्थानीय इस्लामिक उत्तराणि अद्यापि सज्जाः न सन्ति।';

  @override
  String get chatbotOfflineDownloadLabel => 'Offline Fallback सक्षमं कुर्वन्तु';

  @override
  String get downloadPreparing => 'डाउनलोडस्य सज्जता...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'डाउनलोडिंग सूरह $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'अस्य पाठकस्य कृते सर्वाणि सूराः पूर्वमेव अवतरणं कृतवन्तः।';

  @override
  String get offlineQuranAudioPacks => 'ऑफलाइन कुरान ऑडियो पैक';

  @override
  String storedOnDeviceMb(String size) {
    return 'उपकरणे संगृहीतम्: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total सूरा डाउनलोड';
  }

  @override
  String get redownloadMissingRepair => 'मरम्मत / डाउनलोड अनुपलब्ध';

  @override
  String get downloadAction => 'डाउनलोड करें';

  @override
  String get resumeDownload => 'डाउनलोड् करणं निरन्तरं कुर्वन्तु';

  @override
  String get deleteDownloadedFiles => 'डाउनलोड् कृतानि सञ्चिकाः विलोपयन्तु';

  @override
  String get cancelDownloadAction => 'डाउनलोड् रद्दं कुर्वन्तु';

  @override
  String get downloadCancelling => 'रद्दं कुर्वन्...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return '$reciter कृते डाउनलोड् रद्दम्।';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return '$reciter कृते डाउनलोड् सम्पन्नम्।';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return '$reciter कृते $failed विफलसूरहैः सह डाउनलोड् समाप्तम् ($downloaded/$total डाउनलोड् कृतम्)।';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Deleted offline files for $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'सत्यापिताः कुरानस्य श्रव्यस्रोताः अधुना अनुपलब्धाः सन्ति।';

  @override
  String get quranAudioPlaybackErrorWithConnectionHint =>
      'श्रव्यस्य वाद्यं विफलम् अभवत् । कृपया स्वस्य संयोजनं पश्यन्तु।';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'सत्यापितं कुरान ऑडियो पैक अपूर्णम् अस्ति ($available/$total)। श्रव्यसूची अद्यतनीकरणानन्तरं पुनः प्रयासं कुर्वन्तु।';
  }

  @override
  String get chatbotHint => 'प्रश्नं पृच्छतु...';

  @override
  String get chatbotThinking => 'चिन्तयन्...';

  @override
  String get sukunMixerSubtitle => 'प्रकृति एवं कुरान मिक्सर';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'सुकुण् (प्रकृति) ९.';

  @override
  String get sukunRainOfMercy => 'दयायाः वर्षा';

  @override
  String get sukunGardenOfPeace => 'शान्तिस्य उद्यानम्';

  @override
  String get sukunMidnightCalm => 'अर्धरात्रि शान्त';

  @override
  String get sukunOceanTawheed => 'महासागर तौहीद';

  @override
  String get sukunUnavailableTitle => 'ध्वनिदृश्यानि अनुपलब्धानि';

  @override
  String get sukunUnavailableBody =>
      'अस्मिन् निर्माणे अद्यापि आवश्यकाः सुकुन् ध्वनिदृश्यसम्पत्तयः न समाविष्टाः सन्ति ।';

  @override
  String get prayerCompletion => 'प्रार्थना समाप्ति';

  @override
  String get streaks => 'धारयः';

  @override
  String get dayStreak => 'दिवसस्य लकीरम्';

  @override
  String get bestStreak => 'सर्वोत्तम लकीर';

  @override
  String get chatbotCloudAiLabel => 'मेघः ए.आइ';

  @override
  String get chatbotLocalAiLabel => 'अफलाइन Fallback';

  @override
  String get chatbotUseCloudAi =>
      'Cloud AI (Gemini) इत्यस्य उपयोगं कुर्वन्तु ।';

  @override
  String get chatbotDownloadLocalAi => 'Offline Fallback सक्षमं कुर्वन्तु';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count वाम';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'मेघ एपिआइ विन्यस्तं नास्ति । सत्यापितं अफलाइन इस्लामिकमार्गदर्शनं अद्यापि उपलब्धं नास्ति।';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] सत्यापितं स्थानीयं इस्लामिकमार्गदर्शनं अद्यापि उपलब्धं नास्ति। स्रोत-उत्तराणां कृते Cloud AI -इत्यत्र स्विच् कुर्वन्तु ।';

  @override
  String get mosques => 'मस्जिदाः';

  @override
  String get halalFood => 'हलाल भोजन';

  @override
  String get placesSearchArea => 'एतत् क्षेत्रं अन्वेष्टुम्';

  @override
  String get nearbyMosques => 'समीपस्थाः मस्जिदाः';

  @override
  String get islamicSchools => 'इस्लामिक विद्यालय';

  @override
  String placesFoundCount(String count) {
    return '$count प्राप्त';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance कि.मी दूरे';
  }

  @override
  String placesApiError(String statusCode) {
    return 'एपिआइ त्रुटिः $statusCode .';
  }

  @override
  String get placesNetworkError => 'संजालदोषः। कृपया पुनः प्रयासं कुर्वन्तु।';

  @override
  String get placesLocationRequiredTitle => 'स्थानं आवश्यकम्';

  @override
  String get placesLocationRequiredBody =>
      'प्रथमं स्थानं स्थापयन्तु येन समीपस्थाः मस्जिदाः, हलालभोजनं, इस्लामिकविद्यालयाः च समीचीनतया अन्वेष्टुं शक्यन्ते।';

  @override
  String get placesMapTilesUnavailableTitle => 'नक्शा टाइल्स अनुपलब्ध';

  @override
  String get placesMapTilesUnavailableBody =>
      'अस्य निर्माणस्य कृते अद्यापि सत्यापितः मानचित्रटाइलस्रोतः विन्यस्तः नास्ति । समीपस्थानि स्थानानि अद्यापि भवतः रक्षितस्थानात् लोड् कर्तुं शक्नुवन्ति ।';

  @override
  String get placesDataSourceUnavailableTitle => 'दत्तांशं अनुपलब्धं स्थापयति';

  @override
  String get placesDataSourceUnavailableBody =>
      'अस्य निर्माणस्य कृते अद्यापि सत्यापितः स्थानदत्तांशः अन्त्यबिन्दुः विन्यस्तः नास्ति । समीपस्थं अन्वेषणं सक्षमीकरणात् पूर्वं PLACES_OVERPASS_API_URL इत्येतत् अनुमोदितं प्रॉक्सी अथवा प्रदातृं प्रति सेट् कुर्वन्तु ।';

  @override
  String get unknownPlaceName => 'अज्ञात नाम';

  @override
  String get islamicPlaceFallback => 'इस्लामिक स्थान';

  @override
  String get asmaMeaning1 => 'परोपकारी';

  @override
  String get asmaMeaning2 => 'दयालुः';

  @override
  String get asmaMeaning3 => 'राजा / सनातनेश्वरः';

  @override
  String get asmaMeaning4 => 'परम पवित्रम्';

  @override
  String get asmaMeaning5 => 'शान्तिस्य स्रोतः';

  @override
  String get asmaMeaning6 => 'सुरक्षाप्रदः';

  @override
  String get asmaMeaning7 => 'द गार्जियन इति पत्रिका';

  @override
  String get asmaMeaning8 => 'अमूल्यः / परमशक्तिमान्';

  @override
  String get asmaMeaning9 =>
      'The Restorer and Irresistible, whose will prevails with perfect power.';

  @override
  String get asmaMeaning10 => 'बृहत्तमः';

  @override
  String get asmaMeaning11 => 'प्रजापतिः';

  @override
  String get asmaMeaning12 => 'क्रमस्य निर्माता';

  @override
  String get asmaMeaning13 => 'सौन्दर्यस्य आकारकः';

  @override
  String get asmaMeaning14 => 'क्षमाशीलः';

  @override
  String get asmaMeaning15 => 'वशकः';

  @override
  String get asmaMeaning16 => 'सर्वेषां दाता';

  @override
  String get asmaMeaning17 => 'द सस्टेनर इति';

  @override
  String get asmaMeaning18 => 'द ओपनर';

  @override
  String get asmaMeaning19 => 'सर्वज्ञः';

  @override
  String get asmaMeaning20 =>
      'The Withholder, who narrows and restrains by wisdom.';

  @override
  String get asmaMeaning21 =>
      'The Expander, who opens, eases, and grants abundance by wisdom.';

  @override
  String get asmaMeaning22 => 'अबासेर् इति';

  @override
  String get asmaMeaning23 => 'उदात्तः';

  @override
  String get asmaMeaning24 => 'सम्मानप्रदाता';

  @override
  String get asmaMeaning25 => 'अपमानकः';

  @override
  String get asmaMeaning26 => 'सर्वेषां श्रोता';

  @override
  String get asmaMeaning27 => 'सर्वेषां द्रष्टा';

  @override
  String get asmaMeaning28 => 'न्यायाधीशः';

  @override
  String get asmaMeaning29 => 'द जस्ट्';

  @override
  String get asmaMeaning30 => 'सूक्ष्मः';

  @override
  String get asmaMeaning31 => 'द ऑल अवेयर';

  @override
  String get asmaMeaning32 => 'पूर्वजः';

  @override
  String get asmaMeaning33 => 'भव्यम्';

  @override
  String get asmaMeaning34 => 'महान् क्षमाकर्ता';

  @override
  String get asmaMeaning35 => 'धन्यवादस्य पुरस्कृतः';

  @override
  String get asmaMeaning36 => 'सर्वोच्चः';

  @override
  String get asmaMeaning37 => 'बृहत्तमः';

  @override
  String get asmaMeaning38 => 'संरक्षकः इति';

  @override
  String get asmaMeaning39 => 'पोषकः';

  @override
  String get asmaMeaning40 => 'लेखाकारः';

  @override
  String get asmaMeaning41 => 'महामहिमः';

  @override
  String get asmaMeaning42 => 'उदारः';

  @override
  String get asmaMeaning43 => 'प्रहृतः';

  @override
  String get asmaMeaning44 => 'प्रार्थनाप्रतिसादकः';

  @override
  String get asmaMeaning45 => 'The All Comprehending इति';

  @override
  String get asmaMeaning46 => 'सम्यक् बुद्धिमान्';

  @override
  String get asmaMeaning47 => 'प्रेम्णः';

  @override
  String get asmaMeaning48 => 'परम महिमामयी';

  @override
  String get asmaMeaning49 => 'पुनरुत्थानकर्ता';

  @override
  String get asmaMeaning50 => 'साक्षी';

  @override
  String get asmaMeaning51 => 'सत्यम्';

  @override
  String get asmaMeaning52 => 'सर्वपर्याप्त न्यासी';

  @override
  String get asmaMeaning53 => 'सर्वबलस्य स्वामी';

  @override
  String get asmaMeaning54 => 'बलवान् इति';

  @override
  String get asmaMeaning55 => 'रक्षकः';

  @override
  String get asmaMeaning56 => 'प्रशंसिताः';

  @override
  String get asmaMeaning57 => 'मूल्याङ्ककः';

  @override
  String get asmaMeaning58 => 'उत्पत्तिकर्ता';

  @override
  String get asmaMeaning59 => 'पुनर्स्थापकः';

  @override
  String get asmaMeaning60 => 'जीवनस्य दाता';

  @override
  String get asmaMeaning61 => 'जीवनग्राहकः';

  @override
  String get asmaMeaning62 => 'द एवर लिविंग इति';

  @override
  String get asmaMeaning63 => 'आत्मनिर्भरः धारकः';

  @override
  String get asmaMeaning64 => 'द फाइण्डर् इति';

  @override
  String get asmaMeaning65 => 'गौरवशालिनः';

  @override
  String get asmaMeaning66 => 'एकमात्रः';

  @override
  String get asmaMeaning67 => 'एकः';

  @override
  String get asmaMeaning68 => 'सर्वैः अन्विष्यमाणः';

  @override
  String get asmaMeaning69 => 'शक्तिशालिनः';

  @override
  String get asmaMeaning70 => 'सर्वशक्तेः प्रजापतिः';

  @override
  String get asmaMeaning71 => 'द एक्सपीडिटर इति';

  @override
  String get asmaMeaning72 => 'विलम्बकः';

  @override
  String get asmaMeaning73 => 'प्रथमः';

  @override
  String get asmaMeaning74 => 'अन्तिमः';

  @override
  String get asmaMeaning75 => 'प्रकट इति';

  @override
  String get asmaMeaning76 => 'गुप्त इति';

  @override
  String get asmaMeaning77 =>
      'The Protecting Patron, who governs and cares for all creation.';

  @override
  String get asmaMeaning78 => 'परमात्मनः';

  @override
  String get asmaMeaning79 => 'भद्रस्य कर्ता';

  @override
  String get asmaMeaning80 => 'पश्चात्तापस्य मार्गदर्शकः';

  @override
  String get asmaMeaning81 => 'द एवेन्जर इति';

  @override
  String get asmaMeaning82 => 'क्षमाकर्ता';

  @override
  String get asmaMeaning83 => 'क्लेमेण्ट् इति';

  @override
  String get asmaMeaning84 => 'सर्वेषां स्वामिः / सार्वभौमः';

  @override
  String get asmaMeaning85 => 'महामहिमस्य वरदानस्य च स्वामी';

  @override
  String get asmaMeaning86 => 'समता इति';

  @override
  String get asmaMeaning87 => 'सङ्ग्रहकः';

  @override
  String get asmaMeaning88 => 'धनिकः';

  @override
  String get asmaMeaning89 => 'समृद्धिकारकः';

  @override
  String get asmaMeaning90 => 'हानिनिवारणकः';

  @override
  String get asmaMeaning91 => 'हानिकारकः';

  @override
  String get asmaMeaning92 => 'लाभप्रदः';

  @override
  String get asmaMeaning93 => 'प्रकाशः';

  @override
  String get asmaMeaning94 => 'मार्गदर्शकः';

  @override
  String get asmaMeaning95 => 'उत्पत्तिकर्ता';

  @override
  String get asmaMeaning96 => 'अनादिः';

  @override
  String get asmaMeaning97 => 'उत्तराधिकारी';

  @override
  String get asmaMeaning98 => 'परमधर्ममार्गदर्शकः';

  @override
  String get asmaMeaning99 =>
      'The Patient, who does not hasten punishment and acts with perfect forbearance.';
}
