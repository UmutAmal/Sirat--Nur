// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Oromo (`om`).
class AppLocalizationsOm extends AppLocalizations {
  AppLocalizationsOm([String locale = 'om']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Islamic Way of Light';

  @override
  String get home => 'Mana';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikrii';

  @override
  String get calendar => 'Kaalaandarii';

  @override
  String get settings => 'Sajoo';

  @override
  String get nextPrayer => 'Kadhannaa Itti Aanu';

  @override
  String get prayerTimes => 'Prayer Times';

  @override
  String get continueReading => 'Continue Reading';

  @override
  String get getLifetimePro => 'Get Lifetime Pro';

  @override
  String get unlockTajweed => 'Unlock Tajweed & Advanced Features';

  @override
  String get prayerCalculation => 'Shallaggii Kadhannaa';

  @override
  String get method => 'Mala Shallaggii';

  @override
  String get madhab => 'Asr Mala Seeraa';

  @override
  String get surahs => 'Surahs';

  @override
  String get ayahs => 'Ayahs';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Biiftuu bahuu';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Maghrib jedhamuun beekama';

  @override
  String get isha => 'Ishaa';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Yeroo $prayerName.';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Yeroon kadhannaa $prayerName amma.';
  }

  @override
  String get dataStorage => 'Daataa fi Kuusaa';

  @override
  String get clearCache => 'Cache Qulqulleessi';

  @override
  String get cacheClearedSuccess => 'Cache milkaa\'inaan qulqullaa\'e';

  @override
  String get location => 'Bakka';

  @override
  String get language => 'Afaan';

  @override
  String get selectLanguage => 'Afaan Filadhu';

  @override
  String get searchLanguage => 'Search 180+ languages...';

  @override
  String get systemDefault => 'Sirna Durtii';

  @override
  String get currentLocation => 'Bakka Ammaa (GPS) .';

  @override
  String get locationServiceDisabled =>
      'Tajaajilli bakka hojii ni hin hojjenne.';

  @override
  String get locationPermissionDenied => 'Hayyamni iddoo dhorkame.';

  @override
  String get locationDetectionFailed =>
      'Bakka jirtu adda baasuu hin dandeenye. Maaloo magaalaa harkaan filadhu ykn irra deebi\'ii yaali.';

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
  String get appErrorOccurred => 'Dogoggorri uumame';

  @override
  String get appUnknownError => 'Dogoggora hin beekamne';

  @override
  String get quranLoadFailed =>
      'Qabiyyeen Qur\'aanaa fe\'amuu hin dandeenye. Mee irra deebi\'ii yaalaa.';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Refresh';

  @override
  String get cancel => 'Haquu';

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
      'kaan immoo, ‘Yaa Gooftaa keenya adunyaa fi Aakhiratti toltuu nuuf kenni, azaaba ibiddaa irraa nu eegi’ jedhanii kadhatu.';

  @override
  String get duaMeaning2 =>
      'Waaqayyo lubbuu kamiyyuu kan isheen baachuu dandeessu caalaa hin ba’u: tokkoon tokkoon isaanii waan gaarii hojjete hunda argatu, hamaa isaas ni rakkata- ‘ Gooftaa, yoo daganne ykn dogoggorre hojiitti nu hin fudhatin. Gooftaa akkuma warra nu duraa ba\'aa itti baate nutti hin ba\'iin. Gooftaa humna baachuu qabnu caalaa nutti hin ba\'iin. Dhiifama nuuf godhi, nuuf araarami. Ati Eegduu keenya waan taateef kaafiroota irraa nu gargaari’ jedheera.';

  @override
  String get duaMeaning3 =>
      '‘Yaa Gooftaa keenya erga nu qajeelchitee booda qalbiin keenya hin maqin. Araarama Kee nuuf kenni: Ati yeroo hundumaa kan kennudha.';

  @override
  String get duaMeaning4 =>
      'Gooftaa anaa fi sanyii koo kadhannaa akka itti fufnu naaf kenni. Yaa Gooftaa keenya gaaffii koo fudhadhu.';

  @override
  String get duaMeaning5 =>
      'akkasumas gaarummaadhaan gara isaaniitti gad of deebisuudhaan baallee kee gadi qabdee, ‘Akkuma yeroon xiqqaa turetti naaf kunuunsan, isaaniif araarami’ jedhi.';

  @override
  String get duaMeaning6 =>
      'Waaqayyo, inni dhuguma to’achaa jiru ol haa ta’u. [Raajii], utuu mul’anni guutummaatti hin xumuramin qara’uuf hin ariifatin, ‘Gooftaa beekumsa na dabali!’ jedhi malee!';

  @override
  String get duaMeaning7 =>
      '[Nabiyyii] akkana jedhi, ‘Gooftaa, dhiifama godhi, araaramis: Ati hunda caalaa araaramaadha’.';

  @override
  String get duaMeaning8 =>
      'warra kadhatan, ‘Yaa Gooftaa keenya haadha manaa fi sanyii keenyatti gammachuu nuuf kenni. Warra Si beekaniif fakkeenya gaarii nuuf taasisi’.';

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
  String get hadith => 'Hadiisa';

  @override
  String get hadithCollection => 'Kuusaa Hadiisa';

  @override
  String get hadithBooks => 'Kitaabota Hadiisa';

  @override
  String get searchHadith => 'Hadiisa barbaadi';

  @override
  String get asmaulHusna => 'Asmaa-ul-Husnaa';

  @override
  String get namesOfAllah => 'Names of Allah';

  @override
  String get liveTv => 'TV kallattiin';

  @override
  String get watchLive => 'Kallattiin daawwadhaa';

  @override
  String get streamError => 'Dogoggora yaa\'aa';

  @override
  String get reload => 'Irra deebi\'ii fe\'i';

  @override
  String get openInYoutube => 'YouTube irratti banaa';

  @override
  String get ibadahTracker => 'Hordoffii Ibadaa';

  @override
  String get fasting => 'Soomana';

  @override
  String get quranReading => 'Dubbisa Qur\'aana';

  @override
  String get prayers => 'Kadhannaa';

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
  String get weeklyProgress => 'Adeemsa Torbanitti';

  @override
  String get monthlyProgress => 'Monthly Progress';

  @override
  String get statistics => 'Statistics';

  @override
  String get hijriCalendar => 'Kaalaandarii Hijrii';

  @override
  String get gregorianCalendar => 'Gregorian Calendar';

  @override
  String get today => 'Har\'a';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get specialDays => 'Guyyoota Addaa';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Bara Haaraa Islaamaa';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabii';

  @override
  String get specialDayDateRamadanStart => '1 Ramadaanaa';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadaanaa';

  @override
  String get specialDayDateEidAlFitr => '1 Shawwaal';

  @override
  String get specialDayDateEidAlAdha => '10 Dhul Hijjaa';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharram';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabii al-Awwal';

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
      'Meeshaa kana irratti sensariin koompaasii hin argamu.';

  @override
  String get qiblaLocationRequiredTitle => 'Location required for Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Set your actual location before using the Qibla compass so the direction can be calculated accurately.';

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
  String get theme => 'Dhimma haasaa';

  @override
  String get lightMode => 'Haala Ifaa';

  @override
  String get darkMode => 'Haala Dukkanaa';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'Waa\'ee';

  @override
  String get version => 'Gosa';

  @override
  String get privacyPolicy => 'Imaammata Dhuunfaa';

  @override
  String get termsOfService => 'Haala Tajaajilaa';

  @override
  String get contactUs => 'Nu Qunnamaa';

  @override
  String get rateApp => 'Sadarkaa App';

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
  String get offlineMode => 'Haala Toora Alaa';

  @override
  String get noInternet => 'No Internet Connection';

  @override
  String get checkConnection => 'Mee connection keessan ilaalaa';

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
  String get getStarted => 'Jalqabaa';

  @override
  String get skip => 'Skip';

  @override
  String get next => 'Kan itti aanu';

  @override
  String get done => 'Raawwatame';

  @override
  String get onboarding1Title => 'Baga gara Sirat-ı Nur dhuftan';

  @override
  String get onboarding1Desc =>
      'Yeroo salaataa, Qur\'aana, fi kkf appii hiriyyaa Islaamaa guutuu keessan';

  @override
  String get onboarding2Title => 'Yeroo Kadhannaa';

  @override
  String get onboarding2Desc =>
      'Yeroo kadhannaa sirrii bakka jirtu irratti hundaa’uun';

  @override
  String get onboarding3Title => 'Qur\'aana & Kanneen biroo';

  @override
  String get onboarding3Desc =>
      'Qur\'aana dubbisi, dubbisa kee hordofi, qabiyyee Islaamaa qoradhu';

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
  String get tapToCount => 'Lakkaa\'uuf tuqi';

  @override
  String get zikrCompletedMashAllah => 'Xumurameera! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Rabbiin mudaa hundarra baay’ee ol ta’a.';

  @override
  String get zikrMeaningAlhamdulillah => 'Galanni hundi kan Rabbiiti.';

  @override
  String get zikrMeaningAllahuAkbar => 'Rabbiin Guddaadha.';

  @override
  String get zikrMeaningLaIlahaIllallah =>
      'Rabbiin malee gabbaramaan biraa hin jiru.';

  @override
  String get zikrMeaningAstaghfirullah => 'Araarama Rabbii nan barbaada.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Karaa Rabbiin malee humni fi humni hin jiru.';

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
  String get qiblaCalibration => 'Safartuu Qiblaa';

  @override
  String get compassSmoothing => 'Koompaasii Sirreessuu';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Ofseeti Safartuu';

  @override
  String currentOffset(Object offset) {
    return 'Current: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Yoo koompaasiin keessan sirreeffama harkaa barbaade sirreessaa. Gatiin pozaatiivii gara sa\'aatii naanneffama.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Qorannoowwan adda baasuu';

  @override
  String get diagnosticsNotSet => 'Hin saagamne';

  @override
  String get diagnosticsPrayerProfile => 'Profaayilii Kadhannaa';

  @override
  String get diagnosticsPrayerSource => 'Abbaa Taayitaa Kadhannaa';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Kofoota amala harkaan hojjetaman (madda dhaabbataa hin qabu) .';

  @override
  String get diagnosticsCloudDriven => 'Duumeessa Kan Oofamu';

  @override
  String get diagnosticsAdhanAudioAssets => 'Qabeenya Sagalee Adhan';

  @override
  String get diagnosticsUiAudioAssets => 'Qabeenya Sagalee UI';

  @override
  String get diagnosticsQuranAudioAssets => 'Qabeenya Sagalee Qur\'aana';

  @override
  String get diagnosticsAudioAssets => 'Qabeenya Sagalee';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count files';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifest read failed: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Naannoolee Naannoo';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count supported';
  }

  @override
  String get diagnosticsQuranDataset => 'Kuusaa Deetaa Qur\'aanaa';

  @override
  String get diagnosticsQuranSurahs => 'Suuraa Qur\'aanaa';

  @override
  String get diagnosticsQuranAyahs => 'Ayyaana Qur\'aanaa';

  @override
  String get diagnosticsQuranJuzMetadata => 'Qur\'aana Juz Meetadaataa';

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
    return 'Sakatta\'iinsi caasaa duumessaa hin milkoofne: $error .';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Safartuu barbaachisa. Meeshaa fakkii-8 irratti mul’atu naannessi.';

  @override
  String get dailyVerse => 'Keeyyata Guyyaa Guyyaa';

  @override
  String get todaysIbadah => 'Ibada har\'aa';

  @override
  String get quickAccess => 'Saffisaan Argachuu';

  @override
  String get assistant => 'Gargaaraa';

  @override
  String get places => 'Bakkeewwan';

  @override
  String get library => 'Mana kitaabaa';

  @override
  String get analytics => 'Xiinxala';

  @override
  String get dailyDuas => 'Guyyaa guyyaan Duas';

  @override
  String essentialDuas(String count) {
    return '$count essential duas';
  }

  @override
  String get duaUnavailableTitle => 'Duaa mirkanaa\'e ammallee hin jiru';

  @override
  String get duaUnavailableBody =>
      'Duas guyyaa guyyaa mirkanaa\'e hanga ammaatti meeshaa kana waliin wal hin simne. Kufaatii hin mirkanoofne osoo hin taane duas madda fe\'uuf madda duumessaa waliin walqabsiisi.';

  @override
  String get duaCategoryQuranic => 'Duaa Qur\'aanaa';

  @override
  String get duaCategoryMorningEvening => 'Ganama & Galgala';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Eegumsa';

  @override
  String get duaCategoryBeginning => 'Jalqaba';

  @override
  String get duaCategorySleep => 'Rafuu';

  @override
  String get duaCategoryFoodDrink => 'Nyaata fi Dhugaatii';

  @override
  String get duaCategoryForgiveness => 'Dhiifama';

  @override
  String get duaCategoryHome => 'Mana';

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
  String get islamicEducation => 'Barnoota Islaamaa';

  @override
  String get sukunAudioTitle => 'Sukun Sagaleewwan';

  @override
  String get hadithCollections => 'Kuusaa Hadiisa';

  @override
  String get hadithSourcePending => 'Maddi mirkanaa\'e eegamaa jira';

  @override
  String get hadithUnavailableTitle =>
      'Kuusaan hadiisa mirkanaa\'e hanga ammaatti hin argamu';

  @override
  String get hadithUnavailableBody =>
      'Ijaarsi kun ammallee nyaata hadiisa alaa hin mirkanoofne irratti hundaa’a. Daawwachuun Hadiisa hanga kuusaan deetaa madda walsimsiifamutti hojii irraa oolfamee hafa.';

  @override
  String get paywallUnlockAll =>
      'Imala hafuuraa keessaniif amaloota hunda banaa';

  @override
  String get premiumProductUnavailable =>
      'Premium product is not available right now. Please try again later.';

  @override
  String get premiumPurchaseFailed =>
      'Purchase could not be completed. Please try again.';

  @override
  String get paywallFeature1Title => 'Gargaaraa Niwuroonii Plus';

  @override
  String get paywallFeature1Desc =>
      'Gaaffii fi Deebii AIn humna qabu daangaa hin qabne';

  @override
  String get paywallFeature2Title => 'Daangaa Hin Qabne Toora Alaa';

  @override
  String get paywallFeature2Desc => 'Dubbii hunda buufadhaa';

  @override
  String get paywallFeature3Title => 'Dizaayinoota Addaa';

  @override
  String get paywallFeature3Desc =>
      'Mata dureewwanii fi qubeewwan gatii olaanaa qaban';

  @override
  String get paywallFeature4Title => 'Beeksisa irraa bilisa ta\'e';

  @override
  String get paywallFeature4Desc => 'Beeksisa zeeroo';

  @override
  String get paywallGetAccess => 'Jireenya Guutuu Argachuu — \$1.00';

  @override
  String get restorePurchases => 'Bittaa Deebisuu';

  @override
  String get zakatCalculator => 'Shallaggii Zakaa';

  @override
  String get zakatGold => 'Warqee (Altın) .';

  @override
  String get zakatSilver => 'Meetii (Gümüş) .';

  @override
  String get zakatCashBank => 'Maallaqa / Baankii';

  @override
  String get zakatBusiness => 'Hojii';

  @override
  String get zakatInvestments => 'Invastimantii';

  @override
  String get zakatWeightGrams => 'Ulfaatina (g) .';

  @override
  String get zakatPricePerGram => 'Gatii/g';

  @override
  String get zakatTotalAmount => 'Maallaqa Waliigalaa';

  @override
  String get zakatInventoryValue => 'Gatii Inventarii';

  @override
  String get zakatDebts => 'Liqii';

  @override
  String get zakatTotal => 'Ida\'ama';

  @override
  String get calculateZakat => 'Zakaa shallagi';

  @override
  String get nisabNotReached => 'Nisab hin dhaqqabne. Zakaan dirqama miti.';

  @override
  String get totalZakat => 'Zakaa Waliigalaa';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakaa Warqee';

  @override
  String get zakatSilverZakat => 'Zakaa Meetii';

  @override
  String get zakatCashZakat => 'Zakaa maallaqaa';

  @override
  String get zakatBusinessZakat => 'Zakaa Daldalaa';

  @override
  String get zakatInvestmentZakat => 'Zakaa Invastimantii';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Daangaan gaaffii guyyaa guyyaa irra gahe. Daangaa hin qabneef gara Premium tti ol guddifadhaa.';

  @override
  String get chatbotErrorMsg =>
      'Deebii maddisiisuu hin dandeenye. Mee irra deebi\'ii yaalaa.';

  @override
  String get chatbotOfflinePrompt =>
      'Bu\'uurri beekumsa Islaamaa toora ala ta\'ee mirkanaa\'e ammallee qophaa\'aa jira. Amma kufaatii sarara ala dandeessisuu dandeessa, garuu hanga kuusaan deetaa madda ta\'etti ergaawwan nageenya qaban daangeffaman qofa agarsiisa.\n\nOffline fallback dandeessisuun barbaadduu?';

  @override
  String get chatbotOfflineSwitched =>
      'Kufaatii sarara ala ta\'e dandeessifameera. Deebiin Islaamaa naannoo mirkanaa\'e ammallee qophii miti.';

  @override
  String get chatbotOfflineDownloadLabel => 'Fallback Sarara Alaa dandeessisi';

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
  String get offlineQuranAudioPacks => 'Offline Qur\'aana Sagalee Paakkii';

  @override
  String storedOnDeviceMb(String size) {
    return 'Meeshaa irratti kuufame: $size MB';
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
    return 'Faayilota sarara ala jiran $reciter tiif haqame.';
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
  String get sukunMixerSubtitle => 'Uumamaa & Qur\'aana Mixer';

  @override
  String get audioPlayFailed => 'Taphachuun sagalee hin milkoofne';

  @override
  String get sukunNatureLabel => 'Sukun (Uumama) .';

  @override
  String get sukunRainOfMercy => 'Roobni Rahmata';

  @override
  String get sukunGardenOfPeace => 'Iddoo Nageenyaa';

  @override
  String get sukunMidnightCalm => 'Halkan Walakkaa Tasgabbii';

  @override
  String get sukunOceanTawheed => 'Towhiida Galaanaa';

  @override
  String get sukunUnavailableTitle => 'Sagaleewwan hin argamne';

  @override
  String get sukunUnavailableBody =>
      'Ijaarsi kun hanga ammaatti qabeenya Sukun soundscape barbaachisu hin dabalatu.';

  @override
  String get prayerCompletion => 'Xumura Kadhannaa';

  @override
  String get streaks => 'Streaks kan jedhu';

  @override
  String get dayStreak => 'Guyyaa walitti aansuun';

  @override
  String get bestStreak => 'Best streak';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Toora ala Fallback';

  @override
  String get chatbotUseCloudAi => 'Cloud AI (Gemini) fayyadamuu .';

  @override
  String get chatbotDownloadLocalAi => 'Fallback Sarara Alaa dandeessisi';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'APIn duumessaa hin qindaa\'u. Verified offline Qajeelfamni Islaamaa hanga ammaatti hin argamne.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Qajeelfamni Islaamaa naannoo mirkanaa\'e ammallee hin jiru. Deebii madda irraa argamuuf gara Cloud AI tti jijjiiraa.';

  @override
  String get mosques => 'Masjiidota';

  @override
  String get halalFood => 'Nyaata Halaal';

  @override
  String get placesSearchArea => 'Naannoo kana barbaadi';

  @override
  String get nearbyMosques => 'Masjiidota dhiyoo jiran';

  @override
  String get islamicSchools => 'Manneen Barnootaa Islaamaa';

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
  String get placesNetworkError =>
      'Dogoggora networkii. Mee irra deebi\'ii yaalaa.';

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
  String get placesDataSourceUnavailableTitle => 'Places data unavailable';

  @override
  String get placesDataSourceUnavailableBody =>
      'A verified places data endpoint is not configured for this build yet. Set PLACES_OVERPASS_API_URL to an approved proxy or provider before enabling nearby search.';

  @override
  String get unknownPlaceName => 'Maqaa Hin Beekamne';

  @override
  String get islamicPlaceFallback => 'Bakka Islaamaa';

  @override
  String get asmaMeaning1 => 'Faayidaa';

  @override
  String get asmaMeaning2 => 'Rahmaan';

  @override
  String get asmaMeaning3 => 'Mootii / Gooftaa Bara Baraa';

  @override
  String get asmaMeaning4 => 'Irra Qulqullaa\'aa';

  @override
  String get asmaMeaning5 => 'Madda Nagaa';

  @override
  String get asmaMeaning6 => 'Kennaan Nageenyaa';

  @override
  String get asmaMeaning7 => 'Gaazexaa Gaardiyaan';

  @override
  String get asmaMeaning8 => 'Kan Qaalii / Kan Hundumaa';

  @override
  String get asmaMeaning9 => 'Dirqisiisaa';

  @override
  String get asmaMeaning10 => 'Irra Guddaa';

  @override
  String get asmaMeaning11 => 'Uumaan';

  @override
  String get asmaMeaning12 => 'Kan Sirna Uume';

  @override
  String get asmaMeaning13 => 'Boca Bareedinaa';

  @override
  String get asmaMeaning14 => 'Warra Dhiifama';

  @override
  String get asmaMeaning15 => 'Kan Gad qabate';

  @override
  String get asmaMeaning16 => 'Kennaan Hundaa';

  @override
  String get asmaMeaning17 => 'Kan itti fufsiisu';

  @override
  String get asmaMeaning18 => 'Kan Banaa';

  @override
  String get asmaMeaning19 => 'Beekaa Hundaa';

  @override
  String get asmaMeaning20 => 'Konstiraaktarichi';

  @override
  String get asmaMeaning21 => 'The Reliever';

  @override
  String get asmaMeaning22 => 'Warra Abasaa';

  @override
  String get asmaMeaning23 => 'Kan Ol-kaasu';

  @override
  String get asmaMeaning24 => 'Kabaja Kennuu';

  @override
  String get asmaMeaning25 => 'Salphisaa';

  @override
  String get asmaMeaning26 => 'Dhaga\'aa Hundaa';

  @override
  String get asmaMeaning27 => 'Arguun Hundumaa';

  @override
  String get asmaMeaning28 => 'Abbaan Murtii';

  @override
  String get asmaMeaning29 => 'Warra Haqaa';

  @override
  String get asmaMeaning30 => 'Kan Haxxee';

  @override
  String get asmaMeaning31 => 'Warra Hundi Quba Qabu';

  @override
  String get asmaMeaning32 => 'Kan Araa';

  @override
  String get asmaMeaning33 => 'Kan Ajaa\'ibaa';

  @override
  String get asmaMeaning34 => 'Dhiifama Guddaa';

  @override
  String get asmaMeaning35 => 'Badhaasaa Galata';

  @override
  String get asmaMeaning36 => 'Kan Ol Aanaa';

  @override
  String get asmaMeaning37 => 'Irra Guddaa';

  @override
  String get asmaMeaning38 => 'Kan Kunuunsu';

  @override
  String get asmaMeaning39 => 'Soorata kan kennu';

  @override
  String get asmaMeaning40 => 'Herregaa';

  @override
  String get asmaMeaning41 => 'Kan Majestic';

  @override
  String get asmaMeaning42 => 'Warra Arjaa';

  @override
  String get asmaMeaning43 => 'Kan Dammaqaa';

  @override
  String get asmaMeaning44 => 'Deebii Kadhannaa';

  @override
  String get asmaMeaning45 => 'Kan Hundaa Hundaa\'u';

  @override
  String get asmaMeaning46 => 'Ogeessa Guutuu';

  @override
  String get asmaMeaning47 => 'Kan Jaalalaa';

  @override
  String get asmaMeaning48 => 'Kan Ulfina Qabu';

  @override
  String get asmaMeaning49 => 'Du\'aa ka\'aa';

  @override
  String get asmaMeaning50 => 'Dhugaa Baatuun';

  @override
  String get asmaMeaning51 => 'Dhugaa';

  @override
  String get asmaMeaning52 => 'Abbaa Imaanaa Hundumaa Ga’aa ta’e';

  @override
  String get asmaMeaning53 => 'Qabeenya Humna Hundaa';

  @override
  String get asmaMeaning54 => 'Warra Humna';

  @override
  String get asmaMeaning55 => 'Eegduun';

  @override
  String get asmaMeaning56 => 'Kan Faarfamu';

  @override
  String get asmaMeaning57 => 'Madaallii';

  @override
  String get asmaMeaning58 => 'Ka\'umsa';

  @override
  String get asmaMeaning59 => 'Deebisee kan deebisu';

  @override
  String get asmaMeaning60 => 'Kennaan Jireenyaa';

  @override
  String get asmaMeaning61 => 'Kan Jireenya Fudhatu';

  @override
  String get asmaMeaning62 => 'Warra Yoomiyyuu Jiraatan';

  @override
  String get asmaMeaning63 => 'Kan Of Jireenyaa Jiraachisu';

  @override
  String get asmaMeaning64 => 'Kan Barbaadaa';

  @override
  String get asmaMeaning65 => 'Warra Ulfinaa';

  @override
  String get asmaMeaning66 => 'Tokkicha';

  @override
  String get asmaMeaning67 => 'Tokkicha';

  @override
  String get asmaMeaning68 => 'Kan Hundumtuu Barbaadu';

  @override
  String get asmaMeaning69 => 'Warra Humna Qaban';

  @override
  String get asmaMeaning70 => 'Uumaa humna hundaa';

  @override
  String get asmaMeaning71 => 'Saffisaa (Expediter) jedhamu';

  @override
  String get asmaMeaning72 => 'Kan Harkifate';

  @override
  String get asmaMeaning73 => 'Kan Tokkoffaa';

  @override
  String get asmaMeaning74 => 'Kan Dhumaa';

  @override
  String get asmaMeaning75 => 'Kan Mul’ataa jiru';

  @override
  String get asmaMeaning76 => 'Kan Dhokataa';

  @override
  String get asmaMeaning77 => 'Bulchaan';

  @override
  String get asmaMeaning78 => 'Kan Ol Aanaa';

  @override
  String get asmaMeaning79 => 'Hojjataa Gaarii';

  @override
  String get asmaMeaning80 => 'Qajeelfama Gaabbii';

  @override
  String get asmaMeaning81 => 'Haaloo ba\'aa';

  @override
  String get asmaMeaning82 => 'Dhiifama kan godhu';

  @override
  String get asmaMeaning83 => 'Kileemanti';

  @override
  String get asmaMeaning84 => 'Abbaa Qabeenyaa / Abbaan Biyya Hundaa';

  @override
  String get asmaMeaning85 => 'Qabeenya Ulfinaa fi Badhaasa';

  @override
  String get asmaMeaning86 => 'Kan Walqixaa';

  @override
  String get asmaMeaning87 => 'Walitti qabaa';

  @override
  String get asmaMeaning88 => 'Kan Sooressaa';

  @override
  String get asmaMeaning89 => 'Kan Badhaadhina';

  @override
  String get asmaMeaning90 => 'Ittisaa Miidhaa';

  @override
  String get asmaMeaning91 => 'Miidhaa fide';

  @override
  String get asmaMeaning92 => 'Faayidaa Kennuu';

  @override
  String get asmaMeaning93 => 'Ifa';

  @override
  String get asmaMeaning94 => 'Qajeelchituu';

  @override
  String get asmaMeaning95 => 'Ka\'umsa';

  @override
  String get asmaMeaning96 => 'Kan Bara Baraa';

  @override
  String get asmaMeaning97 => 'Dhaaltuu';

  @override
  String get asmaMeaning98 => 'Qajeelfama hunda caalaa qajeelaa';

  @override
  String get asmaMeaning99 => 'Kan Dhukkubsataa';
}
