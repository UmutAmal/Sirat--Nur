// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'Jalan Allah';

  @override
  String get home => 'Beranda';

  @override
  String get quran => 'Al-Quran';

  @override
  String get qibla => 'Kiblat';

  @override
  String get zikr => 'Zikir';

  @override
  String get calendar => 'Kalender';

  @override
  String get settings => 'Pengaturan';

  @override
  String get nextPrayer => 'Sholat Berikutnya';

  @override
  String get prayerTimes => 'Waktu Sholat';

  @override
  String get continueReading => 'Lanjutkan Membaca';

  @override
  String get getLifetimePro => 'Dapatkan Lifetime Pro';

  @override
  String get unlockTajweed => 'Buka Tajwid & Fitur Lanjutan';

  @override
  String get prayerCalculation => 'Perhitungan Sholat';

  @override
  String get method => 'Metode Perhitungan';

  @override
  String get madhab => 'Metode Hisab Ashar';

  @override
  String get surahs => 'Surah';

  @override
  String get ayahs => 'Ayat';

  @override
  String get fajr => 'Subuh';

  @override
  String get sunrise => 'Matahari Terbit';

  @override
  String get dhuhr => 'Dhuhur';

  @override
  String get asr => 'Ashar';

  @override
  String get maghrib => 'Maghrib';

  @override
  String get isha => 'Isya';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Waktunya untuk $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Saatnya berdoa $prayerName.';
  }

  @override
  String get dataStorage => 'Data & Penyimpanan';

  @override
  String get clearCache => 'Hapus Cache';

  @override
  String get cacheClearedSuccess => 'Cache berhasil dihapus';

  @override
  String get location => 'Lokasi';

  @override
  String get language => 'Bahasa';

  @override
  String get selectLanguage => 'Pilih Bahasa';

  @override
  String get searchLanguage => 'Cari 180+ bahasa...';

  @override
  String get systemDefault => 'Default Sistem';

  @override
  String get currentLocation => 'Lokasi Saat Ini (GPS)';

  @override
  String get locationServiceDisabled => 'Layanan lokasi dinonaktifkan.';

  @override
  String get locationPermissionDenied => 'Izin lokasi ditolak.';

  @override
  String citiesCount(String count) {
    return '$count kota';
  }

  @override
  String get search => 'Cari';

  @override
  String get searchHint => 'Cari...';

  @override
  String get noResults => 'Tidak ada hasil';

  @override
  String get loading => 'Memuat...';

  @override
  String get error => 'Kesalahan';

  @override
  String get retry => 'Coba Lagi';

  @override
  String get cancel => 'Batal';

  @override
  String get save => 'Simpan';

  @override
  String get delete => 'Hapus';

  @override
  String get edit => 'Edit';

  @override
  String get close => 'Tutup';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Ya';

  @override
  String get no => 'Tidak';

  @override
  String get surah => 'Surah';

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Halaman';

  @override
  String get reading => 'Bacaan';

  @override
  String get recitation => 'Tilawah';

  @override
  String get translation => 'Terjemahan';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get bookmarks => 'Penanda';

  @override
  String get addBookmark => 'Tambah Penanda';

  @override
  String get removeBookmark => 'Hapus Penanda';

  @override
  String get lastRead => 'Terakhir Dibaca';

  @override
  String get dailyZikr => 'Zikir Harian';

  @override
  String get morningZikr => 'Zikir Pagi';

  @override
  String get eveningZikr => 'Zikir Sore';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masa\'il';

  @override
  String get hadith => 'hadis';

  @override
  String get hadithCollection => 'Koleksi Hadits';

  @override
  String get hadithBooks => 'Buku Hadits';

  @override
  String get searchHadith => 'Cari Hadits';

  @override
  String get asmaulHusna => 'Asmaul Husna';

  @override
  String get namesOfAllah => 'Nama-nama Allah';

  @override
  String get liveTv => 'TV Langsung';

  @override
  String get watchLive => 'Tonton Langsung';

  @override
  String get streamError => 'Kesalahan Streaming';

  @override
  String get reload => 'Muat Ulang';

  @override
  String get openInYoutube => 'Buka di YouTube';

  @override
  String get ibadahTracker => 'Pelacak Ibadah';

  @override
  String get fasting => 'Puasa';

  @override
  String get quranReading => 'Bacaan Quran';

  @override
  String get prayers => 'Sholat';

  @override
  String get dhikrCount => 'Jumlah Zikir';

  @override
  String get weeklyProgress => 'Progres Mingguan';

  @override
  String get monthlyProgress => 'Progres Bulanan';

  @override
  String get statistics => 'Statistik';

  @override
  String get hijriCalendar => 'Kalender Hijriyah';

  @override
  String get gregorianCalendar => 'Kalender Masehi';

  @override
  String get today => 'Hari Ini';

  @override
  String get tomorrow => 'Besok';

  @override
  String get yesterday => 'Kemarin';

  @override
  String get specialDays => 'Hari Istimewa';

  @override
  String get ramadan => 'Ramadhan';

  @override
  String get eidAlFitr => 'Idul Fitri';

  @override
  String get eidAlAdha => 'Idul Adha';

  @override
  String get laylatAlQadr => 'Lailatul Qadar';

  @override
  String get qiblaDirection => 'Arah Kiblat';

  @override
  String get compass => 'Kompas';

  @override
  String get degrees => 'derajat';

  @override
  String get north => 'Utara';

  @override
  String get qiblaFound => 'Kiblat ditemukan!';

  @override
  String get turnDevice => 'Putar perangkat Anda menghadap kiblat';

  @override
  String get notifications => 'Notifikasi';

  @override
  String get prayerNotifications => 'Notifikasi Sholat';

  @override
  String get enableNotifications => 'Aktifkan Notifikasi';

  @override
  String get notificationTime => 'Waktu Notifikasi';

  @override
  String get beforePrayer => 'menit sebelum sholat';

  @override
  String get theme => 'Tema';

  @override
  String get lightMode => 'Mode Terang';

  @override
  String get darkMode => 'Mode Gelap';

  @override
  String get systemTheme => 'Tema Sistem';

  @override
  String get about => 'Tentang';

  @override
  String get version => 'Versi';

  @override
  String get privacyPolicy => 'Kebijakan Privasi';

  @override
  String get termsOfService => 'Ketentuan Layanan';

  @override
  String get contactUs => 'Hubungi Kami';

  @override
  String get rateApp => 'Beri Rating';

  @override
  String get shareApp => 'Bagikan Aplikasi';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Manajer Unduhan';

  @override
  String get downloads => 'Unduhan';

  @override
  String get downloading => 'Mengunduh...';

  @override
  String get downloadComplete => 'Unduhan Selesai';

  @override
  String get downloadFailed => 'Unduhan Gagal';

  @override
  String get offlineMode => 'Mode Offline';

  @override
  String get noInternet => 'Tidak Ada Koneksi Internet';

  @override
  String get checkConnection => 'Silakan periksa koneksi Anda';

  @override
  String get premium => 'Premium';

  @override
  String get upgradeToPro => 'Upgrade ke Pro';

  @override
  String get proFeatures => 'Fitur Pro';

  @override
  String get removeAds => 'Hapus Iklan';

  @override
  String get unlockAll => 'Buka Semua Konten';

  @override
  String get exclusiveContent => 'Konten Eksklusif';

  @override
  String get welcome => 'Selamat Datang';

  @override
  String get getStarted => 'Mulai';

  @override
  String get skip => 'Lewati';

  @override
  String get next => 'Berikutnya';

  @override
  String get done => 'Selesai';

  @override
  String get onboarding1Title => 'Selamat Datang di Jalan Allah';

  @override
  String get onboarding1Desc =>
      'Aplikasi Islami lengkap Anda untuk waktu sholat, Quran, dan lainnya';

  @override
  String get onboarding2Title => 'Waktu Sholat';

  @override
  String get onboarding2Desc => 'Waktu sholat akurat berdasarkan lokasi Anda';

  @override
  String get onboarding3Title => 'Quran dan Lainnya';

  @override
  String get onboarding3Desc =>
      'Baca Quran, lacak bacaan Anda, dan jelajahi konten Islami';

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
  String get diagnosticsNotSet => 'Tidak disetel';

  @override
  String get diagnosticsPrayerProfile => 'Profil Doa';

  @override
  String get diagnosticsPrayerSource => 'Otoritas Doa';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Khusus / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Sudut khusus manual (tidak ada sumber institusional)';

  @override
  String get diagnosticsCloudDriven => 'Didorong oleh Awan';

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
    return 'Gagal membaca manifes: $error';
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
  String get dailyVerse => 'Ayat Harian';

  @override
  String get todaysIbadah => 'Ibadah hari ini';

  @override
  String get quickAccess => 'Akses Cepat';

  @override
  String get assistant => 'Asisten';

  @override
  String get places => 'Tempat';

  @override
  String get library => 'Perpustakaan';

  @override
  String get analytics => 'Analisis';

  @override
  String get dailyDuas => 'Doa Harian';

  @override
  String essentialDuas(String count) {
    return '$count doa penting';
  }

  @override
  String get duaUnavailableTitle => 'Doa yang terverifikasi belum tersedia';

  @override
  String get duaUnavailableBody =>
      'Doa harian yang terverifikasi belum disinkronkan ke perangkat ini. Hubungkan ke sumber cloud untuk memuat doa yang bersumber, bukan fallback yang belum diverifikasi.';

  @override
  String get duaCategoryQuranic => 'Doa Al-Quran';

  @override
  String get duaCategoryMorningEvening => 'Pagi & Sore';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Perlindungan';

  @override
  String get duaCategoryBeginning => 'Awal';

  @override
  String get duaCategorySleep => 'Tidur';

  @override
  String get duaCategoryFoodDrink => 'Makanan & Minuman';

  @override
  String get duaCategoryForgiveness => 'Pengampunan';

  @override
  String get duaCategoryHome => 'Rumah';

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
  String get islamicEducation => 'Pendidikan Agama Islam';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Koleksi Hadits';

  @override
  String get hadithSourcePending => 'Sumber terverifikasi tertunda';

  @override
  String get hadithUnavailableTitle =>
      'Koleksi hadis yang terverifikasi belum tersedia';

  @override
  String get hadithUnavailableBody =>
      'Pembuatan ini masih bergantung pada feed hadis eksternal yang belum diverifikasi. Penjelajahan hadis tetap dinonaktifkan hingga kumpulan data yang bersumber disinkronkan.';

  @override
  String get paywallUnlockAll =>
      'Unlock all features for your spiritual journey';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'Unlimited AI-powered Q&A';

  @override
  String get paywallFeature2Title => 'Unlimited Offline';

  @override
  String get paywallFeature2Desc => 'Download all recitations';

  @override
  String get paywallFeature3Title => 'Exclusive Designs';

  @override
  String get paywallFeature3Desc => 'Premium themes & fonts';

  @override
  String get paywallFeature4Title => 'Ad-Free';

  @override
  String get paywallFeature4Desc => 'Zero advertisements';

  @override
  String get paywallGetAccess => 'Get Lifetime Access — \$1.00';

  @override
  String get restorePurchases => 'Restore Purchases';

  @override
  String get zakatCalculator => 'Zakat Calculator';

  @override
  String get zakatGold => 'Gold (Altın)';

  @override
  String get zakatSilver => 'Silver (Gümüş)';

  @override
  String get zakatCashBank => 'Cash / Bank';

  @override
  String get zakatBusiness => 'Business';

  @override
  String get zakatInvestments => 'Investments';

  @override
  String get zakatWeightGrams => 'Weight (g)';

  @override
  String get zakatPricePerGram => 'Price/g';

  @override
  String get zakatTotalAmount => 'Total Amount';

  @override
  String get zakatInventoryValue => 'Inventory Value';

  @override
  String get zakatDebts => 'Debts';

  @override
  String get zakatTotal => 'Total';

  @override
  String get calculateZakat => 'Hitung Zakat';

  @override
  String get nisabNotReached => 'Nisab not reached. Zakat is not obligatory.';

  @override
  String get totalZakat => 'Total Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'Gold Zakat';

  @override
  String get zakatSilverZakat => 'Silver Zakat';

  @override
  String get zakatCashZakat => 'Cash Zakat';

  @override
  String get zakatBusinessZakat => 'Business Zakat';

  @override
  String get zakatInvestmentZakat => 'Investment Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Daily query limit reached. Upgrade to Premium for unlimited.';

  @override
  String get chatbotErrorMsg =>
      'I could not generate a response. Please try again.';

  @override
  String get chatbotOfflinePrompt =>
      'Basis pengetahuan Islam offline yang terverifikasi masih dalam proses kurasi. Anda dapat mengaktifkan penggantian offline sekarang, namun ini hanya akan menampilkan pesan aman terbatas hingga kumpulan data yang bersumber siap.\n\nApakah Anda ingin mengaktifkan penggantian offline?';

  @override
  String get chatbotOfflineSwitched =>
      'Penggantian offline diaktifkan. Jawaban Islami lokal yang terverifikasi belum siap.';

  @override
  String get chatbotOfflineDownloadLabel => 'Aktifkan Penggantian Offline';

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
  String get sukunMixerSubtitle => 'Nature & Qur\'an Mixer';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (Nature)';

  @override
  String get sukunRainOfMercy => 'Rain of Mercy';

  @override
  String get sukunGardenOfPeace => 'Garden of Peace';

  @override
  String get sukunMidnightCalm => 'Midnight Calm';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Soundscapes unavailable';

  @override
  String get sukunUnavailableBody =>
      'This build does not include the required Sukun soundscape assets yet.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Hari berturut-turut';

  @override
  String get bestStreak => 'Pukulan terbaik';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Penggantian Offline';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Aktifkan Penggantian Offline';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API not configured. Please switch to Local AI.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Panduan Islam lokal yang terverifikasi belum tersedia. Beralih ke Cloud AI untuk mendapatkan jawaban bersumber.';

  @override
  String get mosques => 'Mosques';

  @override
  String get halalFood => 'Halal Food';

  @override
  String get placesSearchArea => 'Search this area';

  @override
  String get nearbyMosques => 'Nearby Mosques';

  @override
  String get islamicSchools => 'Islamic Schools';

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
  String get placesNetworkError => 'Network error. Please try again.';

  @override
  String get unknownPlaceName => 'Unknown Name';

  @override
  String get islamicPlaceFallback => 'Islamic Place';
}
