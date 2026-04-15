// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get appTitle => 'Allahs vej';

  @override
  String get splashTagline => 'Islamisk lysets vej';

  @override
  String get home => 'Hjem';

  @override
  String get quran => 'Koranen';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Kalender';

  @override
  String get settings => 'Indstillinger';

  @override
  String get nextPrayer => 'Næste bøn';

  @override
  String get prayerTimes => 'Bedetider';

  @override
  String get continueReading => 'Fortsæt med at læse';

  @override
  String get getLifetimePro => 'Få Lifetime Pro';

  @override
  String get unlockTajweed => 'Lås Tajweed og avancerede funktioner op';

  @override
  String get prayerCalculation => 'Bønberegning';

  @override
  String get method => 'Beregningsmetode';

  @override
  String get madhab => 'Asr Juridisk Metode';

  @override
  String get surahs => 'Surahs';

  @override
  String get ayahs => 'Ayahs';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Solopgang';

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
    return 'Tid til $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Det er tid til at bede $prayerName.';
  }

  @override
  String get dataStorage => 'Data & Opbevaring';

  @override
  String get clearCache => 'Ryd cache';

  @override
  String get cacheClearedSuccess => 'Cache ryddet';

  @override
  String get location => 'Beliggenhed';

  @override
  String get language => 'Sprog';

  @override
  String get selectLanguage => 'Vælg sprog';

  @override
  String get searchLanguage => 'Søg i mere end 180 sprog...';

  @override
  String get systemDefault => 'Systemstandard';

  @override
  String get currentLocation => 'Nuværende placering (GPS)';

  @override
  String get locationServiceDisabled => 'Placeringstjenesten er deaktiveret.';

  @override
  String get locationPermissionDenied => 'Placeringstilladelse nægtet.';

  @override
  String get locationDetectionFailed =>
      'Kunne ikke finde din placering. Vælg venligst en by manuelt, eller prøv igen.';

  @override
  String citiesCount(String count) {
    return '$count byer';
  }

  @override
  String get search => 'Søge';

  @override
  String get searchHint => 'Søge...';

  @override
  String get noResults => 'Ingen resultater fundet';

  @override
  String get loading => 'Indlæser...';

  @override
  String get error => 'Fejl';

  @override
  String get appErrorOccurred => 'Der opstod en fejl';

  @override
  String get appUnknownError => 'Ukendt fejl';

  @override
  String get quranLoadFailed =>
      'Koranindhold kunne ikke indlæses. Prøv venligst igen.';

  @override
  String get retry => 'Prøv igen';

  @override
  String get refreshAction => 'Opdater';

  @override
  String get cancel => 'Ophæve';

  @override
  String get save => 'Spare';

  @override
  String get delete => 'Slet';

  @override
  String get edit => 'Redigere';

  @override
  String get close => 'Tæt';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Ingen';

  @override
  String get surah => 'Surah';

  @override
  String ayahLabel(String ayah) {
    return 'Vers $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Side';

  @override
  String get reading => 'Læsning';

  @override
  String get recitation => 'Recitation';

  @override
  String get translation => 'Oversættelse';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Indlæser tafsir...';

  @override
  String get tafsirSourceLabel => 'Tafsir kilde';

  @override
  String get tafsirNoSurahFound => 'Ingen tafsir fundet for denne surah.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Ingen tafsir fundet for ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir kunne ikke indlæses.';

  @override
  String get tafsirNoTextForAyah => 'Ingen tafsir-tekst til denne ayah.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Downloader tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Indlæser tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir-kilden returnerede en HTTP $statusCode fejl.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Den valgte tafsir-kilde returnerede ingen poster.';

  @override
  String get bookmarks => 'Bogmærker';

  @override
  String get addBookmark => 'Tilføj bogmærke';

  @override
  String get removeBookmark => 'Fjern bogmærke';

  @override
  String get lastRead => 'Sidst læst';

  @override
  String get dailyZikr => 'Daglig Zikr';

  @override
  String get duaMeaning1 =>
      'andre beder: \'Vor Herre, giv os det gode i denne verden og i det hinsidige, og beskyt os mod Ildens pine.\'';

  @override
  String get duaMeaning2 =>
      'Gud belaster ikke nogen sjæl med mere, end den kan tåle: hver enkelt vinder det gode, den har gjort, og lider dets onde- \'Herre, tag os ikke på arbejde, hvis vi glemmer eller begår fejl. Herre, byrder os ikke, som Du belastede dem før os. Herre, byrde os ikke med mere, end vi har styrke til at bære. Tilgiv os, tilgiv os og forbarm dig over os. Du er vores beskytter, så hjælp os mod de vantro.\'';

  @override
  String get duaMeaning3 =>
      '\'Vor Herre, lad ikke vores hjerter afvige, efter at du har vejledt os. Giv os din nåde: Du er den evigt givende.';

  @override
  String get duaMeaning4 =>
      'Herre, giv, at jeg og mit afkom må fortsætte bønnen. Vor Herre, accepter min anmodning.';

  @override
  String get duaMeaning5 =>
      'og sænk din vinge i ydmyghed over for dem i venlighed og sig: \'Herre, forbarm dig over dem, ligesom de passede på mig, da jeg var lille.\'';

  @override
  String get duaMeaning6 =>
      'ophøjet være Gud, den der virkelig har kontrol. [Profet], skynd dig ikke at recitere, før åbenbaringen er fuldstændig fuldstændig, men sig: \'Herre, øg mig i kundskab!\'';

  @override
  String get duaMeaning7 =>
      'Sig [profet], \'Herre, tilgiv og forbarm dig: Du er den mest barmhjertige af alle.\'';

  @override
  String get duaMeaning8 =>
      'dem, der beder: \'Vor Herre, giv os glæde i vores ægtefæller og afkom. Gør os til gode eksempler for dem, der er opmærksomme på dig’.';

  @override
  String get morningZikr => 'Morgen Zikr';

  @override
  String get eveningZikr => 'Aften Zikr';

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
  String get hadithBooks => 'Hadith bøger';

  @override
  String get searchHadith => 'Søg efter Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Allahs navne';

  @override
  String get liveTv => 'Live tv';

  @override
  String get watchLive => 'Se live';

  @override
  String get streamError => 'Stream fejl';

  @override
  String get reload => 'Genindlæs';

  @override
  String get openInYoutube => 'Åbn i YouTube';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Faste';

  @override
  String get quranReading => 'Koranlæsning';

  @override
  String get prayers => 'Bønner';

  @override
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '${hours}t ${minutes}m';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '$minutes min';
  }

  @override
  String get prayerRemainingUnavailable => '--';

  @override
  String get dhikrCount => 'Dhikr tæller';

  @override
  String get weeklyProgress => 'Ugentlige fremskridt';

  @override
  String get monthlyProgress => 'Månedlig fremgang';

  @override
  String get statistics => 'Statistik';

  @override
  String get hijriCalendar => 'Hijri kalender';

  @override
  String get gregorianCalendar => 'gregoriansk kalender';

  @override
  String get today => 'I dag';

  @override
  String get tomorrow => 'I morgen';

  @override
  String get yesterday => 'I går';

  @override
  String get specialDays => 'Særlige dage';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Islamisk nytår';

  @override
  String get mawlidAnNabi => 'Mawlid Kandili';

  @override
  String get specialDayDateRamadanStart => '1 Ramadan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadan';

  @override
  String get specialDayDateEidAlFitr => '1 Shawwal';

  @override
  String get specialDayDateEidAlAdha => '10 Dhu al-Hijjah';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharram';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabiul Awwal';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'Qibla retning';

  @override
  String get compass => 'Kompas';

  @override
  String get degrees => 'grader';

  @override
  String get north => 'Nord';

  @override
  String get qiblaFound => 'Qibla fundet!';

  @override
  String get turnDevice => 'Drej din enhed, så den vender mod Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Kompasfejl: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Kompassensor er ikke tilgængelig på denne enhed.';

  @override
  String get qiblaLocationRequiredTitle => 'Placering påkrævet for Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Indstil din faktiske placering, før du bruger Qibla-kompasset, så retningen kan beregnes nøjagtigt.';

  @override
  String get adhanNotificationChannelName => 'Adhan-meddelelser';

  @override
  String get adhanNotificationChannelDescription =>
      'Bønnetidsalarmer med adhan-lyd.';

  @override
  String get notifications => 'Meddelelser';

  @override
  String get prayerNotifications => 'Bønsmeddelelser';

  @override
  String get enableNotifications => 'Aktiver meddelelser';

  @override
  String get notificationTime => 'Underretningstid';

  @override
  String get beforePrayer => 'minutter før bøn';

  @override
  String get theme => 'Tema';

  @override
  String get lightMode => 'Lys tilstand';

  @override
  String get darkMode => 'Mørk tilstand';

  @override
  String get systemTheme => 'System tema';

  @override
  String get about => 'Om';

  @override
  String get version => 'Version';

  @override
  String get privacyPolicy => 'Privatlivspolitik';

  @override
  String get termsOfService => 'Servicevilkår';

  @override
  String get contactUs => 'Kontakt os';

  @override
  String get rateApp => 'Bedøm app';

  @override
  String get shareApp => 'Del app';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Tjek $appName: Den ultimative islamiske livsstilsapp! $url';
  }

  @override
  String get downloadManager => 'Downloadadministrator';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloader...';

  @override
  String get downloadComplete => 'Download fuldført';

  @override
  String get downloadFailed => 'Download mislykkedes';

  @override
  String get offlineMode => 'Offline tilstand';

  @override
  String get noInternet => 'Ingen internetforbindelse';

  @override
  String get checkConnection => 'Tjek venligst din forbindelse';

  @override
  String get premium => 'Præmie';

  @override
  String get upgradeToPro => 'Opgrader til Pro';

  @override
  String get proFeatures => 'Pro funktioner';

  @override
  String get removeAds => 'Fjern annoncer';

  @override
  String get unlockAll => 'Lås alt indhold op';

  @override
  String get exclusiveContent => 'Eksklusivt indhold';

  @override
  String get welcome => 'Velkomst';

  @override
  String get getStarted => 'Kom i gang';

  @override
  String get skip => 'Springe';

  @override
  String get next => 'Næste';

  @override
  String get done => 'Færdig';

  @override
  String get onboarding1Title => 'Velkommen til Allahs vej';

  @override
  String get onboarding1Desc =>
      'Din komplette islamiske ledsager-app til bedetider, Koranen og mere';

  @override
  String get onboarding2Title => 'Bedetider';

  @override
  String get onboarding2Desc => 'Nøjagtige bøntider baseret på din placering';

  @override
  String get onboarding3Title => 'Koranen og mere';

  @override
  String get onboarding3Desc =>
      'Læs Koranen, spor din læsning og udforsk islamisk indhold';

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
  String get zikrCompletedMashAllah => 'Fuldført! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah er langt over enhver ufuldkommenhed.';

  @override
  String get zikrMeaningAlhamdulillah => 'Al lovprisning tilhører Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah er den Største.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Der er ingen anden gud end Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Jeg søger Allahs tilgivelse.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Der er ingen magt og ingen styrke undtagen gennem Allah.';

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
  String get offlineDownloadManager => 'Offline-downloadadministrator';

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
  String get audioVoice => 'Lydstemme';

  @override
  String get audioVoiceMisharyAlafasy => 'Mand (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Mand (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Mand (sudais)';

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
  String get diagnosticsNotSet => 'Ikke indstillet';

  @override
  String get diagnosticsPrayerProfile => 'Bønneprofil';

  @override
  String get diagnosticsPrayerSource => 'Bønnemyndighed';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Tilpasset/$madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manuelle tilpassede vinkler (ingen institutionel kilde)';

  @override
  String get diagnosticsCloudDriven => 'Cloud drevet';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan-lydfiler';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Koranens lydaktiver';

  @override
  String get diagnosticsAudioAssets => 'Lydaktiver';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count filer';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifestlæsning mislykkedes: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Lokaliseringslokaliteter';

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
      'Cloud-tabeller mangler i Supabase; bundtet fallback aktiv';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz metadata mangler; bundtet strukturel fallback aktiv';

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
  String get quickAccess => 'Hurtig adgang';

  @override
  String get assistant => 'Assistent';

  @override
  String get places => 'Steder';

  @override
  String get library => 'Bibliotek';

  @override
  String get analytics => 'Analytics';

  @override
  String get dailyDuas => 'Daglige Duas';

  @override
  String essentialDuas(String count) {
    return '$count væsentlige duas';
  }

  @override
  String get duaUnavailableTitle =>
      'Verificerede duas er ikke tilgængelige endnu';

  @override
  String get duaUnavailableBody =>
      'Bekræftede daglige duas er ikke blevet synkroniseret til denne enhed endnu. Opret forbindelse til cloud-kilden for at indlæse duas fra kilder i stedet for en ubekræftet fallback.';

  @override
  String get duaCategoryQuranic => 'Koranens dua';

  @override
  String get duaCategoryMorningEvening => 'Morgen & aften';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Beskyttelse';

  @override
  String get duaCategoryBeginning => 'Begyndelser';

  @override
  String get duaCategorySleep => 'Sove';

  @override
  String get duaCategoryFoodDrink => 'Mad & drikke';

  @override
  String get duaCategoryForgiveness => 'Tilgivelse';

  @override
  String get duaCategoryHome => 'Hjem';

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
  String get islamicEducation => 'Islamisk uddannelse';

  @override
  String get sukunAudioTitle => 'Sukun-lydlandskaber';

  @override
  String get hadithCollections => 'Hadith samlinger';

  @override
  String get hadithSourcePending => 'Bekræftet kilde afventer';

  @override
  String get hadithUnavailableTitle =>
      'Verificerede hadith-samlinger er ikke tilgængelige endnu';

  @override
  String get hadithUnavailableBody =>
      'Denne build afhænger stadig af et ikke-verificeret eksternt hadith-feed. Hadith-browsing forbliver deaktiveret, indtil et kildedatasæt synkroniseres.';

  @override
  String get paywallUnlockAll =>
      'Lås op for alle funktioner til din spirituelle rejse';

  @override
  String get premiumProductUnavailable =>
      'Premium-produkt er ikke tilgængeligt lige nu. Prøv venligst igen senere.';

  @override
  String get premiumPurchaseFailed =>
      'Købet kunne ikke gennemføres. Prøv venligst igen.';

  @override
  String get paywallFeature1Title => 'Neural assistent plus';

  @override
  String get paywallFeature1Desc => 'Ubegrænset AI-drevet Q&A';

  @override
  String get paywallFeature2Title => 'Ubegrænset offline';

  @override
  String get paywallFeature2Desc => 'Download alle recitationer';

  @override
  String get paywallFeature3Title => 'Eksklusive designs';

  @override
  String get paywallFeature3Desc => 'Premium temaer og skrifttyper';

  @override
  String get paywallFeature4Title => 'Annoncefri';

  @override
  String get paywallFeature4Desc => 'Nul reklamer';

  @override
  String get paywallGetAccess => 'Få livstidsadgang - \$1,00';

  @override
  String get restorePurchases => 'Gendan køb';

  @override
  String get zakatCalculator => 'Zakat lommeregner';

  @override
  String get zakatGold => 'Guld (Altın)';

  @override
  String get zakatSilver => 'Sølv (Gümüş)';

  @override
  String get zakatCashBank => 'Kontanter/bank';

  @override
  String get zakatBusiness => 'Forretning';

  @override
  String get zakatInvestments => 'Investeringer';

  @override
  String get zakatWeightGrams => 'Vægt (g)';

  @override
  String get zakatPricePerGram => 'Pris/g';

  @override
  String get zakatTotalAmount => 'Samlet beløb';

  @override
  String get zakatInventoryValue => 'Lagerværdi';

  @override
  String get zakatDebts => 'Gæld';

  @override
  String get zakatTotal => 'Samlet';

  @override
  String get calculateZakat => 'Beregn Zakat';

  @override
  String get nisabNotReached => 'Nisab ikke nået. Zakat er ikke obligatorisk.';

  @override
  String get totalZakat => 'Samlet zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Aktiver: $assets';
  }

  @override
  String get zakatGoldZakat => 'Guld Zakat';

  @override
  String get zakatSilverZakat => 'Sølv Zakat';

  @override
  String get zakatCashZakat => 'Kontant-zakat';

  @override
  String get zakatBusinessZakat => 'Forretningszakat';

  @override
  String get zakatInvestmentZakat => 'Investering Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Daglig forespørgselsgrænse nået. Opgrader til Premium for ubegrænset.';

  @override
  String get chatbotErrorMsg =>
      'Jeg kunne ikke generere et svar. Prøv venligst igen.';

  @override
  String get chatbotOfflinePrompt =>
      'Den verificerede offline islamiske videnbase bliver stadig kureret. Du kan aktivere offline fallback nu, men det vil kun vise begrænsede sikre meddelelser, indtil det kildedatasæt er klar.\n\nVil du aktivere offline fallback?';

  @override
  String get chatbotOfflineSwitched =>
      'Offline fallback aktiveret. Verificerede lokale islamiske svar er ikke klar endnu.';

  @override
  String get chatbotOfflineDownloadLabel => 'Aktiver Offline Fallback';

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
  String get downloadAction => 'Hent';

  @override
  String get resumeDownload => 'Genoptag download';

  @override
  String get deleteDownloadedFiles => 'Slet downloadede filer';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Download annulleret for $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Download fuldført for $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Download afsluttet for $reciter med $failed mislykkede suraer ($downloaded/$total downloadet).';
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
  String get sukunMixerSubtitle => 'Natur & Qur\'an Mixer';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (natur)';

  @override
  String get sukunRainOfMercy => 'Barmhjertighedens regn';

  @override
  String get sukunGardenOfPeace => 'Fredens Have';

  @override
  String get sukunMidnightCalm => 'Midnatstille';

  @override
  String get sukunOceanTawheed => 'Havets tawhid';

  @override
  String get sukunUnavailableTitle => 'Lydbilleder er ikke tilgængelige';

  @override
  String get sukunUnavailableBody =>
      'Denne build inkluderer endnu ikke de nødvendige Sukun soundscape-aktiver.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Dagsrække';

  @override
  String get bestStreak => 'Bedste streak';

  @override
  String get chatbotCloudAiLabel => 'Skybaseret AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'Brug Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Aktiver Offline Fallback';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count tilbage';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API ikke konfigureret. Skift venligst til lokal AI.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Verificeret lokal islamisk vejledning er ikke tilgængelig endnu. Skift til Cloud AI for at få svar.';

  @override
  String get mosques => 'Moskeer';

  @override
  String get halalFood => 'Halal mad';

  @override
  String get placesSearchArea => 'Søg i dette område';

  @override
  String get nearbyMosques => 'Nærliggende moskeer';

  @override
  String get islamicSchools => 'islamiske skoler';

  @override
  String placesFoundCount(String count) {
    return '$count fundet';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km væk';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API-fejl: $statusCode';
  }

  @override
  String get placesNetworkError => 'Netværksfejl. Prøv venligst igen.';

  @override
  String get placesLocationRequiredTitle => 'Placering påkrævet';

  @override
  String get placesLocationRequiredBody =>
      'Angiv først en placering, så nærliggende moskeer, halal-mad og islamiske skoler kan søges nøjagtigt.';

  @override
  String get placesMapTilesUnavailableTitle =>
      'Kortfelter er ikke tilgængelige';

  @override
  String get placesMapTilesUnavailableBody =>
      'En bekræftet kortfeltkilde er ikke konfigureret til denne build endnu. Steder i nærheden kan stadig indlæses fra din gemte placering.';

  @override
  String get unknownPlaceName => 'Ukendt navn';

  @override
  String get islamicPlaceFallback => 'Islamisk sted';

  @override
  String get asmaMeaning1 => 'Den Beneficent';

  @override
  String get asmaMeaning2 => 'Den barmhjertige';

  @override
  String get asmaMeaning3 => 'Kongen / den evige Herre';

  @override
  String get asmaMeaning4 => 'Det allerhelligste';

  @override
  String get asmaMeaning5 => 'Kilden til fred';

  @override
  String get asmaMeaning6 => 'Sikkerhedsgiveren';

  @override
  String get asmaMeaning7 => 'Vægten';

  @override
  String get asmaMeaning8 => 'Den dyrebare / den mest mægtige';

  @override
  String get asmaMeaning9 => 'Tvingeren';

  @override
  String get asmaMeaning10 => 'Den Største';

  @override
  String get asmaMeaning11 => 'Skaberen';

  @override
  String get asmaMeaning12 => 'Ordenskaberen';

  @override
  String get asmaMeaning13 =>
      'Hvad der giver form til væsener og gør dem forskellige fra hinanden.';

  @override
  String get asmaMeaning14 => 'Den tilgivende';

  @override
  String get asmaMeaning15 =>
      'Den, der dominerer alt og vinder, den ubesejrede absolutte sejrherre.';

  @override
  String get asmaMeaning16 => 'Alles giver';

  @override
  String get asmaMeaning17 =>
      'Den, der skaber og giver mad til kroppe og sjæle.';

  @override
  String get asmaMeaning18 => 'Åbneren';

  @override
  String get asmaMeaning19 => 'Alles kender';

  @override
  String get asmaMeaning20 => 'Konstriktoren';

  @override
  String get asmaMeaning21 => 'Relieveren';

  @override
  String get asmaMeaning22 => 'Abaseren';

  @override
  String get asmaMeaning23 => 'Den, der ærer og ophøjer, ophøjer hvem han vil.';

  @override
  String get asmaMeaning24 => 'Æresoverdrageren';

  @override
  String get asmaMeaning25 => 'Ydmygeren';

  @override
  String get asmaMeaning26 => 'Alles Hører';

  @override
  String get asmaMeaning27 => 'Alles seer';

  @override
  String get asmaMeaning28 => 'Dommeren';

  @override
  String get asmaMeaning29 => 'Den retfærdige';

  @override
  String get asmaMeaning30 => 'Den subtile';

  @override
  String get asmaMeaning31 =>
      'Den, der er bevidst om indersiden af ​​alt, hvad der vil ske.';

  @override
  String get asmaMeaning32 => 'Forekomsten';

  @override
  String get asmaMeaning33 => 'Den storslåede';

  @override
  String get asmaMeaning34 => 'Den store tilgiver';

  @override
  String get asmaMeaning35 => 'Taknemlighedens belønner';

  @override
  String get asmaMeaning36 => 'Den højeste';

  @override
  String get asmaMeaning37 => 'Den Største';

  @override
  String get asmaMeaning38 => 'Bevareren';

  @override
  String get asmaMeaning39 =>
      'Den, der giver og bestemmer næring og næring for enhver skabning.';

  @override
  String get asmaMeaning40 => 'Regneren';

  @override
  String get asmaMeaning41 => 'Den majestætiske';

  @override
  String get asmaMeaning42 => 'De generøse';

  @override
  String get asmaMeaning43 => 'Den vågne';

  @override
  String get asmaMeaning44 => 'Bønnesvareren';

  @override
  String get asmaMeaning45 => 'Hans viden og barmhjertighed omfatter alt.';

  @override
  String get asmaMeaning46 => 'De fuldkommen kloge';

  @override
  String get asmaMeaning47 => 'Den kærlige';

  @override
  String get asmaMeaning48 => 'Den mest herlige';

  @override
  String get asmaMeaning49 => 'Opstanderen';

  @override
  String get asmaMeaning50 => 'Vidnet';

  @override
  String get asmaMeaning51 => 'Sandheden';

  @override
  String get asmaMeaning52 => 'Den All-Sufficient Trustee';

  @override
  String get asmaMeaning53 => 'Besidderen af al styrke';

  @override
  String get asmaMeaning54 => 'Kilden til styrke og kraft, meget kraftfuld.';

  @override
  String get asmaMeaning55 => 'Beskytteren';

  @override
  String get asmaMeaning56 => 'De priste';

  @override
  String get asmaMeaning57 => 'Taxatoren';

  @override
  String get asmaMeaning58 => 'Ophavsmanden';

  @override
  String get asmaMeaning59 => 'Genopretteren';

  @override
  String get asmaMeaning60 => 'Livets giver';

  @override
  String get asmaMeaning61 => 'Livstageren';

  @override
  String get asmaMeaning62 =>
      'Ejeren af ​​det evige liv, den der altid er i live.';

  @override
  String get asmaMeaning63 => 'Den selvforsørgende opretholder';

  @override
  String get asmaMeaning64 => 'Finderen';

  @override
  String get asmaMeaning65 =>
      'Den, der har stor magt og ære, og som har masser af generøsitet og velvilje.';

  @override
  String get asmaMeaning66 => 'Den eneste ene';

  @override
  String get asmaMeaning67 => 'Den ene';

  @override
  String get asmaMeaning68 => 'Den, der søges af alle';

  @override
  String get asmaMeaning69 => 'Den magtfulde';

  @override
  String get asmaMeaning70 => 'Skaberen af al magt';

  @override
  String get asmaMeaning71 => 'Expeditøren';

  @override
  String get asmaMeaning72 => 'Forsinkelsen';

  @override
  String get asmaMeaning73 => 'Den første';

  @override
  String get asmaMeaning74 => 'Den sidste';

  @override
  String get asmaMeaning75 => 'Manifestet';

  @override
  String get asmaMeaning76 => 'Det skjulte';

  @override
  String get asmaMeaning77 => 'Guvernøren';

  @override
  String get asmaMeaning78 => 'Den Højeste';

  @override
  String get asmaMeaning79 => 'Den Gods Gør';

  @override
  String get asmaMeaning80 => 'Vejledningen til omvendelse';

  @override
  String get asmaMeaning81 => 'Hævneren';

  @override
  String get asmaMeaning82 => 'Tilgiveren';

  @override
  String get asmaMeaning83 => 'Klementen';

  @override
  String get asmaMeaning84 => 'Ejeren/Alles suveræne';

  @override
  String get asmaMeaning85 => 'Besidderen af majestæt og gavmildhed';

  @override
  String get asmaMeaning86 => 'Den retfærdige';

  @override
  String get asmaMeaning87 => 'Samleren';

  @override
  String get asmaMeaning88 => 'Den rige';

  @override
  String get asmaMeaning89 => 'Berigeren';

  @override
  String get asmaMeaning90 => 'Forhindren af skade';

  @override
  String get asmaMeaning91 => 'Bringeren af skade';

  @override
  String get asmaMeaning92 => 'Fordeleren af fordele';

  @override
  String get asmaMeaning93 => 'Lyset';

  @override
  String get asmaMeaning94 => 'Vejlederen';

  @override
  String get asmaMeaning95 => 'Ophavsmanden';

  @override
  String get asmaMeaning96 => 'Den evige';

  @override
  String get asmaMeaning97 => 'Arveren';

  @override
  String get asmaMeaning98 => 'Den mest retskafne guide';

  @override
  String get asmaMeaning99 =>
      'Den, der ikke skynder sig at straffe og er tålmodig.';
}
