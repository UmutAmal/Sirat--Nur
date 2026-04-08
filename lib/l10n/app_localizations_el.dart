// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get appTitle => 'Ο δρόμος του Αλλάχ';

  @override
  String get home => 'Σπίτι';

  @override
  String get quran => 'Κοράνι';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Ημερολόγιο';

  @override
  String get settings => 'Ρυθμίσεις';

  @override
  String get nextPrayer => 'Επόμενη Προσευχή';

  @override
  String get prayerTimes => 'Ώρες προσευχής';

  @override
  String get continueReading => 'Συνεχίστε την ανάγνωση';

  @override
  String get getLifetimePro => 'Αποκτήστε Lifetime Pro';

  @override
  String get unlockTajweed => 'Ξεκλειδώστε Tajweed & Προηγμένες λειτουργίες';

  @override
  String get prayerCalculation => 'Υπολογισμός Προσευχής';

  @override
  String get method => 'Μέθοδος Υπολογισμού';

  @override
  String get madhab => 'Asr Juristic Method';

  @override
  String get surahs => 'Σούρες';

  @override
  String get ayahs => 'Άγια';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Ανατολή ηλίου';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Μαγκρίμπ';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Ώρα για $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Είναι ώρα να προσευχηθείτε $prayerName.';
  }

  @override
  String get dataStorage => 'Δεδομένα & Αποθήκευση';

  @override
  String get clearCache => 'Εκκαθάριση προσωρινής μνήμης';

  @override
  String get cacheClearedSuccess => 'Η προσωρινή μνήμη διαγράφηκε με επιτυχία';

  @override
  String get location => 'Τοποθεσία';

  @override
  String get language => 'Γλώσσα';

  @override
  String get selectLanguage => 'Επιλέξτε Γλώσσα';

  @override
  String get searchLanguage => 'Αναζήτηση 180+ γλωσσών...';

  @override
  String get systemDefault => 'Προεπιλογή συστήματος';

  @override
  String get currentLocation => 'Τρέχουσα τοποθεσία (GPS)';

  @override
  String get locationServiceDisabled => 'Location service is disabled.';

  @override
  String get locationPermissionDenied => 'Location permission denied.';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => 'Ερευνα';

  @override
  String get searchHint => 'Ερευνα...';

  @override
  String get noResults => 'Δεν βρέθηκαν αποτελέσματα';

  @override
  String get loading => 'Φόρτωση...';

  @override
  String get error => 'Σφάλμα';

  @override
  String get retry => 'Δοκιμάζω πάλι';

  @override
  String get cancel => 'Ματαίωση';

  @override
  String get save => 'Εκτός';

  @override
  String get delete => 'Διαγράφω';

  @override
  String get edit => 'Εκδίδω';

  @override
  String get close => 'Κοντά';

  @override
  String get ok => 'ΕΝΤΑΞΕΙ';

  @override
  String get yes => 'Ναί';

  @override
  String get no => 'Οχι';

  @override
  String get surah => 'Σούρα';

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Σελίδα';

  @override
  String get reading => 'Ανάγνωση';

  @override
  String get recitation => 'Απαγγελία';

  @override
  String get translation => 'Μετάφραση';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get bookmarks => 'Σελιδοδείκτες';

  @override
  String get addBookmark => 'Προσθήκη σελιδοδείκτη';

  @override
  String get removeBookmark => 'Κατάργηση σελιδοδείκτη';

  @override
  String get lastRead => 'Τελευταία Ανάγνωση';

  @override
  String get dailyZikr => 'Καθημερινό Ζικρ';

  @override
  String get morningZikr => 'Πρωινό Ζικρ';

  @override
  String get eveningZikr => 'Εσπερινός Ζικρ';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get ahkab => 'Αχκάμ';

  @override
  String get masaail => 'Masa\'il';

  @override
  String get hadith => 'Χαντίθ';

  @override
  String get hadithCollection => 'Συλλογή Χαντίθ';

  @override
  String get hadithBooks => 'Βιβλία Χαντίθ';

  @override
  String get searchHadith => 'Αναζήτηση Χαντίθ';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Ονόματα του Αλλάχ';

  @override
  String get liveTv => 'Ζωντανή τηλεόραση';

  @override
  String get watchLive => 'Παρακολουθήστε Ζωντανά';

  @override
  String get streamError => 'Σφάλμα ροής';

  @override
  String get reload => 'Γεμίζω πάλι';

  @override
  String get openInYoutube => 'Ανοίξτε στο YouTube';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Νηστεία';

  @override
  String get quranReading => 'Ανάγνωση Κορανίου';

  @override
  String get prayers => 'Προσευχές';

  @override
  String get dhikrCount => 'Ντικρ Κόμη';

  @override
  String get weeklyProgress => 'Εβδομαδιαία Πρόοδος';

  @override
  String get monthlyProgress => 'Μηνιαία Πρόοδος';

  @override
  String get statistics => 'Στατιστική';

  @override
  String get hijriCalendar => 'Ημερολόγιο Hijri';

  @override
  String get gregorianCalendar => 'Γρηγοριανό Ημερολόγιο';

  @override
  String get today => 'Σήμερα';

  @override
  String get tomorrow => 'Αύριο';

  @override
  String get yesterday => 'Εχθές';

  @override
  String get specialDays => 'Ειδικές Ημέρες';

  @override
  String get ramadan => 'Ραμαζάνι';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'Κατεύθυνση Qibla';

  @override
  String get compass => 'Πυξίδα';

  @override
  String get degrees => 'βαθμούς';

  @override
  String get north => 'Βόρειος';

  @override
  String get qiblaFound => 'Η Qibla βρέθηκε!';

  @override
  String get turnDevice => 'Γυρίστε τη συσκευή σας προς την Qibla';

  @override
  String get notifications => 'Ειδοποιήσεις';

  @override
  String get prayerNotifications => 'Ειδοποιήσεις προσευχής';

  @override
  String get enableNotifications => 'Ενεργοποίηση Ειδοποιήσεων';

  @override
  String get notificationTime => 'Ώρα ειδοποίησης';

  @override
  String get beforePrayer => 'λεπτά πριν την προσευχή';

  @override
  String get theme => 'Θέμα';

  @override
  String get lightMode => 'Λειτουργία φωτός';

  @override
  String get darkMode => 'Σκοτεινή λειτουργία';

  @override
  String get systemTheme => 'Θέμα συστήματος';

  @override
  String get about => 'Για';

  @override
  String get version => 'Εκδοχή';

  @override
  String get privacyPolicy => 'Πολιτική Απορρήτου';

  @override
  String get termsOfService => 'Όροι Παροχής Υπηρεσιών';

  @override
  String get contactUs => 'Επικοινωνήστε μαζί μας';

  @override
  String get rateApp => 'Βαθμολογήστε την εφαρμογή';

  @override
  String get shareApp => 'Κοινή χρήση εφαρμογής';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Διαχείριση λήψεων';

  @override
  String get downloads => 'Λήψεις';

  @override
  String get downloading => 'Λήψη...';

  @override
  String get downloadComplete => 'Η λήψη ολοκληρώθηκε';

  @override
  String get downloadFailed => 'Η λήψη απέτυχε';

  @override
  String get offlineMode => 'Λειτουργία εκτός σύνδεσης';

  @override
  String get noInternet => 'Χωρίς σύνδεση στο Διαδίκτυο';

  @override
  String get checkConnection => 'Ελέγξτε τη σύνδεσή σας';

  @override
  String get premium => 'Ασφάλιστρο';

  @override
  String get upgradeToPro => 'Αναβάθμιση σε Pro';

  @override
  String get proFeatures => 'Pro Χαρακτηριστικά';

  @override
  String get removeAds => 'Κατάργηση διαφημίσεων';

  @override
  String get unlockAll => 'Ξεκλειδώστε όλο το περιεχόμενο';

  @override
  String get exclusiveContent => 'Αποκλειστικό Περιεχόμενο';

  @override
  String get welcome => 'Καλωσόρισμα';

  @override
  String get getStarted => 'Ξεκινήστε';

  @override
  String get skip => 'Παραλείπω';

  @override
  String get next => 'Επόμενος';

  @override
  String get done => 'Γινώμενος';

  @override
  String get onboarding1Title => 'Καλώς ήρθατε στο Way of Allah';

  @override
  String get onboarding1Desc =>
      'Η πλήρης ισλαμική συντροφική σας εφαρμογή για ώρες προσευχής, Κοράνι και πολλά άλλα';

  @override
  String get onboarding2Title => 'Ώρες προσευχής';

  @override
  String get onboarding2Desc =>
      'Ακριβείς ώρες προσευχής με βάση την τοποθεσία σας';

  @override
  String get onboarding3Title => 'Κοράνι και άλλα';

  @override
  String get onboarding3Desc =>
      'Διαβάστε το Κοράνι, παρακολουθήστε την ανάγνωσή σας και εξερευνήστε το ισλαμικό περιεχόμενο';

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
  String get diagnosticsNotSet => 'Not set';

  @override
  String get diagnosticsPrayerProfile => 'Prayer Profile';

  @override
  String get diagnosticsPrayerSource => 'Prayer Authority';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manual custom angles (no institutional source)';

  @override
  String get diagnosticsCloudDriven => 'Cloud Driven';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Quran Audio Assets';

  @override
  String get diagnosticsAudioAssets => 'Audio Assets';

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
  String get dailyVerse => 'Daily Verse';

  @override
  String get todaysIbadah => 'Today\'s Ibadah';

  @override
  String get quickAccess => 'Quick Access';

  @override
  String get assistant => 'Assistant';

  @override
  String get places => 'Places';

  @override
  String get library => 'Library';

  @override
  String get analytics => 'Analytics';

  @override
  String get dailyDuas => 'Καθημερινή Duas';

  @override
  String essentialDuas(String count) {
    return '$count βασικές δέες';
  }

  @override
  String get duaUnavailableTitle =>
      'Οι επαληθευμένες ντους δεν είναι ακόμα διαθέσιμες';

  @override
  String get duaUnavailableBody =>
      'Οι επαληθευμένες καθημερινές δέες δεν έχουν συγχρονιστεί ακόμα με αυτήν τη συσκευή. Συνδεθείτε στην πηγή cloud για να φορτώσετε duas που προέρχονται αντί για μη επαληθευμένη εναλλακτική.';

  @override
  String get duaCategoryQuranic => 'Κορανική ντουέτα';

  @override
  String get duaCategoryMorningEvening => 'Πρωί & Βράδυ';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Προστασία';

  @override
  String get duaCategoryBeginning => 'Αρχές';

  @override
  String get duaCategorySleep => 'Υπνος';

  @override
  String get duaCategoryFoodDrink => 'Φαγητό & Ποτό';

  @override
  String get duaCategoryForgiveness => 'Συγχώρεση';

  @override
  String get duaCategoryHome => 'Σπίτι';

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
  String get islamicEducation => 'Islamic Education';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Hadith Collections';

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
      'Η επαληθευμένη βάση ισλαμικών γνώσεων εκτός σύνδεσης βρίσκεται ακόμη υπό επιμέλεια. Μπορείτε να ενεργοποιήσετε την εναλλακτική λύση εκτός σύνδεσης τώρα, αλλά θα εμφανίζει μόνο περιορισμένα ασφαλή μηνύματα μέχρι να είναι έτοιμο το σύνολο δεδομένων προέλευσης.\n\nΘέλετε να ενεργοποιήσετε την εναλλακτική λύση εκτός σύνδεσης;';

  @override
  String get chatbotOfflineSwitched =>
      'Ενεργοποιήθηκε η εναλλακτική λύση εκτός σύνδεσης. Οι επαληθευμένες τοπικές ισλαμικές απαντήσεις δεν είναι ακόμη έτοιμες.';

  @override
  String get chatbotOfflineDownloadLabel =>
      'Ενεργοποιήστε την εναλλακτική λύση εκτός σύνδεσης';

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
  String get chatbotLocalAiLabel => 'Επιστροφή εκτός σύνδεσης';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi =>
      'Ενεργοποιήστε την εναλλακτική λύση εκτός σύνδεσης';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API not configured. Please switch to Local AI.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Η επαληθευμένη τοπική ισλαμική καθοδήγηση δεν είναι ακόμη διαθέσιμη. Μεταβείτε στο Cloud AI για απαντήσεις από πηγές.';

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
