// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Macedonian (`mk`).
class AppLocalizationsMk extends AppLocalizations {
  AppLocalizationsMk([String locale = 'mk']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Исламски пат на светлината';

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
  String get fajr => 'Фаџр';

  @override
  String get sunrise => 'Изгрејсонце';

  @override
  String get dhuhr => 'Духр';

  @override
  String get asr => 'Аср';

  @override
  String get maghrib => 'Магриб';

  @override
  String get isha => 'Иша';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Време за $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Време е да се молиме $prayerName.';
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
  String get locationServiceDisabled => 'Услугата за локација е оневозможена.';

  @override
  String get locationPermissionDenied => 'Дозволата за локација е одбиена.';

  @override
  String get locationDetectionFailed =>
      'Не може да се открие вашата локација. Изберете град рачно или обидете се повторно.';

  @override
  String citiesCount(String count) {
    return '$count градови';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'Не се пронајдени резултати';

  @override
  String get loading => 'Се вчитува...';

  @override
  String get error => 'Грешка';

  @override
  String get appErrorOccurred => 'Се појави грешка';

  @override
  String get appUnknownError => 'Непозната грешка';

  @override
  String get quranLoadFailed =>
      'Содржината на Куранот не можеше да се вчита. Ве молиме обидете се повторно.';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Освежи';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Избриши';

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
    return 'Аја $ayah';
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
  String get tafsirLoading => 'Се вчитува тафсирот...';

  @override
  String get tafsirSourceLabel => 'Извор на тафсир';

  @override
  String get tafsirNoSurahFound => 'Не е пронајден тефсир за оваа сура.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Не е пронајден тафсир за аја $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Тафсирот не можеше да се вчита.';

  @override
  String get tafsirNoTextForAyah => 'Нема тафсирски текст за овој аја.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Се презема тафсир $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Се вчитува тефсирот $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Изворот на Тафсир врати HTTP $statusCode грешка.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Избраниот извор на тафсир не врати записи.';

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
      'други се молат: „Господару наш, дај ни добро на овој свет и на Ахирет и заштити нè од измачувањето на огнот“.';

  @override
  String get duaMeaning2 =>
      'Бог не оптоварува ниту една душа со повеќе отколку што може да поднесе: секоја добива што и да е добро што го направила, а трпи лошо - „Господи, не нè земај на задача ако заборавиме или направиме грешки. Господи, не оптоварувај нè како што ги оптоваруваше оние пред нас. Господи, не оптоварувај нè со повеќе отколку што имаме сила да поднесеме. Прости ни, прости ни и помилуј нѐ. Ти си наш Заштитник, затоа помогни ни против неверниците.';

  @override
  String get duaMeaning3 =>
      '„Господару наш, не дозволувај нашите срца да отстапуваат откако Ти нѐ упати. Дарувај ни ја Твојата милост: Ти си секогаш Давател.';

  @override
  String get duaMeaning4 =>
      'Господи, дај јас и моето потомство да ја одржуваме молитвата. Господи наш, прими го моето барање.';

  @override
  String get duaMeaning5 =>
      'и спушти го своето крило со понизност кон нив во љубезност и кажи: „Господи, помилуј ги, како што се грижеа за мене кога бев мал“.';

  @override
  String get duaMeaning6 =>
      'возвишен да е Бог, Кој навистина владее. [Пророку], не брзај да рецитираш пред да заврши откровението, туку кажи: „Господи, зголеми ми го знаењето!“';

  @override
  String get duaMeaning7 =>
      'Кажи [Пророк]: „Господи, прости и помилуј: Ти си најмилосрден од сите“.';

  @override
  String get duaMeaning8 =>
      'оние кои се молат: „Господи наш, дај ни радост во нашите сопружници и потомци. Направи ни добар пример за оние кои се свесни за Тебе“.';

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
  String get hadithCollection => 'Збирка хадиси';

  @override
  String get hadithBooks => 'Книги за хадис';

  @override
  String get searchHadith => 'Пребарајте хадис';

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
  String get openInYoutube => 'Отворете во YouTube';

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
  String get islamicNewYear => 'Исламска Нова Година';

  @override
  String get mawlidAnNabi => 'Мевлид ан-Наби';

  @override
  String get specialDayDateRamadanStart => '1 Рамазан';

  @override
  String get specialDayDateLaylatAlQadr => '27 Рамазан';

  @override
  String get specialDayDateEidAlFitr => '1 Шавал';

  @override
  String get specialDayDateEidAlAdha => '10 дул Хиџа';

  @override
  String get specialDayDateIslamicNewYear => '1 Мухарам';

  @override
  String get specialDayDateMawlidAnNabi => '12 Раби ал-Авал';

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
    return 'Грешка на компасот: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Сензорот за компас е недостапен на овој уред.';

  @override
  String get qiblaLocationRequiredTitle => 'Потребна е локација за Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Поставете ја вашата вистинска локација пред да го користите компасот Qibla за да може точно да се пресмета насоката.';

  @override
  String get adhanNotificationChannelName => 'Известувања за Азан';

  @override
  String get adhanNotificationChannelDescription =>
      'Предупредува за време на молитвата со звук на азан.';

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
  String get downloadManager => 'Менаџер за преземање';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Преземањето е завршено';

  @override
  String get downloadFailed => 'Преземањето не успеа';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'Нема интернет конекција';

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
  String get zikrCompletedMashAllah => 'Завршено! МашАлах';

  @override
  String get zikrMeaningSubhanAllah => 'Алах е далеку над секоја несовршеност.';

  @override
  String get zikrMeaningAlhamdulillah => 'Сите пофалби му припаѓаат на Аллах.';

  @override
  String get zikrMeaningAllahuAkbar => 'Аллах е најголем.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Нема бог освен Алах.';

  @override
  String get zikrMeaningAstaghfirullah => 'Барам прошка од Аллах.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Нема сила и сила освен преку Аллах.';

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
  String get offlineDownloadManager => 'Офлајн менаџер за преземање';

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
  String get audioVoice => 'Аудио глас';

  @override
  String get audioVoiceMisharyAlafasy => 'Машко (Мишари Алафаси)';

  @override
  String get audioVoiceAbdulBaset => 'Машко (АбдулБасет)';

  @override
  String get audioVoiceSudais => 'машки (Судаис)';

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
  String get diagnosticsNotSet => 'Не е поставено';

  @override
  String get diagnosticsPrayerProfile => 'Профил на молитва';

  @override
  String get diagnosticsPrayerSource => 'Молитвен орган';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Прилагодено / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Рачни приспособени агли (без институционален извор)';

  @override
  String get diagnosticsCloudDriven => 'Облак управувано';

  @override
  String get diagnosticsAdhanAudioAssets => 'Аудио средства на Адан';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Аудио средства на Куранот';

  @override
  String get diagnosticsAudioAssets => 'Аудио средства';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count датотеки';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Читањето на манифестот не успеа: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Локали за локализација';

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
      'Недостасуваат табели за облак во Supabase; пакет резервни активни';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Недостасуваат метаподатоци за Cloud juz; комплет структурен резервен активен';

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
  String get dailyVerse => 'Дневен стих';

  @override
  String get todaysIbadah => 'Денешниот Ибаде';

  @override
  String get quickAccess => 'Брз пристап';

  @override
  String get assistant => 'асистент';

  @override
  String get places => 'Места';

  @override
  String get library => 'Библиотека';

  @override
  String get analytics => 'Анализа';

  @override
  String get dailyDuas => 'Дневен Дуас';

  @override
  String essentialDuas(String count) {
    return '$count суштински дуи';
  }

  @override
  String get duaUnavailableTitle => 'Потврдените дуи сè уште не се достапни';

  @override
  String get duaUnavailableBody =>
      'Потврдените дневни дуа сè уште не се синхронизирани со уредов. Поврзете се со изворот на облак за да ги вчитате изворните дуа наместо непроверена резервна копија.';

  @override
  String get duaCategoryQuranic => 'Куранска дуа';

  @override
  String get duaCategoryMorningEvening => 'Наутро и навечер';

  @override
  String get duaCategoryTasbih => 'Тасбих';

  @override
  String get duaCategoryProtection => 'Заштита';

  @override
  String get duaCategoryBeginning => 'Почетоци';

  @override
  String get duaCategorySleep => 'Спиј';

  @override
  String get duaCategoryFoodDrink => 'Храна и пијалок';

  @override
  String get duaCategoryForgiveness => 'Простување';

  @override
  String get duaCategoryHome => 'Дома';

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
  String get islamicEducation => 'Исламско образование';

  @override
  String get sukunAudioTitle => 'Сукунски звуци';

  @override
  String get hadithCollections => 'Збирки на хадиси';

  @override
  String get hadithSourcePending => 'Потврден извор е на чекање';

  @override
  String get hadithUnavailableTitle =>
      'Потврдени збирки на хадиси сè уште не се достапни';

  @override
  String get hadithUnavailableBody =>
      'Оваа конструкција сè уште зависи од непроверена надворешна храна за хадис. Прелистувањето хадиси останува оневозможено додека не се синхронизира изворната база на податоци.';

  @override
  String get paywallUnlockAll =>
      'Отклучете ги сите функции за вашето духовно патување';

  @override
  String get premiumProductUnavailable =>
      'Премиум производ не е достапен во моментов. Обидете се повторно подоцна.';

  @override
  String get premiumPurchaseFailed =>
      'Купувањето не може да се заврши. Ве молиме обидете се повторно.';

  @override
  String get paywallFeature1Title => 'Неврален асистент плус';

  @override
  String get paywallFeature1Desc =>
      'Прашања и одговори со неограничена вештачка интелигенција';

  @override
  String get paywallFeature2Title => 'Неограничено офлајн';

  @override
  String get paywallFeature2Desc => 'Преземете ги сите рецитации';

  @override
  String get paywallFeature3Title => 'Ексклузивни дизајни';

  @override
  String get paywallFeature3Desc => 'Премиум теми и фонтови';

  @override
  String get paywallFeature4Title => 'Без реклами';

  @override
  String get paywallFeature4Desc => 'Нула огласи';

  @override
  String get paywallGetAccess => 'Добијте доживотен пристап - 1,00 долари';

  @override
  String get restorePurchases => 'Вратете ги набавките';

  @override
  String get zakatCalculator => 'Калкулатор за закат';

  @override
  String get zakatGold => 'Злато (Алтин)';

  @override
  String get zakatSilver => 'Сребрена (Gümüş)';

  @override
  String get zakatCashBank => 'Пари / Банка';

  @override
  String get zakatBusiness => 'Бизнис';

  @override
  String get zakatInvestments => 'Инвестиции';

  @override
  String get zakatWeightGrams => 'Тежина (g)';

  @override
  String get zakatPricePerGram => 'Цена/гр';

  @override
  String get zakatTotalAmount => 'Вкупен износ';

  @override
  String get zakatInventoryValue => 'Вредност на залихите';

  @override
  String get zakatDebts => 'Долгови';

  @override
  String get zakatTotal => 'Вкупно';

  @override
  String get calculateZakat => 'Пресметајте го Зекат';

  @override
  String get nisabNotReached => 'Нисаб не стигна. Зекат не е задолжителен.';

  @override
  String get totalZakat => 'Вкупен Закат';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Нисаб: $nisab • Средства: $assets';
  }

  @override
  String get zakatGoldZakat => 'Златен Закат';

  @override
  String get zakatSilverZakat => 'Сребрен закат';

  @override
  String get zakatCashZakat => 'Готовински Закат';

  @override
  String get zakatBusinessZakat => 'Деловен зекат';

  @override
  String get zakatInvestmentZakat => 'Инвестициски зекат';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Достигнато е дневниот лимит за барање. Надградете на Premium за неограничено.';

  @override
  String get chatbotErrorMsg =>
      'Не можев да генерирам одговор. Ве молиме обидете се повторно.';

  @override
  String get chatbotOfflinePrompt =>
      'Потврдената офлајн база на исламско знаење сè уште се чува. Може да овозможите офлајн резервна копија сега, но ќе прикажува само ограничени безбедни пораки додека не се подготви изворната база на податоци.\n\nДали сакате да овозможите офлајн резервна копија?';

  @override
  String get chatbotOfflineSwitched =>
      'Резервната офлајн е овозможена. Потврдените локални исламски одговори сè уште не се подготвени.';

  @override
  String get chatbotOfflineDownloadLabel => 'Овозможете офлајн резервни';

  @override
  String get downloadPreparing => 'Preparing download...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Downloading surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Сите сура се веќе преземени за овој рецитатор.';

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
  String get downloadAction => 'Преземи';

  @override
  String get resumeDownload => 'Продолжи со преземање';

  @override
  String get deleteDownloadedFiles => 'Избришете ги преземените датотеки';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Преземањето е откажано за $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Преземањето е завршено за $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Преземањето заврши за $reciter со $failed неуспешни сура ($downloaded/$total преземени).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Deleted offline files for $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Потврдените аудиоизвори на Куранот не се достапни во моментов.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Потврдениот аудио пакет од Куранот е нецелосен ($available/$total). Освежете го семето на облак и обидете се повторно.';
  }

  @override
  String get chatbotHint => 'Ask a question...';

  @override
  String get chatbotThinking => 'Thinking...';

  @override
  String get sukunMixerSubtitle => 'Мешалка за природа и Куран';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Сукун (Природа)';

  @override
  String get sukunRainOfMercy => 'Дожд на милоста';

  @override
  String get sukunGardenOfPeace => 'Градина на мирот';

  @override
  String get sukunMidnightCalm => 'Полноќно мирно';

  @override
  String get sukunOceanTawheed => 'Океански тевхид';

  @override
  String get sukunUnavailableTitle => 'Звучните пејзажи се недостапни';

  @override
  String get sukunUnavailableBody =>
      'Оваа конструкција сè уште не ги вклучува потребните средства за звучен пејзаж на Sukun.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Дневна низа';

  @override
  String get bestStreak => 'Најдобра серија';

  @override
  String get chatbotCloudAiLabel => 'Облак вештачка интелигенција';

  @override
  String get chatbotLocalAiLabel => 'Резервни офлајн';

  @override
  String get chatbotUseCloudAi => 'Користете Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Овозможете офлајн резервни';

  @override
  String chatbotQueriesLeft(String count) {
    return 'Замина $count';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API не е конфигуриран. Ве молиме префрлете се на локална вештачка интелигенција.';

  @override
  String get chatbotLocalNoInfo =>
      '[ОФЛАЈН] Потврдено локално исламско упатство сè уште не е достапно. Префрлете се на Cloud AI за одговори со извори.';

  @override
  String get mosques => 'Џамии';

  @override
  String get halalFood => 'Халал храна';

  @override
  String get placesSearchArea => 'Пребарајте ја оваа област';

  @override
  String get nearbyMosques => 'Во близина џамии';

  @override
  String get islamicSchools => 'Исламски училишта';

  @override
  String placesFoundCount(String count) {
    return 'Пронајден е $count';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance км';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Грешка во API: $statusCode';
  }

  @override
  String get placesNetworkError =>
      'Мрежна грешка. Ве молиме обидете се повторно.';

  @override
  String get placesLocationRequiredTitle => 'Потребна е локација';

  @override
  String get placesLocationRequiredBody =>
      'Прво поставете локација за да може прецизно да се пребаруваат џамиите, халал храната и исламските училишта во близина.';

  @override
  String get placesMapTilesUnavailableTitle =>
      'Плочките на картата се недостапни';

  @override
  String get placesMapTilesUnavailableBody =>
      'Потврден извор на плочка од карта сè уште не е конфигуриран за оваа верзија. Местата во близина сè уште може да се вчитаат од вашата зачувана локација.';

  @override
  String get unknownPlaceName => 'Непознато име';

  @override
  String get islamicPlaceFallback => 'Исламско место';

  @override
  String get asmaMeaning1 => 'Добриот';

  @override
  String get asmaMeaning2 => 'Милостивиот';

  @override
  String get asmaMeaning3 => 'Кралот / Вечниот Господ';

  @override
  String get asmaMeaning4 => 'Пресвета';

  @override
  String get asmaMeaning5 => 'Изворот на мирот';

  @override
  String get asmaMeaning6 => 'Давачот на безбедност';

  @override
  String get asmaMeaning7 => 'Гардијан';

  @override
  String get asmaMeaning8 => 'Скапоцениот / Најмоќниот';

  @override
  String get asmaMeaning9 => 'Комплерот';

  @override
  String get asmaMeaning10 => 'Најголемиот';

  @override
  String get asmaMeaning11 => 'Создателот';

  @override
  String get asmaMeaning12 => 'Создавачот на нарачката';

  @override
  String get asmaMeaning13 => 'Обликувач на убавината';

  @override
  String get asmaMeaning14 => 'Простувањето';

  @override
  String get asmaMeaning15 => 'Покорникот';

  @override
  String get asmaMeaning16 => 'Давателот на сите';

  @override
  String get asmaMeaning17 => 'Одржувачот';

  @override
  String get asmaMeaning18 => 'Отворачот';

  @override
  String get asmaMeaning19 => 'Познавачот на сите';

  @override
  String get asmaMeaning20 => 'Констрикторот';

  @override
  String get asmaMeaning21 => 'Ослободувачот';

  @override
  String get asmaMeaning22 => 'Абазерот';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'The Bestower of Honour';

  @override
  String get asmaMeaning25 => 'Понижувачот';

  @override
  String get asmaMeaning26 => 'Слушачот на сите';

  @override
  String get asmaMeaning27 => 'Гледач на сите';

  @override
  String get asmaMeaning28 => 'Судијата';

  @override
  String get asmaMeaning29 => 'Праведникот';

  @override
  String get asmaMeaning30 => 'Суптилниот';

  @override
  String get asmaMeaning31 => 'Сите свесни';

  @override
  String get asmaMeaning32 => 'Претходникот';

  @override
  String get asmaMeaning33 => 'Величествениот';

  @override
  String get asmaMeaning34 => 'Големиот простувач';

  @override
  String get asmaMeaning35 => 'Наградувачот на благодарноста';

  @override
  String get asmaMeaning36 => 'Највисок';

  @override
  String get asmaMeaning37 => 'Најголемиот';

  @override
  String get asmaMeaning38 => 'Зачувачот';

  @override
  String get asmaMeaning39 => 'Хранливата';

  @override
  String get asmaMeaning40 => 'The Reckoner';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'Деликодушниот';

  @override
  String get asmaMeaning43 => 'Будниот';

  @override
  String get asmaMeaning44 => 'Одговорот на молитвата';

  @override
  String get asmaMeaning45 => 'The All Comprehending';

  @override
  String get asmaMeaning46 => 'Совршено мудриот';

  @override
  String get asmaMeaning47 => 'Љубовниот';

  @override
  String get asmaMeaning48 => 'Најславниот';

  @override
  String get asmaMeaning49 => 'Воскресителот';

  @override
  String get asmaMeaning50 => 'Сведокот';

  @override
  String get asmaMeaning51 => 'Вистината';

  @override
  String get asmaMeaning52 => 'Седоволниот управник';

  @override
  String get asmaMeaning53 => 'Поседувачот на сета сила';

  @override
  String get asmaMeaning54 => 'The Forceful';

  @override
  String get asmaMeaning55 => 'Заштитникот';

  @override
  String get asmaMeaning56 => 'Пофалените';

  @override
  String get asmaMeaning57 => 'Оценувачот';

  @override
  String get asmaMeaning58 => 'Изворувачот';

  @override
  String get asmaMeaning59 => 'Обновувачот';

  @override
  String get asmaMeaning60 => 'Давателот на животот';

  @override
  String get asmaMeaning61 => 'Освојувачот на животот';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'Самостојниот одржувач';

  @override
  String get asmaMeaning64 => 'Пронаоѓачот';

  @override
  String get asmaMeaning65 => 'The Glorious';

  @override
  String get asmaMeaning66 => 'Единствениот';

  @override
  String get asmaMeaning67 => 'The One';

  @override
  String get asmaMeaning68 => 'Оној што го бараат сите';

  @override
  String get asmaMeaning69 => 'Моќниот';

  @override
  String get asmaMeaning70 => 'Создателот на сета моќ';

  @override
  String get asmaMeaning71 => 'Expediter';

  @override
  String get asmaMeaning72 => 'Одложувањето';

  @override
  String get asmaMeaning73 => 'Првиот';

  @override
  String get asmaMeaning74 => 'Последниот';

  @override
  String get asmaMeaning75 => 'Манифестот';

  @override
  String get asmaMeaning76 => 'Скриено';

  @override
  String get asmaMeaning77 => 'Гувернерот';

  @override
  String get asmaMeaning78 => 'Врховниот';

  @override
  String get asmaMeaning79 => 'Извршителот на доброто';

  @override
  String get asmaMeaning80 => 'Водич за покајание';

  @override
  String get asmaMeaning81 => 'Одмаздникот';

  @override
  String get asmaMeaning82 => 'Простивачот';

  @override
  String get asmaMeaning83 => 'Климентот';

  @override
  String get asmaMeaning84 => 'Сопственик / Суверен на сите';

  @override
  String get asmaMeaning85 => 'Поседувачот на величественоста и распродажбата';

  @override
  String get asmaMeaning86 => 'The Equitable One';

  @override
  String get asmaMeaning87 => 'Собирачот';

  @override
  String get asmaMeaning88 => 'The Rich One';

  @override
  String get asmaMeaning89 => 'Збогатувачот';

  @override
  String get asmaMeaning90 => 'Превентор на штети';

  @override
  String get asmaMeaning91 => 'Донесувачот на штета';

  @override
  String get asmaMeaning92 => 'Додавачот на придобивки';

  @override
  String get asmaMeaning93 => 'Светлината';

  @override
  String get asmaMeaning94 => 'Водичот';

  @override
  String get asmaMeaning95 => 'Изворувачот';

  @override
  String get asmaMeaning96 => 'Вечниот';

  @override
  String get asmaMeaning97 => 'The Inheritor';

  @override
  String get asmaMeaning98 => 'Најправедниот водич';

  @override
  String get asmaMeaning99 => 'Пациентот Еден';
}
