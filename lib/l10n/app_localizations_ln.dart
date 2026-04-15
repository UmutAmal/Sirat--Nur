// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lingala (`ln`).
class AppLocalizationsLn extends AppLocalizations {
  AppLocalizationsLn([String locale = 'ln']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Islamic Way of Light';

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
  String get sunrise => 'Kobima ya moi';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Maghrib, oyo ezali';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Tango ya $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Ezali tango ya kosambela $prayerName.';
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
  String get locationServiceDisabled => 'Service ya esika ezali désactivé.';

  @override
  String get locationPermissionDenied => 'Ndingisa ya esika eboyamaki.';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'No results found';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get appErrorOccurred => 'Libunga moko esalemaki';

  @override
  String get appUnknownError => 'Libunga eyebani te';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Refresh';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Delete';

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
  String get tafsirSourceLabel => 'Tafsir source';

  @override
  String get tafsirNoSurahFound => 'No tafsir found for this surah.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'No tafsir found for ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir could not be loaded.';

  @override
  String get tafsirNoTextForAyah => 'No tafsir text for this ayah.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Downloading tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Loading tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir source returned an HTTP $statusCode error.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'The selected tafsir source returned no entries.';

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
      'basusu basambelaka, ‘Nkolo na biso, pesa biso bolamu na mokili mpe na sima, mpe batela biso na minyoko ya Mɔtɔ.’';

  @override
  String get duaMeaning2 =>
      'Nzambe azali kopesa molimo moko te kilo koleka oyo ekoki komema: moto na moto azali kozwa bolamu nyonso oyo asali, mpe azali konyokwama mabe na yango- ‘ Nkolo, kozwa biso na mokumba te soki tobosani to tosali mabunga. Nkolo, kopesa biso kilo te ndenge opesaki ba oyo bazalaki liboso na biso. Nkolo, kopesa biso kilo te koleka oyo tozali na makasi ya komema. Limbisa biso, limbisa biso, mpe yokela biso mawa. Ozali Mobateli na biso, yango wana salisá biso na bato oyo bazangi kondima.’';

  @override
  String get duaMeaning3 =>
      '‘Nkolo na biso, kotika te mitema na biso epengwisa sima na Yo kotambwisa biso. Pesa biso ngolu na Yo: Ozali Mopesi Toujours.';

  @override
  String get duaMeaning4 =>
      'Nkolo, pesa ngai ná bana na ngai tókoba losambo. Nkolo na biso, ndima bosenga na ngai.';

  @override
  String get duaMeaning5 =>
      'mpe kitisá lipapu na yo na komikitisa epai na bango na boboto mpe lobá ete, ‘Nkolo, yokela bango mawa, kaka ndenge bazalaki kobatela ngai ntango nazalaki moke.’';

  @override
  String get duaMeaning6 =>
      'atombwama Nzambe, ye oyo azali mpenza na bokonzi. [Mosakoli], kokende mbangumbangu te mpo na kotánga liboso ete emoniseli esila mpenza kasi loba ete, ‘Nkolo, bakisá ngai boyebi!’';

  @override
  String get duaMeaning7 =>
      'Loba [Mosakoli], ‘Nkolo, limbisa mpe yoka mawa: Ozali na mawa koleka nyonso.’';

  @override
  String get duaMeaning8 =>
      'baoyo bazali kobondela, ‘Nkolo na biso, pesá biso esengo kati na balongani mpe bana na biso. Sala biso bandakisa malamu na baye bayebi Yo’.';

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
  String get hadith => 'Hadith (Hadith) oyo';

  @override
  String get hadithCollection => 'Liboke ya ba Hadith';

  @override
  String get hadithBooks => 'Mikanda ya Hadith';

  @override
  String get searchHadith => 'Boluka Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna azali moto ya mayele';

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
  String get openInYoutube => 'Fungola na YouTube';

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
  String get prayerRemainingUnavailable => '-- .';

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
  String get islamicNewYear => 'Mobu ya sika ya Islam';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi, oyo azali';

  @override
  String get specialDayDateRamadanStart => '1 Mokolo ya Ramadan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Mokolo ya Ramadan';

  @override
  String get specialDayDateEidAlFitr => '1 Moto oyo azali Shawwal';

  @override
  String get specialDayDateEidAlAdha => '10 Zul Hijjah';

  @override
  String get specialDayDateIslamicNewYear => '1 Moharram, Mokonzi ya mboka';

  @override
  String get specialDayDateMawlidAnNabi =>
      '12 Rabi al-Awwal azali moto ya mayele';

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
    return 'Compass error: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Capteur ya boussole ezali te na appareil oyo.';

  @override
  String get adhanNotificationChannelName => 'Adhan Notifications';

  @override
  String get adhanNotificationChannelDescription =>
      'Prayer time alerts with adhan sound.';

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
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Download Complete';

  @override
  String get downloadFailed => 'Download Failed';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'No Internet Connection';

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
  String get zikrCompletedMashAllah => 'Esili! MashAllah azali moto ya mayele';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah azali mosika likolo ya bozangi kokoka nyonso.';

  @override
  String get zikrMeaningAlhamdulillah => 'Masanzoli nionso ezali ya Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah azali Monene.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Nzambe moko te azali kaka Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Nazali koluka bolimbisi ya Allah.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Nguya pe makasi ezali te longola se na nzela ya Allah.';

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
  String get audioVoiceSudais => 'Male (Sudais)';

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
  String get diagnosticsNotSet => 'Etiamaki te';

  @override
  String get diagnosticsPrayerProfile => 'Profil ya losambo';

  @override
  String get diagnosticsPrayerSource => 'Bokonzi ya losambo';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Ba angles personnalisés manuels (source institutionnelle te) .';

  @override
  String get diagnosticsCloudDriven => 'Lipata Etambwisami';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Biloko ya koyoka';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Biloko ya Audio ya Coran';

  @override
  String get diagnosticsAudioAssets => 'Biloko ya koyoka';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count ba fichiers';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifest read failed: $error';
  }

  @override
  String get diagnosticsLocalizationLocales =>
      'Ba Localisation ya Localisation';

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
  String get dailyVerse => 'Vɛrsɛ ya mokolo na mokolo';

  @override
  String get todaysIbadah => 'Ibadah ya lelo';

  @override
  String get quickAccess => 'Kokɔta Noki';

  @override
  String get assistant => 'Molandi';

  @override
  String get places => 'Bisika';

  @override
  String get library => 'Biblioteke';

  @override
  String get analytics => 'Analytique ya kosala makambo';

  @override
  String get dailyDuas => 'Duas ya mokolo na mokolo';

  @override
  String essentialDuas(String count) {
    return '$count essential duas';
  }

  @override
  String get duaUnavailableTitle => 'Ba duas vérifiés ezali nanu te';

  @override
  String get duaUnavailableBody =>
      'Ba duas ya mokolo na mokolo oyo e vérifié e synchronisé nanu na dispositif oyo te. Connecter na source ya cloud pona ko charger ba duas sourced au lieu ya fallback oyo e vérifié te.';

  @override
  String get duaCategoryQuranic => 'Dua ya Coran';

  @override
  String get duaCategoryMorningEvening => 'Tongo & Pokwa';

  @override
  String get duaCategoryTasbih => 'Tasbih, oyo azali';

  @override
  String get duaCategoryProtection => 'Bobateli';

  @override
  String get duaCategoryBeginning => 'Ebandeli';

  @override
  String get duaCategorySleep => 'Mpongi';

  @override
  String get duaCategoryFoodDrink => 'Bilei & Masanga';

  @override
  String get duaCategoryForgiveness => 'Bolimbisi';

  @override
  String get duaCategoryHome => 'Ndako';

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
  String get islamicEducation => 'Boyekoli ya Islam';

  @override
  String get sukunAudioTitle => 'Sukun Ba paysages sonores';

  @override
  String get hadithCollections => 'Ba Collections ya Hadith';

  @override
  String get hadithSourcePending => 'Source vérifiée ezali kozela';

  @override
  String get hadithUnavailableTitle =>
      'Ba collections ya hadith vérifié ezali nanu te';

  @override
  String get hadithUnavailableBody =>
      'Kotonga oyo etali kaka alimentation ya hadith ya libanda oyo e vérifié te. Navigation ya Hadith etikalaka désactivé kino ensemble ya ba données sourced ekozala synchronisée.';

  @override
  String get paywallUnlockAll =>
      'Fungola makambo nyonso mpo na mobembo na yo ya molimo';

  @override
  String get premiumProductUnavailable =>
      'Premium product is not available right now. Please try again later.';

  @override
  String get premiumPurchaseFailed =>
      'Purchase could not be completed. Please try again.';

  @override
  String get paywallFeature1Title => 'Assistant neuronaux Plus';

  @override
  String get paywallFeature1Desc => 'Q&A oyo esalemi na AI oyo ezangi ndelo';

  @override
  String get paywallFeature2Title => 'Ezali na ndelo te Offline';

  @override
  String get paywallFeature2Desc => 'Télécharger ba récitations nionso';

  @override
  String get paywallFeature3Title => 'Ba Designs ya Exclusifs';

  @override
  String get paywallFeature3Desc => 'Ba thèmes & ba fonts ya premium';

  @override
  String get paywallFeature4Title => 'Ad-Free na ba publicités';

  @override
  String get paywallFeature4Desc => 'Ba piblisite ya zéro';

  @override
  String get paywallGetAccess => 'Bozwa Bomoi mobimba ya Bokoti — \$1.00';

  @override
  String get restorePurchases => 'Zongisa Biloko oyo Basombaki';

  @override
  String get zakatCalculator => 'Calculateur ya Zakat';

  @override
  String get zakatGold => 'Wolo (Altın) .';

  @override
  String get zakatSilver => 'Palata (Gümüş) .';

  @override
  String get zakatCashBank => 'Mbongo ya mbongo / Banque';

  @override
  String get zakatBusiness => 'Mosala';

  @override
  String get zakatInvestments => 'Ba investissements';

  @override
  String get zakatWeightGrams => 'Kilo (g) .';

  @override
  String get zakatPricePerGram => 'Ntalo/g';

  @override
  String get zakatTotalAmount => 'Mosolo mobimba';

  @override
  String get zakatInventoryValue => 'Valeur ya Inventaire';

  @override
  String get zakatDebts => 'Banyongo';

  @override
  String get zakatTotal => 'Mobimba';

  @override
  String get calculateZakat => 'Bosala calcul ya Zakat';

  @override
  String get nisabNotReached =>
      'Nisab akómaki na lobɔkɔ te. Zaka ezali obligatoire te.';

  @override
  String get totalZakat => 'Zaka mobimba';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zaka ya wolo';

  @override
  String get zakatSilverZakat => 'Zaka ya palata';

  @override
  String get zakatCashZakat => 'Zaka ya mbongo';

  @override
  String get zakatBusinessZakat => 'Zaka ya mombongo';

  @override
  String get zakatInvestmentZakat => 'Zaka ya botiami mosolo';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Limite ya mituna ya mokolo na mokolo ekokisami. Bomatisa na Premium mpo na oyo ezangi ndelo.';

  @override
  String get chatbotErrorMsg => 'Nakokaki te kobimisa eyano. Svp meka lisusu.';

  @override
  String get chatbotOfflinePrompt =>
      'The verified offline Islamic knowledge base is still being curated. You can enable offline fallback now, but it will only show limited safe messages until the sourced dataset is ready.\n\nWould you like to enable offline fallback?';

  @override
  String get chatbotOfflineSwitched =>
      'Offline fallback enabled. Verified local Islamic answers are not ready yet.';

  @override
  String get chatbotOfflineDownloadLabel => 'Activer Fallback hors ligne';

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
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Download finished for $reciter with $failed failed surahs ($downloaded/$total downloaded).';
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
  String get sukunMixerSubtitle => 'Nature & Mosangani ya Coran';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (Bozalisi) .';

  @override
  String get sukunRainOfMercy => 'Mbula ya Mawa';

  @override
  String get sukunGardenOfPeace => 'Elanga ya Kimya';

  @override
  String get sukunMidnightCalm => 'Miti ya butu Kimya';

  @override
  String get sukunOceanTawheed => 'Tawheed ya Océan';

  @override
  String get sukunUnavailableTitle => 'Ba paysages sonores ezali te';

  @override
  String get sukunUnavailableBody =>
      'Build oyo ezali naino te na ba biens ya surface soundscape ya Sukun oyo esengeli.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Mokolo ya molongo';

  @override
  String get bestStreak => 'Meilleur streak';

  @override
  String get chatbotCloudAiLabel => 'AI ya lipata';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback ya sima';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Activer Fallback hors ligne';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API not configured. Please switch to Local AI.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Verified local Islamic guidance is not available yet. Switch to Cloud AI for sourced answers.';

  @override
  String get mosques => 'Ba Mosquées';

  @override
  String get halalFood => 'Bilei ya Halal';

  @override
  String get placesSearchArea => 'Luká esika oyo';

  @override
  String get nearbyMosques => 'Ba Mosquées oyo ezali pene wana';

  @override
  String get islamicSchools => 'Biteyelo ya Islam';

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
  String get placesNetworkError => 'Libunga ya réseau. Svp meka lisusu.';

  @override
  String get placesLocationRequiredTitle => 'Location required';

  @override
  String get placesLocationRequiredBody =>
      'Set a location first so nearby mosques, halal food, and Islamic schools can be searched accurately.';

  @override
  String get placesMapTilesUnavailableTitle => 'Map tiles unavailable';

  @override
  String get placesMapTilesUnavailableBody =>
      'A verified map tile source is not configured for this build yet. Nearby places can still load from your saved location.';

  @override
  String get unknownPlaceName => 'Kombo eyebani te';

  @override
  String get islamicPlaceFallback => 'Esika ya Islam';

  @override
  String get asmaMeaning1 => 'Moto oyo azali na litomba';

  @override
  String get asmaMeaning2 => 'Moto ya mawa';

  @override
  String get asmaMeaning3 => 'Mokonzi / Nkolo ya seko';

  @override
  String get asmaMeaning4 => 'Eleki Mosantu';

  @override
  String get asmaMeaning5 => 'Liziba ya Kimya';

  @override
  String get asmaMeaning6 => 'Mopesi ya Bobateli';

  @override
  String get asmaMeaning7 => 'Mobateli ya mobateli';

  @override
  String get asmaMeaning8 => 'Ba Taux / Ba Puissance koleka';

  @override
  String get asmaMeaning9 => 'Mosali ya makasi';

  @override
  String get asmaMeaning10 => 'Monene';

  @override
  String get asmaMeaning11 => 'Mozalisi';

  @override
  String get asmaMeaning12 => 'Mosali ya Ordre';

  @override
  String get asmaMeaning13 => 'Mobongisi ya Kitoko';

  @override
  String get asmaMeaning14 => 'Ba bolimbisi';

  @override
  String get asmaMeaning15 => 'Moto oyo azali kokitanya';

  @override
  String get asmaMeaning16 => 'Mopesi ya Nyonso';

  @override
  String get asmaMeaning17 => 'Moto oyo azali kobatela';

  @override
  String get asmaMeaning18 => 'Mofungoli';

  @override
  String get asmaMeaning19 => 'Moyebi ya Nyonso';

  @override
  String get asmaMeaning20 => 'Mopekisami';

  @override
  String get asmaMeaning21 => 'Mosungi';

  @override
  String get asmaMeaning22 => 'Bato ya Abaser';

  @override
  String get asmaMeaning23 => 'Motomboli';

  @override
  String get asmaMeaning24 => 'Mopesi ya lokumu';

  @override
  String get asmaMeaning25 => 'Moto ya kokitisa';

  @override
  String get asmaMeaning26 => 'Moyoki ya Nyonso';

  @override
  String get asmaMeaning27 => 'Momoni ya Nyonso';

  @override
  String get asmaMeaning28 => 'Mosambisi';

  @override
  String get asmaMeaning29 => 'Ba Sembo';

  @override
  String get asmaMeaning30 => 'Oyo ya Subtil';

  @override
  String get asmaMeaning31 => 'Bato nionso bayebi';

  @override
  String get asmaMeaning32 => 'Ba kobota';

  @override
  String get asmaMeaning33 => 'Ba Magnifiques';

  @override
  String get asmaMeaning34 => 'Molimbisi Monene';

  @override
  String get asmaMeaning35 => 'Mopesi mbano ya botondi';

  @override
  String get asmaMeaning36 => 'Oyo ya likolo koleka';

  @override
  String get asmaMeaning37 => 'Monene';

  @override
  String get asmaMeaning38 => 'Mobateli ya biloko';

  @override
  String get asmaMeaning39 => 'Mopesi bilei';

  @override
  String get asmaMeaning40 => 'Mosali ya mosolo';

  @override
  String get asmaMeaning41 => 'Ba Majestique';

  @override
  String get asmaMeaning42 => 'Bato ya motema malamu';

  @override
  String get asmaMeaning43 => 'Moto oyo azali kokengela';

  @override
  String get asmaMeaning44 => 'Moyano na losambo';

  @override
  String get asmaMeaning45 => 'Ba Kososola Nyonso';

  @override
  String get asmaMeaning46 => 'Ba mayele ya kokoka';

  @override
  String get asmaMeaning47 => 'Moto ya Bolingo';

  @override
  String get asmaMeaning48 => 'Moto ya Nkembo koleka';

  @override
  String get asmaMeaning49 => 'Mosekwi ya bato';

  @override
  String get asmaMeaning50 => 'Motatoli';

  @override
  String get asmaMeaning51 => 'Bosolo';

  @override
  String get asmaMeaning52 => 'Mobateli ya makambo nyonso oyo ekoki';

  @override
  String get asmaMeaning53 => 'Mozwi ya Bokasi Nyonso';

  @override
  String get asmaMeaning54 => 'Bato ya makasi';

  @override
  String get asmaMeaning55 => 'Mobateli oyo';

  @override
  String get asmaMeaning56 => 'Ba Kumisami';

  @override
  String get asmaMeaning57 => 'Motangi ya motuya';

  @override
  String get asmaMeaning58 => 'Mobandisi';

  @override
  String get asmaMeaning59 => 'Mozongisaka';

  @override
  String get asmaMeaning60 => 'Mopesi ya Bomoi';

  @override
  String get asmaMeaning61 => 'Mozwi ya bomoi';

  @override
  String get asmaMeaning62 => 'Ba oyo bazali na bomoi ya seko';

  @override
  String get asmaMeaning63 => 'Moto oyo azali ko se soutenir yango moko';

  @override
  String get asmaMeaning64 => 'Moluki';

  @override
  String get asmaMeaning65 => 'Bato ya Nkembo';

  @override
  String get asmaMeaning66 => 'Mozali Se moko';

  @override
  String get asmaMeaning67 => 'Moto oyo';

  @override
  String get asmaMeaning68 => 'Moto Oyo Nyonso Balukaka';

  @override
  String get asmaMeaning69 => 'Bato ya nguya';

  @override
  String get asmaMeaning70 => 'Mozalisi ya nguya nionso';

  @override
  String get asmaMeaning71 => 'Mosali ya mbangu';

  @override
  String get asmaMeaning72 => 'Motangi ya retard';

  @override
  String get asmaMeaning73 => 'Oyo ya liboso';

  @override
  String get asmaMeaning74 => 'Oyo ya suka';

  @override
  String get asmaMeaning75 => 'Ba Manifeste';

  @override
  String get asmaMeaning76 => 'Ba Bombami';

  @override
  String get asmaMeaning77 => 'Mokonzi ya mboka';

  @override
  String get asmaMeaning78 => 'Moto ya likolo';

  @override
  String get asmaMeaning79 => 'Mosali ya Malamu';

  @override
  String get asmaMeaning80 => 'Motambwisi ya boyamboli';

  @override
  String get asmaMeaning81 => 'Mozongisi mabe';

  @override
  String get asmaMeaning82 => 'Molimbisi';

  @override
  String get asmaMeaning83 => 'Ba Clément';

  @override
  String get asmaMeaning84 => 'Nkolo / Mokonzi ya Nyonso';

  @override
  String get asmaMeaning85 => 'Mozwi ya Majesty na Bounty';

  @override
  String get asmaMeaning86 => 'Oyo ya Equitable';

  @override
  String get asmaMeaning87 => 'Mosangisi';

  @override
  String get asmaMeaning88 => 'Moto ya Mozwi';

  @override
  String get asmaMeaning89 => 'Moto oyo azali ko enrichir';

  @override
  String get asmaMeaning90 => 'Mopekisi ya Mabe';

  @override
  String get asmaMeaning91 => 'Momemi ya Mabe';

  @override
  String get asmaMeaning92 => 'Mopesi ya Matomba';

  @override
  String get asmaMeaning93 => 'Mwinda';

  @override
  String get asmaMeaning94 => 'Motambwisi';

  @override
  String get asmaMeaning95 => 'Mobandisi';

  @override
  String get asmaMeaning96 => 'Moto ya seko';

  @override
  String get asmaMeaning97 => 'Mosangoli ya libula';

  @override
  String get asmaMeaning98 => 'Motambwisi oyo eleki sembo';

  @override
  String get asmaMeaning99 => 'Mobɛli oyo';
}
