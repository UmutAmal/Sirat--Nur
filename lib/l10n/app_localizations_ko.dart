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
  String get splashTagline => '이슬람의 빛의 길';

  @override
  String get home => 'Home';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => '지크르';

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
  String get systemDefault => '시스템 기본값';

  @override
  String get currentLocation => 'Current Location (GPS)';

  @override
  String get locationServiceDisabled => '위치 서비스가 비활성화되었습니다.';

  @override
  String get locationPermissionDenied => '위치 권한이 거부되었습니다.';

  @override
  String get locationDetectionFailed =>
      '위치를 감지할 수 없습니다. 도시를 수동으로 선택하거나 다시 시도하세요.';

  @override
  String citiesCount(String count) {
    return '$count 도시';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => '검색결과가 없습니다';

  @override
  String get loading => '로드 중...';

  @override
  String get error => '오류';

  @override
  String get appErrorOccurred => '오류가 발생했습니다';

  @override
  String get appUnknownError => '알 수 없는 오류';

  @override
  String get quranLoadFailed => '꾸란 콘텐츠를 로드할 수 없습니다. 다시 시도해 주세요.';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => '새로고침';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => '삭제';

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
    return '아야 $ayah';
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
  String get tafsirLoading => '타프시르 로드 중...';

  @override
  String get tafsirSourceLabel => '타프시르 소스';

  @override
  String get tafsirNoSurahFound => '이 수라에 대한 tafsir를 찾을 수 없습니다.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'ayah $ayah에 대한 tafsir를 찾을 수 없습니다.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir를 로드할 수 없습니다.';

  @override
  String get tafsirNoTextForAyah => '이에 대한 tafsir 텍스트가 없습니다.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'tafsir $current/$total 다운로드 중';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return '타프시르 $current/$total 로드 중';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir 소스가 HTTP $statusCode 오류를 반환했습니다.';
  }

  @override
  String get tafsirNoEntriesReturned => '선택한 tafsir 소스에서 반환된 항목이 없습니다.';

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
      '다른 사람들은 \'우리 주님, 현세와 내세에서 우리에게 좋은 것을 주시고, 불의 고통으로부터 우리를 보호해 주십시오.\'라고 기도합니다.';

  @override
  String get duaMeaning2 =>
      '하나님은 어떤 영혼에게도 감당할 수 있는 것 이상으로 짐을 지우지 않으십니다. 각 사람은 자신이 행한 선한 일을 모두 얻고 악한 일을 겪습니다. 주님, 당신이 우리 이전 사람들에게 짐을 지셨던 것처럼 우리에게도 짐을 지우지 마십시오. 주님, 우리가 감당할 수 있는 것 이상으로 우리에게 짐을 지우지 마십시오. 우리를 용서하시고, 용서하시고, 자비를 베푸소서. 당신은 우리의 보호자이시니 불신자들에 맞서 우리를 도와주세요.\'';

  @override
  String get duaMeaning3 =>
      '‘주님, 주님께서 우리를 인도하신 후에 우리의 마음이 일탈하지 않게 하소서. 우리에게 당신의 자비를 베푸소서. 당신은 언제나 베푸시는 분이십니다.';

  @override
  String get duaMeaning4 => '주여, 나와 내 후손이 계속 기도하게 하소서. 우리 주님, 제 요청을 받아주세요.';

  @override
  String get duaMeaning5 =>
      '그리고 그들을 향해 겸손한 날개를 내려 친절하게 \'주님, 내가 어렸을 때 그들이 나를 돌본 것처럼 그들에게도 자비를 베푸소서\'라고 말하십시오.';

  @override
  String get duaMeaning6 =>
      '참으로 다스리시는 하나님을 찬양합니다. [선지자] 계시가 다 차기 전에 서두르지 말고 \'주님, 나에게 지식을 더해 주십시오!\'라고 말하십시오.';

  @override
  String get duaMeaning7 =>
      '[선지자]에게 \'주님, 용서하시고 자비를 베푸소서. 당신은 모든 사람 중에 가장 자비로우신 분이십니다.\'라고 말하십시오.';

  @override
  String get duaMeaning8 =>
      '\'주님, 배우자와 자손으로 인해 우리에게 기쁨을 주소서\'라고 기도하는 사람. 당신을 아는 사람들에게 우리에게 좋은 본이 되어 주십시오.\'';

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
  String get islamicNewYear => '이슬람 새해';

  @override
  String get mawlidAnNabi => '마울리드 안나비';

  @override
  String get specialDayDateRamadanStart => '1 라마단';

  @override
  String get specialDayDateLaylatAlQadr => '라마단 27일';

  @override
  String get specialDayDateEidAlFitr => '1 샤왈';

  @override
  String get specialDayDateEidAlAdha => '10 둘 히자';

  @override
  String get specialDayDateIslamicNewYear => '1 무하람';

  @override
  String get specialDayDateMawlidAnNabi => '12 라비 알 아왈';

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
  String get qiblaSensorUnavailable => '이 기기에서는 나침반 센서를 사용할 수 없습니다.';

  @override
  String get qiblaLocationRequiredTitle => 'Qibla에 필요한 위치';

  @override
  String get qiblaLocationRequiredBody =>
      '방향을 정확하게 계산할 수 있도록 Qibla 나침반을 사용하기 전에 실제 위치를 설정하십시오.';

  @override
  String get adhanNotificationChannelName => '아단 알림';

  @override
  String get adhanNotificationChannelDescription => '아단 소리로 기도 시간 알림.';

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
  String get theme => '테마';

  @override
  String get lightMode => '라이트 모드';

  @override
  String get darkMode => '다크 모드';

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
  String get downloadManager => '다운로드 관리자';

  @override
  String get downloads => '다운로드';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => '다운로드 완료';

  @override
  String get downloadFailed => '다운로드 실패';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => '인터넷에 연결되어 있지 않음';

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
  String get tapToCount => '탭해서 세기';

  @override
  String get zikrCompletedMashAllah => '완전한! 마쉬알라';

  @override
  String get zikrMeaningSubhanAllah => '알라는 모든 불완전함보다 훨씬 뛰어납니다.';

  @override
  String get zikrMeaningAlhamdulillah => '모든 찬양은 알라께 속합니다.';

  @override
  String get zikrMeaningAllahuAkbar => '알라는 가장 위대하다.';

  @override
  String get zikrMeaningLaIlahaIllallah => '알라 외에는 신이 없습니다.';

  @override
  String get zikrMeaningAstaghfirullah => '나는 알라의 용서를 구합니다.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata => '알라를 통하지 않고는 힘도 없고 힘도 없습니다.';

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
  String get offlineDownloadManager => '오프라인 다운로드 관리자';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => '내부 장치 저장 공간을 확보하세요.';

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
  String get audioVoice => '오디오 음성';

  @override
  String get audioVoiceMisharyAlafasy => '남성(미샤리 알라파시)';

  @override
  String get audioVoiceAbdulBaset => '남성(압둘바셋)';

  @override
  String get audioVoiceSudais => '말레(수다이스)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Qibla 교정';

  @override
  String get compassSmoothing => '나침반 스무딩';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => '교정 오프셋';

  @override
  String currentOffset(Object offset) {
    return '현재: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      '나침반에 수동 수정이 필요한 경우 조정하세요. 양수 값은 시계 방향으로 회전합니다.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => '진단';

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
  String get diagnosticsUiAudioAssets => 'UI 오디오 자산';

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
    return '$count 지원됨';
  }

  @override
  String get diagnosticsQuranDataset => '꾸란 데이터세트';

  @override
  String get diagnosticsQuranSurahs => '꾸란 수라';

  @override
  String get diagnosticsQuranAyahs => '꾸란 아야스';

  @override
  String get diagnosticsQuranJuzMetadata => '꾸란 주즈 메타데이터';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Supabase에 클라우드 테이블이 없습니다. 번들 대체 활성';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return '클라우드 확인 실패: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz 메타데이터가 누락되었습니다. 번들 구조적 대체 활성';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return '클라우드 구조 확인 실패: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 => '교정이 필요합니다. 그림-8의 장치를 회전시킵니다.';

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
  String get premiumProductUnavailable =>
      '프리미엄 제품은 현재 구매하실 수 없습니다. 나중에 다시 시도해 주세요.';

  @override
  String get premiumPurchaseFailed => '구매를 완료할 수 없습니다. 다시 시도해 주세요.';

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
      '아살라무 알라이쿰! 나는 당신의 이슬람 조수입니다. 기도, 금식, 자카트 또는 이슬람 주제에 대해 물어보세요.';

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
  String get downloadPreparing => '다운로드 준비 중...';

  @override
  String downloadingSurah(String surah, String total) {
    return '수라 다운로드 중 $surah / $total';
  }

  @override
  String get downloadCompleted => '이 암송자에 대한 모든 수라가 이미 다운로드되었습니다.';

  @override
  String get offlineQuranAudioPacks => '오프라인 꾸란 오디오 팩';

  @override
  String storedOnDeviceMb(String size) {
    return '기기에 저장됨: ${size}MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total 수라 다운로드됨';
  }

  @override
  String get redownloadMissingRepair => '수리/다운로드 누락';

  @override
  String get downloadAction => '다운로드';

  @override
  String get resumeDownload => '다운로드 재개';

  @override
  String get deleteDownloadedFiles => '다운로드한 파일 삭제';

  @override
  String get downloadCancelling => '취소 중...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return '$reciter 다운로드가 취소되었습니다.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return '$reciter 다운로드가 완료되었습니다.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return '$reciter에 대한 다운로드가 완료되었으며 $failed 수라가 실패했습니다($downloaded/$total 다운로드됨).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return '$reciter의 오프라인 파일을 삭제했습니다.';
  }

  @override
  String get quranAudioSourcesUnavailable => '검증된 꾸란 오디오 소스를 지금은 사용할 수 없습니다.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return '확인된 꾸란 오디오 팩이 불완전합니다($available/$total). 클라우드 시드를 새로고침하고 다시 시도하세요.';
  }

  @override
  String get chatbotHint => '질문하세요...';

  @override
  String get chatbotThinking => '생각하다...';

  @override
  String get sukunMixerSubtitle => '자연 및 꾸란 믹서';

  @override
  String get audioPlayFailed => '오디오 재생 실패';

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
  String get prayerCompletion => '예배 완료도';

  @override
  String get streaks => '줄무늬';

  @override
  String get dayStreak => '하루 연속';

  @override
  String get bestStreak => '최고의 연속';

  @override
  String get chatbotCloudAiLabel => '클라우드 AI';

  @override
  String get chatbotLocalAiLabel => '오프라인 대체';

  @override
  String get chatbotUseCloudAi => '클라우드 AI(Gemini) 사용';

  @override
  String get chatbotDownloadLocalAi => '오프라인 대체 활성화';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count 남음';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API가 구성되지 않았습니다. 검증된 오프라인 이슬람 지침은 아직 제공되지 않습니다.';

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
  String get placesLocationRequiredTitle => '위치가 필요합니다.';

  @override
  String get placesLocationRequiredBody =>
      '근처 모스크, 할랄음식, 이슬람 학교 등을 정확하게 검색할 수 있도록 위치를 먼저 설정하세요.';

  @override
  String get placesMapTilesUnavailableTitle => '지도 타일을 사용할 수 없습니다.';

  @override
  String get placesMapTilesUnavailableBody =>
      '이 빌드에는 확인된 지도 타일 소스가 아직 구성되지 않았습니다. 저장된 위치에서 주변 장소를 계속 로드할 수 있습니다.';

  @override
  String get placesDataSourceUnavailableTitle => '장소 데이터를 사용할 수 없습니다.';

  @override
  String get placesDataSourceUnavailableBody =>
      '이 빌드에는 확인된 장소 데이터 엔드포인트가 아직 구성되지 않았습니다. 주변 검색을 활성화하기 전에 PLACES_OVERPASS_API_URL을 승인된 프록시 또는 공급자로 설정하세요.';

  @override
  String get unknownPlaceName => '알 수 없는 이름';

  @override
  String get islamicPlaceFallback => '이슬람 장소';

  @override
  String get asmaMeaning1 => '은혜로운 자';

  @override
  String get asmaMeaning2 => '자비로우신 분';

  @override
  String get asmaMeaning3 => '왕/영원한 군주';

  @override
  String get asmaMeaning4 => '지성소';

  @override
  String get asmaMeaning5 => '평화의 근원';

  @override
  String get asmaMeaning6 => '담보 제공자';

  @override
  String get asmaMeaning7 => '가디언';

  @override
  String get asmaMeaning8 => '귀중한/가장 강력한';

  @override
  String get asmaMeaning9 => '컴펠러';

  @override
  String get asmaMeaning10 => '최고';

  @override
  String get asmaMeaning11 => '창조자';

  @override
  String get asmaMeaning12 => '질서를 만드는 사람';

  @override
  String get asmaMeaning13 => '아름다움의 셰이퍼';

  @override
  String get asmaMeaning14 => '용서하시는 분';

  @override
  String get asmaMeaning15 => '진압자';

  @override
  String get asmaMeaning16 => '모든 것을 주시는 분';

  @override
  String get asmaMeaning17 => '지속자';

  @override
  String get asmaMeaning18 => '오프너';

  @override
  String get asmaMeaning19 => '모든 것을 아시는 분';

  @override
  String get asmaMeaning20 => '압축기';

  @override
  String get asmaMeaning21 => '구원자';

  @override
  String get asmaMeaning22 => '저격자';

  @override
  String get asmaMeaning23 => '숭배자';

  @override
  String get asmaMeaning24 => '명예를 주시는 분';

  @override
  String get asmaMeaning25 => '굴욕자';

  @override
  String get asmaMeaning26 => '모든 사람의 말을 듣는 분';

  @override
  String get asmaMeaning27 => '모든 것을 보는 자';

  @override
  String get asmaMeaning28 => '판사';

  @override
  String get asmaMeaning29 => '그냥';

  @override
  String get asmaMeaning30 => '미묘한 것';

  @override
  String get asmaMeaning31 => '올 어웨어(All Aware)';

  @override
  String get asmaMeaning32 => '선배';

  @override
  String get asmaMeaning33 => '웅장함';

  @override
  String get asmaMeaning34 => '위대하신 용서자';

  @override
  String get asmaMeaning35 => '감사의 보상자';

  @override
  String get asmaMeaning36 => '최고';

  @override
  String get asmaMeaning37 => '최고';

  @override
  String get asmaMeaning38 => '보호자';

  @override
  String get asmaMeaning39 => '너리셔';

  @override
  String get asmaMeaning40 => '계산기';

  @override
  String get asmaMeaning41 => '더 마제스틱';

  @override
  String get asmaMeaning42 => '관대한';

  @override
  String get asmaMeaning43 => '살펴보는 분';

  @override
  String get asmaMeaning44 => '기도에 대한 응답자';

  @override
  String get asmaMeaning45 => '모든 것을 포괄하는 것';

  @override
  String get asmaMeaning46 => '완전히 현명한 사람';

  @override
  String get asmaMeaning47 => '사랑하는 사람';

  @override
  String get asmaMeaning48 => '가장 영광스러운 분';

  @override
  String get asmaMeaning49 => '부활자';

  @override
  String get asmaMeaning50 => '증인';

  @override
  String get asmaMeaning51 => '진실';

  @override
  String get asmaMeaning52 => '모든 것을 갖춘 신탁 관리인';

  @override
  String get asmaMeaning53 => '모든 힘의 소유자';

  @override
  String get asmaMeaning54 => '강력한';

  @override
  String get asmaMeaning55 => '보호자';

  @override
  String get asmaMeaning56 => '칭찬받은 자';

  @override
  String get asmaMeaning57 => '평가자';

  @override
  String get asmaMeaning58 => '작성자';

  @override
  String get asmaMeaning59 => '복원자';

  @override
  String get asmaMeaning60 => '생명을 주시는 분';

  @override
  String get asmaMeaning61 => '생명을 빼앗는 자';

  @override
  String get asmaMeaning62 => '에버 리빙';

  @override
  String get asmaMeaning63 => '자립적 부양자';

  @override
  String get asmaMeaning64 => '파인더';

  @override
  String get asmaMeaning65 => '영광스러운';

  @override
  String get asmaMeaning66 => '유일한 것';

  @override
  String get asmaMeaning67 => '더 원';

  @override
  String get asmaMeaning68 => '모두가 찾는 것';

  @override
  String get asmaMeaning69 => '강력한';

  @override
  String get asmaMeaning70 => '모든 권력의 창조자';

  @override
  String get asmaMeaning71 => '익스피디터';

  @override
  String get asmaMeaning72 => '지연자';

  @override
  String get asmaMeaning73 => '첫 번째';

  @override
  String get asmaMeaning74 => '마지막';

  @override
  String get asmaMeaning75 => '매니페스트';

  @override
  String get asmaMeaning76 => '숨겨진 것';

  @override
  String get asmaMeaning77 => '지사';

  @override
  String get asmaMeaning78 => '최고의 존재';

  @override
  String get asmaMeaning79 => '선을 행하는 사람';

  @override
  String get asmaMeaning80 => '회개에 대한 안내';

  @override
  String get asmaMeaning81 => '어벤저';

  @override
  String get asmaMeaning82 => '용서하시는 분';

  @override
  String get asmaMeaning83 => '클레멘트';

  @override
  String get asmaMeaning84 => '모든 것의 소유자/주권자';

  @override
  String get asmaMeaning85 => '위엄과 풍요의 소유자';

  @override
  String get asmaMeaning86 => '공평한 것';

  @override
  String get asmaMeaning87 => '개더러';

  @override
  String get asmaMeaning88 => '부자';

  @override
  String get asmaMeaning89 => '인리처';

  @override
  String get asmaMeaning90 => '위험 예방자';

  @override
  String get asmaMeaning91 => '해를 끼치는 자';

  @override
  String get asmaMeaning92 => '혜택 제공자';

  @override
  String get asmaMeaning93 => '빛';

  @override
  String get asmaMeaning94 => '가이더';

  @override
  String get asmaMeaning95 => '작성자';

  @override
  String get asmaMeaning96 => '영원하신 분';

  @override
  String get asmaMeaning97 => '상속자';

  @override
  String get asmaMeaning98 => '가장 의로운 인도자';

  @override
  String get asmaMeaning99 => '환자 1호';
}
