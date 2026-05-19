// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Abkhazian (`ab`).
class AppLocalizationsAb extends AppLocalizations {
  AppLocalizationsAb([String locale = 'ab']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Аԥсылмантә лашара амҩа';

  @override
  String get home => 'Аҩны';

  @override
  String get quran => 'Аҟәырҟан';

  @override
  String get qibla => 'Ақыбла';

  @override
  String get zikr => 'Азикр';

  @override
  String get calendar => 'Амзар';

  @override
  String get settings => 'Архиарақәа';

  @override
  String get nextPrayer => 'Анаҩстәи аҳәара';

  @override
  String get prayerTimes => 'Аныҳәара аамҭақәа';

  @override
  String get continueReading => 'Аԥхьара ацҵара';

  @override
  String get getLifetimePro => 'Ԥсраҽнынӡа Про ааҳхәап';

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
  String get dataStorage => 'Data & Storage';

  @override
  String get clearCache => 'Clear Cache';

  @override
  String get cacheClearedSuccess => 'Акеш қәҿиарала ирыцқьоуп';

  @override
  String get location => 'Иахьыҟоу аҭыԥ';

  @override
  String get language => 'Абызшәа';

  @override
  String get selectLanguage => 'Абызшәа алхтәуп';

  @override
  String get searchLanguage => '180+ бызшәала аԥшаара...';

  @override
  String get systemDefault => 'Асистема ишыҟоу еиԥш';

  @override
  String get currentLocation => 'Уажәтәи аҭыԥ (GPS)';

  @override
  String get locationServiceDisabled => 'Аҭыԥ амаҵзура аҿыхуп.';

  @override
  String get locationPermissionDenied => 'Аҭыԥ азы азин мап ацәкуп.';

  @override
  String get locationDetectionFailed =>
      'Уахьыҟоу аилкаара ауам. Ҳаҳәоит, ақалақь напыла иалышәх ма даҽазнык шәҽазышәшәа.';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => 'Аԥшаара';

  @override
  String get searchHint => 'Аԥшаара...';

  @override
  String get noResults => 'Алҵшәақәа ҳԥыхьамшәеит';

  @override
  String get loading => 'Аҭагалара...';

  @override
  String get error => 'Агха';

  @override
  String get appErrorOccurred => 'Агха ҟалеит';

  @override
  String get appUnknownError => 'Идырым агха';

  @override
  String get quranLoadFailed =>
      'Quran content could not be loaded. Please try again.';

  @override
  String get retry => 'Аиҭаԥышәара';

  @override
  String get refreshAction => 'Арҿыцра';

  @override
  String get cancel => 'Аԥыхра';

  @override
  String get save => 'Ахьчара';

  @override
  String get delete => 'Аныхра';

  @override
  String get edit => 'Аредактура азура';

  @override
  String get close => 'Аркра';

  @override
  String get ok => 'ИБЗИОУП';

  @override
  String get yes => 'Ааи';

  @override
  String get no => 'Мамоу';

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
  String get reading => 'Аԥхьара';

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
  String get bookmarks => 'Адыргақәа';

  @override
  String get addBookmark => 'Add Bookmark';

  @override
  String get removeBookmark => 'Remove Bookmark';

  @override
  String get lastRead => 'Аҵыхәтәантәи аԥхьара';

  @override
  String get dailyZikr => 'Есыҽнытәи азикр';

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
  String get liveTv => 'Ателевизор ишиашоу';

  @override
  String get watchLive => 'Watch Live';

  @override
  String get streamError => 'Аӡышьҭра агха';

  @override
  String get reload => 'Аиҭаҭагалара';

  @override
  String get openInYoutube => 'Иаарттәуп YouTube аҟны';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Fasting';

  @override
  String get quranReading => 'Quran Reading';

  @override
  String get playSurahAudio => 'Сура аудио арҳәа';

  @override
  String get pauseSurahAudio => 'Апауза сура аудио';

  @override
  String get revelationMeccan => 'Амеккатәи';

  @override
  String get revelationMedinan => 'Амедина';

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
  String get monthlyProgress => 'Есымзатәи аизҳара';

  @override
  String get statistics => 'Астатистика';

  @override
  String get hijriCalendar => 'Hijri Calendar';

  @override
  String get gregorianCalendar => 'Григориантәи амзар';

  @override
  String get today => 'Today';

  @override
  String get tomorrow => 'Уаҵәы';

  @override
  String get yesterday => 'Иацы';

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
  String get degrees => 'Аградусқәа';

  @override
  String get north => 'Жәҩанҵәырхара';

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
  String get qiblaLocationRequiredTitle => 'Ақыбла азы иаҭаху аҭыԥ';

  @override
  String get qiblaLocationRequiredBody =>
      'Қьыблатәи акомпас шәхы иашәырхәаанӡа шәахьыҟоу шьақәыргылатәуп, ахырхарҭа ииашаны иԥхьаӡахарц азы.';

  @override
  String get adhanNotificationChannelName => 'Аӡан ардыррақәа';

  @override
  String get adhanNotificationChannelDescription =>
      'Адхан абжьыла анамаз аамҭазы агәҽанҵарақәа ҟанаҵоит.';

  @override
  String get notifications => 'Ардыргақәа';

  @override
  String get prayerNotifications => 'Анцәаиҳәара ардыррақәа';

  @override
  String get enableNotifications => 'Ардыррақәа аҿактәуп';

  @override
  String get notificationTime => 'Ардырра аамҭа';

  @override
  String get beforePrayer => 'minutes before prayer';

  @override
  String get theme => 'Theme';

  @override
  String get lightMode => 'Light Mode';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get systemTheme => 'Асистема атема';

  @override
  String get about => 'About';

  @override
  String get version => 'Version';

  @override
  String get privacyPolicy => 'Амаӡаратә политика';

  @override
  String get termsOfService => 'Terms of Service';

  @override
  String get contactUs => 'Contact Us';

  @override
  String get rateApp => 'Ахәшьара аҭ ари апрограма';

  @override
  String get shareApp => 'Ари апрограма еицашәыцеиҩышәша';

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
  String get checkConnection => 'Шәеимадара гәашәҭ';

  @override
  String get premium => 'Апремиум';

  @override
  String get upgradeToPro => 'Pro ахь аиҭашьақәыргылара';

  @override
  String get proFeatures => 'Аҷыдаҟазшьақәа';

  @override
  String get removeAds => 'Аӡыргақәа аԥыхтәуп';

  @override
  String get unlockAll => 'Аҵакы зегьы аартра';

  @override
  String get exclusiveContent => 'Аҵакы ҷыда';

  @override
  String get welcome => 'Бзиала шәаабеит';

  @override
  String get getStarted => 'Get Started';

  @override
  String get skip => 'Аԥара';

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
  String get onboarding2Desc => 'Уахьыҟоу инамаданы ииашоу анцәаиҳәара аамҭа';

  @override
  String get onboarding3Title => 'Quran & More';

  @override
  String get onboarding3Desc =>
      'Read Quran, track your reading, and explore Islamic content';

  @override
  String get dhikrLibrary => 'Дҳикр абиблиотека';

  @override
  String get resetCounter => 'Reset Counter';

  @override
  String get changeTarget => 'Иԥсахтәуп ахықәкы';

  @override
  String get newTarget => 'Ахықәкы ҿыц';

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
  String get dailyChecklist => 'Есыҽнытәи агәаҭаратә рбага';

  @override
  String get qazaDebt => 'Қаза (Ауал)';

  @override
  String get resetQazaData => 'Қьаза Адыррақәа рырҿыцра';

  @override
  String get resetQazaDebtQuestion => 'Қаза ауал еиҭашьақәыргылатәуп?';

  @override
  String get rawatib => 'Rawatib';

  @override
  String get tahajjud => 'Tahajjud';

  @override
  String get dailyProgress => 'Daily Progress';

  @override
  String get mandatoryPrayers => 'Ихымԥадатәиу аҳәарақәа';

  @override
  String get sunnahAndOthers => 'Асунна & Егьырҭ';

  @override
  String get spiritualGrowth => 'Доуҳала аизҳара';

  @override
  String get mandatoryDuty => 'Ихымԥадатәиу ауалԥшьа';

  @override
  String get totalPrayers => 'Аныҳәарақәа зегьы';

  @override
  String get prayerDebt => 'Аҳәара ауал';

  @override
  String get fastingDebt => 'Ачгара ауал';

  @override
  String get reset => 'Аиҭашьақәыргылара';

  @override
  String get days => 'Амшқәа';

  @override
  String get premiumIntegrity => 'Апремиумтә интегритет';

  @override
  String get recheckPremium => 'Recheck Premium Status';

  @override
  String get syncStore => 'Sync with the store to confirm your entitlement.';

  @override
  String get checkingPremium => 'Апремиум аҭагылазаашьа агәаҭара...';

  @override
  String get premiumVerified => 'Premium verified.';

  @override
  String get premiumNotFound => 'Premium not found.';

  @override
  String premiumRefreshError(Object error) {
    return 'Could not refresh premium status: $error';
  }

  @override
  String get offlineDownloadManager => 'Аоффлаин Аҭагалара Аменеџьер';

  @override
  String get manageDatasets =>
      'Аоффлаин аудиои адатасетқәеи рпакетқәа рнапхгара.';

  @override
  String get freeStorage => 'Аҩныҵҟатәи аиқәыршәага аҭаҵәахырҭа ҭацәтәуп.';

  @override
  String get quranIntegrity => 'Аҟәырҟан аиашара';

  @override
  String get checkQuranDb => 'Аҟәырҟан адырраҭара агәаҭара';

  @override
  String get verifyQuranContent => '114 сура, 6236 аиа рыгәра жәга.';

  @override
  String get checkingQuranDb => 'Checking Quran database...';

  @override
  String get okLabel => 'ИБЗИОУП';

  @override
  String get incomplete => 'Инагӡам';

  @override
  String get notSeeded => 'Ижәлаӡам';

  @override
  String get quranDbStatus => 'Quran Database Status';

  @override
  String statusLabel(Object status) {
    return 'Status: $status';
  }

  @override
  String surahsCount(Object count) {
    return 'Асурақәа: $count (114 ҳзыԥшуп)';
  }

  @override
  String ayahsCount(Object count) {
    return 'Аиақәа: $count (иазыԥшу 6236)';
  }

  @override
  String missingArabic(Object count) {
    return 'Ибжьаӡыз Арабшәа: $count';
  }

  @override
  String missingTurkish(Object count) {
    return 'Ибжьаӡыз аҭырқәшәа: $count';
  }

  @override
  String dbVersion(Object version) {
    return 'ДБ Аверсиа: $version';
  }

  @override
  String dbPath(Object path) {
    return 'Амҩа: $path';
  }

  @override
  String quranCheckFailed(Object error) {
    return 'Quran check failed: $error';
  }

  @override
  String get audioVoice => 'Аудио Бжьы';

  @override
  String get audioVoiceMisharyAlafasy => 'Male (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Male (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Male (Sudais)';

  @override
  String get fajrAngle => 'Афаџьр акәакь';

  @override
  String get ishaAngle => 'Иша Акәакь';

  @override
  String get qiblaCalibration => 'Qibla Calibration';

  @override
  String get compassSmoothing => 'Акомпас Ариашара';

  @override
  String get reduceSensorJitter =>
      'Еиҳа иҭышәынтәалоу асаба азы ацәанырра аҵысра амаҷра.';

  @override
  String get calibrationOffset => 'Акалибровка аиҭасра';

  @override
  String currentOffset(Object offset) {
    return 'Уажәтәи: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Укомпас напыла ариашара аҭахызар, еиқәыршәа. Апозитивтә ҵакқәа асааҭ ахь иргьежьуеит.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup =>
      'Аԥхьатәи ашьақәыргылара апроцесс даҽазнык аус арутәуп.';

  @override
  String get diagnostics => 'Diagnostics';

  @override
  String get diagnosticsNotSet => 'Not set';

  @override
  String get diagnosticsPrayerProfile => 'Аҳәара апрофиль';

  @override
  String get diagnosticsPrayerSource => 'Аҳәара амчра';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Ахатә / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Напыла еиқәыршәоу акәакьқәа (институционалтә хыҵхырҭа ыҟам)';

  @override
  String diagnosticsPrayerHybridSource(String sourceName, String madhab) {
    return '$sourceName аметод ахархәаҩ иалихыз $madhab Asr архиара';
  }

  @override
  String diagnosticsPrayerRegionalFallbackSource(String sourceName) {
    return 'Арегионалтә шьҭахьҟа ацара $sourceName ахархәарала. Аҭыԥантәи аныҳәа аамҭа шәџьаама мамзаргьы официалтә динтә еиҳабыра рҿы ишьақәшәырӷәӷәа.';
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
      'Аԥсҭҳәа аҭаӡҩырақәа ыҟам Supabase; еидҵоу ашьҭахьҟа ацара активуп';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Аԥсҭҳәа juz аметадатақәа ыҟам; еидҵоу аилазаашьатә шьҭахьҟа ацара активуп';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Cloud structural check failed: $error';
  }

  @override
  String get healthCheckDesc =>
      'Агәабзиара агәаҭарақәа мҩаԥыжәга, насгьы асистема аҭагылазаашьа шәахәаԥш.';

  @override
  String get qiblaAligned => 'Ақыбла аиқәыршәара';

  @override
  String get rotateToFindQibla => 'Ақыбла аԥшааразы аргьежьра';

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
  String get analytics => 'Аналитика';

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
  String get islamicEducation => 'Аԥсылмантә ҵарадырра';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Hadith Collections';

  @override
  String get hadithSourcePending => 'Verified source pending';

  @override
  String get hadithUnavailableTitle =>
      'Игәаҭоу аҳадисқәа реизгақәа макьаназы иҟаӡам';

  @override
  String get hadithUnavailableBody =>
      'Ари аргыламҭа уажәгьы игәаҭам адәныҟатәи аҳадистә ҟәша иадҳәалоуп. Аҳадисқәа рыԥшаара аус ауӡом, ахыҵхырҭатә дыррақәа реизга асинхронизациа аҟынӡа.';

  @override
  String get paywallUnlockAll =>
      'Unlock all features for your spiritual journey';

  @override
  String get premiumProductUnavailable =>
      'Premium product is not available right now. Please try again later.';

  @override
  String get premiumPurchaseFailed =>
      'Аахәара ахыркәшара ауам. Ҳаҳәоит даҽазнык шәҽазышәшәа.';

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
      'Игәаҭоу офлаинтәи аԥсылмантә дыррақәа рышьаҭа уажәгьы акурациа мҩаԥысуеит. Уажәы иҟашәҵар шәылшоит аофлайн ашьҭахьҟа ацара, аха уи иаанарԥшуеит ԥкра змам ашәарҭадаратә дырраҭарақәа, ахыҵхырҭатә дыррақәа ргәыԥ мазеихаанӡа.\n\nИшәҭахума офлаин ашьҭахьҟа ацара аус арура?';

  @override
  String get chatbotOfflineSwitched =>
      'Аофлайн ашьҭахьҟа ацара аус ауеит. Игәаҭоу аҭыԥантәи аԥсылмантә ҭакқәа макьана иазыхиам.';

  @override
  String get chatbotOfflineDownloadLabel => 'Аоффлаин ашьҭахьҟа ацара аҿактәуп';

  @override
  String get downloadPreparing => 'Аҭагалара аҽазыҟаҵара...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Downloading surah $surah / $total';
  }

  @override
  String get downloadCompleted => 'Аԥхьаҩ изы асурақәа зегьы хҩылаауп.';

  @override
  String get offlineQuranAudioPacks => 'Аоффлаин Аҟәырҟан Аудиопакетқәа';

  @override
  String storedOnDeviceMb(String size) {
    return 'Stored on device: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surahs downloaded';
  }

  @override
  String get redownloadMissingRepair => 'Аиҭашьақәыргылара / Ахгара Ибжьаӡыз';

  @override
  String get downloadAction => 'Аҭгара';

  @override
  String get resumeDownload => 'Аҭагалара иацҵатәуп';

  @override
  String get deleteDownloadedFiles => 'Ианыхтәуп иҭагалоу афаилқәа';

  @override
  String get cancelDownloadAction => 'Аҭагалара аԥыхтәуп';

  @override
  String get downloadCancelling => 'Аԥыхра...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Аҭагалара аанкылоуп $reciter азы.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Аҭагалара хыркәшоуп $reciter азы.';
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
      'Аудио арҳәара алымшеит. Ҳаҳәоит, шәеимадара гәашәҭ.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Verified Quran audio pack is incomplete ($available/$total). Try again after the audio catalog is updated.';
  }

  @override
  String get chatbotHint => 'Ask a question...';

  @override
  String get chatbotThinking => 'Thinking...';

  @override
  String get sukunMixerSubtitle => 'Аԥсабареи Аҟәырҟан еилаԥсага';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Сукун (Аԥсабара)';

  @override
  String get sukunRainOfMercy => 'Арыцҳашьаратә қәа';

  @override
  String get sukunGardenOfPeace => 'Аҭынчра абаҳча';

  @override
  String get sukunMidnightCalm => 'Ҵхабжьонтәи аҭынчра';

  @override
  String get sukunOceanTawheed => 'Аокеан Ҭауҳид';

  @override
  String get sukunUnavailableTitle => 'Абжьытә ҭыԥқәа ыҟаӡам';

  @override
  String get sukunUnavailableBody =>
      'Ари аргыламҭаҿы макьана иаҭаху Сукунтәи абжьытә ҭагылазаашьа амазара аҵанакуам.';

  @override
  String get prayerCompletion => 'Аныҳәа ахыркәшара';

  @override
  String get streaks => 'Ацәаҳәақәа';

  @override
  String get dayStreak => 'Амш еишьҭагыла';

  @override
  String get bestStreak => 'Best streak';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Enable Offline Fallback';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Аԥсҭҳәа API еиқәыршәаӡам. Игәаҭоу офлаин исламтә мҩақәҵара макьана иҟаӡам.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Игәаҭоу аҭыԥантәи аԥсылмантә напхгара макьана иҟаӡам. Ахыҵхырҭа змоу аҭакқәа рзы Cloud AI ахь аиасра.';

  @override
  String get mosques => 'Mosques';

  @override
  String get halalFood => 'Halal Food';

  @override
  String get placesSearchArea => 'Ари аҭыԥ аԥшаара';

  @override
  String get nearbyMosques => 'Ааигәа иҟоу аџьаамақәа';

  @override
  String get islamicSchools => 'Islamic Schools';

  @override
  String placesFoundCount(String count) {
    return '$count иԥшаауп';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance км хара';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API Агха: $statusCode';
  }

  @override
  String get placesNetworkError => 'Аҳа агха. Ҳаҳәоит даҽазнык шәҽазышәшәа.';

  @override
  String get placesLocationRequiredTitle => 'Иаҭахуп аҭыԥ';

  @override
  String get placesLocationRequiredBody =>
      'Зегь раԥхьаӡа иргыланы аҭыԥ шьақәыргылатәуп, ааигәа иҟоу аԥшьаныҳәарҭақәа, ахалалтә крыфарҭақәа, аԥсылмантә школқәа ииашаны рыԥшаара алыршаразы.';

  @override
  String get placesMapTilesUnavailableTitle => 'Ахсаала акаҵкәырқәа ыҟаӡам';

  @override
  String get placesMapTilesUnavailableBody =>
      'Игәаҭоу ахсаала ахыҵхырҭа ари аргыларазы макьана еиқәыршәаӡам. Ааигәа иҟоу аҭыԥқәа уажәгьы еиқәырханы иҟоу аҭыԥ аҟынтәи иҭагалахар рылшоит.';

  @override
  String get placesDataSourceUnavailableTitle => 'Адыррақәа ыҟаӡам аҭыԥқәа';

  @override
  String get placesDataSourceUnavailableBody =>
      'Игәаҭоу аҭыԥқәа рдыррақәа рҵыхәтәантәи аҭыԥ макьана ари аргыларазы еиқәыршәаӡам. Ишьақәыргылатәуп PLACES_OVERPASS_API_URL иазыразу апрокси ма аиқәыршәаҩ ааигәа аԥшаара аус арура аламҭалазы.';

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
