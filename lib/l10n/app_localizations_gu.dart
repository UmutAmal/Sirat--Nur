// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Gujarati (`gu`).
class AppLocalizationsGu extends AppLocalizations {
  AppLocalizationsGu([String locale = 'gu']) : super(locale);

  @override
  String get appTitle => 'અલ્લાહનો માર્ગ';

  @override
  String get splashTagline => 'પ્રકાશનો ઇસ્લામિક માર્ગ';

  @override
  String get home => 'ઘર';

  @override
  String get quran => 'કુરાન';

  @override
  String get qibla => 'કિબલા';

  @override
  String get zikr => 'ઝિક્ર';

  @override
  String get calendar => 'કેલેન્ડર';

  @override
  String get settings => 'સેટિંગ્સ';

  @override
  String get nextPrayer => 'આગામી પ્રાર્થના';

  @override
  String get prayerTimes => 'પ્રાર્થનાના સમય';

  @override
  String get continueReading => 'વાંચન ચાલુ રાખો';

  @override
  String get getLifetimePro => 'આજીવન પ્રો મેળવો';

  @override
  String get unlockTajweed => 'તાજવીદ અને અદ્યતન સુવિધાઓને અનલૉક કરો';

  @override
  String get prayerCalculation => 'પ્રાર્થના ગણતરી';

  @override
  String get method => 'ગણતરી પદ્ધતિ';

  @override
  String get madhab => 'Asr ન્યાયિક પદ્ધતિ';

  @override
  String get surahs => 'સુરાઓ';

  @override
  String get ayahs => 'અયહાસ';

  @override
  String get fajr => 'ફજર';

  @override
  String get sunrise => 'સૂર્યોદય';

  @override
  String get dhuhr => 'ધુહર';

  @override
  String get asr => 'અસ્ર';

  @override
  String get maghrib => 'મગરીબ';

  @override
  String get isha => 'ઈશા';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName નો સમય';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '$prayerName પ્રાર્થના કરવાનો આ સમય છે.';
  }

  @override
  String get dataStorage => 'ડેટા અને સ્ટોરેજ';

  @override
  String get clearCache => 'કેશ સાફ કરો';

  @override
  String get cacheClearedSuccess => 'કેશ સફળતાપૂર્વક સાફ કરી';

  @override
  String get location => 'સ્થાન';

  @override
  String get language => 'ભાષા';

  @override
  String get selectLanguage => 'ભાષા પસંદ કરો';

  @override
  String get searchLanguage => '180+ ભાષાઓ શોધો...';

  @override
  String get systemDefault => 'સિસ્ટમ ડિફોલ્ટ';

  @override
  String get currentLocation => 'વર્તમાન સ્થાન (GPS)';

  @override
  String get locationServiceDisabled => 'સ્થાન સેવા અક્ષમ છે.';

  @override
  String get locationPermissionDenied => 'સ્થાનની પરવાનગી નકારી.';

  @override
  String get locationDetectionFailed =>
      'તમારું સ્થાન શોધી શકાયું નથી. કૃપા કરીને મેન્યુઅલી શહેર પસંદ કરો અથવા ફરી પ્રયાસ કરો.';

  @override
  String citiesCount(String count) {
    return '$count શહેરો';
  }

  @override
  String get search => 'શોધો';

  @override
  String get searchHint => 'શોધો...';

  @override
  String get noResults => 'કોઈ પરિણામો મળ્યા નથી';

  @override
  String get loading => 'લોડ કરી રહ્યું છે...';

  @override
  String get error => 'ભૂલ';

  @override
  String get appErrorOccurred => 'એક ભૂલ આવી';

  @override
  String get appUnknownError => 'અજાણી ભૂલ';

  @override
  String get quranLoadFailed =>
      'કુરાન સામગ્રી લોડ કરી શકાઈ નથી. કૃપા કરીને ફરી પ્રયાસ કરો.';

  @override
  String get retry => 'ફરી પ્રયાસ કરો';

  @override
  String get refreshAction => 'તાજું કરો';

  @override
  String get cancel => 'રદ કરો';

  @override
  String get save => 'સાચવો';

  @override
  String get delete => 'કાઢી નાખો';

  @override
  String get edit => 'સંપાદિત કરો';

  @override
  String get close => 'બંધ કરો';

  @override
  String get ok => 'ઠીક છે';

  @override
  String get yes => 'હા';

  @override
  String get no => 'ના';

  @override
  String get surah => 'સુરા';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'જુઝ';

  @override
  String get page => 'પૃષ્ઠ';

  @override
  String get reading => 'વાંચન';

  @override
  String get recitation => 'પઠન';

  @override
  String get translation => 'અનુવાદ';

  @override
  String get tafsir => 'તફસીર';

  @override
  String get tafsirLoading => 'તફસીર લોડ કરી રહ્યું છે...';

  @override
  String get tafsirSourceLabel => 'તફસીર સ્ત્રોત';

  @override
  String get tafsirNoSurahFound => 'આ સૂરા માટે કોઈ તફસીર મળી નથી.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'આય $ayah માટે કોઈ તફસીર મળી નથી.';
  }

  @override
  String get tafsirLoadFailed => 'તફસીર લોડ કરી શકાયું નથી.';

  @override
  String get tafsirNoTextForAyah => 'આ આયત માટે કોઈ તફસીર લખાણ નથી.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'તફસીર ડાઉનલોડ કરી રહ્યું છે $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'તફસીર લોડ કરી રહ્યું છે $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'તફસીર સ્ત્રોતે HTTP $statusCode ભૂલ પરત કરી.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'પસંદ કરેલ તફસીર સ્ત્રોતે કોઈ એન્ટ્રી પાછી આપી નથી.';

  @override
  String get bookmarks => 'બુકમાર્ક્સ';

  @override
  String get addBookmark => 'બુકમાર્ક ઉમેરો';

  @override
  String get removeBookmark => 'બુકમાર્ક દૂર કરો';

  @override
  String get lastRead => 'છેલ્લું વાંચ્યું';

  @override
  String get dailyZikr => 'દૈનિક ઝિક્ર';

  @override
  String get duaMeaning1 =>
      'અન્ય લોકો પ્રાર્થના કરે છે, \'અમારા ભગવાન, અમને આ દુનિયા અને પરલોકમાં સારું આપો, અને અમને અગ્નિના ત્રાસથી બચાવો.\'';

  @override
  String get duaMeaning2 =>
      'ભગવાન કોઈ પણ આત્માને તે સહન કરી શકે તે કરતાં વધુ બોજ આપતા નથી: દરેક વ્યક્તિએ જે કંઈ સારું કર્યું છે તે મેળવે છે, અને તેના ખરાબને ભોગવે છે - \'પ્રભુ, જો આપણે ભૂલી જઈએ અથવા ભૂલો કરીએ તો અમને દોષ ન આપો. હે પ્રભુ, અમારા પર બોજો ન નાખો જેમ તમે અમારા પહેલાના લોકો પર બોજ નાખ્યો હતો. પ્રભુ, અમારી પાસે સહન કરવાની શક્તિ છે તેના કરતાં વધુ બોજ અમારા પર ન નાખો. અમને માફ કરો, અમને માફ કરો અને અમારા પર દયા કરો. તમે અમારા રક્ષક છો, તેથી અવિશ્વાસીઓ સામે અમારી મદદ કરો.';

  @override
  String get duaMeaning3 =>
      '\'અમારા પ્રભુ, તમે અમને માર્ગદર્શન આપ્યા પછી અમારા હૃદયને વિચલિત ન થવા દો. અમને તમારી દયા આપો: તમે સદા આપનાર છો.';

  @override
  String get duaMeaning4 =>
      'ભગવાન, હું અને મારા સંતાનો પ્રાર્થના ચાલુ રાખીએ તે આપો. અમારા ભગવાન, મારી વિનંતી સ્વીકારો.';

  @override
  String get duaMeaning5 =>
      'અને તેમની તરફ નમ્રતાથી તમારી પાંખ નીચી કરો અને કહો, \'પ્રભુ, તેમના પર દયા કરો, જેમ તેઓ નાની હતી ત્યારે મારી સંભાળ રાખતા હતા.\'';

  @override
  String get duaMeaning6 =>
      'ભગવાન, જે ખરેખર નિયંત્રણમાં છે તે ઉચ્ચ થાઓ. [પ્રબોધક], સાક્ષાત્કાર પૂર્ણ થાય તે પહેલાં પાઠ કરવા માટે ઉતાવળ કરશો નહીં, પરંતુ કહો, \'પ્રભુ, મને જ્ઞાનમાં વધારો કરો!\'';

  @override
  String get duaMeaning7 =>
      '[પ્રોફેટ] કહો, \'પ્રભુ, માફ કરો અને દયા કરો: તમે બધામાં સૌથી વધુ દયાળુ છો.\'';

  @override
  String get duaMeaning8 =>
      'જેઓ પ્રાર્થના કરે છે, \'અમારા ભગવાન, અમને અમારા જીવનસાથી અને સંતાનોમાં આનંદ આપો. જેઓ તમારા વિશે જાણે છે તેમના માટે અમને સારા ઉદાહરણ બનાવો.';

  @override
  String get morningZikr => 'સવારનો ઝિક્ર';

  @override
  String get eveningZikr => 'સાંજે ઝિક્ર';

  @override
  String get tasbih => 'તસ્બીહ';

  @override
  String get ahkab => 'અહકામ';

  @override
  String get masaail => 'મસાઇલ';

  @override
  String get hadith => 'હદીસ';

  @override
  String get hadithCollection => 'હદીસ સંગ્રહ';

  @override
  String get hadithBooks => 'હદીસ પુસ્તકો';

  @override
  String get searchHadith => 'હદીસ શોધો';

  @override
  String get asmaulHusna => 'અસમા-ઉલ-હુસ્ના';

  @override
  String get namesOfAllah => 'અલ્લાહના નામો';

  @override
  String get liveTv => 'લાઈવ ટીવી';

  @override
  String get watchLive => 'લાઈવ જુઓ';

  @override
  String get streamError => 'સ્ટ્રીમ ભૂલ';

  @override
  String get reload => 'ફરીથી લોડ કરો';

  @override
  String get openInYoutube => 'YouTube માં ખોલો';

  @override
  String get ibadahTracker => 'Ibadah ટ્રેકર';

  @override
  String get fasting => 'ઉપવાસ';

  @override
  String get quranReading => 'કુરાન વાંચન';

  @override
  String get prayers => 'પ્રાર્થનાઓ';

  @override
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '${hours}h ${minutes}m';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '$minutesમિ';
  }

  @override
  String get prayerRemainingUnavailable => '--';

  @override
  String get dhikrCount => 'ધિકર ગણતરી';

  @override
  String get weeklyProgress => 'સાપ્તાહિક પ્રગતિ';

  @override
  String get monthlyProgress => 'માસિક પ્રગતિ';

  @override
  String get statistics => 'આંકડા';

  @override
  String get hijriCalendar => 'હિજરી કેલેન્ડર';

  @override
  String get gregorianCalendar => 'ગ્રેગોરિયન કેલેન્ડર';

  @override
  String get today => 'આજે';

  @override
  String get tomorrow => 'કાલે';

  @override
  String get yesterday => 'ગઈકાલે';

  @override
  String get specialDays => 'ખાસ દિવસો';

  @override
  String get ramadan => 'રમઝાન';

  @override
  String get eidAlFitr => 'ઈદ અલ-ફિત્ર';

  @override
  String get eidAlAdha => 'ઈદ અલ-અધા';

  @override
  String get islamicNewYear => 'ઇસ્લામિક નવું વર્ષ';

  @override
  String get mawlidAnNabi => 'મૌલિદ-અન-નબી';

  @override
  String get specialDayDateRamadanStart => '1 રમઝાન';

  @override
  String get specialDayDateLaylatAlQadr => '27 રમઝાન';

  @override
  String get specialDayDateEidAlFitr => '1 શવ્વાલ';

  @override
  String get specialDayDateEidAlAdha => '10 ધુલ હિજ્જા';

  @override
  String get specialDayDateIslamicNewYear => '1 મોહરમ';

  @override
  String get specialDayDateMawlidAnNabi => '12 રબી અલ-અવ્વલ';

  @override
  String get laylatAlQadr => 'લયલાત અલ-કદર';

  @override
  String get qiblaDirection => 'કિબલા દિશા';

  @override
  String get compass => 'હોકાયંત્ર';

  @override
  String get degrees => 'ડિગ્રી';

  @override
  String get north => 'ઉત્તર';

  @override
  String get qiblaFound => 'કિબલા મળી!';

  @override
  String get turnDevice => 'તમારા ઉપકરણને કિબલા તરફ વળો';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'કંપાસ ભૂલ: $error';
  }

  @override
  String get qiblaSensorUnavailable => 'આ ઉપકરણ પર કંપાસ સેન્સર અનુપલબ્ધ છે.';

  @override
  String get qiblaLocationRequiredTitle => 'કિબલા માટે જરૂરી સ્થાન';

  @override
  String get qiblaLocationRequiredBody =>
      'કિબલા હોકાયંત્રનો ઉપયોગ કરતા પહેલા તમારું વાસ્તવિક સ્થાન સેટ કરો જેથી દિશાની ચોક્કસ ગણતરી કરી શકાય.';

  @override
  String get adhanNotificationChannelName => 'અધાન સૂચનાઓ';

  @override
  String get adhanNotificationChannelDescription =>
      'અદન અવાજ સાથે પ્રાર્થના સમય ચેતવણીઓ.';

  @override
  String get notifications => 'સૂચનાઓ';

  @override
  String get prayerNotifications => 'પ્રાર્થના સૂચનાઓ';

  @override
  String get enableNotifications => 'સૂચનાઓ સક્ષમ કરો';

  @override
  String get notificationTime => 'સૂચના સમય';

  @override
  String get beforePrayer => 'પ્રાર્થના પહેલા મિનિટો';

  @override
  String get theme => 'થીમ';

  @override
  String get lightMode => 'લાઇટ મોડ';

  @override
  String get darkMode => 'ડાર્ક મોડ';

  @override
  String get systemTheme => 'સિસ્ટમ થીમ';

  @override
  String get about => 'વિશે';

  @override
  String get version => 'સંસ્કરણ';

  @override
  String get privacyPolicy => 'ગોપનીયતા નીતિ';

  @override
  String get termsOfService => 'સેવાની શરતો';

  @override
  String get contactUs => 'અમારો સંપર્ક કરો';

  @override
  String get rateApp => 'એપ્લિકેશનને રેટ કરો';

  @override
  String get shareApp => 'એપ શેર કરો';

  @override
  String shareAppMessage(String appName, String url) {
    return '$appName તપાસો: અંતિમ ઇસ્લામિક જીવનશૈલી એપ્લિકેશન! $url';
  }

  @override
  String get downloadManager => 'મેનેજર ડાઉનલોડ કરો';

  @override
  String get downloads => 'ડાઉનલોડ્સ';

  @override
  String get downloading => 'ડાઉનલોડ કરી રહ્યું છે...';

  @override
  String get downloadComplete => 'ડાઉનલોડ પૂર્ણ';

  @override
  String get downloadFailed => 'ડાઉનલોડ નિષ્ફળ થયું';

  @override
  String get offlineMode => 'ઑફલાઇન મોડ';

  @override
  String get noInternet => 'ઇન્ટરનેટ કનેક્શન નથી';

  @override
  String get checkConnection => 'કૃપા કરીને તમારું કનેક્શન તપાસો';

  @override
  String get premium => 'પ્રીમિયમ';

  @override
  String get upgradeToPro => 'પ્રો પર અપગ્રેડ કરો';

  @override
  String get proFeatures => 'પ્રો ફીચર્સ';

  @override
  String get removeAds => 'જાહેરાતો દૂર કરો';

  @override
  String get unlockAll => 'બધી સામગ્રીને અનલૉક કરો';

  @override
  String get exclusiveContent => 'વિશિષ્ટ સામગ્રી';

  @override
  String get welcome => 'સ્વાગત છે';

  @override
  String get getStarted => 'પ્રારંભ કરો';

  @override
  String get skip => 'છોડો';

  @override
  String get next => 'આગળ';

  @override
  String get done => 'થઈ ગયું';

  @override
  String get onboarding1Title => 'અલ્લાહના માર્ગમાં આપનું સ્વાગત છે';

  @override
  String get onboarding1Desc =>
      'પ્રાર્થનાના સમય, કુરાન અને વધુ માટે તમારી સંપૂર્ણ ઇસ્લામિક સાથી એપ્લિકેશન';

  @override
  String get onboarding2Title => 'પ્રાર્થનાના સમય';

  @override
  String get onboarding2Desc => 'તમારા સ્થાનના આધારે પ્રાર્થનાના ચોક્કસ સમય';

  @override
  String get onboarding3Title => 'કુરાન અને વધુ';

  @override
  String get onboarding3Desc =>
      'કુરાન વાંચો, તમારા વાંચનને ટ્રૅક કરો અને ઇસ્લામિક સામગ્રીનું અન્વેષણ કરો';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'કાઉન્ટર રીસેટ કરો';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'લક્ષ્ય સંખ્યા: $target';
  }

  @override
  String get tapToCount => 'ગણવા માટે ટૅપ કરો';

  @override
  String get zikrCompletedMashAllah => 'પૂર્ણ! માશાઅલ્લાહ';

  @override
  String get zikrMeaningSubhanAllah => 'અલ્લાહ દરેક અપૂર્ણતાથી ઉપર છે.';

  @override
  String get zikrMeaningAlhamdulillah => 'તમામ વખાણ અલ્લાહ માટે છે.';

  @override
  String get zikrMeaningAllahuAkbar => 'અલ્લાહ સૌથી મહાન છે.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'અલ્લાહ સિવાય કોઈ દેવ નથી.';

  @override
  String get zikrMeaningAstaghfirullah => 'હું અલ્લાહની માફી માંગું છું.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'અલ્લાહ સિવાય કોઈ શક્તિ અને શક્તિ નથી.';

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
  String get dailyProgress => 'દૈનિક પ્રગતિ';

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
  String get recheckPremium => 'પ્રીમિયમ સબ્સ્ક્રિપ્શન સ્થિતિને ફરીથી તપાસો';

  @override
  String get syncStore =>
      'તમારા પ્રીમિયમ સબ્સ્ક્રિપ્શનની પુષ્ટિ કરવા માટે એપ સ્ટોર સાથે સિંક કરો.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'પ્રીમિયમ સબ્સ્ક્રિપ્શન ચકાસાયેલ.';

  @override
  String get premiumNotFound => 'પ્રીમિયમ સબ્સ્ક્રિપ્શન મળ્યું નથી.';

  @override
  String premiumRefreshError(Object error) {
    return 'પ્રીમિયમ સબ્સ્ક્રિપ્શન સ્ટેટસ રિફ્રેશ કરી શકાયું નથી: $error';
  }

  @override
  String get offlineDownloadManager => 'ઑફલાઇન ડાઉનલોડ મેનેજર';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'આંતરિક ઉપકરણ સ્ટોરેજ ખાલી કરો.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'કુરાન ડેટાબેઝ તપાસી રહ્યું છે...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'કુરાન ડેટાબેઝ સ્થિતિ';

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
  String get audioVoice => 'ઑડિયો વૉઇસ';

  @override
  String get audioVoiceMisharyAlafasy => 'પુરૂષ (મિશરી અલાફસી)';

  @override
  String get audioVoiceAbdulBaset => 'પુરૂષ (અબ્દુલબેસેટ)';

  @override
  String get audioVoiceSudais => 'પુરુષ (સુદાઈ)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'કિબલા કેલિબ્રેશન';

  @override
  String get compassSmoothing => 'હોકાયંત્ર સ્મૂથિંગ';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'કેલિબ્રેશન ઓફસેટ';

  @override
  String currentOffset(Object offset) {
    return 'વર્તમાન: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'જો તમારા હોકાયંત્રને મેન્યુઅલ કરેક્શનની જરૂર હોય તો એડજસ્ટ કરો. હકારાત્મક મૂલ્યો ઘડિયાળની દિશામાં ફરે છે.';

  @override
  String get apply => 'ફેરફારો લાગુ કરો';

  @override
  String get resetOnboarding => 'પ્રસ્તાવના સેટઅપ રીસેટ કરો';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'ડાયગ્નોસ્ટિક્સ';

  @override
  String get diagnosticsNotSet => 'સેટ નથી';

  @override
  String get diagnosticsPrayerProfile => 'પ્રાર્થના પ્રોફાઇલ';

  @override
  String get diagnosticsPrayerSource => 'પ્રાર્થના સત્તાધિકારી';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'મેન્યુઅલ કસ્ટમ એંગલ (કોઈ સંસ્થાકીય સ્ત્રોત નથી)';

  @override
  String get diagnosticsCloudDriven => 'મેઘ સંચાલિત';

  @override
  String get diagnosticsAdhanAudioAssets => 'અધાન ઑડિયો અસ્કયામતો';

  @override
  String get diagnosticsUiAudioAssets => 'UI ઑડિઓ અસ્કયામતો';

  @override
  String get diagnosticsQuranAudioAssets => 'કુરાન ઓડિયો અસ્કયામતો';

  @override
  String get diagnosticsAudioAssets => 'ઑડિયો અસ્કયામતો';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count ફાઇલો';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'મેનિફેસ્ટ વાંચન નિષ્ફળ થયું: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'સ્થાનિકીકરણ લોકેલ';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count સમર્થિત';
  }

  @override
  String get diagnosticsQuranDataset => 'કુરાન ડેટાસેટ';

  @override
  String get diagnosticsQuranSurahs => 'કુરાન સુરાઓ';

  @override
  String get diagnosticsQuranAyahs => 'કુરાન આયહ';

  @override
  String get diagnosticsQuranJuzMetadata => 'કુરાન જુઝ મેટાડેટા';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'સુપાબેઝમાં મેઘ કોષ્ટકો ખૂટે છે; બંડલ ફોલબેક સક્રિય';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'મેઘ તપાસ નિષ્ફળ: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'ક્લાઉડ જુઝ મેટાડેટા ખૂટે છે; બંડલ માળખાકીય ફોલબેક સક્રિય';

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
      'માપાંકન જરૂરી. ઉપકરણને આકૃતિ-8 માં ફેરવો.';

  @override
  String get dailyVerse => 'દૈનિક શ્લોક';

  @override
  String get todaysIbadah => 'આજની ઇબાદાહ';

  @override
  String get quickAccess => 'ઝડપી ઍક્સેસ';

  @override
  String get assistant => 'મદદનીશ';

  @override
  String get places => 'સ્થાનો';

  @override
  String get library => 'પુસ્તકાલય';

  @override
  String get analytics => 'એનાલિટિક્સ';

  @override
  String get dailyDuas => 'દૈનિક દુઆ';

  @override
  String essentialDuas(String count) {
    return '$count આવશ્યક દુઆઓ';
  }

  @override
  String get duaUnavailableTitle => 'ચકાસાયેલ દુઆઓ હજી ઉપલબ્ધ નથી';

  @override
  String get duaUnavailableBody =>
      'ચકાસાયેલ દૈનિક દુઆઓ હજુ સુધી આ ઉપકરણ સાથે સમન્વયિત કરવામાં આવી નથી. વણચકાસાયેલ ફોલબેકને બદલે સોર્સ્ડ ડ્યુઆસ લોડ કરવા માટે ક્લાઉડ સ્ત્રોત સાથે કનેક્ટ કરો.';

  @override
  String get duaCategoryQuranic => 'કુરાની દુઆ';

  @override
  String get duaCategoryMorningEvening => 'સવાર અને સાંજ';

  @override
  String get duaCategoryTasbih => 'તસ્બીહ';

  @override
  String get duaCategoryProtection => 'રક્ષણ';

  @override
  String get duaCategoryBeginning => 'શરૂઆત';

  @override
  String get duaCategorySleep => 'ઊંઘ';

  @override
  String get duaCategoryFoodDrink => 'ખોરાક અને પીણું';

  @override
  String get duaCategoryForgiveness => 'ક્ષમા';

  @override
  String get duaCategoryHome => 'ઘર';

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
  String get islamicEducation => 'ઇસ્લામિક શિક્ષણ';

  @override
  String get sukunAudioTitle => 'સુકુન સાઉન્ડસ્કેપ્સ';

  @override
  String get hadithCollections => 'હદીસ સંગ્રહ';

  @override
  String get hadithSourcePending => 'ચકાસાયેલ સ્રોત બાકી છે';

  @override
  String get hadithUnavailableTitle => 'ચકાસાયેલ હદીસ સંગ્રહ હજુ ઉપલબ્ધ નથી';

  @override
  String get hadithUnavailableBody =>
      'આ બિલ્ડ હજુ પણ વણચકાસાયેલ બાહ્ય હદીસ ફીડ પર આધાર રાખે છે. જ્યાં સુધી સ્રોત ડેટાસેટ સમન્વયિત ન થાય ત્યાં સુધી હદીસ બ્રાઉઝિંગ અક્ષમ રહે છે.';

  @override
  String get paywallUnlockAll =>
      'તમારી આધ્યાત્મિક યાત્રા માટે તમામ સુવિધાઓને અનલૉક કરો';

  @override
  String get premiumProductUnavailable =>
      'પ્રીમિયમ ઉત્પાદન અત્યારે ઉપલબ્ધ નથી. કૃપા કરીને પછીથી ફરી પ્રયાસ કરો.';

  @override
  String get premiumPurchaseFailed =>
      'ખરીદી પૂર્ણ કરી શકાઈ નથી. કૃપા કરીને ફરી પ્રયાસ કરો.';

  @override
  String get paywallFeature1Title => 'ન્યુરલ આસિસ્ટન્ટ પ્લસ';

  @override
  String get paywallFeature1Desc => 'અમર્યાદિત AI સંચાલિત Q&A';

  @override
  String get paywallFeature2Title => 'અમર્યાદિત ઑફલાઇન';

  @override
  String get paywallFeature2Desc => 'તમામ પાઠો ડાઉનલોડ કરો';

  @override
  String get paywallFeature3Title => 'વિશિષ્ટ ડિઝાઇન્સ';

  @override
  String get paywallFeature3Desc => 'પ્રીમિયમ થીમ્સ અને ફોન્ટ્સ';

  @override
  String get paywallFeature4Title => 'જાહેરાત-મુક્ત';

  @override
  String get paywallFeature4Desc => 'શૂન્ય જાહેરાતો';

  @override
  String get paywallGetAccess => 'આજીવન ઍક્સેસ મેળવો - \$1.00';

  @override
  String get restorePurchases => 'ખરીદીઓ પુનઃસ્થાપિત કરો';

  @override
  String get zakatCalculator => 'જકાત કેલ્ક્યુલેટર';

  @override
  String get zakatGold => 'સોનું (Altın)';

  @override
  String get zakatSilver => 'ચાંદી (Gümüş)';

  @override
  String get zakatCashBank => 'રોકડ / બેંક';

  @override
  String get zakatBusiness => 'વ્યાપાર';

  @override
  String get zakatInvestments => 'રોકાણો';

  @override
  String get zakatWeightGrams => 'વજન (g)';

  @override
  String get zakatPricePerGram => 'કિંમત/જી';

  @override
  String get zakatTotalAmount => 'કુલ રકમ';

  @override
  String get zakatInventoryValue => 'ઇન્વેન્ટરી મૂલ્ય';

  @override
  String get zakatDebts => 'દેવું';

  @override
  String get zakatTotal => 'કુલ';

  @override
  String get calculateZakat => 'જકાતની ગણતરી કરો';

  @override
  String get nisabNotReached => 'નિસાબ પહોંચી નથી. જકાત ફરજીયાત નથી.';

  @override
  String get totalZakat => 'કુલ જકાત';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'નિસાબ: $nisab • અસ્કયામતો: $assets';
  }

  @override
  String get zakatGoldZakat => 'સોનાની જકાત';

  @override
  String get zakatSilverZakat => 'ચાંદીની જકાત';

  @override
  String get zakatCashZakat => 'રોકડ જકાત';

  @override
  String get zakatBusinessZakat => 'વ્યવસાય જકાત';

  @override
  String get zakatInvestmentZakat => 'રોકાણ જકાત';

  @override
  String get chatbotGreeting =>
      'અસલામુ અલયકુમ! હું તમારો ઇસ્લામિક સહાયક છું. મને પ્રાર્થના, ઉપવાસ, જકાત અથવા કોઈપણ ઇસ્લામિક વિષય વિશે પૂછો.';

  @override
  String get chatbotLimitReached =>
      'દૈનિક ક્વેરી મર્યાદા પહોંચી. અમર્યાદિત માટે પ્રીમિયમ પર અપગ્રેડ કરો.';

  @override
  String get chatbotErrorMsg =>
      'હું પ્રતિભાવ જનરેટ કરી શક્યો નથી. કૃપા કરીને ફરી પ્રયાસ કરો.';

  @override
  String get chatbotOfflinePrompt =>
      'ચકાસાયેલ ઑફલાઇન ઇસ્લામિક જ્ઞાન આધાર હજુ પણ ક્યુરેટ કરવામાં આવી રહ્યો છે. તમે હમણાં ઑફલાઇન ફૉલબૅકને સક્ષમ કરી શકો છો, પરંતુ જ્યાં સુધી સ્રોત ડેટાસેટ તૈયાર ન થાય ત્યાં સુધી તે મર્યાદિત સલામત સંદેશાઓ જ બતાવશે.\n\nશું તમે ઑફલાઇન ફોલબેક સક્ષમ કરવા માંગો છો?';

  @override
  String get chatbotOfflineSwitched =>
      'ઑફલાઇન ફૉલબૅક સક્ષમ. ચકાસાયેલ સ્થાનિક ઇસ્લામિક જવાબો હજી તૈયાર નથી.';

  @override
  String get chatbotOfflineDownloadLabel => 'ઑફલાઇન ફૉલબૅક સક્ષમ કરો';

  @override
  String get downloadPreparing => 'ડાઉનલોડની તૈયારી કરી રહ્યાં છીએ...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'સુરાહ ડાઉનલોડ કરી રહ્યું છે $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'આ પઠન કરનાર માટે બધી સુરાઓ પહેલાથી જ ડાઉનલોડ કરેલ છે.';

  @override
  String get offlineQuranAudioPacks => 'ઑફલાઇન કુરાન ઑડિયો પૅક્સ';

  @override
  String storedOnDeviceMb(String size) {
    return 'ઉપકરણ પર સંગ્રહિત: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total સુરાઓ ડાઉનલોડ કરી';
  }

  @override
  String get redownloadMissingRepair => 'સમારકામ / ડાઉનલોડ ખૂટે છે';

  @override
  String get downloadAction => 'ડાઉનલોડ કરો';

  @override
  String get resumeDownload => 'ડાઉનલોડ ફરી શરૂ કરો';

  @override
  String get deleteDownloadedFiles => 'ડાઉનલોડ કરેલી ફાઇલો કાઢી નાખો';

  @override
  String get downloadCancelling => 'રદ કરી રહ્યું છે...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return '$reciter માટે ડાઉનલોડ રદ કર્યું.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return '$reciter માટે ડાઉનલોડ પૂર્ણ થયું.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return '$reciter માટે $failed નિષ્ફળ સૂરા સાથે ડાઉનલોડ સમાપ્ત ($downloaded/$total ડાઉનલોડ).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return '$reciter માટે ઑફલાઇન ફાઇલો કાઢી નાખી.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'ચકાસાયેલ કુરાન ઓડિયો સ્ત્રોતો અત્યારે અનુપલબ્ધ છે.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'ચકાસાયેલ કુરાન ઓડિયો પેક અપૂર્ણ છે ($available/$total). ક્લાઉડ સીડ રિફ્રેશ કરો અને ફરી પ્રયાસ કરો.';
  }

  @override
  String get chatbotHint => 'એક પ્રશ્ન પૂછો...';

  @override
  String get chatbotThinking => 'વિચારી રહ્યા છીએ...';

  @override
  String get sukunMixerSubtitle => 'કુદરત અને કુરાન મિક્સર';

  @override
  String get audioPlayFailed => 'ઑડિઓ પ્લેબેક નિષ્ફળ થયું';

  @override
  String get sukunNatureLabel => 'સુકુન (પ્રકૃતિ)';

  @override
  String get sukunRainOfMercy => 'દયાનો વરસાદ';

  @override
  String get sukunGardenOfPeace => 'ગાર્ડન ઓફ પીસ';

  @override
  String get sukunMidnightCalm => 'મધ્યરાત્રિ શાંત';

  @override
  String get sukunOceanTawheed => 'મહાસાગર તૌહીદ';

  @override
  String get sukunUnavailableTitle => 'સાઉન્ડસ્કેપ અનુપલબ્ધ';

  @override
  String get sukunUnavailableBody =>
      'આ બિલ્ડમાં હજુ સુધી જરૂરી સુકુન સાઉન્ડસ્કેપ એસેટનો સમાવેશ થતો નથી.';

  @override
  String get prayerCompletion => 'પ્રાર્થના પૂર્ણ';

  @override
  String get streaks => 'છટાઓ';

  @override
  String get dayStreak => 'દિવસનો દોર';

  @override
  String get bestStreak => 'શ્રેષ્ઠ દોર';

  @override
  String get chatbotCloudAiLabel => 'ક્લાઉડ AI';

  @override
  String get chatbotLocalAiLabel => 'ઑફલાઇન ફોલબેક';

  @override
  String get chatbotUseCloudAi => 'ક્લાઉડ AI (Gemini) નો ઉપયોગ કરો';

  @override
  String get chatbotDownloadLocalAi => 'ઑફલાઇન ફૉલબૅક સક્ષમ કરો';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count બાકી';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API ગોઠવેલ નથી. ચકાસાયેલ ઑફલાઇન ઇસ્લામિક માર્ગદર્શન હજી ઉપલબ્ધ નથી.';

  @override
  String get chatbotLocalNoInfo =>
      '[ઓફલાઇન] ચકાસાયેલ સ્થાનિક ઇસ્લામિક માર્ગદર્શન હજી ઉપલબ્ધ નથી. સોર્સ કરેલા જવાબો માટે Cloud AI પર સ્વિચ કરો.';

  @override
  String get mosques => 'મસ્જિદો';

  @override
  String get halalFood => 'હલાલ ફૂડ';

  @override
  String get placesSearchArea => 'આ વિસ્તાર શોધો';

  @override
  String get nearbyMosques => 'નજીકની મસ્જિદો';

  @override
  String get islamicSchools => 'ઇસ્લામિક શાળાઓ';

  @override
  String placesFoundCount(String count) {
    return '$count મળ્યો';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance કિમી દૂર';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API ભૂલ: $statusCode';
  }

  @override
  String get placesNetworkError => 'નેટવર્ક ભૂલ. કૃપા કરીને ફરી પ્રયાસ કરો.';

  @override
  String get placesLocationRequiredTitle => 'સ્થાન જરૂરી';

  @override
  String get placesLocationRequiredBody =>
      'પહેલા સ્થાન સેટ કરો જેથી નજીકની મસ્જિદો, હલાલ ફૂડ અને ઇસ્લામિક શાળાઓ સચોટ રીતે શોધી શકાય.';

  @override
  String get placesMapTilesUnavailableTitle => 'નકશા ટાઇલ્સ અનુપલબ્ધ';

  @override
  String get placesMapTilesUnavailableBody =>
      'આ બિલ્ડ માટે ચકાસાયેલ નકશા ટાઇલ સ્ત્રોત હજુ સુધી ગોઠવેલ નથી. નજીકના સ્થાનો હજુ પણ તમારા સાચવેલા સ્થાન પરથી લોડ થઈ શકે છે.';

  @override
  String get placesDataSourceUnavailableTitle => 'સ્થાનોનો ડેટા અનુપલબ્ધ છે';

  @override
  String get placesDataSourceUnavailableBody =>
      'આ બિલ્ડ માટે ચકાસાયેલ સ્થાનો ડેટા એન્ડપોઇન્ટ હજુ સુધી ગોઠવેલ નથી. નજીકની શોધને સક્ષમ કરતા પહેલા PLACES_OVERPASS_API_URL ને મંજૂર પ્રોક્સી અથવા પ્રદાતા પર સેટ કરો.';

  @override
  String get unknownPlaceName => 'અજ્ઞાત નામ';

  @override
  String get islamicPlaceFallback => 'ઇસ્લામિક સ્થળ';

  @override
  String get asmaMeaning1 => 'The Beneficient';

  @override
  String get asmaMeaning2 => 'દયાળુ';

  @override
  String get asmaMeaning3 => 'રાજા / શાશ્વત ભગવાન';

  @override
  String get asmaMeaning4 => 'સૌથી પવિત્ર';

  @override
  String get asmaMeaning5 => 'શાંતિનો સ્ત્રોત';

  @override
  String get asmaMeaning6 => 'સુરક્ષા આપનાર';

  @override
  String get asmaMeaning7 => 'ધ ગાર્ડિયન';

  @override
  String get asmaMeaning8 => 'મૂલ્યવાન / સૌથી શકિતશાળી';

  @override
  String get asmaMeaning9 => 'The Compeller';

  @override
  String get asmaMeaning10 => 'The Greatest';

  @override
  String get asmaMeaning11 => 'સર્જક';

  @override
  String get asmaMeaning12 => 'The Maker of Order';

  @override
  String get asmaMeaning13 => 'The Shaper of Beauty';

  @override
  String get asmaMeaning14 => 'ધી ક્ષમાશીલ';

  @override
  String get asmaMeaning15 => 'ધ સબડ્યુઅર';

  @override
  String get asmaMeaning16 => 'બધાને આપનાર';

  @override
  String get asmaMeaning17 => 'ધ સસ્ટેનર';

  @override
  String get asmaMeaning18 => 'ધ ઓપનર';

  @override
  String get asmaMeaning19 => 'સૌના જાણકાર';

  @override
  String get asmaMeaning20 => 'ધ કન્સ્ટ્રક્ટર';

  @override
  String get asmaMeaning21 => 'આ રાહત આપનાર';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'The bestower of Honor';

  @override
  String get asmaMeaning25 => 'The Humiliator';

  @override
  String get asmaMeaning26 => 'The Hearer of All';

  @override
  String get asmaMeaning27 => 'બધાનો દ્રષ્ટા';

  @override
  String get asmaMeaning28 => 'જજ';

  @override
  String get asmaMeaning29 => 'The Just';

  @override
  String get asmaMeaning30 => 'The Subtle One';

  @override
  String get asmaMeaning31 => 'The All Aware';

  @override
  String get asmaMeaning32 => 'ધ ફોરબેરિંગ';

  @override
  String get asmaMeaning33 => 'The Magnificent';

  @override
  String get asmaMeaning34 => 'The Great Forgiver';

  @override
  String get asmaMeaning35 => 'આભાર આપનાર';

  @override
  String get asmaMeaning36 => 'ઉચ્ચતમ';

  @override
  String get asmaMeaning37 => 'The Greatest';

  @override
  String get asmaMeaning38 => 'ધ સાચવનાર';

  @override
  String get asmaMeaning39 => 'ધ પોષક';

  @override
  String get asmaMeaning40 => 'ધ રેકનર';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'The Generous';

  @override
  String get asmaMeaning43 => 'ધ સાવધાન';

  @override
  String get asmaMeaning44 => 'પ્રાર્થનાનો પ્રતિસાદ આપનાર';

  @override
  String get asmaMeaning45 => 'The All Comprehending';

  @override
  String get asmaMeaning46 => 'The Perfectly Wise';

  @override
  String get asmaMeaning47 => 'The Loveing One';

  @override
  String get asmaMeaning48 => 'સૌથી મહિમાવાન';

  @override
  String get asmaMeaning49 => 'પુનરુત્થાન કરનાર';

  @override
  String get asmaMeaning50 => 'ધી વિટનેસ';

  @override
  String get asmaMeaning51 => 'The Truth';

  @override
  String get asmaMeaning52 => 'સર્વ-પર્યાપ્ત ટ્રસ્ટી';

  @override
  String get asmaMeaning53 => 'સમગ્ર શક્તિનો માલિક';

  @override
  String get asmaMeaning54 => 'The Forceful';

  @override
  String get asmaMeaning55 => 'ધ પ્રોટેક્ટર';

  @override
  String get asmaMeaning56 => 'પ્રશંસનીય';

  @override
  String get asmaMeaning57 => 'મૂલ્યાંકનકાર';

  @override
  String get asmaMeaning58 => 'The Originator';

  @override
  String get asmaMeaning59 => 'The Restorer';

  @override
  String get asmaMeaning60 => 'જીવન આપનાર';

  @override
  String get asmaMeaning61 => 'જીવન લેનાર';

  @override
  String get asmaMeaning62 => 'ધ એવર લિવિંગ';

  @override
  String get asmaMeaning63 => 'Self-Subsisting Sustainer';

  @override
  String get asmaMeaning64 => 'The Finder';

  @override
  String get asmaMeaning65 => 'The Glorious';

  @override
  String get asmaMeaning66 => 'The Only One';

  @override
  String get asmaMeaning67 => 'The One';

  @override
  String get asmaMeaning68 => 'The One Sought by All';

  @override
  String get asmaMeaning69 => 'The Powerful';

  @override
  String get asmaMeaning70 => 'સર્વ શક્તિનો સર્જક';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'The વિલંબ';

  @override
  String get asmaMeaning73 => 'પ્રથમ';

  @override
  String get asmaMeaning74 => 'છેલ્લું';

  @override
  String get asmaMeaning75 => 'The મેનિફેસ્ટ';

  @override
  String get asmaMeaning76 => 'The હિડન';

  @override
  String get asmaMeaning77 => 'રાજ્યપાલ';

  @override
  String get asmaMeaning78 => 'The સર્વોચ્ચ એક';

  @override
  String get asmaMeaning79 => 'The Doer of Good';

  @override
  String get asmaMeaning80 => 'પસ્તાવો માટેની માર્ગદર્શિકા';

  @override
  String get asmaMeaning81 => 'ધ એવેન્જર';

  @override
  String get asmaMeaning82 => 'ક્ષમા કરનાર';

  @override
  String get asmaMeaning83 => 'ધ ક્લેમેન્ટ';

  @override
  String get asmaMeaning84 => 'સર્વના માલિક / સાર્વભૌમ';

  @override
  String get asmaMeaning85 => 'મહિમા અને બક્ષિસનો માલિક';

  @override
  String get asmaMeaning86 => 'The Equitable One';

  @override
  String get asmaMeaning87 => 'ધ ગેધરર';

  @override
  String get asmaMeaning88 => 'The Rich One';

  @override
  String get asmaMeaning89 => 'The enricher';

  @override
  String get asmaMeaning90 => 'ધ પ્રિવેન્ટર ઓફ હાર્મ';

  @override
  String get asmaMeaning91 => 'ધ બ્રિન્જર ઓફ હાર્મ';

  @override
  String get asmaMeaning92 => 'લાભ આપનાર';

  @override
  String get asmaMeaning93 => 'ધ લાઇટ';

  @override
  String get asmaMeaning94 => 'માર્ગદર્શક';

  @override
  String get asmaMeaning95 => 'The Originator';

  @override
  String get asmaMeaning96 => 'The Everlasting One';

  @override
  String get asmaMeaning97 => 'ધ ઇનહેરિટર';

  @override
  String get asmaMeaning98 => 'સૌથી ન્યાયી માર્ગદર્શિકા';

  @override
  String get asmaMeaning99 => 'પેશન્ટ વન';
}
