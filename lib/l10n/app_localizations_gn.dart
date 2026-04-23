// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Guarani (`gn`).
class AppLocalizationsGn extends AppLocalizations {
  AppLocalizationsGn([String locale = 'gn']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Tape Islámica Tesape rehegua';

  @override
  String get home => 'Óga';

  @override
  String get quran => 'Corán rehegua';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr rehegua';

  @override
  String get calendar => 'Calendario rehegua';

  @override
  String get settings => 'Ñemboheko';

  @override
  String get nextPrayer => 'Ñembo’e oúva';

  @override
  String get prayerTimes => 'Ñembo’e Aravo';

  @override
  String get continueReading => 'Emoñe’ẽ meme';

  @override
  String get getLifetimePro => 'Ojehupyty Pro Tekove pukukue';

  @override
  String get unlockTajweed =>
      'Desbloquear Tajweed & Características Avanzadas rehegua';

  @override
  String get prayerCalculation => 'Ñembo’e Cálculo rehegua';

  @override
  String get method => 'Método de Cálculo rehegua';

  @override
  String get madhab => 'Asr Método Jurídico rehegua';

  @override
  String get surahs => 'Surahkuéra rehegua';

  @override
  String get ayahs => 'Ayahs rehegua';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Kuarahy resẽ';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Magrib rehegua';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Aravo $prayerName rehegua.';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Oguahẽma ára ñañembo\'e haguã $prayerName.';
  }

  @override
  String get dataStorage => 'Datos & Ñeñongatuha';

  @override
  String get clearCache => 'Emopotĩ Caché';

  @override
  String get cacheClearedSuccess => 'Caché oñembogue porã';

  @override
  String get location => 'Ñeimeha';

  @override
  String get language => 'Ñe\'ẽ';

  @override
  String get selectLanguage => 'Eiporavo Ñe’ẽ';

  @override
  String get searchLanguage => 'Eheka 180+ ñe\'ẽ...';

  @override
  String get systemDefault => 'Sistema rehegua Por defecto';

  @override
  String get currentLocation => 'Moõpa oĩ ko’áĝa (GPS) .';

  @override
  String get locationServiceDisabled => 'Servicio de ubicación oñembogue.';

  @override
  String get locationPermissionDenied =>
      'Oñembotove permiso ubicación rehegua.';

  @override
  String get locationDetectionFailed =>
      'Ndaikatúi ohechakuaa moõpa reime. Eiporavo peteĩ táva nde po rupive térã eñeha’ã jey.';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => 'Jeheka';

  @override
  String get searchHint => 'Jeheka...';

  @override
  String get noResults => 'No results found';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get appErrorOccurred => 'Oiko peteĩ jejavy';

  @override
  String get appUnknownError => 'Ojejavy ndojekuaáiva';

  @override
  String get quranLoadFailed =>
      'Ndaikatúi ojekarga contenido Corán rehegua. Eñeha’ã jey.';

  @override
  String get retry => 'Eñeha’ã jey';

  @override
  String get refreshAction => 'Refresh';

  @override
  String get cancel => 'Heja';

  @override
  String get save => 'Pysyrõ';

  @override
  String get delete => 'Delete';

  @override
  String get edit => 'Moambue';

  @override
  String get close => 'Mboty';

  @override
  String get ok => 'OĨMA';

  @override
  String get yes => 'heẽ';

  @override
  String get no => 'nahániri';

  @override
  String get surah => 'Surah rehegua';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Página';

  @override
  String get reading => 'Moñe\'ẽrã';

  @override
  String get recitation => 'Recitación rehegua';

  @override
  String get translation => 'Ñembohasaha';

  @override
  String get tafsir => 'Tafsir rehegua';

  @override
  String get tafsirLoading => 'Ojekarga hína tafsir...';

  @override
  String get tafsirSourceLabel => 'Tafsir fuente';

  @override
  String get tafsirNoSurahFound =>
      'Ndaipóri tafsir ojejuhúva ko surah-pe guarã.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Ndaipóri tafsir ojejuhúva ayah $ayah-pe g̃uarã.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir ndaikatúi ojekarga.';

  @override
  String get tafsirNoTextForAyah => 'Ndaipóri texto tafsir ko ayah-pe guarã.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Downloading tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Loading tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir ypykue ombojevy peteĩ HTTP $statusCode jejavy.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Pe tafsir ypykue ojeporavóva ndoguerúi mba’eveichagua jeike.';

  @override
  String get tafsirCacheUnavailable =>
      'Verificado tafsir ndojeguerekói gueteri offline. Embojoaju peteĩ tafsir datokuéra ryru oúva eheka mboyve.';

  @override
  String get bookmarks => 'Marcadores rehegua';

  @override
  String get addBookmark => 'Ombojoapy Marcador';

  @override
  String get removeBookmark => 'Oipe’a Marcador';

  @override
  String get lastRead => 'Moñe’ẽrã paha';

  @override
  String get dailyZikr => 'Ára ha ára Zikr';

  @override
  String get duaMeaning1 =>
      'ambue katu oñembo’e: ‘Ñande Ruvicha, eme’ẽ oréve mba’eporã ko yvy ape ári ha ára pahápe, ha oreñangareko Tata jehasa’asýgui’.';

  @override
  String get duaMeaning2 =>
      'Ñandejára ndoipyhyi mba’eveichagua ánga hetave ikatúvagui oaguanta: peteĩteĩ ogana oimeraẽ mba’e porã ojapova’ekue, ha ohasa asy ivaíva- ‘ Ñandejára, ani oregueraha tembiaporãme ñanderesarái térã jajavýramo. Ñandejára, ani orembopy’a rasy rembohasa haguéicha umi ore mboyveguápe. Ñandejára, ani orembopy’a rasy hetave mba’e roguerekóvagui rogueropu’aka haĝua. Oreperdona, oreperdona ha oreporiahuvereko. Nde ningo ore Protector, upévare orepytyvõ umi ndogueroviáivape’.';

  @override
  String get duaMeaning3 =>
      '‘Ore Ruvicha, ani reheja ore korasõ ojedesvia ore sãmbyhy rire. Eme’ẽ oréve Ne poriahuvereko: Nde ha’e pe Ome’ẽva Akóinte.';

  @override
  String get duaMeaning4 =>
      'Ñandejára, eme’ẽ chéve che ha che ñemoñare tosegi pe ñembo’e. Ñande Ruvicha, eguerohory che mba’ejerure.';

  @override
  String get duaMeaning5 =>
      'ha emboguejy nde pepo ñemomirĩme hesekuéra py’aporãme ha ere: ‘Ñandejára, eiporiahuvereko chupekuéra, ha’ekuéra oñangareko haguéicha cherehe che michĩrõ guare’.';

  @override
  String get duaMeaning6 =>
      'toñemomba’eguasu Tupã, pe añetehápe oisãmbyhýva. [Profeta], ani pejejapura pe’recita pe revelación oñecompleta mboyve ha katu peje: ‘¡Señor, chembohetave mba’ekuaa!’.';

  @override
  String get duaMeaning7 =>
      'Ere [Profeta]: ‘Ñandejára, eperdona ha eiporiahuvereko: Nde ningo pe poriahuverekovéva opa mba’égui’.';

  @override
  String get duaMeaning8 =>
      'umi oñembo’éva, ‘Ñande Ruvicha, eme’ẽ ñandéve vy’a ñane ména térã ñane rembireko ha ñane ñemoñarekuérape. Ejapo oréve techapyrã porã umi nde consciente-pe’.';

  @override
  String get morningZikr => 'Pyhareve Zikr';

  @override
  String get eveningZikr => 'Ka’aru Zikr';

  @override
  String get tasbih => 'Tasbih rehegua';

  @override
  String get ahkab => 'Ahkam rehegua';

  @override
  String get masaail => 'Masa\'il';

  @override
  String get hadith => 'Hadith rehegua';

  @override
  String get hadithCollection => 'Hadith Ñembyaty';

  @override
  String get hadithBooks => 'Hadith Arandukakuéra';

  @override
  String get searchHadith => 'Ojeporeka Hadith-pe';

  @override
  String get asmaulHusna => 'Asma-ul-Husna rehegua';

  @override
  String get namesOfAllah => 'Allah réra';

  @override
  String get liveTv => 'TV en vivo rehegua';

  @override
  String get watchLive => 'Ehecha En vivo';

  @override
  String get streamError => 'Error de corriente rehegua';

  @override
  String get reload => 'Recarga jey';

  @override
  String get openInYoutube => 'Ojepe’a YouTube-pe';

  @override
  String get ibadahTracker => 'Ibadah Rastreador rehegua';

  @override
  String get fasting => 'Ayuno';

  @override
  String get quranReading => 'Corán Moñe’ẽrã';

  @override
  String get prayers => 'Ñembo’e';

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
  String get dhikrCount => 'Dhikr Conteo rehegua';

  @override
  String get weeklyProgress => 'Progreso Semána rehegua';

  @override
  String get monthlyProgress => 'Progreso Mensual rehegua';

  @override
  String get statistics => 'Estadística rehegua';

  @override
  String get hijriCalendar => 'Hijri Calendario rehegua';

  @override
  String get gregorianCalendar => 'Calendario Gregoriano rehegua';

  @override
  String get today => 'Ko árape';

  @override
  String get tomorrow => 'Ko\'ẽrõ';

  @override
  String get yesterday => 'Kuehe';

  @override
  String get specialDays => 'Ára Especial rehegua';

  @override
  String get ramadan => 'Ramadán-pe';

  @override
  String get eidAlFitr => 'Eid Al-Fitr rehegua';

  @override
  String get eidAlAdha => 'Eid Al-Adha rehegua';

  @override
  String get islamicNewYear => 'Ary Pyahu Islámico rehegua';

  @override
  String get mawlidAnNabi => 'Mawlid peteĩ-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadán-pe';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadán-pe';

  @override
  String get specialDayDateEidAlFitr => '1 Shawwal rehegua';

  @override
  String get specialDayDateEidAlAdha => '10 Dhul Hijjah rehegua';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharram rehegua';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabi al-Awwal rehegua';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr rehegua';

  @override
  String get qiblaDirection => 'Qibla Dirección rehegua';

  @override
  String get compass => 'Brújula rehegua';

  @override
  String get degrees => 'grados rehegua';

  @override
  String get north => 'Yvatévo';

  @override
  String get qiblaFound => '¡Qibla ojejuhu!';

  @override
  String get turnDevice => 'Embojere nde tembipuru embohovake hag̃ua Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Brújula jejavy: $error .';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Sensor brújula rehegua ndojeguerekói ko tembipuru’ípe.';

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
  String get notifications => 'Marandukuéra';

  @override
  String get prayerNotifications => 'Ñembo’e Ñe’ẽmondo';

  @override
  String get enableNotifications => 'Emboguata Marandukuéra';

  @override
  String get notificationTime => 'Marandu Aravo';

  @override
  String get beforePrayer => 'minuto oñembo’e mboyve';

  @override
  String get theme => 'Ñe\'ẽrã';

  @override
  String get lightMode => 'Modo Tesape rehegua';

  @override
  String get darkMode => 'Modo Pytũmby';

  @override
  String get systemTheme => 'Tema Sistema rehegua';

  @override
  String get about => 'Upéva rehegua';

  @override
  String get version => 'Je\'eháicha';

  @override
  String get privacyPolicy => 'Polítika Privasida rehegua';

  @override
  String get termsOfService => 'Términos de Servicio rehegua';

  @override
  String get contactUs => 'Eñe\'ẽ orendive';

  @override
  String get rateApp => 'Tasa App rehegua';

  @override
  String get shareApp => 'Compartir App';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Ñemboguejy Moakãha';

  @override
  String get downloads => 'Umi descarga rehegua';

  @override
  String get downloading => 'Ojegueru jave...';

  @override
  String get downloadComplete => 'Descargar Completo';

  @override
  String get downloadFailed => 'Ojegueru ndoikói';

  @override
  String get offlineMode => 'Modo Offline rehegua';

  @override
  String get noInternet => 'No Internet Connection';

  @override
  String get checkConnection => 'Ehecháke ne joaju';

  @override
  String get premium => 'Prima';

  @override
  String get upgradeToPro => 'Embopyahu Pro-pe';

  @override
  String get proFeatures => 'Pro Características rehegua';

  @override
  String get removeAds => 'Oipe’a umi Anuncios';

  @override
  String get unlockAll => 'Emboguejy Opaite Contenido';

  @override
  String get exclusiveContent => 'Contenido Exclusivo rehegua';

  @override
  String get welcome => 'Tapeg̃uahẽporãite';

  @override
  String get getStarted => 'Eñepyrũ';

  @override
  String get skip => 'Jepopo';

  @override
  String get next => 'Ag̃ui';

  @override
  String get done => 'Apopyre';

  @override
  String get onboarding1Title => 'Peju porãite Allah rape rehe';

  @override
  String get onboarding1Desc =>
      'Nde app compañero islámico completo umi tiempo de oración, Corán ha hetave mba’épe ĝuarã';

  @override
  String get onboarding2Title => 'Ñembo’e Aravo';

  @override
  String get onboarding2Desc =>
      'Umi horario exacto oñembo’e haĝua oñemopyendáva moõpa reime';

  @override
  String get onboarding3Title => 'Corán & Hetave mba\'e';

  @override
  String get onboarding3Desc =>
      'Emoñe’ẽ Corán, esegui ne moñe’ẽrã ha ehesa’ỹijo contenido islámico';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'Reset Contador rehegua';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'Jepapa ojehupytyséva: $target .';
  }

  @override
  String get tapToCount => 'Epoko reipapa hag̃ua';

  @override
  String get zikrCompletedMashAllah => '¡Oñemohu\'ãma! MashAllah rehegua';

  @override
  String get zikrMeaningSubhanAllah => 'Allah oĩ mombyry opa imperfección ári.';

  @override
  String get zikrMeaningAlhamdulillah => 'Opaite ñemomorã ha’e Allah mba’e.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah ha’e pe Tuichavéva.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Ndaipóri tupã ndaha\'éirõ Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Aheka Allah-pe perdón.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Ndaipóri pu’aka ha mbarete ndaha’éiramo Allah rupive.';

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
  String get dailyProgress => 'Progreso ára ha ára';

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
      'Ojesareko jey estado de suscripción premium rehe';

  @override
  String get syncStore =>
      'Embojoaju app store ndive emoañete hag̃ua ne suscripción premium.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'Ojeverifika suscripción premium rehegua.';

  @override
  String get premiumNotFound => 'Ndojejuhúi suscripción premium.';

  @override
  String premiumRefreshError(Object error) {
    return 'Ndaikatúi ombopyahu premium suscripción reko: $error .';
  }

  @override
  String get offlineDownloadManager =>
      'Ñemboguejyha Ñemboguejyha Fuera de línea';

  @override
  String get manageDatasets =>
      'Emohenda audio & conjunto de datos paquete masivo offline rehegua.';

  @override
  String get freeStorage => 'Emosãso tembipuru’i ryru ryepypegua.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'Ojesarekóva Corán base de datos rehe...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'Corán Base de Datos Estado rehegua';

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
    return 'Corán jesareko ndoikói: $error';
  }

  @override
  String get audioVoice => 'Ñe’ẽ Audio rehegua';

  @override
  String get audioVoiceMisharyAlafasy => 'Male (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Male (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Male (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Qibla Calibración rehegua';

  @override
  String get compassSmoothing => 'Brújula Ñemopotĩ';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Desplazamiento de calibración rehegua';

  @override
  String currentOffset(Object offset) {
    return 'Ko’áĝagua: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Emohenda nde brújula oikotevẽramo peteĩ corrección manual. Umi valor positivo ojere reloj gotyo.';

  @override
  String get apply => 'Emoĩ umi kámbio';

  @override
  String get resetOnboarding => 'Emohenda jey intro ñembosako’i';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Diagnóstico rehegua';

  @override
  String get diagnosticsNotSet => 'Noñemoĩri';

  @override
  String get diagnosticsPrayerProfile => 'Perfil Ñembo’e rehegua';

  @override
  String get diagnosticsPrayerSource => 'Autoridad de Oración rehegua';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Ángulo personalizado manual (ndaipóri fuente institucional) .';

  @override
  String diagnosticsPrayerHybridSource(String sourceName, String madhab) {
    return '$sourceName método orekóva puruhára oiporavóva $madhab Asr ñemboheko';
  }

  @override
  String get diagnosticsCloudDriven => 'Arai Ñemboguata';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio rehegua mba’ekuaarã';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio rehegua mba’ekuaarã';

  @override
  String get diagnosticsQuranAudioAssets => 'Corán Audio Activos rehegua';

  @override
  String get diagnosticsAudioAssets => 'Umi mba’ekuaarã Audio rehegua';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count rembiapokue';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifesto moñe\'ẽrã ndoikói: $error .';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Localización Locales rehegua';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count oipytyvõva';
  }

  @override
  String get diagnosticsQuranDataset => 'Corán Datos Ñembyaty';

  @override
  String get diagnosticsQuranSurahs => 'Corán Surah-kuéra rehegua';

  @override
  String get diagnosticsQuranAyahs => 'Corán Ayahs rehegua';

  @override
  String get diagnosticsQuranJuzMetadata => 'Corán Juz Metadatos rehegua';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Umi tabla arai rehegua ofaltáva Supabase-pe; fallback paquete rehegua activo';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Arai jesareko ndoikói: $error .';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Arai juz metadato ofalta; paquete estructural fallback activo rehegua';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Arai jesareko estructural ndoikói: $error .';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Calibración oñeikotevẽva. Ojere dispositivo figura-8-pe.';

  @override
  String get dailyVerse => 'Versíkulo Diario rehegua';

  @override
  String get dailyVerseUnavailableTitle => 'Versíkulo ára ha ára ndojeguerekói';

  @override
  String get dailyVerseUnavailableBody =>
      'Contenido verso ára ha ára ojehechaukáva noñemohendaporãi gueteri ko ñemopu’ãme g̃uarã. Embojoaju arai ypykue ndive térã embojoaju peteĩ caché ojehechakuaáva ehesa’ỹijo mboyve.';

  @override
  String get todaysIbadah => 'Ko árape Ibadah';

  @override
  String get quickAccess => 'Ojeike Pya’e';

  @override
  String get assistant => 'Pytyvõhára';

  @override
  String get places => 'Tenda';

  @override
  String get library => 'Arandukarenda';

  @override
  String get analytics => 'Analítica rehegua';

  @override
  String get dailyDuas => 'Ára ha ára Duas';

  @override
  String essentialDuas(String count) {
    return '$count essential duas';
  }

  @override
  String get duaUnavailableTitle => 'Umi duas verificado ndojeguerekói gueteri';

  @override
  String get duaUnavailableBody =>
      'Umi duas diario ojehechaukáva noñembojoajúi gueteri ko tembipuru’ípe. Embojoaju arai fuente-pe ekargávo duas fuente-gui peteĩ fallback ndojehecháiva rangue.';

  @override
  String get duaCategoryQuranic => 'Dua Corán rehegua';

  @override
  String get duaCategoryMorningEvening => 'Pyhareve & Ka\'aru';

  @override
  String get duaCategoryTasbih => 'Tasbih rehegua';

  @override
  String get duaCategoryProtection => 'Ñangareko rehegua';

  @override
  String get duaCategoryBeginning => 'Ñepyrũrã';

  @override
  String get duaCategorySleep => 'Ke';

  @override
  String get duaCategoryFoodDrink => 'Tembi’u & Mba’e’yru';

  @override
  String get duaCategoryForgiveness => 'Ñembyasy';

  @override
  String get duaCategoryHome => 'Óga';

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
  String get islamicEducation => 'Tekombo’e Islámica rehegua';

  @override
  String get sukunAudioTitle => 'Sukun Paisajes Sonidos rehegua';

  @override
  String get hadithCollections => 'Hadith Ñembyatykuéra';

  @override
  String get hadithSourcePending => 'Fuente verificada pendiente';

  @override
  String get hadithUnavailableTitle =>
      'Umi colección de hadith verificado ndojeguerekói gueteri';

  @override
  String get hadithUnavailableBody =>
      'Ko ñemopu’ã odepende gueteri peteĩ feed hadith externo ndojehecháiva rehe. Hadith jeheka opyta oñemboykéva oñembojoaju peve peteĩ datokuéra ryru fuente-gui.';

  @override
  String get paywallUnlockAll =>
      'Edesblokea opa mba’e nde viaje espiritual-pe ĝuarã';

  @override
  String get premiumProductUnavailable =>
      'Producto premium ndojeguerekói ko\'ágãite. Eñeha’ã jey upe rire.';

  @override
  String get premiumPurchaseFailed => 'Ndikatúi oñemohu\'ã jogua. Eñeha’ã jey.';

  @override
  String get paywallFeature1Title => 'Asistente Neural Plus rehegua';

  @override
  String get paywallFeature1Desc => 'Q&A AI-pe oñemombaretéva ilimitado';

  @override
  String get paywallFeature2Title => 'Ilimitado Offline-pe';

  @override
  String get paywallFeature2Desc => 'Emboguejy opaite recitación';

  @override
  String get paywallFeature3Title => 'Diseños Exclusivos rehegua';

  @override
  String get paywallFeature3Desc => 'Temas & fuentes premium rehegua';

  @override
  String get paywallFeature4Title => 'Ad-Free rehegua';

  @override
  String get paywallFeature4Desc => 'Cero umi anuncio';

  @override
  String get paywallGetAccess => 'Ojehupyty Jeike Tekove pukukue — \$1.00';

  @override
  String get restorePurchases => 'Oñemoĩjey umi mba’e ojejoguáva';

  @override
  String get zakatCalculator => 'Zakat rehegua';

  @override
  String get zakatGold => 'Oro (Altın) .';

  @override
  String get zakatSilver => 'Pláta (Gümüş) .';

  @override
  String get zakatCashBank => 'Efectivo / Banco rehegua';

  @override
  String get zakatBusiness => 'Ñemuharenda';

  @override
  String get zakatInvestments => 'Inversiones rehegua';

  @override
  String get zakatWeightGrams => 'Ipohýi (g) .';

  @override
  String get zakatPricePerGram => 'Precio/g';

  @override
  String get zakatTotalAmount => 'Monto Total rehegua';

  @override
  String get zakatInventoryValue => 'Inventario Valor rehegua';

  @override
  String get zakatDebts => 'Deuda rehegua';

  @override
  String get zakatTotal => 'Opaite';

  @override
  String get calculateZakat => 'Ekalkula Zakat rehegua';

  @override
  String get nisabNotReached => 'Nisab noguahẽi. Zakat ndaha’éi obligatorio.';

  @override
  String get totalZakat => 'Zakat Total rehegua';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakat de Oro rehegua';

  @override
  String get zakatSilverZakat => 'Zaka de plata rehegua';

  @override
  String get zakatCashZakat => 'Zakat efectivo rehegua';

  @override
  String get zakatBusinessZakat => 'Zakat Negocio rehegua';

  @override
  String get zakatInvestmentZakat => 'Zakat de inversión rehegua';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Límite de consulta diaria oguahëva. Embopyahu Premium-pe ilimitado-pe g̃uarã.';

  @override
  String get chatbotErrorMsg =>
      'Ndaikatúikuri agenera peteĩ respuesta. Eñeha’ã jey.';

  @override
  String get chatbotOfflinePrompt =>
      'Ko base de conocimiento islámico verificado offline oime gueteri comisariado. Ikatu emboguata fallback offline ko’áĝa, ha katu ohechaukáta marandu seguro limitado añoite pe datokuéra ryru osẽva’ekue oĩma peve.\n\n¿Remboguatasépa fallback offline?';

  @override
  String get chatbotOfflineSwitched =>
      'Ojeheja rei fallback offline-pe. Umi respuesta islámica local verificado noĩri gueteri listo.';

  @override
  String get chatbotOfflineDownloadLabel =>
      'Emboguata Fallback Offline rehegua';

  @override
  String get downloadPreparing => 'Oñembosako\'ívo descarga...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Downloading surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Opaite surah ojeguerupáma ko recitador-pe guarã.';

  @override
  String get offlineQuranAudioPacks =>
      'Paquetes de Audio Corán Offline rehegua';

  @override
  String storedOnDeviceMb(String size) {
    return 'Oñongatu tembipuru’ípe: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surahs downloaded';
  }

  @override
  String get redownloadMissingRepair => 'Omyatyrõ / Ojegueru Ofalta';

  @override
  String get downloadAction => 'Mboguejy';

  @override
  String get resumeDownload => 'Eñepyrũ emboguejy';

  @override
  String get deleteDownloadedFiles => 'Embogue umi Archivo Ojegueruva’ekue';

  @override
  String get downloadCancelling => 'Oñemboykévo...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Oñemboguejy oñembogue $reciter-pe g̃uarã.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Ojegueru oñembotýma $reciter-pe g̃uarã.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Ojegueru opa $reciter-pe g̃uarã umi surah $failed ndoikóiva ndive ($downloaded/$total oñemboguejy).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Oñembogue umi vore osẽva línea-gui $reciter-pe g̃uarã.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Verified Quran audio sources are unavailable right now.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Corán audio paquete oñembohapéva ndojejapói ($available/$total). Eñeha’ã jey oñembopyahu rire pe catálogo de audio.';
  }

  @override
  String get chatbotHint => 'Ask a question...';

  @override
  String get chatbotThinking => 'Thinking...';

  @override
  String get sukunMixerSubtitle => 'Naturaleza & Corán Mezclador rehegua';

  @override
  String get audioPlayFailed => 'Audio ñembopu ndoikói';

  @override
  String get sukunNatureLabel => 'Sukun (Tekoha) .';

  @override
  String get sukunRainOfMercy => 'Ama Misericordia rehegua';

  @override
  String get sukunGardenOfPeace => 'Yvotyty Py’aguapy rehegua';

  @override
  String get sukunMidnightCalm => 'Pyharepyte Py’aguapy';

  @override
  String get sukunOceanTawheed => 'Océano Tawheed rehegua';

  @override
  String get sukunUnavailableTitle => 'Umi paisaje sonoro ndojeguerekói';

  @override
  String get sukunUnavailableBody =>
      'Ko construcción ndoikéiva gueteri umi activo paisaje sonoro Sukun oñeikotevëva.';

  @override
  String get prayerCompletion => 'Ñembo’e Ñemohu’ã';

  @override
  String get streaks => 'Rayas rehegua';

  @override
  String get dayStreak => 'Ára racha';

  @override
  String get bestStreak => 'Racha iporãvéva';

  @override
  String get chatbotCloudAiLabel => 'AI arai rehegua';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback rehegua';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Emboguata Fallback Offline rehegua';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'API arai rehegua noñembohekopyrýi. Ndojeguerekói gueteri orientación islámica verificado offline.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Ndojeguerekói gueteri orientación islámica local ojehechaukáva. Embohasa Cloud AI-pe ñembohovái fuente-pe g̃uarã.';

  @override
  String get mosques => 'Mezquita-kuéra';

  @override
  String get halalFood => 'Tembi’u Halal rehegua';

  @override
  String get placesSearchArea => 'Eheka ko área';

  @override
  String get nearbyMosques => 'Mezquita-kuéra hi’aguĩva';

  @override
  String get islamicSchools => 'Mbo’ehao Islámico-kuéra';

  @override
  String placesFoundCount(String count) {
    return '$count found';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km away';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API jejavy: $statusCode .';
  }

  @override
  String get placesNetworkError => 'Red jejavy. Eñeha’ã jey.';

  @override
  String get placesLocationRequiredTitle => 'Ubicación oñeikotevẽva';

  @override
  String get placesLocationRequiredBody =>
      'Oñemohenda raẽ peteĩ tenda ikatu haguã ojeheka hekopete umi mezquita hi’aguĩva, tembi’u halal ha mbo’ehao islámico.';

  @override
  String get placesMapTilesUnavailableTitle => 'Mapa azulejos ndojeguerekói';

  @override
  String get placesMapTilesUnavailableBody =>
      'Peteĩ fuente azulejo mapa rehegua oñembohekopyréva noñembohekopyrýi gueteri ko ñemopu’ãme g̃uarã. Umi tenda hi’aguĩva ikatu gueteri okargá nde tenda reñongatuva’ekuégui.';

  @override
  String get placesDataSourceUnavailableTitle => 'Omoĩ dato ndojeguerekóiva';

  @override
  String get placesDataSourceUnavailableBody =>
      'Peteĩ punto paha dato tenda rehegua oñembohekopyréva noñembohekopyrýi gueteri ko ñemopu’ãme g̃uarã. Emohenda PLACES_OVERPASS_API_URL peteĩ proxy térã proveedor oñemoneĩvape emboguata mboyve jeheka hi’aguĩva.';

  @override
  String get unknownPlaceName => 'Ndojekuaáiva Téra';

  @override
  String get islamicPlaceFallback => 'Lugar Islámico rehegua';

  @override
  String get asmaMeaning1 => 'Pe Beneficioso';

  @override
  String get asmaMeaning2 => 'Pe Poriahuverekoha';

  @override
  String get asmaMeaning3 => 'Mburuvicha guasu / Ñandejára opave’ỹva';

  @override
  String get asmaMeaning4 => 'Pe Imarangatuvéva';

  @override
  String get asmaMeaning5 => 'Py’aguapy Fuente';

  @override
  String get asmaMeaning6 => 'Pe Ome’ẽva Seguridad';

  @override
  String get asmaMeaning7 => 'Pe Guardian-pe';

  @override
  String get asmaMeaning8 => 'Pe Iprecioso / Pe Ipu’akavéva';

  @override
  String get asmaMeaning9 => 'Pe Compulsor';

  @override
  String get asmaMeaning10 => 'Pe Tuichavéva';

  @override
  String get asmaMeaning11 => 'Pe Apohare';

  @override
  String get asmaMeaning12 => 'Pe Orden apoha';

  @override
  String get asmaMeaning13 => 'Pe Mba’eporã Mohendaha';

  @override
  String get asmaMeaning14 => 'Pe Operdonáva';

  @override
  String get asmaMeaning15 => 'Pe Poguýpe';

  @override
  String get asmaMeaning16 => 'Opa mba’e ome’ẽva';

  @override
  String get asmaMeaning17 => 'Pe Sostenedor';

  @override
  String get asmaMeaning18 => 'Pe Abridor';

  @override
  String get asmaMeaning19 => 'Opa mba’e Oikuaáva';

  @override
  String get asmaMeaning20 =>
      'The Withholder, who narrows and restrains by wisdom.';

  @override
  String get asmaMeaning21 => 'Pe Relevador';

  @override
  String get asmaMeaning22 => 'Pe Abaser';

  @override
  String get asmaMeaning23 => 'Pe Exaltor';

  @override
  String get asmaMeaning24 => 'Pe Ome’ẽva Honor';

  @override
  String get asmaMeaning25 => 'Pe Momirĩha';

  @override
  String get asmaMeaning26 => 'Opavave ohendúva';

  @override
  String get asmaMeaning27 => 'Opa mba’e Ohecháva';

  @override
  String get asmaMeaning28 => 'Pe Juez';

  @override
  String get asmaMeaning29 => 'Pe Hekojojáva';

  @override
  String get asmaMeaning30 => 'Pe Sutil';

  @override
  String get asmaMeaning31 => 'Umi Opavave Oikuaáva';

  @override
  String get asmaMeaning32 => 'Pe Tenondegua';

  @override
  String get asmaMeaning33 => 'Pe Magnífico';

  @override
  String get asmaMeaning34 => 'Pe Perdonador Guasu';

  @override
  String get asmaMeaning35 => 'Pe Aguyje Recompensa rehegua';

  @override
  String get asmaMeaning36 => 'Pe Ijyvatevéva';

  @override
  String get asmaMeaning37 => 'Pe Tuichavéva';

  @override
  String get asmaMeaning38 => 'Pe Ñeñongatuha';

  @override
  String get asmaMeaning39 => 'Pe Alimentador';

  @override
  String get asmaMeaning40 => 'Pe Contador rehegua';

  @override
  String get asmaMeaning41 => 'Pe Majestuoso';

  @override
  String get asmaMeaning42 => 'Umi ipy’aporãva';

  @override
  String get asmaMeaning43 => 'Pe Oñangarekóva';

  @override
  String get asmaMeaning44 => 'Pe Ombohováiva Ñembo’e';

  @override
  String get asmaMeaning45 => 'Pe Opa mba’e Oikuaáva';

  @override
  String get asmaMeaning46 => 'Umi Iñarandúva Perfectamente';

  @override
  String get asmaMeaning47 => 'Pe Ohayhúva';

  @override
  String get asmaMeaning48 => 'Pe Igloriosavéva';

  @override
  String get asmaMeaning49 => 'Pe Resurrector';

  @override
  String get asmaMeaning50 => 'Pe Testígo';

  @override
  String get asmaMeaning51 => 'Pe Añetegua';

  @override
  String get asmaMeaning52 => 'Pe Fideicomisario Opa mba’e Suficiente';

  @override
  String get asmaMeaning53 => 'Opaite Mbarete Jára';

  @override
  String get asmaMeaning54 => 'Umi Mbarete';

  @override
  String get asmaMeaning55 => 'Pe Ñangarekoha';

  @override
  String get asmaMeaning56 => 'Umi Ojeguerohorýva';

  @override
  String get asmaMeaning57 => 'Pe Tasador';

  @override
  String get asmaMeaning58 => 'Pe Moñepyrũhára';

  @override
  String get asmaMeaning59 => 'Pe Restaurador';

  @override
  String get asmaMeaning60 => 'Tekove ome’ẽva';

  @override
  String get asmaMeaning61 => 'Pe Tekove Oguenohẽva';

  @override
  String get asmaMeaning62 => 'Umi Oikovéva Siempre';

  @override
  String get asmaMeaning63 => 'Pe Sostenedor ijeheguiete';

  @override
  String get asmaMeaning64 => 'Pe Ojuhúva';

  @override
  String get asmaMeaning65 => 'Umi Glorioso';

  @override
  String get asmaMeaning66 => 'Pe Peteĩnte';

  @override
  String get asmaMeaning67 => 'Pe Peteĩva';

  @override
  String get asmaMeaning68 => 'Pe Ohekáva Opavave';

  @override
  String get asmaMeaning69 => 'Umi Ipu’akapáva';

  @override
  String get asmaMeaning70 => 'Opa mba’e pu’aka Apohare';

  @override
  String get asmaMeaning71 => 'Pe Expedidor rehegua';

  @override
  String get asmaMeaning72 => 'Pe Retrasador';

  @override
  String get asmaMeaning73 => 'Pe Primero';

  @override
  String get asmaMeaning74 => 'Pe Ipahaitéva';

  @override
  String get asmaMeaning75 => 'Pe Manifiesto rehegua';

  @override
  String get asmaMeaning76 => 'Pe Okañýva';

  @override
  String get asmaMeaning77 => 'Mburuvicha Guasu';

  @override
  String get asmaMeaning78 => 'Pe Ijyvatevéva';

  @override
  String get asmaMeaning79 => 'Mba’eporã Apoha';

  @override
  String get asmaMeaning80 => 'Pe Guía arrepentimiento rehegua';

  @override
  String get asmaMeaning81 => 'Pe Vengador';

  @override
  String get asmaMeaning82 => 'Pe Operdonáva';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'Opavave Jára / Mburuvicha Guasu';

  @override
  String get asmaMeaning85 => 'Pe Posesor de Majestad ha Recompensa rehegua';

  @override
  String get asmaMeaning86 => 'Pe Ijojaha’ỹva';

  @override
  String get asmaMeaning87 => 'Pe Mbyatyha';

  @override
  String get asmaMeaning88 => 'Pe Ipirapire hetáva';

  @override
  String get asmaMeaning89 => 'Pe Enriquecedor';

  @override
  String get asmaMeaning90 => 'Pe Preventor de Perjuicio rehegua';

  @override
  String get asmaMeaning91 => 'Pe Ogueruva’ekue Mba’evai';

  @override
  String get asmaMeaning92 => 'Pe omeʼẽva umi mbaʼe porã';

  @override
  String get asmaMeaning93 => 'Pe Tesape';

  @override
  String get asmaMeaning94 => 'Pe Guía';

  @override
  String get asmaMeaning95 => 'Pe Moñepyrũhára';

  @override
  String get asmaMeaning96 => 'Pe Ipaveʼỹva';

  @override
  String get asmaMeaning97 => 'Pe Heredero';

  @override
  String get asmaMeaning98 => 'Pe Guía Hekojojavéva';

  @override
  String get asmaMeaning99 =>
      'The Patient, who does not hasten punishment and acts with perfect forbearance.';
}
