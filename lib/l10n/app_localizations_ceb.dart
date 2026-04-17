// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Cebuano (`ceb`).
class AppLocalizationsCeb extends AppLocalizations {
  AppLocalizationsCeb([String locale = 'ceb']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Islamikong Dalan sa Kahayag';

  @override
  String get home => 'Balay';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Kalendaryo';

  @override
  String get settings => 'Mga setting';

  @override
  String get nextPrayer => 'Sunod nga Pag-ampo';

  @override
  String get prayerTimes => 'Panahon sa Pag-ampo';

  @override
  String get continueReading => 'Padayon sa Pagbasa';

  @override
  String get getLifetimePro => 'Pagkuha ug Lifetime Pro';

  @override
  String get unlockTajweed => 'Unlock Tajweed & Advanced Features';

  @override
  String get prayerCalculation => 'Pagkalkula sa Pag-ampo';

  @override
  String get method => 'Pamaagi sa Pagkalkula';

  @override
  String get madhab => 'Asr Juristic nga Pamaagi';

  @override
  String get surahs => 'Mga Surah';

  @override
  String get ayahs => 'Mga Ayah';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Pagsubang sa adlaw';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Ang Asr';

  @override
  String get maghrib => 'Maghrib';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Oras para sa $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Panahon na sa pag-ampo $prayerName.';
  }

  @override
  String get dataStorage => 'Data ug Pagtipig';

  @override
  String get clearCache => 'Hawan ang Cache';

  @override
  String get cacheClearedSuccess => 'Malampuson nga natangtang ang cache';

  @override
  String get location => 'Lokasyon';

  @override
  String get language => 'Pinulongan';

  @override
  String get selectLanguage => 'Pilia ang Pinulongan';

  @override
  String get searchLanguage => 'Pangitaa ang 180+ ka lengguwahe...';

  @override
  String get systemDefault => 'Default sa Sistema';

  @override
  String get currentLocation => 'Kasamtangang Lokasyon (GPS)';

  @override
  String get locationServiceDisabled => 'Gi-disable ang serbisyo sa lokasyon.';

  @override
  String get locationPermissionDenied => 'Gidili ang pagtugot sa lokasyon.';

  @override
  String get locationDetectionFailed =>
      'Dili makit-an ang imong lokasyon. Palihug pagpili ug siyudad sa mano-mano o sulayi pag-usab.';

  @override
  String citiesCount(String count) {
    return '$count nga mga siyudad';
  }

  @override
  String get search => 'Pangitaa';

  @override
  String get searchHint => 'Pangita...';

  @override
  String get noResults => 'Walay resulta nga nakit-an';

  @override
  String get loading => 'Nagkarga...';

  @override
  String get error => 'Sayop';

  @override
  String get appErrorOccurred => 'Usa ka sayup ang nahitabo';

  @override
  String get appUnknownError => 'Wala mailhi nga sayup';

  @override
  String get quranLoadFailed =>
      'Ang sulod sa Quran dili makarga. Palihug sulayi pag-usab.';

  @override
  String get retry => 'Sulayi pag-usab';

  @override
  String get refreshAction => 'I-refresh';

  @override
  String get cancel => 'Pagkanselar';

  @override
  String get save => 'Tipigi';

  @override
  String get delete => 'Pagtangtang';

  @override
  String get edit => 'Edit';

  @override
  String get close => 'Duol';

  @override
  String get ok => 'OK ra';

  @override
  String get yes => 'Oo';

  @override
  String get no => 'Dili';

  @override
  String get surah => 'Surah';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Panid';

  @override
  String get reading => 'Pagbasa';

  @override
  String get recitation => 'Pagbasa';

  @override
  String get translation => 'Paghubad';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Nagkarga sa tafsir...';

  @override
  String get tafsirSourceLabel => 'Tafsir tinubdan';

  @override
  String get tafsirNoSurahFound =>
      'Walay tafsir nga nakit-an alang niini nga surah.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Walay tafsir nga nakit-an para sa ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Dili makarga ang Tafsir.';

  @override
  String get tafsirNoTextForAyah =>
      'Walay teksto sa tafsir alang niini nga amahan.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Nag-download sa tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Nagkarga sa tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Ang tinubdan sa Tafsir mibalik og HTTP $statusCode error.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Ang gipili nga tinubdan sa tafsir walay gibalik nga mga entri.';

  @override
  String get tafsirCacheUnavailable =>
      'Ang gipamatud-an nga tafsir dili pa magamit offline. I-sync ang usa ka gigikanan nga tafsir dataset sa dili pa mag-browse.';

  @override
  String get bookmarks => 'Mga bookmark';

  @override
  String get addBookmark => 'Idugang ang Bookmark';

  @override
  String get removeBookmark => 'Kuhaa ang Bookmark';

  @override
  String get lastRead => 'Katapusan nga Pagbasa';

  @override
  String get dailyZikr => 'Adlaw-adlaw nga Zikr';

  @override
  String get duaMeaning1 =>
      'ang uban nag-ampo, ‘Among Ginoo, hatagi kami ug kaayohan dinhi sa kalibotan ug sa Kataposan, ug panalipdi kami gikan sa silot sa Kalayo.’';

  @override
  String get duaMeaning2 =>
      'Ang Dios wala magpabug-at sa bisan kinsa nga kalag sa labaw pa sa iyang maagwanta: ang matag usa makaangkon sa bisan unsa nga maayo nga iyang nahimo, ug mag-antus sa iyang pagkadautan- ‘Ginoo, ayaw kami paantusa kung kami makalimot o masayop. Ginoo, ayaw kami pabug-aa sama sa imong pagpas-an sa mga nauna kanamo. Ginoo, ayaw kami pabug-aa ug labaw pa sa among kusog sa pagpas-an. Pasayloa kami, pasayloa kami, ug kaloy-i kami. Ikaw ang among Tigpanalipod, busa tabangi kami batok sa mga dili magtutuo.\'';

  @override
  String get duaMeaning3 =>
      '‘Among Ginoo, ayaw itugot nga ang among mga kasingkasing motipas human Mo kami giyahan. Ihatag kanamo ang Imong kaluoy: Ikaw ang Kanunayng Hatagan.';

  @override
  String get duaMeaning4 =>
      'Ginoo, itugot nga ako ug ang akong kaliwat magpadayon sa pag-ampo. Ginoo namo, dawata ang akong hangyo.';

  @override
  String get duaMeaning5 =>
      'ug ipaubos ang imong pako sa pagpaubos ngadto kanila sa pagkamabination ug pag-ingon, \'Ginoo, kaloy-i sila, ingon nga sila nag-atiman kanako sa gamay pa ako.\'';

  @override
  String get duaMeaning6 =>
      'bayawon ang Dios, ang usa nga tinuod nga nagmando. [Propeta], ayaw pagdalidali sa pag-recite sa dili pa makompleto ang pagpadayag apan ingna, ‘Ginoo, dugangi ako sa kahibalo!’';

  @override
  String get duaMeaning7 =>
      'Ingna [Propeta], ‘Ginoo, pasayloa ug kaloy-i: Ikaw ang labing maloloy-on sa tanan.’';

  @override
  String get duaMeaning8 =>
      'kadtong nag-ampo, ‘Ginoo namo, hatagi kami ug kalipay sa among mga kapikas ug mga anak. Himoa kami nga maayong panig-ingnan sa mga nakaila Kanimo’.';

  @override
  String get morningZikr => 'Buntag Zikr';

  @override
  String get eveningZikr => 'Gabii Zikr';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masa\'il';

  @override
  String get hadith => 'Hadith';

  @override
  String get hadithCollection => 'Koleksyon sa Hadith';

  @override
  String get hadithBooks => 'Mga Libro sa Hadith';

  @override
  String get searchHadith => 'Pangitaa ang Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Ngalan sa Allah';

  @override
  String get liveTv => 'Live nga TV';

  @override
  String get watchLive => 'Tan-awa ang Live';

  @override
  String get streamError => 'Sayop sa stream';

  @override
  String get reload => 'I-reload';

  @override
  String get openInYoutube => 'Ablihi sa YouTube';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Pagpuasa';

  @override
  String get quranReading => 'Pagbasa sa Quran';

  @override
  String get prayers => 'Mga pag-ampo';

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
  String get dhikrCount => 'Pag-ihap sa Dhikr';

  @override
  String get weeklyProgress => 'Senemana nga Pag-uswag';

  @override
  String get monthlyProgress => 'Buwan nga Pag-uswag';

  @override
  String get statistics => 'Estadistika';

  @override
  String get hijriCalendar => 'Kalendaryo sa Hijri';

  @override
  String get gregorianCalendar => 'Gregorian nga Kalendaryo';

  @override
  String get today => 'Karon';

  @override
  String get tomorrow => 'Ugma';

  @override
  String get yesterday => 'Kagahapon';

  @override
  String get specialDays => 'Espesyal nga mga Adlaw';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Bag-ong Tuig sa Islam';

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
  String get qiblaDirection => 'Direksyon sa Qibla';

  @override
  String get compass => 'Kompas';

  @override
  String get degrees => 'grado';

  @override
  String get north => 'Amihanan';

  @override
  String get qiblaFound => 'Qibla nakit-an!';

  @override
  String get turnDevice => 'Ibalik ang imong device aron mag-atubang sa Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Error sa kompas: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Ang sensor sa kompas dili magamit sa kini nga aparato.';

  @override
  String get qiblaLocationRequiredTitle =>
      'Lokasyon gikinahanglan para sa Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Ibutang ang imong aktuwal nga lokasyon sa dili pa gamiton ang Qibla compass aron ang direksyon makalkula sa tukma.';

  @override
  String get adhanNotificationChannelName => 'Mga Abiso sa Adhan';

  @override
  String get adhanNotificationChannelDescription =>
      'Mga alerto sa oras sa pag-ampo nga adunay tunog sa adhan.';

  @override
  String get notifications => 'Mga pahibalo';

  @override
  String get prayerNotifications => 'Mga Pahibalo sa Pag-ampo';

  @override
  String get enableNotifications => 'I-enable ang Notifications';

  @override
  String get notificationTime => 'Oras sa Pagpahibalo';

  @override
  String get beforePrayer => 'minuto sa wala pa ang pag-ampo';

  @override
  String get theme => 'Tema';

  @override
  String get lightMode => 'Kahayag nga Mode';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get systemTheme => 'Tema sa Sistema';

  @override
  String get about => 'Mahitungod sa';

  @override
  String get version => 'Bersyon';

  @override
  String get privacyPolicy => 'Patakaran sa Pagkapribado';

  @override
  String get termsOfService => 'Mga Termino sa Serbisyo';

  @override
  String get contactUs => 'Kontaka Kami';

  @override
  String get rateApp => 'Rate nga App';

  @override
  String get shareApp => 'Ipakigbahin ang App';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'Mga pag-download';

  @override
  String get downloading => 'Nag-download...';

  @override
  String get downloadComplete => 'Kompleto na ang pag-download';

  @override
  String get downloadFailed => 'Napakyas ang pag-download';

  @override
  String get offlineMode => 'Offline nga Mode';

  @override
  String get noInternet => 'Walay Koneksyon sa Internet';

  @override
  String get checkConnection => 'Palihug susiha ang imong koneksyon';

  @override
  String get premium => 'Premium';

  @override
  String get upgradeToPro => 'Pag-upgrade sa Pro';

  @override
  String get proFeatures => 'Pro Features';

  @override
  String get removeAds => 'Kuhaa ang mga Ad';

  @override
  String get unlockAll => 'Unlock Tanan nga Content';

  @override
  String get exclusiveContent => 'Eksklusibo nga Kontento';

  @override
  String get welcome => 'Welcome';

  @override
  String get getStarted => 'Pagsugod';

  @override
  String get skip => 'Laktaw';

  @override
  String get next => 'Sunod';

  @override
  String get done => 'Nahuman na';

  @override
  String get onboarding1Title => 'Welcome sa Dalan sa Allah';

  @override
  String get onboarding1Desc =>
      'Ang imong kompleto nga Islamic companion app para sa mga oras sa pag-ampo, Quran, ug uban pa';

  @override
  String get onboarding2Title => 'Panahon sa Pag-ampo';

  @override
  String get onboarding2Desc =>
      'Tukma nga mga oras sa pag-ampo base sa imong lokasyon';

  @override
  String get onboarding3Title => 'Quran ug uban pa';

  @override
  String get onboarding3Desc =>
      'Pagbasa sa Quran, pagsubay sa imong pagbasa, ug pagsuhid sa sulud sa Islam';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'I-reset ang Counter';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'Target nga ihap: $target';
  }

  @override
  String get tapToCount => 'I-tap para mag-ihap';

  @override
  String get zikrCompletedMashAllah => 'Nakompleto na! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Si Allah labaw sa tanang pagkadili hingpit.';

  @override
  String get zikrMeaningAlhamdulillah => 'Ang tanang pagdayeg iya ni Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Si Allah ang Labing Gamhanan.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Walay dios gawas sa Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Nangayo ko sa pasaylo ni Allah.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Walay gahum ug walay kusog gawas kon pinaagi ni Allah.';

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
  String get dailyProgress => 'Adlaw-adlaw nga Pag-uswag';

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
      'Susiha pag-usab ang status sa premium nga subscription';

  @override
  String get syncStore =>
      'Pag-sync sa app store aron makumpirma ang imong premium nga subscription.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'Gipamatud-an ang premium nga suskrisyon.';

  @override
  String get premiumNotFound => 'Wala makit-an ang premium nga suskrisyon.';

  @override
  String premiumRefreshError(Object error) {
    return 'Dili ma-refresh ang status sa premium nga subscription: $error';
  }

  @override
  String get offlineDownloadManager => 'Offline nga Download Manager';

  @override
  String get manageDatasets =>
      'Pagdumala sa daghang mga offline audio & dataset pack.';

  @override
  String get freeStorage => 'Libre ang pagtipig sa internal nga aparato.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'Pagsusi sa database sa Quran...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'Status sa Database sa Quran';

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
  String get audioVoice => 'Tingog sa Audio';

  @override
  String get audioVoiceMisharyAlafasy => 'Lalaki (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Lalaki (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Lalaki (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Pag-calibrate sa Qibla';

  @override
  String get compassSmoothing => 'Compass Smoothing';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Pag-calibrate Offset';

  @override
  String currentOffset(Object offset) {
    return 'Karon: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'I-adjust kung ang imong kompas nagkinahanglan og manwal nga pagtul-id. Ang mga positibo nga kantidad nagtuyok subay sa orasan.';

  @override
  String get apply => 'Ibutang ang mga pagbag-o';

  @override
  String get resetOnboarding => 'I-reset ang intro setup';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Mga diagnostic';

  @override
  String get diagnosticsNotSet => 'Wala gitakda';

  @override
  String get diagnosticsPrayerProfile => 'Profile sa Pag-ampo';

  @override
  String get diagnosticsPrayerSource => 'Awtoridad sa Pag-ampo';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manual custom nga mga anggulo (walay institusyonal nga tinubdan)';

  @override
  String get diagnosticsCloudDriven => 'Cloud Driven';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'Mga Asset sa Audio sa UI';

  @override
  String get diagnosticsQuranAudioAssets => 'Quran Audio Assets';

  @override
  String get diagnosticsAudioAssets => 'Mga Aset sa Audio';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count file';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Napakyas ang pagbasa sa manifest: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Mga Lokal nga Lokalisasyon';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count gisuportahan';
  }

  @override
  String get diagnosticsQuranDataset => 'Quran Dataset';

  @override
  String get diagnosticsQuranSurahs => 'Mga Surah sa Quran';

  @override
  String get diagnosticsQuranAyahs => 'Quran Ayah';

  @override
  String get diagnosticsQuranJuzMetadata => 'Quran Juz Metadata';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Nawala ang mga cloud table sa Supabase; gihugpong nga fallback aktibo';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Napakyas ang pagsusi sa panganod: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Nawala ang metadata sa cloud juz; gihugpong nga structural fallback aktibo';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Napakyas ang pagsusi sa istruktura sa panganod: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Gikinahanglan ang pag-calibrate. I-rotate ang device sa numero-8.';

  @override
  String get dailyVerse => 'Adlaw-adlaw nga Bersikulo';

  @override
  String get todaysIbadah => 'Ibadah karon';

  @override
  String get quickAccess => 'Dali nga Pag-access';

  @override
  String get assistant => 'Katabang';

  @override
  String get places => 'Mga dapit';

  @override
  String get library => 'Library';

  @override
  String get analytics => 'Analytics';

  @override
  String get dailyDuas => 'Adlaw-adlaw nga Duas';

  @override
  String essentialDuas(String count) {
    return '$count importante nga mga duha';
  }

  @override
  String get duaUnavailableTitle =>
      'Ang gi-verify nga mga duha wala pa magamit';

  @override
  String get duaUnavailableBody =>
      'Ang gi-verify nga adlaw-adlaw nga duha wala pa ma-sync sa kini nga aparato. Sumpaysumpaya ang tinubdan sa panganod aron ma-load ang mga sourced nga duha imbes nga usa ka wala mapamatud-an nga fallback.';

  @override
  String get duaCategoryQuranic => 'Quranikong duha';

  @override
  String get duaCategoryMorningEvening => 'Buntag ug Gabii';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Proteksyon';

  @override
  String get duaCategoryBeginning => 'Mga Sinugdanan';

  @override
  String get duaCategorySleep => 'Pagkatulog';

  @override
  String get duaCategoryFoodDrink => 'Pagkaon ug Ilimnon';

  @override
  String get duaCategoryForgiveness => 'Pagpasaylo';

  @override
  String get duaCategoryHome => 'Balay';

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
  String get islamicEducation => 'Edukasyon sa Islam';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Mga Koleksyon sa Hadith';

  @override
  String get hadithSourcePending => 'Gi-verify nga tinubdan naghulat';

  @override
  String get hadithUnavailableTitle =>
      'Ang napamatud-an nga mga koleksyon sa hadith wala pa magamit';

  @override
  String get hadithUnavailableBody =>
      'Kini nga pagtukod nagdepende gihapon sa usa ka wala mapamatud-an nga eksternal nga feed sa hadith. Ang pag-browse sa hadith magpabilin nga wala’y mahimo hangtod ang usa ka gigikanan nga dataset ma-sync.';

  @override
  String get paywallUnlockAll =>
      'I-unlock ang tanang feature para sa imong espirituhanong panaw';

  @override
  String get premiumProductUnavailable =>
      'Ang premium nga produkto dili magamit karon. Palihug sulayi pag-usab unya.';

  @override
  String get premiumPurchaseFailed =>
      'Ang pagpalit dili makompleto. Palihug sulayi pag-usab.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'Walay kinutuban nga AI-powered Q&A';

  @override
  String get paywallFeature2Title => 'Walay kinutuban nga Offline';

  @override
  String get paywallFeature2Desc => 'I-download ang tanang recitation';

  @override
  String get paywallFeature3Title => 'Eksklusibo nga mga Disenyo';

  @override
  String get paywallFeature3Desc => 'Mga premium nga tema ug font';

  @override
  String get paywallFeature4Title => 'Walay Ad';

  @override
  String get paywallFeature4Desc => 'Zero nga mga ad';

  @override
  String get paywallGetAccess => 'Pagbaton ug Kinabuhi nga Pag-access — \$1.00';

  @override
  String get restorePurchases => 'Iuli ang mga Pagpamalit';

  @override
  String get zakatCalculator => 'Kalkulator sa Zakat';

  @override
  String get zakatGold => 'Bulawan (Altın)';

  @override
  String get zakatSilver => 'Pilak (Gümüş)';

  @override
  String get zakatCashBank => 'Cash / Bangko';

  @override
  String get zakatBusiness => 'Negosyo';

  @override
  String get zakatInvestments => 'Mga pamuhunan';

  @override
  String get zakatWeightGrams => 'Timbang (g)';

  @override
  String get zakatPricePerGram => 'Presyo/g';

  @override
  String get zakatTotalAmount => 'Kinatibuk-ang kantidad';

  @override
  String get zakatInventoryValue => 'Bili sa Imbentaryo';

  @override
  String get zakatDebts => 'Mga utang';

  @override
  String get zakatTotal => 'Total';

  @override
  String get calculateZakat => 'Kalkulahin ang Zakat';

  @override
  String get nisabNotReached => 'Nisab wala naabot. Ang Zakat dili obligado.';

  @override
  String get totalZakat => 'Kinatibuk-ang Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'Bulawan nga Zakat';

  @override
  String get zakatSilverZakat => 'Pilak nga Zakat';

  @override
  String get zakatCashZakat => 'Cash Zakat';

  @override
  String get zakatBusinessZakat => 'Zakat sa Negosyo';

  @override
  String get zakatInvestmentZakat => 'Investment Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! Ako ang imong katabang sa Islam. Pangutan-a ko bahin sa pag-ampo, pagpuasa, zakat, o bisan unsang hilisgutan sa Islam.';

  @override
  String get chatbotLimitReached =>
      'Naabot ang limitasyon sa adlaw-adlaw nga pangutana. Pag-upgrade sa Premium alang sa walay kutub.';

  @override
  String get chatbotErrorMsg =>
      'Wala ko makamugna og tubag. Palihug sulayi pag-usab.';

  @override
  String get chatbotOfflinePrompt =>
      'Ang napamatud-an nga offline nga base sa kahibalo sa Islam gi-curate pa. Mahimo nimong i-enable ang offline fallback karon, apan magpakita lang kini og limitado nga luwas nga mga mensahe hangtod andam na ang sourced dataset.\n\nGusto ba nimong i-enable ang offline fallback?';

  @override
  String get chatbotOfflineSwitched =>
      'Nahimo ang offline fallback. Ang napamatud-an nga lokal nga Islamic nga mga tubag dili pa andam.';

  @override
  String get chatbotOfflineDownloadLabel => 'I-enable ang Offline Fallback';

  @override
  String get downloadPreparing => 'Nangandam sa pag-download...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Pag-download sa surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Ang tanan nga mga surah na-download na para sa kini nga reciter.';

  @override
  String get offlineQuranAudioPacks => 'Offline nga Quran Audio Packs';

  @override
  String storedOnDeviceMb(String size) {
    return 'Gitipigan sa device: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surah na-download';
  }

  @override
  String get redownloadMissingRepair => 'Pag-ayo / Pag-download Nawala';

  @override
  String get downloadAction => 'Pag-download';

  @override
  String get resumeDownload => 'Ipadayon ang pag-download';

  @override
  String get deleteDownloadedFiles => 'I-delete ang Na-download nga mga File';

  @override
  String get downloadCancelling => 'Nagkanselar...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Gikansela ang pag-download alang sa $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Nakompleto ang pag-download para sa $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Nahuman ang pag-download alang sa $reciter nga adunay $failed nga napakyas nga mga surah ($downloaded/$total na-download).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Gitangtang ang offline nga mga file para sa $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Ang gipamatud-an nga mga tinubdan sa audio sa Quran dili magamit karon.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Ang napamatud-an nga Quran audio pack dili kompleto ($available/$total). Sulayi pag-usab human ma-update ang audio catalog.';
  }

  @override
  String get chatbotHint => 'Pangutana...';

  @override
  String get chatbotThinking => 'Naghunahuna...';

  @override
  String get sukunMixerSubtitle => 'Kinaiyahan ug Qur\'an Mixer';

  @override
  String get audioPlayFailed => 'Napakyas ang playback sa audio';

  @override
  String get sukunNatureLabel => 'Sukun (Nature)';

  @override
  String get sukunRainOfMercy => 'Ulan sa Kaluoy';

  @override
  String get sukunGardenOfPeace => 'Tanaman sa Kalinaw';

  @override
  String get sukunMidnightCalm => 'Kalmado sa tungang gabii';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Dili magamit ang mga soundscape';

  @override
  String get sukunUnavailableBody =>
      'Kini nga pagtukod wala pa maglakip sa gikinahanglan nga Sukun soundscape asset pa.';

  @override
  String get prayerCompletion => 'Pagkompleto sa Pag-ampo';

  @override
  String get streaks => 'Mga streak';

  @override
  String get dayStreak => 'Day streak';

  @override
  String get bestStreak => 'Labing maayo nga streak';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Offline nga Fallback';

  @override
  String get chatbotUseCloudAi => 'Gamita ang Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'I-enable ang Offline Fallback';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count ang nahabilin';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Ang Cloud API wala ma-configure. Ang gi-verify nga offline nga giya sa Islam wala pa magamit.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Ang napamatud-an nga lokal nga giya sa Islam wala pa magamit. Pagbalhin sa Cloud AI alang sa gigikanan nga mga tubag.';

  @override
  String get mosques => 'Mga Mosque';

  @override
  String get halalFood => 'Halal nga Pagkaon';

  @override
  String get placesSearchArea => 'Pangitaa kini nga lugar';

  @override
  String get nearbyMosques => 'Duol nga mga Mosque';

  @override
  String get islamicSchools => 'Mga Eskwelahan sa Islam';

  @override
  String placesFoundCount(String count) {
    return '$count nakit-an';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km ang gilay-on';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Sayop sa API: $statusCode';
  }

  @override
  String get placesNetworkError => 'Sayop sa network. Palihug sulayi pag-usab.';

  @override
  String get placesLocationRequiredTitle => 'Gikinahanglan ang lokasyon';

  @override
  String get placesLocationRequiredBody =>
      'Pagbutang una og lokasyon aron ang duol nga mga mosque, halal nga pagkaon, ug Islamic nga mga eskwelahan mapangita sa tukma.';

  @override
  String get placesMapTilesUnavailableTitle =>
      'Dili magamit ang mga tile sa mapa';

  @override
  String get placesMapTilesUnavailableBody =>
      'Ang usa ka napamatud-an nga tinubdan sa tile sa mapa wala pa ma-configure alang niini nga pagtukod. Ang mga duol nga lugar mahimo gihapon nga magkarga gikan sa imong gitipig nga lokasyon.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'Dili magamit ang datos sa mga lugar';

  @override
  String get placesDataSourceUnavailableBody =>
      'Ang usa ka napamatud-an nga mga lugar nga endpoint sa data wala pa ma-configure alang niini nga pagtukod. Ibutang ang PLACES_OVERPASS_API_URL sa usa ka aprobahan nga proxy o provider sa dili pa i-enable ang duol nga pagpangita.';

  @override
  String get unknownPlaceName => 'Wala mailhi nga Ngalan';

  @override
  String get islamicPlaceFallback => 'Islamic nga Dapit';

  @override
  String get asmaMeaning1 => 'Ang Mabination';

  @override
  String get asmaMeaning2 => 'Ang Maluluy-on';

  @override
  String get asmaMeaning3 => 'Ang Hari / Walay Katapusan nga Ginoo';

  @override
  String get asmaMeaning4 => 'Ang Labing Balaan';

  @override
  String get asmaMeaning5 => 'Ang Tinubdan sa Kalinaw';

  @override
  String get asmaMeaning6 => 'Ang Maghahatag sa Seguridad';

  @override
  String get asmaMeaning7 => 'Ang Tigbantay';

  @override
  String get asmaMeaning8 => 'Ang Bililhon / Ang Labing Gamhanan';

  @override
  String get asmaMeaning9 => 'Ang Puwersa';

  @override
  String get asmaMeaning10 => 'Ang Labing Bantogan';

  @override
  String get asmaMeaning11 => 'Ang Magbubuhat';

  @override
  String get asmaMeaning12 => 'Ang Magbubuhat sa Kahusay';

  @override
  String get asmaMeaning13 => 'Ang Humol sa Katahom';

  @override
  String get asmaMeaning14 => 'Ang Mapasayloon';

  @override
  String get asmaMeaning15 => 'Ang Madaugon';

  @override
  String get asmaMeaning16 => 'Ang Maghahatag sa Tanan';

  @override
  String get asmaMeaning17 => 'The Sustainer';

  @override
  String get asmaMeaning18 => 'Ang Nagbukas';

  @override
  String get asmaMeaning19 => 'Ang Nakahibalo sa Tanan';

  @override
  String get asmaMeaning20 =>
      'The Withholder, who narrows and restrains by wisdom.';

  @override
  String get asmaMeaning21 =>
      'The Expander, who opens, eases, and grants abundance by wisdom.';

  @override
  String get asmaMeaning22 => 'Ang Abaser';

  @override
  String get asmaMeaning23 => 'Ang Maghimaya';

  @override
  String get asmaMeaning24 => 'Ang Maghahatag sa Kadungganan';

  @override
  String get asmaMeaning25 => 'Ang Magpakaulaw';

  @override
  String get asmaMeaning26 => 'Ang Tigpatalinghog sa Tanan';

  @override
  String get asmaMeaning27 => 'Ang Manalagna sa Tanan';

  @override
  String get asmaMeaning28 => 'Ang Maghuhukom';

  @override
  String get asmaMeaning29 => 'Ang Matarung';

  @override
  String get asmaMeaning30 => 'Ang Maliputon';

  @override
  String get asmaMeaning31 => 'Ang Tanan Nakahibalo';

  @override
  String get asmaMeaning32 => 'Ang Pag-una';

  @override
  String get asmaMeaning33 => 'Ang Halangdon';

  @override
  String get asmaMeaning34 => 'Ang Dakong Magpasaylo';

  @override
  String get asmaMeaning35 => 'Ang Tigganti sa Pagpasalamat';

  @override
  String get asmaMeaning36 => 'Ang Labing Hataas';

  @override
  String get asmaMeaning37 => 'Ang Labing Bantogan';

  @override
  String get asmaMeaning38 => 'Ang Tigtipig';

  @override
  String get asmaMeaning39 => 'Ang Mag-amuma';

  @override
  String get asmaMeaning40 => 'Ang Tig-ihap';

  @override
  String get asmaMeaning41 => 'Ang Halangdon';

  @override
  String get asmaMeaning42 => 'Ang Mahinatagon';

  @override
  String get asmaMeaning43 => 'Ang Usa nga Mabinantayon';

  @override
  String get asmaMeaning44 => 'Ang Tigtubag sa Pag-ampo';

  @override
  String get asmaMeaning45 => 'Ang Tanan nga Nakasabut';

  @override
  String get asmaMeaning46 => 'Ang Hingpit nga Maalamon';

  @override
  String get asmaMeaning47 => 'Ang Mahigugmaon';

  @override
  String get asmaMeaning48 => 'Ang Labing Mahimayaon';

  @override
  String get asmaMeaning49 => 'Ang Mabanhaw';

  @override
  String get asmaMeaning50 => 'Ang Saksi';

  @override
  String get asmaMeaning51 => 'Ang Kamatuoran';

  @override
  String get asmaMeaning52 => 'Ang Tanan nga Igo nga Tigbantay';

  @override
  String get asmaMeaning53 => 'Ang Tag-iya sa Tanang Kusog';

  @override
  String get asmaMeaning54 => 'Ang Kusog';

  @override
  String get asmaMeaning55 => 'Ang Tigpanalipod';

  @override
  String get asmaMeaning56 => 'Ang Gidayeg';

  @override
  String get asmaMeaning57 => 'The Appraiser';

  @override
  String get asmaMeaning58 => 'Ang Nagmugna';

  @override
  String get asmaMeaning59 => 'Ang Tigpabalik';

  @override
  String get asmaMeaning60 => 'Ang Maghahatag sa Kinabuhi';

  @override
  String get asmaMeaning61 => 'Ang Tigkuha sa Kinabuhi';

  @override
  String get asmaMeaning62 => 'Ang Kanunay nga Buhi';

  @override
  String get asmaMeaning63 => 'Ang Nagpadayon sa Kaugalingon nga Nagpadayon';

  @override
  String get asmaMeaning64 => 'Ang Tigpangita';

  @override
  String get asmaMeaning65 => 'Ang Mahimayaon';

  @override
  String get asmaMeaning66 => 'Ang Bugtong';

  @override
  String get asmaMeaning67 => 'Ang Usa';

  @override
  String get asmaMeaning68 => 'Ang Usa nga Gipangita sa Tanan';

  @override
  String get asmaMeaning69 => 'Ang Gamhanan';

  @override
  String get asmaMeaning70 => 'Ang Magbubuhat sa tanang gahum';

  @override
  String get asmaMeaning71 => 'Ang Expediter';

  @override
  String get asmaMeaning72 => 'Ang Delayer';

  @override
  String get asmaMeaning73 => 'Ang Una';

  @override
  String get asmaMeaning74 => 'Ang Katapusan';

  @override
  String get asmaMeaning75 => 'Ang Manipesto';

  @override
  String get asmaMeaning76 => 'Ang Tinago';

  @override
  String get asmaMeaning77 =>
      'The Protecting Patron, who governs and cares for all creation.';

  @override
  String get asmaMeaning78 => 'Ang Supremo';

  @override
  String get asmaMeaning79 => 'Ang Magbubuhat sa Maayo';

  @override
  String get asmaMeaning80 => 'Ang Giya sa Paghinulsol';

  @override
  String get asmaMeaning81 => 'Ang Tigpanimalos';

  @override
  String get asmaMeaning82 => 'Ang Magpatawad';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'Ang Tag-iya / Soberano sa Tanan';

  @override
  String get asmaMeaning85 => 'Ang Tag-iya sa Kamahalan ug Bounty';

  @override
  String get asmaMeaning86 => 'Ang Usa nga Patas';

  @override
  String get asmaMeaning87 => 'Ang Tigtigom';

  @override
  String get asmaMeaning88 => 'Ang Datu';

  @override
  String get asmaMeaning89 => 'The Enricher';

  @override
  String get asmaMeaning90 => 'Ang Magpugong sa Kadaut';

  @override
  String get asmaMeaning91 => 'Ang Nagdala sa Kadaut';

  @override
  String get asmaMeaning92 => 'Ang Tighatag sa mga Kaayohan';

  @override
  String get asmaMeaning93 => 'Ang Kahayag';

  @override
  String get asmaMeaning94 => 'Ang Magmamando';

  @override
  String get asmaMeaning95 => 'Ang Nagmugna';

  @override
  String get asmaMeaning96 => 'Ang Usa nga Walay Katapusan';

  @override
  String get asmaMeaning97 => 'Ang Manununod';

  @override
  String get asmaMeaning98 => 'Ang Labing Matarong nga Giya';

  @override
  String get asmaMeaning99 => 'Ang Usa nga Pasyente';
}
