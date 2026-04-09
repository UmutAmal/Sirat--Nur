// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

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
  String get fajr => '파즈르';

  @override
  String get sunrise => '해돋이';

  @override
  String get dhuhr => '두르';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => '마그리브';

  @override
  String get isha => '이샤';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName 시간입니다';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '이제 $prayerName을(를) 기도할 시간입니다.';
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
  String get locationServiceDisabled => '위치 서비스가 비활성화되었습니다.';

  @override
  String get locationPermissionDenied => '위치 권한이 거부되었습니다.';

  @override
  String citiesCount(String count) {
    return '$count 도시';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'No results found';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get appErrorOccurred => '오류가 발생했습니다';

  @override
  String get appUnknownError => '알 수 없는 오류';

  @override
  String get retry => 'Retry';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

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
  String get no => 'No';

  @override
  String get surah => 'Surah';

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
  String get hadith => '하디스';

  @override
  String get hadithCollection => '하디스 컬렉션';

  @override
  String get hadithBooks => '하디스 도서';

  @override
  String get searchHadith => '하디스 검색';

  @override
  String get asmaulHusna => '아스마울후스나';

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
  String get openInYoutube => 'YouTube에서 열기';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Fasting';

  @override
  String get quranReading => 'Quran Reading';

  @override
  String get prayers => 'Prayers';

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
    return '나침반 오류: $error';
  }

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
    return '$appName을 확인해 보세요: 최고의 이슬람 라이프스타일 앱! $url';
  }

  @override
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Download Complete';

  @override
  String get downloadFailed => 'Download Failed';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'No Internet Connection';

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
  String get diagnosticsNotSet => '설정되지 않음';

  @override
  String get diagnosticsPrayerProfile => '기도 프로필';

  @override
  String get diagnosticsPrayerSource => '기도의 권위';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return '사용자 정의 / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource => '수동 맞춤 각도(기관 소스 없음)';

  @override
  String get diagnosticsCloudDriven => '클라우드 기반';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan 오디오 자산';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => '꾸란 오디오 자산';

  @override
  String get diagnosticsAudioAssets => '오디오 자산';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count 파일';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return '매니페스트 읽기 실패: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => '현지화 로케일';

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
  String get dailyVerse => '매일의 구절';

  @override
  String get todaysIbadah => '오늘의 이바다';

  @override
  String get quickAccess => '빠른 액세스';

  @override
  String get assistant => '어시스턴트';

  @override
  String get places => '장소';

  @override
  String get library => '도서관';

  @override
  String get analytics => '해석학';

  @override
  String get dailyDuas => '일일 듀아';

  @override
  String essentialDuas(String count) {
    return '$count 필수 듀아';
  }

  @override
  String get duaUnavailableTitle => '인증된 이중화는 아직 사용할 수 없습니다.';

  @override
  String get duaUnavailableBody =>
      '확인된 일일 듀아가 아직 이 기기에 동기화되지 않았습니다. 확인되지 않은 폴백 대신 소스가 있는 duas를 로드하려면 클라우드 소스에 연결하세요.';

  @override
  String get duaCategoryQuranic => '꾸란 두아';

  @override
  String get duaCategoryMorningEvening => '아침 & 저녁';

  @override
  String get duaCategoryTasbih => '타스비';

  @override
  String get duaCategoryProtection => '보호';

  @override
  String get duaCategoryBeginning => '시작';

  @override
  String get duaCategorySleep => '잠';

  @override
  String get duaCategoryFoodDrink => '음식 및 음료';

  @override
  String get duaCategoryForgiveness => '용서';

  @override
  String get duaCategoryHome => '집';

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
  String get islamicEducation => '이슬람 교육';

  @override
  String get sukunAudioTitle => '수쿤 사운드스케이프';

  @override
  String get hadithCollections => '하디스 컬렉션';

  @override
  String get hadithSourcePending => '확인된 소스 보류 중';

  @override
  String get hadithUnavailableTitle => '검증된 hadith 컬렉션은 아직 사용할 수 없습니다.';

  @override
  String get hadithUnavailableBody =>
      '이 빌드는 여전히 확인되지 않은 외부 hadith 피드에 의존합니다. Hadith 검색은 소스 데이터 세트가 동기화될 때까지 비활성화된 상태로 유지됩니다.';

  @override
  String get paywallUnlockAll => '영적 여정을 위한 모든 기능을 잠금 해제하세요';

  @override
  String get paywallFeature1Title => '신경 보조자 플러스';

  @override
  String get paywallFeature1Desc => '무제한 AI 기반 Q&A';

  @override
  String get paywallFeature2Title => '무제한 오프라인';

  @override
  String get paywallFeature2Desc => '모든 암송 다운로드';

  @override
  String get paywallFeature3Title => '독점 디자인';

  @override
  String get paywallFeature3Desc => '프리미엄 테마 및 글꼴';

  @override
  String get paywallFeature4Title => '광고 없음';

  @override
  String get paywallFeature4Desc => '광고 없음';

  @override
  String get paywallGetAccess => '평생 이용권 받기 — \$1.00';

  @override
  String get restorePurchases => '구매 복원';

  @override
  String get zakatCalculator => '자카트 계산기';

  @override
  String get zakatGold => '금(Altın)';

  @override
  String get zakatSilver => '은(Gümüş)';

  @override
  String get zakatCashBank => '현금 / 은행';

  @override
  String get zakatBusiness => '사업';

  @override
  String get zakatInvestments => '투자';

  @override
  String get zakatWeightGrams => '무게(g)';

  @override
  String get zakatPricePerGram => '가격/g';

  @override
  String get zakatTotalAmount => '총액';

  @override
  String get zakatInventoryValue => '재고 가치';

  @override
  String get zakatDebts => '부채';

  @override
  String get zakatTotal => '총';

  @override
  String get calculateZakat => '자카트 계산';

  @override
  String get nisabNotReached => '니삽에 도달하지 못했습니다. 자카트는 의무사항이 아닙니다.';

  @override
  String get totalZakat => '토탈 자카트';

  @override
  String nisabSummary(String nisab, String assets) {
    return '니삽: $nisab • 자산: $assets';
  }

  @override
  String get zakatGoldZakat => '골드 자카트';

  @override
  String get zakatSilverZakat => '실버 자카트';

  @override
  String get zakatCashZakat => '캐시자카트';

  @override
  String get zakatBusinessZakat => '비즈니스 자카트';

  @override
  String get zakatInvestmentZakat => '투자 자카트';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached => '일일 쿼리 한도에 도달했습니다. 무제한으로 프리미엄으로 업그레이드하세요.';

  @override
  String get chatbotErrorMsg => '응답을 생성할 수 없습니다. 다시 시도해 주세요.';

  @override
  String get chatbotOfflinePrompt =>
      '검증된 오프라인 이슬람 지식 베이스는 아직 큐레이팅 중입니다. 지금 오프라인 대체를 활성화할 수 있지만 소스 데이터 세트가 준비될 때까지 제한된 안전 메시지만 표시됩니다.\n\n오프라인 대체를 활성화하시겠습니까?';

  @override
  String get chatbotOfflineSwitched =>
      '오프라인 대체가 활성화되었습니다. 검증된 현지 이슬람 답변이 아직 준비되지 않았습니다.';

  @override
  String get chatbotOfflineDownloadLabel => '오프라인 대체 활성화';

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
  String get sukunMixerSubtitle => '자연 및 꾸란 믹서';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => '수쿤(자연)';

  @override
  String get sukunRainOfMercy => '자비의 비';

  @override
  String get sukunGardenOfPeace => '평화의 정원';

  @override
  String get sukunMidnightCalm => '미드나잇캄';

  @override
  String get sukunOceanTawheed => '오션 타우히드';

  @override
  String get sukunUnavailableTitle => '소리 풍경을 사용할 수 없음';

  @override
  String get sukunUnavailableBody =>
      '이 빌드에는 아직 필수 Sukun 사운드스케이프 자산이 포함되어 있지 않습니다.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => '하루 연속';

  @override
  String get bestStreak => '최고의 연속';

  @override
  String get chatbotCloudAiLabel => '클라우드 AI';

  @override
  String get chatbotLocalAiLabel => '오프라인 대체';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => '오프라인 대체 활성화';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count 남음';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API가 구성되지 않았습니다. 로컬 AI로 전환해주세요.';

  @override
  String get chatbotLocalNoInfo =>
      '[오프라인] 검증된 현지 이슬람 지침은 아직 제공되지 않습니다. 소스 답변을 얻으려면 Cloud AI로 전환하세요.';

  @override
  String get mosques => '모스크';

  @override
  String get halalFood => '할랄 음식';

  @override
  String get placesSearchArea => '이 지역 검색';

  @override
  String get nearbyMosques => '인근 모스크';

  @override
  String get islamicSchools => '이슬람 학교';

  @override
  String placesFoundCount(String count) {
    return '$count을(를) 찾았습니다.';
  }

  @override
  String distanceAwayKm(String distance) {
    return '${distance}km 거리';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API 오류: $statusCode';
  }

  @override
  String get placesNetworkError => '네트워크 오류입니다. 다시 시도해 주세요.';

  @override
  String get unknownPlaceName => '알 수 없는 이름';

  @override
  String get islamicPlaceFallback => '이슬람 장소';
}
