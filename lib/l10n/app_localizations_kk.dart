// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kazakh (`kk`).
class AppLocalizationsKk extends AppLocalizations {
  AppLocalizationsKk([String locale = 'kk']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Исламдық нұр жолы';

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
  String get fajr => 'Таң';

  @override
  String get sunrise => 'Күннің шығуы';

  @override
  String get dhuhr => 'Түс';

  @override
  String get asr => 'Аср';

  @override
  String get maghrib => 'Кеш';

  @override
  String get isha => 'Иша';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName уақыты';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '$prayerName намаз оқу уақыты келді.';
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
  String get locationServiceDisabled => 'Орынды анықтау қызметі өшірілген.';

  @override
  String get locationPermissionDenied => 'Орынды анықтау рұқсаты қабылданбады.';

  @override
  String get locationDetectionFailed =>
      'Орналасқан жеріңізді анықтау мүмкін болмады. Қаланы қолмен таңдаңыз немесе әрекетті қайталаңыз.';

  @override
  String citiesCount(String count) {
    return '$count қалалар';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'Нәтиже табылмады';

  @override
  String get loading => 'Жүктелуде...';

  @override
  String get error => 'Қате';

  @override
  String get appErrorOccurred => 'Қате орын алды';

  @override
  String get appUnknownError => 'Белгісіз қате';

  @override
  String get quranLoadFailed =>
      'Құран мазмұнын жүктеу мүмкін емес. Қайталап көріңіз.';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Жаңарту';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Жою';

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
    return 'Ая $ayah';
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
  String get tafsirLoading => 'Тафсир жүктелуде...';

  @override
  String get tafsirSourceLabel => 'Тафсир көзі';

  @override
  String get tafsirNoSurahFound => 'Бұл сүре үшін тәпсір табылмады.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return '$ayah аятына қатысты тафсир табылмады.';
  }

  @override
  String get tafsirLoadFailed => 'Тафсирді жүктеу мүмкін болмады.';

  @override
  String get tafsirNoTextForAyah => 'Бұл аятқа арналған тәфсир мәтіні жоқ.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return '$current/$total тафсирін жүктеп алу';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return '$current/$total тафсирі жүктелуде';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Тафсир көзі HTTP $statusCode қатесін қайтарды.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Таңдалған тәфсир көзі ешбір жазбаны қайтармады.';

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
      'Басқалары: «Раббымыз, бізге дүниеде де, ақыретте де жақсылық бер және бізді тозақ азабынан сақта», - деп дұға етеді.';

  @override
  String get duaMeaning2 =>
      'Алла ешбір жанға шамасы жетпейтін нәрсені жүктемейді: әркім істеген жақсылығын алады, ал жамандығынан зардап шегеді – Раббым, ұмытсақ немесе қателессек, бізді жауапқа алма. Раббым, бізден бұрынғыларға жүктегендей, бізге де ауыртпалық салма. Раббым, бізге күш-қуатымыздан артық жүк салма. Бізді кешір, бізді кешір және бізге рақым ет. Сен біздің қорғаушымызсың, кәпірлерге қарсы бізге көмектес», – деді.';

  @override
  String get duaMeaning3 =>
      '«Раббымыз, бізді тура жолға салғаннан кейін жүректерімізді адастырма. Бізге мейіріміңді бере гөр: Сен Берушісің.';

  @override
  String get duaMeaning4 =>
      'Раббым, маған және менің ұрпақтарыма намазды орындауды нәсіп ет. Раббым, тілегімді қабыл ет.';

  @override
  String get duaMeaning5 =>
      'Сондай-ақ оларға мейірімділікпен кішіпейілділікпен қанатыңды төмен түсір және: «Раббым, олар мені кішкентай кезімде бағып-қаққанындай, оларды да рақым ете гөр» де.';

  @override
  String get duaMeaning6 =>
      'Расында басқарушы Құдай пәк. [Пайғамбар], уахи толық болмай тұрып оқуға асықпа, қайта: «Раббым, білімімді арттыра көр!» де.';

  @override
  String get duaMeaning7 =>
      '[Пайғамбарға]: «Раббым, кешіре гөр, рақым ет, Сен ең мейірімдісің» де.';

  @override
  String get duaMeaning8 =>
      'Олар: «Раббымыз, жұбайларымыз бен ұрпақтарымызды қуанышқа бөлей гөр. Бізді өзіңнен хабардар жандарға үлгі ет», – деді.';

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
  String get hadith => 'Хадис';

  @override
  String get hadithCollection => 'Хадистер жинағы';

  @override
  String get hadithBooks => 'Хадис кітаптары';

  @override
  String get searchHadith => 'Хадис іздеу';

  @override
  String get asmaulHusna => 'Асма-ул-Хусна';

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
  String get openInYoutube => 'YouTube сайтында ашыңыз';

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
    return '$hoursсағ $minutesмин';
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
  String get islamicNewYear => 'Исламдық Жаңа жыл';

  @override
  String get mawlidAnNabi => 'Мәуліт ән-Нәби';

  @override
  String get specialDayDateRamadanStart => '1 Рамазан';

  @override
  String get specialDayDateLaylatAlQadr => '27 Рамазан';

  @override
  String get specialDayDateEidAlFitr => '1 Шәууәл';

  @override
  String get specialDayDateEidAlAdha => '10 Зул-Хиджа';

  @override
  String get specialDayDateIslamicNewYear => '1 Мухаррам';

  @override
  String get specialDayDateMawlidAnNabi => '12 Раби әл-Әууәл';

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
    return 'Компас қатесі: $error';
  }

  @override
  String get qiblaSensorUnavailable => 'Бұл құрылғыда компас сенсоры жоқ.';

  @override
  String get qiblaLocationRequiredTitle => 'Қибла үшін орын қажет';

  @override
  String get qiblaLocationRequiredBody =>
      'Қибла компасын қолданбас бұрын, бағытты дәл есептеу үшін нақты орналасқан жеріңізді орнатыңыз.';

  @override
  String get adhanNotificationChannelName => 'Азан хабарландырулары';

  @override
  String get adhanNotificationChannelDescription =>
      'Азан дыбысымен намаз уақыты туралы ескертулер.';

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
  String get downloadManager => 'Жүктеу менеджері';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Жүктеп алу аяқталды';

  @override
  String get downloadFailed => 'Жүктеп алу сәтсіз аяқталды';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'Интернет қосылымы жоқ';

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
  String get tapToCount => 'Санау үшін түртіңіз';

  @override
  String get zikrCompletedMashAllah => 'Аяқталды! МашАллах';

  @override
  String get zikrMeaningSubhanAllah => 'Аллаһ барлық кемшіліктен жоғары.';

  @override
  String get zikrMeaningAlhamdulillah => 'Барлық мақтау Аллаға тән.';

  @override
  String get zikrMeaningAllahuAkbar => 'Алла ең ұлы.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Алладан басқа тәңір жоқ.';

  @override
  String get zikrMeaningAstaghfirullah => 'Алладан кешірім сұраймын.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Алладан басқа күш те, күш те жоқ.';

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
  String get offlineDownloadManager => 'Офлайн жүктеу менеджері';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Құрылғының ішкі жадын босатыңыз.';

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
  String get audioVoice => 'Аудио дауыс';

  @override
  String get audioVoiceMisharyAlafasy => 'Ер (Мишари Алафаси)';

  @override
  String get audioVoiceAbdulBaset => 'Ер (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Ер (Судайс)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Qibla Calibration';

  @override
  String get compassSmoothing => 'Компас тегістеу';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Калибрлеудің ауытқуы';

  @override
  String currentOffset(Object offset) {
    return 'Ағымдағы: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Компасқа қолмен түзету қажет болса, реттеңіз. Оң мәндер сағат тілімен бұрылады.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Diagnostics';

  @override
  String get diagnosticsNotSet => 'Орнатылмаған';

  @override
  String get diagnosticsPrayerProfile => 'Намаз профилі';

  @override
  String get diagnosticsPrayerSource => 'Намаз органы';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Арнаулы / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Қолмен реттелетін бұрыштар (институционалдық дереккөз жоқ)';

  @override
  String get diagnosticsCloudDriven => 'Бұлтқа негізделген';

  @override
  String get diagnosticsAdhanAudioAssets => 'Азан аудио активтері';

  @override
  String get diagnosticsUiAudioAssets => 'UI аудио активтері';

  @override
  String get diagnosticsQuranAudioAssets => 'Құран аудио активтері';

  @override
  String get diagnosticsAudioAssets => 'Аудио активтері';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count файлдар';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Манифест оқылмады: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Localization Locals';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count қолдау көрсетеді';
  }

  @override
  String get diagnosticsQuranDataset => 'Құран деректер жинағы';

  @override
  String get diagnosticsQuranSurahs => 'Құран сүрелер';

  @override
  String get diagnosticsQuranAyahs => 'Құран аяттары';

  @override
  String get diagnosticsQuranJuzMetadata => 'Құран Жүз метадеректері';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Supabase қолданбасында бұлтты кестелер жоқ; жинақталған қалпына келтіру белсенді';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Бұлтты тексеру сәтсіз аяқталды: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz метадеректері жоқ; жинақталған құрылымдық қалпына келтіру белсенді';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Бұлтты құрылымды тексеру сәтсіз аяқталды: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Калибрлеу қажет. 8-суреттегі құрылғыны айналдырыңыз.';

  @override
  String get dailyVerse => 'Күнделікті өлең';

  @override
  String get todaysIbadah => 'Бүгінгі ибадат';

  @override
  String get quickAccess => 'Жылдам қол жеткізу';

  @override
  String get assistant => 'Көмекші';

  @override
  String get places => 'Орындар';

  @override
  String get library => 'Кітапхана';

  @override
  String get analytics => 'Аналитика';

  @override
  String get dailyDuas => 'Күнделікті дұғалар';

  @override
  String essentialDuas(String count) {
    return '$count маңызды дұғалар';
  }

  @override
  String get duaUnavailableTitle => 'Расталған дұғалар әлі қол жетімді емес';

  @override
  String get duaUnavailableBody =>
      'Расталған күнделікті дұғалар бұл құрылғыға әлі синхрондалмаған. Тексерілмеген қалпына келтірудің орнына бастапқы дуаларды жүктеу үшін бұлт көзіне қосылыңыз.';

  @override
  String get duaCategoryQuranic => 'Құран дұғасы';

  @override
  String get duaCategoryMorningEvening => 'Таңертең және кешке';

  @override
  String get duaCategoryTasbih => 'Тасбих';

  @override
  String get duaCategoryProtection => 'Қорғау';

  @override
  String get duaCategoryBeginning => 'Басталуы';

  @override
  String get duaCategorySleep => 'Ұйқы';

  @override
  String get duaCategoryFoodDrink => 'Тамақ және сусын';

  @override
  String get duaCategoryForgiveness => 'Кешірім';

  @override
  String get duaCategoryHome => 'Үй';

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
  String get islamicEducation => 'Исламдық білім';

  @override
  String get sukunAudioTitle => 'Сукун дыбыстары';

  @override
  String get hadithCollections => 'Хадистер жинақтары';

  @override
  String get hadithSourcePending => 'Тексерілген дереккөз күтілуде';

  @override
  String get hadithUnavailableTitle =>
      'Расталған хадис жинақтары әлі қол жетімді емес';

  @override
  String get hadithUnavailableBody =>
      'Бұл құрастыру әлі де расталмаған сыртқы хадис арнасына байланысты. Хадистерді шолу бастапқы деректер жинағы синхрондалғанша өшірілген күйде қалады.';

  @override
  String get paywallUnlockAll =>
      'Рухани саяхатыңыздың барлық мүмкіндіктерін ашыңыз';

  @override
  String get premiumProductUnavailable =>
      'Премиум өнім дәл қазір қолжетімді емес. Тағы жасауды сәл кейінірек көріңізді өтінеміз.';

  @override
  String get premiumPurchaseFailed => 'Сатып алу аяқталмады. Қайталап көріңіз.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'AI-мен жұмыс істейтін шексіз сұрақ-жауап';

  @override
  String get paywallFeature2Title => 'Шексіз офлайн';

  @override
  String get paywallFeature2Desc => 'Барлық оқуларды жүктеп алыңыз';

  @override
  String get paywallFeature3Title => 'Эксклюзивті дизайн';

  @override
  String get paywallFeature3Desc => 'Премиум тақырыптар мен қаріптер';

  @override
  String get paywallFeature4Title => 'Жарнамасыз';

  @override
  String get paywallFeature4Desc => 'Нөлдік жарнамалар';

  @override
  String get paywallGetAccess => 'Өмір бойы қолжетімділікті алыңыз — \$1.00';

  @override
  String get restorePurchases => 'Сатып алуларды қалпына келтіру';

  @override
  String get zakatCalculator => 'Зекет калькуляторы';

  @override
  String get zakatGold => 'Алтын (Алтын)';

  @override
  String get zakatSilver => 'Күміс (Гүмүш)';

  @override
  String get zakatCashBank => 'Қолма-қол ақша / банк';

  @override
  String get zakatBusiness => 'Бизнес';

  @override
  String get zakatInvestments => 'Инвестициялар';

  @override
  String get zakatWeightGrams => 'Салмағы (г)';

  @override
  String get zakatPricePerGram => 'Баға/г';

  @override
  String get zakatTotalAmount => 'Жалпы сома';

  @override
  String get zakatInventoryValue => 'Түгендеу құны';

  @override
  String get zakatDebts => 'Қарыздар';

  @override
  String get zakatTotal => 'Барлығы';

  @override
  String get calculateZakat => 'Зекет есепте';

  @override
  String get nisabNotReached => 'Нисаба жеткен жоқ. Зекет парыз емес.';

  @override
  String get totalZakat => 'Жалпы зекет';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Нисаб: $nisab • Активтер: $assets';
  }

  @override
  String get zakatGoldZakat => 'Алтын Зекет';

  @override
  String get zakatSilverZakat => 'Күміс Зекет';

  @override
  String get zakatCashZakat => 'Қолма-қол зекет';

  @override
  String get zakatBusinessZakat => 'Бизнес Зекет';

  @override
  String get zakatInvestmentZakat => 'Инвестиция зекет';

  @override
  String get chatbotGreeting =>
      'Ассаламу алейкум! Мен сенің исламдық көмекшіңмін. Намаз, ораза, зекет немесе кез келген ислами тақырып туралы сұраңыз.';

  @override
  String get chatbotLimitReached =>
      'Күнделікті сұрау шегіне жетті. Шексіз Premium нұсқасына жаңартыңыз.';

  @override
  String get chatbotErrorMsg => 'Мен жауап бере алмадым. Қайталап көріңіз.';

  @override
  String get chatbotOfflinePrompt =>
      'Тексерілген офлайн исламдық білім базасы әлі де құрылып жатыр. Офлайн қалпына келтіруді қазір қосуға болады, бірақ ол бастапқы деректер жинағы дайын болғанша шектеулі қауіпсіз хабарларды ғана көрсетеді.\n\nОфлайн қалпына келтіруді қосқыңыз келе ме?';

  @override
  String get chatbotOfflineSwitched =>
      'Офлайн қалпына келтіру қосылды. Тексерілген жергілікті исламдық жауаптар әлі дайын емес.';

  @override
  String get chatbotOfflineDownloadLabel => 'Офлайн қалпына келтіруді қосыңыз';

  @override
  String get downloadPreparing => 'Жүктеп алу дайындалуда...';

  @override
  String downloadingSurah(String surah, String total) {
    return '$surah / $total сүресі жүктелуде';
  }

  @override
  String get downloadCompleted =>
      'Бұл қари үшін барлық сүрелер жүктеліп қойған.';

  @override
  String get offlineQuranAudioPacks => 'Офлайн Құран аудио бумалары';

  @override
  String storedOnDeviceMb(String size) {
    return 'Құрылғыда сақталған: $size МБ';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total сүрелер жүктелді';
  }

  @override
  String get redownloadMissingRepair => 'Жөндеу / Жүктеу жоқ';

  @override
  String get downloadAction => 'Жүктеп алу';

  @override
  String get resumeDownload => 'Жүктеп алуды жалғастыру';

  @override
  String get deleteDownloadedFiles => 'Жүктелген файлдарды жою';

  @override
  String get downloadCancelling => 'Бас тартуда...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return '$reciter үшін жүктеп алу тоқтатылды.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return '$reciter үшін жүктеп алу аяқталды.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return '$reciter үшін $failed орындалмаған сүрелермен жүктеп алу аяқталды ($downloaded/$total жүктеп алынды).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return '$reciter үшін офлайн файлдар жойылды.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Құранның расталған аудио көздері дәл қазір қолжетімсіз.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Құранның расталған аудио жинағы толық емес ($available/$total). Бұлт тұқымын жаңартып, әрекетті қайталаңыз.';
  }

  @override
  String get chatbotHint => 'Сұрақ қойыңыз...';

  @override
  String get chatbotThinking => 'Ойлану...';

  @override
  String get sukunMixerSubtitle => 'Табиғат пен Құран араластырғыш';

  @override
  String get audioPlayFailed => 'Аудио ойнату сәтсіз аяқталды';

  @override
  String get sukunNatureLabel => 'Сукун (табиғат)';

  @override
  String get sukunRainOfMercy => 'Мейірімділік жаңбыры';

  @override
  String get sukunGardenOfPeace => 'Бейбітшілік бағы';

  @override
  String get sukunMidnightCalm => 'Түн ортасы тыныштық';

  @override
  String get sukunOceanTawheed => 'Мұхит таухиді';

  @override
  String get sukunUnavailableTitle => 'Дыбыстық көріністер қолжетімсіз';

  @override
  String get sukunUnavailableBody =>
      'Бұл құрастыруға әлі қажет Sukun дыбыстық пейзаж активтері кірмейді.';

  @override
  String get prayerCompletion => 'Намаздың аяқталуы';

  @override
  String get streaks => 'Жолақтар';

  @override
  String get dayStreak => 'Күндізгі кезең';

  @override
  String get bestStreak => 'Үздік серия';

  @override
  String get chatbotCloudAiLabel => 'Бұлтты AI';

  @override
  String get chatbotLocalAiLabel => 'Офлайн қалпына келтіру';

  @override
  String get chatbotUseCloudAi => 'Cloud AI пайдалану (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Офлайн қалпына келтіруді қосыңыз';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count қалды';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API конфигурацияланбаған. Расталған офлайн исламдық нұсқаулық әлі қолжетімді емес.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Тексерілген жергілікті ислам нұсқауы әлі қолжетімді емес. Дереккөзден алынған жауаптар үшін Cloud AI жүйесіне ауысыңыз.';

  @override
  String get mosques => 'Мешіттер';

  @override
  String get halalFood => 'Халал тағам';

  @override
  String get placesSearchArea => 'Осы аймақты іздеңіз';

  @override
  String get nearbyMosques => 'Маңайдағы мешіттер';

  @override
  String get islamicSchools => 'Ислам мектептері';

  @override
  String placesFoundCount(String count) {
    return '$count табылды';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance км қашықтықта';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API қатесі: $statusCode';
  }

  @override
  String get placesNetworkError => 'Желі қатесі. Қайталап көріңіз.';

  @override
  String get placesLocationRequiredTitle => 'Орын қажет';

  @override
  String get placesLocationRequiredBody =>
      'Маңайдағы мешіттерді, халал тағамдарды және ислам мектептерін дәл іздеу үшін алдымен орынды белгілеңіз.';

  @override
  String get placesMapTilesUnavailableTitle =>
      'Карта тақтайшалары қолжетімді емес';

  @override
  String get placesMapTilesUnavailableBody =>
      'Тексерілген карта тақтасының көзі бұл құрастыру үшін әлі конфигурацияланбаған. Маңайдағы орындар сақталған орыннан әлі де жүктей алады.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'Орындар деректері қолжетімді емес';

  @override
  String get placesDataSourceUnavailableBody =>
      'Тексерілген орындар деректерінің соңғы нүктесі бұл құрастыру үшін әлі конфигурацияланбаған. Маңайдағы іздеуді қоспас бұрын, PLACES_OVERPASS_API_URL мекенжайын бекітілген проксиге немесе провайдерге орнатыңыз.';

  @override
  String get unknownPlaceName => 'Белгісіз аты';

  @override
  String get islamicPlaceFallback => 'Ислам орны';

  @override
  String get asmaMeaning1 => 'Қайырымды';

  @override
  String get asmaMeaning2 => 'Рақымды';

  @override
  String get asmaMeaning3 => 'Патша / Мәңгілік Иеміз';

  @override
  String get asmaMeaning4 => 'Ең қасиетті';

  @override
  String get asmaMeaning5 => 'Бейбітшілік көзі';

  @override
  String get asmaMeaning6 => 'Қауіпсіздікті беруші';

  @override
  String get asmaMeaning7 => 'The Guardian';

  @override
  String get asmaMeaning8 => 'Қымбатты / Ең Құдіретті';

  @override
  String get asmaMeaning9 => 'Компеллер';

  @override
  String get asmaMeaning10 => 'Ең керемет';

  @override
  String get asmaMeaning11 => 'Жасаушы';

  @override
  String get asmaMeaning12 => 'Тапсырысты жасаушы';

  @override
  String get asmaMeaning13 => 'Сұлулықты қалыптастырушы';

  @override
  String get asmaMeaning14 => 'Кешірімді';

  @override
  String get asmaMeaning15 => 'Бағындырушы';

  @override
  String get asmaMeaning16 => 'Бәрін беруші';

  @override
  String get asmaMeaning17 => 'Қолдаушы';

  @override
  String get asmaMeaning18 => 'Ашушы';

  @override
  String get asmaMeaning19 => 'Барлығын Білуші';

  @override
  String get asmaMeaning20 => 'Құрылғы';

  @override
  String get asmaMeaning21 => 'Жеңілдеткіш';

  @override
  String get asmaMeaning22 => 'Абазер';

  @override
  String get asmaMeaning23 => 'Exalter';

  @override
  String get asmaMeaning24 => 'Құрмет беруші';

  @override
  String get asmaMeaning25 => 'Қорлаушы';

  @override
  String get asmaMeaning26 => 'Барлығын естуші';

  @override
  String get asmaMeaning27 => 'Бәрін көруші';

  @override
  String get asmaMeaning28 => 'Судья';

  @override
  String get asmaMeaning29 => 'Әділ';

  @override
  String get asmaMeaning30 => 'Нәзік';

  @override
  String get asmaMeaning31 => 'Бәрінен хабардар';

  @override
  String get asmaMeaning32 => 'The Forebearing';

  @override
  String get asmaMeaning33 => 'Керемет';

  @override
  String get asmaMeaning34 => 'Ұлы Кешіруші';

  @override
  String get asmaMeaning35 => 'Ризашылықты марапаттаушысы';

  @override
  String get asmaMeaning36 => 'Ең жоғары';

  @override
  String get asmaMeaning37 => 'Ең керемет';

  @override
  String get asmaMeaning38 => 'Қорғаушы';

  @override
  String get asmaMeaning39 => 'Нәрлендіргіш';

  @override
  String get asmaMeaning40 => 'Есепші';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'Жомарт';

  @override
  String get asmaMeaning43 => 'Қараушы';

  @override
  String get asmaMeaning44 => 'Дұғаға жауап беруші';

  @override
  String get asmaMeaning45 => 'Бәрін түсіну';

  @override
  String get asmaMeaning46 => 'Керемет Дана';

  @override
  String get asmaMeaning47 => 'Сүйікті адам';

  @override
  String get asmaMeaning48 => 'Ең Даңқты';

  @override
  String get asmaMeaning49 => 'Тірілуші';

  @override
  String get asmaMeaning50 => 'Куәгер';

  @override
  String get asmaMeaning51 => 'Шындық';

  @override
  String get asmaMeaning52 => 'Барлығы жеткілікті сенімді тұлға';

  @override
  String get asmaMeaning53 => 'Барлық Күштің Иесі';

  @override
  String get asmaMeaning54 => 'Күшті';

  @override
  String get asmaMeaning55 => 'Қорғаушы';

  @override
  String get asmaMeaning56 => 'Мақтаулы';

  @override
  String get asmaMeaning57 => 'Бағалаушы';

  @override
  String get asmaMeaning58 => 'Бастаушы';

  @override
  String get asmaMeaning59 => 'Қалпына келтіруші';

  @override
  String get asmaMeaning60 => 'Өмір Беруші';

  @override
  String get asmaMeaning61 => 'Өмірді алушы';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'Өзін-өзі қамтамасыз етуші';

  @override
  String get asmaMeaning64 => 'Табу';

  @override
  String get asmaMeaning65 => 'Даңқты';

  @override
  String get asmaMeaning66 => 'Жалғыз';

  @override
  String get asmaMeaning67 => 'Бір';

  @override
  String get asmaMeaning68 => 'Барлық іздеген адам';

  @override
  String get asmaMeaning69 => 'Күшті';

  @override
  String get asmaMeaning70 => 'Барлық құдіреттің Жаратушысы';

  @override
  String get asmaMeaning71 => 'Expediter';

  @override
  String get asmaMeaning72 => 'Кешіктіруші';

  @override
  String get asmaMeaning73 => 'Бірінші';

  @override
  String get asmaMeaning74 => 'Соңғы';

  @override
  String get asmaMeaning75 => 'Манифест';

  @override
  String get asmaMeaning76 => 'Жасырын';

  @override
  String get asmaMeaning77 => 'Губернатор';

  @override
  String get asmaMeaning78 => 'Жоғары';

  @override
  String get asmaMeaning79 => 'Жақсылық жасаушы';

  @override
  String get asmaMeaning80 => 'Тәубе ету нұсқаулығы';

  @override
  String get asmaMeaning81 => 'Кек алушы';

  @override
  String get asmaMeaning82 => 'Кешіруші';

  @override
  String get asmaMeaning83 => 'Клемент';

  @override
  String get asmaMeaning84 => 'Барлығының Иесі/Егемені';

  @override
  String get asmaMeaning85 => 'Ұлылық пен жомарттық иесі';

  @override
  String get asmaMeaning86 => 'Әділ';

  @override
  String get asmaMeaning87 => 'Жинаушы';

  @override
  String get asmaMeaning88 => 'Бай';

  @override
  String get asmaMeaning89 => 'Байытқыш';

  @override
  String get asmaMeaning90 => 'Зиянның алдын алу';

  @override
  String get asmaMeaning91 => 'Зиян келтіруші';

  @override
  String get asmaMeaning92 => 'Игіліктер беруші';

  @override
  String get asmaMeaning93 => 'Жарық';

  @override
  String get asmaMeaning94 => 'Басшы';

  @override
  String get asmaMeaning95 => 'Бастаушы';

  @override
  String get asmaMeaning96 => 'Мәңгілік';

  @override
  String get asmaMeaning97 => 'Мұрагер';

  @override
  String get asmaMeaning98 => 'Ең әділ жетекші';

  @override
  String get asmaMeaning99 => 'Науқас';
}
