// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Islamisk väg av ljus';

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
  String get sunrise => 'Soluppgång';

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
    return 'Dags för $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Det är dags att be $prayerName.';
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
  String get locationServiceDisabled => 'Platstjänsten är inaktiverad.';

  @override
  String get locationPermissionDenied => 'Platstillstånd nekad.';

  @override
  String get locationDetectionFailed =>
      'Kunde inte identifiera din plats. Välj en stad manuellt eller försök igen.';

  @override
  String citiesCount(String count) {
    return '$count städer';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'Inga resultat hittades';

  @override
  String get loading => 'Laddar...';

  @override
  String get error => 'Fel';

  @override
  String get appErrorOccurred => 'Ett fel uppstod';

  @override
  String get appUnknownError => 'Okänt fel';

  @override
  String get quranLoadFailed => 'Koraninnehåll kunde inte laddas. Försök igen.';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Uppdatera';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Ta bort';

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
  String get tafsirLoading => 'Laddar tafsir...';

  @override
  String get tafsirSourceLabel => 'Tafsir källa';

  @override
  String get tafsirNoSurahFound => 'Ingen tafsir hittades för denna sura.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Ingen tafsir hittades för ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir kunde inte laddas.';

  @override
  String get tafsirNoTextForAyah => 'Ingen tafsir-text för denna ayah.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Laddar ner tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Laddar tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir-källan returnerade ett HTTP $statusCode-fel.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Den valda tafsirkällan returnerade inga poster.';

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
      'andra ber: \'Vår Herre, ge oss gott i denna värld och i Livet Efter detta, och skydda oss från Eldens plåga.\'';

  @override
  String get duaMeaning2 =>
      'Gud belastar inte någon själ med mer än den kan bära: var och en vinner det goda den har gjort, och lider av sitt onda- ‘Herre, ta oss inte i uppgift om vi glömmer eller gör misstag. Herre, belasta oss inte som Du belastade dem före oss. Herre, belasta oss inte med mer än vi har kraft att bära. Förlåt oss, förlåt oss och förbarma dig över oss. Du är vår beskyddare, så hjälp oss mot de icke troende.\'';

  @override
  String get duaMeaning3 =>
      '\'Vår Herre, låt inte våra hjärtan avvika efter att Du har väglett oss. Ge oss din nåd: Du är den ständigt givande.';

  @override
  String get duaMeaning4 =>
      'Herre, ge att jag och min avkomma får fortsätta bönen. Vår Herre, acceptera min begäran.';

  @override
  String get duaMeaning5 =>
      'och sänk din ving i ödmjukhet mot dem i vänlighet och säg: \'Herre, förbarma dig över dem, precis som de brydde sig om mig när jag var liten.\'';

  @override
  String get duaMeaning6 =>
      'Upphöjd vare Gud, den som verkligen har kontroll. [Profet], skynda dig inte att recitera innan uppenbarelsen är helt fullständig utan säg: \'Herre, öka mig i kunskap!\'';

  @override
  String get duaMeaning7 =>
      'Säg [profet], \'Herre, förlåt och förbarma dig: Du är den mest barmhärtige av alla.\'';

  @override
  String get duaMeaning8 =>
      'de som ber: \'Vår Herre, ge oss glädje i våra makar och avkommor. Gör oss till goda exempel för dem som är medvetna om dig.';

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
  String get hadithCollection => 'Hadith samling';

  @override
  String get hadithBooks => 'Hadith-böcker';

  @override
  String get searchHadith => 'Sök efter Hadith';

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
  String get openInYoutube => 'Öppna i YouTube';

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
  String get islamicNewYear => 'Islamiskt nyår';

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
    return 'Kompassfel: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Kompasssensor är inte tillgänglig på den här enheten.';

  @override
  String get qiblaLocationRequiredTitle => 'Plats krävs för Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Ställ in din faktiska plats innan du använder Qibla-kompassen så att riktningen kan beräknas korrekt.';

  @override
  String get adhanNotificationChannelName => 'Adhan-meddelanden';

  @override
  String get adhanNotificationChannelDescription =>
      'Bönetidslarm med adhan-ljud.';

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
    return 'Kolla in $appName: Den ultimata islamiska livsstilsappen! $url';
  }

  @override
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Nedladdningen är klar';

  @override
  String get downloadFailed => 'Nedladdningen misslyckades';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'Ingen Internetanslutning';

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
  String get zikrCompletedMashAllah => 'Avslutad! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah är långt över varje ofullkomlighet.';

  @override
  String get zikrMeaningAlhamdulillah => 'All lovsång tillhör Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah är den Störste.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Det finns ingen gud utom Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Jag ber Allahs förlåtelse.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Det finns ingen makt och ingen styrka förutom genom Allah.';

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
  String get freeStorage => 'Frigör intern enhetslagring.';

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
  String get audioVoice => 'Audio Röst';

  @override
  String get audioVoiceMisharyAlafasy => 'Man (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Man (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Man (sudais)';

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
  String get diagnosticsNotSet => 'Inte inställt';

  @override
  String get diagnosticsPrayerProfile => 'Bönprofil';

  @override
  String get diagnosticsPrayerSource => 'Bönemyndigheten';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Anpassad / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manuella anpassade vinklar (ingen institutionell källa)';

  @override
  String get diagnosticsCloudDriven => 'Molndrivet';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Koranens ljudtillgångar';

  @override
  String get diagnosticsAudioAssets => 'Audio Assets';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count filer';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifestläsning misslyckades: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Lokaliseringslokaler';

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
      'Molntabeller saknas i Supabase; buntad reserv aktiv';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz metadata saknas; buntad strukturell reserv är aktiv';

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
  String get dailyVerse => 'Dagsvers';

  @override
  String get todaysIbadah => 'Dagens Ibadah';

  @override
  String get quickAccess => 'Snabb åtkomst';

  @override
  String get assistant => 'Assistent';

  @override
  String get places => 'Platser';

  @override
  String get library => 'Bibliotek';

  @override
  String get analytics => 'Analytics';

  @override
  String get dailyDuas => 'Dagliga Duas';

  @override
  String essentialDuas(String count) {
    return '$count viktiga duas';
  }

  @override
  String get duaUnavailableTitle =>
      'Verifierade duas är inte tillgängliga ännu';

  @override
  String get duaUnavailableBody =>
      'Verifierade dagliga duas har inte synkroniserats med den här enheten ännu. Anslut till molnkällan för att läsa in duas med källa istället för en overifierad reserv.';

  @override
  String get duaCategoryQuranic => 'Koranisk dua';

  @override
  String get duaCategoryMorningEvening => 'Morgon & Kväll';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Skydd';

  @override
  String get duaCategoryBeginning => 'Början';

  @override
  String get duaCategorySleep => 'Sova';

  @override
  String get duaCategoryFoodDrink => 'Mat & Dryck';

  @override
  String get duaCategoryForgiveness => 'Förlåtelse';

  @override
  String get duaCategoryHome => 'Hem';

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
  String get islamicEducation => 'Islamisk utbildning';

  @override
  String get sukunAudioTitle => 'Sukun ljudlandskap';

  @override
  String get hadithCollections => 'Hadith samlingar';

  @override
  String get hadithSourcePending => 'Verifierad källa väntar';

  @override
  String get hadithUnavailableTitle =>
      'Verifierade hadith-samlingar är inte tillgängliga ännu';

  @override
  String get hadithUnavailableBody =>
      'Denna konstruktion beror fortfarande på ett overifierat externt hadithflöde. Hadith-surfning förblir inaktiverad tills en källdatauppsättning synkroniseras.';

  @override
  String get paywallUnlockAll => 'Lås upp alla funktioner för din andliga resa';

  @override
  String get premiumProductUnavailable =>
      'Premiumprodukten är inte tillgänglig just nu. Försök igen senare.';

  @override
  String get premiumPurchaseFailed =>
      'Köpet kunde inte slutföras. Försök igen.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'Obegränsad AI-driven frågor och svar';

  @override
  String get paywallFeature2Title => 'Obegränsad offline';

  @override
  String get paywallFeature2Desc => 'Ladda ner alla recitationer';

  @override
  String get paywallFeature3Title => 'Exklusiv design';

  @override
  String get paywallFeature3Desc => 'Premium teman och typsnitt';

  @override
  String get paywallFeature4Title => 'Annonsfri';

  @override
  String get paywallFeature4Desc => 'Noll reklam';

  @override
  String get paywallGetAccess => 'Få livstidsåtkomst – \$1,00';

  @override
  String get restorePurchases => 'Återställ inköp';

  @override
  String get zakatCalculator => 'Zakat-kalkylator';

  @override
  String get zakatGold => 'Guld (Altın)';

  @override
  String get zakatSilver => 'Silver (Gümüş)';

  @override
  String get zakatCashBank => 'Kontanter/bank';

  @override
  String get zakatBusiness => 'Företag';

  @override
  String get zakatInvestments => 'Investeringar';

  @override
  String get zakatWeightGrams => 'Vikt (g)';

  @override
  String get zakatPricePerGram => 'Pris/g';

  @override
  String get zakatTotalAmount => 'Totalt belopp';

  @override
  String get zakatInventoryValue => 'Lagervärde';

  @override
  String get zakatDebts => 'Fordringar';

  @override
  String get zakatTotal => 'Total';

  @override
  String get calculateZakat => 'Beräkna Zakat';

  @override
  String get nisabNotReached => 'Nisab inte nådd. Zakat är inte obligatoriskt.';

  @override
  String get totalZakat => 'Totalt Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Tillgångar: $assets';
  }

  @override
  String get zakatGoldZakat => 'Guld Zakat';

  @override
  String get zakatSilverZakat => 'Silver Zakat';

  @override
  String get zakatCashZakat => 'Cash Zakat';

  @override
  String get zakatBusinessZakat => 'Business Zakat';

  @override
  String get zakatInvestmentZakat => 'Investering Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Daglig frågegräns nådd. Uppgradera till Premium för obegränsat.';

  @override
  String get chatbotErrorMsg =>
      'Jag kunde inte generera ett svar. Försök igen.';

  @override
  String get chatbotOfflinePrompt =>
      'Den verifierade offline islamiska kunskapsbasen håller fortfarande på att kureras. Du kan aktivera offline reserv nu, men det kommer bara att visa begränsade säkra meddelanden tills den hämtade datamängden är klar.\n\nVill du aktivera offline reserv?';

  @override
  String get chatbotOfflineSwitched =>
      'Offline reserv aktiverad. Verifierade lokala islamiska svar är inte klara ännu.';

  @override
  String get chatbotOfflineDownloadLabel => 'Aktivera Offline Fallback';

  @override
  String get downloadPreparing => 'Förbereder nedladdning...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Laddar ner surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Alla surahs har redan laddats ner för denna reciter.';

  @override
  String get offlineQuranAudioPacks => 'Offline Quran Audio Packs';

  @override
  String storedOnDeviceMb(String size) {
    return 'Stored on device: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surahs nedladdade';
  }

  @override
  String get redownloadMissingRepair => 'Reparation/nedladdning saknas';

  @override
  String get downloadAction => 'Ladda ner';

  @override
  String get resumeDownload => 'Återuppta nedladdning';

  @override
  String get deleteDownloadedFiles => 'Ta bort nedladdade filer';

  @override
  String get downloadCancelling => 'Avbryter...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Nedladdningen avbröts för $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Nedladdningen slutförd för $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Nedladdningen avslutad för $reciter med $failed misslyckade surahs ($downloaded/$total nedladdade).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Deleted offline files for $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Verifierade koranljudkällor är inte tillgängliga just nu.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Verifierat ljudpaket för Koranen är ofullständigt ($available/$total). Uppdatera cloud seed och försök igen.';
  }

  @override
  String get chatbotHint => 'Ask a question...';

  @override
  String get chatbotThinking => 'Thinking...';

  @override
  String get sukunMixerSubtitle => 'Natur & Qur\'an Mixer';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (natur)';

  @override
  String get sukunRainOfMercy => 'Regn av nåd';

  @override
  String get sukunGardenOfPeace => 'Fredens trädgård';

  @override
  String get sukunMidnightCalm => 'Midnattslugn';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Ljudlandskap är inte tillgängligt';

  @override
  String get sukunUnavailableBody =>
      'Den här konstruktionen inkluderar inte de nödvändiga Sukun ljudlandskapstillgångarna ännu.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Dagsserie';

  @override
  String get bestStreak => 'Bästa streak';

  @override
  String get chatbotCloudAiLabel => 'Moln AI';

  @override
  String get chatbotLocalAiLabel => 'Offline reserv';

  @override
  String get chatbotUseCloudAi => 'Använd Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Aktivera Offline Fallback';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count kvar';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API är inte konfigurerat. Verifierad offline islamisk vägledning är inte tillgänglig ännu.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Verifierad lokal islamisk vägledning är inte tillgänglig ännu. Byt till Cloud AI för inköpta svar.';

  @override
  String get mosques => 'Moskéer';

  @override
  String get halalFood => 'Halal mat';

  @override
  String get placesSearchArea => 'Sök i det här området';

  @override
  String get nearbyMosques => 'Närliggande moskéer';

  @override
  String get islamicSchools => 'Islamiska skolor';

  @override
  String placesFoundCount(String count) {
    return '$count hittades';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km bort';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API-fel: $statusCode';
  }

  @override
  String get placesNetworkError => 'Nätverksfel. Försök igen.';

  @override
  String get placesLocationRequiredTitle => 'Plats krävs';

  @override
  String get placesLocationRequiredBody =>
      'Ange en plats först så att närliggande moskéer, halalmat och islamiska skolor kan sökas exakt.';

  @override
  String get placesMapTilesUnavailableTitle => 'Kartrutor är inte tillgängliga';

  @override
  String get placesMapTilesUnavailableBody =>
      'En verifierad kartbrickakälla är inte konfigurerad för den här versionen ännu. Platser i närheten kan fortfarande laddas från din sparade plats.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'Platsdata är inte tillgänglig';

  @override
  String get placesDataSourceUnavailableBody =>
      'En verifierad platsdataslutpunkt är inte konfigurerad för den här versionen ännu. Ställ in PLACES_OVERPASS_API_URL till en godkänd proxy eller leverantör innan du aktiverar sökning i närheten.';

  @override
  String get unknownPlaceName => 'Okänt namn';

  @override
  String get islamicPlaceFallback => 'Islamisk plats';

  @override
  String get asmaMeaning1 => 'The Beneficent';

  @override
  String get asmaMeaning2 => 'Den barmhärtige';

  @override
  String get asmaMeaning3 => 'Kungen / Evige Herre';

  @override
  String get asmaMeaning4 => 'Det allra heligaste';

  @override
  String get asmaMeaning5 => 'Källan till fred';

  @override
  String get asmaMeaning6 => 'Säkerhetsgivaren';

  @override
  String get asmaMeaning7 => 'The Guardian';

  @override
  String get asmaMeaning8 => 'Den dyrbara / den mäktigaste';

  @override
  String get asmaMeaning9 => 'Tvingaren';

  @override
  String get asmaMeaning10 => 'Den största';

  @override
  String get asmaMeaning11 => 'Skaparen';

  @override
  String get asmaMeaning12 => 'The Maker of Order';

  @override
  String get asmaMeaning13 => 'The Shaper of Beauty';

  @override
  String get asmaMeaning14 => 'Den förlåtande';

  @override
  String get asmaMeaning15 => 'The Subduer';

  @override
  String get asmaMeaning16 => 'Allts givare';

  @override
  String get asmaMeaning17 => 'The Sustainer';

  @override
  String get asmaMeaning18 => 'Öppnaren';

  @override
  String get asmaMeaning19 => 'Allans vetande';

  @override
  String get asmaMeaning20 => 'Konstriktorn';

  @override
  String get asmaMeaning21 => 'Reliever';

  @override
  String get asmaMeaning22 => 'Abaser';

  @override
  String get asmaMeaning23 => 'Exaltern';

  @override
  String get asmaMeaning24 => 'Hedersutdelaren';

  @override
  String get asmaMeaning25 => 'Förödmjukaren';

  @override
  String get asmaMeaning26 => 'Allas Hörare';

  @override
  String get asmaMeaning27 => 'Allas seare';

  @override
  String get asmaMeaning28 => 'Domaren';

  @override
  String get asmaMeaning29 => 'The Just';

  @override
  String get asmaMeaning30 => 'Den subtila';

  @override
  String get asmaMeaning31 => 'The All Aware';

  @override
  String get asmaMeaning32 => 'Förutsättningen';

  @override
  String get asmaMeaning33 => 'The Magnificent';

  @override
  String get asmaMeaning34 => 'Den store förlåtaren';

  @override
  String get asmaMeaning35 => 'Tacksamhetens belönare';

  @override
  String get asmaMeaning36 => 'Det högsta';

  @override
  String get asmaMeaning37 => 'Den största';

  @override
  String get asmaMeaning38 => 'Bevararen';

  @override
  String get asmaMeaning39 => 'The Nourisher';

  @override
  String get asmaMeaning40 => 'Regnaren';

  @override
  String get asmaMeaning41 => 'Den majestätiska';

  @override
  String get asmaMeaning42 => 'De generösa';

  @override
  String get asmaMeaning43 => 'Den vakande';

  @override
  String get asmaMeaning44 => 'Bönsvararen';

  @override
  String get asmaMeaning45 => 'The All Comprehending';

  @override
  String get asmaMeaning46 => 'De perfekt kloka';

  @override
  String get asmaMeaning47 => 'Den älskande';

  @override
  String get asmaMeaning48 => 'Den mest härliga';

  @override
  String get asmaMeaning49 => 'Återuppståndaren';

  @override
  String get asmaMeaning50 => 'Vittnet';

  @override
  String get asmaMeaning51 => 'Sanningen';

  @override
  String get asmaMeaning52 => 'The All-Sufficient Trustee';

  @override
  String get asmaMeaning53 => 'Besittaren av all styrka';

  @override
  String get asmaMeaning54 => 'The Forceful';

  @override
  String get asmaMeaning55 => 'Protektorn';

  @override
  String get asmaMeaning56 => 'The Praised';

  @override
  String get asmaMeaning57 => 'Bedömaren';

  @override
  String get asmaMeaning58 => 'Upphovsmannen';

  @override
  String get asmaMeaning59 => 'Återställaren';

  @override
  String get asmaMeaning60 => 'Livets givare';

  @override
  String get asmaMeaning61 => 'Livstagaren';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'The Self-Subsisting Sustainer';

  @override
  String get asmaMeaning64 => 'Finnaren';

  @override
  String get asmaMeaning65 => 'The Glorious';

  @override
  String get asmaMeaning66 => 'Den enda';

  @override
  String get asmaMeaning67 => 'The One';

  @override
  String get asmaMeaning68 => 'Den som alla sökte';

  @override
  String get asmaMeaning69 => 'Den kraftfulla';

  @override
  String get asmaMeaning70 => 'Skaparen av all makt';

  @override
  String get asmaMeaning71 => 'Expeditören';

  @override
  String get asmaMeaning72 => 'Fördröjaren';

  @override
  String get asmaMeaning73 => 'Den första';

  @override
  String get asmaMeaning74 => 'Den sista';

  @override
  String get asmaMeaning75 => 'Manifestet';

  @override
  String get asmaMeaning76 => 'The Hidden';

  @override
  String get asmaMeaning77 => 'Guvernören';

  @override
  String get asmaMeaning78 => 'Den Supreme One';

  @override
  String get asmaMeaning79 => 'Det goda som gör det';

  @override
  String get asmaMeaning80 => 'Guiden till omvändelse';

  @override
  String get asmaMeaning81 => 'Hämnaren';

  @override
  String get asmaMeaning82 => 'Förlåtaren';

  @override
  String get asmaMeaning83 => 'Klementen';

  @override
  String get asmaMeaning84 => 'Allas ägare/suverän';

  @override
  String get asmaMeaning85 => 'Besittaren av Majestät och Bounty';

  @override
  String get asmaMeaning86 => 'The Equitable One';

  @override
  String get asmaMeaning87 => 'The Gatherer';

  @override
  String get asmaMeaning88 => 'Den rika';

  @override
  String get asmaMeaning89 => 'Berikaren';

  @override
  String get asmaMeaning90 => 'Förhindraren av skada';

  @override
  String get asmaMeaning91 => 'The Bringer of Harm';

  @override
  String get asmaMeaning92 => 'Förmånernas skänker';

  @override
  String get asmaMeaning93 => 'Ljuset';

  @override
  String get asmaMeaning94 => 'Guidaren';

  @override
  String get asmaMeaning95 => 'Upphovsmannen';

  @override
  String get asmaMeaning96 => 'Den eviga';

  @override
  String get asmaMeaning97 => 'Arvtagaren';

  @override
  String get asmaMeaning98 => 'Den mest rättfärdiga guiden';

  @override
  String get asmaMeaning99 => 'Den patienten';
}
