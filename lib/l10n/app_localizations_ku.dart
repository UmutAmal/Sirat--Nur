// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kurdish (`ku`).
class AppLocalizationsKu extends AppLocalizations {
  AppLocalizationsKu([String locale = 'ku']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Riya Îslamî ya Ronahî';

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
  String get fajr => 'Fecr';

  @override
  String get sunrise => 'Rohilatî';

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
    return 'Dema $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Wextê duakirinê ye $prayerName.';
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
  String get locationServiceDisabled => 'Xizmeta cihan neçalak e.';

  @override
  String get locationPermissionDenied => 'Destûra cihan hat redkirin.';

  @override
  String get locationDetectionFailed =>
      'Cihê we nehat tespîtkirin. Ji kerema xwe bajarek bi destan hilbijêrin an dîsa biceribînin.';

  @override
  String citiesCount(String count) {
    return '$count bajar';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'Encam nehat dîtin';

  @override
  String get loading => 'Barkirin...';

  @override
  String get error => 'Error';

  @override
  String get appErrorOccurred => 'Çewtiyek derket';

  @override
  String get appUnknownError => 'Çewtiya nenas';

  @override
  String get quranLoadFailed =>
      'Naveroka Quranê nehat barkirin. Ji kerema xwe dîsa biceribîne.';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Refresh';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Jêbirin';

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
  String get tafsirLoading => 'Tefsîr tê barkirin...';

  @override
  String get tafsirSourceLabel => 'Çavkaniya Tefsîr';

  @override
  String get tafsirNoSurahFound => 'Ji bo vê sûreyê tefsîr nehat dîtin.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Ji bo ayah $ayah tefsîr nehat dîtin.';
  }

  @override
  String get tafsirLoadFailed => 'Tefsîr nehat barkirin.';

  @override
  String get tafsirNoTextForAyah => 'Ji bo vê ayetê nivîsek tefsîr tune.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Tefsîr tê daxistin $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Tefsîr tê barkirin $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Çavkaniya Tefsîrê xeletiyek HTTP $statusCode vegerand.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Çavkaniya tefsîrê ya hilbijartî tu têketin venegeriya.';

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
      'yên din jî dua dikin: “Rebbê me, tu li dinya û axretê xêrê bide me û me ji ezabê agir biparêze.”';

  @override
  String get duaMeaning2 =>
      'Xwedê ji barkirina tu canî zêdetir barê xwe bar nake: her kes çi qenciya ku kiriye bi dest dixe û xerabiya wî jî dikişîne- \"Ya Rebbî, heger em ji bîr bikin an xeletiyan bikin, me negire ser karê xwe.\" Ya Rebbî, çawa ku te li yên beriya me bar kir, li me bar neke. Ya Xudan, ji hêza me zêdetir barê me bar neke. Li me bibore, li me bibexşîne û li me were rehmê. Tu Parêzvanê me yî, vêca li hember kafiran alîkariya me bike.\'';

  @override
  String get duaMeaning3 =>
      '“Rebbê me, piştî ku te em rêberî kirin, dilê me nehêle. Rehma xwe bide me: Tu yî her û her î.';

  @override
  String get duaMeaning4 =>
      'Ya Xudan, bihêle ku ez û zuriyeta min nimêjê bikin. Rebbê me, daxwaza min qebûl bike.';

  @override
  String get duaMeaning5 =>
      'Û bi dilnizmî baskê xwe li hember wan bi dilovanî daxîne û bêje: \'Ya Rebbê, li wan were rehmê, çawa ku wan dema ku ez piçûk bûm, li min miqate bûn.\'';

  @override
  String get duaMeaning6 =>
      'Xwedayê ku bi rastî desthilatdar e, bilind be. [Pêxember], berî ku weht temam bibe, lezê nede xwendinê, lê bêje: \"Ya Rebbî, zanîna min zêde bike!\"';

  @override
  String get duaMeaning7 =>
      'Ji [Pêxember] re bêje: ‘Ya Rebbî, bibexşîne û rehmê bike: Tu ji hemûyan rehmtir î.';

  @override
  String get duaMeaning8 =>
      'yên ku dua dikin: \'Rebbê me, bi hevjîn û zarokên me şad bike. Ji wan ên ku haya wan ji te re heye, me bike nimûneyên baş.”';

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
  String get hadith => 'Hedîs';

  @override
  String get hadithCollection => 'Berhevoka Hedîs';

  @override
  String get hadithBooks => 'Pirtûkên Hedîsê';

  @override
  String get searchHadith => 'Hedîs bigerin';

  @override
  String get asmaulHusna => 'Esma-ul-Husna';

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
  String get openInYoutube => 'Di YouTube de vekin';

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
  String get islamicNewYear => 'Newroza Îslamî';

  @override
  String get mawlidAnNabi => 'Mewlid en-Nebî';

  @override
  String get specialDayDateRamadanStart => '1 Remezanê';

  @override
  String get specialDayDateLaylatAlQadr => '27 Remezanê';

  @override
  String get specialDayDateEidAlFitr => '1 Şewal';

  @override
  String get specialDayDateEidAlAdha => '10 Zul Hîce';

  @override
  String get specialDayDateIslamicNewYear => '1 Muherrem';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rebî El Ewel';

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
    return 'Çewtiya kompasê: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Sensor Compass li ser vê cîhazê ne berdest e.';

  @override
  String get qiblaLocationRequiredTitle => 'Cihê ji bo Qibla hewce ye';

  @override
  String get qiblaLocationRequiredBody =>
      'Berî ku hûn qursa Qibla bikar bînin cîhê xweya rastîn bicîh bikin da ku rêgez rast were hesibandin.';

  @override
  String get adhanNotificationChannelName => 'Azan Notifications';

  @override
  String get adhanNotificationChannelDescription =>
      'Dema nimêjê bi dengê azanê hişyar dike.';

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
    return 'Binihêrin $appName: Serlêdana herî dawî ya şêwaza jiyanê ya Îslamî! $url';
  }

  @override
  String get downloadManager => 'Gerînendeyê Daxistinê';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Daxistin Temam';

  @override
  String get downloadFailed => 'Daxistin Biserneket';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'Têkiliya Înternetê tune';

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
  String get zikrCompletedMashAllah => 'Temam kirin! MashAllah';

  @override
  String get zikrMeaningSubhanAllah => 'Allah ji her kêmasiyan pir e.';

  @override
  String get zikrMeaningAlhamdulillah => 'Hemd ji Xweda re ye.';

  @override
  String get zikrMeaningAllahuAkbar => 'Xwedayê herî mezin e.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Ji Xweda pêve tu Xweda tune.';

  @override
  String get zikrMeaningAstaghfirullah => 'Ez ji Xwedê lêborînê dixwazim.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Ji Xwedê pê ve tu hêz û hêz tune ye.';

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
  String get offlineDownloadManager => 'Rêvebirê Daxistinê negirêdayî';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Depoya cîhaza navxweyî azad bikin.';

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
  String get audioVoice => 'Dengê Deng';

  @override
  String get audioVoiceMisharyAlafasy => 'Mêr (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Mêr (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'nêr (Sûdaîs)';

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
  String get diagnosticsPrayerProfile => 'Profîla Nimêjê';

  @override
  String get diagnosticsPrayerSource => 'Desthilatiya Nimêjê';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Xwestî / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Goşeyên xwerû yên destan (çavkaniyek sazûmanî tune)';

  @override
  String get diagnosticsCloudDriven => 'Cloud Driven';

  @override
  String get diagnosticsAdhanAudioAssets => 'Azan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Qur\'an Audio Assets';

  @override
  String get diagnosticsAudioAssets => 'Amûrên Audio';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count pel';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Xwendina Manîfestê têk çû: $error';
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
      'Li Supabase tabloyên ewran winda ne; bundled fallback çalak';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz metadata wenda ye; paşvekêşana strukturel a hevgirtî ya çalak';

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
  String get dailyVerse => 'Ayeta rojane';

  @override
  String get todaysIbadah => 'Îbadeta îro ye';

  @override
  String get quickAccess => 'Gihîştina Zû';

  @override
  String get assistant => 'Alîkar';

  @override
  String get places => 'Places';

  @override
  String get library => 'Pirtûkxane';

  @override
  String get analytics => 'Analytics';

  @override
  String get dailyDuas => 'Rojane Duas';

  @override
  String essentialDuas(String count) {
    return '$count duayên bingehîn';
  }

  @override
  String get duaUnavailableTitle => 'Duayên verastkirî hîn ne berdest in';

  @override
  String get duaUnavailableBody =>
      'Duayên rojane yên pejirandî hîn bi vê cîhazê re nehatine hevdeng kirin. Bi çavkaniya ewr ve girêdin da ku li şûna paşverûyek nerastkirî duayên jêderkirî bar bikin.';

  @override
  String get duaCategoryQuranic => 'Dua Quranê';

  @override
  String get duaCategoryMorningEvening => 'Sibeh & Êvar';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Parastinî';

  @override
  String get duaCategoryBeginning => 'Destpêk';

  @override
  String get duaCategorySleep => 'Xew';

  @override
  String get duaCategoryFoodDrink => 'Xwarin & Vexwarin';

  @override
  String get duaCategoryForgiveness => 'Lêborînî';

  @override
  String get duaCategoryHome => 'Xane';

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
  String get islamicEducation => 'Perwerdehiya Îslamî';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Berhevokên Hedîsê';

  @override
  String get hadithSourcePending => 'Çavkaniya verastkirî li bendê ye';

  @override
  String get hadithUnavailableTitle =>
      'Berhevokên hedîsên tesdîqkirî hê ne berdest in';

  @override
  String get hadithUnavailableBody =>
      'Ev avahî hîna jî bi pêvek hedîseke derveyî ya nerastkirî ve girêdayî ye. Gera hedîsê neçalak dimîne heya ku danegehek jêderkirî were senkronîze kirin.';

  @override
  String get paywallUnlockAll =>
      'Ji bo rêwîtiya xweya giyanî hemî taybetmendiyan vekin';

  @override
  String get premiumProductUnavailable =>
      'Hilbera premium naha peyda nabe. Ji kerema xwe paşê dîsa biceribîne.';

  @override
  String get premiumPurchaseFailed =>
      'Kirîn nehat qedandin. Ji kerema xwe dîsa biceribîne.';

  @override
  String get paywallFeature1Title => 'Alîkarê Neural Plus';

  @override
  String get paywallFeature1Desc => 'Q&A bi AI-a bêsînor';

  @override
  String get paywallFeature2Title => 'Bêsînor Offline';

  @override
  String get paywallFeature2Desc => 'Hemî vegotinan dakêşin';

  @override
  String get paywallFeature3Title => 'Designs Exclusive';

  @override
  String get paywallFeature3Desc => 'Mijar û tîpên Premium';

  @override
  String get paywallFeature4Title => 'Bê reklam';

  @override
  String get paywallFeature4Desc => 'Reklamên sifir';

  @override
  String get paywallGetAccess => 'Gihîştina Jiyanê bistînin - 1,00 \$';

  @override
  String get restorePurchases => 'Restore Kirînên';

  @override
  String get zakatCalculator => 'Hesabê Zekatê';

  @override
  String get zakatGold => 'Zêr (Altın)';

  @override
  String get zakatSilver => 'Zîv (Gümüş)';

  @override
  String get zakatCashBank => 'Dirav / Bank';

  @override
  String get zakatBusiness => 'Dikan';

  @override
  String get zakatInvestments => 'Investments';

  @override
  String get zakatWeightGrams => 'Giranî (g)';

  @override
  String get zakatPricePerGram => 'Biha/g';

  @override
  String get zakatTotalAmount => 'Tevahiya Mîqdara';

  @override
  String get zakatInventoryValue => 'Nirxa envanterê';

  @override
  String get zakatDebts => 'Deyn';

  @override
  String get zakatTotal => 'Hemî';

  @override
  String get calculateZakat => 'Zekat hesab bike';

  @override
  String get nisabNotReached => 'Nisab negihiştiye. Zekat ne ferz e.';

  @override
  String get totalZakat => 'Tevahiya Zekatê';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Taybetmendî: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zekatê zêr';

  @override
  String get zakatSilverZakat => 'Zekatê zîv';

  @override
  String get zakatCashZakat => 'Cash Zekat';

  @override
  String get zakatBusinessZakat => 'Zekatê Karsaziyê';

  @override
  String get zakatInvestmentZakat => 'Zekatê veberhênanê';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Sînorê pirsa rojane gihîştiye. Ji bo bêsînor bi Premium nûve bikin.';

  @override
  String get chatbotErrorMsg =>
      'Min nekarî bersivek biafirînim. Ji kerema xwe dîsa biceribîne.';

  @override
  String get chatbotOfflinePrompt =>
      'Bingeha zanîna îslamî ya negirêdayî ya pejirandî hîn jî tê rêve kirin. Naha hûn dikarin paşvekêşana offline çalak bikin, lê ew ê tenê peyamên ewledar ên sînordar nîşan bide heya ku daneya jêder amade be.\n\nMa hûn dixwazin paşvekêşana offline çalak bikin?';

  @override
  String get chatbotOfflineSwitched =>
      'Pêşveçûna negirêdayî çalak bû. Bersivên îslamî yên herêmî yên verastkirî hîn ne amade ne.';

  @override
  String get chatbotOfflineDownloadLabel => 'Vegera negirêdayî çalak bike';

  @override
  String get downloadPreparing => 'Amadekirina daxistinê...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Sûreya $surah / $total tê daxistin';
  }

  @override
  String get downloadCompleted =>
      'Hemî sûre ji bo vî xwîner berê hatine daxistin.';

  @override
  String get offlineQuranAudioPacks => 'Offline Quran Audio Packs';

  @override
  String storedOnDeviceMb(String size) {
    return 'Stored on device: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total sûre hatin daxistin';
  }

  @override
  String get redownloadMissingRepair => 'Tamîrkirin / Daxistin winda ye';

  @override
  String get downloadAction => 'Download';

  @override
  String get resumeDownload => 'Resume Download';

  @override
  String get deleteDownloadedFiles => 'Pelên dakêşandî jêbirin';

  @override
  String get downloadCancelling => 'Betalkirin...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Daxistin ji bo $reciter hat betalkirin.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Daxistin ji bo $reciter qediya.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Daxistin ji bo $reciter bi $failed sûretên têkçûyî qediya ($downloaded/$total daxistî).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Deleted offline files for $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Çavkaniyên dengî yên Quranê yên rast niha ne berdest in.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Pakêta dengî ya Quranê ya verastkirî ne temam e ($available/$total). Tovê ewr nûve bikin û dîsa biceribînin.';
  }

  @override
  String get chatbotHint => 'Ask a question...';

  @override
  String get chatbotThinking => 'Thinking...';

  @override
  String get sukunMixerSubtitle => 'Xweza û Qur\'an Mikser';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (xweza)';

  @override
  String get sukunRainOfMercy => 'Barana Rehmetê';

  @override
  String get sukunGardenOfPeace => 'Baxçeyê Aştiyê';

  @override
  String get sukunMidnightCalm => 'Midnight Calm';

  @override
  String get sukunOceanTawheed => 'Ocean Tewhîd';

  @override
  String get sukunUnavailableTitle => 'Soundscapes ne berdest in';

  @override
  String get sukunUnavailableBody =>
      'Ev avahî hê jî hebûnên dengê Sukun-ê yên pêwîst nagire.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Rêzika rojê';

  @override
  String get bestStreak => 'Rêza herî baş';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'Cloud AI (Gemini) bikar bînin';

  @override
  String get chatbotDownloadLocalAi => 'Vegera negirêdayî çalak bike';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count maye';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API nehatiye mîheng kirin. Rêbernameya îslamî ya negirêdayî ya verastkirî hîna peyda nabe.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Rêbernameya îslamî ya herêmî ya pejirandî hîna peyda nabe. Ji bo bersivên çavkaniyê veguherînin Cloud AI.';

  @override
  String get mosques => 'Mizgeftan';

  @override
  String get halalFood => 'Xwarina Halal';

  @override
  String get placesSearchArea => 'Li vê herêmê bigerin';

  @override
  String get nearbyMosques => 'Mizgeftên Nêzîkî';

  @override
  String get islamicSchools => 'Dibistanên Îslamî';

  @override
  String placesFoundCount(String count) {
    return '$count hat dîtin';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km dûr';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Çewtiya API: $statusCode';
  }

  @override
  String get placesNetworkError =>
      'Çewtiya torê. Ji kerema xwe dîsa biceribîne.';

  @override
  String get placesLocationRequiredTitle => 'Cihê pêwîst';

  @override
  String get placesLocationRequiredBody =>
      'Pêşî cîhek destnîşan bikin da ku mizgeftên nêzîk, xwarina helal, û dibistanên îslamî rast werin lêgerîn.';

  @override
  String get placesMapTilesUnavailableTitle => 'Perçeyên nexşeyê ne berdest in';

  @override
  String get placesMapTilesUnavailableBody =>
      'Çavkaniyek nexşeya pejirandî ji bo vê çêkirinê hêj nehatiye mîheng kirin. Cihên nêzîk hîn jî dikarin ji cîhê weya tomarkirî bar bikin.';

  @override
  String get unknownPlaceName => 'Navê nenas';

  @override
  String get islamicPlaceFallback => 'Cihê Îslamî';

  @override
  String get asmaMeaning1 => 'Beneficent';

  @override
  String get asmaMeaning2 => 'Mihrîvan';

  @override
  String get asmaMeaning3 => 'Padîşah / Xudanê Herheyî';

  @override
  String get asmaMeaning4 => 'Pîroz';

  @override
  String get asmaMeaning5 => 'Çavkaniya Aştiyê';

  @override
  String get asmaMeaning6 => 'Derkerê Ewlekariyê';

  @override
  String get asmaMeaning7 => 'Guardian';

  @override
  String get asmaMeaning8 => 'Yê Bihagiran / Ya Herî Bihêz';

  @override
  String get asmaMeaning9 => 'The Compeller';

  @override
  String get asmaMeaning10 => 'Ya herî mezin';

  @override
  String get asmaMeaning11 => 'Afirînerê';

  @override
  String get asmaMeaning12 => 'Çêkerê Order';

  @override
  String get asmaMeaning13 => 'The Shaper of Beauty';

  @override
  String get asmaMeaning14 => 'The Forgiving';

  @override
  String get asmaMeaning15 => 'The Subduer';

  @override
  String get asmaMeaning16 => 'Derdarê Hemûyan';

  @override
  String get asmaMeaning17 => 'The Sustainer';

  @override
  String get asmaMeaning18 => 'Vekirî';

  @override
  String get asmaMeaning19 => 'Azanê Hemî';

  @override
  String get asmaMeaning20 => 'The Constrictor';

  @override
  String get asmaMeaning21 => 'The Reliever';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'Berdestê Rûmetê';

  @override
  String get asmaMeaning25 => 'Hemlîator';

  @override
  String get asmaMeaning26 => 'Guhdêrê Hemûyan';

  @override
  String get asmaMeaning27 => 'Dînêrê Hemî';

  @override
  String get asmaMeaning28 => 'Dadwer';

  @override
  String get asmaMeaning29 => 'The Just';

  @override
  String get asmaMeaning30 => 'Yê Nazik';

  @override
  String get asmaMeaning31 => 'Hemû Aware';

  @override
  String get asmaMeaning32 => 'Pêşî';

  @override
  String get asmaMeaning33 => 'The Magnificent';

  @override
  String get asmaMeaning34 => 'Bexşandina Mezin';

  @override
  String get asmaMeaning35 => 'Xelatdarê Spasdariyê';

  @override
  String get asmaMeaning36 => 'Ya herî bilind';

  @override
  String get asmaMeaning37 => 'Ya herî mezin';

  @override
  String get asmaMeaning38 => 'Parastin';

  @override
  String get asmaMeaning39 => 'The Nourisher';

  @override
  String get asmaMeaning40 => 'The Reckoner';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'The Generous';

  @override
  String get asmaMeaning43 => 'The Watchful One';

  @override
  String get asmaMeaning44 => 'Bersiva Duayê';

  @override
  String get asmaMeaning45 => 'Hemû Têgihîştinê';

  @override
  String get asmaMeaning46 => 'The Perfectly Wise';

  @override
  String get asmaMeaning47 => 'Yê Evîndar';

  @override
  String get asmaMeaning48 => 'Yê Herî Birûmet';

  @override
  String get asmaMeaning49 => 'Resurrector';

  @override
  String get asmaMeaning50 => 'Şahid';

  @override
  String get asmaMeaning51 => 'Rastî';

  @override
  String get asmaMeaning52 => 'Bawermendê Tev-Berê';

  @override
  String get asmaMeaning53 => 'Xwedanê Hemî Hêzê';

  @override
  String get asmaMeaning54 => 'The Forceful';

  @override
  String get asmaMeaning55 => 'Parêzkar';

  @override
  String get asmaMeaning56 => 'Pirsandin';

  @override
  String get asmaMeaning57 => 'Nirxker';

  @override
  String get asmaMeaning58 => 'Destpêker';

  @override
  String get asmaMeaning59 => 'Restorer';

  @override
  String get asmaMeaning60 => 'Benda Jiyanê';

  @override
  String get asmaMeaning61 => 'Karkerê Jiyanê';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'Pêşkêşê Xweserî';

  @override
  String get asmaMeaning64 => 'The Finder';

  @override
  String get asmaMeaning65 => 'The Glorious';

  @override
  String get asmaMeaning66 => 'Yek tenê';

  @override
  String get asmaMeaning67 => 'Yek';

  @override
  String get asmaMeaning68 => 'Yê ku Ji Hemî Digere';

  @override
  String get asmaMeaning69 => 'Hêzdar';

  @override
  String get asmaMeaning70 => 'Afirînerê hemû hêzê';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'Dereng';

  @override
  String get asmaMeaning73 => 'Ya yekem';

  @override
  String get asmaMeaning74 => 'Dawî';

  @override
  String get asmaMeaning75 => 'Manifest';

  @override
  String get asmaMeaning76 => 'The Veşartî';

  @override
  String get asmaMeaning77 => 'Parêzger';

  @override
  String get asmaMeaning78 => 'Yê Bilind';

  @override
  String get asmaMeaning79 => 'Karê qenciyê';

  @override
  String get asmaMeaning80 => 'Rêberê Tobekirinê';

  @override
  String get asmaMeaning81 => 'Avenger';

  @override
  String get asmaMeaning82 => 'Bexişandin';

  @override
  String get asmaMeaning83 => 'Clement';

  @override
  String get asmaMeaning84 => 'Xwedî / Serwerê Hemî';

  @override
  String get asmaMeaning85 => 'Xwedîyê Mezinahî û Xêrxwaziyê';

  @override
  String get asmaMeaning86 => 'Yek Equitable';

  @override
  String get asmaMeaning87 => 'The Gatherer';

  @override
  String get asmaMeaning88 => 'Yê Dewlemend';

  @override
  String get asmaMeaning89 => 'Dewlemendker';

  @override
  String get asmaMeaning90 => 'Pêşgiriya zirarê';

  @override
  String get asmaMeaning91 => 'The Bringer of Harm';

  @override
  String get asmaMeaning92 => 'Benda Feydeyan';

  @override
  String get asmaMeaning93 => 'Ronahî';

  @override
  String get asmaMeaning94 => 'Rêber';

  @override
  String get asmaMeaning95 => 'Destpêker';

  @override
  String get asmaMeaning96 => 'Yê Herheyî';

  @override
  String get asmaMeaning97 => 'Miras';

  @override
  String get asmaMeaning98 => 'Rêberê Herî Rast';

  @override
  String get asmaMeaning99 => 'Nexweş Yek';
}
