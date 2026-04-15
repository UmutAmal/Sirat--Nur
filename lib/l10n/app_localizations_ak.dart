// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Akan (`ak`).
class AppLocalizationsAk extends AppLocalizations {
  AppLocalizationsAk([String locale = 'ak']) : super(locale);

  @override
  String get appTitle => 'Ɔkwan A Ɛfa Allah Ho';

  @override
  String get splashTagline => 'Islamic Way of Light';

  @override
  String get home => 'Fie';

  @override
  String get quran => 'Kur’aan';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Kalenda a wɔde yɛ adwuma';

  @override
  String get settings => 'Nsiesiei a Wɔde Yɛ Adwuma';

  @override
  String get nextPrayer => 'Mpaebɔ a Edi Hɔ';

  @override
  String get prayerTimes => 'Mpaebɔ Bere';

  @override
  String get continueReading => 'Kɔ so Kenkan';

  @override
  String get getLifetimePro => 'Nya Nkwa Nna Pro';

  @override
  String get unlockTajweed => 'Bue Tajweed & Nneɛma a Ɛkɔ Anim';

  @override
  String get prayerCalculation => 'Mpaebɔ Akontaabu';

  @override
  String get method => 'Ɔkwan a Wɔfa so Bu Nkontaabu';

  @override
  String get madhab => 'Asr Mmara Ho Ɔkwan a Wɔfa so Yɛ';

  @override
  String get surahs => 'Surah ahorow a ɛwɔ hɔ';

  @override
  String get ayahs => 'Ayahs na ɛyɛ';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Owia apuei';

  @override
  String get dhuhr => 'Dhuhr na ɔkyerɛwee';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Maghrib kasa';

  @override
  String get isha => 'Isha na ɔyɛ';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Bere a wɔde yɛ $prayerName.';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Ɛyɛ bere a ɛsɛ sɛ yɛbɔ mpae $prayerName.';
  }

  @override
  String get dataStorage => 'Data & Nneɛma a Wɔkora So';

  @override
  String get clearCache => 'Popa Cache no mu';

  @override
  String get cacheClearedSuccess => 'Cache no yii mu yiye';

  @override
  String get location => 'Beaeɛ';

  @override
  String get language => 'Kasa';

  @override
  String get selectLanguage => 'Paw Kasa';

  @override
  String get searchLanguage => 'Hwehwɛ kasa ahorow 180+...';

  @override
  String get systemDefault => 'System Default a Wɔde Di Dwuma';

  @override
  String get currentLocation => 'Mprempren Beae (GPS) .';

  @override
  String get locationServiceDisabled => 'Wɔayɛ beaeɛ som adwuma no adwuma.';

  @override
  String get locationPermissionDenied => 'Wɔapow beae ho kwan.';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => 'Hwehwɛ';

  @override
  String get searchHint => 'Hwehwɛ...';

  @override
  String get noResults => 'No results found';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get appErrorOccurred => 'Mfomso bi sii';

  @override
  String get appUnknownError => 'Mfomso a wonnim';

  @override
  String get retry => 'San bɔ mmɔden bio';

  @override
  String get refreshAction => 'Refresh';

  @override
  String get cancel => 'Twam';

  @override
  String get save => 'Kora';

  @override
  String get delete => 'Delete';

  @override
  String get edit => 'Sa mu';

  @override
  String get close => 'To mu';

  @override
  String get ok => 'YOO';

  @override
  String get yes => 'Aane';

  @override
  String get no => 'Daabi';

  @override
  String get surah => 'Surah a ɛwɔ hɔ';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Kratafa';

  @override
  String get reading => 'Akenkan';

  @override
  String get recitation => 'Nsɛm a Wɔka Kyerɛ';

  @override
  String get translation => 'Nkyerɛaseɛ';

  @override
  String get tafsir => 'Tafsir na ɔyɛ';

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
  String get bookmarks => 'Nwoma a Wɔde Yɛ Nwoma';

  @override
  String get addBookmark => 'Fa Bookmark ka ho';

  @override
  String get removeBookmark => 'Yi Bookmark no fi hɔ';

  @override
  String get lastRead => 'Akenkan a Etwa To';

  @override
  String get dailyZikr => 'Da biara da Zikr';

  @override
  String get duaMeaning1 =>
      'afoforɔ nso bɔ mpaeɛ sɛ, ‘Yɛn Awurade, ma yɛn papa wɔ wiase yi mu ne Daankwamma mu, na bɔ yɛn ho ban firi Ogya ayayadeɛ ho.’';

  @override
  String get duaMeaning2 =>
      'Onyankopɔn mfa adesoa nhyɛ ɔkra biara so nsen nea obetumi asoa: obiara nya papa biara a wayɛ, na ohu ne bɔne- ‘ Awurade, sɛ yɛn werɛ fi anaasɛ yedi mfomso a, mfa yɛn nkɔ asɛnnibea. Awurade, mfa adesoa nto yɛn so sɛnea Wode adesoa guu wɔn a wodii yɛn anim kan no. Awurade, mma nnsoa yɛn so nsen nea yɛwɔ a yɛde bɛsoa. Fa yɛn bɔne kyɛ yɛn, fa kyɛ yɛn, na hu yɛn mmɔbɔ. Wone yɛn Banbɔfoɔ, enti boa yɛn tia atiafoɔ no.’';

  @override
  String get duaMeaning3 =>
      '‘Y’Awurade, mma yen akoma nnkyinkyin bere a Woakyere yen kwan akyi. Ma yɛn W’ahummɔbɔ: Wo ne Ɔma Daa.';

  @override
  String get duaMeaning4 =>
      'Awurade, ma me ne m\'asefoɔ nkɔ so abɔ mpaeɛ. Y\'Awurade, gye m\'abisade no tom.';

  @override
  String get duaMeaning5 =>
      'na fa wo ntaban si fam wɔ ahobrɛase mu kyerɛ wɔn wɔ ayamye mu na ka sɛ, ‘Awurade, hu wɔn mmɔbɔ, sɛnea wɔhwɛɛ me bere a na meyɛ abofra no.’';

  @override
  String get duaMeaning6 =>
      'wɔmma Onyankopɔn, nea odi tumi ankasa no so. [Odiyifo], npere wo ho nkenkan ansa na adiyisɛm no awie koraa na mmom ka sɛ, ‘Awurade, ma me nnɔɔso wɔ nimdeɛ mu!’';

  @override
  String get duaMeaning7 =>
      'Ka [Odiyifo] se, ‘Awurade, fa kyɛ na hu mmɔbɔ: Wo ne mmɔborohunufo sen obiara.’';

  @override
  String get duaMeaning8 =>
      'wɔn a wɔbɔ mpae sɛ, ‘Yɛn Awurade, ma yɛn anigye wɔ yɛn ahokafo ne yɛn mma mu. Yɛ yɛn nhwɛso pa mma wɔn a wonim Wo’.';

  @override
  String get morningZikr => 'Anɔpa Zikr';

  @override
  String get eveningZikr => 'Anwummere Zikr';

  @override
  String get tasbih => 'Tasbih na ɛyɛ';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masa\'il';

  @override
  String get hadith => 'Hadith a wɔde di dwuma';

  @override
  String get hadithCollection => 'Hadith Nneɛma a Wɔaboaboa Ano';

  @override
  String get hadithBooks => 'Hadith Nhoma ahorow';

  @override
  String get searchHadith => 'Hwehwɛ Hadith mu';

  @override
  String get asmaulHusna => 'Asma-ul-Husna na ɔkyerɛwee';

  @override
  String get namesOfAllah => 'Allah din';

  @override
  String get liveTv => 'TV a wɔde hwɛ nneɛma so';

  @override
  String get watchLive => 'Hwɛ Live';

  @override
  String get streamError => 'Stream mfomso';

  @override
  String get reload => 'San fa nneɛma gu mu';

  @override
  String get openInYoutube => 'Bue wɔ YouTube so';

  @override
  String get ibadahTracker => 'Ibadah Akyidifoɔ';

  @override
  String get fasting => 'Mmuadadi';

  @override
  String get quranReading => 'Kuran Akenkan';

  @override
  String get prayers => 'Mpaebɔ ahorow';

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
  String get dhikrCount => 'Dhikr Kan no';

  @override
  String get weeklyProgress => 'Nnawɔtwe Biara Nkɔso';

  @override
  String get monthlyProgress => 'Nkɔso a Ɛba Ɔsram Biara';

  @override
  String get statistics => 'Akontaabu';

  @override
  String get hijriCalendar => 'Hijri Kalenda a Wɔde Di Dwuma';

  @override
  String get gregorianCalendar => 'Gregorian Kalenda a Wɔde Di Dwuma';

  @override
  String get today => 'Ɛnnɛ';

  @override
  String get tomorrow => 'Ɔkyena';

  @override
  String get yesterday => 'Nnora';

  @override
  String get specialDays => 'Nna Titiriw';

  @override
  String get ramadan => 'Ramadan a ɛwɔ hɔ';

  @override
  String get eidAlFitr => 'Eid Al-Fitr na ɔkyerɛwee';

  @override
  String get eidAlAdha => 'Eid Al-Adha a ɛyɛ fɛ';

  @override
  String get islamicNewYear => 'Islamfoɔ Afe Foforo';

  @override
  String get mawlidAnNabi => 'Mawlid ne Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadan da no';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadan da no';

  @override
  String get specialDayDateEidAlFitr => '1 Shawwal na ɔkyerɛwee';

  @override
  String get specialDayDateEidAlAdha => '10 Dhul Hijjah';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharram na ɔkyerɛwee';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabi al-Awwal na ɔkyerɛwee';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr na ɔkyerɛwee';

  @override
  String get qiblaDirection => 'Qibla Akwankyerɛ';

  @override
  String get compass => 'Kɔmpase a wɔde yɛ adwuma';

  @override
  String get degrees => 'digrii ahorow';

  @override
  String get north => 'Atifi';

  @override
  String get qiblaFound => 'Qibla a wɔahu!';

  @override
  String get turnDevice => 'Dane wo mfiri no ma ɛnhwɛ Qibla no';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Compass mfomso: $error';
  }

  @override
  String get qiblaSensorUnavailable => 'Compass sensor nni saa afiri yi so.';

  @override
  String get notifications => 'Amanneɛbɔ ahorow';

  @override
  String get prayerNotifications => 'Mpaebɔ Ho Amanneɛbɔ';

  @override
  String get enableNotifications => 'Ma Notifications nyɛ adwuma';

  @override
  String get notificationTime => 'Bere a Wɔde Bɔ Amanneɛbɔ';

  @override
  String get beforePrayer => 'simma kakraa bi ansa na wɔabɔ mpae';

  @override
  String get theme => 'Nsɛmpɔ';

  @override
  String get lightMode => 'Hann Mode a Wɔde Di Dwuma';

  @override
  String get darkMode => 'Esum Mode';

  @override
  String get systemTheme => 'System Asɛmti';

  @override
  String get about => 'Fa ho';

  @override
  String get version => 'Ɔfa';

  @override
  String get privacyPolicy => 'Kokoam Nsɛm Ho Nhyehyɛe';

  @override
  String get termsOfService => 'Ɔsom Ho Nhyehyɛe';

  @override
  String get contactUs => 'Di Yɛn Nkitahodi';

  @override
  String get rateApp => 'Rate App no ​​ho';

  @override
  String get shareApp => 'Kyɛ App no';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'Nneɛma a wɔtwe';

  @override
  String get downloading => 'Woretwe...';

  @override
  String get downloadComplete => 'Download Complete';

  @override
  String get downloadFailed => 'Download Failed';

  @override
  String get offlineMode => 'Offline Mode a Wɔde Di Dwuma';

  @override
  String get noInternet => 'No Internet Connection';

  @override
  String get checkConnection => 'Yɛsrɛ sɛ hwɛ wo nkitahodi no';

  @override
  String get premium => 'Ntetohɔ';

  @override
  String get upgradeToPro => 'Upgrade kɔ Pro';

  @override
  String get proFeatures => 'Pro Nneɛma a Ɛwɔ Hɔ';

  @override
  String get removeAds => 'Yi Ads no fi hɔ';

  @override
  String get unlockAll => 'Bue Nsɛm a Ɛwɔ Mu Nyinaa';

  @override
  String get exclusiveContent => 'Nsɛm a Ɛwɔ Hɔ Nkonimdi';

  @override
  String get welcome => 'Akwaaba';

  @override
  String get getStarted => 'Fi Ase';

  @override
  String get skip => 'Bɔ tra';

  @override
  String get next => 'Deɛ ɛdi hɔ';

  @override
  String get done => 'Mawie';

  @override
  String get onboarding1Title => 'Yɛma wo akwaaba ba Allah kwan so';

  @override
  String get onboarding1Desc =>
      'Wo Islam hokafoɔ app a edi mũ ma mpaebɔ mmerɛ, Quran, ne nea ɛkeka ho';

  @override
  String get onboarding2Title => 'Mpaebɔ Bere';

  @override
  String get onboarding2Desc => 'Mpaebɔ mmere a edi mu a egyina beae a wowɔ so';

  @override
  String get onboarding3Title => 'Kur’aan & Nea Ɛkeka Ho';

  @override
  String get onboarding3Desc =>
      'Kenkan Quran, di w’akenkan akyi, na hwehwɛ Islam mu nsɛm mu';

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
  String get zikrCompletedMashAllah => 'Wɔawie! MashAllah na ɔyɛ';

  @override
  String get zikrMeaningSubhanAllah => 'Allah boro pɛyɛ biara so koraa.';

  @override
  String get zikrMeaningAlhamdulillah => 'Ayeyi nyinaa ye Allah dea.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah ne Ɔkɛseɛ.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Onyame biara nni ho gyese Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Mehwehwe Allah bonefakye.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Tumi ne ahoɔden biara nni hɔ gyese ɛnam Allah so.';

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
  String get diagnosticsNotSet => 'Ɛnyɛ nea wɔde asi hɔ';

  @override
  String get diagnosticsPrayerProfile => 'Mpaebɔ Ho Nsɛm';

  @override
  String get diagnosticsPrayerSource => 'Mpaebɔ Tumi';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manual custom angles (asoɛe biara nni hɔ fibea) .';

  @override
  String get diagnosticsCloudDriven => 'Mununkum a Wɔde Di Dwuma';

  @override
  String get diagnosticsAdhanAudioAssets =>
      'Adhan Audio Nneɛma a Wɔde Yɛ Adwuma';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets =>
      'Quran Audio Nneɛma a Wɔde Yɛ Adwuma';

  @override
  String get diagnosticsAudioAssets => 'Nneɛma a Wɔde Tie';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count fael ahorow no';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifest akenkan no antumi anyɛ yiye: $error .';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Mpɔtam a Wɔyɛ Mpɔtam Hɔ';

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
  String get dailyVerse => 'Daa Nkyekyɛm';

  @override
  String get todaysIbadah => 'Ɛnnɛ Ibadah';

  @override
  String get quickAccess => 'Nneɛma a Wɔde Kɔ Ntɛmntɛm';

  @override
  String get assistant => 'Abadiakyire';

  @override
  String get places => 'Mmeammea';

  @override
  String get library => 'Laabri';

  @override
  String get analytics => 'Nhwehwɛmu a wɔyɛe';

  @override
  String get dailyDuas => 'Da biara da Duas';

  @override
  String essentialDuas(String count) {
    return '$count essential duas';
  }

  @override
  String get duaUnavailableTitle => 'Verified duas no nnya mmae';

  @override
  String get duaUnavailableBody =>
      'Verified daily duas no nnya nyɛɛ sync wɔ saa afiri yi so. Fa bata mununkum fibea no ho na fa duas a efi mu ba no hyɛ mu sen sɛ wobɛfa fallback a wɔannye antom.';

  @override
  String get duaCategoryQuranic => 'Kur’aan dua';

  @override
  String get duaCategoryMorningEvening => 'Anɔpa & Anwummere';

  @override
  String get duaCategoryTasbih => 'Tasbih na ɛyɛ';

  @override
  String get duaCategoryProtection => 'Ahobammɔ';

  @override
  String get duaCategoryBeginning => 'Mfiase ahorow';

  @override
  String get duaCategorySleep => 'Da';

  @override
  String get duaCategoryFoodDrink => 'Aduan & Nnuan a Wɔnom';

  @override
  String get duaCategoryForgiveness => 'Bɔne fafiri';

  @override
  String get duaCategoryHome => 'Fie';

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
  String get islamicEducation => 'Islamfoɔ Nhomasua';

  @override
  String get sukunAudioTitle => 'Sukun Nnyigyei a Wɔde Yɛ Nneɛma';

  @override
  String get hadithCollections => 'Hadith Nneɛma a Wɔaboaboa Ano';

  @override
  String get hadithSourcePending => 'Verified source a ɛda so ara wɔ hɔ';

  @override
  String get hadithUnavailableTitle =>
      'Hadith ahorow a wɔaboaboa ano a wɔagye atom no nnya mmae';

  @override
  String get hadithUnavailableBody =>
      'Saa ɔdan yi da so ara gyina abɔnten hadith feed a wɔannye antom so. Hadith browsing kɔ so yɛ adwuma kosi sɛ wɔbɛma dataset a wɔanya fibea no ayɛ sync.';

  @override
  String get paywallUnlockAll =>
      'Bue nneɛma a ɛwɔ hɔ nyinaa ma wo honhom mu akwantu no';

  @override
  String get premiumProductUnavailable =>
      'Premium product is not available right now. Please try again later.';

  @override
  String get premiumPurchaseFailed =>
      'Purchase could not be completed. Please try again.';

  @override
  String get paywallFeature1Title => 'Ntini mu Boafo Plus';

  @override
  String get paywallFeature1Desc => 'AI-powered Q&A a anohyeto nni mu';

  @override
  String get paywallFeature2Title => 'Anohyeto a Enni Offline';

  @override
  String get paywallFeature2Desc => 'Twe nsɛm a wɔkenkan no nyinaa';

  @override
  String get paywallFeature3Title => 'Nneɛma a Wɔayɛ no Nkonimdi';

  @override
  String get paywallFeature3Desc => 'Premium asɛmti & nkyerɛwde';

  @override
  String get paywallFeature4Title => 'Ad-Free na ɛnyɛ hwee';

  @override
  String get paywallFeature4Desc => 'Dawurubɔ ahorow a ɛnyɛ hwee';

  @override
  String get paywallGetAccess => 'Nya Nkwa Nna Mu Nkɔso — \$1.00';

  @override
  String get restorePurchases => 'San Fa Nneɛma a Wɔatɔ no Ba';

  @override
  String get zakatCalculator => 'Zakat Nkontaabuo';

  @override
  String get zakatGold => 'Sika kɔkɔɔ (Altın) .';

  @override
  String get zakatSilver => 'Dwetɛ (Gümüş) .';

  @override
  String get zakatCashBank => 'Sika / Sikakorabea';

  @override
  String get zakatBusiness => 'Dwadie';

  @override
  String get zakatInvestments => 'Sika a wɔde hyɛ mu';

  @override
  String get zakatWeightGrams => 'Mu duru (g) ​​.';

  @override
  String get zakatPricePerGram => 'Boɔ/g';

  @override
  String get zakatTotalAmount => 'Sika a Wɔde Yɛ Nneɛma Nyinaa';

  @override
  String get zakatInventoryValue => 'Nneɛma a Wɔakora So Botae';

  @override
  String get zakatDebts => 'Ɛka a wɔde ma';

  @override
  String get zakatTotal => 'Ne nyinaa';

  @override
  String get calculateZakat => 'Bu Zakat ho akontaa';

  @override
  String get nisabNotReached => 'Nisab antumi ankɔ. Zakat nnyɛ ahyɛde.';

  @override
  String get totalZakat => 'Zakat a ɛyɛ ne nyinaa';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'Sikakɔkɔɔ Zakat';

  @override
  String get zakatSilverZakat => 'Dwetɛ Zakat';

  @override
  String get zakatCashZakat => 'Sika Zakat a wɔde ma';

  @override
  String get zakatBusinessZakat => 'Adwumayɛ Zakat';

  @override
  String get zakatInvestmentZakat => 'Sika a Wɔde Totɔ Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Da biara da asɛmmisa anohyeto a woduu ho. Upgrade to Premium ma anohyeto biara nni ho.';

  @override
  String get chatbotErrorMsg =>
      'Mantumi amma mmuae biara amma. Yɛsrɛ sɛ sɔ hwɛ bio.';

  @override
  String get chatbotOfflinePrompt =>
      'The verified offline Islamic knowledge base is still being curated. You can enable offline fallback now, but it will only show limited safe messages until the sourced dataset is ready.\n\nWould you like to enable offline fallback?';

  @override
  String get chatbotOfflineSwitched =>
      'Offline fallback enabled. Verified local Islamic answers are not ready yet.';

  @override
  String get chatbotOfflineDownloadLabel => 'Ma Offline Fallback nyɛ adwuma';

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
  String get sukunMixerSubtitle => 'Abɔdeɛ & Kur\'aan Mixer';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (Abɔde) .';

  @override
  String get sukunRainOfMercy => 'Osu a Ɛtɔ Mmɔborohunu';

  @override
  String get sukunGardenOfPeace => 'Asomdwoe Turo';

  @override
  String get sukunMidnightCalm => 'Anadwo Fam Kommyɛ';

  @override
  String get sukunOceanTawheed => 'Po so Tawheed';

  @override
  String get sukunUnavailableTitle => 'Nnyigyei ahorow a enni hɔ';

  @override
  String get sukunUnavailableBody =>
      'Saa dan yi nka Sukun soundscape agyapadeɛ a wɔhwehwɛ no ho de besi nnɛ.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Da a ɛtoatoa so';

  @override
  String get bestStreak => 'Streak a eye sen biara';

  @override
  String get chatbotCloudAiLabel => 'Mununkum AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback a ɛwɔ hɔ';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Ma Offline Fallback nyɛ adwuma';

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
  String get mosques => 'Asɔredan ahorow';

  @override
  String get halalFood => 'Halal Aduan a Wɔde Di Dwuma';

  @override
  String get placesSearchArea => 'Hwehwɛ beae yi';

  @override
  String get nearbyMosques => 'Asɔredan ahorow a ɛbɛn hɔ';

  @override
  String get islamicSchools => 'Islam Sukuu Ahorow';

  @override
  String placesFoundCount(String count) {
    return 'Wɔahu $count';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km akyirikyiri';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API mfomso: $statusCode';
  }

  @override
  String get placesNetworkError => 'Network mfomso. Yɛsrɛ sɛ sɔ hwɛ bio.';

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
  String get unknownPlaceName => 'Edin a Wonnim';

  @override
  String get islamicPlaceFallback => 'Islam Beaeɛ';

  @override
  String get asmaMeaning1 => 'Nea Ɔyɛ Mfaso';

  @override
  String get asmaMeaning2 => 'Mmɔborohunufoɔ';

  @override
  String get asmaMeaning3 => 'Ɔhene / Daa Awurade';

  @override
  String get asmaMeaning4 => 'Kronkron Panyin';

  @override
  String get asmaMeaning5 => 'Asomdwoeɛ Fibea';

  @override
  String get asmaMeaning6 => 'Nea Ɔma Ahobammɔ';

  @override
  String get asmaMeaning7 => 'Ɔwɛmfo no';

  @override
  String get asmaMeaning8 => 'Nea Ɔsom Bo / Nea Ɔyɛ Tumi sen biara';

  @override
  String get asmaMeaning9 => 'Ɔhyɛfoɔ';

  @override
  String get asmaMeaning10 => 'Nea Ɔkɛseɛ';

  @override
  String get asmaMeaning11 => 'Ɔbɔadeɛ no';

  @override
  String get asmaMeaning12 => 'Nea Ɔyɛ Nhyehyɛe';

  @override
  String get asmaMeaning13 => 'Nea Ɔyɛ Ahoɔfɛ';

  @override
  String get asmaMeaning14 => 'Nea Ɔde Bɔne Fafiri';

  @override
  String get asmaMeaning15 => 'Nea Ɔbrɛ ne ho ase';

  @override
  String get asmaMeaning16 => 'Nea Ɔde Nyinaa Ma';

  @override
  String get asmaMeaning17 => 'Nea ɔhwɛ so';

  @override
  String get asmaMeaning18 => 'Nea Ɔbue';

  @override
  String get asmaMeaning19 => 'Nea Onim Ne nyinaa';

  @override
  String get asmaMeaning20 => 'Ɔkwan a wɔfa so yɛ adwuma';

  @override
  String get asmaMeaning21 => 'Ɔhotefoɔ';

  @override
  String get asmaMeaning22 => 'Abasfoɔ no';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'Nea Ɔde Nidi Ma';

  @override
  String get asmaMeaning25 => 'Ahobrɛasefoɔ';

  @override
  String get asmaMeaning26 => 'Nnibiara Tiefoɔ';

  @override
  String get asmaMeaning27 => 'Nea Ɔhwɛ Nyinaa';

  @override
  String get asmaMeaning28 => 'Ɔtemmufoɔ no';

  @override
  String get asmaMeaning29 => 'Ateneneefoɔ';

  @override
  String get asmaMeaning30 => 'Nea Ɔyɛ Anifere';

  @override
  String get asmaMeaning31 => 'Wɔn a Wɔnim Nyinaa';

  @override
  String get asmaMeaning32 => 'Agyanom';

  @override
  String get asmaMeaning33 => 'Nea Ɛyɛ nwonwa';

  @override
  String get asmaMeaning34 => 'Fafiri Kɛseɛ no';

  @override
  String get asmaMeaning35 => 'Aseda ho Akatuafoɔ';

  @override
  String get asmaMeaning36 => 'Nea Ɔkorɔn sen biara';

  @override
  String get asmaMeaning37 => 'Nea Ɔkɛseɛ';

  @override
  String get asmaMeaning38 => 'Akoraeɛ no';

  @override
  String get asmaMeaning39 => 'Nnuanmafoɔ';

  @override
  String get asmaMeaning40 => 'Akontaabufoɔ';

  @override
  String get asmaMeaning41 => 'Ɔkɛseɛ no';

  @override
  String get asmaMeaning42 => 'Ayamyefoɔ';

  @override
  String get asmaMeaning43 => 'Nea Ɔwɛn';

  @override
  String get asmaMeaning44 => 'Mpaebɔ ho mmuaemafoɔ';

  @override
  String get asmaMeaning45 => 'Ne Nyinaa Nteaseɛ';

  @override
  String get asmaMeaning46 => 'Onyansafoɔ a Ɔdi Pɛ';

  @override
  String get asmaMeaning47 => 'Ɔdɔfoɔ';

  @override
  String get asmaMeaning48 => 'Nea Ɔwɔ Animuonyam Paara';

  @override
  String get asmaMeaning49 => 'Owusɔreɛ no';

  @override
  String get asmaMeaning50 => 'Ɔdansefoɔ no';

  @override
  String get asmaMeaning51 => 'Nokware no';

  @override
  String get asmaMeaning52 => 'Ɔhwɛfoɔ a Ɔyɛ Ne Nyinaa';

  @override
  String get asmaMeaning53 => 'Nea Ɔwɔ Ahoɔden Nyinaa';

  @override
  String get asmaMeaning54 => 'Ahoɔdenfoɔ';

  @override
  String get asmaMeaning55 => 'Ahobanbɔfoɔ no';

  @override
  String get asmaMeaning56 => 'Wɔakamfo no';

  @override
  String get asmaMeaning57 => 'Nea Ɔyɛ Nhwehwɛmu';

  @override
  String get asmaMeaning58 => 'Nea Ɔhyehyɛɛ no';

  @override
  String get asmaMeaning59 => 'Ɔkwan a ɔsan de ba';

  @override
  String get asmaMeaning60 => 'Nkwa Ma';

  @override
  String get asmaMeaning61 => 'Nkwagyefoɔ';

  @override
  String get asmaMeaning62 => 'Nea Ɔte Ase Daa';

  @override
  String get asmaMeaning63 => 'Nea Ɔma Ne Ho Nteaseɛ';

  @override
  String get asmaMeaning64 => 'Ɔhwehwɛfoɔ';

  @override
  String get asmaMeaning65 => 'Anuonyamfoɔ';

  @override
  String get asmaMeaning66 => 'Nea Ɔno nko ara';

  @override
  String get asmaMeaning67 => 'Nea no';

  @override
  String get asmaMeaning68 => 'Nea Nnipa Nyinaa Hwehwɛ';

  @override
  String get asmaMeaning69 => 'Wɔde Tumi';

  @override
  String get asmaMeaning70 => 'Tumi nyinaa Bɔfo';

  @override
  String get asmaMeaning71 => 'Ɔkwan a ɔyɛ ntɛm';

  @override
  String get asmaMeaning72 => 'Nea Ɔkyɛ';

  @override
  String get asmaMeaning73 => 'Nea Edi Kan';

  @override
  String get asmaMeaning74 => 'Nea Etwa To';

  @override
  String get asmaMeaning75 => 'Nea Ɛda Adi';

  @override
  String get asmaMeaning76 => 'Nea Wɔde Ahintaw';

  @override
  String get asmaMeaning77 => 'Amrado no';

  @override
  String get asmaMeaning78 => 'Nea Ɔkorɔn';

  @override
  String get asmaMeaning79 => 'Nea Ɔyɛ papa';

  @override
  String get asmaMeaning80 => 'Akwankyerɛ a ɛfa Adwensakra ho';

  @override
  String get asmaMeaning81 => 'Aweredifoɔ';

  @override
  String get asmaMeaning82 => 'Ɔdefakyɛfoɔ';

  @override
  String get asmaMeaning83 => 'The Clement';

  @override
  String get asmaMeaning84 => 'Owura / Otumfoɔ a ɔhwɛ obiara so';

  @override
  String get asmaMeaning85 => 'Nea Ɔwɔ Anuonyam ne Akyɛde';

  @override
  String get asmaMeaning86 => 'Nea Ɔyɛ Pɛ';

  @override
  String get asmaMeaning87 => 'Ɔboaboafoɔ';

  @override
  String get asmaMeaning88 => 'Ɔdefoɔ no';

  @override
  String get asmaMeaning89 => 'Nea Ɔma Ahonyade';

  @override
  String get asmaMeaning90 => 'Nea Ɔsiw Ɔhaw Ano';

  @override
  String get asmaMeaning91 => 'Nea Ɔde Ɔhaw ba';

  @override
  String get asmaMeaning92 => 'Ɔde Mfaso Ma';

  @override
  String get asmaMeaning93 => 'Han no';

  @override
  String get asmaMeaning94 => 'Kwankyerɛfoɔ no';

  @override
  String get asmaMeaning95 => 'Nea Ɔhyehyɛɛ no';

  @override
  String get asmaMeaning96 => 'Nea Ɔte hɔ Daa';

  @override
  String get asmaMeaning97 => 'Adedifoɔ no';

  @override
  String get asmaMeaning98 => 'Akwankyerɛ a ɛtene sen biara';

  @override
  String get asmaMeaning99 => 'Ɔyarefoɔ no';
}
