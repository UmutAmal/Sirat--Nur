// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Via Islàmica de la Llum';

  @override
  String get home => 'a casa';

  @override
  String get quran => 'Alcorà';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Calendari';

  @override
  String get settings => 'Configuració';

  @override
  String get nextPrayer => 'Pregària següent';

  @override
  String get prayerTimes => 'Temps de pregària';

  @override
  String get continueReading => 'Continuar llegint';

  @override
  String get getLifetimePro => 'Obteniu Lifetime Pro';

  @override
  String get unlockTajweed => 'Desbloqueja Tajweed i funcions avançades';

  @override
  String get prayerCalculation => 'Càlcul de l\'oració';

  @override
  String get method => 'Mètode de càlcul';

  @override
  String get madhab => 'Asr Mètode Jurístic';

  @override
  String get surahs => 'Sures';

  @override
  String get ayahs => 'Ayahs';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Sortida del sol';

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
    return 'Hora de $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'És hora de pregar $prayerName.';
  }

  @override
  String get dataStorage => 'Dades i emmagatzematge';

  @override
  String get clearCache => 'Esborra la memòria cau';

  @override
  String get cacheClearedSuccess =>
      'La memòria cau s\'ha esborrat correctament';

  @override
  String get location => 'Ubicació';

  @override
  String get language => 'Llengua';

  @override
  String get selectLanguage => 'Seleccioneu Idioma';

  @override
  String get searchLanguage => 'Cerca més de 180 idiomes...';

  @override
  String get systemDefault => 'Sistema per defecte';

  @override
  String get currentLocation => 'Ubicació actual (GPS)';

  @override
  String get locationServiceDisabled =>
      'El servei d\'ubicació està desactivat.';

  @override
  String get locationPermissionDenied => 'S\'ha denegat el permís d\'ubicació.';

  @override
  String get locationDetectionFailed =>
      'No s\'ha pogut detectar la teva ubicació. Trieu una ciutat manualment o torneu-ho a provar.';

  @override
  String citiesCount(String count) {
    return '$count ciutats';
  }

  @override
  String get search => 'Cerca';

  @override
  String get searchHint => 'Cerca...';

  @override
  String get noResults => 'No s\'han trobat resultats';

  @override
  String get loading => 'Carregant...';

  @override
  String get error => 'Error';

  @override
  String get appErrorOccurred => 'S\'ha produït un error';

  @override
  String get appUnknownError => 'Error desconegut';

  @override
  String get quranLoadFailed =>
      'No s\'ha pogut carregar el contingut de l\'Alcorà. Si us plau, torna-ho a provar.';

  @override
  String get retry => 'Torna-ho a provar';

  @override
  String get refreshAction => 'Actualitzar';

  @override
  String get cancel => 'Cancel·la';

  @override
  String get save => 'Desa';

  @override
  String get delete => 'Suprimeix';

  @override
  String get edit => 'Edita';

  @override
  String get close => 'Tancar';

  @override
  String get ok => 'D\'acord';

  @override
  String get yes => 'Sí';

  @override
  String get no => 'No';

  @override
  String get surah => 'Sura';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Pàgina';

  @override
  String get reading => 'Lectura';

  @override
  String get recitation => 'Recitació';

  @override
  String get translation => 'Traducció';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'S\'està carregant tafsir...';

  @override
  String get tafsirSourceLabel => 'Font Tafsir';

  @override
  String get tafsirNoSurahFound =>
      'No s\'ha trobat cap tafsir per a aquesta sura.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'No s\'ha trobat cap tafsir per a ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir no s\'ha pogut carregar.';

  @override
  String get tafsirNoTextForAyah =>
      'No hi ha cap text de tafsir per a aquest ayah.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'S\'està baixant tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'S\'està carregant tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'La font Tafsir ha retornat un error HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'La font de tafsir seleccionada no ha retornat cap entrada.';

  @override
  String get tafsirCacheUnavailable =>
      'Tafsir verificat encara no està disponible fora de línia. Sincronitza un conjunt de dades tafsir d\'origen abans de navegar.';

  @override
  String get bookmarks => 'Adreces d\'interès';

  @override
  String get addBookmark => 'Afegeix un marcador';

  @override
  String get removeBookmark => 'Elimina el marcador';

  @override
  String get lastRead => 'Última lectura';

  @override
  String get dailyZikr => 'Zikr diari';

  @override
  String get duaMeaning1 =>
      'd\'altres preguen: \"Senyor nostre, dóna\'ns el bé en aquest món i en el més enllà, i protegeix-nos del turment del foc\".';

  @override
  String get duaMeaning2 =>
      'Déu no carrega cap ànima amb més del que pot suportar: cadascú guanya el bé que ha fet, i pateix el seu mal- «Senyor, no ens prenguis a la feina si oblidem o cometem errors. Senyor, no ens carregueu com vau carregar els que ens van avançar. Senyor, no ens carregueu amb més del que tenim força per suportar. Perdona\'ns, perdona\'ns i tingues pietat de nosaltres. Tu ets el nostre protector, així que ajuda\'ns contra els infidels.';

  @override
  String get duaMeaning3 =>
      '\"Senyor nostre, no deixeu que el nostre cor es desviï després que ens hàgiu guiat. Concedeix-nos la teva misericòrdia: tu ets el que sempre dóna.';

  @override
  String get duaMeaning4 =>
      'Senyor, fa que jo i la meva descendència seguim la pregària. Senyor, accepta la meva petició.';

  @override
  String get duaMeaning5 =>
      'i abaixa la teva ala amb humilitat cap a ells amb bondat i digues: \"Senyor, tingues pietat d\'ells, tal com em van cuidar quan era petit\".';

  @override
  String get duaMeaning6 =>
      'exaltat sigui Déu, aquell que realment té el control. [Profeta], no us precipiteu a recitar abans que la revelació estigui completament completa, sinó que digueu: \"Senyor, augmenta\'m en coneixement!\"';

  @override
  String get duaMeaning7 =>
      'Digues [Profeta]: \"Senyor, perdona i tingues pietat: ets el més misericordiós de tots\".';

  @override
  String get duaMeaning8 =>
      'els que preguen: \"Senyor nostre, alegra\'ns en els nostres esposos i descendència\". Fes-nos bons exemples per als que et coneixen”.';

  @override
  String get morningZikr => 'Zikr al matí';

  @override
  String get eveningZikr => 'Zikr al vespre';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masa\'il';

  @override
  String get hadith => 'Hadith';

  @override
  String get hadithCollection => 'Col·lecció Hadith';

  @override
  String get hadithBooks => 'Llibres de Hadith';

  @override
  String get searchHadith => 'Cerca Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Noms d\'Al·là';

  @override
  String get liveTv => 'TV en directe';

  @override
  String get watchLive => 'Mira en directe';

  @override
  String get streamError => 'Error de reproducció';

  @override
  String get reload => 'Torna a carregar';

  @override
  String get openInYoutube => 'Obre a YouTube';

  @override
  String get ibadahTracker => 'Seguidor d\'Ibadah';

  @override
  String get fasting => 'Dejuni';

  @override
  String get quranReading => 'Lectura de l\'Alcorà';

  @override
  String get prayers => 'Oracions';

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
  String get dhikrCount => 'Comte Dhikr';

  @override
  String get weeklyProgress => 'Progrés setmanal';

  @override
  String get monthlyProgress => 'Progrés mensual';

  @override
  String get statistics => 'Estadístiques';

  @override
  String get hijriCalendar => 'Calendari Hijri';

  @override
  String get gregorianCalendar => 'Calendari gregorià';

  @override
  String get today => 'Avui';

  @override
  String get tomorrow => 'Demà';

  @override
  String get yesterday => 'Ahir';

  @override
  String get specialDays => 'Dies especials';

  @override
  String get ramadan => 'Ramadà';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Any Nou islàmic';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadà';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadà';

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
  String get qiblaDirection => 'Direcció de la Qibla';

  @override
  String get compass => 'Brúixola';

  @override
  String get degrees => 'graus';

  @override
  String get north => 'nord';

  @override
  String get qiblaFound => 'Qibla trobada!';

  @override
  String get turnDevice => 'Gireu el vostre dispositiu de cara a la Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Error de brúixola: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'El sensor de la brúixola no està disponible en aquest dispositiu.';

  @override
  String get qiblaLocationRequiredTitle => 'Ubicació necessària per a la Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Establiu la vostra ubicació real abans d\'utilitzar la brúixola Qibla perquè la direcció es pugui calcular amb precisió.';

  @override
  String get adhanNotificationChannelName => 'Notificacions Adhan';

  @override
  String get adhanNotificationChannelDescription =>
      'Alertes de temps de pregària amb so adhan.';

  @override
  String get notifications => 'Notificacions';

  @override
  String get prayerNotifications => 'Notificacions d\'oració';

  @override
  String get enableNotifications => 'Activa les notificacions';

  @override
  String get notificationTime => 'Hora de notificació';

  @override
  String get beforePrayer => 'minuts abans de l\'oració';

  @override
  String get theme => 'Tema';

  @override
  String get lightMode => 'Mode de llum';

  @override
  String get darkMode => 'Mode fosc';

  @override
  String get systemTheme => 'Tema del sistema';

  @override
  String get about => 'Sobre';

  @override
  String get version => 'Versió';

  @override
  String get privacyPolicy => 'Política de privadesa';

  @override
  String get termsOfService => 'Condicions del servei';

  @override
  String get contactUs => 'Contacta amb nosaltres';

  @override
  String get rateApp => 'Valora l\'aplicació';

  @override
  String get shareApp => 'Comparteix l\'aplicació';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Fes una ullada a $appName: l\'aplicació d\'estil de vida islàmica definitiva! $url';
  }

  @override
  String get downloadManager => 'Gestor de descàrregues';

  @override
  String get downloads => 'Descàrregues';

  @override
  String get downloading => 'S\'està baixant...';

  @override
  String get downloadComplete => 'Descàrrega completa';

  @override
  String get downloadFailed => 'La baixada ha fallat';

  @override
  String get offlineMode => 'Mode fora de línia';

  @override
  String get noInternet => 'Sense connexió a Internet';

  @override
  String get checkConnection => 'Comproveu la vostra connexió';

  @override
  String get premium => 'Premium';

  @override
  String get upgradeToPro => 'Actualitza a Pro';

  @override
  String get proFeatures => 'Característiques Pro';

  @override
  String get removeAds => 'Elimina els anuncis';

  @override
  String get unlockAll => 'Desbloqueja tot el contingut';

  @override
  String get exclusiveContent => 'Contingut exclusiu';

  @override
  String get welcome => 'Benvingut';

  @override
  String get getStarted => 'Comença';

  @override
  String get skip => 'Saltar';

  @override
  String get next => 'A continuació';

  @override
  String get done => 'Fet';

  @override
  String get onboarding1Title => 'Benvinguts al Camí d\'Allah';

  @override
  String get onboarding1Desc =>
      'La vostra aplicació complementària islàmica completa per als temps de pregària, l\'Alcorà i molt més';

  @override
  String get onboarding2Title => 'Temps de pregària';

  @override
  String get onboarding2Desc =>
      'Temps d\'oració precisos segons la vostra ubicació';

  @override
  String get onboarding3Title => 'Alcorà i més';

  @override
  String get onboarding3Desc =>
      'Llegiu l\'Alcorà, feu un seguiment de la vostra lectura i exploreu contingut islàmic';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'Restableix el comptador';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'Recompte objectiu: $target';
  }

  @override
  String get tapToCount => 'Toca per comptar';

  @override
  String get zikrCompletedMashAllah => 'Completat! Mashal·là';

  @override
  String get zikrMeaningSubhanAllah =>
      'Al·là està molt per sobre de qualsevol imperfecció.';

  @override
  String get zikrMeaningAlhamdulillah => 'Tota lloança pertany a Al·là.';

  @override
  String get zikrMeaningAllahuAkbar => 'Al·là és el més gran.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'No hi ha més déu que Al·là.';

  @override
  String get zikrMeaningAstaghfirullah => 'Busco el perdó d\'Al·là.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'No hi ha poder ni força excepte per Al·là.';

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
  String get dailyProgress => 'Progrés diari';

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
      'Torneu a comprovar l\'estat de la subscripció premium';

  @override
  String get syncStore =>
      'Sincronitza amb la botiga d\'aplicacions per confirmar la teva subscripció premium.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'Subscripció Premium verificada.';

  @override
  String get premiumNotFound => 'No s\'ha trobat la subscripció Premium.';

  @override
  String premiumRefreshError(Object error) {
    return 'No s\'ha pogut actualitzar l\'estat de la subscripció premium: $error';
  }

  @override
  String get offlineDownloadManager => 'Gestor de descàrregues fora de línia';

  @override
  String get manageDatasets =>
      'Gestioneu paquets massius d\'àudio i conjunts de dades fora de línia.';

  @override
  String get freeStorage => 'Allibera l\'emmagatzematge intern del dispositiu.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb =>
      'S\'està comprovant la base de dades de l\'Alcorà...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'Estat de la base de dades de l\'Alcorà';

  @override
  String statusLabel(Object status) {
    return 'Estat: $status';
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
    return 'La comprovació de l\'Alcorà ha fallat: $error';
  }

  @override
  String get audioVoice => 'Veu d\'àudio';

  @override
  String get audioVoiceMisharyAlafasy => 'Home (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Home (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Home (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Calibració de la Qibla';

  @override
  String get compassSmoothing => 'Suavització de la brúixola';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Offset de calibració';

  @override
  String currentOffset(Object offset) {
    return 'Actual: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Ajusteu si la vostra brúixola necessita una correcció manual. Els valors positius giren en sentit horari.';

  @override
  String get apply => 'Aplicar canvis';

  @override
  String get resetOnboarding => 'Restableix la configuració de la introducció';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Diagnòstics';

  @override
  String get diagnosticsNotSet => 'No configurat';

  @override
  String get diagnosticsPrayerProfile => 'Perfil d\'oració';

  @override
  String get diagnosticsPrayerSource => 'Autoritat de pregària';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Personalitzat / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Angles personalitzats manuals (sense font institucional)';

  @override
  String diagnosticsPrayerHybridSource(String sourceName, String madhab) {
    return 'Mètode $sourceName amb la configuració d\'ASR $madhab seleccionada per l\'usuari';
  }

  @override
  String diagnosticsPrayerRegionalFallbackSource(String sourceName) {
    return 'Alternativa regional mitjançant $sourceName. Confirmeu els horaris de pregària locals amb la vostra mesquita o autoritat religiosa oficial.';
  }

  @override
  String get diagnosticsCloudDriven => 'Impulsat al núvol';

  @override
  String get diagnosticsAdhanAudioAssets => 'Actius d\'àudio Adhan';

  @override
  String get diagnosticsUiAudioAssets => 'Recursos d\'àudio de la IU';

  @override
  String get diagnosticsQuranAudioAssets => 'Actius d\'àudio de l\'Alcorà';

  @override
  String get diagnosticsAudioAssets => 'Actius d\'àudio';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count fitxers';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Error de lectura del manifest: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Localització Locals';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count compatible';
  }

  @override
  String get diagnosticsQuranDataset => 'Conjunt de dades de l\'Alcorà';

  @override
  String get diagnosticsQuranSurahs => 'Sures de l\'Alcorà';

  @override
  String get diagnosticsQuranAyahs => 'Alcorà Ayahs';

  @override
  String get diagnosticsQuranJuzMetadata => 'Metadades de l\'Alcorà Juz';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Falten taules de núvol a Supabase; sistema de reserva agrupat actiu';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'La comprovació del núvol ha fallat: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Falten metadades de núvol; alternativa estructural agrupada activa';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'La comprovació estructural del núvol ha fallat: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Cal calibratge. Gireu el dispositiu a la figura-8.';

  @override
  String get dailyVerse => 'Vers diari';

  @override
  String get dailyVerseUnavailableTitle => 'Vers diaris no disponibles';

  @override
  String get dailyVerseUnavailableBody =>
      'El contingut de vers diari verificat encara no està configurat per a aquesta compilació. Connecteu-vos a la font del núvol o sincronitzeu una memòria cau verificada abans de navegar.';

  @override
  String get todaysIbadah => 'Ibadah d\'avui';

  @override
  String get quickAccess => 'Accés ràpid';

  @override
  String get assistant => 'Assistent';

  @override
  String get places => 'Llocs';

  @override
  String get library => 'Biblioteca';

  @override
  String get analytics => 'Analítica';

  @override
  String get dailyDuas => 'Duas diàries';

  @override
  String essentialDuas(String count) {
    return '$count duas essencials';
  }

  @override
  String get duaUnavailableTitle =>
      'Les dues verificades encara no estan disponibles';

  @override
  String get duaUnavailableBody =>
      'Les duas diàries verificades encara no s\'han sincronitzat amb aquest dispositiu. Connecteu-vos a la font del núvol per carregar duas d\'origen en lloc d\'una alternativa no verificada.';

  @override
  String get duaCategoryQuranic => 'dua alcorànica';

  @override
  String get duaCategoryMorningEvening => 'Matí i vespre';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Protecció';

  @override
  String get duaCategoryBeginning => 'Els inicis';

  @override
  String get duaCategorySleep => 'Dormir';

  @override
  String get duaCategoryFoodDrink => 'Menjar i beure';

  @override
  String get duaCategoryForgiveness => 'El perdó';

  @override
  String get duaCategoryHome => 'Casa';

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
  String get islamicEducation => 'Educació islàmica';

  @override
  String get sukunAudioTitle => 'Paisatges sonors de Sukun';

  @override
  String get hadithCollections => 'Col·leccions de Hadith';

  @override
  String get hadithSourcePending => 'Font verificada pendent';

  @override
  String get hadithUnavailableTitle =>
      'Les col·leccions de hadiz verificades encara no estan disponibles';

  @override
  String get hadithUnavailableBody =>
      'Aquesta compilació encara depèn d\'un feed de hadith extern no verificat. La navegació d\'hadith roman desactivada fins que es sincronitzi un conjunt de dades d\'origen.';

  @override
  String get paywallUnlockAll =>
      'Desbloqueja totes les funcions per al teu viatge espiritual';

  @override
  String get premiumProductUnavailable =>
      'El producte premium no està disponible ara mateix. Si us plau, torna-ho a provar més tard.';

  @override
  String get premiumPurchaseFailed =>
      'No s\'ha pogut completar la compra. Si us plau, torna-ho a provar.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'Preguntes i respostes il·limitades amb IA';

  @override
  String get paywallFeature2Title => 'Sense connexió il·limitat';

  @override
  String get paywallFeature2Desc => 'Descarrega totes les recitacions';

  @override
  String get paywallFeature3Title => 'Dissenys exclusius';

  @override
  String get paywallFeature3Desc => 'Temes i tipus de lletra premium';

  @override
  String get paywallFeature4Title => 'Sense anuncis';

  @override
  String get paywallFeature4Desc => 'Zero anuncis';

  @override
  String get paywallGetAccess => 'Obteniu accés de per vida: 1,00 \$';

  @override
  String get restorePurchases => 'Restaurar les compres';

  @override
  String get zakatCalculator => 'Calculadora zakat';

  @override
  String get zakatGold => 'Or (Altın)';

  @override
  String get zakatSilver => 'Plata (Gümüş)';

  @override
  String get zakatCashBank => 'Efectiu / Banc';

  @override
  String get zakatBusiness => 'Negocis';

  @override
  String get zakatInvestments => 'Inversions';

  @override
  String get zakatWeightGrams => 'Pes (g)';

  @override
  String get zakatPricePerGram => 'Preu/g';

  @override
  String get zakatTotalAmount => 'Import total';

  @override
  String get zakatInventoryValue => 'Valor d\'inventari';

  @override
  String get zakatDebts => 'Deutes';

  @override
  String get zakatTotal => 'Total';

  @override
  String get calculateZakat => 'Calcula el zakat';

  @override
  String get nisabNotReached =>
      'Nisab no va arribar. El zakat no és obligatori.';

  @override
  String get totalZakat => 'Zakat total';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Actius: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakat d\'or';

  @override
  String get zakatSilverZakat => 'Zakat de plata';

  @override
  String get zakatCashZakat => 'Zakat en efectiu';

  @override
  String get zakatBusinessZakat => 'Zakat empresarial';

  @override
  String get zakatInvestmentZakat => 'Zakat d\'inversió';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! Sóc el teu assistent islàmic. Pregunteu-me sobre l\'oració, el dejuni, el zakat o qualsevol tema islàmic.';

  @override
  String get chatbotLimitReached =>
      'S\'ha arribat al límit de consultes diàries. Actualitza a Premium per il·limitat.';

  @override
  String get chatbotErrorMsg =>
      'No he pogut generar una resposta. Si us plau, torna-ho a provar.';

  @override
  String get chatbotOfflinePrompt =>
      'La base de coneixement islàmica fora de línia verificada encara s\'està curant. Ara podeu activar la alternativa fora de línia, però només mostrarà missatges segurs limitats fins que el conjunt de dades d\'origen estigui llest.\n\nVoleu activar la alternativa fora de línia?';

  @override
  String get chatbotOfflineSwitched =>
      'La alternativa fora de línia està activada. Les respostes islàmiques locals verificades encara no estan preparades.';

  @override
  String get chatbotOfflineDownloadLabel =>
      'Activa la funció alternativa fora de línia';

  @override
  String get downloadPreparing => 'S\'està preparant la baixada...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'S\'està baixant la sura $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Totes les sures ja s\'han descarregat per a aquest recitador.';

  @override
  String get offlineQuranAudioPacks =>
      'Paquets d\'àudio d\'Alcorà fora de línia';

  @override
  String storedOnDeviceMb(String size) {
    return 'Emmagatzemat al dispositiu: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total sures baixades';
  }

  @override
  String get redownloadMissingRepair => 'Falta reparació/descàrrega';

  @override
  String get downloadAction => 'Descarregar';

  @override
  String get resumeDownload => 'Continua la baixada';

  @override
  String get deleteDownloadedFiles => 'Suprimeix els fitxers descarregats';

  @override
  String get downloadCancelling => 'S\'està cancel·lant...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'La baixada s\'ha cancel·lat per a $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'S\'ha completat la baixada de $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'S\'ha acabat la baixada de $reciter amb $failed sures fallides ($downloaded/$total baixada).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'S\'han suprimit els fitxers fora de línia per a $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Les fonts d\'àudio verificades de l\'Alcorà no estan disponibles en aquest moment.';

  @override
  String get quranAudioPlaybackErrorWithConnectionHint =>
      'La reproducció d\'àudio ha fallat. Comproveu la vostra connexió.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'El paquet d\'àudio de l\'Alcorà verificat està incomplet ($available/$total). Torna-ho a provar un cop s\'hagi actualitzat el catàleg d\'àudio.';
  }

  @override
  String get chatbotHint => 'Fes una pregunta...';

  @override
  String get chatbotThinking => 'Pensant...';

  @override
  String get sukunMixerSubtitle => 'Mesclador de natura i Coran';

  @override
  String get audioPlayFailed => 'La reproducció d\'àudio ha fallat';

  @override
  String get sukunNatureLabel => 'Sukun (Natura)';

  @override
  String get sukunRainOfMercy => 'Pluja de Misericòrdia';

  @override
  String get sukunGardenOfPeace => 'Jardí de la Pau';

  @override
  String get sukunMidnightCalm => 'Mitjanit Calma';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Paisatges sonors no disponibles';

  @override
  String get sukunUnavailableBody =>
      'Aquesta compilació encara no inclou els recursos de paisatge sonor de Sukun necessaris.';

  @override
  String get prayerCompletion => 'Finalització de l\'oració';

  @override
  String get streaks => 'Rates';

  @override
  String get dayStreak => 'Ratxa de dia';

  @override
  String get bestStreak => 'Millor ratxa';

  @override
  String get chatbotCloudAiLabel => 'IA al núvol';

  @override
  String get chatbotLocalAiLabel => 'Fallback fora de línia';

  @override
  String get chatbotUseCloudAi => 'Utilitza Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi =>
      'Activa la funció alternativa fora de línia';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count queda';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'L\'API del núvol no està configurada. La guia islàmica fora de línia verificada encara no està disponible.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] L\'orientació islàmica local verificada encara no està disponible. Canvia a Cloud AI per obtenir respostes d\'origen.';

  @override
  String get mosques => 'Mesquites';

  @override
  String get halalFood => 'Menjar Halal';

  @override
  String get placesSearchArea => 'Cerca en aquesta zona';

  @override
  String get nearbyMosques => 'Mesquites properes';

  @override
  String get islamicSchools => 'Escoles islàmiques';

  @override
  String placesFoundCount(String count) {
    return '$count trobat';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km de distància';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Error de l\'API: $statusCode';
  }

  @override
  String get placesNetworkError =>
      'Error de xarxa. Si us plau, torna-ho a provar.';

  @override
  String get placesLocationRequiredTitle => 'Ubicació necessària';

  @override
  String get placesLocationRequiredBody =>
      'Primer establiu una ubicació perquè es puguin cercar amb precisió les mesquites properes, el menjar halal i les escoles islàmiques.';

  @override
  String get placesMapTilesUnavailableTitle =>
      'Les fitxes del mapa no estan disponibles';

  @override
  String get placesMapTilesUnavailableBody =>
      'Encara no s\'ha configurat una font de mosaic de mapa verificada per a aquesta compilació. Els llocs propers encara es poden carregar des de la ubicació desada.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'Les dades de llocs no estan disponibles';

  @override
  String get placesDataSourceUnavailableBody =>
      'Un punt final de dades de llocs verificats encara no està configurat per a aquesta compilació. Estableix PLACES_OVERPASS_API_URL en un servidor intermediari o proveïdor aprovat abans d\'activar la cerca a prop.';

  @override
  String get unknownPlaceName => 'Nom desconegut';

  @override
  String get islamicPlaceFallback => 'Lloc islàmic';

  @override
  String get asmaMeaning1 => 'El beneficiós';

  @override
  String get asmaMeaning2 => 'El Misericordiós';

  @override
  String get asmaMeaning3 => 'El Rei / Senyor Etern';

  @override
  String get asmaMeaning4 => 'El Santíssim';

  @override
  String get asmaMeaning5 => 'La font de la pau';

  @override
  String get asmaMeaning6 => 'El donant de seguretat';

  @override
  String get asmaMeaning7 =>
      'The Watchful Guardian, who observes and safeguards all creation.';

  @override
  String get asmaMeaning8 => 'El Preciós / El més poderós';

  @override
  String get asmaMeaning9 =>
      'The Restorer and Irresistible, whose will prevails with perfect power.';

  @override
  String get asmaMeaning10 => 'El més gran';

  @override
  String get asmaMeaning11 => 'El creador';

  @override
  String get asmaMeaning12 => 'El creador de l\'ordre';

  @override
  String get asmaMeaning13 => 'El modelador de la bellesa';

  @override
  String get asmaMeaning14 => 'El perdó';

  @override
  String get asmaMeaning15 => 'The Subduer';

  @override
  String get asmaMeaning16 => 'El Donador de Tot';

  @override
  String get asmaMeaning17 => 'El sustentador';

  @override
  String get asmaMeaning18 => 'L\'Obridor';

  @override
  String get asmaMeaning19 => 'El coneixedor de tot';

  @override
  String get asmaMeaning20 =>
      'The Withholder, who narrows and restrains by wisdom.';

  @override
  String get asmaMeaning21 => 'El alleujador';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'El donador d\'honor';

  @override
  String get asmaMeaning25 => 'El humiliador';

  @override
  String get asmaMeaning26 => 'L\'oient de tots';

  @override
  String get asmaMeaning27 => 'El vident de tot';

  @override
  String get asmaMeaning28 => 'El jutge';

  @override
  String get asmaMeaning29 => 'El Just';

  @override
  String get asmaMeaning30 => 'El Subtil';

  @override
  String get asmaMeaning31 => 'Tot Conscient';

  @override
  String get asmaMeaning32 => 'The Forebearing';

  @override
  String get asmaMeaning33 => 'El Magnífic';

  @override
  String get asmaMeaning34 => 'El gran perdonador';

  @override
  String get asmaMeaning35 => 'El premiador de l\'agraïment';

  @override
  String get asmaMeaning36 => 'El més alt';

  @override
  String get asmaMeaning37 => 'El més gran';

  @override
  String get asmaMeaning38 => 'The Preserver';

  @override
  String get asmaMeaning39 => 'The Nourisher';

  @override
  String get asmaMeaning40 => 'El comptador';

  @override
  String get asmaMeaning41 => 'El Majestuós';

  @override
  String get asmaMeaning42 => 'El Generós';

  @override
  String get asmaMeaning43 => 'El vigilant';

  @override
  String get asmaMeaning44 => 'El responent a l\'oració';

  @override
  String get asmaMeaning45 => 'La comprensió total';

  @override
  String get asmaMeaning46 => 'El perfectament savi';

  @override
  String get asmaMeaning47 => 'L\'Enamorat';

  @override
  String get asmaMeaning48 => 'El més gloriós';

  @override
  String get asmaMeaning49 => 'El Resurrector';

  @override
  String get asmaMeaning50 => 'El testimoni';

  @override
  String get asmaMeaning51 => 'La veritat';

  @override
  String get asmaMeaning52 => 'El síndic total';

  @override
  String get asmaMeaning53 => 'El posseïdor de tota la força';

  @override
  String get asmaMeaning54 => 'El Forçat';

  @override
  String get asmaMeaning55 => 'El protector';

  @override
  String get asmaMeaning56 => 'El lloat';

  @override
  String get asmaMeaning57 => 'L\'avaluador';

  @override
  String get asmaMeaning58 => 'El creador';

  @override
  String get asmaMeaning59 => 'El restaurador';

  @override
  String get asmaMeaning60 => 'El Donador de Vida';

  @override
  String get asmaMeaning61 => 'El prenedor de la vida';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'El sostenidor autosubsistent';

  @override
  String get asmaMeaning64 => 'El cercador';

  @override
  String get asmaMeaning65 => 'El Gloriós';

  @override
  String get asmaMeaning66 => 'L\'Únic';

  @override
  String get asmaMeaning67 => 'The One';

  @override
  String get asmaMeaning68 => 'El buscat per tots';

  @override
  String get asmaMeaning69 => 'El poderós';

  @override
  String get asmaMeaning70 => 'El creador de tot poder';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'El retardador';

  @override
  String get asmaMeaning73 => 'El Primer';

  @override
  String get asmaMeaning74 => 'L\'últim';

  @override
  String get asmaMeaning75 => 'El manifest';

  @override
  String get asmaMeaning76 => 'L\'ocult';

  @override
  String get asmaMeaning77 =>
      'The Protecting Patron, who governs and cares for all creation.';

  @override
  String get asmaMeaning78 => 'El Suprem';

  @override
  String get asmaMeaning79 => 'The Doer of Good';

  @override
  String get asmaMeaning80 => 'La guia del penediment';

  @override
  String get asmaMeaning81 => 'El venjador';

  @override
  String get asmaMeaning82 => 'El perdonador';

  @override
  String get asmaMeaning83 => 'El Climent';

  @override
  String get asmaMeaning84 => 'El propietari / sobirà de tots';

  @override
  String get asmaMeaning85 => 'El posseïdor de la majestat i la recompensa';

  @override
  String get asmaMeaning86 => 'L\'Equitat';

  @override
  String get asmaMeaning87 => 'El Recollidor';

  @override
  String get asmaMeaning88 => 'El ric';

  @override
  String get asmaMeaning89 => 'L\'enriquidor';

  @override
  String get asmaMeaning90 => 'El prevendor de danys';

  @override
  String get asmaMeaning91 => 'El portador del dany';

  @override
  String get asmaMeaning92 => 'El donador de beneficis';

  @override
  String get asmaMeaning93 => 'La Llum';

  @override
  String get asmaMeaning94 => 'El guia';

  @override
  String get asmaMeaning95 => 'El creador';

  @override
  String get asmaMeaning96 => 'L\'Etern';

  @override
  String get asmaMeaning97 => 'L\'hereu';

  @override
  String get asmaMeaning98 => 'La guia més justa';

  @override
  String get asmaMeaning99 => 'El pacient';
}
