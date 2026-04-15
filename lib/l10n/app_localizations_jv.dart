// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Javanese (`jv`).
class AppLocalizationsJv extends AppLocalizations {
  AppLocalizationsJv([String locale = 'jv']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Cara Islam cahya';

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
  String get sunrise => 'Sunrise';

  @override
  String get dhuhr => 'Dhuhur';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Maghrib';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Wektu kanggo $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Wektu kanggo ndedonga $prayerName.';
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
  String get locationServiceDisabled => 'Layanan lokasi dipateni.';

  @override
  String get locationPermissionDenied => 'Ijin lokasi ditolak.';

  @override
  String citiesCount(String count) {
    return '$count kutha';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'Ora ana asil sing ditemokake';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Kesalahan';

  @override
  String get appErrorOccurred => 'Ana kesalahan';

  @override
  String get appUnknownError => 'Kesalahan sing ora dingerteni';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Refresh';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Mbusak';

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
  String get tafsirSourceLabel => 'Sumber Tafsir';

  @override
  String get tafsirNoSurahFound =>
      'Ora ana tafsir sing ditemokake kanggo surat iki.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'No tafsir found for ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir ora bisa dimuat.';

  @override
  String get tafsirNoTextForAyah => 'Ora ana teks tafsir kanggo ayat iki.';

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
    return 'Sumber Tafsir ngasilake kesalahan HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Sumber tafsir sing dipilih ora ana entri.';

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
      'liyane padha ndedonga, \'Dhuh Pangeran kawula, mugi karsaa paring kabecikan ing donya lan ing akherat, lan pangayoman kawula saking siksa geni.\'';

  @override
  String get duaMeaning2 =>
      'Gusti Allah ora mbebani jiwa sing luwih saka sing bisa ditanggung: saben wong entuk kabecikan apa wae sing wis ditindakake, lan nandhang ala - \'Dhuh Gusti, aja nganti aku lali utawa luput. Dhuh Yehuwah, mugi sampun ngantos paring beban dhateng kawula kadosdene Paduka mbebani dhateng tiyang-tiyang saderengipun kawula. Dhuh Yehuwah, mugi sampun ngantos paring beban dhateng kawula ingkang langkung saking kakuwatanipun. Nyuwun ngapunten, ngapunten, lan mberkahi. Paduka punika Pangreksa kawula, mila mugi karsaa tulung-tinulungi kawula tumrap tiyang-tiyang kafir”.';

  @override
  String get duaMeaning3 =>
      '“Dhuh Gusti, mugi sampun ngantos miringaken manah kawula sasampunipun Paduka paring pituduh. Paduka mugi karsaa maringi sih-rahmat Paduka: Paduka ingkang tansah maringi.';

  @override
  String get duaMeaning4 =>
      'Dhuh Gusti, mugi karsaa paring pandonga dhumateng kawula saha anak turun kawula. Dhuh Gusti, mugi karsaa nampi panyuwun kawula.';

  @override
  String get duaMeaning5 =>
      'lan andhap asor marang wong-wong mau lan munjuk: \'Dhuh Gusti, mugi karsaa welas asih dhateng tiyang-tiyang wau, kadosdene anggenipun ngreksa kawula nalika kawula alit.\'';

  @override
  String get duaMeaning6 =>
      'Mahasuci Allah, kang bener-bener nguwasani. [Nabi], aja kesusu maca sadurunge wahyu rampung, nanging ngucap, \'Dhuh Gusti, tambahi kawruhku!\'';

  @override
  String get duaMeaning7 =>
      'Dakkandhani [Nabi], \'Dhuh Gusti, mugi karsaa ngapura lan welas asih: Paduka punika ingkang paling welas asih.\'';

  @override
  String get duaMeaning8 =>
      'kang padha ndedonga, ‘Dhuh Pangeran kawula, mugi karsaa paring kabingahan tumraping pasangan lan anak-anak kawula. Paduka mugi karsaa dados tuladha ingkang sae tumrap tiyang-tiyang ingkang mangertos dhumateng Paduka’.';

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
  String get hadithCollection => 'Koleksi Hadith';

  @override
  String get hadithBooks => 'Kitab Hadits';

  @override
  String get searchHadith => 'Golek Hadits';

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
  String get openInYoutube => 'Bukak ing YouTube';

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
  String get mawlidAnNabi => 'Mawlid an-Nabi';

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
    return 'Kesalahan kompas: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Sensor kompas ora kasedhiya ing piranti iki.';

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
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Download Lengkap';

  @override
  String get downloadFailed => 'Ngundhuh Gagal';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'Ora Ana Sambungan Internet';

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
  String get zikrCompletedMashAllah => 'Rampung! MasyaAllah';

  @override
  String get zikrMeaningSubhanAllah => 'Allah iku adoh saka saben cacat.';

  @override
  String get zikrMeaningAlhamdulillah => 'Kabeh puji kagungane Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah iku Maha Agung.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Ora ana sesembahan kajaba Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Aku njaluk pangapura marang Allah.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Ora ana daya lan kekuwatan kajaba mung liwat Allah.';

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
  String get audioVoice => 'Swara Audio';

  @override
  String get audioVoiceMisharyAlafasy => 'Lanang (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Lanang (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Lanang (Sudais)';

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
  String get diagnosticsNotSet => 'Ora disetel';

  @override
  String get diagnosticsPrayerProfile => 'Profil Pandonga';

  @override
  String get diagnosticsPrayerSource => 'Panguwasa Sholat';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Sudut khusus manual (ora ana sumber institusi)';

  @override
  String get diagnosticsCloudDriven => 'Cloud Driven';

  @override
  String get diagnosticsAdhanAudioAssets => 'Aset Audio Adhan';

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
    return 'Gagal maca manifes: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Lokalisasi Lokal';

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
      'Tabel awan ilang ing Supabase; bundled fallback aktif';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Metadata juz awan ilang; bundled structural fallback aktif';

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
  String get dailyVerse => 'Ayat Saben dina';

  @override
  String get todaysIbadah => 'Ibadah dina iki';

  @override
  String get quickAccess => 'Akses cepet';

  @override
  String get assistant => 'Asisten';

  @override
  String get places => 'Panggonan';

  @override
  String get library => 'Pustaka';

  @override
  String get analytics => 'Analytics';

  @override
  String get dailyDuas => 'Saben dina';

  @override
  String essentialDuas(String count) {
    return '$count essential duas';
  }

  @override
  String get duaUnavailableTitle => 'Duas sing diverifikasi durung kasedhiya';

  @override
  String get duaUnavailableBody =>
      'Duas saben dina sing wis diverifikasi durung diselarasake karo piranti iki. Sambungake menyang sumber maya kanggo mbukak sumber sumber tinimbang mundur sing ora diverifikasi.';

  @override
  String get duaCategoryQuranic => 'Qur\'an do\'a';

  @override
  String get duaCategoryMorningEvening => 'Esuk & Sore';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'pangayoman';

  @override
  String get duaCategoryBeginning => 'Wiwitan';

  @override
  String get duaCategorySleep => 'Turu';

  @override
  String get duaCategoryFoodDrink => 'Panganan & Ombenan';

  @override
  String get duaCategoryForgiveness => 'pangapunten';

  @override
  String get duaCategoryHome => 'Ngarep';

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
  String get hadithCollections => 'Koleksi Hadits';

  @override
  String get hadithSourcePending => 'Sumber sing diverifikasi ditundha';

  @override
  String get hadithUnavailableTitle =>
      'Koleksi hadits sing wis diverifikasi durung kasedhiya';

  @override
  String get hadithUnavailableBody =>
      'Iki mbangun isih gumantung ing feed hadits external durung diverifikasi. Browsing hadits tetep dipateni nganti dataset sumber diselarasake.';

  @override
  String get paywallUnlockAll =>
      'Mbukak kunci kabeh fitur kanggo perjalanan spiritual sampeyan';

  @override
  String get premiumProductUnavailable =>
      'Produk premium ora kasedhiya saiki. Mangga coba maneh mengko.';

  @override
  String get premiumPurchaseFailed => 'Tuku ora bisa rampung. Coba maneh.';

  @override
  String get paywallFeature1Title => 'Asisten Neural Plus';

  @override
  String get paywallFeature1Desc => 'Q&A sing didhukung AI tanpa wates';

  @override
  String get paywallFeature2Title => 'Unlimited Offline';

  @override
  String get paywallFeature2Desc => 'Download kabeh wacan';

  @override
  String get paywallFeature3Title => 'Desain Eksklusif';

  @override
  String get paywallFeature3Desc => 'Tema & font premium';

  @override
  String get paywallFeature4Title => 'Bebas Iklan';

  @override
  String get paywallFeature4Desc => 'Iklan nol';

  @override
  String get paywallGetAccess => 'Entuk Akses Seumur Hidup — \$1.00';

  @override
  String get restorePurchases => 'Mulihake Tuku';

  @override
  String get zakatCalculator => 'Kalkulator Zakat';

  @override
  String get zakatGold => 'Emas (Altın)';

  @override
  String get zakatSilver => 'Perak (Gümüş)';

  @override
  String get zakatCashBank => 'Kas/Bank';

  @override
  String get zakatBusiness => 'bisnis';

  @override
  String get zakatInvestments => 'Investasi';

  @override
  String get zakatWeightGrams => 'Bobot (g)';

  @override
  String get zakatPricePerGram => 'Rega/g';

  @override
  String get zakatTotalAmount => 'Total Jumlah';

  @override
  String get zakatInventoryValue => 'Nilai Persediaan';

  @override
  String get zakatDebts => 'Utang';

  @override
  String get zakatTotal => 'Total';

  @override
  String get calculateZakat => 'Ngitung Zakat';

  @override
  String get nisabNotReached => 'Nisab ora tekan. Zakat ora wajib.';

  @override
  String get totalZakat => 'Total Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakat Emas';

  @override
  String get zakatSilverZakat => 'Zakat Perak';

  @override
  String get zakatCashZakat => 'Kas Zakat';

  @override
  String get zakatBusinessZakat => 'Zakat bisnis';

  @override
  String get zakatInvestmentZakat => 'Zakat investasi';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Watesan pitakon saben dina tekan. Nganyarke menyang Premium tanpa watesan.';

  @override
  String get chatbotErrorMsg => 'Aku ora bisa ngasilake respon. Coba maneh.';

  @override
  String get chatbotOfflinePrompt =>
      'Basis pengetahuan Islam offline sing wis diverifikasi isih dikurasi. Sampeyan bisa ngaktifake mundur offline saiki, nanging mung bakal nuduhake pesen aman sing winates nganti set data sing sumbere wis siyap.\n\nApa sampeyan pengin ngaktifake mundur offline?';

  @override
  String get chatbotOfflineSwitched =>
      'Offline fallback diaktifake. Jawaban Islam lokal sing diverifikasi durung siap.';

  @override
  String get chatbotOfflineDownloadLabel => 'Aktifake Offline Fallback';

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
  String get downloadAction => 'Ngundhuh';

  @override
  String get resumeDownload => 'Resume Download';

  @override
  String get deleteDownloadedFiles => 'Busak File sing Diundhuh';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Download dibatalake kanggo $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Download rampung kanggo $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Download rampung kanggo $reciter karo $failed gagal surah ($downloaded/$total diundhuh).';
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
  String get sukunMixerSubtitle => 'Alam & Qur\'an Mixer';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (Alam)';

  @override
  String get sukunRainOfMercy => 'Udan Welas Asih';

  @override
  String get sukunGardenOfPeace => 'Taman Damai';

  @override
  String get sukunMidnightCalm => 'Tengah wengi Tenang';

  @override
  String get sukunOceanTawheed => 'Samudra Tauhid';

  @override
  String get sukunUnavailableTitle => 'Soundscapes ora kasedhiya';

  @override
  String get sukunUnavailableBody =>
      'Bangunan iki durung kalebu aset soundscape Sukun sing dibutuhake.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'streak dina';

  @override
  String get bestStreak => 'streak paling apik';

  @override
  String get chatbotCloudAiLabel => 'Awan AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Mundur';

  @override
  String get chatbotUseCloudAi => 'Gunakake Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Aktifake Offline Fallback';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API ora dikonfigurasi. Mangga ngalih menyang AI Lokal.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Pandhuan Islam lokal sing wis diverifikasi durung kasedhiya. Ngalih menyang Cloud AI kanggo jawaban sumber.';

  @override
  String get mosques => 'masjid-masjid';

  @override
  String get halalFood => 'Panganan Halal';

  @override
  String get placesSearchArea => 'Telusuri wilayah iki';

  @override
  String get nearbyMosques => 'Mesjid sacedhake';

  @override
  String get islamicSchools => 'Sekolah Islam';

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
    return 'Kesalahan API: $statusCode';
  }

  @override
  String get placesNetworkError => 'Kesalahan jaringan. Coba maneh.';

  @override
  String get placesLocationRequiredTitle => 'Lokasi dibutuhake';

  @override
  String get placesLocationRequiredBody =>
      'Setel lokasi dhisik supaya masjid cedhak, panganan halal, lan sekolah Islam bisa digoleki kanthi akurat.';

  @override
  String get placesMapTilesUnavailableTitle => 'Kothak peta ora kasedhiya';

  @override
  String get placesMapTilesUnavailableBody =>
      'Sumber kothak peta sing wis diverifikasi durung dikonfigurasi kanggo mbangun iki. Panggonan sing cedhak isih bisa dimuat saka lokasi sing disimpen.';

  @override
  String get unknownPlaceName => 'Jeneng sing ora dingerteni';

  @override
  String get islamicPlaceFallback => 'Panggonan Islam';

  @override
  String get asmaMeaning1 => 'Ingkang Maha Asih';

  @override
  String get asmaMeaning2 => 'Ingkang Maha Asih';

  @override
  String get asmaMeaning3 => 'Sang Prabu/Gusti Langgeng';

  @override
  String get asmaMeaning4 => 'Ingkang Maha Suci';

  @override
  String get asmaMeaning5 => 'Sumber Damai';

  @override
  String get asmaMeaning6 => 'Sing menehi Keamanan';

  @override
  String get asmaMeaning7 => 'Sang Wali';

  @override
  String get asmaMeaning8 => 'Ingkang Murbeng Jagad / Ingkang Maha Kuwasa';

  @override
  String get asmaMeaning9 => 'The Compeller';

  @override
  String get asmaMeaning10 => 'Paling Agung';

  @override
  String get asmaMeaning11 => 'Sang Pencipta';

  @override
  String get asmaMeaning12 => 'Sing Nggawe Tatanan';

  @override
  String get asmaMeaning13 => 'The Shaper of Beauty';

  @override
  String get asmaMeaning14 => 'Sang Pengampun';

  @override
  String get asmaMeaning15 => 'The Subduer';

  @override
  String get asmaMeaning16 => 'Sing paring Kabeh';

  @override
  String get asmaMeaning17 => 'The Sustainer';

  @override
  String get asmaMeaning18 => 'Pambuka';

  @override
  String get asmaMeaning19 => 'Sing Ngerti Kabeh';

  @override
  String get asmaMeaning20 => 'The Constrictor';

  @override
  String get asmaMeaning21 => 'The Reliever';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'Sang Maha Agung';

  @override
  String get asmaMeaning24 => 'Ingkang Maha Asih';

  @override
  String get asmaMeaning25 => 'The Humiliator';

  @override
  String get asmaMeaning26 => 'Sing Mireng Kabeh';

  @override
  String get asmaMeaning27 => 'Sing weruh Kabeh';

  @override
  String get asmaMeaning28 => 'Hakim';

  @override
  String get asmaMeaning29 => 'Sing Adil';

  @override
  String get asmaMeaning30 => 'Sing Subtle';

  @override
  String get asmaMeaning31 => 'Sing Sadar Kabeh';

  @override
  String get asmaMeaning32 => 'The Forebearing';

  @override
  String get asmaMeaning33 => 'Sang Agung';

  @override
  String get asmaMeaning34 => 'Ingkang Maha Asih';

  @override
  String get asmaMeaning35 => 'Sang Penerima Syukur';

  @override
  String get asmaMeaning36 => 'Sing paling dhuwur';

  @override
  String get asmaMeaning37 => 'Paling Agung';

  @override
  String get asmaMeaning38 => 'The Preserver';

  @override
  String get asmaMeaning39 => 'The Nourisher';

  @override
  String get asmaMeaning40 => 'The Reckoner';

  @override
  String get asmaMeaning41 => 'Sang Agung';

  @override
  String get asmaMeaning42 => 'The Loma';

  @override
  String get asmaMeaning43 => 'Sing Waspada';

  @override
  String get asmaMeaning44 => 'Sing Penjawab Doa';

  @override
  String get asmaMeaning45 => 'Kabeh Pangerten';

  @override
  String get asmaMeaning46 => 'Sing Sampurna Wicaksana';

  @override
  String get asmaMeaning47 => 'Sing Asih';

  @override
  String get asmaMeaning48 => 'Kang Maha Mulya';

  @override
  String get asmaMeaning49 => 'Sang Panguwasa';

  @override
  String get asmaMeaning50 => 'Sang Saksi';

  @override
  String get asmaMeaning51 => 'Bebener';

  @override
  String get asmaMeaning52 => 'Wali Amanah Sakabehe';

  @override
  String get asmaMeaning53 => 'Sing Duwe Kabeh Kekuwatan';

  @override
  String get asmaMeaning54 => 'The Forceful';

  @override
  String get asmaMeaning55 => 'Sang Pelindung';

  @override
  String get asmaMeaning56 => 'Sing Dipuji';

  @override
  String get asmaMeaning57 => 'Penilai';

  @override
  String get asmaMeaning58 => 'Sing Asal';

  @override
  String get asmaMeaning59 => 'Pamulih';

  @override
  String get asmaMeaning60 => 'Sing paring urip';

  @override
  String get asmaMeaning61 => 'Sing Ngangkat Urip';

  @override
  String get asmaMeaning62 => 'Sing Langgeng';

  @override
  String get asmaMeaning63 => 'Sing Madeg Mandiri';

  @override
  String get asmaMeaning64 => 'The Finder';

  @override
  String get asmaMeaning65 => 'Kang Mulia';

  @override
  String get asmaMeaning66 => 'Sing Tunggal';

  @override
  String get asmaMeaning67 => 'Sing siji';

  @override
  String get asmaMeaning68 => 'Sing Digoleki Kabeh';

  @override
  String get asmaMeaning69 => 'Sing Kuat';

  @override
  String get asmaMeaning70 => 'Sing Nitahake kabeh kekuwatan';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'The Delayer';

  @override
  String get asmaMeaning73 => 'Pisanan';

  @override
  String get asmaMeaning74 => 'Sing Pungkasan';

  @override
  String get asmaMeaning75 => 'Manifest';

  @override
  String get asmaMeaning76 => 'Sing Didhelikake';

  @override
  String get asmaMeaning77 => 'Gubernur';

  @override
  String get asmaMeaning78 => 'Ingkang Maha Agung';

  @override
  String get asmaMeaning79 => 'Sing Nggawe Kabecikan';

  @override
  String get asmaMeaning80 => 'Pandhuan kanggo Tobat';

  @override
  String get asmaMeaning81 => 'The Avenger';

  @override
  String get asmaMeaning82 => 'Sang Pengampun';

  @override
  String get asmaMeaning83 => 'The Clement';

  @override
  String get asmaMeaning84 => 'Pemilik / Panguwasa Kabeh';

  @override
  String get asmaMeaning85 => 'Sing Duwe Kaluhuran lan Karunia';

  @override
  String get asmaMeaning86 => 'Sing Adil';

  @override
  String get asmaMeaning87 => 'Sing Ngumpul';

  @override
  String get asmaMeaning88 => 'Sing Sugih';

  @override
  String get asmaMeaning89 => 'The Enricher';

  @override
  String get asmaMeaning90 => 'Sing Nyegah Cilaka';

  @override
  String get asmaMeaning91 => 'Sing nggawa cilaka';

  @override
  String get asmaMeaning92 => 'Sing paring kanugrahan';

  @override
  String get asmaMeaning93 => 'Sang Cahya';

  @override
  String get asmaMeaning94 => 'The Guider';

  @override
  String get asmaMeaning95 => 'Sing Asal';

  @override
  String get asmaMeaning96 => 'Sing Langgeng';

  @override
  String get asmaMeaning97 => 'Pewaris';

  @override
  String get asmaMeaning98 => 'Tuntunan ingkang Maha Adil';

  @override
  String get asmaMeaning99 => 'Sing Sabar';
}
