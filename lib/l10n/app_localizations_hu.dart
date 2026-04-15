// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Iszlám Fényút';

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
  String get sunrise => 'Napkelte';

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
    return 'Ideje a $prayerName számára';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Ideje imádkozni: $prayerName.';
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
  String get locationServiceDisabled =>
      'A helymeghatározási szolgáltatás le van tiltva.';

  @override
  String get locationPermissionDenied =>
      'Helymeghatározási engedély megtagadva.';

  @override
  String citiesCount(String count) {
    return '$count város';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'Nincs találat';

  @override
  String get loading => 'Betöltés...';

  @override
  String get error => 'Hiba';

  @override
  String get appErrorOccurred => 'Hiba történt';

  @override
  String get appUnknownError => 'Ismeretlen hiba';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Frissítés';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Törölje';

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
  String get tafsirLoading => 'Tafsir betöltése...';

  @override
  String get tafsirSourceLabel => 'Tafsir forrás';

  @override
  String get tafsirNoSurahFound => 'Ehhez a szúrához nem találtak tafsírt.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Nem található tafsir ayah $ayah számára.';
  }

  @override
  String get tafsirLoadFailed => 'A Tafsirt nem sikerült betölteni.';

  @override
  String get tafsirNoTextForAyah => 'Nincs tafsir szöveg ehhez az ayahhoz.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Tafsir letöltése $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Tafsir betöltése $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'A Tafsir forrás HTTP $statusCode hibát adott vissza.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'A kiválasztott tafsir-forrás nem adott vissza bejegyzést.';

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
      'mások így imádkoznak: „Uram, adj nekünk jót ezen a világon és a túlvilágon, és óvj meg minket a Tűz gyötrelmétől.”';

  @override
  String get duaMeaning2 =>
      'Isten egyetlen lelket sem terhel többel, mint amennyit elbír: mindenki elnyeri azt a jót, amit tett, és elszenvedi a rosszat – „Uram, ne vígy minket a feladatra, ha elfelejtünk vagy hibázunk. Uram, ne terhelj minket úgy, ahogy az előttünk állókat. Uram, ne terhelj minket többel, mint amennyi erőnk van elviselni. Bocsáss meg nekünk, bocsáss meg nekünk, és könyörülj rajtunk. Te vagy a Védelmezőnk, úgyhogy segíts minket a hitetlenekkel szemben.';

  @override
  String get duaMeaning3 =>
      '„Uram, ne hagyd, hogy szívünk elfajuljon, miután vezettél minket. Add meg nekünk irgalmadat: Te vagy az örökkévaló.';

  @override
  String get duaMeaning4 =>
      'Uram, add, hogy én és utódaim folytathassuk az imát. Urunk, fogadd el kérésemet.';

  @override
  String get duaMeaning5 =>
      'és engedd le szárnyadat alázattal feléjük, és mondd: „Uram, könyörülj rajtuk, ahogyan ők is törődtek velem, amikor kicsi voltam.”';

  @override
  String get duaMeaning6 =>
      'magasztos legyen Isten, aki valóban irányít. [Próféta], ne rohanj szavalni, mielőtt a kinyilatkoztatás teljesen befejeződött, hanem mondd: „Uram, gyarapíts tudásomban!”';

  @override
  String get duaMeaning7 =>
      'Mondd [Próféta]: „Uram, bocsáss meg és irgalmazz: Te vagy a legkönyörületesebb mindenek között.”';

  @override
  String get duaMeaning8 =>
      'akik így imádkoznak: Urunk, adj nekünk örömet házastársunkban és utódainkban. Tégy jó példát azoknak, akik tisztában vannak veled.';

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
  String get hadith => 'hadísz';

  @override
  String get hadithCollection => 'Hadísz gyűjtemény';

  @override
  String get hadithBooks => 'Hadísz könyvek';

  @override
  String get searchHadith => 'Keresés Hadith';

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
  String get openInYoutube => 'Nyissa meg a YouTube-on';

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
    return '${hours}h ${minutes}p';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '${minutes}p';
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
  String get islamicNewYear => 'Iszlám újév';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadan';

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
    return 'Iránytű hiba: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Az iránytűérzékelő nem érhető el ezen az eszközön.';

  @override
  String get adhanNotificationChannelName => 'Adhan értesítések';

  @override
  String get adhanNotificationChannelDescription =>
      'Az imaidő figyelmeztetések adhan hanggal.';

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
    return 'Nézze meg a $appName: A tökéletes iszlám életmód alkalmazást! $url';
  }

  @override
  String get downloadManager => 'Letöltéskezelő';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Letöltés kész';

  @override
  String get downloadFailed => 'Letöltés sikertelen';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'Nincs internetkapcsolat';

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
  String get zikrCompletedMashAllah => 'Elkészült! MashAllah';

  @override
  String get zikrMeaningSubhanAllah => 'Allah minden tökéletlenség felett áll.';

  @override
  String get zikrMeaningAlhamdulillah => 'Minden dicséret Allahot illeti.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah a Legnagyobb.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Nincs más isten, csak Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Allah bocsánatát kérem.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Nincs hatalom és nincs erő, csak Allah által.';

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
  String get offlineDownloadManager => 'Offline letöltéskezelő';

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
  String get audioVoiceMisharyAlafasy => 'Férfi (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Férfi (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'férfi (szudai)';

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
  String get diagnosticsNotSet => 'Nincs beállítva';

  @override
  String get diagnosticsPrayerProfile => 'Ima profil';

  @override
  String get diagnosticsPrayerSource => 'Ima Hatóság';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Egyéni / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Kézi egyéni szögek (nincs intézményi forrás)';

  @override
  String get diagnosticsCloudDriven => 'Felhővezérelt';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Korán audioeszközök';

  @override
  String get diagnosticsAudioAssets => 'Audioeszközök';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count fájlokat';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'A jegyzék olvasása sikertelen: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Lokalizációs területek';

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
      'Felhőtáblák hiányoznak a Supabase-ből; kötegelt tartalék aktív';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz metaadatok hiányoznak; kötegelt szerkezeti tartalék aktív';

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
  String get dailyVerse => 'Napi vers';

  @override
  String get todaysIbadah => 'A mai Ibadah';

  @override
  String get quickAccess => 'Gyors hozzáférés';

  @override
  String get assistant => 'Helyettes';

  @override
  String get places => 'Helyek';

  @override
  String get library => 'Könyvtár';

  @override
  String get analytics => 'Analitika';

  @override
  String get dailyDuas => 'Napi Duas';

  @override
  String essentialDuas(String count) {
    return '$count alapvető duas';
  }

  @override
  String get duaUnavailableTitle => 'Ellenőrzött duák még nem érhetők el';

  @override
  String get duaUnavailableBody =>
      'Az ellenőrzött napi duák még nincsenek szinkronizálva ezzel az eszközzel. Csatlakozzon a felhőforráshoz a forrásból származó duák betöltéséhez az ellenőrizetlen tartalék helyett.';

  @override
  String get duaCategoryQuranic => 'Korán dua';

  @override
  String get duaCategoryMorningEvening => 'Reggel & Este';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Védelem';

  @override
  String get duaCategoryBeginning => 'Kezdetek';

  @override
  String get duaCategorySleep => 'Alvás';

  @override
  String get duaCategoryFoodDrink => 'Étel és ital';

  @override
  String get duaCategoryForgiveness => 'Megbocsátás';

  @override
  String get duaCategoryHome => 'Otthon';

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
  String get islamicEducation => 'Iszlám oktatás';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Hadísz gyűjtemények';

  @override
  String get hadithSourcePending => 'Ellenőrzött forrás függőben';

  @override
  String get hadithUnavailableTitle =>
      'Az ellenőrzött hadíszgyűjtemények még nem állnak rendelkezésre';

  @override
  String get hadithUnavailableBody =>
      'Ez a build továbbra is egy ellenőrizetlen külső hadísz hírfolyamtól függ. A hadísz-böngészés le van tiltva a forrásból származó adatkészlet szinkronizálásáig.';

  @override
  String get paywallUnlockAll =>
      'Oldja fel az összes funkciót spirituális utazásához';

  @override
  String get premiumProductUnavailable =>
      'Prémium termék jelenleg nem elérhető. Kérjük, próbálja újra később.';

  @override
  String get premiumPurchaseFailed =>
      'A vásárlást nem lehetett befejezni. Kérjük, próbálja újra.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'Korlátlan AI-alapú kérdések és válaszok';

  @override
  String get paywallFeature2Title => 'Korlátlan offline';

  @override
  String get paywallFeature2Desc => 'Töltse le az összes szavalatot';

  @override
  String get paywallFeature3Title => 'Exkluzív minták';

  @override
  String get paywallFeature3Desc => 'Prémium témák és betűtípusok';

  @override
  String get paywallFeature4Title => 'Hirdetésmentes';

  @override
  String get paywallFeature4Desc => 'Nulla reklám';

  @override
  String get paywallGetAccess => 'Élettartamra szóló hozzáférés – 1,00 USD';

  @override
  String get restorePurchases => 'Vásárlások visszaállítása';

  @override
  String get zakatCalculator => 'Zakat kalkulátor';

  @override
  String get zakatGold => 'arany (Altın)';

  @override
  String get zakatSilver => 'ezüst (Gümüş)';

  @override
  String get zakatCashBank => 'Készpénz / Bank';

  @override
  String get zakatBusiness => 'Üzleti';

  @override
  String get zakatInvestments => 'Beruházások';

  @override
  String get zakatWeightGrams => 'Súly (g)';

  @override
  String get zakatPricePerGram => 'Ár/g';

  @override
  String get zakatTotalAmount => 'Teljes összeg';

  @override
  String get zakatInventoryValue => 'Készletérték';

  @override
  String get zakatDebts => 'Adósságok';

  @override
  String get zakatTotal => 'Teljes';

  @override
  String get calculateZakat => 'Számítsa ki Zakat';

  @override
  String get nisabNotReached => 'Nisab nem érte el. Zakat nem kötelező.';

  @override
  String get totalZakat => 'Total Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Eszközök: $assets';
  }

  @override
  String get zakatGoldZakat => 'Arany Zakat';

  @override
  String get zakatSilverZakat => 'Ezüst Zakat';

  @override
  String get zakatCashZakat => 'Cash Zakat';

  @override
  String get zakatBusinessZakat => 'Üzleti Zakat';

  @override
  String get zakatInvestmentZakat => 'Befektetés Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Elérte a napi lekérdezési korlátot. Frissítsen Premiumra korlátlanul.';

  @override
  String get chatbotErrorMsg =>
      'Nem tudtam választ generálni. Kérjük, próbálja újra.';

  @override
  String get chatbotOfflinePrompt =>
      'Az ellenőrzött offline iszlám tudásbázis gondozása még folyamatban van. Most engedélyezheti az offline tartalékot, de csak korlátozott számú biztonságos üzenetet jelenít meg, amíg a forrásból származó adatkészlet el nem készül.\n\nSzeretné engedélyezni az offline tartalékot?';

  @override
  String get chatbotOfflineSwitched =>
      'Offline tartalék engedélyezve. Az ellenőrzött helyi iszlám válaszok még nem állnak készen.';

  @override
  String get chatbotOfflineDownloadLabel => 'Offline tartalék engedélyezése';

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
  String get downloadAction => 'Letöltés';

  @override
  String get resumeDownload => 'Letöltés folytatása';

  @override
  String get deleteDownloadedFiles => 'Letöltött fájlok törlése';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'A $reciter letöltése megszakítva.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'A $reciter letöltése befejeződött.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'A letöltés befejeződött $reciter $failed sikertelen szúrákkal ($downloaded/$total letöltve).';
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
  String get sukunMixerSubtitle => 'Természet és Korán keverő';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (természet)';

  @override
  String get sukunRainOfMercy => 'Irgalom esője';

  @override
  String get sukunGardenOfPeace => 'Béke kertje';

  @override
  String get sukunMidnightCalm => 'Éjféli nyugalom';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'A hangképek nem érhetők el';

  @override
  String get sukunUnavailableBody =>
      'Ez a build még nem tartalmazza a szükséges Sukun soundscape eszközöket.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Napi sorozat';

  @override
  String get bestStreak => 'A legjobb sorozat';

  @override
  String get chatbotCloudAiLabel => 'Felhő AI';

  @override
  String get chatbotLocalAiLabel => 'Offline tartalék';

  @override
  String get chatbotUseCloudAi => 'Cloud AI (Gemini) használata';

  @override
  String get chatbotDownloadLocalAi => 'Offline tartalék engedélyezése';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count maradt';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'A felhő API nincs konfigurálva. Kérjük, váltson helyi AI-ra.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Az ellenőrzött helyi iszlám útmutatás még nem érhető el. A forrásból származó válaszokért váltson a Cloud AI-re.';

  @override
  String get mosques => 'Mecsetek';

  @override
  String get halalFood => 'Halal étel';

  @override
  String get placesSearchArea => 'Keresés ezen a területen';

  @override
  String get nearbyMosques => 'Közeli mecsetek';

  @override
  String get islamicSchools => 'Iszlám iskolák';

  @override
  String placesFoundCount(String count) {
    return '$count található';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km-re';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API-hiba: $statusCode';
  }

  @override
  String get placesNetworkError => 'Hálózati hiba. Kérjük, próbálja újra.';

  @override
  String get placesLocationRequiredTitle => 'Helyszín szükséges';

  @override
  String get placesLocationRequiredBody =>
      'Először állítson be egy helyet, hogy a közeli mecsetek, halal ételek és iszlám iskolák pontosan megkereshetők legyenek.';

  @override
  String get placesMapTilesUnavailableTitle => 'A térképlapok nem érhetők el';

  @override
  String get placesMapTilesUnavailableBody =>
      'Ellenőrzött térképmozaik forrás még nincs konfigurálva ehhez a buildhez. A közeli helyek továbbra is betölthetők az Ön mentett helyéről.';

  @override
  String get unknownPlaceName => 'Ismeretlen név';

  @override
  String get islamicPlaceFallback => 'Iszlám hely';

  @override
  String get asmaMeaning1 => 'A jótékony';

  @override
  String get asmaMeaning2 => 'A kegyes';

  @override
  String get asmaMeaning3 => 'A király / Örökkévaló Úr';

  @override
  String get asmaMeaning4 => 'A legszentebb';

  @override
  String get asmaMeaning5 => 'A béke forrása';

  @override
  String get asmaMeaning6 => 'A biztonságot nyújtó';

  @override
  String get asmaMeaning7 => 'The Guardian';

  @override
  String get asmaMeaning8 => 'A drága / A leghatalmasabb';

  @override
  String get asmaMeaning9 => 'A kényszerítő';

  @override
  String get asmaMeaning10 => 'A legnagyobb';

  @override
  String get asmaMeaning11 => 'A Teremtő';

  @override
  String get asmaMeaning12 => 'A rend készítője';

  @override
  String get asmaMeaning13 => 'A szépség formálója';

  @override
  String get asmaMeaning14 => 'A megbocsátás';

  @override
  String get asmaMeaning15 => 'The Subduer';

  @override
  String get asmaMeaning16 => 'A Mindent Adó';

  @override
  String get asmaMeaning17 => 'A fenntartó';

  @override
  String get asmaMeaning18 => 'A nyitó';

  @override
  String get asmaMeaning19 => 'A Mindenek Tudója';

  @override
  String get asmaMeaning20 => 'The Constrictor';

  @override
  String get asmaMeaning21 => 'A tehermentesítő';

  @override
  String get asmaMeaning22 => 'Az Abaser';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'A becsület adományozója';

  @override
  String get asmaMeaning25 => 'A megalázó';

  @override
  String get asmaMeaning26 => 'A mindenek hallója';

  @override
  String get asmaMeaning27 => 'A mindenek látója';

  @override
  String get asmaMeaning28 => 'A bíró';

  @override
  String get asmaMeaning29 => 'Az igazságos';

  @override
  String get asmaMeaning30 => 'A finom';

  @override
  String get asmaMeaning31 => 'Minden tudatában';

  @override
  String get asmaMeaning32 => 'Az elődök';

  @override
  String get asmaMeaning33 => 'A csodálatos';

  @override
  String get asmaMeaning34 => 'A nagy megbocsátó';

  @override
  String get asmaMeaning35 => 'A hála jutalma';

  @override
  String get asmaMeaning36 => 'A legmagasabb';

  @override
  String get asmaMeaning37 => 'A legnagyobb';

  @override
  String get asmaMeaning38 => 'A megőrző';

  @override
  String get asmaMeaning39 => 'A tápláló';

  @override
  String get asmaMeaning40 => 'The Reckoner';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'A nagylelkű';

  @override
  String get asmaMeaning43 => 'Az éber';

  @override
  String get asmaMeaning44 => 'Az imára válaszoló';

  @override
  String get asmaMeaning45 => 'A mindent megértő';

  @override
  String get asmaMeaning46 => 'A tökéletesen bölcs';

  @override
  String get asmaMeaning47 => 'A szerető';

  @override
  String get asmaMeaning48 => 'A legdicsőségesebb';

  @override
  String get asmaMeaning49 => 'A feltámasztó';

  @override
  String get asmaMeaning50 => 'A Tanú';

  @override
  String get asmaMeaning51 => 'Az igazság';

  @override
  String get asmaMeaning52 => 'A mindenre elegendő megbízott';

  @override
  String get asmaMeaning53 => 'A minden erő birtokosa';

  @override
  String get asmaMeaning54 => 'Az Erőteljes';

  @override
  String get asmaMeaning55 => 'A Védő';

  @override
  String get asmaMeaning56 => 'A dicsértek';

  @override
  String get asmaMeaning57 => 'Az értékbecslő';

  @override
  String get asmaMeaning58 => 'A kezdeményező';

  @override
  String get asmaMeaning59 => 'A helyreállító';

  @override
  String get asmaMeaning60 => 'Az életadó';

  @override
  String get asmaMeaning61 => 'Az élet elvevője';

  @override
  String get asmaMeaning62 => 'Az örökké élő';

  @override
  String get asmaMeaning63 => 'Az önfenntartó fenntartó';

  @override
  String get asmaMeaning64 => 'A kereső';

  @override
  String get asmaMeaning65 => 'A dicsőséges';

  @override
  String get asmaMeaning66 => 'Az egyetlen';

  @override
  String get asmaMeaning67 => 'Az Egy';

  @override
  String get asmaMeaning68 => 'A mindenki által keresett';

  @override
  String get asmaMeaning69 => 'Az Erőteljes';

  @override
  String get asmaMeaning70 => 'Minden hatalom Teremtője';

  @override
  String get asmaMeaning71 => 'Az Expediter';

  @override
  String get asmaMeaning72 => 'A késleltetés';

  @override
  String get asmaMeaning73 => 'Az első';

  @override
  String get asmaMeaning74 => 'Az utolsó';

  @override
  String get asmaMeaning75 => 'A Manifest';

  @override
  String get asmaMeaning76 => 'A rejtett';

  @override
  String get asmaMeaning77 => 'A kormányzó';

  @override
  String get asmaMeaning78 => 'A Legfelsőbb';

  @override
  String get asmaMeaning79 => 'A jó cselekvője';

  @override
  String get asmaMeaning80 => 'Útmutató a bűnbánathoz';

  @override
  String get asmaMeaning81 => 'A Bosszúálló';

  @override
  String get asmaMeaning82 => 'A megbocsátó';

  @override
  String get asmaMeaning83 => 'A Kelemen';

  @override
  String get asmaMeaning84 => 'Mindenek tulajdonosa / uralkodója';

  @override
  String get asmaMeaning85 => 'A Majesty and Bounty birtokosa';

  @override
  String get asmaMeaning86 => 'Az Equitable One';

  @override
  String get asmaMeaning87 => 'The Gatherer';

  @override
  String get asmaMeaning88 => 'A gazdag';

  @override
  String get asmaMeaning89 => 'A gazdagító';

  @override
  String get asmaMeaning90 => 'A károk megelőzője';

  @override
  String get asmaMeaning91 => 'A kárhozó';

  @override
  String get asmaMeaning92 => 'Az előnyök adományozója';

  @override
  String get asmaMeaning93 => 'A fény';

  @override
  String get asmaMeaning94 => 'Az útmutató';

  @override
  String get asmaMeaning95 => 'A kezdeményező';

  @override
  String get asmaMeaning96 => 'Az örökkévaló';

  @override
  String get asmaMeaning97 => 'Az örökös';

  @override
  String get asmaMeaning98 => 'A legigazságosabb útmutató';

  @override
  String get asmaMeaning99 => 'A beteg';
}
