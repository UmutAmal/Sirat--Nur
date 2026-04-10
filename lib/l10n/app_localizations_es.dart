// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Camino de Allah';

  @override
  String get splashTagline => 'Camino Islámico de la Luz';

  @override
  String get home => 'Hogar';

  @override
  String get quran => 'Corán';

  @override
  String get qibla => 'Quibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Calendario';

  @override
  String get settings => 'Ajustes';

  @override
  String get nextPrayer => 'Próxima oración';

  @override
  String get prayerTimes => 'Horarios de oración';

  @override
  String get continueReading => 'Continuar leyendo';

  @override
  String get getLifetimePro => 'Obtenga Lifetime Pro';

  @override
  String get unlockTajweed => 'Desbloquear Tajweed y funciones avanzadas';

  @override
  String get prayerCalculation => 'Cálculo de oración';

  @override
  String get method => 'Método de cálculo';

  @override
  String get madhab => 'Método Jurídico Asr';

  @override
  String get surahs => 'Suras';

  @override
  String get ayahs => 'ayas';

  @override
  String get fajr => 'Fayr';

  @override
  String get sunrise => 'Amanecer';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'asr';

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
    return 'Es hora de orar $prayerName.';
  }

  @override
  String get dataStorage => 'Datos y almacenamiento';

  @override
  String get clearCache => 'Borrar caché';

  @override
  String get cacheClearedSuccess => 'Caché borrado exitosamente';

  @override
  String get location => 'Ubicación';

  @override
  String get language => 'Idioma';

  @override
  String get selectLanguage => 'Seleccionar idioma';

  @override
  String get searchLanguage => 'Buscar en más de 180 idiomas...';

  @override
  String get systemDefault => 'Valor predeterminado del sistema';

  @override
  String get currentLocation => 'Ubicación actual (GPS)';

  @override
  String get locationServiceDisabled =>
      'El servicio de ubicación está deshabilitado.';

  @override
  String get locationPermissionDenied => 'Permiso de ubicación denegado.';

  @override
  String citiesCount(String count) {
    return '$count ciudades';
  }

  @override
  String get search => 'Buscar';

  @override
  String get searchHint => 'Buscar...';

  @override
  String get noResults => 'No se encontraron resultados';

  @override
  String get loading => 'Cargando...';

  @override
  String get error => 'error';

  @override
  String get appErrorOccurred => 'Se produjo un error';

  @override
  String get appUnknownError => 'Error desconocido';

  @override
  String get retry => 'Rever';

  @override
  String get refreshAction => 'Actualizar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Ahorrar';

  @override
  String get delete => 'Eliminar';

  @override
  String get edit => 'Editar';

  @override
  String get close => 'Cerca';

  @override
  String get ok => 'DE ACUERDO';

  @override
  String get yes => 'Sí';

  @override
  String get no => 'No';

  @override
  String get surah => 'Sura';

  @override
  String ayahLabel(String ayah) {
    return 'Versículo $ayah';
  }

  @override
  String get juz => 'juz';

  @override
  String get page => 'Página';

  @override
  String get reading => 'Lectura';

  @override
  String get recitation => 'Recitación';

  @override
  String get translation => 'Traducción';

  @override
  String get tafsir => 'tafsir';

  @override
  String get tafsirLoading => 'Cargando tafsir...';

  @override
  String get tafsirSourceLabel => 'fuente tafsir';

  @override
  String get tafsirNoSurahFound =>
      'No se encontró ningún tafsir para esta sura.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'No se encontró ningún tafsir para la ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'No se pudo cargar Tafsir.';

  @override
  String get tafsirNoTextForAyah => 'No hay texto de tafsir para esta aleya.';

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
    return 'La fuente de Tafsir devolvió un error HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'La fuente de tafsir seleccionada no arrojó entradas.';

  @override
  String get bookmarks => 'Marcadores';

  @override
  String get addBookmark => 'Agregar marcador';

  @override
  String get removeBookmark => 'Quitar marcador';

  @override
  String get lastRead => 'Última lectura';

  @override
  String get dailyZikr => 'Zikr diario';

  @override
  String get duaMeaning1 =>
      'otros rezan: “Señor nuestro, danos el bien en este mundo y en el Más Allá, y protégenos del tormento del Fuego”.';

  @override
  String get duaMeaning2 =>
      'Dios no carga a ninguna alma con más de lo que puede soportar: cada uno obtiene el bien que ha hecho y sufre el mal. “Señor, no nos reprendas si olvidamos o cometemos errores. Señor, no nos cargues como cargaste a quienes nos precedieron. Señor, no nos cargues con más de lo que tenemos fuerzas para soportar. Perdónanos, perdónanos y ten piedad de nosotros. Eres nuestro Protector, así que ayúdanos contra los incrédulos.';

  @override
  String get duaMeaning3 =>
      '“Señor nuestro, no permitas que nuestros corazones se desvíen después de que Tú nos hayas guiado. Concédenos Tu misericordia: Tú eres el Siempre Dador.';

  @override
  String get duaMeaning4 =>
      'Señor, concédenos que yo y mi descendencia podamos mantener la oración. Señor nuestro, acepta mi petición.';

  @override
  String get duaMeaning5 =>
      'y baja tu ala con humildad hacia ellos con bondad y di: “Señor, ten piedad de ellos, como ellos cuidaron de mí cuando yo era pequeño”.';

  @override
  String get duaMeaning6 =>
      'exaltado sea Dios, el que verdaderamente tiene el control. [Profeta], no te apresures a recitar antes de que la revelación esté completamente completa, sino di: ‘¡Señor, auméntame en conocimiento!’';

  @override
  String get duaMeaning7 =>
      'Di [Profeta]: “Señor, perdona y ten piedad: tú eres el más misericordioso de todos”.';

  @override
  String get duaMeaning8 =>
      'aquellos que oran: “Señor nuestro, danos alegría en nuestros cónyuges y en nuestra descendencia”. Haznos buenos ejemplos para aquellos que te conocen”.';

  @override
  String get morningZikr => 'Zikr de la mañana';

  @override
  String get eveningZikr => 'Zikr vespertino';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'masa\'il';

  @override
  String get hadith => 'hadiz';

  @override
  String get hadithCollection => 'Colección de hadices';

  @override
  String get hadithBooks => 'Libros de hadices';

  @override
  String get searchHadith => 'Buscar hadices';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Nombres de Allah';

  @override
  String get liveTv => 'Televisión en vivo';

  @override
  String get watchLive => 'Ver en vivo';

  @override
  String get streamError => 'Error de transmisión';

  @override
  String get reload => 'Recargar';

  @override
  String get openInYoutube => 'Abrir en YouTube';

  @override
  String get ibadahTracker => 'Rastreador de Ibadah';

  @override
  String get fasting => 'Ayuno';

  @override
  String get quranReading => 'Lectura del Corán';

  @override
  String get prayers => 'Rezo';

  @override
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '$hours h $minutes min';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '$minutes min';
  }

  @override
  String get prayerRemainingUnavailable => '--';

  @override
  String get dhikrCount => 'Conde dhikr';

  @override
  String get weeklyProgress => 'Progreso semanal';

  @override
  String get monthlyProgress => 'Progreso mensual';

  @override
  String get statistics => 'Estadística';

  @override
  String get hijriCalendar => 'Calendario Hijri';

  @override
  String get gregorianCalendar => 'Calendario gregoriano';

  @override
  String get today => 'Hoy';

  @override
  String get tomorrow => 'Mañana';

  @override
  String get yesterday => 'Ayer';

  @override
  String get specialDays => 'Días Especiales';

  @override
  String get ramadan => 'Ramadán';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Año nuevo islámico';

  @override
  String get mawlidAnNabi => 'Mawlid Kandili';

  @override
  String get specialDayDateRamadanStart => '1 Ramadán';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadán';

  @override
  String get specialDayDateEidAlFitr => '1 shawwal';

  @override
  String get specialDayDateEidAlAdha => '10 Dhu al-Hijjah';

  @override
  String get specialDayDateIslamicNewYear => '1 muharram';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabí al-Awwal';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'Dirección qibla';

  @override
  String get compass => 'Brújula';

  @override
  String get degrees => 'grados';

  @override
  String get north => 'Norte';

  @override
  String get qiblaFound => '¡Qibla encontrada!';

  @override
  String get turnDevice => 'Gira tu dispositivo hacia la Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Error de brújula: $error';
  }

  @override
  String get notifications => 'Notificaciones';

  @override
  String get prayerNotifications => 'Notificaciones de oración';

  @override
  String get enableNotifications => 'Habilitar notificaciones';

  @override
  String get notificationTime => 'Hora de notificación';

  @override
  String get beforePrayer => 'minutos antes de la oración';

  @override
  String get theme => 'Tema';

  @override
  String get lightMode => 'Modo de luz';

  @override
  String get darkMode => 'Modo oscuro';

  @override
  String get systemTheme => 'Tema del sistema';

  @override
  String get about => 'Acerca de';

  @override
  String get version => 'Versión';

  @override
  String get privacyPolicy => 'política de privacidad';

  @override
  String get termsOfService => 'Términos de servicio';

  @override
  String get contactUs => 'Contáctenos';

  @override
  String get rateApp => 'Calificar aplicación';

  @override
  String get shareApp => 'Compartir aplicación';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Descubre $appName: ¡la aplicación definitiva para el estilo de vida islámico! $url';
  }

  @override
  String get downloadManager => 'Administrador de descargas';

  @override
  String get downloads => 'Descargas';

  @override
  String get downloading => 'Descargando...';

  @override
  String get downloadComplete => 'Descarga completa';

  @override
  String get downloadFailed => 'Descarga fallida';

  @override
  String get offlineMode => 'Modo sin conexión';

  @override
  String get noInternet => 'Sin conexión a Internet';

  @override
  String get checkConnection => 'Por favor revisa tu conexión';

  @override
  String get premium => 'De primera calidad';

  @override
  String get upgradeToPro => 'Actualízate a Pro';

  @override
  String get proFeatures => 'Funciones profesionales';

  @override
  String get removeAds => 'Eliminar anuncios';

  @override
  String get unlockAll => 'Desbloquear todo el contenido';

  @override
  String get exclusiveContent => 'Contenido exclusivo';

  @override
  String get welcome => 'Bienvenido';

  @override
  String get getStarted => 'Empezar';

  @override
  String get skip => 'Saltar';

  @override
  String get next => 'Próximo';

  @override
  String get done => 'Hecho';

  @override
  String get onboarding1Title => 'Bienvenidos al Camino de Allah';

  @override
  String get onboarding1Desc =>
      'Tu aplicación complementaria islámica completa para tiempos de oración, Corán y más';

  @override
  String get onboarding2Title => 'Horarios de oración';

  @override
  String get onboarding2Desc =>
      'Tiempos de oración precisos según su ubicación';

  @override
  String get onboarding3Title => 'Corán y más';

  @override
  String get onboarding3Desc =>
      'Lea el Corán, realice un seguimiento de su lectura y explore contenido islámico';

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
  String get zikrCompletedMashAllah => '¡Terminado! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah está muy por encima de toda imperfección.';

  @override
  String get zikrMeaningAlhamdulillah => 'Toda alabanza pertenece a Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah es el Más Grande.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'No hay más dios que Alá.';

  @override
  String get zikrMeaningAstaghfirullah => 'Busco el perdón de Allah.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'No hay poder ni fuerza excepto a través de Allah.';

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
  String get offlineDownloadManager =>
      'Administrador de descargas sin conexión';

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
  String get audioVoice => 'Voz de audio';

  @override
  String get audioVoiceMisharyAlafasy => 'Hombre (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Hombre (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Hombre (Sudais)';

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
  String get diagnosticsNotSet => 'No establecido';

  @override
  String get diagnosticsPrayerProfile => 'Perfil de oración';

  @override
  String get diagnosticsPrayerSource => 'Autoridad de oración';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Personalizado / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Ángulos personalizados manuales (sin fuente institucional)';

  @override
  String get diagnosticsCloudDriven => 'Impulsado por la nube';

  @override
  String get diagnosticsAdhanAudioAssets => 'Activos de audio de Adhan';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Recursos de audio del Corán';

  @override
  String get diagnosticsAudioAssets => 'Recursos de audio';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count archivos';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Error de lectura del manifiesto: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Localización Locales';

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
      'Faltan tablas de nube en Supabase; respaldo incluido activo';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Faltan metadatos de Cloud Juz; respaldo estructural incluido activo';

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
  String get dailyVerse => 'Verso diario';

  @override
  String get todaysIbadah => 'La Ibada de hoy';

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
    return '$count duas esenciales';
  }

  @override
  String get duaUnavailableTitle =>
      'Las duas verificadas aún no están disponibles';

  @override
  String get duaUnavailableBody =>
      'Las duas diarias verificadas aún no se han sincronizado con este dispositivo. Conéctese a la fuente de la nube para cargar duas de origen en lugar de un recurso alternativo no verificado.';

  @override
  String get duaCategoryQuranic => 'dua coránica';

  @override
  String get duaCategoryMorningEvening => 'Mañana y tarde';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Protección';

  @override
  String get duaCategoryBeginning => 'Principios';

  @override
  String get duaCategorySleep => 'Dormir';

  @override
  String get duaCategoryFoodDrink => 'Comida y bebida';

  @override
  String get duaCategoryForgiveness => 'Perdón';

  @override
  String get duaCategoryHome => 'Hogar';

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
  String get islamicEducation => 'Educación Islámica';

  @override
  String get sukunAudioTitle => 'Paisajes sonoros de Sukun';

  @override
  String get hadithCollections => 'Colecciones de hadices';

  @override
  String get hadithSourcePending => 'Fuente verificada pendiente';

  @override
  String get hadithUnavailableTitle =>
      'Las colecciones de hadices verificadas aún no están disponibles';

  @override
  String get hadithUnavailableBody =>
      'Esta construcción todavía depende de una fuente de hadices externa no verificada. La navegación de Hadith permanece deshabilitada hasta que se sincroniza un conjunto de datos de origen.';

  @override
  String get paywallUnlockAll =>
      'Desbloquea todas las funciones para tu viaje espiritual';

  @override
  String get premiumProductUnavailable =>
      'El producto Premium no está disponible en este momento. Inténtelo de nuevo más tarde.';

  @override
  String get premiumPurchaseFailed =>
      'No se pudo completar la compra. Por favor inténtalo de nuevo.';

  @override
  String get paywallFeature1Title => 'Asistente neuronal Plus';

  @override
  String get paywallFeature1Desc =>
      'Preguntas y respuestas ilimitadas basadas en IA';

  @override
  String get paywallFeature2Title => 'Ilimitado sin conexión';

  @override
  String get paywallFeature2Desc => 'Descargar todas las recitaciones';

  @override
  String get paywallFeature3Title => 'Diseños Exclusivos';

  @override
  String get paywallFeature3Desc => 'Temas y fuentes premium';

  @override
  String get paywallFeature4Title => 'Sin publicidad';

  @override
  String get paywallFeature4Desc => 'Cero anuncios';

  @override
  String get paywallGetAccess => 'Obtenga acceso de por vida: \$1,00';

  @override
  String get restorePurchases => 'Restaurar compras';

  @override
  String get zakatCalculator => 'Calculadora de azaque';

  @override
  String get zakatGold => 'Oro (Altin)';

  @override
  String get zakatSilver => 'Plata (Gümüş)';

  @override
  String get zakatCashBank => 'Efectivo / Banco';

  @override
  String get zakatBusiness => 'Negocio';

  @override
  String get zakatInvestments => 'Inversiones';

  @override
  String get zakatWeightGrams => 'Peso (gramos)';

  @override
  String get zakatPricePerGram => 'Precio/g';

  @override
  String get zakatTotalAmount => 'Monto total';

  @override
  String get zakatInventoryValue => 'Valor de inventario';

  @override
  String get zakatDebts => 'Deudas';

  @override
  String get zakatTotal => 'Monto total';

  @override
  String get calculateZakat => 'Calcular el azaque';

  @override
  String get nisabNotReached => 'Nisab no llegó. El zakat no es obligatorio.';

  @override
  String get totalZakat => 'Zakat total';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Bienes: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakat de oro';

  @override
  String get zakatSilverZakat => 'Zakat de plata';

  @override
  String get zakatCashZakat => 'Zakat en efectivo';

  @override
  String get zakatBusinessZakat => 'Zakat de negocios';

  @override
  String get zakatInvestmentZakat => 'Zakat de inversión';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Se alcanzó el límite de consultas diarias. Actualice a Premium de forma ilimitada.';

  @override
  String get chatbotErrorMsg =>
      'No pude generar una respuesta. Por favor inténtalo de nuevo.';

  @override
  String get chatbotOfflinePrompt =>
      'La base de conocimientos islámicos verificada fuera de línea todavía se está curando. Puede habilitar el respaldo sin conexión ahora, pero solo mostrará mensajes seguros limitados hasta que el conjunto de datos de origen esté listo.\n\n¿Le gustaría habilitar el respaldo sin conexión?';

  @override
  String get chatbotOfflineSwitched =>
      'Reserva sin conexión habilitada. Las respuestas islámicas locales verificadas aún no están listas.';

  @override
  String get chatbotOfflineDownloadLabel => 'Habilitar respaldo sin conexión';

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
  String get downloadAction => 'Descargar';

  @override
  String get resumeDownload => 'Reanudar descarga';

  @override
  String get deleteDownloadedFiles => 'Eliminar archivos descargados';

  @override
  String get downloadCancelling => 'Cancelling...';

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
    return 'Descarga finalizada para $reciter con $failed suras fallidas ($downloaded/$total descargadas).';
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
  String get sukunMixerSubtitle => 'Mezclador de naturaleza y Corán';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (Naturaleza)';

  @override
  String get sukunRainOfMercy => 'lluvia de misericordia';

  @override
  String get sukunGardenOfPeace => 'Jardín de la Paz';

  @override
  String get sukunMidnightCalm => 'Calma de medianoche';

  @override
  String get sukunOceanTawheed => 'Tawhid del océano';

  @override
  String get sukunUnavailableTitle => 'Paisajes sonoros no disponibles';

  @override
  String get sukunUnavailableBody =>
      'Esta compilación aún no incluye los recursos de paisaje sonoro de Sukun necesarios.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'racha de dias';

  @override
  String get bestStreak => 'Mejor racha';

  @override
  String get chatbotCloudAiLabel => 'IA en la nube';

  @override
  String get chatbotLocalAiLabel => 'Reserva sin conexión';

  @override
  String get chatbotUseCloudAi => 'Utilice la IA en la nube (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Habilitar respaldo sin conexión';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count izquierda';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'API de nube no configurada. Cambie a IA local.';

  @override
  String get chatbotLocalNoInfo =>
      '[FUERA DE CONEXIÓN] La guía islámica local verificada aún no está disponible. Cambie a Cloud AI para obtener respuestas obtenidas.';

  @override
  String get mosques => 'Mezquitas';

  @override
  String get halalFood => 'Comida halal';

  @override
  String get placesSearchArea => 'Buscar en esta área';

  @override
  String get nearbyMosques => 'Mezquitas cercanas';

  @override
  String get islamicSchools => 'Escuelas Islámicas';

  @override
  String placesFoundCount(String count) {
    return '$count encontrado';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km de distancia';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Error de API: $statusCode';
  }

  @override
  String get placesNetworkError =>
      'Error de red. Por favor inténtalo de nuevo.';

  @override
  String get placesLocationRequiredTitle => 'Ubicación requerida';

  @override
  String get placesLocationRequiredBody =>
      'Primero, establezca una ubicación para que se puedan buscar con precisión mezquitas, comida halal y escuelas islámicas cercanas.';

  @override
  String get placesMapTilesUnavailableTitle =>
      'Mosaicos de mapa no disponibles';

  @override
  String get placesMapTilesUnavailableBody =>
      'Aún no se ha configurado una fuente de mosaicos de mapa verificada para esta compilación. Los lugares cercanos aún se pueden cargar desde tu ubicación guardada.';

  @override
  String get unknownPlaceName => 'Nombre desconocido';

  @override
  String get islamicPlaceFallback => 'Lugar islámico';

  @override
  String get asmaMeaning1 => 'El Beneficiente';

  @override
  String get asmaMeaning2 => 'El Misericordioso';

  @override
  String get asmaMeaning3 => 'El Rey / Señor Eterno';

  @override
  String get asmaMeaning4 => 'El Santísimo';

  @override
  String get asmaMeaning5 => 'La fuente de la paz';

  @override
  String get asmaMeaning6 => 'El dador de seguridad';

  @override
  String get asmaMeaning7 => 'El Guardián';

  @override
  String get asmaMeaning8 => 'El Precioso / El Más Poderoso';

  @override
  String get asmaMeaning9 => 'El Obligador';

  @override
  String get asmaMeaning10 => 'El más grande';

  @override
  String get asmaMeaning11 => 'El Creador';

  @override
  String get asmaMeaning12 => 'El Hacedor de Orden';

  @override
  String get asmaMeaning13 => 'La moldeadora de la belleza';

  @override
  String get asmaMeaning14 => 'El Perdonador';

  @override
  String get asmaMeaning15 => 'El Subyugado';

  @override
  String get asmaMeaning16 => 'El Dador de Todo';

  @override
  String get asmaMeaning17 => 'El Sustentador';

  @override
  String get asmaMeaning18 => 'El abridor';

  @override
  String get asmaMeaning19 => 'El Conocedor de Todo';

  @override
  String get asmaMeaning20 => 'El Constrictor';

  @override
  String get asmaMeaning21 => 'El relevista';

  @override
  String get asmaMeaning22 => 'El Abastecedor';

  @override
  String get asmaMeaning23 => 'El Exaltador';

  @override
  String get asmaMeaning24 => 'El otorgador de honor';

  @override
  String get asmaMeaning25 => 'El humillador';

  @override
  String get asmaMeaning26 => 'El Oyente de Todo';

  @override
  String get asmaMeaning27 => 'El Vidente de Todo';

  @override
  String get asmaMeaning28 => 'El juez';

  @override
  String get asmaMeaning29 => 'El Justo';

  @override
  String get asmaMeaning30 => 'El Sutil';

  @override
  String get asmaMeaning31 => 'El Todo Consciente';

  @override
  String get asmaMeaning32 => 'El Antecedente';

  @override
  String get asmaMeaning33 => 'El Magnífico';

  @override
  String get asmaMeaning34 => 'El gran perdonador';

  @override
  String get asmaMeaning35 => 'El recompensador del agradecimiento';

  @override
  String get asmaMeaning36 => 'El más alto';

  @override
  String get asmaMeaning37 => 'El más grande';

  @override
  String get asmaMeaning38 => 'El Preservador';

  @override
  String get asmaMeaning39 => 'El Nutridor';

  @override
  String get asmaMeaning40 => 'El Calculador';

  @override
  String get asmaMeaning41 => 'El Majestuoso';

  @override
  String get asmaMeaning42 => 'El Generoso';

  @override
  String get asmaMeaning43 => 'El Vigilante';

  @override
  String get asmaMeaning44 => 'El que responde a la oración';

  @override
  String get asmaMeaning45 => 'La Comprensión Total';

  @override
  String get asmaMeaning46 => 'El Perfectamente Sabio';

  @override
  String get asmaMeaning47 => 'El Amado';

  @override
  String get asmaMeaning48 => 'El Más Glorioso';

  @override
  String get asmaMeaning49 => 'El Resurrector';

  @override
  String get asmaMeaning50 => 'El Testigo';

  @override
  String get asmaMeaning51 => 'La verdad';

  @override
  String get asmaMeaning52 => 'El Fideicomisario Todo Suficiente';

  @override
  String get asmaMeaning53 => 'El poseedor de toda fuerza';

  @override
  String get asmaMeaning54 => 'El contundente';

  @override
  String get asmaMeaning55 => 'El Protector';

  @override
  String get asmaMeaning56 => 'El Alabado';

  @override
  String get asmaMeaning57 => 'El Tasador';

  @override
  String get asmaMeaning58 => 'El Originador';

  @override
  String get asmaMeaning59 => 'El Restaurador';

  @override
  String get asmaMeaning60 => 'El Dador de Vida';

  @override
  String get asmaMeaning61 => 'El Tomador de Vida';

  @override
  String get asmaMeaning62 => 'El Siempre Viviente';

  @override
  String get asmaMeaning63 => 'El sustentador autosubsistente';

  @override
  String get asmaMeaning64 => 'El Buscador';

  @override
  String get asmaMeaning65 => 'El Glorioso';

  @override
  String get asmaMeaning66 => 'El Único';

  @override
  String get asmaMeaning67 => 'El indicado';

  @override
  String get asmaMeaning68 => 'El buscado por todos';

  @override
  String get asmaMeaning69 => 'El Poderoso';

  @override
  String get asmaMeaning70 => 'El Creador de todo poder';

  @override
  String get asmaMeaning71 => 'El Expedidor';

  @override
  String get asmaMeaning72 => 'El Retardador';

  @override
  String get asmaMeaning73 => 'El Primero';

  @override
  String get asmaMeaning74 => 'El último';

  @override
  String get asmaMeaning75 => 'El Manifiesto';

  @override
  String get asmaMeaning76 => 'El Oculto';

  @override
  String get asmaMeaning77 => 'El Gobernador';

  @override
  String get asmaMeaning78 => 'El Supremo';

  @override
  String get asmaMeaning79 => 'El Hacedor del Bien';

  @override
  String get asmaMeaning80 => 'La guía para el arrepentimiento';

  @override
  String get asmaMeaning81 => 'El Vengador';

  @override
  String get asmaMeaning82 => 'El Perdonador';

  @override
  String get asmaMeaning83 => 'El Clemente';

  @override
  String get asmaMeaning84 => 'El Dueño/Soberano de Todo';

  @override
  String get asmaMeaning85 => 'El poseedor de majestad y generosidad';

  @override
  String get asmaMeaning86 => 'El Equitativo';

  @override
  String get asmaMeaning87 => 'El Recolector';

  @override
  String get asmaMeaning88 => 'El Rico';

  @override
  String get asmaMeaning89 => 'El Enriquecedor';

  @override
  String get asmaMeaning90 => 'El preventor de daños';

  @override
  String get asmaMeaning91 => 'El que trae el daño';

  @override
  String get asmaMeaning92 => 'El otorgante de beneficios';

  @override
  String get asmaMeaning93 => 'La Luz';

  @override
  String get asmaMeaning94 => 'El Guía';

  @override
  String get asmaMeaning95 => 'El Originador';

  @override
  String get asmaMeaning96 => 'El Eterno';

  @override
  String get asmaMeaning97 => 'El Heredero';

  @override
  String get asmaMeaning98 => 'La guía más justa';

  @override
  String get asmaMeaning99 => 'El paciente';
}
