// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Xhosa (`xh`).
class AppLocalizationsXh extends AppLocalizations {
  AppLocalizationsXh([String locale = 'xh']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Indlela yamaSilamsi yokuKhanya';

  @override
  String get home => 'Ekhaya';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Ikhalenda';

  @override
  String get settings => 'Iisetingi';

  @override
  String get nextPrayer => 'Umthandazo olandelayo';

  @override
  String get prayerTimes => 'Amaxesha Omthandazo';

  @override
  String get continueReading => 'Continue Reading';

  @override
  String get getLifetimePro => 'Get Lifetime Pro';

  @override
  String get unlockTajweed => 'Unlock Tajweed & Advanced Features';

  @override
  String get prayerCalculation => 'Umthandazo wokubala';

  @override
  String get method => 'Indlela yokubala';

  @override
  String get madhab => 'Indlela ye-Asr Juristic';

  @override
  String get surahs => 'IiSurahs';

  @override
  String get ayahs => 'Ayahs';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Ukuphuma kwelanga';

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
    return 'Ixesha le $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Lixesha lokuthandaza $prayerName.';
  }

  @override
  String get dataStorage => 'Idatha kunye noGcino';

  @override
  String get clearCache => 'Cima iCache';

  @override
  String get cacheClearedSuccess => 'I-Cache isuswe ngempumelelo';

  @override
  String get location => 'Indawo';

  @override
  String get language => 'Ulwimi';

  @override
  String get selectLanguage => 'Khetha ulwimi';

  @override
  String get searchLanguage => 'Search 180+ languages...';

  @override
  String get systemDefault => 'Inkqubo eMiselweyo';

  @override
  String get currentLocation => 'Indawo yangoku (GPS)';

  @override
  String get locationServiceDisabled => 'Inkonzo yendawo ivaliwe.';

  @override
  String get locationPermissionDenied => 'Imvume yendawo yaliwe.';

  @override
  String get locationDetectionFailed =>
      'Ayikwazanga ukubona indawo yakho. Nceda ukhethe isixeko ngesandla okanye uzame kwakhona.';

  @override
  String citiesCount(String count) {
    return '$count izixeko';
  }

  @override
  String get search => 'Khangela';

  @override
  String get searchHint => 'Phendla...';

  @override
  String get noResults => 'Akukho ziphumo zifunyenweyo';

  @override
  String get loading => 'Iyalayisha...';

  @override
  String get error => 'Impazamo';

  @override
  String get appErrorOccurred => 'Impazamo yenzekile';

  @override
  String get appUnknownError => 'Imposiso engaziwayo';

  @override
  String get quranLoadFailed =>
      'Umxholo weQuran awukwazanga kulayishwa. Nceda zama kwakhona.';

  @override
  String get retry => 'Zama kwakhona';

  @override
  String get refreshAction => 'Hlaziya';

  @override
  String get cancel => 'Rhoxisa';

  @override
  String get save => 'Gcina';

  @override
  String get delete => 'Cima';

  @override
  String get edit => 'Edit';

  @override
  String get close => 'Close';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'Hayi';

  @override
  String get surah => 'Surah';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Iphepha';

  @override
  String get reading => 'Reading';

  @override
  String get recitation => 'Recitation';

  @override
  String get translation => 'Uguqulo';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Ilayisha tafsir...';

  @override
  String get tafsirSourceLabel => 'Umthombo weTafsir';

  @override
  String get tafsirNoSurahFound => 'Akukho tafsir ifunyenweyo kule surah.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Akukho tafsir ifunyenweyo yeyah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'I-Tafsir ayikwazanga kulayishwa.';

  @override
  String get tafsirNoTextForAyah => 'Akukho mbhalo wetafsir wale ayah.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Ikhuphela i tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Ilayisha tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Umthombo weTafsir ubuyisele impazamo yeHTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Umthombo wetafsir okhethiweyo awubuyisanga mangeniso.';

  @override
  String get tafsirCacheUnavailable =>
      'I-tafsir eqinisekisiweyo ayikafumaneki ngaphandle kweintanethi okwangoku. Ngqamanisa isethi yedatha ye-tafsir efunyenweyo phambi kokukhangela.';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get addBookmark => 'Yongeza iBookmark';

  @override
  String get removeBookmark => 'Susa ibhukumaki';

  @override
  String get lastRead => 'Last Read';

  @override
  String get dailyZikr => 'Daily Zikr';

  @override
  String get duaMeaning1 =>
      'abanye bayathandaza bathi, ‘Nkosi yethu, Siphe okulungileyo emhlabeni nakwelizayo, Usikhusele kwisohlwayo soMlilo.';

  @override
  String get duaMeaning2 =>
      'UThixo akawuthwali mthwalo nawuphi na umphefumlo ngokungaphezu kwamandla awo: ngamnye uzuza nakuphi na okulungileyo okwenzileyo, aze abandezeleke ngenxa yobubi bawo— ‘Nkosi, musa ukusithwalisa ityala ukuba siyalibala okanye senza iimpazamo. Nkosi, musa ukusithwalisa ubunzima njengoko Wabathwalisa ubunzima abo bangaphambi kwethu. Nkosi, musa ukusithwalisa ubunzima obungaphezu kwamandla ethu. Sixolele, usixolele, ube nenceba kuthi. Wena unguMkhuseli wethu, ngoko ke sincede ngokuchasene nabangakholwayo.';

  @override
  String get duaMeaning3 =>
      '‘Nkosi yethu, ungazivumeli iintliziyo zethu ziphambuke emva kokuba Usikhokele. Siphe inceba yaKho: UnguLowo uphayo.';

  @override
  String get duaMeaning4 =>
      'Nkosi, ndiphe ukuba mna nenzala yam siwugcine umthandazo. Nkosi yethu, samkele isicelo sam.';

  @override
  String get duaMeaning5 =>
      'uze uthobe iphiko lakho kubo ngobubele, uthi, ‘Nkosi, yiba nenceba kubo, njengoko babendinyamekele ndisemncinane.';

  @override
  String get duaMeaning6 =>
      'Makabongwe uThixo, olawula ngenene. [Mprofeti], musa ukungxama ukucengceleza ngaphambi kokuba isityhilelo sizaliseke ngokupheleleyo kodwa yithi, ‘Nkosi, ndandise ngolwazi!';

  @override
  String get duaMeaning7 =>
      'Yithi [uMprofeti], ‘Nkosi, xolela uze ube nenceba: Wena ungoyena unenceba kubo bonke.’';

  @override
  String get duaMeaning8 =>
      'abo bathandazayo bathi, ‘Nkosi yethu, siphe uvuyo ngamaqabane ethu nenzala yethu. Senze imizekelo emihle kwabo bakuqondayo.';

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
  String get hadithBooks => 'Iincwadi zeHadith';

  @override
  String get searchHadith => 'Khangela iHadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Amagama ka-Allah';

  @override
  String get liveTv => 'I-TV ebukhoma';

  @override
  String get watchLive => 'Bukela Live';

  @override
  String get streamError => 'Imposiso yomjelo';

  @override
  String get reload => 'Layisha kwakhona';

  @override
  String get openInYoutube => 'Vula kuYouTube';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Ukuzila ukutya';

  @override
  String get quranReading => 'Ukufundwa kweQuran';

  @override
  String get prayers => 'Imithandazo';

  @override
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '${hours}y ${minutes}imiz';
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
  String get weeklyProgress => 'Inkqubela Yeveki';

  @override
  String get monthlyProgress => 'Monthly Progress';

  @override
  String get statistics => 'Statistics';

  @override
  String get hijriCalendar => 'Ikhalenda yeHijri';

  @override
  String get gregorianCalendar => 'Gregorian Calendar';

  @override
  String get today => 'Namhlanje';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get specialDays => 'Iintsuku Ezikhethekileyo';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'UNyaka oMtsha wamaSilamsi';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 iRamadan';

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
  String get qiblaDirection => 'Umkhombandlela weQibla';

  @override
  String get compass => 'Ikhampasi';

  @override
  String get degrees => 'degrees';

  @override
  String get north => 'North';

  @override
  String get qiblaFound => 'IQibla ifunyenwe!';

  @override
  String get turnDevice => 'Jika isixhobo sakho sijongane neQibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Impazamo yekhampasi: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Isivamvo seCompass asifumaneki kwesi sixhobo.';

  @override
  String get qiblaLocationRequiredTitle => 'Location required for Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Set your actual location before using the Qibla compass so the direction can be calculated accurately.';

  @override
  String get adhanNotificationChannelName => 'Izaziso ze-Adhan';

  @override
  String get adhanNotificationChannelDescription =>
      'Izilumkiso zexesha lomthandazo kunye nesandi se-adhan.';

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
  String get theme => 'Umxholo';

  @override
  String get lightMode => 'Imowudi yokukhanya';

  @override
  String get darkMode => 'Imo Emnyama';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'Malunga';

  @override
  String get version => 'Inguqulelo';

  @override
  String get privacyPolicy => 'Umgaqo-nkqubo wabucala';

  @override
  String get termsOfService => 'Imigaqo yeNkonzo';

  @override
  String get contactUs => 'Qhagamshelana nathi';

  @override
  String get rateApp => 'Rate App';

  @override
  String get shareApp => 'Yabelana ngeApp';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Jonga $appName: Eyona app yokuphila yamaSilamsi! $url';
  }

  @override
  String get downloadManager => 'Khuphela uMphathi';

  @override
  String get downloads => 'Khuphela';

  @override
  String get downloading => 'Iyakhuphela...';

  @override
  String get downloadComplete => 'Ukukhuphela Kugqityiwe';

  @override
  String get downloadFailed => 'Ukukhuphela Akuphumelelanga';

  @override
  String get offlineMode => 'Imo engasebenziyo';

  @override
  String get noInternet => 'Alukho uQhagamshelwano lwe-Intanethi';

  @override
  String get checkConnection => 'Nceda ujonge umdibaniso wakho';

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
  String get getStarted => 'Qalisa';

  @override
  String get skip => 'Skip';

  @override
  String get next => 'Okulandelayo';

  @override
  String get done => 'Ugqibile';

  @override
  String get onboarding1Title => 'Wamkelekile eSirat-ı Nur';

  @override
  String get onboarding1Desc =>
      'I-app yakho epheleleyo yamaSilamsi yamaxesha omthandazo, iQuran, kunye nokunye';

  @override
  String get onboarding2Title => 'Amaxesha Omthandazo';

  @override
  String get onboarding2Desc =>
      'Amaxesha achanekileyo omthandazo asekelwe kwindawo yakho';

  @override
  String get onboarding3Title => 'IQuran & Okuninzi';

  @override
  String get onboarding3Desc =>
      'Funda iKurani, ulandelele ukufunda kwakho, kwaye ujonge umxholo wamaSilamsi';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'Seta kwakhona i-Counter';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'Ubalo ekujoliswe kulo: $target';
  }

  @override
  String get tapToCount => 'Cofa ukubala';

  @override
  String get zikrCompletedMashAllah => 'Igqityiwe! MashaAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'UAllh Ungaphezulu lee kuko konke ukungafezeki.';

  @override
  String get zikrMeaningAlhamdulillah => 'Yonke indumiso yeka-Allh.';

  @override
  String get zikrMeaningAllahuAkbar => 'UAllh ngoyena mkhulu.';

  @override
  String get zikrMeaningLaIlahaIllallah =>
      'Akukho thixo wumbi ngaphandle koAllh.';

  @override
  String get zikrMeaningAstaghfirullah => 'Ndicela uxolo kuAllh.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Akukho mandla, akukho mandla ngaphandle kuka-Allh.';

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
  String get dailyProgress => 'Inkqubela Yemihla Ngemihla';

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
  String get recheckPremium => 'Jonga kwakhona ubume bobhaliso lweprimiyamu';

  @override
  String get syncStore =>
      'Ngqamanisa nevenkile yeapp ukuze uqinisekise ubhaliso lwakho lweprimiyamu.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'Umrhumo wePrimiyamu uqinisekisiwe.';

  @override
  String get premiumNotFound => 'Umrhumo wePrimiyamu awufunyenwanga.';

  @override
  String premiumRefreshError(Object error) {
    return 'Ayikwazanga ukuvuselela ubume bomrhumo weprimiyamu: $error';
  }

  @override
  String get offlineDownloadManager =>
      'Umphathi wokukhuphela ngaphandle kweintanethi';

  @override
  String get manageDatasets =>
      'Lawula iaudiyo enkulu engaxhunyiwe kwi-intanethi kunye neepakethi zedatha.';

  @override
  String get freeStorage => 'Khulula ugcino lwesixhobo sangaphakathi.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'NONE';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'Isimo seQuran Database';

  @override
  String statusLabel(Object status) {
    return 'Ubume: $status';
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
    return 'Ujongo lweQuran akuphumelelanga: $error';
  }

  @override
  String get audioVoice => 'Ilizwi elivakalayo';

  @override
  String get audioVoiceMisharyAlafasy => 'Indoda (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Indoda (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Indoda (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Ulungelelwaniso lweQibla';

  @override
  String get compassSmoothing => 'Ikhampasi egudileyo';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'I-Calibration Offset';

  @override
  String currentOffset(Object offset) {
    return 'Okwangoku: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Lungisa ukuba ikhampasi yakho ifuna ukulungiswa ngesandla. Amaxabiso akhuthazayo ajikeleza ngokwewotshi.';

  @override
  String get apply => 'Faka utshintsho';

  @override
  String get resetOnboarding => 'Lungisa ukuseta isingeniso';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Ukuxilongwa';

  @override
  String get diagnosticsNotSet => 'Akumiselwanga';

  @override
  String get diagnosticsPrayerProfile => 'Ingxelo Yomthandazo';

  @override
  String get diagnosticsPrayerSource => 'Igunya Lomthandazo';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manual custom angles (no institutional source)';

  @override
  String get diagnosticsCloudDriven => 'Cloud Driven';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Quran Audio Assets';

  @override
  String get diagnosticsAudioAssets => 'Ii-Asethi zomsindo';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count files';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Ufundo olubonakalisiweyo aluphumelelanga: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Localization Locales';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count iyaxhaswa';
  }

  @override
  String get diagnosticsQuranDataset => 'Iseti yedatha yeQuran';

  @override
  String get diagnosticsQuranSurahs => 'IiSurahs zeQuran';

  @override
  String get diagnosticsQuranAyahs => 'IiQuran Ayahs';

  @override
  String get diagnosticsQuranJuzMetadata => 'Quran Juz Metadata';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Iitafile zamafu ezilahlekileyo eSupabase; Ukubuyisela umva okuqokelelweyo kuyasebenza';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Ukukhangela ilifu kusilele: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz imetadata ayikho; ibundleed structure fallback iyasebenza';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Uqwalaselo lwamafu aluphumelelanga: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Ulungelelwaniso luyafuneka. Jikelezisa isixhobo kumfanekiso-8.';

  @override
  String get dailyVerse => 'Ivesi yemihla ngemihla';

  @override
  String get dailyVerseUnavailableTitle => 'Ivesi yemihla ngemihla ayifumaneki';

  @override
  String get dailyVerseUnavailableBody =>
      'Umxholo wevesi yemihla ngemihla oqinisekisiweyo awumiselwanga kolu lwakhiwo okwangoku. Qhagamshela kumthombo welifu okanye ungqamanise i-cache eqinisekisiweyo phambi kokukhangela.';

  @override
  String get todaysIbadah => 'Namhlanje Ibadah';

  @override
  String get quickAccess => 'Ukufikelela ngokukhawuleza';

  @override
  String get assistant => 'Umncedisi';

  @override
  String get places => 'Iindawo';

  @override
  String get library => 'Ithala leencwadi';

  @override
  String get analytics => 'Uhlalutyo';

  @override
  String get dailyDuas => 'IiDuas zemihla ngemihla';

  @override
  String essentialDuas(String count) {
    return '$count ii-duas ezibalulekileyo';
  }

  @override
  String get duaUnavailableTitle => 'Iiduas eziqinisekisiweyo azikafumaneki';

  @override
  String get duaUnavailableBody =>
      'Iiduas zemihla ngemihla eziqinisekisiweyo ayikadityaniswanga kwesi sixhobo okwangoku. Qhagamshela kumthombo welifu ukuze ulayishe i-duas efunyenweyo endaweni yokubuyela umva okungaqinisekanga.';

  @override
  String get duaCategoryQuranic => 'I-Quranic dua';

  @override
  String get duaCategoryMorningEvening => 'Ekuseni nangokuhlwa';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Ukhuseleko';

  @override
  String get duaCategoryBeginning => 'Iziqalo';

  @override
  String get duaCategorySleep => 'Lala';

  @override
  String get duaCategoryFoodDrink => 'Ukutya & Iziselo';

  @override
  String get duaCategoryForgiveness => 'Uxolelo';

  @override
  String get duaCategoryHome => 'Ekhaya';

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
  String get islamicEducation => 'Imfundo yamaSilamsi';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Hadith Collections';

  @override
  String get hadithSourcePending => 'Umthombo oqinisekisiweyo usalindile';

  @override
  String get hadithUnavailableTitle =>
      'Iingqokelela ze hadith eziqinisekisiweyo azikafumaneki';

  @override
  String get hadithUnavailableBody =>
      'Olu lwakhiwo kusaxhomekeke kwi feed hadith engangqinisiswanga yangaphandle. Ukhangelo lweHadith luhlala luvaliwe de idataset efunyenweyo ingqanyaniswe.';

  @override
  String get paywallUnlockAll => 'Vula zonke iimpawu zohambo lwakho lokomoya';

  @override
  String get premiumProductUnavailable =>
      'Imveliso yePremium ayifumaneki ngoku. Nceda uzame kwakhona mva.';

  @override
  String get premiumPurchaseFailed =>
      'Ukuthenga akugqitywanga. Nceda zama kwakhona.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'Unlimited AI-powered Q&A';

  @override
  String get paywallFeature2Title => 'Unlimited Offline';

  @override
  String get paywallFeature2Desc => 'Khuphela zonke izicengcelezo';

  @override
  String get paywallFeature3Title => 'Uyilo oluKhethekileyo';

  @override
  String get paywallFeature3Desc => 'imixholo Premium & iifonti';

  @override
  String get paywallFeature4Title => 'AyinaNtengiso';

  @override
  String get paywallFeature4Desc => 'Iintengiso zero';

  @override
  String get paywallGetAccess => 'Fumana Access Lifetime — \$1.00';

  @override
  String get restorePurchases => 'Buyisela Ukuthenga';

  @override
  String get zakatCalculator => 'Zakat Calculator';

  @override
  String get zakatGold => 'Igolide (Altın)';

  @override
  String get zakatSilver => 'Isilivere (Gümüş)';

  @override
  String get zakatCashBank => 'Imali / iBhanki';

  @override
  String get zakatBusiness => 'Ishishini';

  @override
  String get zakatInvestments => 'Utyalo-mali';

  @override
  String get zakatWeightGrams => 'Ubunzima (g)';

  @override
  String get zakatPricePerGram => 'Ixabiso/g';

  @override
  String get zakatTotalAmount => 'Imali iyonke';

  @override
  String get zakatInventoryValue => 'Ixabiso loluhlu';

  @override
  String get zakatDebts => 'Amatyala';

  @override
  String get zakatTotal => 'Iyonke';

  @override
  String get calculateZakat => 'Calculate Zakat';

  @override
  String get nisabNotReached =>
      'UNisab akafikelelwanga. IZakat ayinyanzelekanga.';

  @override
  String get totalZakat => 'Iyonke iZakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Ii-asethi: $assets';
  }

  @override
  String get zakatGoldZakat => 'Gold Zakat';

  @override
  String get zakatSilverZakat => 'Zakat yeSilivere';

  @override
  String get zakatCashZakat => 'Imali yeZakat';

  @override
  String get zakatBusinessZakat => 'Zakat yeshishini';

  @override
  String get zakatInvestmentZakat => 'Investment Zakat';

  @override
  String get chatbotGreeting =>
      'Assalam Alaykum! Ndingumncedi wakho wamaSilamsi. Ndibuze ngomthandazo, ukuzila ukutya, zakat, okanye nasiphi na isihloko samaSilamsi.';

  @override
  String get chatbotLimitReached =>
      'Imida yombuzo wemihla ngemihla ifikelelwe. Nyukela kwiNtlawulo yaNyanga le ungasikelwanga mda.';

  @override
  String get chatbotErrorMsg =>
      'Andikwazanga ukwenza impendulo. Nceda zama kwakhona.';

  @override
  String get chatbotOfflinePrompt =>
      'Isiseko solwazi lwamaSilamsi ngaphandle kweintanethi siqinisekisiweyo sisagcinwa. Unokwenza ukubuyisela umva ngaphandle kweintanethi ngoku, kodwa iya kubonisa kuphela imiyalezo ekhuselekileyo elinganiselweyo de idatabase efunyenweyo ilungile.\n\nNgaba ungathanda ukwenza ukubuyisela umva ngaphandle kweintanethi?';

  @override
  String get chatbotOfflineSwitched =>
      'Ukubuyisela umva ngaphandle kweintanethi kuvuliwe. Iimpendulo eziqinisekisiweyo zasekhaya zamaSilamsi azikalungi.';

  @override
  String get chatbotOfflineDownloadLabel =>
      'Yenza i-Fallback ngaphandle kwe-intanethi';

  @override
  String get downloadPreparing => 'Ilungiselela ukukhuphela...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Ikhuphela isurah $surah / $total';
  }

  @override
  String get downloadCompleted => 'Zonke iisurahs sele zikhutshelwe lo mfundi.';

  @override
  String get offlineQuranAudioPacks => 'I-Offline Quran Audio Packs';

  @override
  String storedOnDeviceMb(String size) {
    return 'Igcinwe kwisixhobo: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total iisurahs zikhutshelwe';
  }

  @override
  String get redownloadMissingRepair => 'Ukulungisa / Ukhuphelo Olulahlekileyo';

  @override
  String get downloadAction => 'Khuphela';

  @override
  String get resumeDownload => 'Qhubeka nokukhuphela';

  @override
  String get deleteDownloadedFiles => 'Cima Iifayile Ezithotyiweyo';

  @override
  String get downloadCancelling => 'Iyarhoxisa...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Ukukhuphela kurhoxisiwe kwe- $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Ukukhuphela kugqityiwe kwi- $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Ukukhuphela kugqityiwe nge- $reciter nge $failed iisurah ezingaphumelelanga ($downloaded/$total zikhutshelwe).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Iifayile ezicinyiweyo ngaphandle kweintanethi $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Imithombo yomsindo yeQuran eqinisekisiweyo ayifumaneki ngoku.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Ipakethi yomsindo yeQuran eqinisekisiweyo ayigqitywanga ($available/$total). Zama kwakhona emva kokuba ikhathalogu yomsindo ihlaziywe.';
  }

  @override
  String get chatbotHint => 'Buza umbuzo...';

  @override
  String get chatbotThinking => 'Ukucinga...';

  @override
  String get sukunMixerSubtitle => 'Indalo kunye noMxube weKur\'an';

  @override
  String get audioPlayFailed => 'Ukudlala kwakhona kwesandi akuphumelelanga';

  @override
  String get sukunNatureLabel => 'USukun (Indalo)';

  @override
  String get sukunRainOfMercy => 'Imvula yeNceba';

  @override
  String get sukunGardenOfPeace => 'Umyezo woXolo';

  @override
  String get sukunMidnightCalm => 'Ezinzulwini zobusuku Zolile';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Izandi zesandi azifumaneki';

  @override
  String get sukunUnavailableBody =>
      'Olu lwakhiwo alubandakanyi i-asethi yesandi sesandi esifunekayo seSukun okwangoku.';

  @override
  String get prayerCompletion => 'Ukugqitywa komthandazo';

  @override
  String get streaks => 'Imivimbo';

  @override
  String get dayStreak => 'Usuku streak';

  @override
  String get bestStreak => 'Best streak';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Ukubuyela umva ngaphandle kweintanethi';

  @override
  String get chatbotUseCloudAi => 'Sebenzisa Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi =>
      'Yenza i-Fallback ngaphandle kwe-intanethi';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count umkile';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API ayimiselwanga. Izikhokelo zamaSilamsi eziqinisekisiweyo ngaphandle kweintanethi azikafumaneki.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Izikhokelo eziqinisekisiweyo zasekhaya zamaSilamsi azikafumaneki. Tshintshela kwi-Cloud AI ukufumana iimpendulo ezifunyenweyo.';

  @override
  String get mosques => 'IiMosque';

  @override
  String get halalFood => 'Ukutya kweHalal';

  @override
  String get placesSearchArea => 'Khangela le ndawo';

  @override
  String get nearbyMosques => 'IiMosque ezikufuphi';

  @override
  String get islamicSchools => 'Izikolo zamaSilamsi';

  @override
  String placesFoundCount(String count) {
    return '$count ifunyenwe';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km kude';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Imposiso yeAPI: $statusCode';
  }

  @override
  String get placesNetworkError =>
      'Impazamo yenethiwekhi. Nceda zama kwakhona.';

  @override
  String get placesLocationRequiredTitle => 'Indawo efunekayo';

  @override
  String get placesLocationRequiredBody =>
      'Beka indawo kuqala ukuze ii-mosque ezikufutshane, ukutya kwe-halal, kunye nezikolo zamaSilamsi zikhangelwe ngokuchanekileyo.';

  @override
  String get placesMapTilesUnavailableTitle => 'Iithayile zemephu azifumaneki';

  @override
  String get placesMapTilesUnavailableBody =>
      'Umthombo wethayile wemephu oqinisekisiweyo awukalungiselelwanga olu lwakhiwo okwangoku. Iindawo ezikufuphi zisengalayisha kwindawo yakho egciniweyo.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'Idatha yeendawo ayifumanekiyo';

  @override
  String get placesDataSourceUnavailableBody =>
      'Indawo engqinisisiweyo yokuphela kwedatha ayilungiselelwanga kolu lwakhiwo okwangoku. Cwangcisa PLACES_OVERPASS_API_URL kummeli ovunyiweyo okanye umboneleli phambi kokuvumela ukhangelo olukufutshane.';

  @override
  String get unknownPlaceName => 'Igama elingaziwayo';

  @override
  String get islamicPlaceFallback => 'Indawo yamaSilamsi';

  @override
  String get asmaMeaning1 => 'Lowo Unenceba';

  @override
  String get asmaMeaning2 => 'Unenceba';

  @override
  String get asmaMeaning3 => 'UKumkani / iNkosi engunaphakade';

  @override
  String get asmaMeaning4 => 'EYona Ngcwele';

  @override
  String get asmaMeaning5 => 'UMthombo Woxolo';

  @override
  String get asmaMeaning6 => 'UMniki woKhuseleko';

  @override
  String get asmaMeaning7 => 'UMlondolozi';

  @override
  String get asmaMeaning8 => 'Oxabisekileyo / Oyena Unamandla';

  @override
  String get asmaMeaning9 => 'UMnyanzeli';

  @override
  String get asmaMeaning10 => 'Oyena mkhulu';

  @override
  String get asmaMeaning11 => 'UMdali';

  @override
  String get asmaMeaning12 => 'UMenzi Wocwangco';

  @override
  String get asmaMeaning13 => 'UMyili Wobuhle';

  @override
  String get asmaMeaning14 => 'Abaxolelayo';

  @override
  String get asmaMeaning15 => 'UMthobisi';

  @override
  String get asmaMeaning16 => 'UMniki Wako Konke';

  @override
  String get asmaMeaning17 => 'UMlondolozi';

  @override
  String get asmaMeaning18 => 'Isivuli';

  @override
  String get asmaMeaning19 => 'UMazi Wako Konke';

  @override
  String get asmaMeaning20 =>
      'The Withholder, who narrows and restrains by wisdom.';

  @override
  String get asmaMeaning21 => 'UMhlanguli';

  @override
  String get asmaMeaning22 => 'I-Abaser';

  @override
  String get asmaMeaning23 => 'UMphakamisi';

  @override
  String get asmaMeaning24 => 'UMniki Wembeko';

  @override
  String get asmaMeaning25 => 'Umthobisi';

  @override
  String get asmaMeaning26 => 'UMphulaphuli Wabo Bonke';

  @override
  String get asmaMeaning27 => 'Imboni Yabo Bonke';

  @override
  String get asmaMeaning28 => 'UMgwebi';

  @override
  String get asmaMeaning29 => 'Ubulungisa';

  @override
  String get asmaMeaning30 => 'Lowo Ufihlakeleyo';

  @override
  String get asmaMeaning31 => 'Bonke bayazi';

  @override
  String get asmaMeaning32 => 'AbaPhambili';

  @override
  String get asmaMeaning33 => 'Obalaseleyo';

  @override
  String get asmaMeaning34 => 'UMthetheleli Omkhulu';

  @override
  String get asmaMeaning35 => 'UMvuzi Wombulelo';

  @override
  String get asmaMeaning36 => 'Oyena Uphakamileyo';

  @override
  String get asmaMeaning37 => 'Oyena mkhulu';

  @override
  String get asmaMeaning38 => 'UMlondolozi';

  @override
  String get asmaMeaning39 => 'Umondli';

  @override
  String get asmaMeaning40 => 'UMbali';

  @override
  String get asmaMeaning41 => 'Ubungangamsha';

  @override
  String get asmaMeaning42 => 'Unesisa';

  @override
  String get asmaMeaning43 => 'Lowo Uphaphileyo';

  @override
  String get asmaMeaning44 => 'Ukuphendula Umthandazo';

  @override
  String get asmaMeaning45 => 'Ukuqonda Konke';

  @override
  String get asmaMeaning46 => 'ISilumko Ngokugqibeleleyo';

  @override
  String get asmaMeaning47 => 'Lowo Unothando';

  @override
  String get asmaMeaning48 => 'Oyena Uzukileyo';

  @override
  String get asmaMeaning49 => 'uMvusi';

  @override
  String get asmaMeaning50 => 'INgqina';

  @override
  String get asmaMeaning51 => 'Inyani';

  @override
  String get asmaMeaning52 => 'ITrasti eyaneleyo';

  @override
  String get asmaMeaning53 => 'UMnini Wamandla Onke';

  @override
  String get asmaMeaning54 => 'Onamandla';

  @override
  String get asmaMeaning55 => 'UMkhuseli';

  @override
  String get asmaMeaning56 => 'Abadunyiswayo';

  @override
  String get asmaMeaning57 => 'Umxabisi';

  @override
  String get asmaMeaning58 => 'UMsunguli';

  @override
  String get asmaMeaning59 => 'UMbuyiseli';

  @override
  String get asmaMeaning60 => 'UMniki woBomi';

  @override
  String get asmaMeaning61 => 'UMthobi woBomi';

  @override
  String get asmaMeaning62 => 'Ophilayo Ongunaphakade';

  @override
  String get asmaMeaning63 => 'UMxhasi Ozixhasayo';

  @override
  String get asmaMeaning64 => 'Umfumani';

  @override
  String get asmaMeaning65 => 'Ozukileyo';

  @override
  String get asmaMeaning66 => 'Omnye kuphela';

  @override
  String get asmaMeaning67 => 'Eyona';

  @override
  String get asmaMeaning68 => 'Lowo Ufunwa Ngabo Bonke';

  @override
  String get asmaMeaning69 => 'Onamandla';

  @override
  String get asmaMeaning70 => 'UMdali wawo onke amandla';

  @override
  String get asmaMeaning71 => 'I-Expediter';

  @override
  String get asmaMeaning72 => 'Umlibazi';

  @override
  String get asmaMeaning73 => 'Eyokuqala';

  @override
  String get asmaMeaning74 => 'Okokugqibela';

  @override
  String get asmaMeaning75 => 'Imbonakalo';

  @override
  String get asmaMeaning76 => 'EZifihliweyo';

  @override
  String get asmaMeaning77 => 'Irhuluneli';

  @override
  String get asmaMeaning78 => 'Lowo uPhakamileyo';

  @override
  String get asmaMeaning79 => 'UMenzi wokulungileyo';

  @override
  String get asmaMeaning80 => 'Isikhokelo senguquko';

  @override
  String get asmaMeaning81 => 'Umphindezeli';

  @override
  String get asmaMeaning82 => 'UMxoleli';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'UMnini/uMongami wazo zonke';

  @override
  String get asmaMeaning85 => 'UMnini woBungangamsha kunye neFayile';

  @override
  String get asmaMeaning86 => 'Onobulungisa';

  @override
  String get asmaMeaning87 => 'UMqokeleli';

  @override
  String get asmaMeaning88 => 'Osisityebi';

  @override
  String get asmaMeaning89 => 'UMtyebisi';

  @override
  String get asmaMeaning90 => 'UMthinteli Wobungozi';

  @override
  String get asmaMeaning91 => 'UMzisi Wengozi';

  @override
  String get asmaMeaning92 => 'UMniki weZibonelelo';

  @override
  String get asmaMeaning93 => 'UkuKhanya';

  @override
  String get asmaMeaning94 => 'UMkhokeli';

  @override
  String get asmaMeaning95 => 'UMsunguli';

  @override
  String get asmaMeaning96 => 'Lowo Ungunaphakade';

  @override
  String get asmaMeaning97 => 'Indlalifa';

  @override
  String get asmaMeaning98 => 'Oyena Mkhokheli olungileyo';

  @override
  String get asmaMeaning99 => 'Lowo Unomonde';
}
