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
  String get splashTagline => 'Jalan Cahaya Islam';

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
  String get locationDetectionFailed =>
      'Tidak dapat mendeteksi lokasi Anda. Silakan pilih kota secara manual atau coba lagi.';

  @override
  String citiesCount(String count) {
    return '$count kota';
  }

  @override
  String get search => 'Cari';

  @override
  String get searchHint => 'Cari...';

  @override
  String get noResults => 'Tidak ada hasil yang ditemukan';

  @override
  String get loading => 'Memuat...';

  @override
  String get error => 'Kesalahan';

  @override
  String get appErrorOccurred => 'Terjadi kesalahan';

  @override
  String get appUnknownError => 'Kesalahan tidak diketahui';

  @override
  String get quranLoadFailed =>
      'Konten Al-Quran tidak dapat dimuat. Silakan coba lagi.';

  @override
  String get retry => 'Coba Lagi';

  @override
  String get refreshAction => 'Segarkan';

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
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

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
  String get tafsirLoading => 'Memuat tafsir...';

  @override
  String get tafsirSourceLabel => 'Sumber Tafsir';

  @override
  String get tafsirNoSurahFound => 'Tidak ditemukan tafsir untuk surah ini.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Tidak ditemukan tafsir untuk ayat $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir tidak dapat dimuat.';

  @override
  String get tafsirNoTextForAyah => 'Tidak ada teks tafsir untuk ayat ini.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Mengunduh tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Memuat tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Sumber Tafsir mengembalikan kesalahan HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Sumber tafsir yang dipilih tidak menghasilkan entri apa pun.';

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
  String get duaMeaning1 =>
      'yang lain berdoa, \'Ya Tuhan kami, berilah kami kebaikan di dunia dan di akhirat, dan lindungi kami dari siksa Neraka.\'';

  @override
  String get duaMeaning2 =>
      'Tuhan tidak membebani jiwa mana pun dengan lebih dari yang dapat ditanggungnya: masing-masing memperoleh kebaikan apa pun yang telah dilakukannya, dan menanggung keburukannya. \'Tuhan, jangan bebankan kami pada tugas jika kami lupa atau melakukan kesalahan. Tuhan, jangan bebani kami seperti Engkau membebani orang-orang sebelum kami. Tuhan, jangan membebani kami dengan beban melebihi kekuatan kami untuk menanggungnya. Maafkan kami, maafkan kami, dan kasihanilah kami. Engkaulah Pelindung kami, maka bantulah kami melawan orang-orang kafir.’';

  @override
  String get duaMeaning3 =>
      '‘Ya Tuhan kami, jangan biarkan hati kami menyimpang setelah Engkau memberi petunjuk kepada kami. Berilah kami rahmat-Mu: Engkaulah Yang Maha Memberi.';

  @override
  String get duaMeaning4 =>
      'Tuhan, berilah aku dan anak cucuku dapat menjaga shalat. Tuhan kami, terimalah permintaanku.';

  @override
  String get duaMeaning5 =>
      'dan turunkan sayapmu dalam kerendahan hati terhadap mereka dalam kebaikan dan katakan, \'Tuhan, kasihanilah mereka, sama seperti mereka merawatku ketika aku masih kecil.\'';

  @override
  String get duaMeaning6 =>
      'Maha Suci Allah, yang benar-benar memegang kendali. [Nabi], jangan terburu-buru membaca sebelum wahyu selesai sepenuhnya tetapi katakan, \'Tuhan, tambahlah ilmuku!\'';

  @override
  String get duaMeaning7 =>
      'Katakanlah [Nabi], \'Tuhan, ampunilah dan kasihanilah: Engkaulah yang paling penyayang di antara semuanya.\'';

  @override
  String get duaMeaning8 =>
      'orang-orang yang berdoa, ‘Ya Tuhan kami, berilah kami kebahagiaan pada pasangan dan keturunan kami. Jadikanlah kami teladan yang baik bagi orang-orang yang sadar akan Engkau’.';

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
  String get islamicNewYear => 'Tahun Baru Islam';

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
  String qiblaCompassErrorDetails(String error) {
    return 'Kesalahan kompas: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Sensor kompas tidak tersedia di perangkat ini.';

  @override
  String get qiblaLocationRequiredTitle => 'Lokasi diperlukan untuk Kiblat';

  @override
  String get qiblaLocationRequiredBody =>
      'Atur lokasi sebenarnya Anda sebelum menggunakan kompas kiblat agar arahnya dapat dihitung secara akurat.';

  @override
  String get adhanNotificationChannelName => 'Pemberitahuan Adzan';

  @override
  String get adhanNotificationChannelDescription =>
      'Peringatan waktu sholat dengan suara adzan.';

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
  String get downloadManager => 'Pengelola Unduhan';

  @override
  String get downloads => 'Unduhan';

  @override
  String get downloading => 'Mengunduh...';

  @override
  String get downloadComplete => 'Unduh Selesai';

  @override
  String get downloadFailed => 'Pengunduhan Gagal';

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
  String get zikrCompletedMashAllah => 'Selesai! Masya Allah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah jauh diatas segala ketidaksempurnaan.';

  @override
  String get zikrMeaningAlhamdulillah => 'Segala puji milik Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah Maha Besar.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Tidak ada Tuhan selain Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Saya mohon ampun kepada Allah.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Tidak ada daya dan kekuatan kecuali melalui Allah.';

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
  String get offlineDownloadManager => 'Pengelola Unduhan Offline';

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
  String get audioVoice => 'Suara Audio';

  @override
  String get audioVoiceMisharyAlafasy => 'Laki-laki (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Laki-laki (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Laki-laki (Sudais)';

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
      'Tabel cloud hilang di Supabase; fallback yang dibundel aktif';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Metadata cloud juz hilang; fallback struktural yang dibundel aktif';

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
  String get sukunAudioTitle => 'Soundscape Sukun';

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
      'Buka kunci semua fitur untuk perjalanan spiritual Anda';

  @override
  String get premiumProductUnavailable =>
      'Produk premium tidak tersedia saat ini. Silakan coba lagi nanti.';

  @override
  String get premiumPurchaseFailed =>
      'Pembelian tidak dapat diselesaikan. Silakan coba lagi.';

  @override
  String get paywallFeature1Title => 'Asisten Saraf Plus';

  @override
  String get paywallFeature1Desc => 'T&J bertenaga AI tanpa batas';

  @override
  String get paywallFeature2Title => 'Offline Tanpa Batas';

  @override
  String get paywallFeature2Desc => 'Unduh semua bacaan';

  @override
  String get paywallFeature3Title => 'Desain Eksklusif';

  @override
  String get paywallFeature3Desc => 'Tema & font premium';

  @override
  String get paywallFeature4Title => 'Bebas Iklan';

  @override
  String get paywallFeature4Desc => 'Nol iklan';

  @override
  String get paywallGetAccess => 'Dapatkan Akses Seumur Hidup — \$1,00';

  @override
  String get restorePurchases => 'Pulihkan Pembelian';

  @override
  String get zakatCalculator => 'Kalkulator Zakat';

  @override
  String get zakatGold => 'Emas (Altin)';

  @override
  String get zakatSilver => 'Perak (Gümüş)';

  @override
  String get zakatCashBank => 'Tunai / Bank';

  @override
  String get zakatBusiness => 'Bisnis';

  @override
  String get zakatInvestments => 'Investasi';

  @override
  String get zakatWeightGrams => 'Berat (g)';

  @override
  String get zakatPricePerGram => 'Harga/g';

  @override
  String get zakatTotalAmount => 'Jumlah Total';

  @override
  String get zakatInventoryValue => 'Nilai Persediaan';

  @override
  String get zakatDebts => 'Hutang';

  @override
  String get zakatTotal => 'Total';

  @override
  String get calculateZakat => 'Hitung Zakat';

  @override
  String get nisabNotReached => 'Nisab belum tercapai. Zakat tidak wajib.';

  @override
  String get totalZakat => 'Jumlah Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab : $nisab • Harta : $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakat Emas';

  @override
  String get zakatSilverZakat => 'Zakat Perak';

  @override
  String get zakatCashZakat => 'Zakat Tunai';

  @override
  String get zakatBusinessZakat => 'Zakat Bisnis';

  @override
  String get zakatInvestmentZakat => 'Zakat Investasi';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Batas kueri harian tercapai. Tingkatkan ke Premium tanpa batas.';

  @override
  String get chatbotErrorMsg =>
      'Saya tidak dapat memberikan tanggapan. Silakan coba lagi.';

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
      'Semua surah sudah diunduh untuk pembaca ini.';

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
  String get downloadAction => 'Unduh';

  @override
  String get resumeDownload => 'Lanjutkan Unduhan';

  @override
  String get deleteDownloadedFiles => 'Hapus File yang Diunduh';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Pengunduhan dibatalkan untuk $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Pengunduhan selesai untuk $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Pengunduhan selesai untuk $reciter dengan $failed surah yang gagal ($downloaded/$total diunduh).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Deleted offline files for $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Sumber audio Al-Quran terverifikasi tidak tersedia saat ini.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Paket audio Quran terverifikasi tidak lengkap ($available/$total). Segarkan benih cloud dan coba lagi.';
  }

  @override
  String get chatbotHint => 'Ask a question...';

  @override
  String get chatbotThinking => 'Thinking...';

  @override
  String get sukunMixerSubtitle => 'Pengaduk Alam & Al-Qur\'an';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (Alam)';

  @override
  String get sukunRainOfMercy => 'Hujan Rahmat';

  @override
  String get sukunGardenOfPeace => 'Taman Perdamaian';

  @override
  String get sukunMidnightCalm => 'Tenang Tengah Malam';

  @override
  String get sukunOceanTawheed => 'Samudera Tauhid';

  @override
  String get sukunUnavailableTitle => 'Soundscape tidak tersedia';

  @override
  String get sukunUnavailableBody =>
      'Pembangunan ini belum mencakup aset soundscape Sukun yang dibutuhkan.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Hari berturut-turut';

  @override
  String get bestStreak => 'Pukulan terbaik';

  @override
  String get chatbotCloudAiLabel => 'Awan AI';

  @override
  String get chatbotLocalAiLabel => 'Penggantian Offline';

  @override
  String get chatbotUseCloudAi => 'Gunakan Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Aktifkan Penggantian Offline';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count tersisa';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API tidak dikonfigurasi. Silakan beralih ke AI Lokal.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Panduan Islam lokal yang terverifikasi belum tersedia. Beralih ke Cloud AI untuk mendapatkan jawaban bersumber.';

  @override
  String get mosques => 'Masjid';

  @override
  String get halalFood => 'Makanan Halal';

  @override
  String get placesSearchArea => 'Cari di area ini';

  @override
  String get nearbyMosques => 'Masjid Terdekat';

  @override
  String get islamicSchools => 'Sekolah Islam';

  @override
  String placesFoundCount(String count) {
    return '$count ditemukan';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km jauhnya';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Kesalahan API: $statusCode';
  }

  @override
  String get placesNetworkError => 'Kesalahan jaringan. Silakan coba lagi.';

  @override
  String get placesLocationRequiredTitle => 'Lokasi diperlukan';

  @override
  String get placesLocationRequiredBody =>
      'Tetapkan lokasi terlebih dahulu agar masjid terdekat, makanan halal, dan pesantren dapat dicari dengan akurat.';

  @override
  String get placesMapTilesUnavailableTitle => 'Ubin peta tidak tersedia';

  @override
  String get placesMapTilesUnavailableBody =>
      'Sumber ubin peta terverifikasi belum dikonfigurasi untuk build ini. Tempat-tempat terdekat masih dapat dimuat dari lokasi tersimpan Anda.';

  @override
  String get unknownPlaceName => 'Nama Tidak Diketahui';

  @override
  String get islamicPlaceFallback => 'Tempat Islami';

  @override
  String get asmaMeaning1 => 'Yang Maha Pemurah';

  @override
  String get asmaMeaning2 => 'Maha Penyayang';

  @override
  String get asmaMeaning3 => 'Raja / Tuan Yang Abadi';

  @override
  String get asmaMeaning4 => 'Yang Mahakudus';

  @override
  String get asmaMeaning5 => 'Sumber Kedamaian';

  @override
  String get asmaMeaning6 => 'Pemberi Keamanan';

  @override
  String get asmaMeaning7 => 'Penjaga';

  @override
  String get asmaMeaning8 => 'Maha Berharga/Maha Perkasa';

  @override
  String get asmaMeaning9 => 'Pembanding';

  @override
  String get asmaMeaning10 => 'Yang Terhebat';

  @override
  String get asmaMeaning11 => 'Sang Pencipta';

  @override
  String get asmaMeaning12 => 'Pembuat Pesanan';

  @override
  String get asmaMeaning13 => 'Pembentuk Kecantikan';

  @override
  String get asmaMeaning14 => 'Maha Pemaaf';

  @override
  String get asmaMeaning15 => 'Penakluk';

  @override
  String get asmaMeaning16 => 'Pemberi Segalanya';

  @override
  String get asmaMeaning17 => 'Sang Pemelihara';

  @override
  String get asmaMeaning18 => 'Pembuka';

  @override
  String get asmaMeaning19 => 'Yang Maha Mengetahui Segalanya';

  @override
  String get asmaMeaning20 => 'Pembatas';

  @override
  String get asmaMeaning21 => 'Pereda';

  @override
  String get asmaMeaning22 => 'Si Penghina';

  @override
  String get asmaMeaning23 => 'Yang Mulia';

  @override
  String get asmaMeaning24 => 'Pemberi Kehormatan';

  @override
  String get asmaMeaning25 => 'Penghina';

  @override
  String get asmaMeaning26 => 'Pendengar Semua Orang';

  @override
  String get asmaMeaning27 => 'Yang Melihat Segalanya';

  @override
  String get asmaMeaning28 => 'Hakim';

  @override
  String get asmaMeaning29 => 'Yang Adil';

  @override
  String get asmaMeaning30 => 'Yang Halus';

  @override
  String get asmaMeaning31 => 'Yang Maha Sadar';

  @override
  String get asmaMeaning32 => 'Sabar';

  @override
  String get asmaMeaning33 => 'Yang Luar Biasa';

  @override
  String get asmaMeaning34 => 'Maha Pemaaf';

  @override
  String get asmaMeaning35 => 'Pemberi Pahala Rasa Syukur';

  @override
  String get asmaMeaning36 => 'Yang Tertinggi';

  @override
  String get asmaMeaning37 => 'Yang Terhebat';

  @override
  String get asmaMeaning38 => 'Pemelihara';

  @override
  String get asmaMeaning39 => 'Pemberi Nutrisi';

  @override
  String get asmaMeaning40 => 'Penghitung';

  @override
  String get asmaMeaning41 => 'Yang Agung';

  @override
  String get asmaMeaning42 => 'Yang Dermawan';

  @override
  String get asmaMeaning43 => 'Yang Waspada';

  @override
  String get asmaMeaning44 => 'Penjawab Doa';

  @override
  String get asmaMeaning45 => 'Semuanya Memahami';

  @override
  String get asmaMeaning46 => 'Yang Sangat Bijaksana';

  @override
  String get asmaMeaning47 => 'Yang Penuh Kasih';

  @override
  String get asmaMeaning48 => 'Yang Maha Mulia';

  @override
  String get asmaMeaning49 => 'Sang Kebangkitan';

  @override
  String get asmaMeaning50 => 'Saksi';

  @override
  String get asmaMeaning51 => 'Kebenaran';

  @override
  String get asmaMeaning52 => 'Wali Yang Maha Cukup';

  @override
  String get asmaMeaning53 => 'Pemilik Segala Kekuatan';

  @override
  String get asmaMeaning54 => 'Yang Kuat';

  @override
  String get asmaMeaning55 => 'Pelindung';

  @override
  String get asmaMeaning56 => 'Yang Terpuji';

  @override
  String get asmaMeaning57 => 'Penilai';

  @override
  String get asmaMeaning58 => 'Pembuat Asal';

  @override
  String get asmaMeaning59 => 'Pemulih';

  @override
  String get asmaMeaning60 => 'Pemberi Kehidupan';

  @override
  String get asmaMeaning61 => 'Pengambil Kehidupan';

  @override
  String get asmaMeaning62 => 'Yang Selalu Hidup';

  @override
  String get asmaMeaning63 => 'Pemelihara Mandiri';

  @override
  String get asmaMeaning64 => 'Penemu';

  @override
  String get asmaMeaning65 => 'Yang Mulia';

  @override
  String get asmaMeaning66 => 'Satu-Satunya';

  @override
  String get asmaMeaning67 => 'Yang Satu';

  @override
  String get asmaMeaning68 => 'Yang Dicari Semua Orang';

  @override
  String get asmaMeaning69 => 'Yang Maha Kuasa';

  @override
  String get asmaMeaning70 => 'Pencipta segala kekuatan';

  @override
  String get asmaMeaning71 => 'Ekspedisi';

  @override
  String get asmaMeaning72 => 'Penunda';

  @override
  String get asmaMeaning73 => 'Yang Pertama';

  @override
  String get asmaMeaning74 => 'Yang Terakhir';

  @override
  String get asmaMeaning75 => 'Manifes';

  @override
  String get asmaMeaning76 => 'Yang Tersembunyi';

  @override
  String get asmaMeaning77 => 'Gubernur';

  @override
  String get asmaMeaning78 => 'Yang Maha Agung';

  @override
  String get asmaMeaning79 => 'Pelaku Kebaikan';

  @override
  String get asmaMeaning80 => 'Panduan Pertobatan';

  @override
  String get asmaMeaning81 => 'Pembalas dendam';

  @override
  String get asmaMeaning82 => 'Yang Maha Pemaaf';

  @override
  String get asmaMeaning83 => 'Klemens';

  @override
  String get asmaMeaning84 => 'Pemilik / Penguasa Segalanya';

  @override
  String get asmaMeaning85 => 'Pemilik Keagungan dan Karunia';

  @override
  String get asmaMeaning86 => 'Yang Adil';

  @override
  String get asmaMeaning87 => 'Pengumpul';

  @override
  String get asmaMeaning88 => 'Yang Kaya';

  @override
  String get asmaMeaning89 => 'Yang Memperkaya';

  @override
  String get asmaMeaning90 => 'Pencegah Bahaya';

  @override
  String get asmaMeaning91 => 'Pembawa Bahaya';

  @override
  String get asmaMeaning92 => 'Pemberi Manfaat';

  @override
  String get asmaMeaning93 => 'Cahaya';

  @override
  String get asmaMeaning94 => 'Pemandu';

  @override
  String get asmaMeaning95 => 'Pembuatnya';

  @override
  String get asmaMeaning96 => 'Yang Abadi';

  @override
  String get asmaMeaning97 => 'Pewaris';

  @override
  String get asmaMeaning98 => 'Pedoman Yang Paling Adil';

  @override
  String get asmaMeaning99 => 'Yang Sabar';
}
