// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian (`no`).
class AppLocalizationsNo extends AppLocalizations {
  AppLocalizationsNo([String locale = 'no']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Islamsk lysvei';

  @override
  String get home => 'Home';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Dhikr';

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
  String get sunrise => 'Soloppgang';

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
    return 'Tid for $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Det er på tide å be $prayerName.';
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
  String get systemDefault => 'Systemstandard';

  @override
  String get currentLocation => 'Current Location (GPS)';

  @override
  String get locationServiceDisabled => 'Plasseringstjenesten er deaktivert.';

  @override
  String get locationPermissionDenied => 'Plasseringstillatelse nektet.';

  @override
  String get locationDetectionFailed =>
      'Kunne ikke finne posisjonen din. Velg en by manuelt eller prøv på nytt.';

  @override
  String citiesCount(String count) {
    return '$count byer';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'Ingen resultater funnet';

  @override
  String get loading => 'Laster inn...';

  @override
  String get error => 'Feil';

  @override
  String get appErrorOccurred => 'Det oppsto en feil';

  @override
  String get appUnknownError => 'Ukjent feil';

  @override
  String get quranLoadFailed =>
      'Koraninnhold kunne ikke lastes. Vennligst prøv igjen.';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Oppdater';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Slett';

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
    return 'Vers $ayah';
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
  String get tafsirLoading => 'Laster inn tafsir...';

  @override
  String get tafsirSourceLabel => 'Tafsir kilde';

  @override
  String get tafsirNoSurahFound => 'Ingen tafsir funnet for denne suraen.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Ingen tafsir funnet for ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir kunne ikke lastes.';

  @override
  String get tafsirNoTextForAyah => 'Ingen tafsir-tekst for denne ayahen.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Laster ned tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Laster inn $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir-kilden returnerte en HTTP $statusCode-feil.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Den valgte tafsir-kilden returnerte ingen oppføringer.';

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
      'andre ber: \'Vår Herre, gi oss det gode i denne verden og i det hinsidige, og beskytt oss mot Ildens pine.\'';

  @override
  String get duaMeaning2 =>
      'Gud belaster ikke noen sjel med mer enn den kan tåle: hver og en får det gode den har gjort, og lider av dets onde- \'Herre, ikke ta oss til oppgaven hvis vi glemmer eller gjør feil. Herre, legg ikke byrder på oss slik du har belastet dem før oss. Herre, belastning oss ikke med mer enn vi har styrke til å bære. Tilgi oss, tilgi oss og forbarm deg over oss. Du er vår beskytter, så hjelp oss mot de vantro.\'';

  @override
  String get duaMeaning3 =>
      '\'Vår Herre, la ikke våre hjerter avvike etter at Du har ledet oss. Gi oss din nåde: Du er den som alltid gir.';

  @override
  String get duaMeaning4 =>
      'Herre, gi at jeg og mitt avkom kan fortsette å be. Vår Herre, godta min forespørsel.';

  @override
  String get duaMeaning5 =>
      'og senk din vinge i ydmykhet mot dem i vennlighet og si: \'Herre, forbarm deg over dem, akkurat som de brydde seg om meg da jeg var liten.\'';

  @override
  String get duaMeaning6 =>
      'Opphøyet være Gud, den som virkelig har kontroll. [Profet], ikke skynd deg å resitere før åpenbaringen er fullstendig fullstendig, men si: \'Herre, øk meg i kunnskap!\'';

  @override
  String get duaMeaning7 =>
      'Si [profet], \'Herre, tilgi og ha barmhjertighet: Du er den mest barmhjertige av alle.\'';

  @override
  String get duaMeaning8 =>
      'de som ber: \'Vår Herre, gi oss glede i våre ektefeller og avkom. Gjør oss til gode eksempler for de som er klar over deg.';

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
  String get hadithBooks => 'Hadith-bøker';

  @override
  String get searchHadith => 'Søk etter Hadith';

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
  String get openInYoutube => 'Åpne i YouTube';

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
    return '${hours}t ${minutes}m';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '$minutes min';
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
  String get islamicNewYear => 'Islamsk nyttår';

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
    return 'Kompassfeil: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Kompasssensor er utilgjengelig på denne enheten.';

  @override
  String get qiblaLocationRequiredTitle => 'Plassering kreves for Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Still inn din faktiske posisjon før du bruker Qibla-kompasset slik at retningen kan beregnes nøyaktig.';

  @override
  String get adhanNotificationChannelName => 'Adhan-varsler';

  @override
  String get adhanNotificationChannelDescription =>
      'Bønnetidsvarsler med adhan-lyd.';

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
  String get theme => 'Tema';

  @override
  String get lightMode => 'Lysmodus';

  @override
  String get darkMode => 'Mørk modus';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'About';

  @override
  String get version => 'Versjon';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get termsOfService => 'Terms of Service';

  @override
  String get contactUs => 'Contact Us';

  @override
  String get rateApp => 'Vurder appen';

  @override
  String get shareApp => 'Del appen';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Sjekk ut $appName: Den ultimate islamske livsstilsappen! $url';
  }

  @override
  String get downloadManager => 'Nedlastingsbehandler';

  @override
  String get downloads => 'Nedlastinger';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Nedlasting fullført';

  @override
  String get downloadFailed => 'Nedlasting mislyktes';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'Ingen Internett-tilkobling';

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
  String get tapToCount => 'Trykk for å telle';

  @override
  String get zikrCompletedMashAllah => 'Fullført! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah er langt over enhver ufullkommenhet.';

  @override
  String get zikrMeaningAlhamdulillah => 'All ros tilhører Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah er den største.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Det er ingen gud utenom Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Jeg søker Allahs tilgivelse.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Det er ingen kraft og ingen styrke uten gjennom Allah.';

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
  String get offlineDownloadManager => 'Frakoblet nedlastingsbehandling';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Frigjør intern enhetslagring.';

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
  String get audioVoice => 'Lydstemme';

  @override
  String get audioVoiceMisharyAlafasy => 'Mann (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Mann (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Mann (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Qibla-kalibrering';

  @override
  String get compassSmoothing => 'Kompassutjevning';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Kalibreringsforskyvning';

  @override
  String currentOffset(Object offset) {
    return 'Nåværende: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Juster hvis kompasset ditt trenger en manuell korreksjon. Positive verdier roterer med klokken.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Diagnostikk';

  @override
  String get diagnosticsNotSet => 'Ikke satt';

  @override
  String get diagnosticsPrayerProfile => 'Bønneprofil';

  @override
  String get diagnosticsPrayerSource => 'Bønnemyndighet';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Egendefinert / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manuelle tilpassede vinkler (ingen institusjonell kilde)';

  @override
  String get diagnosticsCloudDriven => 'Skydrevet';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan-lydfiler';

  @override
  String get diagnosticsUiAudioAssets => 'Lydressurser for brukergrensesnitt';

  @override
  String get diagnosticsQuranAudioAssets => 'Koranens lydressurser';

  @override
  String get diagnosticsAudioAssets => 'Lydressurser';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count filer';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifestlesing mislyktes: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Lokaliseringssteder';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count støttes';
  }

  @override
  String get diagnosticsQuranDataset => 'Koranens datasett';

  @override
  String get diagnosticsQuranSurahs => 'Koranens suraher';

  @override
  String get diagnosticsQuranAyahs => 'Koranvers';

  @override
  String get diagnosticsQuranJuzMetadata => 'Juz-metadata for Koranen';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Skytabeller mangler i Supabase; buntet reserve aktiv';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Skysjekk mislyktes: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz metadata mangler; buntet strukturell fallback aktiv';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Skystrukturell sjekk mislyktes: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Kalibrering kreves. Roter enheten i figur 8.';

  @override
  String get dailyVerse => 'Daglig vers';

  @override
  String get todaysIbadah => 'Dagens Ibadah';

  @override
  String get quickAccess => 'Rask tilgang';

  @override
  String get assistant => 'Assistent';

  @override
  String get places => 'Steder';

  @override
  String get library => 'Bibliotek';

  @override
  String get analytics => 'Analytics';

  @override
  String get dailyDuas => 'Daglig Duas';

  @override
  String essentialDuas(String count) {
    return '$count viktige duas';
  }

  @override
  String get duaUnavailableTitle =>
      'Verifiserte duas er ikke tilgjengelig ennå';

  @override
  String get duaUnavailableBody =>
      'Verifiserte daglige duas er ikke synkronisert til denne enheten ennå. Koble til skykilden for å laste inn hentede duas i stedet for en ubekreftet reserve.';

  @override
  String get duaCategoryQuranic => 'Koranisk dua';

  @override
  String get duaCategoryMorningEvening => 'Morgen og kveld';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Beskyttelse';

  @override
  String get duaCategoryBeginning => 'Begynnelser';

  @override
  String get duaCategorySleep => 'Sove';

  @override
  String get duaCategoryFoodDrink => 'Mat og drikke';

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
  String get islamicEducation => 'Islamsk utdanning';

  @override
  String get sukunAudioTitle => 'Sukun lydlandskap';

  @override
  String get hadithCollections => 'Hadith-samlinger';

  @override
  String get hadithSourcePending => 'Verifisert kilde venter';

  @override
  String get hadithUnavailableTitle =>
      'Verifiserte hadith-samlinger er ikke tilgjengelige ennå';

  @override
  String get hadithUnavailableBody =>
      'Denne konstruksjonen avhenger fortsatt av en ubekreftet ekstern hadith-feed. Hadith-surfing forblir deaktivert til et hentet datasett synkroniseres.';

  @override
  String get paywallUnlockAll =>
      'Lås opp alle funksjoner for din åndelige reise';

  @override
  String get premiumProductUnavailable =>
      'Premium-produktet er ikke tilgjengelig akkurat nå. Prøv igjen senere.';

  @override
  String get premiumPurchaseFailed =>
      'Kjøpet kunne ikke fullføres. Vennligst prøv igjen.';

  @override
  String get paywallFeature1Title => 'Nevral assistent pluss';

  @override
  String get paywallFeature1Desc => 'Ubegrenset AI-drevet spørsmål og svar';

  @override
  String get paywallFeature2Title => 'Ubegrenset frakoblet';

  @override
  String get paywallFeature2Desc => 'Last ned alle resitasjoner';

  @override
  String get paywallFeature3Title => 'Eksklusive design';

  @override
  String get paywallFeature3Desc => 'Premium-temaer og fonter';

  @override
  String get paywallFeature4Title => 'Annonsefri';

  @override
  String get paywallFeature4Desc => 'Null reklame';

  @override
  String get paywallGetAccess => 'Få livstidstilgang – \$1,00';

  @override
  String get restorePurchases => 'Gjenopprett kjøp';

  @override
  String get zakatCalculator => 'Zakat-kalkulator';

  @override
  String get zakatGold => 'Gull (Altın)';

  @override
  String get zakatSilver => 'Sølv (Gümüş)';

  @override
  String get zakatCashBank => 'Kontanter / Bank';

  @override
  String get zakatBusiness => 'Bedrift';

  @override
  String get zakatInvestments => 'Investeringer';

  @override
  String get zakatWeightGrams => 'Vekt (g)';

  @override
  String get zakatPricePerGram => 'Pris/g';

  @override
  String get zakatTotalAmount => 'Totalt beløp';

  @override
  String get zakatInventoryValue => 'Lagerverdi';

  @override
  String get zakatDebts => 'Gjeld';

  @override
  String get zakatTotal => 'Totalt';

  @override
  String get calculateZakat => 'Regn ut Zakat';

  @override
  String get nisabNotReached => 'Nisab ikke nådd. Zakat er ikke obligatorisk.';

  @override
  String get totalZakat => 'Totalt Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Eiendeler: $assets';
  }

  @override
  String get zakatGoldZakat => 'Gull Zakat';

  @override
  String get zakatSilverZakat => 'Sølv Zakat';

  @override
  String get zakatCashZakat => 'Kontant-zakat';

  @override
  String get zakatBusinessZakat => 'Bedrifts-zakat';

  @override
  String get zakatInvestmentZakat => 'Investering Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! Jeg er din islamske assistent. Spør meg om bønn, faste, zakat eller et hvilket som helst islamsk tema.';

  @override
  String get chatbotLimitReached =>
      'Daglig søkegrense nådd. Oppgrader til Premium for ubegrenset.';

  @override
  String get chatbotErrorMsg =>
      'Jeg kunne ikke generere et svar. Vennligst prøv igjen.';

  @override
  String get chatbotOfflinePrompt =>
      'Den bekreftede frakoblede islamske kunnskapsbasen blir fortsatt kurert. Du kan aktivere offline fallback nå, men det vil bare vise begrensede sikre meldinger inntil det hentede datasettet er klart.\n\nVil du aktivere frakoblet fallback?';

  @override
  String get chatbotOfflineSwitched =>
      'Offline reserveback aktivert. Verifiserte lokale islamske svar er ikke klare ennå.';

  @override
  String get chatbotOfflineDownloadLabel => 'Aktiver Offline Fallback';

  @override
  String get downloadPreparing => 'Forbereder nedlasting...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Laster ned surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Alle surahene er allerede lastet ned for denne resiteren.';

  @override
  String get offlineQuranAudioPacks => 'Frakoblet Koran-lydpakker';

  @override
  String storedOnDeviceMb(String size) {
    return 'Lagret på enheten: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total suraher lastet ned';
  }

  @override
  String get redownloadMissingRepair => 'Reparasjon / nedlasting mangler';

  @override
  String get downloadAction => 'Last ned';

  @override
  String get resumeDownload => 'Fortsett nedlasting';

  @override
  String get deleteDownloadedFiles => 'Slett nedlastede filer';

  @override
  String get downloadCancelling => 'Avbryter …';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Nedlastingen avbrutt for $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Nedlasting fullført for $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Nedlastingen fullført for $reciter med $failed mislykkede suraher ($downloaded/$total lastet ned).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Slettede frakoblede filer for $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Verifiserte Koran-lydkilder er utilgjengelige akkurat nå.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Verifisert Koran-lydpakke er ufullstendig ($available/$total). Oppdater skyfrø og prøv igjen.';
  }

  @override
  String get chatbotHint => 'Still et spørsmål...';

  @override
  String get chatbotThinking => 'Tenker...';

  @override
  String get sukunMixerSubtitle => 'Natur & Qur\'an Mixer';

  @override
  String get audioPlayFailed => 'Lydavspilling mislyktes';

  @override
  String get sukunNatureLabel => 'Sukun (natur)';

  @override
  String get sukunRainOfMercy => 'Regn av nåde';

  @override
  String get sukunGardenOfPeace => 'Fredens hage';

  @override
  String get sukunMidnightCalm => 'Midnattsro';

  @override
  String get sukunOceanTawheed => 'Havets tawhid';

  @override
  String get sukunUnavailableTitle => 'Lydlandskap er utilgjengelig';

  @override
  String get sukunUnavailableBody =>
      'Denne konstruksjonen inkluderer ikke de nødvendige Sukun-lydbildemidlene ennå.';

  @override
  String get prayerCompletion => 'Fullførte bønner';

  @override
  String get streaks => 'Streker';

  @override
  String get dayStreak => 'Dagsrekke';

  @override
  String get bestStreak => 'Beste rekke';

  @override
  String get chatbotCloudAiLabel => 'Skybasert KI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'Bruk Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Aktiver Offline Fallback';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count igjen';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API er ikke konfigurert. Verifisert offline islamsk veiledning er ikke tilgjengelig ennå.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Verifisert lokal islamsk veiledning er ikke tilgjengelig ennå. Bytt til Cloud AI for hentede svar.';

  @override
  String get mosques => 'Moskeer';

  @override
  String get halalFood => 'Halal mat';

  @override
  String get placesSearchArea => 'Søk i dette området';

  @override
  String get nearbyMosques => 'Moskeer i nærheten';

  @override
  String get islamicSchools => 'Islamske skoler';

  @override
  String placesFoundCount(String count) {
    return '$count funnet';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km unna';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API-feil: $statusCode';
  }

  @override
  String get placesNetworkError => 'Nettverksfeil. Vennligst prøv igjen.';

  @override
  String get placesLocationRequiredTitle => 'Plassering kreves';

  @override
  String get placesLocationRequiredBody =>
      'Angi et sted først, slik at nærliggende moskeer, halalmat og islamske skoler kan søkes nøyaktig.';

  @override
  String get placesMapTilesUnavailableTitle =>
      'Kartfliser er ikke tilgjengelige';

  @override
  String get placesMapTilesUnavailableBody =>
      'En bekreftet kartbrikkekilde er ikke konfigurert for denne versjonen ennå. Steder i nærheten kan fortsatt lastes inn fra det lagrede stedet.';

  @override
  String get placesDataSourceUnavailableTitle => 'Stedsdata er utilgjengelige';

  @override
  String get placesDataSourceUnavailableBody =>
      'Et verifisert stedsdataendepunkt er ikke konfigurert for denne versjonen ennå. Sett PLACES_OVERPASS_API_URL til en godkjent proxy eller leverandør før du aktiverer søk i nærheten.';

  @override
  String get unknownPlaceName => 'Ukjent navn';

  @override
  String get islamicPlaceFallback => 'Islamsk sted';

  @override
  String get asmaMeaning1 =>
      'Den som har barmhjertighet, medlidenhet og barmhjertighet med alle skapninger i verden.';

  @override
  String get asmaMeaning2 => 'Den barmhjertige';

  @override
  String get asmaMeaning3 => 'Kongen / Evig Herre';

  @override
  String get asmaMeaning4 => 'Det aller helligste';

  @override
  String get asmaMeaning5 => 'Kilden til fred';

  @override
  String get asmaMeaning6 => 'Sikkerhetsgiveren';

  @override
  String get asmaMeaning7 =>
      'Dommeren og herskeren over universet som ser og våker over alt.';

  @override
  String get asmaMeaning8 => 'Den dyrebare / den mektigste';

  @override
  String get asmaMeaning9 => 'Tvingeren';

  @override
  String get asmaMeaning10 => 'Den største';

  @override
  String get asmaMeaning11 => 'Skaperen';

  @override
  String get asmaMeaning12 => 'Den som skaper alt perfekt og harmonisk.';

  @override
  String get asmaMeaning13 =>
      'Som gir form til vesener og gjør dem forskjellige fra hverandre.';

  @override
  String get asmaMeaning14 => 'De tilgivende';

  @override
  String get asmaMeaning15 =>
      'Den som dominerer alt og vinner, den ubeseirede absolutte seierherren.';

  @override
  String get asmaMeaning16 => 'Alles giver';

  @override
  String get asmaMeaning17 =>
      'Den som skaper og gir mat til kropper og sjeler.';

  @override
  String get asmaMeaning18 => 'Åpneren';

  @override
  String get asmaMeaning19 => 'Den som kjenner alle';

  @override
  String get asmaMeaning20 =>
      'Den som begrenser, klemmer, begrenser hvem han vil.';

  @override
  String get asmaMeaning21 => 'Relieveren';

  @override
  String get asmaMeaning22 => 'Abaseren';

  @override
  String get asmaMeaning23 =>
      'Den som ærer og opphøyer, opphøyer hvem Han vil.';

  @override
  String get asmaMeaning24 => 'Æresoverdeleren';

  @override
  String get asmaMeaning25 => 'Ydmykeren';

  @override
  String get asmaMeaning26 => 'Hører av alle';

  @override
  String get asmaMeaning27 => 'Alles seer';

  @override
  String get asmaMeaning28 => 'Dommeren';

  @override
  String get asmaMeaning29 => 'Den rettferdige';

  @override
  String get asmaMeaning30 => 'Den subtile';

  @override
  String get asmaMeaning31 =>
      'Den som er klar over innsiden av alt som vil skje.';

  @override
  String get asmaMeaning32 => 'Forutsetningen';

  @override
  String get asmaMeaning33 =>
      'Han er så sublim, så opphøyd at naturen til hans person og egenskaper ikke kan forstås.';

  @override
  String get asmaMeaning34 => 'Den store tilgiveren';

  @override
  String get asmaMeaning35 => 'Takknemlighetens belønner';

  @override
  String get asmaMeaning36 => 'Den høyeste';

  @override
  String get asmaMeaning37 => 'Den største';

  @override
  String get asmaMeaning38 => 'Bevareren';

  @override
  String get asmaMeaning39 => 'Næringen';

  @override
  String get asmaMeaning40 => 'Regneren';

  @override
  String get asmaMeaning41 => 'Den majestetiske';

  @override
  String get asmaMeaning42 => 'De sjenerøse';

  @override
  String get asmaMeaning43 => 'Den årvåkne';

  @override
  String get asmaMeaning44 => 'Reageren på bønn';

  @override
  String get asmaMeaning45 => 'Hans kunnskap og barmhjertighet omfatter alt.';

  @override
  String get asmaMeaning46 => 'De perfekt kloke';

  @override
  String get asmaMeaning47 => 'Den kjære';

  @override
  String get asmaMeaning48 => 'Den mest strålende';

  @override
  String get asmaMeaning49 => 'Oppstanderen';

  @override
  String get asmaMeaning50 => 'Vitnet';

  @override
  String get asmaMeaning51 => 'Sannheten';

  @override
  String get asmaMeaning52 =>
      'Den som bringer arbeidet til de som stoler på ham til utførelse.';

  @override
  String get asmaMeaning53 => 'Besitteren av all styrke';

  @override
  String get asmaMeaning54 => 'Kilde til styrke og kraft, veldig kraftig.';

  @override
  String get asmaMeaning55 => 'Beskytteren';

  @override
  String get asmaMeaning56 => 'Den som er verdig all ros, ros og ros.';

  @override
  String get asmaMeaning57 => 'Takstmannen';

  @override
  String get asmaMeaning58 => 'Opphavsmannen';

  @override
  String get asmaMeaning59 => 'Restoreren';

  @override
  String get asmaMeaning60 => 'Livets giver';

  @override
  String get asmaMeaning61 => 'Takeren av livet';

  @override
  String get asmaMeaning62 => 'Den som har evig liv og alltid er i live.';

  @override
  String get asmaMeaning63 => 'Den selvbærende opprettholderen';

  @override
  String get asmaMeaning64 => 'Finderen';

  @override
  String get asmaMeaning65 =>
      'Den med stor verdighet og ære, rikelig raushet og velvilje.';

  @override
  String get asmaMeaning66 => 'Den eneste ene';

  @override
  String get asmaMeaning67 => 'Den ene';

  @override
  String get asmaMeaning68 => 'Den som alle søkte';

  @override
  String get asmaMeaning69 => 'Den mektige';

  @override
  String get asmaMeaning70 => 'Skaperen av all makt';

  @override
  String get asmaMeaning71 => 'Expeditøren';

  @override
  String get asmaMeaning72 => 'Forsinkelsen';

  @override
  String get asmaMeaning73 => 'Den første';

  @override
  String get asmaMeaning74 => 'Den siste';

  @override
  String get asmaMeaning75 => 'Manifestet';

  @override
  String get asmaMeaning76 => 'Det skjulte';

  @override
  String get asmaMeaning77 => 'Guvernøren';

  @override
  String get asmaMeaning78 => 'Den øverste';

  @override
  String get asmaMeaning79 => 'Den som gjør det gode';

  @override
  String get asmaMeaning80 => 'Veiledningen til omvendelse';

  @override
  String get asmaMeaning81 => 'Hevneren';

  @override
  String get asmaMeaning82 => 'Tilgiveren';

  @override
  String get asmaMeaning83 => 'Klementen';

  @override
  String get asmaMeaning84 => 'Eieren / suverenen over alle';

  @override
  String get asmaMeaning85 => 'Besitteren av majestet og dusør';

  @override
  String get asmaMeaning86 => 'Den rettferdige';

  @override
  String get asmaMeaning87 => 'Den som samler skapningene på dommedagen.';

  @override
  String get asmaMeaning88 => 'Den rike';

  @override
  String get asmaMeaning89 => 'Den som tilfredsstiller behov og gjør en rik.';

  @override
  String get asmaMeaning90 => 'Forhindren av skade';

  @override
  String get asmaMeaning91 =>
      'Den som skaper smerte og skade og skader hvem han måtte ønske.';

  @override
  String get asmaMeaning92 => 'Fordeleren av fordeler';

  @override
  String get asmaMeaning93 => 'Lyset';

  @override
  String get asmaMeaning94 => 'Veilederen';

  @override
  String get asmaMeaning95 => 'Opphavsmannen';

  @override
  String get asmaMeaning96 => 'Den evige';

  @override
  String get asmaMeaning97 => 'Arvingen';

  @override
  String get asmaMeaning98 => 'Den mest rettferdige guiden';

  @override
  String get asmaMeaning99 => 'Pasienten';
}
