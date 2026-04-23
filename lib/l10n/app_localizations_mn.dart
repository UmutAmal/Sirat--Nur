// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Mongolian (`mn`).
class AppLocalizationsMn extends AppLocalizations {
  AppLocalizationsMn([String locale = 'mn']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Исламын гэрлийн зам';

  @override
  String get home => 'Гэр';

  @override
  String get quran => 'Коран';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Зикр';

  @override
  String get calendar => 'Хуанли';

  @override
  String get settings => 'Тохиргоо';

  @override
  String get nextPrayer => 'Дараагийн залбирал';

  @override
  String get prayerTimes => 'Залбирлын цаг';

  @override
  String get continueReading => 'Continue Reading';

  @override
  String get getLifetimePro => 'Get Lifetime Pro';

  @override
  String get unlockTajweed => 'Unlock Tajweed & Advanced Features';

  @override
  String get prayerCalculation => 'Залбирлын тооцоо';

  @override
  String get method => 'Тооцооллын арга';

  @override
  String get madhab => 'Аср хууль зүйн арга';

  @override
  String get surahs => 'Сураг';

  @override
  String get ayahs => 'Аяа';

  @override
  String get fajr => 'Фажр';

  @override
  String get sunrise => 'Нар мандах';

  @override
  String get dhuhr => 'Үд';

  @override
  String get asr => 'Аср';

  @override
  String get maghrib => 'Магриб';

  @override
  String get isha => 'Иша';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName цаг';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '$prayerName залбирах цаг боллоо.';
  }

  @override
  String get dataStorage => 'Өгөгдөл ба Хадгалалт';

  @override
  String get clearCache => 'Кэшийг цэвэрлэх';

  @override
  String get cacheClearedSuccess => 'Кэшийг амжилттай арилгалаа';

  @override
  String get location => 'Байршил';

  @override
  String get language => 'Хэл';

  @override
  String get selectLanguage => 'Хэл сонгоно уу';

  @override
  String get searchLanguage => 'Search 180+ languages...';

  @override
  String get systemDefault => 'Системийн өгөгдмөл';

  @override
  String get currentLocation => 'Одоогийн байршил (GPS)';

  @override
  String get locationServiceDisabled => 'Байршлын үйлчилгээ идэвхгүй байна.';

  @override
  String get locationPermissionDenied => 'Байршлын зөвшөөрлийг үгүйсгэв.';

  @override
  String get locationDetectionFailed =>
      'Таны байршлыг илрүүлж чадсангүй. Гараар хот сонгох эсвэл дахин оролдоно уу.';

  @override
  String citiesCount(String count) {
    return '$count хотууд';
  }

  @override
  String get search => 'Хайх';

  @override
  String get searchHint => 'Хайх...';

  @override
  String get noResults => 'Үр дүн олдсонгүй';

  @override
  String get loading => 'Ачааж байна...';

  @override
  String get error => 'Алдаа';

  @override
  String get appErrorOccurred => 'Алдаа гарлаа';

  @override
  String get appUnknownError => 'Үл мэдэгдэх алдаа';

  @override
  String get quranLoadFailed =>
      'Коран судрын агуулгыг ачаалж чадсангүй. Дахин оролдоно уу.';

  @override
  String get retry => 'Дахин оролдоно уу';

  @override
  String get refreshAction => 'Сэргээх';

  @override
  String get cancel => 'Цуцлах';

  @override
  String get save => 'Хадгалах';

  @override
  String get delete => 'Устгах';

  @override
  String get edit => 'Edit';

  @override
  String get close => 'Close';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'Үгүй';

  @override
  String get surah => 'Сура';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Жуз';

  @override
  String get page => 'Хуудас';

  @override
  String get reading => 'Reading';

  @override
  String get recitation => 'Recitation';

  @override
  String get translation => 'Орчуулга';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Тафсирыг ачаалж байна...';

  @override
  String get tafsirSourceLabel => 'Тафсир эх сурвалж';

  @override
  String get tafsirNoSurahFound => 'Энэ судрын тафсир олдсонгүй.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'No tafsir found for ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Тафсирыг ачаалж чадсангүй.';

  @override
  String get tafsirNoTextForAyah => 'Энэ шүлэгт тафсир текст байхгүй.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Тафсир татаж байна $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Тафсирыг ачаалж байна $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Тафсир эх сурвалж HTTP $statusCode алдаа буцаасан.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Сонгогдсон тафсир эх сурвалж ямар ч оруулга ирүүлээгүй.';

  @override
  String get tafsirCacheUnavailable =>
      'Баталгаажсан тафсир хараахан офлайнаар байхгүй байна. Хайлтын өмнө эх сурвалжийн тафсир датасетийг синк хийнэ үү.';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get addBookmark => 'Хавчуурга нэмэх';

  @override
  String get removeBookmark => 'Хавчуурга устгах';

  @override
  String get lastRead => 'Last Read';

  @override
  String get dailyZikr => 'Daily Zikr';

  @override
  String get duaMeaning1 =>
      'бусад нь: \"Эзэн минь, бидэнд энэ ертөнц болон хойд ертөнцөд сайн сайхныг өгч, биднийг галын зовлонгоос хамгаалаач\" гэж залбирдаг.';

  @override
  String get duaMeaning2 =>
      'Бурхан ямар ч сүнсэнд дааж чадахаас илүүг даатгадаггүй: хүн бүр хийсэн сайн зүйлээ хүртэж, муугаар нь зовдог- \"Эзэн минь, хэрэв бид мартсан эсвэл алдаа гаргавал биднийг хариуцлага хүлээхгүй. Эзэн минь, та бидний өмнөх хүмүүст дарамт учруулсан шигээ биднийг бүү ачаал. Эзэн минь, бидний тэсвэрлэх хүчнээс илүүг бидэнд бүү үүрүүлээрэй. Биднийг өршөөж, өршөөж, өршөөгөөч. Та бол бидний хамгаалагч, тиймээс үл итгэгчдийн эсрэг бидэнд туслаач.\"';

  @override
  String get duaMeaning3 =>
      '\"Эзэн минь, биднийг удирдсаны дараа бидний зүрх сэтгэлийг бүү хазайлгаг. Өршөөл нигүүлслээ бидэнд өгөөч: Та бол үргэлж Өгөгч мөн.';

  @override
  String get duaMeaning4 =>
      'Эзэн минь, намайг болон миний үр удамд залбирлыг үргэлжлүүлэхийг зөвшөөрөөч. Эзэн минь ээ, миний хүсэлтийг хүлээн ав.';

  @override
  String get duaMeaning5 =>
      'Тэдэнд эелдэг зөөлөн байдлаар далавчаа доошлуулж, \"Эзэн, намайг бага байхад тэд намайг халамжилж байсан шиг тэднийг өршөөгөөч\" гэж хэл.';

  @override
  String get duaMeaning6 =>
      'үнэхээр захирдаг Бурхан өргөмжлөгдсөн. [Бошиглогч], илчлэлт бүрэн дуусаагүй байхад унших гэж бүү яар, харин \"Эзэн, миний мэдлэгийг нэмэгдүүл!\" гэж хэл.';

  @override
  String get duaMeaning7 =>
      '“Эзэн, өршөөгөөч, өршөөгөөч: Та бол хамгийн нигүүлсэнгүй нь” гэж хэл.';

  @override
  String get duaMeaning8 =>
      '\"Эзэн минь, бидний хань ижил, үр удамд баяр баясгаланг өгөөч\" гэж залбирдаг хүмүүс. Таныг мэддэг хүмүүст бидэнд сайн үлгэр жишээ болгоорой”.';

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
  String get hadith => 'Хадис';

  @override
  String get hadithCollection => 'Хадисын цуглуулга';

  @override
  String get hadithBooks => 'Хадисын номууд';

  @override
  String get searchHadith => 'Хадис хайх';

  @override
  String get asmaulHusna => 'Асма-ул-Хусна';

  @override
  String get namesOfAllah => 'Аллахын нэрс';

  @override
  String get liveTv => 'Шууд ТВ';

  @override
  String get watchLive => 'Шууд үзэх';

  @override
  String get streamError => 'Дамжуулалтын алдаа';

  @override
  String get reload => 'Дахин ачаалах';

  @override
  String get openInYoutube => 'YouTube дээр нээх';

  @override
  String get ibadahTracker => 'Ibada Tracker';

  @override
  String get fasting => 'Мацаг барих';

  @override
  String get quranReading => 'Коран уншлага';

  @override
  String get prayers => 'Залбирал';

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
  String get weeklyProgress => 'Долоо хоног тутмын ахиц дэвшил';

  @override
  String get monthlyProgress => 'Monthly Progress';

  @override
  String get statistics => 'Statistics';

  @override
  String get hijriCalendar => 'Хижри хуанли';

  @override
  String get gregorianCalendar => 'Gregorian Calendar';

  @override
  String get today => 'Өнөөдөр';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get specialDays => 'Онцгой өдрүүд';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Исламын шинэ жил';

  @override
  String get mawlidAnNabi => 'Мавлид ан-Наби';

  @override
  String get specialDayDateRamadanStart => '1 Рамадан';

  @override
  String get specialDayDateLaylatAlQadr => '27 Рамадан';

  @override
  String get specialDayDateEidAlFitr => '1 Шаввал';

  @override
  String get specialDayDateEidAlAdha => '10 Зул Хижжа';

  @override
  String get specialDayDateIslamicNewYear => '1 Мухаррам';

  @override
  String get specialDayDateMawlidAnNabi => '12 Раби аль-Аввал';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'Кибла чиглэл';

  @override
  String get compass => 'Луужин';

  @override
  String get degrees => 'degrees';

  @override
  String get north => 'North';

  @override
  String get qiblaFound => 'Кибла олдсон!';

  @override
  String get turnDevice => 'Төхөөрөмжөө Кибла руу эргүүлээрэй';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Луужингийн алдаа: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Энэ төхөөрөмж дээр луужин мэдрэгч боломжгүй байна.';

  @override
  String get qiblaLocationRequiredTitle =>
      'Киблагийн хувьд байршил шаардлагатай';

  @override
  String get qiblaLocationRequiredBody =>
      'Чиблагийн луужин ашиглахын өмнө өөрийн бодит байршлыг тохируулснаар чиглэлийг үнэн зөв тооцоолох боломжтой болно.';

  @override
  String get adhanNotificationChannelName => 'Азаны мэдэгдлүүд';

  @override
  String get adhanNotificationChannelDescription =>
      'Залбирлын цагийг азаны дуугаар дохио өгдөг.';

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
  String get theme => 'Сэдэв';

  @override
  String get lightMode => 'Гэрэл горим';

  @override
  String get darkMode => 'Харанхуй горим';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'тухай';

  @override
  String get version => 'Хувилбар';

  @override
  String get privacyPolicy => 'Нууцлалын бодлого';

  @override
  String get termsOfService => 'Үйлчилгээний нөхцөл';

  @override
  String get contactUs => 'Бидэнтэй холбоо барина уу';

  @override
  String get rateApp => 'Аппликейшнийг үнэлэх';

  @override
  String get shareApp => 'Аппликешн хуваалцах';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Татаж авах менежер';

  @override
  String get downloads => 'Татаж авсан зүйлс';

  @override
  String get downloading => 'Татаж авч байна...';

  @override
  String get downloadComplete => 'Татаж дууссан';

  @override
  String get downloadFailed => 'Татаж чадсангүй';

  @override
  String get offlineMode => 'Офлайн горим';

  @override
  String get noInternet => 'Интернет холболт байхгүй';

  @override
  String get checkConnection => 'Холболтоо шалгана уу';

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
  String get getStarted => 'Эхлэх';

  @override
  String get skip => 'Skip';

  @override
  String get next => 'Дараа нь';

  @override
  String get done => 'Дууслаа';

  @override
  String get onboarding1Title => 'Сират-ы Нурд тавтай морил';

  @override
  String get onboarding1Desc =>
      'Залбирлын цаг, Коран болон бусад зүйлсэд зориулсан Исламын бүрэн хамтрагч програм';

  @override
  String get onboarding2Title => 'Залбирлын цаг';

  @override
  String get onboarding2Desc => 'Таны байршилд тулгуурлан зөв залбирлын цаг';

  @override
  String get onboarding3Title => 'Коран ба бусад';

  @override
  String get onboarding3Desc =>
      'Коран судар уншиж, уншсанаа хянаж, Исламын контентыг судлаарай';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'Тоолуурыг дахин тохируулах';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'Зорилтот тоо: $target';
  }

  @override
  String get tapToCount => 'Тоолохын тулд товшино уу';

  @override
  String get zikrCompletedMashAllah => 'Дууслаа! МашАллах';

  @override
  String get zikrMeaningSubhanAllah =>
      'Аллах бүх төгс бус байдлаас хол байдаг.';

  @override
  String get zikrMeaningAlhamdulillah => 'Бүх магтаал Аллахад хамаатай.';

  @override
  String get zikrMeaningAllahuAkbar => 'Аллах бол хамгийн агуу.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Аллахаас өөр бурхан байхгүй.';

  @override
  String get zikrMeaningAstaghfirullah => 'Би Аллахаас өршөөл гуйж байна.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Аллахаас өөр хүч чадал, хүч чадал байхгүй.';

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
  String get dailyProgress => 'Өдөр тутмын ахиц дэвшил';

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
  String get recheckPremium =>
      'Дээд зэрэглэлийн захиалгын статусыг дахин шалгана уу';

  @override
  String get syncStore =>
      'Дээд зэрэглэлийн захиалгаа баталгаажуулахын тулд програмын дэлгүүртэй синк хийнэ үү.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'Дээд зэрэглэлийн захиалгыг баталгаажуулсан.';

  @override
  String get premiumNotFound => 'Дээд зэрэглэлийн захиалга олдсонгүй.';

  @override
  String premiumRefreshError(Object error) {
    return 'Дээд зэрэглэлийн захиалгын статусыг сэргээж чадсангүй: $error';
  }

  @override
  String get offlineDownloadManager => 'Офлайн татаж авах менежер';

  @override
  String get manageDatasets =>
      'Офлайн аудио болон өгөгдлийн багц багцуудыг удирдах.';

  @override
  String get freeStorage => 'Төхөөрөмжийн дотоод санах ойг суллах.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'Коран судар мэдээллийн санг шалгаж байна...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'Коран сангийн мэдээллийн сангийн статус';

  @override
  String statusLabel(Object status) {
    return 'Статус: $status';
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
    return 'Коран судрыг шалгаж чадсангүй: $error';
  }

  @override
  String get audioVoice => 'Аудио дуу хоолой';

  @override
  String get audioVoiceMisharyAlafasy => 'Эрэгтэй (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Эрэгтэй (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Эрэгтэй (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Кибла тохируулга';

  @override
  String get compassSmoothing => 'Луужин гөлгөр болгох';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Шалгалт тохируулгын офсет';

  @override
  String currentOffset(Object offset) {
    return 'Одоогийн: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Таны луужинд гараар засвар хийх шаардлагатай бол тохируулна уу. Эерэг утгууд нь цагийн зүүний дагуу эргэлддэг.';

  @override
  String get apply => 'Өөрчлөлтийг хэрэгжүүлэх';

  @override
  String get resetOnboarding => 'Танилцуулгын тохиргоог дахин тохируулна уу';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Оношлогоо';

  @override
  String get diagnosticsNotSet => 'Тохируулаагүй';

  @override
  String get diagnosticsPrayerProfile => 'Залбирлын профайл';

  @override
  String get diagnosticsPrayerSource => 'Залбирлын эрх мэдэл';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Захиалгат / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Гараар тохируулсан өнцөг (байгууллагын эх сурвалж байхгүй)';

  @override
  String diagnosticsPrayerHybridSource(String sourceName, String madhab) {
    return 'Хэрэглэгчийн сонгосон $madhab Asr тохиргоотой $sourceName арга';
  }

  @override
  String get diagnosticsCloudDriven => 'Cloud Driven';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI аудио хөрөнгө';

  @override
  String get diagnosticsQuranAudioAssets => 'Коран Коран аудио хөрөнгө';

  @override
  String get diagnosticsAudioAssets => 'Аудио хөрөнгө';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count файлууд';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Манифест уншиж чадсангүй: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Нутагшуулах нутаг дэвсгэр';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count дэмжигдсэн';
  }

  @override
  String get diagnosticsQuranDataset => 'Коран өгөгдлийн багц';

  @override
  String get diagnosticsQuranSurahs => 'Коран судар';

  @override
  String get diagnosticsQuranAyahs => 'Коран судар';

  @override
  String get diagnosticsQuranJuzMetadata => 'Коран Жуз мета өгөгдөл';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Supabase-д үүлэн хүснэгт байхгүй; багцалсан буцаалт идэвхтэй';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Үүлэн шалгалт амжилтгүй боллоо: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz мета өгөгдөл дутуу байна; багцалсан бүтцийн нөхөн сэргэлт идэвхтэй';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Үүлний бүтцийн шалгалт амжилтгүй боллоо: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Шалгалт тохируулга хийх шаардлагатай. Зураг-8 дээрх төхөөрөмжийг эргүүл.';

  @override
  String get dailyVerse => 'Өдөр тутмын шүлэг';

  @override
  String get dailyVerseUnavailableTitle =>
      'Өдөр тутмын шүлгийг ашиглах боломжгүй';

  @override
  String get dailyVerseUnavailableBody =>
      'Баталгаажсан өдөр тутмын шүлгийн агуулгыг энэ бүтээцэд хараахан тохируулаагүй байна. Үзэхээсээ өмнө үүлэн эх сурвалжтай холбогдох эсвэл баталгаажуулсан кэшийг синк хийнэ үү.';

  @override
  String get todaysIbadah => 'Өнөөдрийн Ибада';

  @override
  String get quickAccess => 'Түргэн нэвтрэх';

  @override
  String get assistant => 'Туслах';

  @override
  String get places => 'Газар';

  @override
  String get library => 'Номын сан';

  @override
  String get analytics => 'Аналитик';

  @override
  String get dailyDuas => 'Өдөр тутмын дуа';

  @override
  String essentialDuas(String count) {
    return '$count essential duas';
  }

  @override
  String get duaUnavailableTitle => 'Баталгаажсан дуга хараахан байхгүй байна';

  @override
  String get duaUnavailableBody =>
      'Баталгаажсан өдөр тутмын дулаа энэ төхөөрөмжид хараахан синк хийгдээгүй байна. Баталгаажаагүй нөөцийн оронд эх сурвалжаас авсан дуусыг ачаалахын тулд үүлэн эх сурвалжтай холбогдоно уу.';

  @override
  String get duaCategoryQuranic => 'Коран судрын залбирал';

  @override
  String get duaCategoryMorningEvening => 'Өглөө ба орой';

  @override
  String get duaCategoryTasbih => 'Тасбих';

  @override
  String get duaCategoryProtection => 'Хамгаалалт';

  @override
  String get duaCategoryBeginning => 'Эхлэл';

  @override
  String get duaCategorySleep => 'Унтах';

  @override
  String get duaCategoryFoodDrink => 'Хоол, ундаа';

  @override
  String get duaCategoryForgiveness => 'Өршөөл';

  @override
  String get duaCategoryHome => 'Гэр';

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
  String get islamicEducation => 'Исламын боловсрол';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Хадисын цуглуулга';

  @override
  String get hadithSourcePending => 'Баталгаажсан эх сурвалж хүлээгдэж байна';

  @override
  String get hadithUnavailableTitle =>
      'Баталгаажсан хадис цуглуулгууд хараахан байхгүй байна';

  @override
  String get hadithUnavailableBody =>
      'Энэ бүтэц нь батлагдаагүй гадны хадис тэжээлээс хамааралтай хэвээр байна. Эх сурвалжийн өгөгдлийн багцыг синк хийх хүртэл Хадис үзэх нь идэвхгүй хэвээр байна.';

  @override
  String get paywallUnlockAll => 'Сүнслэг аялалынхаа бүх функцийг нээ';

  @override
  String get premiumProductUnavailable =>
      'Дээд зэрэглэлийн бүтээгдэхүүн одоогоор байхгүй байна. Дараа дахин оролдоно уу.';

  @override
  String get premiumPurchaseFailed =>
      'Худалдан авалтыг дуусгаж чадсангүй. Дахин оролдоно уу.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc =>
      'Хязгааргүй хиймэл оюун ухаанаар ажилладаг асуулт, хариулт';

  @override
  String get paywallFeature2Title => 'Хязгааргүй офлайн';

  @override
  String get paywallFeature2Desc => 'Бүх уншлагыг татаж авах';

  @override
  String get paywallFeature3Title => 'Онцгой загварууд';

  @override
  String get paywallFeature3Desc => 'Дээд зэрэглэлийн загвар ба фонтууд';

  @override
  String get paywallFeature4Title => 'Зар сурталчилгаагүй';

  @override
  String get paywallFeature4Desc => 'Зар сурталчилгаа байхгүй';

  @override
  String get paywallGetAccess => 'Насан туршийн хандалт авах — \$1.00';

  @override
  String get restorePurchases => 'Худалдан авалтыг сэргээх';

  @override
  String get zakatCalculator => 'Закат тооцоолуур';

  @override
  String get zakatGold => 'Алт (Алтын)';

  @override
  String get zakatSilver => 'Мөнгө (Гүмүш)';

  @override
  String get zakatCashBank => 'Бэлэн мөнгө / Банк';

  @override
  String get zakatBusiness => 'Бизнес';

  @override
  String get zakatInvestments => 'Хөрөнгө оруулалт';

  @override
  String get zakatWeightGrams => 'Жин (г)';

  @override
  String get zakatPricePerGram => 'Үнэ/г';

  @override
  String get zakatTotalAmount => 'Нийт дүн';

  @override
  String get zakatInventoryValue => 'Бараа материалын үнэ цэнэ';

  @override
  String get zakatDebts => 'Өр';

  @override
  String get zakatTotal => 'Нийт';

  @override
  String get calculateZakat => 'Закатыг тооцоол';

  @override
  String get nisabNotReached =>
      'Нисаба хүрч чадаагүй байна. Закат нь заавал байх албагүй.';

  @override
  String get totalZakat => 'Нийт Закат';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Нисаб: $nisab • Хөрөнгө: $assets';
  }

  @override
  String get zakatGoldZakat => 'Алтан Закат';

  @override
  String get zakatSilverZakat => 'Мөнгөн Закат';

  @override
  String get zakatCashZakat => 'Бэлэн мөнгөний зекат';

  @override
  String get zakatBusinessZakat => 'Бизнесийн Закат';

  @override
  String get zakatInvestmentZakat => 'Хөрөнгө оруулалтын Закат';

  @override
  String get chatbotGreeting =>
      'Ассаламу алейкум! Би таны Исламын туслах. Залбирал, мацаг барилт, зекат эсвэл Исламын ямар нэгэн сэдвээр надаас асуу.';

  @override
  String get chatbotLimitReached =>
      'Өдөр тутмын асуулгын хязгаарт хүрсэн. Хязгааргүй төлбөртэйгээр Premium руу шинэчилнэ үү.';

  @override
  String get chatbotErrorMsg =>
      'Би хариулт үүсгэж чадсангүй. Дахин оролдоно уу.';

  @override
  String get chatbotOfflinePrompt =>
      'Баталгаажсан офлайн Исламын мэдлэгийн баазыг боловсруулсаар байна. Та одоо офлайн нөхөн сэргээх ажиллагааг идэвхжүүлж болно, гэхдээ эх сурвалжийн өгөгдлийн багц бэлэн болтол энэ нь зөвхөн хязгаарлагдмал аюулгүй мессежийг харуулах болно.\n\nТа офлайн нөөцийг идэвхжүүлэхийг хүсэж байна уу?';

  @override
  String get chatbotOfflineSwitched =>
      'Офлайн буцаалтыг идэвхжүүлсэн. Баталгаажсан орон нутгийн Исламын хариулт хараахан бэлэн болоогүй байна.';

  @override
  String get chatbotOfflineDownloadLabel => 'Офлайн буцаалтыг идэвхжүүлэх';

  @override
  String get downloadPreparing => 'Татаж авахад бэлтгэж байна...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Downloading surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Энэ уншигчид бүх судруудыг аль хэдийн татаж авсан.';

  @override
  String get offlineQuranAudioPacks => 'Офлайн Коран аудио багцууд';

  @override
  String storedOnDeviceMb(String size) {
    return 'Төхөөрөмж дээр хадгалагдсан: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total судруудыг татаж авсан';
  }

  @override
  String get redownloadMissingRepair => 'Засвар / Татаж авахгүй';

  @override
  String get downloadAction => 'Татаж авах';

  @override
  String get resumeDownload => 'Үргэлжлүүлэн татаж авах';

  @override
  String get deleteDownloadedFiles => 'Татаж авсан файлуудыг устгах';

  @override
  String get downloadCancelling => 'Цуцалж байна...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return '$reciter-д татахыг цуцалсан.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return '$reciter-г татаж авлаа.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return '$reciter-д $failed бүтэлгүйтсэн сурагуудыг татаж авч дууслаа ($downloaded/$total татагдсан).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return '$reciter-д зориулсан офлайн файлуудыг устгасан.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Баталгаажсан Коран аудио эх сурвалжийг одоогоор ашиглах боломжгүй байна.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Баталгаажсан Коран судрын аудио багц дутуу байна ($available/$total). Аудио каталог шинэчлэгдсэний дараа дахин оролдоно уу.';
  }

  @override
  String get chatbotHint => 'Асуулт асуу...';

  @override
  String get chatbotThinking => 'Бодож байна...';

  @override
  String get sukunMixerSubtitle => 'Байгаль ба Коран судар холигч';

  @override
  String get audioPlayFailed => 'Аудио тоглуулж чадсангүй';

  @override
  String get sukunNatureLabel => 'Сукун (Байгаль)';

  @override
  String get sukunRainOfMercy => 'Нигүүлслийн бороо';

  @override
  String get sukunGardenOfPeace => 'Энх тайвны цэцэрлэг';

  @override
  String get sukunMidnightCalm => 'Шөнө дунд тайван';

  @override
  String get sukunOceanTawheed => 'Далайн Таухид';

  @override
  String get sukunUnavailableTitle => 'Дууны дүрс байхгүй байна';

  @override
  String get sukunUnavailableBody =>
      'Энэ бүтэц нь шаардлагатай Sukun soundscape хөрөнгийг хараахан оруулаагүй байна.';

  @override
  String get prayerCompletion => 'Залбирал дуусгах';

  @override
  String get streaks => 'Судал';

  @override
  String get dayStreak => 'Өдрийн дараалал';

  @override
  String get bestStreak => 'Шилдэг цуврал';

  @override
  String get chatbotCloudAiLabel => 'Үүлэн AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'Cloud AI (Gemini) ашиглах';

  @override
  String get chatbotDownloadLocalAi => 'Офлайн буцаалтыг идэвхжүүлэх';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count үлдсэн';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API-г тохируулаагүй байна. Баталгаажсан офлайн Исламын удирдамж хараахан боломжгүй байна.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Баталгаажсан орон нутгийн Исламын удирдамж хараахан боломжгүй байна. Эх сурвалжтай хариулт авахын тулд Cloud AI руу шилжинэ үү.';

  @override
  String get mosques => 'Лалын сүмүүд';

  @override
  String get halalFood => 'Халал хоол';

  @override
  String get placesSearchArea => 'Энэ бүсээс хай';

  @override
  String get nearbyMosques => 'Ойролцоох сүм хийдүүд';

  @override
  String get islamicSchools => 'Исламын сургуулиуд';

  @override
  String placesFoundCount(String count) {
    return '$count олдлоо';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance км зайтай';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API алдаа: $statusCode';
  }

  @override
  String get placesNetworkError => 'Сүлжээний алдаа. Дахин оролдоно уу.';

  @override
  String get placesLocationRequiredTitle => 'Байршил шаардлагатай';

  @override
  String get placesLocationRequiredBody =>
      'Ойролцоох лалын сүм, халал хоол, исламын сургуулийг үнэн зөв хайж олохын тулд эхлээд байршлыг тогтооно уу.';

  @override
  String get placesMapTilesUnavailableTitle =>
      'Газрын зургийн хавтан ашиглах боломжгүй';

  @override
  String get placesMapTilesUnavailableBody =>
      'Баталгаажсан газрын зургийн хавтангийн эх сурвалжийг энэ бүтээцэд хараахан тохируулаагүй байна. Ойролцоох газруудыг таны хадгалсан байршлаас ачаалах боломжтой хэвээр байна.';

  @override
  String get placesDataSourceUnavailableTitle => 'Газрын мэдээлэл боломжгүй';

  @override
  String get placesDataSourceUnavailableBody =>
      'Баталгаажсан газруудын өгөгдлийн төгсгөлийн цэгийг энэ бүтээцэд хараахан тохируулаагүй байна. Ойролцоох хайлтыг идэвхжүүлэхийн өмнө PLACES_OVERPASS_API_URL-г зөвшөөрөгдсөн прокси эсвэл үйлчилгээ үзүүлэгч рүү тохируулна уу.';

  @override
  String get unknownPlaceName => 'Үл мэдэгдэх нэр';

  @override
  String get islamicPlaceFallback => 'Исламын газар';

  @override
  String get asmaMeaning1 => 'The Beneficent';

  @override
  String get asmaMeaning2 => 'Энэрэнгүй';

  @override
  String get asmaMeaning3 => 'Хаан / Мөнхийн Эзэн';

  @override
  String get asmaMeaning4 => 'Хамгийн ариун';

  @override
  String get asmaMeaning5 => 'Энх тайвны эх сурвалж';

  @override
  String get asmaMeaning6 => 'Аюулгүй байдлыг хангагч';

  @override
  String get asmaMeaning7 =>
      'The Watchful Guardian, who observes and safeguards all creation.';

  @override
  String get asmaMeaning8 => 'Эрдэнэт / Хамгийн Хүчирхэг';

  @override
  String get asmaMeaning9 =>
      'The Restorer and Irresistible, whose will prevails with perfect power.';

  @override
  String get asmaMeaning10 => 'Хамгийн агуу';

  @override
  String get asmaMeaning11 => 'Бүтээгч';

  @override
  String get asmaMeaning12 => 'Захиалга бүтээгч';

  @override
  String get asmaMeaning13 => 'Гоо сайхныг хэлбэржүүлэгч';

  @override
  String get asmaMeaning14 => 'Өршөөгч';

  @override
  String get asmaMeaning15 => 'The Subduer';

  @override
  String get asmaMeaning16 => 'Бүхнийг өгөгч';

  @override
  String get asmaMeaning17 => 'Тэжээгч';

  @override
  String get asmaMeaning18 => 'Нээгч';

  @override
  String get asmaMeaning19 => 'Бүхнийг мэдэгч';

  @override
  String get asmaMeaning20 =>
      'The Withholder, who narrows and restrains by wisdom.';

  @override
  String get asmaMeaning21 => 'Амраагч';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'Өргөгч';

  @override
  String get asmaMeaning24 => 'Хүндэт өргөмжлөл';

  @override
  String get asmaMeaning25 => 'Доромжлогч';

  @override
  String get asmaMeaning26 => 'Бүгдийг сонсогч';

  @override
  String get asmaMeaning27 => 'Бүхнийг Үзэгч';

  @override
  String get asmaMeaning28 => 'Шүүгч';

  @override
  String get asmaMeaning29 => 'The Just';

  @override
  String get asmaMeaning30 => 'Нарийхан Нэгэн';

  @override
  String get asmaMeaning31 => 'Бүхнийг мэддэг';

  @override
  String get asmaMeaning32 => 'The Forebearing';

  @override
  String get asmaMeaning33 => 'Гайхамшигт';

  @override
  String get asmaMeaning34 => 'Агуу Өршөөгч';

  @override
  String get asmaMeaning35 => 'Талархлын шагнагч';

  @override
  String get asmaMeaning36 => 'Хамгийн өндөр';

  @override
  String get asmaMeaning37 => 'Хамгийн агуу';

  @override
  String get asmaMeaning38 => 'Хамгаалагч';

  @override
  String get asmaMeaning39 => 'Тэжээгч';

  @override
  String get asmaMeaning40 => 'Тооцогч';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'Өгөөмөр';

  @override
  String get asmaMeaning43 => 'Соргог хүн';

  @override
  String get asmaMeaning44 => 'Залбиралд хариулагч';

  @override
  String get asmaMeaning45 => 'Бүх зүйлийг ойлгох';

  @override
  String get asmaMeaning46 => 'Төгс Мэргэн';

  @override
  String get asmaMeaning47 => 'Хайртай Нэгэн';

  @override
  String get asmaMeaning48 => 'Хамгийн алдартан';

  @override
  String get asmaMeaning49 => 'Амилагч';

  @override
  String get asmaMeaning50 => 'Гэрч';

  @override
  String get asmaMeaning51 => 'Үнэн';

  @override
  String get asmaMeaning52 => 'Бүх хангалттай итгэмжлэгдсэн төлөөлөгч';

  @override
  String get asmaMeaning53 => 'Бүх хүчийг Эзэмшигч';

  @override
  String get asmaMeaning54 => 'Хүчтэй';

  @override
  String get asmaMeaning55 => 'Хамгаалагч';

  @override
  String get asmaMeaning56 => 'Магтсан';

  @override
  String get asmaMeaning57 => 'Үнэлгээчин';

  @override
  String get asmaMeaning58 => 'Үйлдвэрлэгч';

  @override
  String get asmaMeaning59 => 'Сэргээгч';

  @override
  String get asmaMeaning60 => 'Амьдрал бэлэглэгч';

  @override
  String get asmaMeaning61 => 'Амьдралыг авагч';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'Өөрийгөө тэтгэгч';

  @override
  String get asmaMeaning64 => 'The Finder';

  @override
  String get asmaMeaning65 => 'The Glorious';

  @override
  String get asmaMeaning66 => 'Цорын ганц';

  @override
  String get asmaMeaning67 => 'The One';

  @override
  String get asmaMeaning68 => 'Бүх нийтээр эрэлхийлдэг нэгэн';

  @override
  String get asmaMeaning69 => 'Хүчирхэг';

  @override
  String get asmaMeaning70 => 'Бүх хүчийг бүтээгч';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'Хойшлуулагч';

  @override
  String get asmaMeaning73 => 'Анхны';

  @override
  String get asmaMeaning74 => 'Сүүлчийн';

  @override
  String get asmaMeaning75 => 'The Manifest';

  @override
  String get asmaMeaning76 => 'Нуугдсан';

  @override
  String get asmaMeaning77 => 'Засаг дарга';

  @override
  String get asmaMeaning78 => 'Дээд Нэгэн';

  @override
  String get asmaMeaning79 => 'Сайн үйлдэгч';

  @override
  String get asmaMeaning80 => 'Наманчлалын гарын авлага';

  @override
  String get asmaMeaning81 => 'Өшөө авагч';

  @override
  String get asmaMeaning82 => 'Уучлагч';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'Бүхний Эзэмшигч/Бүрэн эрхт';

  @override
  String get asmaMeaning85 => 'Сүр жавхлан ба нигүүлслийн эзэн';

  @override
  String get asmaMeaning86 => 'Төв тэгш нэгэн';

  @override
  String get asmaMeaning87 => 'Цуглагч';

  @override
  String get asmaMeaning88 => 'Баян';

  @override
  String get asmaMeaning89 => 'The Enricher';

  @override
  String get asmaMeaning90 => 'Хохиролоос урьдчилан сэргийлэгч';

  @override
  String get asmaMeaning91 => 'Хохирол авчирагч';

  @override
  String get asmaMeaning92 => 'Ашиг тусын эзэн';

  @override
  String get asmaMeaning93 => 'Гэрэл';

  @override
  String get asmaMeaning94 => 'Хөтөч';

  @override
  String get asmaMeaning95 => 'Үйлдвэрлэгч';

  @override
  String get asmaMeaning96 => 'Мөнхийн Нэгэн';

  @override
  String get asmaMeaning97 => 'Өв залгамжлагч';

  @override
  String get asmaMeaning98 => 'Хамгийн зөвт хөтөч';

  @override
  String get asmaMeaning99 => 'The Patent One';
}
