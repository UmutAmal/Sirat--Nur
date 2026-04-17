// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ganda Luganda (`lg`).
class AppLocalizationsLg extends AppLocalizations {
  AppLocalizationsLg([String locale = 'lg']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Islamic Way of Light';

  @override
  String get home => 'Ewaka';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Kalenda';

  @override
  String get settings => 'Ensengeka';

  @override
  String get nextPrayer => 'Essaala Eddako';

  @override
  String get prayerTimes => 'Ebiseera by\'okusaba';

  @override
  String get continueReading => 'Continue Reading';

  @override
  String get getLifetimePro => 'Get Lifetime Pro';

  @override
  String get unlockTajweed => 'Unlock Tajweed & Advanced Features';

  @override
  String get prayerCalculation => 'Okubala Okusaba';

  @override
  String get method => 'Enkola y’okubalirira';

  @override
  String get madhab => 'Asr Enkola y’Ebyamateeka';

  @override
  String get surahs => 'Surahs eziyitibwa Surahs';

  @override
  String get ayahs => 'Ayahs';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Enjuba okuvaayo';

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
    return 'Ekiseera kya $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Kye kiseera okusaba $prayerName.';
  }

  @override
  String get dataStorage => 'Data & Okutereka';

  @override
  String get clearCache => 'Clear Cache';

  @override
  String get cacheClearedSuccess => 'Cache yalongoosezza bulungi';

  @override
  String get location => 'Ekifo';

  @override
  String get language => 'Olulimi';

  @override
  String get selectLanguage => 'Londa Olulimi';

  @override
  String get searchLanguage => 'Search 180+ languages...';

  @override
  String get systemDefault => 'Enkola Default';

  @override
  String get currentLocation => 'Ekifo ekiriwo kati (GPS) .';

  @override
  String get locationServiceDisabled => 'Empeereza y\'ekifo eremeddwa.';

  @override
  String get locationPermissionDenied => 'Olukusa lw\'ekifo lugaaniddwa.';

  @override
  String get locationDetectionFailed =>
      'Teyasobodde kuzuula kifo kyo. Nsaba olonde ekibuga mu ngalo oba ddamu ogezeeko.';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => 'Okunoonya';

  @override
  String get searchHint => 'Okunoonya...';

  @override
  String get noResults => 'No results found';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get appErrorOccurred => 'Ensobi ebaddewo';

  @override
  String get appUnknownError => 'Ensobi etamanyiddwa';

  @override
  String get quranLoadFailed =>
      'Ebirimu ku Quran tebyasobodde kutikkibwa. Nsaba oddemu ogezeeko.';

  @override
  String get retry => 'Ddamu gezaako';

  @override
  String get refreshAction => 'Refresh';

  @override
  String get cancel => 'okusazaamu';

  @override
  String get save => 'Okununula';

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
  String get no => 'Nedda';

  @override
  String get surah => 'Surah';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Juzu';

  @override
  String get page => 'Omuko';

  @override
  String get reading => 'Reading';

  @override
  String get recitation => 'Recitation';

  @override
  String get translation => 'Translation';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Okutikka tafsir...';

  @override
  String get tafsirSourceLabel => 'Tafsir ensonda';

  @override
  String get tafsirNoSurahFound => 'Tewali tafsir ezuuliddwa ku surah eno.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Tewali tafsir ezuuliddwa ku ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir teyasobodde kutikkibwa.';

  @override
  String get tafsirNoTextForAyah => 'Tewali kiwandiiko kya tafsir ku ayah eno.';

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
    return 'Ensibuko ya Tafsir yazzaayo ensobi ya HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Ensibuko ya tafsir erongooseddwa teyazzaayo biwandiiko byonna.';

  @override
  String get tafsirCacheUnavailable =>
      'Verified tafsir tennafuna ku mukutu gwa yintaneeti. Sync sourced tafsir dataset nga tonnaba kugenda mu maaso.';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get addBookmark => 'Yongera ku Bookmark';

  @override
  String get removeBookmark => 'Ggyawo Bookmark';

  @override
  String get lastRead => 'Last Read';

  @override
  String get dailyZikr => 'Daily Zikr';

  @override
  String get duaMeaning1 =>
      'abalala basaba nti, ‘Mukama waffe, tuwe ebirungi mu nsi ne ku nkomerero, era otukuume okuva mu kubonyaabonyezebwa kw’omuliro.’';

  @override
  String get duaMeaning2 =>
      'Katonda tazitoowerera mwoyo gwonna okusinga bwe gusobola okugumira: buli omu afuna ekirungi kyonna ky’akoze, era n’abonyaabonyezebwa ebibi byakyo- ‘ Mukama, totutwala ku mulimu bwe twerabira oba nga tukola ensobi. Mukama, totuzitoowerera nga bwe wazitoowerera abo abatusooka. Mukama, totuzitoowerera nnyo okusinga bwe tulina amaanyi okwetikka. Tusonyiwe, tusonyiwe, era tusaasire. Ggwe Mukuumi waffe, kale tuyambe ku batakkiriza.’';

  @override
  String get duaMeaning3 =>
      '‘Mukama waffe, toleka mitima gyaffe kuva ku mulamwa ng’omaze okutulungamya. Tuwe okusaasira Kwo: Ggwe Agaba Bulijjo.';

  @override
  String get duaMeaning4 =>
      'Mukama, mpa nze n’ezzadde lyange tugende mu maaso n’okusaba. Mukama waffe kkiriza okusaba kwange.';

  @override
  String get duaMeaning5 =>
      'era wansi ekiwawaatiro kyo mu bwetoowaze gye bali mu kisa era ogambe nti, ‘Mukama waffe, basaasire, nga bwe banfaako nga nkyali muto.’';

  @override
  String get duaMeaning6 =>
      'Katonda agulumizibwe, oyo afuga mu mazima. [Nnabbi], toyanguwa kusoma ng’okubikkulirwa tekunnaggwa mu bujjuvu wabula gamba nti, ‘Mukama, nnyongera okumanya!’';

  @override
  String get duaMeaning7 =>
      'Gamba [Nabbi] nti, ‘Mukama, sonyiwa era osaasire: Ggwe asinga bonna.’';

  @override
  String get duaMeaning8 =>
      'abo abasaba nti, ‘Mukama waffe, tuwe essanyu mu bafumbo n’ezzadde lyaffe. Tufuule ebyokulabirako ebirungi eri abo abakumanyi’.';

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
  String get hadithCollection => 'Okukunganya Hadith';

  @override
  String get hadithBooks => 'Ebitabo bya Hadith';

  @override
  String get searchHadith => 'Noonya Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna, omuwandiisi w’ebitabo';

  @override
  String get namesOfAllah => 'Amannya ga Allah';

  @override
  String get liveTv => 'Ttivvi ya butereevu';

  @override
  String get watchLive => 'Laba Live';

  @override
  String get streamError => 'Ensobi mu mugga';

  @override
  String get reload => 'Ddamu okutikka';

  @override
  String get openInYoutube => 'Ggulawo mu YouTube';

  @override
  String get ibadahTracker => 'Omulondozi wa Ibadah';

  @override
  String get fasting => 'Okusiiba';

  @override
  String get quranReading => 'Okusoma Quran';

  @override
  String get prayers => 'Okusaba';

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
  String get weeklyProgress => 'Enkulaakulana eya buli wiiki';

  @override
  String get monthlyProgress => 'Monthly Progress';

  @override
  String get statistics => 'Statistics';

  @override
  String get hijriCalendar => 'Kalenda ya Hijri';

  @override
  String get gregorianCalendar => 'Gregorian Calendar';

  @override
  String get today => 'Leero';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get specialDays => 'Ennaku ez\'enjawulo';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Omwaka omuggya ogw\'Obusiraamu';

  @override
  String get mawlidAnNabi => 'Mawlid ne Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadhan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadhan';

  @override
  String get specialDayDateEidAlFitr => '1 Shawwal, omuwandiisi w’ebitabo';

  @override
  String get specialDayDateEidAlAdha => '10 Dhul Hijjah';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharram';

  @override
  String get specialDayDateMawlidAnNabi =>
      '12 Rabi al-Awwal, omuwandiisi w’ebitabo';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'Qibla Obulagirizi';

  @override
  String get compass => 'Kampasi';

  @override
  String get degrees => 'degrees';

  @override
  String get north => 'North';

  @override
  String get qiblaFound => 'Qibla yazuuliddwa!';

  @override
  String get turnDevice => 'Kyuusa ekyuma kyo kitunule mu Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Ensobi mu kampasi: $error .';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Sensulo ya kkampasi tesangibwa ku kyuma kino.';

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
  String get theme => 'Omulamwa';

  @override
  String get lightMode => 'Omutindo gw’Ekitangaala';

  @override
  String get darkMode => 'Omutindo gw’Ekizikiza';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'Ku';

  @override
  String get version => 'Ekika';

  @override
  String get privacyPolicy => 'Enkola y’Ebyama';

  @override
  String get termsOfService => 'Ebiragiro by’Empeereza';

  @override
  String get contactUs => 'Tukwasaganye';

  @override
  String get rateApp => 'Rate App';

  @override
  String get shareApp => 'Gabana App';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'Ebiwanuddwa';

  @override
  String get downloading => 'Okuwanula...';

  @override
  String get downloadComplete => 'Download Complete';

  @override
  String get downloadFailed => 'Download Failed';

  @override
  String get offlineMode => 'Omutindo ogutali ku mutimbagano';

  @override
  String get noInternet => 'No Internet Connection';

  @override
  String get checkConnection => 'Nsaba okebere omukutu gwo';

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
  String get getStarted => 'Tandika';

  @override
  String get skip => 'Skip';

  @override
  String get next => 'Ekiddako';

  @override
  String get done => 'Okumala';

  @override
  String get onboarding1Title => 'Mwaniriziddwa mu Sirat-ı Nur';

  @override
  String get onboarding1Desc =>
      'App yo enzijuvu ey\'omukwano gw\'Obusiraamu ku biseera by\'okusaba, Quran, n\'ebirala';

  @override
  String get onboarding2Title => 'Ebiseera by\'okusaba';

  @override
  String get onboarding2Desc =>
      'Ebiseera by’okusaba ebituufu okusinziira ku kifo ky’olimu';

  @override
  String get onboarding3Title => 'Quran & Ebisingawo';

  @override
  String get onboarding3Desc =>
      'Soma Quran, olondoole okusoma kwo, era onoonye ebirimu eby’Obusiraamu';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'Okuzzaawo Counter';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'Target: $target';
  }

  @override
  String get tapToCount => 'Koona ku kubala';

  @override
  String get zikrCompletedMashAllah => 'Kiwedde! MashAllah';

  @override
  String get zikrMeaningSubhanAllah => 'Allah asinga wala buli butatuukiridde.';

  @override
  String get zikrMeaningAlhamdulillah => 'Amatendo gonna ga Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah y’asinga obukulu.';

  @override
  String get zikrMeaningLaIlahaIllallah =>
      'Tewali katonda yenna okuggyako Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Nsaba Allah okusonyiyibwa.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Tewali maanyi na maanyi okuggyako okuyita mu Allah.';

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
  String get dailyProgress => 'Enkulaakulana ya Buli lunaku';

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
      'Ddamu okebere embeera y\'okuwandiika kwa premium';

  @override
  String get syncStore =>
      'Sync ne app store okukakasa nti premium subscription yo.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'Okuwandiisa kwa Premium kukakasiddwa.';

  @override
  String get premiumNotFound => 'Premium subscription tezuuliddwa.';

  @override
  String premiumRefreshError(Object error) {
    return 'Teyasobodde kuzza buggya mbeera ya kuwandiisa ya premium: $error';
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
  String get checkingQuranDb => 'Okukebera database ya Quran...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'Embeera ya Quran Database';

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
  String get qiblaCalibration => 'Okupima kwa Qibla';

  @override
  String get compassSmoothing => 'Okugonza Kampasi';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Okukyusakyusa mu kupima';

  @override
  String currentOffset(Object offset) {
    return 'Current: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Teekateeka singa kkampasi yo yeetaaga okutereezebwa mu ngalo. Emiwendo emirungi gikyukakyuka mu ssaawa.';

  @override
  String get apply => 'Teeka mu nkola enkyukakyuka';

  @override
  String get resetOnboarding => 'Ddamu okuteekawo enteekateeka y\'ennyanjula';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Okuzuula obulwadde';

  @override
  String get diagnosticsNotSet => 'Tekiteekeddwawo';

  @override
  String get diagnosticsPrayerProfile => 'Ebikwata ku kusaba';

  @override
  String get diagnosticsPrayerSource => 'Ekitongole ekivunaanyizibwa ku kusaba';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Enkoona z’ennono ez’omu ngalo (tewali nsibuko ya kitongole) .';

  @override
  String get diagnosticsCloudDriven => 'Ekire Ekivugibwa';

  @override
  String get diagnosticsAdhanAudioAssets =>
      'Adhan Eby\'obugagga by\'amaloboozi';

  @override
  String get diagnosticsUiAudioAssets => 'Eby’obugagga by’amaloboozi ebya UI';

  @override
  String get diagnosticsQuranAudioAssets =>
      'Eby\'obugagga by\'amaloboozi ga Quran';

  @override
  String get diagnosticsAudioAssets => 'Eby’obugagga by’amaloboozi';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count fayiro za fayiro';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Okusoma kwa manifesiti kulemereddwa: $error .';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Ebitundu by’Ekitundu';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count ewagirwa';
  }

  @override
  String get diagnosticsQuranDataset => 'Ebikwata ku Quran Dataset';

  @override
  String get diagnosticsQuranSurahs => 'Surah za Quran';

  @override
  String get diagnosticsQuranAyahs => 'Ayah za Quran';

  @override
  String get diagnosticsQuranJuzMetadata => 'Kulaani Juz Metadata';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Cloud tables missing in Supabase; bundled fallback active';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Okukebera ekire kulemereddwa: $error .';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz metadata missing; bundled structural fallback active';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Okukebera enzimba y\'ekire kulemereddwa: $error .';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Okupima (calibration) kyetaagisa. Zingulula ekyuma mu kifaananyi-8.';

  @override
  String get dailyVerse => 'Olunyiriri lwa Buli lunaku';

  @override
  String get todaysIbadah => 'Ibadah ya leero';

  @override
  String get quickAccess => 'Okutuuka ku Mangu';

  @override
  String get assistant => 'Omuyambi';

  @override
  String get places => 'Ebifo';

  @override
  String get library => 'Ekizimbe ekibeeramu ebitabo';

  @override
  String get analytics => 'Okwekenenya';

  @override
  String get dailyDuas => 'Buli lunaku Duas';

  @override
  String essentialDuas(String count) {
    return '$count essential duas';
  }

  @override
  String get duaUnavailableTitle => 'Verified duas tezinnabaawo';

  @override
  String get duaUnavailableBody =>
      'Verified daily duas tezinnaba kukwatagana na kyuma kino. Yunga ku nsibuko y\'ekire okutikka duas ezisibuka mu kifo ky\'okugwa emabega okutakakasiddwa.';

  @override
  String get duaCategoryQuranic => 'Dua ya Quran';

  @override
  String get duaCategoryMorningEvening => 'Enkya & Akawungeezi';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Obukuumi';

  @override
  String get duaCategoryBeginning => 'Entandikwa';

  @override
  String get duaCategorySleep => 'Otulo';

  @override
  String get duaCategoryFoodDrink => 'Emmere & Ebyokunywa';

  @override
  String get duaCategoryForgiveness => 'Okusonyiwa';

  @override
  String get duaCategoryHome => 'Ewaka';

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
  String get islamicEducation => 'Ebyenjigiriza by’Obusiraamu';

  @override
  String get sukunAudioTitle => 'Sukun Ebifaananyi by’amaloboozi';

  @override
  String get hadithCollections => 'Ebikuŋŋaanyiziddwa mu Hadith';

  @override
  String get hadithSourcePending => 'Ensonda ekakasiddwa nga bwerindirira';

  @override
  String get hadithUnavailableTitle =>
      'Ebikuŋŋaanyizo bya hadith ebikakasibwa tebinnaba kufunibwa';

  @override
  String get hadithUnavailableBody =>
      'Okuzimba kuno kukyasinziira ku feed ya hadith ey’ebweru etakakasiddwa. Okulambula Hadith kusigala nga kulemeseddwa okutuusa nga dataset evuddemu ekwataganye.';

  @override
  String get paywallUnlockAll =>
      'Sumulula ebintu byonna ebikwata ku lugendo lwo olw’omwoyo';

  @override
  String get premiumProductUnavailable =>
      'Premium product tesangibwa mu kiseera kino. Nsaba oddemu ogezeeko oluvannyuma.';

  @override
  String get premiumPurchaseFailed =>
      'Okugula tekwasobodde kumalibwa. Nsaba oddemu ogezeeko.';

  @override
  String get paywallFeature1Title => 'Omuyambi w’obusimu Plus';

  @override
  String get paywallFeature1Desc => 'Q&A ezitaliiko kkomo ezikozesa AI';

  @override
  String get paywallFeature2Title => 'Tewali kkomo Offline';

  @override
  String get paywallFeature2Desc => 'Wano wefunire ebisomeddwa byonna';

  @override
  String get paywallFeature3Title => 'Dizayini ez’enjawulo';

  @override
  String get paywallFeature3Desc => 'Emiramwa & efonti za Premium';

  @override
  String get paywallFeature4Title => 'Ad-Free';

  @override
  String get paywallFeature4Desc => 'Ebirango bya zero';

  @override
  String get paywallGetAccess => 'Funa Obulamu Bwonna — \$1.00';

  @override
  String get restorePurchases => 'Okuzzaawo Ebintu Ebiguliddwa';

  @override
  String get zakatCalculator => 'Ekyuma ekibalirira Zakat';

  @override
  String get zakatGold => 'Zaabu (Altın) .';

  @override
  String get zakatSilver => 'Ffeeza (Gümüş) .';

  @override
  String get zakatCashBank => 'Ssente enkalu / Bbanka';

  @override
  String get zakatBusiness => 'Bizinensi';

  @override
  String get zakatInvestments => 'Ensimbi eziteekebwamu ssente';

  @override
  String get zakatWeightGrams => 'Obuzito (g) .';

  @override
  String get zakatPricePerGram => 'Bbeeyi/g';

  @override
  String get zakatTotalAmount => 'Omuwendo gwonna awamu';

  @override
  String get zakatInventoryValue => 'Omuwendo gw’Ebintu';

  @override
  String get zakatDebts => 'Amabanja';

  @override
  String get zakatTotal => 'Okugatta';

  @override
  String get calculateZakat => 'Bala Zakat';

  @override
  String get nisabNotReached => 'Nisab tatuuse. Zaka si kikakatako.';

  @override
  String get totalZakat => 'Zaka zonna awamu';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zaka ya Zaabu';

  @override
  String get zakatSilverZakat => 'Zaka ya ffeeza';

  @override
  String get zakatCashZakat => 'Zaka ya ssente enkalu';

  @override
  String get zakatBusinessZakat => 'Zaka ya bizinensi';

  @override
  String get zakatInvestmentZakat => 'Zaka y\'okusiga ensimbi';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Ekkomo ku kubuuza buli lunaku lituuse. Upgrade ku Premium ku unlimited.';

  @override
  String get chatbotErrorMsg =>
      'Nnali sisobola kuleeta kuddamu. Nsaba oddemu ogezeeko.';

  @override
  String get chatbotOfflinePrompt =>
      'Ekifo eky’okumanya kw’Obusiraamu ekikakasiddwa nga tekirina mutimbagano kikyakuumibwa. Osobola okusobozesa offline fallback kati, naye ejja kulaga obubaka obutono bwokka obutebenkevu okutuusa nga dataset evudde ensibuko yeetegese.\n\nWandyagadde okusobozesa okugwa ku mutimbagano?';

  @override
  String get chatbotOfflineSwitched =>
      'Offline fallback esobozeseddwa. Eby\'okuddamu by\'Obusiraamu eby\'omu kitundu ebikakasibwa tebinnaba kwetegekera.';

  @override
  String get chatbotOfflineDownloadLabel => 'Ssobozesa Okugwa ku mutimbagano';

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
      'Ebipapula by\'amaloboozi ga Quran ebitali ku mutimbagano';

  @override
  String storedOnDeviceMb(String size) {
    return 'Eterekeddwa ku kyuma: $size MB';
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
    return 'Fayiro ezitali ku mutimbagano zasaziddwamu ku $reciter.';
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
  String get sukunMixerSubtitle => 'Obutonde & Qur\'an Omutabula';

  @override
  String get audioPlayFailed => 'Okuzannya amaloboozi kulemereddwa';

  @override
  String get sukunNatureLabel => 'Sukun (Obutonde) .';

  @override
  String get sukunRainOfMercy => 'Enkuba y\'Ekisa';

  @override
  String get sukunGardenOfPeace => 'Olusuku lw’Emirembe';

  @override
  String get sukunMidnightCalm => 'Mu ttuntu Obukkakkamu';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Soundscapes teziriiwo';

  @override
  String get sukunUnavailableBody =>
      'Okuzimba kuno tekuliimu bintu bya Sukun soundscape ebyetaagisa n\'okutuusa kati.';

  @override
  String get prayerCompletion => 'Okumaliriza Okusaba';

  @override
  String get streaks => 'Emisinde egy’enjawulo';

  @override
  String get dayStreak => 'Olunaku oluddirira';

  @override
  String get bestStreak => 'Omutendera ogusinga obulungi';

  @override
  String get chatbotCloudAiLabel => 'Ekire AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'Kozesa Cloud AI (Gemini) .';

  @override
  String get chatbotDownloadLocalAi => 'Ssobozesa Okugwa ku mutimbagano';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API tetegekeddwa. Verified offline Obulagirizi bw\'Obusiraamu tebunnafunibwa.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Obulagirizi bw\'Obusiraamu obw\'omu kitundu obukakasibwa tebunnabaawo. Kyusa ku Cloud AI okufuna eby\'okuddamu ebifunibwa.';

  @override
  String get mosques => 'Emizikiti';

  @override
  String get halalFood => 'Emmere ya Halal';

  @override
  String get placesSearchArea => 'Noonya ekitundu kino';

  @override
  String get nearbyMosques => 'Emizikiti egiriraanyewo';

  @override
  String get islamicSchools => 'Amasomero g’Obusiraamu';

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
    return 'Ensobi mu API: $statusCode .';
  }

  @override
  String get placesNetworkError =>
      'Ensobi mu mutimbagano. Nsaba oddemu ogezeeko.';

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
  String get unknownPlaceName => 'Erinnya eritamanyiddwa';

  @override
  String get islamicPlaceFallback => 'Ekifo ky\'Obusiraamu';

  @override
  String get asmaMeaning1 => 'Omuganyulo';

  @override
  String get asmaMeaning2 => 'Omusaasizi';

  @override
  String get asmaMeaning3 => 'Kabaka / Mukama ow\'olubeerera';

  @override
  String get asmaMeaning4 => 'Omutukuvu Ennyo';

  @override
  String get asmaMeaning5 => 'Ensibuko y’Emirembe';

  @override
  String get asmaMeaning6 => 'Omuwa Obukuumi';

  @override
  String get asmaMeaning7 => 'Olupapula lwa Guardian';

  @override
  String get asmaMeaning8 => 'Ow\'omuwendo / Ow\'amaanyi';

  @override
  String get asmaMeaning9 => 'Omuwaliriza';

  @override
  String get asmaMeaning10 => 'Ekisinga Obukulu';

  @override
  String get asmaMeaning11 => 'Omutonzi';

  @override
  String get asmaMeaning12 => 'Omukozi w’Entegeka';

  @override
  String get asmaMeaning13 => 'Omubumba w’Obulungi';

  @override
  String get asmaMeaning14 => 'Abasonyiwa';

  @override
  String get asmaMeaning15 => 'Omuwanguzi';

  @override
  String get asmaMeaning16 => 'Omugabi wa Byonna';

  @override
  String get asmaMeaning17 => 'Omuyimirizaawo';

  @override
  String get asmaMeaning18 => 'Omuggulawo';

  @override
  String get asmaMeaning19 => 'Omumanyi wa Bonna';

  @override
  String get asmaMeaning20 => 'Omuzimbi';

  @override
  String get asmaMeaning21 => 'Omuwummuza';

  @override
  String get asmaMeaning22 => 'Omubaser';

  @override
  String get asmaMeaning23 => 'Omugulumivu';

  @override
  String get asmaMeaning24 => 'Omugabi w’Ekitiibwa';

  @override
  String get asmaMeaning25 => 'Omuswaza';

  @override
  String get asmaMeaning26 => 'Omuwulizi wa Byonna';

  @override
  String get asmaMeaning27 => 'Omulabi wa Bonna';

  @override
  String get asmaMeaning28 => 'Omulamuzi';

  @override
  String get asmaMeaning29 => 'Abatuukirivu';

  @override
  String get asmaMeaning30 => 'Oyo Omutegeevu';

  @override
  String get asmaMeaning31 => 'Abamanyi Bonna';

  @override
  String get asmaMeaning32 => 'Omuzadde';

  @override
  String get asmaMeaning33 => 'Eky’Ekitalo';

  @override
  String get asmaMeaning34 => 'Omusonyiwa Omukulu';

  @override
  String get asmaMeaning35 => 'Omuwa empeera y’okwebaza';

  @override
  String get asmaMeaning36 => 'Oyo Asinga Waggulu';

  @override
  String get asmaMeaning37 => 'Ekisinga Obukulu';

  @override
  String get asmaMeaning38 => 'Omukuumi w’ebintu';

  @override
  String get asmaMeaning39 => 'Omuliisa';

  @override
  String get asmaMeaning40 => 'Omubalirizi w’ebitabo';

  @override
  String get asmaMeaning41 => 'Omukulu';

  @override
  String get asmaMeaning42 => 'Abagabi';

  @override
  String get asmaMeaning43 => 'Oyo Atunula';

  @override
  String get asmaMeaning44 => 'Omuddamu essaala';

  @override
  String get asmaMeaning45 => 'The All Comprehending';

  @override
  String get asmaMeaning46 => 'Omugezi Atuukiridde';

  @override
  String get asmaMeaning47 => 'Okwagala';

  @override
  String get asmaMeaning48 => 'Oyo Asinga Ekitiibwa';

  @override
  String get asmaMeaning49 => 'Omuzuukiza';

  @override
  String get asmaMeaning50 => 'Omujulirwa';

  @override
  String get asmaMeaning51 => 'Amazima';

  @override
  String get asmaMeaning52 => 'Omuwanika Amala Byonna';

  @override
  String get asmaMeaning53 => 'Omulina Amaanyi Gonna';

  @override
  String get asmaMeaning54 => 'Abalina Amaanyi';

  @override
  String get asmaMeaning55 => 'Omukuumi';

  @override
  String get asmaMeaning56 => 'Abatenderezebwa';

  @override
  String get asmaMeaning57 => 'Omubalirizi w’ebitabo';

  @override
  String get asmaMeaning58 => 'Omutandisi';

  @override
  String get asmaMeaning59 => 'Omuzzaawo';

  @override
  String get asmaMeaning60 => 'Omugabi w’Obulamu';

  @override
  String get asmaMeaning61 => 'Omutwalizi w’Obulamu';

  @override
  String get asmaMeaning62 => 'Abalamu Bulijjo';

  @override
  String get asmaMeaning63 => 'Omuyimirizaawo Yeeyimirizaawo';

  @override
  String get asmaMeaning64 => 'Omuzuula';

  @override
  String get asmaMeaning65 => 'Aba Ekitiibwa';

  @override
  String get asmaMeaning66 => 'Oyo Yekka';

  @override
  String get asmaMeaning67 => 'Oyo';

  @override
  String get asmaMeaning68 => 'Oyo Anoonyezebwa Bonna';

  @override
  String get asmaMeaning69 => 'Abalina Amaanyi';

  @override
  String get asmaMeaning70 => 'Omutonzi w’amaanyi gonna';

  @override
  String get asmaMeaning71 => 'Omuwandiisi w’Ensimbi';

  @override
  String get asmaMeaning72 => 'Omulwawo';

  @override
  String get asmaMeaning73 => 'Ekisooka';

  @override
  String get asmaMeaning74 => 'Ekisembayo';

  @override
  String get asmaMeaning75 => 'Ekyeyoleka';

  @override
  String get asmaMeaning76 => 'Ebikwekeddwa';

  @override
  String get asmaMeaning77 => 'Gavana';

  @override
  String get asmaMeaning78 => 'Oyo ow’oku ntikko';

  @override
  String get asmaMeaning79 => 'Omukozi w’Ebirungi';

  @override
  String get asmaMeaning80 => 'Obulagirizi bw’Okwenenya';

  @override
  String get asmaMeaning81 => 'Omusasuzi w’eggwanga';

  @override
  String get asmaMeaning82 => 'Omusonyiwa';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'Nnannyini / Omufuzi wa Bonna';

  @override
  String get asmaMeaning85 => 'Omulina Obwa Majesty ne Bounty';

  @override
  String get asmaMeaning86 => 'Oyo ow’obwenkanya';

  @override
  String get asmaMeaning87 => 'Omukung’aanya';

  @override
  String get asmaMeaning88 => 'Omugagga';

  @override
  String get asmaMeaning89 => 'Omugagga';

  @override
  String get asmaMeaning90 => 'Omuziyiza Obulabe';

  @override
  String get asmaMeaning91 => 'Omuleeta Obubi';

  @override
  String get asmaMeaning92 => 'Omugabi w’Emigaso';

  @override
  String get asmaMeaning93 => 'Ekitangaala';

  @override
  String get asmaMeaning94 => 'Omulungamya';

  @override
  String get asmaMeaning95 => 'Omutandisi';

  @override
  String get asmaMeaning96 => 'Oyo Ataggwaawo';

  @override
  String get asmaMeaning97 => 'Omusika';

  @override
  String get asmaMeaning98 => 'Omulagirizi Asinga Obutuukirivu';

  @override
  String get asmaMeaning99 => 'Oyo Omulwadde';
}
