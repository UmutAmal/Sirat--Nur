// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Galician (`gl`).
class AppLocalizationsGl extends AppLocalizations {
  AppLocalizationsGl([String locale = 'gl']) : super(locale);

  @override
  String get appTitle => 'Camiño de Alá';

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
  String get retry => 'Volve tentar';

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
  String get diagnosticsCloudDriven => 'Impulsado pola nube';

  @override
  String get diagnosticsAdhanAudioAssets => 'Activos de audio de Adhan';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

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
  String get sukunAudioTitle => 'Sukun Soundscapes';

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
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

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
  String get sukunMixerSubtitle => 'Nature & Qur\'an Mixer';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (Nature)';

  @override
  String get sukunRainOfMercy => 'Rain of Mercy';

  @override
  String get sukunGardenOfPeace => 'Garden of Peace';

  @override
  String get sukunMidnightCalm => 'Midnight Calm';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Soundscapes unavailable';

  @override
  String get sukunUnavailableBody =>
      'This build does not include the required Sukun soundscape assets yet.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Racha de día';

  @override
  String get bestStreak => 'Mellor racha';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Fallback sen conexión';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Activar a alternativa sen conexión';

  @override
  String chatbotQueriesLeft(String count) {
    return 'Quedan $count';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'A API de nube non está configurada. Cambia á IA local.';

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
  String get unknownPlaceName => 'Nome descoñecido';

  @override
  String get islamicPlaceFallback => 'Lugar islámico';
}
