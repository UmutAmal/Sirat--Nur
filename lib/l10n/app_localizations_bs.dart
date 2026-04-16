// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bosnian (`bs`).
class AppLocalizationsBs extends AppLocalizations {
  AppLocalizationsBs([String locale = 'bs']) : super(locale);

  @override
  String get appTitle => 'Allahov put';

  @override
  String get splashTagline => 'Islamski put svjetlosti';

  @override
  String get home => 'Dom';

  @override
  String get quran => 'Kur\'an';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Kalendar';

  @override
  String get settings => 'Postavke';

  @override
  String get nextPrayer => 'Sljedeća molitva';

  @override
  String get prayerTimes => 'Prayer Times';

  @override
  String get continueReading => 'Nastavite sa čitanjem';

  @override
  String get getLifetimePro => 'Nabavite Lifetime Pro';

  @override
  String get unlockTajweed => 'Otključajte Tajweed i napredne funkcije';

  @override
  String get prayerCalculation => 'Prayer Calculation';

  @override
  String get method => 'Metoda izračunavanja';

  @override
  String get madhab => 'Asr Juristic Method';

  @override
  String get surahs => 'Sure';

  @override
  String get ayahs => 'Ayahs';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Izlazak sunca';

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
    return 'Vrijeme je za $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Vrijeme je za molitvu $prayerName.';
  }

  @override
  String get dataStorage => 'Podaci i pohrana';

  @override
  String get clearCache => 'Obriši Cache';

  @override
  String get cacheClearedSuccess => 'Cache je uspješno obrisan';

  @override
  String get location => 'Lokacija';

  @override
  String get language => 'Jezik';

  @override
  String get selectLanguage => 'Odaberite Jezik';

  @override
  String get searchLanguage => 'Pretraži 180+ jezika...';

  @override
  String get systemDefault => 'System Default';

  @override
  String get currentLocation => 'Trenutna lokacija (GPS)';

  @override
  String get locationServiceDisabled => 'Usluga lokacije je onemogućena.';

  @override
  String get locationPermissionDenied => 'Dozvola za lokaciju odbijena.';

  @override
  String get locationDetectionFailed =>
      'Nije moguće otkriti vašu lokaciju. Molimo odaberite grad ručno ili pokušajte ponovo.';

  @override
  String citiesCount(String count) {
    return '$count gradova';
  }

  @override
  String get search => 'Traži';

  @override
  String get searchHint => 'Traži...';

  @override
  String get noResults => 'Nema pronađenih rezultata';

  @override
  String get loading => 'Učitavanje...';

  @override
  String get error => 'Greška';

  @override
  String get appErrorOccurred => 'Došlo je do greške';

  @override
  String get appUnknownError => 'Nepoznata greška';

  @override
  String get quranLoadFailed =>
      'Sadržaj Kur\'ana nije mogao biti učitan. Molimo pokušajte ponovo.';

  @override
  String get retry => 'Pokušaj ponovo';

  @override
  String get refreshAction => 'Osvježi';

  @override
  String get cancel => 'Otkaži';

  @override
  String get save => 'Sačuvaj';

  @override
  String get delete => 'Izbriši';

  @override
  String get edit => 'Uredi';

  @override
  String get close => 'Zatvori';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Da';

  @override
  String get no => 'br';

  @override
  String get surah => 'Sura';

  @override
  String ayahLabel(String ayah) {
    return 'Aja $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Stranica';

  @override
  String get reading => 'Čitanje';

  @override
  String get recitation => 'Recitovanje';

  @override
  String get translation => 'Prevod';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Učitavanje tafsira...';

  @override
  String get tafsirSourceLabel => 'Tafsir izvor';

  @override
  String get tafsirNoSurahFound => 'Za ovu suru nije pronađen tefsir.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Nije pronađen tefsir za ajet $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir se nije mogao učitati.';

  @override
  String get tafsirNoTextForAyah => 'Nema teksta tefsira za ovaj ajet.';

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
    return 'Tafsir izvor je vratio HTTP $statusCode grešku.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Odabrani izvor tafsira nije vratio nijedan unos.';

  @override
  String get tafsirCacheUnavailable =>
      'Provjereni tefsir još nije dostupan van mreže. Sinhronizirajte izvorni skup podataka tafsira prije pregledavanja.';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get addBookmark => 'Dodaj Bookmark';

  @override
  String get removeBookmark => 'Ukloni Bookmark';

  @override
  String get lastRead => 'Last Read';

  @override
  String get dailyZikr => 'Dnevni Zikr';

  @override
  String get duaMeaning1 =>
      'drugi mole: ‘Gospodaru naš, daj nam dobro na ovom i na onom svijetu i zaštiti nas od patnje u vatri.’';

  @override
  String get duaMeaning2 =>
      'Bog ne opterećuje nijednu dušu sa više nego što može da podnese: svaka dobija sve što je dobro učinila, a trpi svoje loše – „Gospode, ne stavljaj nas na zadatak ako zaboravimo ili pogrešimo. Gospode, nemoj nas opterećivati ​​kao što si opterećivao one prije nas. Gospode, ne opterećuj nas više nego što imamo snage da podnesemo. Oprosti nam, oprosti nam i smiluj nam se. Ti si naš Zaštitnik, pa nam pomozi protiv nevjernika.’';

  @override
  String get duaMeaning3 =>
      '‘Gospodaru naš, ne dopusti da naša srca skrenu nakon što si nas uputio. Udijeli nam svoju milost: Ti si vječno dajući.';

  @override
  String get duaMeaning4 =>
      'Gospode, daj da ja i moje potomstvo održavamo namaz. Gospodaru naš, prihvati moj zahtjev.';

  @override
  String get duaMeaning5 =>
      'i spusti svoje krilo u poniznosti prema njima u dobroti i reci: ‘Gospodaru, smiluj im se, kao što su se i oni brinuli za mene kad sam bio mali.’';

  @override
  String get duaMeaning6 =>
      'uzvišen neka je Bog, onaj koji zaista ima kontrolu. (Poslaniče), ne žuri da učiš prije nego što se objava u potpunosti završi, već reci: ‘Gospodaru, povećaj me u znanju!’';

  @override
  String get duaMeaning7 =>
      'Reci [Poslaniku]: ‘Gospodaru, oprosti i smiluj se: Ti si najmilostiviji od svih.’';

  @override
  String get duaMeaning8 =>
      'oni koji mole: ‘Gospodaru naš, daj nam radost u našim supružnicima i potomstvu. Učini nas dobrim primjerom onima koji su svjesni Tebe.';

  @override
  String get morningZikr => 'Jutarnji Zikr';

  @override
  String get eveningZikr => 'Večernji Zikr';

  @override
  String get tasbih => 'Tasbih';

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
  String get searchHadith => 'Pretraži hadis';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Allahova imena';

  @override
  String get liveTv => 'TV uživo';

  @override
  String get watchLive => 'Gledajte uživo';

  @override
  String get streamError => 'Greška pri prijenosu';

  @override
  String get reload => 'Ponovo učitaj';

  @override
  String get openInYoutube => 'Otvori na YouTubeu';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Posti';

  @override
  String get quranReading => 'Quran Reading';

  @override
  String get prayers => 'Molitve';

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
  String get statistics => 'Statistika';

  @override
  String get hijriCalendar => 'Hidžretski kalendar';

  @override
  String get gregorianCalendar => 'Gregorijanski kalendar';

  @override
  String get today => 'Danas';

  @override
  String get tomorrow => 'sutra';

  @override
  String get yesterday => 'Jučer';

  @override
  String get specialDays => 'Posebni dani';

  @override
  String get ramadan => 'Ramazan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Kurban-bajram';

  @override
  String get islamicNewYear => 'Islamska Nova godina';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramazan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramazana';

  @override
  String get specialDayDateEidAlFitr => '1 Shawwal';

  @override
  String get specialDayDateEidAlAdha => '10 Zul Hidža';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharram';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabi al-Awwal';

  @override
  String get laylatAlQadr => 'Lejlet Al-Kadr';

  @override
  String get qiblaDirection => 'Qibla Direction';

  @override
  String get compass => 'Kompas';

  @override
  String get degrees => 'stepeni';

  @override
  String get north => 'Sjever';

  @override
  String get qiblaFound => 'Qibla pronađena!';

  @override
  String get turnDevice => 'Okrenite uređaj prema Qibli';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Greška kompasa: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Senzor kompasa nije dostupan na ovom uređaju.';

  @override
  String get qiblaLocationRequiredTitle => 'Lokacija je potrebna za Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Postavite svoju stvarnu lokaciju prije korištenja Qibla kompasa kako bi se smjer mogao točno izračunati.';

  @override
  String get adhanNotificationChannelName => 'Adhan Notifications';

  @override
  String get adhanNotificationChannelDescription =>
      'Upozorenje o vremenu molitve sa zvukom ezana.';

  @override
  String get notifications => 'Obavještenja';

  @override
  String get prayerNotifications => 'Obavještenja o molitvi';

  @override
  String get enableNotifications => 'Omogući Obavještenja';

  @override
  String get notificationTime => 'Vrijeme obavještenja';

  @override
  String get beforePrayer => 'minuta prije molitve';

  @override
  String get theme => 'Tema';

  @override
  String get lightMode => 'Light Mode';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get systemTheme => 'Sistemska tema';

  @override
  String get about => 'O';

  @override
  String get version => 'Verzija';

  @override
  String get privacyPolicy => 'Politika privatnosti';

  @override
  String get termsOfService => 'Uslovi korištenja usluge';

  @override
  String get contactUs => 'Kontaktirajte nas';

  @override
  String get rateApp => 'Rate App';

  @override
  String get shareApp => 'Dijeli aplikaciju';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Pogledajte $appName: vrhunsku aplikaciju za islamski stil života! $url';
  }

  @override
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'Preuzimanja';

  @override
  String get downloading => 'Preuzimanje...';

  @override
  String get downloadComplete => 'Preuzimanje je završeno';

  @override
  String get downloadFailed => 'Preuzimanje nije uspjelo';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'Nema internetske veze';

  @override
  String get checkConnection => 'Provjerite svoju vezu';

  @override
  String get premium => 'Premium';

  @override
  String get upgradeToPro => 'Nadogradite na Pro';

  @override
  String get proFeatures => 'Pro Features';

  @override
  String get removeAds => 'Ukloni oglase';

  @override
  String get unlockAll => 'Otključajte sav sadržaj';

  @override
  String get exclusiveContent => 'Ekskluzivni sadržaj';

  @override
  String get welcome => 'Dobrodošli';

  @override
  String get getStarted => 'Započnite';

  @override
  String get skip => 'Skip';

  @override
  String get next => 'Sledeći';

  @override
  String get done => 'Gotovo';

  @override
  String get onboarding1Title => 'Dobrodošli na Allahov put';

  @override
  String get onboarding1Desc =>
      'Vaša potpuna islamska prateća aplikacija za vrijeme namaza, Kur\'an i još mnogo toga';

  @override
  String get onboarding2Title => 'Prayer Times';

  @override
  String get onboarding2Desc => 'Tačna vremena molitve na osnovu vaše lokacije';

  @override
  String get onboarding3Title => 'Kur\'an i više';

  @override
  String get onboarding3Desc =>
      'Čitajte Kur\'an, pratite svoje čitanje i istražite islamski sadržaj';

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
    return 'Broj meta: $target';
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
  String get zikrMeaningAllahuAkbar => 'Allah je Najveći.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Nema boga osim Allaha.';

  @override
  String get zikrMeaningAstaghfirullah => 'Tražim Allahov oprost.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Nema moći i nema snage osim preko Allaha.';

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
  String get recheckPremium => 'Ponovo provjerite status premium pretplate';

  @override
  String get syncStore =>
      'Sinhronizirajte s trgovinom aplikacija da potvrdite svoju premium pretplatu.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'Premium pretplata je potvrđena.';

  @override
  String get premiumNotFound => 'Premium pretplata nije pronađena.';

  @override
  String premiumRefreshError(Object error) {
    return 'Nije moguće osvježiti status premium pretplate: $error';
  }

  @override
  String get offlineDownloadManager => 'Offline Download Manager';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Oslobodite internu pohranu uređaja.';

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
    return 'Quran check failed: $error';
  }

  @override
  String get audioVoice => 'Audio Glas';

  @override
  String get audioVoiceMisharyAlafasy => 'muškarac (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'muško (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'muško (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Qibla Calibration';

  @override
  String get compassSmoothing => 'Kompas Smoothing';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Calibration Offset';

  @override
  String currentOffset(Object offset) {
    return 'Struja: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Podesite ako je vašem kompasu potrebna ručna korekcija. Pozitivne vrijednosti se rotiraju u smjeru kazaljke na satu.';

  @override
  String get apply => 'Primijenite promjene';

  @override
  String get resetOnboarding => 'Resetirajte uvodnu postavku';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Dijagnostika';

  @override
  String get diagnosticsNotSet => 'Nije postavljeno';

  @override
  String get diagnosticsPrayerProfile => 'Molitveni profil';

  @override
  String get diagnosticsPrayerSource => 'Prayer Authority';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Prilagođeno / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Ručni prilagođeni uglovi (bez institucionalnog izvora)';

  @override
  String get diagnosticsCloudDriven => 'Cloud Driven';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI audio sredstva';

  @override
  String get diagnosticsQuranAudioAssets => 'Audio imovina Kur\'ana';

  @override
  String get diagnosticsAudioAssets => 'Audio sredstva';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count fajlova';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Čitanje manifesta nije uspjelo: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Localization Locales';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count podržano';
  }

  @override
  String get diagnosticsQuranDataset => 'Quran Dataset';

  @override
  String get diagnosticsQuranSurahs => 'Kur\'an Surahs';

  @override
  String get diagnosticsQuranAyahs => 'Quran Ayahs';

  @override
  String get diagnosticsQuranJuzMetadata => 'Kur\'an Juz Metadata';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Cloud tabele nedostaju u Supabase; aktivni rezervni paket';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Provjera oblaka nije uspjela: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Nedostaju juz metapodaci u oblaku; uključeni strukturalni rezervni aktivni';

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
      'Potrebna je kalibracija. Okrenite uređaj na slici-8.';

  @override
  String get dailyVerse => 'Daily Verse';

  @override
  String get todaysIbadah => 'Danas je Ibadah';

  @override
  String get quickAccess => 'Brzi pristup';

  @override
  String get assistant => 'Asistent';

  @override
  String get places => 'Mjesta';

  @override
  String get library => 'Biblioteka';

  @override
  String get analytics => 'Analitika';

  @override
  String get dailyDuas => 'Daily Duas';

  @override
  String essentialDuas(String count) {
    return '$count bitne dove';
  }

  @override
  String get duaUnavailableTitle => 'Provjerene due još nisu dostupne';

  @override
  String get duaUnavailableBody =>
      'Provjerene dnevne dojave još uvijek nisu sinhronizirane na ovaj uređaj. Povežite se s izvorom u oblaku za učitavanje dua-a iz izvora umjesto neprovjerenog rezervnog.';

  @override
  String get duaCategoryQuranic => 'Kur\'anska dova';

  @override
  String get duaCategoryMorningEvening => 'Jutro & Večer';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Zaštita';

  @override
  String get duaCategoryBeginning => 'Počeci';

  @override
  String get duaCategorySleep => 'Spavaj';

  @override
  String get duaCategoryFoodDrink => 'Hrana i piće';

  @override
  String get duaCategoryForgiveness => 'Oprost';

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
      'Provjerene zbirke hadisa još uvijek nisu dostupne';

  @override
  String get hadithUnavailableBody =>
      'Ova izgradnja još uvijek ovisi o neprovjerenom vanjskom hadiskom feedu. Pretraživanje hadisa ostaje onemogućeno dok se izvorni skup podataka ne sinkronizira.';

  @override
  String get paywallUnlockAll =>
      'Otključajte sve funkcije za svoje duhovno putovanje';

  @override
  String get premiumProductUnavailable =>
      'Premium proizvod trenutno nije dostupan. Molimo pokušajte ponovo kasnije.';

  @override
  String get premiumPurchaseFailed =>
      'Kupovina nije mogla biti završena. Molimo pokušajte ponovo.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'Neograničena pitanja i odgovori sa AI-om';

  @override
  String get paywallFeature2Title => 'Unlimited Offline';

  @override
  String get paywallFeature2Desc => 'Preuzmite sve recitacije';

  @override
  String get paywallFeature3Title => 'Ekskluzivni dizajni';

  @override
  String get paywallFeature3Desc => 'Premium teme i fontovi';

  @override
  String get paywallFeature4Title => 'Bez oglasa';

  @override
  String get paywallFeature4Desc => 'Nula reklama';

  @override
  String get paywallGetAccess => 'Dobijte doživotni pristup — 1,00 USD';

  @override
  String get restorePurchases => 'Vratite kupovine';

  @override
  String get zakatCalculator => 'Kalkulator zekata';

  @override
  String get zakatGold => 'zlato (Altın)';

  @override
  String get zakatSilver => 'Srebro (Gümüş)';

  @override
  String get zakatCashBank => 'Gotovina / Banka';

  @override
  String get zakatBusiness => 'Posao';

  @override
  String get zakatInvestments => 'Investicije';

  @override
  String get zakatWeightGrams => 'Težina (g)';

  @override
  String get zakatPricePerGram => 'Cijena/g';

  @override
  String get zakatTotalAmount => 'Ukupan iznos';

  @override
  String get zakatInventoryValue => 'Vrijednost inventara';

  @override
  String get zakatDebts => 'Dugovi';

  @override
  String get zakatTotal => 'Ukupno';

  @override
  String get calculateZakat => 'Izračunajte zekat';

  @override
  String get nisabNotReached => 'Nisab nije postignut. Zekat nije obavezan.';

  @override
  String get totalZakat => 'Total Zekat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Imovina: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zlatni zekat';

  @override
  String get zakatSilverZakat => 'Srebrni zekat';

  @override
  String get zakatCashZakat => 'Cash Zekat';

  @override
  String get zakatBusinessZakat => 'Poslovni zekat';

  @override
  String get zakatInvestmentZakat => 'Investicioni zekat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! Ja sam vaš islamski asistent. Pitajte me o namazu, postu, zekatu ili bilo kojoj islamskoj temi.';

  @override
  String get chatbotLimitReached =>
      'Dostignuto je dnevno ograničenje upita. Nadogradite na Premium za neograničeno.';

  @override
  String get chatbotErrorMsg =>
      'Nisam mogao generirati odgovor. Molimo pokušajte ponovo.';

  @override
  String get chatbotOfflinePrompt =>
      'Provjerena vanmrežna islamska baza znanja se još uvijek kurira. Sada možete omogućiti zamjenu van mreže, ali će prikazivati ​​samo ograničene sigurne poruke dok izvorni skup podataka ne bude spreman.\n\nŽelite li omogućiti zamjenu van mreže?';

  @override
  String get chatbotOfflineSwitched =>
      'Offline rezervni je omogućen. Provjereni lokalni islamski odgovori još nisu spremni.';

  @override
  String get chatbotOfflineDownloadLabel => 'Omogući zamjenu van mreže';

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
  String get redownloadMissingRepair => 'Nedostaje popravka / preuzimanje';

  @override
  String get downloadAction => 'Preuzmi';

  @override
  String get resumeDownload => 'Nastavi preuzimanje';

  @override
  String get deleteDownloadedFiles => 'Izbrišite preuzete datoteke';

  @override
  String get downloadCancelling => 'Otkazivanje...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Preuzimanje je otkazano za $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Preuzimanje je završeno za $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Preuzimanje je završeno za $reciter sa $failed neuspjelim surama ($downloaded/$total preuzeto).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Izbrisani vanmrežni fajlovi za $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Provjereni izvori zvuka Kur\'ana trenutno nisu dostupni.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Verificirani audio paket Kur\'ana je nepotpun ($available/$total). Osvježite sjeme oblaka i pokušajte ponovo.';
  }

  @override
  String get chatbotHint => 'Postavite pitanje...';

  @override
  String get chatbotThinking => 'Razmišljam...';

  @override
  String get sukunMixerSubtitle => 'Nature & Qur\'an Mixer';

  @override
  String get audioPlayFailed => 'Audio reprodukcija nije uspjela';

  @override
  String get sukunNatureLabel => 'sukun (priroda)';

  @override
  String get sukunRainOfMercy => 'Rain of Mercy';

  @override
  String get sukunGardenOfPeace => 'Garden of Peace';

  @override
  String get sukunMidnightCalm => 'Midnight Calm';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Zvučni pejzaži nisu dostupni';

  @override
  String get sukunUnavailableBody =>
      'Ova verzija još ne uključuje potrebna sredstva Sukun zvučne scene.';

  @override
  String get prayerCompletion => 'Završetak molitve';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Dnevni niz';

  @override
  String get bestStreak => 'Najbolji niz';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'Koristite Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Omogući zamjenu van mreže';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count lijevo';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API nije konfiguriran. Provjereno vanmrežno islamsko vodstvo još nije dostupno.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Provjereno lokalno islamsko vodstvo još nije dostupno. Prebacite se na Cloud AI za izvorne odgovore.';

  @override
  String get mosques => 'Džamije';

  @override
  String get halalFood => 'Halal Food';

  @override
  String get placesSearchArea => 'Pretražite ovo područje';

  @override
  String get nearbyMosques => 'Nearby Mosques';

  @override
  String get islamicSchools => 'Islamske škole';

  @override
  String placesFoundCount(String count) {
    return '$count pronađeno';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API greška: $statusCode';
  }

  @override
  String get placesNetworkError => 'Mrežna greška. Molimo pokušajte ponovo.';

  @override
  String get placesLocationRequiredTitle => 'Potrebna je lokacija';

  @override
  String get placesLocationRequiredBody =>
      'Prvo postavite lokaciju kako bi se obližnje džamije, halal hrana i islamske škole mogle precizno pretraživati.';

  @override
  String get placesMapTilesUnavailableTitle => 'Pločice mape su nedostupne';

  @override
  String get placesMapTilesUnavailableBody =>
      'Provjereni izvor pločica karte još nije konfiguriran za ovu izgradnju. Mjesta u blizini se i dalje mogu učitavati s vaše sačuvane lokacije.';

  @override
  String get placesDataSourceUnavailableTitle => 'Podaci o mjestima nedostupni';

  @override
  String get placesDataSourceUnavailableBody =>
      'Krajnja tačka podataka o potvrđenim mjestima još nije konfigurirana za ovu izgradnju. Postavite PLACES_OVERPAS_API_URL na odobreni proxy ili provajder prije nego što omogućite pretragu u blizini.';

  @override
  String get unknownPlaceName => 'Nepoznato ime';

  @override
  String get islamicPlaceFallback => 'Islamic Place';

  @override
  String get asmaMeaning1 => 'Beneficent';

  @override
  String get asmaMeaning2 => 'Milosrdni';

  @override
  String get asmaMeaning3 => 'Kralj / Vječni Gospodar';

  @override
  String get asmaMeaning4 => 'Presveto';

  @override
  String get asmaMeaning5 => 'Izvor mira';

  @override
  String get asmaMeaning6 => 'Davalac sigurnosti';

  @override
  String get asmaMeaning7 =>
      'The Watchful Guardian, who observes and safeguards all creation.';

  @override
  String get asmaMeaning8 => 'Precijeni / Najmoćniji';

  @override
  String get asmaMeaning9 =>
      'The Restorer and Irresistible, whose will prevails with perfect power.';

  @override
  String get asmaMeaning10 => 'Najveći';

  @override
  String get asmaMeaning11 => 'Kreator';

  @override
  String get asmaMeaning12 => 'Kreator reda';

  @override
  String get asmaMeaning13 => 'Oblikivač ljepote';

  @override
  String get asmaMeaning14 => 'Oprosti';

  @override
  String get asmaMeaning15 => 'Pokornik';

  @override
  String get asmaMeaning16 => 'Davalac svega';

  @override
  String get asmaMeaning17 => 'Održavatelj';

  @override
  String get asmaMeaning18 => 'Otvarač';

  @override
  String get asmaMeaning19 => 'Poznavatelj svega';

  @override
  String get asmaMeaning20 =>
      'The Withholder, who narrows and restrains by wisdom.';

  @override
  String get asmaMeaning21 => 'Olakšivač';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'Uzvišeni';

  @override
  String get asmaMeaning24 => 'Doktor časti';

  @override
  String get asmaMeaning25 => 'Ponizilac';

  @override
  String get asmaMeaning26 => 'Sve koji čuje';

  @override
  String get asmaMeaning27 => 'Vidilac svega';

  @override
  String get asmaMeaning28 => 'Sudija';

  @override
  String get asmaMeaning29 => 'The Just';

  @override
  String get asmaMeaning30 => 'Suptilni';

  @override
  String get asmaMeaning31 => 'Svi svjesni';

  @override
  String get asmaMeaning32 => 'The Forebearing';

  @override
  String get asmaMeaning33 => 'Veličanstveni';

  @override
  String get asmaMeaning34 => 'Veliki oprostitelj';

  @override
  String get asmaMeaning35 => 'Nagrađivač zahvalnosti';

  @override
  String get asmaMeaning36 => 'Najviši';

  @override
  String get asmaMeaning37 => 'Najveći';

  @override
  String get asmaMeaning38 => 'Preserver';

  @override
  String get asmaMeaning39 => 'Hranitelj';

  @override
  String get asmaMeaning40 => 'The Reckoner';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'Velikodušni';

  @override
  String get asmaMeaning43 => 'Pažljivi';

  @override
  String get asmaMeaning44 => 'Odgovornik na molitvu';

  @override
  String get asmaMeaning45 => 'Sve razumijevanje';

  @override
  String get asmaMeaning46 => 'The Perfectly Wise';

  @override
  String get asmaMeaning47 => 'The Loving One';

  @override
  String get asmaMeaning48 => 'Najslavniji';

  @override
  String get asmaMeaning49 => 'Uskrsitelj';

  @override
  String get asmaMeaning50 => 'Svjedok';

  @override
  String get asmaMeaning51 => 'Istina';

  @override
  String get asmaMeaning52 => 'Sve-dovoljni upravnik';

  @override
  String get asmaMeaning53 => 'Posjednik sve snage';

  @override
  String get asmaMeaning54 => 'The Forceful';

  @override
  String get asmaMeaning55 => 'Zaštitnik';

  @override
  String get asmaMeaning56 => 'Pohvaljeni';

  @override
  String get asmaMeaning57 => 'Procjenitelj';

  @override
  String get asmaMeaning58 => 'Originator';

  @override
  String get asmaMeaning59 => 'Restaurator';

  @override
  String get asmaMeaning60 => 'Davalac života';

  @override
  String get asmaMeaning61 => 'Uzimalac života';

  @override
  String get asmaMeaning62 => 'Vječno živi';

  @override
  String get asmaMeaning63 => 'Samoodrživi hranitelj';

  @override
  String get asmaMeaning64 => 'Pronalazač';

  @override
  String get asmaMeaning65 => 'The Glorious';

  @override
  String get asmaMeaning66 => 'Jedina';

  @override
  String get asmaMeaning67 => 'Jedan';

  @override
  String get asmaMeaning68 => 'Onaj koji traže svi';

  @override
  String get asmaMeaning69 => 'Moćni';

  @override
  String get asmaMeaning70 => 'Stvoritelj sve moći';

  @override
  String get asmaMeaning71 => 'Expediter';

  @override
  String get asmaMeaning72 => 'Odgoda';

  @override
  String get asmaMeaning73 => 'Prvi';

  @override
  String get asmaMeaning74 => 'Posljednji';

  @override
  String get asmaMeaning75 => 'Manifest';

  @override
  String get asmaMeaning76 => 'Skriveni';

  @override
  String get asmaMeaning77 =>
      'The Protecting Patron, who governs and cares for all creation.';

  @override
  String get asmaMeaning78 => 'Uzvišeni';

  @override
  String get asmaMeaning79 => 'Činilac dobra';

  @override
  String get asmaMeaning80 => 'Vodič za pokajanje';

  @override
  String get asmaMeaning81 => 'Osvetnik';

  @override
  String get asmaMeaning82 => 'Oprostitelj';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'Vlasnik/suveren svega';

  @override
  String get asmaMeaning85 => 'Posjednik Veličanstva i Bounty';

  @override
  String get asmaMeaning86 => 'Pravedni';

  @override
  String get asmaMeaning87 => 'Gatherer';

  @override
  String get asmaMeaning88 => 'Bogati';

  @override
  String get asmaMeaning89 => 'Obogaćivač';

  @override
  String get asmaMeaning90 => 'Sprečavač štete';

  @override
  String get asmaMeaning91 => 'Donositelj štete';

  @override
  String get asmaMeaning92 => 'Davatelj pogodnosti';

  @override
  String get asmaMeaning93 => 'Svjetlost';

  @override
  String get asmaMeaning94 => 'Vodič';

  @override
  String get asmaMeaning95 => 'Originator';

  @override
  String get asmaMeaning96 => 'Vječni';

  @override
  String get asmaMeaning97 => 'Nasljednik';

  @override
  String get asmaMeaning98 => 'Najpravedniji vodič';

  @override
  String get asmaMeaning99 => 'Prvi pacijent';
}
