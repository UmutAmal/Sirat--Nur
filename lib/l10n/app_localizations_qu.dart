// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Quechua (`qu`).
class AppLocalizationsQu extends AppLocalizations {
  AppLocalizationsQu([String locale = 'qu']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Islamic Way of Light';

  @override
  String get home => 'Wasi';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Calendario nisqa';

  @override
  String get settings => 'Ajustes nisqa';

  @override
  String get nextPrayer => 'Qatiqnin Mañakuy';

  @override
  String get prayerTimes => 'Mañakuy pachakuna';

  @override
  String get continueReading => 'Continue Reading';

  @override
  String get getLifetimePro => 'Get Lifetime Pro';

  @override
  String get unlockTajweed => 'Unlock Tajweed & Advanced Features';

  @override
  String get prayerCalculation => 'Mañakuy Yupay';

  @override
  String get method => 'Yupay ruway';

  @override
  String get madhab => 'Asr Método Jurídico nisqa';

  @override
  String get surahs => 'Surahkuna';

  @override
  String get ayahs => 'Ayahs';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Inti lluqsimuy';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Magrib sutiyuq runa';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName nisqapaq pacha.';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '$prayerName mañakuy pachaña.';
  }

  @override
  String get dataStorage => 'Datos & Waqaychay';

  @override
  String get clearCache => 'Cache nisqa chuyanchay';

  @override
  String get cacheClearedSuccess => 'Cache allinta chuyanchasqa';

  @override
  String get location => 'Tarikusqan';

  @override
  String get language => 'Simi';

  @override
  String get selectLanguage => 'Simita akllay';

  @override
  String get searchLanguage => 'Search 180+ languages...';

  @override
  String get systemDefault => 'Sistema Default nisqa';

  @override
  String get currentLocation => 'Kunan Maypi kasqan (GPS) .';

  @override
  String get locationServiceDisabled =>
      'Maypi tarikuy servicioqa mana llamk\'achisqa kachkan.';

  @override
  String get locationPermissionDenied =>
      'Maypi kasqanmanta permisota mana chaskisqachu.';

  @override
  String get locationDetectionFailed =>
      'Mana maypi kasqaykita riqsiyta atirqanchu. Ama hina kaspa, makiwan huk llaqtata akllay icha musuqmanta kallpachakuy.';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => 'Maskay';

  @override
  String get searchHint => 'Maskay...';

  @override
  String get noResults => 'No results found';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get appErrorOccurred => 'Huk pantaymi rikurirqa';

  @override
  String get appUnknownError => 'Mana riqsisqa pantay';

  @override
  String get quranLoadFailed =>
      'Quranpa contenidonqa manam cargayta atirqakuchu. Ama hina kaspa, hukmanta kallpachakuy.';

  @override
  String get retry => 'Wakmanta kallpachakuy';

  @override
  String get refreshAction => 'Refresh';

  @override
  String get cancel => 'Sayachiy';

  @override
  String get save => 'Waqaychay';

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
  String get no => 'Manam';

  @override
  String get surah => 'Surah';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'P’anqa';

  @override
  String get reading => 'Reading';

  @override
  String get recitation => 'Recitation';

  @override
  String get translation => 'Traducción';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Cargando tafsir...';

  @override
  String get tafsirSourceLabel => 'Tafsir pukyuta';

  @override
  String get tafsirNoSurahFound => 'Mana tafsir tarisqachu kay surahpaq.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Mana tafsir tarisqachu ayah $ayah nisqapaq.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir mana cargayta atirqankuchu.';

  @override
  String get tafsirNoTextForAyah => 'Mana tafsir texto kay ayahpaq.';

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
    return 'Tafsir pukyuta HTTP $statusCode pantayta kutichirqa.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Akllasqa tafsir pukyuta mana qillqasqakunata kutichirqanchu.';

  @override
  String get tafsirCacheUnavailable =>
      'Verified tafsir manaraqmi mana internetpi tarikunchu. Manaraq maskachkaspa huk pukyuta tafsir willay huñuta tinkiy.';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get addBookmark => 'Marcadorta yapay';

  @override
  String get removeBookmark => 'Marcadorta hurquy';

  @override
  String get lastRead => 'Last Read';

  @override
  String get dailyZikr => 'Daily Zikr';

  @override
  String get duaMeaning1 =>
      'wakintaq mañakunku: ‘Señorniyku, kay pachapipas, qhepa p’unchaypipas allinta qowayku, Nina ñak’ariymantataq amachawayku’, nispa.';

  @override
  String get duaMeaning2 =>
      'Diosqa manan mayqen almatapas q’epichinchu aguantay atisqanmanta aswan askhawan: sapankankun ima allin ruwasqantapas ganan, mana allin ruwasqantapas ñak’arinmi- ‘ Señor, ama hap’iwaykuchu llank’anaman qonqaspa otaq pantaspaqa. Señor, ama q’epiykuchu imaynan ñawpaqniykupi kaqkunaman q’epicharqanki hinata. Wiraqocha, ama q\'epichiwayku kallpayoq kasqaykumantaqa. Pampachaykuwayku, pampachawayku, khuyapayawayku. Qanmi kanki Amachaqniyku, chaymi yanapawayku mana iñiqkunamanta’, nispa.';

  @override
  String get duaMeaning3 =>
      '‘Señorniyku, ama sonqoykuta karunchawaykuchu pusawasqayku qhepaman. Khuyapayakuyniykita qowayku: Qanmi kanki Wiñaypaq Qoq.';

  @override
  String get duaMeaning4 =>
      'Señor, qoykuway ñoqapas mirayniypas mañakuyta hinalla ruwananchispaq. Apunchik, mañakusqayta chaskikuy.';

  @override
  String get duaMeaning5 =>
      'hinaspataq raphraykita uraykachiy k’umuykukuspa paykunaman sumaq sonqowan niy: ‘Señor, khuyapayay paykunata, imaynan huch’uyllaraq kashaqtiy cuidawarqanku hinata’, nispa.';

  @override
  String get duaMeaning6 =>
      'hatunchasqa kachun Dios, cheqaqtapuni kamachikuq. [Profeta], ama apuraychu rimayta manaraq revelacion hunt’asqa kashaqtin aswanpas niy: ‘¡Señor, yachayniypi yapaykuway!’, nispa.';

  @override
  String get duaMeaning7 =>
      '[Profeta] niy: ‘Señor, pampachay, khuyapayay, qanmi kanki llapanmanta aswan khuyapayakuq’, nispa.';

  @override
  String get duaMeaning8 =>
      '‘Señorniyku, esposaykupi, mirayniykupipas kusichiwayku’, nispa mañakuqkuna. Allin ejemplokunata ruwawayku Qanmanta musyakuqkunapaq’.';

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
  String get hadith => 'Hadith nisqa';

  @override
  String get hadithCollection => 'Hadith Huñusqa';

  @override
  String get hadithBooks => 'Hadith Librokuna';

  @override
  String get searchHadith => 'Hadith nisqapi maskay';

  @override
  String get asmaulHusna => 'Asma-ul-Husna sutiyuq runa';

  @override
  String get namesOfAllah => 'Allahpa sutinkuna';

  @override
  String get liveTv => 'Kawsaq TV';

  @override
  String get watchLive => 'Qhaway En vivo';

  @override
  String get streamError => 'Mayu pantay';

  @override
  String get reload => 'Recargar';

  @override
  String get openInYoutube => 'YouTube nisqapi kichasqa';

  @override
  String get ibadahTracker => 'Ibadah qatiq';

  @override
  String get fasting => 'Ayuno';

  @override
  String get quranReading => 'Quran Ñawinchay';

  @override
  String get prayers => 'Mañakuykuna';

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
  String get weeklyProgress => 'Sapa semana Progreso';

  @override
  String get monthlyProgress => 'Monthly Progress';

  @override
  String get statistics => 'Statistics';

  @override
  String get hijriCalendar => 'Hijri Calendario nisqa';

  @override
  String get gregorianCalendar => 'Gregorian Calendar';

  @override
  String get today => 'Kunan';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get specialDays => 'P’unchawkuna Especial';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Islam musuq wata';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi sutiyuq runa';

  @override
  String get specialDayDateRamadanStart => '1 Ramadán killapi';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadán killapi';

  @override
  String get specialDayDateEidAlFitr => '1 Shawwal sutiyuq runa';

  @override
  String get specialDayDateEidAlAdha => '10 Dhul Hijjah nisqa';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharram';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabi al-Awwal sutiyuq runa';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'Qibla Dirección';

  @override
  String get compass => 'Brújula nisqa';

  @override
  String get degrees => 'degrees';

  @override
  String get north => 'North';

  @override
  String get qiblaFound => 'Qibla tarisqa!';

  @override
  String get turnDevice => 'Dispositivoykita Qiblaman qhawarinaykipaq muyuchiy';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Brújula pantasqa: $error .';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Kay aparatopiqa mana brújula sensor nisqa kanchu.';

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
  String get theme => 'Rimay';

  @override
  String get lightMode => 'Modo de Luz';

  @override
  String get darkMode => 'Modo Oscuro';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'Sobre';

  @override
  String get version => 'Ima niraq';

  @override
  String get privacyPolicy => 'Sapanchasqa willakuy';

  @override
  String get termsOfService => 'Serviciomanta kamachiykuna';

  @override
  String get contactUs => 'Ñoqaykuwan rimanakuy';

  @override
  String get rateApp => 'Tarifa App';

  @override
  String get shareApp => 'Compartir App';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Descarga kamachiq';

  @override
  String get downloads => 'Descargas nisqakuna';

  @override
  String get downloading => 'Uraykachispa...';

  @override
  String get downloadComplete => 'Descargar Completo nisqa';

  @override
  String get downloadFailed => 'Descarga Mana atisqachu';

  @override
  String get offlineMode => 'Modo mana tinkisqa';

  @override
  String get noInternet => 'No Internet Connection';

  @override
  String get checkConnection => 'Ama hina kaspa, tinkisqaykita qhaway';

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
  String get getStarted => 'Qallariy';

  @override
  String get skip => 'Skip';

  @override
  String get next => 'Qatiq';

  @override
  String get done => 'Ñam';

  @override
  String get onboarding1Title => 'Allin hamusqayki Sirat-ı Nur';

  @override
  String get onboarding1Desc =>
      'Islam compañero app hunt\'asqa mañakuy pachakunapaq, Quranpaq, chaymanta aswankunapaq';

  @override
  String get onboarding2Title => 'Mañakuy pachakuna';

  @override
  String get onboarding2Desc =>
      'Maypi kasqaykiman hina mañakuy horariokuna cheqapta';

  @override
  String get onboarding3Title => 'Quran & Más';

  @override
  String get onboarding3Desc =>
      'Quranta ñawiriy, ñawirisqaykita qatipay, islammanta contenidota mask’ay';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'Yupaqta kutichiy';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'Target: $target';
  }

  @override
  String get tapToCount => 'Yupanaykipaq ñit’iy';

  @override
  String get zikrCompletedMashAllah => '¡Tukusqaña! MashAllah sutiyuq runa';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allahqa tukuy mana hunt’asqa kaymanta aswan hatunmi.';

  @override
  String get zikrMeaningAlhamdulillah => 'Tukuy yupaychayqa Allahpaqmi.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allahmi Aswan Hatun.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Manam kanchu dios aswanqa Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Allahpa pampachaynintam maskani.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Manan kanchu atiypas, manan kallpapas kanchu, aswanpas Allah nisqawanmi.';

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
  String get dailyProgress => 'Sapa punchaw ñawpariy';

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
  String get recheckPremium => 'Premium suscripción estadota wakmanta qhaway';

  @override
  String get syncStore =>
      'App tiendawan tinkiy premium suscripcionniyki takyachinaykipaq.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'Suscripción premium nisqa chiqapchasqa.';

  @override
  String get premiumNotFound => 'Suscripción premium mana tarisqachu.';

  @override
  String premiumRefreshError(Object error) {
    return 'Mana premium suscripción estadota musuqyachiyta atirqanchu: $error .';
  }

  @override
  String get offlineDownloadManager => 'Mana tinkisqa uraykachiy kamachiq';

  @override
  String get manageDatasets =>
      'Hatun mana tinkisqa uyarina & willay huñu packs kamachiy.';

  @override
  String get freeStorage => 'Ukhu dispositivo waqaychayta kacharichiy.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'Quranpa willay tantanapi qhawaspa...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'Quranpa Base de Datos nisqap kaynin';

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
    return 'Quran qhawayqa manam atirqanchu: $error .';
  }

  @override
  String get audioVoice => 'Uyarinapaq Kunka';

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
  String get qiblaCalibration => 'Qibla Calibración';

  @override
  String get compassSmoothing => 'Brújula Sumaqchay';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Calibración Desplazamiento nisqa';

  @override
  String currentOffset(Object offset) {
    return 'Current: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Brújulayki makiwan allichayta necesitan chayqa, allichay. Allin chanikunaqa relojpa muyusqanman hinam muyunku.';

  @override
  String get apply => 'Cambiokunata churay';

  @override
  String get resetOnboarding => 'Intro churayta musuqmanta churay';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Diagnósticos nisqakuna';

  @override
  String get diagnosticsNotSet => 'Mana churasqachu';

  @override
  String get diagnosticsPrayerProfile => 'Mañakuymanta Perfil';

  @override
  String get diagnosticsPrayerSource => 'Mañakuy Autoridad';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manual costumbre ángulos (mana institucional fuenteyuq) .';

  @override
  String get diagnosticsCloudDriven => 'Puyu purichisqa';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Kaqniyuq';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio kaqmanta kaqniyuq';

  @override
  String get diagnosticsQuranAudioAssets => 'Quran Audio Kaqniyuq';

  @override
  String get diagnosticsAudioAssets => 'Uyarinapaq kaqniyuq';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count willañiqikuna';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifesto ñawiriyqa mana atisqachu: $error .';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Localización Locales nisqakuna';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count yanapasqa';
  }

  @override
  String get diagnosticsQuranDataset => 'Quran Datos nisqa huñusqa';

  @override
  String get diagnosticsQuranSurahs => 'Quran Surahkuna';

  @override
  String get diagnosticsQuranAyahs => 'Quran Ayahs';

  @override
  String get diagnosticsQuranJuzMetadata => 'Quran Juz Metadatos';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Supabase llaqtapi puyu tablakuna chinkasqa; paqueteado fallback activo nisqa';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Puyu qhawayqa manam atikunchu: $error .';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Puyu juz metadatos faltasqa; paquete estructural fallback activo nisqa';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Puyu estructural qhawayqa manam atikunchu: $error .';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Calibración nisqa ruwaymi necesitakun. Siqi-8 nisqapi aparatota muyuchiy.';

  @override
  String get dailyVerse => 'Sapa punchaw Versiculo';

  @override
  String get dailyVerseUnavailableTitle =>
      'Sapa punchaw versiculo mana tarikunchu';

  @override
  String get dailyVerseUnavailableBody =>
      'Chiqaqchasqa sapa p\'unchaw versiculokuna manaraqmi kay ruwanapaq wakichisqachu. Puyu pukyuta tinkiy utaq chiqaqchasqa waqaychasqata tinkiy manaraq maskachkaspa.';

  @override
  String get todaysIbadah => 'Kunan punchaw Ibadah';

  @override
  String get quickAccess => 'Utqaylla Yaykuna';

  @override
  String get assistant => 'Yanapaq';

  @override
  String get places => 'Kitikuna';

  @override
  String get library => 'Yachay taqi';

  @override
  String get analytics => 'Analítica nisqa';

  @override
  String get dailyDuas => 'Sapa punchaw Duas';

  @override
  String essentialDuas(String count) {
    return '$count essential duas';
  }

  @override
  String get duaUnavailableTitle => 'Verified duas manaraqmi kanchu';

  @override
  String get duaUnavailableBody =>
      'Chiqaqchasqa sapa p\'unchaw duas manaraq kay dispositivoman tinkisqachu. Puyu pukyuta tinkiy pukyuta duakuna karganapaq mana chiqaqchasqa urmaymantaqa.';

  @override
  String get duaCategoryQuranic => 'Quranmanta dua';

  @override
  String get duaCategoryMorningEvening => 'Paqarin & Chisi';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Amachay';

  @override
  String get duaCategoryBeginning => 'Qallariykuna';

  @override
  String get duaCategorySleep => 'Puñuy';

  @override
  String get duaCategoryFoodDrink => 'Mikhuy & Upyana';

  @override
  String get duaCategoryForgiveness => 'Pampachay';

  @override
  String get duaCategoryHome => 'Wasi';

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
  String get islamicEducation => 'Educación Islámica nisqa';

  @override
  String get sukunAudioTitle => 'Sukun Paisajes de sonido';

  @override
  String get hadithCollections => 'Hadith Huñusqakuna';

  @override
  String get hadithSourcePending => 'Chiqapchasqa pukyuta pendiente';

  @override
  String get hadithUnavailableTitle =>
      'Chiqapchasqa hadith huñusqakunaqa manaraqmi kanchu';

  @override
  String get hadithUnavailableBody =>
      'Kay ruwayqa kunankamapas mana chiqapchasqa hawa hadith mikhuymantam hapipakun. Hadith maskayqa mana llamk\'achisqa qhipan huk pukyuta willay huñu tinkisqa kanankama.';

  @override
  String get paywallUnlockAll =>
      'Espiritual puriyniykipaq llapa ruwaykunata kichay';

  @override
  String get premiumProductUnavailable =>
      'Premium nisqa ruruqa manam kunan pachaqa kanchu. Ama hina kaspa, qhipaman hukmanta kallpachakuy.';

  @override
  String get premiumPurchaseFailed =>
      'Rantinakuyqa manam tukusqachu karqa. Ama hina kaspa, hukmanta kallpachakuy.';

  @override
  String get paywallFeature1Title => 'Yanapakuq Neural Plus';

  @override
  String get paywallFeature1Desc => 'Mana k\'itiyuq AI-wan kallpachasqa Q&A';

  @override
  String get paywallFeature2Title => 'Mana k\'uchuyuq Mana tinkisqa';

  @override
  String get paywallFeature2Desc => 'Llapan recitacionkunata uraykachiy';

  @override
  String get paywallFeature3Title => 'Diseños Exclusivos nisqakuna';

  @override
  String get paywallFeature3Desc => 'Temas & fuentes premium nisqa';

  @override
  String get paywallFeature4Title => 'Mana Anuncioyuq';

  @override
  String get paywallFeature4Desc => 'Cero nisqa willakuykunata';

  @override
  String get paywallGetAccess => 'Kawsay pacha Yaykuna tariy — \$1.00';

  @override
  String get restorePurchases => 'Rantisqakunata kutichiy';

  @override
  String get zakatCalculator => 'Zakat yupayniyuq';

  @override
  String get zakatGold => 'Quri (Altın) .';

  @override
  String get zakatSilver => 'Qullqi (Gümüş) .';

  @override
  String get zakatCashBank => 'Qullqi / Banco';

  @override
  String get zakatBusiness => 'Qatuna';

  @override
  String get zakatInvestments => 'Inversiones nisqakuna';

  @override
  String get zakatWeightGrams => 'Llasaq (g) .';

  @override
  String get zakatPricePerGram => 'Precio/g';

  @override
  String get zakatTotalAmount => 'Total Cantidad nisqa';

  @override
  String get zakatInventoryValue => 'Inventariopa chanin';

  @override
  String get zakatDebts => 'Manukuna';

  @override
  String get zakatTotal => 'Llapan';

  @override
  String get calculateZakat => 'Zakat yupay';

  @override
  String get nisabNotReached =>
      'Nisab mana chayasqachu. Zakataqa manan obligatoriochu.';

  @override
  String get totalZakat => 'Total Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'Quri Zakat';

  @override
  String get zakatSilverZakat => 'Qullqimanta Zakat';

  @override
  String get zakatCashZakat => 'Zakat de efectivo';

  @override
  String get zakatBusinessZakat => 'Zakat de negocios nisqa';

  @override
  String get zakatInvestmentZakat => 'Inversión Zakat nisqa';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Sapa punchaw tapukuypa limite nisqaman chayasqa. Premium kaqman yapay mana k\'uchuyuq kaqpaq.';

  @override
  String get chatbotErrorMsg =>
      'Manam kutichiyta paqarichiyta atirqanichu. Ama hina kaspa, hukmanta kallpachakuy.';

  @override
  String get chatbotOfflinePrompt =>
      'Chay chiqapchasqa mana tinkisqa islam yachaypa tiyanan kunankamapas curado kachkan. Kunan mana tinkisqa kutiy kutichiyta atichiyta atikunki, ichaqa pisi waqaychasqa willakuykunatalla rikuchinqa pukyuta willay huñu wakichisqa kanankama.\n\n¿Mana tinkisqa fallback atichiyta munankichu?';

  @override
  String get chatbotOfflineSwitched =>
      'Mana tinkisqa fallback atichisqa. Chiqapchasqa llaqta islam kutichiykuna manaraqmi wakichisqachu.';

  @override
  String get chatbotOfflineDownloadLabel =>
      'Mana tinkisqa Fallback nisqa atichiy';

  @override
  String get downloadPreparing => 'Descargata wakichispa...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Downloading surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Tukuy surahkuna kay reciterpaq uraykachisqaña.';

  @override
  String get offlineQuranAudioPacks => 'Mana tinkisqa Quran Audio Packs';

  @override
  String storedOnDeviceMb(String size) {
    return 'Dispositivopi waqaychasqa: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surahs downloaded';
  }

  @override
  String get redownloadMissingRepair => 'Allchay / Descarga Falta';

  @override
  String get downloadAction => 'Uraykachiy';

  @override
  String get resumeDownload => 'Hinalla uraykachiy';

  @override
  String get deleteDownloadedFiles => 'Descargasqa Archivokunata chinkachiy';

  @override
  String get downloadCancelling => 'Cancelando...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return '$reciter nisqapaq descarga cancelasqa.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return '$reciter nisqapaq uraykachiy tukusqa.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return '$reciter kaqpaq uraykachiy tukusqa $failed mana atisqa surahkunawan ($downloaded/$total uraykachisqa).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return '$reciter kaqpaq mana tinkisqa willañiqikunata qullusqa.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Verified Quran audio sources are unavailable right now.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Chiqapchasqa Quran uyarina paquete mana hunt\'asqachu ($available/$total). Audio catálogo musuqyachisqa kaptin hukmanta kallpanchakuy.';
  }

  @override
  String get chatbotHint => 'Ask a question...';

  @override
  String get chatbotThinking => 'Thinking...';

  @override
  String get sukunMixerSubtitle => 'Naturaleza & Qur\'an Mezclador';

  @override
  String get audioPlayFailed => 'Uyarinapaq uyariyqa manam allinchu karqa';

  @override
  String get sukunNatureLabel => 'Sukun (Pachamama) .';

  @override
  String get sukunRainOfMercy => 'Khuyapayakuy Para';

  @override
  String get sukunGardenOfPeace => 'Hawka Kawsay Huerta';

  @override
  String get sukunMidnightCalm => 'Chawpi tuta Thak';

  @override
  String get sukunOceanTawheed => 'Mama qucha Tawheed';

  @override
  String get sukunUnavailableTitle => 'Paisajes de sonido mana tarikuq';

  @override
  String get sukunUnavailableBody =>
      'Kay ruwayqa manaraqmi Sukun soundscape kaqpa mañasqa kaqninkunata churanchu.';

  @override
  String get prayerCompletion => 'Mañakuy Tukuchiy';

  @override
  String get streaks => 'Rayakuna';

  @override
  String get dayStreak => 'P’unchaw racha';

  @override
  String get bestStreak => 'Aswan allin racha';

  @override
  String get chatbotCloudAiLabel => 'Puyu AI';

  @override
  String get chatbotLocalAiLabel => 'Mana tinkisqa Fallback';

  @override
  String get chatbotUseCloudAi => 'Cloud AI (Gemini) nisqawan llamk\'achiy.';

  @override
  String get chatbotDownloadLocalAi => 'Mana tinkisqa Fallback nisqa atichiy';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Puyu API mana wakichisqachu. Chiqapchasqa mana tinkisqa islammanta pusayqa manaraqmi kanchu.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Chiqapchasqa llaqta islam pusayqa manaraqmi kanchu. Puyu AI kaqman tikray pukyuta kutichiykunapaq.';

  @override
  String get mosques => 'Mezquitakuna';

  @override
  String get halalFood => 'Halal Mikhuna';

  @override
  String get placesSearchArea => 'Kay kitipi maskay';

  @override
  String get nearbyMosques => 'Mezquitakuna qayllapi';

  @override
  String get islamicSchools => 'Islam Yachay Wasikuna';

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
      'Llika pantasqa. Ama hina kaspa, hukmanta kallpachakuy.';

  @override
  String get placesLocationRequiredTitle => 'Maypi kasqanmi necesitakun';

  @override
  String get placesLocationRequiredBody =>
      'Ñawpaqtaqa huk sitiota churay chaynapi qaylla mezquitakunata, halal mikhuykunata, islam escuelakunatapas allinta maskanankupaq.';

  @override
  String get placesMapTilesUnavailableTitle => 'Mapa azulejos mana tarikuq';

  @override
  String get placesMapTilesUnavailableBody =>
      'Huk chiqapchasqa mapa azulejo pukyuta manaraqmi kay ruranapaq wakichisqachu. Hichpallapi kaq sitiokunaqa waqaychasqa kasqaykimantaraqmi cargayta atinku.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'Mana tarikuq willakuykunata churan';

  @override
  String get placesDataSourceUnavailableBody =>
      'Huk chiqaqchasqa kitikuna willay tukukuyqa manaraqmi kay ruwanapaq wakichisqachu. PLACES_OVERPASS_API_URL huk aprobasqa proxyman utaq quqman churay manaraq qaylla maskana atichichkaspa.';

  @override
  String get unknownPlaceName => 'Mana riqsisqa Suti';

  @override
  String get islamicPlaceFallback => 'Islamic Lugar';

  @override
  String get asmaMeaning1 => 'Allin sunquyuq';

  @override
  String get asmaMeaning2 => 'Khuyapayakuq';

  @override
  String get asmaMeaning3 => 'Rey / Wiñay Wiñay Apu';

  @override
  String get asmaMeaning4 => 'Ancha Ch\'uya';

  @override
  String get asmaMeaning5 => 'Hawka Kawsaypa Pukyu';

  @override
  String get asmaMeaning6 => 'Seguridad nisqa qoq';

  @override
  String get asmaMeaning7 =>
      'The Watchful Guardian, who observes and safeguards all creation.';

  @override
  String get asmaMeaning8 => 'El Valor / Aswan atiyniyuq';

  @override
  String get asmaMeaning9 => 'Chay Tantachiq';

  @override
  String get asmaMeaning10 => 'Aswan Hatun';

  @override
  String get asmaMeaning11 => 'Kamaq';

  @override
  String get asmaMeaning12 => 'Orden Ruraq';

  @override
  String get asmaMeaning13 => 'Sumaq kay Ruwaq';

  @override
  String get asmaMeaning14 => 'Pampachaq';

  @override
  String get asmaMeaning15 => 'Chay Subdominante nisqa';

  @override
  String get asmaMeaning16 => 'Tukuypa Quq';

  @override
  String get asmaMeaning17 => 'El Sostenedor';

  @override
  String get asmaMeaning18 => 'Kichariq';

  @override
  String get asmaMeaning19 => 'Tukuy Yachaq';

  @override
  String get asmaMeaning20 =>
      'The Withholder, who narrows and restrains by wisdom.';

  @override
  String get asmaMeaning21 => 'Chay Relevador nisqa';

  @override
  String get asmaMeaning22 => 'Chay Abaser';

  @override
  String get asmaMeaning23 => 'Hatun Kamachiq';

  @override
  String get asmaMeaning24 => 'Honor qoq runa';

  @override
  String get asmaMeaning25 => 'Humilador nisqa';

  @override
  String get asmaMeaning26 => 'Tukuypa Uyariq';

  @override
  String get asmaMeaning27 => 'Tukuy Rikuq';

  @override
  String get asmaMeaning28 => 'Juez';

  @override
  String get asmaMeaning29 => 'El Justo';

  @override
  String get asmaMeaning30 => 'El Subtil';

  @override
  String get asmaMeaning31 => 'Tukuy Yachaq';

  @override
  String get asmaMeaning32 => 'Ñawpa tayta-mamayoq';

  @override
  String get asmaMeaning33 => 'El Magnífico';

  @override
  String get asmaMeaning34 => 'Hatun Pampachaq';

  @override
  String get asmaMeaning35 => 'Agradecekuymanta Premiador';

  @override
  String get asmaMeaning36 => 'Aswan Alto kaq';

  @override
  String get asmaMeaning37 => 'Aswan Hatun';

  @override
  String get asmaMeaning38 => 'Chay Waqaychaq';

  @override
  String get asmaMeaning39 => 'El Nutridor';

  @override
  String get asmaMeaning40 => 'Chay Contador nisqa';

  @override
  String get asmaMeaning41 => 'El Majestuoso nisqa';

  @override
  String get asmaMeaning42 => 'Chay Qukuykuq';

  @override
  String get asmaMeaning43 => 'Rikch’akuq runa';

  @override
  String get asmaMeaning44 => 'Mañakuyman kutichiq';

  @override
  String get asmaMeaning45 => 'Tukuy Hamut’aq';

  @override
  String get asmaMeaning46 => 'Perfectamente Yachaysapakuna';

  @override
  String get asmaMeaning47 => 'Munakuq';

  @override
  String get asmaMeaning48 => 'Aswan Gloria kaq';

  @override
  String get asmaMeaning49 => 'Kawsarimpuq';

  @override
  String get asmaMeaning50 => 'Chay Testigo';

  @override
  String get asmaMeaning51 => 'Chiqap kaq';

  @override
  String get asmaMeaning52 => 'Tukuy imayuq Fideicomisario';

  @override
  String get asmaMeaning53 => 'Tukuy Kallpayuq';

  @override
  String get asmaMeaning54 => 'Chay kallpasapa';

  @override
  String get asmaMeaning55 => 'Chay Amachaq';

  @override
  String get asmaMeaning56 => 'Alabasqa';

  @override
  String get asmaMeaning57 => 'Chay Tasaq';

  @override
  String get asmaMeaning58 => 'Qallariy';

  @override
  String get asmaMeaning59 => 'Chay Restaurador nisqa';

  @override
  String get asmaMeaning60 => 'Kawsay Quq';

  @override
  String get asmaMeaning61 => 'Kawsay Hap’iq';

  @override
  String get asmaMeaning62 => 'Wiñay Kawsaq';

  @override
  String get asmaMeaning63 => 'Kikinmanta kawsaq Sustentador';

  @override
  String get asmaMeaning64 => 'Tariq';

  @override
  String get asmaMeaning65 => 'Chay Glorioso';

  @override
  String get asmaMeaning66 => 'Sapallanmi';

  @override
  String get asmaMeaning67 => 'Chay Huk';

  @override
  String get asmaMeaning68 => 'Llapallanpa maskasqan';

  @override
  String get asmaMeaning69 => 'Atiyniyuq';

  @override
  String get asmaMeaning70 => 'Tukuy atiy Kamaq';

  @override
  String get asmaMeaning71 => 'Chay Expedidor nisqa';

  @override
  String get asmaMeaning72 => 'Chay Tardaq';

  @override
  String get asmaMeaning73 => 'Ñawpaq kaq';

  @override
  String get asmaMeaning74 => 'Qhipa kaq';

  @override
  String get asmaMeaning75 => 'Chay Manifiesto nisqa';

  @override
  String get asmaMeaning76 => 'Pakasqa';

  @override
  String get asmaMeaning77 => 'Kamachiq';

  @override
  String get asmaMeaning78 => 'Ancha Hatun kaq';

  @override
  String get asmaMeaning79 => 'Allin Ruwaq';

  @override
  String get asmaMeaning80 => 'Arrepentikunapaq pusaq';

  @override
  String get asmaMeaning81 => 'El Vengador';

  @override
  String get asmaMeaning82 => 'Pampachaq';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'Tukuypa Dueñon / Soberano';

  @override
  String get asmaMeaning85 => 'Majestad y Recompensa nisqapa Dueñon';

  @override
  String get asmaMeaning86 => 'El Equitable nisqa';

  @override
  String get asmaMeaning87 => 'Huñuq';

  @override
  String get asmaMeaning88 => 'Qhapaq';

  @override
  String get asmaMeaning89 => 'Qhapaqyachiq';

  @override
  String get asmaMeaning90 => 'Daños nisqamanta hark’aq';

  @override
  String get asmaMeaning91 => 'Dañota apamuq';

  @override
  String get asmaMeaning92 => 'Beneficiokunata qoq';

  @override
  String get asmaMeaning93 => 'Chay K’anchay';

  @override
  String get asmaMeaning94 => 'Chay Pusaq';

  @override
  String get asmaMeaning95 => 'Qallariy';

  @override
  String get asmaMeaning96 => 'Wiñaypaq kaq';

  @override
  String get asmaMeaning97 => 'Heredero nisqa';

  @override
  String get asmaMeaning98 => 'Aswan chanin pusaq';

  @override
  String get asmaMeaning99 =>
      'The Patient, who does not hasten punishment and acts with perfect forbearance.';
}
