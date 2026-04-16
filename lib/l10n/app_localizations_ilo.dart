// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Iloko (`ilo`).
class AppLocalizationsIlo extends AppLocalizations {
  AppLocalizationsIlo([String locale = 'ilo']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Islamic Way of Light';

  @override
  String get home => 'Taeng';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Kalendario';

  @override
  String get settings => 'Dagiti Setting';

  @override
  String get nextPrayer => 'Sumaruno a Kararag';

  @override
  String get prayerTimes => 'Panawen ti Kararag';

  @override
  String get continueReading => 'Ituloy ti Panagbasa';

  @override
  String get getLifetimePro => 'Mangala iti Lifetime Pro';

  @override
  String get unlockTajweed => 'Ilukat ti Tajweed & Narang-ay a Tampok';

  @override
  String get prayerCalculation => 'Kalkulasion ti Kararag';

  @override
  String get method => 'Pamay-an ti Panagkuenta';

  @override
  String get madhab => 'Asr Pamay-an ti Huristiko';

  @override
  String get surahs => 'Dagiti Surah';

  @override
  String get ayahs => 'Ayahs nga';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Panagsilnag ti init';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Maghrib nga';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Oras para iti $prayerName.';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Panawenen ti panagkararag $prayerName.';
  }

  @override
  String get dataStorage => 'Datos & Pagidulin';

  @override
  String get clearCache => 'I-clear ti Cache';

  @override
  String get cacheClearedSuccess => 'Naballigi a na-clear ti cache';

  @override
  String get location => 'Lugar';

  @override
  String get language => 'Pagsasao';

  @override
  String get selectLanguage => 'Pilien ti Lenguahe';

  @override
  String get searchLanguage => 'Agbirok iti 180+ a pagsasao...';

  @override
  String get systemDefault => 'Default ti Sistema';

  @override
  String get currentLocation => 'Agdama a Lugar (GPS) .';

  @override
  String get locationServiceDisabled => 'Nabaldado ti serbisio ti lokasion.';

  @override
  String get locationPermissionDenied =>
      'Napagkedkedan ti pammalubos ti lokasion.';

  @override
  String get locationDetectionFailed =>
      'Saan a naduktalan ti lokasionmo. Pangngaasi a mangpili iti siudad a manual wenno padasen manen.';

  @override
  String citiesCount(String count) {
    return '$count dagiti siudad';
  }

  @override
  String get search => 'Agbirok';

  @override
  String get searchHint => 'Agbirok iti...';

  @override
  String get noResults => 'No results found';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get appErrorOccurred => 'Napasamak ti biddut';

  @override
  String get appUnknownError => 'Di ammo a biddut';

  @override
  String get quranLoadFailed =>
      'Saan a mabalin a maikarga ti linaon ti Quran. Pangngaasiyo ta padasenyo manen.';

  @override
  String get retry => 'Padasem manen';

  @override
  String get refreshAction => 'Refresh';

  @override
  String get cancel => 'Kanselaen';

  @override
  String get save => 'Idulin';

  @override
  String get delete => 'Delete';

  @override
  String get edit => 'Urnosen ti';

  @override
  String get close => 'Agserra';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Wen';

  @override
  String get no => 'Saan';

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
  String get reading => 'Panagbasa';

  @override
  String get recitation => 'Panagsao';

  @override
  String get translation => 'Panagpatarus';

  @override
  String get tafsir => 'Tafsir nga';

  @override
  String get tafsirLoading => 'Nagkarga ti tafsir...';

  @override
  String get tafsirSourceLabel => 'Tafsir a nagtaudan';

  @override
  String get tafsirNoSurahFound =>
      'Awan ti nasarakan a tafsir para iti daytoy a surah.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Awan ti nasarakan a tafsir para iti ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Saan a makarga ti Tafsir.';

  @override
  String get tafsirNoTextForAyah =>
      'Awan ti tafsir text para iti daytoy nga ayah.';

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
    return 'Ti taudan ti Tafsir ket nangisubli ti biddut ti HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Ti napili a taudan ti tafsir ket awan ti insublina nga entry.';

  @override
  String get tafsirCacheUnavailable =>
      'Ti naberipikado a tafsir ket saan pay a magun-od iti offline. I-sync ti nagtaudan a tafsir dataset sakbay ti panag-browse.';

  @override
  String get bookmarks => 'Dagiti Bookmark';

  @override
  String get addBookmark => 'Inayon ti Bookmark';

  @override
  String get removeBookmark => 'Ikkaten ti Bookmark';

  @override
  String get lastRead => 'Maudi a Panagbasa';

  @override
  String get dailyZikr => 'Inaldaw a Zikr';

  @override
  String get duaMeaning1 =>
      'ikararag dagiti dadduma, ‘Apomi, ikkannakami iti naimbag iti daytoy a lubong ken iti Akin-awid, ket salaknibannakami manipud iti pannakatutuok ti Apoy.’';

  @override
  String get duaMeaning2 =>
      'Saan a padagsenan ti Dios ti asinoman a kararua iti ad-adu ngem ti kabaelanna: tunggal maysa ket makagun-od iti aniaman a naimbag nga inaramidna, ken agsagaba iti dakesna- ‘ Apo, dinakami ibaklay no malipatan wenno agkamalitayo. Apo, saannakami a padagsenan a kas iti panangpadagsenmo kadagiti immun-una kadakami. Apo, saannaka a padagsenan iti ad-adu ngem ti pigsatayo a mangibaklay. Pakawannakami, pakawanennakami, ken kaasiannakami. Sika ti Manangsalaknib kadakami, isu a tulongannakami a maibusor kadagiti di mamati.’';

  @override
  String get duaMeaning3 =>
      '‘Apomi, dimo ipalubos a sumiasi dagiti pusomi kalpasan nga inwanwannakami. Itedmo kadakami ti asimo: Sika ti Agnanayon a Manangted.';

  @override
  String get duaMeaning4 =>
      'Apo, ipalubosmo nga itultuloyko ken dagiti kaputotak ti kararag. Apotayo, awatem ti kiddawko.';

  @override
  String get duaMeaning5 =>
      'ket ibabam ti payakmo a sipapakumbaba kadakuada buyogen ti kinaimbag ket kunaem, ‘Apo, kaasiam ida, kas iti panangaywanda kaniak idi ubingak pay.’';

  @override
  String get duaMeaning6 =>
      'maitan-ok koma ti Dios, daydiay pudpudno a mangkonkontrol. [Propeta], dika agdardaras nga agbasa sakbay a naan-anay a makompleto ti paltiing no di ket ibagam, ‘Apo, paaduennak iti pannakaammo!’';

  @override
  String get duaMeaning7 =>
      'Ibagam [Propeta], ‘Apo, pakawanem ken kaasiam: Sika ti kaasi kadagiti amin.’';

  @override
  String get duaMeaning8 =>
      'dagidiay agkarkararag, ‘Apomi, ikkannakami iti rag-o kadagiti assawa ken kaputotanmi. Aramidennakami a nasayaat nga ehemplo kadagidiay makaammo Kenka’.';

  @override
  String get morningZikr => 'Agsapa Zikr';

  @override
  String get eveningZikr => 'Malem Zikr';

  @override
  String get tasbih => 'Tasbih nga';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masa\'il';

  @override
  String get hadith => 'Hadith ti';

  @override
  String get hadithCollection => 'Koleksion ti Hadith';

  @override
  String get hadithBooks => 'Dagiti Libro ti Hadith';

  @override
  String get searchHadith => 'Agbirok iti Hadith';

  @override
  String get asmaulHusna => 'Ni Asma-ul-Husna ket ni Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Dagiti nagan ni Allah';

  @override
  String get liveTv => 'Live TV';

  @override
  String get watchLive => 'Buyaen ti Live';

  @override
  String get streamError => 'Biddut ti panagayus';

  @override
  String get reload => 'Ikarga manen';

  @override
  String get openInYoutube => 'Lumakad iti YouTube';

  @override
  String get ibadahTracker => 'Ibadah nga Pagsurot';

  @override
  String get fasting => 'Panagayuno';

  @override
  String get quranReading => 'Panagbasa iti Quran';

  @override
  String get prayers => 'Dagiti kararag';

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
  String get dhikrCount => 'Dhikr nga Konde';

  @override
  String get weeklyProgress => 'Linnawas a Panagrang-ay';

  @override
  String get monthlyProgress => 'Binulan a Panagrang-ay';

  @override
  String get statistics => 'Estadistika';

  @override
  String get hijriCalendar => 'Kalendario ti Hijri';

  @override
  String get gregorianCalendar => 'Kalendario Gregoriano';

  @override
  String get today => 'Ita nga aldaw';

  @override
  String get tomorrow => 'Inton bigat';

  @override
  String get yesterday => 'Idi kalman';

  @override
  String get specialDays => 'Naisangsangayan nga Aldaw';

  @override
  String get ramadan => 'Ramadan nga';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha nga Eid';

  @override
  String get islamicNewYear => 'Islamiko a Baro a Tawen';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 nga Ramadan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadan nga aldaw';

  @override
  String get specialDayDateEidAlFitr => '1 Ni Shawwal';

  @override
  String get specialDayDateEidAlAdha => '10 Ti Dhul Hijjah';

  @override
  String get specialDayDateIslamicNewYear => '1 Ni Muharram';

  @override
  String get specialDayDateMawlidAnNabi => '12 Ni Rabi al-Awwal ti nagsurat';

  @override
  String get laylatAlQadr => 'Ni Laylat Al-Qadr ken ni';

  @override
  String get qiblaDirection => 'Direksion ti Qibla';

  @override
  String get compass => 'Kompas nga';

  @override
  String get degrees => 'degrees';

  @override
  String get north => 'Amianan';

  @override
  String get qiblaFound => 'Qibla ti nasarakan!';

  @override
  String get turnDevice => 'Iturno ti device-mo tapno sumango iti Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Biddut ti kompas: $error .';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Saan a magun-odan ti compass sensor iti daytoy nga alikamen.';

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
  String get notifications => 'Dagiti Pakaammo';

  @override
  String get prayerNotifications => 'Dagiti Pakaammo iti Kararag';

  @override
  String get enableNotifications => 'Pagbalinen a Pakaammo';

  @override
  String get notificationTime => 'Oras ti Pakaammo';

  @override
  String get beforePrayer => 'minuto sakbay ti kararag';

  @override
  String get theme => 'Tema';

  @override
  String get lightMode => 'Modo ti Lawag';

  @override
  String get darkMode => 'Nasipnget a Modo';

  @override
  String get systemTheme => 'Tema ti Sistema';

  @override
  String get about => 'Maipapan iti';

  @override
  String get version => 'Bersion';

  @override
  String get privacyPolicy => 'Pagannurotan iti Kinapribado';

  @override
  String get termsOfService => 'Dagiti Kondision ti Serbisio';

  @override
  String get contactUs => 'Kontaken Kadakami';

  @override
  String get rateApp => 'Rate ti App';

  @override
  String get shareApp => 'Ibinglay ti App';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'Dagiti nai-download';

  @override
  String get downloading => 'Pag-download ti...';

  @override
  String get downloadComplete => 'Download Complete';

  @override
  String get downloadFailed => 'Download Failed';

  @override
  String get offlineMode => 'Offline nga Modo';

  @override
  String get noInternet => 'No Internet Connection';

  @override
  String get checkConnection => 'Pangngaasiyo ta kitaenyo ti koneksionyo';

  @override
  String get premium => 'Premium';

  @override
  String get upgradeToPro => 'Ag-upgrade iti Pro';

  @override
  String get proFeatures => 'Dagiti Tampok ti Pro';

  @override
  String get removeAds => 'Ikkaten dagiti Ads';

  @override
  String get unlockAll => 'Ilukat ti Amin a Linaon';

  @override
  String get exclusiveContent => 'Eksklusibo a Linaon';

  @override
  String get welcome => 'Maikablaawkayo';

  @override
  String get getStarted => 'Mangrugika';

  @override
  String get skip => 'Laktawan';

  @override
  String get next => 'Sumaruno';

  @override
  String get done => 'Naaramiden';

  @override
  String get onboarding1Title => 'Maikablaawkayo iti Sirat-ı Nur';

  @override
  String get onboarding1Desc =>
      'Ti kompleto nga Islamic companion app-yo para kadagiti oras ti kararag, Quran, ken dadduma pay';

  @override
  String get onboarding2Title => 'Panawen ti Kararag';

  @override
  String get onboarding2Desc =>
      'Umiso nga oras ti panagkararag maibatay iti ayanmo';

  @override
  String get onboarding3Title => 'Quran & Ad-adu pay';

  @override
  String get onboarding3Desc =>
      'Basaen ti Quran, subadan ti panagbasam, ken sukimatem ti linaon ti Islam';

  @override
  String get dhikrLibrary => 'Libraria ti Dhikr';

  @override
  String get resetCounter => 'I-reset ti Counter';

  @override
  String get changeTarget => 'Baliwan ti Target';

  @override
  String get newTarget => 'Baro a Target';

  @override
  String targetCount(Object target) {
    return 'Target: $target .';
  }

  @override
  String get tapToCount => 'I-tap tapno mabilang';

  @override
  String get zikrCompletedMashAllah => 'Nalpasen! MashAllah nga ni';

  @override
  String get zikrMeaningSubhanAllah =>
      'Adayo a nangatngato ngem ni Allah iti tunggal kinaimperpekto.';

  @override
  String get zikrMeaningAlhamdulillah =>
      'Amin a pammadayaw ket kukua ni Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Ni Allah ti Kadakkelan.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Awan ti dios no di ni Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Sapsapulek ti pammakawan ni Allah.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Awan ti bileg ken pigsa malaksid babaen ken Allah.';

  @override
  String get dailyChecklist => 'Inaldaw a Listaan ti Panangsukimat';

  @override
  String get qazaDebt => 'Qaza (Utang) .';

  @override
  String get resetQazaData => 'I-reset ti Datos ti Qaza';

  @override
  String get resetQazaDebtQuestion => 'I-reset ti Utang ti Qaza?';

  @override
  String get rawatib => 'Rawatib';

  @override
  String get tahajjud => 'Tahajjud ni Tahajjud';

  @override
  String get dailyProgress => 'Inaldaw a Panagrang-ay';

  @override
  String get mandatoryPrayers => 'Dagiti Mandatory a Kararag';

  @override
  String get sunnahAndOthers => 'Sunnah & Dagiti Dadduma pay';

  @override
  String get spiritualGrowth => 'Naespirituan a Panagrang-ay';

  @override
  String get mandatoryDuty => 'Mandatory nga Pagrebbengan';

  @override
  String get totalPrayers => 'Dagup a Kararag';

  @override
  String get prayerDebt => 'Utang ti Kararag';

  @override
  String get fastingDebt => 'Utang ti Panagayunar';

  @override
  String get reset => 'I-reset-na';

  @override
  String get days => 'Aldaw';

  @override
  String get premiumIntegrity => 'Premium nga Integridad';

  @override
  String get recheckPremium =>
      'Sukimaten manen ti kasasaad ti premium subscription';

  @override
  String get syncStore =>
      'Ag-sync iti app store tapno mapasingkedan ti premium subscription-mo.';

  @override
  String get checkingPremium => 'Ti panangsukimat iti kasasaad ti premium...';

  @override
  String get premiumVerified => 'Naberipika ti premium a suskripsion.';

  @override
  String get premiumNotFound => 'Saan a nasarakan ti premium subscription.';

  @override
  String premiumRefreshError(Object error) {
    return 'Saan a ma-refresh ti kasasaad ti suskrision ti premium: $error .';
  }

  @override
  String get offlineDownloadManager => 'Offline Download Manager';

  @override
  String get manageDatasets =>
      'Imanehar dagiti dakkel nga offline nga audio & dataset pack.';

  @override
  String get freeStorage => 'Libre ti internal device storage.';

  @override
  String get quranIntegrity => 'Kinatarnaw ti Quran';

  @override
  String get checkQuranDb => 'Sukimaten ti Database ti Quran';

  @override
  String get verifyQuranContent =>
      'Beripikar ti 114 a surah ken 6236 nga ayah.';

  @override
  String get checkingQuranDb => 'Ti panangsukimat iti database ti Quran...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Saan a kompleto';

  @override
  String get notSeeded => 'Saan a nabukel';

  @override
  String get quranDbStatus => 'Kasasaad ti Database ti Quran';

  @override
  String statusLabel(Object status) {
    return 'Kasasaad: $status .';
  }

  @override
  String surahsCount(Object count) {
    return 'Surahs: $count (manamnama a 114) .';
  }

  @override
  String ayahsCount(Object count) {
    return 'Ayahs: $count (manamnama a 6236) .';
  }

  @override
  String missingArabic(Object count) {
    return 'Nakurang nga Arabiko: $count .';
  }

  @override
  String missingTurkish(Object count) {
    return 'Napukaw a Turko: $count .';
  }

  @override
  String dbVersion(Object version) {
    return 'Bersion ti DB: $version';
  }

  @override
  String dbPath(Object path) {
    return 'Dalan: $path.';
  }

  @override
  String quranCheckFailed(Object error) {
    return 'Napaay ti panangsukimat ti Quran: $error .';
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
  String get fajrAngle => 'Fajr nga Anggulo';

  @override
  String get ishaAngle => 'Isha nga Anggulo';

  @override
  String get qiblaCalibration => 'Kalibrasion ti Qibla';

  @override
  String get compassSmoothing => 'Panag-smoothing ti Kompas';

  @override
  String get reduceSensorJitter =>
      'Kissayan ti sensor jitter para iti nataltalged a dagum.';

  @override
  String get calibrationOffset => 'Offset ti Kalibrasion';

  @override
  String currentOffset(Object offset) {
    return 'Agdama: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Ibagaymo no kasapulan ti kompasmo ti manual a panangkorehir. Agturong dagiti positibo a pateg iti agpakannawan ti relo.';

  @override
  String get apply => 'Iyaplikar dagiti panagbalbaliw';

  @override
  String get resetOnboarding => 'I-reset ti intro a panagisaad';

  @override
  String get rerunSetup => 'Ipataray manen ti umuna a proseso ti panagisaad.';

  @override
  String get diagnostics => 'Dagiti panagdayagnos';

  @override
  String get diagnosticsNotSet => 'Saan a naikeddeng';

  @override
  String get diagnosticsPrayerProfile => 'Profile ti Kararag';

  @override
  String get diagnosticsPrayerSource => 'Autoridad ti Kararag';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Dagiti manual a kostumbre nga anggulo (awan ti institusional a gubuayan) .';

  @override
  String get diagnosticsCloudDriven => 'Cloud Driven';

  @override
  String get diagnosticsAdhanAudioAssets => 'Dagiti Asset ti Audio ti Adhan';

  @override
  String get diagnosticsUiAudioAssets => 'Dagiti Asset ti Audio ti UI';

  @override
  String get diagnosticsQuranAudioAssets => 'Dagiti Asset ti Audio ti Quran';

  @override
  String get diagnosticsAudioAssets => 'Dagiti Asset ti Audio';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count dagiti file';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Napaay ti panagbasa ti manipesto: $error .';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Dagiti Lokal ti Lokalisasion';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count ti nasuportaran';
  }

  @override
  String get diagnosticsQuranDataset => 'Dataset ti Quran';

  @override
  String get diagnosticsQuranSurahs => 'Dagiti Surah ti Quran';

  @override
  String get diagnosticsQuranAyahs => 'Dagiti Ayah ti Quran';

  @override
  String get diagnosticsQuranJuzMetadata => 'Metadata ti Quran Juz';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Cloud tables missing in Supabase; bundled fallback active';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Napaay ti panangsukimat iti ulep: $error .';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz metadata missing; bundled structural fallback active';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Napaay ti estruktural a tseke ti ulep: $error .';
  }

  @override
  String get healthCheckDesc =>
      'Ipataray dagiti panangsukimat iti salun-at ken kitaen ti kasasaad ti sistema.';

  @override
  String get qiblaAligned => 'Qibla Naitunos';

  @override
  String get rotateToFindQibla => 'Agturong tapno Agbirok iti Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Masapul ti kalibrasion. I-rotate ti device iti figure-8.';

  @override
  String get dailyVerse => 'Inaldaw a Bersikulo';

  @override
  String get todaysIbadah => 'Ibadah ita nga aldaw';

  @override
  String get quickAccess => 'Napartak a Pannakagun-od';

  @override
  String get assistant => 'Mangbaddang';

  @override
  String get places => 'Dagiti lugar';

  @override
  String get library => 'Biblioteka';

  @override
  String get analytics => 'Analitika';

  @override
  String get dailyDuas => 'Inaldaw a Duas';

  @override
  String essentialDuas(String count) {
    return '$count nasken a duas';
  }

  @override
  String get duaUnavailableTitle => 'Saan pay a magun-od dagiti verified duas';

  @override
  String get duaUnavailableBody =>
      'Dagiti naberipikado nga inaldaw a dua ket saan pay a nai-sync iti daytoy nga alikamen. Konektaen ti gubuayan ti ulep tapno maikarga dagiti nagtaudan a duas imbes a ti saan a naberipikado a fallback.';

  @override
  String get duaCategoryQuranic => 'Quranic dua';

  @override
  String get duaCategoryMorningEvening => 'Agsapa & Malem';

  @override
  String get duaCategoryTasbih => 'Tasbih nga';

  @override
  String get duaCategoryProtection => 'Pannakasalaknib';

  @override
  String get duaCategoryBeginning => 'Dagiti pangrugian';

  @override
  String get duaCategorySleep => 'Maturog';

  @override
  String get duaCategoryFoodDrink => 'Taraon & Inumen';

  @override
  String get duaCategoryForgiveness => 'Pammakawan';

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
  String get islamicEducation => 'Islamiko nga Edukasion';

  @override
  String get sukunAudioTitle => 'Dagiti buya ti Uni nga Sukun';

  @override
  String get hadithCollections => 'Dagiti Koleksion ti Hadith';

  @override
  String get hadithSourcePending => 'Beripikado a gubuayan ti nakasagana';

  @override
  String get hadithUnavailableTitle =>
      'Saan pay a magun-od dagiti naberipikado a koleksion ti hadith';

  @override
  String get hadithUnavailableBody =>
      'Daytoy a panagbangon ket agpannuray pay laeng iti saan a naberipikado nga akinruar a hadith feed. Ti panag-browse ti Hadith ket agtalinaed a nabalbaliwan aginggana ti maysa a nagtaudan a dataset ket mai-sync.';

  @override
  String get paywallUnlockAll =>
      'Ilukat ti amin a tampok para iti naespirituan a panagdaliasatmo';

  @override
  String get premiumProductUnavailable =>
      'Saan a magun-odan ti premium product ita. Pangngaasiyo ta padasenyo manen inton agangay.';

  @override
  String get premiumPurchaseFailed =>
      'Saan a nakompleto ti panaggatang. Pangngaasiyo ta padasenyo manen.';

  @override
  String get paywallFeature1Title => 'Katulongan ti Neural Plus';

  @override
  String get paywallFeature1Desc => 'Awan limitasionna nga AI-powered Q&A';

  @override
  String get paywallFeature2Title => 'Awan limitasionna nga Offline';

  @override
  String get paywallFeature2Desc => 'I-download amin a recitation';

  @override
  String get paywallFeature3Title => 'Dagiti Eksklusibo a Disenyo';

  @override
  String get paywallFeature3Desc => 'Premium nga tema & font';

  @override
  String get paywallFeature4Title => 'Ad-Libre nga Anunsio';

  @override
  String get paywallFeature4Desc => 'Zero dagiti anunsio';

  @override
  String get paywallGetAccess => 'Get Lifetime Access — \$1.00';

  @override
  String get restorePurchases => 'Isubli Dagiti Gatang';

  @override
  String get zakatCalculator => 'Kalkulador ti Zakat';

  @override
  String get zakatGold => 'Balitok (Altın) .';

  @override
  String get zakatSilver => 'Pirak (Gümüş) .';

  @override
  String get zakatCashBank => 'Kuarta / Banko';

  @override
  String get zakatBusiness => 'Negosio';

  @override
  String get zakatInvestments => 'Dagiti Puonan';

  @override
  String get zakatWeightGrams => 'Timbang (g) .';

  @override
  String get zakatPricePerGram => 'Presyo/g';

  @override
  String get zakatTotalAmount => 'Dagup a Kantidad';

  @override
  String get zakatInventoryValue => 'Pateg ti Imbentaryo';

  @override
  String get zakatDebts => 'Utang';

  @override
  String get zakatTotal => 'Dagup';

  @override
  String get calculateZakat => 'Karkuloen ti Zakat';

  @override
  String get nisabNotReached =>
      'Saan a nakadanon ni Nisab. Saan nga obligado ti Zakat.';

  @override
  String get totalZakat => 'Dagup ti Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'Balitok nga Zakat';

  @override
  String get zakatSilverZakat => 'Pirak nga Zakat';

  @override
  String get zakatCashZakat => 'Zakat ti kuarta';

  @override
  String get zakatBusinessZakat => 'Zakat ti Negosyo';

  @override
  String get zakatInvestmentZakat => 'Zakat ti Puonan';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Inaldaw a limitasion ti saludsod ti naabot. Upgrade iti Premium para iti awan limitasionna.';

  @override
  String get chatbotErrorMsg =>
      'Diak makapataud iti sungbat. Pangngaasiyo ta padasenyo manen.';

  @override
  String get chatbotOfflinePrompt =>
      'Ti naberipikado nga offline Islamic knowledge base ket ma-curate pay laeng. Mabalinmo nga ipalubos ti offline fallback ita, ngem ipakitana laeng dagiti limitado a natalged a mensahe agingga a nakasaganan ti nagtaudan a dataset.\n\nKayatmo kadi nga ipalubos ti offline fallback?';

  @override
  String get chatbotOfflineSwitched =>
      'Na-enable ti offline a fallback. Saan pay a nakasagana dagiti naberipikado a lokal nga Islamiko a sungbat.';

  @override
  String get chatbotOfflineDownloadLabel => 'Pagbalinen nga Offline Fallback';

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
  String get offlineQuranAudioPacks => 'Offline nga Quran nga Audio Packs';

  @override
  String storedOnDeviceMb(String size) {
    return 'Naidulin iti alikamen: $size MB';
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
    return 'Naikkat dagiti offline a file para iti $reciter.';
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
  String get sukunMixerSubtitle => 'Nakaparsuaan & Qur\'an Mixer';

  @override
  String get audioPlayFailed => 'Napaay ti panagtokar ti audio';

  @override
  String get sukunNatureLabel => 'Sukun (Nakaparsuaan) .';

  @override
  String get sukunRainOfMercy => 'Tudo ti Asi';

  @override
  String get sukunGardenOfPeace => 'Hardin ti Kappia';

  @override
  String get sukunMidnightCalm => 'Kalmado ti Tengnga ti Rabii';

  @override
  String get sukunOceanTawheed => 'Tawheed ti Taaw';

  @override
  String get sukunUnavailableTitle => 'Saan a magun-odan dagiti soundscape';

  @override
  String get sukunUnavailableBody =>
      'Daytoy a panagbangon ket saan pay a mangiraman kadagiti kasapulan nga Sukun soundscape assets.';

  @override
  String get prayerCompletion => 'Panangleppas iti Kararag';

  @override
  String get streaks => 'Dagiti garit';

  @override
  String get dayStreak => 'Aldaw a panagsasaruno';

  @override
  String get bestStreak => 'Kasayaatan nga streak';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Offline nga Fallback';

  @override
  String get chatbotUseCloudAi => 'Usaren ti Cloud AI (Gemini) .';

  @override
  String get chatbotDownloadLocalAi => 'Pagbalinen nga Offline Fallback';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count ti kannigid';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Saan a naikonfigura ti Cloud API. Saan pay a magun-od ti naberipikado nga offline nga Islamiko a panangiwanwan.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Saan pay a magun-od ti naberipikado a lokal nga Islamiko a panangiwanwan. Agbalbaliw iti Cloud AI para kadagiti nagtaudan a sungbat.';

  @override
  String get mosques => 'Dagiti Moske';

  @override
  String get halalFood => 'Taraon ti Halal';

  @override
  String get placesSearchArea => 'Sukisoken daytoy a lugar';

  @override
  String get nearbyMosques => 'Dagiti Asideg a Moske';

  @override
  String get islamicSchools => 'Dagiti Eskuelaan ti Islam';

  @override
  String placesFoundCount(String count) {
    return '$count ti nasarakan';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km ti kaadayona';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Biddut ti API: $statusCode .';
  }

  @override
  String get placesNetworkError =>
      'Biddut ti network. Pangngaasiyo ta padasenyo manen.';

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
  String get unknownPlaceName => 'Di Ammo a Nagan';

  @override
  String get islamicPlaceFallback => 'Islamiko a Lugar';

  @override
  String get asmaMeaning1 => 'Ti Makagunggona';

  @override
  String get asmaMeaning2 => 'Ti Manangngaasi';

  @override
  String get asmaMeaning3 => 'Ti Ari / Agnanayon nga Apo';

  @override
  String get asmaMeaning4 => 'Ti Kasasantuan';

  @override
  String get asmaMeaning5 => 'Ti Gubuayan ti Kappia';

  @override
  String get asmaMeaning6 => 'Ti Mangted ti Seguridad';

  @override
  String get asmaMeaning7 => 'Ti Guardian';

  @override
  String get asmaMeaning8 => 'Ti Napateg / Dagiti Kabilgan';

  @override
  String get asmaMeaning9 => 'Ti Mangipilit';

  @override
  String get asmaMeaning10 => 'Ti Kadakkelan';

  @override
  String get asmaMeaning11 => 'Ti Namarsua';

  @override
  String get asmaMeaning12 => 'Ti Nangaramid ti Urnos';

  @override
  String get asmaMeaning13 => 'Ti Mangporma iti Kinapintas';

  @override
  String get asmaMeaning14 => 'Ti Manangpakawan';

  @override
  String get asmaMeaning15 => 'Ti Naparmek';

  @override
  String get asmaMeaning16 => 'Ti Manangted ti Amin';

  @override
  String get asmaMeaning17 => 'Ti Mangsustiner';

  @override
  String get asmaMeaning18 => 'Ti Manglukat';

  @override
  String get asmaMeaning19 => 'Ti Ammo ti Amin';

  @override
  String get asmaMeaning20 => 'Ti Konstriktor';

  @override
  String get asmaMeaning21 => 'Ti Mangbang-ar';

  @override
  String get asmaMeaning22 => 'Ti Abaser';

  @override
  String get asmaMeaning23 => 'Ti Natan-ok';

  @override
  String get asmaMeaning24 => 'Ti Manangted ti Pammadayaw';

  @override
  String get asmaMeaning25 => 'Ti Manangibabain';

  @override
  String get asmaMeaning26 => 'Ti Dumdumngeg iti Amin';

  @override
  String get asmaMeaning27 => 'Ti Makita ti Amin';

  @override
  String get asmaMeaning28 => 'Ti Ukom';

  @override
  String get asmaMeaning29 => 'Ti Nalinteg';

  @override
  String get asmaMeaning30 => 'Ti Nasipnget';

  @override
  String get asmaMeaning31 => 'Ti Ammo ti Amin';

  @override
  String get asmaMeaning32 => 'Ti Panagpasingked';

  @override
  String get asmaMeaning33 => 'Ti Natan-ok';

  @override
  String get asmaMeaning34 => 'Ti Naindaklan a Manangpakawan';

  @override
  String get asmaMeaning35 => 'Ti Gunggona ti Panagyaman';

  @override
  String get asmaMeaning36 => 'Ti Kangatuan';

  @override
  String get asmaMeaning37 => 'Ti Kadakkelan';

  @override
  String get asmaMeaning38 => 'Ti Mangpreserba';

  @override
  String get asmaMeaning39 => 'Ti Mangtaraon';

  @override
  String get asmaMeaning40 => 'Ti Agkuenta';

  @override
  String get asmaMeaning41 => 'Ti Natan-ok';

  @override
  String get asmaMeaning42 => 'Ti Naparabur';

  @override
  String get asmaMeaning43 => 'Ti Nabantayan';

  @override
  String get asmaMeaning44 => 'Ti Mangsungbat iti Kararag';

  @override
  String get asmaMeaning45 => 'Ti Amin a Makaawat';

  @override
  String get asmaMeaning46 => 'Ti Naan-anay a Masirib';

  @override
  String get asmaMeaning47 => 'Ti Naayat';

  @override
  String get asmaMeaning48 => 'Ti Nadayag unay';

  @override
  String get asmaMeaning49 => 'Ti Nagungar';

  @override
  String get asmaMeaning50 => 'Ti Saksi';

  @override
  String get asmaMeaning51 => 'Ti Kinapudno';

  @override
  String get asmaMeaning52 => 'Ti Umdasen Amin a Trustee';

  @override
  String get asmaMeaning53 => 'Ti Agtagikua iti Amin a Pigsa';

  @override
  String get asmaMeaning54 => 'Ti Napilit';

  @override
  String get asmaMeaning55 => 'Ti Manangsalaknib';

  @override
  String get asmaMeaning56 => 'Ti Nadayaw';

  @override
  String get asmaMeaning57 => 'Ti Ag-appraiser';

  @override
  String get asmaMeaning58 => 'Ti Nangrugi';

  @override
  String get asmaMeaning59 => 'Ti Mangisubli';

  @override
  String get asmaMeaning60 => 'Ti Mangted ti Biag';

  @override
  String get asmaMeaning61 => 'Ti Mangala iti Biag';

  @override
  String get asmaMeaning62 => 'Ti Agnanayon nga Agbibiag';

  @override
  String get asmaMeaning63 => 'Ti Bukod a Mangsustiner';

  @override
  String get asmaMeaning64 => 'Ti Mangbirok';

  @override
  String get asmaMeaning65 => 'Ti Nadayag';

  @override
  String get asmaMeaning66 => 'Ti Laeng';

  @override
  String get asmaMeaning67 => 'Ti Maysa';

  @override
  String get asmaMeaning68 => 'Ti Maysa a Sapsapulen ti Amin';

  @override
  String get asmaMeaning69 => 'Ti Nabileg';

  @override
  String get asmaMeaning70 => 'Ti Namarsua iti amin a pannakabalin';

  @override
  String get asmaMeaning71 => 'Ti Agpadaras';

  @override
  String get asmaMeaning72 => 'Ti Mangtaktak';

  @override
  String get asmaMeaning73 => 'Ti Umuna';

  @override
  String get asmaMeaning74 => 'Ti Maudi';

  @override
  String get asmaMeaning75 => 'Ti Naiparangarang';

  @override
  String get asmaMeaning76 => 'Ti Nalimed';

  @override
  String get asmaMeaning77 => 'Ti Gobernador';

  @override
  String get asmaMeaning78 => 'Ti Katan-okan';

  @override
  String get asmaMeaning79 => 'Ti Agar-aramid iti Naimbag';

  @override
  String get asmaMeaning80 => 'Ti Giya iti Panagbabawi';

  @override
  String get asmaMeaning81 => 'Ti Manangibales';

  @override
  String get asmaMeaning82 => 'Ti Manangpakawan';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'Ti Agtagikua / Soberano ti Amin';

  @override
  String get asmaMeaning85 => 'Ti Agtagikua iti Kinadayag ken Kinadayaw';

  @override
  String get asmaMeaning86 => 'Ti Napatas';

  @override
  String get asmaMeaning87 => 'Ti Managtitipon';

  @override
  String get asmaMeaning88 => 'Ti Nabaknang';

  @override
  String get asmaMeaning89 => 'Ti Mangpabaknang';

  @override
  String get asmaMeaning90 => 'Ti Manglapped iti Pannakadangran';

  @override
  String get asmaMeaning91 => 'Ti Mangyeg iti Pannakadangran';

  @override
  String get asmaMeaning92 => 'Ti Mangted ti Benepisio';

  @override
  String get asmaMeaning93 => 'Ti Lawag';

  @override
  String get asmaMeaning94 => 'Ti Giya';

  @override
  String get asmaMeaning95 => 'Ti Nangrugi';

  @override
  String get asmaMeaning96 => 'Ti Agnanayon';

  @override
  String get asmaMeaning97 => 'Ti Agtawid';

  @override
  String get asmaMeaning98 => 'Ti Kalintegan a Giya';

  @override
  String get asmaMeaning99 => 'Ti Pasiente';
}
