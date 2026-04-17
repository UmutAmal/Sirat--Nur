// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Samoan (`sm`).
class AppLocalizationsSm extends AppLocalizations {
  AppLocalizationsSm([String locale = 'sm']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Ala faa-Islam o le Malamalama';

  @override
  String get home => 'Aiga';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Kalena';

  @override
  String get settings => 'Fa\'atonu';

  @override
  String get nextPrayer => 'Tatalo Sosoo';

  @override
  String get prayerTimes => 'Taimi Tatalo';

  @override
  String get continueReading => 'Continue Reading';

  @override
  String get getLifetimePro => 'Get Lifetime Pro';

  @override
  String get unlockTajweed => 'Unlock Tajweed & Advanced Features';

  @override
  String get prayerCalculation => 'Fa\'atatau ole Tatalo';

  @override
  String get method => 'Metotia Fa\'atatau';

  @override
  String get madhab => 'Asr Juristic Method';

  @override
  String get surahs => 'Surah';

  @override
  String get ayahs => 'Ayahs';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Le oso a\'e o le la';

  @override
  String get dhuhr => 'Dhuhur';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Magrib';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Taimi mo $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Ua oo i le taimi e tatalo ai $prayerName.';
  }

  @override
  String get dataStorage => 'Fa\'amatalaga & Teuina';

  @override
  String get clearCache => 'Fa\'amama Cache';

  @override
  String get cacheClearedSuccess => 'Ua manuia le kilia o le cache';

  @override
  String get location => 'Nofoaga';

  @override
  String get language => 'Gagana';

  @override
  String get selectLanguage => 'Filifili Gagana';

  @override
  String get searchLanguage => 'Search 180+ languages...';

  @override
  String get systemDefault => 'System Default';

  @override
  String get currentLocation => 'Nofoaga o iai nei (GPS)';

  @override
  String get locationServiceDisabled => 'Ua le atoatoa le auaunaga mo nofoaga.';

  @override
  String get locationPermissionDenied => 'Te\'ena le faatagaga mo nofoaga.';

  @override
  String get locationDetectionFailed =>
      'Le mafai ona iloa lou nofoaga. Faamolemole filifili ma le lima se aai pe toe taumafai.';

  @override
  String citiesCount(String count) {
    return '$count aai';
  }

  @override
  String get search => 'Saili';

  @override
  String get searchHint => 'Su\'e...';

  @override
  String get noResults => 'Leai se fa\'ai\'uga na maua';

  @override
  String get loading => 'utaina...';

  @override
  String get error => 'Sese';

  @override
  String get appErrorOccurred => 'Ua tupu se mea sese';

  @override
  String get appUnknownError => 'Sese le iloa';

  @override
  String get quranLoadFailed =>
      'E le mafai ona utaina mataupu o le Quran. Fa\'amolemole toe taumafai.';

  @override
  String get retry => 'Toe taumafai';

  @override
  String get refreshAction => 'Toe faafou';

  @override
  String get cancel => 'Fa\'aleaogaina';

  @override
  String get save => 'Faasaoina';

  @override
  String get delete => 'Aveese';

  @override
  String get edit => 'Edit';

  @override
  String get close => 'Close';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'Leai';

  @override
  String get surah => 'Surah';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Itulau';

  @override
  String get reading => 'Reading';

  @override
  String get recitation => 'Recitation';

  @override
  String get translation => 'Translation';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Tu\'u tafsir...';

  @override
  String get tafsirSourceLabel => 'Punavai Tafsir';

  @override
  String get tafsirNoSurahFound => 'Leai se tafsir na maua mo lenei surah.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Leai se tafsir na maua mo ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Sa le mafai ona utaina Tafsir.';

  @override
  String get tafsirNoTextForAyah => 'Leai se tusitusiga tafsir mo lenei papa.';

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
    return 'Na toe fa\'afo\'i mai e le puna Tafsir se HTTP $statusCode sese.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'O le puna tafsir ua filifilia e leai ni fa\'amaumauga.';

  @override
  String get tafsirCacheUnavailable =>
      'Fa\'amaonia tafsir e le\'o maua tuimotu. Fa\'asa\'o se fa\'amatalaga fa\'amatalaga fa\'apogai a\'o le\'i su\'esu\'e.';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get addBookmark => 'Fa\'aopoopo le Fa\'ailoga';

  @override
  String get removeBookmark => 'Aveese Faailoga Tusi';

  @override
  String get lastRead => 'Last Read';

  @override
  String get dailyZikr => 'Daily Zikr';

  @override
  String get duaMeaning1 =>
      'o isi e tatalo, ‘Lo matou Alii e, ia e foa’i mai ia i matou le lelei i lenei lalolagi ma le olaga a sau, ma ia e puipuia i matou mai le puapuaga o le afi.';

  @override
  String get duaMeaning2 =>
      'E le mamafa e le Atua se agaga i se mea e sili atu nai lo le mea e mafai ona ia gafatia: e maua e le tagata lava ia so o se mea lelei na ia faia, ma e mafatia i ona leaga-‘Le Alii e, aua e te faatiga ia i matou pe a galo pe faia mea sese. Le Ali‘i e, ‘aua ‘e te fa‘atigāina i matou e pei ‘ona e fa‘atigāina i ē na muamua ‘iā te i matou. Le Ali‘i e, ‘aua ‘e te fa‘atigāina i matou i mea e sili atu nai lo o le malosi ‘ua matou amoina. Ia e faamagalo mai ia i matou, ia e faamagalo mai ia i matou, ma ia e alofa mai ia i matou. O oe o lo matou Puipui, o lea ia fesoasoani mai ia i matou e tetee atu i e le talitonu.’';

  @override
  String get duaMeaning3 =>
      '‘Lo matou Ali‘i e, ‘aua ne‘i fa‘ate‘a‘eseina o matou loto pe a uma ‘ona e ta‘ita‘iina i matou. Foai mai ia i matou lou alofa mutimutivale: O oe o le Foa’i Mai.';

  @override
  String get duaMeaning4 =>
      'Le Alii e, ia e foaʻi mai ia te aʻu ma laʻu fanau ona tausia le tatalo. Le Alii e, talia mai la’u talosaga.';

  @override
  String get duaMeaning5 =>
      'ma tuu ifo lou apaau i le lotomaualalo ia i latou i le agalelei ma faapea atu, ‘Le Alii e, ia e alofa mai ia te i latou, e pei ona latou tausia a’u a o ou itiiti.';

  @override
  String get duaMeaning6 =>
      'ia faaeaina le Atua, o lē e pule moni lava. [Perofeta], aua e te faanatinati e tauloto a o lei atoatoa le faaaliga ae ia faapea atu, ‘Le Alii e, ia faateleina lo’u malamalama!’';

  @override
  String get duaMeaning7 =>
      'Fai atu ia [Perofeta], ‘Le Alii e, ia e faamagalo ma alofa mai: o oe lava e sili ona alofa mutimutivale i mea uma.’';

  @override
  String get duaMeaning8 =>
      'o ē tatalo, ‘Lo matou Ali‘i e, ia e foa‘i mai le ‘oli‘oli i o matou taitoalua ma a matou fānau. Ia fai i matou ma fa\'aa\'oa\'oga lelei ia i latou o lo\'o iloa oe\'.';

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
  String get hadith => 'Hadith';

  @override
  String get hadithCollection => 'Aoina o Hadith';

  @override
  String get hadithBooks => 'Tusi o Hadith';

  @override
  String get searchHadith => 'Saili Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Suafa o Allah';

  @override
  String get liveTv => 'TV ola';

  @override
  String get watchLive => 'Matamata Live';

  @override
  String get streamError => 'Fa\'asao sese';

  @override
  String get reload => 'Toe utaina';

  @override
  String get openInYoutube => 'Tatala ile YouTube';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Anapogi';

  @override
  String get quranReading => 'Faitauina o le Quran';

  @override
  String get prayers => 'Tatalo';

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
  String get dhikrCount => 'Dhikr Count';

  @override
  String get weeklyProgress => 'Alualu i Vaiaso';

  @override
  String get monthlyProgress => 'Monthly Progress';

  @override
  String get statistics => 'Statistics';

  @override
  String get hijriCalendar => 'Kalena Hijri';

  @override
  String get gregorianCalendar => 'Gregorian Calendar';

  @override
  String get today => 'I aso nei';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get specialDays => 'Aso Faapitoa';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Tausaga Fou Islama';

  @override
  String get mawlidAnNabi => 'Maulid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadan';

  @override
  String get specialDayDateEidAlFitr => '1 Sāwalu';

  @override
  String get specialDayDateEidAlAdha => '10 Dhul Hijjah';

  @override
  String get specialDayDateIslamicNewYear => '1 Muarama';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabi al-Awwal';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'Ituaiga Qibla';

  @override
  String get compass => 'Tapasa';

  @override
  String get degrees => 'degrees';

  @override
  String get north => 'North';

  @override
  String get qiblaFound => 'Ua maua Qibla!';

  @override
  String get turnDevice => 'Liliu lau masini e faasaga i le Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Sese tapasa: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'E le o maua le masini tapasa i lenei masini.';

  @override
  String get qiblaLocationRequiredTitle => 'Manaomia nofoaga mo Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Seti lou nofoaga sa\'o a\'o le\'i fa\'aogaina le tapasa Qibla ina ia mafai ona fa\'atatau tonu le itu.';

  @override
  String get adhanNotificationChannelName => 'Adhan Notifications';

  @override
  String get adhanNotificationChannelDescription =>
      'Talosaga taimi tatalo ma le leo azan.';

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
  String get theme => 'Autu';

  @override
  String get lightMode => 'Faiga Malamalama';

  @override
  String get darkMode => 'Faiga Pogisa';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'E uiga i';

  @override
  String get version => 'Fa\'aliliuga';

  @override
  String get privacyPolicy => 'Faiga Fa\'alilolilo';

  @override
  String get termsOfService => 'Tuutuuga o Auaunaga';

  @override
  String get contactUs => 'Fa\'afeso\'ota\'i matou';

  @override
  String get rateApp => 'Fua o le App';

  @override
  String get shareApp => 'Fa\'asoa le App';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Pule o le download';

  @override
  String get downloads => 'Si\'itia';

  @override
  String get downloading => 'La\'uina mai...';

  @override
  String get downloadComplete => 'Fa\'auma uma';

  @override
  String get downloadFailed => 'Le manuia le la\'uina';

  @override
  String get offlineMode => 'Faiga e leai se initaneti';

  @override
  String get noInternet => 'Leai se Feso\'ota\'iga Initaneti';

  @override
  String get checkConnection => 'Fa\'amolemole siaki lau feso\'ota\'iga';

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
  String get getStarted => 'Amata';

  @override
  String get skip => 'Skip';

  @override
  String get next => 'Sosoo ai';

  @override
  String get done => 'Ua uma';

  @override
  String get onboarding1Title => 'Susu maia i Sirat-ı Nur';

  @override
  String get onboarding1Desc =>
      'O lau talosaga uma a Islama mo taimi tatalo, Quran, ma isi mea';

  @override
  String get onboarding2Title => 'Taimi Tatalo';

  @override
  String get onboarding2Desc => 'Sa\'o taimi tatalo e fa\'atatau i lou nofoaga';

  @override
  String get onboarding3Title => 'Quran & More';

  @override
  String get onboarding3Desc =>
      'Faitau le Quran, siaki lau faitauga, ma suʻesuʻe mataupu faʻa-Islam';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'Toe seti le Counter';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'Faitauga fa\'atatau: $target';
  }

  @override
  String get tapToCount => 'Tap e faitau';

  @override
  String get zikrCompletedMashAllah => 'Ua mae\'a! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'E sili mamao atu Allah i mea le atoatoa uma.';

  @override
  String get zikrMeaningAlhamdulillah => 'O viiga uma e ia Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'O Allah le Silisiliese.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'E leai se atua na o Allah.';

  @override
  String get zikrMeaningAstaghfirullah =>
      'Ou te sailia le faamagaloga a le Atua.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'E leai se malosi ma leai se malosi vagana ai e ala mai ia Allah.';

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
  String get dailyProgress => 'Alualu i Aso Taitasi';

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
  String get recheckPremium => 'Toe siaki le tulaga o saofaga tau tupe';

  @override
  String get syncStore =>
      'Fa\'atasi ma le app store e fa\'amaonia ai lau saofaga tau tupe.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'Fa\'amaonia le saofaga fa\'apitoa.';

  @override
  String get premiumNotFound => 'E le\'i maua le saofaga fa\'apitoa.';

  @override
  String premiumRefreshError(Object error) {
    return 'Le mafai ona toe fa\'afou le tulaga o le saofaga tau tupe: $error';
  }

  @override
  String get offlineDownloadManager => 'Pule o le la\'uina i luga ole laiga';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Fa\'asa\'oloto le teuina o masini i totonu.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'Siaki le Quran database...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'Tulaga Fa\'amaumauga a le Quran';

  @override
  String statusLabel(Object status) {
    return 'Tulaga: $status';
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
  String get audioVoice => 'Leo Leo';

  @override
  String get audioVoiceMisharyAlafasy => 'Male (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Male (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Male (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Qibla Calibration';

  @override
  String get compassSmoothing => 'Tapasa fa\'amalulu';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Fa\'avasegaina Offset';

  @override
  String currentOffset(Object offset) {
    return 'Ole taimi nei: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Fetuuna\'i pe a mana\'omia e lau tapasa se faasa\'oga tusi lesona. O tau lelei e taamilo i le uati.';

  @override
  String get apply => 'Fa\'aoga suiga';

  @override
  String get resetOnboarding => 'Toe seti le seti folasaga';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Su\'esu\'ega';

  @override
  String get diagnosticsNotSet => 'E le\'i setiina';

  @override
  String get diagnosticsPrayerProfile => 'Faamatalaga Tatalo';

  @override
  String get diagnosticsPrayerSource => 'Pule Tatalo';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Aganu\'u / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Su\'ega fa\'ale-aganu\'u tusi (leai se puna fa\'alapotopotoga)';

  @override
  String get diagnosticsCloudDriven => 'Ao Uia';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Quran Audio Assets';

  @override
  String get diagnosticsAudioAssets => 'Aseta leo';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count faila';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Ua le mafai ona faitau fa\'aaliga: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Localization Locales';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count lagolagoina';
  }

  @override
  String get diagnosticsQuranDataset => 'Quran Fa\'amaumauga';

  @override
  String get diagnosticsQuranSurahs => 'Surah Quran';

  @override
  String get diagnosticsQuranAyahs => 'Quran Ayahs';

  @override
  String get diagnosticsQuranJuzMetadata => 'Quran Juz Metadata';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'O laulau o ao e misi i Supabase; fa\'apipi\'i fa\'afo\'i fa\'agaoioi';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Ua le mafai ona siaki le ao: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Ua misi metadata juz; fa\'apipi\'i fa\'avae fa\'afo\'i fa\'agaoioi';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Ua le mafai ona siaki le fausaga o ao: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'E mana\'omia le fa\'avasegaina. Su\'e le masini ile ata-8.';

  @override
  String get dailyVerse => 'Fuaiupu i Aso Taitasi';

  @override
  String get todaysIbadah => 'Ibadah i aso nei';

  @override
  String get quickAccess => 'Avanoa vave';

  @override
  String get assistant => 'Fesoasoani';

  @override
  String get places => 'Nofoaga';

  @override
  String get library => 'Faletusi';

  @override
  String get analytics => 'Iloiloga';

  @override
  String get dailyDuas => 'Duas i aso uma';

  @override
  String essentialDuas(String count) {
    return '$count essential duas';
  }

  @override
  String get duaUnavailableTitle => 'E le\'o avanoa nei duas fa\'amaonia';

  @override
  String get duaUnavailableBody =>
      'E le\'i fa\'asa\'o le duas fa\'amaonia i aso uma i lenei masini. Fa\'afeso\'ota\'i i le puna o ao e fa\'amomoli mai ai duas ae le o se fa\'afouga e le\'i fa\'amaonia.';

  @override
  String get duaCategoryQuranic => 'Quranic dua';

  @override
  String get duaCategoryMorningEvening => 'Taeao & Afiafi';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Puipuiga';

  @override
  String get duaCategoryBeginning => 'Amataga';

  @override
  String get duaCategorySleep => 'Moe';

  @override
  String get duaCategoryFoodDrink => 'Mea\'ai & Meainu';

  @override
  String get duaCategoryForgiveness => 'Fa\'amagalo';

  @override
  String get duaCategoryHome => 'Aiga';

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
  String get islamicEducation => 'Aoaoga Islama';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Tu\'ufa\'atasiga o Hadith';

  @override
  String get hadithSourcePending => 'O lo\'o fa\'atali le puna fa\'amaonia';

  @override
  String get hadithUnavailableTitle =>
      'E le\'i maua ni fa\'aputuga o hadith fa\'amaonia';

  @override
  String get hadithUnavailableBody =>
      'O lenei fausiaina o loʻo faʻalagolago pea i luga o se fafaga hadith fafo e leʻi faʻamaonia. E tumau le fa\'aletonu o su\'esu\'ega o Hadith se\'ia o\'o ina fa\'amaopoopo se fa\'amaumauga.';

  @override
  String get paywallUnlockAll => 'Tatala vaega uma mo lau malaga faaleagaga';

  @override
  String get premiumProductUnavailable =>
      'O oloa fa\'apitoa e le\'o maua i le taimi nei. Faamolemole toe taumafai mulimuli ane.';

  @override
  String get premiumPurchaseFailed =>
      'Sa le mafai ona mae\'a le fa\'atau. Fa\'amolemole toe taumafai.';

  @override
  String get paywallFeature1Title => 'Fesoasoani Neural Plus';

  @override
  String get paywallFeature1Desc =>
      'Q&A e leai se gataaga e fa\'amalosia ai le AI';

  @override
  String get paywallFeature2Title => 'E le gata i luga ole Initaneti';

  @override
  String get paywallFeature2Desc => 'La\'u mai i lalo tusi faitau uma';

  @override
  String get paywallFeature3Title => 'Fuafuaga Fa\'apitoa';

  @override
  String get paywallFeature3Desc => 'Autu sili & fonuka';

  @override
  String get paywallFeature4Title => 'E leai se fa\'asalalauga';

  @override
  String get paywallFeature4Desc => 'leai ni fa\'asalalauga';

  @override
  String get paywallGetAccess => 'Maua Avanoa i le Ola Ola — \$1.00';

  @override
  String get restorePurchases => 'Toe Fa\'afo\'i Fa\'atauga';

  @override
  String get zakatCalculator => 'Fa\'atatau o le Zakat';

  @override
  String get zakatGold => 'Auro (Altın)';

  @override
  String get zakatSilver => 'Silver (Gümüş)';

  @override
  String get zakatCashBank => 'Tinoitupe / Faletupe';

  @override
  String get zakatBusiness => 'Pisinisi';

  @override
  String get zakatInvestments => 'Tupe teu faafaigaluega';

  @override
  String get zakatWeightGrams => 'mamafa (g)';

  @override
  String get zakatPricePerGram => 'Tau/g';

  @override
  String get zakatTotalAmount => 'Aofaiga Aofaiga';

  @override
  String get zakatInventoryValue => 'Fa\'atauga Fa\'amaumauga';

  @override
  String get zakatDebts => 'aitalafu';

  @override
  String get zakatTotal => 'Aofa\'iga';

  @override
  String get calculateZakat => 'Fa\'atatau le Zakat';

  @override
  String get nisabNotReached =>
      'Nisab e le\'i ausia. E le faamalosia le Zakat.';

  @override
  String get totalZakat => 'Aofaiga o le Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakat Auro';

  @override
  String get zakatSilverZakat => 'Zakat Siliva';

  @override
  String get zakatCashZakat => 'Tupe Zakat';

  @override
  String get zakatBusinessZakat => 'Pisinisi Zakat';

  @override
  String get zakatInvestmentZakat => 'Tupe Teufaafaigaluega Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! O aʻu o lou fesoasoani Islama. Fesili mai ia te aʻu e uiga i tatalo, anapogi, zakat, poʻo soʻo se mataupu faʻa-Islam.';

  @override
  String get chatbotLimitReached =>
      'Ua ausia le tapula\'a o fesili i aso taitasi. Fa\'afou ile Premium mo le fa\'atapula\'aina.';

  @override
  String get chatbotErrorMsg =>
      'Sa le mafai ona ou faia se tali. Fa\'amolemole toe taumafai.';

  @override
  String get chatbotOfflinePrompt =>
      'O lo\'o fa\'atumauina pea le fa\'amaumauga tu\'ufa\'atasia fa\'a-Islam. E mafai ona e fa\'agaoioia le fa\'afo\'i tui i tua i le taimi nei, ae na\'o le fa\'aalia o fe\'au saogalemu fa\'atapula\'a se\'ia o\'o ina saunia le fa\'amaumauga.\n\nE te mana\'o e fa\'aagaoioi le fa\'afo\'i fa\'afoma\'i?';

  @override
  String get chatbotOfflineSwitched =>
      'Ua mafai ona toe fa\'afo\'i le initaneti. E le\'i saunia tali fa\'a-Isalama fa\'apitonu\'u.';

  @override
  String get chatbotOfflineDownloadLabel => 'Fa\'aola le Fa\'asolo i tua';

  @override
  String get downloadPreparing => 'Saunia le la\'uina...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'La\'uina le surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'O surah uma ua uma ona la\'uina mo lenei tusi faitau.';

  @override
  String get offlineQuranAudioPacks => 'Fa\'asalalauga fa\'aleo leo Quran';

  @override
  String storedOnDeviceMb(String size) {
    return 'Teuina i le masini: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surah na sii mai';
  }

  @override
  String get redownloadMissingRepair => 'Toe Fa\'alelei / La\'uina ua misi';

  @override
  String get downloadAction => 'La\'u mai';

  @override
  String get resumeDownload => 'Toe sii maia';

  @override
  String get deleteDownloadedFiles => 'Aveese faila ua siiina mai';

  @override
  String get downloadCancelling => 'Fa\'aleaogaina...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Ua faaleaogaina le la\'uina mo $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Ua mae\'a le la\'uina mo $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Ua mae\'a le la\'uina mo $reciter ma $failed surah e le\'i manuia ($downloaded/$total na sii mai).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Ave\'ese faila e lē faaaogāina ai le initaneti mo $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'E le maua i le taimi nei puna\'oa fa\'alogo Quran fa\'amaonia.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'E le\'o atoatoa le pusa leo fa\'amaonia o le Quran ($available/$total). Toe faafou fatu ao ma toe taumafai.';
  }

  @override
  String get chatbotHint => 'Fai se fesili...';

  @override
  String get chatbotThinking => 'Mafaufau...';

  @override
  String get sukunMixerSubtitle => 'Natura & Qur\'an Mixer';

  @override
  String get audioPlayFailed => 'Ua le mafai ona toe taina leo';

  @override
  String get sukunNatureLabel => 'Sukun (Natura)';

  @override
  String get sukunRainOfMercy => 'Uaga o le Alofa Mutimutivale';

  @override
  String get sukunGardenOfPeace => 'Faatoaga o le Filemu';

  @override
  String get sukunMidnightCalm => 'Toafilemu Tulua o Po';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Leo avanoa';

  @override
  String get sukunUnavailableBody =>
      'O lenei faufale e le\'o aofia ai aseta Sukun soundscape e mana\'omia.';

  @override
  String get prayerCompletion => 'Tatalo Faauma';

  @override
  String get streaks => 'Fa\'ailoga';

  @override
  String get dayStreak => 'Fa\'asologa o le aso';

  @override
  String get bestStreak => 'Tulaga sili ona lelei';

  @override
  String get chatbotCloudAiLabel => 'Ao AI';

  @override
  String get chatbotLocalAiLabel => 'Tu\'u i tua i luga ole laiga';

  @override
  String get chatbotUseCloudAi => 'Fa\'aaogā le Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Fa\'aola le Fa\'asolo i tua';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count totoe';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'E le o fa\'atulagaina le Cloud API. E le\'i maua le ta\'ita\'iga fa\'a-Isalama fa\'amaonia tuimotu.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] E le\'i maua le ta\'ita\'iga fa\'a-Isalama fa\'apitonu\'u. Su\'e ile Cloud AI mo tali maua\'a.';

  @override
  String get mosques => 'Mosques';

  @override
  String get halalFood => 'Mea\'ai Halal';

  @override
  String get placesSearchArea => 'Su\'e lenei vaega';

  @override
  String get nearbyMosques => 'Mosque lata ane';

  @override
  String get islamicSchools => 'A\'oga Isalama';

  @override
  String placesFoundCount(String count) {
    return '$count maua';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km le mamao';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Sese API: $statusCode';
  }

  @override
  String get placesNetworkError =>
      'Sese feso\'otaiga. Fa\'amolemole toe taumafai.';

  @override
  String get placesLocationRequiredTitle => 'Manaomia nofoaga';

  @override
  String get placesLocationRequiredBody =>
      'Fa\'atulaga muamua se nofoaga ina ia mafai ona su\'esu\'e sa\'o faletapuai lata ane, mea\'ai halal, ma a\'oga Isalama.';

  @override
  String get placesMapTilesUnavailableTitle => 'E le o avanoa pepa fa\'afanua';

  @override
  String get placesMapTilesUnavailableBody =>
      'E le\'i fa\'atulagaina se fa\'apogai o fa\'afanua fa\'amaonia mo lenei faufale. O nofoaga lata ane e mafai lava ona la\'u mai lou nofoaga sefe.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'Le avanoa fa\'amatalaga nofoaga';

  @override
  String get placesDataSourceUnavailableBody =>
      'E le\'i fa\'atulagaina se nofoaga fa\'amautu fa\'amaumauga mo lenei faufale. Seti le PLACES_OVERPASS_API_URL i se sui po\'o se kamupani fa\'amaonia a\'o le\'i fa\'agasolo su\'esu\'ega lata ane.';

  @override
  String get unknownPlaceName => 'Le Igoa';

  @override
  String get islamicPlaceFallback => 'Nofoaga Isalama';

  @override
  String get asmaMeaning1 => 'Le Alofa';

  @override
  String get asmaMeaning2 => 'Le Alofa Mutimutivale';

  @override
  String get asmaMeaning3 => 'Le Tupu / Alii Faavavau';

  @override
  String get asmaMeaning4 => 'Le Paia e Sili ona Paia';

  @override
  String get asmaMeaning5 => 'O le Puna o le Filemu';

  @override
  String get asmaMeaning6 => 'Le Foai o le Puipuiga';

  @override
  String get asmaMeaning7 => 'Le Leoleo';

  @override
  String get asmaMeaning8 => 'Le pele / Le Silisiliese';

  @override
  String get asmaMeaning9 => 'O le Fa\'atonu';

  @override
  String get asmaMeaning10 => 'Le Sili';

  @override
  String get asmaMeaning11 => 'Le Foafoa';

  @override
  String get asmaMeaning12 => 'O Le na faia le Poloaiga';

  @override
  String get asmaMeaning13 => 'O Le Faafoliga o le Lalelei';

  @override
  String get asmaMeaning14 => 'O Le Faamagalo';

  @override
  String get asmaMeaning15 => 'Le Pule';

  @override
  String get asmaMeaning16 => 'O Le Foai o Tagata Uma';

  @override
  String get asmaMeaning17 => 'O Le Pule';

  @override
  String get asmaMeaning18 => 'O le Tatala';

  @override
  String get asmaMeaning19 => 'Le na te silafia mea uma';

  @override
  String get asmaMeaning20 => 'O le Fa\'amau';

  @override
  String get asmaMeaning21 => 'O le Fesoasoani';

  @override
  String get asmaMeaning22 => 'O le Abaser';

  @override
  String get asmaMeaning23 => 'O le Silisili Ese';

  @override
  String get asmaMeaning24 => 'O Le na te tuuina atu le mamalu';

  @override
  String get asmaMeaning25 => 'O Le Faalumaina';

  @override
  String get asmaMeaning26 => 'O Le Faafofoga i Tagata Uma';

  @override
  String get asmaMeaning27 => 'O le Tagata Vaai o Tagata Uma';

  @override
  String get asmaMeaning28 => 'O le Faamasino';

  @override
  String get asmaMeaning29 => 'O Le Amiotonu';

  @override
  String get asmaMeaning30 => 'O Le Agalelei';

  @override
  String get asmaMeaning31 => 'O Le Silafia Uma';

  @override
  String get asmaMeaning32 => 'O le Tupuaga';

  @override
  String get asmaMeaning33 => 'O Le Silisiliese';

  @override
  String get asmaMeaning34 => 'O Le Faamagalo Sili';

  @override
  String get asmaMeaning35 => 'O le Tauia o le Faafetai';

  @override
  String get asmaMeaning36 => 'Le Silisili';

  @override
  String get asmaMeaning37 => 'Le Silisili';

  @override
  String get asmaMeaning38 => 'O Le Fa\'asao';

  @override
  String get asmaMeaning39 => 'O le Tausiga';

  @override
  String get asmaMeaning40 => 'O le Tusi Faitau';

  @override
  String get asmaMeaning41 => 'O le Silisili Ese';

  @override
  String get asmaMeaning42 => 'O Le Afoa\'i';

  @override
  String get asmaMeaning43 => 'O Le Mataala';

  @override
  String get asmaMeaning44 => 'O Le Tali i le Tatalo';

  @override
  String get asmaMeaning45 => 'O Le Malamalama Uma';

  @override
  String get asmaMeaning46 => 'O Le Atotonu Poto';

  @override
  String get asmaMeaning47 => 'O Le Alofa';

  @override
  String get asmaMeaning48 => 'Le Silisili Ese';

  @override
  String get asmaMeaning49 => 'O Le Toetu';

  @override
  String get asmaMeaning50 => 'O le Molimau';

  @override
  String get asmaMeaning51 => 'O le Upu Moni';

  @override
  String get asmaMeaning52 => 'O Le Tausi Mavaega Uma';

  @override
  String get asmaMeaning53 => 'O Le e ona le Malosi Uma';

  @override
  String get asmaMeaning54 => 'O Le Malosi';

  @override
  String get asmaMeaning55 => 'O Le Puipui';

  @override
  String get asmaMeaning56 => 'O Le Viia';

  @override
  String get asmaMeaning57 => 'O le Fa\'atonu';

  @override
  String get asmaMeaning58 => 'O Le na amataina';

  @override
  String get asmaMeaning59 => 'Le Toefuata\'i';

  @override
  String get asmaMeaning60 => 'Le Foai o le Ola';

  @override
  String get asmaMeaning61 => 'O Le na te aveeseina le ola';

  @override
  String get asmaMeaning62 => 'O Le Ola Faavavau';

  @override
  String get asmaMeaning63 => 'O Le Fa\'alagolago ia te ia lava';

  @override
  String get asmaMeaning64 => 'Le Saili';

  @override
  String get asmaMeaning65 => 'Le Mamalu';

  @override
  String get asmaMeaning66 => 'O Le Toatasi';

  @override
  String get asmaMeaning67 => 'O Le Toatasi';

  @override
  String get asmaMeaning68 => 'O Le Na Saili e Tagata Uma';

  @override
  String get asmaMeaning69 => 'Le Malosi';

  @override
  String get asmaMeaning70 => 'Le Foafoa o mana uma';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'O Le Fa\'atuai';

  @override
  String get asmaMeaning73 => 'O le Muamua';

  @override
  String get asmaMeaning74 => 'O Le Mulimuli';

  @override
  String get asmaMeaning75 => 'O le Fa\'aaliga';

  @override
  String get asmaMeaning76 => 'O Le Natia';

  @override
  String get asmaMeaning77 => 'O le Kovana';

  @override
  String get asmaMeaning78 => 'Le Silisili Ese';

  @override
  String get asmaMeaning79 => 'O Le Fai Mea Lelei';

  @override
  String get asmaMeaning80 => 'O Le Taiala i le Salamo';

  @override
  String get asmaMeaning81 => 'O le Fai taui ma sui';

  @override
  String get asmaMeaning82 => 'O le Faamagalo';

  @override
  String get asmaMeaning83 => 'O Kelemene';

  @override
  String get asmaMeaning84 => 'Le Pule / Pule Silisili Ese';

  @override
  String get asmaMeaning85 => 'O le e ona le mamalu ma le foa\'i';

  @override
  String get asmaMeaning86 => 'O Le Tutusa';

  @override
  String get asmaMeaning87 => 'O Le Fa\'apotopoto';

  @override
  String get asmaMeaning88 => 'O Le Mauoa';

  @override
  String get asmaMeaning89 => 'Le Fa\'atamaoaigaina';

  @override
  String get asmaMeaning90 => 'O Le Puipuia o le Faaleagaina';

  @override
  String get asmaMeaning91 => 'O le na te aumaia le malaia';

  @override
  String get asmaMeaning92 => 'O Le na te foa\'iina atu manuia';

  @override
  String get asmaMeaning93 => 'O le Malamalama';

  @override
  String get asmaMeaning94 => 'O le Ta\'ita\'i';

  @override
  String get asmaMeaning95 => 'O Le na amataina';

  @override
  String get asmaMeaning96 => 'O Le Faavavau';

  @override
  String get asmaMeaning97 => 'O le Suli';

  @override
  String get asmaMeaning98 => 'Le Ta\'ita\'i Sili Amiotonu';

  @override
  String get asmaMeaning99 => 'O Le Onosa\'i';
}
