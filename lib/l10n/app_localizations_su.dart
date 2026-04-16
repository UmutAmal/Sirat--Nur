// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sundanese (`su`).
class AppLocalizationsSu extends AppLocalizations {
  AppLocalizationsSu([String locale = 'su']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Jalan Islam Cahaya';

  @override
  String get home => 'Home';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Calendar';

  @override
  String get settings => 'Settings';

  @override
  String get nextPrayer => 'Next Prayer';

  @override
  String get prayerTimes => 'Prayer Times';

  @override
  String get continueReading => 'Continue Reading';

  @override
  String get getLifetimePro => 'Get Lifetime Pro';

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
  String get fajr => 'Subuh';

  @override
  String get sunrise => 'Panonpoé surup';

  @override
  String get dhuhr => 'Dzuhur';

  @override
  String get asr => 'Asar';

  @override
  String get maghrib => 'Magrib';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Waktu keur $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Geus waktuna pikeun ngadoa $prayerName.';
  }

  @override
  String get dataStorage => 'Data & Storage';

  @override
  String get clearCache => 'Clear Cache';

  @override
  String get cacheClearedSuccess => 'Cache cleared successfully';

  @override
  String get location => 'Location';

  @override
  String get language => 'Language';

  @override
  String get selectLanguage => 'Select Language';

  @override
  String get searchLanguage => 'Search 180+ languages...';

  @override
  String get systemDefault => 'System Default';

  @override
  String get currentLocation => 'Current Location (GPS)';

  @override
  String get locationServiceDisabled => 'Ladenan lokasi ditumpurkeun.';

  @override
  String get locationPermissionDenied => 'Idin lokasi ditolak.';

  @override
  String get locationDetectionFailed =>
      'Teu bisa ngadeteksi lokasi anjeun. Mangga pilih kota sacara manual atawa cobian deui.';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'Teu kapanggih hasil';

  @override
  String get loading => 'Ngamuat...';

  @override
  String get error => 'Kasalahan';

  @override
  String get appErrorOccurred => 'Aya kasalahan';

  @override
  String get appUnknownError => 'Kasalahan teu dipikanyaho';

  @override
  String get quranLoadFailed =>
      'eusi Quran teu bisa dimuat. Mangga cobian deui.';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Nyegerkeun';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Hapus';

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
  String get tafsirLoading => 'Ngamuat tafsir...';

  @override
  String get tafsirSourceLabel => 'Sumber Tafsir';

  @override
  String get tafsirNoSurahFound =>
      'Teu aya tafsir anu kapanggih pikeun surat ieu.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'No tafsir found for ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir teu bisa dimuat.';

  @override
  String get tafsirNoTextForAyah => 'Henteu aya téks tafsir pikeun ayat ieu.';

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
    return 'Sumber tafsir balik kasalahan HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Sumber tafsir anu dipilih teu aya deui entri.';

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
      'batur ngado\'a, \'Ya Tuhan kami, pasihan kami kahadéan di dunya sareng di ahérat, sareng lindungi kami tina siksa seuneu.\'';

  @override
  String get duaMeaning2 =>
      'Gusti henteu ngabeungbeuratan jiwa mana waé kalayan langkung ti anu tiasa nanggung: masing-masing nampi kasaéan naon waé anu parantos dilakukeun, sareng sangsara kagoréngan - \'Gusti, ulah nyandak tugas upami urang hilap atanapi ngalakukeun kasalahan. Gusti, ulah ngabeungbeuratan kami sakumaha Anjeun ngabeuratkeun jalma-jalma sateuacan kami. Gusti, ulah ngabeungbeuratan kami kalayan langkung ti anu kami kuatkeun. Hampura kami, hampura kami, sarta rahmat ka kami. Anjeun téh Panjaga kami, jadi tulungan kami ngalawan jalma-jalma kafir.\'';

  @override
  String get duaMeaning3 =>
      '\'Ya Rabb kami, ulah ngantepkeun hate kami jadi menyimpang sanggeus anjeun maparin pituduh ka kami. Pasihan kami rahmat anjeun: Anjeun Anu Maha Pasih.';

  @override
  String get duaMeaning4 =>
      'Gusti, pasihan abdi sareng turunan abdi tiasa nedunan solat. Nun Gusti, kabulkeun pamenta abdi.';

  @override
  String get duaMeaning5 =>
      'Jeung handap jangjang Anjeun dina humility ka maranehna dina kahadean jeung ucapkeun, \'Gusti, hampura aranjeunna, sakumaha aranjeunna miara kuring nalika kuring leutik.\'';

  @override
  String get duaMeaning6 =>
      'Maha Suci Allah, anu bener-bener ngawasa. [Nabi], ulah buru-buru maca sateuacan wahyu lengkep lengkep, tapi ucapkeun, \'Gusti, tambahkeun pangaweruh kuring!\'';

  @override
  String get duaMeaning7 =>
      'Ucapkeun [Nabi], \'Nun Gusti, hampura sareng welas asih: Anjeun anu paling welas asih.\'';

  @override
  String get duaMeaning8 =>
      'jalma-jalma anu ngadoa, \'Nun Gusti, pasihan abdi kabagjaan pikeun pasangan sareng turunan kami. Jadikeun kami conto anu hade pikeun jalma-jalma anu sadar kana Anjeun’.';

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
  String get hadith => 'Hadits';

  @override
  String get hadithCollection => 'Kumpulan Hadits';

  @override
  String get hadithBooks => 'Kitab Hadits';

  @override
  String get searchHadith => 'Pilarian Hadits';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Names of Allah';

  @override
  String get liveTv => 'Live TV';

  @override
  String get watchLive => 'Watch Live';

  @override
  String get streamError => 'Stream error';

  @override
  String get reload => 'Reload';

  @override
  String get openInYoutube => 'Buka dina YouTube';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Fasting';

  @override
  String get quranReading => 'Quran Reading';

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
  String get monthlyProgress => 'Monthly Progress';

  @override
  String get statistics => 'Statistics';

  @override
  String get hijriCalendar => 'Hijri Calendar';

  @override
  String get gregorianCalendar => 'Gregorian Calendar';

  @override
  String get today => 'Today';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get specialDays => 'Special Days';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Taun Anyar Islam';

  @override
  String get mawlidAnNabi => 'Maulid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadhan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadhan';

  @override
  String get specialDayDateEidAlFitr => '1 Syawal';

  @override
  String get specialDayDateEidAlAdha => '10 Dzulhijjah';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharram';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabiul Awal';

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
    return 'Kasalahan kompas: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Sénsor kompas henteu sayogi dina alat ieu.';

  @override
  String get qiblaLocationRequiredTitle => 'Lokasi diperlukeun pikeun Kiblat';

  @override
  String get qiblaLocationRequiredBody =>
      'Setel lokasi saleresna anjeun sateuacan nganggo kompas kiblat supados arahna tiasa diitung sacara akurat.';

  @override
  String get adhanNotificationChannelName => 'Bewara Adzan';

  @override
  String get adhanNotificationChannelDescription =>
      'Waktos solat ngageter ku sora adzan.';

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
  String get theme => 'Theme';

  @override
  String get lightMode => 'Light Mode';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'About';

  @override
  String get version => 'Version';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get termsOfService => 'Terms of Service';

  @override
  String get contactUs => 'Contact Us';

  @override
  String get rateApp => 'Rate App';

  @override
  String get shareApp => 'Share App';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Unduh Manajer';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Ngundeur Lengkep';

  @override
  String get downloadFailed => 'Ngundeur Gagal';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'Taya Konéksi Internét';

  @override
  String get checkConnection => 'Please check your connection';

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
  String get getStarted => 'Get Started';

  @override
  String get skip => 'Skip';

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
  String get onboarding2Desc => 'Accurate prayer times based on your location';

  @override
  String get onboarding3Title => 'Quran & More';

  @override
  String get onboarding3Desc =>
      'Read Quran, track your reading, and explore Islamic content';

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
  String get zikrCompletedMashAllah => 'Réngsé! MasyaAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah jauh di luhur sagala kasampurnaan.';

  @override
  String get zikrMeaningAlhamdulillah => 'Sadaya puji kagungan Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah Maha Agung.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Teu aya tuhan anging Alloh.';

  @override
  String get zikrMeaningAstaghfirullah => 'Abdi nyuhunkeun pangampura Alloh.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Teu aya kakuatan sareng kakuatan iwal ti Allah.';

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
  String get offlineDownloadManager => 'Manajer Unduh Offline';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Ngosongkeun panyimpenan alat internal.';

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
  String get audioVoice => 'Sora Audio';

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
  String get diagnosticsNotSet => 'Teu diatur';

  @override
  String get diagnosticsPrayerProfile => 'Propil Doa';

  @override
  String get diagnosticsPrayerSource => 'Pangawasa Sholat';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Sudut custom manual (euweuh sumber institusional)';

  @override
  String get diagnosticsCloudDriven => 'Awan disetir';

  @override
  String get diagnosticsAdhanAudioAssets => 'Aset Audio Adzan';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Aset Audio Quran';

  @override
  String get diagnosticsAudioAssets => 'Aset Audio';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count file';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Gagal maca manifestasi: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Lokalisasi Lokalisasi';

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
      'Méja awan leungit di Supabase; dibuntel fallback aktip';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Awan juz metadata leungit; dibuntel fallback struktural aktip';

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
  String get dailyVerse => 'Ayat poean';

  @override
  String get todaysIbadah => 'Ibadah ayeuna';

  @override
  String get quickAccess => 'Aksés Gancang';

  @override
  String get assistant => 'Asisten';

  @override
  String get places => 'Tempat-tempat';

  @override
  String get library => 'Perpustakaan';

  @override
  String get analytics => 'Analytics';

  @override
  String get dailyDuas => 'Duas poean';

  @override
  String essentialDuas(String count) {
    return '$count penting duas';
  }

  @override
  String get duaUnavailableTitle => 'duas diverifikasi teu sadia acan';

  @override
  String get duaUnavailableBody =>
      'Duas poean anu diverifikasi teu acan disingkronkeun ka alat ieu. Sambungkeun ka sumber awan pikeun muka duas sourced tinimbang fallback unverified.';

  @override
  String get duaCategoryQuranic => 'Qur\'an dua';

  @override
  String get duaCategoryMorningEvening => 'Isuk & Sore';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Panyalindungan';

  @override
  String get duaCategoryBeginning => 'Mimiti';

  @override
  String get duaCategorySleep => 'Saré';

  @override
  String get duaCategoryFoodDrink => 'Dahareun & Inuman';

  @override
  String get duaCategoryForgiveness => 'Hampura';

  @override
  String get duaCategoryHome => 'Imah';

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
  String get islamicEducation => 'Pendidikan Islam';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Kumpulan Hadits';

  @override
  String get hadithSourcePending => 'Sumber diverifikasi ngantosan';

  @override
  String get hadithUnavailableTitle =>
      'Koléksi hadits anu diverifikasi henteu acan sayogi';

  @override
  String get hadithUnavailableBody =>
      'Ieu ngawangun masih gumantung kana feed hadits éksternal unverified. Ngotéktak Hadits tetep ditumpurkeun dugi ka set data sumber disingkronkeun.';

  @override
  String get paywallUnlockAll =>
      'Buka konci sadaya fitur pikeun perjalanan spiritual anjeun';

  @override
  String get premiumProductUnavailable =>
      'Produk premium henteu sayogi ayeuna. Mangga cobian deui engké.';

  @override
  String get premiumPurchaseFailed =>
      'Meuli teu bisa réngsé. Mangga cobian deui.';

  @override
  String get paywallFeature1Title => 'Neural Asisten Ditambah';

  @override
  String get paywallFeature1Desc => 'Tanya Jawab AI-Powered Unlimited';

  @override
  String get paywallFeature2Title => 'Unlimited Offline';

  @override
  String get paywallFeature2Desc => 'Unduh sadaya bacaan';

  @override
  String get paywallFeature3Title => 'Desain ekslusif';

  @override
  String get paywallFeature3Desc => 'Téma & fon premium';

  @override
  String get paywallFeature4Title => 'Bébas Iklan';

  @override
  String get paywallFeature4Desc => 'Iklan nol';

  @override
  String get paywallGetAccess => 'Meunang Aksés Hirupna - \$1.00';

  @override
  String get restorePurchases => 'Mulangkeun Purchases';

  @override
  String get zakatCalculator => 'Kalkulator Zakat';

  @override
  String get zakatGold => 'Emas (Altın)';

  @override
  String get zakatSilver => 'pérak (Gümüş)';

  @override
  String get zakatCashBank => 'Kas/Bank';

  @override
  String get zakatBusiness => 'Usaha';

  @override
  String get zakatInvestments => 'Investasi';

  @override
  String get zakatWeightGrams => 'Beurat (g)';

  @override
  String get zakatPricePerGram => 'Harga / g';

  @override
  String get zakatTotalAmount => 'Jumlah total';

  @override
  String get zakatInventoryValue => 'Niley Inventory';

  @override
  String get zakatDebts => 'Hutang';

  @override
  String get zakatTotal => 'Total';

  @override
  String get calculateZakat => 'Ngitung Zakat';

  @override
  String get nisabNotReached => 'Nisab teu kahontal. Zakat henteu wajib.';

  @override
  String get totalZakat => 'Zakat total';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakat Emas';

  @override
  String get zakatSilverZakat => 'Zakat pérak';

  @override
  String get zakatCashZakat => 'Zakat Tunai';

  @override
  String get zakatBusinessZakat => 'Zakat Usaha';

  @override
  String get zakatInvestmentZakat => 'Zakat Investasi';

  @override
  String get chatbotGreeting =>
      'Assalamu\'alaikum! Abdi asistén Islam anjeun. Tanya kuring ngeunaan solat, puasa, zakat, atawa naon baé topik Islam.';

  @override
  String get chatbotLimitReached =>
      'wates query poean ngahontal. Ningkatkeun ka Premium pikeun henteu terbatas.';

  @override
  String get chatbotErrorMsg =>
      'Abdi teu bisa ngahasilkeun respon. Mangga cobian deui.';

  @override
  String get chatbotOfflinePrompt =>
      'Basis pangaweruh Islam offline anu diverifikasi masih dikurasi. Anjeun tiasa ngaktipkeun fallback offline ayeuna, tapi éta ngan bakal nembongkeun pesen aman kawates dugi dataset sourced geus siap.\n\nNaha anjeun badé ngaktipkeun fallback offline?';

  @override
  String get chatbotOfflineSwitched =>
      'Offline fallback diaktipkeun. Jawaban Islam lokal anu diverifikasi henteu acan siap.';

  @override
  String get chatbotOfflineDownloadLabel => 'Aktipkeun Offline Fallback';

  @override
  String get downloadPreparing => 'Nyiapkeun undeuran...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Downloading surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Sadaya surah parantos diunduh pikeun qari ieu.';

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
  String get redownloadMissingRepair => 'Ngalereskeun / Ngundeur Leungit';

  @override
  String get downloadAction => 'Ngundeur';

  @override
  String get resumeDownload => 'Neruskeun Ngundeur';

  @override
  String get deleteDownloadedFiles => 'Pupus Payil anu Diunduh';

  @override
  String get downloadCancelling => 'Ngabolaykeun...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Ngundeur dibatalkeun pikeun $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Ngundeur réngsé pikeun $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Unduh réngsé pikeun $reciter sareng $failed surah gagal ($downloaded/$total diunduh).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Deleted offline files for $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Sumber audio Quran anu diverifikasi henteu sayogi ayeuna.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Verified Quran audio pack is incomplete ($available/$total). Refresh cloud seed and try again.';
  }

  @override
  String get chatbotHint => 'Tanya patarosan...';

  @override
  String get chatbotThinking => 'Pikiran...';

  @override
  String get sukunMixerSubtitle => 'Alam & Qur\'an Adun';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (Alam)';

  @override
  String get sukunRainOfMercy => 'Hujan Rahmat';

  @override
  String get sukunGardenOfPeace => 'Taman Damai';

  @override
  String get sukunMidnightCalm => 'Tengah peuting Tenang';

  @override
  String get sukunOceanTawheed => 'Samudra Tauhid';

  @override
  String get sukunUnavailableTitle => 'Soundscapes teu sadia';

  @override
  String get sukunUnavailableBody =>
      'Wangunan ieu henteu kalebet aset soundscape Sukun anu diperyogikeun.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Beurang streak';

  @override
  String get bestStreak => 'streak pangalusna';

  @override
  String get chatbotCloudAiLabel => 'Awan AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'Anggo Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Aktipkeun Offline Fallback';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count ditinggalkeun';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API teu ngonpigurasi. Pitunjuk Islam offline anu diverifikasi teu acan sayogi.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Pitunjuk Islam lokal anu diverifikasi teu acan sayogi. Pindah ka Cloud AI pikeun jawaban sumber.';

  @override
  String get mosques => 'masjid-masjid';

  @override
  String get halalFood => 'Dahareun Halal';

  @override
  String get placesSearchArea => 'Pilarian wewengkon ieu';

  @override
  String get nearbyMosques => 'Deukeutna Masjid';

  @override
  String get islamicSchools => 'Sakola Islam';

  @override
  String placesFoundCount(String count) {
    return '$count kapanggih';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km away';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Kasalahan API: $statusCode';
  }

  @override
  String get placesNetworkError => 'Kasalahan jaringan. Mangga cobian deui.';

  @override
  String get placesLocationRequiredTitle => 'Lokasi diperlukeun';

  @override
  String get placesLocationRequiredBody =>
      'Setel lokasi heula supados masjid caket dieu, kadaharan halal, sareng sakola Islam tiasa milarian sacara akurat.';

  @override
  String get placesMapTilesUnavailableTitle => 'Kotak peta teu sadia';

  @override
  String get placesMapTilesUnavailableBody =>
      'Sumber ubin peta anu diverifikasi henteu acan dikonpigurasi pikeun ngawangun ieu. Tempat-tempat caket dieu masih tiasa ngamuat tina lokasi anu anjeun simpen.';

  @override
  String get placesDataSourceUnavailableTitle => 'Data tempat teu sadia';

  @override
  String get placesDataSourceUnavailableBody =>
      'Titik data tempat anu diverifikasi henteu acan dikonpigurasi pikeun ngawangun ieu. Setel PLACES_OVERPASS_API_URL ka proksi atanapi panyadia anu disatujuan sateuacan ngaktipkeun milarian caket dieu.';

  @override
  String get unknownPlaceName => 'Ngaran teu kanyahoan';

  @override
  String get islamicPlaceFallback => 'Tempat Islami';

  @override
  String get asmaMeaning1 => 'Nu Maha Welas Asih';

  @override
  String get asmaMeaning2 => 'Nu Maha Welas Asih';

  @override
  String get asmaMeaning3 => 'Raja / Gusti nu Langgeng';

  @override
  String get asmaMeaning4 => 'Nu Maha Suci';

  @override
  String get asmaMeaning5 => 'Sumber Damai';

  @override
  String get asmaMeaning6 => 'Nu Maparin Kaamanan';

  @override
  String get asmaMeaning7 => 'Nu Wali';

  @override
  String get asmaMeaning8 => 'Nu Maha Asih / Nu Maha Kawasa';

  @override
  String get asmaMeaning9 => 'The Compeller';

  @override
  String get asmaMeaning10 => 'Nu Maha Agung';

  @override
  String get asmaMeaning11 => 'Nu Nyipta';

  @override
  String get asmaMeaning12 => 'Nu Ngadamel Tatanan';

  @override
  String get asmaMeaning13 => 'The Shaper of Beauty';

  @override
  String get asmaMeaning14 => 'Nu Maha Ngahampura';

  @override
  String get asmaMeaning15 => 'Nu Nunduk';

  @override
  String get asmaMeaning16 => 'Nu Maha Kawasa';

  @override
  String get asmaMeaning17 => 'Nu Ngarojong';

  @override
  String get asmaMeaning18 => 'The Opener';

  @override
  String get asmaMeaning19 => 'Nu Maha Uninga';

  @override
  String get asmaMeaning20 => 'The Constrictor';

  @override
  String get asmaMeaning21 => 'The Relief';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'Nu Maha Agung';

  @override
  String get asmaMeaning24 => 'Nu Maha Kawasa';

  @override
  String get asmaMeaning25 => 'Nu Ngahinakeun';

  @override
  String get asmaMeaning26 => 'Nu Ngadangukeun Sadayana';

  @override
  String get asmaMeaning27 => 'Nu Ningali Sadayana';

  @override
  String get asmaMeaning28 => 'Hakim';

  @override
  String get asmaMeaning29 => 'Nu Adil';

  @override
  String get asmaMeaning30 => 'Nu Halus';

  @override
  String get asmaMeaning31 => 'Nu Sadayana Sadar';

  @override
  String get asmaMeaning32 => 'Nu Mayunan';

  @override
  String get asmaMeaning33 => 'Nu Maha Agung';

  @override
  String get asmaMeaning34 => 'Nu Agung Panghampura';

  @override
  String get asmaMeaning35 => 'Nu ngabales Syukur';

  @override
  String get asmaMeaning36 => 'Nu Pangluhurna';

  @override
  String get asmaMeaning37 => 'Nu Maha Agung';

  @override
  String get asmaMeaning38 => 'Nu Ngajaga';

  @override
  String get asmaMeaning39 => 'Nu Ngasuh';

  @override
  String get asmaMeaning40 => 'Nu ngitung';

  @override
  String get asmaMeaning41 => 'Nu Maha Agung';

  @override
  String get asmaMeaning42 => 'Nu Berehan';

  @override
  String get asmaMeaning43 => 'Nu Waspada';

  @override
  String get asmaMeaning44 => 'Nu Ngawaler Doa';

  @override
  String get asmaMeaning45 => 'Nu Maha Ngarti';

  @override
  String get asmaMeaning46 => 'Nu Sampurna Bijaksana';

  @override
  String get asmaMeaning47 => 'Nu Maha Asih';

  @override
  String get asmaMeaning48 => 'Nu Maha Suci';

  @override
  String get asmaMeaning49 => 'Nu Ngahudangkeun deui';

  @override
  String get asmaMeaning50 => 'Saksi';

  @override
  String get asmaMeaning51 => 'Kaleresan';

  @override
  String get asmaMeaning52 => 'Nu Maha Kawasa';

  @override
  String get asmaMeaning53 => 'Nu Mimiliki Sadaya Kakuatan';

  @override
  String get asmaMeaning54 => 'The Forceful';

  @override
  String get asmaMeaning55 => 'Nu ngajaga';

  @override
  String get asmaMeaning56 => 'Nu Dipuji';

  @override
  String get asmaMeaning57 => 'The Appraiser';

  @override
  String get asmaMeaning58 => 'The Originator';

  @override
  String get asmaMeaning59 => 'Nu Pamulihan';

  @override
  String get asmaMeaning60 => 'Nu Maha Kawasa';

  @override
  String get asmaMeaning61 => 'Nu Nyebut Hirup';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'Nu Mandiri Nu Mandiri';

  @override
  String get asmaMeaning64 => 'The Finder';

  @override
  String get asmaMeaning65 => 'Nu Maha Agung';

  @override
  String get asmaMeaning66 => 'Nu Tunggal';

  @override
  String get asmaMeaning67 => 'Nu Hiji';

  @override
  String get asmaMeaning68 => 'Nu Dipilarian ku Sadayana';

  @override
  String get asmaMeaning69 => 'Nu Kawasa';

  @override
  String get asmaMeaning70 => 'Nu Nyiptakeun sagala kakawasaan';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'Nu Nunda';

  @override
  String get asmaMeaning73 => 'Kahiji';

  @override
  String get asmaMeaning74 => 'The Last';

  @override
  String get asmaMeaning75 => 'The Manifest';

  @override
  String get asmaMeaning76 => 'Nu Nyumput';

  @override
  String get asmaMeaning77 => 'Gubernur';

  @override
  String get asmaMeaning78 => 'Nu Maha Agung';

  @override
  String get asmaMeaning79 => 'Nu Ngalakukeun Kasaean';

  @override
  String get asmaMeaning80 => 'Tuntunan Tobat';

  @override
  String get asmaMeaning81 => 'The Avenger';

  @override
  String get asmaMeaning82 => 'Nu Maha Ngahampura';

  @override
  String get asmaMeaning83 => 'The Clement';

  @override
  String get asmaMeaning84 => 'Nu boga / Ngadaulat Sadaya';

  @override
  String get asmaMeaning85 => 'Nu boga kaagungan jeung karunia';

  @override
  String get asmaMeaning86 => 'Nu Adil';

  @override
  String get asmaMeaning87 => 'Nu Ngumpulkeun';

  @override
  String get asmaMeaning88 => 'Nu Beunghar';

  @override
  String get asmaMeaning89 => 'Nu Enricher';

  @override
  String get asmaMeaning90 => 'Nu Nyegah Cilaka';

  @override
  String get asmaMeaning91 => 'Nu Mawa Cilaka';

  @override
  String get asmaMeaning92 => 'Maha Nu Maha Kawasa';

  @override
  String get asmaMeaning93 => 'Nu Caang';

  @override
  String get asmaMeaning94 => 'The Guider';

  @override
  String get asmaMeaning95 => 'The Originator';

  @override
  String get asmaMeaning96 => 'Nu Langgeng';

  @override
  String get asmaMeaning97 => 'Nu Ngawaris';

  @override
  String get asmaMeaning98 => 'Nu Maha Adil';

  @override
  String get asmaMeaning99 => 'Nu Sabar';
}
