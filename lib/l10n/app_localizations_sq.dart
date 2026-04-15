// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Albanian (`sq`).
class AppLocalizationsSq extends AppLocalizations {
  AppLocalizationsSq([String locale = 'sq']) : super(locale);

  @override
  String get appTitle => 'Rruga e Allahut';

  @override
  String get splashTagline => 'Rruga Islame e Dritës';

  @override
  String get home => 'Shtëpi';

  @override
  String get quran => 'Kurani';

  @override
  String get qibla => 'Kibla';

  @override
  String get zikr => 'Zikri';

  @override
  String get calendar => 'Kalendari';

  @override
  String get settings => 'Cilësimet';

  @override
  String get nextPrayer => 'Lutja e radhës';

  @override
  String get prayerTimes => 'Kohët e lutjes';

  @override
  String get continueReading => 'Vazhdo Leximi';

  @override
  String get getLifetimePro => 'Merr Lifetime Pro';

  @override
  String get unlockTajweed => 'Zhbllokoni Tajweed dhe veçoritë e avancuara';

  @override
  String get prayerCalculation => 'Llogaritja e namazit';

  @override
  String get method => 'Mënyra e Llogaritjes';

  @override
  String get madhab => 'Metoda Juristike Asr';

  @override
  String get surahs => 'suret';

  @override
  String get ayahs => 'Ajetet';

  @override
  String get fajr => 'sabahun';

  @override
  String get sunrise => 'Lindja e diellit';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Akshami';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Koha për $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Është koha për t\'u lutur $prayerName.';
  }

  @override
  String get dataStorage => 'Të dhënat dhe ruajtja';

  @override
  String get clearCache => 'Pastro cache';

  @override
  String get cacheClearedSuccess => 'Cache u pastrua me sukses';

  @override
  String get location => 'Vendndodhja';

  @override
  String get language => 'Gjuha';

  @override
  String get selectLanguage => 'Zgjidhni gjuhën';

  @override
  String get searchLanguage => 'Kërko mbi 180 gjuhë...';

  @override
  String get systemDefault => 'Parazgjedhja e sistemit';

  @override
  String get currentLocation => 'Vendndodhja aktuale (GPS)';

  @override
  String get locationServiceDisabled =>
      'Shërbimi i vendndodhjes është i çaktivizuar.';

  @override
  String get locationPermissionDenied => 'Leja e vendndodhjes u refuzua.';

  @override
  String citiesCount(String count) {
    return '$count qytete';
  }

  @override
  String get search => 'Kërko';

  @override
  String get searchHint => 'Kërko...';

  @override
  String get noResults => 'Nuk u gjet asnjë rezultat';

  @override
  String get loading => 'Po ngarkohet...';

  @override
  String get error => 'Gabim';

  @override
  String get appErrorOccurred => 'Ndodhi një gabim';

  @override
  String get appUnknownError => 'Gabim i panjohur';

  @override
  String get quranLoadFailed =>
      'Përmbajtja e Kuranit nuk mund të ngarkohej. Ju lutemi provoni përsëri.';

  @override
  String get retry => 'Provo sërish';

  @override
  String get refreshAction => 'Rifresko';

  @override
  String get cancel => 'Anulo';

  @override
  String get save => 'Ruaj';

  @override
  String get delete => 'Fshije';

  @override
  String get edit => 'Redakto';

  @override
  String get close => 'Mbylle';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'po';

  @override
  String get no => 'Nr';

  @override
  String get surah => 'Surja';

  @override
  String ayahLabel(String ayah) {
    return 'Ajet $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Faqe';

  @override
  String get reading => 'Leximi';

  @override
  String get recitation => 'Recitim';

  @override
  String get translation => 'Përkthimi';

  @override
  String get tafsir => 'Tefsir';

  @override
  String get tafsirLoading => 'Po ngarkohet tefsiri...';

  @override
  String get tafsirSourceLabel => 'Burimi i tefsirit';

  @override
  String get tafsirNoSurahFound => 'Nuk u gjet asnjë tefsir për këtë sure.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Nuk u gjet asnjë tefsir për ajetin $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tefsir nuk mund të ngarkohej.';

  @override
  String get tafsirNoTextForAyah => 'Nuk ka tekst tefsir për këtë ajet.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Po shkarkon tefsirin $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Po ngarkohet tefsiri $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Burimi Tafsir ktheu një gabim HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Burimi i zgjedhur i tefsirit nuk ktheu asnjë hyrje.';

  @override
  String get bookmarks => 'Faqerojtësit';

  @override
  String get addBookmark => 'Shto faqeshënues';

  @override
  String get removeBookmark => 'Hiq faqeshënuesin';

  @override
  String get lastRead => 'Leximi i fundit';

  @override
  String get dailyZikr => 'Zikri ditor';

  @override
  String get duaMeaning1 =>
      'të tjerët luten: \"Zoti ynë, na jep të mira në këtë botë dhe në botën tjetër dhe na ruaj nga dënimi i zjarrit\".';

  @override
  String get duaMeaning2 =>
      'Zoti nuk e ngarkon asnjë shpirt me më shumë sesa mund të përballojë: secili fiton çdo të mirë që ka bërë dhe vuan të këqijat e tij - \"Zot, mos na merr në detyrë nëse harrojmë ose gabojmë\". O Zot, mos na ngarko si i ngarkove ata që ishin para nesh. Zot, mos na ngarko me më shumë sesa kemi forcë për të përballuar. Na fal, na fal dhe na mëshiro. Ti je Mbrojtësi ynë, prandaj na ndihmo kundër mosbesimtarëve!”';

  @override
  String get duaMeaning3 =>
      '“Zoti ynë, mos i lër zemrat tona të devijojnë pasi na ke udhëzuar. Na jep mëshirën Tënde: Ti je Gjithë Dhuruesi.';

  @override
  String get duaMeaning4 =>
      'Zot, më dhëntë që unë dhe pasardhësit e mi ta mbajmë namazin. Zoti ynë, pranoje kërkesën time.';

  @override
  String get duaMeaning5 =>
      'dhe uli krahun tënd me përulësi ndaj tyre në mirësi dhe thuaj: \"Zot, ki mëshirë për ta, ashtu siç u kujdesën për mua kur isha i vogël\".';

  @override
  String get duaMeaning6 =>
      'i lartësuar qoftë Perëndia, ai që është me të vërtetë në kontroll. [Pejgamber], mos nxito të recitosh para se të përfundojë shpallja, por thuaj: \"Zot, më shto diturinë!\"';

  @override
  String get duaMeaning7 =>
      'Thuaj [Profetit]: \"Zot, fal dhe mëshiro: Ti je më i mëshirshmi nga të gjithë\".';

  @override
  String get duaMeaning8 =>
      'ata që luten: “Zoti ynë, na jep gëzim me bashkëshortet dhe pasardhësit tanë. Na bëj shembuj të mirë për ata që janë të vetëdijshëm për Ty”.';

  @override
  String get morningZikr => 'Zikri i mëngjesit';

  @override
  String get eveningZikr => 'Zikri i mbrëmjes';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masa\'il';

  @override
  String get hadith => 'Hadithi';

  @override
  String get hadithCollection => 'Koleksioni i Haditheve';

  @override
  String get hadithBooks => 'Librat e Hadithit';

  @override
  String get searchHadith => 'Kërko Hadith';

  @override
  String get asmaulHusna => 'Esma-ul-Husna';

  @override
  String get namesOfAllah => 'Emrat e Allahut';

  @override
  String get liveTv => 'TV drejtpërdrejt';

  @override
  String get watchLive => 'Shikoni drejtpërdrejt';

  @override
  String get streamError => 'Gabim transmetimi';

  @override
  String get reload => 'Ringarko';

  @override
  String get openInYoutube => 'Hape në YouTube';

  @override
  String get ibadahTracker => 'Gjurmuesi i ibadetit';

  @override
  String get fasting => 'agjërimi';

  @override
  String get quranReading => 'Leximi i Kuranit';

  @override
  String get prayers => 'lutjet';

  @override
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '${hours}orë ${minutes}m';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '${minutes}m';
  }

  @override
  String get prayerRemainingUnavailable => '--';

  @override
  String get dhikrCount => 'Kont Dhikri';

  @override
  String get weeklyProgress => 'Përparimi javor';

  @override
  String get monthlyProgress => 'Progresi mujor';

  @override
  String get statistics => 'Statistikat';

  @override
  String get hijriCalendar => 'Kalendari Hixhri';

  @override
  String get gregorianCalendar => 'Kalendari Gregorian';

  @override
  String get today => 'Sot';

  @override
  String get tomorrow => 'Nesër';

  @override
  String get yesterday => 'Dje';

  @override
  String get specialDays => 'Ditë të veçanta';

  @override
  String get ramadan => 'Ramazani';

  @override
  String get eidAlFitr => 'Fitër Bajrami';

  @override
  String get eidAlAdha => 'Kurban Bajrami';

  @override
  String get islamicNewYear => 'Viti i Ri Islamik';

  @override
  String get mawlidAnNabi => 'Mevlid en-Nebi';

  @override
  String get specialDayDateRamadanStart => '1 Ramazan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramazan';

  @override
  String get specialDayDateEidAlFitr => '1 Sheval';

  @override
  String get specialDayDateEidAlAdha => '10 Dhul Hixhe';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharrem';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabiul Evvel';

  @override
  String get laylatAlQadr => 'Nata e Kadrit';

  @override
  String get qiblaDirection => 'Drejtimi i Kiblës';

  @override
  String get compass => 'Kompas';

  @override
  String get degrees => 'gradë';

  @override
  String get north => 'Veriu';

  @override
  String get qiblaFound => 'Kibla u gjet!';

  @override
  String get turnDevice => 'Kthejeni pajisjen tuaj në drejtim të Kiblës';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Gabim busull: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Sensori i busullës nuk ofrohet në këtë pajisje.';

  @override
  String get adhanNotificationChannelName => 'Njoftimet e ezanit';

  @override
  String get adhanNotificationChannelDescription =>
      'Alarmet për kohën e namazit me tingullin e ezanit.';

  @override
  String get notifications => 'Njoftimet';

  @override
  String get prayerNotifications => 'Njoftimet për lutjen';

  @override
  String get enableNotifications => 'Aktivizo Njoftimet';

  @override
  String get notificationTime => 'Koha e njoftimit';

  @override
  String get beforePrayer => 'minuta para namazit';

  @override
  String get theme => 'Tema';

  @override
  String get lightMode => 'Modaliteti i dritës';

  @override
  String get darkMode => 'Modaliteti i errët';

  @override
  String get systemTheme => 'Tema e Sistemit';

  @override
  String get about => 'Rreth';

  @override
  String get version => 'Versioni';

  @override
  String get privacyPolicy => 'Politika e privatësisë';

  @override
  String get termsOfService => 'Kushtet e Shërbimit';

  @override
  String get contactUs => 'Na kontaktoni';

  @override
  String get rateApp => 'Vlerësoni aplikacionin';

  @override
  String get shareApp => 'Ndani aplikacionin';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Menaxheri i Shkarkimit';

  @override
  String get downloads => 'Shkarkimet';

  @override
  String get downloading => 'Po shkarkohet...';

  @override
  String get downloadComplete => 'Shkarkimi përfundoi';

  @override
  String get downloadFailed => 'Shkarkimi dështoi';

  @override
  String get offlineMode => 'Modaliteti jashtë linje';

  @override
  String get noInternet => 'Nuk ka lidhje interneti';

  @override
  String get checkConnection => 'Ju lutemi kontrolloni lidhjen tuaj';

  @override
  String get premium => 'Premium';

  @override
  String get upgradeToPro => 'Përmirësojeni në Pro';

  @override
  String get proFeatures => 'Karakteristikat Pro';

  @override
  String get removeAds => 'Hiq reklamat';

  @override
  String get unlockAll => 'Zhbllokoni të gjithë përmbajtjen';

  @override
  String get exclusiveContent => 'Përmbajtje ekskluzive';

  @override
  String get welcome => 'Mirë se vini';

  @override
  String get getStarted => 'Filloni';

  @override
  String get skip => 'Kapërce';

  @override
  String get next => 'Tjetra';

  @override
  String get done => 'U krye';

  @override
  String get onboarding1Title => 'Mirë se vini në Rrugën e Allahut';

  @override
  String get onboarding1Desc =>
      'Aplikacioni juaj i plotë shoqërues islamik për kohët e lutjes, Kuranin dhe më shumë';

  @override
  String get onboarding2Title => 'Kohët e lutjes';

  @override
  String get onboarding2Desc =>
      'Kohët e sakta të lutjes bazuar në vendndodhjen tuaj';

  @override
  String get onboarding3Title => 'Kuran dhe më shumë';

  @override
  String get onboarding3Desc =>
      'Lexoni Kuranin, gjurmoni leximin tuaj dhe eksploroni përmbajtjen islame';

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
  String get zikrCompletedMashAllah => 'E përfunduar! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allahu është shumë mbi çdo papërsosmëri.';

  @override
  String get zikrMeaningAlhamdulillah => 'I gjithë lavdërimi i takon Allahut.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allahu është më i madhi.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Nuk ka zot përveç Allahut.';

  @override
  String get zikrMeaningAstaghfirullah => 'Kërkoj falje nga Allahu.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Nuk ka fuqi dhe fuqi përveçse nëpërmjet Allahut.';

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
  String get offlineDownloadManager => 'Menaxheri i shkarkimit jashtë linje';

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
  String get audioVoice => 'Zëri audio';

  @override
  String get audioVoiceMisharyAlafasy => 'Mashkull (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Mashkull (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Mashkull (Sudais)';

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
  String get diagnosticsNotSet => 'Nuk është vendosur';

  @override
  String get diagnosticsPrayerProfile => 'Profili i lutjes';

  @override
  String get diagnosticsPrayerSource => 'Autoriteti i Lutjes';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Me porosi / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Kënde të personalizuara manuale (pa burim institucional)';

  @override
  String get diagnosticsCloudDriven => 'Drejtuar nga rea';

  @override
  String get diagnosticsAdhanAudioAssets => 'Asetet audio të Ezanit';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Asetet audio të Kuranit';

  @override
  String get diagnosticsAudioAssets => 'Asetet audio';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count skedarë';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Leximi i manifestit dështoi: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Lokalizimi Locales';

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
      'Mungojnë tabelat e reve në Supabase; backback i paketuar aktiv';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Mungojnë meta të dhënat e Cloud juz; kthim strukturor i paketuar aktiv';

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
  String get dailyVerse => 'Vargu i përditshëm';

  @override
  String get todaysIbadah => 'Ibadeti i sotëm';

  @override
  String get quickAccess => 'Qasje e Shpejtë';

  @override
  String get assistant => 'Asistent';

  @override
  String get places => 'Vendet';

  @override
  String get library => 'Biblioteka';

  @override
  String get analytics => 'Analiza';

  @override
  String get dailyDuas => 'Duas ditore';

  @override
  String essentialDuas(String count) {
    return '$count dua thelbësore';
  }

  @override
  String get duaUnavailableTitle => 'Duat e verifikuara nuk ofrohen ende';

  @override
  String get duaUnavailableBody =>
      'Duat e verifikuara ditore nuk janë sinkronizuar ende me këtë pajisje. Lidhu me burimin cloud për të ngarkuar duatë me burim në vend të një kthimi të paverifikuar.';

  @override
  String get duaCategoryQuranic => 'dua Kur\'anore';

  @override
  String get duaCategoryMorningEvening => 'Mëngjes & Mbrëmje';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Mbrojtja';

  @override
  String get duaCategoryBeginning => 'Fillimet';

  @override
  String get duaCategorySleep => 'Flini';

  @override
  String get duaCategoryFoodDrink => 'Ushqim & Pije';

  @override
  String get duaCategoryForgiveness => 'falje';

  @override
  String get duaCategoryHome => 'Shtëpi';

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
  String get islamicEducation => 'Edukata Islame';

  @override
  String get sukunAudioTitle => 'Tinguj Sukun';

  @override
  String get hadithCollections => 'Koleksionet e Haditheve';

  @override
  String get hadithSourcePending => 'Burimi i verifikuar në pritje';

  @override
  String get hadithUnavailableTitle =>
      'Koleksionet e verifikuara të haditheve nuk janë ende të disponueshme';

  @override
  String get hadithUnavailableBody =>
      'Ky ndërtim ende varet nga një burim i jashtëm i hadithit të paverifikuar. Shfletimi i hadithit qëndron i çaktivizuar derisa të sinkronizohet një grup të dhënash me burim.';

  @override
  String get paywallUnlockAll =>
      'Zhbllokoni të gjitha veçoritë për udhëtimin tuaj shpirtëror';

  @override
  String get premiumProductUnavailable =>
      'Produkti premium nuk është i disponueshëm për momentin. Ju lutemi provoni përsëri më vonë.';

  @override
  String get premiumPurchaseFailed =>
      'Blerja nuk mund të përfundonte. Ju lutemi provoni përsëri.';

  @override
  String get paywallFeature1Title => 'Asistent Neural Plus';

  @override
  String get paywallFeature1Desc => 'Pyetje dhe përgjigje të pakufizuara me AI';

  @override
  String get paywallFeature2Title => 'Pafund offline';

  @override
  String get paywallFeature2Desc => 'Shkarkoni të gjitha recitimet';

  @override
  String get paywallFeature3Title => 'Modele ekskluzive';

  @override
  String get paywallFeature3Desc => 'Temat dhe shkronjat premium';

  @override
  String get paywallFeature4Title => 'Pa reklama';

  @override
  String get paywallFeature4Desc => 'Zero reklama';

  @override
  String get paywallGetAccess =>
      'Merrni akses gjatë gjithë jetës - 1,00 dollarë';

  @override
  String get restorePurchases => 'Rivendos blerjet';

  @override
  String get zakatCalculator => 'Llogaritësi i Zekatit';

  @override
  String get zakatGold => 'Ar (Altın)';

  @override
  String get zakatSilver => 'Argjend (Gümüş)';

  @override
  String get zakatCashBank => 'Cash / Bankë';

  @override
  String get zakatBusiness => 'Biznesi';

  @override
  String get zakatInvestments => 'Investimet';

  @override
  String get zakatWeightGrams => 'Pesha (g)';

  @override
  String get zakatPricePerGram => 'Çmimi/g';

  @override
  String get zakatTotalAmount => 'Shuma totale';

  @override
  String get zakatInventoryValue => 'Vlera e inventarit';

  @override
  String get zakatDebts => 'Borxhet';

  @override
  String get zakatTotal => 'Gjithsej';

  @override
  String get calculateZakat => 'Llogarit Zekatin';

  @override
  String get nisabNotReached => 'Nisab nuk u arrit. Zekati nuk është obligim.';

  @override
  String get totalZakat => 'Zekati i përgjithshëm';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Asetet: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zekati i arit';

  @override
  String get zakatSilverZakat => 'Zekati i argjendit';

  @override
  String get zakatCashZakat => 'Zekati në para';

  @override
  String get zakatBusinessZakat => 'Zekati i biznesit';

  @override
  String get zakatInvestmentZakat => 'Zekati i investimit';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'U arrit kufiri ditor i pyetjeve. Përmirësoje në Premium për pakuf.';

  @override
  String get chatbotErrorMsg =>
      'Nuk mund të gjeneroja një përgjigje. Ju lutemi provoni përsëri.';

  @override
  String get chatbotOfflinePrompt =>
      'Baza e verifikuar e njohurive islame jashtë linje është ende duke u kuruar. Mund të aktivizosh kthimin jashtë linje tani, por do të shfaqë vetëm mesazhe të kufizuara të sigurta derisa grupi i të dhënave me burim të jetë gati.\n\nDëshironi të aktivizoni kthimin jashtë linje?';

  @override
  String get chatbotOfflineSwitched =>
      'Rikthimi jashtë linje është aktivizuar. Përgjigjet e verifikuara lokale islame nuk janë ende gati.';

  @override
  String get chatbotOfflineDownloadLabel => 'Aktivizo kthimin jashtë linje';

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
  String get downloadAction => 'Shkarkoni';

  @override
  String get resumeDownload => 'Rifillimi i shkarkimit';

  @override
  String get deleteDownloadedFiles => 'Fshi skedarët e shkarkuar';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Shkarkimi u anulua për $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Shkarkimi përfundoi për $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Shkarkimi përfundoi për $reciter me $failed sure të dështuara ($downloaded/$total të shkarkuara).';
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
  String get sukunMixerSubtitle => 'Përzierëse e Natyrës dhe Kuranit';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (Natyrë)';

  @override
  String get sukunRainOfMercy => 'Shiu i Mëshirës';

  @override
  String get sukunGardenOfPeace => 'Kopshti i Paqes';

  @override
  String get sukunMidnightCalm => 'Qetësi e mesnatës';

  @override
  String get sukunOceanTawheed => 'Teuhidi i Oqeanit';

  @override
  String get sukunUnavailableTitle => 'Pamjet tingujsh nuk ofrohen';

  @override
  String get sukunUnavailableBody =>
      'Ky ndërtim nuk përfshin ende asetet e kërkuara të pamjes zanore të Sukun.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Rrjedha e ditës';

  @override
  String get bestStreak => 'Rrjedha më e mirë';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Rikthim jashtë linje';

  @override
  String get chatbotUseCloudAi => 'Përdor Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Aktivizo kthimin jashtë linje';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count u largua';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API nuk është konfiguruar. Ju lutemi kaloni në Local AI.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Udhëzimi i verifikuar lokal islamik nuk ofrohet ende. Kalo te Cloud AI për përgjigjet me burim.';

  @override
  String get mosques => 'Xhamitë';

  @override
  String get halalFood => 'Ushqim hallall';

  @override
  String get placesSearchArea => 'Kërkoni këtë zonë';

  @override
  String get nearbyMosques => 'Xhamitë aty pranë';

  @override
  String get islamicSchools => 'Shkollat ​​Islame';

  @override
  String placesFoundCount(String count) {
    return '$count u gjet';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km larg';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Gabim API: $statusCode';
  }

  @override
  String get placesNetworkError => 'Gabim rrjeti. Ju lutemi provoni përsëri.';

  @override
  String get placesLocationRequiredTitle => 'Kërkohet vendndodhja';

  @override
  String get placesLocationRequiredBody =>
      'Vendosni fillimisht një vendndodhje në mënyrë që xhamitë e afërta, ushqimi hallall dhe shkollat islame të mund të kërkohen me saktësi.';

  @override
  String get placesMapTilesUnavailableTitle => 'Pllakat e hartës nuk ofrohen';

  @override
  String get placesMapTilesUnavailableBody =>
      'Një burim i verifikuar i pllakës së hartës nuk është konfiguruar ende për këtë ndërtim. Vendet në afërsi mund të ngarkohen ende nga vendndodhja jote e ruajtur.';

  @override
  String get unknownPlaceName => 'Emër i panjohur';

  @override
  String get islamicPlaceFallback => 'Vendi Islamik';

  @override
  String get asmaMeaning1 => 'Beneficenti';

  @override
  String get asmaMeaning2 => 'I Mëshirshmi';

  @override
  String get asmaMeaning3 => 'Mbreti / Zoti i Përjetshëm';

  @override
  String get asmaMeaning4 => 'Më i Shenjti';

  @override
  String get asmaMeaning5 => 'Burimi i Paqes';

  @override
  String get asmaMeaning6 => 'Dhuruesi i Sigurisë';

  @override
  String get asmaMeaning7 => 'Guardian';

  @override
  String get asmaMeaning8 => 'I Çmuari / Më i Fuqishmi';

  @override
  String get asmaMeaning9 => 'Detyruesi';

  @override
  String get asmaMeaning10 => 'Më i madhi';

  @override
  String get asmaMeaning11 => 'Krijuesi';

  @override
  String get asmaMeaning12 => 'Bënësi i Rendit';

  @override
  String get asmaMeaning13 => 'Formuesi i Bukurisë';

  @override
  String get asmaMeaning14 => 'Falja';

  @override
  String get asmaMeaning15 => 'Nënshtruesi';

  @override
  String get asmaMeaning16 => 'Dhuruesi i gjithçkaje';

  @override
  String get asmaMeaning17 => 'Mbështetësi';

  @override
  String get asmaMeaning18 => 'Hapësi';

  @override
  String get asmaMeaning19 => 'Njohësi i të gjithëve';

  @override
  String get asmaMeaning20 => 'Konstruktori';

  @override
  String get asmaMeaning21 => 'Lehtësuesi';

  @override
  String get asmaMeaning22 => 'Abaseri';

  @override
  String get asmaMeaning23 => 'Eksalteri';

  @override
  String get asmaMeaning24 => 'Dhuruesi i Nderit';

  @override
  String get asmaMeaning25 => 'Poshtëruesi';

  @override
  String get asmaMeaning26 => 'Dëgjuesi i të Gjithëve';

  @override
  String get asmaMeaning27 => 'Shikuesi i të Gjithëve';

  @override
  String get asmaMeaning28 => 'Gjyqtari';

  @override
  String get asmaMeaning29 => 'I drejti';

  @override
  String get asmaMeaning30 => 'I hollë';

  @override
  String get asmaMeaning31 => 'Të gjithë të vetëdijshëm';

  @override
  String get asmaMeaning32 => 'Paraardhësi';

  @override
  String get asmaMeaning33 => 'I Madhërishmi';

  @override
  String get asmaMeaning34 => 'Falësi i Madh';

  @override
  String get asmaMeaning35 => 'Shpërbluesi i Falënderimit';

  @override
  String get asmaMeaning36 => 'Më i larti';

  @override
  String get asmaMeaning37 => 'Më i madhi';

  @override
  String get asmaMeaning38 => 'Rojtari';

  @override
  String get asmaMeaning39 => 'Ushquesi';

  @override
  String get asmaMeaning40 => 'Llogaritësi';

  @override
  String get asmaMeaning41 => 'Majestic';

  @override
  String get asmaMeaning42 => 'Bujari';

  @override
  String get asmaMeaning43 => 'Një vigjilent';

  @override
  String get asmaMeaning44 => 'Përgjigjësi ndaj lutjes';

  @override
  String get asmaMeaning45 => 'Gjithçka Kuptimi';

  @override
  String get asmaMeaning46 => 'I mençuri i përkryer';

  @override
  String get asmaMeaning47 => 'I dashuruari';

  @override
  String get asmaMeaning48 => 'Më i Lavdishmi';

  @override
  String get asmaMeaning49 => 'Ringjalltari';

  @override
  String get asmaMeaning50 => 'Dëshmitari';

  @override
  String get asmaMeaning51 => 'E vërteta';

  @override
  String get asmaMeaning52 => 'Administratori i Besuar i Mjaftueshëm';

  @override
  String get asmaMeaning53 => 'Poseduesi i të gjithë fuqisë';

  @override
  String get asmaMeaning54 => 'I Forcuari';

  @override
  String get asmaMeaning55 => 'Mbrojtësi';

  @override
  String get asmaMeaning56 => 'Të lavdëruarit';

  @override
  String get asmaMeaning57 => 'Vlerësuesi';

  @override
  String get asmaMeaning58 => 'Origjinatori';

  @override
  String get asmaMeaning59 => 'Restauruesi';

  @override
  String get asmaMeaning60 => 'Dhuruesi i Jetës';

  @override
  String get asmaMeaning61 => 'Marrësi i jetës';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'Mbështetësi i Vetëqëndrueshëm';

  @override
  String get asmaMeaning64 => 'Gjetësi';

  @override
  String get asmaMeaning65 => 'I Lavdishmi';

  @override
  String get asmaMeaning66 => 'I vetmi';

  @override
  String get asmaMeaning67 => 'I One';

  @override
  String get asmaMeaning68 => 'Ai që kërkohet nga të gjithë';

  @override
  String get asmaMeaning69 => 'Të Fuqishmit';

  @override
  String get asmaMeaning70 => 'Krijuesi i gjithë fuqisë';

  @override
  String get asmaMeaning71 => 'Përshpejtuesi';

  @override
  String get asmaMeaning72 => 'Vonesat';

  @override
  String get asmaMeaning73 => 'I pari';

  @override
  String get asmaMeaning74 => 'I fundit';

  @override
  String get asmaMeaning75 => 'Manifesti';

  @override
  String get asmaMeaning76 => 'E fshehura';

  @override
  String get asmaMeaning77 => 'Guvernatori';

  @override
  String get asmaMeaning78 => 'I Lartësuari';

  @override
  String get asmaMeaning79 => 'Bërësi i së mirës';

  @override
  String get asmaMeaning80 => 'Udhëzuesi për Pendimin';

  @override
  String get asmaMeaning81 => 'Avenger';

  @override
  String get asmaMeaning82 => 'Falësi';

  @override
  String get asmaMeaning83 => 'Klementi';

  @override
  String get asmaMeaning84 => 'Pronari / Sovrani i të Gjithëve';

  @override
  String get asmaMeaning85 => 'Poseduesi i Madhështisë dhe Bujarisë';

  @override
  String get asmaMeaning86 => 'Equitable One';

  @override
  String get asmaMeaning87 => 'Mbledhësi';

  @override
  String get asmaMeaning88 => 'I Pasuri';

  @override
  String get asmaMeaning89 => 'Pasuruesi';

  @override
  String get asmaMeaning90 => 'Parandaluesi i dëmtimit';

  @override
  String get asmaMeaning91 => 'Sjellësi i dëmit';

  @override
  String get asmaMeaning92 => 'Dhuruesi i përfitimeve';

  @override
  String get asmaMeaning93 => 'Drita';

  @override
  String get asmaMeaning94 => 'Udhëzuesi';

  @override
  String get asmaMeaning95 => 'Origjinatori';

  @override
  String get asmaMeaning96 => 'I Përjetshmi';

  @override
  String get asmaMeaning97 => 'Trashëgimtari';

  @override
  String get asmaMeaning98 => 'Udhëzuesi më i drejtë';

  @override
  String get asmaMeaning99 => 'Pacienti Një';
}
