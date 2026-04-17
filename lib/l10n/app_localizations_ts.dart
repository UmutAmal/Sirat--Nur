// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tsonga (`ts`).
class AppLocalizationsTs extends AppLocalizations {
  AppLocalizationsTs([String locale = 'ts']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Islamic Way of Light';

  @override
  String get home => 'Kaya';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Khalendara';

  @override
  String get settings => 'Switirhisiwa';

  @override
  String get nextPrayer => 'Xikhongelo lexi landzelaka';

  @override
  String get prayerTimes => 'Minkarhi ya Xikhongelo';

  @override
  String get continueReading => 'Continue Reading';

  @override
  String get getLifetimePro => 'Get Lifetime Pro';

  @override
  String get unlockTajweed => 'Unlock Tajweed & Advanced Features';

  @override
  String get prayerCalculation => 'Xibalo xa Xikhongelo';

  @override
  String get method => 'Ndlela yo Hlayela';

  @override
  String get madhab => 'Asr Ndlela ya Nawu';

  @override
  String get surahs => 'Ti- surah';

  @override
  String get ayahs => 'Ayahs';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Ku huma ka dyambu';

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
    return 'Nkarhi wa $prayerName.';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'I nkarhi wo khongela $prayerName.';
  }

  @override
  String get dataStorage => 'Data & Vuhlayiselo';

  @override
  String get clearCache => 'Hlawula Cache';

  @override
  String get cacheClearedSuccess =>
      'Cache yi basisiwile hi ndlela leyi humelelaka';

  @override
  String get location => 'Ndhawu';

  @override
  String get language => 'Ririmi';

  @override
  String get selectLanguage => 'Hlawula Ririmi';

  @override
  String get searchLanguage => 'Search 180+ languages...';

  @override
  String get systemDefault => 'Xiyimiso xa Sisiteme';

  @override
  String get currentLocation => 'Ndhawu ya sweswi (GPS) .';

  @override
  String get locationServiceDisabled =>
      'Vukorhokeri bya ndhawu byi pfaleriwile.';

  @override
  String get locationPermissionDenied => 'Mpfumelelo wa ndhawu wu ariwile.';

  @override
  String get locationDetectionFailed =>
      'A swi swi kotanga ku vona ndhawu ya wena. Hi kombela u hlawula doroba hi voko kutani u ringeta nakambe.';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => 'Secha';

  @override
  String get searchHint => 'Secha...';

  @override
  String get noResults => 'No results found';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get appErrorOccurred => 'Ku humelerile xihoxo';

  @override
  String get appUnknownError => 'Xihoxo lexi nga tiviwiki';

  @override
  String get quranLoadFailed =>
      'Swilo leswi nga endzeni ka Quran a swi nga ta layichiwa. Hi kombela u ringeta nakambe.';

  @override
  String get retry => 'Ringeta nakambe';

  @override
  String get refreshAction => 'Refresh';

  @override
  String get cancel => 'Khansela';

  @override
  String get save => 'Hlayisa';

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
  String get no => 'E-e';

  @override
  String get surah => 'Surah ya xirhendzevutani';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Yuz';

  @override
  String get page => 'Tluka';

  @override
  String get reading => 'Reading';

  @override
  String get recitation => 'Recitation';

  @override
  String get translation => 'Translation';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Ku layicha tafsir...';

  @override
  String get tafsirSourceLabel => 'Xihlovo xa Tafsir';

  @override
  String get tafsirNoSurahFound =>
      'Ku hava tafsir leyi kumiweke eka surah leyi.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Ku hava tafsir leyi kumiweke ya ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir a yi nga swi koti ku layicha.';

  @override
  String get tafsirNoTextForAyah => 'Ku hava tsalwa ra tafsir ra ayah leyi.';

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
    return 'Xihlovo xa Tafsir xi vuyise xihoxo xa HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Xihlovo xa tafsir lexi hlawuriweke a xi vuyisanga na swilo leswi nghenisiweke.';

  @override
  String get tafsirCacheUnavailable =>
      'Verified tafsir a yi kumeki offline ku fikela sweswi. Fambisanisa dataset ya tafsir leyi nga na xihlovo u nga si pfula.';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get addBookmark => 'Engetelani Buku-nkulu';

  @override
  String get removeBookmark => 'Susa Buku-xikombiso';

  @override
  String get lastRead => 'Last Read';

  @override
  String get dailyZikr => 'Daily Zikr';

  @override
  String get duaMeaning1 =>
      'van’wana va khongela va ku, ‘Hosi ya hina, hi nyike leswinene emisaveni leyi ni le ku nga heriki, u hi sirhelela eka ku xanisiwa ka Ndzilo.’';

  @override
  String get duaMeaning2 =>
      'Xikwembu a xi tiki moya-xiviri wihi na wihi hi swo tlula leswi wu nga swi tiyiselaka: un’wana ni un’wana u vuyeriwa hi leswinene leswi wu swi endleke, naswona u xaniseka hi vubihi bya wona- ‘ Hosi, u nga hi teki entirhweni loko hi rivala kumbe hi endla swihoxo. Hosi, u nga hi tiki hi ndzhwalo tani hi leswi u nga tikisela lava nga emahlweni ka hina. Hosi, u nga hi tiki hi ndzhwalo ku tlula leswi hi nga na matimba yo rhwala. Hi rivalele, hi rivalele, u hi twela vusiwana. U Musirheleri wa hina, kutani hi pfune ku lwisana ni lava nga pfumeriki.’';

  @override
  String get duaMeaning3 =>
      '‘Hosi ya hina, u nga pfumeleli timbilu ta hina ti hambuka endzhaku ka loko U hi kongomise. Hi nyike tintswalo ta Wena: Hi wena Munyiki wa Nkarhi hinkwawo.';

  @override
  String get duaMeaning4 =>
      'Hosi, ndzi pfumelele leswaku mina ni vana va mina hi hambeta hi khongela. Hosi ya hina, amukela xikombelo xa mina.';

  @override
  String get duaMeaning5 =>
      'u ehlisa ripapa ra wena hi ku titsongahata eka vona hi musa u ku, ‘Hosi, va twele vusiwana, hilaha va ndzi khathalelaka hakona loko ndza ha ri ntsongo.’';

  @override
  String get duaMeaning6 =>
      'a ku tlakusiwe Xikwembu, lexi lawulaka hakunene. [Muprofeta], u nga hatliseli ku hlaya nhlavutelo yi nga si hetiseka hi ku helela kambe u ku, ‘Hosi, ndzi engetele vutivi!’';

  @override
  String get duaMeaning7 =>
      'Vula [Muprofeta], ‘Hosi, rivalela u tlhela u twela vusiwana: U ni tintswalo ku tlula hinkwavo.’';

  @override
  String get duaMeaning8 =>
      'lava khongelaka va ku, ‘Hosi ya hina, hi nyike ntsako eka vanghana va hina va vukati ni vana va hina. Hi endle swikombiso leswinene eka lava va Ku tivaka’.';

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
  String get hadith => 'Hadith ya Xitsonga';

  @override
  String get hadithCollection => 'Nhlengeleto wa Tihadith';

  @override
  String get hadithBooks => 'Tibuku ta Hadith';

  @override
  String get searchHadith => 'Ku lavisisa Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna, ku vula ka yena';

  @override
  String get namesOfAllah => 'Mavito ya Allah';

  @override
  String get liveTv => 'TV leyi hanyaka';

  @override
  String get watchLive => 'Hlalela Live';

  @override
  String get streamError => 'Xihoxo xa xirhendzevutani';

  @override
  String get reload => 'Layicha nakambe';

  @override
  String get openInYoutube => 'Vula eka YouTube';

  @override
  String get ibadahTracker => 'Mulandzeri wa Ibadah';

  @override
  String get fasting => 'Ku titsona swakudya';

  @override
  String get quranReading => 'Ku Hlaya ka Quran';

  @override
  String get prayers => 'Swikhongelo';

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
  String get weeklyProgress => 'Nhluvuko wa Vhiki na Vhiki';

  @override
  String get monthlyProgress => 'Monthly Progress';

  @override
  String get statistics => 'Statistics';

  @override
  String get hijriCalendar => 'Khalendara ya Hijri';

  @override
  String get gregorianCalendar => 'Gregorian Calendar';

  @override
  String get today => 'Namuntlha';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get specialDays => 'Masiku yo Hlawuleka';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Lembe Lerintshwa ra Vuislem';

  @override
  String get mawlidAnNabi => 'Mawlid na Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadan hi siku ra vumune';

  @override
  String get specialDayDateEidAlFitr => '1 Xihlamusela-marito xa Shawwal';

  @override
  String get specialDayDateEidAlAdha => '10 Xihul Hijjah';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharram';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabi al-Awwal, u vula leswaku';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'Qibla Nkongomiso';

  @override
  String get compass => 'Khampasi';

  @override
  String get degrees => 'degrees';

  @override
  String get north => 'North';

  @override
  String get qiblaFound => 'Qibla yi kumiwile!';

  @override
  String get turnDevice =>
      'Pfuxeta xitirhisiwa xa wena leswaku xi langutana na Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Xihoxo xa khampasi: $error .';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Compass sensor a yi kumeki eka xitirhisiwa lexi.';

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
  String get theme => 'Mombo';

  @override
  String get lightMode => 'Mode ya Ku Vonakala';

  @override
  String get darkMode => 'Mode ya Munyama';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'Hi';

  @override
  String get version => 'Nkandziyiso';

  @override
  String get privacyPolicy => 'Pholisi ya Vuhlayiseki bya Swihundla';

  @override
  String get termsOfService => 'Mimpimanyeto ya Ntirho';

  @override
  String get contactUs => 'Tihlanganise na Hina';

  @override
  String get rateApp => 'Xiringanyeto xa App';

  @override
  String get shareApp => 'Share App';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'Swilo leswi dawunilodiwaka';

  @override
  String get downloading => 'Ku dawuniloda...';

  @override
  String get downloadComplete => 'Download Complete';

  @override
  String get downloadFailed => 'Download Failed';

  @override
  String get offlineMode => 'Mode ya le Handle ka Inthanete';

  @override
  String get noInternet => 'No Internet Connection';

  @override
  String get checkConnection => 'Hi kombela u languta vuhlanganisi bya wena';

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
  String get getStarted => 'Sungula';

  @override
  String get skip => 'Skip';

  @override
  String get next => 'Landzelaka';

  @override
  String get done => 'Endlile';

  @override
  String get onboarding1Title => 'Mi amukeriwile eka Sirat-ı Nur';

  @override
  String get onboarding1Desc =>
      'App ya wena leyi heleleke ya munghana wa Islam ya minkarhi ya xikhongelo, Quran, na swin’wana';

  @override
  String get onboarding2Title => 'Minkarhi ya Xikhongelo';

  @override
  String get onboarding2Desc =>
      'Minkarhi ya xikhongelo leyi kongomeke hi ku ya hi ndhawu leyi u nga eka yona';

  @override
  String get onboarding3Title => 'Quran & Swin\'wana';

  @override
  String get onboarding3Desc =>
      'Hlaya Quran, landzelela ku hlaya ka wena, naswona u kambisisa leswi nga endzeni ka Vuislem';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'Seta Xibalo xa Vuntshwa';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'Target: $target';
  }

  @override
  String get tapToCount => 'Thepha ku hlayela';

  @override
  String get zikrCompletedMashAllah => 'Ku hetiwile! MashAllah, loyi a nga';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah u le henhla swinene ka ku nga hetiseki kun’wana ni kun’wana.';

  @override
  String get zikrMeaningAlhamdulillah => 'Ku dzunisiwa hinkwako i ka Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah hi yena Lonkulu.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'A ku na xikwembu handle ka Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Ndzi lava ku rivaleriwa ka Allah.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'A ku na matimba na matimba handle ka hi Allah.';

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
  String get dailyProgress => 'Nhluvuko wa Siku na Siku';

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
  String get recheckPremium =>
      'Languta nakambe xiyimo xa xikhokhelo xa premium';

  @override
  String get syncStore =>
      'Sync na app store ku tiyisisa xikhokhelo xa wena xa premium.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'Xikhokhelo xa premium xi tiyisisiwile.';

  @override
  String get premiumNotFound => 'Xikhokhelo xa premium a xi kumeki.';

  @override
  String premiumRefreshError(Object error) {
    return 'A swi swi kotanga ku pfuxeta xiyimo xa xikhokhelo xa premium: $error .';
  }

  @override
  String get offlineDownloadManager => 'Offline Download Manager';

  @override
  String get manageDatasets =>
      'Lawula tiphakiti ta mpfumawulo lowukulu wa le handle ka inthanete & dataset.';

  @override
  String get freeStorage =>
      'Ntshunxa vuhlayiselo bya switirhisiwa swa le ndzeni.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'Ku kambela database ya Quran...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'Xiyimo xa Dathabeyisi ya Quran';

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
  String get audioVoice => 'Rito ra mpfumawulo';

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
  String get qiblaCalibration => 'Ku Kalibhara ka Qibla';

  @override
  String get compassSmoothing => 'Ku Olovisa Khampasi';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Offset ya ku kalibhara';

  @override
  String currentOffset(Object offset) {
    return 'Current: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Lulamisa loko khampasi ya wena yi lava ku lulamisiwa hi voko. Mimpimo leyinene yi rhendzeleka hi tlhelo ra wachi.';

  @override
  String get apply => 'Tirhisa ku cinca';

  @override
  String get resetOnboarding => 'Seta xiyimiso xa xingheniso';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Swikambelo swa vuvabyi';

  @override
  String get diagnosticsNotSet => 'A swi vekiwanga';

  @override
  String get diagnosticsPrayerProfile => 'Profayile ya Xikhongelo';

  @override
  String get diagnosticsPrayerSource => 'Vulawuri bya Xikhongelo';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Ti-angle ta ntolovelo ta manual (ku hava xihlovo xa nhlangano) .';

  @override
  String get diagnosticsCloudDriven => 'Ku Fambiwa hi Mapapa';

  @override
  String get diagnosticsAdhanAudioAssets => 'Nhundzu ya Mpfumawulo ya Adhan';

  @override
  String get diagnosticsUiAudioAssets => 'Nhundzu ya Mpfumawulo ya UI';

  @override
  String get diagnosticsQuranAudioAssets => 'Nhundzu ya mpfumawulo wa Quran';

  @override
  String get diagnosticsAudioAssets => 'Nhundzu ya Mpfumawulo';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count tifayela';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Ku hlayiwa ka manifest ku tsandzekile: $error .';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Tindhawu ta Ndhawu';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count swi ​​seketeriwa';
  }

  @override
  String get diagnosticsQuranDataset => 'Xiyenge xa ​​Data xa Quran';

  @override
  String get diagnosticsQuranSurahs => 'Ti- Surah ta Quran';

  @override
  String get diagnosticsQuranAyahs => 'Ti- Ayah ta Quran';

  @override
  String get diagnosticsQuranJuzMetadata => 'Quran Juz Metadata ya Xitsonga';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Matafula ya mapapa ya kayivela eSupabase; bundled fallback yi tirha';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Ku kamberiwa ka xigwitsirisi ku tsandzekile: $error .';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz metadata yi kayivela; bundled xivumbeko xa fallback active';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Ku kamberiwa ka xivumbeko xa papa ku tsandzekile: $error .';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Ku kalibhara ka laveka. Jikisa xitirhisiwa eka xifaniso xa-8.';

  @override
  String get dailyVerse => 'Ndzimana ya Siku na Siku';

  @override
  String get todaysIbadah => 'Ibadah ya namuntlha';

  @override
  String get quickAccess => 'Mfikelelo wa Xihatla';

  @override
  String get assistant => 'Mpfuneto';

  @override
  String get places => 'Tindhawu';

  @override
  String get library => 'Layiburari';

  @override
  String get analytics => 'Vuxopaxopi';

  @override
  String get dailyDuas => 'Duas ya siku na siku';

  @override
  String essentialDuas(String count) {
    return '$count essential duas';
  }

  @override
  String get duaUnavailableTitle => 'Ti duas leti tiyisisiweke a ti se kumeka';

  @override
  String get duaUnavailableBody =>
      'Ti duas ta siku na siku leti tiyisisiweke a ti si hlanganisiwa na xitirhisiwa lexi. Hlanganisa na xihlovo xa mapapa ku layicha ti duas leti humaka eka xihlovo ematshan’wini ya fallback leyi nga tiyisisiwangiki.';

  @override
  String get duaCategoryQuranic => 'Dua ya Quranic';

  @override
  String get duaCategoryMorningEvening => 'Mixo & Madyambu';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Nsirhelelo';

  @override
  String get duaCategoryBeginning => 'Masungulo';

  @override
  String get duaCategorySleep => 'Etlela';

  @override
  String get duaCategoryFoodDrink => 'Swakudya & Swinwiwa';

  @override
  String get duaCategoryForgiveness => 'Ku rivalela';

  @override
  String get duaCategoryHome => 'Kaya';

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
  String get islamicEducation => 'Dyondzo ya Vuislem';

  @override
  String get sukunAudioTitle => 'Sukun Swifaniso swa Mimpfumawulo';

  @override
  String get hadithCollections => 'Nhlengeleto wa Tihadith';

  @override
  String get hadithSourcePending => 'Xihlovo lexi tiyisisiweke xi yimerile';

  @override
  String get hadithUnavailableTitle =>
      'Nhlengeleto wa hadith lowu tiyisisiweke a wu si kumeka';

  @override
  String get hadithUnavailableBody =>
      'Ku aka loku ka ha titshege hi ku phameriwa ka hadith ya le handle leyi nga tiyisisiwangiki. Ku pfula ka Hadith ku tshama ku nga tirhi ku kondza dataset leyi humaka eka xihlovo yi fambisana.';

  @override
  String get paywallUnlockAll =>
      'Pfula swihlawulekisi hinkwaswo swa riendzo ra wena ra moya';

  @override
  String get premiumProductUnavailable =>
      'Premium product ayi kumeki sweswi. Hi kombela u ringeta nakambe endzhaku.';

  @override
  String get premiumPurchaseFailed =>
      'Ku xava a ku swi kotanga ku hetiwa. Hi kombela u ringeta nakambe.';

  @override
  String get paywallFeature1Title => 'Mupfuni wa Tinyiyo Plus';

  @override
  String get paywallFeature1Desc =>
      'Q&A leyi nga pimiwangiki leyi fambiwaka hi AI';

  @override
  String get paywallFeature2Title => 'Leswi nga riki na swipimelo Offline';

  @override
  String get paywallFeature2Desc => 'Download ti recitations hinkwato';

  @override
  String get paywallFeature3Title => 'Tidizayini to Hlawuleka';

  @override
  String get paywallFeature3Desc =>
      'Tinhlokomhaka ta xiyimo xa le henhla & tifonto';

  @override
  String get paywallFeature4Title => 'Ad-Free';

  @override
  String get paywallFeature4Desc => 'Swinavetiso swa zero';

  @override
  String get paywallGetAccess => 'Kuma Mfikelelo wa Vutomi Hinkwabyo — \$1.00';

  @override
  String get restorePurchases => 'Vuyisela Ku Xava';

  @override
  String get zakatCalculator => 'Xikalo xa Zakat';

  @override
  String get zakatGold => 'Nsuku (Altın) .';

  @override
  String get zakatSilver => 'Silivhere (Gümüş) .';

  @override
  String get zakatCashBank => 'Mali / Bangi';

  @override
  String get zakatBusiness => 'Bindzu';

  @override
  String get zakatInvestments => 'Vuvekisi';

  @override
  String get zakatWeightGrams => 'Ndzilo (g) .';

  @override
  String get zakatPricePerGram => 'Ntsengo/g';

  @override
  String get zakatTotalAmount => 'Ntsengo Hinkwawo';

  @override
  String get zakatInventoryValue => 'Nkoka wa Nhundzu ya Nhundzu';

  @override
  String get zakatDebts => 'Swikweleti';

  @override
  String get zakatTotal => 'Hinkwaswo';

  @override
  String get calculateZakat => 'Hlela Zakat';

  @override
  String get nisabNotReached => 'Nisab a nga fiki. Zakat a yi bohi.';

  @override
  String get totalZakat => 'Nhlayo hinkwayo ya Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakat ya Nsuku';

  @override
  String get zakatSilverZakat => 'Zakat ya silivhere';

  @override
  String get zakatCashZakat => 'Zakat ya mali ya xibalo';

  @override
  String get zakatBusinessZakat => 'Zakat ya mabindzu';

  @override
  String get zakatInvestmentZakat => 'Zakat ya vuvekisi';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Ndzilakano wa swivutiso swa siku na siku wu fikeleriwile. Ndlandlamuxa eka Premium for unlimited.';

  @override
  String get chatbotErrorMsg =>
      'A ndzi swi kotanga ku humesa nhlamulo. Hi kombela u ringeta nakambe.';

  @override
  String get chatbotOfflinePrompt =>
      'Xivandla xa vutivi bya Xiislam lexi tiyisisiweke xa le handle ka inthanete xa ha hlayisiwa. U nga pfumelela ku tlhelela endzhaku ka le handle ka inthanete sweswi, kambe yi ta kombisa ntsena marungula lama hlayisekeke lama nga nyawuriki ku kondza dataset leyi humaka eka xihlovo yi lunghekile.\n\nXana u nga tsakela ku endla leswaku ku va na ku tlhelela endzhaku ka offline?';

  @override
  String get chatbotOfflineSwitched =>
      'Offline fallback yi tirhisiwile. Tinhlamulo ta Xiislam ta laha kaya leti tiyisisiweke a ti si lungheka.';

  @override
  String get chatbotOfflineDownloadLabel =>
      'Endla leswaku Offline Fallback yi tirha';

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
  String get offlineQuranAudioPacks =>
      'Tiphakiti ta mpfumawulo ta Quran leti nga riki eka inthanete';

  @override
  String storedOnDeviceMb(String size) {
    return 'Yi hlayisiwile eka xitirhisiwa: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surahs downloaded';
  }

  @override
  String get redownloadMissingRepair => 'Repair / Download Missing';

  @override
  String get downloadAction => 'Downloda';

  @override
  String get resumeDownload => 'Sungula ku Download';

  @override
  String get deleteDownloadedFiles => 'Susa Tifayili Leti Dawunilodiweke';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Download yi khanseliwile eka $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Download yi hetisiwile ya $reciter.';
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
    return 'Ku susiwile tifayela ta le handle ka inthanete ta $reciter.';
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
  String get sukunMixerSubtitle => 'Muhlanganisi wa Ntumbuluko & Qur\'an';

  @override
  String get audioPlayFailed => 'Ku tlanga ka mpfumawulo ku tsandzekile';

  @override
  String get sukunNatureLabel => 'Sukun (Ntumbuluko) .';

  @override
  String get sukunRainOfMercy => 'Mpfula ya Tintswalo';

  @override
  String get sukunGardenOfPeace => 'Ntanga wa ku Rhula';

  @override
  String get sukunMidnightCalm => 'Vusiku bya le xikarhi Ku Rhula';

  @override
  String get sukunOceanTawheed => 'Tawheed ya Lwandle';

  @override
  String get sukunUnavailableTitle => 'Swifaniso swa mpfumawulo a swi kumeki';

  @override
  String get sukunUnavailableBody =>
      'Ku aka loku a ku katsi nhundzu ya soundscape ya Sukun leyi lavekaka ku fikela sweswi.';

  @override
  String get prayerCompletion => 'Ku Hetisa Xikhongelo';

  @override
  String get streaks => 'Swirhendzevutana';

  @override
  String get dayStreak => 'Ku landzelelana ka siku';

  @override
  String get bestStreak => 'Streak leyinene ngopfu';

  @override
  String get chatbotCloudAiLabel => 'AI ya le mapapa';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'Tirhisa Cloud AI (Gemini) .';

  @override
  String get chatbotDownloadLocalAi =>
      'Endla leswaku Offline Fallback yi tirha';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API a yi lulamisiwanga. Nkongomiso wa Vuislem lowu tiyisisiweke wa le handle ka inthanete a wu si kumeka.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Nkongomiso wa laha kaya lowu tiyisisiweke wa Xiislam a wu si kumeka. Cinca eka Cloud AI ku kuma tinhlamulo leti humaka eka xihlovo.';

  @override
  String get mosques => 'Timosque';

  @override
  String get halalFood => 'Swakudya swa Halal';

  @override
  String get placesSearchArea => 'Lavisisa ndhawu leyi';

  @override
  String get nearbyMosques => 'Timosque ta le kusuhi';

  @override
  String get islamicSchools => 'Swikolo swa Vuislem';

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
      'Xihoxo xa netiweke. Hi kombela u ringeta nakambe.';

  @override
  String get placesLocationRequiredTitle => 'Ndhawu ya laveka';

  @override
  String get placesLocationRequiredBody =>
      'Kusungula veka ndzhawu leswaku ti mosque tale kusuhi, swakudya swa halal, na swikolo swa Islam swinga sechiwa kahle.';

  @override
  String get placesMapTilesUnavailableTitle => 'Tithayile ta mepe a ti kumeki';

  @override
  String get placesMapTilesUnavailableBody =>
      'Xihlovo xa tile ya mepe lexi tiyisisiweke a xi si lulamisiwa eka ku aka loku ku fikela sweswi. Tindhawu ta le kusuhi ta ha kota ku layicha ku suka endhawini ya wena leyi hlayisiweke.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'Swi veka data leyi nga kumeki';

  @override
  String get placesDataSourceUnavailableBody =>
      'Ndhawu yo hetelela ya datha ya tindhawu leyi tiyisisiweke a yi lulamisiwanga eka ku aka loku ku fikela sweswi. Seta PLACES_OVERPASS_API_URL eka vuyimeri lebyi pfumeleriweke kumbe muphakeri u nga si pfumelela ku lavisisa ka le kusuhi.';

  @override
  String get unknownPlaceName => 'Vito leri nga tiviwiki';

  @override
  String get islamicPlaceFallback => 'Ndhawu ya Vuislem';

  @override
  String get asmaMeaning1 => 'La Vuyerisaka';

  @override
  String get asmaMeaning2 => 'Loyi a nga ni Tintswalo';

  @override
  String get asmaMeaning3 => 'Hosi / Hosi leyi nga heriki';

  @override
  String get asmaMeaning4 => 'Lexi Kwetsima Ngopfu';

  @override
  String get asmaMeaning5 => 'Xihlovo Xa Ku Rhula';

  @override
  String get asmaMeaning6 => 'Munyiki wa Vuhlayiseki';

  @override
  String get asmaMeaning7 => 'Xiphephana xa Guardian';

  @override
  String get asmaMeaning8 => 'Wa Risima / Wa Matimba Ngopfu';

  @override
  String get asmaMeaning9 => 'Muhlohloteri';

  @override
  String get asmaMeaning10 => 'Lexikulu';

  @override
  String get asmaMeaning11 => 'Muvumbi';

  @override
  String get asmaMeaning12 => 'Muendli wa Nhleleko';

  @override
  String get asmaMeaning13 => 'Muvumbi wa Vuxongi';

  @override
  String get asmaMeaning14 => 'Lava Rivalelaka';

  @override
  String get asmaMeaning15 => 'Mutsonga';

  @override
  String get asmaMeaning16 => 'Munyiki wa Hinkwaswo';

  @override
  String get asmaMeaning17 => 'Muhlayisi wa swilo';

  @override
  String get asmaMeaning18 => 'Muvulavuleri';

  @override
  String get asmaMeaning19 => 'Mutivi wa Hinkwaswo';

  @override
  String get asmaMeaning20 => 'Muendli wa Swikontiri';

  @override
  String get asmaMeaning21 => 'Mupfuni';

  @override
  String get asmaMeaning22 => 'Va-Abaser';

  @override
  String get asmaMeaning23 => 'Mutlakusi';

  @override
  String get asmaMeaning24 => 'Munyiki wa Xichavo';

  @override
  String get asmaMeaning25 => 'Mutsongahati';

  @override
  String get asmaMeaning26 => 'Mutwi wa Hinkwaswo';

  @override
  String get asmaMeaning27 => 'Muvoni wa Hinkwaswo';

  @override
  String get asmaMeaning28 => 'Muavanyisi';

  @override
  String get asmaMeaning29 => 'Valulami';

  @override
  String get asmaMeaning30 => 'Loyi A Nga Tumbeleke';

  @override
  String get asmaMeaning31 => 'Lava Va Lemukaka Hinkwaswo';

  @override
  String get asmaMeaning32 => 'Ku Tiyisela';

  @override
  String get asmaMeaning33 => 'Lexi Hlamarisaka';

  @override
  String get asmaMeaning34 => 'Muvarivari Lonkulu';

  @override
  String get asmaMeaning35 => 'Muhakeri wa ku Nkhensa';

  @override
  String get asmaMeaning36 => 'Loyi a Tlakukeke';

  @override
  String get asmaMeaning37 => 'Lexikulu';

  @override
  String get asmaMeaning38 => 'Muhlayisi wa swilo';

  @override
  String get asmaMeaning39 => 'Mudyi wa swakudya';

  @override
  String get asmaMeaning40 => 'Muhlayi wa Xibalo';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'Lava Va Hanana';

  @override
  String get asmaMeaning43 => 'Loyi A Rindzaka';

  @override
  String get asmaMeaning44 => 'Muhlamuri wa Xikhongelo';

  @override
  String get asmaMeaning45 => 'Ku Twisisa Hinkwaswo';

  @override
  String get asmaMeaning46 => 'Lava Nga Ni Vutlhari Hi Ku Hetiseka';

  @override
  String get asmaMeaning47 => 'Loyi a nga ni Rirhandzu';

  @override
  String get asmaMeaning48 => 'Loyi A Dzunisiwaka Ngopfu';

  @override
  String get asmaMeaning49 => 'Mupfukeri wa Vafi';

  @override
  String get asmaMeaning50 => 'Mbhoni';

  @override
  String get asmaMeaning51 => 'Ntiyiso';

  @override
  String get asmaMeaning52 => 'Muhlayisi wa Tilasi la eneleke Hinkwaswo';

  @override
  String get asmaMeaning53 => 'Mufumi wa Matimba Hinkwawo';

  @override
  String get asmaMeaning54 => 'Lava Nga Ni Matimba';

  @override
  String get asmaMeaning55 => 'Musirheleri';

  @override
  String get asmaMeaning56 => 'Lava Dzunisiwaka';

  @override
  String get asmaMeaning57 => 'Mukamberi wa Swibalo';

  @override
  String get asmaMeaning58 => 'Musunguri wa Masungulo';

  @override
  String get asmaMeaning59 => 'Muvuyeleri wa swilo';

  @override
  String get asmaMeaning60 => 'Munyiki wa Vutomi';

  @override
  String get asmaMeaning61 => 'Muteki wa Vutomi';

  @override
  String get asmaMeaning62 => 'Lava Va Hanyaka Nkarhi Hinkwawo';

  @override
  String get asmaMeaning63 => 'Muhlayisi la Tiyimelaka';

  @override
  String get asmaMeaning64 => 'Mukumi';

  @override
  String get asmaMeaning65 => 'Lava Vangamisaka';

  @override
  String get asmaMeaning66 => 'Loyi A Nga Yexe';

  @override
  String get asmaMeaning67 => 'Loyi Loyi';

  @override
  String get asmaMeaning68 => 'Loyi A Laviwaka Hi Hinkwavo';

  @override
  String get asmaMeaning69 => 'Lava nga ni Matimba';

  @override
  String get asmaMeaning70 => 'Muvumbi wa matimba hinkwawo';

  @override
  String get asmaMeaning71 => 'Mufambisi wa Xihatla';

  @override
  String get asmaMeaning72 => 'Muhluri';

  @override
  String get asmaMeaning73 => 'Xo Sungula';

  @override
  String get asmaMeaning74 => 'Lava Xo Hetelela';

  @override
  String get asmaMeaning75 => 'Swilo Leswi Vonakaka';

  @override
  String get asmaMeaning76 => 'Leswi Fihliweke';

  @override
  String get asmaMeaning77 => 'Holobye-nkulu';

  @override
  String get asmaMeaning78 => 'Loyi a Tlakukeke';

  @override
  String get asmaMeaning79 => 'Muendli wa Leswinene';

  @override
  String get asmaMeaning80 => 'Nkongomiso wa ku Hundzuka';

  @override
  String get asmaMeaning81 => 'Murihiseri';

  @override
  String get asmaMeaning82 => 'Mu rivaleli';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'N’wini / Hosi ya Hinkwaswo';

  @override
  String get asmaMeaning85 => 'Mufumi wa Vuhosi na Vukulu';

  @override
  String get asmaMeaning86 => 'Loyi A Ringana';

  @override
  String get asmaMeaning87 => 'Muhlengeleti';

  @override
  String get asmaMeaning88 => 'Loyi A Fuweke';

  @override
  String get asmaMeaning89 => 'Mufuwisi';

  @override
  String get asmaMeaning90 => 'Musivela-ku-vabyi';

  @override
  String get asmaMeaning91 => 'Mutisi wa Khombo';

  @override
  String get asmaMeaning92 => 'Munyiki wa Mimbuyelo';

  @override
  String get asmaMeaning93 => 'Ku Vonakala';

  @override
  String get asmaMeaning94 => 'Mukongomisi wa Mukongomisi';

  @override
  String get asmaMeaning95 => 'Musunguri wa Masungulo';

  @override
  String get asmaMeaning96 => 'Loyi A Nga Heriki';

  @override
  String get asmaMeaning97 => 'Mudyandzhaka';

  @override
  String get asmaMeaning98 => 'Nkongomiso Lowu Lulama Ngopfu';

  @override
  String get asmaMeaning99 => 'Loyi Muvabyi';
}
