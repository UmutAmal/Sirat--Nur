// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Rundi (`rn`).
class AppLocalizationsRn extends AppLocalizations {
  AppLocalizationsRn([String locale = 'rn']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Inzira y\'umuco y\'ubuyisilamu';

  @override
  String get home => 'Muhira';

  @override
  String get quran => 'Korowani';

  @override
  String get qibla => 'Kibula';

  @override
  String get zikr => 'Zikiri';

  @override
  String get calendar => 'Ikirangamisi';

  @override
  String get settings => 'Amagenamiterere';

  @override
  String get nextPrayer => 'Isengesho rikurikira';

  @override
  String get prayerTimes => 'Igihe c\'amasengesho';

  @override
  String get continueReading => 'Bandanya usoma';

  @override
  String get getLifetimePro => 'Kuronka ubuzima bwose Pro';

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
  String get sunrise => 'Sunrise';

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
    return 'Time for $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'It is time to pray $prayerName.';
  }

  @override
  String get dataStorage => 'Amakuru n\'ububiko';

  @override
  String get clearCache => 'Kuraho ububiko';

  @override
  String get cacheClearedSuccess => 'Ububiko bwakuweho neza';

  @override
  String get location => 'Ikibanza';

  @override
  String get language => 'Ururimi';

  @override
  String get selectLanguage => 'Hitamwo ururimi';

  @override
  String get searchLanguage => 'Gushaka indimi 180+...';

  @override
  String get systemDefault => 'Sisitemu mburabuzi';

  @override
  String get currentLocation => 'Aho uri ubu (GPS)';

  @override
  String get locationServiceDisabled => 'Servisi y\'ahantu irazimye.';

  @override
  String get locationPermissionDenied => 'Uruhusha rw\'ahantu rwaranse.';

  @override
  String get locationDetectionFailed =>
      'Ntiyashobora kumenya aho uri. Hitamwo igisagara n\'amaboko canke wongere ugerageze.';

  @override
  String citiesCount(String count) {
    return '$count ibisagara';
  }

  @override
  String get search => 'Kurondera';

  @override
  String get searchHint => 'Kurondera...';

  @override
  String get noResults => 'Nta bisubizo vyabonetse';

  @override
  String get loading => 'Gushiramwo...';

  @override
  String get error => 'Ikosa';

  @override
  String get appErrorOccurred => 'Ikosa ryabaye';

  @override
  String get appUnknownError => 'Ikosa ritazwi';

  @override
  String get quranLoadFailed =>
      'Quran content could not be loaded. Please try again.';

  @override
  String get retry => 'Subira ugerageze';

  @override
  String get refreshAction => 'Gusubiramwo';

  @override
  String get cancel => 'Guhagarika';

  @override
  String get save => 'Gukiza';

  @override
  String get delete => 'Gusiba';

  @override
  String get edit => 'Gutunganya';

  @override
  String get close => 'Hafi';

  @override
  String get ok => 'VYIZA';

  @override
  String get yes => 'Egome';

  @override
  String get no => 'Oya';

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
  String get reading => 'Gusoma';

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
  String get tafsirCacheUnavailable =>
      'Verified tafsir is not available offline yet. Sync a sourced tafsir dataset before browsing.';

  @override
  String get bookmarks => 'Ibimenyetso';

  @override
  String get addBookmark => 'Add Bookmark';

  @override
  String get removeBookmark => 'Remove Bookmark';

  @override
  String get lastRead => 'Ubwanyuma gusoma';

  @override
  String get dailyZikr => 'Zikr y\'umusi';

  @override
  String get duaMeaning1 =>
      'others pray, ‘Our Lord, give us good in this world and in the Hereafter, and protect us from the torment of the Fire.’';

  @override
  String get duaMeaning2 =>
      'God does not burden any soul with more than it can bear: each gains whatever good it has done, and suffers whatever bad it has done. ‘Lord, do not take us to task if we forget or make mistakes. Lord, do not burden us as You burdened those before us. Lord, do not burden us with more than we have strength to bear. Pardon us, forgive us, and have mercy on us. You are our Protector, so help us against the disbelievers.’';

  @override
  String get duaMeaning3 =>
      '‘Our Lord, do not let our hearts deviate after You have guided us. Grant us Your mercy: You are the Ever Giving.';

  @override
  String get duaMeaning4 =>
      'Lord, grant that I and my offspring may keep up the prayer. Our Lord, accept my request.';

  @override
  String get duaMeaning5 =>
      'and lower your wing in humility towards them in kindness and say, ‘Lord, have mercy on them, just as they cared for me when I was little.’';

  @override
  String get duaMeaning6 =>
      'exalted be God, the one who is truly in control. [Prophet], do not rush to recite before the revelation is fully complete but say, ‘Lord, increase me in knowledge!’';

  @override
  String get duaMeaning7 =>
      'Say [Prophet], ‘Lord, forgive and have mercy: You are the most merciful of all.’';

  @override
  String get duaMeaning8 =>
      'those who pray, ‘Our Lord, give us joy in our spouses and offspring. Make us good examples to those who are aware of You’.';

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
  String get searchHadith => 'Search Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Names of Allah';

  @override
  String get liveTv => 'Televiziyo ibaho';

  @override
  String get watchLive => 'Watch Live';

  @override
  String get streamError => 'Ikosa ry\'uruzi';

  @override
  String get reload => 'Subiramwo';

  @override
  String get openInYoutube => 'Gufungura muri YouTube';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Fasting';

  @override
  String get quranReading => 'Quran Reading';

  @override
  String get playSurahAudio => 'Gukina amajwi ya surah';

  @override
  String get pauseSurahAudio => 'Hagarika amajwi ya surah';

  @override
  String get revelationMeccan => 'Umunyameka';

  @override
  String get revelationMedinan => 'Medina';

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
  String get monthlyProgress => 'Iterambere ry\'ukwezi';

  @override
  String get statistics => 'Imibare';

  @override
  String get hijriCalendar => 'Hijri Calendar';

  @override
  String get gregorianCalendar => 'Ikirangamisi ca Gregoire';

  @override
  String get today => 'Today';

  @override
  String get tomorrow => 'Ejo';

  @override
  String get yesterday => 'Ejo';

  @override
  String get specialDays => 'Special Days';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Islamic New Year';

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
  String get degrees => 'degre';

  @override
  String get north => 'Mu buraruko';

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
      'Compass sensor is unavailable on this device.';

  @override
  String get qiblaLocationRequiredTitle => 'Aho bisabwa kuri Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Tegura aho uri nyakuri imbere yo gukoresha ubusobanuro bwa Qibla kugira ngo iyo nzira ishobore kubarwa neza.';

  @override
  String get adhanNotificationChannelName => 'Amatangazo ya Adhan';

  @override
  String get adhanNotificationChannelDescription =>
      'Igihe c’amasengesho kimenyesha n’ijwi rya adhan.';

  @override
  String get notifications => 'Amatangazo';

  @override
  String get prayerNotifications => 'Amatangazo y\'amasengesho';

  @override
  String get enableNotifications => 'Gushoboza Imenyekanisha';

  @override
  String get notificationTime => 'Igihe co kumenyesha';

  @override
  String get beforePrayer => 'minutes before prayer';

  @override
  String get theme => 'Theme';

  @override
  String get lightMode => 'Light Mode';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get systemTheme => 'Insiguro ya Sisitemu';

  @override
  String get about => 'About';

  @override
  String get version => 'Version';

  @override
  String get privacyPolicy => 'Amabwirizwa y\'ubuzima bwite';

  @override
  String get termsOfService => 'Terms of Service';

  @override
  String get contactUs => 'Contact Us';

  @override
  String get rateApp => 'Guha igiciro iyi porogaramu';

  @override
  String get shareApp => 'Sangira iyi porogaramu';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Raba $appName: Porogarama y\'ubuzima bw\'ubuyisilamu y\'agaciro! $url';
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
  String get checkConnection => 'Ndagusavye usuzume uko uhuye';

  @override
  String get premium => 'Umushahara';

  @override
  String get upgradeToPro => 'Kuvugurura kuri Pro';

  @override
  String get proFeatures => 'Ibirango vya Pro';

  @override
  String get removeAds => 'Kuraho amatangazo';

  @override
  String get unlockAll => 'Gufungura ibirimwo vyose';

  @override
  String get exclusiveContent => 'Ibirimwo vyihariye';

  @override
  String get welcome => 'Muratumiwe';

  @override
  String get getStarted => 'Get Started';

  @override
  String get skip => 'Kurenga';

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
  String get onboarding2Desc =>
      'Ibihe vy\'amasengesho vy\'ukuri bishingiye aho uri .';

  @override
  String get onboarding3Title => 'Quran & More';

  @override
  String get onboarding3Desc =>
      'Read Quran, track your reading, and explore Islamic content';

  @override
  String get dhikrLibrary => 'Ububiko bw\'ibitabo bwa Dhikr';

  @override
  String get resetCounter => 'Reset Counter';

  @override
  String get changeTarget => 'Guhindura Intumbero';

  @override
  String get newTarget => 'Intumbero nshasha';

  @override
  String targetCount(Object target) {
    return 'Target: $target';
  }

  @override
  String get tapToCount => 'Tap to count';

  @override
  String get zikrCompletedMashAllah => 'Completed! MashAllah';

  @override
  String get zikrMeaningSubhanAllah => 'Allah is far above every imperfection.';

  @override
  String get zikrMeaningAlhamdulillah => 'All praise belongs to Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah is the Greatest.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'There is no god but Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'I seek Allah\'s forgiveness.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'There is no power and no strength except through Allah.';

  @override
  String get dailyChecklist => 'Urutonde rwo gusuzuma buri musi';

  @override
  String get qazaDebt => 'Qaza (Umwenda)';

  @override
  String get resetQazaData => 'Gusubiramwo amakuru ya Qaza';

  @override
  String get resetQazaDebtQuestion => 'Gusubiramwo umwenda wa Qaza?';

  @override
  String get rawatib => 'Rawatib';

  @override
  String get tahajjud => 'Tahajjud';

  @override
  String get dailyProgress => 'Daily Progress';

  @override
  String get mandatoryPrayers => 'Amasengesho y\'Itegeko';

  @override
  String get sunnahAndOthers => 'Sunnah n\'ibindi';

  @override
  String get spiritualGrowth => 'Gukura mu vy\'impwemu';

  @override
  String get mandatoryDuty => 'Inshingano y\'Itegeko';

  @override
  String get totalPrayers => 'Amasengesho yose hamwe';

  @override
  String get prayerDebt => 'Ideni ry\'Isengesho';

  @override
  String get fastingDebt => 'Ideni ryo kwisonzesha';

  @override
  String get reset => 'Gusubiramwo';

  @override
  String get days => 'Imisi';

  @override
  String get premiumIntegrity => 'Ubunyankamugayo bwa mbere';

  @override
  String get recheckPremium => 'Recheck Premium Status';

  @override
  String get syncStore => 'Sync with the store to confirm your entitlement.';

  @override
  String get checkingPremium => 'Gusuzuma uko premium imeze...';

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
      'Umucungerezi wo gukuraho kuri interineti';

  @override
  String get manageDatasets =>
      'Gucungera amajwi menshi atari kuri interineti n\'amapaki y\'amakuru.';

  @override
  String get freeStorage => 'Gufungura ububiko bw’ibikoresho vyo mu mutima.';

  @override
  String get quranIntegrity => 'Ubunyankamugayo bwa Korowani';

  @override
  String get checkQuranDb => 'Suzuma urutonde rw\'amakuru rwa Korowani';

  @override
  String get verifyQuranContent => 'Suzuma amasura 114 n’ama aya 6236.';

  @override
  String get checkingQuranDb => 'Checking Quran database...';

  @override
  String get okLabel => 'VYIZA';

  @override
  String get incomplete => 'Ntibitunganye';

  @override
  String get notSeeded => 'Ntiyatewe imbuto';

  @override
  String get quranDbStatus => 'Quran Database Status';

  @override
  String statusLabel(Object status) {
    return 'Status: $status';
  }

  @override
  String surahsCount(Object count) {
    return 'Amasura: $count (vyitezwe 114)';
  }

  @override
  String ayahsCount(Object count) {
    return 'Amayaya: $count (vyitezwe 6236)';
  }

  @override
  String missingArabic(Object count) {
    return 'Ikirabu kibuze: $count';
  }

  @override
  String missingTurkish(Object count) {
    return 'Igituruki kibuze: $count';
  }

  @override
  String dbVersion(Object version) {
    return 'Verisiyo ya DB: $version';
  }

  @override
  String dbPath(Object path) {
    return 'Inzira: $path';
  }

  @override
  String quranCheckFailed(Object error) {
    return 'Quran check failed: $error';
  }

  @override
  String get audioVoice => 'Ijwi ry\'amajwi';

  @override
  String get audioVoiceMisharyAlafasy => 'Male (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Male (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Male (Sudais)';

  @override
  String get fajrAngle => 'Imfuruka ya Fajr';

  @override
  String get ishaAngle => 'Isha Imfuruka';

  @override
  String get qiblaCalibration => 'Qibla Calibration';

  @override
  String get compassSmoothing => 'Busole yorosha';

  @override
  String get reduceSensorJitter =>
      'Gabanya jitter y’ibimenyetso kugira ngo urushinge rube rudahinduka.';

  @override
  String get calibrationOffset => 'Gupima';

  @override
  String currentOffset(Object offset) {
    return 'Ubu: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Tunganya nimba busole yawe ikeneye gukosorwa n’amaboko. Ivyiza birazunguruka nk’uko isaha igenda.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Subira ukoreshe uburyo bwo gutegura bwa mbere.';

  @override
  String get diagnostics => 'Diagnostics';

  @override
  String get diagnosticsNotSet => 'Not set';

  @override
  String get diagnosticsPrayerProfile => 'Umwirondoro w\'amasengesho';

  @override
  String get diagnosticsPrayerSource => 'Ububasha bw\'amasengesho';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Umugenzo / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Imfuruka zisanzwe z\'amaboko (nta nkomoko y\'inzego)';

  @override
  String diagnosticsPrayerHybridSource(String sourceName, String madhab) {
    return '$sourceName uburyo n\'ukoresha-yatowe $madhab Asr gushinga';
  }

  @override
  String diagnosticsPrayerRegionalFallbackSource(String sourceName) {
    return 'Gusubira inyuma mu karere hakoreshejwe $sourceName. Wemeze ibihe vy\'amasengesho n\'umusigiti wawe canke ubuyobozi bw\'idini.';
  }

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
      'Imbonerahamwe z\'igicu zibuze muri Supabase; gusubira inyuma gukora';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Igicu juz amakuru y’imbere arabura; gusubira inyuma kw\'imibumbe gukora';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Cloud structural check failed: $error';
  }

  @override
  String get healthCheckDesc =>
      'Gukoresha ivyigwa vy\'ubuzima no kuraba uko sisitemu imeze.';

  @override
  String get qiblaAligned => 'Qibla itunganye';

  @override
  String get rotateToFindQibla => 'Hindukiza kugira uronke Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Calibration required. Rotate device in figure-8.';

  @override
  String get dailyVerse => 'Daily Verse';

  @override
  String get dailyVerseUnavailableTitle => 'Daily verse unavailable';

  @override
  String get dailyVerseUnavailableBody =>
      'Verified daily verse content is not configured for this build yet. Connect to the cloud source or sync a verified cache before browsing.';

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
  String get analytics => 'Isesengura';

  @override
  String get dailyDuas => 'Daily Duas';

  @override
  String essentialDuas(String count) {
    return '$count essential duas';
  }

  @override
  String get duaUnavailableTitle => 'Verified duas are not available yet';

  @override
  String get duaUnavailableBody =>
      'Verified daily duas have not been synced to this device yet. Connect to the cloud source to load sourced duas instead of an unverified fallback.';

  @override
  String get duaCategoryQuranic => 'Quranic dua';

  @override
  String get duaCategoryMorningEvening => 'Morning & Evening';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Protection';

  @override
  String get duaCategoryBeginning => 'Beginnings';

  @override
  String get duaCategorySleep => 'Sleep';

  @override
  String get duaCategoryFoodDrink => 'Food & Drink';

  @override
  String get duaCategoryForgiveness => 'Forgiveness';

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
  String get islamicEducation => 'Uburezi bw\'ubuyisilamu';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Hadith Collections';

  @override
  String get hadithSourcePending => 'Verified source pending';

  @override
  String get hadithUnavailableTitle =>
      'Amakoraniro ya hadithi yagenzuwe ntabwo araboneka .';

  @override
  String get hadithUnavailableBody =>
      'Ivyo vyubatswe biracari bishingiye ku ngaburo ya hadithi yo hanze itagenzuwe. Gusura Hadith biguma bizimye gushika amakuru y’inkomoko ahujwe.';

  @override
  String get paywallUnlockAll =>
      'Unlock all features for your spiritual journey';

  @override
  String get premiumProductUnavailable =>
      'Premium product is not available right now. Please try again later.';

  @override
  String get premiumPurchaseFailed =>
      'Gugura ntikwashoboye kurangira. Ndagusavye wongere ugerageze.';

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
      'Ubumenyi bw’ubuyisilamu bwagenzuwe butari ku murongo buracariko buratunganirizwa. Ushobora gukoresha gusubira inyuma ubu, ariko bizokwerekana gusa ubutumwa butekanye gushika urutonde rw\'amakuru rwiteguye.\n\nWoba wipfuza gukoresha fallback itari mu murongo?';

  @override
  String get chatbotOfflineSwitched =>
      'Gusubira inyuma bitari ku murongo vyashobojwe. Inyishu z’ubuyisilamu zo mu karere zigenzuwe ntizirategurwa.';

  @override
  String get chatbotOfflineDownloadLabel =>
      'Gushoboza gusubira inyuma bitari kuri interineti';

  @override
  String get downloadPreparing => 'Gutegura gukuraho...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Gukuraho sura $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Ama surah yose amaze gukurwako kuri uyu musomyi.';

  @override
  String get offlineQuranAudioPacks =>
      'Amajwi ya Korowani atari kuri interineti';

  @override
  String storedOnDeviceMb(String size) {
    return 'Stored on device: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total amashura yakuwe kuri interineti';
  }

  @override
  String get redownloadMissingRepair => 'Gusana / Gukuraho Bibuze';

  @override
  String get downloadAction => 'Gukurura';

  @override
  String get resumeDownload => 'Resume Download';

  @override
  String get deleteDownloadedFiles => 'Gukuraho amadosiye yavanwe';

  @override
  String get cancelDownloadAction => 'Gukuraho gukuraho';

  @override
  String get downloadCancelling => 'Gusubiramwo...';

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
  String get quranAudioPlaybackErrorWithConnectionHint =>
      'Gusubiramwo amajwi vyananiwe. Ndagusavye usuzume uko uhuye.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Verified Quran audio pack is incomplete ($available/$total). Try again after the audio catalog is updated.';
  }

  @override
  String get chatbotHint => 'Ask a question...';

  @override
  String get chatbotThinking => 'Thinking...';

  @override
  String get sukunMixerSubtitle => 'Kamere n\'Ivanga rya Korowani';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (Ibidukikije)';

  @override
  String get sukunRainOfMercy => 'Imvura y\'ikigongwe';

  @override
  String get sukunGardenOfPeace => 'Ubusitani bw\'amahoro';

  @override
  String get sukunMidnightCalm => 'Ijoro ry\'ijoro ry\'ugutuza';

  @override
  String get sukunOceanTawheed => 'Tawhied y\'ikiyaga';

  @override
  String get sukunUnavailableTitle => 'Amajwi ntaboneka';

  @override
  String get sukunUnavailableBody =>
      'Iyi nyubakwa ntiyigeze irimwo ibintu bisabwa vy’amajwi ya Sukun.';

  @override
  String get prayerCompletion => 'Gusozera amasengesho';

  @override
  String get streaks => 'Imirongo';

  @override
  String get dayStreak => 'Umunsi';

  @override
  String get bestStreak => 'Best streak';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'Koresha igicu AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Enable Offline Fallback';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'API y\'igicu ntiyatunganijwe. Impanuro z’ubuyisilamu zagenzuwe zitari ku rubuga ntiziraboneka.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Ubuyobozi bw’ubuyisilamu bwo mu karere bwagenzuwe ntiburaboneka. Hindura kuri Cloud AI kugira ngo ubone inyishu zikomoka.';

  @override
  String get mosques => 'Mosques';

  @override
  String get halalFood => 'Halal Food';

  @override
  String get placesSearchArea => 'Rondera aha hantu';

  @override
  String get nearbyMosques => 'Imisigiti iri hafi';

  @override
  String get islamicSchools => 'Islamic Schools';

  @override
  String placesFoundCount(String count) {
    return '$count vyabonetse';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km away';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Ikosa rya API: $statusCode';
  }

  @override
  String get placesNetworkError =>
      'Ikosa ry\'urubuga. Ndagusavye wongere ugerageze.';

  @override
  String get placesLocationRequiredTitle => 'Aho hantu hakenewe';

  @override
  String get placesLocationRequiredBody =>
      'Ubanze ushireho ahantu kugira ngo imisigiti iri hafi, ivyokurya vya halal, n’amashure y’ubuyisilamu bishobore gushakishwa neza.';

  @override
  String get placesMapTilesUnavailableTitle => 'Amabuye y\'ikarata ntaboneka';

  @override
  String get placesMapTilesUnavailableBody =>
      'Inkomoko y\'ikarita yagenzuwe ntiyatunganijwe kuri iyi nyubakwa. Ibibanza vyo hafi birashobora gufunguka bivuye aho wabitse.';

  @override
  String get placesDataSourceUnavailableTitle => 'Amakuru y\'ahantu ntaboneka';

  @override
  String get placesDataSourceUnavailableBody =>
      'Iherezo ry\'amakuru y\'ibibanza ryagenzuwe ntiryatunganijwe kuri iyi nyubakwa. Gushinga PLACES_OVERPASS_API_URL ku mugenzuzi wemewe canke umutanga imbere yo gushoboza ubushakashatsi buri hafi.';

  @override
  String get unknownPlaceName => 'Unknown Name';

  @override
  String get islamicPlaceFallback => 'Islamic Place';

  @override
  String get asmaMeaning1 => 'The Beneficent';

  @override
  String get asmaMeaning2 => 'The Merciful';

  @override
  String get asmaMeaning3 => 'The King / Eternal Lord';

  @override
  String get asmaMeaning4 => 'The Most Holy';

  @override
  String get asmaMeaning5 => 'The Source of Peace';

  @override
  String get asmaMeaning6 => 'The Giver of Security';

  @override
  String get asmaMeaning7 =>
      'The Watchful Guardian, who observes and safeguards all creation.';

  @override
  String get asmaMeaning8 => 'The Precious / The Most Mighty';

  @override
  String get asmaMeaning9 =>
      'The Restorer and Irresistible, whose will prevails with perfect power.';

  @override
  String get asmaMeaning10 => 'The Greatest';

  @override
  String get asmaMeaning11 => 'The Creator';

  @override
  String get asmaMeaning12 => 'The Maker of Order';

  @override
  String get asmaMeaning13 => 'The Shaper of Beauty';

  @override
  String get asmaMeaning14 => 'The Forgiving';

  @override
  String get asmaMeaning15 => 'The Subduer';

  @override
  String get asmaMeaning16 => 'The Giver of All';

  @override
  String get asmaMeaning17 => 'The Sustainer';

  @override
  String get asmaMeaning18 => 'The Opener';

  @override
  String get asmaMeaning19 => 'The Knower of All';

  @override
  String get asmaMeaning20 =>
      'The Withholder, who narrows and restrains by wisdom.';

  @override
  String get asmaMeaning21 =>
      'The Expander, who opens, eases, and grants abundance by wisdom.';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'The Bestower of Honour';

  @override
  String get asmaMeaning25 => 'The Humiliator';

  @override
  String get asmaMeaning26 => 'The Hearer of All';

  @override
  String get asmaMeaning27 => 'The Seer of All';

  @override
  String get asmaMeaning28 => 'The Judge';

  @override
  String get asmaMeaning29 => 'The Just';

  @override
  String get asmaMeaning30 => 'The Subtle One';

  @override
  String get asmaMeaning31 => 'The All Aware';

  @override
  String get asmaMeaning32 => 'The Forebearing';

  @override
  String get asmaMeaning33 => 'The Magnificent';

  @override
  String get asmaMeaning34 => 'The Great Forgiver';

  @override
  String get asmaMeaning35 => 'The Rewarder of Thankfulness';

  @override
  String get asmaMeaning36 => 'The Highest';

  @override
  String get asmaMeaning37 => 'The Greatest';

  @override
  String get asmaMeaning38 => 'The Preserver';

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
  String get asmaMeaning44 => 'The Responder to Prayer';

  @override
  String get asmaMeaning45 => 'The All Comprehending';

  @override
  String get asmaMeaning46 => 'The Perfectly Wise';

  @override
  String get asmaMeaning47 => 'The Loving One';

  @override
  String get asmaMeaning48 => 'The Most Glorious One';

  @override
  String get asmaMeaning49 => 'The Resurrector';

  @override
  String get asmaMeaning50 => 'The Witness';

  @override
  String get asmaMeaning51 => 'The Truth';

  @override
  String get asmaMeaning52 => 'The All-Sufficient Trustee';

  @override
  String get asmaMeaning53 => 'The Possessor of All Strength';

  @override
  String get asmaMeaning54 => 'The Forceful';

  @override
  String get asmaMeaning55 => 'The Protector';

  @override
  String get asmaMeaning56 => 'The Praised';

  @override
  String get asmaMeaning57 => 'The Appraiser';

  @override
  String get asmaMeaning58 => 'The Originator';

  @override
  String get asmaMeaning59 => 'The Restorer';

  @override
  String get asmaMeaning60 => 'The Giver of Life';

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
  String get asmaMeaning66 => 'The Only One';

  @override
  String get asmaMeaning67 => 'The One';

  @override
  String get asmaMeaning68 => 'The One Sought by All';

  @override
  String get asmaMeaning69 => 'The Powerful';

  @override
  String get asmaMeaning70 => 'The Creator of all power';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'The Delayer';

  @override
  String get asmaMeaning73 => 'The First';

  @override
  String get asmaMeaning74 => 'The Last';

  @override
  String get asmaMeaning75 => 'The Manifest';

  @override
  String get asmaMeaning76 => 'The Hidden';

  @override
  String get asmaMeaning77 =>
      'The Protecting Patron, who governs and cares for all creation.';

  @override
  String get asmaMeaning78 => 'The Supreme One';

  @override
  String get asmaMeaning79 => 'The Doer of Good';

  @override
  String get asmaMeaning80 => 'The Guide to Repentance';

  @override
  String get asmaMeaning81 => 'The Avenger';

  @override
  String get asmaMeaning82 => 'The Forgiver';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'The Owner / Sovereign of All';

  @override
  String get asmaMeaning85 => 'The Possessor of Majesty and Bounty';

  @override
  String get asmaMeaning86 => 'The Equitable One';

  @override
  String get asmaMeaning87 => 'The Gatherer';

  @override
  String get asmaMeaning88 => 'The Rich One';

  @override
  String get asmaMeaning89 => 'The Enricher';

  @override
  String get asmaMeaning90 => 'The Preventer of Harm';

  @override
  String get asmaMeaning91 => 'The Bringer of Harm';

  @override
  String get asmaMeaning92 => 'The Bestower of Benefits';

  @override
  String get asmaMeaning93 => 'The Light';

  @override
  String get asmaMeaning94 => 'The Guider';

  @override
  String get asmaMeaning95 => 'The Originator';

  @override
  String get asmaMeaning96 => 'The Everlasting One';

  @override
  String get asmaMeaning97 => 'The Inheritor';

  @override
  String get asmaMeaning98 => 'The Most Righteous Guide';

  @override
  String get asmaMeaning99 =>
      'The Patient, who does not hasten punishment and acts with perfect forbearance.';
}
