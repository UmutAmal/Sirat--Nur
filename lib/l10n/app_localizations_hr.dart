// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Islamski put svjetla';

  @override
  String get home => 'Dom';

  @override
  String get quran => 'Kuran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Kalendar';

  @override
  String get settings => 'postavke';

  @override
  String get nextPrayer => 'Sljedeća molitva';

  @override
  String get prayerTimes => 'Vrijeme molitve';

  @override
  String get continueReading => 'Nastavite čitati';

  @override
  String get getLifetimePro => 'Nabavite Lifetime Pro';

  @override
  String get unlockTajweed => 'Otključaj Tajweed i napredne značajke';

  @override
  String get prayerCalculation => 'Izračun molitve';

  @override
  String get method => 'Metoda izračuna';

  @override
  String get madhab => 'Pravna metoda Asr';

  @override
  String get surahs => 'Sure';

  @override
  String get ayahs => 'Ajeti';

  @override
  String get fajr => 'sabah';

  @override
  String get sunrise => 'Izlazak sunca';

  @override
  String get dhuhr => 'Zhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Maghrib';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Vrijeme je za $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Vrijeme je za molitvu $prayerName.';
  }

  @override
  String get dataStorage => 'Podaci i pohrana';

  @override
  String get clearCache => 'Očisti predmemoriju';

  @override
  String get cacheClearedSuccess => 'Predmemorija je uspješno izbrisana';

  @override
  String get location => 'Mjesto';

  @override
  String get language => 'Jezik';

  @override
  String get selectLanguage => 'Odaberite jezik';

  @override
  String get searchLanguage => 'Pretraži više od 180 jezika...';

  @override
  String get systemDefault => 'Zadane postavke sustava';

  @override
  String get currentLocation => 'Trenutna lokacija (GPS)';

  @override
  String get locationServiceDisabled => 'Usluga lokacije je onemogućena.';

  @override
  String get locationPermissionDenied => 'Dopuštenje za lokaciju odbijeno.';

  @override
  String get locationDetectionFailed =>
      'Nije moguće otkriti vašu lokaciju. Please choose a city manually or try again.';

  @override
  String citiesCount(String count) {
    return '$count gradova';
  }

  @override
  String get search => 'Pretraživanje';

  @override
  String get searchHint => 'Pretraživanje...';

  @override
  String get noResults => 'No results found';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get appErrorOccurred => 'Došlo je do pogreške';

  @override
  String get appUnknownError => 'Nepoznata greška';

  @override
  String get quranLoadFailed =>
      'Sadržaj Kur\'ana nije se mogao učitati. Molimo pokušajte ponovo.';

  @override
  String get retry => 'Pokušaj ponovo';

  @override
  String get refreshAction => 'Refresh';

  @override
  String get cancel => 'Otkazati';

  @override
  String get save => 'Uštedjeti';

  @override
  String get delete => 'Delete';

  @override
  String get edit => 'Uredi';

  @override
  String get close => 'Zatvoriti';

  @override
  String get ok => 'U REDU';

  @override
  String get yes => 'Da';

  @override
  String get no => 'Ne';

  @override
  String get surah => 'Sura';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'džuz';

  @override
  String get page => 'Stranica';

  @override
  String get reading => 'Čitanje';

  @override
  String get recitation => 'Recitacija';

  @override
  String get translation => 'Prijevod';

  @override
  String get tafsir => 'tefsir';

  @override
  String get tafsirLoading => 'Učitavanje tefsira...';

  @override
  String get tafsirSourceLabel => 'Izvor tefsira';

  @override
  String get tafsirNoSurahFound => 'Nije pronađen tefsir za ovu suru.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Nije pronađen tefsir za ajet $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tefsir nije moguće učitati.';

  @override
  String get tafsirNoTextForAyah => 'Nema tefsirskog teksta za ovaj ajet.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Preuzimanje tefsira $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Učitavanje tefsira $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir izvor vratio je HTTP $statusCode pogrešku.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Odabrani izvor tefsira nije vratio nijedan unos.';

  @override
  String get tafsirCacheUnavailable =>
      'Potvrđeni tefsir još nije dostupan izvan mreže. Prije pregledavanja sinkronizirajte izvorni skup podataka tefsira.';

  @override
  String get bookmarks => 'Knjižne oznake';

  @override
  String get addBookmark => 'Dodaj oznaku';

  @override
  String get removeBookmark => 'Ukloni oznaku';

  @override
  String get lastRead => 'Zadnje čitanje';

  @override
  String get dailyZikr => 'Dnevni zikr';

  @override
  String get duaMeaning1 =>
      'drugi mole: ‘Gospodaru naš, podari nam dobro i na ovom i na onom svijetu i sačuvaj nas patnje u ognju.’';

  @override
  String get duaMeaning2 =>
      'Bog ne opterećuje nijednu dušu s više nego što ona može podnijeti: svaka dobiva dobro što je učinila, a trpi svoje zlo- ‘Gospodine, nemoj nas osuditi ako zaboravimo ili pogriješimo. Gospodaru, nemoj nas tovariti kao što si tovario one prije nas. Gospodine, ne opterećuj nas više nego što imamo snage podnijeti. Pomiluj nas, oprosti nam i smiluj nam se. Ti si naš zaštitnik, pa nas pomozi protiv nevjernika.’';

  @override
  String get duaMeaning3 =>
      '‘Gospodaru naš, ne dopusti srcima našim da skrenu nakon što si nas na pravi put uputio. Udijeli nam Svoju milost: Ti si Onaj koji uvijek daješ.';

  @override
  String get duaMeaning4 =>
      'Gospodine, daj da ja i moje potomstvo nastavimo molitvu. Gospodaru naš, primi moju molbu.';

  @override
  String get duaMeaning5 =>
      'i spusti svoje krilo u poniznosti prema njima u dobroti i reci: ‘Gospodine, smiluj im se, kao što su oni brinuli o meni kad sam bio mali.’';

  @override
  String get duaMeaning6 =>
      'uzvišen neka je Bog, onaj koji uistinu ima kontrolu. [Poslaniče], nemoj žuriti s recitiranjem prije nego što je objava u potpunosti potpuna nego reci: ‘Gospodaru, povećaj mi znanje!’';

  @override
  String get duaMeaning7 =>
      'Reci [Poslanik]: ‘Gospodaru, oprosti i smiluj se: Ti si najmilostiviji od svih.’';

  @override
  String get duaMeaning8 =>
      'oni koji mole: \'Gospodaru naš, podari nam radost u supružnicima i potomcima našim. Učini nas dobrim primjerom onima koji su Te svjesni.';

  @override
  String get morningZikr => 'Jutarnji zikr';

  @override
  String get eveningZikr => 'Večernji zikr';

  @override
  String get tasbih => 'tesbih';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masa\'il';

  @override
  String get hadith => 'Hadis';

  @override
  String get hadithCollection => 'Zbirka hadisa';

  @override
  String get hadithBooks => 'Knjige hadisa';

  @override
  String get searchHadith => 'Traži hadis';

  @override
  String get asmaulHusna => 'Esma-ul-Husna';

  @override
  String get namesOfAllah => 'Allahova imena';

  @override
  String get liveTv => 'TV uživo';

  @override
  String get watchLive => 'Gledajte uživo';

  @override
  String get streamError => 'Pogreška streama';

  @override
  String get reload => 'Ponovno učitaj';

  @override
  String get openInYoutube => 'Otvorite na YouTubeu';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Post';

  @override
  String get quranReading => 'Čitanje Kur\'ana';

  @override
  String get prayers => 'molitve';

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
  String get dhikrCount => 'Brojanje zikra';

  @override
  String get weeklyProgress => 'Tjedni napredak';

  @override
  String get monthlyProgress => 'Mjesečni napredak';

  @override
  String get statistics => 'Statistika';

  @override
  String get hijriCalendar => 'Hidžretski kalendar';

  @override
  String get gregorianCalendar => 'Gregorijanski kalendar';

  @override
  String get today => 'Danas';

  @override
  String get tomorrow => 'Sutra';

  @override
  String get yesterday => 'Jučer';

  @override
  String get specialDays => 'Posebni dani';

  @override
  String get ramadan => 'Ramazan';

  @override
  String get eidAlFitr => 'Ramazanski bajram';

  @override
  String get eidAlAdha => 'Kurban-bajram';

  @override
  String get islamicNewYear => 'Islamska nova godina';

  @override
  String get mawlidAnNabi => 'Mevlid en-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 ramazan';

  @override
  String get specialDayDateLaylatAlQadr => '27 ramazana';

  @override
  String get specialDayDateEidAlFitr => '1 ševval';

  @override
  String get specialDayDateEidAlAdha => '10. zul hidždže';

  @override
  String get specialDayDateIslamicNewYear => '1 muharrem';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabi el-evval';

  @override
  String get laylatAlQadr => 'Lejletu-l-Kadr';

  @override
  String get qiblaDirection => 'Smjer Qibla';

  @override
  String get compass => 'Kompas';

  @override
  String get degrees => 'stupnjeva';

  @override
  String get north => 'Sjeverno';

  @override
  String get qiblaFound => 'Kibla pronađena!';

  @override
  String get turnDevice => 'Okrenite uređaj prema Qibli';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Pogreška kompasa: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Senzor kompasa nije dostupan na ovom uređaju.';

  @override
  String get qiblaLocationRequiredTitle => 'Location required for Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Set your actual location before using the Qibla compass so the direction can be calculated accurately.';

  @override
  String get adhanNotificationChannelName => 'Adhan Notifications';

  @override
  String get adhanNotificationChannelDescription =>
      'Prayer time alerts with adhan sound.';

  @override
  String get notifications => 'Obavijesti';

  @override
  String get prayerNotifications => 'Molitvene obavijesti';

  @override
  String get enableNotifications => 'Omogući obavijesti';

  @override
  String get notificationTime => 'Vrijeme obavijesti';

  @override
  String get beforePrayer => 'minuta prije molitve';

  @override
  String get theme => 'Tema';

  @override
  String get lightMode => 'Način svjetla';

  @override
  String get darkMode => 'Tamni način rada';

  @override
  String get systemTheme => 'Tema sustava';

  @override
  String get about => 'Oko';

  @override
  String get version => 'Verzija';

  @override
  String get privacyPolicy => 'Politika privatnosti';

  @override
  String get termsOfService => 'Uvjeti usluge';

  @override
  String get contactUs => 'Kontaktirajte nas';

  @override
  String get rateApp => 'Ocijenite aplikaciju';

  @override
  String get shareApp => 'Dijeli aplikaciju';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Provjerite $appName: ultimativna aplikacija za islamski stil života! $url';
  }

  @override
  String get downloadManager => 'Upravitelj preuzimanja';

  @override
  String get downloads => 'Preuzimanja';

  @override
  String get downloading => 'Preuzimanje...';

  @override
  String get downloadComplete => 'Preuzimanje dovršeno';

  @override
  String get downloadFailed => 'Preuzimanje nije uspjelo';

  @override
  String get offlineMode => 'Izvanmrežni način rada';

  @override
  String get noInternet => 'No Internet Connection';

  @override
  String get checkConnection => 'Provjerite vezu';

  @override
  String get premium => 'Premija';

  @override
  String get upgradeToPro => 'Nadogradite na Pro';

  @override
  String get proFeatures => 'Pro značajke';

  @override
  String get removeAds => 'Ukloni oglase';

  @override
  String get unlockAll => 'Otključaj sav sadržaj';

  @override
  String get exclusiveContent => 'Ekskluzivni sadržaj';

  @override
  String get welcome => 'Dobrodošli';

  @override
  String get getStarted => 'Započnite';

  @override
  String get skip => 'Preskočiti';

  @override
  String get next => 'Sljedeći';

  @override
  String get done => 'Gotovo';

  @override
  String get onboarding1Title => 'Dobro došli na Allahov put';

  @override
  String get onboarding1Desc =>
      'Vaša potpuna islamska prateća aplikacija za vrijeme molitve, Kuran i još mnogo toga';

  @override
  String get onboarding2Title => 'Vrijeme molitve';

  @override
  String get onboarding2Desc =>
      'Točna vremena molitve na temelju vaše lokacije';

  @override
  String get onboarding3Title => 'Kur\'an i više';

  @override
  String get onboarding3Desc =>
      'Čitajte Kuran, pratite svoje čitanje i istražujte islamski sadržaj';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'Poništi brojač';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'Ciljani broj: $target';
  }

  @override
  String get tapToCount => 'Dodirnite za brojanje';

  @override
  String get zikrCompletedMashAllah => 'Završeno! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah je daleko iznad svake nesavršenosti.';

  @override
  String get zikrMeaningAlhamdulillah => 'Sva hvala pripada Allahu.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah je najveći.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Nema boga osim Allaha.';

  @override
  String get zikrMeaningAstaghfirullah => 'Tražim Allahov oprost.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Nema moći i snage osim kroz Allaha.';

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
  String get dailyProgress => 'Dnevni napredak';

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
  String get recheckPremium => 'Ponovno provjerite status premium pretplate';

  @override
  String get syncStore =>
      'Sinkronizirajte se s trgovinom aplikacija kako biste potvrdili svoju premium pretplatu.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'Premium pretplata potvrđena.';

  @override
  String get premiumNotFound => 'Premium pretplata nije pronađena.';

  @override
  String premiumRefreshError(Object error) {
    return 'Nije moguće osvježiti status premium pretplate: $error';
  }

  @override
  String get offlineDownloadManager => 'Offline Download Manager';

  @override
  String get manageDatasets =>
      'Upravljajte velikim izvanmrežnim paketima zvuka i skupova podataka.';

  @override
  String get freeStorage => 'Oslobodite unutarnju pohranu uređaja.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'Provjera baze podataka Kur\'ana...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'Status baze podataka Kur\'ana';

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
    return 'Provjera Kur\'ana nije uspjela: $error';
  }

  @override
  String get audioVoice => 'Audio glas';

  @override
  String get audioVoiceMisharyAlafasy => 'Muški (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Muški (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Muški (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Kalibracija Qible';

  @override
  String get compassSmoothing => 'Izglađivanje kompasom';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Kalibracijski pomak';

  @override
  String currentOffset(Object offset) {
    return 'Trenutno: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Podesite ako vaš kompas treba ručnu korekciju. Pozitivne vrijednosti se okreću u smjeru kazaljke na satu.';

  @override
  String get apply => 'Primijeni promjene';

  @override
  String get resetOnboarding => 'Ponovno postavljanje uvodnih postavki';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Dijagnostika';

  @override
  String get diagnosticsNotSet => 'Nije postavljeno';

  @override
  String get diagnosticsPrayerProfile => 'Profil molitve';

  @override
  String get diagnosticsPrayerSource => 'Autoritet molitve';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Prilagođeno / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Ručni prilagođeni kutovi (bez institucionalnog izvora)';

  @override
  String diagnosticsPrayerHybridSource(String sourceName, String madhab) {
    return '$sourceName metoda s postavkom $madhab Asr koju je odabrao korisnik';
  }

  @override
  String get diagnosticsCloudDriven => 'Vođen oblakom';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan audio sredstva';

  @override
  String get diagnosticsUiAudioAssets => 'UI audio sredstva';

  @override
  String get diagnosticsQuranAudioAssets => 'Audio sredstva iz Kur\'ana';

  @override
  String get diagnosticsAudioAssets => 'Audio sredstva';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count datoteka';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Čitanje manifesta nije uspjelo: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Lokalizacija Locales';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count podržan';
  }

  @override
  String get diagnosticsQuranDataset => 'Skup podataka Kur\'ana';

  @override
  String get diagnosticsQuranSurahs => 'Kur\'anske sure';

  @override
  String get diagnosticsQuranAyahs => 'Kur\'anski ajeti';

  @override
  String get diagnosticsQuranJuzMetadata => 'Metapodaci o džuzu Kur\'ana';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'U Supabaseu nedostaju tablice u oblaku; zamjena u paketu aktivna';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Provjera oblaka nije uspjela: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Nedostaju metapodaci Cloud Juza; paketni strukturni rezervni aktivan';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Provjera strukture oblaka nije uspjela: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Potrebna kalibracija. Rotirajte uređaj na slici 8.';

  @override
  String get dailyVerse => 'Dnevni stih';

  @override
  String get dailyVerseUnavailableTitle => 'Dnevni stih nije dostupan';

  @override
  String get dailyVerseUnavailableBody =>
      'Potvrđeni dnevni sadržaj stihova još nije konfiguriran za ovu verziju. Povežite se s izvorom oblaka ili sinkronizirajte potvrđenu predmemoriju prije pregledavanja.';

  @override
  String get todaysIbadah => 'Današnji ibadet';

  @override
  String get quickAccess => 'Brzi pristup';

  @override
  String get assistant => 'Pomoćnik';

  @override
  String get places => 'Mjesta';

  @override
  String get library => 'Knjižnica';

  @override
  String get analytics => 'Analitika';

  @override
  String get dailyDuas => 'Dnevne dove';

  @override
  String essentialDuas(String count) {
    return '$count bitne dove';
  }

  @override
  String get duaUnavailableTitle => 'Potvrđene dove još nisu dostupne';

  @override
  String get duaUnavailableBody =>
      'Potvrđeni dnevni dua još nisu sinkronizirani s ovim uređajem. Povežite se s izvorom u oblaku za učitavanje izvornih dua umjesto neprovjerenog rezervnog.';

  @override
  String get duaCategoryQuranic => 'Kur\'anska dova';

  @override
  String get duaCategoryMorningEvening => 'Ujutro i navečer';

  @override
  String get duaCategoryTasbih => 'tesbih';

  @override
  String get duaCategoryProtection => 'Zaštita';

  @override
  String get duaCategoryBeginning => 'Počeci';

  @override
  String get duaCategorySleep => 'Spavati';

  @override
  String get duaCategoryFoodDrink => 'Hrana i piće';

  @override
  String get duaCategoryForgiveness => 'Opraštanje';

  @override
  String get duaCategoryHome => 'Dom';

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
  String get islamicEducation => 'Islamsko obrazovanje';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Zbirke hadisa';

  @override
  String get hadithSourcePending => 'Provjereni izvor na čekanju';

  @override
  String get hadithUnavailableTitle =>
      'Verificirane hadiske zbirke još uvijek nisu dostupne';

  @override
  String get hadithUnavailableBody =>
      'Ova verzija još uvijek ovisi o neprovjerenom vanjskom feedu hadisa. Pregledavanje hadisa ostaje onemogućeno dok se skup podataka izvora ne sinkronizira.';

  @override
  String get paywallUnlockAll =>
      'Otključajte sve značajke za svoje duhovno putovanje';

  @override
  String get premiumProductUnavailable =>
      'Premium proizvod trenutno nije dostupan. Pokušajte ponovno kasnije.';

  @override
  String get premiumPurchaseFailed =>
      'Kupnja nije mogla biti dovršena. Molimo pokušajte ponovo.';

  @override
  String get paywallFeature1Title => 'Neuralni pomoćnik Plus';

  @override
  String get paywallFeature1Desc =>
      'Neograničena pitanja i odgovori koje pokreće AI';

  @override
  String get paywallFeature2Title => 'Neograničeno izvan mreže';

  @override
  String get paywallFeature2Desc => 'Preuzmite sve recitacije';

  @override
  String get paywallFeature3Title => 'Ekskluzivni dizajni';

  @override
  String get paywallFeature3Desc => 'Premium teme i fontovi';

  @override
  String get paywallFeature4Title => 'Bez oglasa';

  @override
  String get paywallFeature4Desc => 'Nema reklama';

  @override
  String get paywallGetAccess => 'Dobijte doživotni pristup — 1,00 USD';

  @override
  String get restorePurchases => 'Obnovi kupnje';

  @override
  String get zakatCalculator => 'Kalkulator zekata';

  @override
  String get zakatGold => 'zlato (Altın)';

  @override
  String get zakatSilver => 'srebro (Gümüş)';

  @override
  String get zakatCashBank => 'Gotovina / Banka';

  @override
  String get zakatBusiness => 'posao';

  @override
  String get zakatInvestments => 'investicije';

  @override
  String get zakatWeightGrams => 'Težina (g)';

  @override
  String get zakatPricePerGram => 'Cijena/g';

  @override
  String get zakatTotalAmount => 'Ukupni iznos';

  @override
  String get zakatInventoryValue => 'Inventarna vrijednost';

  @override
  String get zakatDebts => 'Dugovi';

  @override
  String get zakatTotal => 'Ukupno';

  @override
  String get calculateZakat => 'Izračunajte Zekat';

  @override
  String get nisabNotReached => 'Nisab nije dosegnut. Zekat nije obavezan.';

  @override
  String get totalZakat => 'Ukupni zekat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Sredstva: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zlatni zekat';

  @override
  String get zakatSilverZakat => 'Srebrni zekat';

  @override
  String get zakatCashZakat => 'Gotovinski zekat';

  @override
  String get zakatBusinessZakat => 'Poslovni zekat';

  @override
  String get zakatInvestmentZakat => 'Investicijski zekat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Dosegnuto je dnevno ograničenje upita. Nadogradite na Premium za neograničeno.';

  @override
  String get chatbotErrorMsg =>
      'Nisam mogao generirati odgovor. Molimo pokušajte ponovo.';

  @override
  String get chatbotOfflinePrompt =>
      'Verificirana izvanmrežna islamska baza znanja još uvijek se priprema. Sada možete omogućiti izvanmrežnu zamjenu, ali će prikazivati ​​samo ograničene sigurne poruke dok izvorni skup podataka ne bude spreman.\n\nŽelite li omogućiti offline zamjenu?';

  @override
  String get chatbotOfflineSwitched =>
      'Omogućen izvanmrežni rezervni način. Provjereni domaći islamski odgovori još nisu spremni.';

  @override
  String get chatbotOfflineDownloadLabel => 'Omogući izvanmrežnu zamjenu';

  @override
  String get downloadPreparing => 'Priprema preuzimanja...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Preuzimanje sure $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Sve sure su već preuzete za ovog recitatora.';

  @override
  String get offlineQuranAudioPacks => 'Izvanmrežni audio paketi Kur\'ana';

  @override
  String storedOnDeviceMb(String size) {
    return 'Pohranjeno na uređaju: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total sura preuzeto';
  }

  @override
  String get redownloadMissingRepair => 'Nedostaje popravak / preuzimanje';

  @override
  String get downloadAction => 'preuzimanje';

  @override
  String get resumeDownload => 'Nastavi preuzimanje';

  @override
  String get deleteDownloadedFiles => 'Brisanje preuzetih datoteka';

  @override
  String get downloadCancelling => 'Otkazivanje...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Otkazano preuzimanje za $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Preuzimanje je dovršeno za $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Preuzimanje je završeno za $reciter sa $failed neuspjelih sura ($downloaded/$total preuzeto).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Izbrisane izvanmrežne datoteke za $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Verified Quran audio sources are unavailable right now.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Potvrđeni audio paket Kur\'ana nije potpun ($available/$total). Pokušajte ponovno nakon ažuriranja audiokataloga.';
  }

  @override
  String get chatbotHint => 'Ask a question...';

  @override
  String get chatbotThinking => 'Thinking...';

  @override
  String get sukunMixerSubtitle => 'Mikser prirode i Kur\'ana';

  @override
  String get audioPlayFailed => 'Audio reprodukcija nije uspjela';

  @override
  String get sukunNatureLabel => 'sukun (priroda)';

  @override
  String get sukunRainOfMercy => 'Kiša milosrđa';

  @override
  String get sukunGardenOfPeace => 'Vrt mira';

  @override
  String get sukunMidnightCalm => 'Ponoćni mir';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Zvučni pejzaži nisu dostupni';

  @override
  String get sukunUnavailableBody =>
      'Ova verzija još ne uključuje potrebne Sukun zvučne elemente.';

  @override
  String get prayerCompletion => 'Završetak molitve';

  @override
  String get streaks => 'Pruge';

  @override
  String get dayStreak => 'Dnevni niz';

  @override
  String get bestStreak => 'Najbolji niz';

  @override
  String get chatbotCloudAiLabel => 'AI u oblaku';

  @override
  String get chatbotLocalAiLabel => 'Izvanmrežna zamjena';

  @override
  String get chatbotUseCloudAi => 'Koristite Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Omogući izvanmrežnu zamjenu';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count lijevo';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API nije konfiguriran. Potvrđeno izvanmrežno islamsko vodstvo još nije dostupno.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Potvrđeno lokalno islamsko vodstvo još nije dostupno. Prijeđite na Cloud AI za izvorne odgovore.';

  @override
  String get mosques => 'Džamije';

  @override
  String get halalFood => 'Halal hrana';

  @override
  String get placesSearchArea => 'Pretraži ovo područje';

  @override
  String get nearbyMosques => 'Džamije u blizini';

  @override
  String get islamicSchools => 'Islamske škole';

  @override
  String placesFoundCount(String count) {
    return '$count pronađen';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API pogreška: $statusCode';
  }

  @override
  String get placesNetworkError => 'Mrežna greška. Molimo pokušajte ponovo.';

  @override
  String get placesLocationRequiredTitle => 'Potrebna lokacija';

  @override
  String get placesLocationRequiredBody =>
      'Najprije postavite lokaciju kako bi se obližnje džamije, halal hrana i islamske škole mogle točno pretražiti.';

  @override
  String get placesMapTilesUnavailableTitle => 'Pločice karte nisu dostupne';

  @override
  String get placesMapTilesUnavailableBody =>
      'Potvrđeni izvor pločica karte još nije konfiguriran za ovu verziju. Mjesta u blizini i dalje se mogu učitati s vaše spremljene lokacije.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'Podaci o mjestima nisu dostupni';

  @override
  String get placesDataSourceUnavailableBody =>
      'Potvrđena krajnja točka podataka o mjestima još nije konfigurirana za ovu međugradnju. Postavite PLACES_OVERPASS_API_URL na odobreni proxy ili pružatelja usluga prije nego što omogućite pretraživanje u blizini.';

  @override
  String get unknownPlaceName => 'Nepoznato ime';

  @override
  String get islamicPlaceFallback => 'Islamsko mjesto';

  @override
  String get asmaMeaning1 => 'Dobrotvorni';

  @override
  String get asmaMeaning2 => 'Milosrdni';

  @override
  String get asmaMeaning3 => 'Kralj / Vječni gospodar';

  @override
  String get asmaMeaning4 => 'Presveto';

  @override
  String get asmaMeaning5 => 'Izvor mira';

  @override
  String get asmaMeaning6 => 'Davatelj sigurnosti';

  @override
  String get asmaMeaning7 =>
      'The Watchful Guardian, who observes and safeguards all creation.';

  @override
  String get asmaMeaning8 => 'Dragocjeni / Najmoćniji';

  @override
  String get asmaMeaning9 =>
      'The Restorer and Irresistible, whose will prevails with perfect power.';

  @override
  String get asmaMeaning10 => 'Najveći';

  @override
  String get asmaMeaning11 => 'Stvoritelj';

  @override
  String get asmaMeaning12 => 'Tvorac reda';

  @override
  String get asmaMeaning13 => 'The Shaper of Beauty';

  @override
  String get asmaMeaning14 => 'Opraštanje';

  @override
  String get asmaMeaning15 => 'Pokoritelj';

  @override
  String get asmaMeaning16 => 'Darovatelj svega';

  @override
  String get asmaMeaning17 => 'Održavatelj';

  @override
  String get asmaMeaning18 => 'Otvarač';

  @override
  String get asmaMeaning19 => 'Poznavalac svega';

  @override
  String get asmaMeaning20 =>
      'The Withholder, who narrows and restrains by wisdom.';

  @override
  String get asmaMeaning21 => 'Olakšavač';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'Uzvišenik';

  @override
  String get asmaMeaning24 => 'The Bestower of Honor';

  @override
  String get asmaMeaning25 => 'Ponizitelj';

  @override
  String get asmaMeaning26 => 'Sve slušatelj';

  @override
  String get asmaMeaning27 => 'Prorok svih';

  @override
  String get asmaMeaning28 => 'Sudac';

  @override
  String get asmaMeaning29 => 'Pravednik';

  @override
  String get asmaMeaning30 => 'Suptilni';

  @override
  String get asmaMeaning31 => 'Svi svjesni';

  @override
  String get asmaMeaning32 => 'Prednost';

  @override
  String get asmaMeaning33 => 'Veličanstveno';

  @override
  String get asmaMeaning34 => 'Veliki opraštač';

  @override
  String get asmaMeaning35 => 'Nagrađivač zahvalnosti';

  @override
  String get asmaMeaning36 => 'Najviši';

  @override
  String get asmaMeaning37 => 'Najveći';

  @override
  String get asmaMeaning38 => 'The Preserver';

  @override
  String get asmaMeaning39 => 'The Nourisher';

  @override
  String get asmaMeaning40 => 'Obračunavač';

  @override
  String get asmaMeaning41 => 'Majestic';

  @override
  String get asmaMeaning42 => 'The Generous';

  @override
  String get asmaMeaning43 => 'Pažljivi';

  @override
  String get asmaMeaning44 => 'Odazivanje na molitvu';

  @override
  String get asmaMeaning45 => 'The All Comprehending';

  @override
  String get asmaMeaning46 => 'Savršeno mudri';

  @override
  String get asmaMeaning47 => 'Ljubljeni';

  @override
  String get asmaMeaning48 => 'Najslavniji';

  @override
  String get asmaMeaning49 => 'Uskrsitelj';

  @override
  String get asmaMeaning50 => 'Svjedok';

  @override
  String get asmaMeaning51 => 'Istina';

  @override
  String get asmaMeaning52 => 'Svedovoljan povjerenik';

  @override
  String get asmaMeaning53 => 'Posjednik sve snage';

  @override
  String get asmaMeaning54 => 'The Forceful';

  @override
  String get asmaMeaning55 => 'Zaštitnik';

  @override
  String get asmaMeaning56 => 'Hvaljeni';

  @override
  String get asmaMeaning57 => 'Procjenitelj';

  @override
  String get asmaMeaning58 => 'Začetnik';

  @override
  String get asmaMeaning59 => 'Obnovitelj';

  @override
  String get asmaMeaning60 => 'Darovatelj života';

  @override
  String get asmaMeaning61 => 'Oduzimač života';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'Održavatelj koji sam sebe uzdržava';

  @override
  String get asmaMeaning64 => 'Pronalazač';

  @override
  String get asmaMeaning65 => 'Slavni';

  @override
  String get asmaMeaning66 => 'Jedini';

  @override
  String get asmaMeaning67 => 'Jedan';

  @override
  String get asmaMeaning68 => 'Onaj kojeg svi traže';

  @override
  String get asmaMeaning69 => 'Moćni';

  @override
  String get asmaMeaning70 => 'Stvoritelj sve moći';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'Odgoda';

  @override
  String get asmaMeaning73 => 'Prvi';

  @override
  String get asmaMeaning74 => 'Posljednji';

  @override
  String get asmaMeaning75 => 'Manifest';

  @override
  String get asmaMeaning76 => 'Skriveno';

  @override
  String get asmaMeaning77 =>
      'The Protecting Patron, who governs and cares for all creation.';

  @override
  String get asmaMeaning78 => 'Najviši';

  @override
  String get asmaMeaning79 => 'Činitelj dobra';

  @override
  String get asmaMeaning80 => 'Vodič za pokajanje';

  @override
  String get asmaMeaning81 => 'Osvetnik';

  @override
  String get asmaMeaning82 => 'Opraštač';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'Vlasnik / Vladar svega';

  @override
  String get asmaMeaning85 => 'Posjednik veličanstva i blagodati';

  @override
  String get asmaMeaning86 => 'The Equitable';

  @override
  String get asmaMeaning87 => 'Sakupljač';

  @override
  String get asmaMeaning88 => 'Bogataš';

  @override
  String get asmaMeaning89 => 'The Enricher';

  @override
  String get asmaMeaning90 => 'Sprečavanje štete';

  @override
  String get asmaMeaning91 => 'Donositelj štete';

  @override
  String get asmaMeaning92 => 'Donator dobrobiti';

  @override
  String get asmaMeaning93 => 'Svjetlost';

  @override
  String get asmaMeaning94 => 'Vodič';

  @override
  String get asmaMeaning95 => 'Začetnik';

  @override
  String get asmaMeaning96 => 'Vječni';

  @override
  String get asmaMeaning97 => 'Nasljednik';

  @override
  String get asmaMeaning98 => 'Najpravedniji vodič';

  @override
  String get asmaMeaning99 =>
      'The Patient, who does not hasten punishment and acts with perfect forbearance.';
}
