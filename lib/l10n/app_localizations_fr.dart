// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Voie d\'Allah';

  @override
  String get home => 'Maison';

  @override
  String get quran => 'Coran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Calendrier';

  @override
  String get settings => 'Paramètres';

  @override
  String get nextPrayer => 'Prière suivante';

  @override
  String get prayerTimes => 'Horaires de prière';

  @override
  String get continueReading => 'Continuer la lecture';

  @override
  String get getLifetimePro => 'Obtenez Pro à vie';

  @override
  String get unlockTajweed =>
      'Débloquez Tajweed et les fonctionnalités avancées';

  @override
  String get prayerCalculation => 'Calcul de la prière';

  @override
  String get method => 'Méthode de calcul';

  @override
  String get madhab => 'Méthode juridique Asr';

  @override
  String get surahs => 'Sourates';

  @override
  String get ayahs => 'Ayahs';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Lever du soleil';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'asr';

  @override
  String get maghrib => 'Maghreb';

  @override
  String get isha => 'Icha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'C\'est l\'heure de $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Il est temps de prier $prayerName.';
  }

  @override
  String get dataStorage => 'Données et stockage';

  @override
  String get clearCache => 'Vider le cache';

  @override
  String get cacheClearedSuccess => 'Cache vidé avec succès';

  @override
  String get location => 'Emplacement';

  @override
  String get language => 'Langue';

  @override
  String get selectLanguage => 'Sélectionnez la langue';

  @override
  String get searchLanguage => 'Recherchez dans plus de 180 langues...';

  @override
  String get systemDefault => 'Système par défaut';

  @override
  String get currentLocation => 'Localisation actuelle (GPS)';

  @override
  String get locationServiceDisabled =>
      'Le service de localisation est désactivé.';

  @override
  String get locationPermissionDenied =>
      'Autorisation de localisation refusée.';

  @override
  String citiesCount(String count) {
    return '$count villes';
  }

  @override
  String get search => 'Recherche';

  @override
  String get searchHint => 'Recherche...';

  @override
  String get noResults => 'Aucun résultat trouvé';

  @override
  String get loading => 'Chargement...';

  @override
  String get error => 'Erreur';

  @override
  String get retry => 'Réessayer';

  @override
  String get cancel => 'Annuler';

  @override
  String get save => 'Sauvegarder';

  @override
  String get delete => 'Supprimer';

  @override
  String get edit => 'Modifier';

  @override
  String get close => 'Fermer';

  @override
  String get ok => 'D\'ACCORD';

  @override
  String get yes => 'Oui';

  @override
  String get no => 'Non';

  @override
  String get surah => 'Sourate';

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Page';

  @override
  String get reading => 'En lisant';

  @override
  String get recitation => 'Récitation';

  @override
  String get translation => 'Traduction';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get bookmarks => 'Signets';

  @override
  String get addBookmark => 'Ajouter un signet';

  @override
  String get removeBookmark => 'Supprimer le signet';

  @override
  String get lastRead => 'Dernière lecture';

  @override
  String get dailyZikr => 'Zikr quotidien';

  @override
  String get morningZikr => 'Zikr du matin';

  @override
  String get eveningZikr => 'Zikr du soir';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masa\'il';

  @override
  String get hadith => 'Hadith';

  @override
  String get hadithCollection => 'Collection de hadiths';

  @override
  String get hadithBooks => 'Livres de hadiths';

  @override
  String get searchHadith => 'Rechercher un hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Noms d\'Allah';

  @override
  String get liveTv => 'Télévision en direct';

  @override
  String get watchLive => 'Regarder en direct';

  @override
  String get streamError => 'Erreur de flux';

  @override
  String get reload => 'Recharger';

  @override
  String get openInYoutube => 'Ouvrir sur YouTube';

  @override
  String get ibadahTracker => 'Traqueur d\'Ibadah';

  @override
  String get fasting => 'Jeûne';

  @override
  String get quranReading => 'Lecture du Coran';

  @override
  String get prayers => 'Prières';

  @override
  String get dhikrCount => 'Compte de Dhikr';

  @override
  String get weeklyProgress => 'Progrès hebdomadaire';

  @override
  String get monthlyProgress => 'Progrès mensuel';

  @override
  String get statistics => 'Statistiques';

  @override
  String get hijriCalendar => 'Calendrier hégirien';

  @override
  String get gregorianCalendar => 'Calendrier grégorien';

  @override
  String get today => 'Aujourd\'hui';

  @override
  String get tomorrow => 'Demain';

  @override
  String get yesterday => 'Hier';

  @override
  String get specialDays => 'Journées spéciales';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Aïd Al-Fitr';

  @override
  String get eidAlAdha => 'Aïd Al-Adha';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'Direction de la Qibla';

  @override
  String get compass => 'Boussole';

  @override
  String get degrees => 'degrés';

  @override
  String get north => 'Nord';

  @override
  String get qiblaFound => 'Qibla trouvée !';

  @override
  String get turnDevice => 'Tournez votre appareil pour faire face à la Qibla';

  @override
  String get notifications => 'Notifications';

  @override
  String get prayerNotifications => 'Notifications de prière';

  @override
  String get enableNotifications => 'Activer les notifications';

  @override
  String get notificationTime => 'Heure de notification';

  @override
  String get beforePrayer => 'minutes avant la prière';

  @override
  String get theme => 'Thème';

  @override
  String get lightMode => 'Mode lumière';

  @override
  String get darkMode => 'Mode sombre';

  @override
  String get systemTheme => 'Thème système';

  @override
  String get about => 'À propos';

  @override
  String get version => 'Version';

  @override
  String get privacyPolicy => 'politique de confidentialité';

  @override
  String get termsOfService => 'Conditions d\'utilisation';

  @override
  String get contactUs => 'Contactez-nous';

  @override
  String get rateApp => 'Évaluer l\'application';

  @override
  String get shareApp => 'Partager l\'application';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Découvrez $appName : l\'application ultime pour le mode de vie islamique ! $url';
  }

  @override
  String get downloadManager => 'Gestionnaire de téléchargement';

  @override
  String get downloads => 'Téléchargements';

  @override
  String get downloading => 'Téléchargement...';

  @override
  String get downloadComplete => 'Téléchargement terminé';

  @override
  String get downloadFailed => 'Échec du téléchargement';

  @override
  String get offlineMode => 'Mode hors ligne';

  @override
  String get noInternet => 'Pas de connexion Internet';

  @override
  String get checkConnection => 'Veuillez vérifier votre connexion';

  @override
  String get premium => 'Prime';

  @override
  String get upgradeToPro => 'Passer à Pro';

  @override
  String get proFeatures => 'Fonctionnalités professionnelles';

  @override
  String get removeAds => 'Supprimer les publicités';

  @override
  String get unlockAll => 'Débloquez tout le contenu';

  @override
  String get exclusiveContent => 'Contenu exclusif';

  @override
  String get welcome => 'Accueillir';

  @override
  String get getStarted => 'Commencer';

  @override
  String get skip => 'Sauter';

  @override
  String get next => 'Suivant';

  @override
  String get done => 'Fait';

  @override
  String get onboarding1Title => 'Bienvenue sur la Voie d\'Allah';

  @override
  String get onboarding1Desc =>
      'Votre application compagnon islamique complète pour les heures de prière, le Coran et bien plus encore';

  @override
  String get onboarding2Title => 'Horaires de prière';

  @override
  String get onboarding2Desc =>
      'Horaires de prière précis en fonction de votre emplacement';

  @override
  String get onboarding3Title => 'Coran et plus';

  @override
  String get onboarding3Desc =>
      'Lisez le Coran, suivez votre lecture et explorez le contenu islamique';

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
  String get diagnosticsNotSet => 'Non défini';

  @override
  String get diagnosticsPrayerProfile => 'Profil de prière';

  @override
  String get diagnosticsPrayerSource => 'Autorité de prière';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manual custom angles (no institutional source)';

  @override
  String get diagnosticsCloudDriven => 'Piloté par le cloud';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Quran Audio Assets';

  @override
  String get diagnosticsAudioAssets => 'Actifs audio';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count files';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifest read failed: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Localization Locales';

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
  String get dailyVerse => 'Verset quotidien';

  @override
  String get todaysIbadah => 'L\'Ibadah d\'aujourd\'hui';

  @override
  String get quickAccess => 'Accès rapide';

  @override
  String get assistant => 'Assistant';

  @override
  String get places => 'Lieux';

  @override
  String get library => 'Bibliothèque';

  @override
  String get analytics => 'Analytique';

  @override
  String get dailyDuas => 'Duas quotidiens';

  @override
  String essentialDuas(String count) {
    return '$count duas essentiels';
  }

  @override
  String get duaUnavailableTitle =>
      'Les duas vérifiés ne sont pas encore disponibles';

  @override
  String get duaUnavailableBody =>
      'Les duas quotidiens vérifiés n\'ont pas encore été synchronisés avec cet appareil. Connectez-vous à la source cloud pour charger des duas sources au lieu d\'une solution de secours non vérifiée.';

  @override
  String get duaCategoryQuranic => 'Doua coranique';

  @override
  String get duaCategoryMorningEvening => 'Matin et soir';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Protection';

  @override
  String get duaCategoryBeginning => 'Les débuts';

  @override
  String get duaCategorySleep => 'Dormir';

  @override
  String get duaCategoryFoodDrink => 'Nourriture et boissons';

  @override
  String get duaCategoryForgiveness => 'Pardon';

  @override
  String get duaCategoryHome => 'Maison';

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
  String get islamicEducation => 'Éducation islamique';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Collections de hadiths';

  @override
  String get hadithSourcePending => 'Source vérifiée en attente';

  @override
  String get hadithUnavailableTitle =>
      'Les collections de hadiths vérifiées ne sont pas encore disponibles';

  @override
  String get hadithUnavailableBody =>
      'Cette version dépend toujours d\'un flux de hadith externe non vérifié. La navigation dans les hadiths reste désactivée jusqu\'à ce qu\'un ensemble de données source soit synchronisé.';

  @override
  String get paywallUnlockAll =>
      'Unlock all features for your spiritual journey';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'Unlimited AI-powered Q&A';

  @override
  String get paywallFeature2Title => 'Unlimited Offline';

  @override
  String get paywallFeature2Desc => 'Download all recitations';

  @override
  String get paywallFeature3Title => 'Exclusive Designs';

  @override
  String get paywallFeature3Desc => 'Premium themes & fonts';

  @override
  String get paywallFeature4Title => 'Ad-Free';

  @override
  String get paywallFeature4Desc => 'Zero advertisements';

  @override
  String get paywallGetAccess => 'Get Lifetime Access — \$1.00';

  @override
  String get restorePurchases => 'Restore Purchases';

  @override
  String get zakatCalculator => 'Zakat Calculator';

  @override
  String get zakatGold => 'Gold (Altın)';

  @override
  String get zakatSilver => 'Silver (Gümüş)';

  @override
  String get zakatCashBank => 'Cash / Bank';

  @override
  String get zakatBusiness => 'Business';

  @override
  String get zakatInvestments => 'Investments';

  @override
  String get zakatWeightGrams => 'Weight (g)';

  @override
  String get zakatPricePerGram => 'Price/g';

  @override
  String get zakatTotalAmount => 'Total Amount';

  @override
  String get zakatInventoryValue => 'Inventory Value';

  @override
  String get zakatDebts => 'Debts';

  @override
  String get zakatTotal => 'Total';

  @override
  String get calculateZakat => 'Calculate Zakat';

  @override
  String get nisabNotReached => 'Nisab not reached. Zakat is not obligatory.';

  @override
  String get totalZakat => 'Total Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'Gold Zakat';

  @override
  String get zakatSilverZakat => 'Silver Zakat';

  @override
  String get zakatCashZakat => 'Cash Zakat';

  @override
  String get zakatBusinessZakat => 'Business Zakat';

  @override
  String get zakatInvestmentZakat => 'Investment Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Daily query limit reached. Upgrade to Premium for unlimited.';

  @override
  String get chatbotErrorMsg =>
      'I could not generate a response. Please try again.';

  @override
  String get chatbotOfflinePrompt =>
      'La base de connaissances islamiques hors ligne vérifiée est toujours en cours de conservation. Vous pouvez activer le secours hors ligne maintenant, mais il n\'affichera qu\'un nombre limité de messages sécurisés jusqu\'à ce que l\'ensemble de données source soit prêt.\n\nSouhaitez-vous activer le remplacement hors ligne ?';

  @override
  String get chatbotOfflineSwitched =>
      'Repli hors ligne activé. Les réponses islamiques locales vérifiées ne sont pas encore prêtes.';

  @override
  String get chatbotOfflineDownloadLabel => 'Activer le repli hors ligne';

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
  String get dayStreak => 'Day streak';

  @override
  String get bestStreak => 'Best streak';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Repli hors ligne';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Activer le repli hors ligne';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API not configured. Please switch to Local AI.';

  @override
  String get chatbotLocalNoInfo =>
      '[HORS LIGNE] Les conseils islamiques locaux vérifiés ne sont pas encore disponibles. Passez à Cloud AI pour obtenir des réponses sourcées.';

  @override
  String get mosques => 'Mosques';

  @override
  String get halalFood => 'Halal Food';

  @override
  String get placesSearchArea => 'Search this area';

  @override
  String get nearbyMosques => 'Nearby Mosques';

  @override
  String get islamicSchools => 'Islamic Schools';

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
    return 'API Error: $statusCode';
  }

  @override
  String get placesNetworkError => 'Network error. Please try again.';

  @override
  String get unknownPlaceName => 'Unknown Name';

  @override
  String get islamicPlaceFallback => 'Islamic Place';
}
