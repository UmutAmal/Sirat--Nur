// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Breton (`br`).
class AppLocalizationsBr extends AppLocalizations {
  AppLocalizationsBr([String locale = 'br']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Hent islamek ar gouloù';

  @override
  String get home => 'Ti';

  @override
  String get quran => 'Koran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Deiziadur';

  @override
  String get settings => 'Arventennoù';

  @override
  String get nextPrayer => 'Pedenn da heul';

  @override
  String get prayerTimes => 'Amzer ar bedenn';

  @override
  String get continueReading => 'Kenderc\'hel da lenn';

  @override
  String get getLifetimePro => 'Kaout Lifetime Pro';

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
  String get dataStorage => 'Roadennoù ha stokañ';

  @override
  String get clearCache => 'Diverkañ ar c\'hrubuilh';

  @override
  String get cacheClearedSuccess => 'Diverket ar c\'hrubuilh gant berzh';

  @override
  String get location => 'Lec\'h';

  @override
  String get language => 'Yezh';

  @override
  String get selectLanguage => 'Dibab Yezh';

  @override
  String get searchLanguage => 'Klask ouzhpenn 180 yezh...';

  @override
  String get systemDefault => 'Dre ziouer ar reizhiad';

  @override
  String get currentLocation => 'Lec\'hiadur bremañ (GPS)';

  @override
  String get locationServiceDisabled =>
      'Diweredekaet eo ar servij lec\'hiadur.';

  @override
  String get locationPermissionDenied =>
      'Nac\'het eo bet an aotre lec\'hiadur.';

  @override
  String get locationDetectionFailed =>
      'N\'haller ket detektiñ ho lec\'hiadur. Dibabit ur gêr dre zorn pe klaskit en-dro.';

  @override
  String citiesCount(String count) {
    return '$count kêrioù';
  }

  @override
  String get search => 'Klask';

  @override
  String get searchHint => 'Klask...';

  @override
  String get noResults => 'Disoc\'h ebet bet kavet';

  @override
  String get loading => 'O kargañ...';

  @override
  String get error => 'Fazi';

  @override
  String get appErrorOccurred => 'Degouezhet ez eus bet ur fazi';

  @override
  String get appUnknownError => 'Fazi dianav';

  @override
  String get quranLoadFailed =>
      'N\'haller ket kargañ endalc\'had ar C\'horan. Klaskit en-dro mar plij.';

  @override
  String get retry => 'Klask en-dro';

  @override
  String get refreshAction => 'Freskaat';

  @override
  String get cancel => 'Nullañ';

  @override
  String get save => 'Saveteiñ';

  @override
  String get delete => 'Dilemel';

  @override
  String get edit => 'Embann';

  @override
  String get close => 'Serriñ';

  @override
  String get ok => 'MAT EO';

  @override
  String get yes => 'Ya';

  @override
  String get no => 'Ket';

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
  String get reading => 'O lenn';

  @override
  String get recitation => 'Recitation';

  @override
  String get translation => 'Translation';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'O kargañ tafsir...';

  @override
  String get tafsirSourceLabel => 'Tafsir source';

  @override
  String get tafsirNoSurahFound => 'Tafsir ebet evit ar soura-mañ.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Tafsir ebet evit an ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'N\'haller ket kargañ Tafsir.';

  @override
  String get tafsirNoTextForAyah => 'Testenn tafsir ebet evit an ayah-mañ.';

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
    return 'Distroet eo bet ur fazi HTTP $statusCode gant mammenn Tafsir.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'N\'eus bet distroet enankad ebet gant ar vammenn tafsir diuzet.';

  @override
  String get tafsirCacheUnavailable =>
      'N\'eo ket hegerz an tafsir gwiriekaet ezlinenn c\'hoazh. Sinkronisañ un dastumad roadennoù tafsir orin a-raok merdeiñ.';

  @override
  String get bookmarks => 'Sinedoù';

  @override
  String get addBookmark => 'Add Bookmark';

  @override
  String get removeBookmark => 'Remove Bookmark';

  @override
  String get lastRead => 'Lennadenn ziwezhañ';

  @override
  String get dailyZikr => 'Zikr pemdeziek';

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
  String get liveTv => 'Skinwel war-eeun';

  @override
  String get watchLive => 'Watch Live';

  @override
  String get streamError => 'Fazi ar redadeg';

  @override
  String get reload => 'Adkargañ';

  @override
  String get openInYoutube => 'Digor war YouTube';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Fasting';

  @override
  String get quranReading => 'Quran Reading';

  @override
  String get playSurahAudio => 'Seniñ kleweled ar surah';

  @override
  String get pauseSurahAudio => 'Paouez gant kleweled ar surah';

  @override
  String get revelationMeccan => 'Mekka';

  @override
  String get revelationMedinan => 'Medinan';

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
  String get monthlyProgress => 'Araokadennoù miziek';

  @override
  String get statistics => 'Stadegoù';

  @override
  String get hijriCalendar => 'Hijri Calendar';

  @override
  String get gregorianCalendar => 'Deiziadur Gregorian';

  @override
  String get today => 'Today';

  @override
  String get tomorrow => 'Warc\'hoazh';

  @override
  String get yesterday => 'Dec\'h';

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
  String get degrees => 'derez';

  @override
  String get north => 'Norzh';

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
  String get qiblaLocationRequiredTitle => 'Lec\'hiadur ret evit ar Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Lakait ho lec\'hiadur gwirion a-raok implijout ar c\'hompas Qibla evit ma c\'hallfe an tu bezañ jedet gant resisted.';

  @override
  String get adhanNotificationChannelName => 'Kemennadennoù Adhan';

  @override
  String get adhanNotificationChannelDescription =>
      'Kemennadennoù amzer ar bedenn gant son adhan.';

  @override
  String get notifications => 'Kemennadennoù';

  @override
  String get prayerNotifications => 'Kemennadennoù pedenn';

  @override
  String get enableNotifications => 'Gweredekaat ar c\'hemennadennoù';

  @override
  String get notificationTime => 'Eur ar c\'hemenn';

  @override
  String get beforePrayer => 'munut a-raok ar bedenn';

  @override
  String get theme => 'Theme';

  @override
  String get lightMode => 'Light Mode';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get systemTheme => 'Tem ar reizhiad';

  @override
  String get about => 'About';

  @override
  String get version => 'Version';

  @override
  String get privacyPolicy => 'Politikerezh prevezded';

  @override
  String get termsOfService => 'Terms of Service';

  @override
  String get contactUs => 'Contact Us';

  @override
  String get rateApp => 'Priziañ an arload-mañ';

  @override
  String get shareApp => 'Rannañ an arload-mañ';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Sellit ouzh $appName: An arload gwellañ evit ar mod da vevañ islamek ! $url';
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
  String get checkConnection => 'Gwiriit ho kevreadenn mar plij';

  @override
  String get premium => 'Eus ar c\'hentañ';

  @override
  String get upgradeToPro => 'Hizivaat da Pro';

  @override
  String get proFeatures => 'Perzhioù Pro';

  @override
  String get removeAds => 'Dilemel bruderezh';

  @override
  String get unlockAll => 'Dibrennañ an holl endalc\'hadoù';

  @override
  String get exclusiveContent => 'Danvez dibar';

  @override
  String get welcome => 'Degemer mat';

  @override
  String get getStarted => 'Get Started';

  @override
  String get skip => 'Lammat';

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
  String get onboarding2Desc => 'Eurioù pediñ reizh diouzh ho lec\'hiadur';

  @override
  String get onboarding3Title => 'Quran & More';

  @override
  String get onboarding3Desc =>
      'Read Quran, track your reading, and explore Islamic content';

  @override
  String get dhikrLibrary => 'Levraoueg Dhikr';

  @override
  String get resetCounter => 'Reset Counter';

  @override
  String get changeTarget => 'Cheñch ar pal';

  @override
  String get newTarget => 'Pal nevez';

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
  String get dailyChecklist => 'Roll gwiriañ pemdeziek';

  @override
  String get qazaDebt => 'Qaza (Dle)';

  @override
  String get resetQazaData => 'Adderaouekaat roadennoù Qaza';

  @override
  String get resetQazaDebtQuestion => 'Adderaouekaat an dle Qaza ?';

  @override
  String get rawatib => 'Rawatib';

  @override
  String get tahajjud => 'Tahajjud';

  @override
  String get dailyProgress => 'Daily Progress';

  @override
  String get mandatoryPrayers => 'Pedennoù ret';

  @override
  String get sunnahAndOthers => 'Sunnah & Re all';

  @override
  String get spiritualGrowth => 'Kresk speredel';

  @override
  String get mandatoryDuty => 'Dever ret';

  @override
  String get totalPrayers => 'Pedennoù hollek';

  @override
  String get prayerDebt => 'Dle ar bedenn';

  @override
  String get fastingDebt => 'Dle ar yun';

  @override
  String get reset => 'Adderaouekaat';

  @override
  String get days => 'Deizioù';

  @override
  String get premiumIntegrity => 'Eeunded prim';

  @override
  String get recheckPremium => 'Recheck Premium Status';

  @override
  String get syncStore => 'Sync with the store to confirm your entitlement.';

  @override
  String get checkingPremium => 'O gwiriañ statud ar prim...';

  @override
  String get premiumVerified => 'Premium verified.';

  @override
  String get premiumNotFound => 'Premium not found.';

  @override
  String premiumRefreshError(Object error) {
    return 'Could not refresh premium status: $error';
  }

  @override
  String get offlineDownloadManager => 'Merour pellgargañ ezlinenn';

  @override
  String get manageDatasets =>
      'Merañ pakadoù kleweled ha roadennoù ezlinenn bras.';

  @override
  String get freeStorage => 'Digeriñ stokañ diabarzh an dafariad.';

  @override
  String get quranIntegrity => 'Eeunded ar C\'horan';

  @override
  String get checkQuranDb => 'Gwiriit diaz roadennoù ar C\'horan';

  @override
  String get verifyQuranContent => 'Gwiriañ 114 soura ha 6236 aya.';

  @override
  String get checkingQuranDb => 'Checking Quran database...';

  @override
  String get okLabel => 'MAT EO';

  @override
  String get incomplete => 'Diglok';

  @override
  String get notSeeded => 'N\'eo ket hadet';

  @override
  String get quranDbStatus => 'Quran Database Status';

  @override
  String statusLabel(Object status) {
    return 'Status: $status';
  }

  @override
  String surahsCount(Object count) {
    return 'Surahoù : $count (114 gortozet)';
  }

  @override
  String ayahsCount(Object count) {
    return 'Ayahs: $count (6236 gortozet)';
  }

  @override
  String missingArabic(Object count) {
    return 'Arabeg mankout : $count';
  }

  @override
  String missingTurkish(Object count) {
    return 'Turkeg mankout : $count';
  }

  @override
  String dbVersion(Object version) {
    return 'Stumm DB : $version';
  }

  @override
  String dbPath(Object path) {
    return 'Hent : $path';
  }

  @override
  String quranCheckFailed(Object error) {
    return 'Quran check failed: $error';
  }

  @override
  String get audioVoice => 'Mouezh klevet';

  @override
  String get audioVoiceMisharyAlafasy => 'Male (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Male (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Male (Sudais)';

  @override
  String get fajrAngle => 'Korn Fajr';

  @override
  String get ishaAngle => 'Korn Isha';

  @override
  String get qiblaCalibration => 'Qibla Calibration';

  @override
  String get compassSmoothing => 'Eeunaat ar c\'hompas';

  @override
  String get reduceSensorJitter =>
      'Digreskiñ ar c\'hrennlavar evit kaout un nadoz stabiloc\'h.';

  @override
  String get calibrationOffset => 'Dilec\'hiañ ar c\'hefluniadur';

  @override
  String currentOffset(Object offset) {
    return 'Bremañ : $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Kemmañ ma \'z eus ezhomm da reizhañ ho kompas dre zorn. Ar gwerzhioù pozitivel a dremen e tu an eurier.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Adloc\'hit an argerzh arventennoù kentañ.';

  @override
  String get diagnostics => 'Diagnostics';

  @override
  String get diagnosticsNotSet => 'Not set';

  @override
  String get diagnosticsPrayerProfile => 'Profil ar bedenn';

  @override
  String get diagnosticsPrayerSource => 'Aotrouniezh ar bedenn';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Personelaet / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Kornioù personelaet dre zorn (mammenn ensavadurel ebet)';

  @override
  String diagnosticsPrayerHybridSource(String sourceName, String madhab) {
    return '$sourceName doare gant arventennoù $madhab Asr dibabet gant an implijer';
  }

  @override
  String diagnosticsPrayerRegionalFallbackSource(String sourceName) {
    return 'Regional fallback en ur implijout $sourceName. Kadarnait eurioù ar bedenn lec\'hel gant ho moskeenn pe gant aotrouniezh relijiel ofisiel.';
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
  String get healthCheckDesc =>
      'Ober gwirioù yec\'hed ha sellet ouzh stad ar reizhiad.';

  @override
  String get qiblaAligned => 'Kibla Aliet';

  @override
  String get rotateToFindQibla => 'Treiñ evit kavout ar c\'hibla';

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
  String get analytics => 'Dielfennadur';

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
  String get islamicEducation => 'Deskadurezh islamek';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Hadith Collections';

  @override
  String get hadithSourcePending => 'Verified source pending';

  @override
  String get hadithUnavailableTitle =>
      'N\'eus ket c\'hoazh an dastumadoù hadith gwiriekaet';

  @override
  String get hadithUnavailableBody =>
      'Ar sevel-mañ a zalc\'h c\'hoazh war ur stlennvon hadith diavaez nann-gwiriekaet. Chom a ra ar merdeiñ hadith diweredekaet betek ma vo sinkronisaet un dastumad roadennoù orin.';

  @override
  String get paywallUnlockAll =>
      'Unlock all features for your spiritual journey';

  @override
  String get premiumProductUnavailable =>
      'Premium product is not available right now. Please try again later.';

  @override
  String get premiumPurchaseFailed =>
      'N\'hall ket bezañ echuet ar prenadenn. Klaskit en-dro mar plij.';

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
      'Emañ an diaz anaoudegezh islamek ezlinenn kadarnaet o vezañ kempennet c\'hoazh. Gallout a rit gweredekaat an distro ezlinenn bremañ, met ne ziskouez nemet kemennadennoù diogel bevennet betek ma vo prest an dastumad roadennoù orin.\n\nHa fellout a ra deoc\'h gweredekaat an distro ezlinenn ?';

  @override
  String get chatbotOfflineSwitched =>
      'Gweredekaet eo an distro ezlinenn. N\'eo ket prest c\'hoazh ar respontoù islamek lec\'hel kadarnaet.';

  @override
  String get chatbotOfflineDownloadLabel =>
      'Gweredekaat ar c\'hefluniadur ezlinenn';

  @override
  String get downloadPreparing => 'O prientiñ pellgargañ...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Pellgargañ ar surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Pellgarget eo bet an holl souraoù dija evit al lenner-mañ.';

  @override
  String get offlineQuranAudioPacks => 'Pakadoù kleweled ar C\'horan ezlinenn';

  @override
  String storedOnDeviceMb(String size) {
    return 'Stored on device: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total sourahoù pellgarget';
  }

  @override
  String get redownloadMissingRepair => 'Dresañ / Pellgargañ mankout';

  @override
  String get downloadAction => 'Pellgargañ';

  @override
  String get resumeDownload => 'Kenderc\'hel da bellgargañ';

  @override
  String get deleteDownloadedFiles => 'Dilemel ar restroù pellgarget';

  @override
  String get cancelDownloadAction => 'Nullañ ar pellgargañ';

  @override
  String get downloadCancelling => 'O nullañ...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Nullet eo bet ar pellgargañ evit $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Pellgargañ echu evit $reciter.';
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
      'C\'hwitet en deus ar c\'hoari son. Gwiriit ho kevreadenn mar plij.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Verified Quran audio pack is incomplete ($available/$total). Try again after the audio catalog is updated.';
  }

  @override
  String get chatbotHint => 'Ask a question...';

  @override
  String get chatbotThinking => 'Thinking...';

  @override
  String get sukunMixerSubtitle => 'Meskañ an natur hag ar c\'horan';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (Natur)';

  @override
  String get sukunRainOfMercy => 'Glav a drugarez';

  @override
  String get sukunGardenOfPeace => 'Liorzh ar Peoc\'h';

  @override
  String get sukunMidnightCalm => 'Sioulder hanternoz';

  @override
  String get sukunOceanTawheed => 'Tawheed ar Meurvor';

  @override
  String get sukunUnavailableTitle => 'Soundscapes n\'int ket hegerz';

  @override
  String get sukunUnavailableBody =>
      'N\'eo ket enkorfet er sevel-mañ c\'hoazh an elfennoù sonerezh Sukun rekis.';

  @override
  String get prayerCompletion => 'Echuiñ ar bedenn';

  @override
  String get streaks => 'Roudoù';

  @override
  String get dayStreak => 'Heuliad an deiz';

  @override
  String get bestStreak => 'Best streak';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'Implijit IA ar c\'hoad (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Enable Offline Fallback';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'N\'eo ket kefluniet an API Cloud. N\'eo ket bet kavet c\'hoazh titouroù islamek ezlinenn kadarnaet.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] N\'eus ket c\'hoazh titouroù islamek lec\'hel kadarnaet. Tremen da Cloud AI evit kaout respontoù orin.';

  @override
  String get mosques => 'Mosques';

  @override
  String get halalFood => 'Halal Food';

  @override
  String get placesSearchArea => 'Klask en takad-mañ';

  @override
  String get nearbyMosques => 'Moskeennoù e-kichen';

  @override
  String get islamicSchools => 'Islamic Schools';

  @override
  String placesFoundCount(String count) {
    return '$count kavet';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km diouzhtu';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Fazi API : $statusCode';
  }

  @override
  String get placesNetworkError => 'Fazi rouedad. Klaskit en-dro mar plij.';

  @override
  String get placesLocationRequiredTitle => 'Lec\'hiadur rekis';

  @override
  String get placesLocationRequiredBody =>
      'Set a location first so nearby mosques, halal food, and Islamic schools can be searched accurately.';

  @override
  String get placesMapTilesUnavailableTitle =>
      'Teulioù kartenn n\'int ket hegerz';

  @override
  String get placesMapTilesUnavailableBody =>
      'N\'eo ket bet kefluniet ur vammenn kartenn gwiriekaet evit ar sevel-mañ c\'hoazh. Al lec\'hioù tost a c\'hall c\'hoazh kargañ diwar ho lec\'hiadur enrollet.';

  @override
  String get placesDataSourceUnavailableTitle => 'Lec\'hioù n\'int ket hegerz';

  @override
  String get placesDataSourceUnavailableBody =>
      'N\'eo ket bet kefluniet ur poent dibenn roadennoù lec\'hioù gwiriekaet evit ar sevel-mañ c\'hoazh. Lakait PLACES_OVERPASS_API_URL d\'ur proksi pe d\'ur pourvezer aotreet a-raok gweredekaat ar c\'hlask tost.';

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
