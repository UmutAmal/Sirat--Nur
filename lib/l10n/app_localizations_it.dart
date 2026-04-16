// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Via islamica della luce';

  @override
  String get home => 'Casa';

  @override
  String get quran => 'Corano';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Dhikr';

  @override
  String get calendar => 'Calendario';

  @override
  String get settings => 'Impostazioni';

  @override
  String get nextPrayer => 'Prossima preghiera';

  @override
  String get prayerTimes => 'Tempi di preghiera';

  @override
  String get continueReading => 'Continue Reading';

  @override
  String get getLifetimePro => 'Get Lifetime Pro';

  @override
  String get unlockTajweed => 'Unlock Tajweed & Advanced Features';

  @override
  String get prayerCalculation => 'Calcolo della preghiera';

  @override
  String get method => 'Metodo di calcolo';

  @override
  String get madhab => 'Metodo Giuridico Asr';

  @override
  String get surahs => 'Sura';

  @override
  String get ayahs => 'Sì';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Alba';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Maghreb';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'È ora di $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'È tempo di pregare $prayerName.';
  }

  @override
  String get dataStorage => 'Dati e archiviazione';

  @override
  String get clearCache => 'Cancella cache';

  @override
  String get cacheClearedSuccess => 'La cache è stata svuotata correttamente';

  @override
  String get location => 'Posizione';

  @override
  String get language => 'Lingua';

  @override
  String get selectLanguage => 'Seleziona lingua';

  @override
  String get searchLanguage => 'Search 180+ languages...';

  @override
  String get systemDefault => 'Predefinito del sistema';

  @override
  String get currentLocation => 'Posizione attuale (GPS)';

  @override
  String get locationServiceDisabled =>
      'Il servizio di localizzazione è disabilitato.';

  @override
  String get locationPermissionDenied =>
      'Autorizzazione alla posizione negata.';

  @override
  String get locationDetectionFailed =>
      'Impossibile rilevare la tua posizione. Scegli una città manualmente o riprova.';

  @override
  String citiesCount(String count) {
    return '$count città';
  }

  @override
  String get search => 'Cerca';

  @override
  String get searchHint => 'Cerca...';

  @override
  String get noResults => 'Nessun risultato trovato';

  @override
  String get loading => 'Caricamento...';

  @override
  String get error => 'Errore';

  @override
  String get appErrorOccurred => 'Si è verificato un errore';

  @override
  String get appUnknownError => 'Errore sconosciuto';

  @override
  String get quranLoadFailed =>
      'Impossibile caricare il contenuto del Corano. Per favore riprova.';

  @override
  String get retry => 'Riprova';

  @override
  String get refreshAction => 'Aggiorna';

  @override
  String get cancel => 'Annulla';

  @override
  String get save => 'Salva';

  @override
  String get delete => 'Elimina';

  @override
  String get edit => 'Edit';

  @override
  String get close => 'Close';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'No';

  @override
  String get surah => 'Sura';

  @override
  String ayahLabel(String ayah) {
    return 'Sì, $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Pagina';

  @override
  String get reading => 'Reading';

  @override
  String get recitation => 'Recitation';

  @override
  String get translation => 'Translation';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Caricamento in corso...';

  @override
  String get tafsirSourceLabel => 'Fonte Tafsir';

  @override
  String get tafsirNoSurahFound => 'Nessun tafsir trovato per questa sura.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Nessun tafsir trovato per ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Impossibile caricare Tafsir.';

  @override
  String get tafsirNoTextForAyah => 'Nessun testo Tafsir per questa ayah.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Download di tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Caricamento tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'La fonte Tafsir ha restituito un errore HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'La fonte tafsir selezionata non ha restituito voci.';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get addBookmark => 'Aggiungi segnalibro';

  @override
  String get removeBookmark => 'Rimuovi segnalibro';

  @override
  String get lastRead => 'Last Read';

  @override
  String get dailyZikr => 'Daily Zikr';

  @override
  String get duaMeaning1 =>
      'altri pregano: “Nostro Signore, donaci il bene in questo mondo e nell’Aldilà, e proteggici dal tormento del Fuoco”.';

  @override
  String get duaMeaning2 =>
      'Dio non carica un\'anima più di quanto possa sopportare: ciascuno guadagna tutto il bene che ha fatto, e soffre il male. \"Signore, non rimproverarci se dimentichiamo o commettiamo errori\". Signore, non gravarci come hai gravato su coloro che ci hanno preceduto. Signore, non caricarci di più di quanto abbiamo la forza di sopportare. Perdonaci, perdonaci e abbi pietà di noi. Tu sei il nostro protettore, quindi aiutaci contro i miscredenti.\'';

  @override
  String get duaMeaning3 =>
      '“Nostro Signore, non lasciare che i nostri cuori si allontanino dopo che Tu ci hai guidato. Concedici la tua misericordia: tu sei il sempre donatore.';

  @override
  String get duaMeaning4 =>
      'Signore, fa\' che io e la mia discendenza continuiamo a pregare. Nostro Signore, accetta la mia richiesta.';

  @override
  String get duaMeaning5 =>
      'e abbassa la tua ala con umiltà verso di loro con gentilezza e dì: \"Signore, abbi pietà di loro, proprio come si presero cura di me quando ero piccolo\".';

  @override
  String get duaMeaning6 =>
      'esaltato sia Dio, colui che ha veramente il controllo. [Profeta], non affrettarti a recitare prima che la rivelazione sia completamente completa, ma dì: “Signore, accrescimi in conoscenza!”';

  @override
  String get duaMeaning7 =>
      'Di’ [al Profeta]: “Signore, perdona e abbi pietà: tu sei il più misericordioso di tutti”.';

  @override
  String get duaMeaning8 =>
      'coloro che pregano: “Nostro Signore, donaci la gioia delle nostre spose e della nostra prole”. Facci buon esempio a coloro che ti conoscono”.';

  @override
  String get morningZikr => 'Morning Zikr';

  @override
  String get eveningZikr => 'Evening Zikr';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masa\'il';

  @override
  String get hadith => 'Hadith';

  @override
  String get hadithCollection => 'Collezione di Hadith';

  @override
  String get hadithBooks => 'Libri di Hadith';

  @override
  String get searchHadith => 'Cerca Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Nomi di Allah';

  @override
  String get liveTv => 'TV in diretta';

  @override
  String get watchLive => 'Guarda dal vivo';

  @override
  String get streamError => 'Errore di flusso';

  @override
  String get reload => 'Ricarica';

  @override
  String get openInYoutube => 'Apri su YouTube';

  @override
  String get ibadahTracker => 'Tracker di Ibadah';

  @override
  String get fasting => 'Il digiuno';

  @override
  String get quranReading => 'Lettura del Corano';

  @override
  String get prayers => 'Preghiere';

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
  String get dhikrCount => 'Dhikr Count';

  @override
  String get weeklyProgress => 'Progresso settimanale';

  @override
  String get monthlyProgress => 'Monthly Progress';

  @override
  String get statistics => 'Statistics';

  @override
  String get hijriCalendar => 'Calendario Hijri';

  @override
  String get gregorianCalendar => 'Gregorian Calendar';

  @override
  String get today => 'Oggi';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get specialDays => 'Giorni Speciali';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Capodanno islamico';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadan';

  @override
  String get specialDayDateEidAlFitr => '1 Shawwal';

  @override
  String get specialDayDateEidAlAdha => '10Dhul Hijjah';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharram';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabi al-Awwal';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'Direzione Qibla';

  @override
  String get compass => 'Bussola';

  @override
  String get degrees => 'degrees';

  @override
  String get north => 'North';

  @override
  String get qiblaFound => 'Qibla trovata!';

  @override
  String get turnDevice => 'Ruota il tuo dispositivo verso la Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Errore bussola: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Il sensore della bussola non è disponibile su questo dispositivo.';

  @override
  String get qiblaLocationRequiredTitle => 'Posizione richiesta per Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Imposta la tua posizione effettiva prima di utilizzare la bussola Qibla in modo che la direzione possa essere calcolata con precisione.';

  @override
  String get adhanNotificationChannelName => 'Notifiche di Adhan';

  @override
  String get adhanNotificationChannelDescription =>
      'Avvisi sul tempo di preghiera con il suono adhan.';

  @override
  String get notifications => 'Notifications';

  @override
  String get prayerNotifications => 'Prayer Notifications';

  @override
  String get enableNotifications => 'Enable Notifications';

  @override
  String get notificationTime => 'Notification Time';

  @override
  String get beforePrayer => 'minutes before prayer';

  @override
  String get theme => 'Tema';

  @override
  String get lightMode => 'Modalità luce';

  @override
  String get darkMode => 'Modalità oscura';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'Circa';

  @override
  String get version => 'Versione';

  @override
  String get privacyPolicy => 'Informativa sulla privacy';

  @override
  String get termsOfService => 'Termini di servizio';

  @override
  String get contactUs => 'Contattaci';

  @override
  String get rateApp => 'Valuta l\'app';

  @override
  String get shareApp => 'Condividi l\'app';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Dai un\'occhiata a $appName: l\'app definitiva per lo stile di vita islamico! $url';
  }

  @override
  String get downloadManager => 'Scarica Gestore';

  @override
  String get downloads => 'Download';

  @override
  String get downloading => 'Download in corso...';

  @override
  String get downloadComplete => 'Scarica completo';

  @override
  String get downloadFailed => 'Download non riuscito';

  @override
  String get offlineMode => 'Modalità offline';

  @override
  String get noInternet => 'Nessuna connessione Internet';

  @override
  String get checkConnection => 'Per favore controlla la tua connessione';

  @override
  String get premium => 'Premium';

  @override
  String get upgradeToPro => 'Upgrade to Pro';

  @override
  String get proFeatures => 'Pro Features';

  @override
  String get removeAds => 'Remove Ads';

  @override
  String get unlockAll => 'Unlock All Content';

  @override
  String get exclusiveContent => 'Exclusive Content';

  @override
  String get welcome => 'Welcome';

  @override
  String get getStarted => 'Inizia';

  @override
  String get skip => 'Skip';

  @override
  String get next => 'Avanti';

  @override
  String get done => 'Fatto';

  @override
  String get onboarding1Title => 'Benvenuti a Sirat-ı Nur';

  @override
  String get onboarding1Desc =>
      'La tua app islamica completa per i tempi di preghiera, il Corano e altro ancora';

  @override
  String get onboarding2Title => 'Tempi di preghiera';

  @override
  String get onboarding2Desc =>
      'Tempi di preghiera accurati in base alla tua posizione';

  @override
  String get onboarding3Title => 'Corano e altro';

  @override
  String get onboarding3Desc =>
      'Leggi il Corano, monitora le tue letture ed esplora i contenuti islamici';

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
  String get tapToCount => 'Tocca per contare';

  @override
  String get zikrCompletedMashAllah => 'Completato! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah è molto al di sopra di ogni imperfezione.';

  @override
  String get zikrMeaningAlhamdulillah => 'Ogni lode appartiene ad Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah è il più grande.';

  @override
  String get zikrMeaningLaIlahaIllallah =>
      'Non c\'è altro dio all\'infuori di Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Cerco il perdono di Allah.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Non c\'è potere né forza se non attraverso Allah.';

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
  String get offlineDownloadManager => 'Gestore di download offline';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage =>
      'Libera spazio di archiviazione interno sul dispositivo.';

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
  String get audioVoice => 'Voce audio';

  @override
  String get audioVoiceMisharyAlafasy => 'Maschio (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Maschio (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Maschio (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Calibrazione Qibla';

  @override
  String get compassSmoothing => 'Levigatura della bussola';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Offset di calibrazione';

  @override
  String currentOffset(Object offset) {
    return 'Attuale: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Regola se la tua bussola necessita di una correzione manuale. I valori positivi ruotano in senso orario.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Diagnostica';

  @override
  String get diagnosticsNotSet => 'Non impostato';

  @override
  String get diagnosticsPrayerProfile => 'Profilo di preghiera';

  @override
  String get diagnosticsPrayerSource => 'Autorità di preghiera';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Personalizzato / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Angoli personalizzati manuali (nessuna fonte istituzionale)';

  @override
  String get diagnosticsCloudDriven => 'Basato sul cloud';

  @override
  String get diagnosticsAdhanAudioAssets => 'Risorse audio Adhan';

  @override
  String get diagnosticsUiAudioAssets =>
      'Risorse audio dell\'interfaccia utente';

  @override
  String get diagnosticsQuranAudioAssets => 'Risorse audio del Corano';

  @override
  String get diagnosticsAudioAssets => 'Risorse audio';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count file';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Lettura del manifest non riuscita: $error';
  }

  @override
  String get diagnosticsLocalizationLocales =>
      'Localizzazioni di localizzazione';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count supportato';
  }

  @override
  String get diagnosticsQuranDataset => 'Set di dati del Corano';

  @override
  String get diagnosticsQuranSurahs => 'Corano Sura';

  @override
  String get diagnosticsQuranAyahs => 'Versetti del Corano';

  @override
  String get diagnosticsQuranJuzMetadata => 'Metadati del Corano Juz';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Tabelle cloud mancanti in Supabase; fallback in bundle attivo';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Controllo cloud non riuscito: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Metadati Cloud Juz mancanti; fallback strutturale in bundle attivo';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Controllo strutturale del cloud non riuscito: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'È necessaria la calibrazione. Ruotare il dispositivo in figura-8.';

  @override
  String get dailyVerse => 'Versetto quotidiano';

  @override
  String get todaysIbadah => 'L\'Ibadah di oggi';

  @override
  String get quickAccess => 'Accesso rapido';

  @override
  String get assistant => 'Assistente';

  @override
  String get places => 'Luoghi';

  @override
  String get library => 'Biblioteca';

  @override
  String get analytics => 'Analitica';

  @override
  String get dailyDuas => 'Duas giornalieri';

  @override
  String essentialDuas(String count) {
    return '$count duas essenziali';
  }

  @override
  String get duaUnavailableTitle =>
      'I duas verificati non sono ancora disponibili';

  @override
  String get duaUnavailableBody =>
      'I duas giornalieri verificati non sono stati ancora sincronizzati su questo dispositivo. Connettiti all\'origine cloud per caricare i duas di origine invece di un fallback non verificato.';

  @override
  String get duaCategoryQuranic => 'Dua coranico';

  @override
  String get duaCategoryMorningEvening => 'Mattina e sera';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Protezione';

  @override
  String get duaCategoryBeginning => 'Inizi';

  @override
  String get duaCategorySleep => 'Sonno';

  @override
  String get duaCategoryFoodDrink => 'Cibo e bevande';

  @override
  String get duaCategoryForgiveness => 'Perdono';

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
  String get islamicEducation => 'Educazione islamica';

  @override
  String get sukunAudioTitle => 'Paesaggi sonori Sukun';

  @override
  String get hadithCollections => 'Collezioni di Hadith';

  @override
  String get hadithSourcePending => 'Fonte verificata in attesa';

  @override
  String get hadithUnavailableTitle =>
      'Le raccolte di hadith verificate non sono ancora disponibili';

  @override
  String get hadithUnavailableBody =>
      'Questa build dipende ancora da un feed hadith esterno non verificato. La navigazione degli Hadith rimane disabilitata finché un set di dati di origine non viene sincronizzato.';

  @override
  String get paywallUnlockAll =>
      'Sblocca tutte le funzionalità per il tuo viaggio spirituale';

  @override
  String get premiumProductUnavailable =>
      'Il prodotto Premium non è disponibile al momento. Per favore riprova più tardi.';

  @override
  String get premiumPurchaseFailed =>
      'Impossibile completare l\'acquisto. Per favore riprova.';

  @override
  String get paywallFeature1Title => 'Assistente neurale Plus';

  @override
  String get paywallFeature1Desc =>
      'Domande e risposte illimitate basate sull\'intelligenza artificiale';

  @override
  String get paywallFeature2Title => 'Non in linea illimitato';

  @override
  String get paywallFeature2Desc => 'Scarica tutte le recitazioni';

  @override
  String get paywallFeature3Title => 'Disegni esclusivi';

  @override
  String get paywallFeature3Desc => 'Temi e caratteri premium';

  @override
  String get paywallFeature4Title => 'Senza pubblicità';

  @override
  String get paywallFeature4Desc => 'Zero pubblicità';

  @override
  String get paywallGetAccess => 'Ottieni l\'accesso a vita: \$ 1,00';

  @override
  String get restorePurchases => 'Ripristina gli acquisti';

  @override
  String get zakatCalculator => 'Calcolatore Zakat';

  @override
  String get zakatGold => 'Oro (Altin)';

  @override
  String get zakatSilver => 'Argento (Gümüş)';

  @override
  String get zakatCashBank => 'Contanti/Banca';

  @override
  String get zakatBusiness => 'Attività commerciale';

  @override
  String get zakatInvestments => 'Investimenti';

  @override
  String get zakatWeightGrams => 'Peso (g)';

  @override
  String get zakatPricePerGram => 'Prezzo/g';

  @override
  String get zakatTotalAmount => 'Importo totale';

  @override
  String get zakatInventoryValue => 'Valore dell\'inventario';

  @override
  String get zakatDebts => 'Debiti';

  @override
  String get zakatTotal => 'Totale';

  @override
  String get calculateZakat => 'Calcola Zakat';

  @override
  String get nisabNotReached =>
      'Nisab non raggiunto. La Zakat non è obbligatoria.';

  @override
  String get totalZakat => 'Zakat totale';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Risorse: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakat d\'oro';

  @override
  String get zakatSilverZakat => 'Zakat d\'argento';

  @override
  String get zakatCashZakat => 'Contanti Zakat';

  @override
  String get zakatBusinessZakat => 'Zakat d\'affari';

  @override
  String get zakatInvestmentZakat => 'Zakat sugli investimenti';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! Sono il tuo assistente islamico. Chiedimi informazioni sulla preghiera, sul digiuno, sulla zakat o su qualsiasi argomento islamico.';

  @override
  String get chatbotLimitReached =>
      'Limite di query giornaliere raggiunto. Passa a Premium per un numero illimitato.';

  @override
  String get chatbotErrorMsg =>
      'Non sono riuscito a generare una risposta. Per favore riprova.';

  @override
  String get chatbotOfflinePrompt =>
      'La base di conoscenza islamica offline verificata è ancora in fase di cura. Puoi abilitare il fallback offline ora, ma mostrerà solo messaggi sicuri limitati finché il set di dati di origine non sarà pronto.\n\nDesideri abilitare il fallback offline?';

  @override
  String get chatbotOfflineSwitched =>
      'Fallback offline abilitato. Le risposte islamiche locali verificate non sono ancora pronte.';

  @override
  String get chatbotOfflineDownloadLabel => 'Abilita il fallback offline';

  @override
  String get downloadPreparing => 'Preparazione download...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Download della sura $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Tutte le sure già scaricate per questo recitatore.';

  @override
  String get offlineQuranAudioPacks => 'Pacchetti audio Corano offline';

  @override
  String storedOnDeviceMb(String size) {
    return 'Memorizzato sul dispositivo: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total Sura scaricate';
  }

  @override
  String get redownloadMissingRepair => 'Ripara/Scarica mancante';

  @override
  String get downloadAction => 'Scarica';

  @override
  String get resumeDownload => 'Riprendi il download';

  @override
  String get deleteDownloadedFiles => 'Elimina i file scaricati';

  @override
  String get downloadCancelling => 'Annullamento...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Download annullato per $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Download completato per $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Download terminato per $reciter con $failed sura non riuscite ($downloaded/$total scaricate).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'File offline eliminati per $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Le fonti audio del Corano verificate non sono al momento disponibili.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Il pacchetto audio del Corano verificato è incompleto ($available/$total). Aggiorna il seed del cloud e riprova.';
  }

  @override
  String get chatbotHint => 'Fai una domanda...';

  @override
  String get chatbotThinking => 'Pensando...';

  @override
  String get sukunMixerSubtitle => 'Mixer Natura e Corano';

  @override
  String get audioPlayFailed => 'La riproduzione audio non è riuscita';

  @override
  String get sukunNatureLabel => 'Sukun (Natura)';

  @override
  String get sukunRainOfMercy => 'Pioggia di Misericordia';

  @override
  String get sukunGardenOfPeace => 'Giardino della Pace';

  @override
  String get sukunMidnightCalm => 'Calma di mezzanotte';

  @override
  String get sukunOceanTawheed => 'Tawhid oceanico';

  @override
  String get sukunUnavailableTitle => 'Paesaggi sonori non disponibili';

  @override
  String get sukunUnavailableBody =>
      'Questa build non include ancora le risorse del paesaggio sonoro Sukun richieste.';

  @override
  String get prayerCompletion => 'Preghiere completate';

  @override
  String get streaks => 'Strisce';

  @override
  String get dayStreak => 'Serie di giorni';

  @override
  String get bestStreak => 'Miglior serie di vittorie';

  @override
  String get chatbotCloudAiLabel => 'IA sulla nuvola';

  @override
  String get chatbotLocalAiLabel => 'Fallback offline';

  @override
  String get chatbotUseCloudAi =>
      'Utilizza l\'intelligenza artificiale cloud (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Abilita il fallback offline';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count rimasto';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'L\'API cloud non è configurata. La guida islamica offline verificata non è ancora disponibile.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] La guida islamica locale verificata non è ancora disponibile. Passa all\'AI cloud per ottenere risposte provenienti dall\'origine.';

  @override
  String get mosques => 'Moschee';

  @override
  String get halalFood => 'Cibo halal';

  @override
  String get placesSearchArea => 'Cerca in quest\'area';

  @override
  String get nearbyMosques => 'Moschee vicine';

  @override
  String get islamicSchools => 'Scuole islamiche';

  @override
  String placesFoundCount(String count) {
    return '$count trovato';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Errore API: $statusCode';
  }

  @override
  String get placesNetworkError => 'Errore di rete. Per favore riprova.';

  @override
  String get placesLocationRequiredTitle => 'Posizione richiesta';

  @override
  String get placesLocationRequiredBody =>
      'Imposta prima una posizione in modo che le moschee, il cibo halal e le scuole islamiche nelle vicinanze possano essere cercati con precisione.';

  @override
  String get placesMapTilesUnavailableTitle =>
      'Riquadri della mappa non disponibili';

  @override
  String get placesMapTilesUnavailableBody =>
      'Un\'origine del riquadro mappa verificata non è ancora configurata per questa build. I luoghi nelle vicinanze possono comunque essere caricati dalla posizione salvata.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'Dati sui luoghi non disponibili';

  @override
  String get placesDataSourceUnavailableBody =>
      'Un endpoint dati dei luoghi verificati non è ancora configurato per questa build. Imposta PLACES_OVERPASS_API_URL su un proxy o provider approvato prima di abilitare la ricerca nelle vicinanze.';

  @override
  String get unknownPlaceName => 'Nome sconosciuto';

  @override
  String get islamicPlaceFallback => 'Luogo islamico';

  @override
  String get asmaMeaning1 => 'Il Benefico';

  @override
  String get asmaMeaning2 => 'Il Misericordioso';

  @override
  String get asmaMeaning3 => 'Il Re/Eterno Signore';

  @override
  String get asmaMeaning4 => 'Il Santissimo';

  @override
  String get asmaMeaning5 => 'La Fonte della Pace';

  @override
  String get asmaMeaning6 => 'Il Donatore di Sicurezza';

  @override
  String get asmaMeaning7 => 'Il guardiano';

  @override
  String get asmaMeaning8 => 'Il prezioso / Il più potente';

  @override
  String get asmaMeaning9 => 'Il Compeller';

  @override
  String get asmaMeaning10 => 'Il più grande';

  @override
  String get asmaMeaning11 => 'Il Creatore';

  @override
  String get asmaMeaning12 => 'Il Creatore dell\'Ordine';

  @override
  String get asmaMeaning13 => 'Il Plasmatore della Bellezza';

  @override
  String get asmaMeaning14 => 'Il Perdonatore';

  @override
  String get asmaMeaning15 => 'Il Sottomettitore';

  @override
  String get asmaMeaning16 => 'Il Donatore di Tutto';

  @override
  String get asmaMeaning17 => 'Il Sostenitore';

  @override
  String get asmaMeaning18 => 'L\'Apertore';

  @override
  String get asmaMeaning19 => 'Il Conoscitore di Tutto';

  @override
  String get asmaMeaning20 => 'Il Costrittore';

  @override
  String get asmaMeaning21 => 'Il sollievo';

  @override
  String get asmaMeaning22 => 'L\'Abbassatore';

  @override
  String get asmaMeaning23 => 'L\'Exalter';

  @override
  String get asmaMeaning24 => 'Il Donatore d\'Onore';

  @override
  String get asmaMeaning25 => 'L\'Umiliatore';

  @override
  String get asmaMeaning26 => 'L\'Uditore di Tutti';

  @override
  String get asmaMeaning27 => 'Il Veggente di Tutto';

  @override
  String get asmaMeaning28 => 'Il giudice';

  @override
  String get asmaMeaning29 => 'Il Giusto';

  @override
  String get asmaMeaning30 => 'Il Sottile';

  @override
  String get asmaMeaning31 => 'Il Tutto Consapevole';

  @override
  String get asmaMeaning32 => 'Il precursore';

  @override
  String get asmaMeaning33 => 'Il Magnifico';

  @override
  String get asmaMeaning34 => 'Il Grande Perdonatore';

  @override
  String get asmaMeaning35 => 'Il ricompensatore di gratitudine';

  @override
  String get asmaMeaning36 => 'Il più alto';

  @override
  String get asmaMeaning37 => 'Il più grande';

  @override
  String get asmaMeaning38 => 'Il Conservatore';

  @override
  String get asmaMeaning39 => 'Il Nutriente';

  @override
  String get asmaMeaning40 => 'Il calcolatore';

  @override
  String get asmaMeaning41 => 'Il Maestoso';

  @override
  String get asmaMeaning42 => 'Il Generoso';

  @override
  String get asmaMeaning43 => 'Il Vigile';

  @override
  String get asmaMeaning44 => 'Il risponditore alla preghiera';

  @override
  String get asmaMeaning45 => 'Il tutto comprensivo';

  @override
  String get asmaMeaning46 => 'Il Perfettamente Saggio';

  @override
  String get asmaMeaning47 => 'L\'Amore';

  @override
  String get asmaMeaning48 => 'Il più glorioso';

  @override
  String get asmaMeaning49 => 'Il Resurretore';

  @override
  String get asmaMeaning50 => 'Il Testimone';

  @override
  String get asmaMeaning51 => 'La verità';

  @override
  String get asmaMeaning52 => 'Il fiduciario tutto sufficiente';

  @override
  String get asmaMeaning53 => 'Il possessore di ogni forza';

  @override
  String get asmaMeaning54 => 'Il Forte';

  @override
  String get asmaMeaning55 => 'Il Protettore';

  @override
  String get asmaMeaning56 => 'Il Lodato';

  @override
  String get asmaMeaning57 => 'Il perito';

  @override
  String get asmaMeaning58 => 'L\'Originatore';

  @override
  String get asmaMeaning59 => 'Il Restauratore';

  @override
  String get asmaMeaning60 => 'Il Donatore di Vita';

  @override
  String get asmaMeaning61 => 'Il Prendivita';

  @override
  String get asmaMeaning62 => 'Il sempre vivente';

  @override
  String get asmaMeaning63 => 'Il Sostenitore Auto-Esistente';

  @override
  String get asmaMeaning64 => 'Il Trovatore';

  @override
  String get asmaMeaning65 => 'Il Glorioso';

  @override
  String get asmaMeaning66 => 'L\'Unico';

  @override
  String get asmaMeaning67 => 'L\'Uno';

  @override
  String get asmaMeaning68 => 'Quello ricercato da tutti';

  @override
  String get asmaMeaning69 => 'Il Potente';

  @override
  String get asmaMeaning70 => 'Il Creatore di ogni potere';

  @override
  String get asmaMeaning71 => 'L\'Expediter';

  @override
  String get asmaMeaning72 => 'Il ritardatore';

  @override
  String get asmaMeaning73 => 'Il Primo';

  @override
  String get asmaMeaning74 => 'L\'ultimo';

  @override
  String get asmaMeaning75 => 'Il Manifesto';

  @override
  String get asmaMeaning76 => 'Il Nascosto';

  @override
  String get asmaMeaning77 => 'Il Governatore';

  @override
  String get asmaMeaning78 => 'Il Supremo';

  @override
  String get asmaMeaning79 => 'L\'Operatore del bene';

  @override
  String get asmaMeaning80 => 'La guida al pentimento';

  @override
  String get asmaMeaning81 => 'Il Vendicatore';

  @override
  String get asmaMeaning82 => 'Il Perdonatore';

  @override
  String get asmaMeaning83 => 'Il Clemente';

  @override
  String get asmaMeaning84 => 'Il Proprietario/Sovrano di Tutti';

  @override
  String get asmaMeaning85 => 'Il possessore di maestà e generosità';

  @override
  String get asmaMeaning86 => 'L\'Equo';

  @override
  String get asmaMeaning87 => 'Il Raccoglitore';

  @override
  String get asmaMeaning88 => 'Il ricco';

  @override
  String get asmaMeaning89 => 'L\'Arricchitore';

  @override
  String get asmaMeaning90 => 'Il prevenzione del danno';

  @override
  String get asmaMeaning91 => 'Il portatore di danno';

  @override
  String get asmaMeaning92 => 'Il Donatore di Benefici';

  @override
  String get asmaMeaning93 => 'La Luce';

  @override
  String get asmaMeaning94 => 'Il Guidatore';

  @override
  String get asmaMeaning95 => 'L\'Originatore';

  @override
  String get asmaMeaning96 => 'L\'Eterno';

  @override
  String get asmaMeaning97 => 'L\'erede';

  @override
  String get asmaMeaning98 => 'La guida più giusta';

  @override
  String get asmaMeaning99 => 'Il paziente';
}
