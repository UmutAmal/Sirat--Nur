// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Esperanto (`eo`).
class AppLocalizationsEo extends AppLocalizations {
  AppLocalizationsEo([String locale = 'eo']) : super(locale);

  @override
  String get appTitle => 'Vojo de Alaho';

  @override
  String get splashTagline => 'Islama Vojo de Lumo';

  @override
  String get home => 'Hejmo';

  @override
  String get quran => 'Korano';

  @override
  String get qibla => 'Ĉiblo';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Kalendaro';

  @override
  String get settings => 'Agordoj';

  @override
  String get nextPrayer => 'Sekva Preĝo';

  @override
  String get prayerTimes => 'Preĝaj Tempoj';

  @override
  String get continueReading => 'Daŭre Legado';

  @override
  String get getLifetimePro => 'Akiru Lifetime Pro';

  @override
  String get unlockTajweed => 'Malŝlosu Tajweed kaj Altnivelajn Trajtojn';

  @override
  String get prayerCalculation => 'Preĝa Kalkulo';

  @override
  String get method => 'Kalkula Metodo';

  @override
  String get madhab => 'Asr Juristika Metodo';

  @override
  String get surahs => 'Suraoj';

  @override
  String get ayahs => 'Ayahs';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Sunleviĝo';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Magrib';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Tempo por $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Estas tempo preĝi $prayerName.';
  }

  @override
  String get dataStorage => 'Datumoj kaj Stokado';

  @override
  String get clearCache => 'Malplenigi Kaŝmemoron';

  @override
  String get cacheClearedSuccess => 'Kaŝmemoro malpleniĝis sukcese';

  @override
  String get location => 'Loko';

  @override
  String get language => 'Lingvo';

  @override
  String get selectLanguage => 'Elektu Lingvon';

  @override
  String get searchLanguage => 'Serĉu pli ol 180 lingvojn...';

  @override
  String get systemDefault => 'Sistemo Defaŭlto';

  @override
  String get currentLocation => 'Nuna Loko (GPS)';

  @override
  String get locationServiceDisabled => 'Loka servo estas malŝaltita.';

  @override
  String get locationPermissionDenied => 'Lokpermeso malakceptita.';

  @override
  String get locationDetectionFailed =>
      'Ne eblis detekti vian lokon. Bonvolu elekti urbon permane aŭ provi denove.';

  @override
  String citiesCount(String count) {
    return '$count urboj';
  }

  @override
  String get search => 'Serĉu';

  @override
  String get searchHint => 'Serĉu...';

  @override
  String get noResults => 'Neniuj rezultoj trovitaj';

  @override
  String get loading => 'Ŝargante...';

  @override
  String get error => 'Eraro';

  @override
  String get appErrorOccurred => 'Eraro okazis';

  @override
  String get appUnknownError => 'Nekonata eraro';

  @override
  String get quranLoadFailed =>
      'Korano-enhavo ne povis esti ŝargita. Bonvolu provi denove.';

  @override
  String get retry => 'Reprovi';

  @override
  String get refreshAction => 'Refreŝigi';

  @override
  String get cancel => 'Nuligi';

  @override
  String get save => 'Konservu';

  @override
  String get delete => 'Forigi';

  @override
  String get edit => 'Redakti';

  @override
  String get close => 'Fermu';

  @override
  String get ok => 'Bone';

  @override
  String get yes => 'Jes';

  @override
  String get no => 'Ne';

  @override
  String get surah => 'Surao';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Paĝo';

  @override
  String get reading => 'Legado';

  @override
  String get recitation => 'Deklamado';

  @override
  String get translation => 'Traduko';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Ŝarĝante tafsir...';

  @override
  String get tafsirSourceLabel => 'Tafsir fonto';

  @override
  String get tafsirNoSurahFound => 'Neniu tafsir trovita por ĉi tiu surao.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Neniu tafsir trovita por aya $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir ne povis esti ŝargita.';

  @override
  String get tafsirNoTextForAyah => 'Neniu tafsir-teksto por ĉi tiu ajah.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Elŝutante tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Ŝarĝante tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir-fonto resendis HTTP $statusCode eraron.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'La elektita tafsir-fonto resendis neniujn enskribojn.';

  @override
  String get bookmarks => 'Legosignoj';

  @override
  String get addBookmark => 'Aldonu legosignon';

  @override
  String get removeBookmark => 'Forigi legosignon';

  @override
  String get lastRead => 'Lasta Legita';

  @override
  String get dailyZikr => 'Ĉiutaga Zikr';

  @override
  String get duaMeaning1 =>
      'aliaj preĝas: ‘Nia Sinjoro, donu al ni bonon en ĉi tiu mondo kaj en la Ĉi-poste, kaj protektu nin kontraŭ la turmento de la Fajro.’';

  @override
  String get duaMeaning2 =>
      'Dio ne ŝarĝas neniun animon per pli ol ĝi povas elporti: ĉiu gajnas kian bonon, kiun ĝi faris, kaj suferas sian malbonon- ‘Sinjoro, ne zorgu nin, se ni forgesas aŭ faras erarojn. Sinjoro, ne ŝarĝu nin kiel Vi ŝarĝis tiujn antaŭ ni. Sinjoro, ne ŝarĝu nin per pli ol ni havas forton por elporti. Pardonu nin, pardonu nin kaj kompatu nin. Vi estas nia Protektanto, do helpu nin kontraŭ la nekredantoj.’';

  @override
  String get duaMeaning3 =>
      '‘Nia Sinjoro, ne lasu niajn korojn deflankiĝi post kiam Vi gvidis nin. Donu al ni Vian kompaton: Vi estas la Ĉiam Donanta.';

  @override
  String get duaMeaning4 =>
      'Sinjoro, donu, ke mi kaj mia idaro daŭrigu la preĝon. Nia Sinjoro, akceptu mian peton.';

  @override
  String get duaMeaning5 =>
      'kaj malaltigu vian flugilon en humileco al ili en bonkoreco, kaj diru: \'Sinjoro, kompatu ilin, kiel ili zorgis pri mi kiam mi estis malgranda.\'';

  @override
  String get duaMeaning6 =>
      'altigita estu Dio, Tiu, kiu vere regas. [Profeto], ne rapidu deklami antaŭ ol la revelacio estas plene kompleta, sed diru: \'Sinjoro, pliigu min en scio!\'';

  @override
  String get duaMeaning7 =>
      'Diru [Profeto]: \'Sinjoro, pardonu kaj kompatu: Vi estas la plej kompatema el ĉiuj.\'';

  @override
  String get duaMeaning8 =>
      'tiuj, kiuj preĝas, ‘Nia Sinjoro, donu al ni ĝojon pri niaj geedzoj kaj idaro. Faru al ni bonajn ekzemplojn al tiuj, kiuj konscias pri Vi’.';

  @override
  String get morningZikr => 'Matene Zikr';

  @override
  String get eveningZikr => 'Vespere Zikr';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masa\'il';

  @override
  String get hadith => 'Hadito';

  @override
  String get hadithCollection => 'Hadito-Kolekto';

  @override
  String get hadithBooks => 'Hadito-Libroj';

  @override
  String get searchHadith => 'Serĉu Haditon';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Nomoj de Alaho';

  @override
  String get liveTv => 'Viva televido';

  @override
  String get watchLive => 'Spektu Live';

  @override
  String get streamError => 'Flua eraro';

  @override
  String get reload => 'Reŝargi';

  @override
  String get openInYoutube => 'Malfermu en Jutubo';

  @override
  String get ibadahTracker => 'Ibadah Spuristo';

  @override
  String get fasting => 'Fastado';

  @override
  String get quranReading => 'Legado de la Korano';

  @override
  String get prayers => 'Preĝoj';

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
  String get dhikrCount => 'Dhikr Grafo';

  @override
  String get weeklyProgress => 'Semajna Progreso';

  @override
  String get monthlyProgress => 'Monata Progreso';

  @override
  String get statistics => 'Statistiko';

  @override
  String get hijriCalendar => 'Hijri Kalendaro';

  @override
  String get gregorianCalendar => 'Gregoria Kalendaro';

  @override
  String get today => 'Hodiaŭ';

  @override
  String get tomorrow => 'Morgaŭ';

  @override
  String get yesterday => 'Hieraŭ';

  @override
  String get specialDays => 'Specialaj Tagoj';

  @override
  String get ramadan => 'Ramadano';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Islama Novjaro';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadano';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadano';

  @override
  String get specialDayDateEidAlFitr => '1 Shawwal';

  @override
  String get specialDayDateEidAlAdha => '10 Dhul Hijjah';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharam';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabi al-Awwal';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'Kibla Direkto';

  @override
  String get compass => 'Kompaso';

  @override
  String get degrees => 'gradoj';

  @override
  String get north => 'Nordo';

  @override
  String get qiblaFound => 'Ĉiblo trovita!';

  @override
  String get turnDevice => 'Turnu vian aparaton por alfronti la Kiblon';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Kompaseraro: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Kompasa sensilo ne disponeblas en ĉi tiu aparato.';

  @override
  String get qiblaLocationRequiredTitle => 'Loko necesa por Ĉiblo';

  @override
  String get qiblaLocationRequiredBody =>
      'Agordu vian realan lokon antaŭ ol uzi la Qibla kompason, por ke la direkto estu precize kalkulita.';

  @override
  String get adhanNotificationChannelName => 'Adhan Sciigoj';

  @override
  String get adhanNotificationChannelDescription =>
      'Atentigoj de preĝa tempo per adhan sono.';

  @override
  String get notifications => 'Sciigoj';

  @override
  String get prayerNotifications => 'Preĝaj Sciigoj';

  @override
  String get enableNotifications => 'Ebligu Sciigojn';

  @override
  String get notificationTime => 'Tempo de Sciigo';

  @override
  String get beforePrayer => 'minutojn antaŭ preĝo';

  @override
  String get theme => 'Temo';

  @override
  String get lightMode => 'Luma Reĝimo';

  @override
  String get darkMode => 'Malhela Reĝimo';

  @override
  String get systemTheme => 'Sistema Temo';

  @override
  String get about => 'Pri';

  @override
  String get version => 'Versio';

  @override
  String get privacyPolicy => 'Privateca Politiko';

  @override
  String get termsOfService => 'Servokondiĉoj';

  @override
  String get contactUs => 'Kontaktu Nin';

  @override
  String get rateApp => 'Tarifa Apo';

  @override
  String get shareApp => 'Kunhavigi Apon';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Rigardu $appName: La finfina apo pri islama vivstilo! $url';
  }

  @override
  String get downloadManager => 'Elŝuta Administranto';

  @override
  String get downloads => 'Elŝutoj';

  @override
  String get downloading => 'Elŝutante...';

  @override
  String get downloadComplete => 'Elŝutu Kompleta';

  @override
  String get downloadFailed => 'Elŝuto malsukcesis';

  @override
  String get offlineMode => 'Senkonekta Reĝimo';

  @override
  String get noInternet => 'Neniu Interreta Konekto';

  @override
  String get checkConnection => 'Bonvolu kontroli vian konekton';

  @override
  String get premium => 'Premium';

  @override
  String get upgradeToPro => 'Ĝisdatigu al Pro';

  @override
  String get proFeatures => 'Profesiaj Trajtoj';

  @override
  String get removeAds => 'Forigi Reklamojn';

  @override
  String get unlockAll => 'Malŝlosu Ĉian Enhavon';

  @override
  String get exclusiveContent => 'Ekskluziva Enhavo';

  @override
  String get welcome => 'Bonvenon';

  @override
  String get getStarted => 'Komencu';

  @override
  String get skip => 'Saltu';

  @override
  String get next => 'Poste';

  @override
  String get done => 'Farita';

  @override
  String get onboarding1Title => 'Bonvenon al Vojo de Alaho';

  @override
  String get onboarding1Desc =>
      'Via kompleta islama akompana aplikaĵo por preĝtempoj, Korano kaj pli';

  @override
  String get onboarding2Title => 'Preĝaj Tempoj';

  @override
  String get onboarding2Desc => 'Precizaj preĝtempoj bazitaj sur via loko';

  @override
  String get onboarding3Title => 'Korano & Pli';

  @override
  String get onboarding3Desc =>
      'Legu Koranon, spuru vian legadon kaj esploru islaman enhavon';

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
  String get zikrCompletedMashAllah => 'Kompletigita! Maŝalaho';

  @override
  String get zikrMeaningSubhanAllah =>
      'Alaho estas multe super ĉiu neperfekteco.';

  @override
  String get zikrMeaningAlhamdulillah => 'Ĉiu laŭdo apartenas al Alaho.';

  @override
  String get zikrMeaningAllahuAkbar => 'Alaho estas la Plej Granda.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Ne ekzistas dio krom Alaho.';

  @override
  String get zikrMeaningAstaghfirullah => 'Mi serĉas la pardonon de Alaho.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Ne ekzistas potenco kaj forto krom per Alaho.';

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
  String get offlineDownloadManager => 'Senkonekta Elŝuta Administranto';

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
  String get audioVoice => 'Audio Voĉo';

  @override
  String get audioVoiceMisharyAlafasy => 'Masklo (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Masklo (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Masklo (Sudais)';

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
  String get diagnosticsNotSet => 'Ne fiksita';

  @override
  String get diagnosticsPrayerProfile => 'Preĝa Profilo';

  @override
  String get diagnosticsPrayerSource => 'Preĝa Aŭtoritato';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Propra / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manaj kutimaj anguloj (neniu institucia fonto)';

  @override
  String get diagnosticsCloudDriven => 'Nubo Stirita';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Quran Audio Aktivoj';

  @override
  String get diagnosticsAudioAssets => 'Audio Aktivoj';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count dosieroj';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Legado de manifesto malsukcesis: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Lokaj Lokoj';

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
      'Nubaj tabloj mankas en Supabase; pakigita falo aktiva';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Nubo juz metadatumoj mankas; pakigita struktura falo aktiva';

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
  String get dailyVerse => 'Ĉiutaga Verso';

  @override
  String get todaysIbadah => 'Hodiaŭ Ibadah';

  @override
  String get quickAccess => 'Rapida Aliro';

  @override
  String get assistant => 'Asistanto';

  @override
  String get places => 'Lokoj';

  @override
  String get library => 'Biblioteko';

  @override
  String get analytics => 'Analitiko';

  @override
  String get dailyDuas => 'Ĉiutaga Duas';

  @override
  String essentialDuas(String count) {
    return '$count esencaj duas';
  }

  @override
  String get duaUnavailableTitle => 'Kontrolitaj duoj ankoraŭ ne haveblas';

  @override
  String get duaUnavailableBody =>
      'Konfirmitaj ĉiutagaj duoj ankoraŭ ne estis sinkronigitaj kun ĉi tiu aparato. Konektiĝu al la nuba fonto por ŝargi fontan duason anstataŭ nekontrolita falo.';

  @override
  String get duaCategoryQuranic => 'Korana dua';

  @override
  String get duaCategoryMorningEvening => 'Mateno & Vespero';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Protekto';

  @override
  String get duaCategoryBeginning => 'Komencoj';

  @override
  String get duaCategorySleep => 'Dormu';

  @override
  String get duaCategoryFoodDrink => 'Manĝaĵo & Trinkaĵo';

  @override
  String get duaCategoryForgiveness => 'Pardono';

  @override
  String get duaCategoryHome => 'Hejmo';

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
  String get islamicEducation => 'Islama Eduko';

  @override
  String get sukunAudioTitle => 'Sukun Sonpejzaĝoj';

  @override
  String get hadithCollections => 'Hadith-Kolektoj';

  @override
  String get hadithSourcePending => 'Atendata kontrolita fonto';

  @override
  String get hadithUnavailableTitle =>
      'Kontrolitaj hadito-kolektoj ankoraŭ ne haveblas';

  @override
  String get hadithUnavailableBody =>
      'Ĉi tiu konstruo daŭre dependas de nekontrolita ekstera hadito-fluo. Hadith-retumado restas malŝaltita ĝis fontita datumaro estas sinkronigita.';

  @override
  String get paywallUnlockAll =>
      'Malŝlosu ĉiujn funkciojn por via spirita vojaĝo';

  @override
  String get premiumProductUnavailable =>
      'Premium-produkto ne haveblas nun. Bonvolu provi denove poste.';

  @override
  String get premiumPurchaseFailed =>
      'Aĉeto ne povis esti finita. Bonvolu provi denove.';

  @override
  String get paywallFeature1Title => 'Neŭrala Asistanto Plus';

  @override
  String get paywallFeature1Desc => 'Senlimaj demandoj kaj respondoj de AI';

  @override
  String get paywallFeature2Title => 'Senlima Senrete';

  @override
  String get paywallFeature2Desc => 'Elŝutu ĉiujn recitadojn';

  @override
  String get paywallFeature3Title => 'Ekskluzivaj Dezajnoj';

  @override
  String get paywallFeature3Desc => 'Superaj temoj kaj tiparoj';

  @override
  String get paywallFeature4Title => 'Sen reklamoj';

  @override
  String get paywallFeature4Desc => 'Nulo reklamoj';

  @override
  String get paywallGetAccess => 'Akiru Dumvivan Aliron - \$1.00';

  @override
  String get restorePurchases => 'Restarigi Aĉetojn';

  @override
  String get zakatCalculator => 'Zakat Kalkulilo';

  @override
  String get zakatGold => 'Oro (Altın)';

  @override
  String get zakatSilver => 'Arĝento (Gümüş)';

  @override
  String get zakatCashBank => 'Kontantmono / Banko';

  @override
  String get zakatBusiness => 'Komerco';

  @override
  String get zakatInvestments => 'Investoj';

  @override
  String get zakatWeightGrams => 'Pezo (g)';

  @override
  String get zakatPricePerGram => 'Prezo/g';

  @override
  String get zakatTotalAmount => 'Tuta Kvanto';

  @override
  String get zakatInventoryValue => 'Stokvaloro';

  @override
  String get zakatDebts => 'Ŝuldoj';

  @override
  String get zakatTotal => 'Entute';

  @override
  String get calculateZakat => 'Kalkuli Zakat';

  @override
  String get nisabNotReached => 'Nisab ne atingis. Zakat ne estas deviga.';

  @override
  String get totalZakat => 'Tuta Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Aktivoj: $assets';
  }

  @override
  String get zakatGoldZakat => 'Ora Zakat';

  @override
  String get zakatSilverZakat => 'Arĝenta Zakat';

  @override
  String get zakatCashZakat => 'Mona Zakat';

  @override
  String get zakatBusinessZakat => 'Komerco Zakat';

  @override
  String get zakatInvestmentZakat => 'Investo Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Ĉiutaga demandlimo atingita. Ĝisdatigu al Premium senlime.';

  @override
  String get chatbotErrorMsg =>
      'Mi ne povis generi respondon. Bonvolu provi denove.';

  @override
  String get chatbotOfflinePrompt =>
      'La kontrolita eksterreta islama sciobazo daŭre estas prizorgita. Vi povas ebligi senkonektan rezervejon nun, sed ĝi nur montros limigitajn sekurajn mesaĝojn ĝis la fonta datumaro estos preta.\n\nĈu vi ŝatus ebligi senkonektan falon?';

  @override
  String get chatbotOfflineSwitched =>
      'Senkonekta falo ebligita. Kontrolitaj lokaj islamaj respondoj ankoraŭ ne estas pretaj.';

  @override
  String get chatbotOfflineDownloadLabel => 'Ebligu Senkonektan Refalon';

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
  String get downloadAction => 'Elŝutu';

  @override
  String get resumeDownload => 'Rekomencu Elŝuton';

  @override
  String get deleteDownloadedFiles => 'Forigu elŝutitajn dosierojn';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Elŝuto nuligita por $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Elŝuto finiĝis por $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Elŝuto finiĝis por $reciter kun $failed malsukcesaj suraoj ($downloaded/$total elŝutita).';
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
  String get sukunMixerSubtitle => 'Miksilo de Naturo kaj Korano';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (Naturo)';

  @override
  String get sukunRainOfMercy => 'Pluvo de Kompato';

  @override
  String get sukunGardenOfPeace => 'Ĝardeno de Paco';

  @override
  String get sukunMidnightCalm => 'Noktomezo Trankvilo';

  @override
  String get sukunOceanTawheed => 'Oceano Tawheed';

  @override
  String get sukunUnavailableTitle => 'Sonpejzaĝoj nedisponeblaj';

  @override
  String get sukunUnavailableBody =>
      'Ĉi tiu konstruo ankoraŭ ne inkluzivas la bezonatajn Sukun-sonpejzaĝajn aktivaĵojn.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Taga sinsekvo';

  @override
  String get bestStreak => 'Plej bona sinsekvo';

  @override
  String get chatbotCloudAiLabel => 'Nubo AI';

  @override
  String get chatbotLocalAiLabel => 'Senkonekta Refalo';

  @override
  String get chatbotUseCloudAi => 'Uzu Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Ebligu Senkonektan Refalon';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count foriris';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Nuba API ne agordita. Bonvolu ŝanĝi al Loka AI.';

  @override
  String get chatbotLocalNoInfo =>
      '[SENLINE] Kontrolita loka islama gvidado ankoraŭ ne haveblas. Ŝanĝu al Cloud AI por fontaj respondoj.';

  @override
  String get mosques => 'Moskeoj';

  @override
  String get halalFood => 'Halala Manĝaĵo';

  @override
  String get placesSearchArea => 'Serĉu ĉi tiun areon';

  @override
  String get nearbyMosques => 'Proksimaj Moskeoj';

  @override
  String get islamicSchools => 'Islamaj Lernejoj';

  @override
  String placesFoundCount(String count) {
    return '$count trovita';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km for';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API-eraro: $statusCode';
  }

  @override
  String get placesNetworkError => 'Reta eraro. Bonvolu provi denove.';

  @override
  String get placesLocationRequiredTitle => 'Loko bezonata';

  @override
  String get placesLocationRequiredBody =>
      'Unue starigu lokon, por ke proksimaj moskeoj, halala manĝaĵo kaj islamaj lernejoj estu precize serĉataj.';

  @override
  String get placesMapTilesUnavailableTitle => 'Mapo-kaheloj nedisponeblaj';

  @override
  String get placesMapTilesUnavailableBody =>
      'Kontrolita mapo-fonto ankoraŭ ne estas agordita por ĉi tiu konstruo. Proksimaj lokoj ankoraŭ povas ŝargi de via konservita loko.';

  @override
  String get unknownPlaceName => 'Nekonata Nomo';

  @override
  String get islamicPlaceFallback => 'Islama Loko';

  @override
  String get asmaMeaning1 => 'La Bonfaranto';

  @override
  String get asmaMeaning2 => 'La Kompatema';

  @override
  String get asmaMeaning3 => 'La Reĝo / Eterna Sinjoro';

  @override
  String get asmaMeaning4 => 'La Plejsankta';

  @override
  String get asmaMeaning5 => 'La Fonto de Paco';

  @override
  String get asmaMeaning6 => 'La Donanto de Sekureco';

  @override
  String get asmaMeaning7 => 'La Gardisto';

  @override
  String get asmaMeaning8 => 'La Altvalora / La Plej Potenca';

  @override
  String get asmaMeaning9 => 'La Deviganto';

  @override
  String get asmaMeaning10 => 'La Plej Granda';

  @override
  String get asmaMeaning11 => 'La Kreinto';

  @override
  String get asmaMeaning12 => 'La Farinto de Ordo';

  @override
  String get asmaMeaning13 => 'La Formulo de Beleco';

  @override
  String get asmaMeaning14 => 'La Pardono';

  @override
  String get asmaMeaning15 => 'La Subulo';

  @override
  String get asmaMeaning16 => 'La Donanto de Ĉio';

  @override
  String get asmaMeaning17 => 'La Subtenanto';

  @override
  String get asmaMeaning18 => 'La Malfermilo';

  @override
  String get asmaMeaning19 => 'La Konanto de Ĉio';

  @override
  String get asmaMeaning20 => 'La Konstriktanto';

  @override
  String get asmaMeaning21 => 'La Reliever';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'La Exalter';

  @override
  String get asmaMeaning24 => 'La Donanto de Honoro';

  @override
  String get asmaMeaning25 => 'La Humilisto';

  @override
  String get asmaMeaning26 => 'La Aŭskultanto de Ĉio';

  @override
  String get asmaMeaning27 => 'La Vidinto de Ĉio';

  @override
  String get asmaMeaning28 => 'La Juĝisto';

  @override
  String get asmaMeaning29 => 'La Justulo';

  @override
  String get asmaMeaning30 => 'La Subtila';

  @override
  String get asmaMeaning31 => 'La Ĉia Konscia';

  @override
  String get asmaMeaning32 => 'La Forebearing';

  @override
  String get asmaMeaning33 => 'La Grandioza';

  @override
  String get asmaMeaning34 => 'La Granda Pardonanto';

  @override
  String get asmaMeaning35 => 'La Rekompencisto de Dankemo';

  @override
  String get asmaMeaning36 => 'La Plej Alta';

  @override
  String get asmaMeaning37 => 'La Plej Granda';

  @override
  String get asmaMeaning38 => 'La Konservisto';

  @override
  String get asmaMeaning39 => 'La Nutranto';

  @override
  String get asmaMeaning40 => 'La kalkulisto';

  @override
  String get asmaMeaning41 => 'La Majesta';

  @override
  String get asmaMeaning42 => 'La Malavara';

  @override
  String get asmaMeaning43 => 'La Gardisto';

  @override
  String get asmaMeaning44 => 'La Respondanto al Preĝo';

  @override
  String get asmaMeaning45 => 'La Ĉia Komprenado';

  @override
  String get asmaMeaning46 => 'La Perfekte Saĝa';

  @override
  String get asmaMeaning47 => 'La Amatino';

  @override
  String get asmaMeaning48 => 'La Plej Glora';

  @override
  String get asmaMeaning49 => 'La Revivanto';

  @override
  String get asmaMeaning50 => 'La Atestanto';

  @override
  String get asmaMeaning51 => 'La Vero';

  @override
  String get asmaMeaning52 => 'La Tute Sufiĉa Kuratoro';

  @override
  String get asmaMeaning53 => 'La Posedanto de Ĉia Forto';

  @override
  String get asmaMeaning54 => 'La Forta';

  @override
  String get asmaMeaning55 => 'La Protektanto';

  @override
  String get asmaMeaning56 => 'La Laŭdata';

  @override
  String get asmaMeaning57 => 'La Taksisto';

  @override
  String get asmaMeaning58 => 'La Kreinto';

  @override
  String get asmaMeaning59 => 'La Restariganto';

  @override
  String get asmaMeaning60 => 'La Donanto de Vivo';

  @override
  String get asmaMeaning61 => 'La Prenanto de Vivo';

  @override
  String get asmaMeaning62 => 'La Ĉiam Vivanta';

  @override
  String get asmaMeaning63 => 'La Mem-Subsista Subtenanto';

  @override
  String get asmaMeaning64 => 'La Serĉilo';

  @override
  String get asmaMeaning65 => 'La Glora';

  @override
  String get asmaMeaning66 => 'La Sola';

  @override
  String get asmaMeaning67 => 'La Unu';

  @override
  String get asmaMeaning68 => 'La Serĉata de Ĉiuj';

  @override
  String get asmaMeaning69 => 'La Potenca';

  @override
  String get asmaMeaning70 => 'La Kreinto de ĉia potenco';

  @override
  String get asmaMeaning71 => 'La Expediter';

  @override
  String get asmaMeaning72 => 'La Prokrasto';

  @override
  String get asmaMeaning73 => 'La Unua';

  @override
  String get asmaMeaning74 => 'La Lasta';

  @override
  String get asmaMeaning75 => 'La Manifesto';

  @override
  String get asmaMeaning76 => 'La Kaŝita';

  @override
  String get asmaMeaning77 => 'La Guberniestro';

  @override
  String get asmaMeaning78 => 'La Supera';

  @override
  String get asmaMeaning79 => 'La Faranto de Bono';

  @override
  String get asmaMeaning80 => 'La Gvidilo al Pento';

  @override
  String get asmaMeaning81 => 'La Venĝanto';

  @override
  String get asmaMeaning82 => 'La Pardonanto';

  @override
  String get asmaMeaning83 => 'La Klemento';

  @override
  String get asmaMeaning84 => 'La Posedanto / Suvereno de Ĉiuj';

  @override
  String get asmaMeaning85 => 'La Posedanto de Moŝto kaj Premio';

  @override
  String get asmaMeaning86 => 'La Justulo';

  @override
  String get asmaMeaning87 => 'La Kolektanto';

  @override
  String get asmaMeaning88 => 'La Riĉa';

  @override
  String get asmaMeaning89 => 'La Riĉiganto';

  @override
  String get asmaMeaning90 => 'La Malhelpanto de Malutilo';

  @override
  String get asmaMeaning91 => 'La Alportanto de Malutilo';

  @override
  String get asmaMeaning92 => 'La Donanto de Profitoj';

  @override
  String get asmaMeaning93 => 'La Lumo';

  @override
  String get asmaMeaning94 => 'La Gvidisto';

  @override
  String get asmaMeaning95 => 'La Kreinto';

  @override
  String get asmaMeaning96 => 'La Eterna Unu';

  @override
  String get asmaMeaning97 => 'La Heredanto';

  @override
  String get asmaMeaning98 => 'La Plej Justa Gvidilo';

  @override
  String get asmaMeaning99 => 'La Paciento Unu';
}
