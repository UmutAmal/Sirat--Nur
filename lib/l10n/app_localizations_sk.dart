// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsSk extends AppLocalizations {
  AppLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Islamská cesta svetla';

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
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Východ slnka';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Maghrib';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Čas na $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Je čas modliť sa $prayerName.';
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
  String get locationServiceDisabled => 'Služba určovania polohy je zakázaná.';

  @override
  String get locationPermissionDenied =>
      'Povolenie na umiestnenie bolo odmietnuté.';

  @override
  String get locationDetectionFailed =>
      'Nepodarilo sa zistiť vašu polohu. Vyberte mesto ručne alebo to skúste znova.';

  @override
  String citiesCount(String count) {
    return '$count miest';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'Nenašli sa žiadne výsledky';

  @override
  String get loading => 'Načítava sa...';

  @override
  String get error => 'Chyba';

  @override
  String get appErrorOccurred => 'Vyskytla sa chyba';

  @override
  String get appUnknownError => 'Neznáma chyba';

  @override
  String get quranLoadFailed =>
      'Obsah Koránu sa nepodarilo načítať. Skúste to znova.';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Obnoviť';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Odstrániť';

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
    return 'Ayah $ayah';
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
  String get tafsirLoading => 'Načítava sa tafsir...';

  @override
  String get tafsirSourceLabel => 'Zdroj Tafsir';

  @override
  String get tafsirNoSurahFound => 'Pre túto súru sa nenašiel žiadny tafsir.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Pre ayah $ayah sa nenašiel žiadny tafsir.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir sa nepodarilo načítať.';

  @override
  String get tafsirNoTextForAyah => 'Pre tento ayah nie je žiadny text tafsir.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Sťahuje sa tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Načítava sa tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Zdroj Tafsir vrátil chybu HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Vybraný zdroj tafsir nevrátil žiadne záznamy.';

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
      'iní sa modlia: ‚Pane náš, daj nám dobro v tomto svete i v onom svete a ochraňuj nás pred mučením ohňa.‘';

  @override
  String get duaMeaning2 =>
      'Boh nezaťažuje žiadnu dušu viac, než dokáže uniesť: každá získa všetko dobré, čo urobila, a znáša svoje zlé – ‚Pane, neber nás do úlohy, ak zabudneme alebo urobíme chyby. Pane, nezaťažuj nás tak, ako si zaťažil tých pred nami. Pane, nezaťažuj nás viac, ako máme síl uniesť. Odpusť nám, odpusť nám a zmiluj sa nad nami. Si náš ochranca, tak nám pomôž proti neveriacim.';

  @override
  String get duaMeaning3 =>
      '„Náš Pane, nedovoľ, aby sa naše srdcia odchýlili po tom, čo si nás viedol. Udeľ nám svoje milosrdenstvo: Ty si večný.';

  @override
  String get duaMeaning4 =>
      'Pane, daj, aby som ja a moje potomstvo pokračovali v modlitbe. Pane náš, prijmi moju prosbu.';

  @override
  String get duaMeaning5 =>
      'a sklop svoje krídlo v pokore voči nim v láskavosti a povedz: ‚Pane, zmiluj sa nad nimi, ako sa oni starali o mňa, keď som bol malý.‘';

  @override
  String get duaMeaning6 =>
      'nech je vyvýšený Boh, ten, ktorý skutočne vládne. [Prorok], neponáhľaj sa recitovať pred úplným dokončením zjavenia, ale povedz: ‚Pane, rozmnož ma v poznaní!‘';

  @override
  String get duaMeaning7 =>
      'Povedz [Prorokovi]: ‚Pane, odpusť a zmiluj sa: Ty si najmilosrdnejší zo všetkých.‘';

  @override
  String get duaMeaning8 =>
      'tí, ktorí sa modlia: ‚Pane náš, daj nám radosť z našich manželov a potomkov. Daj nám dobrý príklad pre tých, ktorí Ťa poznajú.\"';

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
  String get hadith => 'hadís';

  @override
  String get hadithCollection => 'Zbierka hadísov';

  @override
  String get hadithBooks => 'Hadísové knihy';

  @override
  String get searchHadith => 'Vyhľadajte hadísy';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

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
  String get openInYoutube => 'Otvoriť v službe YouTube';

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
  String get islamicNewYear => 'Islamský Nový rok';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1. ramadán';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadán';

  @override
  String get specialDayDateEidAlFitr => '1 Shawwal';

  @override
  String get specialDayDateEidAlAdha => '10 Dhul Hijjah';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharram';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabi al-Awwal';

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
    return 'Chyba kompasu: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Snímač kompasu nie je v tomto zariadení k dispozícii.';

  @override
  String get qiblaLocationRequiredTitle => 'Miesto požadované pre Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Pred použitím kompasu Qibla nastavte svoju skutočnú polohu, aby bolo možné presne vypočítať smer.';

  @override
  String get adhanNotificationChannelName => 'Upozornenia Adhan';

  @override
  String get adhanNotificationChannelDescription =>
      'Upozorňuje na čas modlitby zvukom adhan.';

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
    return 'Vyskúšajte $appName: Najlepšia aplikácia pre islamský životný štýl! $url';
  }

  @override
  String get downloadManager => 'Správca sťahovania';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Sťahovanie dokončené';

  @override
  String get downloadFailed => 'Sťahovanie zlyhalo';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'Žiadne internetové pripojenie';

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
  String get zikrCompletedMashAllah => 'Dokončené! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Alah je vysoko nad každou nedokonalosťou.';

  @override
  String get zikrMeaningAlhamdulillah => 'Všetka chvála patrí Alahovi.';

  @override
  String get zikrMeaningAllahuAkbar => 'Alah je najväčší.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Niet boha okrem Alaha.';

  @override
  String get zikrMeaningAstaghfirullah => 'Žiadam Alaha o odpustenie.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Neexistuje žiadna sila a žiadna sila, iba cez Alaha.';

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
  String get offlineDownloadManager => 'Správca sťahovania offline';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Uvoľnite interné úložisko zariadenia.';

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
  String get audioVoice => 'Zvukový hlas';

  @override
  String get audioVoiceMisharyAlafasy => 'Muž (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Muž (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Muž (Sudais)';

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
  String get diagnosticsNotSet => 'Nie je nastavené';

  @override
  String get diagnosticsPrayerProfile => 'Modlitebný profil';

  @override
  String get diagnosticsPrayerSource => 'Autorita modlitby';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Vlastné / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manuálne vlastné uhly (bez inštitucionálneho zdroja)';

  @override
  String get diagnosticsCloudDriven => 'Cloud Driven';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio aktíva';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Zvukové aktíva Koránu';

  @override
  String get diagnosticsAudioAssets => 'Zvukové aktíva';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count súborov';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Prečítanie manifestu zlyhalo: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Lokalizácia Lokality';

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
      'Cloudové tabuľky chýbajú v Supabase; záložný balík aktívny';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Chýbajú metadáta cloud juz; združená štrukturálna núdzová aktívna';

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
  String get dailyVerse => 'Denný verš';

  @override
  String get todaysIbadah => 'Dnešný Ibadah';

  @override
  String get quickAccess => 'Rýchly prístup';

  @override
  String get assistant => 'asistent';

  @override
  String get places => 'Miesta';

  @override
  String get library => 'Knižnica';

  @override
  String get analytics => 'Analytics';

  @override
  String get dailyDuas => 'Denné Duas';

  @override
  String essentialDuas(String count) {
    return '$count základné povinnosti';
  }

  @override
  String get duaUnavailableTitle => 'Overené duá zatiaľ nie sú k dispozícii';

  @override
  String get duaUnavailableBody =>
      'Overené denné duá zatiaľ neboli synchronizované do tohto zariadenia. Pripojte sa ku cloudovému zdroju a načítajte duas zo zdrojov namiesto neoverenej zálohy.';

  @override
  String get duaCategoryQuranic => 'Dua koránu';

  @override
  String get duaCategoryMorningEvening => 'Ráno a večer';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Ochrana';

  @override
  String get duaCategoryBeginning => 'Začiatky';

  @override
  String get duaCategorySleep => 'Spánok';

  @override
  String get duaCategoryFoodDrink => 'Jedlo a pitie';

  @override
  String get duaCategoryForgiveness => 'Odpustenie';

  @override
  String get duaCategoryHome => 'Domov';

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
  String get islamicEducation => 'Islamská výchova';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Hadísové zbierky';

  @override
  String get hadithSourcePending => 'Čaká sa na overený zdroj';

  @override
  String get hadithUnavailableTitle =>
      'Overené zbierky hadísov zatiaľ nie sú k dispozícii';

  @override
  String get hadithUnavailableBody =>
      'Táto zostava stále závisí od neovereného externého zdroja hadísov. Prehliadanie hadísov zostane vypnuté, kým sa zdrojová množina údajov nesynchronizuje.';

  @override
  String get paywallUnlockAll =>
      'Odomknite všetky funkcie pre svoju duchovnú cestu';

  @override
  String get premiumProductUnavailable =>
      'Prémiový produkt nie je momentálne dostupný. Skúste to znova neskôr.';

  @override
  String get premiumPurchaseFailed =>
      'Nákup nebolo možné dokončiť. Skúste to znova.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'Neobmedzené otázky a odpovede poháňané AI';

  @override
  String get paywallFeature2Title => 'Neobmedzený režim offline';

  @override
  String get paywallFeature2Desc => 'Stiahnite si všetky recitácie';

  @override
  String get paywallFeature3Title => 'Exkluzívne vzory';

  @override
  String get paywallFeature3Desc => 'Prémiové motívy a písma';

  @override
  String get paywallFeature4Title => 'Bez reklám';

  @override
  String get paywallFeature4Desc => 'Nulové reklamy';

  @override
  String get paywallGetAccess => 'Získajte doživotný prístup – 1,00 USD';

  @override
  String get restorePurchases => 'Obnoviť nákupy';

  @override
  String get zakatCalculator => 'Kalkulačka Zakat';

  @override
  String get zakatGold => 'zlato (Altın)';

  @override
  String get zakatSilver => 'striebro (Gümüş)';

  @override
  String get zakatCashBank => 'Hotovosť / Banka';

  @override
  String get zakatBusiness => 'Podnikanie';

  @override
  String get zakatInvestments => 'Investície';

  @override
  String get zakatWeightGrams => 'Hmotnosť (g)';

  @override
  String get zakatPricePerGram => 'Cena/g';

  @override
  String get zakatTotalAmount => 'Celková suma';

  @override
  String get zakatInventoryValue => 'Hodnota zásob';

  @override
  String get zakatDebts => 'Dlhy';

  @override
  String get zakatTotal => 'Celkom';

  @override
  String get calculateZakat => 'Vypočítajte Zakat';

  @override
  String get nisabNotReached => 'Nisab nebol dosiahnutý. Zakát nie je povinný.';

  @override
  String get totalZakat => 'Totálny zakát';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Aktíva: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zlatý zakát';

  @override
  String get zakatSilverZakat => 'Strieborný zakát';

  @override
  String get zakatCashZakat => 'Cash Zakat';

  @override
  String get zakatBusinessZakat => 'Obchodný zakat';

  @override
  String get zakatInvestmentZakat => 'Investičný zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! Som váš islamský asistent. Opýtajte sa ma na modlitbu, pôst, zakát alebo akúkoľvek islamskú tému.';

  @override
  String get chatbotLimitReached =>
      'Dosiahli ste denný limit dopytov. Inovujte na Premium neobmedzene.';

  @override
  String get chatbotErrorMsg =>
      'Nepodarilo sa mi vygenerovať odpoveď. Skúste to znova.';

  @override
  String get chatbotOfflinePrompt =>
      'Overená offline islamská vedomostná základňa sa stále upravuje. Teraz môžete povoliť núdzový režim offline, ale bude sa zobrazovať iba obmedzené množstvo bezpečných správ, kým nebude pripravená zdrojová množina údajov.\n\nChcete povoliť záložný režim offline?';

  @override
  String get chatbotOfflineSwitched =>
      'Záložný režim offline je povolený. Overené miestne islamské odpovede ešte nie sú pripravené.';

  @override
  String get chatbotOfflineDownloadLabel => 'Povoliť záložný režim offline';

  @override
  String get downloadPreparing => 'Pripravuje sa sťahovanie...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Sťahuje sa súra $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Všetky súry sú už stiahnuté pre tohto recitátora.';

  @override
  String get offlineQuranAudioPacks => 'Offline zvukové balíčky Koránu';

  @override
  String storedOnDeviceMb(String size) {
    return 'Uložené v zariadení: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total súry stiahnuté';
  }

  @override
  String get redownloadMissingRepair => 'Oprava / stiahnutie chýba';

  @override
  String get downloadAction => 'Stiahnuť';

  @override
  String get resumeDownload => 'Obnoviť sťahovanie';

  @override
  String get deleteDownloadedFiles => 'Odstrániť stiahnuté súbory';

  @override
  String get downloadCancelling => 'Prebieha rušenie...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Sťahovanie pre $reciter bolo zrušené.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Sťahovanie pre $reciter bolo dokončené.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Sťahovanie pre $reciter bolo dokončené s $failed neúspešnými súrami (stiahnuté sú $downloaded/$total).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Boli odstránené offline súbory pre $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Overené zdroje zvuku Koránu sú momentálne nedostupné.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Overený zvukový balík Koránu je neúplný ($available/$total). Obnovte zdroj cloudu a skúste to znova.';
  }

  @override
  String get chatbotHint => 'Položiť otázku...';

  @override
  String get chatbotThinking => 'Myslenie...';

  @override
  String get sukunMixerSubtitle => 'Mixér prírody a Koránu';

  @override
  String get audioPlayFailed => 'Prehrávanie zvuku zlyhalo';

  @override
  String get sukunNatureLabel => 'Sukun (príroda)';

  @override
  String get sukunRainOfMercy => 'Dážď milosrdenstva';

  @override
  String get sukunGardenOfPeace => 'Záhrada mieru';

  @override
  String get sukunMidnightCalm => 'Polnočný pokoj';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Zvukové scenérie nie sú k dispozícii';

  @override
  String get sukunUnavailableBody =>
      'Táto zostava zatiaľ neobsahuje požadované prvky zvukovej scény Sukun.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Pruhy';

  @override
  String get dayStreak => 'Denná séria';

  @override
  String get bestStreak => 'Najlepšia séria';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Záložný režim offline';

  @override
  String get chatbotUseCloudAi => 'Používanie cloudovej AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Povoliť záložný režim offline';

  @override
  String chatbotQueriesLeft(String count) {
    return 'Zostáva $count';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API nie je nakonfigurované. Overené offline islamské poradenstvo zatiaľ nie je k dispozícii.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Overené miestne islamské poradenstvo zatiaľ nie je k dispozícii. Ak chcete získať odpovede zo zdrojov, prepnite na Cloud AI.';

  @override
  String get mosques => 'mešity';

  @override
  String get halalFood => 'Halal jedlo';

  @override
  String get placesSearchArea => 'Vyhľadajte túto oblasť';

  @override
  String get nearbyMosques => 'Neďaleké mešity';

  @override
  String get islamicSchools => 'islamské školy';

  @override
  String placesFoundCount(String count) {
    return '$count nájdené';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km ďaleko';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Chyba rozhrania API: $statusCode';
  }

  @override
  String get placesNetworkError => 'Chyba siete. Skúste to znova.';

  @override
  String get placesLocationRequiredTitle => 'Vyžaduje sa miesto';

  @override
  String get placesLocationRequiredBody =>
      'Najprv nastavte polohu, aby ste mohli presne vyhľadať blízke mešity, halal jedlo a islamské školy.';

  @override
  String get placesMapTilesUnavailableTitle =>
      'Dlaždice mapy nie sú k dispozícii';

  @override
  String get placesMapTilesUnavailableBody =>
      'Overený zdroj dlaždíc mapy ešte nie je nakonfigurovaný pre túto zostavu. Miesta v okolí sa stále môžu načítať z vašej uloženej polohy.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'Údaje o miestach nie sú k dispozícii';

  @override
  String get placesDataSourceUnavailableBody =>
      'Pre túto zostavu ešte nie je nakonfigurovaný koncový bod údajov overených miest. Pred povolením vyhľadávania v okolí nastavte PLACES_OVERPASS_API_URL na schváleného proxy alebo poskytovateľa.';

  @override
  String get unknownPlaceName => 'Neznáme meno';

  @override
  String get islamicPlaceFallback => 'Islamské miesto';

  @override
  String get asmaMeaning1 => 'The Beneficent';

  @override
  String get asmaMeaning2 => 'Milosrdný';

  @override
  String get asmaMeaning3 => 'Kráľ / Večný Pán';

  @override
  String get asmaMeaning4 => 'Najsvätejšia';

  @override
  String get asmaMeaning5 => 'Zdroj pokoja';

  @override
  String get asmaMeaning6 => 'Dávateľ bezpečnosti';

  @override
  String get asmaMeaning7 => 'The Guardian';

  @override
  String get asmaMeaning8 => 'The Precious / The Most Mighty';

  @override
  String get asmaMeaning9 => 'The Compeller';

  @override
  String get asmaMeaning10 => 'Najväčší';

  @override
  String get asmaMeaning11 => 'Tvorca';

  @override
  String get asmaMeaning12 => 'Tvorca objednávky';

  @override
  String get asmaMeaning13 => 'Tvarca krásy';

  @override
  String get asmaMeaning14 => 'Odpustenie';

  @override
  String get asmaMeaning15 => 'The Subduer';

  @override
  String get asmaMeaning16 => 'Darca všetkého';

  @override
  String get asmaMeaning17 => 'The Sustainer';

  @override
  String get asmaMeaning18 => 'Otvárač';

  @override
  String get asmaMeaning19 => 'Poznajúci všetko';

  @override
  String get asmaMeaning20 => 'The Constrictor';

  @override
  String get asmaMeaning21 => 'Uvoľňovač';

  @override
  String get asmaMeaning22 => 'Abaser';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'The Bestower of Honor';

  @override
  String get asmaMeaning25 => 'Ponižujúci';

  @override
  String get asmaMeaning26 => 'Poslucháč všetkých';

  @override
  String get asmaMeaning27 => 'The Seeer of All';

  @override
  String get asmaMeaning28 => 'Sudca';

  @override
  String get asmaMeaning29 => 'The Just';

  @override
  String get asmaMeaning30 => 'Jemný';

  @override
  String get asmaMeaning31 => 'The All Aware';

  @override
  String get asmaMeaning32 => 'Prednos';

  @override
  String get asmaMeaning33 => 'The Magnificent';

  @override
  String get asmaMeaning34 => 'Veľký odpúšťač';

  @override
  String get asmaMeaning35 => 'Odmenou za vďačnosť';

  @override
  String get asmaMeaning36 => 'Najvyšší';

  @override
  String get asmaMeaning37 => 'Najväčší';

  @override
  String get asmaMeaning38 => 'The Preserver';

  @override
  String get asmaMeaning39 => 'The Nurisher';

  @override
  String get asmaMeaning40 => 'The Reckoner';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'Štedrý';

  @override
  String get asmaMeaning43 => 'Bezpečný';

  @override
  String get asmaMeaning44 => 'Respondent na modlitbu';

  @override
  String get asmaMeaning45 => 'The All Comprehending';

  @override
  String get asmaMeaning46 => 'Dokonale múdry';

  @override
  String get asmaMeaning47 => 'The Loving One';

  @override
  String get asmaMeaning48 => 'Najslávnejší';

  @override
  String get asmaMeaning49 => 'The Resurrector';

  @override
  String get asmaMeaning50 => 'Svedok';

  @override
  String get asmaMeaning51 => 'Pravda';

  @override
  String get asmaMeaning52 => 'All-Safficient Trustee';

  @override
  String get asmaMeaning53 => 'Vlastník všetkej sily';

  @override
  String get asmaMeaning54 => 'The Forceful';

  @override
  String get asmaMeaning55 => 'Ochranca';

  @override
  String get asmaMeaning56 => 'Pochválený';

  @override
  String get asmaMeaning57 => 'Hodnotiteľ';

  @override
  String get asmaMeaning58 => 'Pôvodca';

  @override
  String get asmaMeaning59 => 'The Restorer';

  @override
  String get asmaMeaning60 => 'Darca života';

  @override
  String get asmaMeaning61 => 'Prevzatie života';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'Samostatný živiteľ';

  @override
  String get asmaMeaning64 => 'The Finder';

  @override
  String get asmaMeaning65 => 'The Glorious';

  @override
  String get asmaMeaning66 => 'The Only One';

  @override
  String get asmaMeaning67 => 'The One';

  @override
  String get asmaMeaning68 => 'Ten, ktorý všetci hľadajú';

  @override
  String get asmaMeaning69 => 'Výkonný';

  @override
  String get asmaMeaning70 => 'Tvorca všetkej moci';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'The Delayer';

  @override
  String get asmaMeaning73 => 'Prvý';

  @override
  String get asmaMeaning74 => 'Posledný';

  @override
  String get asmaMeaning75 => 'Manifest';

  @override
  String get asmaMeaning76 => 'The Hidden';

  @override
  String get asmaMeaning77 => 'Guvernér';

  @override
  String get asmaMeaning78 => 'Najvyšší';

  @override
  String get asmaMeaning79 => 'Konateľ dobra';

  @override
  String get asmaMeaning80 => 'Sprievodca k pokániu';

  @override
  String get asmaMeaning81 => 'The Avenger';

  @override
  String get asmaMeaning82 => 'The Forgiver';

  @override
  String get asmaMeaning83 => 'Klement';

  @override
  String get asmaMeaning84 => 'Vlastník / Vládca všetkých';

  @override
  String get asmaMeaning85 => 'Vlastník veličenstva a štedrosti';

  @override
  String get asmaMeaning86 => 'The Equitable One';

  @override
  String get asmaMeaning87 => 'The Gatherer';

  @override
  String get asmaMeaning88 => 'Bohatý';

  @override
  String get asmaMeaning89 => 'The Enricher';

  @override
  String get asmaMeaning90 => 'Prevencia poškodenia';

  @override
  String get asmaMeaning91 => 'Nositeľ škody';

  @override
  String get asmaMeaning92 => 'The Bestower of Benefits';

  @override
  String get asmaMeaning93 => 'Svetlo';

  @override
  String get asmaMeaning94 => 'Sprievodca';

  @override
  String get asmaMeaning95 => 'Pôvodca';

  @override
  String get asmaMeaning96 => 'Večný';

  @override
  String get asmaMeaning97 => 'Dedič';

  @override
  String get asmaMeaning98 => 'Najspravodlivejší sprievodca';

  @override
  String get asmaMeaning99 => 'Pacient One';
}
