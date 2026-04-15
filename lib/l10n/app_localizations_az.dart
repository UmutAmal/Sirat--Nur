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
  String get splashTagline => 'İslam İşıq Yolu';

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
  String get locationDetectionFailed =>
      'Məkanınızı aşkar etmək mümkün olmadı. Lütfən, şəhəri əl ilə seçin və ya yenidən cəhd edin.';

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
  String get quranLoadFailed =>
      'Quran məzmununu yükləmək mümkün olmadı. Yenidən cəhd edin.';

  @override
  String get retry => 'Yenidən cəhd edin';

  @override
  String get refreshAction => 'Yeniləyin';

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
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

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
  String get tafsirLoading => 'Təfsir yüklənir...';

  @override
  String get tafsirSourceLabel => 'Təfsir mənbəyi';

  @override
  String get tafsirNoSurahFound => 'Bu surə üçün heç bir təfsir tapılmadı.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return '$ayah ayəsi üçün heç bir təfsir tapılmadı.';
  }

  @override
  String get tafsirLoadFailed => 'Təfsiri yükləmək mümkün olmadı.';

  @override
  String get tafsirNoTextForAyah => 'Bu ayə üçün təfsir mətni yoxdur.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return '$current/$total təfsiri endirilir';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Təfsir yüklənir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Təfsir mənbəyi HTTP $statusCode xətası qaytardı.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Seçilmiş təfsir mənbəyi heç bir qeydi qaytarmadı.';

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
  String get duaMeaning1 =>
      'Digərləri isə: “Ey Rəbbimiz, bizə dünyada da, axirətdə də yaxşılıq ver və bizi Cəhənnəm əzabından qoru!” deyə dua edirlər.';

  @override
  String get duaMeaning2 =>
      'Allah heç bir kəsə gücündən artıq yük yükləməz: Hər kəs etdiyi yaxşılıqdan savayı qazanar, pisliyi isə ona çatar – “Pərvərdigara, unutsaq və ya xəta etsək, bizi cəzalandırma. Ya Rəbb, bizdən əvvəlkilərə yüklədiyin kimi, bizi də yükləmə! Ya Rəbb, bizə dözə biləcəyimizdən artıq yük yükləmə. Bizi bağışla, bizi bağışla və bizə rəhm et. Sən bizim himayəmizsən, kafirlərə qarşı bizə kömək et!”';

  @override
  String get duaMeaning3 =>
      '“Ey Rəbbimiz, bizi doğru yola yönəltdikdən sonra qəlblərimizi azdırma. Bizə mərhəmətini nəsib et!';

  @override
  String get duaMeaning4 =>
      'Ya Rəbb, mənə və nəslimə namaz qılmağı nəsib et. Ey Rəbbimiz, duamı qəbul et.';

  @override
  String get duaMeaning5 =>
      'Onlara mehribanlıqla təvazökarlıqla qanadını aşağı sal və de: “Pərvərdigara!';

  @override
  String get duaMeaning6 =>
      'Həqiqətən hakim olan Allah ucadır. [Peyğəmbər], vəhy tamam olmamışdan əvvəl oxumağa tələsmə və de: “Pərvərdigara, mənim elmimi artır!”';

  @override
  String get duaMeaning7 =>
      '(Peyğəmbərə) de: “Pərvərdigara, bağışla və rəhm et, Sən ən mərhəmətlisən.';

  @override
  String get duaMeaning8 =>
      'O kəslər ki: “Ey Rəbbimiz, zövcələrimizi və övladlarımızı sevindir. Bizi Səndən xəbərdar olanlara gözəl nümunə et!”';

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
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '${hours}saat ${minutes}dəq';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '${minutes}m';
  }

  @override
  String get prayerRemainingUnavailable => '--';

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
  String get islamicNewYear => 'İslam Yeni ili';

  @override
  String get mawlidAnNabi => 'Mövlud ən-Nəbi';

  @override
  String get specialDayDateRamadanStart => '1 Ramazan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramazan';

  @override
  String get specialDayDateEidAlFitr => '1 Şəvval';

  @override
  String get specialDayDateEidAlAdha => '10 Zilhiccə';

  @override
  String get specialDayDateIslamicNewYear => '1 Məhərrəm';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rəbiul-əvvəl';

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
  String qiblaCompassErrorDetails(String error) {
    return 'Kompas xətası: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Bu cihazda kompas sensoru mövcud deyil.';

  @override
  String get adhanNotificationChannelName => 'Azan bildirişləri';

  @override
  String get adhanNotificationChannelDescription =>
      'Azan səsi ilə namaz vaxtı xəbərdarlığı.';

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
  String get zikrCompletedMashAllah => 'Tamamlandı! MaşAllah';

  @override
  String get zikrMeaningSubhanAllah => 'Allah hər bir qüsurdan uzaqdır.';

  @override
  String get zikrMeaningAlhamdulillah => 'Bütün həmdlər Allaha məxsusdur.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah ən böyükdür.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Allahdan başqa ilah yoxdur.';

  @override
  String get zikrMeaningAstaghfirullah => 'Allahdan bağışlanma diləyirəm.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Allahdan başqa heç bir güc və güc yoxdur.';

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
  String get audioVoice => 'Audio Səs';

  @override
  String get audioVoiceMisharyAlafasy => 'Kişi (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Kişi (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Kişi (Sudais)';

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
      'Supabase-də bulud cədvəlləri yoxdur; yığılmış geri qaytarma aktivdir';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz metadata yoxdur; yığılmış struktur geriləmə aktivdir';

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
  String get premiumProductUnavailable =>
      'Premium məhsul hazırda mövcud deyil. Daha sonra yenidən cəhd edin.';

  @override
  String get premiumPurchaseFailed =>
      'Satınalma tamamlanmadı. Yenidən cəhd edin.';

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
  String get downloadAction => 'Yüklə';

  @override
  String get resumeDownload => 'Yükləməni davam etdirin';

  @override
  String get deleteDownloadedFiles => 'Yüklənmiş faylları silin';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return '$reciter üçün endirmə ləğv edildi.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return '$reciter üçün endirmə tamamlandı.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return '$failed uğursuz surələrlə $reciter üçün endirmə tamamlandı ($downloaded/$total endirildi).';
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
  String get chatbotUseCloudAi => 'Cloud AI istifadə edin (Gemini)';

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
  String get placesLocationRequiredTitle => 'Məkan tələb olunur';

  @override
  String get placesLocationRequiredBody =>
      'Əvvəlcə yer təyin edin ki, yaxınlıqdakı məscidlər, halal yeməklər və İslam məktəbləri dəqiq axtarılsın.';

  @override
  String get placesMapTilesUnavailableTitle => 'Xəritə plitələri əlçatan deyil';

  @override
  String get placesMapTilesUnavailableBody =>
      'Doğrulanmış xəritə mənbəsi hələ bu quruluş üçün konfiqurasiya edilməyib. Yaxınlıqdakı yerlər hələ də saxladığınız yerdən yükləyə bilər.';

  @override
  String get unknownPlaceName => 'Naməlum Ad';

  @override
  String get islamicPlaceFallback => 'İslam Məkanı';

  @override
  String get asmaMeaning1 => 'Xeyirxah';

  @override
  String get asmaMeaning2 => 'Rəhman';

  @override
  String get asmaMeaning3 => 'Kral / Əbədi Rəbb';

  @override
  String get asmaMeaning4 => 'Ən Müqəddəs';

  @override
  String get asmaMeaning5 => 'Sülhün Mənbəyi';

  @override
  String get asmaMeaning6 => 'Təhlükəsizlik Verən';

  @override
  String get asmaMeaning7 => 'The Guardian';

  @override
  String get asmaMeaning8 => 'Qiymətli / Ən Qüdrətli';

  @override
  String get asmaMeaning9 => 'Məcbur edən';

  @override
  String get asmaMeaning10 => 'Ən Böyük';

  @override
  String get asmaMeaning11 => 'Yaradan';

  @override
  String get asmaMeaning12 => 'Sifariş Yaradan';

  @override
  String get asmaMeaning13 => 'Gözəlliyin Formaçısı';

  @override
  String get asmaMeaning14 => 'Bağışlayan';

  @override
  String get asmaMeaning15 => 'The Subduer';

  @override
  String get asmaMeaning16 => 'Hər şeyi verən';

  @override
  String get asmaMeaning17 => 'Rəbb';

  @override
  String get asmaMeaning18 => 'Açıq';

  @override
  String get asmaMeaning19 => 'Hər şeyi biləndir';

  @override
  String get asmaMeaning20 => 'The Constrictor';

  @override
  String get asmaMeaning21 => 'Rahatlaşdırıcı';

  @override
  String get asmaMeaning22 => 'Abaser';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'Şərəf sahibi';

  @override
  String get asmaMeaning25 => 'Alçaldıcı';

  @override
  String get asmaMeaning26 => 'Hamını Eşidəndir';

  @override
  String get asmaMeaning27 => 'Hamının Görən';

  @override
  String get asmaMeaning28 => 'Hakim';

  @override
  String get asmaMeaning29 => 'Ədalətli';

  @override
  String get asmaMeaning30 => 'Zərif Olan';

  @override
  String get asmaMeaning31 => 'Hamıdan xəbərdardır';

  @override
  String get asmaMeaning32 => 'The Forebearing';

  @override
  String get asmaMeaning33 => 'Möhtəşəm';

  @override
  String get asmaMeaning34 => 'Böyük Bağışlayan';

  @override
  String get asmaMeaning35 => 'Təşəkkürün Mükafatçısı';

  @override
  String get asmaMeaning36 => 'Ən yüksək';

  @override
  String get asmaMeaning37 => 'Ən Böyük';

  @override
  String get asmaMeaning38 => 'Qoruyucu';

  @override
  String get asmaMeaning39 => 'Qidalandırıcı';

  @override
  String get asmaMeaning40 => 'Hesablayıcı';

  @override
  String get asmaMeaning41 => 'Əlahəzrət';

  @override
  String get asmaMeaning42 => 'Səxavətli';

  @override
  String get asmaMeaning43 => 'Aydın Olan';

  @override
  String get asmaMeaning44 => 'Duanın Cavabçısı';

  @override
  String get asmaMeaning45 => 'Hər şeyi Anlayan';

  @override
  String get asmaMeaning46 => 'Mükəmməl Müdrik';

  @override
  String get asmaMeaning47 => 'Sevən';

  @override
  String get asmaMeaning48 => 'Ən Şanlı';

  @override
  String get asmaMeaning49 => 'Dirildən';

  @override
  String get asmaMeaning50 => 'Şahid';

  @override
  String get asmaMeaning51 => 'Həqiqət';

  @override
  String get asmaMeaning52 => 'Hər şeyə kifayət edən Qəyyum';

  @override
  String get asmaMeaning53 => 'Bütün Gücün Sahibi';

  @override
  String get asmaMeaning54 => 'Güclü';

  @override
  String get asmaMeaning55 => 'Qoruyucu';

  @override
  String get asmaMeaning56 => 'Təriflənənlər';

  @override
  String get asmaMeaning57 => 'Qiymətləndirici';

  @override
  String get asmaMeaning58 => 'Originator';

  @override
  String get asmaMeaning59 => 'Bərpaçı';

  @override
  String get asmaMeaning60 => 'Həyat verən';

  @override
  String get asmaMeaning61 => 'Həyat Alıcı';

  @override
  String get asmaMeaning62 => 'Həmişə Yaşayan';

  @override
  String get asmaMeaning63 => 'Özünü təmin edən';

  @override
  String get asmaMeaning64 => 'Tapıcı';

  @override
  String get asmaMeaning65 => 'Şöhrətli';

  @override
  String get asmaMeaning66 => 'Yeganə';

  @override
  String get asmaMeaning67 => 'Bir';

  @override
  String get asmaMeaning68 => 'Hamı tərəfindən axtarılan';

  @override
  String get asmaMeaning69 => 'Güclü';

  @override
  String get asmaMeaning70 => 'Bütün gücün Yaradanı';

  @override
  String get asmaMeaning71 => 'Expediter';

  @override
  String get asmaMeaning72 => 'Gecikdirici';

  @override
  String get asmaMeaning73 => 'Birinci';

  @override
  String get asmaMeaning74 => 'Sonuncu';

  @override
  String get asmaMeaning75 => 'Manifest';

  @override
  String get asmaMeaning76 => 'Gizli';

  @override
  String get asmaMeaning77 => 'Qubernator';

  @override
  String get asmaMeaning78 => 'Uca';

  @override
  String get asmaMeaning79 => 'Yaxşılıq Edən';

  @override
  String get asmaMeaning80 => 'Tövbə Bələdçisi';

  @override
  String get asmaMeaning81 => 'Qisasçı';

  @override
  String get asmaMeaning82 => 'Bağışlayan';

  @override
  String get asmaMeaning83 => 'Clement';

  @override
  String get asmaMeaning84 => 'Hamının Sahibi / Hökmdarı';

  @override
  String get asmaMeaning85 => 'Cəlal və Kərəm Sahibi';

  @override
  String get asmaMeaning86 => 'Ədalətli';

  @override
  String get asmaMeaning87 => 'Toplayan';

  @override
  String get asmaMeaning88 => 'Zəngin';

  @override
  String get asmaMeaning89 => 'Zənginləşdirici';

  @override
  String get asmaMeaning90 => 'Zərərin qarşısını alan';

  @override
  String get asmaMeaning91 => 'Zərər gətirən';

  @override
  String get asmaMeaning92 => 'Nemətlər bəxş edən';

  @override
  String get asmaMeaning93 => 'İşıq';

  @override
  String get asmaMeaning94 => 'Rəhbər';

  @override
  String get asmaMeaning95 => 'Originator';

  @override
  String get asmaMeaning96 => 'Əbədi Olan';

  @override
  String get asmaMeaning97 => 'Varis';

  @override
  String get asmaMeaning98 => 'Ən Saleh Bələdçi';

  @override
  String get asmaMeaning99 => 'Xəstə Bir';
}
