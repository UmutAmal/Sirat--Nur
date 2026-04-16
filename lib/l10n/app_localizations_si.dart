// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sinhala Sinhalese (`si`).
class AppLocalizationsSi extends AppLocalizations {
  AppLocalizationsSi([String locale = 'si']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'ඉස්ලාමීය ආලෝකයේ මාර්ගය';

  @override
  String get home => 'නිවස';

  @override
  String get quran => 'කුරානය';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'සික්ර්';

  @override
  String get calendar => 'දින දර්ශනය';

  @override
  String get settings => 'සැකසීම්';

  @override
  String get nextPrayer => 'ඊළඟ යාච්ඤාව';

  @override
  String get prayerTimes => 'යාඥා වේලාවන්';

  @override
  String get continueReading => 'Continue Reading';

  @override
  String get getLifetimePro => 'Get Lifetime Pro';

  @override
  String get unlockTajweed => 'Unlock Tajweed & Advanced Features';

  @override
  String get prayerCalculation => 'යාච්ඤාව ගණනය කිරීම';

  @override
  String get method => 'ගණනය කිරීමේ ක්රමය';

  @override
  String get madhab => 'Asr ජුරිස්ටික් ක්රමය';

  @override
  String get surahs => 'සූරත';

  @override
  String get ayahs => 'Ayahs';

  @override
  String get fajr => 'ෆජ්ර්';

  @override
  String get sunrise => 'හිරු උදාව';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'අසර්';

  @override
  String get maghrib => 'මැග්රිබ්';

  @override
  String get isha => 'ඉෂා';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName සඳහා වේලාව';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '$prayerName යාච්ඤා කිරීමට කාලයයි.';
  }

  @override
  String get dataStorage => 'දත්ත සහ ගබඩා කිරීම';

  @override
  String get clearCache => 'හැඹිලිය හිස් කරන්න';

  @override
  String get cacheClearedSuccess => 'හැඹිලිය සාර්ථකව හිස් කරන ලදී';

  @override
  String get location => 'ස්ථානය';

  @override
  String get language => 'භාෂාව';

  @override
  String get selectLanguage => 'භාෂාව තෝරන්න';

  @override
  String get searchLanguage => 'Search 180+ languages...';

  @override
  String get systemDefault => 'පද්ධති පෙරනිමිය';

  @override
  String get currentLocation => 'වත්මන් ස්ථානය (GPS)';

  @override
  String get locationServiceDisabled => 'ස්ථාන සේවාව අබල කර ඇත.';

  @override
  String get locationPermissionDenied => 'ස්ථාන අවසරය ප්‍රතික්ෂේප විය.';

  @override
  String get locationDetectionFailed =>
      'ඔබගේ ස්ථානය හඳුනා ගැනීමට නොහැකි විය. කරුණාකර නගරයක් හස්තීයව තෝරන්න හෝ නැවත උත්සාහ කරන්න.';

  @override
  String citiesCount(String count) {
    return '$count නගර';
  }

  @override
  String get search => 'සොයන්න';

  @override
  String get searchHint => 'සොයන්න...';

  @override
  String get noResults => 'ප්‍රතිඵල හමු නොවිණි';

  @override
  String get loading => 'පූරණය වෙමින්...';

  @override
  String get error => 'දෝෂයකි';

  @override
  String get appErrorOccurred => 'දෝෂයක් සිදු විය';

  @override
  String get appUnknownError => 'නොදන්නා දෝෂයකි';

  @override
  String get quranLoadFailed =>
      'කුර්ආන් අන්තර්ගතය පූරණය කළ නොහැකි විය. කරුණාකර නැවත උත්සාහ කරන්න.';

  @override
  String get retry => 'නැවත උත්සාහ කරන්න';

  @override
  String get refreshAction => 'නැවුම් කරන්න';

  @override
  String get cancel => 'අවලංගු කරන්න';

  @override
  String get save => 'සුරකින්න';

  @override
  String get delete => 'මකන්න';

  @override
  String get edit => 'Edit';

  @override
  String get close => 'Close';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'නැත';

  @override
  String get surah => 'සූරතය';

  @override
  String ayahLabel(String ayah) {
    return 'අය්යා $ayah';
  }

  @override
  String get juz => 'ජුස්';

  @override
  String get page => 'පිටුව';

  @override
  String get reading => 'Reading';

  @override
  String get recitation => 'Recitation';

  @override
  String get translation => 'Translation';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'tafsir පූරණය වෙමින්...';

  @override
  String get tafsirSourceLabel => 'තෆ්සීර් මූලාශ්රය';

  @override
  String get tafsirNoSurahFound => 'මෙම සූරතය සඳහා තෆ්සීර් හමු නොවීය.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return '$ayah සඳහා තෆ්සීර් හමු නොවීය.';
  }

  @override
  String get tafsirLoadFailed => 'තෆ්සීර් පූරණය කළ නොහැකි විය.';

  @override
  String get tafsirNoTextForAyah => 'මෙම අයා සඳහා තෆ්සීර් පාඨ නැත.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'tafsir බාගත කරමින් $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'tafsir පූරණය වෙමින් $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir මූලාශ්‍රය HTTP $statusCode දෝෂයක් ලබා දුන්නේය.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'තෝරාගත් tafsir මූලාශ්‍රය කිසිදු ප්‍රවේශයක් ලබා දුන්නේ නැත.';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get addBookmark => 'පිටු සලකුණ එක් කරන්න';

  @override
  String get removeBookmark => 'පිටු සලකුණ ඉවත් කරන්න';

  @override
  String get lastRead => 'Last Read';

  @override
  String get dailyZikr => 'Daily Zikr';

  @override
  String get duaMeaning1 =>
      'තවත් අය යාච්ඤා කරන්නේ ‘අපගේ ස්වාමීනි, අපට මෙලොව සහ පරලොව යහපත ලබා දී ගින්නේ වධයෙන් අපව ආරක්ෂා කළ මැනව.';

  @override
  String get duaMeaning2 =>
      'දෙවියන් වහන්සේ කිසිම ආත්මයකට දරාගත හැකි ප්‍රමාණයට වඩා බරක් නොපවතියි: සෑම කෙනෙකුම තමා කළ ඕනෑම යහපතක් ලබා ගනී, එහි අයහපත විඳියි- ‘ස්වාමීනි, අප අමතක කළහොත් හෝ වැරදි කළහොත් අපව වරදට පත් නොකරන්න. ස්වාමීනි, ඔබ අපට පෙර සිටි අයට බර පැටවූවාක් මෙන් අපට බර නොකරන්න. ස්වාමීනි, අපට දරා ගැනීමට ශක්තියට වඩා අපට බරක් නොවන්න. අපට සමාව දෙන්න, අපට සමාව දෙන්න, අපට අනුකම්පා කරන්න. ඔබ අපගේ ආරක්ෂකයාය, එබැවින් ප්‍රතික්ෂේප කරන්නන්ට එරෙහිව අපට උපකාර කරන්න.’';

  @override
  String get duaMeaning3 =>
      '‘අපගේ ස්වාමීනි, ඔබ අපට මඟ පෙන්වූ පසු අපගේ හදවත් අපගමනය වීමට ඉඩ නොදෙන්න. ඔබගේ දයාව අපට ලබා දෙන්න: ඔබ සදා දීමයි.';

  @override
  String get duaMeaning4 =>
      'ස්වාමීනි, මට සහ මගේ පරම්පරාවට යාච්ඤාව දිගටම කරගෙන යාමට ඉඩ දෙන්න. අපගේ ස්වාමීනි, මාගේ ඉල්ලීම පිළිගන්න.';

  @override
  String get duaMeaning5 =>
      'ඔවුන් කෙරෙහි කරුණාවෙන් ඔබේ පියාපත් පහත් කර, ‘ස්වාමීනි, ඔවුන් මා කුඩා කල මා ගැන සැලකුවා සේම ඔවුන්ට අනුකම්පා කළ මැනව’යි පවසන්න.';

  @override
  String get duaMeaning6 =>
      'සැබවින්ම පාලනය කරන දෙවියන් වහන්සේ උසස් වේ. [නබිතුමාණනි], හෙළිදරව්ව සම්පූර්ණ වීමට පෙර පාරායනය කිරීමට ඉක්මන් නොවන්න, නමුත් \'ස්වාමීනි, මට දැනුම වැඩි කරන්න!\'';

  @override
  String get duaMeaning7 =>
      '[නබිතුමා] කියන්න, ‘ස්වාමීනි, සමාව දී දයාව දක්වන්න: ඔබ සියල්ලන්ටම වඩා දයාවන්තය.';

  @override
  String get duaMeaning8 =>
      'යාච්ඤා කරන අය, ‘අපගේ ස්වාමීනි, අපගේ කලත්‍රයන් සහ දරුවන් තුළ අපට ප්‍රීතිය ලබා දෙන්න. ඔබ ගැන දන්නා අයට අපව හොඳ ආදර්ශයක් කරන්න.';

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
  String get hadith => 'හදීස්';

  @override
  String get hadithCollection => 'හදීස් එකතුව';

  @override
  String get hadithBooks => 'හදීස් පොත්';

  @override
  String get searchHadith => 'හදීස් සොයන්න';

  @override
  String get asmaulHusna => 'අස්මා-උල්-හුස්නා';

  @override
  String get namesOfAllah => 'අල්ලාහ්ගේ නම්';

  @override
  String get liveTv => 'සජීවී රූපවාහිනිය';

  @override
  String get watchLive => 'සජීවීව නරඹන්න';

  @override
  String get streamError => 'ප්‍රවාහ දෝෂය';

  @override
  String get reload => 'නැවත පූරණය කරන්න';

  @override
  String get openInYoutube => 'YouTube හි විවෘත කරන්න';

  @override
  String get ibadahTracker => 'ඉබාදා ට්රැකර්';

  @override
  String get fasting => 'නිරාහාරව සිටීම';

  @override
  String get quranReading => 'අල් කුර්ආනය කියවීම';

  @override
  String get prayers => 'යාඥාවන්';

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
  String get weeklyProgress => 'සතිපතා ප්‍රගතිය';

  @override
  String get monthlyProgress => 'Monthly Progress';

  @override
  String get statistics => 'Statistics';

  @override
  String get hijriCalendar => 'හිජ්රි දින දර්ශනය';

  @override
  String get gregorianCalendar => 'Gregorian Calendar';

  @override
  String get today => 'අද';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get specialDays => 'විශේෂ දින';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'ඉස්ලාමීය අලුත් අවුරුද්ද';

  @override
  String get mawlidAnNabi => 'මවුලිඩ් අන්-නබි';

  @override
  String get specialDayDateRamadanStart => '1 රාමදාන්';

  @override
  String get specialDayDateLaylatAlQadr => '27 රාමදාන්';

  @override
  String get specialDayDateEidAlFitr => '1 ෂව්වාල්';

  @override
  String get specialDayDateEidAlAdha => '10 දුල් හිජ්ජා';

  @override
  String get specialDayDateIslamicNewYear => '1 මුහර්රම්';

  @override
  String get specialDayDateMawlidAnNabi => '12 රබී අල්-අව්වල්';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'කිබ්ලා දිශාව';

  @override
  String get compass => 'මාලිමා යන්ත්‍රය';

  @override
  String get degrees => 'degrees';

  @override
  String get north => 'North';

  @override
  String get qiblaFound => 'කිබ්ලා හමු විය!';

  @override
  String get turnDevice => 'කිබ්ලා දෙසට ඔබේ උපාංගය හරවන්න';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'මාලිමා දෝෂය: $error';
  }

  @override
  String get qiblaSensorUnavailable => 'මෙම උපාංගයේ මාලිමා සංවේදකය නොමැත.';

  @override
  String get qiblaLocationRequiredTitle => 'කිබ්ලා සඳහා අවශ්‍ය ස්ථානය';

  @override
  String get qiblaLocationRequiredBody =>
      'කිබ්ලා මාලිමා යන්ත්‍රය භාවිතා කිරීමට පෙර ඔබේ සැබෑ ස්ථානය සකසන්න එවිට දිශාව නිවැරදිව ගණනය කළ හැක.';

  @override
  String get adhanNotificationChannelName => 'අදාන් දැනුම්දීම්';

  @override
  String get adhanNotificationChannelDescription =>
      'අදාන් ශබ්දය සමඟ යාච්ඤාවේ වේලාව අනතුරු ඇඟවීම්.';

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
  String get theme => 'තේමාව';

  @override
  String get lightMode => 'ආලෝක මාදිලිය';

  @override
  String get darkMode => 'අඳුරු මාදිලිය';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'ගැන';

  @override
  String get version => 'අනුවාදය';

  @override
  String get privacyPolicy => 'රහස්‍යතා ප්‍රතිපත්තිය';

  @override
  String get termsOfService => 'සේවා කොන්දේසි';

  @override
  String get contactUs => 'අප අමතන්න';

  @override
  String get rateApp => 'යෙදුම අගයන්න';

  @override
  String get shareApp => 'යෙදුම බෙදාගන්න';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'බාගත කළමණාකරු';

  @override
  String get downloads => 'බාගැනීම්';

  @override
  String get downloading => 'බාගනිමින්...';

  @override
  String get downloadComplete => 'බාගත කිරීම සම්පූර්ණයි';

  @override
  String get downloadFailed => 'බාගැනීම අසාර්ථකයි';

  @override
  String get offlineMode => 'නොබැඳි මාදිලිය';

  @override
  String get noInternet => 'අන්තර්ජාල සම්බන්ධතාවයක් නොමැත';

  @override
  String get checkConnection => 'කරුණාකර ඔබගේ සම්බන්ධතාවය පරීක්ෂා කරන්න';

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
  String get getStarted => 'ආරම්භ කරන්න';

  @override
  String get skip => 'Skip';

  @override
  String get next => 'ඊළඟට';

  @override
  String get done => 'කළා';

  @override
  String get onboarding1Title => 'Sirat-ı Nur වෙත සාදරයෙන් පිළිගනිමු';

  @override
  String get onboarding1Desc =>
      'යාඥා වේලාවන්, කුර්ආනය සහ තවත් දේ සඳහා ඔබගේ සම්පූර්ණ ඉස්ලාමීය සහකාර යෙදුම';

  @override
  String get onboarding2Title => 'යාඥා වේලාවන්';

  @override
  String get onboarding2Desc => 'ඔබගේ ස්ථානය මත පදනම්ව නිවැරදි යාච්ඤා වේලාවන්';

  @override
  String get onboarding3Title => 'අල් කුර්ආනය සහ තවත්';

  @override
  String get onboarding3Desc =>
      'අල් කුර්ආනය කියවන්න, ඔබේ කියවීම නිරීක්ෂණය කරන්න, සහ ඉස්ලාමීය අන්තර්ගතය ගවේෂණය කරන්න';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'කවුන්ටරය නැවත සකසන්න';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'ඉලක්ක ගණන: $target';
  }

  @override
  String get tapToCount => 'ගණන් කිරීමට තට්ටු කරන්න';

  @override
  String get zikrCompletedMashAllah => 'සම්පූර්ණයි! මාෂා අල්ලාහ්';

  @override
  String get zikrMeaningSubhanAllah =>
      'අල්ලාහ් සෑම අසම්පූර්ණකමට වඩා බොහෝ ඉහළින් සිටී.';

  @override
  String get zikrMeaningAlhamdulillah => 'සියලු ප්‍රශංසාව අල්ලාහ්ට හිමිවේ.';

  @override
  String get zikrMeaningAllahuAkbar => 'අල්ලාහ් ශ්‍රේෂ්ඨය.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'අල්ලාහ් හැර වෙන දෙවියෙක් නැත.';

  @override
  String get zikrMeaningAstaghfirullah => 'මම අල්ලාහ්ගෙන් සමාව අයදිමි.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'අල්ලාහ් තුළින් මිස බලයක් හා ශක්තියක් නැත.';

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
  String get dailyProgress => 'දෛනික ප්‍රගතිය';

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
  String get recheckPremium => 'වාරික දායකත්ව තත්ත්වය නැවත පරීක්ෂා කරන්න';

  @override
  String get syncStore =>
      'ඔබගේ වාරික දායකත්වය තහවුරු කිරීමට යෙදුම් ගබඩාව සමඟ සමමුහුර්ත කරන්න.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'වාරික දායකත්වය තහවුරු කරන ලදී.';

  @override
  String get premiumNotFound => 'වාරික දායකත්වය සොයාගත නොහැකි විය.';

  @override
  String premiumRefreshError(Object error) {
    return 'වාරික දායකත්ව තත්ත්වය නැවුම් කිරීමට නොහැකි විය: $error';
  }

  @override
  String get offlineDownloadManager => 'නොබැඳි බාගැනීම් කළමනාකරු';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'අභ්‍යන්තර උපාංග ආචයනය නිදහස් කරන්න.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'කුර්ආන් දත්ත ගබඩාව පරීක්ෂා කරමින්...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'කුර්ආන් දත්ත සමුදා තත්ත්වය';

  @override
  String statusLabel(Object status) {
    return 'තත්ත්වය: $status';
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
  String get audioVoice => 'ශ්රව්ය හඬ';

  @override
  String get audioVoiceMisharyAlafasy => 'පිරිමි (මිෂාරි ඇලෆාසි)';

  @override
  String get audioVoiceAbdulBaset => 'පිරිමි (අබ්දුල්බසෙට්)';

  @override
  String get audioVoiceSudais => 'පිරිමි (සුදායිස්)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'කිබ්ලා ක්රමාංකනය';

  @override
  String get compassSmoothing => 'Compass Smoothing';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'ක්රමාංකන ඕෆ්සෙට්';

  @override
  String currentOffset(Object offset) {
    return 'වත්මන්: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'ඔබේ මාලිමා යන්ත්‍රයට අතින් නිවැරදි කිරීමක් අවශ්‍ය නම් සීරුමාරු කරන්න. ධනාත්මක අගයන් දක්ෂිණාවර්තව භ්රමණය වේ.';

  @override
  String get apply => 'වෙනස්කම් යොදන්න';

  @override
  String get resetOnboarding => 'හඳුන්වාදීමේ සැකසුම යළි පිහිටුවන්න';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'රෝග විනිශ්චය';

  @override
  String get diagnosticsNotSet => 'සකසා නැත';

  @override
  String get diagnosticsPrayerProfile => 'යාච්ඤා පැතිකඩ';

  @override
  String get diagnosticsPrayerSource => 'යාච්ඤා අධිකාරිය';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'අභිරුචි / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'අතින් අභිරුචි කෝණ (ආයතනික මූලාශ්‍ර නැත)';

  @override
  String get diagnosticsCloudDriven => 'Cloud Driven';

  @override
  String get diagnosticsAdhanAudioAssets => 'අදාන් ශ්‍රව්‍ය වත්කම්';

  @override
  String get diagnosticsUiAudioAssets => 'UI ශ්‍රව්‍ය වත්කම්';

  @override
  String get diagnosticsQuranAudioAssets => 'කුර්ආන් ශ්‍රව්‍ය වත්කම්';

  @override
  String get diagnosticsAudioAssets => 'ශ්‍රව්‍ය වත්කම්';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count ගොනු';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'මැනිෆෙස්ට් කියවීම අසාර්ථක විය: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'ප්රාදේශීයකරණය ස්ථාන';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count සහාය දක්වයි';
  }

  @override
  String get diagnosticsQuranDataset => 'කුර්ආන් දත්ත කට්ටලය';

  @override
  String get diagnosticsQuranSurahs => 'කුර්ආන් සූරත';

  @override
  String get diagnosticsQuranAyahs => 'කුර්ආන් ආයත';

  @override
  String get diagnosticsQuranJuzMetadata => 'කුර්ආන් ජුස් පාරදත්ත';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Supabase හි වලාකුළු වගු අතුරුදහන්; බණ්ඩල්ඩ් ෆෝල්බැක් ක්‍රියාකාරී';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'වලාකුළු පරීක්ෂාව අසාර්ථක විය: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz පාරදත්ත අතුරුදහන්; බණ්ඩල්ඩ් ව්‍යුහාත්මක පසුබැසීම සක්‍රීයයි';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'වළාකුළු ව්‍යුහාත්මක පරීක්ෂාව අසාර්ථක විය: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'ක්රමාංකනය අවශ්ය වේ. රූපය-8 හි උපාංගය කරකවන්න.';

  @override
  String get dailyVerse => 'දෛනික පදය';

  @override
  String get todaysIbadah => 'අද ඉබාදා';

  @override
  String get quickAccess => 'ඉක්මන් ප්රවේශය';

  @override
  String get assistant => 'සහකාර';

  @override
  String get places => 'ස්ථාන';

  @override
  String get library => 'පුස්තකාලය';

  @override
  String get analytics => 'විශ්ලේෂණ';

  @override
  String get dailyDuas => 'දිනපතා Duas';

  @override
  String essentialDuas(String count) {
    return '$count අත්‍යවශ්‍ය duas';
  }

  @override
  String get duaUnavailableTitle => 'සත්‍යාපිත duas තවමත් නොමැත';

  @override
  String get duaUnavailableBody =>
      'සත්‍යාපිත දෛනික duas තවමත් මෙම උපාංගයට සමමුහුර්ත කර නොමැත. සත්‍යාපනය නොකළ පසුබැසීමක් වෙනුවට මූලාශ්‍රගත duas පූරණය කිරීමට ක්ලවුඩ් ප්‍රභවයට සම්බන්ධ වන්න.';

  @override
  String get duaCategoryQuranic => 'කුර්ආන් දූවා';

  @override
  String get duaCategoryMorningEvening => 'උදෑසන සහ සවස';

  @override
  String get duaCategoryTasbih => 'තස්බිහ්';

  @override
  String get duaCategoryProtection => 'ආරක්ෂාව';

  @override
  String get duaCategoryBeginning => 'ආරම්භය';

  @override
  String get duaCategorySleep => 'නිදාගන්න';

  @override
  String get duaCategoryFoodDrink => 'ආහාර පාන';

  @override
  String get duaCategoryForgiveness => 'සමාව දීම';

  @override
  String get duaCategoryHome => 'නිවස';

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
  String get islamicEducation => 'ඉස්ලාමීය අධ්යාපනය';

  @override
  String get sukunAudioTitle => 'සුකුන් ශබ්ද දර්ශන';

  @override
  String get hadithCollections => 'හදීස් එකතුව';

  @override
  String get hadithSourcePending => 'සත්‍යාපිත මූලාශ්‍රය පොරොත්තුවෙන්';

  @override
  String get hadithUnavailableTitle => 'සත්‍යාපිත හදීස් එකතු කිරීම් තවම නොමැත';

  @override
  String get hadithUnavailableBody =>
      'මෙම ගොඩනැගීම තවමත් සත්‍යාපනය නොකළ බාහිර හදීස් සංග්‍රහයක් මත රඳා පවතී. මූලාශ්‍ර දත්ත කට්ටලයක් සමමුහුර්ත වන තෙක් හදීස් බ්‍රවුස් කිරීම අක්‍රියව පවතී.';

  @override
  String get paywallUnlockAll =>
      'ඔබගේ අධ්‍යාත්මික ගමන සඳහා සියලුම විශේෂාංග අගුළු හරින්න';

  @override
  String get premiumProductUnavailable =>
      'වාරික නිෂ්පාදනය දැන් ලබා ගත නොහැක. කරුණාකර පසුව නැවත උත්සාහ කරන්න.';

  @override
  String get premiumPurchaseFailed =>
      'මිලදී ගැනීම සම්පූර්ණ කළ නොහැකි විය. කරුණාකර නැවත උත්සාහ කරන්න.';

  @override
  String get paywallFeature1Title => 'ස්නායු සහකාර ප්ලස්';

  @override
  String get paywallFeature1Desc => 'අසීමිත AI-බලය වන Q&A';

  @override
  String get paywallFeature2Title => 'අසීමිත නොබැඳි';

  @override
  String get paywallFeature2Desc => 'සියලුම කියවීම් බාගන්න';

  @override
  String get paywallFeature3Title => 'සුවිශේෂී නිර්මාණ';

  @override
  String get paywallFeature3Desc => 'වාරික තේමා සහ අකුරු';

  @override
  String get paywallFeature4Title => 'දැන්වීම්-නිදහස්';

  @override
  String get paywallFeature4Desc => 'ශුන්‍ය වෙළඳ දැන්වීම්';

  @override
  String get paywallGetAccess => 'ජීවිත කාලය ප්‍රවේශය ලබා ගන්න - \$1.00';

  @override
  String get restorePurchases => 'මිලදී ගැනීම් ප්‍රතිසාධනය කරන්න';

  @override
  String get zakatCalculator => 'සකාත් කැල්කියුලේටරය';

  @override
  String get zakatGold => 'රන් (Altın)';

  @override
  String get zakatSilver => 'රිදී (Gümüş)';

  @override
  String get zakatCashBank => 'මුදල් / බැංකුව';

  @override
  String get zakatBusiness => 'ව්යාපාර';

  @override
  String get zakatInvestments => 'ආයෝජන';

  @override
  String get zakatWeightGrams => 'බර (g)';

  @override
  String get zakatPricePerGram => 'මිල/උ';

  @override
  String get zakatTotalAmount => 'මුලු වටිනාකම';

  @override
  String get zakatInventoryValue => 'ඉන්වෙන්ටරි වටිනාකම';

  @override
  String get zakatDebts => 'ණය';

  @override
  String get zakatTotal => 'මුළු';

  @override
  String get calculateZakat => 'සකාත් ගණනය කරන්න';

  @override
  String get nisabNotReached => 'නිසාබ් ළඟා වූයේ නැත. සකාත් අනිවාර්ය නොවේ.';

  @override
  String get totalZakat => 'සම්පූර්ණ සකාත්';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'නිසාබ්: $nisab • වත්කම්: $assets';
  }

  @override
  String get zakatGoldZakat => 'රන් සකාත්';

  @override
  String get zakatSilverZakat => 'රිදී සකාත්';

  @override
  String get zakatCashZakat => 'මුදල් සකාත්';

  @override
  String get zakatBusinessZakat => 'ව්යාපාර සකාත්';

  @override
  String get zakatInvestmentZakat => 'ආයෝජන සකාත්';

  @override
  String get chatbotGreeting =>
      'අස්සලාමු අලෙයිකුම්! මම ඔබේ ඉස්ලාමීය සහායකයා. යාච්ඤාව, උපවාසය, සකාත් හෝ ඕනෑම ඉස්ලාමීය මාතෘකාවක් ගැන මගෙන් විමසන්න.';

  @override
  String get chatbotLimitReached =>
      'දෛනික විමසුම් සීමාව ළඟා විය. අසීමිත සඳහා Premium වෙත උත්ශ්‍රේණි කරන්න.';

  @override
  String get chatbotErrorMsg =>
      'මට ප්‍රතිචාරයක් ජනනය කිරීමට නොහැකි විය. කරුණාකර නැවත උත්සාහ කරන්න.';

  @override
  String get chatbotOfflinePrompt =>
      'සත්‍යාපිත නොබැඳි ඉස්ලාමීය දැනුම පදනම තවමත් පාලනය වෙමින් පවතී. ඔබට දැන් නොබැඳි පසුබැසීම සබල කළ හැක, නමුත් එය මූලාශ්‍ර දත්ත කට්ටලය සූදානම් වන තෙක් සීමිත ආරක්ෂිත පණිවිඩ පමණක් පෙන්වයි.\n\nඔබ නොබැඳි පසුබැසීම සබල කිරීමට කැමතිද?';

  @override
  String get chatbotOfflineSwitched =>
      'නොබැඳි පසුබැසීම සබල කර ඇත. තහවුරු කළ දේශීය ඉස්ලාමීය පිළිතුරු තවමත් සූදානම් නැත.';

  @override
  String get chatbotOfflineDownloadLabel => 'Offline Fallback සබල කරන්න';

  @override
  String get downloadPreparing => 'බාගැනීම සූදානම් කරමින්...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'සූරා බාගනිමින් $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'මෙම පාරායනය සඳහා සියලුම සූරත දැනටමත් බාගත කර ඇත.';

  @override
  String get offlineQuranAudioPacks => 'නොබැඳි කුර්ආන් ශ්‍රව්‍ය ඇසුරුම්';

  @override
  String storedOnDeviceMb(String size) {
    return 'උපාංගයේ ගබඩා කර ඇත: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total සූරත බාගන්නා ලදී';
  }

  @override
  String get redownloadMissingRepair =>
      'අලුත්වැඩියා කිරීම / බාගත කිරීම අතුරුදහන්';

  @override
  String get downloadAction => 'බාගන්න';

  @override
  String get resumeDownload => 'බාගත කිරීම නැවත ආරම්භ කරන්න';

  @override
  String get deleteDownloadedFiles => 'බාගත කළ ගොනු මකන්න';

  @override
  String get downloadCancelling => 'අවලංගු කරමින්...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return '$reciter සඳහා බාගැනීම අවලංගු විය.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return '$reciter සඳහා බාගැනීම සම්පූර්ණයි.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return '$reciter සඳහා $failed අසාර්ථක සූරත් සමඟ බාගැනීම අවසන් විය ($downloaded/$total බාගත කර ඇත).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return '$reciter සඳහා නොබැඳි ගොනු මකා ඇත.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'සත්‍යාපිත කුර්ආන් ශ්‍රව්‍ය මූලාශ්‍ර දැන් නොමැත.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'සත්‍යාපිත කුර්ආන් ශ්‍රව්‍ය ඇසුරුම අසම්පූර්ණයි ($available/$total). වලාකුළු බීජ නැවුම් කර නැවත උත්සාහ කරන්න.';
  }

  @override
  String get chatbotHint => 'ප්‍රශ්නයක් අහන්න...';

  @override
  String get chatbotThinking => 'සිතමින්...';

  @override
  String get sukunMixerSubtitle => 'සොබාදහම සහ අල් කුර්ආනය මිශ්‍ර කරන්නා';

  @override
  String get audioPlayFailed => 'ශ්‍රව්‍ය නැවත ධාවනය අසාර්ථක විය';

  @override
  String get sukunNatureLabel => 'සුකුන් (ස්වභාවධර්මය)';

  @override
  String get sukunRainOfMercy => 'දයාවේ වැස්ස';

  @override
  String get sukunGardenOfPeace => 'සාමයේ උයන';

  @override
  String get sukunMidnightCalm => 'මධ්යම රාත්රිය සන්සුන්';

  @override
  String get sukunOceanTawheed => 'සාගර තව්හීද්';

  @override
  String get sukunUnavailableTitle => 'ශබ්ද දර්ශන නොමැත';

  @override
  String get sukunUnavailableBody =>
      'මෙම ගොඩනැගීමට තවමත් අවශ්‍ය සුකුන් ශබ්ද දර්ශන වත්කම් ඇතුළත් නොවේ.';

  @override
  String get prayerCompletion => 'යාච්ඤාව සම්පූර්ණ කිරීම';

  @override
  String get streaks => 'ඉරි';

  @override
  String get dayStreak => 'දින ස්ට්රීක්';

  @override
  String get bestStreak => 'හොඳම තීරුව';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'නොබැඳි පසුබැසීම';

  @override
  String get chatbotUseCloudAi => 'Cloud AI (Gemini) භාවිතා කරන්න';

  @override
  String get chatbotDownloadLocalAi => 'Offline Fallback සබල කරන්න';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count ඉතිරියි';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API වින්‍යාස කර නැත. සත්‍යාපිත නොබැඳි ඉස්ලාමීය මගපෙන්වීම තවමත් නොමැත.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] සත්‍යාපිත දේශීය ඉස්ලාමීය මගපෙන්වීම තවමත් නොමැත. මූලාශ්‍ර පිළිතුරු සඳහා Cloud AI වෙත මාරු වන්න.';

  @override
  String get mosques => 'මුස්ලිම් පල්ලි';

  @override
  String get halalFood => 'හලාල් ආහාර';

  @override
  String get placesSearchArea => 'මෙම ප්රදේශය සොයන්න';

  @override
  String get nearbyMosques => 'ආසන්න මුස්ලිම් පල්ලි';

  @override
  String get islamicSchools => 'ඉස්ලාමීය පාසල්';

  @override
  String placesFoundCount(String count) {
    return '$count හමු විය';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km දුරින්';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API දෝෂය: $statusCode';
  }

  @override
  String get placesNetworkError => 'ජාල දෝෂයකි. කරුණාකර නැවත උත්සාහ කරන්න.';

  @override
  String get placesLocationRequiredTitle => 'ස්ථානය අවශ්‍යයි';

  @override
  String get placesLocationRequiredBody =>
      'අවට ඇති මුස්ලිම් පල්ලි, හලාල් ආහාර සහ ඉස්ලාමීය පාසල් නිවැරදිව සෙවිය හැකි වන පරිදි පළමුව ස්ථානයක් සකසන්න.';

  @override
  String get placesMapTilesUnavailableTitle => 'සිතියම් ටයිල් නොමැත';

  @override
  String get placesMapTilesUnavailableBody =>
      'මෙම ගොඩනැගීම සඳහා සත්‍යාපිත සිතියම් ටයිල් මූලාශ්‍රයක් තවම වින්‍යාස කර නොමැත. අවට ස්ථාන තවමත් ඔබගේ සුරැකි ස්ථානයෙන් පූරණය කළ හැක.';

  @override
  String get placesDataSourceUnavailableTitle => 'ස්ථාන දත්ත නොමැත';

  @override
  String get placesDataSourceUnavailableBody =>
      'මෙම ගොඩනැගීම සඳහා සත්‍යාපිත ස්ථාන දත්ත අන්ත ලක්ෂ්‍යයක් තවම වින්‍යාස කර නොමැත. අවට සෙවීම සක්‍රීය කිරීමට පෙර PLACES_OVERPASS_API_URL අනුමත ප්‍රොක්සියක් හෝ සපයන්නෙකු ලෙස සකසන්න.';

  @override
  String get unknownPlaceName => 'නොදන්නා නම';

  @override
  String get islamicPlaceFallback => 'ඉස්ලාමීය ස්ථානය';

  @override
  String get asmaMeaning1 => 'ප්‍රතිලාභියා';

  @override
  String get asmaMeaning2 => 'දයාවන්ත';

  @override
  String get asmaMeaning3 => 'රජු / සදාකාලික ස්වාමියා';

  @override
  String get asmaMeaning4 => 'අති ශුද්ධ';

  @override
  String get asmaMeaning5 => 'සාමයේ උල්පත';

  @override
  String get asmaMeaning6 => 'ආරක්ෂාව දෙන්නා';

  @override
  String get asmaMeaning7 => 'The Guardian';

  @override
  String get asmaMeaning8 => 'වටිනා / බලවත්ම';

  @override
  String get asmaMeaning9 => 'The Compeller';

  @override
  String get asmaMeaning10 => 'ශ්‍රේෂ්ඨතම';

  @override
  String get asmaMeaning11 => 'මැවුම්කරු';

  @override
  String get asmaMeaning12 => 'The Maker of Order';

  @override
  String get asmaMeaning13 => 'අලංකාරයේ හැඩය';

  @override
  String get asmaMeaning14 => 'සමාව දෙන';

  @override
  String get asmaMeaning15 => 'යටපත් කරන්නා';

  @override
  String get asmaMeaning16 => 'සියල්ල දෙන තැනැත්තා';

  @override
  String get asmaMeaning17 => 'The Sustainer';

  @override
  String get asmaMeaning18 => 'ආරම්භක';

  @override
  String get asmaMeaning19 => 'සියල්ල දන්නා තැනැත්තා';

  @override
  String get asmaMeaning20 => 'The Constrictor';

  @override
  String get asmaMeaning21 => 'සහනය';

  @override
  String get asmaMeaning22 => 'අබේසර්';

  @override
  String get asmaMeaning23 => 'එක්සල්ටර්';

  @override
  String get asmaMeaning24 => 'ගෞරවය ප්‍රදානය කරන්නා';

  @override
  String get asmaMeaning25 => 'හිමිලීටර්';

  @override
  String get asmaMeaning26 => 'සියල්ල අසන්නා';

  @override
  String get asmaMeaning27 => 'සියල්ල බලන්න';

  @override
  String get asmaMeaning28 => 'විනිසුරුවරයා';

  @override
  String get asmaMeaning29 => 'ද සාධාරණ';

  @override
  String get asmaMeaning30 => 'සියුම් එක';

  @override
  String get asmaMeaning31 => 'සියල්ල දැනුවත්';

  @override
  String get asmaMeaning32 => 'ඉදිරිය';

  @override
  String get asmaMeaning33 => 'විශිෂ්ට';

  @override
  String get asmaMeaning34 => 'මහා සමාව දෙන්නා';

  @override
  String get asmaMeaning35 => 'ස්තුතිවන්තකමේ විපාක දෙන්නා';

  @override
  String get asmaMeaning36 => 'ඉහළම';

  @override
  String get asmaMeaning37 => 'ශ්‍රේෂ්ඨතම';

  @override
  String get asmaMeaning38 => 'සංරක්ෂණය කරන්නා';

  @override
  String get asmaMeaning39 => 'පෝෂක';

  @override
  String get asmaMeaning40 => 'ගණකාධිකාරී';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'ත්‍යාගශීලී';

  @override
  String get asmaMeaning43 => 'සෝදිසියෙන් සිටින තැනැත්තා';

  @override
  String get asmaMeaning44 => 'යාච්ඤාවට ප්‍රතිචාර දක්වන්නා';

  @override
  String get asmaMeaning45 => 'සියලු අවබෝධය';

  @override
  String get asmaMeaning46 => 'පරිපූර්ණ ප්‍රඥාවන්තයා';

  @override
  String get asmaMeaning47 => 'ආදරණීය තැනැත්තා';

  @override
  String get asmaMeaning48 => 'මහිමාන්විත එක';

  @override
  String get asmaMeaning49 => 'නැවත නැඟිටුවන්නා';

  @override
  String get asmaMeaning50 => 'සාක්ෂිකරු';

  @override
  String get asmaMeaning51 => 'සත්‍යය';

  @override
  String get asmaMeaning52 => 'සියල්ල ප්‍රමාණවත් භාරකරු';

  @override
  String get asmaMeaning53 => 'සියලු ශක්තියේ හිමිකරු';

  @override
  String get asmaMeaning54 => 'බලසම්පන්න';

  @override
  String get asmaMeaning55 => 'ආරක්ෂක';

  @override
  String get asmaMeaning56 => 'ප්‍රශංසා ලත්';

  @override
  String get asmaMeaning57 => 'ඇගයුම්කරු';

  @override
  String get asmaMeaning58 => 'ආරම්භකයා';

  @override
  String get asmaMeaning59 => 'The Restorer';

  @override
  String get asmaMeaning60 => 'ජීවය දෙන්නා';

  @override
  String get asmaMeaning61 => 'ජීවිතය ගන්නා';

  @override
  String get asmaMeaning62 => 'සදා ජීවමාන';

  @override
  String get asmaMeaning63 => 'ස්වයං යැපුම් පෝෂක';

  @override
  String get asmaMeaning64 => 'The Finder';

  @override
  String get asmaMeaning65 => 'The Glorious';

  @override
  String get asmaMeaning66 => 'එකම එක';

  @override
  String get asmaMeaning67 => 'එක';

  @override
  String get asmaMeaning68 => 'සියල්ලන් විසින් සොයන එක';

  @override
  String get asmaMeaning69 => 'බලවත්';

  @override
  String get asmaMeaning70 => 'සියලු බලයේ නිර්මාතෘ';

  @override
  String get asmaMeaning71 => 'Expediter';

  @override
  String get asmaMeaning72 => 'ප්‍රමාද කරන්නා';

  @override
  String get asmaMeaning73 => 'පළමු';

  @override
  String get asmaMeaning74 => 'අන්තිම';

  @override
  String get asmaMeaning75 => 'මැනිෆෙස්ට්';

  @override
  String get asmaMeaning76 => 'සැඟවුණු';

  @override
  String get asmaMeaning77 => 'ආණ්ඩුකාරවරයා';

  @override
  String get asmaMeaning78 => 'උත්තරීතර එක';

  @override
  String get asmaMeaning79 => 'යහපත කරන්නා';

  @override
  String get asmaMeaning80 => 'පසුතැවිල්ලට මගපෙන්වීම';

  @override
  String get asmaMeaning81 => 'The Avenger';

  @override
  String get asmaMeaning82 => 'සමාව දෙන්නා';

  @override
  String get asmaMeaning83 => 'ද ක්ලෙමන්ට්';

  @override
  String get asmaMeaning84 => 'සියල්ලෙහි හිමිකරු / පරමාධිපත්‍යය';

  @override
  String get asmaMeaning85 => 'මහිමාන්විත හා ත්‍යාගය හිමිකරු';

  @override
  String get asmaMeaning86 => 'සාධාරණ එක';

  @override
  String get asmaMeaning87 => 'එකතු කරන්නා';

  @override
  String get asmaMeaning88 => 'ධනවත් එකා';

  @override
  String get asmaMeaning89 => 'The Enricher';

  @override
  String get asmaMeaning90 => 'හානි වළක්වන්න';

  @override
  String get asmaMeaning91 => 'හානියක් ගෙන එන්නා';

  @override
  String get asmaMeaning92 => 'ප්‍රතිලාභ ප්‍රදානය කරන්නා';

  @override
  String get asmaMeaning93 => 'ආලෝකය';

  @override
  String get asmaMeaning94 => 'මඟ පෙන්වන්නා';

  @override
  String get asmaMeaning95 => 'ආරම්භකයා';

  @override
  String get asmaMeaning96 => 'සදාකාලික එක';

  @override
  String get asmaMeaning97 => 'උරුමය';

  @override
  String get asmaMeaning98 => 'වඩාත්ම ධර්මිෂ්ඨ මාර්ගෝපදේශකය';

  @override
  String get asmaMeaning99 => 'රෝගියා';
}
