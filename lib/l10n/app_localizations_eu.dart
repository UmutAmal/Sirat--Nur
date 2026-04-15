// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Basque (`eu`).
class AppLocalizationsEu extends AppLocalizations {
  AppLocalizationsEu([String locale = 'eu']) : super(locale);

  @override
  String get appTitle => 'Ala Bidea';

  @override
  String get splashTagline => 'Argiaren Bide Islamikoa';

  @override
  String get home => 'Hasiera';

  @override
  String get quran => 'Korana';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Egutegia';

  @override
  String get settings => 'Ezarpenak';

  @override
  String get nextPrayer => 'Hurrengo Otoitza';

  @override
  String get prayerTimes => 'Otoitz Orduak';

  @override
  String get continueReading => 'Jarraitu Irakurtzen';

  @override
  String get getLifetimePro => 'Lortu Lifetime Pro';

  @override
  String get unlockTajweed => 'Desblokeatu Tajweed eta Ezaugarri aurreratuak';

  @override
  String get prayerCalculation => 'Otoitzaren kalkulua';

  @override
  String get method => 'Kalkulu metodoa';

  @override
  String get madhab => 'Asr metodo juridikoa';

  @override
  String get surahs => 'Surak';

  @override
  String get ayahs => 'Aiak';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Egunsentia';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Magreb';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName egiteko ordua';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '$prayerName otoitz egiteko garaia da.';
  }

  @override
  String get dataStorage => 'Datuak eta biltegiratzea';

  @override
  String get clearCache => 'Garbitu cachea';

  @override
  String get cacheClearedSuccess => 'Cachea behar bezala garbitu da';

  @override
  String get location => 'Kokapena';

  @override
  String get language => 'Hizkuntza';

  @override
  String get selectLanguage => 'Hautatu Hizkuntza';

  @override
  String get searchLanguage => 'Bilatu 180 hizkuntza baino gehiago...';

  @override
  String get systemDefault => 'Sistema lehenetsia';

  @override
  String get currentLocation => 'Uneko kokapena (GPS)';

  @override
  String get locationServiceDisabled => 'Kokapen zerbitzua desgaituta dago.';

  @override
  String get locationPermissionDenied => 'Kokapen-baimena ukatu da.';

  @override
  String get locationDetectionFailed =>
      'Ezin izan da zure kokapena hauteman. Aukeratu hiri bat eskuz edo saiatu berriro.';

  @override
  String citiesCount(String count) {
    return '$count hiriak';
  }

  @override
  String get search => 'Bilatu';

  @override
  String get searchHint => 'Bilatu...';

  @override
  String get noResults => 'Ez da emaitzarik aurkitu';

  @override
  String get loading => 'Kargatzen...';

  @override
  String get error => 'Errorea';

  @override
  String get appErrorOccurred => 'Errore bat gertatu da';

  @override
  String get appUnknownError => 'Errore ezezaguna';

  @override
  String get quranLoadFailed =>
      'Ezin izan da Koranaren edukia kargatu. Mesedez, saiatu berriro.';

  @override
  String get retry => 'Saiatu berriro';

  @override
  String get refreshAction => 'Freskatu';

  @override
  String get cancel => 'Utzi';

  @override
  String get save => 'Gorde';

  @override
  String get delete => 'Ezabatu';

  @override
  String get edit => 'Editatu';

  @override
  String get close => 'Itxi';

  @override
  String get ok => 'Ados';

  @override
  String get yes => 'Bai';

  @override
  String get no => 'Ez';

  @override
  String get surah => 'Sura';

  @override
  String ayahLabel(String ayah) {
    return 'Aiah $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Orria';

  @override
  String get reading => 'Irakurketa';

  @override
  String get recitation => 'Errezitazioa';

  @override
  String get translation => 'Itzulpena';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'tafsir kargatzen...';

  @override
  String get tafsirSourceLabel => 'Tafsir iturria';

  @override
  String get tafsirNoSurahFound => 'Ez da tafsir aurkitu sura honetarako.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Ez da tafsir aurkitu ayah ${ayah}rentzat.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir ezin izan da kargatu.';

  @override
  String get tafsirNoTextForAyah => 'Ez dago tafsir testurik aiah honetarako.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'tafsir deskargatzen $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Tafsir $current/$total kargatzen';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir iturburuak HTTP $statusCode errore bat itzuli du.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Hautatutako tafsir iturburuak ez du sarrerarik itzuli.';

  @override
  String get bookmarks => 'Laster-markak';

  @override
  String get addBookmark => 'Gehitu laster-marka';

  @override
  String get removeBookmark => 'Kendu laster-marka';

  @override
  String get lastRead => 'Azken Irakurketa';

  @override
  String get dailyZikr => 'Eguneko Zikr';

  @override
  String get duaMeaning1 =>
      'beste batzuk otoitz egiten dute: «Gure Jauna, eman iezaguzu ona mundu honetan eta hemendik aurrera, eta babes gaitzazu Suaren oinazeetatik».';

  @override
  String get duaMeaning2 =>
      'Jainkoak ez du kargatzen arimarik jasan dezakeena baino gehiago: bakoitzak irabazten du egin duen edozein on, eta bere txarra jasaten du- ‘Jauna, ez gaitzazu ardurarik hartu ahazten edo huts egiten badugu. Jauna, ez gaitzazu zamatu gure aurrekoak zamatu dituzun bezala. Jauna, ez gaitzazu kargatu bear ditugun indarrak baino gehiago. Barkatu, barka iezaguzu, eta erruki gaitzazu. Gure Babeslea zara, beraz, lagundu iezaguzu sinesgabeen aurka».';

  @override
  String get duaMeaning3 =>
      '‘Gure Jauna, ez utzi gure bihotzak desbideratu Gu gidatu gaituzunean. Emaiguzu zure errukia: Zu zara beti ematen duena.';

  @override
  String get duaMeaning4 =>
      'Jauna, eman ezazu nik eta nire ondorengoek otoitzarekin jarrai dezagun. Gure Jauna, onartu nire eskaria.';

  @override
  String get duaMeaning5 =>
      'eta jaitsi zure hegala apaltasunez haienganako ontasunez, eta esan: «Jauna, erruki izan haietaz, txikia nintzenean zaindu ninduten bezala».';

  @override
  String get duaMeaning6 =>
      'goratua izan bedi Jainkoa, egiazki menperatzen duena. [Profeta], ez zaitez presarik errezitatzera errebelazioa guztiz osatu baino lehen, baina esan: ‘Jauna, handitu nazazu ezagutzan!’';

  @override
  String get duaMeaning7 =>
      'Esan [Profeta]: «Jauna, barkatu eta erruki izan: Zu zara guz- tietan errukitsuena».';

  @override
  String get duaMeaning8 =>
      'otoitz egiten dutenek: ‘Gure Jauna, eman iezaguzu poza gure ezkontide eta ondorengoengan. Egin iezaguzu adibide onak Zutaz jabetzen direnentzat’.';

  @override
  String get morningZikr => 'Goizean Zikr';

  @override
  String get eveningZikr => 'Arratsaldeko Zikr';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masa\'il';

  @override
  String get hadith => 'Hadith';

  @override
  String get hadithCollection => 'Hadith bilduma';

  @override
  String get hadithBooks => 'Hadith Liburuak';

  @override
  String get searchHadith => 'Bilatu Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Ala izenak';

  @override
  String get liveTv => 'Zuzeneko telebista';

  @override
  String get watchLive => 'Ikusi Zuzenean';

  @override
  String get streamError => 'Erreprodukzio-errorea';

  @override
  String get reload => 'Berriz kargatu';

  @override
  String get openInYoutube => 'Ireki YouTube-n';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Baraualdia';

  @override
  String get quranReading => 'Koranaren irakurketa';

  @override
  String get prayers => 'Otoitzak';

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
  String get dhikrCount => 'Dhikr Kondea';

  @override
  String get weeklyProgress => 'Asteroko Aurrerapena';

  @override
  String get monthlyProgress => 'Hileko Aurrerapena';

  @override
  String get statistics => 'Estatistikak';

  @override
  String get hijriCalendar => 'Hijri Egutegia';

  @override
  String get gregorianCalendar => 'Egutegi gregorianoa';

  @override
  String get today => 'Gaur';

  @override
  String get tomorrow => 'Bihar';

  @override
  String get yesterday => 'Atzo';

  @override
  String get specialDays => 'Egun bereziak';

  @override
  String get ramadan => 'Ramadana';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Urte Berri Islamikoa';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadana';

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
  String get qiblaDirection => 'Qibla Zuzendaritza';

  @override
  String get compass => 'Iparrorratza';

  @override
  String get degrees => 'graduak';

  @override
  String get north => 'Ipar';

  @override
  String get qiblaFound => 'Qibla aurkitu!';

  @override
  String get turnDevice => 'Biratu gailua Qiblari begira';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Iparrorratza errorea: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Iparrorratza sentsorea ez dago erabilgarri gailu honetan.';

  @override
  String get qiblaLocationRequiredTitle => 'Qiblarako beharrezkoa den kokapena';

  @override
  String get qiblaLocationRequiredBody =>
      'Ezarri zure benetako kokapena Qibla iparrorratza erabili aurretik, norabidea zehaztasunez kalkulatu ahal izateko.';

  @override
  String get adhanNotificationChannelName => 'Adhan jakinarazpenak';

  @override
  String get adhanNotificationChannelDescription =>
      'Otoitz denbora alertak adhan soinuarekin.';

  @override
  String get notifications => 'Jakinarazpenak';

  @override
  String get prayerNotifications => 'Otoitz jakinarazpenak';

  @override
  String get enableNotifications => 'Gaitu Jakinarazpenak';

  @override
  String get notificationTime => 'Jakinarazpen-ordua';

  @override
  String get beforePrayer => 'otoitza baino minutu lehenago';

  @override
  String get theme => 'Gaia';

  @override
  String get lightMode => 'Argi modua';

  @override
  String get darkMode => 'Modu iluna';

  @override
  String get systemTheme => 'Sistemaren gaia';

  @override
  String get about => 'Buruz';

  @override
  String get version => 'Bertsioa';

  @override
  String get privacyPolicy => 'Pribatutasun-politika';

  @override
  String get termsOfService => 'Zerbitzu-baldintzak';

  @override
  String get contactUs => 'Jarri gurekin harremanetan';

  @override
  String get rateApp => 'Tarifa aplikazioa';

  @override
  String get shareApp => 'Partekatu aplikazioa';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Begiratu $appName: Islamiar bizimoduaren azken aplikazioa! $url';
  }

  @override
  String get downloadManager => 'Deskarga kudeatzailea';

  @override
  String get downloads => 'Deskargak';

  @override
  String get downloading => 'Deskargatzen...';

  @override
  String get downloadComplete => 'Deskarga osoa';

  @override
  String get downloadFailed => 'Deskargatu huts egin du';

  @override
  String get offlineMode => 'Lineaz kanpoko modua';

  @override
  String get noInternet => 'Ez dago Interneteko konexiorik';

  @override
  String get checkConnection => 'Mesedez, egiaztatu zure konexioa';

  @override
  String get premium => 'Premium';

  @override
  String get upgradeToPro => 'Berritu Pro-ra';

  @override
  String get proFeatures => 'Pro Ezaugarriak';

  @override
  String get removeAds => 'Kendu iragarkiak';

  @override
  String get unlockAll => 'Desblokeatu Eduki guztia';

  @override
  String get exclusiveContent => 'Eduki esklusiboak';

  @override
  String get welcome => 'Ongi etorri';

  @override
  String get getStarted => 'Hasi';

  @override
  String get skip => 'Saltatu';

  @override
  String get next => 'Hurrengoa';

  @override
  String get done => 'Eginda';

  @override
  String get onboarding1Title => 'Ongi etorri Ala Bidera';

  @override
  String get onboarding1Desc =>
      'Zure islamiar aplikazio osoa otoitz garaietarako, Koranerako eta abarretarako';

  @override
  String get onboarding2Title => 'Otoitz Orduak';

  @override
  String get onboarding2Desc => 'Otoitz ordu zehatzak zure kokapenaren arabera';

  @override
  String get onboarding3Title => 'Quran eta gehiago';

  @override
  String get onboarding3Desc =>
      'Irakurri Quran, jarraitu zure irakurketa eta arakatu islamiar edukia';

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
  String get zikrCompletedMashAllah => 'Osatua! MashAllah';

  @override
  String get zikrMeaningSubhanAllah => 'Ala inperfekzio guztien gainetik dago.';

  @override
  String get zikrMeaningAlhamdulillah => 'Laudorio guztiak Allahrenak dira.';

  @override
  String get zikrMeaningAllahuAkbar => 'Ala Handiena da.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Ez dago Jainkorik Ala baino.';

  @override
  String get zikrMeaningAstaghfirullah => 'Alaren barkamena bilatzen dut.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Ez dago botererik eta indarrik Ala bidez izan ezik.';

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
  String get offlineDownloadManager => 'Lineaz kanpoko deskarga kudeatzailea';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Askatu gailuaren barneko biltegia.';

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
  String get audioVoice => 'Audio Ahotsa';

  @override
  String get audioVoiceMisharyAlafasy => 'Gizonezkoa (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Gizonezkoa (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Gizonezkoa (Sudaia)';

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
  String get diagnosticsNotSet => 'Ezarrita';

  @override
  String get diagnosticsPrayerProfile => 'Otoitzaren profila';

  @override
  String get diagnosticsPrayerSource => 'Otoitz Agintaritza';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Pertsonalizatua / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Eskuzko angelu pertsonalizatuak (iturri instituzionala ez)';

  @override
  String get diagnosticsCloudDriven => 'Hodeian bultzatuta';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Aktiboak';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Quran Audio Aktiboak';

  @override
  String get diagnosticsAudioAssets => 'Audio-aktiboak';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count fitxategiak';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifestuaren irakurketa huts egin du: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Lokalizazio lokalak';

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
      'Supabasen hodei-taulak falta dira; sorta-erresistentzia aktiboa';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz metadatuak falta dira; Egiturazko Fallback multzoa aktiboa';

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
  String get dailyVerse => 'Eguneko Bertsoa';

  @override
  String get todaysIbadah => 'Gaur Ibadah';

  @override
  String get quickAccess => 'Sarbide azkarra';

  @override
  String get assistant => 'Laguntzailea';

  @override
  String get places => 'Lekuak';

  @override
  String get library => 'Liburutegia';

  @override
  String get analytics => 'Analitika';

  @override
  String get dailyDuas => 'Egunero Duas';

  @override
  String essentialDuas(String count) {
    return '$count ezinbestekoak dira';
  }

  @override
  String get duaUnavailableTitle =>
      'Egiaztatutako duak ez daude eskuragarri oraindik';

  @override
  String get duaUnavailableBody =>
      'Egiaztatutako eguneroko duak ez dira oraindik sinkronizatu gailu honekin. Konektatu hodeiko iturburura iturriko duak kargatzeko, egiaztatu gabeko ordezkapen baten ordez.';

  @override
  String get duaCategoryQuranic => 'Koranikoa dua';

  @override
  String get duaCategoryMorningEvening => 'Goizez eta arratsaldez';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Babesa';

  @override
  String get duaCategoryBeginning => 'Hastapenak';

  @override
  String get duaCategorySleep => 'Lo egin';

  @override
  String get duaCategoryFoodDrink => 'Janaria eta edaria';

  @override
  String get duaCategoryForgiveness => 'Barkamena';

  @override
  String get duaCategoryHome => 'Hasiera';

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
  String get islamicEducation => 'Hezkuntza Islamikoa';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Hadith Bildumak';

  @override
  String get hadithSourcePending => 'Egiaztatutako iturria zain dago';

  @override
  String get hadithUnavailableTitle =>
      'Egiaztatutako hadith bildumak ez daude eskuragarri oraindik';

  @override
  String get hadithUnavailableBody =>
      'Eraikuntza hau egiaztatu gabeko kanpoko hadith jario baten menpe dago oraindik. Hadith arakatzea desgaituta egongo da jatorriko datu-multzo bat sinkronizatu arte.';

  @override
  String get paywallUnlockAll =>
      'Desblokeatu eginbide guztiak zure bidaia espiritualerako';

  @override
  String get premiumProductUnavailable =>
      'Premium produktua ez dago eskuragarri une honetan. Saiatu berriro geroago.';

  @override
  String get premiumPurchaseFailed =>
      'Ezin izan da erosketa burutu. Mesedez, saiatu berriro.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'AI bidezko galdera-erantzun mugagabeak';

  @override
  String get paywallFeature2Title => 'Lineaz kanpo mugarik gabe';

  @override
  String get paywallFeature2Desc => 'Deskargatu errezitazio guztiak';

  @override
  String get paywallFeature3Title => 'Diseinu esklusiboak';

  @override
  String get paywallFeature3Desc => 'Premium gaiak eta letra-tipoak';

  @override
  String get paywallFeature4Title => 'Iragarkirik gabe';

  @override
  String get paywallFeature4Desc => 'Zero iragarkiak';

  @override
  String get paywallGetAccess => 'Lortu bizitza osorako sarbidea - \$ 1.00';

  @override
  String get restorePurchases => 'Berreskuratu Erosketak';

  @override
  String get zakatCalculator => 'Zakat kalkulagailua';

  @override
  String get zakatGold => 'Urrea (Altın)';

  @override
  String get zakatSilver => 'Zilarrezkoa (Gümüş)';

  @override
  String get zakatCashBank => 'Dirua / Bankua';

  @override
  String get zakatBusiness => 'Negozioak';

  @override
  String get zakatInvestments => 'Inbertsioak';

  @override
  String get zakatWeightGrams => 'Pisua (g)';

  @override
  String get zakatPricePerGram => 'Prezioa/g';

  @override
  String get zakatTotalAmount => 'Zenbateko osoa';

  @override
  String get zakatInventoryValue => 'Inbentarioaren balioa';

  @override
  String get zakatDebts => 'Zorrak';

  @override
  String get zakatTotal => 'Guztira';

  @override
  String get calculateZakat => 'Kalkulatu zakat';

  @override
  String get nisabNotReached =>
      'Nisab ez da iritsi. Zakat ez da derrigorrezkoa.';

  @override
  String get totalZakat => 'Guztira Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Aktiboak: $assets';
  }

  @override
  String get zakatGoldZakat => 'Urrezko Zakat';

  @override
  String get zakatSilverZakat => 'Zilarrezko Zakat';

  @override
  String get zakatCashZakat => 'Eskudirutan Zakat';

  @override
  String get zakatBusinessZakat => 'Enpresa Zakat';

  @override
  String get zakatInvestmentZakat => 'Inbertsio Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Eguneko kontsulten mugara iritsi da. Igotu Premium-era mugarik gabe.';

  @override
  String get chatbotErrorMsg =>
      'Ezin izan dut erantzunik sortu. Mesedez, saiatu berriro.';

  @override
  String get chatbotOfflinePrompt =>
      'Egiaztatutako lineaz kanpoko ezagutza base islamiarra zaintzen ari da oraindik. Lineaz kanpoko babesa gaitu dezakezu orain, baina mezu seguru mugatuak soilik erakutsiko ditu jatorriko datu-multzoa prest dagoen arte.\n\nLineaz kanpoko babesa gaitu nahi duzu?';

  @override
  String get chatbotOfflineSwitched =>
      'Lineaz kanpoko babesa gaituta. Egiaztatutako tokiko erantzun islamiarrak ez daude prest oraindik.';

  @override
  String get chatbotOfflineDownloadLabel => 'Gaitu Lineaz kanpoko Fallback';

  @override
  String get downloadPreparing => 'Deskarga prestatzen...';

  @override
  String downloadingSurah(String surah, String total) {
    return '$surah / $total sura deskargatzen';
  }

  @override
  String get downloadCompleted =>
      'Errezitatzaile honetarako dagoeneko deskargatuta dauden sura guztiak.';

  @override
  String get offlineQuranAudioPacks => 'Offline Quran Audio Packs';

  @override
  String storedOnDeviceMb(String size) {
    return 'Stored on device: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surak deskargatu dira';
  }

  @override
  String get redownloadMissingRepair => 'Konponketa / Deskarga falta da';

  @override
  String get downloadAction => 'Deskargatu';

  @override
  String get resumeDownload => 'Berekin deskargatu';

  @override
  String get deleteDownloadedFiles => 'Ezabatu deskargatutako fitxategiak';

  @override
  String get downloadCancelling => 'Bertan behera uzten...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Deskarga bertan behera utzi da $reciter-rako.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Deskarga amaitu da $reciter-rako.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Deskarga amaitu da $reciter $failed huts egin duten surahekin ($downloaded/$total deskargatu da).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Deleted offline files for $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Egiaztatutako Quran audio iturriak ez daude erabilgarri une honetan.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Egiaztatutako Quran audio paketea osatu gabe dago ($available/$total). Freskatu hodei-hazia eta saiatu berriro.';
  }

  @override
  String get chatbotHint => 'Ask a question...';

  @override
  String get chatbotThinking => 'Thinking...';

  @override
  String get sukunMixerSubtitle => 'Natura eta Koranaren nahasketa';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (Natura)';

  @override
  String get sukunRainOfMercy => 'Errukiaren euria';

  @override
  String get sukunGardenOfPeace => 'Bakearen Lorategia';

  @override
  String get sukunMidnightCalm => 'Gauerdiko Lasai';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Soinu-paisaiak ez daude erabilgarri';

  @override
  String get sukunUnavailableBody =>
      'Eraikuntza honek oraindik ez ditu Sukunen soinu-paisaia-aktiborik behar.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Eguneko marra';

  @override
  String get bestStreak => 'Boladarik onena';

  @override
  String get chatbotCloudAiLabel => 'Hodei AI';

  @override
  String get chatbotLocalAiLabel => 'Lineaz kanpoko Fallback';

  @override
  String get chatbotUseCloudAi => 'Erabili Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Gaitu Lineaz kanpoko Fallback';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count geratzen da';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API ez dago konfiguratuta. Lineaz kanpo egiaztatutako gida islamiarra ez dago oraindik erabilgarri.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Egiaztatutako tokiko orientazio islamikoa ez dago oraindik erabilgarri. Aldatu Cloud AI-ra iturriko erantzunak lortzeko.';

  @override
  String get mosques => 'Meskitak';

  @override
  String get halalFood => 'Halal Elikadura';

  @override
  String get placesSearchArea => 'Bilatu eremu honetan';

  @override
  String get nearbyMosques => 'Inguruko meskitak';

  @override
  String get islamicSchools => 'Eskola Islamikoak';

  @override
  String placesFoundCount(String count) {
    return '$count aurkitu da';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km-ra';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API errorea: $statusCode';
  }

  @override
  String get placesNetworkError => 'Sareko errorea. Mesedez, saiatu berriro.';

  @override
  String get placesLocationRequiredTitle => 'Kokapena beharrezkoa';

  @override
  String get placesLocationRequiredBody =>
      'Ezarri kokapen bat lehenik, inguruko meskitak, janari halal eta eskola islamiarrak zehatz-mehatz bilatu ahal izateko.';

  @override
  String get placesMapTilesUnavailableTitle =>
      'Maparen lauzak ez daude erabilgarri';

  @override
  String get placesMapTilesUnavailableBody =>
      'Egiaztatutako mapa-lauza-iturburua ez dago konfiguratuta oraindik konfigurazio honetarako. Inguruko tokiek gordetako kokapenetik karga daitezke oraindik.';

  @override
  String get unknownPlaceName => 'Izen ezezaguna';

  @override
  String get islamicPlaceFallback => 'Leku Islamikoa';

  @override
  String get asmaMeaning1 => 'Onuragarria';

  @override
  String get asmaMeaning2 => 'Errukialduna';

  @override
  String get asmaMeaning3 => 'Erregea / Eternal Lord';

  @override
  String get asmaMeaning4 => 'Santandua';

  @override
  String get asmaMeaning5 => 'Bakearen iturria';

  @override
  String get asmaMeaning6 => 'Segurtasunaren Ematea';

  @override
  String get asmaMeaning7 => 'The Guardian';

  @override
  String get asmaMeaning8 => 'Preziosa / Ahaltsuena';

  @override
  String get asmaMeaning9 => 'The Compeller';

  @override
  String get asmaMeaning10 => 'Handena';

  @override
  String get asmaMeaning11 => 'Sortzailea';

  @override
  String get asmaMeaning12 => 'Ordenaren sortzailea';

  @override
  String get asmaMeaning13 => 'Edertasunaren itxuratzailea';

  @override
  String get asmaMeaning14 => 'Barkamena';

  @override
  String get asmaMeaning15 => 'Superatzailea';

  @override
  String get asmaMeaning16 => 'Guztien Ematea';

  @override
  String get asmaMeaning17 => 'The Sustainer';

  @override
  String get asmaMeaning18 => 'Irekitzailea';

  @override
  String get asmaMeaning19 => 'Guztiak ezagutzen';

  @override
  String get asmaMeaning20 => 'The Constrictor';

  @override
  String get asmaMeaning21 => 'The Reliever';

  @override
  String get asmaMeaning22 => 'Abaser';

  @override
  String get asmaMeaning23 => 'Gorratzailea';

  @override
  String get asmaMeaning24 => 'Ohorezko Ematea';

  @override
  String get asmaMeaning25 => 'Umiliatzailea';

  @override
  String get asmaMeaning26 => 'Guztien entzulea';

  @override
  String get asmaMeaning27 => 'Guztien ikuslea';

  @override
  String get asmaMeaning28 => 'Epailea';

  @override
  String get asmaMeaning29 => 'Justoa';

  @override
  String get asmaMeaning30 => 'Sotil bat';

  @override
  String get asmaMeaning31 => 'Denak jakitun';

  @override
  String get asmaMeaning32 => 'The Forebearing';

  @override
  String get asmaMeaning33 => 'The Magnifico';

  @override
  String get asmaMeaning34 => 'Barkatzaile handia';

  @override
  String get asmaMeaning35 => 'Eskertasunaren saritzailea';

  @override
  String get asmaMeaning36 => 'Gorena';

  @override
  String get asmaMeaning37 => 'Handiena';

  @override
  String get asmaMeaning38 => 'The Preserver';

  @override
  String get asmaMeaning39 => 'Elikatzailea';

  @override
  String get asmaMeaning40 => 'The Reckoner';

  @override
  String get asmaMeaning41 => 'Maestuosoa';

  @override
  String get asmaMeaning42 => 'Eszabala';

  @override
  String get asmaMeaning43 => 'Begiratzailea';

  @override
  String get asmaMeaning44 => 'Otoitzaren erantzuna';

  @override
  String get asmaMeaning45 => 'Ulermena guztia';

  @override
  String get asmaMeaning46 => 'Perfektu jakintsua';

  @override
  String get asmaMeaning47 => 'Maitagarria';

  @override
  String get asmaMeaning48 => 'Loriatsuena';

  @override
  String get asmaMeaning49 => 'Berpizkundea';

  @override
  String get asmaMeaning50 => 'Lekukoa';

  @override
  String get asmaMeaning51 => 'Egia';

  @override
  String get asmaMeaning52 => 'Guztiz nahikoa fidatzailea';

  @override
  String get asmaMeaning53 => 'Indar guztien jabea';

  @override
  String get asmaMeaning54 => 'The Forceful';

  @override
  String get asmaMeaning55 => 'The Protector';

  @override
  String get asmaMeaning56 => 'Laudatua';

  @override
  String get asmaMeaning57 => 'Tasatzailea';

  @override
  String get asmaMeaning58 => 'Jatorria';

  @override
  String get asmaMeaning59 => 'Berreskuratzailea';

  @override
  String get asmaMeaning60 => 'Bizi-emailea';

  @override
  String get asmaMeaning61 => 'Bizitzaren Hartzailea';

  @override
  String get asmaMeaning62 => 'Betiko Biziduna';

  @override
  String get asmaMeaning63 => 'Norberak iraun duen sustatzailea';

  @override
  String get asmaMeaning64 => 'Bilatzailea';

  @override
  String get asmaMeaning65 => 'Loriatsua';

  @override
  String get asmaMeaning66 => 'Bakarrik';

  @override
  String get asmaMeaning67 => 'The One';

  @override
  String get asmaMeaning68 => 'Guztiek Bilatutakoa';

  @override
  String get asmaMeaning69 => 'Indartsua';

  @override
  String get asmaMeaning70 => 'Botere guztien sortzailea';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'Atzerapena';

  @override
  String get asmaMeaning73 => 'Lehena';

  @override
  String get asmaMeaning74 => 'Azkena';

  @override
  String get asmaMeaning75 => 'Manifestua';

  @override
  String get asmaMeaning76 => 'Ezkutukoa';

  @override
  String get asmaMeaning77 => 'Gobernadoreak';

  @override
  String get asmaMeaning78 => 'Gorena';

  @override
  String get asmaMeaning79 => 'Onaren Egilea';

  @override
  String get asmaMeaning80 => 'Damuaren gida';

  @override
  String get asmaMeaning81 => 'The Avenger';

  @override
  String get asmaMeaning82 => 'Barkatzailea';

  @override
  String get asmaMeaning83 => 'Klementoa';

  @override
  String get asmaMeaning84 => 'Guztion jabea / subiranoa';

  @override
  String get asmaMeaning85 => 'Majestatearen eta Errekonoziaren jabea';

  @override
  String get asmaMeaning86 => 'Ekitatiboa';

  @override
  String get asmaMeaning87 => 'The Gatherer';

  @override
  String get asmaMeaning88 => 'Aberatsa';

  @override
  String get asmaMeaning89 => 'Aberastzailea';

  @override
  String get asmaMeaning90 => 'Kalteen prebentzioa';

  @override
  String get asmaMeaning91 => 'The Bringer of Harm';

  @override
  String get asmaMeaning92 => 'Abantailen emailea';

  @override
  String get asmaMeaning93 => 'Argia';

  @override
  String get asmaMeaning94 => 'Gidaria';

  @override
  String get asmaMeaning95 => 'Jatorria';

  @override
  String get asmaMeaning96 => 'Betikoa';

  @override
  String get asmaMeaning97 => 'Oinordekoa';

  @override
  String get asmaMeaning98 => 'Gidarik zintzoena';

  @override
  String get asmaMeaning99 => 'Pazientea';
}
