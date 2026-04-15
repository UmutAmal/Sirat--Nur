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
  String get splashTagline => 'Voie Islamique de la Lumière';

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
  String get locationDetectionFailed =>
      'Impossible de détecter votre position. Veuillez choisir une ville manuellement ou réessayer.';

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
  String get appErrorOccurred => 'Une erreur s\'est produite';

  @override
  String get appUnknownError => 'Erreur inconnue';

  @override
  String get quranLoadFailed =>
      'Le contenu du Coran n\'a pas pu être chargé. Veuillez réessayer.';

  @override
  String get retry => 'Réessayer';

  @override
  String get refreshAction => 'Actualiser';

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
  String ayahLabel(String ayah) {
    return 'Verset $ayah';
  }

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
  String get tafsirLoading => 'Chargement de tafsir...';

  @override
  String get tafsirSourceLabel => 'Source Tafsir';

  @override
  String get tafsirNoSurahFound => 'Aucun tafsir trouvé pour cette sourate.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Aucun tafsir trouvé pour ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir n\'a pas pu être chargé.';

  @override
  String get tafsirNoTextForAyah => 'Pas de texte tafsir pour cet ayah.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Téléchargement du tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Chargement du tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'La source Tafsir a renvoyé une erreur HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'La source tafsir sélectionnée n\'a renvoyé aucune entrée.';

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
  String get duaMeaning1 =>
      'd’autres prient : « Notre Seigneur, donne-nous du bien dans ce monde et dans l’au-delà, et protège-nous du tourment du Feu. »';

  @override
  String get duaMeaning2 =>
      'Dieu ne charge aucune âme de plus qu\'elle ne peut supporter : chacune gagne le bien qu\'elle a fait et souffre son mal : « Seigneur, ne nous prends pas à partie si nous oublions ou faisons des erreurs. Seigneur, ne nous charge pas comme tu as imposé à ceux qui nous ont précédés. Seigneur, ne nous charge pas de plus que ce que nous avons la force de supporter. Pardonne-nous, pardonne-nous et aie pitié de nous. Tu es notre protecteur, alors aide-nous contre les mécréants.';

  @override
  String get duaMeaning3 =>
      '« Notre Seigneur, ne laisse pas nos cœurs dévier après que Tu nous as guidés. Accorde-nous Ta miséricorde : Tu es Celui qui donne toujours.';

  @override
  String get duaMeaning4 =>
      'Seigneur, accorde-moi et ma progéniture de poursuivre la prière. Notre Seigneur, accepte ma demande.';

  @override
  String get duaMeaning5 =>
      'et abaisse ton aile avec humilité envers eux avec bonté et dis : « Seigneur, aie pitié d\'eux, comme ils ont pris soin de moi quand j\'étais petit. »';

  @override
  String get duaMeaning6 =>
      'exalté soit Dieu, Celui qui contrôle vraiment. [Prophète], ne vous précipitez pas pour réciter avant que la révélation ne soit complètement complète, mais dites : « Seigneur, augmente-moi en connaissance !';

  @override
  String get duaMeaning7 =>
      'Dis [Le Prophète] : « Seigneur, pardonne et aie pitié : Tu es le plus miséricordieux de tous. »';

  @override
  String get duaMeaning8 =>
      'ceux qui prient : « Notre Seigneur, donne-nous de la joie dans nos conjoints et nos enfants ». Fais-nous de bons exemples pour ceux qui te connaissent.';

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
  String get islamicNewYear => 'Nouvel An islamique';

  @override
  String get mawlidAnNabi => 'Mawlid Kandili';

  @override
  String get specialDayDateRamadanStart => '1er Ramadan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadan';

  @override
  String get specialDayDateEidAlFitr => '1 Chawal';

  @override
  String get specialDayDateEidAlAdha => '10 Dhoul Hijja';

  @override
  String get specialDayDateIslamicNewYear => '1 Mouharram';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabiul Awwal';

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
  String qiblaCompassErrorDetails(String error) {
    return 'Erreur de boussole : $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Le capteur de boussole n\'est pas disponible sur cet appareil.';

  @override
  String get adhanNotificationChannelName => 'Notifications Adhan';

  @override
  String get adhanNotificationChannelDescription =>
      'Alertes d\'heure de prière avec le son adhan.';

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
  String get zikrCompletedMashAllah => 'Complété! MachAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah est bien au-dessus de toute imperfection.';

  @override
  String get zikrMeaningAlhamdulillah => 'Toute louange appartient à Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah est le plus grand.';

  @override
  String get zikrMeaningLaIlahaIllallah =>
      'Il n\'y a pas d\'autre dieu qu\'Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Je demande le pardon d\'Allah.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Il n’y a de puissance ni de force que par Allah.';

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
      'Gestionnaire de téléchargement hors ligne';

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
  String get audioVoice => 'Audio Voix';

  @override
  String get audioVoiceMisharyAlafasy => 'Mâle (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Homme (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Mâle (Sudais)';

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
    return 'Personnalisé / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Angles personnalisés manuels (pas de source institutionnelle)';

  @override
  String get diagnosticsCloudDriven => 'Piloté par le cloud';

  @override
  String get diagnosticsAdhanAudioAssets => 'Actifs audio Adhan';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Actifs audio du Coran';

  @override
  String get diagnosticsAudioAssets => 'Actifs audio';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count fichiers';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Échec de la lecture du manifeste : $error';
  }

  @override
  String get diagnosticsLocalizationLocales =>
      'Paramètres régionaux de localisation';

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
      'Tables cloud manquantes dans Supabase ; solution de repli groupée active';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Métadonnées Cloud Juz manquantes ; solution de secours structurelle groupée active';

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
  String get sukunAudioTitle => 'Paysages sonores de Sukun';

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
      'Débloquez toutes les fonctionnalités de votre voyage spirituel';

  @override
  String get premiumProductUnavailable =>
      'Le produit Premium n’est pas disponible pour le moment. Veuillez réessayer plus tard.';

  @override
  String get premiumPurchaseFailed =>
      'L\'achat n\'a pas pu être finalisé. Veuillez réessayer.';

  @override
  String get paywallFeature1Title => 'Assistant neuronal Plus';

  @override
  String get paywallFeature1Desc =>
      'Questions et réponses illimitées basées sur l\'IA';

  @override
  String get paywallFeature2Title => 'Hors ligne illimité';

  @override
  String get paywallFeature2Desc => 'Téléchargez toutes les récitations';

  @override
  String get paywallFeature3Title => 'Modèles exclusifs';

  @override
  String get paywallFeature3Desc => 'Thèmes et polices premium';

  @override
  String get paywallFeature4Title => 'Sans publicité';

  @override
  String get paywallFeature4Desc => 'Zéro publicité';

  @override
  String get paywallGetAccess => 'Obtenez un accès à vie – 1,00 \$';

  @override
  String get restorePurchases => 'Restaurer les achats';

  @override
  String get zakatCalculator => 'Calculateur de Zakat';

  @override
  String get zakatGold => 'Or (Altin)';

  @override
  String get zakatSilver => 'Argent (Gümüş)';

  @override
  String get zakatCashBank => 'Espèces / Banque';

  @override
  String get zakatBusiness => 'Entreprise';

  @override
  String get zakatInvestments => 'Investissements';

  @override
  String get zakatWeightGrams => 'Poids (g)';

  @override
  String get zakatPricePerGram => 'Prix/g';

  @override
  String get zakatTotalAmount => 'Montant total';

  @override
  String get zakatInventoryValue => 'Valeur d\'inventaire';

  @override
  String get zakatDebts => 'Dettes';

  @override
  String get zakatTotal => 'Montant total';

  @override
  String get calculateZakat => 'Calculer la Zakat';

  @override
  String get nisabNotReached =>
      'Nisab n\'est pas atteint. La Zakat n\'est pas obligatoire.';

  @override
  String get totalZakat => 'Zakât totale';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab : $nisab • Actifs : $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakât d\'or';

  @override
  String get zakatSilverZakat => 'Zakât d\'argent';

  @override
  String get zakatCashZakat => 'Zakât en espèces';

  @override
  String get zakatBusinessZakat => 'Zakât des affaires';

  @override
  String get zakatInvestmentZakat => 'Zakât d’investissement';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Limite de requêtes quotidiennes atteinte. Passez à Premium pour un accès illimité.';

  @override
  String get chatbotErrorMsg =>
      'Je n\'ai pas pu générer de réponse. Veuillez réessayer.';

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
  String get downloadAction => 'Télécharger';

  @override
  String get resumeDownload => 'Reprendre le téléchargement';

  @override
  String get deleteDownloadedFiles => 'Supprimer les fichiers téléchargés';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Téléchargement annulé pour $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Téléchargement terminé pour $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Téléchargement terminé pour $reciter avec $failed sourates échouées ($downloaded/$total téléchargées).';
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
  String get sukunMixerSubtitle => 'Mélangeur Nature et Coran';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (nature)';

  @override
  String get sukunRainOfMercy => 'Pluie de miséricorde';

  @override
  String get sukunGardenOfPeace => 'Jardin de la Paix';

  @override
  String get sukunMidnightCalm => 'Calme de minuit';

  @override
  String get sukunOceanTawheed => 'Tawhid océanique';

  @override
  String get sukunUnavailableTitle => 'Paysages sonores indisponibles';

  @override
  String get sukunUnavailableBody =>
      'Cette version n\'inclut pas encore les ressources de paysage sonore Sukun requises.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Séquence d\'une journée';

  @override
  String get bestStreak => 'Meilleure séquence';

  @override
  String get chatbotCloudAiLabel => 'IA cloud';

  @override
  String get chatbotLocalAiLabel => 'Repli hors ligne';

  @override
  String get chatbotUseCloudAi => 'Utiliser Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Activer le repli hors ligne';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count restant';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'API cloud non configurée. Veuillez passer à l\'IA locale.';

  @override
  String get chatbotLocalNoInfo =>
      '[HORS LIGNE] Les conseils islamiques locaux vérifiés ne sont pas encore disponibles. Passez à Cloud AI pour obtenir des réponses sourcées.';

  @override
  String get mosques => 'Mosquées';

  @override
  String get halalFood => 'Nourriture halal';

  @override
  String get placesSearchArea => 'Rechercher dans cette zone';

  @override
  String get nearbyMosques => 'Mosquées à proximité';

  @override
  String get islamicSchools => 'Écoles islamiques';

  @override
  String placesFoundCount(String count) {
    return '$count trouvé';
  }

  @override
  String distanceAwayKm(String distance) {
    return 'À $distance km';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Erreur API : $statusCode';
  }

  @override
  String get placesNetworkError => 'Erreur réseau. Veuillez réessayer.';

  @override
  String get placesLocationRequiredTitle => 'Emplacement requis';

  @override
  String get placesLocationRequiredBody =>
      'Définissez d\'abord un emplacement afin que les mosquées, les aliments halal et les écoles islamiques à proximité puissent être recherchés avec précision.';

  @override
  String get placesMapTilesUnavailableTitle => 'Tuiles de carte indisponibles';

  @override
  String get placesMapTilesUnavailableBody =>
      'Une source de tuiles de carte vérifiée n’est pas encore configurée pour cette version. Les lieux à proximité peuvent toujours être chargés à partir de votre position enregistrée.';

  @override
  String get unknownPlaceName => 'Nom inconnu';

  @override
  String get islamicPlaceFallback => 'Lieu islamique';

  @override
  String get asmaMeaning1 => 'Le Bienfaisant';

  @override
  String get asmaMeaning2 => 'Le Miséricordieux';

  @override
  String get asmaMeaning3 => 'Le Roi / Seigneur Éternel';

  @override
  String get asmaMeaning4 => 'Le Très Saint';

  @override
  String get asmaMeaning5 => 'La Source de la Paix';

  @override
  String get asmaMeaning6 => 'Le donneur de sécurité';

  @override
  String get asmaMeaning7 => 'Le Gardien';

  @override
  String get asmaMeaning8 => 'Le Précieux / Le Plus Puissant';

  @override
  String get asmaMeaning9 => 'Le Contraint';

  @override
  String get asmaMeaning10 => 'Le plus grand';

  @override
  String get asmaMeaning11 => 'Le Créateur';

  @override
  String get asmaMeaning12 => 'Le créateur de l\'ordre';

  @override
  String get asmaMeaning13 => 'Le façonneur de la beauté';

  @override
  String get asmaMeaning14 => 'Le Pardonneur';

  @override
  String get asmaMeaning15 => 'Le Soumissionnaire';

  @override
  String get asmaMeaning16 => 'Le donneur de tous';

  @override
  String get asmaMeaning17 => 'Le pourvoyeur';

  @override
  String get asmaMeaning18 => 'L\'ouvreur';

  @override
  String get asmaMeaning19 => 'Le connaisseur de tous';

  @override
  String get asmaMeaning20 => 'Le Constricteur';

  @override
  String get asmaMeaning21 => 'Le soulageur';

  @override
  String get asmaMeaning22 => 'L\'Abaser';

  @override
  String get asmaMeaning23 => 'L\'Exalteur';

  @override
  String get asmaMeaning24 => 'Le dispensateur d\'honneur';

  @override
  String get asmaMeaning25 => 'L\'humiliateur';

  @override
  String get asmaMeaning26 => 'L\'Auditeur de Tous';

  @override
  String get asmaMeaning27 => 'Le voyant de tous';

  @override
  String get asmaMeaning28 => 'Le juge';

  @override
  String get asmaMeaning29 => 'Le Juste';

  @override
  String get asmaMeaning30 => 'Le Subtil';

  @override
  String get asmaMeaning31 => 'Tout le monde est conscient';

  @override
  String get asmaMeaning32 => 'L\'Aïeul';

  @override
  String get asmaMeaning33 => 'Le Magnifique';

  @override
  String get asmaMeaning34 => 'Le Grand Pardonneur';

  @override
  String get asmaMeaning35 => 'Le récompensateur de la gratitude';

  @override
  String get asmaMeaning36 => 'Le plus haut';

  @override
  String get asmaMeaning37 => 'Le plus grand';

  @override
  String get asmaMeaning38 => 'Le conservateur';

  @override
  String get asmaMeaning39 => 'La Nourrissante';

  @override
  String get asmaMeaning40 => 'Le calculateur';

  @override
  String get asmaMeaning41 => 'Le Majestueux';

  @override
  String get asmaMeaning42 => 'Le Généreux';

  @override
  String get asmaMeaning43 => 'Le Vigilant';

  @override
  String get asmaMeaning44 => 'Le répondant à la prière';

  @override
  String get asmaMeaning45 => 'Le Tout Comprenant';

  @override
  String get asmaMeaning46 => 'Le Parfaitement Sage';

  @override
  String get asmaMeaning47 => 'L\'Aimant';

  @override
  String get asmaMeaning48 => 'Le plus glorieux';

  @override
  String get asmaMeaning49 => 'Le Résurrecteur';

  @override
  String get asmaMeaning50 => 'Le témoin';

  @override
  String get asmaMeaning51 => 'La vérité';

  @override
  String get asmaMeaning52 => 'L\'administrateur tout-suffisant';

  @override
  String get asmaMeaning53 => 'Le possesseur de toute force';

  @override
  String get asmaMeaning54 => 'Le puissant';

  @override
  String get asmaMeaning55 => 'Le Protecteur';

  @override
  String get asmaMeaning56 => 'Le Loué';

  @override
  String get asmaMeaning57 => 'L\'évaluateur';

  @override
  String get asmaMeaning58 => 'L\'auteur';

  @override
  String get asmaMeaning59 => 'Le Restaurateur';

  @override
  String get asmaMeaning60 => 'Le donneur de vie';

  @override
  String get asmaMeaning61 => 'Le preneur de vie';

  @override
  String get asmaMeaning62 => 'Le éternel vivant';

  @override
  String get asmaMeaning63 => 'Le soutien autonome';

  @override
  String get asmaMeaning64 => 'Le chercheur';

  @override
  String get asmaMeaning65 => 'Le Glorieux';

  @override
  String get asmaMeaning66 => 'Le seul';

  @override
  String get asmaMeaning67 => 'Celui-là';

  @override
  String get asmaMeaning68 => 'Celui recherché par tous';

  @override
  String get asmaMeaning69 => 'Le Puissant';

  @override
  String get asmaMeaning70 => 'Le Créateur de tout pouvoir';

  @override
  String get asmaMeaning71 => 'L\'Expéditeur';

  @override
  String get asmaMeaning72 => 'Le retardateur';

  @override
  String get asmaMeaning73 => 'Le premier';

  @override
  String get asmaMeaning74 => 'Le dernier';

  @override
  String get asmaMeaning75 => 'Le manifeste';

  @override
  String get asmaMeaning76 => 'Le caché';

  @override
  String get asmaMeaning77 => 'Le Gouverneur';

  @override
  String get asmaMeaning78 => 'Le Suprême';

  @override
  String get asmaMeaning79 => 'L\'auteur du bien';

  @override
  String get asmaMeaning80 => 'Le guide du repentir';

  @override
  String get asmaMeaning81 => 'Le Vengeur';

  @override
  String get asmaMeaning82 => 'Le Pardonneur';

  @override
  String get asmaMeaning83 => 'Le Clément';

  @override
  String get asmaMeaning84 => 'Le propriétaire/souverain de tous';

  @override
  String get asmaMeaning85 => 'Le possesseur de la majesté et de la générosité';

  @override
  String get asmaMeaning86 => 'L\'équitable';

  @override
  String get asmaMeaning87 => 'Le Rassembleur';

  @override
  String get asmaMeaning88 => 'Le riche';

  @override
  String get asmaMeaning89 => 'L\'enrichisseur';

  @override
  String get asmaMeaning90 => 'Le préventeur des préjudices';

  @override
  String get asmaMeaning91 => 'Le porteur du mal';

  @override
  String get asmaMeaning92 => 'Le dispensateur d\'avantages';

  @override
  String get asmaMeaning93 => 'La Lumière';

  @override
  String get asmaMeaning94 => 'Le guide';

  @override
  String get asmaMeaning95 => 'L\'auteur';

  @override
  String get asmaMeaning96 => 'L\'Éternel';

  @override
  String get asmaMeaning97 => 'L\'héritier';

  @override
  String get asmaMeaning98 => 'Le guide le plus juste';

  @override
  String get asmaMeaning99 => 'Le patient';
}
