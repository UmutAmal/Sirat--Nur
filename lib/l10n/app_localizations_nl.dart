// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Islamitische Weg van Licht';

  @override
  String get home => 'Thuis';

  @override
  String get quran => 'Koran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Dhikr';

  @override
  String get calendar => 'Kalender';

  @override
  String get settings => 'Instellingen';

  @override
  String get nextPrayer => 'Volgende gebed';

  @override
  String get prayerTimes => 'Gebedstijden';

  @override
  String get continueReading => 'Ga door met lezen';

  @override
  String get getLifetimePro => 'Koop Lifetime Pro';

  @override
  String get unlockTajweed => 'Ontgrendel Tajweed en geavanceerde functies';

  @override
  String get prayerCalculation => 'Gebedsberekening';

  @override
  String get method => 'Berekeningsmethode';

  @override
  String get madhab => 'Asr Juridische Methode';

  @override
  String get surahs => 'Soera\'s';

  @override
  String get ayahs => 'Ayah\'s';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Zonsopgang';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Maghreb';

  @override
  String get isha => 'Isja';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Tijd voor $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Het is tijd om $prayerName te bidden.';
  }

  @override
  String get dataStorage => 'Gegevens en opslag';

  @override
  String get clearCache => 'Cache wissen';

  @override
  String get cacheClearedSuccess => 'Cache is succesvol gewist';

  @override
  String get location => 'Locatie';

  @override
  String get language => 'Taal';

  @override
  String get selectLanguage => 'Selecteer Taal';

  @override
  String get searchLanguage => 'Zoek in meer dan 180 talen...';

  @override
  String get systemDefault => 'Systeemstandaard';

  @override
  String get currentLocation => 'Huidige locatie (GPS)';

  @override
  String get locationServiceDisabled => 'Locatieservice is uitgeschakeld.';

  @override
  String get locationPermissionDenied => 'Locatietoestemming geweigerd.';

  @override
  String get locationDetectionFailed =>
      'Kan uw locatie niet detecteren. Kies handmatig een stad of probeer het opnieuw.';

  @override
  String citiesCount(String count) {
    return '$count steden';
  }

  @override
  String get search => 'Zoekopdracht';

  @override
  String get searchHint => 'Zoekopdracht...';

  @override
  String get noResults => 'Geen resultaten gevonden';

  @override
  String get loading => 'Laden...';

  @override
  String get error => 'Fout';

  @override
  String get appErrorOccurred => 'Er is een fout opgetreden';

  @override
  String get appUnknownError => 'Onbekende fout';

  @override
  String get quranLoadFailed =>
      'Koraninhoud kon niet worden geladen. Probeer het opnieuw.';

  @override
  String get retry => 'Opnieuw proberen';

  @override
  String get refreshAction => 'Vernieuwen';

  @override
  String get cancel => 'Annuleren';

  @override
  String get save => 'Redden';

  @override
  String get delete => 'Verwijderen';

  @override
  String get edit => 'Bewerking';

  @override
  String get close => 'Dichtbij';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Nee';

  @override
  String get surah => 'Soera';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Pagina';

  @override
  String get reading => 'Lezing';

  @override
  String get recitation => 'Recitatie';

  @override
  String get translation => 'Vertaling';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Tafsir laden...';

  @override
  String get tafsirSourceLabel => 'Tafsir-bron';

  @override
  String get tafsirNoSurahFound => 'Geen tafsir gevonden voor deze soera.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Geen tafsir gevonden voor ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir kan niet worden geladen.';

  @override
  String get tafsirNoTextForAyah => 'Geen tafsir-tekst voor deze ayah.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Tafsir downloaden $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Tafsir laden $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'De Tafsir-bron heeft een HTTP $statusCode-fout geretourneerd.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'De geselecteerde tafsirbron heeft geen gegevens geretourneerd.';

  @override
  String get tafsirCacheUnavailable =>
      'Geverifieerde tafsir is nog niet offline beschikbaar. Synchroniseer een afkomstige tafsir-dataset voordat u gaat browsen.';

  @override
  String get bookmarks => 'Bladwijzers';

  @override
  String get addBookmark => 'Voeg bladwijzer toe';

  @override
  String get removeBookmark => 'Bladwijzer verwijderen';

  @override
  String get lastRead => 'Laatst gelezen';

  @override
  String get dailyZikr => 'Dagelijkse Zikr';

  @override
  String get duaMeaning1 =>
      'Anderen bidden: ‘Onze Heer, geef ons het goede in deze wereld en in het Hiernamaals, en bescherm ons tegen de kwelling van het Vuur.’';

  @override
  String get duaMeaning2 =>
      'God belast geen enkele ziel met meer dan zij kan dragen: ieder verkrijgt al het goede dat hij heeft gedaan, en lijdt onder zijn slechte daden. ‘Heer, reken ons niet aan als we vergeten of fouten maken. Heer, belast ons niet zoals U degenen vóór ons belastte. Heer, belast ons niet met meer dan we kracht hebben om te dragen. Vergeef ons, vergeef ons en heb medelijden met ons. Jij bent onze Beschermer, dus help ons tegen de ongelovigen.’';

  @override
  String get duaMeaning3 =>
      '‘Onze Heer, laat ons hart niet afwijken nadat U ons heeft geleid. Schenk ons ​​Uw genade: U bent de Altijd Gevende.';

  @override
  String get duaMeaning4 =>
      'Heer, geef dat ik en mijn nakomelingen het gebed mogen voortzetten. Onze Heer, accepteer mijn verzoek.';

  @override
  String get duaMeaning5 =>
      'en laat uw vleugel in nederigheid en vriendelijkheid naar hen neerslaan en zeg: ‘Heer, heb medelijden met hen, net zoals zij voor mij zorgden toen ik klein was.’';

  @override
  String get duaMeaning6 =>
      'Verheven zij God, degene die werkelijk de controle heeft. [Profeet], haast je niet om te reciteren voordat de openbaring volledig voltooid is, maar zeg: ‘Heer, vermeerder mij in kennis!’';

  @override
  String get duaMeaning7 =>
      'Zeg [Profeet]: ‘Heer, vergeef en heb genade: U bent de meest barmhartige van allemaal.’';

  @override
  String get duaMeaning8 =>
      'degenen die bidden: ‘Onze Heer, schenk ons ​​vreugde in onze echtgenoten en nakomelingen. Maak ons ​​goede voorbeelden voor degenen die zich van U bewust zijn’.';

  @override
  String get morningZikr => 'Ochtend Zikr';

  @override
  String get eveningZikr => 'Avond Zikr';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masaïl';

  @override
  String get hadith => 'Hadith';

  @override
  String get hadithCollection => 'Hadith-collectie';

  @override
  String get hadithBooks => 'Hadith-boeken';

  @override
  String get searchHadith => 'Zoek Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Namen van Allah';

  @override
  String get liveTv => 'Live-tv';

  @override
  String get watchLive => 'Kijk live';

  @override
  String get streamError => 'Streamfout';

  @override
  String get reload => 'Herladen';

  @override
  String get openInYoutube => 'Openen op YouTube';

  @override
  String get ibadahTracker => 'Ibadah-tracker';

  @override
  String get fasting => 'Vasten';

  @override
  String get quranReading => 'Koran lezen';

  @override
  String get prayers => 'Gebeden';

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
  String get dhikrCount => 'Dhikr-graaf';

  @override
  String get weeklyProgress => 'Wekelijkse voortgang';

  @override
  String get monthlyProgress => 'Maandelijkse voortgang';

  @override
  String get statistics => 'Statistieken';

  @override
  String get hijriCalendar => 'Hijri-kalender';

  @override
  String get gregorianCalendar => 'Gregoriaanse kalender';

  @override
  String get today => 'Vandaag';

  @override
  String get tomorrow => 'Morgen';

  @override
  String get yesterday => 'Gisteren';

  @override
  String get specialDays => 'Speciale dagen';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Islamitisch Nieuwjaar';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadan';

  @override
  String get specialDayDateEidAlFitr => '1 Shawwal';

  @override
  String get specialDayDateEidAlAdha => '10 Dhoel Hijjah';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharram';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabi al-Awwal';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'Qibla-richting';

  @override
  String get compass => 'Kompas';

  @override
  String get degrees => 'graden';

  @override
  String get north => 'Noorden';

  @override
  String get qiblaFound => 'Qibla gevonden!';

  @override
  String get turnDevice => 'Draai uw apparaat naar de Qibla gericht';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Kompasfout: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Kompassensor is niet beschikbaar op dit apparaat.';

  @override
  String get qiblaLocationRequiredTitle => 'Locatie vereist voor Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Stel uw werkelijke locatie in voordat u het Qibla-kompas gebruikt, zodat de richting nauwkeurig kan worden berekend.';

  @override
  String get adhanNotificationChannelName => 'Adhan-meldingen';

  @override
  String get adhanNotificationChannelDescription =>
      'Gebedstijdwaarschuwingen met adhan-geluid.';

  @override
  String get notifications => 'Meldingen';

  @override
  String get prayerNotifications => 'Gebedsmeldingen';

  @override
  String get enableNotifications => 'Meldingen inschakelen';

  @override
  String get notificationTime => 'Meldingstijd';

  @override
  String get beforePrayer => 'minuten voor het gebed';

  @override
  String get theme => 'Thema';

  @override
  String get lightMode => 'Lichtmodus';

  @override
  String get darkMode => 'Donkere modus';

  @override
  String get systemTheme => 'Systeem Thema';

  @override
  String get about => 'Over';

  @override
  String get version => 'Versie';

  @override
  String get privacyPolicy => 'Privacybeleid';

  @override
  String get termsOfService => 'Servicevoorwaarden';

  @override
  String get contactUs => 'Neem contact met ons op';

  @override
  String get rateApp => 'Beoordeel app';

  @override
  String get shareApp => 'Deel app';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Bekijk $appName: de ultieme app voor islamitische levensstijl! $url';
  }

  @override
  String get downloadManager => 'Beheerder downloaden';

  @override
  String get downloads => 'Gedownloade bestanden';

  @override
  String get downloading => 'Downloaden...';

  @override
  String get downloadComplete => 'Downloaden voltooid';

  @override
  String get downloadFailed => 'Downloaden mislukt';

  @override
  String get offlineMode => 'Offline-modus';

  @override
  String get noInternet => 'Geen internetverbinding';

  @override
  String get checkConnection => 'Controleer uw verbinding';

  @override
  String get premium => 'Premie';

  @override
  String get upgradeToPro => 'Upgrade naar Pro';

  @override
  String get proFeatures => 'Pro-functies';

  @override
  String get removeAds => 'Advertenties verwijderen';

  @override
  String get unlockAll => 'Ontgrendel alle inhoud';

  @override
  String get exclusiveContent => 'Exclusieve inhoud';

  @override
  String get welcome => 'Welkom';

  @override
  String get getStarted => 'Aan de slag';

  @override
  String get skip => 'Overslaan';

  @override
  String get next => 'Volgende';

  @override
  String get done => 'Klaar';

  @override
  String get onboarding1Title => 'Welkom bij de Weg van Allah';

  @override
  String get onboarding1Desc =>
      'Uw complete islamitische begeleidende app voor gebedstijden, koran en meer';

  @override
  String get onboarding2Title => 'Gebedstijden';

  @override
  String get onboarding2Desc =>
      'Nauwkeurige gebedstijden op basis van uw locatie';

  @override
  String get onboarding3Title => 'Koran en meer';

  @override
  String get onboarding3Desc =>
      'Lees de Koran, houd uw lezing bij en verken islamitische inhoud';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'Teller opnieuw instellen';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'Doelaantal: $target';
  }

  @override
  String get tapToCount => 'Tik om te tellen';

  @override
  String get zikrCompletedMashAllah => 'Voltooid! MasAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah is ver boven elke onvolmaaktheid.';

  @override
  String get zikrMeaningAlhamdulillah => 'Alle lof behoort aan Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah is de Grootste.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Er is geen god dan Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Ik zoek de vergiffenis van Allah.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Er is geen macht en geen kracht behalve door Allah.';

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
  String get dailyProgress => 'Dagelijkse vooruitgang';

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
  String get recheckPremium =>
      'Controleer de status van het premiumabonnement opnieuw';

  @override
  String get syncStore =>
      'Synchroniseer met de app store om uw premiumabonnement te bevestigen.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'Premium-abonnement geverifieerd.';

  @override
  String get premiumNotFound => 'Premium-abonnement niet gevonden.';

  @override
  String premiumRefreshError(Object error) {
    return 'Kan premium-abonnementsstatus niet vernieuwen: $error';
  }

  @override
  String get offlineDownloadManager => 'Offline downloadbeheer';

  @override
  String get manageDatasets =>
      'Beheer enorme offline audio- en datasetpakketten.';

  @override
  String get freeStorage => 'Maak interne apparaatopslag vrij.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'De korandatabase controleren...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'Status Korandatabase';

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
  String get audioVoice => 'Audio-stem';

  @override
  String get audioVoiceMisharyAlafasy => 'Man (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Man (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Man (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Qibla-kalibratie';

  @override
  String get compassSmoothing => 'Kompasvereffening';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Kalibratie-offset';

  @override
  String currentOffset(Object offset) {
    return 'Huidig: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Pas aan als uw kompas een handmatige correctie nodig heeft. Positieve waarden draaien met de klok mee.';

  @override
  String get apply => 'Wijzigingen toepassen';

  @override
  String get resetOnboarding => 'Intro-instellingen resetten';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Diagnostiek';

  @override
  String get diagnosticsNotSet => 'Niet ingesteld';

  @override
  String get diagnosticsPrayerProfile => 'Gebedsprofiel';

  @override
  String get diagnosticsPrayerSource => 'Gebedsautoriteit';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Aangepast / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Handmatig aangepaste hoeken (geen institutionele bron)';

  @override
  String get diagnosticsCloudDriven => 'Cloudgedreven';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan audio-items';

  @override
  String get diagnosticsUiAudioAssets => 'UI-audiomiddelen';

  @override
  String get diagnosticsQuranAudioAssets => 'Koran audio-items';

  @override
  String get diagnosticsAudioAssets => 'Audio-items';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count bestanden';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifest lezen mislukt: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Lokalisatie Landinstellingen';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count ondersteund';
  }

  @override
  String get diagnosticsQuranDataset => 'Koran-gegevensset';

  @override
  String get diagnosticsQuranSurahs => 'Koran soera\'s';

  @override
  String get diagnosticsQuranAyahs => 'Koran Ayah\'s';

  @override
  String get diagnosticsQuranJuzMetadata => 'Koran Juz-metagegevens';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Cloudtabellen ontbreken in Supabase; gebundelde fallback actief';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloudcontrole mislukt: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz-metagegevens ontbreken; gebundelde structurele fallback actief';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Structurele cloudcontrole mislukt: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Kalibratie vereist. Draai het apparaat in figuur 8.';

  @override
  String get dailyVerse => 'Dagelijks vers';

  @override
  String get dailyVerseUnavailableTitle => 'Dagelijks vers niet beschikbaar';

  @override
  String get dailyVerseUnavailableBody =>
      'Geverifieerde dagelijkse versinhoud is nog niet geconfigureerd voor deze build. Maak verbinding met de cloudbron of synchroniseer een geverifieerde cache voordat u gaat browsen.';

  @override
  String get todaysIbadah => 'Vandaag Ibadah';

  @override
  String get quickAccess => 'Snelle toegang';

  @override
  String get assistant => 'Assistent';

  @override
  String get places => 'Plaatsen';

  @override
  String get library => 'Bibliotheek';

  @override
  String get analytics => 'Analyses';

  @override
  String get dailyDuas => 'Dagelijkse Dua\'s';

  @override
  String essentialDuas(String count) {
    return '$count essentiële dua\'s';
  }

  @override
  String get duaUnavailableTitle =>
      'Er zijn nog geen geverifieerde dua\'s beschikbaar';

  @override
  String get duaUnavailableBody =>
      'Geverifieerde dagelijkse dua\'s zijn nog niet met dit apparaat gesynchroniseerd. Maak verbinding met de cloudbron om afkomstige dua\'s te laden in plaats van een niet-geverifieerde terugval.';

  @override
  String get duaCategoryQuranic => 'Koranische dua';

  @override
  String get duaCategoryMorningEvening => 'Ochtend & Avond';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Bescherming';

  @override
  String get duaCategoryBeginning => 'Begin';

  @override
  String get duaCategorySleep => 'Slaap';

  @override
  String get duaCategoryFoodDrink => 'Eten en drinken';

  @override
  String get duaCategoryForgiveness => 'Vergiffenis';

  @override
  String get duaCategoryHome => 'Thuis';

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
  String get islamicEducation => 'Islamitisch onderwijs';

  @override
  String get sukunAudioTitle => 'Sukun-geluidslandschappen';

  @override
  String get hadithCollections => 'Hadith-collecties';

  @override
  String get hadithSourcePending => 'Geverifieerde bron in behandeling';

  @override
  String get hadithUnavailableTitle =>
      'Geverifieerde hadith-collecties zijn nog niet beschikbaar';

  @override
  String get hadithUnavailableBody =>
      'Deze build is nog steeds afhankelijk van een niet-geverifieerde externe hadith-feed. Het bladeren door Hadith blijft uitgeschakeld totdat een afkomstige dataset is gesynchroniseerd.';

  @override
  String get paywallUnlockAll =>
      'Ontgrendel alle functies voor je spirituele reis';

  @override
  String get premiumProductUnavailable =>
      'Premiumproduct is momenteel niet beschikbaar. Probeer het later opnieuw.';

  @override
  String get premiumPurchaseFailed =>
      'Aankoop kon niet worden voltooid. Probeer het opnieuw.';

  @override
  String get paywallFeature1Title => 'Neurale Assistent Plus';

  @override
  String get paywallFeature1Desc =>
      'Onbeperkte, door AI aangedreven vraag-en-antwoordsessies';

  @override
  String get paywallFeature2Title => 'Onbeperkt offline';

  @override
  String get paywallFeature2Desc => 'Download alle recitaties';

  @override
  String get paywallFeature3Title => 'Exclusieve ontwerpen';

  @override
  String get paywallFeature3Desc => 'Premium-thema\'s en lettertypen';

  @override
  String get paywallFeature4Title => 'Advertentievrij';

  @override
  String get paywallFeature4Desc => 'Nul advertenties';

  @override
  String get paywallGetAccess => 'Krijg levenslange toegang – \$ 1,00';

  @override
  String get restorePurchases => 'Aankopen herstellen';

  @override
  String get zakatCalculator => 'Zakat-calculator';

  @override
  String get zakatGold => 'Goud (Altin)';

  @override
  String get zakatSilver => 'Zilver (Gümüş)';

  @override
  String get zakatCashBank => 'Contant / Bank';

  @override
  String get zakatBusiness => 'Bedrijf';

  @override
  String get zakatInvestments => 'Investeringen';

  @override
  String get zakatWeightGrams => 'Gewicht (g)';

  @override
  String get zakatPricePerGram => 'Prijs/g';

  @override
  String get zakatTotalAmount => 'Totaal bedrag';

  @override
  String get zakatInventoryValue => 'Voorraadwaarde';

  @override
  String get zakatDebts => 'Schulden';

  @override
  String get zakatTotal => 'Totaal';

  @override
  String get calculateZakat => 'Bereken Zakaat';

  @override
  String get nisabNotReached => 'Nisab niet bereikt. Zakaat is niet verplicht.';

  @override
  String get totalZakat => 'Totaal zakaat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Activa: $assets';
  }

  @override
  String get zakatGoldZakat => 'Gouden zakaat';

  @override
  String get zakatSilverZakat => 'Zilveren zakaat';

  @override
  String get zakatCashZakat => 'Contante zakaat';

  @override
  String get zakatBusinessZakat => 'Zakelijke zakaat';

  @override
  String get zakatInvestmentZakat => 'Investeringszakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! Ik ben je islamitische assistent. Vraag me over gebed, vasten, zakaat of welk islamitisch onderwerp dan ook.';

  @override
  String get chatbotLimitReached =>
      'Dagelijkse zoekopdrachtlimiet bereikt. Upgrade onbeperkt naar Premium.';

  @override
  String get chatbotErrorMsg =>
      'Ik kon geen reactie genereren. Probeer het opnieuw.';

  @override
  String get chatbotOfflinePrompt =>
      'De geverifieerde offline islamitische kennisbank wordt nog steeds samengesteld. U kunt nu offline fallback inschakelen, maar er worden slechts beperkte veilige berichten weergegeven totdat de afkomstige dataset gereed is.\n\nWilt u offline fallback inschakelen?';

  @override
  String get chatbotOfflineSwitched =>
      'Offline fallback ingeschakeld. Geverifieerde lokale islamitische antwoorden zijn nog niet klaar.';

  @override
  String get chatbotOfflineDownloadLabel => 'Schakel offline terugval in';

  @override
  String get downloadPreparing => 'Downloaden voorbereiden...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Soera $surah / $total downloaden';
  }

  @override
  String get downloadCompleted =>
      'Alle soera\'s zijn al gedownload voor deze voordrager.';

  @override
  String get offlineQuranAudioPacks => 'Offline Koran-audiopakketten';

  @override
  String storedOnDeviceMb(String size) {
    return 'Opgeslagen op apparaat: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total soera\'s gedownload';
  }

  @override
  String get redownloadMissingRepair => 'Reparatie/download ontbreekt';

  @override
  String get downloadAction => 'Downloaden';

  @override
  String get resumeDownload => 'Ga door met downloaden';

  @override
  String get deleteDownloadedFiles => 'Verwijder gedownloade bestanden';

  @override
  String get downloadCancelling => 'Annuleren...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Download geannuleerd voor $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Download voltooid voor $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Download voltooid voor $reciter met $failed mislukte soera\'s ($downloaded/$total gedownload).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Offline bestanden verwijderd voor $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Geverifieerde Koran-audiobronnen zijn momenteel niet beschikbaar.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Het geverifieerde Koran-audiopakket is onvolledig ($available/$total). Probeer het opnieuw nadat de audiocatalogus is bijgewerkt.';
  }

  @override
  String get chatbotHint => 'Stel een vraag...';

  @override
  String get chatbotThinking => 'Denken...';

  @override
  String get sukunMixerSubtitle => 'Natuur & Koran Mixer';

  @override
  String get audioPlayFailed => 'Het afspelen van audio is mislukt';

  @override
  String get sukunNatureLabel => 'Sukun (Natuur)';

  @override
  String get sukunRainOfMercy => 'Regen van genade';

  @override
  String get sukunGardenOfPeace => 'Tuin van de Vrede';

  @override
  String get sukunMidnightCalm => 'Middernacht kalm';

  @override
  String get sukunOceanTawheed => 'Oceaan Tawhied';

  @override
  String get sukunUnavailableTitle =>
      'Geluidslandschappen zijn niet beschikbaar';

  @override
  String get sukunUnavailableBody =>
      'Deze build bevat nog niet de vereiste Sukun-soundscape-items.';

  @override
  String get prayerCompletion => 'Voltooide gebeden';

  @override
  String get streaks => 'Strepen';

  @override
  String get dayStreak => 'Dagreeks';

  @override
  String get bestStreak => 'Beste reeks';

  @override
  String get chatbotCloudAiLabel => 'Cloud-AI';

  @override
  String get chatbotLocalAiLabel => 'Offline terugval';

  @override
  String get chatbotUseCloudAi => 'Gebruik Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Schakel offline terugval in';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count over';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API is niet geconfigureerd. Geverifieerde offline islamitische begeleiding is nog niet beschikbaar.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Geverifieerde lokale islamitische begeleiding is nog niet beschikbaar. Schakel over naar Cloud AI voor antwoorden uit eigen bron.';

  @override
  String get mosques => 'Moskeeën';

  @override
  String get halalFood => 'Halal eten';

  @override
  String get placesSearchArea => 'Zoek dit gebied';

  @override
  String get nearbyMosques => 'Nabijgelegen moskeeën';

  @override
  String get islamicSchools => 'Islamitische scholen';

  @override
  String placesFoundCount(String count) {
    return '$count gevonden';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km afstand';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API-fout: $statusCode';
  }

  @override
  String get placesNetworkError => 'Netwerkfout. Probeer het opnieuw.';

  @override
  String get placesLocationRequiredTitle => 'Locatie vereist';

  @override
  String get placesLocationRequiredBody =>
      'Stel eerst een locatie in, zodat nabijgelegen moskeeën, halal voedsel en islamitische scholen nauwkeurig kunnen worden doorzocht.';

  @override
  String get placesMapTilesUnavailableTitle => 'Kaarttegels niet beschikbaar';

  @override
  String get placesMapTilesUnavailableBody =>
      'Er is nog geen geverifieerde kaarttegelbron geconfigureerd voor deze build. Plaatsen in de buurt kunnen nog steeds worden geladen vanaf uw opgeslagen locatie.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'Plaatsgegevens niet beschikbaar';

  @override
  String get placesDataSourceUnavailableBody =>
      'Er is nog geen geverifieerd gegevenseindpunt voor plaatsen geconfigureerd voor deze build. Stel PLACES_OVERPASS_API_URL in op een goedgekeurde proxy of provider voordat u zoeken in de buurt inschakelt.';

  @override
  String get unknownPlaceName => 'Onbekende naam';

  @override
  String get islamicPlaceFallback => 'Islamitische plaats';

  @override
  String get asmaMeaning1 => 'De Weldadige';

  @override
  String get asmaMeaning2 => 'De Barmhartige';

  @override
  String get asmaMeaning3 => 'De Koning / Eeuwige Heer';

  @override
  String get asmaMeaning4 => 'Het allerheiligste';

  @override
  String get asmaMeaning5 => 'De bron van vrede';

  @override
  String get asmaMeaning6 => 'De Gever van Beveiliging';

  @override
  String get asmaMeaning7 => 'De Bewaker';

  @override
  String get asmaMeaning8 => 'De kostbare / de machtigste';

  @override
  String get asmaMeaning9 =>
      'The Restorer and Irresistible, whose will prevails with perfect power.';

  @override
  String get asmaMeaning10 => 'De beste';

  @override
  String get asmaMeaning11 => 'De Schepper';

  @override
  String get asmaMeaning12 => 'De Schepper van Orde';

  @override
  String get asmaMeaning13 => 'De vormgever van schoonheid';

  @override
  String get asmaMeaning14 => 'De vergevingsgezinde';

  @override
  String get asmaMeaning15 => 'De onderwerper';

  @override
  String get asmaMeaning16 => 'De Gever van Alles';

  @override
  String get asmaMeaning17 => 'De Onderhouder';

  @override
  String get asmaMeaning18 => 'De opener';

  @override
  String get asmaMeaning19 => 'De Kenner van Alles';

  @override
  String get asmaMeaning20 => 'De vernauwing';

  @override
  String get asmaMeaning21 => 'De verlosser';

  @override
  String get asmaMeaning22 => 'De vernederer';

  @override
  String get asmaMeaning23 => 'De Verhevener';

  @override
  String get asmaMeaning24 => 'De Schenker van Eer';

  @override
  String get asmaMeaning25 => 'De vernederaar';

  @override
  String get asmaMeaning26 => 'De hoorder van allen';

  @override
  String get asmaMeaning27 => 'De ziener van alles';

  @override
  String get asmaMeaning28 => 'De rechter';

  @override
  String get asmaMeaning29 => 'De rechtvaardige';

  @override
  String get asmaMeaning30 => 'De subtiele';

  @override
  String get asmaMeaning31 => 'De Alwetende';

  @override
  String get asmaMeaning32 => 'De voorloper';

  @override
  String get asmaMeaning33 => 'De prachtige';

  @override
  String get asmaMeaning34 => 'De grote vergever';

  @override
  String get asmaMeaning35 => 'De beloner van dankbaarheid';

  @override
  String get asmaMeaning36 => 'De hoogste';

  @override
  String get asmaMeaning37 => 'De beste';

  @override
  String get asmaMeaning38 => 'De beschermer';

  @override
  String get asmaMeaning39 => 'De Voeder';

  @override
  String get asmaMeaning40 => 'De rekenaar';

  @override
  String get asmaMeaning41 => 'De majestueuze';

  @override
  String get asmaMeaning42 => 'De genereus';

  @override
  String get asmaMeaning43 => 'De waakzame';

  @override
  String get asmaMeaning44 => 'De antwoorder op gebed';

  @override
  String get asmaMeaning45 => 'De allesomvattende';

  @override
  String get asmaMeaning46 => 'De volmaakt wijze';

  @override
  String get asmaMeaning47 => 'De Liefhebbende';

  @override
  String get asmaMeaning48 => 'De meest glorieuze';

  @override
  String get asmaMeaning49 => 'De opstandingsvader';

  @override
  String get asmaMeaning50 => 'De getuige';

  @override
  String get asmaMeaning51 => 'De waarheid';

  @override
  String get asmaMeaning52 => 'De allesvoldoende trustee';

  @override
  String get asmaMeaning53 => 'De bezitter van alle kracht';

  @override
  String get asmaMeaning54 => 'De krachtige';

  @override
  String get asmaMeaning55 => 'De beschermer';

  @override
  String get asmaMeaning56 => 'De geprezen';

  @override
  String get asmaMeaning57 => 'De taxateur';

  @override
  String get asmaMeaning58 => 'De opdrachtgever';

  @override
  String get asmaMeaning59 => 'De hersteller';

  @override
  String get asmaMeaning60 => 'De Gever van leven';

  @override
  String get asmaMeaning61 => 'De nemer van het leven';

  @override
  String get asmaMeaning62 => 'De altijd levende';

  @override
  String get asmaMeaning63 => 'De zelfvoorzienende onderhouder';

  @override
  String get asmaMeaning64 => 'De vinder';

  @override
  String get asmaMeaning65 => 'De glorieuze';

  @override
  String get asmaMeaning66 => 'De enige';

  @override
  String get asmaMeaning67 => 'De Ene';

  @override
  String get asmaMeaning68 => 'Degene die door iedereen wordt gezocht';

  @override
  String get asmaMeaning69 => 'De machtigen';

  @override
  String get asmaMeaning70 => 'De Schepper van alle macht';

  @override
  String get asmaMeaning71 => 'De versneller';

  @override
  String get asmaMeaning72 => 'De vertrager';

  @override
  String get asmaMeaning73 => 'De eerste';

  @override
  String get asmaMeaning74 => 'De laatste';

  @override
  String get asmaMeaning75 => 'Het manifest';

  @override
  String get asmaMeaning76 => 'Het verborgene';

  @override
  String get asmaMeaning77 =>
      'The Protecting Patron, who governs and cares for all creation.';

  @override
  String get asmaMeaning78 => 'De Allerhoogste';

  @override
  String get asmaMeaning79 => 'De doener van het goede';

  @override
  String get asmaMeaning80 => 'De gids voor bekering';

  @override
  String get asmaMeaning81 => 'De Wreker';

  @override
  String get asmaMeaning82 => 'De vergever';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'De eigenaar/soeverein van alles';

  @override
  String get asmaMeaning85 => 'De bezitter van majesteit en milddadigheid';

  @override
  String get asmaMeaning86 => 'De rechtvaardige';

  @override
  String get asmaMeaning87 => 'De Verzamelaar';

  @override
  String get asmaMeaning88 => 'De rijke';

  @override
  String get asmaMeaning89 => 'De verrijker';

  @override
  String get asmaMeaning90 => 'De voorkomer van schade';

  @override
  String get asmaMeaning91 => 'De brenger van schade';

  @override
  String get asmaMeaning92 => 'De schenker van voordelen';

  @override
  String get asmaMeaning93 => 'Het licht';

  @override
  String get asmaMeaning94 => 'De gids';

  @override
  String get asmaMeaning95 => 'De opdrachtgever';

  @override
  String get asmaMeaning96 => 'De eeuwige';

  @override
  String get asmaMeaning97 => 'De erfgenaam';

  @override
  String get asmaMeaning98 => 'De meest rechtvaardige gids';

  @override
  String get asmaMeaning99 => 'De patiënt';
}
