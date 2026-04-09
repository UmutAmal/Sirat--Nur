// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Azerbaijani (`az`).
class AppLocalizationsAz extends AppLocalizations {
  AppLocalizationsAz([String locale = 'az']) : super(locale);

  @override
  String get appTitle => 'Allahın yolu';

  @override
  String get home => 'Ev';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'qiblə';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Təqvim';

  @override
  String get settings => 'Parametrlər';

  @override
  String get nextPrayer => 'Növbəti Namaz';

  @override
  String get prayerTimes => 'Namaz vaxtları';

  @override
  String get continueReading => 'Oxumağa Davam et';

  @override
  String get getLifetimePro => 'Lifetime Pro əldə edin';

  @override
  String get unlockTajweed => 'Tajweed və Qabaqcıl Xüsusiyyətləri açın';

  @override
  String get prayerCalculation => 'Namazın hesablanması';

  @override
  String get method => 'Hesablama metodu';

  @override
  String get madhab => 'Əsr hüquq üsulu';

  @override
  String get surahs => 'surələr';

  @override
  String get ayahs => 'Ayələr';

  @override
  String get fajr => 'Sübh';

  @override
  String get sunrise => 'Günəşin doğuşu';

  @override
  String get dhuhr => 'Zöhr';

  @override
  String get asr => 'Əsr';

  @override
  String get maghrib => 'Mağrib';

  @override
  String get isha => 'İşa';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName üçün vaxt';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '$prayerName dua etmək vaxtıdır.';
  }

  @override
  String get dataStorage => 'Məlumat və Saxlama';

  @override
  String get clearCache => 'Keşi təmizləyin';

  @override
  String get cacheClearedSuccess => 'Keş uğurla təmizləndi';

  @override
  String get location => 'Məkan';

  @override
  String get language => 'Dil';

  @override
  String get selectLanguage => 'Dil seçin';

  @override
  String get searchLanguage => '180+ dildə axtar...';

  @override
  String get systemDefault => 'Sistem Defolt';

  @override
  String get currentLocation => 'Cari Məkan (GPS)';

  @override
  String get locationServiceDisabled => 'Məkan xidməti deaktiv edilib.';

  @override
  String get locationPermissionDenied => 'Məkan icazəsi rədd edildi.';

  @override
  String citiesCount(String count) {
    return '$count şəhərlər';
  }

  @override
  String get search => 'Axtar';

  @override
  String get searchHint => 'Axtar...';

  @override
  String get noResults => 'Heç bir nəticə tapılmadı';

  @override
  String get loading => 'Yüklənir...';

  @override
  String get error => 'Xəta';

  @override
  String get appErrorOccurred => 'Xəta baş verdi';

  @override
  String get appUnknownError => 'Naməlum xəta';

  @override
  String get retry => 'Yenidən cəhd edin';

  @override
  String get cancel => 'Ləğv et';

  @override
  String get save => 'Saxla';

  @override
  String get delete => 'Sil';

  @override
  String get edit => 'Redaktə et';

  @override
  String get close => 'Bağlayın';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Bəli';

  @override
  String get no => 'yox';

  @override
  String get surah => 'surə';

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Səhifə';

  @override
  String get reading => 'Oxumaq';

  @override
  String get recitation => 'Qiraət';

  @override
  String get translation => 'Tərcümə';

  @override
  String get tafsir => 'Təfsir';

  @override
  String get bookmarks => 'Əlfəcinlər';

  @override
  String get addBookmark => 'Əlfəcin əlavə edin';

  @override
  String get removeBookmark => 'Əlfəcin silin';

  @override
  String get lastRead => 'Son Oxu';

  @override
  String get dailyZikr => 'Gündəlik Zikr';

  @override
  String get morningZikr => 'Səhər Zikr';

  @override
  String get eveningZikr => 'Axşam Zikr';

  @override
  String get tasbih => 'Təsbih';

  @override
  String get ahkab => 'Əhkam';

  @override
  String get masaail => 'Məsail';

  @override
  String get hadith => 'hədis';

  @override
  String get hadithCollection => 'Hədislər toplusu';

  @override
  String get hadithBooks => 'Hədis kitabları';

  @override
  String get searchHadith => 'Hədis axtarın';

  @override
  String get asmaulHusna => 'Əsma-ül-Hüsna';

  @override
  String get namesOfAllah => 'Allahın adları';

  @override
  String get liveTv => 'Canlı TV';

  @override
  String get watchLive => 'Canlı izlə';

  @override
  String get streamError => 'Yayım xətası';

  @override
  String get reload => 'Yenidən yükləyin';

  @override
  String get openInYoutube => 'YouTube-da açın';

  @override
  String get ibadahTracker => 'Ibadah İzləyicisi';

  @override
  String get fasting => 'Oruc tutmaq';

  @override
  String get quranReading => 'Quran oxumaq';

  @override
  String get prayers => 'Dualar';

  @override
  String get dhikrCount => 'Zikr sayı';

  @override
  String get weeklyProgress => 'Həftəlik Tərəqqi';

  @override
  String get monthlyProgress => 'Aylıq tərəqqi';

  @override
  String get statistics => 'Statistika';

  @override
  String get hijriCalendar => 'Hicri Təqvim';

  @override
  String get gregorianCalendar => 'Qriqorian təqvimi';

  @override
  String get today => 'Bu gün';

  @override
  String get tomorrow => 'Sabah';

  @override
  String get yesterday => 'Dünən';

  @override
  String get specialDays => 'Xüsusi Günlər';

  @override
  String get ramadan => 'Ramazan';

  @override
  String get eidAlFitr => 'Fitr bayramı';

  @override
  String get eidAlAdha => 'Qurban bayramı';

  @override
  String get laylatAlQadr => 'Qədr gecəsi';

  @override
  String get qiblaDirection => 'Qiblə istiqaməti';

  @override
  String get compass => 'Kompas';

  @override
  String get degrees => 'dərəcə';

  @override
  String get north => 'Şimal';

  @override
  String get qiblaFound => 'Qiblə tapıldı!';

  @override
  String get turnDevice => 'Cihazınızı qibləyə tərəf çevirin';

  @override
  String get notifications => 'Bildirişlər';

  @override
  String get prayerNotifications => 'Namaz Bildirişləri';

  @override
  String get enableNotifications => 'Bildirişləri aktivləşdirin';

  @override
  String get notificationTime => 'Bildiriş vaxtı';

  @override
  String get beforePrayer => 'dəqiqə namazdan əvvəl';

  @override
  String get theme => 'Mövzu';

  @override
  String get lightMode => 'İşıq rejimi';

  @override
  String get darkMode => 'Qaranlıq rejim';

  @override
  String get systemTheme => 'Sistem mövzusu';

  @override
  String get about => 'Haqqında';

  @override
  String get version => 'Versiya';

  @override
  String get privacyPolicy => 'Məxfilik Siyasəti';

  @override
  String get termsOfService => 'Xidmət Şərtləri';

  @override
  String get contactUs => 'Bizimlə əlaqə saxlayın';

  @override
  String get rateApp => 'Qiymətləndirmə Tətbiqi';

  @override
  String get shareApp => 'Tətbiqi paylaşın';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Yükləmə meneceri';

  @override
  String get downloads => 'Yükləmələr';

  @override
  String get downloading => 'Endirilir...';

  @override
  String get downloadComplete => 'Yükləmə tamamlandı';

  @override
  String get downloadFailed => 'Yükləmə uğursuz oldu';

  @override
  String get offlineMode => 'Oflayn rejim';

  @override
  String get noInternet => 'İnternet bağlantısı yoxdur';

  @override
  String get checkConnection => 'Bağlantınızı yoxlayın';

  @override
  String get premium => 'Premium';

  @override
  String get upgradeToPro => 'Pro-a yüksəldin';

  @override
  String get proFeatures => 'Pro Xüsusiyyətləri';

  @override
  String get removeAds => 'Reklamları Sil';

  @override
  String get unlockAll => 'Bütün Məzmunu Kilidini Açın';

  @override
  String get exclusiveContent => 'Eksklüziv Məzmun';

  @override
  String get welcome => 'Xoş gəldiniz';

  @override
  String get getStarted => 'Başlayın';

  @override
  String get skip => 'Keç';

  @override
  String get next => 'Sonrakı';

  @override
  String get done => 'Bitdi';

  @override
  String get onboarding1Title => 'Allah yolunda xoş gəlmisiniz';

  @override
  String get onboarding1Desc =>
      'Namaz vaxtları, Quran və s. üçün tam İslam yoldaş tətbiqiniz';

  @override
  String get onboarding2Title => 'Namaz vaxtları';

  @override
  String get onboarding2Desc => 'Yerinizə görə dəqiq namaz vaxtları';

  @override
  String get onboarding3Title => 'Quran və daha çox';

  @override
  String get onboarding3Desc =>
      'Quran oxuyun, oxuduğunuzu izləyin və İslam məzmununu araşdırın';

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
  String get diagnosticsNotSet => 'Qurulmayıb';

  @override
  String get diagnosticsPrayerProfile => 'Namaz Profili';

  @override
  String get diagnosticsPrayerSource => 'Namaz İdarəsi';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Fərdi / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manual fərdi açılar (institusional mənbə yoxdur)';

  @override
  String get diagnosticsCloudDriven => 'Buludla idarə olunur';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Aktivləri';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Quran Audio Aktivləri';

  @override
  String get diagnosticsAudioAssets => 'Audio Aktivlər';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count faylları';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifest oxunmadı: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Lokallaşdırma Yerləri';

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
  String get dailyVerse => 'Gündəlik ayə';

  @override
  String get todaysIbadah => 'Bugünkü ibadət';

  @override
  String get quickAccess => 'Sürətli giriş';

  @override
  String get assistant => 'köməkçi';

  @override
  String get places => 'yerlər';

  @override
  String get library => 'Kitabxana';

  @override
  String get analytics => 'Analitika';

  @override
  String get dailyDuas => 'Gündəlik Dualar';

  @override
  String essentialDuas(String count) {
    return '$count vacib dualar';
  }

  @override
  String get duaUnavailableTitle => 'Təsdiqlənmiş dualar hələ mövcud deyil';

  @override
  String get duaUnavailableBody =>
      'Doğrulanmış gündəlik dualar hələ bu cihaza sinxronlaşdırılmayıb. Təsdiqlənməmiş ehtiyat əvəzinə mənbəli duaları yükləmək üçün bulud mənbəyinə qoşulun.';

  @override
  String get duaCategoryQuranic => 'Quran duası';

  @override
  String get duaCategoryMorningEvening => 'Səhər & Axşam';

  @override
  String get duaCategoryTasbih => 'Təsbih';

  @override
  String get duaCategoryProtection => 'Qoruma';

  @override
  String get duaCategoryBeginning => 'Başlanğıclar';

  @override
  String get duaCategorySleep => 'yatmaq';

  @override
  String get duaCategoryFoodDrink => 'Qida və İçki';

  @override
  String get duaCategoryForgiveness => 'bağışlanma';

  @override
  String get duaCategoryHome => 'Ev';

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
  String get islamicEducation => 'İslam Təhsili';

  @override
  String get sukunAudioTitle => 'Sukun Səs Mənzərələri';

  @override
  String get hadithCollections => 'Hədis Topluları';

  @override
  String get hadithSourcePending => 'Təsdiqlənmiş mənbə gözlənilir';

  @override
  String get hadithUnavailableTitle =>
      'Təsdiqlənmiş hədis topluları hələ mövcud deyil';

  @override
  String get hadithUnavailableBody =>
      'Bu quruluş hələ də təsdiqlənməmiş xarici hədis lentindən asılıdır. Hədislərə baxış qaynaqlanmış verilənlər bazası sinxronizasiya edilənə qədər qeyri-aktiv qalır.';

  @override
  String get paywallUnlockAll =>
      'Ruhani səyahətiniz üçün bütün xüsusiyyətləri açın';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc =>
      'Limitsiz süni intellektlə işləyən sual-cavab';

  @override
  String get paywallFeature2Title => 'Limitsiz Offline';

  @override
  String get paywallFeature2Desc => 'Bütün qiraətləri yükləyin';

  @override
  String get paywallFeature3Title => 'Eksklüziv Dizaynlar';

  @override
  String get paywallFeature3Desc => 'Premium mövzular və şriftlər';

  @override
  String get paywallFeature4Title => 'Reklamsız';

  @override
  String get paywallFeature4Desc => 'Sıfır reklam';

  @override
  String get paywallGetAccess => 'Ömürlük Giriş əldə edin - \$1.00';

  @override
  String get restorePurchases => 'Satınalmaları bərpa edin';

  @override
  String get zakatCalculator => 'Zəkat kalkulyatoru';

  @override
  String get zakatGold => 'Qızıl (Altın)';

  @override
  String get zakatSilver => 'Gümüş (Gümüş)';

  @override
  String get zakatCashBank => 'Nağd / Bank';

  @override
  String get zakatBusiness => 'Biznes';

  @override
  String get zakatInvestments => 'İnvestisiyalar';

  @override
  String get zakatWeightGrams => 'Çəki (q)';

  @override
  String get zakatPricePerGram => 'Qiymət/q';

  @override
  String get zakatTotalAmount => 'Ümumi məbləğ';

  @override
  String get zakatInventoryValue => 'İnventar dəyəri';

  @override
  String get zakatDebts => 'Borclar';

  @override
  String get zakatTotal => 'Cəmi';

  @override
  String get calculateZakat => 'Zəkatı hesablayın';

  @override
  String get nisabNotReached => 'Nisab çatmadı. Zəkat vacib deyil.';

  @override
  String get totalZakat => 'Ümumi zəkat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Aktivlər: $assets';
  }

  @override
  String get zakatGoldZakat => 'Qızıl Zəkat';

  @override
  String get zakatSilverZakat => 'Gümüş zəkat';

  @override
  String get zakatCashZakat => 'Nağd zəkat';

  @override
  String get zakatBusinessZakat => 'Biznes zəkat';

  @override
  String get zakatInvestmentZakat => 'İnvestisiya zəkatı';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Gündəlik sorğu limitinə çatdı. Limitsiz olaraq Premiuma təkmilləşdirin.';

  @override
  String get chatbotErrorMsg => 'Cavab yarada bilmədim. Yenidən cəhd edin.';

  @override
  String get chatbotOfflinePrompt =>
      'Təsdiqlənmiş oflayn İslam bilik bazası hələ də kurasiya olunur. Siz indi oflayn bərpa prosesini aktiv edə bilərsiniz, lakin mənbəli verilənlər bazası hazır olana qədər o, yalnız məhdud təhlükəsiz mesajları göstərəcək.\n\nOflayn geri dönüşü aktiv etmək istərdinizmi?';

  @override
  String get chatbotOfflineSwitched =>
      'Oflayn bərpa aktivləşdirildi. Təsdiqlənmiş yerli İslam cavabları hələ hazır deyil.';

  @override
  String get chatbotOfflineDownloadLabel => 'Offline Fallback-i aktivləşdirin';

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
  String get sukunMixerSubtitle => 'Təbiət və Quran qarışdırıcı';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (Təbiət)';

  @override
  String get sukunRainOfMercy => 'Rəhmət yağışı';

  @override
  String get sukunGardenOfPeace => 'Sülh bağı';

  @override
  String get sukunMidnightCalm => 'Gecə yarısı sakit';

  @override
  String get sukunOceanTawheed => 'Okean Tövhidi';

  @override
  String get sukunUnavailableTitle => 'Səs mənzərələri əlçatan deyil';

  @override
  String get sukunUnavailableBody =>
      'Bu quruluşa hələ tələb olunan Sukun səs mənzərəsi aktivləri daxil deyil.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Gün zolağı';

  @override
  String get bestStreak => 'Ən yaxşı zolaq';

  @override
  String get chatbotCloudAiLabel => 'Bulud AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Offline Fallback-i aktivləşdirin';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count qaldı';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API konfiqurasiya edilməyib. Lütfən, Yerli AI-a keçin.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Təsdiqlənmiş yerli İslam bələdçisi hələ mövcud deyil. Mənbəli cavablar üçün Cloud AI-a keçin.';

  @override
  String get mosques => 'Məscidlər';

  @override
  String get halalFood => 'Halal Qida';

  @override
  String get placesSearchArea => 'Bu ərazini axtarın';

  @override
  String get nearbyMosques => 'Yaxınlıqda Məscidlər';

  @override
  String get islamicSchools => 'İslam məktəbləri';

  @override
  String placesFoundCount(String count) {
    return '$count tapıldı';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km məsafədə';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API xətası: $statusCode';
  }

  @override
  String get placesNetworkError => 'Şəbəkə xətası. Yenidən cəhd edin.';

  @override
  String get unknownPlaceName => 'Naməlum Ad';

  @override
  String get islamicPlaceFallback => 'İslam Məkanı';
}
