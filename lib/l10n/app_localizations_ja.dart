// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'イスラムの光の道';

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
  String get fajr => 'ファジル';

  @override
  String get sunrise => '日の出';

  @override
  String get dhuhr => 'ドゥフル';

  @override
  String get asr => 'アスル';

  @override
  String get maghrib => 'マグリブ';

  @override
  String get isha => 'イシャ';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerNameの時間です';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '$prayerName を祈る時間です。';
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
  String get locationServiceDisabled => '位置情報サービスが無効になっています。';

  @override
  String get locationPermissionDenied => '位置情報の許可が拒否されました。';

  @override
  String get locationDetectionFailed =>
      '現在地を検出できませんでした。都市を手動で選択するか、もう一度試してください。';

  @override
  String citiesCount(String count) {
    return '$count 都市';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => '結果が見つかりませんでした';

  @override
  String get loading => '読み込み中...';

  @override
  String get error => 'エラー';

  @override
  String get appErrorOccurred => 'エラーが発生しました';

  @override
  String get appUnknownError => '不明なエラー';

  @override
  String get quranLoadFailed => 'コーランのコンテンツをロードできませんでした。もう一度試してください。';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'リフレッシュ';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => '削除';

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
    return 'アヤ $ayah';
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
  String get tafsirLoading => 'タフシルを読み込んでいます...';

  @override
  String get tafsirSourceLabel => 'タフシルの情報源';

  @override
  String get tafsirNoSurahFound => 'このスーラのタフシルは見つかりませんでした。';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'ayah $ayah のタフシルが見つかりませんでした。';
  }

  @override
  String get tafsirLoadFailed => 'タフシルをロードできませんでした。';

  @override
  String get tafsirNoTextForAyah => 'このアーヤにはタフシールのテキストはありません。';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'タフシル $current/$total をダウンロードしています';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'タフシル $current/$total を読み込み中';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir ソースが HTTP $statusCode エラーを返しました。';
  }

  @override
  String get tafsirNoEntriesReturned => '選択したタフシル ソースはエントリを返しませんでした。';

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
      '「私たちの主よ、この世とあの世で私たちに良いものを与えてください、そして火の苦しみから私たちを守ってください」と祈る人もいます。';

  @override
  String get duaMeaning2 =>
      '神は、どんな魂にも、自分が耐えられる以上の重荷を負わせることはありません。各人は、自分が行った善いことは何でも得ますが、悪いことは苦しみます。「主よ、私たちが忘れたり、間違いを犯したりしても、私たちに責任を負わせないでください。」主よ、あなたが私たちの前の人々に重荷を負わせたように、私たちにも重荷を負わせないでください。主よ、私たちが耐えられる力以上の重荷を私たちに負わせないでください。私たちを赦し、赦し、憐れんでください。あなたは私たちの守護者ですから、不信者たちから私たちを助けてください。』';

  @override
  String get duaMeaning3 =>
      '「私たちの主よ、あなたが私たちを導いてくださった後も、私たちの心を逸らさないでください。私たちにあなたの慈悲を与えてください。あなたは永遠に与えてくださるお方です。';

  @override
  String get duaMeaning4 =>
      '主よ、どうか私と私の子孫が祈りを守り続けることができますように。私たちの主よ、私の願いを受け入れてください。';

  @override
  String get duaMeaning5 =>
      'そして、優しさをもって彼らに向かって謙虚に翼を下げて、こう言いなさい。『主よ、私が幼い頃に彼らが私を気遣ってくれたように、彼らを憐れんでください。』';

  @override
  String get duaMeaning6 =>
      '真に支配しておられる神が讃えられますように。 [預言者]よ、啓示が完全に完了する前に急いで暗唱しないで、「主よ、私の知識を増やしてください！」と言ってください。';

  @override
  String get duaMeaning7 =>
      '[預言者]にこう言ってください、「主よ、赦して憐れんでください。あなたは誰よりも慈悲深いお方です。」';

  @override
  String get duaMeaning8 =>
      '「主よ、私たちの配偶者と子孫に喜びを与えてください。」と祈る人たち。私たちをあなたのことを知っている人たちの良い模範にしてください。』';

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
  String get hadith => 'ハディース';

  @override
  String get hadithCollection => 'ハディース コレクション';

  @override
  String get hadithBooks => 'ハディース本';

  @override
  String get searchHadith => 'ハディースを検索';

  @override
  String get asmaulHusna => 'アスマ・ウル・ハスナ';

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
  String get openInYoutube => 'YouTube で開く';

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
    return '$hours時間 $minutes分';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '$minutes分';
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
  String get islamicNewYear => 'イスラム正月';

  @override
  String get mawlidAnNabi => 'マウリッド・アン・ナビ';

  @override
  String get specialDayDateRamadanStart => '1 ラマダン';

  @override
  String get specialDayDateLaylatAlQadr => 'ラマダン27日';

  @override
  String get specialDayDateEidAlFitr => '1 シャワル';

  @override
  String get specialDayDateEidAlAdha => '10 ドゥルヒッジャ';

  @override
  String get specialDayDateIslamicNewYear => '1 ムハッラム語';

  @override
  String get specialDayDateMawlidAnNabi => '12 ラビ・アル・アワル';

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
    return 'コンパス エラー: $error';
  }

  @override
  String get qiblaSensorUnavailable => 'このデバイスではコンパス センサーを利用できません。';

  @override
  String get qiblaLocationRequiredTitle => 'キブラに必要な場所';

  @override
  String get qiblaLocationRequiredBody =>
      '方向を正確に計算できるように、キブラ コンパスを使用する前に実際の位置を設定してください。';

  @override
  String get adhanNotificationChannelName => 'アザーン通知';

  @override
  String get adhanNotificationChannelDescription => '礼拝時間はアザーン音でお知らせします。';

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
    return '$appName をチェックしてください: 究極のイスラム ライフスタイル アプリ! $url';
  }

  @override
  String get downloadManager => 'ダウンロードマネージャー';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'ダウンロード完了';

  @override
  String get downloadFailed => 'ダウンロードに失敗しました';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'インターネット接続なし';

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
  String get tapToCount => 'タップして数えます';

  @override
  String get zikrCompletedMashAllah => '完成しました！マシュアッラー';

  @override
  String get zikrMeaningSubhanAllah => 'アッラーはあらゆる不完全さをはるかに超えておられます。';

  @override
  String get zikrMeaningAlhamdulillah => 'すべての賛美はアッラーに属します。';

  @override
  String get zikrMeaningAllahuAkbar => 'アッラーは最も偉大な方です。';

  @override
  String get zikrMeaningLaIlahaIllallah => 'アッラー以外に神はありません。';

  @override
  String get zikrMeaningAstaghfirullah => '私はアッラーの許しを求めます。';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata => 'アッラーを通してでなければ力も強さもありません。';

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
  String get offlineDownloadManager => 'オフライン ダウンロード マネージャー';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => '内部デバイスのストレージを解放します。';

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
  String get audioVoice => 'オーディオ音声';

  @override
  String get audioVoiceMisharyAlafasy => '男性（ミシャリー・アラファシー）';

  @override
  String get audioVoiceAbdulBaset => '男性 (アブドゥルバセット)';

  @override
  String get audioVoiceSudais => '男性（スーダイス）';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'キブラのキャリブレーション';

  @override
  String get compassSmoothing => 'コンパスのスムージング';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'キャリブレーションオフセット';

  @override
  String currentOffset(Object offset) {
    return '現在: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'コンパスを手動で修正する必要がある場合は調整します。正の値は時計回りに回転します。';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => '診断';

  @override
  String get diagnosticsNotSet => '未設定';

  @override
  String get diagnosticsPrayerProfile => '祈りのプロフィール';

  @override
  String get diagnosticsPrayerSource => '祈りの権威';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'カスタム / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource => '手動カスタム角度 (機関的な情報源なし)';

  @override
  String get diagnosticsCloudDriven => 'クラウドドリブン';

  @override
  String get diagnosticsAdhanAudioAssets => 'アザーンオーディオアセット';

  @override
  String get diagnosticsUiAudioAssets => 'UIオーディオアセット';

  @override
  String get diagnosticsQuranAudioAssets => 'コーランオーディオアセット';

  @override
  String get diagnosticsAudioAssets => 'オーディオアセット';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count ファイル';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'マニフェストの読み取りに失敗しました: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'ローカリゼーションロケール';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count がサポートされています';
  }

  @override
  String get diagnosticsQuranDataset => 'コーラン データセット';

  @override
  String get diagnosticsQuranSurahs => 'コーラン スーラ';

  @override
  String get diagnosticsQuranAyahs => 'コーラン アヤ';

  @override
  String get diagnosticsQuranJuzMetadata => 'コーラン ジュズのメタデータ';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Supabase にクラウド テーブルがありません。バンドルされたフォールバックがアクティブです';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'クラウドチェックが失敗しました: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz メタデータがありません。バンドルされた構造フォールバックがアクティブです';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'クラウドの構造チェックに失敗しました: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 => '校正が必要です。デバイスを図-8のように回転させます。';

  @override
  String get dailyVerse => '日々の詩';

  @override
  String get todaysIbadah => '今日のイバダ';

  @override
  String get quickAccess => 'クイックアクセス';

  @override
  String get assistant => 'アシスタント';

  @override
  String get places => '場所';

  @override
  String get library => '図書館';

  @override
  String get analytics => '分析';

  @override
  String get dailyDuas => 'デイリーデュアス';

  @override
  String essentialDuas(String count) {
    return '$count 必須デュアス';
  }

  @override
  String get duaUnavailableTitle => '検証済みのデュアはまだ利用できません';

  @override
  String get duaUnavailableBody =>
      '毎日のデュアがまだこのデバイスに同期されていないことを確認しました。クラウド ソースに接続して、未検証のフォールバックではなく、ソースされたデュアをロードします。';

  @override
  String get duaCategoryQuranic => 'コーランのドゥア';

  @override
  String get duaCategoryMorningEvening => '朝と夕方';

  @override
  String get duaCategoryTasbih => 'タスビ';

  @override
  String get duaCategoryProtection => '保護';

  @override
  String get duaCategoryBeginning => '始まり';

  @override
  String get duaCategorySleep => '寝る';

  @override
  String get duaCategoryFoodDrink => '食べ物と飲み物';

  @override
  String get duaCategoryForgiveness => '許し';

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
  String get islamicEducation => 'イスラム教育';

  @override
  String get sukunAudioTitle => 'Sukun サウンドスケープ';

  @override
  String get hadithCollections => 'ハディース コレクション';

  @override
  String get hadithSourcePending => '検証済みのソースは保留中です';

  @override
  String get hadithUnavailableTitle => '検証済みのハディース コレクションはまだ利用できません';

  @override
  String get hadithUnavailableBody =>
      'このビルドはまだ未検証の外部ハディース フィードに依存しています。ハディース ブラウジングは、ソース データセットが同期されるまで無効のままです。';

  @override
  String get paywallUnlockAll => 'スピリチュアルな旅のためにすべての機能をロック解除しましょう';

  @override
  String get premiumProductUnavailable => 'プレミアム製品は現在ご利用いただけません。後でもう一度試してください。';

  @override
  String get premiumPurchaseFailed => '購入を完了できませんでした。もう一度試してください。';

  @override
  String get paywallFeature1Title => 'ニューラルアシスタントプラス';

  @override
  String get paywallFeature1Desc => 'AI を活用した無制限の Q&A';

  @override
  String get paywallFeature2Title => '無制限のオフライン';

  @override
  String get paywallFeature2Desc => 'すべての朗読をダウンロードする';

  @override
  String get paywallFeature3Title => '独自のデザイン';

  @override
  String get paywallFeature3Desc => 'プレミアムテーマとフォント';

  @override
  String get paywallFeature4Title => '広告なし';

  @override
  String get paywallFeature4Desc => '広告ゼロ';

  @override
  String get paywallGetAccess => '永久アクセスを取得 — \$1.00';

  @override
  String get restorePurchases => '購入を復元する';

  @override
  String get zakatCalculator => 'ザカート計算機';

  @override
  String get zakatGold => 'ゴールド (アルトゥン)';

  @override
  String get zakatSilver => 'シルバー (ギュムシュ)';

  @override
  String get zakatCashBank => '現金・銀行';

  @override
  String get zakatBusiness => '仕事';

  @override
  String get zakatInvestments => '投資';

  @override
  String get zakatWeightGrams => '重量(g)';

  @override
  String get zakatPricePerGram => '価格/g';

  @override
  String get zakatTotalAmount => '合計金額';

  @override
  String get zakatInventoryValue => '在庫価値';

  @override
  String get zakatDebts => '借金';

  @override
  String get zakatTotal => '合計';

  @override
  String get calculateZakat => 'ザカートを計算する';

  @override
  String get nisabNotReached => 'ニサブには到達していない。ザカートは義務ではありません。';

  @override
  String get totalZakat => 'トータル・ザカート';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • アセット: $assets';
  }

  @override
  String get zakatGoldZakat => 'ゴールドザカート';

  @override
  String get zakatSilverZakat => 'シルバー・ザカート';

  @override
  String get zakatCashZakat => 'キャッシュザカート';

  @override
  String get zakatBusinessZakat => 'ビジネス ザカート';

  @override
  String get zakatInvestmentZakat => '投資ザカート';

  @override
  String get chatbotGreeting =>
      'アッサラーム・アライクム！私はあなたのイスラム教のアシスタントです。祈り、断食、ザカート、その他イスラム教の話題について質問してください。';

  @override
  String get chatbotLimitReached => '1 日のクエリ制限に達しました。プレミアムにアップグレードすると無制限になります。';

  @override
  String get chatbotErrorMsg => '応答を生成できませんでした。もう一度試してください。';

  @override
  String get chatbotOfflinePrompt =>
      '検証済みのオフラインのイスラム知識ベースはまだキュレーション中です。ここでオフライン フォールバックを有効にできますが、ソース データセットの準備ができるまでは、限られた安全なメッセージのみが表示されます。\n\nオフライン フォールバックを有効にしますか?';

  @override
  String get chatbotOfflineSwitched =>
      'オフライン フォールバックが有効になっています。検証済みの地元のイスラム教の回答はまだ準備ができていません。';

  @override
  String get chatbotOfflineDownloadLabel => 'オフラインフォールバックを有効にする';

  @override
  String get downloadPreparing => 'ダウンロードを準備しています...';

  @override
  String downloadingSurah(String surah, String total) {
    return '$surah / $total をダウンロード中';
  }

  @override
  String get downloadCompleted => 'この朗読のためにすべてのスーラがすでにダウンロードされています。';

  @override
  String get offlineQuranAudioPacks => 'オフライン コーラン オーディオ パック';

  @override
  String storedOnDeviceMb(String size) {
    return 'デバイスに保存: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total 件がダウンロードされました';
  }

  @override
  String get redownloadMissingRepair => '修復/ダウンロードがありません';

  @override
  String get downloadAction => 'ダウンロード';

  @override
  String get resumeDownload => 'ダウンロードを再開する';

  @override
  String get deleteDownloadedFiles => 'ダウンロードしたファイルを削除する';

  @override
  String get downloadCancelling => 'キャンセル中...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return '$reciter のダウンロードがキャンセルされました。';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return '$reciter のダウンロードが完了しました。';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return '$reciter のダウンロードは完了しましたが、$failed は失敗しました ($downloaded/$total はダウンロードされました)。';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return '$reciter のオフライン ファイルが削除されました。';
  }

  @override
  String get quranAudioSourcesUnavailable => '現在、検証済みのコーラン音源は利用できません。';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Quran オーディオ パックが不完全であることを確認しました ($available/$total)。クラウド シードを更新して再試行してください。';
  }

  @override
  String get chatbotHint => '質問してください...';

  @override
  String get chatbotThinking => '考え中...';

  @override
  String get sukunMixerSubtitle => '自然とコーランミキサー';

  @override
  String get audioPlayFailed => 'オーディオの再生に失敗しました';

  @override
  String get sukunNatureLabel => 'スクン（自然）';

  @override
  String get sukunRainOfMercy => '慈悲の雨';

  @override
  String get sukunGardenOfPeace => '平和の庭園';

  @override
  String get sukunMidnightCalm => '真夜中の静けさ';

  @override
  String get sukunOceanTawheed => 'オーシャンタウヒード';

  @override
  String get sukunUnavailableTitle => 'サウンドスケープが利用できません';

  @override
  String get sukunUnavailableBody =>
      'このビルドには、必要な Sukun サウンドスケープ アセットがまだ含まれていません。';

  @override
  String get prayerCompletion => '礼拝の完了度';

  @override
  String get streaks => '縞模様';

  @override
  String get dayStreak => '日連続';

  @override
  String get bestStreak => 'ベストストリーク';

  @override
  String get chatbotCloudAiLabel => 'クラウドAI';

  @override
  String get chatbotLocalAiLabel => 'オフラインフォールバック';

  @override
  String get chatbotUseCloudAi => 'クラウド AI (Gemini) を使用する';

  @override
  String get chatbotDownloadLocalAi => 'オフラインフォールバックを有効にする';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count 残り';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'クラウド API が設定されていません。検証済みのオフライン イスラム教ガイダンスはまだ利用できません。';

  @override
  String get chatbotLocalNoInfo =>
      '[オフライン] 検証済みの現地のイスラム教ガイダンスはまだ利用できません。クラウド AI に切り替えて、情報源に基づいた回答を得ることができます。';

  @override
  String get mosques => 'モスク';

  @override
  String get halalFood => 'ハラールフード';

  @override
  String get placesSearchArea => 'このエリアを検索';

  @override
  String get nearbyMosques => '近くのモスク';

  @override
  String get islamicSchools => 'イスラム学校';

  @override
  String placesFoundCount(String count) {
    return '$count が見つかりました';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km離れたところ';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API エラー: $statusCode';
  }

  @override
  String get placesNetworkError => 'ネットワークエラー。もう一度試してください。';

  @override
  String get placesLocationRequiredTitle => '場所が必要です';

  @override
  String get placesLocationRequiredBody =>
      '近くのモスク、ハラール食品、イスラム学校を正確に検索できるように、最初に場所を設定します。';

  @override
  String get placesMapTilesUnavailableTitle => 'マップタイルは使用できません';

  @override
  String get placesMapTilesUnavailableBody =>
      '検証済みのマップ タイル ソースは、このビルドに対してまだ構成されていません。近くの場所は、保存した場所から読み込むことができます。';

  @override
  String get placesDataSourceUnavailableTitle => '場所のデータが利用できない';

  @override
  String get placesDataSourceUnavailableBody =>
      '検証済みの場所データ エンドポイントは、このビルドに対してまだ構成されていません。近くの検索を有効にする前に、PLACES_OVERPASS_API_URL を承認されたプロキシまたはプロバイダーに設定します。';

  @override
  String get unknownPlaceName => '不明な名前';

  @override
  String get islamicPlaceFallback => 'イスラムの場所';

  @override
  String get asmaMeaning1 => '慈善者';

  @override
  String get asmaMeaning2 => '慈悲深い者';

  @override
  String get asmaMeaning3 => '王 / 永遠の主';

  @override
  String get asmaMeaning4 => '最も神聖なもの';

  @override
  String get asmaMeaning5 => '平和の源';

  @override
  String get asmaMeaning6 => 'セキュリティの提供者';

  @override
  String get asmaMeaning7 => 'ガーディアン';

  @override
  String get asmaMeaning8 => '貴重なもの / 最も強力なもの';

  @override
  String get asmaMeaning9 => 'コンペラー';

  @override
  String get asmaMeaning10 => '最高のもの';

  @override
  String get asmaMeaning11 => 'クリエイター';

  @override
  String get asmaMeaning12 => '注文のメーカー';

  @override
  String get asmaMeaning13 => '美を形作る者';

  @override
  String get asmaMeaning14 => '寛容';

  @override
  String get asmaMeaning15 => '征服者';

  @override
  String get asmaMeaning16 => 'すべてを与える者';

  @override
  String get asmaMeaning17 => 'サステナー';

  @override
  String get asmaMeaning18 => 'オープナー';

  @override
  String get asmaMeaning19 => 'すべてを知る者';

  @override
  String get asmaMeaning20 => 'コンストリクター';

  @override
  String get asmaMeaning21 => '救済者';

  @override
  String get asmaMeaning22 => 'アバサー';

  @override
  String get asmaMeaning23 => 'エグザルター';

  @override
  String get asmaMeaning24 => '名誉の授与者';

  @override
  String get asmaMeaning25 => '屈辱者';

  @override
  String get asmaMeaning26 => 'すべての声を聞く者';

  @override
  String get asmaMeaning27 => 'すべてを予見する者';

  @override
  String get asmaMeaning28 => '裁判官';

  @override
  String get asmaMeaning29 => '正義';

  @override
  String get asmaMeaning30 => '微妙なもの';

  @override
  String get asmaMeaning31 => 'すべてを認識している';

  @override
  String get asmaMeaning32 => '先駆者';

  @override
  String get asmaMeaning33 => '壮大な';

  @override
  String get asmaMeaning34 => '偉大な許し者';

  @override
  String get asmaMeaning35 => '感謝の報酬';

  @override
  String get asmaMeaning36 => '最高';

  @override
  String get asmaMeaning37 => '最高のもの';

  @override
  String get asmaMeaning38 => 'プリザーバー';

  @override
  String get asmaMeaning39 => '栄養者';

  @override
  String get asmaMeaning40 => '清算者';

  @override
  String get asmaMeaning41 => 'マジェスティック';

  @override
  String get asmaMeaning42 => '寛大な';

  @override
  String get asmaMeaning43 => '用心深い人';

  @override
  String get asmaMeaning44 => '祈りに応える者';

  @override
  String get asmaMeaning45 => 'すべてを理解する';

  @override
  String get asmaMeaning46 => '完璧な賢者';

  @override
  String get asmaMeaning47 => '愛する人';

  @override
  String get asmaMeaning48 => '最も輝かしいもの';

  @override
  String get asmaMeaning49 => 'リザレクター';

  @override
  String get asmaMeaning50 => '証人';

  @override
  String get asmaMeaning51 => '真実';

  @override
  String get asmaMeaning52 => '完全な受託者';

  @override
  String get asmaMeaning53 => 'あらゆる力の持ち主';

  @override
  String get asmaMeaning54 => '力強い';

  @override
  String get asmaMeaning55 => 'プロテクター';

  @override
  String get asmaMeaning56 => '賞賛されるもの';

  @override
  String get asmaMeaning57 => '鑑定士';

  @override
  String get asmaMeaning58 => '創始者';

  @override
  String get asmaMeaning59 => '修復者';

  @override
  String get asmaMeaning60 => '命の贈り主';

  @override
  String get asmaMeaning61 => '命を奪う者';

  @override
  String get asmaMeaning62 => '永遠に生きる';

  @override
  String get asmaMeaning63 => '自立した持続者';

  @override
  String get asmaMeaning64 => 'ファインダー';

  @override
  String get asmaMeaning65 => '輝かしい';

  @override
  String get asmaMeaning66 => '唯一のもの';

  @override
  String get asmaMeaning67 => 'ザ・ワン';

  @override
  String get asmaMeaning68 => 'すべての人が求めているもの';

  @override
  String get asmaMeaning69 => 'パワフル';

  @override
  String get asmaMeaning70 => 'あらゆる力の創造者';

  @override
  String get asmaMeaning71 => 'エクスペディター';

  @override
  String get asmaMeaning72 => '遅延者';

  @override
  String get asmaMeaning73 => '最初の';

  @override
  String get asmaMeaning74 => '最後';

  @override
  String get asmaMeaning75 => 'マニフェスト';

  @override
  String get asmaMeaning76 => '隠されたもの';

  @override
  String get asmaMeaning77 => '知事';

  @override
  String get asmaMeaning78 => '至高のもの';

  @override
  String get asmaMeaning79 => '善を行う者';

  @override
  String get asmaMeaning80 => '悔い改めへのガイド';

  @override
  String get asmaMeaning81 => '復讐者';

  @override
  String get asmaMeaning82 => '許す者';

  @override
  String get asmaMeaning83 => 'クレメント';

  @override
  String get asmaMeaning84 => 'すべての所有者/主権者';

  @override
  String get asmaMeaning85 => '威厳と恩恵の持ち主';

  @override
  String get asmaMeaning86 => '公平なもの';

  @override
  String get asmaMeaning87 => 'ギャザラー';

  @override
  String get asmaMeaning88 => '金持ち';

  @override
  String get asmaMeaning89 => 'エンリッチャー';

  @override
  String get asmaMeaning90 => '危害の防止者';

  @override
  String get asmaMeaning91 => '害をもたらす者';

  @override
  String get asmaMeaning92 => '恩恵の授与者';

  @override
  String get asmaMeaning93 => '光';

  @override
  String get asmaMeaning94 => 'ザ・ガイダー';

  @override
  String get asmaMeaning95 => '創始者';

  @override
  String get asmaMeaning96 => '永遠のもの';

  @override
  String get asmaMeaning97 => '継承者';

  @override
  String get asmaMeaning98 => '最も正義のガイド';

  @override
  String get asmaMeaning99 => '患者 1';
}
