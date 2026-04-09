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
  String get error => 'Error';

  @override
  String get appErrorOccurred => 'Se produjo un error';

  @override
  String get appUnknownError => 'Error desconocido';

  @override
  String get retry => 'Rever';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Ahorrar';

  @override
  String get delete => 'Borrar';

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
  String get offlineDownloadManager => 'Offline Download Manager';

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
  String get audioVoice => 'Audio Voice';

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
      'Cloud tables missing in Supabase; bundled fallback active';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz metadata missing; bundled structural fallback active';

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
  String get downloadAction => 'Download';

  @override
  String get resumeDownload => 'Resume Download';

  @override
  String get deleteDownloadedFiles => 'Delete Downloaded Files';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Download canceled for $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Download completed for $reciter.';
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
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

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
  String get unknownPlaceName => 'Nombre desconocido';

  @override
  String get islamicPlaceFallback => 'Lugar islámico';
}
