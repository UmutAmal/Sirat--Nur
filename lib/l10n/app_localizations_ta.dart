// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'இஸ்லாமிய ஒளி வழி';

  @override
  String get home => 'வீடு';

  @override
  String get quran => 'குர்ஆன்';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'ஜிக்ர்';

  @override
  String get calendar => 'நாட்காட்டி';

  @override
  String get settings => 'அமைப்புகள்';

  @override
  String get nextPrayer => 'அடுத்த பிரார்த்தனை';

  @override
  String get prayerTimes => 'பிரார்த்தனை நேரங்கள்';

  @override
  String get continueReading => 'Continue Reading';

  @override
  String get getLifetimePro => 'Get Lifetime Pro';

  @override
  String get unlockTajweed => 'Unlock Tajweed & Advanced Features';

  @override
  String get prayerCalculation => 'பிரார்த்தனை கணக்கீடு';

  @override
  String get method => 'கணக்கீட்டு முறை';

  @override
  String get madhab => 'அஸ்ர் ஜூரிஸ்டிக் முறை';

  @override
  String get surahs => 'சூராக்கள்';

  @override
  String get ayahs => 'ஆயாக்கள்';

  @override
  String get fajr => 'ஃபஜ்ர்';

  @override
  String get sunrise => 'சூரிய உதயம்';

  @override
  String get dhuhr => 'துஹ்ர்';

  @override
  String get asr => 'அஸ்ர்';

  @override
  String get maghrib => 'மக்ரிப்';

  @override
  String get isha => 'ஈஷா';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerNameக்கான நேரம்';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'பிரார்த்தனை செய்ய வேண்டிய நேரம் இது $prayerName.';
  }

  @override
  String get dataStorage => 'தரவு & சேமிப்பு';

  @override
  String get clearCache => 'தற்காலிக சேமிப்பை அழிக்கவும்';

  @override
  String get cacheClearedSuccess =>
      'தற்காலிக சேமிப்பு வெற்றிகரமாக அழிக்கப்பட்டது';

  @override
  String get location => 'இடம்';

  @override
  String get language => 'மொழி';

  @override
  String get selectLanguage => 'மொழியைத் தேர்ந்தெடுக்கவும்';

  @override
  String get searchLanguage => 'Search 180+ languages...';

  @override
  String get systemDefault => 'கணினி இயல்புநிலை';

  @override
  String get currentLocation => 'தற்போதைய இடம் (GPS)';

  @override
  String get locationServiceDisabled => 'இருப்பிடச் சேவை முடக்கப்பட்டுள்ளது.';

  @override
  String get locationPermissionDenied => 'இருப்பிட அனுமதி மறுக்கப்பட்டது.';

  @override
  String get locationDetectionFailed =>
      'உங்கள் இருப்பிடத்தைக் கண்டறிய முடியவில்லை. ஒரு நகரத்தை கைமுறையாக தேர்வு செய்யவும் அல்லது மீண்டும் முயற்சிக்கவும்.';

  @override
  String citiesCount(String count) {
    return '$count நகரங்கள்';
  }

  @override
  String get search => 'தேடு';

  @override
  String get searchHint => 'தேடு...';

  @override
  String get noResults => 'முடிவுகள் எதுவும் கிடைக்கவில்லை';

  @override
  String get loading => 'ஏற்றுகிறது...';

  @override
  String get error => 'பிழை';

  @override
  String get appErrorOccurred => 'பிழை ஏற்பட்டது';

  @override
  String get appUnknownError => 'அறியப்படாத பிழை';

  @override
  String get quranLoadFailed =>
      'குர்ஆன் உள்ளடக்கத்தை ஏற்ற முடியவில்லை. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get retry => 'மீண்டும் முயற்சிக்கவும்';

  @override
  String get refreshAction => 'புதுப்பிக்கவும்';

  @override
  String get cancel => 'ரத்து செய்';

  @override
  String get save => 'சேமிக்கவும்';

  @override
  String get delete => 'நீக்கு';

  @override
  String get edit => 'Edit';

  @override
  String get close => 'Close';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'இல்லை';

  @override
  String get surah => 'சூரா';

  @override
  String ayahLabel(String ayah) {
    return 'ஐயா $ayah';
  }

  @override
  String get juz => 'ஜூஸ்';

  @override
  String get page => 'பக்கம்';

  @override
  String get reading => 'Reading';

  @override
  String get recitation => 'Recitation';

  @override
  String get translation => 'மொழிபெயர்ப்பு';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'தஃப்சீரை ஏற்றுகிறது...';

  @override
  String get tafsirSourceLabel => 'தஃப்சீர் ஆதாரம்';

  @override
  String get tafsirNoSurahFound =>
      'இந்த சூராவிற்கு தஃப்சீர் எதுவும் கிடைக்கவில்லை.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'அயா $ayahக்கான தஃப்சீர் எதுவும் இல்லை.';
  }

  @override
  String get tafsirLoadFailed => 'தஃப்சீரை ஏற்ற முடியவில்லை.';

  @override
  String get tafsirNoTextForAyah => 'இந்த அயாவுக்கு தஃப்சீர் உரை இல்லை.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'டஃப்சீரைப் பதிவிறக்குகிறது $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'தஃப்சீரை ஏற்றுகிறது $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir ஆதாரம் HTTP $statusCode பிழையை வழங்கியது.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'தேர்ந்தெடுக்கப்பட்ட தஃப்சீர் மூலம் உள்ளீடுகள் எதுவும் இல்லை.';

  @override
  String get tafsirCacheUnavailable =>
      'சரிபார்க்கப்பட்ட தஃப்சீர் இன்னும் ஆஃப்லைனில் கிடைக்கவில்லை. உலாவுவதற்கு முன் ஒரு ஆதாரமான tafsir தரவுத்தொகுப்பை ஒத்திசைக்கவும்.';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get addBookmark => 'புக்மார்க்கைச் சேர்க்கவும்';

  @override
  String get removeBookmark => 'புக்மார்க்கை அகற்று';

  @override
  String get lastRead => 'Last Read';

  @override
  String get dailyZikr => 'Daily Zikr';

  @override
  String get duaMeaning1 =>
      'வேறு சிலர், ‘எங்கள் இறைவா, எங்களுக்கு இவ்வுலகிலும் மறுமையிலும் நன்மையைத் தந்து, நெருப்பின் வேதனையிலிருந்து எங்களைக் காப்பாற்றுவாயாக’ என்று பிரார்த்தனை செய்கிறார்கள்.';

  @override
  String get duaMeaning2 =>
      'கடவுள் எந்த ஆன்மாவையும் அது தாங்க முடியாத அளவுக்குச் சுமத்துவதில்லை: ஒவ்வொருவரும் தான் செய்த நன்மையைப் பெறுகிறார்கள், அதன் தீமையை அனுபவிக்கிறார்கள்- \'இறைவா, நாங்கள் மறந்துவிட்டாலோ அல்லது தவறு செய்தாலோ எங்களைக் குறை கூறாதே. ஆண்டவரே, எங்களுக்கு முன் இருந்தவர்களைச் சுமையாக்கியதைப் போல் எங்களைச் சுமையாக்காதே. ஆண்டவரே, எங்களிடம் தாங்கும் சக்தியை விட அதிகமான பாரத்தைச் சுமத்தாதேயும். எங்களை மன்னித்து, எங்களை மன்னித்து, கருணை காட்டுங்கள். நீயே எங்கள் பாதுகாவலன், எனவே காஃபிர்களுக்கு எதிராக எங்களுக்கு உதவி செய்.';

  @override
  String get duaMeaning3 =>
      '‘எங்கள் இறைவா, நீ எங்களுக்கு நேர்வழி காட்டிய பிறகு எங்கள் உள்ளங்களைச் சிதைக்காதே. உங்கள் கருணையை எங்களுக்கு வழங்குங்கள்: நீங்கள் எப்போதும் கொடுப்பவர்.';

  @override
  String get duaMeaning4 =>
      'ஆண்டவரே, நானும் என் சந்ததியும் தொழுகையைத் தொடர அருள்புரிவாயாக. இறைவா, என் வேண்டுகோளை ஏற்றுக்கொள்.';

  @override
  String get duaMeaning5 =>
      'அவர்கள் மீது கருணையுடன் உங்கள் இறக்கையைத் தாழ்த்தி, \'இறைவா, அவர்கள் நான் சிறுவனாக இருந்தபோது என்னைக் கவனித்துக்கொண்டது போல, அவர்களுக்கு இரங்கும்\' என்று கூறுங்கள்.';

  @override
  String get duaMeaning6 =>
      'உண்மையான கட்டுப்பாட்டில் உள்ள கடவுள் உயர்ந்தவர். [நபியே], வஹீ முழுமையாக முடிவதற்குள் அவசரப்படாமல், \'இறைவா, எனக்கு அறிவை அதிகப்படுத்துவாயாக!\'';

  @override
  String get duaMeaning7 =>
      '\'இறைவா, மன்னித்து கருணை காட்டுங்கள்: நீங்கள் அனைவரிலும் மிகவும் இரக்கமுள்ளவர்\' என்று [தீர்க்கதரிசி] கூறுங்கள்.';

  @override
  String get duaMeaning8 =>
      '\"எங்கள் இறைவனே, எங்கள் மனைவி மற்றும் சந்ததியினரில் எங்களுக்கு மகிழ்ச்சியைத் தந்தருள்வாயாக\" என்று பிரார்த்தனை செய்பவர்கள். உங்களைப் பற்றி அறிந்தவர்களுக்கு எங்களை நல்ல முன்மாதிரியாக ஆக்குங்கள்.';

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
  String get hadith => 'ஹதீஸ்';

  @override
  String get hadithCollection => 'ஹதீஸ் தொகுப்பு';

  @override
  String get hadithBooks => 'ஹதீஸ் புத்தகங்கள்';

  @override
  String get searchHadith => 'ஹதீஸைத் தேடுங்கள்';

  @override
  String get asmaulHusna => 'அஸ்மா-உல்-ஹுஸ்னா';

  @override
  String get namesOfAllah => 'அல்லாஹ்வின் பெயர்கள்';

  @override
  String get liveTv => 'நேரலை டிவி';

  @override
  String get watchLive => 'நேரலையில் பார்க்கவும்';

  @override
  String get streamError => 'ஸ்ட்ரீம் பிழை';

  @override
  String get reload => 'மீண்டும் ஏற்றவும்';

  @override
  String get openInYoutube => 'YouTube இல் திறக்கவும்';

  @override
  String get ibadahTracker => 'இபாதா டிராக்கர்';

  @override
  String get fasting => 'உண்ணாவிரதம்';

  @override
  String get quranReading => 'குர்ஆன் வாசிப்பு';

  @override
  String get prayers => 'பிரார்த்தனைகள்';

  @override
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '${hours}h $minutesநி';
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
  String get weeklyProgress => 'வாராந்திர முன்னேற்றம்';

  @override
  String get monthlyProgress => 'Monthly Progress';

  @override
  String get statistics => 'Statistics';

  @override
  String get hijriCalendar => 'ஹிஜ்ரி நாட்காட்டி';

  @override
  String get gregorianCalendar => 'Gregorian Calendar';

  @override
  String get today => 'இன்று';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get specialDays => 'சிறப்பு நாட்கள்';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'இஸ்லாமிய புத்தாண்டு';

  @override
  String get mawlidAnNabi => 'மவ்லித் அந்நபி';

  @override
  String get specialDayDateRamadanStart => '1 ரமலான்';

  @override
  String get specialDayDateLaylatAlQadr => '27 ரமலான்';

  @override
  String get specialDayDateEidAlFitr => '1 ஷவ்வால்';

  @override
  String get specialDayDateEidAlAdha => '10 துல் ஹிஜ்ஜா';

  @override
  String get specialDayDateIslamicNewYear => '1 முஹர்ரம்';

  @override
  String get specialDayDateMawlidAnNabi => '12 ரபி அல்-அவ்வல்';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'கிப்லா திசை';

  @override
  String get compass => 'திசைகாட்டி';

  @override
  String get degrees => 'degrees';

  @override
  String get north => 'North';

  @override
  String get qiblaFound => 'கிப்லா கிடைத்தது!';

  @override
  String get turnDevice => 'கிப்லாவை எதிர்கொள்ள உங்கள் சாதனத்தைத் திருப்பவும்';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'திசைகாட்டி பிழை: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'இந்தச் சாதனத்தில் திசைகாட்டி சென்சார் இல்லை.';

  @override
  String get qiblaLocationRequiredTitle => 'கிப்லாவிற்கு தேவையான இடம்';

  @override
  String get qiblaLocationRequiredBody =>
      'கிப்லா திசைகாட்டியைப் பயன்படுத்துவதற்கு முன் உங்கள் உண்மையான இருப்பிடத்தை அமைக்கவும், இதன் மூலம் திசையை துல்லியமாக கணக்கிட முடியும்.';

  @override
  String get adhanNotificationChannelName => 'அதான் அறிவிப்புகள்';

  @override
  String get adhanNotificationChannelDescription =>
      'அதான் ஒலியுடன் பிரார்த்தனை நேர எச்சரிக்கைகள்.';

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
  String get theme => 'தீம்';

  @override
  String get lightMode => 'ஒளி முறை';

  @override
  String get darkMode => 'இருண்ட பயன்முறை';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'பற்றி';

  @override
  String get version => 'பதிப்பு';

  @override
  String get privacyPolicy => 'தனியுரிமைக் கொள்கை';

  @override
  String get termsOfService => 'சேவை விதிமுறைகள்';

  @override
  String get contactUs => 'எங்களை தொடர்பு கொள்ளவும்';

  @override
  String get rateApp => 'பயன்பாட்டை மதிப்பிடவும்';

  @override
  String get shareApp => 'ஆப்ஸைப் பகிரவும்';

  @override
  String shareAppMessage(String appName, String url) {
    return '$appName ஐப் பார்க்கவும்: இறுதி இஸ்லாமிய வாழ்க்கை முறை பயன்பாடு! $url';
  }

  @override
  String get downloadManager => 'பதிவிறக்க மேலாளர்';

  @override
  String get downloads => 'பதிவிறக்கங்கள்';

  @override
  String get downloading => 'பதிவிறக்குகிறது...';

  @override
  String get downloadComplete => 'பதிவிறக்கம் முடிந்தது';

  @override
  String get downloadFailed => 'பதிவிறக்கம் தோல்வியடைந்தது';

  @override
  String get offlineMode => 'ஆஃப்லைன் பயன்முறை';

  @override
  String get noInternet => 'இணைய இணைப்பு இல்லை';

  @override
  String get checkConnection => 'உங்கள் இணைப்பைச் சரிபார்க்கவும்';

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
  String get getStarted => 'தொடங்குங்கள்';

  @override
  String get skip => 'Skip';

  @override
  String get next => 'அடுத்து';

  @override
  String get done => 'முடிந்தது';

  @override
  String get onboarding1Title => 'Sirat-ı Nur க்கு வரவேற்கிறோம்';

  @override
  String get onboarding1Desc =>
      'பிரார்த்தனை நேரங்கள், குர்ஆன் மற்றும் பலவற்றிற்கான உங்கள் முழுமையான இஸ்லாமிய துணை பயன்பாடு';

  @override
  String get onboarding2Title => 'பிரார்த்தனை நேரங்கள்';

  @override
  String get onboarding2Desc =>
      'உங்கள் இருப்பிடத்தின் அடிப்படையில் துல்லியமான பிரார்த்தனை நேரங்கள்';

  @override
  String get onboarding3Title => 'குர்ஆன் & பல';

  @override
  String get onboarding3Desc =>
      'குர்ஆனைப் படியுங்கள், உங்கள் வாசிப்பைக் கண்காணிக்கவும் மற்றும் இஸ்லாமிய உள்ளடக்கத்தை ஆராயவும்';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'கவுண்டரை மீட்டமைக்கவும்';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'இலக்கு எண்ணிக்கை: $target';
  }

  @override
  String get tapToCount => 'எண்ணுவதற்கு தட்டவும்';

  @override
  String get zikrCompletedMashAllah => 'முடிந்தது! மாஷாஅல்லாஹ்';

  @override
  String get zikrMeaningSubhanAllah =>
      'அல்லாஹ் எல்லா குறைபாடுகளுக்கும் மேலானவன்.';

  @override
  String get zikrMeaningAlhamdulillah => 'எல்லாப் புகழும் அல்லாஹ்வுக்கே.';

  @override
  String get zikrMeaningAllahuAkbar => 'அல்லாஹ் மிகப் பெரியவன்.';

  @override
  String get zikrMeaningLaIlahaIllallah =>
      'அல்லாஹ்வைத் தவிர வேறு கடவுள் இல்லை.';

  @override
  String get zikrMeaningAstaghfirullah =>
      'நான் அல்லாஹ்விடம் மன்னிப்பு தேடுகிறேன்.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'அல்லாஹ்வைத் தவிர வேறு சக்தியும் இல்லை.';

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
  String get dailyProgress => 'தினசரி முன்னேற்றம்';

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
  String get recheckPremium => 'பிரீமியம் சந்தா நிலையை மீண்டும் சரிபார்க்கவும்';

  @override
  String get syncStore =>
      'உங்கள் பிரீமியம் சந்தாவை உறுதிப்படுத்த ஆப் ஸ்டோருடன் ஒத்திசைக்கவும்.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'பிரீமியம் சந்தா சரிபார்க்கப்பட்டது.';

  @override
  String get premiumNotFound => 'பிரீமியம் சந்தா கிடைக்கவில்லை.';

  @override
  String premiumRefreshError(Object error) {
    return 'பிரீமியம் சந்தா நிலையைப் புதுப்பிக்க முடியவில்லை: $error';
  }

  @override
  String get offlineDownloadManager => 'ஆஃப்லைன் பதிவிறக்க மேலாளர்';

  @override
  String get manageDatasets =>
      'மிகப்பெரிய ஆஃப்லைன் ஆடியோ & டேட்டாசெட் பேக்குகளை நிர்வகிக்கவும்.';

  @override
  String get freeStorage => 'உள் சாதனச் சேமிப்பிடத்தைக் காலியாக்கவும்.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'குர்ஆன் தரவுத்தளத்தை சரிபார்க்கிறது...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'குர்ஆன் தரவுத்தள நிலை';

  @override
  String statusLabel(Object status) {
    return 'நிலை: $status';
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
  String get audioVoice => 'ஆடியோ குரல்';

  @override
  String get audioVoiceMisharyAlafasy => 'ஆண் (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'ஆண் (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'ஆண் (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'கிப்லா அளவுத்திருத்தம்';

  @override
  String get compassSmoothing => 'திசைகாட்டி மென்மையாக்குதல்';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'அளவுத்திருத்த ஆஃப்செட்';

  @override
  String currentOffset(Object offset) {
    return 'தற்போதைய: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'உங்கள் திசைகாட்டிக்கு கைமுறையாகத் திருத்தம் தேவைப்பட்டால் சரிசெய்யவும். நேர்மறை மதிப்புகள் கடிகார திசையில் சுழலும்.';

  @override
  String get apply => 'மாற்றங்களைப் பயன்படுத்தவும்';

  @override
  String get resetOnboarding => 'அறிமுக அமைப்பை மீட்டமைக்கவும்';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'நோய் கண்டறிதல்';

  @override
  String get diagnosticsNotSet => 'அமைக்கப்படவில்லை';

  @override
  String get diagnosticsPrayerProfile => 'பிரார்த்தனை விவரக்குறிப்பு';

  @override
  String get diagnosticsPrayerSource => 'பிரார்த்தனை அதிகாரம்';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'தனிப்பயன் / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'கைமுறை தனிப்பயன் கோணங்கள் (நிறுவன மூலங்கள் இல்லை)';

  @override
  String get diagnosticsCloudDriven => 'மேகம் இயக்கப்பட்டது';

  @override
  String get diagnosticsAdhanAudioAssets => 'அதான் ஆடியோ சொத்துக்கள்';

  @override
  String get diagnosticsUiAudioAssets => 'UI ஆடியோ சொத்துக்கள்';

  @override
  String get diagnosticsQuranAudioAssets => 'குர்ஆன் ஆடியோ சொத்துக்கள்';

  @override
  String get diagnosticsAudioAssets => 'ஆடியோ சொத்துக்கள்';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count கோப்புகள்';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'மேனிஃபெஸ்ட் படிக்க முடியவில்லை: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'உள்ளூர்மயமாக்கல் உள்ளூர்';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count ஆதரிக்கப்படுகிறது';
  }

  @override
  String get diagnosticsQuranDataset => 'குர்ஆன் தரவுத்தொகுப்பு';

  @override
  String get diagnosticsQuranSurahs => 'குர்ஆன் சூராக்கள்';

  @override
  String get diagnosticsQuranAyahs => 'குர்ஆன் வசனங்கள்';

  @override
  String get diagnosticsQuranJuzMetadata => 'குர்ஆன் ஜுஸ் மெட்டாடேட்டா';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Supabase-இல் கிளவுட் டேபிள்கள் இல்லை; தொகுக்கப்பட்ட வீழ்ச்சி செயலில்';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'கிளவுட் சரிபார்ப்பு தோல்வியடைந்தது: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz மெட்டாடேட்டா இல்லை; தொகுக்கப்பட்ட கட்டமைப்பு வீழ்ச்சி செயலில்';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'கிளவுட் கட்டமைப்பு சோதனை தோல்வியடைந்தது: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'அளவுத்திருத்தம் தேவை. படம்-8 இல் சாதனத்தைச் சுழற்று.';

  @override
  String get dailyVerse => 'தினசரி வசனம்';

  @override
  String get dailyVerseUnavailableTitle => 'தினசரி வசனம் கிடைக்கவில்லை';

  @override
  String get dailyVerseUnavailableBody =>
      'சரிபார்க்கப்பட்ட தினசரி வசன உள்ளடக்கம் இந்தக் கட்டமைப்பிற்கு இன்னும் உள்ளமைக்கப்படவில்லை. மேகக்கணி மூலத்துடன் இணைக்கவும் அல்லது உலாவுவதற்கு முன் சரிபார்க்கப்பட்ட தற்காலிக சேமிப்பை ஒத்திசைக்கவும்.';

  @override
  String get todaysIbadah => 'இன்றைய இபாதத்';

  @override
  String get quickAccess => 'விரைவான அணுகல்';

  @override
  String get assistant => 'உதவியாளர்';

  @override
  String get places => 'இடங்கள்';

  @override
  String get library => 'நூலகம்';

  @override
  String get analytics => 'பகுப்பாய்வு';

  @override
  String get dailyDuas => 'தினசரி துஆ';

  @override
  String essentialDuas(String count) {
    return '$count அத்தியாவசிய துவாக்கள்';
  }

  @override
  String get duaUnavailableTitle =>
      'சரிபார்க்கப்பட்ட துவாக்கள் இன்னும் கிடைக்கவில்லை';

  @override
  String get duaUnavailableBody =>
      'சரிபார்க்கப்பட்ட தினசரி துவாக்கள் இந்தச் சாதனத்தில் இன்னும் ஒத்திசைக்கப்படவில்லை. சரிபார்க்கப்படாத ஃபால்பேக்கிற்குப் பதிலாக ஆதாரமான துவாக்களை ஏற்றுவதற்கு கிளவுட் மூலத்துடன் இணைக்கவும்.';

  @override
  String get duaCategoryQuranic => 'குர்ஆன் துஆ';

  @override
  String get duaCategoryMorningEvening => 'காலை & மாலை';

  @override
  String get duaCategoryTasbih => 'தஸ்பிஹ்';

  @override
  String get duaCategoryProtection => 'பாதுகாப்பு';

  @override
  String get duaCategoryBeginning => 'ஆரம்பம்';

  @override
  String get duaCategorySleep => 'தூங்கு';

  @override
  String get duaCategoryFoodDrink => 'உணவு & பானம்';

  @override
  String get duaCategoryForgiveness => 'மன்னிப்பு';

  @override
  String get duaCategoryHome => 'வீடு';

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
  String get islamicEducation => 'இஸ்லாமிய கல்வி';

  @override
  String get sukunAudioTitle => 'சுகுன் சவுண்ட்ஸ்கேப்ஸ்';

  @override
  String get hadithCollections => 'ஹதீஸ் தொகுப்புகள்';

  @override
  String get hadithSourcePending => 'சரிபார்க்கப்பட்ட ஆதாரம் நிலுவையில் உள்ளது';

  @override
  String get hadithUnavailableTitle =>
      'சரிபார்க்கப்பட்ட ஹதீஸ் தொகுப்புகள் இன்னும் கிடைக்கவில்லை';

  @override
  String get hadithUnavailableBody =>
      'இந்த உருவாக்கம் இன்னும் சரிபார்க்கப்படாத வெளிப்புற ஹதீஸ் ஊட்டத்தை சார்ந்துள்ளது. மூல தரவுத்தொகுப்பு ஒத்திசைக்கப்படும் வரை ஹதீஸ் உலாவுதல் முடக்கப்பட்டிருக்கும்.';

  @override
  String get paywallUnlockAll =>
      'உங்கள் ஆன்மீக பயணத்திற்கான அனைத்து அம்சங்களையும் திறக்கவும்';

  @override
  String get premiumProductUnavailable =>
      'பிரீமியம் தயாரிப்பு இப்போது கிடைக்கவில்லை. பிறகு முயற்சிக்கவும்.';

  @override
  String get premiumPurchaseFailed =>
      'வாங்குவதை முடிக்க முடியவில்லை. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get paywallFeature1Title => 'நரம்பியல் உதவியாளர் பிளஸ்';

  @override
  String get paywallFeature1Desc => 'வரம்பற்ற AI-இயங்கும் Q&A';

  @override
  String get paywallFeature2Title => 'வரம்பற்ற ஆஃப்லைன்';

  @override
  String get paywallFeature2Desc => 'அனைத்து பாராயணங்களையும் பதிவிறக்கவும்';

  @override
  String get paywallFeature3Title => 'பிரத்தியேக வடிவமைப்புகள்';

  @override
  String get paywallFeature3Desc => 'பிரீமியம் தீம்கள் & எழுத்துருக்கள்';

  @override
  String get paywallFeature4Title => 'விளம்பரம் இல்லாதது';

  @override
  String get paywallFeature4Desc => 'பூஜ்ஜிய விளம்பரங்கள்';

  @override
  String get paywallGetAccess => 'வாழ்நாள் அணுகலைப் பெறுங்கள் - \$1.00';

  @override
  String get restorePurchases => 'வாங்குதல்களை மீட்டெடுக்கவும்';

  @override
  String get zakatCalculator => 'ஜகாத் கால்குலேட்டர்';

  @override
  String get zakatGold => 'தங்கம் (Altın)';

  @override
  String get zakatSilver => 'வெள்ளி (Gümüş)';

  @override
  String get zakatCashBank => 'பணம் / வங்கி';

  @override
  String get zakatBusiness => 'வணிகம்';

  @override
  String get zakatInvestments => 'முதலீடுகள்';

  @override
  String get zakatWeightGrams => 'எடை (கிராம்)';

  @override
  String get zakatPricePerGram => 'விலை/கிராம்';

  @override
  String get zakatTotalAmount => 'மொத்த தொகை';

  @override
  String get zakatInventoryValue => 'சரக்கு மதிப்பு';

  @override
  String get zakatDebts => 'கடன்கள்';

  @override
  String get zakatTotal => 'மொத்தம்';

  @override
  String get calculateZakat => 'ஜகாத்தை கணக்கிடுங்கள்';

  @override
  String get nisabNotReached => 'நிசாப் அடையவில்லை. ஜகாத் கடமை இல்லை.';

  @override
  String get totalZakat => 'மொத்த ஜகாத்';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'நிசாப்: $nisab • சொத்துக்கள்: $assets';
  }

  @override
  String get zakatGoldZakat => 'தங்க ஜகாத்';

  @override
  String get zakatSilverZakat => 'வெள்ளி ஜகாத்';

  @override
  String get zakatCashZakat => 'பண ஜகாத்';

  @override
  String get zakatBusinessZakat => 'வணிக ஜகாத்';

  @override
  String get zakatInvestmentZakat => 'முதலீடு ஜகாத்';

  @override
  String get chatbotGreeting =>
      'அஸ்ஸலாமு அலைக்கும்! நான் உங்கள் இஸ்லாமிய உதவியாளர். தொழுகை, நோன்பு, ஜகாத் அல்லது ஏதேனும் இஸ்லாமிய தலைப்பு பற்றி என்னிடம் கேளுங்கள்.';

  @override
  String get chatbotLimitReached =>
      'தினசரி வினவல் வரம்பை அடைந்தது. வரம்பற்ற பிரீமியத்திற்கு மேம்படுத்தவும்.';

  @override
  String get chatbotErrorMsg =>
      'என்னால் பதிலை உருவாக்க முடியவில்லை. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get chatbotOfflinePrompt =>
      'சரிபார்க்கப்பட்ட ஆஃப்லைன் இஸ்லாமிய அறிவுத் தளம் இன்னும் நிர்வகிக்கப்படுகிறது. நீங்கள் இப்போது ஆஃப்லைன் ஃபால்பேக்கை இயக்கலாம், ஆனால் ஆதார் தரவுத்தொகுப்பு தயாராகும் வரை அது வரையறுக்கப்பட்ட பாதுகாப்பான செய்திகளை மட்டுமே காண்பிக்கும்.\n\nஆஃப்லைன் ஃபால்பேக்கை இயக்க விரும்புகிறீர்களா?';

  @override
  String get chatbotOfflineSwitched =>
      'ஆஃப்லைன் ஃபால்பேக் இயக்கப்பட்டது. சரிபார்க்கப்பட்ட உள்ளூர் இஸ்லாமிய பதில்கள் இன்னும் தயாராகவில்லை.';

  @override
  String get chatbotOfflineDownloadLabel => 'ஆஃப்லைன் ஃபால்பேக்கை இயக்கு';

  @override
  String get downloadPreparing => 'பதிவிறக்கம் தயாராகிறது...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'சூராவைப் பதிவிறக்குகிறது $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'இந்த ஓதுபவருக்கு ஏற்கனவே அனைத்து சூராக்களும் பதிவிறக்கம் செய்யப்பட்டுள்ளன.';

  @override
  String get offlineQuranAudioPacks => 'ஆஃப்லைன் குர்ஆன் ஆடியோ பேக்குகள்';

  @override
  String storedOnDeviceMb(String size) {
    return 'சாதனத்தில் சேமிக்கப்பட்டது: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total சூராக்கள் பதிவிறக்கப்பட்டன';
  }

  @override
  String get redownloadMissingRepair => 'பழுதுபார்த்தல் / பதிவிறக்கம் இல்லை';

  @override
  String get downloadAction => 'பதிவிறக்கவும்';

  @override
  String get resumeDownload => 'பதிவிறக்கத்தை தொடரவும்';

  @override
  String get deleteDownloadedFiles =>
      'பதிவிறக்கம் செய்யப்பட்ட கோப்புகளை நீக்கவும்';

  @override
  String get downloadCancelling => 'ரத்துசெய்கிறது...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return '$reciterக்கான பதிவிறக்கம் ரத்துசெய்யப்பட்டது.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return '$reciterக்கான பதிவிறக்கம் முடிந்தது.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return '$reciterக்கு $failed தோல்வி சூராக்களுடன் பதிவிறக்கம் முடிந்தது ($downloaded/$total பதிவிறக்கப்பட்டது).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return '$reciterக்கான ஆஃப்லைன் கோப்புகள் நீக்கப்பட்டன.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'சரிபார்க்கப்பட்ட குர்ஆன் ஆடியோ ஆதாரங்கள் இப்போது கிடைக்கவில்லை.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'சரிபார்க்கப்பட்ட குர்ஆன் ஆடியோ பேக் முழுமையடையவில்லை ($available/$total). ஆடியோ அட்டவணை புதுப்பிக்கப்பட்ட பிறகு மீண்டும் முயற்சிக்கவும்.';
  }

  @override
  String get chatbotHint => 'கேள்வி கேள்...';

  @override
  String get chatbotThinking => 'நினைத்து...';

  @override
  String get sukunMixerSubtitle => 'இயற்கை & குர்ஆன் கலவை';

  @override
  String get audioPlayFailed => 'ஆடியோ பிளேபேக் தோல்வியடைந்தது';

  @override
  String get sukunNatureLabel => 'சுகுன் (இயற்கை)';

  @override
  String get sukunRainOfMercy => 'கருணை மழை';

  @override
  String get sukunGardenOfPeace => 'அமைதி பூங்கா';

  @override
  String get sukunMidnightCalm => 'நள்ளிரவு அமைதி';

  @override
  String get sukunOceanTawheed => 'பெருங்கடல் தவ்ஹீத்';

  @override
  String get sukunUnavailableTitle => 'சவுண்ட்ஸ்கேப்கள் கிடைக்கவில்லை';

  @override
  String get sukunUnavailableBody =>
      'இந்தக் கட்டமைப்பில் இன்னும் தேவையான சுகுன் சவுண்ட்ஸ்கேப் சொத்துக்கள் இல்லை.';

  @override
  String get prayerCompletion => 'பிரார்த்தனை நிறைவு';

  @override
  String get streaks => 'கோடுகள்';

  @override
  String get dayStreak => 'நாள் ஸ்ட்ரீக்';

  @override
  String get bestStreak => 'சிறந்த ஸ்ட்ரீக்';

  @override
  String get chatbotCloudAiLabel => 'கிளவுட் AI';

  @override
  String get chatbotLocalAiLabel => 'ஆஃப்லைன் ஃபால்பேக்';

  @override
  String get chatbotUseCloudAi => 'கிளவுட் ஏஐ (Gemini) பயன்படுத்தவும்';

  @override
  String get chatbotDownloadLocalAi => 'ஆஃப்லைன் ஃபால்பேக்கை இயக்கு';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count மீதமுள்ளது';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API உள்ளமைக்கப்படவில்லை. சரிபார்க்கப்பட்ட ஆஃப்லைன் இஸ்லாமிய வழிகாட்டுதல் இன்னும் கிடைக்கவில்லை.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] சரிபார்க்கப்பட்ட உள்ளூர் இஸ்லாமிய வழிகாட்டுதல் இன்னும் கிடைக்கவில்லை. ஆதாரமான பதில்களுக்கு Cloud AIக்கு மாறவும்.';

  @override
  String get mosques => 'மசூதிகள்';

  @override
  String get halalFood => 'ஹலால் உணவு';

  @override
  String get placesSearchArea => 'இந்த பகுதியில் தேடவும்';

  @override
  String get nearbyMosques => 'அருகிலுள்ள மசூதிகள்';

  @override
  String get islamicSchools => 'இஸ்லாமிய பள்ளிகள்';

  @override
  String placesFoundCount(String count) {
    return '$count கிடைத்தது';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance கிமீ தொலைவில்';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API பிழை: $statusCode';
  }

  @override
  String get placesNetworkError => 'நெட்வொர்க் பிழை. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get placesLocationRequiredTitle => 'இடம் தேவை';

  @override
  String get placesLocationRequiredBody =>
      'அருகிலுள்ள மசூதிகள், ஹலால் உணவுகள் மற்றும் இஸ்லாமியப் பள்ளிகள் ஆகியவற்றைத் துல்லியமாகத் தேடுவதற்கு முதலில் ஒரு இடத்தை அமைக்கவும்.';

  @override
  String get placesMapTilesUnavailableTitle => 'வரைபட ஓடுகள் கிடைக்கவில்லை';

  @override
  String get placesMapTilesUnavailableBody =>
      'சரிபார்க்கப்பட்ட வரைபட ஓடு மூலமானது இந்தக் கட்டமைப்பிற்கு இன்னும் உள்ளமைக்கப்படவில்லை. நீங்கள் சேமித்த இடத்திலிருந்து அருகிலுள்ள இடங்கள் இன்னும் ஏற்றப்படலாம்.';

  @override
  String get placesDataSourceUnavailableTitle => 'இடங்களின் தரவு கிடைக்கவில்லை';

  @override
  String get placesDataSourceUnavailableBody =>
      'சரிபார்க்கப்பட்ட இடங்களின் தரவு இறுதிப்புள்ளி இன்னும் இந்தக் கட்டமைப்பிற்கு உள்ளமைக்கப்படவில்லை. அருகிலுள்ள தேடலை இயக்கும் முன், PLACES_OVERPASS_API_URL ஐ அங்கீகரிக்கப்பட்ட ப்ராக்ஸி அல்லது வழங்குநராக அமைக்கவும்.';

  @override
  String get unknownPlaceName => 'தெரியாத பெயர்';

  @override
  String get islamicPlaceFallback => 'இஸ்லாமிய இடம்';

  @override
  String get asmaMeaning1 => 'பயன்படுத்துபவர்';

  @override
  String get asmaMeaning2 => 'இரக்கமுள்ளவர்';

  @override
  String get asmaMeaning3 => 'ராஜா / நித்திய இறைவன்';

  @override
  String get asmaMeaning4 => 'மிகப் புனிதமானது';

  @override
  String get asmaMeaning5 => 'அமைதியின் ஆதாரம்';

  @override
  String get asmaMeaning6 => 'பாதுகாப்பைக் கொடுப்பவர்';

  @override
  String get asmaMeaning7 => 'தி கார்டியன்';

  @override
  String get asmaMeaning8 => 'மதிப்புமிக்க / மிகவும் வல்லமை வாய்ந்தது';

  @override
  String get asmaMeaning9 => 'நிபந்தனை';

  @override
  String get asmaMeaning10 => 'மிகப்பெரியது';

  @override
  String get asmaMeaning11 => 'படைப்பாளர்';

  @override
  String get asmaMeaning12 => 'தி மேக்கர் ஆஃப் ஆர்டர்';

  @override
  String get asmaMeaning13 => 'அழகின் வடிவம்';

  @override
  String get asmaMeaning14 => 'மன்னிப்பவர்';

  @override
  String get asmaMeaning15 => 'சப்டுயர்';

  @override
  String get asmaMeaning16 => 'அனைத்தையும் கொடுப்பவர்';

  @override
  String get asmaMeaning17 => 'தி சஸ்டெய்னர்';

  @override
  String get asmaMeaning18 => 'திறப்பாளர்';

  @override
  String get asmaMeaning19 => 'அனைத்தையும் அறிந்தவர்';

  @override
  String get asmaMeaning20 => 'தி கன்ஸ்டிரிக்டர்';

  @override
  String get asmaMeaning21 => 'நிவாரணி';

  @override
  String get asmaMeaning22 => 'தி அபேசர்';

  @override
  String get asmaMeaning23 => 'எக்ஸால்டர்';

  @override
  String get asmaMeaning24 => 'கௌரவத்தை வழங்குபவர்';

  @override
  String get asmaMeaning25 => 'அவமானம்';

  @override
  String get asmaMeaning26 => 'அனைத்தையும் கேட்பவர்';

  @override
  String get asmaMeaning27 => 'அனைத்தையும் பார்ப்பவர்';

  @override
  String get asmaMeaning28 => 'நீதிபதி';

  @override
  String get asmaMeaning29 => 'தி ஜஸ்ட்';

  @override
  String get asmaMeaning30 => 'நுட்பமான ஒன்று';

  @override
  String get asmaMeaning31 => 'அனைவருக்கும் தெரியும்';

  @override
  String get asmaMeaning32 => 'முன்னோக்கி';

  @override
  String get asmaMeaning33 => 'அற்புதம்';

  @override
  String get asmaMeaning34 => 'பெரும் மன்னிப்பவர்';

  @override
  String get asmaMeaning35 => 'நன்றியின் வெகுமதி';

  @override
  String get asmaMeaning36 => 'மிக உயர்ந்தது';

  @override
  String get asmaMeaning37 => 'The Greatest';

  @override
  String get asmaMeaning38 => 'பாதுகாப்பவர்';

  @override
  String get asmaMeaning39 => 'ஊட்டமளிப்பவர்';

  @override
  String get asmaMeaning40 => 'தி ரெக்கனர்';

  @override
  String get asmaMeaning41 => 'தி மெஜஸ்டிக்';

  @override
  String get asmaMeaning42 => 'தாராளமானவர்';

  @override
  String get asmaMeaning43 => 'கவனிக்கப்பட்டவர்';

  @override
  String get asmaMeaning44 => 'பிரார்த்தனைக்கு பதிலளிப்பவர்';

  @override
  String get asmaMeaning45 => 'அனைத்தும் புரிந்துகொள்ளுதல்';

  @override
  String get asmaMeaning46 => 'சரியான புத்திசாலி';

  @override
  String get asmaMeaning47 => 'அன்பானவர்';

  @override
  String get asmaMeaning48 => 'மிகப் புகழ்பெற்ற ஒன்று';

  @override
  String get asmaMeaning49 => 'உயிர்த்தெழுப்புபவர்';

  @override
  String get asmaMeaning50 => 'சாட்சி';

  @override
  String get asmaMeaning51 => 'உண்மை';

  @override
  String get asmaMeaning52 => 'அனைத்தும் போதுமான அறங்காவலர்';

  @override
  String get asmaMeaning53 => 'எல்லா வலிமையையும் உடையவர்';

  @override
  String get asmaMeaning54 => 'தி ஃபோர்ஸ்ஃபுல்';

  @override
  String get asmaMeaning55 => 'பாதுகாவலர்';

  @override
  String get asmaMeaning56 => 'பாராட்டப்பட்டது';

  @override
  String get asmaMeaning57 => 'மதிப்பீட்டாளர்';

  @override
  String get asmaMeaning58 => 'The Originator';

  @override
  String get asmaMeaning59 => 'The Restorer';

  @override
  String get asmaMeaning60 => 'உயிர் கொடுப்பவர்';

  @override
  String get asmaMeaning61 => 'உயிரைப் பெறுபவர்';

  @override
  String get asmaMeaning62 => 'எவர் லிவிங்';

  @override
  String get asmaMeaning63 => 'சுய வாழ்வாதாரம்';

  @override
  String get asmaMeaning64 => 'The Finder';

  @override
  String get asmaMeaning65 => 'தி க்ளோரியஸ்';

  @override
  String get asmaMeaning66 => 'ஒரே ஒன்று';

  @override
  String get asmaMeaning67 => 'தி ஒன்';

  @override
  String get asmaMeaning68 => 'அனைவராலும் தேடப்பட்ட ஒன்று';

  @override
  String get asmaMeaning69 => 'சக்தி வாய்ந்தது';

  @override
  String get asmaMeaning70 => 'அனைத்து சக்தியையும் படைத்தவர்';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'தாமதம்';

  @override
  String get asmaMeaning73 => 'முதல்';

  @override
  String get asmaMeaning74 => 'தி லாஸ்ட்';

  @override
  String get asmaMeaning75 => 'தி மேனிஃபெஸ்ட்';

  @override
  String get asmaMeaning76 => 'The Hidden';

  @override
  String get asmaMeaning77 => 'ஆளுநர்';

  @override
  String get asmaMeaning78 => 'உயர்ந்த ஒன்று';

  @override
  String get asmaMeaning79 => 'நன்மை செய்பவர்';

  @override
  String get asmaMeaning80 => 'மனந்திரும்புதலுக்கான வழிகாட்டி';

  @override
  String get asmaMeaning81 => 'தி அவெஞ்சர்';

  @override
  String get asmaMeaning82 => 'மன்னிப்பவர்';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'அனைத்தின் உரிமையாளர் / இறையாண்மை';

  @override
  String get asmaMeaning85 => 'மாட்சிமை மற்றும் வரம் பெற்றவர்';

  @override
  String get asmaMeaning86 => 'சமமான ஒன்று';

  @override
  String get asmaMeaning87 => 'The Gatherer';

  @override
  String get asmaMeaning88 => 'பணக்காரன்';

  @override
  String get asmaMeaning89 => 'தி என்ரிச்சர்';

  @override
  String get asmaMeaning90 => 'தீங்குகளைத் தடுப்பவர்';

  @override
  String get asmaMeaning91 => 'தீங்கைக் கொண்டுவருபவர்';

  @override
  String get asmaMeaning92 => 'நன்மைகளை வழங்குபவர்';

  @override
  String get asmaMeaning93 => 'ஒளி';

  @override
  String get asmaMeaning94 => 'வழிகாட்டி';

  @override
  String get asmaMeaning95 => 'The Originator';

  @override
  String get asmaMeaning96 => 'நித்தியமான ஒன்று';

  @override
  String get asmaMeaning97 => 'த மரபுரிமையாளர்';

  @override
  String get asmaMeaning98 => 'மிகவும் நேர்மையான வழிகாட்டி';

  @override
  String get asmaMeaning99 => 'நோயாளி';
}
