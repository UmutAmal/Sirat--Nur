// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get appTitle => 'Camí d\'Al·là';

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
  String get retry => 'Torna-ho a provar';

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
  String get diagnosticsCloudDriven => 'Impulsat al núvol';

  @override
  String get diagnosticsAdhanAudioAssets => 'Actius d\'àudio Adhan';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

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
  String get dailyVerse => 'Vers diari';

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
  String get sukunAudioTitle => 'Sukun Soundscapes';

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
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

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
  String get dayStreak => 'Ratxa de dia';

  @override
  String get bestStreak => 'Millor ratxa';

  @override
  String get chatbotCloudAiLabel => 'IA al núvol';

  @override
  String get chatbotLocalAiLabel => 'Fallback fora de línia';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi =>
      'Activa la funció alternativa fora de línia';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count queda';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'L\'API del núvol no està configurada. Canvia a la IA local.';

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
  String get unknownPlaceName => 'Nom desconegut';

  @override
  String get islamicPlaceFallback => 'Lloc islàmic';
}
