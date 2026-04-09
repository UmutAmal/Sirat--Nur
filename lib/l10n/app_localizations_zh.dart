// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get home => '家';

  @override
  String get quran => '古兰经';

  @override
  String get qibla => '朝拜';

  @override
  String get zikr => '则克尔';

  @override
  String get calendar => '日历';

  @override
  String get settings => '设置';

  @override
  String get nextPrayer => '下一个祷告';

  @override
  String get prayerTimes => '祈祷时间';

  @override
  String get continueReading => '继续阅读';

  @override
  String get getLifetimePro => '获取终身专业版';

  @override
  String get unlockTajweed => '解锁 Tajweed 和高级功能';

  @override
  String get prayerCalculation => '祷告计算';

  @override
  String get method => '计算方法';

  @override
  String get madhab => '晡礼法律方法';

  @override
  String get surahs => '古兰经';

  @override
  String get ayahs => '阿亚斯';

  @override
  String get fajr => '晨曦';

  @override
  String get sunrise => '日出';

  @override
  String get dhuhr => '杜尔';

  @override
  String get asr => '晡气';

  @override
  String get maghrib => '昏礼';

  @override
  String get isha => '伊莎';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName 时间到了';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '是时候祈祷$prayerName了。';
  }

  @override
  String get dataStorage => '数据与存储';

  @override
  String get clearCache => '清除缓存';

  @override
  String get cacheClearedSuccess => '缓存清除成功';

  @override
  String get location => '地点';

  @override
  String get language => '语言';

  @override
  String get selectLanguage => '选择语言';

  @override
  String get searchLanguage => '搜索 180 多种语言...';

  @override
  String get systemDefault => '系统默认值';

  @override
  String get currentLocation => '当前位置（GPS）';

  @override
  String get locationServiceDisabled => 'Location service is disabled.';

  @override
  String get locationPermissionDenied => 'Location permission denied.';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => '搜索';

  @override
  String get searchHint => '搜索...';

  @override
  String get noResults => '没有找到结果';

  @override
  String get loading => '加载中...';

  @override
  String get error => '错误';

  @override
  String get retry => '重试';

  @override
  String get cancel => '取消';

  @override
  String get save => '节省';

  @override
  String get delete => '删除';

  @override
  String get edit => '编辑';

  @override
  String get close => '关闭';

  @override
  String get ok => '好的';

  @override
  String get yes => '是的';

  @override
  String get no => '不';

  @override
  String get surah => '古兰经';

  @override
  String get juz => '朱兹';

  @override
  String get page => '页';

  @override
  String get reading => '阅读';

  @override
  String get recitation => '背诵';

  @override
  String get translation => '翻译';

  @override
  String get tafsir => '塔夫西尔';

  @override
  String get bookmarks => '书签';

  @override
  String get addBookmark => '添加书签';

  @override
  String get removeBookmark => '删除书签';

  @override
  String get lastRead => '最后阅读';

  @override
  String get dailyZikr => '每日则克尔';

  @override
  String get morningZikr => '早晨则克尔';

  @override
  String get eveningZikr => '晚上则克尔';

  @override
  String get tasbih => '塔斯比赫';

  @override
  String get ahkab => '阿卡姆';

  @override
  String get masaail => '马萨伊勒';

  @override
  String get hadith => '圣训';

  @override
  String get hadithCollection => '圣训集';

  @override
  String get hadithBooks => '圣训书籍';

  @override
  String get searchHadith => '搜索圣训';

  @override
  String get asmaulHusna => '阿斯玛乌斯纳';

  @override
  String get namesOfAllah => '安拉的名字';

  @override
  String get liveTv => '电视直播';

  @override
  String get watchLive => '观看直播';

  @override
  String get streamError => '码流错误';

  @override
  String get reload => '重新加载';

  @override
  String get openInYoutube => '在 YouTube 中打开';

  @override
  String get ibadahTracker => '伊巴达追踪器';

  @override
  String get fasting => '禁食';

  @override
  String get quranReading => '古兰经阅读';

  @override
  String get prayers => '祈祷';

  @override
  String get dhikrCount => '迪克尔伯爵';

  @override
  String get weeklyProgress => '每周进度';

  @override
  String get monthlyProgress => '每月进度';

  @override
  String get statistics => '统计数据';

  @override
  String get hijriCalendar => '回历';

  @override
  String get gregorianCalendar => '公历';

  @override
  String get today => '今天';

  @override
  String get tomorrow => '明天';

  @override
  String get yesterday => '昨天';

  @override
  String get specialDays => '特别的日子';

  @override
  String get ramadan => '斋月';

  @override
  String get eidAlFitr => '开斋节';

  @override
  String get eidAlAdha => '古尔邦节';

  @override
  String get laylatAlQadr => '莱拉特·盖德尔';

  @override
  String get qiblaDirection => '朝拜方向';

  @override
  String get compass => '罗盘';

  @override
  String get degrees => '度';

  @override
  String get north => '北';

  @override
  String get qiblaFound => '朝拜发现了！';

  @override
  String get turnDevice => '将您的设备转向朝拜';

  @override
  String get notifications => '通知';

  @override
  String get prayerNotifications => '祷告通知';

  @override
  String get enableNotifications => '启用通知';

  @override
  String get notificationTime => '通知时间';

  @override
  String get beforePrayer => '祈祷前几分钟';

  @override
  String get theme => '主题';

  @override
  String get lightMode => '灯光模式';

  @override
  String get darkMode => '深色模式';

  @override
  String get systemTheme => '系统主题';

  @override
  String get about => '关于';

  @override
  String get version => '版本';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get termsOfService => '服务条款';

  @override
  String get contactUs => '联系我们';

  @override
  String get rateApp => '评价应用程序';

  @override
  String get shareApp => '分享应用程序';

  @override
  String shareAppMessage(String appName, String url) {
    return '查看$appName：终极伊斯兰生活方式应用程序！ $url';
  }

  @override
  String get downloadManager => '下载管理器';

  @override
  String get downloads => '下载';

  @override
  String get downloading => '正在下载...';

  @override
  String get downloadComplete => '下载完成';

  @override
  String get downloadFailed => '下载失败';

  @override
  String get offlineMode => '离线模式';

  @override
  String get noInternet => '无互联网连接';

  @override
  String get checkConnection => '请检查您的连接';

  @override
  String get premium => '优质的';

  @override
  String get upgradeToPro => '升级到专业版';

  @override
  String get proFeatures => '专业功能';

  @override
  String get removeAds => '删除广告';

  @override
  String get unlockAll => '解锁所有内容';

  @override
  String get exclusiveContent => '独家内容';

  @override
  String get welcome => '欢迎';

  @override
  String get getStarted => '开始使用';

  @override
  String get skip => '跳过';

  @override
  String get next => '下一个';

  @override
  String get done => '完毕';

  @override
  String get onboarding1Title => '欢迎来到阿拉之道';

  @override
  String get onboarding1Desc => '您完整的伊斯兰伴侣应用程序，用于祈祷时间、古兰经等';

  @override
  String get onboarding2Title => '祈祷时间';

  @override
  String get onboarding2Desc => '根据您所在位置的准确祈祷时间';

  @override
  String get onboarding3Title => '古兰经及更多';

  @override
  String get onboarding3Desc => '阅读《古兰经》、跟踪您的阅读情况并探索伊斯兰内容';

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
  String get diagnosticsNotSet => '未设置';

  @override
  String get diagnosticsPrayerProfile => '祷告简介';

  @override
  String get diagnosticsPrayerSource => '祷告权柄';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manual custom angles (no institutional source)';

  @override
  String get diagnosticsCloudDriven => '云驱动';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Quran Audio Assets';

  @override
  String get diagnosticsAudioAssets => '音频资源';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count files';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifest read failed: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Localization Locales';

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
  String get dailyVerse => '每日诗歌';

  @override
  String get todaysIbadah => '今天的伊巴达';

  @override
  String get quickAccess => '快速访问';

  @override
  String get assistant => '助手';

  @override
  String get places => '地点';

  @override
  String get library => '图书馆';

  @override
  String get analytics => '分析';

  @override
  String get dailyDuas => '每日杜阿';

  @override
  String essentialDuas(String count) {
    return '$count 基本杜阿';
  }

  @override
  String get duaUnavailableTitle => '已验证的 dua 尚不可用';

  @override
  String get duaUnavailableBody =>
      '已验证的每日 duas 尚未同步到此设备。连接到云源以加载来源的 dua，而不是未经验证的后备。';

  @override
  String get duaCategoryQuranic => '古兰经杜阿';

  @override
  String get duaCategoryMorningEvening => '早上和晚上';

  @override
  String get duaCategoryTasbih => '塔斯比赫';

  @override
  String get duaCategoryProtection => '保护';

  @override
  String get duaCategoryBeginning => '开始';

  @override
  String get duaCategorySleep => '睡觉';

  @override
  String get duaCategoryFoodDrink => '食品和饮料';

  @override
  String get duaCategoryForgiveness => '饶恕';

  @override
  String get duaCategoryHome => '家';

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
  String get islamicEducation => '伊斯兰教育';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => '圣训集';

  @override
  String get hadithSourcePending => '来源待核实';

  @override
  String get hadithUnavailableTitle => '尚未提供经过验证的圣训集';

  @override
  String get hadithUnavailableBody =>
      '此构建仍然依赖于未经验证的外部圣训提要。在源数据集同步之前，圣训浏览保持禁用状态。';

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
  String get calculateZakat => 'Calculate Zakat';

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
      '经过验证的离线伊斯兰知识库仍在整理中。您现在可以启用离线回退，但在源数据集准备就绪之前，它只会显示有限的安全消息。\n\n您想启用离线回退吗？';

  @override
  String get chatbotOfflineSwitched => '启用离线回退。经过验证的本地伊斯兰答案尚未准备好。';

  @override
  String get chatbotOfflineDownloadLabel => '启用离线回退';

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
  String get dayStreak => 'Day streak';

  @override
  String get bestStreak => 'Best streak';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => '离线回退';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => '启用离线回退';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API not configured. Please switch to Local AI.';

  @override
  String get chatbotLocalNoInfo => '[离线] 尚未提供经过验证的当地伊斯兰指南。切换到 Cloud AI 获取来源答案。';

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

/// The translations for Chinese, as used in China (`zh_CN`).
class AppLocalizationsZhCn extends AppLocalizationsZh {
  AppLocalizationsZhCn() : super('zh_CN');

  @override
  String get appTitle => '安拉之道';

  @override
  String get home => '家';

  @override
  String get quran => '古兰经';

  @override
  String get qibla => '朝拜';

  @override
  String get zikr => '则克尔';

  @override
  String get calendar => '日历';

  @override
  String get settings => '设置';

  @override
  String get nextPrayer => '下一个祷告';

  @override
  String get prayerTimes => '祈祷时间';

  @override
  String get continueReading => '继续阅读';

  @override
  String get getLifetimePro => '获取终身专业版';

  @override
  String get unlockTajweed => '解锁 Tajweed 和高级功能';

  @override
  String get prayerCalculation => '祷告计算';

  @override
  String get method => '计算方法';

  @override
  String get madhab => '晡礼法律方法';

  @override
  String get surahs => '古兰经';

  @override
  String get ayahs => '阿亚斯';

  @override
  String get fajr => '晨曦';

  @override
  String get sunrise => '日出';

  @override
  String get dhuhr => '杜尔';

  @override
  String get asr => '晡气';

  @override
  String get maghrib => '昏礼';

  @override
  String get isha => '伊莎';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName 时间到了';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '是时候祈祷$prayerName了。';
  }

  @override
  String get dataStorage => '数据与存储';

  @override
  String get clearCache => '清除缓存';

  @override
  String get cacheClearedSuccess => '缓存清除成功';

  @override
  String get location => '地点';

  @override
  String get language => '语言';

  @override
  String get selectLanguage => '选择语言';

  @override
  String get searchLanguage => '搜索 180 多种语言...';

  @override
  String get systemDefault => '系统默认值';

  @override
  String get currentLocation => '当前位置（GPS）';

  @override
  String get locationServiceDisabled => 'Location service is disabled.';

  @override
  String get locationPermissionDenied => 'Location permission denied.';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => '搜索';

  @override
  String get searchHint => '搜索...';

  @override
  String get noResults => '没有找到结果';

  @override
  String get loading => '加载中...';

  @override
  String get error => '错误';

  @override
  String get retry => '重试';

  @override
  String get cancel => '取消';

  @override
  String get save => '节省';

  @override
  String get delete => '删除';

  @override
  String get edit => '编辑';

  @override
  String get close => '关闭';

  @override
  String get ok => '好的';

  @override
  String get yes => '是的';

  @override
  String get no => '不';

  @override
  String get surah => '古兰经';

  @override
  String get juz => '朱兹';

  @override
  String get page => '页';

  @override
  String get reading => '阅读';

  @override
  String get recitation => '背诵';

  @override
  String get translation => '翻译';

  @override
  String get tafsir => '塔夫西尔';

  @override
  String get bookmarks => '书签';

  @override
  String get addBookmark => '添加书签';

  @override
  String get removeBookmark => '删除书签';

  @override
  String get lastRead => '最后阅读';

  @override
  String get dailyZikr => '每日则克尔';

  @override
  String get morningZikr => '早晨则克尔';

  @override
  String get eveningZikr => '晚上则克尔';

  @override
  String get tasbih => '塔斯比赫';

  @override
  String get ahkab => '阿卡姆';

  @override
  String get masaail => '马萨伊勒';

  @override
  String get hadith => '圣训';

  @override
  String get hadithCollection => '圣训集';

  @override
  String get hadithBooks => '圣训书籍';

  @override
  String get searchHadith => '搜索圣训';

  @override
  String get asmaulHusna => '阿斯玛乌斯纳';

  @override
  String get namesOfAllah => '安拉的名字';

  @override
  String get liveTv => '电视直播';

  @override
  String get watchLive => '观看直播';

  @override
  String get streamError => '码流错误';

  @override
  String get reload => '重新加载';

  @override
  String get openInYoutube => '在 YouTube 中打开';

  @override
  String get ibadahTracker => '伊巴达追踪器';

  @override
  String get fasting => '禁食';

  @override
  String get quranReading => '古兰经阅读';

  @override
  String get prayers => '祈祷';

  @override
  String get dhikrCount => '迪克尔伯爵';

  @override
  String get weeklyProgress => '每周进度';

  @override
  String get monthlyProgress => '每月进度';

  @override
  String get statistics => '统计数据';

  @override
  String get hijriCalendar => '回历';

  @override
  String get gregorianCalendar => '公历';

  @override
  String get today => '今天';

  @override
  String get tomorrow => '明天';

  @override
  String get yesterday => '昨天';

  @override
  String get specialDays => '特别的日子';

  @override
  String get ramadan => '斋月';

  @override
  String get eidAlFitr => '开斋节';

  @override
  String get eidAlAdha => '古尔邦节';

  @override
  String get laylatAlQadr => '莱拉特·盖德尔';

  @override
  String get qiblaDirection => '朝拜方向';

  @override
  String get compass => '罗盘';

  @override
  String get degrees => '度';

  @override
  String get north => '北';

  @override
  String get qiblaFound => '朝拜发现了！';

  @override
  String get turnDevice => '将您的设备转向朝拜';

  @override
  String get notifications => '通知';

  @override
  String get prayerNotifications => '祷告通知';

  @override
  String get enableNotifications => '启用通知';

  @override
  String get notificationTime => '通知时间';

  @override
  String get beforePrayer => '祈祷前几分钟';

  @override
  String get theme => '主题';

  @override
  String get lightMode => '灯光模式';

  @override
  String get darkMode => '深色模式';

  @override
  String get systemTheme => '系统主题';

  @override
  String get about => '关于';

  @override
  String get version => '版本';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get termsOfService => '服务条款';

  @override
  String get contactUs => '联系我们';

  @override
  String get rateApp => '评价应用程序';

  @override
  String get shareApp => '分享应用程序';

  @override
  String shareAppMessage(String appName, String url) {
    return '查看$appName：终极伊斯兰生活方式应用程序！ $url';
  }

  @override
  String get downloadManager => '下载管理器';

  @override
  String get downloads => '下载';

  @override
  String get downloading => '正在下载...';

  @override
  String get downloadComplete => '下载完成';

  @override
  String get downloadFailed => '下载失败';

  @override
  String get offlineMode => '离线模式';

  @override
  String get noInternet => '无互联网连接';

  @override
  String get checkConnection => '请检查您的连接';

  @override
  String get premium => '优质的';

  @override
  String get upgradeToPro => '升级到专业版';

  @override
  String get proFeatures => '专业功能';

  @override
  String get removeAds => '删除广告';

  @override
  String get unlockAll => '解锁所有内容';

  @override
  String get exclusiveContent => '独家内容';

  @override
  String get welcome => '欢迎';

  @override
  String get getStarted => '开始使用';

  @override
  String get skip => '跳过';

  @override
  String get next => '下一个';

  @override
  String get done => '完毕';

  @override
  String get onboarding1Title => '欢迎来到阿拉之道';

  @override
  String get onboarding1Desc => '您完整的伊斯兰伴侣应用程序，用于祈祷时间、古兰经等';

  @override
  String get onboarding2Title => '祈祷时间';

  @override
  String get onboarding2Desc => '根据您所在位置的准确祈祷时间';

  @override
  String get onboarding3Title => '古兰经及更多';

  @override
  String get onboarding3Desc => '阅读《古兰经》、跟踪您的阅读情况并探索伊斯兰内容';

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
  String get diagnosticsNotSet => '未设置';

  @override
  String get diagnosticsPrayerProfile => '祷告简介';

  @override
  String get diagnosticsPrayerSource => '祷告权柄';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manual custom angles (no institutional source)';

  @override
  String get diagnosticsCloudDriven => '云驱动';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Quran Audio Assets';

  @override
  String get diagnosticsAudioAssets => '音频资源';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count files';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifest read failed: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Localization Locales';

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
  String get dailyVerse => '每日诗歌';

  @override
  String get todaysIbadah => '今天的伊巴达';

  @override
  String get quickAccess => '快速访问';

  @override
  String get assistant => '助手';

  @override
  String get places => '地点';

  @override
  String get library => '图书馆';

  @override
  String get analytics => '分析';

  @override
  String get dailyDuas => '每日杜阿';

  @override
  String essentialDuas(String count) {
    return '$count 基本杜阿';
  }

  @override
  String get duaUnavailableTitle => '已验证的 dua 尚不可用';

  @override
  String get duaUnavailableBody =>
      '已验证的每日 duas 尚未同步到此设备。连接到云源以加载来源的 dua，而不是未经验证的后备。';

  @override
  String get duaCategoryQuranic => '古兰经杜阿';

  @override
  String get duaCategoryMorningEvening => '早上和晚上';

  @override
  String get duaCategoryTasbih => '塔斯比赫';

  @override
  String get duaCategoryProtection => '保护';

  @override
  String get duaCategoryBeginning => '开始';

  @override
  String get duaCategorySleep => '睡觉';

  @override
  String get duaCategoryFoodDrink => '食品和饮料';

  @override
  String get duaCategoryForgiveness => '饶恕';

  @override
  String get duaCategoryHome => '家';

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
  String get islamicEducation => '伊斯兰教育';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => '圣训集';

  @override
  String get hadithSourcePending => '来源待核实';

  @override
  String get hadithUnavailableTitle => '尚未提供经过验证的圣训集';

  @override
  String get hadithUnavailableBody =>
      '此构建仍然依赖于未经验证的外部圣训提要。在源数据集同步之前，圣训浏览保持禁用状态。';

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
  String get calculateZakat => 'Calculate Zakat';

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
      '经过验证的离线伊斯兰知识库仍在整理中。您现在可以启用离线回退，但在源数据集准备就绪之前，它只会显示有限的安全消息。\n\n您想启用离线回退吗？';

  @override
  String get chatbotOfflineSwitched => '启用离线回退。经过验证的本地伊斯兰答案尚未准备好。';

  @override
  String get chatbotOfflineDownloadLabel => '启用离线回退';

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
  String get dayStreak => 'Day streak';

  @override
  String get bestStreak => 'Best streak';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => '离线回退';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => '启用离线回退';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API not configured. Please switch to Local AI.';

  @override
  String get chatbotLocalNoInfo => '[离线] 尚未提供经过验证的当地伊斯兰指南。切换到 Cloud AI 获取来源答案。';

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

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class AppLocalizationsZhTw extends AppLocalizationsZh {
  AppLocalizationsZhTw() : super('zh_TW');

  @override
  String get appTitle => '安拉之道';

  @override
  String get home => '家';

  @override
  String get quran => '古蘭經';

  @override
  String get qibla => '朝拜';

  @override
  String get zikr => '則克爾';

  @override
  String get calendar => '日曆';

  @override
  String get settings => '設定';

  @override
  String get nextPrayer => '下一個禱告';

  @override
  String get prayerTimes => '祈禱時間';

  @override
  String get continueReading => '繼續閱讀';

  @override
  String get getLifetimePro => '取得終身專業版';

  @override
  String get unlockTajweed => '解鎖 Tajweed 和高級功能';

  @override
  String get prayerCalculation => '禱告計算';

  @override
  String get method => '計算方法';

  @override
  String get madhab => '晡禮法律方法';

  @override
  String get surahs => '古蘭經';

  @override
  String get ayahs => '阿亞斯';

  @override
  String get fajr => '晨曦';

  @override
  String get sunrise => '日出';

  @override
  String get dhuhr => '杜爾';

  @override
  String get asr => '晡氣';

  @override
  String get maghrib => '昏禮';

  @override
  String get isha => '伊莎';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName 時間到了';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '是時候祈禱$prayerName了。';
  }

  @override
  String get dataStorage => '資料與儲存';

  @override
  String get clearCache => '清除快取';

  @override
  String get cacheClearedSuccess => '快取清除成功';

  @override
  String get location => '地點';

  @override
  String get language => '語言';

  @override
  String get selectLanguage => '選擇語言';

  @override
  String get searchLanguage => '搜尋 180 多種語言...';

  @override
  String get systemDefault => '系統預設值';

  @override
  String get currentLocation => '目前位置（GPS）';

  @override
  String get locationServiceDisabled => 'Location service is disabled.';

  @override
  String get locationPermissionDenied => 'Location permission denied.';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => '搜尋';

  @override
  String get searchHint => '搜尋...';

  @override
  String get noResults => '沒有找到結果';

  @override
  String get loading => '載入中...';

  @override
  String get error => '錯誤';

  @override
  String get retry => '重試';

  @override
  String get cancel => '取消';

  @override
  String get save => '節省';

  @override
  String get delete => '刪除';

  @override
  String get edit => '編輯';

  @override
  String get close => '關閉';

  @override
  String get ok => '好的';

  @override
  String get yes => '是的';

  @override
  String get no => '不';

  @override
  String get surah => '古蘭經';

  @override
  String get juz => '茱茲';

  @override
  String get page => '頁';

  @override
  String get reading => '閱讀';

  @override
  String get recitation => '背誦';

  @override
  String get translation => '翻譯';

  @override
  String get tafsir => '塔夫西爾';

  @override
  String get bookmarks => '書籤';

  @override
  String get addBookmark => '新增書籤';

  @override
  String get removeBookmark => '刪除書籤';

  @override
  String get lastRead => '最後閱讀';

  @override
  String get dailyZikr => '每日則克爾';

  @override
  String get morningZikr => '早晨則克爾';

  @override
  String get eveningZikr => '晚上則克爾';

  @override
  String get tasbih => '塔斯比赫';

  @override
  String get ahkab => '阿卡姆';

  @override
  String get masaail => '馬薩伊勒';

  @override
  String get hadith => '聖訓';

  @override
  String get hadithCollection => '聖訓集';

  @override
  String get hadithBooks => 'Hadith Books';

  @override
  String get searchHadith => '搜尋聖訓';

  @override
  String get asmaulHusna => '阿斯瑪烏斯納';

  @override
  String get namesOfAllah => '安拉的名字';

  @override
  String get liveTv => '電視直播';

  @override
  String get watchLive => '觀看直播';

  @override
  String get streamError => '碼流錯誤';

  @override
  String get reload => '重新載入';

  @override
  String get openInYoutube => '在 YouTube 中開啟';

  @override
  String get ibadahTracker => '伊巴達追蹤器';

  @override
  String get fasting => '禁食';

  @override
  String get quranReading => '古蘭經閱讀';

  @override
  String get prayers => '祈禱';

  @override
  String get dhikrCount => '迪克爾伯爵';

  @override
  String get weeklyProgress => '每週進度';

  @override
  String get monthlyProgress => '每月進度';

  @override
  String get statistics => '統計數據';

  @override
  String get hijriCalendar => '回曆';

  @override
  String get gregorianCalendar => '公曆';

  @override
  String get today => '今天';

  @override
  String get tomorrow => '明天';

  @override
  String get yesterday => '昨天';

  @override
  String get specialDays => '特別的日子';

  @override
  String get ramadan => '齋戒月';

  @override
  String get eidAlFitr => '開齋節';

  @override
  String get eidAlAdha => '古爾邦節';

  @override
  String get laylatAlQadr => '萊拉特·蓋德爾';

  @override
  String get qiblaDirection => '朝拜方向';

  @override
  String get compass => '羅盤';

  @override
  String get degrees => '度';

  @override
  String get north => '北';

  @override
  String get qiblaFound => '朝拜發現了！';

  @override
  String get turnDevice => '將您的裝置轉向朝拜';

  @override
  String get notifications => '通知';

  @override
  String get prayerNotifications => '禱告通知';

  @override
  String get enableNotifications => '啟用通知';

  @override
  String get notificationTime => '通知時間';

  @override
  String get beforePrayer => '祈禱前幾分鐘';

  @override
  String get theme => '主題';

  @override
  String get lightMode => '燈光模式';

  @override
  String get darkMode => '深色模式';

  @override
  String get systemTheme => '系統主題';

  @override
  String get about => '關於';

  @override
  String get version => '版本';

  @override
  String get privacyPolicy => '隱私權政策';

  @override
  String get termsOfService => '服務條款';

  @override
  String get contactUs => '聯絡我們';

  @override
  String get rateApp => '評價應用程式';

  @override
  String get shareApp => '分享應用程式';

  @override
  String shareAppMessage(String appName, String url) {
    return '請參閱$appName：終極伊斯蘭生活方式應用程式！ $url';
  }

  @override
  String get downloadManager => '下載管理器';

  @override
  String get downloads => '下載';

  @override
  String get downloading => '正在下載...';

  @override
  String get downloadComplete => '下載完成';

  @override
  String get downloadFailed => '下載失敗';

  @override
  String get offlineMode => '離線模式';

  @override
  String get noInternet => '無網路連線';

  @override
  String get checkConnection => '請檢查您的連接';

  @override
  String get premium => '優質的';

  @override
  String get upgradeToPro => '升級到專業版';

  @override
  String get proFeatures => '專業功能';

  @override
  String get removeAds => '刪除廣告';

  @override
  String get unlockAll => '解鎖所有內容';

  @override
  String get exclusiveContent => '獨家內容';

  @override
  String get welcome => '歡迎';

  @override
  String get getStarted => '開始使用';

  @override
  String get skip => '跳過';

  @override
  String get next => '下一個';

  @override
  String get done => '完畢';

  @override
  String get onboarding1Title => '歡迎來到阿拉之道';

  @override
  String get onboarding1Desc => '您完整的伊斯蘭伴侶應用程序，用於祈禱時間、古蘭經等';

  @override
  String get onboarding2Title => '祈禱時間';

  @override
  String get onboarding2Desc => '根據您所在位置的準確祈禱時間';

  @override
  String get onboarding3Title => '古蘭經及更多';

  @override
  String get onboarding3Desc => '閱讀《古蘭經》、追蹤您的閱讀情況並探索伊斯蘭內容';

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
  String get diagnosticsNotSet => '未設定';

  @override
  String get diagnosticsPrayerProfile => '禱告簡介';

  @override
  String get diagnosticsPrayerSource => '禱告權柄';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manual custom angles (no institutional source)';

  @override
  String get diagnosticsCloudDriven => '雲端驅動';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Quran Audio Assets';

  @override
  String get diagnosticsAudioAssets => '音訊資源';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count files';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifest read failed: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Localization Locales';

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
  String get dailyVerse => '每日詩歌';

  @override
  String get todaysIbadah => '今天的伊巴達';

  @override
  String get quickAccess => '快速存取';

  @override
  String get assistant => '助理';

  @override
  String get places => '地點';

  @override
  String get library => '圖書館';

  @override
  String get analytics => '分析';

  @override
  String get dailyDuas => '每日杜阿';

  @override
  String essentialDuas(String count) {
    return '$count 基本杜阿';
  }

  @override
  String get duaUnavailableTitle => '已驗證的 dua 尚不可用';

  @override
  String get duaUnavailableBody =>
      '已驗證的每日 duas 尚未同步到此裝置。連接到雲端來源以載入來源的 dua，而不是未經驗證的後備。';

  @override
  String get duaCategoryQuranic => '古蘭經杜阿';

  @override
  String get duaCategoryMorningEvening => '早上和晚上';

  @override
  String get duaCategoryTasbih => '塔斯比赫';

  @override
  String get duaCategoryProtection => '保護';

  @override
  String get duaCategoryBeginning => '開始';

  @override
  String get duaCategorySleep => '睡覺';

  @override
  String get duaCategoryFoodDrink => '食品和飲料';

  @override
  String get duaCategoryForgiveness => '饒恕';

  @override
  String get duaCategoryHome => '家';

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
  String get islamicEducation => '伊斯蘭教育';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => '聖訓集';

  @override
  String get hadithSourcePending => '來源待核實';

  @override
  String get hadithUnavailableTitle => '尚未提供經過驗證的聖訓集';

  @override
  String get hadithUnavailableBody =>
      '此構建仍然依賴未經驗證的外部聖訓提要。在來源資料集同步之前，聖訓瀏覽保持停用狀態。';

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
  String get calculateZakat => 'Calculate Zakat';

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
      '經過驗證的離線伊斯蘭知識庫仍在整理中。現在您可以啟用離線回退，但在來源資料集準備就緒之前，它只會顯示有限的安全訊息。\n\n您想啟用離線回退嗎？';

  @override
  String get chatbotOfflineSwitched => '啟用離線回退。經過驗證的本地伊斯蘭答案尚未準備好。';

  @override
  String get chatbotOfflineDownloadLabel => '啟用離線回退';

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
  String get dayStreak => 'Day streak';

  @override
  String get bestStreak => 'Best streak';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => '離線回退';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => '啟用離線回退';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API not configured. Please switch to Local AI.';

  @override
  String get chatbotLocalNoInfo => '[離線] 尚未提供經過驗證的當地伊斯蘭指南。切換到 Cloud AI 取得來源答案。';

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
