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
  String get locationServiceDisabled =>
      'Η υπηρεσία τοποθεσίας είναι απενεργοποιημένη.';

  @override
  String get locationPermissionDenied => 'Η άδεια τοποθεσίας απορρίφθηκε.';

  @override
  String citiesCount(String count) {
    return '$count πόλεις';
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
  String get appErrorOccurred => 'Παρουσιάστηκε σφάλμα';

  @override
  String get appUnknownError => 'Άγνωστο σφάλμα';

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
  String qiblaCompassErrorDetails(String error) {
    return 'Σφάλμα πυξίδας: $error';
  }

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
    return 'Δείτε $appName: Η απόλυτη εφαρμογή ισλαμικού τρόπου ζωής! $url';
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
  String get zikrCompletedMashAllah => 'Ολοκληρώθηκε το! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Ο Αλλάχ είναι πολύ πάνω από κάθε ατέλεια.';

  @override
  String get zikrMeaningAlhamdulillah => 'Όλος ο έπαινος ανήκει στον Αλλάχ.';

  @override
  String get zikrMeaningAllahuAkbar => 'Ο Αλλάχ είναι ο Μεγαλύτερος.';

  @override
  String get zikrMeaningLaIlahaIllallah =>
      'Δεν υπάρχει θεός εκτός από τον Αλλάχ.';

  @override
  String get zikrMeaningAstaghfirullah => 'Ζητώ τη συγχώρεση του Αλλάχ.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Δεν υπάρχει δύναμη και δύναμη παρά μόνο μέσω του Αλλάχ.';

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
  String get diagnosticsNotSet => 'Δεν έχει οριστεί';

  @override
  String get diagnosticsPrayerProfile => 'Προφίλ προσευχής';

  @override
  String get diagnosticsPrayerSource => 'Αρχή Προσευχής';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Προσαρμοσμένο / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Μη αυτόματες προσαρμοσμένες γωνίες (χωρίς θεσμική πηγή)';

  @override
  String get diagnosticsCloudDriven => 'Cloud Driven';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Στοιχεία ήχου Κορανίου';

  @override
  String get diagnosticsAudioAssets => 'Στοιχεία ήχου';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count αρχεία';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Η ανάγνωση της δήλωσης απέτυχε: $error';
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
  String get dailyVerse => 'Καθημερινός Στίχος';

  @override
  String get todaysIbadah => 'Η σημερινή Ibadah';

  @override
  String get quickAccess => 'Γρήγορη πρόσβαση';

  @override
  String get assistant => 'Βοηθός';

  @override
  String get places => 'Μέρη';

  @override
  String get library => 'Βιβλιοθήκη';

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
  String get islamicEducation => 'Ισλαμική Παιδεία';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Συλλογές Χαντίθ';

  @override
  String get hadithSourcePending => 'Η επαληθευμένη πηγή εκκρεμεί';

  @override
  String get hadithUnavailableTitle =>
      'Οι επαληθευμένες συλλογές χαντίθ δεν είναι ακόμη διαθέσιμες';

  @override
  String get hadithUnavailableBody =>
      'Αυτή η κατασκευή εξακολουθεί να εξαρτάται από μια μη επαληθευμένη εξωτερική ροή χαντίθ. Η περιήγηση στα Hadith παραμένει απενεργοποιημένη έως ότου συγχρονιστεί ένα σύνολο δεδομένων προέλευσης.';

  @override
  String get paywallUnlockAll =>
      'Ξεκλειδώστε όλες τις δυνατότητες για το πνευματικό σας ταξίδι';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc =>
      'Απεριόριστες ερωτήσεις και απαντήσεις με τεχνητή νοημοσύνη';

  @override
  String get paywallFeature2Title => 'Απεριόριστα εκτός σύνδεσης';

  @override
  String get paywallFeature2Desc => 'Κατεβάστε όλες τις απαγγελίες';

  @override
  String get paywallFeature3Title => 'Αποκλειστικά σχέδια';

  @override
  String get paywallFeature3Desc => 'Premium θέματα και γραμματοσειρές';

  @override
  String get paywallFeature4Title => 'Χωρίς διαφημίσεις';

  @override
  String get paywallFeature4Desc => 'Μηδενικές διαφημίσεις';

  @override
  String get paywallGetAccess => 'Αποκτήστε Lifetime Access — 1,00 \$';

  @override
  String get restorePurchases => 'Επαναφορά αγορών';

  @override
  String get zakatCalculator => 'Υπολογιστής Zakat';

  @override
  String get zakatGold => 'Χρυσός (Altın)';

  @override
  String get zakatSilver => 'Ασημί (Gümüş)';

  @override
  String get zakatCashBank => 'Μετρητά / Τράπεζα';

  @override
  String get zakatBusiness => 'Επιχείρηση';

  @override
  String get zakatInvestments => 'Επενδύσεις';

  @override
  String get zakatWeightGrams => 'Βάρος (g)';

  @override
  String get zakatPricePerGram => 'Τιμή/g';

  @override
  String get zakatTotalAmount => 'Συνολικό Ποσό';

  @override
  String get zakatInventoryValue => 'Αξία αποθέματος';

  @override
  String get zakatDebts => 'Χρέη';

  @override
  String get zakatTotal => 'Σύνολο';

  @override
  String get calculateZakat => 'Υπολογίστε το Zakat';

  @override
  String get nisabNotReached =>
      'Το Nisab δεν έφτασε. Το Zakat δεν είναι υποχρεωτικό.';

  @override
  String get totalZakat => 'Συνολικό Ζακάτ';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Στοιχεία: $assets';
  }

  @override
  String get zakatGoldZakat => 'Χρυσό Ζακάτ';

  @override
  String get zakatSilverZakat => 'Ασημένιο Ζακάτ';

  @override
  String get zakatCashZakat => 'Μετρητά Zakat';

  @override
  String get zakatBusinessZakat => 'Business Zakat';

  @override
  String get zakatInvestmentZakat => 'Επενδυτικό Ζακάτ';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Συμπληρώθηκε το ημερήσιο όριο ερωτημάτων. Αναβάθμιση σε Premium για απεριόριστο αριθμό.';

  @override
  String get chatbotErrorMsg =>
      'Δεν μπόρεσα να δημιουργήσω απάντηση. Δοκιμάστε ξανά.';

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
  String get sukunMixerSubtitle => 'Μίξερ Φύσης & Κορανίου';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (Φύση)';

  @override
  String get sukunRainOfMercy => 'Βροχή Ελέους';

  @override
  String get sukunGardenOfPeace => 'Κήπος της Ειρήνης';

  @override
  String get sukunMidnightCalm => 'Μεσάνυχτα Ηρεμία';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Ηχητικά τοπία δεν είναι διαθέσιμα';

  @override
  String get sukunUnavailableBody =>
      'Αυτή η έκδοση δεν περιλαμβάνει ακόμη τα απαιτούμενα στοιχεία ήχου Sukun.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Σερί ημέρας';

  @override
  String get bestStreak => 'Καλύτερο σερί';

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
    return 'Απομένει $count';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Το Cloud API δεν έχει διαμορφωθεί. Μεταβείτε στο Τοπικό AI.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Η επαληθευμένη τοπική ισλαμική καθοδήγηση δεν είναι ακόμη διαθέσιμη. Μεταβείτε στο Cloud AI για απαντήσεις από πηγές.';

  @override
  String get mosques => 'Τζαμιά';

  @override
  String get halalFood => 'Φαγητό Halal';

  @override
  String get placesSearchArea => 'Αναζήτηση σε αυτήν την περιοχή';

  @override
  String get nearbyMosques => 'Κοντινά τζαμιά';

  @override
  String get islamicSchools => 'Ισλαμικά Σχολεία';

  @override
  String placesFoundCount(String count) {
    return '$count βρέθηκε';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance χλμ. μακριά';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Σφάλμα API: $statusCode';
  }

  @override
  String get placesNetworkError => 'Σφάλμα δικτύου. Δοκιμάστε ξανά.';

  @override
  String get unknownPlaceName => 'Άγνωστο Όνομα';

  @override
  String get islamicPlaceFallback => 'Ισλαμικός τόπος';

  @override
  String get asmaMeaning1 => 'Ο Ευεργέτης';

  @override
  String get asmaMeaning2 => 'Ο Ελεήμων';

  @override
  String get asmaMeaning3 => 'Ο Βασιλιάς / Αιώνιος Κύριος';

  @override
  String get asmaMeaning4 => 'Τα Άγια';

  @override
  String get asmaMeaning5 => 'Η Πηγή της Ειρήνης';

  @override
  String get asmaMeaning6 => 'Ο Δωρητής της Ασφάλειας';

  @override
  String get asmaMeaning7 => 'The Guardian';

  @override
  String get asmaMeaning8 => 'The Precious / The Most Mighty';

  @override
  String get asmaMeaning9 => 'The Compeller';

  @override
  String get asmaMeaning10 => 'The Greatest';

  @override
  String get asmaMeaning11 => 'Ο Δημιουργός';

  @override
  String get asmaMeaning12 => 'The Maker of Order';

  @override
  String get asmaMeaning13 => 'The Shaper of Beauty';

  @override
  String get asmaMeaning14 => 'The Forgiving';

  @override
  String get asmaMeaning15 => 'The Subduer';

  @override
  String get asmaMeaning16 => 'Ο Δωρητής των Όλων';

  @override
  String get asmaMeaning17 => 'The Sustainer';

  @override
  String get asmaMeaning18 => 'The Opener';

  @override
  String get asmaMeaning19 => 'Ο γνώστης όλων';

  @override
  String get asmaMeaning20 => 'The Constrictor';

  @override
  String get asmaMeaning21 => 'The Reliever';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'Ο Δωρητής της Τιμής';

  @override
  String get asmaMeaning25 => 'Ο Ταπεινωτής';

  @override
  String get asmaMeaning26 => 'Ο Ακούγοντας των Όλων';

  @override
  String get asmaMeaning27 => 'The Seer of All';

  @override
  String get asmaMeaning28 => 'Ο δικαστής';

  @override
  String get asmaMeaning29 => 'Ο Δίκαιος';

  @override
  String get asmaMeaning30 => 'The Subtle One';

  @override
  String get asmaMeaning31 => 'The All Aware';

  @override
  String get asmaMeaning32 => 'The Forebearing';

  @override
  String get asmaMeaning33 => 'The Magnificent';

  @override
  String get asmaMeaning34 => 'Ο Μεγάλος Συγχωρητής';

  @override
  String get asmaMeaning35 => 'The Rewarder of Thankfulness';

  @override
  String get asmaMeaning36 => 'Το υψηλότερο';

  @override
  String get asmaMeaning37 => 'The Greatest';

  @override
  String get asmaMeaning38 => 'Ο Συντηρητής';

  @override
  String get asmaMeaning39 => 'The Nourisher';

  @override
  String get asmaMeaning40 => 'The Reckoner';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'Ο γενναιόδωρος';

  @override
  String get asmaMeaning43 => 'The Watchful One';

  @override
  String get asmaMeaning44 => 'Η απάντηση στην προσευχή';

  @override
  String get asmaMeaning45 => 'The All Comprehending';

  @override
  String get asmaMeaning46 => 'The Perfectly Wise';

  @override
  String get asmaMeaning47 => 'The Loving One';

  @override
  String get asmaMeaning48 => 'Ο πιο ένδοξος';

  @override
  String get asmaMeaning49 => 'The Resurrector';

  @override
  String get asmaMeaning50 => 'Ο Μάρτυρας';

  @override
  String get asmaMeaning51 => 'Η αλήθεια';

  @override
  String get asmaMeaning52 => 'The All-Sufficient Trustee';

  @override
  String get asmaMeaning53 => 'Ο Κάτοχος Όλης Δύναμης';

  @override
  String get asmaMeaning54 => 'The Forceful';

  @override
  String get asmaMeaning55 => 'Ο Προστάτης';

  @override
  String get asmaMeaning56 => 'Οι Επαινούμενοι';

  @override
  String get asmaMeaning57 => 'Ο Εκτιμητής';

  @override
  String get asmaMeaning58 => 'Ο Δημιουργός';

  @override
  String get asmaMeaning59 => 'The Restorer';

  @override
  String get asmaMeaning60 => 'Ο Δωρητής της Ζωής';

  @override
  String get asmaMeaning61 => 'The Taker of Life';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'The Self-Subsisting Sustainer';

  @override
  String get asmaMeaning64 => 'The Finder';

  @override
  String get asmaMeaning65 => 'The Glorious';

  @override
  String get asmaMeaning66 => 'Ο μόνος';

  @override
  String get asmaMeaning67 => 'The One';

  @override
  String get asmaMeaning68 => 'Το ένα που αναζητείται από όλους';

  @override
  String get asmaMeaning69 => 'Οι Ισχυροί';

  @override
  String get asmaMeaning70 => 'Ο Δημιουργός κάθε δύναμης';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'Η καθυστέρηση';

  @override
  String get asmaMeaning73 => 'Το πρώτο';

  @override
  String get asmaMeaning74 => 'The Last';

  @override
  String get asmaMeaning75 => 'The Manifest';

  @override
  String get asmaMeaning76 => 'Το κρυμμένο';

  @override
  String get asmaMeaning77 => 'Ο Κυβερνήτης';

  @override
  String get asmaMeaning78 => 'Ο Υπέρτατος';

  @override
  String get asmaMeaning79 => 'The Doer of Good';

  @override
  String get asmaMeaning80 => 'Ο Οδηγός της Μετάνοιας';

  @override
  String get asmaMeaning81 => 'Ο Εκδικητής';

  @override
  String get asmaMeaning82 => 'Ο Συγχωρητής';

  @override
  String get asmaMeaning83 => 'Ο Κλήμης';

  @override
  String get asmaMeaning84 => 'Ο Ιδιοκτήτης / Κυρίαρχος όλων';

  @override
  String get asmaMeaning85 => 'The Possessor of Majesty and Bounty';

  @override
  String get asmaMeaning86 => 'The Equitable One';

  @override
  String get asmaMeaning87 => 'The Gatherer';

  @override
  String get asmaMeaning88 => 'Ο πλούσιος';

  @override
  String get asmaMeaning89 => 'The Enricher';

  @override
  String get asmaMeaning90 => 'The Preventer of Harm';

  @override
  String get asmaMeaning91 => 'The Bringer of Harm';

  @override
  String get asmaMeaning92 => 'Ο Παροχέας των Παροχών';

  @override
  String get asmaMeaning93 => 'Το Φως';

  @override
  String get asmaMeaning94 => 'Ο Οδηγός';

  @override
  String get asmaMeaning95 => 'Ο Δημιουργός';

  @override
  String get asmaMeaning96 => 'Ο Αιώνιος';

  @override
  String get asmaMeaning97 => 'Ο κληρονόμος';

  @override
  String get asmaMeaning98 => 'Ο πιο δίκαιος οδηγός';

  @override
  String get asmaMeaning99 => 'The Patient One';
}
