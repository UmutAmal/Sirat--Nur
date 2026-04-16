// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Yoruba (`yo`).
class AppLocalizationsYo extends AppLocalizations {
  AppLocalizationsYo([String locale = 'yo']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Islam Way of Light';

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
  String get sunrise => 'Ilaorun';

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
    return 'Àkókò fún $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'O to akoko lati gbadura $prayerName.';
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
  String get systemDefault => 'Eto Aiyipada';

  @override
  String get currentLocation => 'Current Location (GPS)';

  @override
  String get locationServiceDisabled => 'Iṣẹ agbegbe jẹ alaabo.';

  @override
  String get locationPermissionDenied => 'Ti kọ igbanilaaye ipo.';

  @override
  String get locationDetectionFailed =>
      'Ko le ri ipo rẹ. Jọwọ yan ilu kan pẹlu ọwọ tabi gbiyanju lẹẹkansi.';

  @override
  String citiesCount(String count) {
    return '$count ilu';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'Ko si esi ri';

  @override
  String get loading => 'Nkojọpọ...';

  @override
  String get error => 'Asise';

  @override
  String get appErrorOccurred => 'Aṣiṣe kan ṣẹlẹ';

  @override
  String get appUnknownError => 'Aṣiṣe aimọ';

  @override
  String get quranLoadFailed =>
      'Akoonu Al-Qur’an ko le ṣe kojọpọ. Jọwọ gbiyanju lẹẹkansi.';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Tuntun';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Paarẹ';

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
  String get tafsirLoading => 'Nkojọpọ tafsir...';

  @override
  String get tafsirSourceLabel => 'Tafsir orisun';

  @override
  String get tafsirNoSurahFound => 'A ko ri tafsiri fun surah yi.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Ko si tafsir ti a rii fun ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir ko le ṣe kojọpọ.';

  @override
  String get tafsirNoTextForAyah => 'Ko si ọrọ tafsir fun ayah yii.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Gbigba tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Nkojọpọ tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Orisun Tafsir da aṣiṣe HTTP $statusCode pada.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Orisun tafsir ti a yan ko da awọn titẹ sii.';

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
      'awọn miiran n gbadura pe, ‘Oluwa wa, fun wa ni oore ni aye ati ni ọla, ki o si daabo bo wa lọwọ iya ina.';

  @override
  String get duaMeaning2 =>
      'Ọlọ́run kìí fi ohun tí ó pọ̀ ju ohun tí ó lè rù lọ: ọ̀kọ̀ọ̀kan ń jèrè ohun rere tí ó ṣe, ó sì ń jìyà búburú rẹ̀- ‘Olúwa, má ṣe mú wa lọ́wọ́ sí iṣẹ́ tí a bá gbàgbé tàbí àṣìṣe. Oluwa, mase di eru wa bi O ti di eru awon ti o wa niwaju wa. Oluwa, maṣe di ẹrù wa lara ju ti a ni agbara lati ru. Dariji wa, dariji wa, ki o si ṣãnu fun wa. Iwọ ni Oludaabobo wa, nitori naa ran wa lọwọ lori awọn alaigbagbọ.';

  @override
  String get duaMeaning3 =>
      '‘Oluwa wa, ma je ki okan wa ya leyin ti O ti se amona wa. Fun wa l‘anu Re: Iwo l‘O nfun wa titi.';

  @override
  String get duaMeaning4 =>
      'Oluwa, je ki emi ati awon omo mi le ma tesiwaju ninu adura naa. Oluwa wa, gba ebe mi.';

  @override
  String get duaMeaning5 =>
      'kí o sì sọ ìyẹ́ apá rẹ rẹlẹ̀ ní ìrẹ̀lẹ̀ sí wọn ní inú rere, kí o sì wí pé, ‘Olúwa, ṣàánú wọn, gẹ́gẹ́ bí wọ́n ti ṣe ìtọ́jú mi nígbà tí mo wà ní kékeré.';

  @override
  String get duaMeaning6 =>
      'gbega ni fun Ọlọhun, ẹni ti o ni iṣakoso nitootọ. [Anabi], maṣe yara lati ka ki iṣipaya naa to pe ni kikun ṣugbọn sọ pe, ‘Oluwa, fun mi ni imọ siwaju sii!’';

  @override
  String get duaMeaning7 =>
      'Sọ [Annabi] pe, ‘Oluwa, dariji ki o si ṣãnu: Iwọ ni alaanu ju gbogbo lọ.';

  @override
  String get duaMeaning8 =>
      'àwọn tí ń gbàdúrà pé, ‘Olúwa wa, fún wa ní ayọ̀ nínú àwọn aya àti àwọn ọmọ wa. Ṣe apẹẹrẹ rere fun awọn ti o mọ Ọ’.';

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
  String get hadithCollection => 'Akopọ Hadith';

  @override
  String get hadithBooks => 'Awọn iwe Hadith';

  @override
  String get searchHadith => 'Wa Hadith';

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
  String get openInYoutube => 'Ṣii ni YouTube';

  @override
  String get ibadahTracker => 'Ibada Tracker';

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
  String get islamicNewYear => 'Islam odun titun';

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
    return 'Aṣiṣe Kompasi: $error';
  }

  @override
  String get qiblaSensorUnavailable => 'Kompasi sensọ ko si lori ẹrọ yi.';

  @override
  String get qiblaLocationRequiredTitle => 'Location required for Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Set your actual location before using the Qibla compass so the direction can be calculated accurately.';

  @override
  String get adhanNotificationChannelName => 'Awọn iwifunni Adhan';

  @override
  String get adhanNotificationChannelDescription =>
      'Awọn itaniji akoko adura pẹlu ohun adhan.';

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
  String get theme => 'Akori';

  @override
  String get lightMode => 'Ipo Imọlẹ';

  @override
  String get darkMode => 'Ipo Dudu';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'About';

  @override
  String get version => 'Ẹya';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get termsOfService => 'Terms of Service';

  @override
  String get contactUs => 'Contact Us';

  @override
  String get rateApp => 'Oṣuwọn App';

  @override
  String get shareApp => 'Pin App';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Ṣayẹwo $appName: Ohun elo igbesi aye Islam ti o ga julọ! $url';
  }

  @override
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'Awọn igbasilẹ';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Gbigbasilẹ Pari';

  @override
  String get downloadFailed => 'Gbigba lati ayelujara kuna';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'Ko si Asopọ Ayelujara';

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
  String get tapToCount => 'Fọwọ ba lati ka';

  @override
  String get zikrCompletedMashAllah => 'Ti pari! MashaAllah';

  @override
  String get zikrMeaningSubhanAllah => 'Allāhu ga ju gbogbo àìpé lọ.';

  @override
  String get zikrMeaningAlhamdulillah => 'Gbogbo iyin ti Olohun ni.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allāhu ni Alájùlọ.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Kosi Olorun miran ayafi Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Mo wa aforiji Allah.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Ko si agbara ati agbara ayafi ti Olohun.';

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
  String get offlineDownloadManager => 'Aisinipo Download Manager';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Ṣe igbasilẹ ibi ipamọ ẹrọ inu.';

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
  String get audioVoice => 'Ohun Ohun';

  @override
  String get audioVoiceMisharyAlafasy => 'Okunrin (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Okunrin (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Okunrin (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Iṣatunṣe Qibla';

  @override
  String get compassSmoothing => 'Kompasi Din';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Idiwọn aiṣedeede';

  @override
  String currentOffset(Object offset) {
    return 'Lọwọlọwọ: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Ṣatunṣe ti kọmpasi rẹ ba nilo atunṣe afọwọṣe. Awọn iye to dara n yi lọna aago.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Awọn iwadii aisan';

  @override
  String get diagnosticsNotSet => 'Ko ṣeto';

  @override
  String get diagnosticsPrayerProfile => 'Profaili Adura';

  @override
  String get diagnosticsPrayerSource => 'Alase Adura';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manual custom angles (no institutional source)';

  @override
  String get diagnosticsCloudDriven => 'Awọsanma wakọ';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Dukia';

  @override
  String get diagnosticsQuranAudioAssets => 'Quran Audio Dukia';

  @override
  String get diagnosticsAudioAssets => 'Awọn ohun-ini ohun';

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
    return '$count ṣe atilẹyin';
  }

  @override
  String get diagnosticsQuranDataset => 'Al-Qur\'an Dataset';

  @override
  String get diagnosticsQuranSurahs => 'Al-Qur’an Surah';

  @override
  String get diagnosticsQuranAyahs => 'Quran Ayah';

  @override
  String get diagnosticsQuranJuzMetadata => 'Quran Juz Metadata';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Awọsanma tabili sonu ni Supabase; bundled fallback lọwọ';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Ayẹwo awọsanma kuna: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Awọsanma juz metadata sonu; bundled igbekale fallback lọwọ';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Ayẹwo igbekalẹ awọsanma kuna: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 => 'Odiwọn nilo. Yiyi ẹrọ ni nọmba-8.';

  @override
  String get dailyVerse => 'Ẹsẹ Ojoojumọ';

  @override
  String get todaysIbadah => 'Ibada loni';

  @override
  String get quickAccess => 'Wiwọle yara yara';

  @override
  String get assistant => 'Iranlọwọ';

  @override
  String get places => 'Awọn ibi';

  @override
  String get library => 'Ile-ikawe';

  @override
  String get analytics => 'Atupale';

  @override
  String get dailyDuas => 'Duas ojoojumọ';

  @override
  String essentialDuas(String count) {
    return '$count duas pataki';
  }

  @override
  String get duaUnavailableTitle => 'Awọn duas ti a rii daju ko si sibẹsibẹ';

  @override
  String get duaUnavailableBody =>
      'Awọn duas ojoojumọ ti a rii daju ko ti muuṣiṣẹpọ si ẹrọ yii sibẹsibẹ. Sopọ si orisun awọsanma lati ṣajọpọ duas ti o ti jade dipo idasẹhin ti a ko rii daju.';

  @override
  String get duaCategoryQuranic => 'Al-Qur’an dua';

  @override
  String get duaCategoryMorningEvening => 'Owurọ & Aṣalẹ';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Idaabobo';

  @override
  String get duaCategoryBeginning => 'Awọn ibẹrẹ';

  @override
  String get duaCategorySleep => 'Orun';

  @override
  String get duaCategoryFoodDrink => 'Ounje & mimu';

  @override
  String get duaCategoryForgiveness => 'Idariji';

  @override
  String get duaCategoryHome => 'Ile';

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
  String get islamicEducation => 'Ẹkọ Islam';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Awọn akojọpọ Hadith';

  @override
  String get hadithSourcePending => 'Wadi orisun ni isunmọtosi ni';

  @override
  String get hadithUnavailableTitle =>
      'Awọn akojọpọ hadith ti o ni idaniloju ko si sibẹsibẹ';

  @override
  String get hadithUnavailableBody =>
      'Kọ yii tun da lori ifunni hadith ita ti a ko rii daju. Lilọ kiri ayelujara Hadith duro ni alaabo titi ti ipilẹ data ti o ti muṣiṣẹpọ.';

  @override
  String get paywallUnlockAll => 'Ṣii gbogbo awọn ẹya fun irin-ajo ti ẹmi rẹ';

  @override
  String get premiumProductUnavailable =>
      'Ọja Ere ko si ni bayi. Jọwọ gbiyanju lẹẹkansi nigbamii.';

  @override
  String get premiumPurchaseFailed =>
      'A ko le pari rira. Jọwọ gbiyanju lẹẹkansi.';

  @override
  String get paywallFeature1Title => 'Oluranlọwọ nkankikan Plus';

  @override
  String get paywallFeature1Desc => 'Q&A ailopin AI-agbara';

  @override
  String get paywallFeature2Title => 'Aisinipo ailopin';

  @override
  String get paywallFeature2Desc => 'Ṣe igbasilẹ gbogbo awọn kika';

  @override
  String get paywallFeature3Title => 'Iyasoto Awọn aṣa';

  @override
  String get paywallFeature3Desc => 'Awọn akori Ere & awọn akọwe';

  @override
  String get paywallFeature4Title => 'Ipolowo-ọfẹ';

  @override
  String get paywallFeature4Desc => 'Awọn ipolowo odo';

  @override
  String get paywallGetAccess => 'Gba Wiwọle Igba aye - \$ 1.00';

  @override
  String get restorePurchases => 'Pada Awọn rira pada';

  @override
  String get zakatCalculator => 'Ẹrọ iṣiro Zakat';

  @override
  String get zakatGold => 'Wura (Altın)';

  @override
  String get zakatSilver => 'Fadaka (Gümüş)';

  @override
  String get zakatCashBank => 'Owo / Banki';

  @override
  String get zakatBusiness => 'Iṣowo';

  @override
  String get zakatInvestments => 'Awọn idoko-owo';

  @override
  String get zakatWeightGrams => 'Ìwúwo (g)';

  @override
  String get zakatPricePerGram => 'Iye owo/g';

  @override
  String get zakatTotalAmount => 'Oye gbo e';

  @override
  String get zakatInventoryValue => 'Oja Iye';

  @override
  String get zakatDebts => 'Awọn gbese';

  @override
  String get zakatTotal => 'Lapapọ';

  @override
  String get calculateZakat => 'Calculate Zakat';

  @override
  String get nisabNotReached => 'Nisab ko de. Zakat kii ṣe ọranyan.';

  @override
  String get totalZakat => 'Lapapọ Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Awọn dukia: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakat goolu';

  @override
  String get zakatSilverZakat => 'Zakat fadaka';

  @override
  String get zakatCashZakat => 'Zakat owo';

  @override
  String get zakatBusinessZakat => 'Zakat iṣowo';

  @override
  String get zakatInvestmentZakat => 'Zakat idoko-owo';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! Emi ni oluranlọwọ Islam rẹ. Beere lọwọ mi nipa adura, ãwẹ, zakat, tabi eyikeyi koko-ọrọ Islam.';

  @override
  String get chatbotLimitReached =>
      'Opin ibeere ojoojumọ ti de. Igbesoke si Ere fun ailopin.';

  @override
  String get chatbotErrorMsg =>
      'Emi ko le ṣe ipilẹṣẹ esi. Jọwọ gbiyanju lẹẹkansi.';

  @override
  String get chatbotOfflinePrompt =>
      'Ipilẹ imọ Islam ti aisinipo ti a fọwọsi ti wa ni ṣiṣatunṣe. O le mu ipadasẹhin aisinipo ṣiṣẹ ni bayi, ṣugbọn yoo ṣafihan awọn ifiranṣẹ ailewu lopin nikan titi di igba ti data orisun orisun ti ṣetan.\n\nṢe iwọ yoo fẹ lati mu ipadasẹhin offline ṣiṣẹ?';

  @override
  String get chatbotOfflineSwitched =>
      'Ipadabọ aisinipo ṣiṣẹ. Awọn idahun Islam ti o rii daju ko ti ṣetan sibẹsibẹ.';

  @override
  String get chatbotOfflineDownloadLabel => 'Mu Ipadabọ Aisinipo ṣiṣẹ';

  @override
  String get downloadPreparing => 'Ngbaradi igbasilẹ...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Gbigba surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Gbogbo awọn surah ti ṣe igbasilẹ tẹlẹ fun olukawe yii.';

  @override
  String get offlineQuranAudioPacks =>
      'Awọn akopọ ohun afetigbọ Al-Qur’an aisinipo';

  @override
  String storedOnDeviceMb(String size) {
    return 'Ti a fipamọ sori ẹrọ: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total gbasile awon surah';
  }

  @override
  String get redownloadMissingRepair => 'Titunṣe / Download Sonu';

  @override
  String get downloadAction => 'Gba lati ayelujara';

  @override
  String get resumeDownload => 'Bẹrẹ Gbigbasilẹ';

  @override
  String get deleteDownloadedFiles => 'Pa awọn faili ti a gbasile';

  @override
  String get downloadCancelling => 'N fagilee...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Ti fagilee igbasilẹ fun $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Igbasilẹ ti pari fun $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Igbasilẹ ti pari fun $reciter pẹlu $failed surah ti o kuna ($downloaded/$total ti ṣe igbasilẹ).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Parẹ awọn faili aisinipo fun $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Awọn orisun ohun afetigbọ Al-Qur’an ti a fọwọsi ko si ni bayi.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Ididi ohun afetigbọ Al-Qur’an ti ko pe ($available/$total). Sọ irugbin awọsanma sọ ​​ki o tun gbiyanju lẹẹkansi.';
  }

  @override
  String get chatbotHint => 'Beere ibeere kan...';

  @override
  String get chatbotThinking => 'N ronu...';

  @override
  String get sukunMixerSubtitle => 'Iseda & Kuran Mixer';

  @override
  String get audioPlayFailed => 'Sisisẹsẹhin ohun kuna';

  @override
  String get sukunNatureLabel => 'Sukun (Iseda)';

  @override
  String get sukunRainOfMercy => 'Ojo Anu';

  @override
  String get sukunGardenOfPeace => 'Ọgba Alafia';

  @override
  String get sukunMidnightCalm => 'Ọganjọ tunu';

  @override
  String get sukunOceanTawheed => 'Òkun Tawheed';

  @override
  String get sukunUnavailableTitle => 'Awọn iwoye ko si';

  @override
  String get sukunUnavailableBody =>
      'Itumọ yii ko pẹlu awọn ohun-ini oju ohun Sukun ti o nilo sibẹsibẹ.';

  @override
  String get prayerCompletion => 'Ipari Adura';

  @override
  String get streaks => 'Awọn ṣiṣan';

  @override
  String get dayStreak => 'ṣiṣan ọjọ';

  @override
  String get bestStreak => 'Best streak';

  @override
  String get chatbotCloudAiLabel => 'Awọsanma AI';

  @override
  String get chatbotLocalAiLabel => 'Aisinipo Fallback';

  @override
  String get chatbotUseCloudAi => 'Lo Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Mu Ipadabọ Aisinipo ṣiṣẹ';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count osi';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'API awọsanma ko ni tunto. Itọnisọna Islam ti a ṣe idaniloju aisinipo ko si sibẹsibẹ.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Itọnisọna Islam ti o ni idaniloju ko si sibẹsibẹ. Yipada si Cloud AI fun awọn idahun orisun.';

  @override
  String get mosques => 'Mossalassi';

  @override
  String get halalFood => 'Ounjẹ Hala';

  @override
  String get placesSearchArea => 'Wa agbegbe yii';

  @override
  String get nearbyMosques => 'Awọn mọṣalaṣi nitosi';

  @override
  String get islamicSchools => 'Awọn ile-iwe Islam';

  @override
  String placesFoundCount(String count) {
    return '$count ri';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km kuro';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Aṣiṣe API: $statusCode';
  }

  @override
  String get placesNetworkError => 'Aṣiṣe nẹtiwọki. Jọwọ gbiyanju lẹẹkansi.';

  @override
  String get placesLocationRequiredTitle => 'Ibi ti a beere';

  @override
  String get placesLocationRequiredBody =>
      'Ṣeto ipo akọkọ ki awọn mọṣalaṣi nitosi, ounjẹ halal, ati awọn ile-iwe Islam le ṣe wa ni pipe.';

  @override
  String get placesMapTilesUnavailableTitle => 'Awọn alẹmọ maapu ko si';

  @override
  String get placesMapTilesUnavailableBody =>
      'Orisun tile maapu ti a ti rii daju ko ni tunto fun kikọ yii sibẹsibẹ. Awọn aaye to wa nitosi tun le ṣajọpọ lati ipo ti o fipamọ.';

  @override
  String get placesDataSourceUnavailableTitle => 'Awọn aaye data ko si';

  @override
  String get placesDataSourceUnavailableBody =>
      'Ojuami ipari data ti a rii daju ko ni tunto fun kikọ yii sibẹsibẹ. Ṣeto PLACES_OVERPASS_API_URL si aṣoju tabi olupese ti a fọwọsi ṣaaju ṣiṣe wiwa nitosi.';

  @override
  String get unknownPlaceName => 'Orukọ Aimọ';

  @override
  String get islamicPlaceFallback => 'Ibi Islam';

  @override
  String get asmaMeaning1 => 'Alanfani';

  @override
  String get asmaMeaning2 => 'Alaanu';

  @override
  String get asmaMeaning3 => 'Oba / Oluwa ayeraye';

  @override
  String get asmaMeaning4 => 'Mimọ Julọ';

  @override
  String get asmaMeaning5 => 'Orisun Alafia';

  @override
  String get asmaMeaning6 => 'Olufunni Aabo';

  @override
  String get asmaMeaning7 => 'The Guardian';

  @override
  String get asmaMeaning8 => 'Iyebiye / Alagbara julo';

  @override
  String get asmaMeaning9 => 'The Compeller';

  @override
  String get asmaMeaning10 => 'Ti o tobi julọ';

  @override
  String get asmaMeaning11 => 'Eleda';

  @override
  String get asmaMeaning12 => 'Ẹlẹda ti Bere fun';

  @override
  String get asmaMeaning13 => 'Awọn apẹrẹ ti Beauty';

  @override
  String get asmaMeaning14 => 'Ìdáríjì';

  @override
  String get asmaMeaning15 => 'The Subduer';

  @override
  String get asmaMeaning16 => 'Olufunni Gbogbo';

  @override
  String get asmaMeaning17 => 'Olugbero naa';

  @override
  String get asmaMeaning18 => 'The Opener';

  @override
  String get asmaMeaning19 => 'Olumo Gbogbo';

  @override
  String get asmaMeaning20 => 'Awọn Constrictor';

  @override
  String get asmaMeaning21 => 'Olugbala';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'Alagbara';

  @override
  String get asmaMeaning24 => 'Olufunni Ola';

  @override
  String get asmaMeaning25 => 'The Humiliator';

  @override
  String get asmaMeaning26 => 'Olugbo Gbogbo';

  @override
  String get asmaMeaning27 => 'Aríran Gbogbo';

  @override
  String get asmaMeaning28 => 'Onidajo naa';

  @override
  String get asmaMeaning29 => 'Olododo';

  @override
  String get asmaMeaning30 => 'The arekereke Ọkan';

  @override
  String get asmaMeaning31 => 'The Gbogbo Aware';

  @override
  String get asmaMeaning32 => 'The Forebearing';

  @override
  String get asmaMeaning33 => 'Awọn nkanigbega';

  @override
  String get asmaMeaning34 => 'Oludariji Nla';

  @override
  String get asmaMeaning35 => 'Olusan Adupe';

  @override
  String get asmaMeaning36 => 'Ti o ga julọ';

  @override
  String get asmaMeaning37 => 'Ti o tobi julọ';

  @override
  String get asmaMeaning38 => 'Olutọju naa';

  @override
  String get asmaMeaning39 => 'Olutọju naa';

  @override
  String get asmaMeaning40 => 'Oniṣiro naa';

  @override
  String get asmaMeaning41 => 'Kabiyesi';

  @override
  String get asmaMeaning42 => 'Awọn Oninurere';

  @override
  String get asmaMeaning43 => 'Olusona';

  @override
  String get asmaMeaning44 => 'Oludahun si Adura';

  @override
  String get asmaMeaning45 => 'The Gbogbo oye';

  @override
  String get asmaMeaning46 => 'Ọlọgbọn Ni pipe';

  @override
  String get asmaMeaning47 => 'Ololufe';

  @override
  String get asmaMeaning48 => 'Ologo julo';

  @override
  String get asmaMeaning49 => 'Ajinde';

  @override
  String get asmaMeaning50 => 'Ẹlẹ́rìí náà';

  @override
  String get asmaMeaning51 => 'Ooto';

  @override
  String get asmaMeaning52 => 'Alagbase To To Gbogbo';

  @override
  String get asmaMeaning53 => 'Olugba Gbogbo Agbara';

  @override
  String get asmaMeaning54 => 'Agbara';

  @override
  String get asmaMeaning55 => 'Olugbeja';

  @override
  String get asmaMeaning56 => 'Awọn Oluyin';

  @override
  String get asmaMeaning57 => 'The Appraiser';

  @override
  String get asmaMeaning58 => 'Olupilẹṣẹ';

  @override
  String get asmaMeaning59 => 'The Restorer';

  @override
  String get asmaMeaning60 => 'Olufunni l’aye';

  @override
  String get asmaMeaning61 => 'Olugba aye';

  @override
  String get asmaMeaning62 => 'The Lailai Living';

  @override
  String get asmaMeaning63 => 'Olugbero ti ara-ẹni';

  @override
  String get asmaMeaning64 => 'Oluwari';

  @override
  String get asmaMeaning65 => 'Ologo';

  @override
  String get asmaMeaning66 => 'Nikan Ọkan';

  @override
  String get asmaMeaning67 => 'Ọkan naa';

  @override
  String get asmaMeaning68 => 'Eni Ti Gbogbo Eniyan Nfe';

  @override
  String get asmaMeaning69 => 'Alagbara';

  @override
  String get asmaMeaning70 => 'Eleda gbogbo agbara';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'Awọn Idaduro';

  @override
  String get asmaMeaning73 => 'Akọkọ';

  @override
  String get asmaMeaning74 => 'Ikẹhin';

  @override
  String get asmaMeaning75 => 'Ifihan naa';

  @override
  String get asmaMeaning76 => 'Awọn farasin';

  @override
  String get asmaMeaning77 => 'Gomina';

  @override
  String get asmaMeaning78 => 'Eledumare';

  @override
  String get asmaMeaning79 => 'Oluse Rere';

  @override
  String get asmaMeaning80 => 'Itọsọna si Ironupiwada';

  @override
  String get asmaMeaning81 => 'Olugbẹsan naa';

  @override
  String get asmaMeaning82 => 'Oludariji';

  @override
  String get asmaMeaning83 => 'The Clement';

  @override
  String get asmaMeaning84 => 'Olohun / Oba Gbogbo';

  @override
  String get asmaMeaning85 => 'Eni to ni Kabiyesi ati Ere';

  @override
  String get asmaMeaning86 => 'The Equitable One';

  @override
  String get asmaMeaning87 => 'Olukojo';

  @override
  String get asmaMeaning88 => 'Ọlọrọ';

  @override
  String get asmaMeaning89 => 'The Enricher';

  @override
  String get asmaMeaning90 => 'Oludena Ipalara';

  @override
  String get asmaMeaning91 => 'Awọn Mu ti Ipalara';

  @override
  String get asmaMeaning92 => 'Olufun ti Awọn anfani';

  @override
  String get asmaMeaning93 => 'Imọlẹ naa';

  @override
  String get asmaMeaning94 => 'Oludari';

  @override
  String get asmaMeaning95 => 'Olupilẹṣẹ';

  @override
  String get asmaMeaning96 => 'Ẹni Ayérayé';

  @override
  String get asmaMeaning97 => 'Ajogún';

  @override
  String get asmaMeaning98 => 'Itọsọna Olododo Julọ';

  @override
  String get asmaMeaning99 => 'Alaisan naa';
}
