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
  String get splashTagline => '伊斯兰之光之路';

  @override
  String get home => '首页';

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
  String get nextPrayer => '下一次礼拜';

  @override
  String get prayerTimes => '祈祷时间';

  @override
  String get continueReading => '继续阅读';

  @override
  String get getLifetimePro => '获取终身专业版';

  @override
  String get unlockTajweed => '解锁 Tajweed 和高级功能';

  @override
  String get prayerCalculation => '礼拜时间计算';

  @override
  String get method => '计算方法';

  @override
  String get madhab => '晡礼法学方法';

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
  String get locationServiceDisabled => '定位服务被禁用。';

  @override
  String get locationPermissionDenied => '位置权限被拒绝。';

  @override
  String get locationDetectionFailed => '无法检测到您的位置。请手动选择城市或重试。';

  @override
  String citiesCount(String count) {
    return '$count 个城市';
  }

  @override
  String get search => '搜索';

  @override
  String get searchHint => '搜索...';

  @override
  String get noResults => '没有找到结果';

  @override
  String get loading => '正在加载...';

  @override
  String get error => '错误';

  @override
  String get appErrorOccurred => '发生错误';

  @override
  String get appUnknownError => '未知错误';

  @override
  String get quranLoadFailed => '无法加载《古兰经》内容。请再试一次。';

  @override
  String get retry => '重试';

  @override
  String get refreshAction => '刷新';

  @override
  String get cancel => '取消';

  @override
  String get save => '保存';

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
  String ayahLabel(String ayah) {
    return '阿亚 $ayah';
  }

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
  String get tafsirLoading => '加载中...';

  @override
  String get tafsirSourceLabel => '塔夫西尔来源';

  @override
  String get tafsirNoSurahFound => '没有找到该章的塔夫西尔。';

  @override
  String tafsirNoAyahFound(String ayah) {
    return '没有找到 ayah $ayah 的塔夫西尔。';
  }

  @override
  String get tafsirLoadFailed => '无法加载 Tafsir。';

  @override
  String get tafsirNoTextForAyah => '没有该阿耶的塔夫西尔文本。';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return '正在下载 tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return '正在加载 $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir 源返回了 HTTP $statusCode 错误。';
  }

  @override
  String get tafsirNoEntriesReturned => '所选的 tafsir 源未返回任何条目。';

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
  String get duaMeaning1 => '其他人则祈祷：“我们的主，请赐予我们今世和后世的美好，并保护我们免受火焰的折磨。”';

  @override
  String get duaMeaning2 =>
      '上帝不会给任何灵魂带来超出其承受能力的负担：每个人都会获得其所做的一切善行，并承受其恶行——“主啊，如果我们忘记或犯了错误，请不要责怪我们。”主啊，不要像你给我们之前的人带来负担一样给我们带来负担。主啊，不要让我们承受超出我们承受能力的负担。饶恕我们，饶恕我们，怜悯我们。你是我们的保护者，所以请帮助我们对抗异教徒。”';

  @override
  String get duaMeaning3 => '‘我们的主啊，在您引导我们之后，不要让我们的心偏离。请赐予我们您的仁慈：您是永恒的给予者。';

  @override
  String get duaMeaning4 => '主啊，求你让我和我的后代能够继续祷告。我们的主啊，请接受我的请求。';

  @override
  String get duaMeaning5 => '并以谦卑和仁慈的态度向他们放下你的翅膀，说：“主啊，怜悯他们，就像我小时候他们照顾我一样。”';

  @override
  String get duaMeaning6 =>
      '尊崇上帝，真正掌管一切的上帝。 [先知]，在启示完全完成之前，不要急于背诵，而要说：“主啊，请增加我的知识！”';

  @override
  String get duaMeaning7 => '说[先知]：“主啊，宽恕并怜悯：你是最仁慈的。”';

  @override
  String get duaMeaning8 => '那些祈祷的人：‘我们的主，求你使我们的配偶和子孙喜乐。让我们成为那些认识您的人的好榜样。”';

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
  String get ibadahTracker => '伊巴达记录';

  @override
  String get fasting => '斋戒';

  @override
  String get quranReading => '《古兰经》阅读';

  @override
  String get prayers => '礼拜';

  @override
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '$hours小时 $minutes分钟';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '$minutes分钟';
  }

  @override
  String get prayerRemainingUnavailable => '--';

  @override
  String get dhikrCount => '迪克尔伯爵';

  @override
  String get weeklyProgress => '每周进度';

  @override
  String get monthlyProgress => '每月进度';

  @override
  String get statistics => '统计数据';

  @override
  String get hijriCalendar => '伊斯兰历';

  @override
  String get gregorianCalendar => '公历';

  @override
  String get today => '今天';

  @override
  String get tomorrow => '明天';

  @override
  String get yesterday => '昨天';

  @override
  String get specialDays => '特别日子';

  @override
  String get ramadan => '斋月';

  @override
  String get eidAlFitr => '开斋节';

  @override
  String get eidAlAdha => '古尔邦节';

  @override
  String get islamicNewYear => '伊斯兰新年';

  @override
  String get mawlidAnNabi => '圣祭安纳比';

  @override
  String get specialDayDateRamadanStart => '1 斋月';

  @override
  String get specialDayDateLaylatAlQadr => '27 斋月';

  @override
  String get specialDayDateEidAlFitr => '1 肖瓦尔';

  @override
  String get specialDayDateEidAlAdha => '10 杜尔希贾';

  @override
  String get specialDayDateIslamicNewYear => '穆哈兰月 1 日';

  @override
  String get specialDayDateMawlidAnNabi => '12 拉比·阿瓦瓦尔';

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
  String get qiblaFound => '已找到朝拜方向！';

  @override
  String get turnDevice => '请将设备朝向朝拜方向';

  @override
  String qiblaCompassErrorDetails(String error) {
    return '指南针错误：$error';
  }

  @override
  String get qiblaSensorUnavailable => '指南针传感器在此设备上不可用。';

  @override
  String get qiblaLocationRequiredTitle => '朝拜所需地点';

  @override
  String get qiblaLocationRequiredBody => '在使用朝拜指南针之前设置您的实际位置，以便可以准确计算方向。';

  @override
  String get adhanNotificationChannelName => '宣礼通知';

  @override
  String get adhanNotificationChannelDescription => '祈祷时间以宣礼声提醒。';

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
  String get lightMode => '浅色模式';

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
  String get rateApp => '评价应用';

  @override
  String get shareApp => '分享应用';

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
  String get next => '下一步';

  @override
  String get done => '完成';

  @override
  String get onboarding1Title => '欢迎使用 Sirat-ı Nur';

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
  String get tapToCount => '点击计数';

  @override
  String get zikrCompletedMashAllah => '完全的！玛什真主';

  @override
  String get zikrMeaningSubhanAllah => '安拉远高于一切缺陷。';

  @override
  String get zikrMeaningAlhamdulillah => '所有赞美都属于安拉。';

  @override
  String get zikrMeaningAllahuAkbar => '安拉是最伟大的。';

  @override
  String get zikrMeaningLaIlahaIllallah => '除安拉外，别无上帝。';

  @override
  String get zikrMeaningAstaghfirullah => '我寻求阿拉的宽恕。';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata => '除了安拉之外，没有任何力量和力量。';

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
  String get offlineDownloadManager => '离线下载管理器';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => '释放内部设备存储空间。';

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
  String get audioVoice => '音频 语音';

  @override
  String get audioVoiceMisharyAlafasy => '男（米沙里·阿拉法西）';

  @override
  String get audioVoiceAbdulBaset => '男（阿卜杜勒·巴塞特）';

  @override
  String get audioVoiceSudais => '男性（苏代斯）';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => '朝拜校准';

  @override
  String get compassSmoothing => '罗盘平滑';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => '校准偏移';

  @override
  String currentOffset(Object offset) {
    return '当前：$offset°';
  }

  @override
  String get manualCorrectionDesc => '如果您的指南针需要手动校正，请进行调整。正值顺时针旋转。';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => '诊断';

  @override
  String get diagnosticsNotSet => '未设置';

  @override
  String get diagnosticsPrayerProfile => '祷告简介';

  @override
  String get diagnosticsPrayerSource => '祷告权柄';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return '自定义/$madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource => '手动自定义角度（无机构来源）';

  @override
  String get diagnosticsCloudDriven => '云驱动';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan 音频资产';

  @override
  String get diagnosticsUiAudioAssets => 'UI 音频资源';

  @override
  String get diagnosticsQuranAudioAssets => '古兰经音频资产';

  @override
  String get diagnosticsAudioAssets => '音频资源';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count 文件';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return '清单读取失败：$error';
  }

  @override
  String get diagnosticsLocalizationLocales => '本地化区域设置';

  @override
  String diagnosticsSupportedCount(String count) {
    return '支持 $count 项';
  }

  @override
  String get diagnosticsQuranDataset => '古兰经数据集';

  @override
  String get diagnosticsQuranSurahs => '古兰经各章';

  @override
  String get diagnosticsQuranAyahs => '古兰经经文';

  @override
  String get diagnosticsQuranJuzMetadata => '古兰经分卷元数据';

  @override
  String get diagnosticsQuranCloudTablesMissing => 'Supabase 中缺少云表；捆绑后备活动';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return '云检查失败：$error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing => 'Cloud juz 元数据丢失；捆绑结构后备活动';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return '云结构检查失败：$error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 => '需要校准。旋转图 8 中的设备。';

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
  String get sukunAudioTitle => '苏坤音景';

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
  String get paywallUnlockAll => '解锁你的精神之旅的所有功能';

  @override
  String get premiumProductUnavailable => '高级产品目前不可用。请稍后重试。';

  @override
  String get premiumPurchaseFailed => '购买无法完成。请再试一次。';

  @override
  String get paywallFeature1Title => '神经助手增强版';

  @override
  String get paywallFeature1Desc => '无限的人工智能问答';

  @override
  String get paywallFeature2Title => '无限离线';

  @override
  String get paywallFeature2Desc => '下载所有朗诵';

  @override
  String get paywallFeature3Title => '专属设计';

  @override
  String get paywallFeature3Desc => '高级主题和字体';

  @override
  String get paywallFeature4Title => '无广告';

  @override
  String get paywallFeature4Desc => '零广告';

  @override
  String get paywallGetAccess => '获得终身访问权限 — 1.00 美元';

  @override
  String get restorePurchases => '恢复购买';

  @override
  String get zakatCalculator => '天课计算器';

  @override
  String get zakatGold => '黄金（阿尔廷）';

  @override
  String get zakatSilver => '银牌 (Gümüş)';

  @override
  String get zakatCashBank => '现金/银行';

  @override
  String get zakatBusiness => '商业';

  @override
  String get zakatInvestments => '投资';

  @override
  String get zakatWeightGrams => '重量（克）';

  @override
  String get zakatPricePerGram => '价格/克';

  @override
  String get zakatTotalAmount => '总金额';

  @override
  String get zakatInventoryValue => '库存价值';

  @override
  String get zakatDebts => '债务';

  @override
  String get zakatTotal => '全部的';

  @override
  String get calculateZakat => '计算天课';

  @override
  String get nisabNotReached => '未到达尼萨布。天课不是强制性的。';

  @override
  String get totalZakat => '总天课';

  @override
  String nisabSummary(String nisab, String assets) {
    return '尼萨布：$nisab • 资产：$assets';
  }

  @override
  String get zakatGoldZakat => '黄金天课';

  @override
  String get zakatSilverZakat => '银天课';

  @override
  String get zakatCashZakat => '现金天课';

  @override
  String get zakatBusinessZakat => '商业天课';

  @override
  String get zakatInvestmentZakat => '投资天课';

  @override
  String get chatbotGreeting =>
      '阿萨拉姆·阿拉库姆！我是你的伊斯兰助手。向我询问有关祈祷、禁食、天课或任何伊斯兰话题的问题。';

  @override
  String get chatbotLimitReached => '已达到每日查询限制。升级至高级版无限制。';

  @override
  String get chatbotErrorMsg => '我无法生成响应。请再试一次。';

  @override
  String get chatbotOfflinePrompt =>
      '经过验证的离线伊斯兰知识库仍在整理中。您现在可以启用离线回退，但在源数据集准备就绪之前，它只会显示有限的安全消息。\n\n您想启用离线回退吗？';

  @override
  String get chatbotOfflineSwitched => '启用离线回退。经过验证的本地伊斯兰答案尚未准备好。';

  @override
  String get chatbotOfflineDownloadLabel => '启用离线备用';

  @override
  String get downloadPreparing => '正在准备下载...';

  @override
  String downloadingSurah(String surah, String total) {
    return '下载古兰经 $surah / $total';
  }

  @override
  String get downloadCompleted => '已为该背诵者下载所有古兰经。';

  @override
  String get offlineQuranAudioPacks => '离线古兰经音频包';

  @override
  String storedOnDeviceMb(String size) {
    return '存储在设备上：$size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '下载 $downloaded / $total 古兰经';
  }

  @override
  String get redownloadMissingRepair => '修复/下载丢失';

  @override
  String get downloadAction => '下载';

  @override
  String get resumeDownload => '简历下载';

  @override
  String get deleteDownloadedFiles => '删除下载的文件';

  @override
  String get downloadCancelling => '正在取消...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return '$reciter 的下载已取消。';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return '$reciter 的下载已完成。';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return '$reciter 的下载已完成，其中 $failed 章节失败（$downloaded/$total 已下载）。';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return '已删除 $reciter 的脱机文件。';
  }

  @override
  String get quranAudioSourcesUnavailable => '经过验证的《古兰经》音频源目前不可用。';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return '已验证的《古兰经》音频包不完整 ($available/$total)。刷新云种子并重试。';
  }

  @override
  String get chatbotHint => '问一个问题...';

  @override
  String get chatbotThinking => '想着……';

  @override
  String get sukunMixerSubtitle => '自然与古兰经混合器';

  @override
  String get audioPlayFailed => '音频播放失败';

  @override
  String get sukunNatureLabel => '苏坤（自然）';

  @override
  String get sukunRainOfMercy => '慈悲之雨';

  @override
  String get sukunGardenOfPeace => '和平花园';

  @override
  String get sukunMidnightCalm => '午夜平静';

  @override
  String get sukunOceanTawheed => '海洋塔希德';

  @override
  String get sukunUnavailableTitle => '音景不可用';

  @override
  String get sukunUnavailableBody => '此版本尚不包括所需的 Sukun 音景资源。';

  @override
  String get prayerCompletion => '礼拜完成度';

  @override
  String get streaks => '连续记录';

  @override
  String get dayStreak => '连续日数';

  @override
  String get bestStreak => '最佳连胜纪录';

  @override
  String get chatbotCloudAiLabel => '云端人工智能';

  @override
  String get chatbotLocalAiLabel => '离线备用';

  @override
  String get chatbotUseCloudAi => '使用 Cloud AI（Gemini）';

  @override
  String get chatbotDownloadLocalAi => '启用离线备用';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count 左';
  }

  @override
  String get chatbotCloudNotConfigured => '未配置云API。经验证的离线伊斯兰指南尚不可用。';

  @override
  String get chatbotLocalNoInfo => '[离线] 尚未提供经过验证的当地伊斯兰指南。切换到 Cloud AI 获取来源答案。';

  @override
  String get mosques => '清真寺';

  @override
  String get halalFood => '清真食品';

  @override
  String get placesSearchArea => '搜索该区域';

  @override
  String get nearbyMosques => '附近的清真寺';

  @override
  String get islamicSchools => '伊斯兰学校';

  @override
  String placesFoundCount(String count) {
    return '找到 $count';
  }

  @override
  String distanceAwayKm(String distance) {
    return '距离 $distance 公里';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API 错误：$statusCode';
  }

  @override
  String get placesNetworkError => '网络错误。请再试一次。';

  @override
  String get placesLocationRequiredTitle => '需要位置';

  @override
  String get placesLocationRequiredBody =>
      '先设定好位置，这样就可以准确搜索到附近的清真寺、清真食品、伊斯兰学校。';

  @override
  String get placesMapTilesUnavailableTitle => '地图图块不可用';

  @override
  String get placesMapTilesUnavailableBody =>
      '尚未为此构建配置经过验证的地图图块源。附近的地点仍然可以从您保存的位置加载。';

  @override
  String get placesDataSourceUnavailableTitle => '地点数据不可用';

  @override
  String get placesDataSourceUnavailableBody =>
      '尚未为此构建配置经过验证的地点数据端点。在启用附近搜索之前，将 PLACES_OVERPASS_API_URL 设置为已批准的代理或提供商。';

  @override
  String get unknownPlaceName => '未知名称';

  @override
  String get islamicPlaceFallback => '伊斯兰广场';

  @override
  String get asmaMeaning1 => '仁慈者';

  @override
  String get asmaMeaning2 => '仁慈者';

  @override
  String get asmaMeaning3 => '国王/永恒之主';

  @override
  String get asmaMeaning4 => '至圣';

  @override
  String get asmaMeaning5 => '和平之源';

  @override
  String get asmaMeaning6 => '安全的给予者';

  @override
  String get asmaMeaning7 => '卫报';

  @override
  String get asmaMeaning8 => '最珍贵/最强大';

  @override
  String get asmaMeaning9 => '强制器';

  @override
  String get asmaMeaning10 => '最伟大的';

  @override
  String get asmaMeaning11 => '创造者';

  @override
  String get asmaMeaning12 => '秩序的缔造者';

  @override
  String get asmaMeaning13 => '美丽的塑造者';

  @override
  String get asmaMeaning14 => '宽容';

  @override
  String get asmaMeaning15 => '征服者';

  @override
  String get asmaMeaning16 => '一切的给予者';

  @override
  String get asmaMeaning17 => '维持者';

  @override
  String get asmaMeaning18 => '揭幕战';

  @override
  String get asmaMeaning19 => '万物之知者';

  @override
  String get asmaMeaning20 => '大蟒蛇';

  @override
  String get asmaMeaning21 => '救援者';

  @override
  String get asmaMeaning22 => '阿巴塞人';

  @override
  String get asmaMeaning23 => '尊崇者';

  @override
  String get asmaMeaning24 => '荣誉的授予者';

  @override
  String get asmaMeaning25 => '羞辱者';

  @override
  String get asmaMeaning26 => '所有人的聆听者';

  @override
  String get asmaMeaning27 => '万物之先知';

  @override
  String get asmaMeaning28 => '法官';

  @override
  String get asmaMeaning29 => '公正';

  @override
  String get asmaMeaning30 => '微妙的一个';

  @override
  String get asmaMeaning31 => '所有人都知道';

  @override
  String get asmaMeaning32 => '忍耐';

  @override
  String get asmaMeaning33 => '宏伟';

  @override
  String get asmaMeaning34 => '伟大的宽恕者';

  @override
  String get asmaMeaning35 => '感恩的奖赏者';

  @override
  String get asmaMeaning36 => '最高';

  @override
  String get asmaMeaning37 => '最伟大的';

  @override
  String get asmaMeaning38 => '保护者';

  @override
  String get asmaMeaning39 => '滋养者';

  @override
  String get asmaMeaning40 => '清算者';

  @override
  String get asmaMeaning41 => '雄伟号';

  @override
  String get asmaMeaning42 => '慷慨';

  @override
  String get asmaMeaning43 => '警惕的人';

  @override
  String get asmaMeaning44 => '祈祷的回应者';

  @override
  String get asmaMeaning45 => '万物皆知';

  @override
  String get asmaMeaning46 => '完全智者';

  @override
  String get asmaMeaning47 => '爱人';

  @override
  String get asmaMeaning48 => '最荣耀的一个';

  @override
  String get asmaMeaning49 => '复活者';

  @override
  String get asmaMeaning50 => '见证人';

  @override
  String get asmaMeaning51 => '真相';

  @override
  String get asmaMeaning52 => '充足的受托人';

  @override
  String get asmaMeaning53 => '所有力量的拥有者';

  @override
  String get asmaMeaning54 => '强力';

  @override
  String get asmaMeaning55 => '保护者';

  @override
  String get asmaMeaning56 => '受到赞扬';

  @override
  String get asmaMeaning57 => '评估师';

  @override
  String get asmaMeaning58 => '发起者';

  @override
  String get asmaMeaning59 => '恢复者';

  @override
  String get asmaMeaning60 => '生命的给予者';

  @override
  String get asmaMeaning61 => '生命的夺取者';

  @override
  String get asmaMeaning62 => '永生者';

  @override
  String get asmaMeaning63 => '自给自足的维持者';

  @override
  String get asmaMeaning64 => '查找器';

  @override
  String get asmaMeaning65 => '光荣者';

  @override
  String get asmaMeaning66 => '唯一的一个';

  @override
  String get asmaMeaning67 => '那一个';

  @override
  String get asmaMeaning68 => '所有人都在寻找的人';

  @override
  String get asmaMeaning69 => '强大的';

  @override
  String get asmaMeaning70 => '一切力量的创造者';

  @override
  String get asmaMeaning71 => '加急者';

  @override
  String get asmaMeaning72 => '延迟者';

  @override
  String get asmaMeaning73 => '第一个';

  @override
  String get asmaMeaning74 => '最后一个';

  @override
  String get asmaMeaning75 => '清单';

  @override
  String get asmaMeaning76 => '隐藏的';

  @override
  String get asmaMeaning77 => '总督';

  @override
  String get asmaMeaning78 => '至尊者';

  @override
  String get asmaMeaning79 => '行善者';

  @override
  String get asmaMeaning80 => '悔改指南';

  @override
  String get asmaMeaning81 => '复仇者';

  @override
  String get asmaMeaning82 => '宽恕者';

  @override
  String get asmaMeaning83 => '克莱门特';

  @override
  String get asmaMeaning84 => '所有人的所有者/主权者';

  @override
  String get asmaMeaning85 => '威严与赏金的拥有者';

  @override
  String get asmaMeaning86 => '公平的一个';

  @override
  String get asmaMeaning87 => '采集者';

  @override
  String get asmaMeaning88 => '富人';

  @override
  String get asmaMeaning89 => '丰富者';

  @override
  String get asmaMeaning90 => '伤害预防者';

  @override
  String get asmaMeaning91 => '伤害使者';

  @override
  String get asmaMeaning92 => '利益的授予';

  @override
  String get asmaMeaning93 => '光';

  @override
  String get asmaMeaning94 => '引导者';

  @override
  String get asmaMeaning95 => '发起者';

  @override
  String get asmaMeaning96 => '永恒的人';

  @override
  String get asmaMeaning97 => '继承者';

  @override
  String get asmaMeaning98 => '最正向导';

  @override
  String get asmaMeaning99 => '一号病人';
}

/// The translations for Chinese, as used in China (`zh_CN`).
class AppLocalizationsZhCn extends AppLocalizationsZh {
  AppLocalizationsZhCn() : super('zh_CN');

  @override
  String get appTitle => '安拉之道';

  @override
  String get splashTagline => '伊斯兰之光之路';

  @override
  String get home => '首页';

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
  String get nextPrayer => '下一次礼拜';

  @override
  String get prayerTimes => '祈祷时间';

  @override
  String get continueReading => '继续阅读';

  @override
  String get getLifetimePro => '获取终身专业版';

  @override
  String get unlockTajweed => '解锁 Tajweed 和高级功能';

  @override
  String get prayerCalculation => '礼拜时间计算';

  @override
  String get method => '计算方法';

  @override
  String get madhab => '晡礼法学方法';

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
  String get locationServiceDisabled => '定位服务被禁用。';

  @override
  String get locationPermissionDenied => '位置权限被拒绝。';

  @override
  String get locationDetectionFailed => '无法检测到您的位置。请手动选择城市或重试。';

  @override
  String citiesCount(String count) {
    return '$count 个城市';
  }

  @override
  String get search => '搜索';

  @override
  String get searchHint => '搜索...';

  @override
  String get noResults => '没有找到结果';

  @override
  String get loading => '正在加载...';

  @override
  String get error => '错误';

  @override
  String get appErrorOccurred => '发生错误';

  @override
  String get appUnknownError => '未知错误';

  @override
  String get quranLoadFailed => '无法加载《古兰经》内容。请再试一次。';

  @override
  String get retry => '重试';

  @override
  String get refreshAction => '刷新';

  @override
  String get cancel => '取消';

  @override
  String get save => '保存';

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
  String ayahLabel(String ayah) {
    return '阿亚 $ayah';
  }

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
  String get tafsirLoading => '加载中...';

  @override
  String get tafsirSourceLabel => '塔夫西尔来源';

  @override
  String get tafsirNoSurahFound => '没有找到该章的塔夫西尔。';

  @override
  String tafsirNoAyahFound(String ayah) {
    return '没有找到 ayah $ayah 的塔夫西尔。';
  }

  @override
  String get tafsirLoadFailed => '无法加载 Tafsir。';

  @override
  String get tafsirNoTextForAyah => '没有该阿耶的塔夫西尔文本。';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return '正在下载 tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return '正在加载 $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir 源返回了 HTTP $statusCode 错误。';
  }

  @override
  String get tafsirNoEntriesReturned => '所选的 tafsir 源未返回任何条目。';

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
  String get duaMeaning1 => '其他人则祈祷：“我们的主，请赐予我们今世和后世的美好，并保护我们免受火焰的折磨。”';

  @override
  String get duaMeaning2 =>
      '上帝不会给任何灵魂带来超出其承受能力的负担：每个人都会获得其所做的一切善行，并承受其恶行——“主啊，如果我们忘记或犯了错误，请不要责怪我们。”主啊，不要像你给我们之前的人带来负担一样给我们带来负担。主啊，不要让我们承受超出我们承受能力的负担。饶恕我们，饶恕我们，怜悯我们。你是我们的保护者，所以请帮助我们对抗异教徒。”';

  @override
  String get duaMeaning3 => '‘我们的主啊，在您引导我们之后，不要让我们的心偏离。请赐予我们您的仁慈：您是永恒的给予者。';

  @override
  String get duaMeaning4 => '主啊，求你让我和我的后代能够继续祷告。我们的主啊，请接受我的请求。';

  @override
  String get duaMeaning5 => '并以谦卑和仁慈的态度向他们放下你的翅膀，说：“主啊，怜悯他们，就像我小时候他们照顾我一样。”';

  @override
  String get duaMeaning6 =>
      '尊崇上帝，真正掌管一切的上帝。 [先知]，在启示完全完成之前，不要急于背诵，而要说：“主啊，请增加我的知识！”';

  @override
  String get duaMeaning7 => '说[先知]：“主啊，宽恕并怜悯：你是最仁慈的。”';

  @override
  String get duaMeaning8 => '那些祈祷的人：‘我们的主，求你使我们的配偶和子孙喜乐。让我们成为那些认识您的人的好榜样。”';

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
  String get ibadahTracker => '伊巴达记录';

  @override
  String get fasting => '斋戒';

  @override
  String get quranReading => '《古兰经》阅读';

  @override
  String get prayers => '礼拜';

  @override
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '$hours小时 $minutes分钟';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '$minutes分钟';
  }

  @override
  String get prayerRemainingUnavailable => '--';

  @override
  String get dhikrCount => '迪克尔伯爵';

  @override
  String get weeklyProgress => '每周进度';

  @override
  String get monthlyProgress => '每月进度';

  @override
  String get statistics => '统计数据';

  @override
  String get hijriCalendar => '伊斯兰历';

  @override
  String get gregorianCalendar => '公历';

  @override
  String get today => '今天';

  @override
  String get tomorrow => '明天';

  @override
  String get yesterday => '昨天';

  @override
  String get specialDays => '特别日子';

  @override
  String get ramadan => '斋月';

  @override
  String get eidAlFitr => '开斋节';

  @override
  String get eidAlAdha => '古尔邦节';

  @override
  String get islamicNewYear => '伊斯兰新年';

  @override
  String get mawlidAnNabi => '圣祭安纳比';

  @override
  String get specialDayDateRamadanStart => '1 斋月';

  @override
  String get specialDayDateLaylatAlQadr => '27 斋月';

  @override
  String get specialDayDateEidAlFitr => '1 肖瓦尔';

  @override
  String get specialDayDateEidAlAdha => '10 杜尔希贾';

  @override
  String get specialDayDateIslamicNewYear => '穆哈兰月 1 日';

  @override
  String get specialDayDateMawlidAnNabi => '12 拉比·阿瓦瓦尔';

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
  String get qiblaFound => '已找到朝拜方向！';

  @override
  String get turnDevice => '请将设备朝向朝拜方向';

  @override
  String qiblaCompassErrorDetails(String error) {
    return '指南针错误：$error';
  }

  @override
  String get qiblaSensorUnavailable => '指南针传感器在此设备上不可用。';

  @override
  String get qiblaLocationRequiredTitle => '朝拜所需地点';

  @override
  String get qiblaLocationRequiredBody => '在使用朝拜指南针之前设置您的实际位置，以便可以准确计算方向。';

  @override
  String get adhanNotificationChannelName => '宣礼通知';

  @override
  String get adhanNotificationChannelDescription => '祈祷时间以宣礼声提醒。';

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
  String get lightMode => '浅色模式';

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
  String get rateApp => '评价应用';

  @override
  String get shareApp => '分享应用';

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
  String get next => '下一步';

  @override
  String get done => '完成';

  @override
  String get onboarding1Title => '欢迎使用 Sirat-ı Nur';

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
  String get tapToCount => '点击计数';

  @override
  String get zikrCompletedMashAllah => '完全的！玛什真主';

  @override
  String get zikrMeaningSubhanAllah => '安拉远高于一切缺陷。';

  @override
  String get zikrMeaningAlhamdulillah => '所有赞美都属于安拉。';

  @override
  String get zikrMeaningAllahuAkbar => '安拉是最伟大的。';

  @override
  String get zikrMeaningLaIlahaIllallah => '除安拉外，别无上帝。';

  @override
  String get zikrMeaningAstaghfirullah => '我寻求阿拉的宽恕。';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata => '除了安拉之外，没有任何力量和力量。';

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
  String get offlineDownloadManager => '离线下载管理器';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => '释放内部设备存储空间。';

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
  String get audioVoice => '音频 语音';

  @override
  String get audioVoiceMisharyAlafasy => '男（米沙里·阿拉法西）';

  @override
  String get audioVoiceAbdulBaset => '男（阿卜杜勒·巴塞特）';

  @override
  String get audioVoiceSudais => '男性（苏代斯）';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => '朝拜校准';

  @override
  String get compassSmoothing => '罗盘平滑';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => '校准偏移';

  @override
  String currentOffset(Object offset) {
    return '当前：$offset°';
  }

  @override
  String get manualCorrectionDesc => '如果您的指南针需要手动校正，请进行调整。正值顺时针旋转。';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => '诊断';

  @override
  String get diagnosticsNotSet => '未设置';

  @override
  String get diagnosticsPrayerProfile => '祷告简介';

  @override
  String get diagnosticsPrayerSource => '祷告权柄';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return '自定义/$madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource => '手动自定义角度（无机构来源）';

  @override
  String get diagnosticsCloudDriven => '云驱动';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan 音频资产';

  @override
  String get diagnosticsUiAudioAssets => 'UI 音频资源';

  @override
  String get diagnosticsQuranAudioAssets => '古兰经音频资产';

  @override
  String get diagnosticsAudioAssets => '音频资源';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count 文件';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return '清单读取失败：$error';
  }

  @override
  String get diagnosticsLocalizationLocales => '本地化区域设置';

  @override
  String diagnosticsSupportedCount(String count) {
    return '支持 $count 项';
  }

  @override
  String get diagnosticsQuranDataset => '古兰经数据集';

  @override
  String get diagnosticsQuranSurahs => '古兰经各章';

  @override
  String get diagnosticsQuranAyahs => '古兰经经文';

  @override
  String get diagnosticsQuranJuzMetadata => '古兰经分卷元数据';

  @override
  String get diagnosticsQuranCloudTablesMissing => 'Supabase 中缺少云表；捆绑后备活动';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return '云检查失败：$error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing => 'Cloud juz 元数据丢失；捆绑结构后备活动';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return '云结构检查失败：$error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 => '需要校准。旋转图 8 中的设备。';

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
  String get sukunAudioTitle => '苏坤音景';

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
  String get paywallUnlockAll => '解锁你的精神之旅的所有功能';

  @override
  String get premiumProductUnavailable => '高级产品目前不可用。请稍后重试。';

  @override
  String get premiumPurchaseFailed => '购买无法完成。请再试一次。';

  @override
  String get paywallFeature1Title => '神经助手增强版';

  @override
  String get paywallFeature1Desc => '无限的人工智能问答';

  @override
  String get paywallFeature2Title => '无限离线';

  @override
  String get paywallFeature2Desc => '下载所有朗诵';

  @override
  String get paywallFeature3Title => '独家设计';

  @override
  String get paywallFeature3Desc => '高级主题和字体';

  @override
  String get paywallFeature4Title => '无广告';

  @override
  String get paywallFeature4Desc => '零广告';

  @override
  String get paywallGetAccess => '获得终身访问权限 — 1.00 美元';

  @override
  String get restorePurchases => '恢复购买';

  @override
  String get zakatCalculator => '天课计算器';

  @override
  String get zakatGold => '黄金（阿尔廷）';

  @override
  String get zakatSilver => '银牌 (Gümüş)';

  @override
  String get zakatCashBank => '现金/银行';

  @override
  String get zakatBusiness => '商业';

  @override
  String get zakatInvestments => '投资';

  @override
  String get zakatWeightGrams => '重量（克）';

  @override
  String get zakatPricePerGram => '价格/克';

  @override
  String get zakatTotalAmount => '总金额';

  @override
  String get zakatInventoryValue => '库存价值';

  @override
  String get zakatDebts => '债务';

  @override
  String get zakatTotal => '全部的';

  @override
  String get calculateZakat => '计算天课';

  @override
  String get nisabNotReached => '未到达尼萨布。天课不是强制性的。';

  @override
  String get totalZakat => '总天课';

  @override
  String nisabSummary(String nisab, String assets) {
    return '尼萨布：$nisab • 资产：$assets';
  }

  @override
  String get zakatGoldZakat => '黄金天课';

  @override
  String get zakatSilverZakat => '银天课';

  @override
  String get zakatCashZakat => '现金天课';

  @override
  String get zakatBusinessZakat => '商业天课';

  @override
  String get zakatInvestmentZakat => '投资天课';

  @override
  String get chatbotGreeting =>
      '阿萨拉姆·阿拉库姆！我是你的伊斯兰助手。向我询问有关祈祷、禁食、天课或任何伊斯兰话题的问题。';

  @override
  String get chatbotLimitReached => '已达到每日查询限制。升级至高级版无限制。';

  @override
  String get chatbotErrorMsg => '我无法生成响应。请再试一次。';

  @override
  String get chatbotOfflinePrompt =>
      '经过验证的离线伊斯兰知识库仍在整理中。您现在可以启用离线回退，但在源数据集准备就绪之前，它只会显示有限的安全消息。\n\n您想启用离线回退吗？';

  @override
  String get chatbotOfflineSwitched => '启用离线回退。经过验证的本地伊斯兰答案尚未准备好。';

  @override
  String get chatbotOfflineDownloadLabel => '启用离线备用';

  @override
  String get downloadPreparing => '正在准备下载...';

  @override
  String downloadingSurah(String surah, String total) {
    return '下载古兰经 $surah / $total';
  }

  @override
  String get downloadCompleted => '已为该背诵者下载所有古兰经。';

  @override
  String get offlineQuranAudioPacks => '离线古兰经音频包';

  @override
  String storedOnDeviceMb(String size) {
    return '存储在设备上：$size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '下载 $downloaded / $total 古兰经';
  }

  @override
  String get redownloadMissingRepair => '修复/下载丢失';

  @override
  String get downloadAction => '下载';

  @override
  String get resumeDownload => '简历下载';

  @override
  String get deleteDownloadedFiles => '删除下载的文件';

  @override
  String get downloadCancelling => '正在取消...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return '$reciter 的下载已取消。';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return '$reciter 的下载已完成。';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return '$reciter 的下载已完成，其中 $failed 章节失败（$downloaded/$total 已下载）。';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return '已删除 $reciter 的脱机文件。';
  }

  @override
  String get quranAudioSourcesUnavailable => '经过验证的《古兰经》音频源目前不可用。';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return '已验证的《古兰经》音频包不完整 ($available/$total)。刷新云种子并重试。';
  }

  @override
  String get chatbotHint => '问一个问题...';

  @override
  String get chatbotThinking => '想着……';

  @override
  String get sukunMixerSubtitle => '自然与古兰经混合器';

  @override
  String get audioPlayFailed => '音频播放失败';

  @override
  String get sukunNatureLabel => '苏坤（自然）';

  @override
  String get sukunRainOfMercy => '慈悲之雨';

  @override
  String get sukunGardenOfPeace => '和平花园';

  @override
  String get sukunMidnightCalm => '午夜平静';

  @override
  String get sukunOceanTawheed => '海洋塔希德';

  @override
  String get sukunUnavailableTitle => '音景不可用';

  @override
  String get sukunUnavailableBody => '此版本尚不包括所需的 Sukun 音景资源。';

  @override
  String get prayerCompletion => '礼拜完成度';

  @override
  String get streaks => '连续记录';

  @override
  String get dayStreak => '连续日数';

  @override
  String get bestStreak => '最佳连胜纪录';

  @override
  String get chatbotCloudAiLabel => '云端人工智能';

  @override
  String get chatbotLocalAiLabel => '离线备用';

  @override
  String get chatbotUseCloudAi => '使用 Cloud AI（Gemini）';

  @override
  String get chatbotDownloadLocalAi => '启用离线备用';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count 左';
  }

  @override
  String get chatbotCloudNotConfigured => '未配置云API。经验证的离线伊斯兰指南尚不可用。';

  @override
  String get chatbotLocalNoInfo => '[离线] 尚未提供经过验证的当地伊斯兰指南。切换到 Cloud AI 获取来源答案。';

  @override
  String get mosques => '清真寺';

  @override
  String get halalFood => '清真食品';

  @override
  String get placesSearchArea => '搜索该区域';

  @override
  String get nearbyMosques => '附近的清真寺';

  @override
  String get islamicSchools => '伊斯兰学校';

  @override
  String placesFoundCount(String count) {
    return '找到 $count';
  }

  @override
  String distanceAwayKm(String distance) {
    return '距离 $distance 公里';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API 错误：$statusCode';
  }

  @override
  String get placesNetworkError => '网络错误。请再试一次。';

  @override
  String get placesLocationRequiredTitle => '需要位置';

  @override
  String get placesLocationRequiredBody =>
      '先设定好位置，这样就可以准确搜索到附近的清真寺、清真食品、伊斯兰学校。';

  @override
  String get placesMapTilesUnavailableTitle => '地图图块不可用';

  @override
  String get placesMapTilesUnavailableBody =>
      '尚未为此构建配置经过验证的地图图块源。附近的地点仍然可以从您保存的位置加载。';

  @override
  String get placesDataSourceUnavailableTitle => '地点数据不可用';

  @override
  String get placesDataSourceUnavailableBody =>
      '尚未为此构建配置经过验证的地点数据端点。在启用附近搜索之前，将 PLACES_OVERPASS_API_URL 设置为已批准的代理或提供商。';

  @override
  String get unknownPlaceName => '未知名称';

  @override
  String get islamicPlaceFallback => '伊斯兰广场';

  @override
  String get asmaMeaning1 => '仁慈者';

  @override
  String get asmaMeaning2 => '仁慈者';

  @override
  String get asmaMeaning3 => '国王/永恒之主';

  @override
  String get asmaMeaning4 => '至圣';

  @override
  String get asmaMeaning5 => '和平之源';

  @override
  String get asmaMeaning6 => '安全的给予者';

  @override
  String get asmaMeaning7 => '卫报';

  @override
  String get asmaMeaning8 => '最珍贵/最强大';

  @override
  String get asmaMeaning9 => '强制器';

  @override
  String get asmaMeaning10 => '最伟大的';

  @override
  String get asmaMeaning11 => '创造者';

  @override
  String get asmaMeaning12 => '秩序的缔造者';

  @override
  String get asmaMeaning13 => '美丽的塑造者';

  @override
  String get asmaMeaning14 => '宽容';

  @override
  String get asmaMeaning15 => '征服者';

  @override
  String get asmaMeaning16 => '一切的给予者';

  @override
  String get asmaMeaning17 => '维持者';

  @override
  String get asmaMeaning18 => '揭幕战';

  @override
  String get asmaMeaning19 => '万物之知者';

  @override
  String get asmaMeaning20 => '大蟒蛇';

  @override
  String get asmaMeaning21 => '救援者';

  @override
  String get asmaMeaning22 => '阿巴塞人';

  @override
  String get asmaMeaning23 => '尊崇者';

  @override
  String get asmaMeaning24 => '荣誉的授予者';

  @override
  String get asmaMeaning25 => '羞辱者';

  @override
  String get asmaMeaning26 => '所有人的聆听者';

  @override
  String get asmaMeaning27 => '万物之先知';

  @override
  String get asmaMeaning28 => '法官';

  @override
  String get asmaMeaning29 => '公正';

  @override
  String get asmaMeaning30 => '微妙的一个';

  @override
  String get asmaMeaning31 => '所有人都知道';

  @override
  String get asmaMeaning32 => '忍耐';

  @override
  String get asmaMeaning33 => '宏伟';

  @override
  String get asmaMeaning34 => '伟大的宽恕者';

  @override
  String get asmaMeaning35 => '感恩的奖赏者';

  @override
  String get asmaMeaning36 => '最高';

  @override
  String get asmaMeaning37 => '最伟大的';

  @override
  String get asmaMeaning38 => '保护者';

  @override
  String get asmaMeaning39 => '滋养者';

  @override
  String get asmaMeaning40 => '清算者';

  @override
  String get asmaMeaning41 => '雄伟号';

  @override
  String get asmaMeaning42 => '慷慨';

  @override
  String get asmaMeaning43 => '警惕的人';

  @override
  String get asmaMeaning44 => '祈祷的回应者';

  @override
  String get asmaMeaning45 => '万物皆知';

  @override
  String get asmaMeaning46 => '完全智者';

  @override
  String get asmaMeaning47 => '爱人';

  @override
  String get asmaMeaning48 => '最荣耀的一个';

  @override
  String get asmaMeaning49 => '复活者';

  @override
  String get asmaMeaning50 => '见证人';

  @override
  String get asmaMeaning51 => '真相';

  @override
  String get asmaMeaning52 => '充足的受托人';

  @override
  String get asmaMeaning53 => '所有力量的拥有者';

  @override
  String get asmaMeaning54 => '强力';

  @override
  String get asmaMeaning55 => '保护者';

  @override
  String get asmaMeaning56 => '受到赞扬';

  @override
  String get asmaMeaning57 => '评估师';

  @override
  String get asmaMeaning58 => '发起者';

  @override
  String get asmaMeaning59 => '恢复者';

  @override
  String get asmaMeaning60 => '生命的给予者';

  @override
  String get asmaMeaning61 => '生命的夺取者';

  @override
  String get asmaMeaning62 => '永生者';

  @override
  String get asmaMeaning63 => '自给自足的维持者';

  @override
  String get asmaMeaning64 => '查找器';

  @override
  String get asmaMeaning65 => '光荣者';

  @override
  String get asmaMeaning66 => '唯一的一个';

  @override
  String get asmaMeaning67 => '那一个';

  @override
  String get asmaMeaning68 => '所有人都在寻找的人';

  @override
  String get asmaMeaning69 => '强大的';

  @override
  String get asmaMeaning70 => '一切力量的创造者';

  @override
  String get asmaMeaning71 => '加急者';

  @override
  String get asmaMeaning72 => '延迟者';

  @override
  String get asmaMeaning73 => '第一个';

  @override
  String get asmaMeaning74 => '最后一个';

  @override
  String get asmaMeaning75 => '清单';

  @override
  String get asmaMeaning76 => '隐藏的';

  @override
  String get asmaMeaning77 => '总督';

  @override
  String get asmaMeaning78 => '至尊者';

  @override
  String get asmaMeaning79 => '行善者';

  @override
  String get asmaMeaning80 => '悔改指南';

  @override
  String get asmaMeaning81 => '复仇者';

  @override
  String get asmaMeaning82 => '宽恕者';

  @override
  String get asmaMeaning83 => '克莱门特';

  @override
  String get asmaMeaning84 => '所有人的所有者/主权者';

  @override
  String get asmaMeaning85 => '威严与赏金的拥有者';

  @override
  String get asmaMeaning86 => '公平的一个';

  @override
  String get asmaMeaning87 => '采集者';

  @override
  String get asmaMeaning88 => '富人';

  @override
  String get asmaMeaning89 => '丰富者';

  @override
  String get asmaMeaning90 => '伤害预防者';

  @override
  String get asmaMeaning91 => '伤害使者';

  @override
  String get asmaMeaning92 => '利益的授予';

  @override
  String get asmaMeaning93 => '光';

  @override
  String get asmaMeaning94 => '引导者';

  @override
  String get asmaMeaning95 => '发起者';

  @override
  String get asmaMeaning96 => '永恒的人';

  @override
  String get asmaMeaning97 => '继承者';

  @override
  String get asmaMeaning98 => '最正向导';

  @override
  String get asmaMeaning99 => '一号病人';
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class AppLocalizationsZhTw extends AppLocalizationsZh {
  AppLocalizationsZhTw() : super('zh_TW');

  @override
  String get appTitle => '安拉之道';

  @override
  String get splashTagline => '伊斯蘭教之光之路';

  @override
  String get home => '首頁';

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
  String get nextPrayer => '下一次禮拜';

  @override
  String get prayerTimes => '祈禱時間';

  @override
  String get continueReading => '繼續閱讀';

  @override
  String get getLifetimePro => '取得終身專業版';

  @override
  String get unlockTajweed => '解鎖 Tajweed 和高級功能';

  @override
  String get prayerCalculation => '禮拜時間計算';

  @override
  String get method => '計算方法';

  @override
  String get madhab => '晡禮法學方法';

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
  String get locationServiceDisabled => '定位服務被禁用。';

  @override
  String get locationPermissionDenied => '位置權限被拒絕。';

  @override
  String get locationDetectionFailed => '無法偵測到您的位置。請手動選擇城市或重試。';

  @override
  String citiesCount(String count) {
    return '$count 個城市';
  }

  @override
  String get search => '搜尋';

  @override
  String get searchHint => '搜尋...';

  @override
  String get noResults => '沒有找到結果';

  @override
  String get loading => '正在加載...';

  @override
  String get error => '錯誤';

  @override
  String get appErrorOccurred => '發生錯誤';

  @override
  String get appUnknownError => '未知錯誤';

  @override
  String get quranLoadFailed => '无法加载《古兰经》内容。請再試一次。';

  @override
  String get retry => '重試';

  @override
  String get refreshAction => '重新整理';

  @override
  String get cancel => '取消';

  @override
  String get save => '儲存';

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
  String ayahLabel(String ayah) {
    return '阿亞 $ayah';
  }

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
  String get tafsirLoading => '加載中...';

  @override
  String get tafsirSourceLabel => '塔夫西爾來源';

  @override
  String get tafsirNoSurahFound => '沒有找到該章的塔夫西爾。';

  @override
  String tafsirNoAyahFound(String ayah) {
    return '沒有找到 ayah $ayah 的塔夫西爾。';
  }

  @override
  String get tafsirLoadFailed => '無法加載 Tafsir。';

  @override
  String get tafsirNoTextForAyah => '沒有該阿耶的塔夫西爾文本。';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return '正在下載 tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return '正在載入 $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir 來源回傳了 HTTP $statusCode 錯誤。';
  }

  @override
  String get tafsirNoEntriesReturned => '所選的 tafsir 來源未傳回任何條目。';

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
  String get duaMeaning1 => '其他人則祈禱：“我們的主，請賜予我們今世和後世的美好，並保護我們免受火焰的折磨。”';

  @override
  String get duaMeaning2 =>
      '上帝不會給任何靈魂帶來超出其承受能力的負擔：每個人都會獲得其所做的一切善行，並承受其惡行——「主啊，如果我們忘記或犯了錯誤，請不要責怪我們。」主啊，不要像你給我們之前的人帶來負擔一樣給我們帶來負擔。主啊，不要讓我們承受超出我們承受能力的負擔。饶恕我们，饶恕我们，怜悯我们。你是我們的保護者，所以請幫助我們對抗異教徒。 」';

  @override
  String get duaMeaning3 => '‘我們的主啊，在祢引導我們之後，不要讓我們的心偏離。請賜給我們您的仁慈：您是永恆的給予者。';

  @override
  String get duaMeaning4 => '主啊，求祢讓我和我的後裔能夠繼續禱告。我們的主啊，請接受我的請求。';

  @override
  String get duaMeaning5 => '並以謙卑和仁慈的態度向他們放下你的翅膀，說：“主啊，憐憫他們，就像我小時候他們照顧我一樣。”';

  @override
  String get duaMeaning6 =>
      '尊崇上帝，真正掌管一切的上帝。 [先知]，在啟示完全完成之前，不要急於背誦，而要說：“主啊，請增加我的知識！”';

  @override
  String get duaMeaning7 => '說[先知]：“主啊，寬恕並憐憫：你是最仁慈的。”';

  @override
  String get duaMeaning8 => '那些祈禱的人：『我們的主，求你使我們的配偶和子孫喜樂。讓我們成為那些認識您的人的好榜樣。 」';

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
  String get ibadahTracker => '伊巴達記錄';

  @override
  String get fasting => '齋戒';

  @override
  String get quranReading => '《古蘭經》閱讀';

  @override
  String get prayers => '禮拜';

  @override
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '$hours小時 $minutes分鐘';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '$minutes分鐘';
  }

  @override
  String get prayerRemainingUnavailable => '--';

  @override
  String get dhikrCount => '迪克爾伯爵';

  @override
  String get weeklyProgress => '每週進度';

  @override
  String get monthlyProgress => '每月進度';

  @override
  String get statistics => '統計數據';

  @override
  String get hijriCalendar => '伊斯蘭曆';

  @override
  String get gregorianCalendar => '公曆';

  @override
  String get today => '今天';

  @override
  String get tomorrow => '明天';

  @override
  String get yesterday => '昨天';

  @override
  String get specialDays => '特別日子';

  @override
  String get ramadan => '齋戒月';

  @override
  String get eidAlFitr => '開齋節';

  @override
  String get eidAlAdha => '古爾邦節';

  @override
  String get islamicNewYear => '伊斯蘭新年';

  @override
  String get mawlidAnNabi => '聖祭安納比';

  @override
  String get specialDayDateRamadanStart => '1 齋月';

  @override
  String get specialDayDateLaylatAlQadr => '27 齋月';

  @override
  String get specialDayDateEidAlFitr => '1 肖瓦爾';

  @override
  String get specialDayDateEidAlAdha => '10 杜爾希賈';

  @override
  String get specialDayDateIslamicNewYear => '穆哈蘭月 1 日';

  @override
  String get specialDayDateMawlidAnNabi => '12 拉比阿瓦瓦爾';

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
  String get qiblaFound => '已找到朝拜方向！';

  @override
  String get turnDevice => '請將裝置朝向朝拜方向';

  @override
  String qiblaCompassErrorDetails(String error) {
    return '指南針錯誤：$error';
  }

  @override
  String get qiblaSensorUnavailable => '指南針感測器在此裝置上不可用。';

  @override
  String get qiblaLocationRequiredTitle => '朝拜所需地點';

  @override
  String get qiblaLocationRequiredBody => '在使用朝拜指南針之前設定您的實際位置，以便可以準確計算方向。';

  @override
  String get adhanNotificationChannelName => '宣禮通知';

  @override
  String get adhanNotificationChannelDescription => '祈禱時間以宣禮聲提醒。';

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
  String get lightMode => '淺色模式';

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
  String get rateApp => '評價應用';

  @override
  String get shareApp => '分享應用';

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
  String get next => '下一步';

  @override
  String get done => '完成';

  @override
  String get onboarding1Title => '歡迎使用 Sirat-ı Nur';

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
  String get tapToCount => '點擊計數';

  @override
  String get zikrCompletedMashAllah => '完全的！瑪什真主';

  @override
  String get zikrMeaningSubhanAllah => '安拉遠高於一切缺陷。';

  @override
  String get zikrMeaningAlhamdulillah => '所有讚美都屬於安拉。';

  @override
  String get zikrMeaningAllahuAkbar => '安拉是最偉大的。';

  @override
  String get zikrMeaningLaIlahaIllallah => '除安拉外，別無上帝。';

  @override
  String get zikrMeaningAstaghfirullah => '我尋求阿拉的寬恕。';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata => '除了安拉之外，沒有任何力量和力量。';

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
  String get offlineDownloadManager => '離線下載管理器';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => '釋放內部設備儲存空間。';

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
  String get audioVoice => '音訊 語音';

  @override
  String get audioVoiceMisharyAlafasy => '男（米沙裡·阿拉法西）';

  @override
  String get audioVoiceAbdulBaset => '男（阿卜杜勒·巴塞特）';

  @override
  String get audioVoiceSudais => '男性（蘇代斯）';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => '朝拜校準';

  @override
  String get compassSmoothing => '羅盤平滑';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => '校準偏移';

  @override
  String currentOffset(Object offset) {
    return '目前：$offset°';
  }

  @override
  String get manualCorrectionDesc => '如果您的指南針需要手動校正，請進行調整。正值順時針旋轉。';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => '診斷';

  @override
  String get diagnosticsNotSet => '未設定';

  @override
  String get diagnosticsPrayerProfile => '禱告簡介';

  @override
  String get diagnosticsPrayerSource => '禱告權柄';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return '自訂/$madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource => '手動自訂角度（無機構來源）';

  @override
  String get diagnosticsCloudDriven => '雲端驅動';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan 音訊資產';

  @override
  String get diagnosticsUiAudioAssets => 'UI 音訊資源';

  @override
  String get diagnosticsQuranAudioAssets => '古蘭經音頻資產';

  @override
  String get diagnosticsAudioAssets => '音訊資源';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count 文件';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return '清單讀取失敗：$error';
  }

  @override
  String get diagnosticsLocalizationLocales => '本地化區域設置';

  @override
  String diagnosticsSupportedCount(String count) {
    return '支援 $count 項';
  }

  @override
  String get diagnosticsQuranDataset => '古蘭經資料集';

  @override
  String get diagnosticsQuranSurahs => '古蘭經各章';

  @override
  String get diagnosticsQuranAyahs => '古蘭經經文';

  @override
  String get diagnosticsQuranJuzMetadata => '古蘭經分卷中繼資料';

  @override
  String get diagnosticsQuranCloudTablesMissing => 'Supabase 中缺少雲端表；捆綁後備活動';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return '雲端檢查失敗：$error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing => 'Cloud juz 元資料遺失；捆綁結構後備活動';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return '雲端結構檢查失敗：$error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 => '需要校準。旋轉圖 8 中的設備。';

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
  String get sukunAudioTitle => '蘇坤音景';

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
  String get paywallUnlockAll => '解鎖你的靈性之旅的所有功能';

  @override
  String get premiumProductUnavailable => '高級產品目前無法使用。請稍後重試。';

  @override
  String get premiumPurchaseFailed => '購買無法完成。請再試一次。';

  @override
  String get paywallFeature1Title => '神經助手增強版';

  @override
  String get paywallFeature1Desc => '無限的人工智慧問答';

  @override
  String get paywallFeature2Title => '無限離線';

  @override
  String get paywallFeature2Desc => '下載所有朗誦';

  @override
  String get paywallFeature3Title => '獨家設計';

  @override
  String get paywallFeature3Desc => '高級主題和字體';

  @override
  String get paywallFeature4Title => '無廣告';

  @override
  String get paywallFeature4Desc => '零廣告';

  @override
  String get paywallGetAccess => '獲得終身存取權 — 1.00 美元';

  @override
  String get restorePurchases => '恢復購買';

  @override
  String get zakatCalculator => '天課計算器';

  @override
  String get zakatGold => '黃金（阿爾廷）';

  @override
  String get zakatSilver => '銀牌 (Gümüş)';

  @override
  String get zakatCashBank => '現金/銀行';

  @override
  String get zakatBusiness => '商業';

  @override
  String get zakatInvestments => '投資';

  @override
  String get zakatWeightGrams => '重量（克）';

  @override
  String get zakatPricePerGram => '價格/克';

  @override
  String get zakatTotalAmount => '總金額';

  @override
  String get zakatInventoryValue => '庫存價值';

  @override
  String get zakatDebts => '債務';

  @override
  String get zakatTotal => '全部的';

  @override
  String get calculateZakat => '計算天課';

  @override
  String get nisabNotReached => '未到達尼薩布。天課不是強制性的。';

  @override
  String get totalZakat => '總天課';

  @override
  String nisabSummary(String nisab, String assets) {
    return '尼薩布：$nisab • 資產：$assets';
  }

  @override
  String get zakatGoldZakat => '黃金天課';

  @override
  String get zakatSilverZakat => '銀天課';

  @override
  String get zakatCashZakat => '現金天課';

  @override
  String get zakatBusinessZakat => '商業天課';

  @override
  String get zakatInvestmentZakat => '投資天課';

  @override
  String get chatbotGreeting =>
      '阿薩拉姆·阿拉庫姆！我是你的伊斯蘭助手。向我詢問有關祈禱、禁食、天課或任何伊斯蘭話題的問題。';

  @override
  String get chatbotLimitReached => '已達到每日查詢限制。升級至高級版無限制。';

  @override
  String get chatbotErrorMsg => '我無法產生響應。請再試一次。';

  @override
  String get chatbotOfflinePrompt =>
      '經過驗證的離線伊斯蘭知識庫仍在整理中。現在您可以啟用離線回退，但在來源資料集準備就緒之前，它只會顯示有限的安全訊息。\n\n您想啟用離線回退嗎？';

  @override
  String get chatbotOfflineSwitched => '啟用離線回退。經過驗證的本地伊斯蘭答案尚未準備好。';

  @override
  String get chatbotOfflineDownloadLabel => '啟用離線備援';

  @override
  String get downloadPreparing => '正在準備下載...';

  @override
  String downloadingSurah(String surah, String total) {
    return '下載古蘭經 $surah / $total';
  }

  @override
  String get downloadCompleted => '已為該背誦者下載所有古蘭經。';

  @override
  String get offlineQuranAudioPacks => '離線古蘭經音頻包';

  @override
  String storedOnDeviceMb(String size) {
    return '儲存在裝置上：$size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '下載 $downloaded / $total 古蘭經';
  }

  @override
  String get redownloadMissingRepair => '修復/下載遺失';

  @override
  String get downloadAction => '下載';

  @override
  String get resumeDownload => '履歷下載';

  @override
  String get deleteDownloadedFiles => '刪除下載的文件';

  @override
  String get downloadCancelling => '正在取消...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return '$reciter 的下載已取消。';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return '$reciter 的下載已完成。';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return '$reciter 的下載已完成，其中 $failed 章節失敗（$downloaded/$total 已下載）。';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return '已刪除 $reciter 的離線檔案。';
  }

  @override
  String get quranAudioSourcesUnavailable => '經過驗證的《古蘭經》音訊來源目前無法使用。';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return '已驗證的《古蘭經》音訊包不完整 ($available/$total)。刷新雲種子並重試。';
  }

  @override
  String get chatbotHint => '問一個問題...';

  @override
  String get chatbotThinking => '想著…';

  @override
  String get sukunMixerSubtitle => '自然與古蘭經混合器';

  @override
  String get audioPlayFailed => '音訊播放失敗';

  @override
  String get sukunNatureLabel => '蘇坤（自然）';

  @override
  String get sukunRainOfMercy => '慈悲之雨';

  @override
  String get sukunGardenOfPeace => '和平花園';

  @override
  String get sukunMidnightCalm => '午夜平靜';

  @override
  String get sukunOceanTawheed => '海洋塔希德';

  @override
  String get sukunUnavailableTitle => '音景不可用';

  @override
  String get sukunUnavailableBody => '此版本尚不包含所需的 Sukun 音景資源。';

  @override
  String get prayerCompletion => '禮拜完成度';

  @override
  String get streaks => '連續紀錄';

  @override
  String get dayStreak => '連續日數';

  @override
  String get bestStreak => '最佳連勝紀錄';

  @override
  String get chatbotCloudAiLabel => '雲端人工智慧';

  @override
  String get chatbotLocalAiLabel => '離線備援';

  @override
  String get chatbotUseCloudAi => '使用 Cloud AI（Gemini）';

  @override
  String get chatbotDownloadLocalAi => '啟用離線備援';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count 左';
  }

  @override
  String get chatbotCloudNotConfigured => '未配置雲API。經驗證的離線伊斯蘭指南尚不可用。';

  @override
  String get chatbotLocalNoInfo => '[離線] 尚未提供經過驗證的當地伊斯蘭指南。切換到 Cloud AI 取得來源答案。';

  @override
  String get mosques => '清真寺';

  @override
  String get halalFood => '清真食品';

  @override
  String get placesSearchArea => '搜尋該區域';

  @override
  String get nearbyMosques => '附近的清真寺';

  @override
  String get islamicSchools => '伊斯蘭學校';

  @override
  String placesFoundCount(String count) {
    return '找到 $count';
  }

  @override
  String distanceAwayKm(String distance) {
    return '距離 $distance 公里';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API 錯誤：$statusCode';
  }

  @override
  String get placesNetworkError => '網路錯誤。請再試一次。';

  @override
  String get placesLocationRequiredTitle => '需要位置';

  @override
  String get placesLocationRequiredBody =>
      '先設定好位置，這樣就可以準確搜尋到附近的清真寺、清真食品、伊斯蘭學校。';

  @override
  String get placesMapTilesUnavailableTitle => '地圖圖塊不可用';

  @override
  String get placesMapTilesUnavailableBody =>
      '尚未為此建構配置經過驗證的地圖圖塊來源。附近的地點仍然可以從您儲存的位置載入。';

  @override
  String get placesDataSourceUnavailableTitle => '地點資料不可用';

  @override
  String get placesDataSourceUnavailableBody =>
      '尚未為此建置配置經過驗證的地點資料端點。在啟用附近搜尋之前，將 PLACES_OVERPASS_API_URL 設定為已核准的代理或提供者。';

  @override
  String get unknownPlaceName => '未知名稱';

  @override
  String get islamicPlaceFallback => '伊斯蘭廣場';

  @override
  String get asmaMeaning1 => '仁慈者';

  @override
  String get asmaMeaning2 => '仁慈者';

  @override
  String get asmaMeaning3 => '國王/永恆之主';

  @override
  String get asmaMeaning4 => '至聖';

  @override
  String get asmaMeaning5 => '和平之源';

  @override
  String get asmaMeaning6 => '安全的給予者';

  @override
  String get asmaMeaning7 => '衛報';

  @override
  String get asmaMeaning8 => '最珍貴/最強大';

  @override
  String get asmaMeaning9 => '強制器';

  @override
  String get asmaMeaning10 => '最棒的';

  @override
  String get asmaMeaning11 => '創造者';

  @override
  String get asmaMeaning12 => '秩序的締造者';

  @override
  String get asmaMeaning13 => '美麗的塑造者';

  @override
  String get asmaMeaning14 => '寬容';

  @override
  String get asmaMeaning15 => '征服者';

  @override
  String get asmaMeaning16 => '一切的給予者';

  @override
  String get asmaMeaning17 => '維持者';

  @override
  String get asmaMeaning18 => '揭幕戰';

  @override
  String get asmaMeaning19 => '萬物之知者';

  @override
  String get asmaMeaning20 => '大蟒蛇';

  @override
  String get asmaMeaning21 => '救援者';

  @override
  String get asmaMeaning22 => '阿巴塞人';

  @override
  String get asmaMeaning23 => '尊崇者';

  @override
  String get asmaMeaning24 => '榮譽的授予者';

  @override
  String get asmaMeaning25 => '羞辱者';

  @override
  String get asmaMeaning26 => '所有人的聆聽者';

  @override
  String get asmaMeaning27 => '萬物之先知';

  @override
  String get asmaMeaning28 => '法官';

  @override
  String get asmaMeaning29 => '公正';

  @override
  String get asmaMeaning30 => '微妙的一個';

  @override
  String get asmaMeaning31 => '所有人都知道';

  @override
  String get asmaMeaning32 => '忍耐';

  @override
  String get asmaMeaning33 => '宏偉';

  @override
  String get asmaMeaning34 => '偉大的寬恕者';

  @override
  String get asmaMeaning35 => '感恩的獎賞者';

  @override
  String get asmaMeaning36 => '最高';

  @override
  String get asmaMeaning37 => '最棒的';

  @override
  String get asmaMeaning38 => '保護者';

  @override
  String get asmaMeaning39 => '滋養者';

  @override
  String get asmaMeaning40 => '清算者';

  @override
  String get asmaMeaning41 => '雄偉號';

  @override
  String get asmaMeaning42 => '慷慨';

  @override
  String get asmaMeaning43 => '警覺的人';

  @override
  String get asmaMeaning44 => '祈禱的回應者';

  @override
  String get asmaMeaning45 => '萬物皆知';

  @override
  String get asmaMeaning46 => '完全智者';

  @override
  String get asmaMeaning47 => '愛人';

  @override
  String get asmaMeaning48 => '最榮耀的一個';

  @override
  String get asmaMeaning49 => '復活者';

  @override
  String get asmaMeaning50 => '見證人';

  @override
  String get asmaMeaning51 => '真相';

  @override
  String get asmaMeaning52 => '充足的受託人';

  @override
  String get asmaMeaning53 => '所有力量的擁有者';

  @override
  String get asmaMeaning54 => '強力';

  @override
  String get asmaMeaning55 => '保護者';

  @override
  String get asmaMeaning56 => '受到讚揚';

  @override
  String get asmaMeaning57 => '評估師';

  @override
  String get asmaMeaning58 => '發起者';

  @override
  String get asmaMeaning59 => '恢復者';

  @override
  String get asmaMeaning60 => '生命的給予者';

  @override
  String get asmaMeaning61 => '生命的奪取者';

  @override
  String get asmaMeaning62 => '永生者';

  @override
  String get asmaMeaning63 => '自給自足的維持者';

  @override
  String get asmaMeaning64 => '查找器';

  @override
  String get asmaMeaning65 => '光榮者';

  @override
  String get asmaMeaning66 => '唯一的一個';

  @override
  String get asmaMeaning67 => '那一個';

  @override
  String get asmaMeaning68 => '所有人都在尋找的人';

  @override
  String get asmaMeaning69 => '強大的';

  @override
  String get asmaMeaning70 => '一切力量的創造者';

  @override
  String get asmaMeaning71 => '加急者';

  @override
  String get asmaMeaning72 => '延遲者';

  @override
  String get asmaMeaning73 => '第一個';

  @override
  String get asmaMeaning74 => '最後一個';

  @override
  String get asmaMeaning75 => '清單';

  @override
  String get asmaMeaning76 => '隱藏的';

  @override
  String get asmaMeaning77 => '總督';

  @override
  String get asmaMeaning78 => '至尊者';

  @override
  String get asmaMeaning79 => '行善者';

  @override
  String get asmaMeaning80 => '悔改指南';

  @override
  String get asmaMeaning81 => '復仇者';

  @override
  String get asmaMeaning82 => '寬恕者';

  @override
  String get asmaMeaning83 => '克萊門特';

  @override
  String get asmaMeaning84 => '所有人的所有者/主權者';

  @override
  String get asmaMeaning85 => '威嚴與賞金的擁有者';

  @override
  String get asmaMeaning86 => '公平的一個';

  @override
  String get asmaMeaning87 => '採集者';

  @override
  String get asmaMeaning88 => '富人';

  @override
  String get asmaMeaning89 => '豐富者';

  @override
  String get asmaMeaning90 => '傷害預防者';

  @override
  String get asmaMeaning91 => '傷害使者';

  @override
  String get asmaMeaning92 => '利益的授予';

  @override
  String get asmaMeaning93 => '光';

  @override
  String get asmaMeaning94 => '引導者';

  @override
  String get asmaMeaning95 => '發起者';

  @override
  String get asmaMeaning96 => '永恆的人';

  @override
  String get asmaMeaning97 => '繼承者';

  @override
  String get asmaMeaning98 => '最正向導';

  @override
  String get asmaMeaning99 => '一號病人';
}
