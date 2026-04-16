// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hawaiian (`haw`).
class AppLocalizationsHaw extends AppLocalizations {
  AppLocalizationsHaw([String locale = 'haw']) : super(locale);

  @override
  String get appTitle => 'Ala o Allah';

  @override
  String get splashTagline => 'Ala Islam o ka Malamalama';

  @override
  String get home => 'Home';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Kalena';

  @override
  String get settings => 'Nā hoʻonohonoho';

  @override
  String get nextPrayer => 'Pule Hou';

  @override
  String get prayerTimes => 'Manawa Pule';

  @override
  String get continueReading => 'E hoomau Heluhelu';

  @override
  String get getLifetimePro => 'Loaʻa iā Lifetime Pro';

  @override
  String get unlockTajweed => 'Wehe i nā hiʻohiʻona Tajweed & Advanced';

  @override
  String get prayerCalculation => 'Helu pule';

  @override
  String get method => 'Heluhelu';

  @override
  String get madhab => 'ʻO ke ʻano hoʻokolokolo Asr';

  @override
  String get surahs => 'Nā Surah';

  @override
  String get ayahs => 'ʻAha';

  @override
  String get fajr => 'ʻO ka pō';

  @override
  String get sunrise => 'Puka lā';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'ʻO Asr';

  @override
  String get maghrib => 'Maghrib';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Ka manawa no $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'ʻO ka manawa kēia e pule ai iā $prayerName.';
  }

  @override
  String get dataStorage => 'ʻIkepili & Waihona';

  @override
  String get clearCache => 'Holoi huna';

  @override
  String get cacheClearedSuccess => 'Holoi ʻia ka waihona';

  @override
  String get location => 'Wahi';

  @override
  String get language => 'ʻŌlelo';

  @override
  String get selectLanguage => 'E koho i ka ʻōlelo';

  @override
  String get searchLanguage => 'Huli 180+ ʻōlelo...';

  @override
  String get systemDefault => 'Pūnaehana Default';

  @override
  String get currentLocation => 'Kahi o kēia manawa (GPS)';

  @override
  String get locationServiceDisabled => 'Ua pio ka lawelawe wahi.';

  @override
  String get locationPermissionDenied => 'Ua hōʻole ʻia ka ʻae wahi.';

  @override
  String get locationDetectionFailed =>
      'ʻAʻole hiki ke ʻike i kou wahi. E ʻoluʻolu e koho lima i ke kūlanakauhale a i ʻole e hoʻāʻo hou.';

  @override
  String citiesCount(String count) {
    return '$count kūlanakauhale';
  }

  @override
  String get search => 'Huli';

  @override
  String get searchHint => 'Huli...';

  @override
  String get noResults => 'ʻAʻohe hopena i loaʻa';

  @override
  String get loading => 'Ke hoʻouka nei...';

  @override
  String get error => 'Kuhihewa';

  @override
  String get appErrorOccurred => 'Ua hewa';

  @override
  String get appUnknownError => 'Kupa ʻike ʻole ʻia';

  @override
  String get quranLoadFailed =>
      'ʻAʻole hiki ke hoʻouka ʻia ka ʻike Quran. E ʻoluʻolu e hoʻāʻo hou.';

  @override
  String get retry => 'E hoao hou';

  @override
  String get refreshAction => 'Hōʻano hou';

  @override
  String get cancel => 'Hoʻopau';

  @override
  String get save => 'Mālama';

  @override
  String get delete => 'Holoi';

  @override
  String get edit => 'Hoʻoponopono';

  @override
  String get close => 'Pani';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'ʻAe';

  @override
  String get no => 'ʻAʻole';

  @override
  String get surah => 'Surah';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'ʻO Juz';

  @override
  String get page => 'ʻAoʻao';

  @override
  String get reading => 'Heluhelu';

  @override
  String get recitation => 'Heluhelu';

  @override
  String get translation => 'Unuhi';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Ke hoʻouka nei i ka tafsir...';

  @override
  String get tafsirSourceLabel => 'Kumu Tafsir';

  @override
  String get tafsirNoSurahFound => 'ʻAʻohe tafsir i loaʻa no kēia surah.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'ʻAʻohe tafsir i loaʻa no ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'ʻAʻole hiki ke hoʻouka ʻia ʻo Tafsir.';

  @override
  String get tafsirNoTextForAyah => 'ʻAʻohe kikokikona tafsir no kēia papa.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Hoʻoiho ʻia ka tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Ke hoʻouka nei i ka tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Ua hoʻihoʻi mai ke kumu Tafsir i kahi hewa HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'ʻAʻole i hoʻihoʻi mai ke kumu tafsir i koho ʻia.';

  @override
  String get bookmarks => 'Nā kaha puke';

  @override
  String get addBookmark => 'Hoʻohui i ka Bookmark';

  @override
  String get removeBookmark => 'Wehe i ka Bookmark';

  @override
  String get lastRead => 'Heluhelu hope';

  @override
  String get dailyZikr => 'Zikr i kēlā me kēia lā';

  @override
  String get duaMeaning1 =>
      'pule kekahi, \'E ko makou Haku, e haawi mai ia makou i ka maikai ma keia ao a ma keia hope aku, a e hoomalu mai ia makou i ka eha o ke ahi.\'';

  @override
  String get duaMeaning2 =>
      'ʻAʻole kaumaha ke Akua i kekahi ʻuhane ma mua o ka mea hiki iā ia ke hoʻomanawanui: loaʻa i kēlā me kēia mea ka maikaʻi āna i hana ai, a ʻeha hoʻi i kāna ʻino - \'E ka Haku, mai lawe ʻoe iā mākou i ka hana inā hoʻopoina mākou a hana hewa paha. E ka Haku, mai hookaumaha oe ia makou e like me kou hookaumaha ana i ka poe mamua o makou. E ka Haku, mai hookaumaha oe ia makou me ka oi aku mamua o ko makou ikaika e amo ai. E kala mai, e kala mai, a e aloha mai ia makou. ʻO ʻoe nō ko mākou Mālama, no laila e kōkua mai iā mākou i ka poʻe hoʻomaloka.';

  @override
  String get duaMeaning3 =>
      'E ko makou Haku, mai hoohuli oe i ko makou naau mahope o kou alakai ana ia makou. E hāʻawi mai iā mākou i kou aloha: ʻO ʻoe ka mea hāʻawi mau.';

  @override
  String get duaMeaning4 =>
      'E ka Haku, e haawi mai ia\'u a me ka\'u poe mamo e malama i ka pule. E ko makou Haku, e maliu mai oe i ka\'u noi.';

  @override
  String get duaMeaning5 =>
      'a e hoʻohaʻahaʻa i kou ʻēheu iā lākou me ka lokomaikaʻi, a e ʻōlelo aku, \'E ka Haku, e aloha mai ʻoe iā lākou, e like me ko lākou mālama ʻana mai iaʻu i koʻu wā liʻiliʻi.\'';

  @override
  String get duaMeaning6 =>
      'e hookiekieia\'e ke Akua, ka mea nana e hoomalu. [Pula], mai wikiwiki e heluhelu ma mua o ka pau ʻana o ka hōʻike, akā e ʻōlelo aku, \'E ka Haku, hoʻonui iaʻu i ka ʻike!\'';

  @override
  String get duaMeaning7 =>
      'E ʻī aku [Pūlana], ‘E ka Haku, e kala mai a e aloha mai: ʻO ʻoe ke aloha nui loa i nā mea a pau.’';

  @override
  String get duaMeaning8 =>
      'ka poe e pule ana, E ka Haku, e haawi mai ia makou i ka olioli iloko o na wahine a me na keiki a makou. E hoolilo mai oe ia makou i kumu hoohalike no ka poe ike ia oe.';

  @override
  String get morningZikr => 'Kakahiaka Zikr';

  @override
  String get eveningZikr => 'Zikr ahiahi';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masaʻil';

  @override
  String get hadith => 'Hadith';

  @override
  String get hadithCollection => 'Hōʻiliʻili Hadith';

  @override
  String get hadithBooks => 'Buke Hadith';

  @override
  String get searchHadith => 'Huli Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Na inoa o ke Akua';

  @override
  String get liveTv => 'TV ola';

  @override
  String get watchLive => 'Nānā Live';

  @override
  String get streamError => 'Holoi hewa';

  @override
  String get reload => 'Hoʻouka hou';

  @override
  String get openInYoutube => 'Wehe ma YouTube';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'hookeai';

  @override
  String get quranReading => 'Heluhelu Quran';

  @override
  String get prayers => 'Pule';

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
  String get dhikrCount => 'Helu Dhikr';

  @override
  String get weeklyProgress => 'Holomua o ka pule';

  @override
  String get monthlyProgress => 'Holomua o ka mahina';

  @override
  String get statistics => 'Heluhelu';

  @override
  String get hijriCalendar => 'Kalena Hijri';

  @override
  String get gregorianCalendar => 'Kalena Gregorian';

  @override
  String get today => 'I kēia lā';

  @override
  String get tomorrow => 'ʻāpōpō';

  @override
  String get yesterday => 'I nehinei';

  @override
  String get specialDays => 'Nā lā kūikawā';

  @override
  String get ramadan => 'Lamadana';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Makahiki Hou Islam';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadan';

  @override
  String get specialDayDateEidAlFitr => '1 Sāwalu';

  @override
  String get specialDayDateEidAlAdha => '10 Dhul Hijjah';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharama';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabi al-Awwal';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'Kuhikuhi Qibla';

  @override
  String get compass => 'Pāpana';

  @override
  String get degrees => 'degere';

  @override
  String get north => 'Ke akau';

  @override
  String get qiblaFound => 'Loaʻa iā Qibla!';

  @override
  String get turnDevice => 'E hoʻohuli i kāu kelepona e alo i ka Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Kuwahe ka panana panana: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'ʻAʻole loaʻa ka mea ʻike panana panana ma kēia hāmeʻa.';

  @override
  String get qiblaLocationRequiredTitle => 'Pono kahi wahi no Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'E hoʻonoho i kou wahi maoli ma mua o ka hoʻohana ʻana i ka panana Qibla i hiki ke helu pololei ʻia ke kuhikuhi.';

  @override
  String get adhanNotificationChannelName => 'Hoolaha Adhan';

  @override
  String get adhanNotificationChannelDescription =>
      'ʻO nā mākaʻikaʻi manawa pule me ke kani adhan.';

  @override
  String get notifications => 'Hoolaha';

  @override
  String get prayerNotifications => 'Hoolaha Pule';

  @override
  String get enableNotifications => 'E ho\'ā i nā hoʻolaha';

  @override
  String get notificationTime => 'Manawa Hoolaha';

  @override
  String get beforePrayer => 'minuke ma mua o ka pule';

  @override
  String get theme => 'Kumuhana';

  @override
  String get lightMode => 'ʻAno māmā';

  @override
  String get darkMode => 'ʻAno ʻeleʻele';

  @override
  String get systemTheme => 'Kumuhana Pūnaehana';

  @override
  String get about => 'E pili ana';

  @override
  String get version => 'Manao';

  @override
  String get privacyPolicy => 'Kulekele pilikino';

  @override
  String get termsOfService => 'Kūlana o ka lawelawe';

  @override
  String get contactUs => 'Kāhea iā mā˚ou';

  @override
  String get rateApp => 'Loko App';

  @override
  String get shareApp => 'Kaʻana like App';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Luna Hoʻoiho';

  @override
  String get downloads => 'Hoʻoiho';

  @override
  String get downloading => 'Hoʻoiho ʻia...';

  @override
  String get downloadComplete => 'Hoʻoiho Pau';

  @override
  String get downloadFailed => 'ʻAʻole i hoʻoiho ʻia';

  @override
  String get offlineMode => 'Ke ano pahemo';

  @override
  String get noInternet => 'ʻAʻohe pili pūnaewele';

  @override
  String get checkConnection => 'E ʻoluʻolu e nānā i kāu pili';

  @override
  String get premium => 'Premium';

  @override
  String get upgradeToPro => 'Hoʻonui iā Pro';

  @override
  String get proFeatures => 'Nā hiʻohiʻona Pro';

  @override
  String get removeAds => 'Wehe i nā hoʻolaha';

  @override
  String get unlockAll => 'Wehe i na mea a pau';

  @override
  String get exclusiveContent => 'Maʻiʻo kūʻokoʻa';

  @override
  String get welcome => 'Welina';

  @override
  String get getStarted => 'E hoʻomaka';

  @override
  String get skip => 'Holoi';

  @override
  String get next => 'Aʻe';

  @override
  String get done => 'Pau';

  @override
  String get onboarding1Title => 'Welina mai i ke ala o Allah';

  @override
  String get onboarding1Desc =>
      'ʻO kāu app hoa Islam piha no nā manawa pule, Quran, a me nā mea hou aku';

  @override
  String get onboarding2Title => 'Manawa Pule';

  @override
  String get onboarding2Desc =>
      'ʻO nā manawa pule pololei e pili ana i kou wahi';

  @override
  String get onboarding3Title => 'Quran a me na mea hou aku';

  @override
  String get onboarding3Desc =>
      'E heluhelu i ka Quran, e hahai i kāu heluhelu, a e ʻimi i ka ʻike Islam';

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
  String get zikrCompletedMashAllah => 'Ua pau! MashAllah';

  @override
  String get zikrMeaningSubhanAllah => 'ʻO ke Akua ma mua o nā hemahema a pau.';

  @override
  String get zikrMeaningAlhamdulillah => 'No Allah ka mahalo.';

  @override
  String get zikrMeaningAllahuAkbar => 'ʻO Allah ka Mea Nui.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'ʻAʻohe akua ʻo Allah wale nō.';

  @override
  String get zikrMeaningAstaghfirullah => 'ʻImi au i ke kala ʻana o ke Akua.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'ʻAʻohe mana a ʻaʻohe ikaika ke ʻole ma ke Akua.';

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
  String get offlineDownloadManager => 'Luna Hoʻoiho Pahemo';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'E hoʻokuʻu i ka waihona o loko.';

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
  String get audioVoice => 'Leo Leo';

  @override
  String get audioVoiceMisharyAlafasy => 'Kāne (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Kāne (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Kāne (Sudais)';

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
  String get diagnosticsNotSet => 'ʻAʻole hoʻonohonoho';

  @override
  String get diagnosticsPrayerProfile => 'Palapala Pule';

  @override
  String get diagnosticsPrayerSource => 'Mana Pule';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Kuʻia / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Nā kihi maʻamau maʻamau (ʻaʻohe kumu kumu)';

  @override
  String get diagnosticsCloudDriven => 'Kapua Kapua';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio waiwai';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Na waiwai leo Quran';

  @override
  String get diagnosticsAudioAssets => 'Na waiwai leo';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count waihona';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'ʻAʻole i heluhelu ʻia ka hōʻike hōʻike: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Nā Kūlana Kūlana';

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
      'Nalo nā papa ʻaina ma Supabase; pūʻolo fallback hana';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Nalo ka metadata cloud juz; pūʻolo structural fallback active';

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
  String get dailyVerse => 'Paukū o kēlā me kēia lā';

  @override
  String get todaysIbadah => 'ʻO ka Ibadah i kēia lā';

  @override
  String get quickAccess => 'Komo wikiwiki';

  @override
  String get assistant => 'Kokua';

  @override
  String get places => 'Nā wahi';

  @override
  String get library => 'Hale Waihona Puke';

  @override
  String get analytics => 'Heluhelu';

  @override
  String get dailyDuas => 'ʻElua mau lā';

  @override
  String essentialDuas(String count) {
    return '$count pono ʻelua';
  }

  @override
  String get duaUnavailableTitle => 'ʻAʻole loaʻa nā duas i hōʻoia ʻia';

  @override
  String get duaUnavailableBody =>
      'ʻAʻole i hoʻopaʻa ʻia nā ʻelua i kēlā me kēia lā i kēia hāmeʻa. Hoʻohui i ke kumu ao e hoʻouka i nā kumu ʻelua ma mua o kahi hāʻule hōʻoia ʻole.';

  @override
  String get duaCategoryQuranic => 'Quranic dua';

  @override
  String get duaCategoryMorningEvening => 'Kakahiaka & ahiahi';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Palekana';

  @override
  String get duaCategoryBeginning => 'Hoomaka';

  @override
  String get duaCategorySleep => 'Moe';

  @override
  String get duaCategoryFoodDrink => 'ʻAi a me ka mea inu';

  @override
  String get duaCategoryForgiveness => 'kala kala';

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
  String get islamicEducation => 'Hoʻonaʻauao Islam';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Nā Hōʻiliʻili Hadith';

  @override
  String get hadithSourcePending => 'Ke kali nei ke kumu i hōʻoia ʻia';

  @override
  String get hadithUnavailableTitle =>
      'ʻAʻole i loaʻa nā hōʻiliʻili hadith i hōʻoia ʻia';

  @override
  String get hadithUnavailableBody =>
      'Ke hilinaʻi nei kēia kūkulu ʻana i kahi hānai hadith waho i hōʻoia ʻole ʻia. Paʻa ʻole ka nānā ʻana i ka Hadith a hiki i ka hoʻonohonoho ʻia ʻana o kahi ʻikepili kumu.';

  @override
  String get paywallUnlockAll =>
      'Wehe i nā hiʻohiʻona a pau no kāu huakaʻi uhane';

  @override
  String get premiumProductUnavailable =>
      'ʻAʻole loaʻa ka huahana premium i kēia manawa. E ʻoluʻolu e hoʻāʻo hou ma hope.';

  @override
  String get premiumPurchaseFailed =>
      'ʻAʻole hiki ke hoʻopau ʻia ke kūʻai. E ʻoluʻolu e hoʻāʻo hou.';

  @override
  String get paywallFeature1Title => 'Kokua Neural Plus';

  @override
  String get paywallFeature1Desc => 'Q&A me ka mana ʻole o AI';

  @override
  String get paywallFeature2Title => 'Pahemo palena ʻole';

  @override
  String get paywallFeature2Desc => 'Hoʻoiho i nā haʻawina a pau';

  @override
  String get paywallFeature3Title => 'Nā Hoʻolālā Kūikawā';

  @override
  String get paywallFeature3Desc => 'Nā kumumanaʻo a me nā font';

  @override
  String get paywallFeature4Title => 'ʻAʻohe hoʻolaha';

  @override
  String get paywallFeature4Desc => 'Zero hoʻolaha';

  @override
  String get paywallGetAccess => 'Loaʻa i ke ola ola — \$1.00';

  @override
  String get restorePurchases => 'Hoʻihoʻi i nā Kūʻai';

  @override
  String get zakatCalculator => 'Helu Zakat';

  @override
  String get zakatGold => 'Gula (Altın)';

  @override
  String get zakatSilver => 'Kālā (Gümüş)';

  @override
  String get zakatCashBank => 'Kālā / Panakō';

  @override
  String get zakatBusiness => 'ʻoihana';

  @override
  String get zakatInvestments => 'Hoʻokomo kālā';

  @override
  String get zakatWeightGrams => 'Kaumaha (g)';

  @override
  String get zakatPricePerGram => 'Kumukuai/g';

  @override
  String get zakatTotalAmount => 'Huina Hui';

  @override
  String get zakatInventoryValue => 'Waiwai Inventory';

  @override
  String get zakatDebts => 'Na aie';

  @override
  String get zakatTotal => 'Huina';

  @override
  String get calculateZakat => 'E helu i ka Zakat';

  @override
  String get nisabNotReached => 'ʻAʻole hiki i Nisab. ʻAʻole koi ʻia ka Zakat.';

  @override
  String get totalZakat => 'Huina Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Waiwai: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakat gula';

  @override
  String get zakatSilverZakat => 'Zakat kala';

  @override
  String get zakatCashZakat => 'Zakat kālā';

  @override
  String get zakatBusinessZakat => 'ʻOihana Zakat';

  @override
  String get zakatInvestmentZakat => 'ʻO Zakat kālā';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! ʻO wau kou kōkua Islam. E nīnau mai iaʻu e pili ana i ka pule, ka hoʻokē ʻai, zakat, a i ʻole kekahi kumuhana Islam.';

  @override
  String get chatbotLimitReached =>
      'Loaʻa ka palena nīnau i kēlā me kēia lā. Hoʻonui i ka Premium no ka palena ʻole.';

  @override
  String get chatbotErrorMsg =>
      'ʻAʻole hiki iaʻu ke hoʻopuka i kahi pane. E ʻoluʻolu e hoʻāʻo hou.';

  @override
  String get chatbotOfflinePrompt =>
      'Ke mālama ʻia nei ka waihona ʻike Islam offline i hōʻoia ʻia. Hiki iā ʻoe ke ʻae i ka hāʻule hoʻihoʻi waho i kēia manawa, akā e hōʻike wale ia i nā memo palekana a hiki i ka mākaukau ʻana o ka waihona kumu.\n\nMakemake ʻoe e hoʻā i ka hāʻule hoʻopahemo?';

  @override
  String get chatbotOfflineSwitched =>
      'Hoʻohana ʻia ka hāʻule hoʻopahemo. ʻAʻole mākaukau nā pane Islamic kūloko i kēia manawa.';

  @override
  String get chatbotOfflineDownloadLabel => 'E ho\'ā i ka hāʻule hoʻopahemo';

  @override
  String get downloadPreparing => 'Ke hoʻomākaukau nei i ka hoʻoili ʻana...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Hoʻoiho ʻia ka palapala $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Ua hoʻoiho ʻia nā surah āpau no kēia mea heluhelu.';

  @override
  String get offlineQuranAudioPacks => 'Offline Quran Audio Packs';

  @override
  String storedOnDeviceMb(String size) {
    return 'Stored on device: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total kiʻi ʻia';
  }

  @override
  String get redownloadMissingRepair => 'Hoʻoponopono / Hoʻoiho Nalo';

  @override
  String get downloadAction => 'Hoʻoiho';

  @override
  String get resumeDownload => 'Hoʻouka hou';

  @override
  String get deleteDownloadedFiles => 'Holoi i nā faila i hoʻoiho ʻia';

  @override
  String get downloadCancelling => 'Ke kāpae nei...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Hoʻopau ʻia ka hoʻoiho ʻana no $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Hoʻopau ʻia no $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Hoʻopau ʻia ka hoʻoili ʻana no $reciter me $failed hāʻule nā kiʻi ($downloaded/$total i hoʻoiho ʻia).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Deleted offline files for $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'ʻAʻole loaʻa nā kumu leo Quran i hōʻoia ʻia i kēia manawa.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'ʻAʻole i piha ka pūʻolo leo Quran i hōʻoia ʻia ($available/$total). E hōʻano hou i ka hua ao a hoʻāʻo hou.';
  }

  @override
  String get chatbotHint => 'E nīnau i kahi nīnau...';

  @override
  String get chatbotThinking => 'Ke noʻonoʻo nei...';

  @override
  String get sukunMixerSubtitle => 'Nature & Qur\'an Mixer';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (Nature)';

  @override
  String get sukunRainOfMercy => 'Ua Aloha';

  @override
  String get sukunGardenOfPeace => 'Kihapai Maluhia';

  @override
  String get sukunMidnightCalm => 'Maluhia o ke aumoe';

  @override
  String get sukunOceanTawheed => 'Moana Tawheed';

  @override
  String get sukunUnavailableTitle => 'ʻAʻole loaʻa nā Soundscapes';

  @override
  String get sukunUnavailableBody =>
      'ʻAʻole i hoʻokomo ʻia kēia kūkulu i nā waiwai Sukun soundscape pono.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'ʻAha lā';

  @override
  String get bestStreak => 'ʻO ke kaha ʻoi loa';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Hāʻule hoʻopahemo';

  @override
  String get chatbotUseCloudAi => 'E hoʻohana iā Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'E ho\'ā i ka hāʻule hoʻopahemo';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count koe';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'ʻAʻole hoʻonohonoho ʻia ʻo Cloud API. ʻAʻole i loaʻa i kēia manawa ke alakaʻi Islam offline.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] ʻAʻole i loaʻa i kēia manawa ke alakaʻi Islam kūloko. E hoʻololi i Cloud AI no nā pane kumu.';

  @override
  String get mosques => 'Mosques';

  @override
  String get halalFood => 'Meaʻai Halal';

  @override
  String get placesSearchArea => 'Huli i kēia wahi';

  @override
  String get nearbyMosques => 'Nā Mosque kokoke';

  @override
  String get islamicSchools => 'Na Kula Islam';

  @override
  String placesFoundCount(String count) {
    return '$count loaʻa';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km ka mamao';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Hapa API: $statusCode';
  }

  @override
  String get placesNetworkError => 'Kuwaho pūnaewele. E ʻoluʻolu e hoʻāʻo hou.';

  @override
  String get placesLocationRequiredTitle => 'Pono kahi wahi';

  @override
  String get placesLocationRequiredBody =>
      'E hoʻonohonoho mua i kahi i hiki ke ʻimi pololei ʻia nā hale pule kokoke, nā meaʻai halal, a me nā kula Islam.';

  @override
  String get placesMapTilesUnavailableTitle => 'ʻAʻole loaʻa nā kile palapala';

  @override
  String get placesMapTilesUnavailableBody =>
      'ʻAʻole i hoʻonohonoho ʻia kahi kumu kile palapala ʻāina i hoʻopaʻa ʻia no kēia kūkulu ʻana. Hiki ke hoʻouka ʻia nā wahi kokoke mai kou wahi i mālama ʻia.';

  @override
  String get placesDataSourceUnavailableTitle => 'Loaʻa ʻole ka ʻikepili wahi';

  @override
  String get placesDataSourceUnavailableBody =>
      'ʻAʻole i hoʻonohonoho ʻia kahi ʻikepili wahi i hōʻoia ʻia no kēia kūkulu ʻana. E hoʻonoho iā PLACES_OVERPASS_API_URL i kahi koho koho a mea hoʻolako i ʻāpono ʻia ma mua o ka hoʻā ʻana i ka hulina kokoke.';

  @override
  String get unknownPlaceName => 'Inoa ʻike ʻole';

  @override
  String get islamicPlaceFallback => 'Wahi Islama';

  @override
  String get asmaMeaning1 => 'Ka Mea Aloha';

  @override
  String get asmaMeaning2 => 'Ka Mea Aloha';

  @override
  String get asmaMeaning3 => 'Ka Moi / Haku mau loa';

  @override
  String get asmaMeaning4 => 'Ka Mea Hoano Loa';

  @override
  String get asmaMeaning5 => 'Ke Kumu o ka Maluhia';

  @override
  String get asmaMeaning6 => 'Ka Mea Hāʻawi i ka Maluhia';

  @override
  String get asmaMeaning7 => 'Ke kiai';

  @override
  String get asmaMeaning8 => 'Ka Makamae / Ka Mea Mana Loa';

  @override
  String get asmaMeaning9 => 'Ka Mea Koi';

  @override
  String get asmaMeaning10 => 'Ka Mea Nui';

  @override
  String get asmaMeaning11 => 'Ka Mea Hana';

  @override
  String get asmaMeaning12 => 'Ka mea nana i kauoha';

  @override
  String get asmaMeaning13 => 'Ka Nani o ka Nani';

  @override
  String get asmaMeaning14 => 'Ka Mea kala';

  @override
  String get asmaMeaning15 => 'Ka Mea Nalo';

  @override
  String get asmaMeaning16 => 'Ka Mea Hāʻawi i nā mea a pau';

  @override
  String get asmaMeaning17 => 'Ka Mea Mālama';

  @override
  String get asmaMeaning18 => 'Ka Wehewehe';

  @override
  String get asmaMeaning19 => 'Ka mea ike i na mea a pau';

  @override
  String get asmaMeaning20 => 'Ka Mea Hoʻopaʻa';

  @override
  String get asmaMeaning21 => 'Ka Mea Hoʻomaha';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'Ka Mea Hoʻokiʻekiʻe';

  @override
  String get asmaMeaning24 => 'Ka Mea Hanohano';

  @override
  String get asmaMeaning25 => 'Ka Mea Hoʻohaʻahaʻa';

  @override
  String get asmaMeaning26 => 'Ka Lohe o na mea a pau';

  @override
  String get asmaMeaning27 => 'Ka Makaula o na mea a pau';

  @override
  String get asmaMeaning28 => 'Ka Lunakanawai';

  @override
  String get asmaMeaning29 => 'Ka Pono';

  @override
  String get asmaMeaning30 => 'Ka Mea Maalea';

  @override
  String get asmaMeaning31 => 'Ka mea a pau i ike';

  @override
  String get asmaMeaning32 => 'Ka Kaumua';

  @override
  String get asmaMeaning33 => 'Ka Mea Hanohano';

  @override
  String get asmaMeaning34 => 'Ka Mea kala nui';

  @override
  String get asmaMeaning35 => 'Ka Mea Hoʻomaikaʻi';

  @override
  String get asmaMeaning36 => 'Ka Mea Kiʻekiʻe';

  @override
  String get asmaMeaning37 => 'Ka Mea Nui';

  @override
  String get asmaMeaning38 => 'Ka Mea Mālama';

  @override
  String get asmaMeaning39 => 'Ka Mea Hanai';

  @override
  String get asmaMeaning40 => 'Ka Heluhelu';

  @override
  String get asmaMeaning41 => 'Ka Mea Kiekie';

  @override
  String get asmaMeaning42 => 'Ka Mea Manawa';

  @override
  String get asmaMeaning43 => 'Ka Mea Kiaʻi';

  @override
  String get asmaMeaning44 => 'Ka mea pane i ka pule';

  @override
  String get asmaMeaning45 => 'Ka Hoʻomaopopo a pau';

  @override
  String get asmaMeaning46 => 'Ka Naauao Loa';

  @override
  String get asmaMeaning47 => 'Ka Mea Aloha';

  @override
  String get asmaMeaning48 => 'Ka Mea Hanohano Loa';

  @override
  String get asmaMeaning49 => 'Ke Alahouana';

  @override
  String get asmaMeaning50 => 'Ka Hoike';

  @override
  String get asmaMeaning51 => 'Ka Oiaio';

  @override
  String get asmaMeaning52 => 'ʻO ka Puʻukū Pono Loa';

  @override
  String get asmaMeaning53 => 'Ka mea nona ka ikaika a pau';

  @override
  String get asmaMeaning54 => 'Ka Mea Paʻa';

  @override
  String get asmaMeaning55 => 'Ka mea pale';

  @override
  String get asmaMeaning56 => 'Ka Mea Mahaloia';

  @override
  String get asmaMeaning57 => 'Ka Loiloi';

  @override
  String get asmaMeaning58 => 'Ka Mea Hoʻokumu';

  @override
  String get asmaMeaning59 => 'Ka Mea Hoʻihoʻi';

  @override
  String get asmaMeaning60 => 'Ka Mea Hāʻawi i ke Ola';

  @override
  String get asmaMeaning61 => 'Ka Mea Lawe Ola';

  @override
  String get asmaMeaning62 => 'Ke ola mau loa';

  @override
  String get asmaMeaning63 => 'Ka Mea Kupa Ponoi';

  @override
  String get asmaMeaning64 => 'Ka Mea Loaʻa';

  @override
  String get asmaMeaning65 => 'Ka Mea Hanohano';

  @override
  String get asmaMeaning66 => 'Ka Mea Hoʻokahi';

  @override
  String get asmaMeaning67 => 'Kekahi';

  @override
  String get asmaMeaning68 => 'Ka mea i ʻimi ʻia e nā mea a pau';

  @override
  String get asmaMeaning69 => 'Ka Mea Mana';

  @override
  String get asmaMeaning70 => 'Ka mea nana i hana i ka mana a pau';

  @override
  String get asmaMeaning71 => 'Ka mea holo wikiwiki';

  @override
  String get asmaMeaning72 => 'Ka mea lohi';

  @override
  String get asmaMeaning73 => 'Ka Mua';

  @override
  String get asmaMeaning74 => 'Ka Hope';

  @override
  String get asmaMeaning75 => 'Ka Hōʻike';

  @override
  String get asmaMeaning76 => 'Ka Huna';

  @override
  String get asmaMeaning77 => 'Ke Kiaaina';

  @override
  String get asmaMeaning78 => 'Ka Mea Kiʻekiʻe';

  @override
  String get asmaMeaning79 => 'Ka Mea Hana Maikai';

  @override
  String get asmaMeaning80 => 'Ke alakaʻi i ka mihi';

  @override
  String get asmaMeaning81 => 'Ka Mea Hoʻopaʻi';

  @override
  String get asmaMeaning82 => 'Ka Mea kala';

  @override
  String get asmaMeaning83 => 'The Clement';

  @override
  String get asmaMeaning84 => 'Ka mea nona / Alii o na mea a pau';

  @override
  String get asmaMeaning85 => 'Ka mea nona ka hanohano a me ka makana';

  @override
  String get asmaMeaning86 => 'Ka Mea Kaulike';

  @override
  String get asmaMeaning87 => 'Ka Mea Houluulu';

  @override
  String get asmaMeaning88 => 'Ka Mea Waiwai';

  @override
  String get asmaMeaning89 => 'Ka Mea Hoʻonaʻauao';

  @override
  String get asmaMeaning90 => 'Ka mea e pale aku i ka poino';

  @override
  String get asmaMeaning91 => 'Ka mea lawe mai i ka poino';

  @override
  String get asmaMeaning92 => 'Ka Mea Hāʻawi i nā Pōmaikaʻi';

  @override
  String get asmaMeaning93 => 'Ka Malamalama';

  @override
  String get asmaMeaning94 => 'Ke alakaʻi';

  @override
  String get asmaMeaning95 => 'Ka Mea Hoʻokumu';

  @override
  String get asmaMeaning96 => 'Ka Mea Mau loa';

  @override
  String get asmaMeaning97 => 'Ka Hooilina';

  @override
  String get asmaMeaning98 => 'Ke Alakai Pono Loa';

  @override
  String get asmaMeaning99 => 'Ka Mea Hoomanawanui';
}
