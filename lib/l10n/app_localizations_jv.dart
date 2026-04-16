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
  String get home => 'Ngarep';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikir';

  @override
  String get calendar => 'Tanggalan';

  @override
  String get settings => 'Setelan';

  @override
  String get nextPrayer => 'Pandonga sabanjure';

  @override
  String get prayerTimes => 'Wektu Sholat';

  @override
  String get continueReading => 'Continue Reading';

  @override
  String get getLifetimePro => 'Get Lifetime Pro';

  @override
  String get unlockTajweed => 'Unlock Tajweed & Advanced Features';

  @override
  String get prayerCalculation => 'Pitungan Sholat';

  @override
  String get method => 'Metode Petungan';

  @override
  String get madhab => 'Metode Ashar';

  @override
  String get surahs => 'Surah-surah';

  @override
  String get ayahs => 'Ayah';

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
  String get dataStorage => 'Data & Panyimpenan';

  @override
  String get clearCache => 'Mbusak Cache';

  @override
  String get cacheClearedSuccess => 'Cache kasil dibusak';

  @override
  String get location => 'lokasi';

  @override
  String get language => 'Basa';

  @override
  String get selectLanguage => 'Pilih Basa';

  @override
  String get searchLanguage => 'Search 180+ languages...';

  @override
  String get systemDefault => 'Sistem Default';

  @override
  String get currentLocation => 'Lokasi Saiki (GPS)';

  @override
  String get locationServiceDisabled => 'Layanan lokasi dipateni.';

  @override
  String get locationPermissionDenied => 'Ijin lokasi ditolak.';

  @override
  String get locationDetectionFailed =>
      'Ora bisa ndeteksi lokasi sampeyan. Pilih kutha kanthi manual utawa coba maneh.';

  @override
  String citiesCount(String count) {
    return '$count kutha';
  }

  @override
  String get search => 'Nggoleki';

  @override
  String get searchHint => 'Nggoleki...';

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
  String get quranLoadFailed => 'Isi Quran ora bisa dimuat. Coba maneh.';

  @override
  String get retry => 'Coba maneh';

  @override
  String get refreshAction => 'Refresh';

  @override
  String get cancel => 'Batal';

  @override
  String get save => 'Simpen';

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
  String get page => 'kaca';

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
  String get addBookmark => 'Tambah Bookmark';

  @override
  String get removeBookmark => 'Mbusak Bookmark';

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
  String get namesOfAllah => 'Asmaning Allah';

  @override
  String get liveTv => 'TV langsung';

  @override
  String get watchLive => 'Nonton Langsung';

  @override
  String get streamError => 'Kesalahan stream';

  @override
  String get reload => 'Muat maneh';

  @override
  String get openInYoutube => 'Bukak ing YouTube';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'pasa';

  @override
  String get quranReading => 'Waosan Quran';

  @override
  String get prayers => 'sembahyang';

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
  String get weeklyProgress => 'Kemajuan Mingguan';

  @override
  String get monthlyProgress => 'Monthly Progress';

  @override
  String get statistics => 'Statistics';

  @override
  String get hijriCalendar => 'Kalender Hijriyah';

  @override
  String get gregorianCalendar => 'Gregorian Calendar';

  @override
  String get today => 'Dina iki';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get specialDays => 'Dina khusus';

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
  String get qiblaDirection => 'Arah Kiblat';

  @override
  String get compass => 'Kompas';

  @override
  String get degrees => 'degrees';

  @override
  String get north => 'North';

  @override
  String get qiblaFound => 'Kiblat ketemu!';

  @override
  String get turnDevice => 'Nguripake piranti kanggo madhep kiblat';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Kesalahan kompas: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Sensor kompas ora kasedhiya ing piranti iki.';

  @override
  String get qiblaLocationRequiredTitle => 'Lokasi dibutuhake kanggo Kiblat';

  @override
  String get qiblaLocationRequiredBody =>
      'Setel lokasi asline sadurunge nggunakake kompas kiblat supaya arah bisa diitung kanthi akurat.';

  @override
  String get adhanNotificationChannelName => 'Notifikasi Adzan';

  @override
  String get adhanNotificationChannelDescription =>
      'Tandha wektu shalat kanthi swara adzan.';

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
  String get theme => 'Tema';

  @override
  String get lightMode => 'Mode cahya';

  @override
  String get darkMode => 'Mode peteng';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'Babagan';

  @override
  String get version => 'Versi';

  @override
  String get privacyPolicy => 'Kebijakan Privasi';

  @override
  String get termsOfService => 'Katentuan Pangginaan supados langkung Service';

  @override
  String get contactUs => 'Hubungi Kita';

  @override
  String get rateApp => 'Rate App';

  @override
  String get shareApp => 'Nuduhake App';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'Ngundhuh';

  @override
  String get downloading => 'Ngundhuh...';

  @override
  String get downloadComplete => 'Download Lengkap';

  @override
  String get downloadFailed => 'Ngundhuh Gagal';

  @override
  String get offlineMode => 'Mode Offline';

  @override
  String get noInternet => 'Ora Ana Sambungan Internet';

  @override
  String get checkConnection => 'Mangga priksa sambungan sampeyan';

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
  String get getStarted => 'Miwiti';

  @override
  String get skip => 'Skip';

  @override
  String get next => 'Sabanjure';

  @override
  String get done => 'rampung';

  @override
  String get onboarding1Title => 'Sugeng rawuh ing Sirat-ı Nur';

  @override
  String get onboarding1Desc =>
      'Aplikasi pendamping Islam lengkap kanggo wektu sholat, Quran, lan liya-liyane';

  @override
  String get onboarding2Title => 'Wektu Sholat';

  @override
  String get onboarding2Desc =>
      'Wektu pandonga sing akurat adhedhasar lokasi sampeyan';

  @override
  String get onboarding3Title => 'Quran & Liyane';

  @override
  String get onboarding3Desc =>
      'Maca Quran, lacak wacan, lan jelajahi konten Islam';

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
  String get tapToCount => 'Tutul kanggo ngetung';

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
  String get freeStorage => 'Mbebasake panyimpenan piranti internal.';

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
  String get qiblaCalibration => 'Kalibrasi Kiblat';

  @override
  String get compassSmoothing => 'Kompas Smoothing';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Kalibrasi Offset';

  @override
  String currentOffset(Object offset) {
    return 'Saiki: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Setel yen kompas sampeyan mbutuhake koreksi manual. Nilai positif muter searah jarum jam.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Diagnostik';

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
  String get diagnosticsUiAudioAssets => 'Aset Audio UI';

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
    return '$count didhukung';
  }

  @override
  String get diagnosticsQuranDataset => 'Quran Dataset';

  @override
  String get diagnosticsQuranSurahs => 'Quran Surah';

  @override
  String get diagnosticsQuranAyahs => 'Quran Ayah';

  @override
  String get diagnosticsQuranJuzMetadata => 'Quran Juz Metadata';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Tabel awan ilang ing Supabase; bundled fallback aktif';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Mriksa awan gagal: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Metadata juz awan ilang; bundled structural fallback aktif';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Priksa struktural awan gagal: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Kalibrasi dibutuhake. Puter piranti ing tokoh-8.';

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
      'Assalamu\'alaikum! Aku asisten Islammu. Takon bab shalat, pasa, zakat, utawa topik Islam apa wae.';

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
  String get downloadPreparing => 'Nyiapake download...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Downloading surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Kabeh surah wis diundhuh kanggo reciter iki.';

  @override
  String get offlineQuranAudioPacks => 'Paket Audio Quran Offline';

  @override
  String storedOnDeviceMb(String size) {
    return 'Disimpen ing piranti: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surahs downloaded';
  }

  @override
  String get redownloadMissingRepair => 'Repair / Download Ilang';

  @override
  String get downloadAction => 'Ngundhuh';

  @override
  String get resumeDownload => 'Resume Download';

  @override
  String get deleteDownloadedFiles => 'Busak File sing Diundhuh';

  @override
  String get downloadCancelling => 'Batal...';

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
    return 'File offline dibusak kanggo $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Sumber audio Quran sing wis diverifikasi saiki ora kasedhiya.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Verified Quran audio pack is incomplete ($available/$total). Refresh cloud seed and try again.';
  }

  @override
  String get chatbotHint => 'Njaluk pitakon...';

  @override
  String get chatbotThinking => 'Dipikir...';

  @override
  String get sukunMixerSubtitle => 'Alam & Qur\'an Mixer';

  @override
  String get audioPlayFailed => 'Puter maneh audio gagal';

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
  String get prayerCompletion => 'Pandonga Rampung';

  @override
  String get streaks => 'streak';

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
      'Cloud API ora dikonfigurasi. Panuntun Islam offline sing diverifikasi durung kasedhiya.';

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
  String get placesDataSourceUnavailableTitle => 'Data panggonan ora kasedhiya';

  @override
  String get placesDataSourceUnavailableBody =>
      'Titik pungkasan data panggonan sing wis diverifikasi durung dikonfigurasi kanggo mbangun iki. Setel PLACES_OVERPASS_API_URL menyang proxy utawa panyedhiya sing disetujoni sadurunge ngaktifake panelusuran sing cedhak.';

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
