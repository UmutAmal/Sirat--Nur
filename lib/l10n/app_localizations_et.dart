// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Estonian (`et`).
class AppLocalizationsEt extends AppLocalizations {
  AppLocalizationsEt([String locale = 'et']) : super(locale);

  @override
  String get appTitle => 'Allahi tee';

  @override
  String get splashTagline => 'Islami valguse tee';

  @override
  String get home => 'Kodu';

  @override
  String get quran => 'Koraan';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Kalender';

  @override
  String get settings => 'Seaded';

  @override
  String get nextPrayer => 'Järgmine palve';

  @override
  String get prayerTimes => 'Palveajad';

  @override
  String get continueReading => 'Jätka lugemist';

  @override
  String get getLifetimePro => 'Hankige Lifetime Pro';

  @override
  String get unlockTajweed => 'Avage Tajweed ja lisafunktsioonid';

  @override
  String get prayerCalculation => 'Palve arvutamine';

  @override
  String get method => 'Arvutusmeetod';

  @override
  String get madhab => 'Asr juristiline meetod';

  @override
  String get surahs => 'Suura';

  @override
  String get ayahs => 'Ayahs';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Päikesetõus';

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
    return 'Aeg $prayerName jaoks';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'On aeg palvetada $prayerName.';
  }

  @override
  String get dataStorage => 'Andmed ja salvestusruum';

  @override
  String get clearCache => 'Tühjenda vahemälu';

  @override
  String get cacheClearedSuccess => 'Vahemälu tühjendamine õnnestus';

  @override
  String get location => 'Asukoht';

  @override
  String get language => 'Keel';

  @override
  String get selectLanguage => 'Valige keel';

  @override
  String get searchLanguage => 'Otsige 180+ keelest...';

  @override
  String get systemDefault => 'Süsteemi vaikeseade';

  @override
  String get currentLocation => 'Praegune asukoht (GPS)';

  @override
  String get locationServiceDisabled => 'Asukohateenus on keelatud.';

  @override
  String get locationPermissionDenied => 'Asukoha luba keelatud.';

  @override
  String get locationDetectionFailed =>
      'Teie asukohta ei õnnestunud tuvastada. Valige linn käsitsi või proovige uuesti.';

  @override
  String citiesCount(String count) {
    return '$count linna';
  }

  @override
  String get search => 'Otsi';

  @override
  String get searchHint => 'Otsi...';

  @override
  String get noResults => 'Tulemusi ei leitud';

  @override
  String get loading => 'Laadimine...';

  @override
  String get error => 'Viga';

  @override
  String get appErrorOccurred => 'Ilmnes viga';

  @override
  String get appUnknownError => 'Tundmatu viga';

  @override
  String get quranLoadFailed =>
      'Koraani sisu ei saanud laadida. Palun proovi uuesti.';

  @override
  String get retry => 'Proovi uuesti';

  @override
  String get refreshAction => 'Värskenda';

  @override
  String get cancel => 'Tühista';

  @override
  String get save => 'Salvesta';

  @override
  String get delete => 'Kustuta';

  @override
  String get edit => 'Muuda';

  @override
  String get close => 'Sule';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Jah';

  @override
  String get no => 'Ei';

  @override
  String get surah => 'Suura';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Lehekülg';

  @override
  String get reading => 'Lugemine';

  @override
  String get recitation => 'Ettelugemine';

  @override
  String get translation => 'Tõlge';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Tafsiiri laadimine...';

  @override
  String get tafsirSourceLabel => 'Tafsiri allikas';

  @override
  String get tafsirNoSurahFound => 'Selle suura jaoks tafsiiri ei leitud.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Ayah jaoks ei leitud tafsiiri $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsirit ei saanud laadida.';

  @override
  String get tafsirNoTextForAyah => 'Selle ayah jaoks pole tafsir-teksti.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Tafsiiri allalaadimine $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Tafsiiri laadimine $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsiri allikas tagastas HTTP $statusCode vea.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Valitud tafsiiri allikas ei tagastanud ühtegi kirjet.';

  @override
  String get bookmarks => 'Järjehoidjad';

  @override
  String get addBookmark => 'Lisa järjehoidja';

  @override
  String get removeBookmark => 'Eemalda järjehoidja';

  @override
  String get lastRead => 'Viimane lugemine';

  @override
  String get dailyZikr => 'Igapäevane Zikr';

  @override
  String get duaMeaning1 =>
      'teised palvetavad: \"Meie Issand, anna meile head selles maailmas ja teispoolsuses ning kaitse meid tulepiinade eest.\"';

  @override
  String get duaMeaning2 =>
      'Jumal ei koorma ühtki hinge rohkemaga, kui ta suudab kanda: igaüks võidab kõike, mida ta on teinud, ja kannatab selle halba – „Issand, ära võta meid ülesandeks, kui me unustame või teeme vigu. Issand, ära koorma meid nii, nagu sa koormasid neid, kes olid enne meid. Issand, ära koorma meid rohkemaga, kui meil on jõudu kanda. Anna meile andeks, anna meile andeks ja halasta meie peale. Sa oled meie kaitsja, nii et aita meid uskmatute vastu.';

  @override
  String get duaMeaning3 =>
      '„Meie Issand, ära lase meie südamel kõrvale kalduda pärast seda, kui oled meid juhatanud. Andke meile oma halastus: sina oled alati andev.';

  @override
  String get duaMeaning4 =>
      'Issand, anna, et mina ja mu järglased võiksime palvet jätkata. Meie Issand, võta minu palve vastu.';

  @override
  String get duaMeaning5 =>
      'ja langetage oma tiib alandlikkuses nende vastu helduses ja öelge: \"Issand, halasta nende peale, nii nagu nad hoolisid minust, kui ma olin väike.\"';

  @override
  String get duaMeaning6 =>
      'ülendatud olgu Jumal, see, kes tõesti kontrollib. [Prohvet], ära torma lugema enne, kui ilmutus on täielikult lõpule jõudnud, vaid ütle: „Issand, suurenda mind teadmistes!”';

  @override
  String get duaMeaning7 =>
      'Öelge [prohvet]: \"Issand, anna andeks ja halasta: sina oled kõige halastavam.\"';

  @override
  String get duaMeaning8 =>
      'need, kes palvetavad: „Issand, anna meile rõõmu meie abikaasadest ja järglastest. Tee meid heaks eeskujuks neile, kes on sinust teadlikud.';

  @override
  String get morningZikr => 'Hommik Zikr';

  @override
  String get eveningZikr => 'Õhtu Zikr';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masa\'il';

  @override
  String get hadith => 'hadith';

  @override
  String get hadithCollection => 'Hadithide kollektsioon';

  @override
  String get hadithBooks => 'Hadithi raamatud';

  @override
  String get searchHadith => 'Otsige hadithit';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Allahi nimed';

  @override
  String get liveTv => 'Otsetelevisioon';

  @override
  String get watchLive => 'Vaadake otseülekannet';

  @override
  String get streamError => 'Voo viga';

  @override
  String get reload => 'Laadi uuesti';

  @override
  String get openInYoutube => 'Ava YouTube\'is';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Paastumine';

  @override
  String get quranReading => 'Koraani lugemine';

  @override
  String get prayers => 'Palved';

  @override
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '${hours}h ${minutes}min';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '${minutes}m';
  }

  @override
  String get prayerRemainingUnavailable => '--';

  @override
  String get dhikrCount => 'Dhikri krahv';

  @override
  String get weeklyProgress => 'Nädala edenemine';

  @override
  String get monthlyProgress => 'Igakuine edusammud';

  @override
  String get statistics => 'Statistika';

  @override
  String get hijriCalendar => 'Hijri kalender';

  @override
  String get gregorianCalendar => 'Gregoriuse kalender';

  @override
  String get today => 'Täna';

  @override
  String get tomorrow => 'Homme';

  @override
  String get yesterday => 'eile';

  @override
  String get specialDays => 'Erilised päevad';

  @override
  String get ramadan => 'Ramadaan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Islami uusaasta';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 ramadaan';

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
  String get qiblaDirection => 'Qibla suund';

  @override
  String get compass => 'Kompass';

  @override
  String get degrees => 'kraadid';

  @override
  String get north => 'Põhja';

  @override
  String get qiblaFound => 'Qibla leitud!';

  @override
  String get turnDevice => 'Pöörake seade Qibla poole';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Kompassi viga: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Kompassi andur pole selles seadmes saadaval.';

  @override
  String get qiblaLocationRequiredTitle => 'Qibla jaoks vajalik asukoht';

  @override
  String get qiblaLocationRequiredBody =>
      'Enne Qibla kompassi kasutamist määrake oma tegelik asukoht, et suunda saaks täpselt arvutada.';

  @override
  String get adhanNotificationChannelName => 'Adhani teatised';

  @override
  String get adhanNotificationChannelDescription =>
      'Palveaja hoiatused adhani heliga.';

  @override
  String get notifications => 'Märguanded';

  @override
  String get prayerNotifications => 'Palveteated';

  @override
  String get enableNotifications => 'Luba märguanded';

  @override
  String get notificationTime => 'Teavitamise aeg';

  @override
  String get beforePrayer => 'minutit enne palvet';

  @override
  String get theme => 'Teema';

  @override
  String get lightMode => 'Valgusrežiim';

  @override
  String get darkMode => 'Tume režiim';

  @override
  String get systemTheme => 'Süsteemi teema';

  @override
  String get about => 'Umbes';

  @override
  String get version => 'Versioon';

  @override
  String get privacyPolicy => 'Privaatsuspoliitika';

  @override
  String get termsOfService => 'Kasutustingimused';

  @override
  String get contactUs => 'Võtke meiega ühendust';

  @override
  String get rateApp => 'Hinda rakendust';

  @override
  String get shareApp => 'Jaga rakendust';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Vaadake $appName: ülim islami elustiilirakendus! $url';
  }

  @override
  String get downloadManager => 'Allalaadimishaldur';

  @override
  String get downloads => 'Allalaadimised';

  @override
  String get downloading => 'Allalaadimine...';

  @override
  String get downloadComplete => 'Allalaadimine on lõpetatud';

  @override
  String get downloadFailed => 'Allalaadimine ebaõnnestus';

  @override
  String get offlineMode => 'Võrguühenduseta režiim';

  @override
  String get noInternet => 'Interneti-ühendus puudub';

  @override
  String get checkConnection => 'Palun kontrollige oma ühendust';

  @override
  String get premium => 'Premium';

  @override
  String get upgradeToPro => 'Minge üle Pro versioonile';

  @override
  String get proFeatures => 'Pro funktsioonid';

  @override
  String get removeAds => 'Eemalda reklaamid';

  @override
  String get unlockAll => 'Avage kogu sisu';

  @override
  String get exclusiveContent => 'Eksklusiivne sisu';

  @override
  String get welcome => 'Tere tulemast';

  @override
  String get getStarted => 'Alustage';

  @override
  String get skip => 'Jäta vahele';

  @override
  String get next => 'Edasi';

  @override
  String get done => 'Valmis';

  @override
  String get onboarding1Title => 'Tere tulemast Allahi teele';

  @override
  String get onboarding1Desc =>
      'Teie täielik islami kaaslase rakendus palveaegade, Koraani ja muu jaoks';

  @override
  String get onboarding2Title => 'Palveajad';

  @override
  String get onboarding2Desc => 'Täpsed palveajad teie asukoha põhjal';

  @override
  String get onboarding3Title => 'Koraan ja palju muud';

  @override
  String get onboarding3Desc =>
      'Lugege Koraani, jälgige oma lugemist ja uurige islami sisu';

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
  String get zikrCompletedMashAllah => 'Lõpetatud! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah on kaugelt üle kõigist ebatäiuslikkusest.';

  @override
  String get zikrMeaningAlhamdulillah => 'Kogu kiitus kuulub Allahile.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah on Suurim.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Ei ole jumalat peale Allahi.';

  @override
  String get zikrMeaningAstaghfirullah => 'Ma otsin Jumalalt andestust.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Pole jõudu ega jõudu, välja arvatud Allahi kaudu.';

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
  String get offlineDownloadManager => 'Võrguühenduseta allalaadimishaldur';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Vabastage seadme sisemälu.';

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
  String get audioVoice => 'Heli hääl';

  @override
  String get audioVoiceMisharyAlafasy => 'Mees (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Mees (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Mees (Sudais)';

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
  String get diagnosticsNotSet => 'Pole määratud';

  @override
  String get diagnosticsPrayerProfile => 'Palve profiil';

  @override
  String get diagnosticsPrayerSource => 'Palveamet';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Kohandatud / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Käsitsi kohandatud nurgad (puudub institutsiooniline allikas)';

  @override
  String get diagnosticsCloudDriven => 'Pilvepõhine';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhani helivarad';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Koraani helivarad';

  @override
  String get diagnosticsAudioAssets => 'Helivarad';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count faili';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifesti lugemine ebaõnnestus: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Lokaliseerimiskohad';

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
      'Supabases puuduvad pilvetabelid; komplekteeritud varu aktiivne';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud Juz metaandmed puuduvad; komplekteeritud struktuurne varu aktiivne';

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
  String get dailyVerse => 'Igapäevane salm';

  @override
  String get todaysIbadah => 'Tänane Ibadah';

  @override
  String get quickAccess => 'Kiire juurdepääs';

  @override
  String get assistant => 'Assistent';

  @override
  String get places => 'Kohad';

  @override
  String get library => 'Raamatukogu';

  @override
  String get analytics => 'Analüütika';

  @override
  String get dailyDuas => 'Igapäevane Duas';

  @override
  String essentialDuas(String count) {
    return '$count olulised duas';
  }

  @override
  String get duaUnavailableTitle => 'Kinnitatud duad pole veel saadaval';

  @override
  String get duaUnavailableBody =>
      'Kinnitatud igapäevaseid duasid pole veel selle seadmega sünkroonitud. Ühendage pilveallikaga, et laadida lähtestatud duasid kinnitamata varu asemel.';

  @override
  String get duaCategoryQuranic => 'Koraani dua';

  @override
  String get duaCategoryMorningEvening => 'Hommik & Õhtu';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Kaitse';

  @override
  String get duaCategoryBeginning => 'Algused';

  @override
  String get duaCategorySleep => 'Magama';

  @override
  String get duaCategoryFoodDrink => 'Söök ja jook';

  @override
  String get duaCategoryForgiveness => 'Andestus';

  @override
  String get duaCategoryHome => 'Kodu';

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
  String get islamicEducation => 'Islami haridus';

  @override
  String get sukunAudioTitle => 'Sukuni helimaastikud';

  @override
  String get hadithCollections => 'Hadithide kollektsioonid';

  @override
  String get hadithSourcePending => 'Kinnitatud allikas on ootel';

  @override
  String get hadithUnavailableTitle =>
      'Kontrollitud hadithide kollektsioonid pole veel saadaval';

  @override
  String get hadithUnavailableBody =>
      'See ehitamine sõltub endiselt kontrollimata välisest hadithivoost. Hadith-sirvimine jääb keelatuks, kuni lähteandmestik sünkroonitakse.';

  @override
  String get paywallUnlockAll =>
      'Avage oma vaimseks teekonnaks kõik funktsioonid';

  @override
  String get premiumProductUnavailable =>
      'Premium toode pole praegu saadaval. Proovige hiljem uuesti.';

  @override
  String get premiumPurchaseFailed =>
      'Ostmist ei saanud lõpule viia. Palun proovi uuesti.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'Piiramatu AI-toega Q&A';

  @override
  String get paywallFeature2Title => 'Piiramatu võrguühenduseta';

  @override
  String get paywallFeature2Desc => 'Laadige alla kõik ettekanded';

  @override
  String get paywallFeature3Title => 'Eksklusiivsed kujundused';

  @override
  String get paywallFeature3Desc => 'Esmaklassilised teemad ja fondid';

  @override
  String get paywallFeature4Title => 'Reklaamivaba';

  @override
  String get paywallFeature4Desc => 'Null reklaami';

  @override
  String get paywallGetAccess => 'Hankige eluaegne juurdepääs – 1,00 \$';

  @override
  String get restorePurchases => 'Taasta ostud';

  @override
  String get zakatCalculator => 'Zakati kalkulaator';

  @override
  String get zakatGold => 'Kuld (Altın)';

  @override
  String get zakatSilver => 'hõbe (Gümüş)';

  @override
  String get zakatCashBank => 'Sularaha / Pank';

  @override
  String get zakatBusiness => 'Äri';

  @override
  String get zakatInvestments => 'Investeeringud';

  @override
  String get zakatWeightGrams => 'Kaal (g)';

  @override
  String get zakatPricePerGram => 'Hind/g';

  @override
  String get zakatTotalAmount => 'Kogusumma';

  @override
  String get zakatInventoryValue => 'Varude väärtus';

  @override
  String get zakatDebts => 'Võlad';

  @override
  String get zakatTotal => 'Kokku';

  @override
  String get calculateZakat => 'Arvutage Zakat';

  @override
  String get nisabNotReached =>
      'Nisabi ei saavutatud. Zakat ei ole kohustuslik.';

  @override
  String get totalZakat => 'Kokku Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Varad: $assets';
  }

  @override
  String get zakatGoldZakat => 'Kuldne Zakat';

  @override
  String get zakatSilverZakat => 'Hõbedane Zakat';

  @override
  String get zakatCashZakat => 'Raha Zakat';

  @override
  String get zakatBusinessZakat => 'Äri Zakat';

  @override
  String get zakatInvestmentZakat => 'Investeering Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! Olen teie islami assistent. Küsige minult palve, paastu, zakati või mõne muu islami teema kohta.';

  @override
  String get chatbotLimitReached =>
      'Päevane päringu limiit on täis. Minge üle Premiumile piiramatult.';

  @override
  String get chatbotErrorMsg =>
      'Ma ei saanud vastust luua. Palun proovi uuesti.';

  @override
  String get chatbotOfflinePrompt =>
      'Kinnitatud võrguühenduseta islami teadmistebaasi kureerimine on endiselt pooleli. Saate nüüd lubada võrguühenduseta varuvariandi, kuid see kuvab ainult piiratud ohutuid sõnumeid, kuni lähteandmekogum on valmis.\n\nKas soovite lubada võrguühenduseta varuvariandi?';

  @override
  String get chatbotOfflineSwitched =>
      'Võrguühenduseta varuvaru on lubatud. Kontrollitud kohalikud islami vastused pole veel valmis.';

  @override
  String get chatbotOfflineDownloadLabel => 'Luba võrguühenduseta tagavara';

  @override
  String get downloadPreparing => 'Allalaadimise ettevalmistamine...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Suura allalaadimine $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Kõik selle ettelugeja jaoks juba alla laaditud suurad.';

  @override
  String get offlineQuranAudioPacks => 'Võrguühenduseta Koraani helipaketid';

  @override
  String storedOnDeviceMb(String size) {
    return 'Seadmesse salvestatud: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total suura on alla laaditud';
  }

  @override
  String get redownloadMissingRepair => 'Remont/allalaadimine puudub';

  @override
  String get downloadAction => 'Laadi alla';

  @override
  String get resumeDownload => 'Jätkake allalaadimist';

  @override
  String get deleteDownloadedFiles => 'Kustuta allalaaditud failid';

  @override
  String get downloadCancelling => 'Tühistamine...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Allalaadimine tühistati: $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return '$reciter allalaadimine on lõpetatud.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return '$reciter jaoks on allalaadimine lõpetatud $failed ebaõnnestunud suuratega ($downloaded/$total on alla laaditud).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Kustutatud võrguühenduseta failid $reciter jaoks.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Kontrollitud Koraani heliallikad pole praegu saadaval.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Kinnitatud Koraani helipakett ei ole täielik ($available/$total). Värskendage pilve seemet ja proovige uuesti.';
  }

  @override
  String get chatbotHint => 'Esitage küsimus...';

  @override
  String get chatbotThinking => 'Mõeldes...';

  @override
  String get sukunMixerSubtitle => 'Looduse ja Koraani mikser';

  @override
  String get audioPlayFailed => 'Heli taasesitus ebaõnnestus';

  @override
  String get sukunNatureLabel => 'Sukun (loodus)';

  @override
  String get sukunRainOfMercy => 'Halastuse vihm';

  @override
  String get sukunGardenOfPeace => 'Rahu aed';

  @override
  String get sukunMidnightCalm => 'Kesköö rahulik';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Helimaastikud pole saadaval';

  @override
  String get sukunUnavailableBody =>
      'See konstruktsioon ei sisalda veel vajalikke Sukuni helimaastiku varasid.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Triibud';

  @override
  String get dayStreak => 'Päevane jada';

  @override
  String get bestStreak => 'Parim seeria';

  @override
  String get chatbotCloudAiLabel => 'Pilve AI';

  @override
  String get chatbotLocalAiLabel => 'Võrguühenduseta tagavara';

  @override
  String get chatbotUseCloudAi => 'Kasutage Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Luba võrguühenduseta tagavara';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count lahkus';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API pole konfigureeritud. Kinnitatud võrguühenduseta islami juhised pole veel saadaval.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Kinnitatud kohalikud islamijuhised pole veel saadaval. Lähteallikate vastuste saamiseks lülituge Cloud AI-le.';

  @override
  String get mosques => 'Mošeed';

  @override
  String get halalFood => 'Halal toit';

  @override
  String get placesSearchArea => 'Otsi sellest piirkonnast';

  @override
  String get nearbyMosques => 'Läheduses mošeed';

  @override
  String get islamicSchools => 'Islami koolid';

  @override
  String placesFoundCount(String count) {
    return '$count leitud';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km kaugusel';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API viga: $statusCode';
  }

  @override
  String get placesNetworkError => 'Võrgu viga. Palun proovi uuesti.';

  @override
  String get placesLocationRequiredTitle => 'Vajalik asukoht';

  @override
  String get placesLocationRequiredBody =>
      'Esmalt määrake asukoht, et läheduses olevaid mošeesid, halal-toitu ja islamikoole saaks täpselt otsida.';

  @override
  String get placesMapTilesUnavailableTitle => 'Kaardiplaadid pole saadaval';

  @override
  String get placesMapTilesUnavailableBody =>
      'Kinnitatud kaardipaani allikat pole selle järgu jaoks veel konfigureeritud. Läheduses olevaid kohti saab siiski laadida teie salvestatud asukohast.';

  @override
  String get placesDataSourceUnavailableTitle => 'Kohtade andmed pole saadaval';

  @override
  String get placesDataSourceUnavailableBody =>
      'Kinnitatud kohtade andmete lõpp-punkt pole selle järgu jaoks veel konfigureeritud. Enne läheduses asuva otsingu lubamist määrake PLACES_OVERPASS_API_URL kinnitatud puhverserverile või pakkujale.';

  @override
  String get unknownPlaceName => 'Tundmatu nimi';

  @override
  String get islamicPlaceFallback => 'Islami koht';

  @override
  String get asmaMeaning1 => 'Kasulik';

  @override
  String get asmaMeaning2 => 'Armuline';

  @override
  String get asmaMeaning3 => 'Kuningas / Igavene Issand';

  @override
  String get asmaMeaning4 => 'Kõige püha';

  @override
  String get asmaMeaning5 => 'Rahu allikas';

  @override
  String get asmaMeaning6 => 'Turvalisuse andja';

  @override
  String get asmaMeaning7 => 'The Guardian';

  @override
  String get asmaMeaning8 => 'Kallis / Kõige võimsam';

  @override
  String get asmaMeaning9 => 'The Compeller';

  @override
  String get asmaMeaning10 => 'Suurim';

  @override
  String get asmaMeaning11 => 'Looja';

  @override
  String get asmaMeaning12 => 'Tellija';

  @override
  String get asmaMeaning13 => 'Ilu kujundaja';

  @override
  String get asmaMeaning14 => 'Andestav';

  @override
  String get asmaMeaning15 => 'Alistaja';

  @override
  String get asmaMeaning16 => 'Kõike andja';

  @override
  String get asmaMeaning17 => 'Säästaja';

  @override
  String get asmaMeaning18 => 'Avaja';

  @override
  String get asmaMeaning19 => 'Kõigi teadja';

  @override
  String get asmaMeaning20 => 'The Constrictor';

  @override
  String get asmaMeaning21 => 'Leevendus';

  @override
  String get asmaMeaning22 => 'Abaser';

  @override
  String get asmaMeaning23 => 'Ülitaja';

  @override
  String get asmaMeaning24 => 'Auandja';

  @override
  String get asmaMeaning25 => 'Alandaja';

  @override
  String get asmaMeaning26 => 'Kõigi kuulaja';

  @override
  String get asmaMeaning27 => 'Kõigi nägija';

  @override
  String get asmaMeaning28 => 'Kohtunik';

  @override
  String get asmaMeaning29 => 'Õiglane';

  @override
  String get asmaMeaning30 => 'peen';

  @override
  String get asmaMeaning31 => 'Kõik teadlikud';

  @override
  String get asmaMeaning32 => 'Eesilm';

  @override
  String get asmaMeaning33 => 'Suurepärane';

  @override
  String get asmaMeaning34 => 'Suur andestaja';

  @override
  String get asmaMeaning35 => 'Tänulikkuse tasuja';

  @override
  String get asmaMeaning36 => 'Kõrgeim';

  @override
  String get asmaMeaning37 => 'Suurim';

  @override
  String get asmaMeaning38 => 'Säilitaja';

  @override
  String get asmaMeaning39 => 'Toitja';

  @override
  String get asmaMeaning40 => 'Arvestus';

  @override
  String get asmaMeaning41 => 'Majesteet';

  @override
  String get asmaMeaning42 => 'Helde';

  @override
  String get asmaMeaning43 => 'Valvav';

  @override
  String get asmaMeaning44 => 'Palvevastaja';

  @override
  String get asmaMeaning45 => 'Kõik arusaadav';

  @override
  String get asmaMeaning46 => 'Täiuslikult tark';

  @override
  String get asmaMeaning47 => 'Armastaja';

  @override
  String get asmaMeaning48 => 'Kõige kuulsusrikkam';

  @override
  String get asmaMeaning49 => 'Ülestõusja';

  @override
  String get asmaMeaning50 => 'Tunnistaja';

  @override
  String get asmaMeaning51 => 'Tõde';

  @override
  String get asmaMeaning52 => 'Kõik piisav usaldusisik';

  @override
  String get asmaMeaning53 => 'Kõige jõu valdaja';

  @override
  String get asmaMeaning54 => 'The Forceful';

  @override
  String get asmaMeaning55 => 'Kaitsja';

  @override
  String get asmaMeaning56 => 'Kiidetud';

  @override
  String get asmaMeaning57 => 'Hindaja';

  @override
  String get asmaMeaning58 => 'Alustaja';

  @override
  String get asmaMeaning59 => 'Taastaja';

  @override
  String get asmaMeaning60 => 'Eluandja';

  @override
  String get asmaMeaning61 => 'Elu äravõtja';

  @override
  String get asmaMeaning62 => 'Ever Living';

  @override
  String get asmaMeaning63 => 'Isemajandav ülalpidaja';

  @override
  String get asmaMeaning64 => 'Leidja';

  @override
  String get asmaMeaning65 => 'Kuulsusrikas';

  @override
  String get asmaMeaning66 => 'Ainus';

  @override
  String get asmaMeaning67 => 'Üks';

  @override
  String get asmaMeaning68 => 'See, mida kõik otsivad';

  @override
  String get asmaMeaning69 => 'Võimas';

  @override
  String get asmaMeaning70 => 'Kõigi jõu looja';

  @override
  String get asmaMeaning71 => 'Expediter';

  @override
  String get asmaMeaning72 => 'Viitaja';

  @override
  String get asmaMeaning73 => 'Esimene';

  @override
  String get asmaMeaning74 => 'Viimane';

  @override
  String get asmaMeaning75 => 'Manifest';

  @override
  String get asmaMeaning76 => 'Varjatud';

  @override
  String get asmaMeaning77 => 'Kuberner';

  @override
  String get asmaMeaning78 => 'Kõige kõrgem';

  @override
  String get asmaMeaning79 => 'Hea tegija';

  @override
  String get asmaMeaning80 => 'Juhend meeleparanduseks';

  @override
  String get asmaMeaning81 => 'Tasuja';

  @override
  String get asmaMeaning82 => 'Andestaja';

  @override
  String get asmaMeaning83 => 'Klement';

  @override
  String get asmaMeaning84 => 'Kõigi omanik / suverään';

  @override
  String get asmaMeaning85 => 'Majesteedi ja halastuse valdaja';

  @override
  String get asmaMeaning86 => 'Equitable One';

  @override
  String get asmaMeaning87 => 'Koguja';

  @override
  String get asmaMeaning88 => 'Rikas';

  @override
  String get asmaMeaning89 => 'rikastaja';

  @override
  String get asmaMeaning90 => 'Kahjude ennetaja';

  @override
  String get asmaMeaning91 => 'Kahju põhjustaja';

  @override
  String get asmaMeaning92 => 'Kasu kinkija';

  @override
  String get asmaMeaning93 => 'Valgus';

  @override
  String get asmaMeaning94 => 'Juhend';

  @override
  String get asmaMeaning95 => 'Alustaja';

  @override
  String get asmaMeaning96 => 'Igavene';

  @override
  String get asmaMeaning97 => 'Pärija';

  @override
  String get asmaMeaning98 => 'Kõige õigem teejuht';

  @override
  String get asmaMeaning99 => 'Patient One';
}
