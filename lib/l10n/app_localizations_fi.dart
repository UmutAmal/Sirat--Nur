// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get appTitle => 'Allahin tie';

  @override
  String get splashTagline => 'Islamilainen valon tie';

  @override
  String get home => 'Kotiin';

  @override
  String get quran => 'Koraani';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Kalenteri';

  @override
  String get settings => 'Asetukset';

  @override
  String get nextPrayer => 'Seuraava rukous';

  @override
  String get prayerTimes => 'Rukousajat';

  @override
  String get continueReading => 'Jatka lukemista';

  @override
  String get getLifetimePro => 'Hanki Lifetime Pro';

  @override
  String get unlockTajweed => 'Avaa Tajweed ja lisäominaisuudet';

  @override
  String get prayerCalculation => 'Rukouslaskenta';

  @override
  String get method => 'Laskentamenetelmä';

  @override
  String get madhab => 'Asr Juristinen menetelmä';

  @override
  String get surahs => 'Suurat';

  @override
  String get ayahs => 'Ayahs';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Auringonnousu';

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
    return 'Aika $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'On aika rukoilla $prayerName.';
  }

  @override
  String get dataStorage => 'Tiedot ja tallennus';

  @override
  String get clearCache => 'Tyhjennä välimuisti';

  @override
  String get cacheClearedSuccess => 'Välimuisti tyhjennetty onnistuneesti';

  @override
  String get location => 'Sijainti';

  @override
  String get language => 'Kieli';

  @override
  String get selectLanguage => 'Valitse Kieli';

  @override
  String get searchLanguage => 'Hae yli 180 kielellä...';

  @override
  String get systemDefault => 'Järjestelmän oletusarvo';

  @override
  String get currentLocation => 'Nykyinen sijainti (GPS)';

  @override
  String get locationServiceDisabled =>
      'Sijaintipalvelu on poistettu käytöstä.';

  @override
  String get locationPermissionDenied => 'Sijaintilupa evätty.';

  @override
  String get locationDetectionFailed =>
      'Sijaintiasi ei voitu havaita. Valitse kaupunki manuaalisesti tai yritä uudelleen.';

  @override
  String citiesCount(String count) {
    return '$count kaupungeissa';
  }

  @override
  String get search => 'Haku';

  @override
  String get searchHint => 'Haku...';

  @override
  String get noResults => 'Tuloksia ei löytynyt';

  @override
  String get loading => 'Ladataan...';

  @override
  String get error => 'Virhe';

  @override
  String get appErrorOccurred => 'Tapahtui virhe';

  @override
  String get appUnknownError => 'Tuntematon virhe';

  @override
  String get quranLoadFailed =>
      'Koraanin sisältöä ei voitu ladata. Yritä uudelleen.';

  @override
  String get retry => 'Yritä uudelleen';

  @override
  String get refreshAction => 'Päivitä';

  @override
  String get cancel => 'Peruuttaa';

  @override
  String get save => 'Tallentaa';

  @override
  String get delete => 'Poista';

  @override
  String get edit => 'Muokata';

  @override
  String get close => 'Lähellä';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Kyllä';

  @override
  String get no => 'Ei';

  @override
  String get surah => 'Surah';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Sivu';

  @override
  String get reading => 'Lukeminen';

  @override
  String get recitation => 'Lausunta';

  @override
  String get translation => 'Käännös';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Ladataan tafsiria...';

  @override
  String get tafsirSourceLabel => 'Tafsirin lähde';

  @override
  String get tafsirNoSurahFound => 'Tälle suuralle ei löytynyt tafsiria.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Tafsiria ei löytynyt kohteelle ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsiria ei voitu ladata.';

  @override
  String get tafsirNoTextForAyah => 'Ei tafsir-tekstiä tälle ayahille.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Ladataan tafsiria $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Ladataan tafsiria $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir-lähde palautti HTTP $statusCode -virheen.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Valittu tafsir-lähde ei palauttanut merkintöjä.';

  @override
  String get bookmarks => 'Kirjanmerkit';

  @override
  String get addBookmark => 'Lisää kirjanmerkki';

  @override
  String get removeBookmark => 'Poista kirjanmerkki';

  @override
  String get lastRead => 'Viimeksi luettu';

  @override
  String get dailyZikr => 'Päivittäinen Zikr';

  @override
  String get duaMeaning1 =>
      'toiset rukoilevat: \"Herramme, anna meille hyvää tässä maailmassa ja tuonpuoleisessa ja varjele meitä tulen piinalta.\"';

  @override
  String get duaMeaning2 =>
      'Jumala ei kuormita ketään sielua enempää kuin se jaksaa kantaa: jokainen voittaa tekemänsä hyvän ja kärsii sen pahan - \'Herra, älä ota meitä tehtävään, jos unohdamme tai teemme virheitä. Herra, älä kuormita meitä niin kuin kuormitat niitä, jotka ennen meitä. Herra, älä kuormita meitä enempää kuin meillä on voimaa kantaa. Anna meille anteeksi, anna meille anteeksi ja armahda meitä. Sinä olet suojelijamme, joten auta meitä epäuskoisia vastaan.';

  @override
  String get duaMeaning3 =>
      '\"Herramme, älä anna sydämemme poiketa, kun olet opastanut meitä. Suo meille armosi: Sinä olet aina antava.';

  @override
  String get duaMeaning4 =>
      'Herra, anna minun ja jälkeläiseni jatkaa rukousta. Herramme, hyväksy pyyntöni.';

  @override
  String get duaMeaning5 =>
      'ja laske siipesi nöyrästi heitä kohtaan ystävällisyydessä ja sano: \'Herra, armahda heitä, niin kuin he pitivät minusta huolta, kun olin pieni.';

  @override
  String get duaMeaning6 =>
      'ylistetty olkoon Jumala, joka todella hallitsee. [Profeetta], älä kiirehdi lausumaan ennen kuin ilmoitus on täysin valmis, vaan sano: \'Herra, lisää minua tiedossani!\'';

  @override
  String get duaMeaning7 =>
      'Sano [profeetta]: \'Herra, anna anteeksi ja ole armollinen: Sinä olet armollisin kaikista.\'';

  @override
  String get duaMeaning8 =>
      'ne, jotka rukoilevat: \'Herra, anna meille iloa puolisoistamme ja jälkeläisistämme. Tee meistä hyviä esimerkkejä niille, jotka ovat tietoisia sinusta.';

  @override
  String get morningZikr => 'Huomenta Zikr';

  @override
  String get eveningZikr => 'Ilta Zikr';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masa\'il';

  @override
  String get hadith => 'Hadith';

  @override
  String get hadithCollection => 'Hadith-kokoelma';

  @override
  String get hadithBooks => 'Hadith kirjat';

  @override
  String get searchHadith => 'Etsi Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Allahin nimet';

  @override
  String get liveTv => 'Live-TV';

  @override
  String get watchLive => 'Katso suorana';

  @override
  String get streamError => 'Suoratoistovirhe';

  @override
  String get reload => 'Lataa uudelleen';

  @override
  String get openInYoutube => 'Avaa YouTubessa';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Paasto';

  @override
  String get quranReading => 'Koraanin lukeminen';

  @override
  String get prayers => 'Rukoukset';

  @override
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '${hours}h ${minutes}min';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '${minutes}kk';
  }

  @override
  String get prayerRemainingUnavailable => '--';

  @override
  String get dhikrCount => 'Dhikr Count';

  @override
  String get weeklyProgress => 'Viikoittainen edistyminen';

  @override
  String get monthlyProgress => 'Kuukauden edistyminen';

  @override
  String get statistics => 'Tilastot';

  @override
  String get hijriCalendar => 'Hijri kalenteri';

  @override
  String get gregorianCalendar => 'Gregoriaaninen kalenteri';

  @override
  String get today => 'Tänään';

  @override
  String get tomorrow => 'Huomenna';

  @override
  String get yesterday => 'Eilen';

  @override
  String get specialDays => 'Erikoispäivät';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid al-Adha';

  @override
  String get islamicNewYear => 'Islamilainen uusivuosi';

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
  String get qiblaDirection => 'Qibla suunta';

  @override
  String get compass => 'Kompassi';

  @override
  String get degrees => 'astetta';

  @override
  String get north => 'Pohjois';

  @override
  String get qiblaFound => 'Qibla löytyi!';

  @override
  String get turnDevice => 'Käännä laitteesi Qiblaa kohti';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Kompassivirhe: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Kompassin tunnistin ei ole käytettävissä tässä laitteessa.';

  @override
  String get qiblaLocationRequiredTitle => 'Qiblalle vaaditaan sijainti';

  @override
  String get qiblaLocationRequiredBody =>
      'Aseta todellinen sijaintisi ennen Qibla-kompassin käyttöä, jotta suunta voidaan laskea tarkasti.';

  @override
  String get adhanNotificationChannelName => 'Adhan-ilmoitukset';

  @override
  String get adhanNotificationChannelDescription =>
      'Rukousajan hälytykset adhan-äänellä.';

  @override
  String get notifications => 'Ilmoitukset';

  @override
  String get prayerNotifications => 'Rukousilmoitukset';

  @override
  String get enableNotifications => 'Ota ilmoitukset käyttöön';

  @override
  String get notificationTime => 'Ilmoitusaika';

  @override
  String get beforePrayer => 'minuuttia ennen rukousta';

  @override
  String get theme => 'Teema';

  @override
  String get lightMode => 'Valotila';

  @override
  String get darkMode => 'Tumma tila';

  @override
  String get systemTheme => 'Järjestelmän teema';

  @override
  String get about => 'Noin';

  @override
  String get version => 'Versio';

  @override
  String get privacyPolicy => 'Tietosuojakäytäntö';

  @override
  String get termsOfService => 'Palveluehdot';

  @override
  String get contactUs => 'Ota yhteyttä';

  @override
  String get rateApp => 'Arvioi sovellus';

  @override
  String get shareApp => 'Jaa sovellus';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Tutustu $appName: äärimmäisen islamilaisen elämäntavan sovellus! $url';
  }

  @override
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'Lataukset';

  @override
  String get downloading => 'Ladataan...';

  @override
  String get downloadComplete => 'Lataus valmis';

  @override
  String get downloadFailed => 'Lataus epäonnistui';

  @override
  String get offlineMode => 'Offline-tila';

  @override
  String get noInternet => 'Ei Internet-yhteyttä';

  @override
  String get checkConnection => 'Tarkista yhteys';

  @override
  String get premium => 'Premium';

  @override
  String get upgradeToPro => 'Päivitä Pro-versioon';

  @override
  String get proFeatures => 'Pro-ominaisuudet';

  @override
  String get removeAds => 'Poista mainokset';

  @override
  String get unlockAll => 'Avaa koko sisältö';

  @override
  String get exclusiveContent => 'Eksklusiivinen sisältö';

  @override
  String get welcome => 'Tervetuloa';

  @override
  String get getStarted => 'Aloita';

  @override
  String get skip => 'Ohita';

  @override
  String get next => 'Seuraavaksi';

  @override
  String get done => 'Tehty';

  @override
  String get onboarding1Title => 'Tervetuloa Allahin tielle';

  @override
  String get onboarding1Desc =>
      'Täydellinen islamilainen kumppanisovelluksesi rukousaikoihin, Koraaniin ja muuhun';

  @override
  String get onboarding2Title => 'Rukousajat';

  @override
  String get onboarding2Desc => 'Tarkat rukousajat sijaintisi perusteella';

  @override
  String get onboarding3Title => 'Koraani ja paljon muuta';

  @override
  String get onboarding3Desc =>
      'Lue Koraania, seuraa lukemistasi ja tutki islamilaista sisältöä';

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
  String get zikrCompletedMashAllah => 'Valmis! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah on paljon kaikkien epätäydellisyyksien yläpuolella.';

  @override
  String get zikrMeaningAlhamdulillah => 'Kaikki ylistys kuuluu Allahille.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah on Suurin.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Ei ole muuta jumalaa kuin Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Pyydän Allahin anteeksiantoa.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Ei ole voimaa eikä voimaa muuten kuin Allahin kautta.';

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
  String get offlineDownloadManager => 'Offline-latausten hallinta';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Vapauta laitteen sisäistä tallennustilaa.';

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
  String get audioVoice => 'Ääni Ääni';

  @override
  String get audioVoiceMisharyAlafasy => 'Mies (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Mies (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'mies (Sudais)';

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
  String get diagnosticsNotSet => 'Ei asetettu';

  @override
  String get diagnosticsPrayerProfile => 'Rukousprofiili';

  @override
  String get diagnosticsPrayerSource => 'Rukousviranomainen';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Mukautettu / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manuaaliset mukautetut kulmat (ei institutionaalista lähdettä)';

  @override
  String get diagnosticsCloudDriven => 'Pilvivetoinen';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'Käyttöliittymän ääniresurssit';

  @override
  String get diagnosticsQuranAudioAssets => 'Koraanin ääniomaisuus';

  @override
  String get diagnosticsAudioAssets => 'Ääniresurssit';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count tiedostot';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Luettelon luku epäonnistui: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Lokalisointipaikat';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count tuettu';
  }

  @override
  String get diagnosticsQuranDataset => 'Koraani tietojoukko';

  @override
  String get diagnosticsQuranSurahs => 'Koraanin suurat';

  @override
  String get diagnosticsQuranAyahs => 'Koraani Ayahs';

  @override
  String get diagnosticsQuranJuzMetadata => 'Koraani Juzin metatiedot';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Pilvitaulukot puuttuvat Supabasesta; niputettu varatoiminto aktiivinen';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Pilvitarkistus epäonnistui: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud Juz -metatiedot puuttuvat; niputettu rakennevaraus aktiivinen';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Pilvirakenteen tarkistus epäonnistui: $error';
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
  String get dailyVerse => 'Päivittäinen jae';

  @override
  String get todaysIbadah => 'Tämän päivän Ibadah';

  @override
  String get quickAccess => 'Nopea pääsy';

  @override
  String get assistant => 'Assistant';

  @override
  String get places => 'Paikat';

  @override
  String get library => 'Kirjasto';

  @override
  String get analytics => 'Analytics';

  @override
  String get dailyDuas => 'Päivittäinen Duas';

  @override
  String essentialDuas(String count) {
    return '$count välttämättömät duas';
  }

  @override
  String get duaUnavailableTitle =>
      'Vahvistetut duat eivät ole vielä saatavilla';

  @override
  String get duaUnavailableBody =>
      'Vahvistettuja päivittäisiä duaseja ei ole vielä synkronoitu tähän laitteeseen. Yhdistä pilvilähteeseen ladataksesi lähteen duas vahvistamattoman varaosan sijaan.';

  @override
  String get duaCategoryQuranic => 'Koraani dua';

  @override
  String get duaCategoryMorningEvening => 'Aamu & Ilta';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Suojaus';

  @override
  String get duaCategoryBeginning => 'Alkuja';

  @override
  String get duaCategorySleep => 'Nukkua';

  @override
  String get duaCategoryFoodDrink => 'Ruoka & Juoma';

  @override
  String get duaCategoryForgiveness => 'Anteeksianto';

  @override
  String get duaCategoryHome => 'Kotiin';

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
  String get islamicEducation => 'Islamilainen koulutus';

  @override
  String get sukunAudioTitle => 'Sukun äänimaisemat';

  @override
  String get hadithCollections => 'Hadith-kokoelmat';

  @override
  String get hadithSourcePending => 'Vahvistettu lähde odottaa';

  @override
  String get hadithUnavailableTitle =>
      'Vahvistetut hadith-kokoelmat eivät ole vielä saatavilla';

  @override
  String get hadithUnavailableBody =>
      'Tämä versio riippuu edelleen vahvistamattomasta ulkoisesta hadith-syötteestä. Hadith-selaus pysyy poissa käytöstä, kunnes lähdetietojoukko synkronoidaan.';

  @override
  String get paywallUnlockAll =>
      'Avaa kaikki ominaisuudet henkistä matkaasi varten';

  @override
  String get premiumProductUnavailable =>
      'Premium-tuotetta ei ole saatavilla juuri nyt. Yritä myöhemmin uudelleen.';

  @override
  String get premiumPurchaseFailed =>
      'Ostoa ei voitu suorittaa loppuun. Yritä uudelleen.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'Rajoittamaton AI-pohjainen Q&A';

  @override
  String get paywallFeature2Title => 'Rajoittamaton offline-tila';

  @override
  String get paywallFeature2Desc => 'Lataa kaikki lausunnot';

  @override
  String get paywallFeature3Title => 'Eksklusiiviset mallit';

  @override
  String get paywallFeature3Desc => 'Ensiluokkaiset teemat ja fontit';

  @override
  String get paywallFeature4Title => 'Ilman mainoksia';

  @override
  String get paywallFeature4Desc => 'Nolla mainoksia';

  @override
  String get paywallGetAccess =>
      'Hanki elinikäinen käyttöoikeus – 1,00 dollaria';

  @override
  String get restorePurchases => 'Palauta ostokset';

  @override
  String get zakatCalculator => 'Zakat-laskin';

  @override
  String get zakatGold => 'Kulta (Altın)';

  @override
  String get zakatSilver => 'Hopea (Gümüş)';

  @override
  String get zakatCashBank => 'Käteinen / Pankki';

  @override
  String get zakatBusiness => 'Liiketoimintaa';

  @override
  String get zakatInvestments => 'Investoinnit';

  @override
  String get zakatWeightGrams => 'Paino (g)';

  @override
  String get zakatPricePerGram => 'Hinta/g';

  @override
  String get zakatTotalAmount => 'Kokonaismäärä';

  @override
  String get zakatInventoryValue => 'Varaston arvo';

  @override
  String get zakatDebts => 'Velat';

  @override
  String get zakatTotal => 'Kokonais';

  @override
  String get calculateZakat => 'Laske Zakat';

  @override
  String get nisabNotReached =>
      'Nisabia ei tavoitettu. Zakat ei ole pakollinen.';

  @override
  String get totalZakat => 'Zakat yhteensä';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Omaisuus: $assets';
  }

  @override
  String get zakatGoldZakat => 'Kultainen Zakat';

  @override
  String get zakatSilverZakat => 'Hopeinen Zakat';

  @override
  String get zakatCashZakat => 'Cash Zakat';

  @override
  String get zakatBusinessZakat => 'Liiketoiminta Zakat';

  @override
  String get zakatInvestmentZakat => 'Sijoitus Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! Olen islamilainen avustajasi. Kysy minulta rukouksesta, paastoamisesta, zakatista tai mistä tahansa islamilaisesta aiheesta.';

  @override
  String get chatbotLimitReached =>
      'Päivittäinen kyselyraja saavutettu. Päivitä Premiumiin rajattomasti.';

  @override
  String get chatbotErrorMsg => 'En voinut luoda vastausta. Yritä uudelleen.';

  @override
  String get chatbotOfflinePrompt =>
      'Vahvistettua offline-islamilaista tietopohjaa kuratoidaan edelleen. Voit ottaa offline-varan nyt käyttöön, mutta se näyttää vain rajoitettuja turvaviestejä, kunnes lähdetietojoukko on valmis.\n\nHaluatko ottaa offline-varan käyttöön?';

  @override
  String get chatbotOfflineSwitched =>
      'Offline-varavaraus käytössä. Vahvistetut paikalliset islamilaiset vastaukset eivät ole vielä valmiita.';

  @override
  String get chatbotOfflineDownloadLabel => 'Ota offline-varaus käyttöön';

  @override
  String get downloadPreparing => 'Valmistellaan latausta...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Ladataan suuraa $surah / $total';
  }

  @override
  String get downloadCompleted => 'Kaikki tälle lausujalle jo ladatut suurat.';

  @override
  String get offlineQuranAudioPacks => 'Offline-koraanin äänipaketit';

  @override
  String storedOnDeviceMb(String size) {
    return 'Tallennettu laitteelle: $size Mt';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total suuraa ladattu';
  }

  @override
  String get redownloadMissingRepair => 'Korjaus/lataus puuttuu';

  @override
  String get downloadAction => 'Lataa';

  @override
  String get resumeDownload => 'Jatka latausta';

  @override
  String get deleteDownloadedFiles => 'Poista ladatut tiedostot';

  @override
  String get downloadCancelling => 'Peruutetaan...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Lataus peruttu kohteelle $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Lataus valmis kohteelle $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Lataus valmis kohteelle $reciter $failed epäonnistuneilla suurailla ($downloaded/$total ladattu).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Poistetut offline-tiedostot kohteelle $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Vahvistetut Koraanin äänilähteet eivät ole tällä hetkellä saatavilla.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Vahvistettu Koraanin äänipaketti on epätäydellinen ($available/$total). Päivitä pilven siemen ja yritä uudelleen.';
  }

  @override
  String get chatbotHint => 'Esitä kysymys...';

  @override
  String get chatbotThinking => 'Mieti...';

  @override
  String get sukunMixerSubtitle => 'Luonto & Koraani -sekoitin';

  @override
  String get audioPlayFailed => 'Äänen toisto epäonnistui';

  @override
  String get sukunNatureLabel => 'Sukun (luonto)';

  @override
  String get sukunRainOfMercy => 'Armon sade';

  @override
  String get sukunGardenOfPeace => 'Rauhan puutarha';

  @override
  String get sukunMidnightCalm => 'Keskiyön rauhallinen';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Äänimaisemat eivät ole käytettävissä';

  @override
  String get sukunUnavailableBody =>
      'Tämä versio ei vielä sisällä vaadittuja Sukun-äänimaailman resursseja.';

  @override
  String get prayerCompletion => 'Rukouksen loppuun saattaminen';

  @override
  String get streaks => 'Viivoja';

  @override
  String get dayStreak => 'Päivän sarja';

  @override
  String get bestStreak => 'Paras putki';

  @override
  String get chatbotCloudAiLabel => 'Pilvi AI';

  @override
  String get chatbotLocalAiLabel => 'Offline-varaus';

  @override
  String get chatbotUseCloudAi => 'Käytä Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Ota offline-varaus käyttöön';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count lähti';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Pilvisovellusliittymää ei ole määritetty. Vahvistettu offline-islamilainen opastus ei ole vielä saatavilla.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Vahvistettu paikallinen islamilainen opastus ei ole vielä saatavilla. Vaihda Cloud AI -palveluun saadaksesi lähteitä vastauksia.';

  @override
  String get mosques => 'Moskeijat';

  @override
  String get halalFood => 'Halal Ruokaa';

  @override
  String get placesSearchArea => 'Hae tältä alueelta';

  @override
  String get nearbyMosques => 'Läheiset moskeijat';

  @override
  String get islamicSchools => 'Islamilaiset koulut';

  @override
  String placesFoundCount(String count) {
    return '$count löydetty';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km päässä';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API-virhe: $statusCode';
  }

  @override
  String get placesNetworkError => 'Verkkovirhe. Yritä uudelleen.';

  @override
  String get placesLocationRequiredTitle => 'Paikka vaaditaan';

  @override
  String get placesLocationRequiredBody =>
      'Aseta ensin sijainti, jotta lähellä olevat moskeijat, halal-ruoat ja islamilaiset koulut voidaan etsiä tarkasti.';

  @override
  String get placesMapTilesUnavailableTitle =>
      'Karttaruutuja ei ole saatavilla';

  @override
  String get placesMapTilesUnavailableBody =>
      'Vahvistettua karttaruutulähdettä ei ole vielä määritetty tälle koontiversiolle. Läheiset paikat voivat silti ladata tallennetusta sijainnistasi.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'Paikkatiedot eivät ole käytettävissä';

  @override
  String get placesDataSourceUnavailableBody =>
      'Vahvistettua paikkatietojen päätepistettä ei ole vielä määritetty tälle koontiversiolle. Aseta PLACES_OVERPASS_API_URL hyväksytylle välityspalvelimelle tai palveluntarjoajalle ennen kuin otat lähihaun käyttöön.';

  @override
  String get unknownPlaceName => 'Tuntematon nimi';

  @override
  String get islamicPlaceFallback => 'Islamilainen paikka';

  @override
  String get asmaMeaning1 => 'Hyväntekijä';

  @override
  String get asmaMeaning2 => 'Armollinen';

  @override
  String get asmaMeaning3 => 'Kuningas / Ikuinen Herra';

  @override
  String get asmaMeaning4 => 'Pyhin';

  @override
  String get asmaMeaning5 => 'Rauhan lähde';

  @override
  String get asmaMeaning6 => 'Turvan antaja';

  @override
  String get asmaMeaning7 => 'The Guardian';

  @override
  String get asmaMeaning8 => 'Kallein / mahtavin';

  @override
  String get asmaMeaning9 => 'The Compeller';

  @override
  String get asmaMeaning10 => 'Suurin';

  @override
  String get asmaMeaning11 => 'Luoja';

  @override
  String get asmaMeaning12 => 'Tilauksen tekijä';

  @override
  String get asmaMeaning13 => 'The Shaper of Beauty';

  @override
  String get asmaMeaning14 => 'Anteeksiantava';

  @override
  String get asmaMeaning15 => 'The Subduer';

  @override
  String get asmaMeaning16 => 'Kaiken antaja';

  @override
  String get asmaMeaning17 => 'The Sustainer';

  @override
  String get asmaMeaning18 => 'Avaaja';

  @override
  String get asmaMeaning19 => 'Kaiken tietäjä';

  @override
  String get asmaMeaning20 => 'The Constrictor';

  @override
  String get asmaMeaning21 => 'Kehittäjä';

  @override
  String get asmaMeaning22 => 'Abaser';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'Kunnialahjoittaja';

  @override
  String get asmaMeaning25 => 'Nöyryyttäjä';

  @override
  String get asmaMeaning26 => 'Kaikkien kuulija';

  @override
  String get asmaMeaning27 => 'Kaikkien näkijä';

  @override
  String get asmaMeaning28 => 'Tuomari';

  @override
  String get asmaMeaning29 => 'Oikeudenmukainen';

  @override
  String get asmaMeaning30 => 'Hieno';

  @override
  String get asmaMeaning31 => 'Aware';

  @override
  String get asmaMeaning32 => 'Etukäteen';

  @override
  String get asmaMeaning33 => 'Upea';

  @override
  String get asmaMeaning34 => 'Suuri anteeksiantaja';

  @override
  String get asmaMeaning35 => 'Kiitollisuuden palkitseja';

  @override
  String get asmaMeaning36 => 'Korkein';

  @override
  String get asmaMeaning37 => 'Suurin';

  @override
  String get asmaMeaning38 => 'Säilyttäjä';

  @override
  String get asmaMeaning39 => 'Ravitseja';

  @override
  String get asmaMeaning40 => 'Rekonner';

  @override
  String get asmaMeaning41 => 'Majestic';

  @override
  String get asmaMeaning42 => 'Antelias';

  @override
  String get asmaMeaning43 => 'Valvoja';

  @override
  String get asmaMeaning44 => 'Rukousvastaaja';

  @override
  String get asmaMeaning45 => 'Kaikkia ymmärtävä';

  @override
  String get asmaMeaning46 => 'Täydellisen viisas';

  @override
  String get asmaMeaning47 => 'Rakastava';

  @override
  String get asmaMeaning48 => 'Loistavin';

  @override
  String get asmaMeaning49 => 'The Resurrector';

  @override
  String get asmaMeaning50 => 'Todistaja';

  @override
  String get asmaMeaning51 => 'Totuus';

  @override
  String get asmaMeaning52 => 'Kaikki riittävä toimitsijamies';

  @override
  String get asmaMeaning53 => 'Kaiken voiman haltija';

  @override
  String get asmaMeaning54 => 'voimakas';

  @override
  String get asmaMeaning55 => 'Suojelija';

  @override
  String get asmaMeaning56 => 'Kiitetty';

  @override
  String get asmaMeaning57 => 'Arvioija';

  @override
  String get asmaMeaning58 => 'Alkuperäinen';

  @override
  String get asmaMeaning59 => 'Restorer';

  @override
  String get asmaMeaning60 => 'Elämänantaja';

  @override
  String get asmaMeaning61 => 'Elämän ottaja';

  @override
  String get asmaMeaning62 => 'Ever Living';

  @override
  String get asmaMeaning63 => 'Oma toimeentulon ylläpitäjä';

  @override
  String get asmaMeaning64 => 'Finder';

  @override
  String get asmaMeaning65 => 'The Glorious';

  @override
  String get asmaMeaning66 => 'Ainoa';

  @override
  String get asmaMeaning67 => 'Yksi';

  @override
  String get asmaMeaning68 => 'Kaikkien etsimä';

  @override
  String get asmaMeaning69 => 'Tehokas';

  @override
  String get asmaMeaning70 => 'Kaiken voiman Luoja';

  @override
  String get asmaMeaning71 => 'Expediter';

  @override
  String get asmaMeaning72 => 'Viive';

  @override
  String get asmaMeaning73 => 'Ensimmäinen';

  @override
  String get asmaMeaning74 => 'Viimeinen';

  @override
  String get asmaMeaning75 => 'Manifesti';

  @override
  String get asmaMeaning76 => 'Piilotettu';

  @override
  String get asmaMeaning77 => 'Kuvernööri';

  @override
  String get asmaMeaning78 => 'Korkein';

  @override
  String get asmaMeaning79 => 'Hyvän tekijä';

  @override
  String get asmaMeaning80 => 'Parannuksen opas';

  @override
  String get asmaMeaning81 => 'Kostaja';

  @override
  String get asmaMeaning82 => 'Anteeksiantaja';

  @override
  String get asmaMeaning83 => 'Klementti';

  @override
  String get asmaMeaning84 => 'Kaikkien Omistaja / Suvereeni';

  @override
  String get asmaMeaning85 => 'Majesteetin ja Bountyn haltija';

  @override
  String get asmaMeaning86 => 'Equitable One';

  @override
  String get asmaMeaning87 => 'Kerääjä';

  @override
  String get asmaMeaning88 => 'Rikas';

  @override
  String get asmaMeaning89 => 'rikastaja';

  @override
  String get asmaMeaning90 => 'Haittojen ehkäisy';

  @override
  String get asmaMeaning91 => 'Haittojen tuoja';

  @override
  String get asmaMeaning92 => 'Etujen lahjoittaja';

  @override
  String get asmaMeaning93 => 'Valo';

  @override
  String get asmaMeaning94 => 'Opas';

  @override
  String get asmaMeaning95 => 'Alkuperäinen';

  @override
  String get asmaMeaning96 => 'Ikuinen';

  @override
  String get asmaMeaning97 => 'Perijä';

  @override
  String get asmaMeaning98 => 'Oikein opas';

  @override
  String get asmaMeaning99 => 'Potilas yksi';
}
