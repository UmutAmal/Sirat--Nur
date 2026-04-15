// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Latin (`la`).
class AppLocalizationsLa extends AppLocalizations {
  AppLocalizationsLa([String locale = 'la']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Via lux islamica';

  @override
  String get home => 'Home';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Calendar';

  @override
  String get settings => 'Settings';

  @override
  String get nextPrayer => 'Next Prayer';

  @override
  String get prayerTimes => 'Prayer Times';

  @override
  String get continueReading => 'Continue Reading';

  @override
  String get getLifetimePro => 'Get Lifetime Pro';

  @override
  String get unlockTajweed => 'Unlock Tajweed & Advanced Features';

  @override
  String get prayerCalculation => 'Prayer Calculation';

  @override
  String get method => 'Calculation Method';

  @override
  String get madhab => 'Asr Juristic Method';

  @override
  String get surahs => 'Surahs';

  @override
  String get ayahs => 'Ayahs';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Ortus';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Maghrib';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Tempus $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Tempus est orare $prayerName.';
  }

  @override
  String get dataStorage => 'Data & Storage';

  @override
  String get clearCache => 'Clear Cache';

  @override
  String get cacheClearedSuccess => 'Cache cleared successfully';

  @override
  String get location => 'Location';

  @override
  String get language => 'Language';

  @override
  String get selectLanguage => 'Select Language';

  @override
  String get searchLanguage => 'Search 180+ languages...';

  @override
  String get systemDefault => 'System Default';

  @override
  String get currentLocation => 'Current Location (GPS)';

  @override
  String get locationServiceDisabled => 'Locus est religio erret.';

  @override
  String get locationPermissionDenied => 'Locus permissu negavit.';

  @override
  String get locationDetectionFailed =>
      'Non locum tuum deprehendere. Elige civitatem tincidunt vel rursum.';

  @override
  String citiesCount(String count) {
    return '$count urbes';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'Eventus inventus';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get appErrorOccurred => 'Error occurrit';

  @override
  String get appUnknownError => 'Error ignotus';

  @override
  String get quranLoadFailed =>
      'Quran contentus non oneratus. Quaeso, iterum conare.';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Renovare';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Delere';

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
  String get surah => 'Surah';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Page';

  @override
  String get reading => 'Reading';

  @override
  String get recitation => 'Recitation';

  @override
  String get translation => 'Translation';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Loading tafsir...';

  @override
  String get tafsirSourceLabel => 'Tafsir fons';

  @override
  String get tafsirNoSurahFound => 'Nulla tafsir inventa est pro surah hoc.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Nulla tafsir inventa est pro ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir non oneratus.';

  @override
  String get tafsirNoTextForAyah => 'No tafsir text for this ayah.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Download tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Loading tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir fons errorem HTTP $statusCode reddidit.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Electus fons tafsir ingressus nullos reddidit.';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get addBookmark => 'Add Bookmark';

  @override
  String get removeBookmark => 'Remove Bookmark';

  @override
  String get lastRead => 'Last Read';

  @override
  String get dailyZikr => 'Daily Zikr';

  @override
  String get duaMeaning1 =>
      'alii orant, \'domine, da nobis bona in hoc saeculo et in futuro, et a tormento ignis nos defende.\'';

  @override
  String get duaMeaning2 =>
      'Deus animam quamlibet non gravat plus quam ferre potest: quisque lucratur quidquid boni fecit et suum malum patitur: Dominus, si obliviscimur vel peccamus, non incumbere debemus. Domine, noli nos onerare, sicut ante nos gravasti. Domine, noli nos onerare plus quam nos sustinere. Ignosce nobis, dimitte nobis, et miserere nobis. Protector noster es tu, adiuva nos contra infideles.\'';

  @override
  String get duaMeaning3 =>
      '\'Domine, ne deviant corda nostra postquam tu duxisti nos\'. Da nobis misericordiam tuam.';

  @override
  String get duaMeaning4 =>
      'presta domine ut ego et progenies mea servet orationem . Domine, suscipe deprecationem meam.';

  @override
  String get duaMeaning5 =>
      'et cornu tuum humiliter in eis benigne depone et dic, \'Domine, miserere eorum, sicut me curabant cum essem parvulus.\'';

  @override
  String get duaMeaning6 =>
      'Deus excelsus, qui vere est in potestate. [Propheta], ante revelationem plene completam non ruere recitare sed dic, Domine, auge me in scientia!';

  @override
  String get duaMeaning7 =>
      'Dic [Prophet], \'Domine, dimitte et miserere: Tu es omnium clementissimus.\'';

  @override
  String get duaMeaning8 =>
      'qui orant, \'Domine, in coniugibus et prole nostro da nobis laetitiam\'. Bona nobis exempla fac his qui Tui conscii sunt.';

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
  String get hadithCollection => 'Hadith Collection';

  @override
  String get hadithBooks => 'Hadith Books';

  @override
  String get searchHadith => 'Quaerere Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Names of Allah';

  @override
  String get liveTv => 'Live TV';

  @override
  String get watchLive => 'Watch Live';

  @override
  String get streamError => 'Stream error';

  @override
  String get reload => 'Reload';

  @override
  String get openInYoutube => 'Apertum in YouTube';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Fasting';

  @override
  String get quranReading => 'Quran Reading';

  @override
  String get prayers => 'Prayers';

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
  String get weeklyProgress => 'Weekly Progress';

  @override
  String get monthlyProgress => 'Monthly Progress';

  @override
  String get statistics => 'Statistics';

  @override
  String get hijriCalendar => 'Hijri Calendar';

  @override
  String get gregorianCalendar => 'Gregorian Calendar';

  @override
  String get today => 'Today';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get specialDays => 'Special Days';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'islamica New Year';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadan';

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
  String get qiblaDirection => 'Qibla Direction';

  @override
  String get compass => 'Compass';

  @override
  String get degrees => 'degrees';

  @override
  String get north => 'North';

  @override
  String get qiblaFound => 'Qibla found!';

  @override
  String get turnDevice => 'Turn your device to face the Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Errorem circumde: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Sensorem Compass est in hac fabrica unavailable.';

  @override
  String get qiblaLocationRequiredTitle => 'Locus requisiti Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Pone actualem locum tuum antequam Qibla circumdabit utens directio accurate computari potest.';

  @override
  String get adhanNotificationChannelName => 'Adhan Suspendisse';

  @override
  String get adhanNotificationChannelDescription =>
      'Orationis tempus summis cum adhan sono.';

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
  String get theme => 'Theme';

  @override
  String get lightMode => 'Light Mode';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'About';

  @override
  String get version => 'Version';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get termsOfService => 'Terms of Service';

  @override
  String get contactUs => 'Contact Us';

  @override
  String get rateApp => 'Rate App';

  @override
  String get shareApp => 'Share App';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Reprehendo sicco $appName: Ultimus vivendi ratio islamica app! $url';
  }

  @override
  String get downloadManager => 'Download Procurator';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Download Complete';

  @override
  String get downloadFailed => 'Download Deficio';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'Non Internet Connection';

  @override
  String get checkConnection => 'Please check your connection';

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
  String get getStarted => 'Get Started';

  @override
  String get skip => 'Skip';

  @override
  String get next => 'Next';

  @override
  String get done => 'Done';

  @override
  String get onboarding1Title => 'Welcome to Sirat-ı Nur';

  @override
  String get onboarding1Desc =>
      'Your complete Islamic companion app for prayer times, Quran, and more';

  @override
  String get onboarding2Title => 'Prayer Times';

  @override
  String get onboarding2Desc => 'Accurate prayer times based on your location';

  @override
  String get onboarding3Title => 'Quran & More';

  @override
  String get onboarding3Desc =>
      'Read Quran, track your reading, and explore Islamic content';

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
  String get zikrCompletedMashAllah => 'Completur! Mashallah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah longe super omnem imperfectionem.';

  @override
  String get zikrMeaningAlhamdulillah => 'Laus Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah Maximus est.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Non est deus nisi Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Veniam peto Allah.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Non est virtus et non virtus nisi per Allah.';

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
  String get audioVoiceMisharyAlafasy => 'Male (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Male (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Masculus (Sudais)';

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
  String get diagnosticsNotSet => 'Non posuit';

  @override
  String get diagnosticsPrayerProfile => 'Oratio Profile';

  @override
  String get diagnosticsPrayerSource => 'Orationis auctoritati';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Consuetudo / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Mores manuales anguli (no fonte institutionali)';

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
    return '$count imaginum';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifestum legere defecit: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Localisation Locales';

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
      'Tabulae nubis desunt in Supabase; bundled fallback active';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Nubes juz metadata defuit; bundled fabrica activae fallback';

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
  String get dailyVerse => 'Quotidie Versus';

  @override
  String get todaysIbadah => 'Hodie Ibadah';

  @override
  String get quickAccess => 'Velox Access';

  @override
  String get assistant => 'Suffragium';

  @override
  String get places => 'Places';

  @override
  String get library => 'Library';

  @override
  String get analytics => 'Analytics';

  @override
  String get dailyDuas => 'Cotidiana Duas';

  @override
  String essentialDuas(String count) {
    return '$count essentiales duas';
  }

  @override
  String get duaUnavailableTitle => 'Verified duas non sunt available adhuc';

  @override
  String get duaUnavailableBody =>
      'Verificatur quotidie duas duas notae adhuc huic notae non synced. Coniunge ad fontem nubem ut duas in loco non ficta fallback oriatur, ut oneremus.';

  @override
  String get duaCategoryQuranic => 'Quranic dua';

  @override
  String get duaCategoryMorningEvening => 'Mane & Vespere';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Praesidium';

  @override
  String get duaCategoryBeginning => 'Initia';

  @override
  String get duaCategorySleep => 'Somnus';

  @override
  String get duaCategoryFoodDrink => 'Cibum & potum';

  @override
  String get duaCategoryForgiveness => 'remissio';

  @override
  String get duaCategoryHome => 'Home';

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
  String get islamicEducation => 'Education islamica';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Hadith Collections';

  @override
  String get hadithSourcePending => 'Verificatur fons pendente';

  @override
  String get hadithUnavailableTitle =>
      'Verified hadith collections are not available yet';

  @override
  String get hadithUnavailableBody =>
      'Hoc constructum adhuc pendet ab absque verificatione externa hadith cibarium. Hadith pasco debilis manet donec fons dataset syncedtur.';

  @override
  String get paywallUnlockAll =>
      'Reserare omnia features pro spirituali itinere';

  @override
  String get premiumProductUnavailable =>
      'Magnum productum est non available nunc. Mox iterum conare.';

  @override
  String get premiumPurchaseFailed =>
      'Emptio perfici non potuit. Quaeso, iterum conare.';

  @override
  String get paywallFeature1Title => 'Neural Suffragium Plus';

  @override
  String get paywallFeature1Desc => 'IMMODERATUS AI-Lorem Q &';

  @override
  String get paywallFeature2Title => 'Infinitus Offline';

  @override
  String get paywallFeature2Desc => 'Omnia recitationes';

  @override
  String get paywallFeature3Title => 'Exclusiva consilia';

  @override
  String get paywallFeature3Desc => 'Premium themes & fonts';

  @override
  String get paywallFeature4Title => 'Ad-Free';

  @override
  String get paywallFeature4Desc => 'Nulla index';

  @override
  String get paywallGetAccess => 'Get Vita Access - \$ 1.00';

  @override
  String get restorePurchases => 'Restitue emptionibus';

  @override
  String get zakatCalculator => 'Zakat Computus';

  @override
  String get zakatGold => 'Aurum (Altın)';

  @override
  String get zakatSilver => 'Argentum (Gümüş)';

  @override
  String get zakatCashBank => 'Cash / Bank';

  @override
  String get zakatBusiness => 'Negotium';

  @override
  String get zakatInvestments => 'Investments';

  @override
  String get zakatWeightGrams => 'Pondus (g)';

  @override
  String get zakatPricePerGram => 'Pretium / g *';

  @override
  String get zakatTotalAmount => 'Summa';

  @override
  String get zakatInventoryValue => 'Inventarium Precium';

  @override
  String get zakatDebts => 'Debita';

  @override
  String get zakatTotal => 'Totalis';

  @override
  String get calculateZakat => 'Computare Zakat';

  @override
  String get nisabNotReached => 'Nisab non attigit. Zakat non obligatur.';

  @override
  String get totalZakat => 'Totalis Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • BONA: $assets';
  }

  @override
  String get zakatGoldZakat => 'Aurum Zakat';

  @override
  String get zakatSilverZakat => 'Argentum Zakat';

  @override
  String get zakatCashZakat => 'Cash Zakat';

  @override
  String get zakatBusinessZakat => 'Negotium Zakat';

  @override
  String get zakatInvestmentZakat => 'Tractatus Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Cotidiana quaestionis modum perventum est. Phasellus ut Premium pro illimitata.';

  @override
  String get chatbotErrorMsg =>
      'Responsum generare non potui. Quaeso, iterum conare.';

  @override
  String get chatbotOfflinePrompt =>
      'Basis cognitionis islamicae verificatur offline adhuc curatur. Nunc fallback offline efficere potes, sed tantum epistulas tutas limitatas ostendes donec dataset fons paratus est.\n\nVelisne fallback efficiendi online?';

  @override
  String get chatbotOfflineSwitched =>
      'Offline fallback enabled. Verificata responsa localia islamica nondum parata sunt.';

  @override
  String get chatbotOfflineDownloadLabel => 'Admitte Offline Fallback';

  @override
  String get downloadPreparing => 'Preparing download...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Downloading surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Omnes surahs iam receptae sunt pro hoc recitatore.';

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
  String get resumeDownload => 'Proin Download';

  @override
  String get deleteDownloadedFiles => 'Delere Downloaded Lima';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Download cancellatum pro $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Download completur pro $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Download finita est pro $reciter cum $failed surahs defecit ($downloaded/$total receptae sunt).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Deleted offline files for $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Verified Quran audio fontes perpendat nunc.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Verificata Quran auditio sarcina incompleta est ($available/$total). refice nube semen, et iterum tenta.';
  }

  @override
  String get chatbotHint => 'Ask a question...';

  @override
  String get chatbotThinking => 'Thinking...';

  @override
  String get sukunMixerSubtitle => 'Natura & Qur\'an Mixer';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (Nature)';

  @override
  String get sukunRainOfMercy => 'Pluvia Misericordiae';

  @override
  String get sukunGardenOfPeace => 'Hortus pacis';

  @override
  String get sukunMidnightCalm => 'Mediae Tranquillae';

  @override
  String get sukunOceanTawheed => 'Oceanus Tawheed';

  @override
  String get sukunUnavailableTitle => 'Soundscapes unavailable';

  @override
  String get sukunUnavailableBody =>
      'Hoc constructum Sukun soundscape bona nondum requiritur.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Dies series';

  @override
  String get bestStreak => 'series optimus';

  @override
  String get chatbotCloudAiLabel => 'Nubes AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Admitte Offline Fallback';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Nubes API non felis. Quaeso switch ad LOCORUM AI.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Verificata moderatio localis islamica nondum praesto est. Vertas Cloud AI ad fontem responsa.';

  @override
  String get mosques => 'Mosques';

  @override
  String get halalFood => 'Halal Food';

  @override
  String get placesSearchArea => 'Hanc aream explora';

  @override
  String get nearbyMosques => 'Prope Mosques';

  @override
  String get islamicSchools => 'Scholae islamicae';

  @override
  String placesFoundCount(String count) {
    return '$count inventus est';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API Error: $statusCode';
  }

  @override
  String get placesNetworkError => 'Retis error. Quaeso, iterum conare.';

  @override
  String get placesLocationRequiredTitle => 'Locus requiratur';

  @override
  String get placesLocationRequiredBody =>
      'Locum primum tam prope meschitis, cibus halal, et schola islamica accurate investigari possunt.';

  @override
  String get placesMapTilesUnavailableTitle => 'Map tiles unavailable';

  @override
  String get placesMapTilesUnavailableBody =>
      'Fons tegularum chartarum certificatus non configuratur ad hoc adhuc constructum. Loca vicina adhuc onerare possunt ex loco servato tuo.';

  @override
  String get unknownPlaceName => 'Nomen ignotum';

  @override
  String get islamicPlaceFallback => 'Macometi Place';

  @override
  String get asmaMeaning1 => 'Beneficent';

  @override
  String get asmaMeaning2 => 'Misericors';

  @override
  String get asmaMeaning3 => 'Rex / Dominus aeterne';

  @override
  String get asmaMeaning4 => 'De Sanctissimo';

  @override
  String get asmaMeaning5 => 'Fons pacis';

  @override
  String get asmaMeaning6 => 'Dator Securitatis';

  @override
  String get asmaMeaning7 => 'Custos';

  @override
  String get asmaMeaning8 => 'Pretiosissimi / Fortissimi';

  @override
  String get asmaMeaning9 => 'Coegi';

  @override
  String get asmaMeaning10 => 'Maximi';

  @override
  String get asmaMeaning11 => 'Creator';

  @override
  String get asmaMeaning12 => 'Auctor Ordinis';

  @override
  String get asmaMeaning13 => 'Figura pulchritudinis';

  @override
  String get asmaMeaning14 => 'Remissio';

  @override
  String get asmaMeaning15 => 'Subduer';

  @override
  String get asmaMeaning16 => 'Dator omnium';

  @override
  String get asmaMeaning17 => 'The Sustainer';

  @override
  String get asmaMeaning18 => 'Apertor';

  @override
  String get asmaMeaning19 => 'Cognitor omnium';

  @override
  String get asmaMeaning20 => 'Constrictor';

  @override
  String get asmaMeaning21 => 'The Reliever';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'Largitor Honoris';

  @override
  String get asmaMeaning25 => 'Humiliator';

  @override
  String get asmaMeaning26 => 'Auditor omnium';

  @override
  String get asmaMeaning27 => 'Videtor omnium';

  @override
  String get asmaMeaning28 => 'Iudex';

  @override
  String get asmaMeaning29 => 'The Just';

  @override
  String get asmaMeaning30 => 'Subtilis';

  @override
  String get asmaMeaning31 => 'The Omnes Conscii';

  @override
  String get asmaMeaning32 => 'Providentiae';

  @override
  String get asmaMeaning33 => 'Magnificent';

  @override
  String get asmaMeaning34 => 'The Great Remission';

  @override
  String get asmaMeaning35 => 'Praemium gratitudinis';

  @override
  String get asmaMeaning36 => 'Altissimus';

  @override
  String get asmaMeaning37 => 'Maximi';

  @override
  String get asmaMeaning38 => 'Conservator';

  @override
  String get asmaMeaning39 => 'Nutritor';

  @override
  String get asmaMeaning40 => 'Computator';

  @override
  String get asmaMeaning41 => 'The Magnificat';

  @override
  String get asmaMeaning42 => 'Liberalis';

  @override
  String get asmaMeaning43 => 'Vigilans';

  @override
  String get asmaMeaning44 => 'Respondetor ad Orationem';

  @override
  String get asmaMeaning45 => 'The Omnes comprehendentes';

  @override
  String get asmaMeaning46 => 'Perfecte Sapientes';

  @override
  String get asmaMeaning47 => 'The Amandi';

  @override
  String get asmaMeaning48 => 'Gloriosissimo';

  @override
  String get asmaMeaning49 => 'The Resurrector';

  @override
  String get asmaMeaning50 => 'Testis';

  @override
  String get asmaMeaning51 => 'Veritas';

  @override
  String get asmaMeaning52 => 'Sufficiens commissarium';

  @override
  String get asmaMeaning53 => 'Possessor omnis fortitudinis';

  @override
  String get asmaMeaning54 => 'Fortis';

  @override
  String get asmaMeaning55 => 'Protectoris';

  @override
  String get asmaMeaning56 => 'De Laudibus';

  @override
  String get asmaMeaning57 => 'The EXISTIMATOR';

  @override
  String get asmaMeaning58 => 'Auctorem';

  @override
  String get asmaMeaning59 => 'Reparator';

  @override
  String get asmaMeaning60 => 'Dator Vitae';

  @override
  String get asmaMeaning61 => 'Susceptor vitae';

  @override
  String get asmaMeaning62 => 'In aeternum';

  @override
  String get asmaMeaning63 => 'Per se subsistens';

  @override
  String get asmaMeaning64 => 'Inventor';

  @override
  String get asmaMeaning65 => 'The Gloriosus';

  @override
  String get asmaMeaning66 => 'Solum unum';

  @override
  String get asmaMeaning67 => 'The One';

  @override
  String get asmaMeaning68 => 'The quaesitus ab omnibus';

  @override
  String get asmaMeaning69 => 'Validus';

  @override
  String get asmaMeaning70 => 'Creator omnis potentiae';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'De mora';

  @override
  String get asmaMeaning73 => 'The First';

  @override
  String get asmaMeaning74 => 'Ultimum';

  @override
  String get asmaMeaning75 => 'Manifestum est';

  @override
  String get asmaMeaning76 => 'The Occultum';

  @override
  String get asmaMeaning77 => 'Praefectus';

  @override
  String get asmaMeaning78 => 'The Summi';

  @override
  String get asmaMeaning79 => 'Faciens boni';

  @override
  String get asmaMeaning80 => 'Dux ad Paenitentiam';

  @override
  String get asmaMeaning81 => 'Ultor';

  @override
  String get asmaMeaning82 => 'Remissio';

  @override
  String get asmaMeaning83 => 'The Clement';

  @override
  String get asmaMeaning84 => 'Dominus omnium Dominus /';

  @override
  String get asmaMeaning85 => 'Possessor Maiestatis ac Numinis';

  @override
  String get asmaMeaning86 => 'The Aequabilis';

  @override
  String get asmaMeaning87 => 'Collector';

  @override
  String get asmaMeaning88 => 'The Rich One';

  @override
  String get asmaMeaning89 => 'The Enricher';

  @override
  String get asmaMeaning90 => 'Praeventor nocendi';

  @override
  String get asmaMeaning91 => 'auctor noxae';

  @override
  String get asmaMeaning92 => 'Contributor beneficiorum';

  @override
  String get asmaMeaning93 => 'The Light';

  @override
  String get asmaMeaning94 => 'Praefectus est';

  @override
  String get asmaMeaning95 => 'Auctorem';

  @override
  String get asmaMeaning96 => 'In aeternum';

  @override
  String get asmaMeaning97 => 'Hereditarius';

  @override
  String get asmaMeaning98 => 'The justissime Guide';

  @override
  String get asmaMeaning99 => 'The Patient One';
}
