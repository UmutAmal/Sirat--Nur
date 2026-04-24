// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Galician (`gl`).
class AppLocalizationsGl extends AppLocalizations {
  AppLocalizationsGl([String locale = 'gl']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Camiño Islámico da Luz';

  @override
  String get home => 'Casa';

  @override
  String get quran => 'Corán';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Calendario';

  @override
  String get settings => 'Configuración';

  @override
  String get nextPrayer => 'Próxima oración';

  @override
  String get prayerTimes => 'Tempos de oración';

  @override
  String get continueReading => 'Continúe lendo';

  @override
  String get getLifetimePro => 'Obtén Lifetime Pro';

  @override
  String get unlockTajweed => 'Desbloquear Tajweed e funcións avanzadas';

  @override
  String get prayerCalculation => 'Cálculo de oración';

  @override
  String get method => 'Método de cálculo';

  @override
  String get madhab => 'Método Xurídico Asr';

  @override
  String get surahs => 'Suras';

  @override
  String get ayahs => 'Ayahs';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Amanecer';

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
    return 'Hora de $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'É hora de rezar $prayerName.';
  }

  @override
  String get dataStorage => 'Datos e almacenamento';

  @override
  String get clearCache => 'Borrar caché';

  @override
  String get cacheClearedSuccess => 'A caché borrouse correctamente';

  @override
  String get location => 'Localización';

  @override
  String get language => 'Linguaxe';

  @override
  String get selectLanguage => 'Seleccione Idioma';

  @override
  String get searchLanguage => 'Busca máis de 180 idiomas...';

  @override
  String get systemDefault => 'Sistema predeterminado';

  @override
  String get currentLocation => 'Localización actual (GPS)';

  @override
  String get locationServiceDisabled =>
      'O servizo de localización está desactivado.';

  @override
  String get locationPermissionDenied => 'Permiso de localización denegado.';

  @override
  String get locationDetectionFailed =>
      'Non se puido detectar a túa localización. Escolle unha cidade manualmente ou téntao de novo.';

  @override
  String citiesCount(String count) {
    return '$count cidades';
  }

  @override
  String get search => 'Busca';

  @override
  String get searchHint => 'Busca...';

  @override
  String get noResults => 'Non se atoparon resultados';

  @override
  String get loading => 'Cargando...';

  @override
  String get error => 'Erro';

  @override
  String get appErrorOccurred => 'Produciuse un erro';

  @override
  String get appUnknownError => 'Erro descoñecido';

  @override
  String get quranLoadFailed =>
      'Non se puido cargar o contido do Corán. Téntao de novo.';

  @override
  String get retry => 'Volve tentar';

  @override
  String get refreshAction => 'Actualizar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Gardar';

  @override
  String get delete => 'Eliminar';

  @override
  String get edit => 'Editar';

  @override
  String get close => 'Pechar';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Si';

  @override
  String get no => 'Non';

  @override
  String get surah => 'Sura';

  @override
  String ayahLabel(String ayah) {
    return 'Aiah $ayah';
  }

  @override
  String get juz => 'Xuz';

  @override
  String get page => 'Páx';

  @override
  String get reading => 'Lendo';

  @override
  String get recitation => 'Recitado';

  @override
  String get translation => 'Tradución';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Cargando tafsir...';

  @override
  String get tafsirSourceLabel => 'Fonte Tafsir';

  @override
  String get tafsirNoSurahFound =>
      'Non se atopou ningún tafsir para esta sura.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Non se atopou ningún tafsir para ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Non se puido cargar Tafsir.';

  @override
  String get tafsirNoTextForAyah => 'Non hai texto de tafsir para este ayah.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Descargando tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Cargando tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'A fonte Tafsir devolveu un erro HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'A fonte tafsir seleccionada non devolveu entradas.';

  @override
  String get tafsirCacheUnavailable =>
      'O tafsir verificado aínda non está dispoñible sen conexión. Sincroniza un conxunto de datos tafsir de orixe antes de navegar.';

  @override
  String get bookmarks => 'Marcadores';

  @override
  String get addBookmark => 'Engadir marcador';

  @override
  String get removeBookmark => 'Eliminar o marcador';

  @override
  String get lastRead => 'Última lectura';

  @override
  String get dailyZikr => 'Zikr diario';

  @override
  String get duaMeaning1 =>
      'outros rezan: ‘Señor, dános o ben neste mundo e no Alén, e protéxenos do tormento do Lume’.';

  @override
  String get duaMeaning2 =>
      'Deus non carga a ningunha alma con máis do que pode soportar: cada un gaña o ben que fixo, e sofre o seu mal- ‘Señor, non nos tome a tarefa se esquecemos ou cometemos erros. Señor, non nos cargues como ti cargaches ós que nos precederon. Señor, non nos cargues máis do que temos forza para soportar. Perdóanos, perdóanos e ten piedade de nós. Ti es o noso Protector, así que axúdanos contra os incrédulos.';

  @override
  String get duaMeaning3 =>
      '‘Noso Señor, non deixes que os nosos corazóns se desvíen despois de que ti nos guiaras. Concédenos a túa misericordia: ti es o que sempre dá.';

  @override
  String get duaMeaning4 =>
      'Señor, fai que eu e a miña descendencia sigamos a oración. Noso Señor, acepta a miña petición.';

  @override
  String get duaMeaning5 =>
      'e baixa a túa á con humildade cara a eles con bondade e di: ‘Señor, ten piedade deles, como eles coidaron de min cando era pequeno’.';

  @override
  String get duaMeaning6 =>
      'exaltado sexa Deus, o que ten verdadeiramente o control. [Profeta], non te apresures a recitar antes de que a revelación estea completamente completa, senón que di: \"Señor, aumentame en coñecemento!\"';

  @override
  String get duaMeaning7 =>
      'Di [Profeta]: \"Señor, perdoa e ten piedade: ti es o máis misericordioso de todos\".';

  @override
  String get duaMeaning8 =>
      'os que rezan: ‘Señor, danos alegría nos nosos esposos e descendencia. Fainos bos exemplos para os que te coñecen’.';

  @override
  String get morningZikr => 'Zikr de mañá';

  @override
  String get eveningZikr => 'Zikr da noite';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masa\'il';

  @override
  String get hadith => 'Hadith';

  @override
  String get hadithCollection => 'Colección Hadith';

  @override
  String get hadithBooks => 'Libros de Hadith';

  @override
  String get searchHadith => 'Busca Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Nomes de Allah';

  @override
  String get liveTv => 'TV en directo';

  @override
  String get watchLive => 'Mira en directo';

  @override
  String get streamError => 'Erro de transmisión';

  @override
  String get reload => 'Recarga';

  @override
  String get openInYoutube => 'Abre en YouTube';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Xaxún';

  @override
  String get quranReading => 'Lectura do Corán';

  @override
  String get prayers => 'Oracións';

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
  String get dhikrCount => 'Conde Dhikr';

  @override
  String get weeklyProgress => 'Progreso semanal';

  @override
  String get monthlyProgress => 'Progreso Mensual';

  @override
  String get statistics => 'Estatísticas';

  @override
  String get hijriCalendar => 'Calendario Hijri';

  @override
  String get gregorianCalendar => 'Calendario gregoriano';

  @override
  String get today => 'Hoxe';

  @override
  String get tomorrow => 'Mañá';

  @override
  String get yesterday => 'Onte';

  @override
  String get specialDays => 'Días especiais';

  @override
  String get ramadan => 'Ramadán';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Ano Novo islámico';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadán';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadán';

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
  String get qiblaDirection => 'Dirección de Qibla';

  @override
  String get compass => 'Compás';

  @override
  String get degrees => 'graos';

  @override
  String get north => 'Norte';

  @override
  String get qiblaFound => 'Qibla atopada!';

  @override
  String get turnDevice => 'Xire o dispositivo para enfrontarse á Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Erro do compás: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'O sensor do compás non está dispoñible neste dispositivo.';

  @override
  String get qiblaLocationRequiredTitle => 'Localización necesaria para Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Establece a túa localización real antes de usar o compás Qibla para que se poida calcular a dirección con precisión.';

  @override
  String get adhanNotificationChannelName => 'Notificacións de Adhan';

  @override
  String get adhanNotificationChannelDescription =>
      'Alertas de tempo de oración con son adhan.';

  @override
  String get notifications => 'Notificacións';

  @override
  String get prayerNotifications => 'Notificacións de oración';

  @override
  String get enableNotifications => 'Activa as notificacións';

  @override
  String get notificationTime => 'Hora de notificación';

  @override
  String get beforePrayer => 'minutos antes da oración';

  @override
  String get theme => 'Tema';

  @override
  String get lightMode => 'Modo de luz';

  @override
  String get darkMode => 'Modo escuro';

  @override
  String get systemTheme => 'Tema do sistema';

  @override
  String get about => 'Sobre';

  @override
  String get version => 'Versión';

  @override
  String get privacyPolicy => 'Política de privacidade';

  @override
  String get termsOfService => 'Condicións de servizo';

  @override
  String get contactUs => 'Contacta connosco';

  @override
  String get rateApp => 'Valorar aplicación';

  @override
  String get shareApp => 'Compartir aplicación';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Consulta $appName: a aplicación de estilo de vida islámica definitiva! $url';
  }

  @override
  String get downloadManager => 'Xestor de descargas';

  @override
  String get downloads => 'Descargas';

  @override
  String get downloading => 'Descargando...';

  @override
  String get downloadComplete => 'Descarga completa';

  @override
  String get downloadFailed => 'Fallou a descarga';

  @override
  String get offlineMode => 'Modo sen conexión';

  @override
  String get noInternet => 'Sen conexión a Internet';

  @override
  String get checkConnection => 'Comproba a túa conexión';

  @override
  String get premium => 'Premium';

  @override
  String get upgradeToPro => 'Actualiza a Pro';

  @override
  String get proFeatures => 'Características Pro';

  @override
  String get removeAds => 'Eliminar anuncios';

  @override
  String get unlockAll => 'Desbloquear todo o contido';

  @override
  String get exclusiveContent => 'Contido exclusivo';

  @override
  String get welcome => 'Benvido';

  @override
  String get getStarted => 'Comeza';

  @override
  String get skip => 'Saltar';

  @override
  String get next => 'A continuación';

  @override
  String get done => 'Feito';

  @override
  String get onboarding1Title => 'Benvido ao Camiño de Deus';

  @override
  String get onboarding1Desc =>
      'A túa aplicación complementaria islámica completa para tempos de oración, Corán e moito máis';

  @override
  String get onboarding2Title => 'Tempos de oración';

  @override
  String get onboarding2Desc =>
      'Horas de oración precisas en función da túa localización';

  @override
  String get onboarding3Title => 'Corán e máis';

  @override
  String get onboarding3Desc =>
      'Le o Corán, rastrexa a túa lectura e explora contido islámico';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'Restablecer contador';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'Reconto de obxectivos: $target';
  }

  @override
  String get tapToCount => 'Toca para contar';

  @override
  String get zikrCompletedMashAllah => 'Completado! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Alá está moi por riba de toda imperfección.';

  @override
  String get zikrMeaningAlhamdulillah => 'Todos os eloxios pertencen a Deus.';

  @override
  String get zikrMeaningAllahuAkbar => 'Alá é o Maior.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Non hai deus senón Alá.';

  @override
  String get zikrMeaningAstaghfirullah => 'Busco o perdón de Deus.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Non hai poder nin forza excepto por Deus.';

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
  String get dailyProgress => 'Progreso diario';

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
      'Volve comprobar o estado da subscrición premium';

  @override
  String get syncStore =>
      'Sincroniza coa tenda de aplicacións para confirmar a túa subscrición premium.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'Subscrición Premium verificada.';

  @override
  String get premiumNotFound => 'Non se atopou a subscrición Premium.';

  @override
  String premiumRefreshError(Object error) {
    return 'Non se puido actualizar o estado da subscrición premium: $error';
  }

  @override
  String get offlineDownloadManager => 'Xestor de descargas sen conexión';

  @override
  String get manageDatasets =>
      'Xestiona paquetes masivos de conxuntos de datos e audio sen conexión.';

  @override
  String get freeStorage => 'Libera almacenamento interno do dispositivo.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'Comprobando a base de datos do Corán...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'Estado da base de datos do Corán';

  @override
  String statusLabel(Object status) {
    return 'Estado: $status';
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
    return 'Fallou a verificación do Corán: $error';
  }

  @override
  String get audioVoice => 'Voz de audio';

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
  String get qiblaCalibration => 'Calibración Qibla';

  @override
  String get compassSmoothing => 'Suavizado de compás';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Offset de calibración';

  @override
  String currentOffset(Object offset) {
    return 'Actual: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Axusta se o teu compás necesita unha corrección manual. Os valores positivos xiran no sentido horario.';

  @override
  String get apply => 'Aplicar cambios';

  @override
  String get resetOnboarding => 'Restablecer a configuración da introdución';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Diagnóstico';

  @override
  String get diagnosticsNotSet => 'Non definido';

  @override
  String get diagnosticsPrayerProfile => 'Perfil de oración';

  @override
  String get diagnosticsPrayerSource => 'Autoridade de oración';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Personalizado / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Ángulos personalizados manuais (sen fonte institucional)';

  @override
  String diagnosticsPrayerHybridSource(String sourceName, String madhab) {
    return 'Método $sourceName coa configuración $madhab seleccionada polo usuario';
  }

  @override
  String diagnosticsPrayerRegionalFallbackSource(String sourceName) {
    return 'Alternativa rexional mediante $sourceName. Confirma os horarios de oración locais coa túa mesquita ou coa autoridade relixiosa oficial.';
  }

  @override
  String get diagnosticsCloudDriven => 'Impulsado pola nube';

  @override
  String get diagnosticsAdhanAudioAssets => 'Activos de audio de Adhan';

  @override
  String get diagnosticsUiAudioAssets =>
      'Activos de audio da interface de usuario';

  @override
  String get diagnosticsQuranAudioAssets => 'Activos de audio do Corán';

  @override
  String get diagnosticsAudioAssets => 'Activos de audio';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count ficheiros';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Fallou a lectura do manifesto: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Localizacións locais';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count compatible';
  }

  @override
  String get diagnosticsQuranDataset => 'Conxunto de datos do Corán';

  @override
  String get diagnosticsQuranSurahs => 'Suras do Corán';

  @override
  String get diagnosticsQuranAyahs => 'Corán Ayahs';

  @override
  String get diagnosticsQuranJuzMetadata => 'Metadatos do Corán Juz';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Faltan táboas de nube en Supabase; paquete de reserva activo';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Fallou a comprobación na nube: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Faltan os metadatos de Cloud Juz; activo de reserva estrutural agrupada';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Fallou a verificación estrutural da nube: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Calibración necesaria. Xire o dispositivo na figura-8.';

  @override
  String get dailyVerse => 'Verso diario';

  @override
  String get dailyVerseUnavailableTitle => 'O verso diario non está dispoñible';

  @override
  String get dailyVerseUnavailableBody =>
      'O contido de versículo diario verificado aínda non está configurado para esta compilación. Conéctate á fonte da nube ou sincroniza unha caché verificada antes de navegar.';

  @override
  String get todaysIbadah => 'Hoxe Ibadah';

  @override
  String get quickAccess => 'Acceso rápido';

  @override
  String get assistant => 'Asistente';

  @override
  String get places => 'Lugares';

  @override
  String get library => 'Biblioteca';

  @override
  String get analytics => 'Analítica';

  @override
  String get dailyDuas => 'Duas diarias';

  @override
  String essentialDuas(String count) {
    return '$count duas imprescindibles';
  }

  @override
  String get duaUnavailableTitle =>
      'As dúas verificadas aínda non están dispoñibles';

  @override
  String get duaUnavailableBody =>
      'As duas diarias verificadas aínda non se sincronizaron con este dispositivo. Conéctate á fonte da nube para cargar duas de orixe en lugar dunha alternativa non verificada.';

  @override
  String get duaCategoryQuranic => 'Dua coránica';

  @override
  String get duaCategoryMorningEvening => 'Mañá e Noite';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Protección';

  @override
  String get duaCategoryBeginning => 'Comezos';

  @override
  String get duaCategorySleep => 'Durmir';

  @override
  String get duaCategoryFoodDrink => 'Comida e bebida';

  @override
  String get duaCategoryForgiveness => 'O perdón';

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
  String get islamicEducation => 'Educación islámica';

  @override
  String get sukunAudioTitle => 'Paisaxes sonoras de Sukun';

  @override
  String get hadithCollections => 'Coleccións Hadith';

  @override
  String get hadithSourcePending => 'Fonte verificada pendente';

  @override
  String get hadithUnavailableTitle =>
      'As coleccións de hadiz verificadas aínda non están dispoñibles';

  @override
  String get hadithUnavailableBody =>
      'Esta compilación aínda depende dun feed de hadiz externo non verificado. A navegación de hadith permanece desactivada ata que se sincronice un conxunto de datos de orixe.';

  @override
  String get paywallUnlockAll =>
      'Desbloquea todas as funcións para a túa viaxe espiritual';

  @override
  String get premiumProductUnavailable =>
      'O produto Premium non está dispoñible neste momento. Téntao de novo máis tarde.';

  @override
  String get premiumPurchaseFailed =>
      'Non se puido completar a compra. Téntao de novo.';

  @override
  String get paywallFeature1Title => 'Asistente Neural Plus';

  @override
  String get paywallFeature1Desc => 'Preguntas e respostas ilimitadas con IA';

  @override
  String get paywallFeature2Title => 'Ilimitado fóra de liña';

  @override
  String get paywallFeature2Desc => 'Descargar todos os recitados';

  @override
  String get paywallFeature3Title => 'Deseños exclusivos';

  @override
  String get paywallFeature3Desc => 'Temas e fontes premium';

  @override
  String get paywallFeature4Title => 'Sen anuncios';

  @override
  String get paywallFeature4Desc => 'Cero anuncios';

  @override
  String get paywallGetAccess => 'Obtén acceso de por vida: 1,00 \$';

  @override
  String get restorePurchases => 'Restaurar compras';

  @override
  String get zakatCalculator => 'Calculadora zakat';

  @override
  String get zakatGold => 'Ouro (Altın)';

  @override
  String get zakatSilver => 'Prata (Gümüş)';

  @override
  String get zakatCashBank => 'Caixa / Banco';

  @override
  String get zakatBusiness => 'Negocios';

  @override
  String get zakatInvestments => 'Investimentos';

  @override
  String get zakatWeightGrams => 'Peso (g)';

  @override
  String get zakatPricePerGram => 'Prezo/g';

  @override
  String get zakatTotalAmount => 'Importe total';

  @override
  String get zakatInventoryValue => 'Valor de inventario';

  @override
  String get zakatDebts => 'Débedas';

  @override
  String get zakatTotal => 'Total';

  @override
  String get calculateZakat => 'Calcula o zakat';

  @override
  String get nisabNotReached => 'Nisab non chegou. O zakat non é obrigatorio.';

  @override
  String get totalZakat => 'Zakat total';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Activos: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakat de ouro';

  @override
  String get zakatSilverZakat => 'Zakat de prata';

  @override
  String get zakatCashZakat => 'Zakat en efectivo';

  @override
  String get zakatBusinessZakat => 'Zakat empresarial';

  @override
  String get zakatInvestmentZakat => 'Zakat de investimento';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! Son o teu asistente islámico. Pregúntame sobre a oración, o xaxún, o zakat ou calquera tema islámico.';

  @override
  String get chatbotLimitReached =>
      'Alcanzouse o límite diario de consultas. Actualiza a Premium de forma ilimitada.';

  @override
  String get chatbotErrorMsg =>
      'Non puiden xerar unha resposta. Téntao de novo.';

  @override
  String get chatbotOfflinePrompt =>
      'A base de coñecemento islámico fóra de liña verificada aínda está a ser seleccionada. Agora podes activar a alternativa sen conexión, pero só mostrará mensaxes seguras limitadas ata que o conxunto de datos de orixe estea listo.\n\nQueres activar a alternativa sen conexión?';

  @override
  String get chatbotOfflineSwitched =>
      'Activouse a alternativa sen conexión. As respostas islámicas locais verificadas aínda non están listas.';

  @override
  String get chatbotOfflineDownloadLabel =>
      'Activar a alternativa sen conexión';

  @override
  String get downloadPreparing => 'Preparando a descarga...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Descargando a sura $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Xa se descargaron todas as suras para este recitador.';

  @override
  String get offlineQuranAudioPacks =>
      'Paquetes de audio do Corán sen conexión';

  @override
  String storedOnDeviceMb(String size) {
    return 'Almacenado no dispositivo: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total suras descargadas';
  }

  @override
  String get redownloadMissingRepair => 'Reparar/Descargar';

  @override
  String get downloadAction => 'Descargar';

  @override
  String get resumeDownload => 'Continuar descargando';

  @override
  String get deleteDownloadedFiles => 'Eliminar ficheiros descargados';

  @override
  String get downloadCancelling => 'Cancelando...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Descarga cancelada para $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Descarga completada para $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'A descarga finalizou para $reciter con $failed suras erradas ($downloaded/$total descargadas).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Elimináronse ficheiros sen conexión para $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'As fontes de audio verificadas do Corán non están dispoñibles neste momento.';

  @override
  String get quranAudioPlaybackErrorWithConnectionHint =>
      'Produciuse un erro na reprodución de audio. Comproba a túa conexión.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'O paquete de audio do Corán verificado está incompleto ($available/$total). Téntao de novo despois de que se actualice o catálogo de audio.';
  }

  @override
  String get chatbotHint => 'Fai unha pregunta...';

  @override
  String get chatbotThinking => 'Pensando...';

  @override
  String get sukunMixerSubtitle => 'Mesturador de Natureza e Corán';

  @override
  String get audioPlayFailed => 'Produciuse un erro na reprodución de audio';

  @override
  String get sukunNatureLabel => 'Sukun (Natureza)';

  @override
  String get sukunRainOfMercy => 'Choiva de Misericordia';

  @override
  String get sukunGardenOfPeace => 'Xardín da Paz';

  @override
  String get sukunMidnightCalm => 'Medianoite Calma';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle =>
      'As paisaxes sonoras non están dispoñibles';

  @override
  String get sukunUnavailableBody =>
      'Esta compilación aínda non inclúe os recursos de paisaxe sonora de Sukun necesarios.';

  @override
  String get prayerCompletion => 'Finalización da oración';

  @override
  String get streaks => 'Raias';

  @override
  String get dayStreak => 'Racha de día';

  @override
  String get bestStreak => 'Mellor racha';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Fallback sen conexión';

  @override
  String get chatbotUseCloudAi => 'Usa Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Activar a alternativa sen conexión';

  @override
  String chatbotQueriesLeft(String count) {
    return 'Quedan $count';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'A API de nube non está configurada. A orientación islámica sen conexión verificada aínda non está dispoñible.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] A orientación islámica local verificada aínda non está dispoñible. Cambia a Cloud AI para obter respostas de orixe.';

  @override
  String get mosques => 'Mesquitas';

  @override
  String get halalFood => 'Comida Halal';

  @override
  String get placesSearchArea => 'Busca nesta zona';

  @override
  String get nearbyMosques => 'Mezquitas próximas';

  @override
  String get islamicSchools => 'Escolas islámicas';

  @override
  String placesFoundCount(String count) {
    return '$count atopado';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km de distancia';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Erro da API: $statusCode';
  }

  @override
  String get placesNetworkError => 'Erro de rede. Téntao de novo.';

  @override
  String get placesLocationRequiredTitle => 'Localización necesaria';

  @override
  String get placesLocationRequiredBody =>
      'Establece primeiro unha localización para que se poidan buscar con precisión nas mesquitas próximas, a comida halal e as escolas islámicas.';

  @override
  String get placesMapTilesUnavailableTitle =>
      'Os mosaicos do mapa non están dispoñibles';

  @override
  String get placesMapTilesUnavailableBody =>
      'Unha fonte de mosaico de mapa verificada aínda non está configurada para esta compilación. Os lugares próximos aínda poden cargar desde a túa localización gardada.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'Os datos de lugares non están dispoñibles';

  @override
  String get placesDataSourceUnavailableBody =>
      'Un punto final de datos de lugares verificados aínda non está configurado para esta compilación. Establece PLACES_OVERPASS_API_URL nun proxy ou provedor aprobado antes de activar a busca nas proximidades.';

  @override
  String get unknownPlaceName => 'Nome descoñecido';

  @override
  String get islamicPlaceFallback => 'Lugar islámico';

  @override
  String get asmaMeaning1 => 'O Beneficioso';

  @override
  String get asmaMeaning2 => 'O Misericordioso';

  @override
  String get asmaMeaning3 => 'O Rei / Señor Eterno';

  @override
  String get asmaMeaning4 => 'O Santísimo';

  @override
  String get asmaMeaning5 => 'A fonte da paz';

  @override
  String get asmaMeaning6 => 'O dador da seguridade';

  @override
  String get asmaMeaning7 =>
      'The Watchful Guardian, who observes and safeguards all creation.';

  @override
  String get asmaMeaning8 => 'O precioso / o máis poderoso';

  @override
  String get asmaMeaning9 =>
      'The Restorer and Irresistible, whose will prevails with perfect power.';

  @override
  String get asmaMeaning10 => 'O máis grande';

  @override
  String get asmaMeaning11 => 'O Creador';

  @override
  String get asmaMeaning12 => 'O creador da orde';

  @override
  String get asmaMeaning13 => 'O moldeador da beleza';

  @override
  String get asmaMeaning14 => 'O perdón';

  @override
  String get asmaMeaning15 => 'O Subduer';

  @override
  String get asmaMeaning16 => 'O Dador de Todo';

  @override
  String get asmaMeaning17 => 'O sustentador';

  @override
  String get asmaMeaning18 => 'O abridor';

  @override
  String get asmaMeaning19 => 'O Coñecedor de Todo';

  @override
  String get asmaMeaning20 =>
      'The Withholder, who narrows and restrains by wisdom.';

  @override
  String get asmaMeaning21 => 'O Alivio';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'O Exaltador';

  @override
  String get asmaMeaning24 => 'O outorgador de honra';

  @override
  String get asmaMeaning25 => 'O Humillador';

  @override
  String get asmaMeaning26 => 'O oínte de todos';

  @override
  String get asmaMeaning27 => 'O vidente de todos';

  @override
  String get asmaMeaning28 => 'O Xuíz';

  @override
  String get asmaMeaning29 => 'O Xusto';

  @override
  String get asmaMeaning30 => 'O Sutil';

  @override
  String get asmaMeaning31 => 'O Todo Consciente';

  @override
  String get asmaMeaning32 => 'O Forebearing';

  @override
  String get asmaMeaning33 => 'O Magnífico';

  @override
  String get asmaMeaning34 => 'O gran perdoador';

  @override
  String get asmaMeaning35 => 'O recompensador da gratitude';

  @override
  String get asmaMeaning36 => 'O máis alto';

  @override
  String get asmaMeaning37 => 'O máis grande';

  @override
  String get asmaMeaning38 => 'The Preserver';

  @override
  String get asmaMeaning39 => 'The Nourisher';

  @override
  String get asmaMeaning40 => 'The Reckoner';

  @override
  String get asmaMeaning41 => 'O Majestuoso';

  @override
  String get asmaMeaning42 => 'O xeneroso';

  @override
  String get asmaMeaning43 => 'O vixiante';

  @override
  String get asmaMeaning44 => 'O que responde á oración';

  @override
  String get asmaMeaning45 => 'O Todo Comprensivo';

  @override
  String get asmaMeaning46 => 'O Perfectamente Sabio';

  @override
  String get asmaMeaning47 => 'O amoroso';

  @override
  String get asmaMeaning48 => 'O máis glorioso';

  @override
  String get asmaMeaning49 => 'O Rexurdimento';

  @override
  String get asmaMeaning50 => 'A testemuña';

  @override
  String get asmaMeaning51 => 'A verdade';

  @override
  String get asmaMeaning52 => 'O fideicomisario total suficiente';

  @override
  String get asmaMeaning53 => 'O posuidor de todas as forzas';

  @override
  String get asmaMeaning54 => 'O Forzoso';

  @override
  String get asmaMeaning55 => 'O protector';

  @override
  String get asmaMeaning56 => 'O eloxiado';

  @override
  String get asmaMeaning57 => 'O Taxador';

  @override
  String get asmaMeaning58 => 'O creador';

  @override
  String get asmaMeaning59 => 'O Restaurador';

  @override
  String get asmaMeaning60 => 'O dador de vida';

  @override
  String get asmaMeaning61 => 'O tomador da vida';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'O sustentador autosubsistente';

  @override
  String get asmaMeaning64 => 'O Buscador';

  @override
  String get asmaMeaning65 => 'O Glorioso';

  @override
  String get asmaMeaning66 => 'O Único';

  @override
  String get asmaMeaning67 => 'O único';

  @override
  String get asmaMeaning68 => 'O buscado por todos';

  @override
  String get asmaMeaning69 => 'O Poderoso';

  @override
  String get asmaMeaning70 => 'O Creador de todo poder';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'O atraso';

  @override
  String get asmaMeaning73 => 'O primeiro';

  @override
  String get asmaMeaning74 => 'O último';

  @override
  String get asmaMeaning75 => 'O Manifesto';

  @override
  String get asmaMeaning76 => 'O oculto';

  @override
  String get asmaMeaning77 =>
      'The Protecting Patron, who governs and cares for all creation.';

  @override
  String get asmaMeaning78 => 'O Supremo';

  @override
  String get asmaMeaning79 => 'O Facedor do Ben';

  @override
  String get asmaMeaning80 => 'A guía para o arrepentimento';

  @override
  String get asmaMeaning81 => 'O Vingador';

  @override
  String get asmaMeaning82 => 'O perdoador';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'O propietario/soberano de todos';

  @override
  String get asmaMeaning85 => 'O posuidor da maxestade e da recompensa';

  @override
  String get asmaMeaning86 => 'O Equitativo';

  @override
  String get asmaMeaning87 => 'The Gatherer';

  @override
  String get asmaMeaning88 => 'O rico';

  @override
  String get asmaMeaning89 => 'O enriquecedor';

  @override
  String get asmaMeaning90 => 'O Preventor de Danos';

  @override
  String get asmaMeaning91 => 'The Bringer of Harm';

  @override
  String get asmaMeaning92 => 'O concedente de beneficios';

  @override
  String get asmaMeaning93 => 'A Luz';

  @override
  String get asmaMeaning94 => 'O Guía';

  @override
  String get asmaMeaning95 => 'O creador';

  @override
  String get asmaMeaning96 => 'O eterno';

  @override
  String get asmaMeaning97 => 'O herdeiro';

  @override
  String get asmaMeaning98 => 'A guía máis xusta';

  @override
  String get asmaMeaning99 =>
      'The Patient, who does not hasten punishment and acts with perfect forbearance.';
}
