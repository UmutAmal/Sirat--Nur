// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ewe (`ee`).
class AppLocalizationsEe extends AppLocalizations {
  AppLocalizationsEe([String locale = 'ee']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Islamtɔwo ƒe Kekeli Mɔ';

  @override
  String get home => 'Aƒeme';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla ƒe ŋkɔ';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Ɣletigbalẽ dzi';

  @override
  String get settings => 'Ðoɖowo';

  @override
  String get nextPrayer => 'Gbedodoɖa si kplɔe ɖo';

  @override
  String get prayerTimes => 'Gbedodoɖa Ɣeyiɣiwo';

  @override
  String get continueReading => 'Yi Nuxexlẽa Dzi';

  @override
  String get getLifetimePro => 'Na Agbemegbe Pro';

  @override
  String get unlockTajweed => 'Ʋu Tajweed & Nɔnɔme Deŋgɔwo';

  @override
  String get prayerCalculation => 'Gbedodoɖa ƒe Akɔntabubu';

  @override
  String get method => 'Akɔntabubumɔnu';

  @override
  String get madhab => 'Asr Senyawo Ŋuti Mɔnu';

  @override
  String get surahs => 'Surahwo ƒe nyawo';

  @override
  String get ayahs => 'Ayahs ƒe nyawo';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Ɣedzeƒe';

  @override
  String get dhuhr => 'Dhuhr ƒe agbalẽ';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Maghrib ƒe agbalẽ';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Ɣeyiɣi na $prayerName.';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Ɣeyiɣia de be míado gbe ɖa $prayerName.';
  }

  @override
  String get dataStorage => 'Nyatakakawo & Nudzraɖoƒe';

  @override
  String get clearCache => 'Klɔ Cache la ɖa';

  @override
  String get cacheClearedSuccess => 'Cache kɔ dzidzedzetɔe';

  @override
  String get location => 'Teƒe';

  @override
  String get language => 'Gbegbᴐgblᴐ';

  @override
  String get selectLanguage => 'Tia Gbegbɔgblɔ';

  @override
  String get searchLanguage => 'Di gbegbɔgblɔ 180+...';

  @override
  String get systemDefault => 'System Default';

  @override
  String get currentLocation => 'Teƒe si Wole Fifia (GPS) .';

  @override
  String get locationServiceDisabled => 'Wotu teƒe ƒe subɔsubɔdɔa nuwɔametɔe.';

  @override
  String get locationPermissionDenied => 'Wogbe mɔɖeɖe ɖe teƒea ŋu.';

  @override
  String get locationDetectionFailed =>
      'Mete ŋu de dzesi afi si nèle o. Taflatse tia du aɖe kple asi alo nàgadze agbagba ake.';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => 'Di';

  @override
  String get searchHint => 'Di...';

  @override
  String get noResults => 'No results found';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get appErrorOccurred => 'Vodada aɖe dzɔ';

  @override
  String get appUnknownError => 'Vodada si womenya o';

  @override
  String get quranLoadFailed =>
      'Womete ŋu tsɔ Quran me nyawo de eme o. Taflatse gadze agbagba ake.';

  @override
  String get retry => 'Gadze agbagba ake';

  @override
  String get refreshAction => 'Refresh';

  @override
  String get cancel => 'Te fli ɖe eme';

  @override
  String get save => 'Dzrae ɖo';

  @override
  String get delete => 'Delete';

  @override
  String get edit => 'Wɔ tɔtrɔ';

  @override
  String get close => 'Tu';

  @override
  String get ok => 'ENYO';

  @override
  String get yes => 'Ɛ̃';

  @override
  String get no => 'Ao';

  @override
  String get surah => 'Surah';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Yuz';

  @override
  String get page => 'Axa 100';

  @override
  String get reading => 'Nuxexlẽ';

  @override
  String get recitation => 'Nuxexlẽ';

  @override
  String get translation => 'Gbegɔmeɖeɖe';

  @override
  String get tafsir => 'Tafsir ƒe ŋkɔ';

  @override
  String get tafsirLoading => 'Wole tafsir xɔm...';

  @override
  String get tafsirSourceLabel => 'Tafsir ƒe dzɔtsoƒe';

  @override
  String get tafsirNoSurahFound => 'Womekpɔ tafsir aɖeke na surah sia o.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Womekpɔ tafsir aɖeke na ayah $ayah o.';
  }

  @override
  String get tafsirLoadFailed => 'Womete ŋu tsɔ agba ɖe Tafsir dzi o.';

  @override
  String get tafsirNoTextForAyah => 'Tafsir nuŋɔŋlɔ aɖeke meli na ayah sia o.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Downloading tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Loading tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir dzɔtsoƒe trɔ HTTP $statusCode vodada.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Tafsir dzɔtsoƒe si wotia la metrɔ nya aɖeke si woŋlɔ o.';

  @override
  String get tafsirCacheUnavailable =>
      'Verified tafsir mele internet dzi haɖe o. Wɔ ɖeka kple tafsir nyatakakadzraɖoƒe si wokpɔ tso eme hafi nàʋu.';

  @override
  String get bookmarks => 'Dzesiwo ƒe dzesiwo';

  @override
  String get addBookmark => 'Tsɔ Bookmark kpee';

  @override
  String get removeBookmark => 'Ðe Bookmark ɖa';

  @override
  String get lastRead => 'Nuxexlẽ Mamlɛtɔ';

  @override
  String get dailyZikr => 'Gbesiagbe Zikr';

  @override
  String get duaMeaning1 =>
      'ame bubuwo doa gbe ɖa be, ‘Míaƒe Aƒetɔ, na nyui mí le xexe sia me kple le Agbenɔnɔ me, eye nàkpɔ mía ta tso Dzo ƒe fuwɔame me.’';

  @override
  String get duaMeaning2 =>
      'Mawu metsɔa agba wu luʋɔ aɖeke wu esi wòate ŋu atsɔ o: nu nyui ɖesiaɖe si wòwɔ la kpɔa viɖe, eye wòkpea fu le eƒe vɔ̃ me- ‘ Aƒetɔ, mègatsɔ mí ade dɔ me ne míeŋlɔ be alo wɔ vodada o. Aƒetɔ, mègado agba na mí abe alesi nèdo agba na amesiwo do ŋgɔ na mí ene o. Aƒetɔ, mègatsɔ agba geɖe wu ŋusẽ si le mía si be míatsɔ o. Tsɔe ke mí, tsɔe ke mí, eye nàkpɔ nublanui na mí. Wòe nye mía Takpɔla, eyata kpe ɖe mía ŋu míatsi tre ɖe dzimaxɔsetɔwo ŋu.’';

  @override
  String get duaMeaning3 =>
      '‘Míaƒe Aƒetɔ, mègana míaƒe dziwo natra ɖa le Wò mɔfiafia vɔ megbe o. Na Wò nublanuikpɔkpɔ mí: Wòe nye Nunala Mavɔ.';

  @override
  String get duaMeaning4 =>
      'Aƒetɔ, na nye kple nye dzidzimeviwo míayi gbedodoɖa dzi. Mía Aƒetɔ, xɔ nye biabia la.';

  @override
  String get duaMeaning5 =>
      'eye nàɖiɖi wò aʋala ɖe anyi le ɖokuibɔbɔ me ɖe wo ŋu le dɔmenyonyo me eye nàgblɔ be, ‘Aƒetɔ, kpɔ nublanui na wo, abe alesi wolé be nam esime menɔ sue ene.’';

  @override
  String get duaMeaning6 =>
      'woado Mawu, amesi le ŋusẽ kpɔm ɖe dzi vavã. [Nyagblɔɖila], mègaƒu du axlẽe hafi ɖeɖefiaa nawu enu bliboe o ke boŋ gblɔ be, ‘Aƒetɔ, dzim ɖe edzi le sidzedze me!’';

  @override
  String get duaMeaning7 =>
      'Gblɔ [Nyagblɔɖila] be, ‘Aƒetɔ, tsɔe ke eye nàkpɔ nublanui: Wòe nye nublanuikpɔla wu wo katã.’';

  @override
  String get duaMeaning8 =>
      'ame siwo doa gbe ɖa be, ‘Míaƒe Aƒetɔ, na dzidzɔ mí le mía srɔ̃wo kple míaƒe dzidzimeviwo me. Wɔ mí kpɔɖeŋu nyuiwo na amesiwo nya Wò’.';

  @override
  String get morningZikr => 'Ŋdi Zikr';

  @override
  String get eveningZikr => 'Fiẽ Zikr';

  @override
  String get tasbih => 'Tasbih ƒe ŋkɔ';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masa\'il ƒe ŋkɔ';

  @override
  String get hadith => 'Hadith ƒe nyawo';

  @override
  String get hadithCollection => 'Hadith Nuƒoƒoƒu';

  @override
  String get hadithBooks => 'Hadith Agbalẽwo';

  @override
  String get searchHadith => 'Di Hadithwo ƒe nyawo';

  @override
  String get asmaulHusna => 'Asma-ul-Husna ƒe ŋkɔ';

  @override
  String get namesOfAllah => 'Allah ƒe ŋkɔwo';

  @override
  String get liveTv => 'TV si woɖena fiana le agbe me';

  @override
  String get watchLive => 'Kpɔ Live';

  @override
  String get streamError => 'Vodada le tɔsisi me';

  @override
  String get reload => 'Gbugbɔ tsɔe de eme';

  @override
  String get openInYoutube => 'Ʋu le YouTube dzi';

  @override
  String get ibadahTracker => 'Ibadah ƒe Mɔfiala';

  @override
  String get fasting => 'Nutsitsidɔ';

  @override
  String get quranReading => 'Quran Xexlẽ';

  @override
  String get prayers => 'Gbedodoɖawo';

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
  String get dhikrCount => 'Dhikr Xexlẽme';

  @override
  String get weeklyProgress => 'Kwasiɖa sia Kwasiɖa ƒe Ŋgɔyiyi';

  @override
  String get monthlyProgress => 'Ɣleti sia Ɣleti ƒe Ŋgɔyiyi';

  @override
  String get statistics => 'Akɔntabubuwo';

  @override
  String get hijriCalendar => 'Hijri Ɣletigbalẽ';

  @override
  String get gregorianCalendar => 'Gregory ƒe Ɣletigbalẽ';

  @override
  String get today => 'Egbe';

  @override
  String get tomorrow => 'Tsɔ si gbɔna';

  @override
  String get yesterday => 'Tsᴐ si va yi';

  @override
  String get specialDays => 'Ŋkeke Tɔxɛwo';

  @override
  String get ramadan => 'Ramadan ƒe ɣeyiɣia me';

  @override
  String get eidAlFitr => 'Eid Al-Fitr ƒe ŋkekenyui';

  @override
  String get eidAlAdha => 'Eid Al-Adha ƒe ŋkekenyui';

  @override
  String get islamicNewYear => 'Islamtɔwo ƒe Ƒe Yeye';

  @override
  String get mawlidAnNabi => 'Mawlid kple Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadan ƒe ŋkeke';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadan lia dzi';

  @override
  String get specialDayDateEidAlFitr => '1 Shawwal ƒe agbalẽ';

  @override
  String get specialDayDateEidAlAdha => '10 Dhul Hijjah ƒe ɣeyiɣia me';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharram ƒe ɣleti';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabi al-Awwal ƒe agbalẽ';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr ƒe amegã';

  @override
  String get qiblaDirection => 'Qibla Mɔfiame';

  @override
  String get compass => 'Kɔmpasi';

  @override
  String get degrees => 'ɖaseɖigbalẽwo';

  @override
  String get north => 'Dziehe';

  @override
  String get qiblaFound => 'Qibla kpɔe!';

  @override
  String get turnDevice => 'Trɔ wò mɔ̃a wòadze ŋgɔ Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Compass error: $error';
  }

  @override
  String get qiblaSensorUnavailable => 'Compass sensor mele mɔ̃ sia dzi o.';

  @override
  String get qiblaLocationRequiredTitle => 'Location required for Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Set your actual location before using the Qibla compass so the direction can be calculated accurately.';

  @override
  String get adhanNotificationChannelName => 'Adhan Notifications';

  @override
  String get adhanNotificationChannelDescription =>
      'Prayer time alerts with adhan sound.';

  @override
  String get notifications => 'Nyatakakawo';

  @override
  String get prayerNotifications => 'Gbedodoɖa Ŋuti Nyatakakawo';

  @override
  String get enableNotifications => 'Na Nyatakakawo nawɔ dɔ';

  @override
  String get notificationTime => 'Nyatakaka Ɣeyiɣi';

  @override
  String get beforePrayer => 'miniti ʋɛ aɖewo do ŋgɔ na gbedodoɖa';

  @override
  String get theme => 'Nyati';

  @override
  String get lightMode => 'Kekeli ƒe Nɔnɔme';

  @override
  String get darkMode => 'Viviti ƒe Nɔnɔme';

  @override
  String get systemTheme => 'System ƒe Tanya';

  @override
  String get about => 'Ku ɖe';

  @override
  String get version => 'Nukpɔkpɔ';

  @override
  String get privacyPolicy => 'Ameŋunyatakakawo Ŋuti Ðoɖo';

  @override
  String get termsOfService => 'Subɔsubɔdɔ ƒe Ðoɖowo';

  @override
  String get contactUs => 'Te Ðe Mía Ŋu';

  @override
  String get rateApp => 'Rate App';

  @override
  String get shareApp => 'Mamã ƒe App';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'Nusiwo woate ŋu awɔ kɔpi na';

  @override
  String get downloading => 'Wole eƒe kɔpi wɔm...';

  @override
  String get downloadComplete => 'Download Complete';

  @override
  String get downloadFailed => 'Download Failed';

  @override
  String get offlineMode => 'Offline ƒe Nɔnɔme';

  @override
  String get noInternet => 'No Internet Connection';

  @override
  String get checkConnection => 'Taflatse lé ŋku ɖe wò kadodoa ŋu';

  @override
  String get premium => 'Si xɔ asi';

  @override
  String get upgradeToPro => 'Do ŋgɔ na Pro';

  @override
  String get proFeatures => 'Pro ƒe Nɔnɔmewo';

  @override
  String get removeAds => 'Ðe Boblododowo ɖa';

  @override
  String get unlockAll => 'Ʋu Emenyawo Katã';

  @override
  String get exclusiveContent => 'Nyatakaka Siwo Woɖe Ðe Vovo';

  @override
  String get welcome => 'Woezɔ̃';

  @override
  String get getStarted => 'Dze Egɔme';

  @override
  String get skip => 'Dzo to eta';

  @override
  String get next => 'Esi kplᴐe ɖo';

  @override
  String get done => 'Wɔe vɔ';

  @override
  String get onboarding1Title => 'Míexɔ mi nyuie ɖe Allah ƒe Mɔ dzi';

  @override
  String get onboarding1Desc =>
      'Wò Islam zɔhɛ app blibo na gbedodoɖa ɣeyiɣiwo, Quran, kple bubuwo';

  @override
  String get onboarding2Title => 'Gbedodoɖa Ɣeyiɣiwo';

  @override
  String get onboarding2Desc =>
      'Gbedodoɖa ƒe ɣeyiɣi siwo sɔ pɛpɛpɛ le afi si nèle nu';

  @override
  String get onboarding3Title => 'Quran & Nu Bubuwo';

  @override
  String get onboarding3Desc =>
      'Xlẽ Quran, lé ŋku ɖe wò nuxexlẽ ŋu, eye nàdzro Islam me nyawo me';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'Gbugbɔ Ðo Xexlẽdzesi';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'Target: $target';
  }

  @override
  String get tapToCount => 'Zi edzi be nàxlẽe';

  @override
  String get zikrCompletedMashAllah => 'Wowu enu! MashAllah ye nye ema';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah ƒo blibomademade ɖesiaɖe ta sãsãsã.';

  @override
  String get zikrMeaningAlhamdulillah => 'Kafukafuwo katã nye Allah tɔ.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah ye nye Gãtɔ.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Mawu aɖeke meli o negbe Allah ko.';

  @override
  String get zikrMeaningAstaghfirullah => 'Mele Allah ƒe tsɔtsɔke dim.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Ŋusẽ kple ŋusẽ aɖeke meli o negbe to Allah dzi ko.';

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
  String get dailyProgress => 'Gbesiagbe Ŋgɔyiyi';

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
  String get recheckPremium => 'Gbugbɔ lé ŋku ɖe premium nudɔdɔ ƒe nɔnɔme ŋu';

  @override
  String get syncStore =>
      'Wɔ ɖeka kple app store la be nàɖo kpe wò premium nudɔdɔ dzi.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'Woɖo kpe nudɔdɔ si nye premium dzi.';

  @override
  String get premiumNotFound => 'Womekpɔ Premium nudɔdɔ o.';

  @override
  String premiumRefreshError(Object error) {
    return 'Mete ŋu trɔ asi le premium nudɔdɔ ƒe nɔnɔme ŋu o: $error .';
  }

  @override
  String get offlineDownloadManager => 'Offline Download Manager';

  @override
  String get manageDatasets =>
      'Dzra odio & nyatakakadzraɖoƒe gbogbo siwo mele Internet dzi o dzi.';

  @override
  String get freeStorage => 'Na mɔ̃a ƒe ememe nudzraɖoƒe navo.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'Quran ƒe nyatakakadzraɖoƒea me dzodzro...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'Quran ƒe Nyatakakadzraɖoƒe ƒe Nɔnɔme';

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
  String get audioVoice => 'Odio ƒe Gbe';

  @override
  String get audioVoiceMisharyAlafasy => 'Male (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Male (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Male (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Qibla ƒe Dzidzedzekpɔkpɔ';

  @override
  String get compassSmoothing => 'Kɔmpasi ƒe Smoothing';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Dodoɖeŋgɔ ƒe Offset';

  @override
  String currentOffset(Object offset) {
    return 'Current: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Trɔ asi le eŋu ne ehiã be woatsɔ asi aɖɔ wò kɔmpasia ɖo. Asixɔxɔ nyuiwo trɔna ɖe gaƒoɖokui ƒe mɔ nu.';

  @override
  String get apply => 'Wɔ tɔtrɔwo ŋudɔ';

  @override
  String get resetOnboarding => 'Gbugbɔ ɖo ŋgɔdonya ƒe ɖoɖoa';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Dɔlélewo didi';

  @override
  String get diagnosticsNotSet => 'Menye ɖe woɖoe o';

  @override
  String get diagnosticsPrayerProfile => 'Gbedodoɖa Ŋuti Nyatakaka';

  @override
  String get diagnosticsPrayerSource => 'Gbedodoɖa ƒe Dɔwɔƒe';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Dzogoe siwo wowɔ ɖe ɖoɖo nu kple asi (habɔbɔ ƒe dzɔtsoƒe aɖeke meli o) .';

  @override
  String get diagnosticsCloudDriven => 'Alilikpo Ʋuʋu';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Odio ƒe Nunɔamesiwo';

  @override
  String get diagnosticsUiAudioAssets => 'UI Odio ƒe Nunɔamesiwo';

  @override
  String get diagnosticsQuranAudioAssets => 'Quran ƒe Odio ƒe Nunɔamesiwo';

  @override
  String get diagnosticsAudioAssets => 'Odio ƒe Nuwo';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count ƒe faɛlwo';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifest read failed: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Nutoa me ƒe Teƒewo';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count wodo alɔe';
  }

  @override
  String get diagnosticsQuranDataset => 'Quran ƒe Nyatakakadzraɖoƒe';

  @override
  String get diagnosticsQuranSurahs => 'Quran ƒe Surahwo';

  @override
  String get diagnosticsQuranAyahs => 'Quran ƒe Ayahwo';

  @override
  String get diagnosticsQuranJuzMetadata => 'Quran Juz ƒe Nyatakakawo';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Alilikpo me kplɔ̃wo bu le Supabase; bundled fallback le dɔ wɔm';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Alilikpo me dodokpɔ do kpo nu: $error .';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Alilikpo juz metadata bu; bundled xɔtuɖoɖo ƒe fallback active';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Alilikpo ƒe xɔtuɖoɖo ƒe dodokpɔ do kpo nu: $error .';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Calibration hiã. Trɔ mɔ̃ si le nɔnɔmetata-8 me.';

  @override
  String get dailyVerse => 'Gbesiagbe Kpukpui';

  @override
  String get todaysIbadah => 'Egbe ƒe Ibadah';

  @override
  String get quickAccess => 'Mɔɖeɖe Kabakaba';

  @override
  String get assistant => 'Kpeɖeŋutɔ';

  @override
  String get places => 'Teƒewo';

  @override
  String get library => 'Agbalẽdzraɖoƒe';

  @override
  String get analytics => 'Numekugbalẽwo me dzodzro';

  @override
  String get dailyDuas => 'Gbesiagbe Duas';

  @override
  String essentialDuas(String count) {
    return '$count essential duas';
  }

  @override
  String get duaUnavailableTitle => 'Dua siwo ŋu woɖo kpee la meli haɖe o';

  @override
  String get duaUnavailableBody =>
      'Womewɔ ɖeka kple gbesiagbe dua siwo ŋu woɖo kpee haɖe o. Do ka kple alilikpo dzɔtsoƒe be nàtsɔ dua siwo tso dzɔtsoƒe la ade agba me tsɔ wu be nàtsɔ fallback si ŋu womeɖo kpee o.';

  @override
  String get duaCategoryQuranic => 'Quran ƒe dua';

  @override
  String get duaCategoryMorningEvening => 'Ŋdi & Fiẽ';

  @override
  String get duaCategoryTasbih => 'Tasbih ƒe ŋkɔ';

  @override
  String get duaCategoryProtection => 'Ametakpɔkpɔ';

  @override
  String get duaCategoryBeginning => 'Gɔmedzedzewo';

  @override
  String get duaCategorySleep => 'Dᴐ alɔ̃';

  @override
  String get duaCategoryFoodDrink => 'Nuɖuɖu & Nunono';

  @override
  String get duaCategoryForgiveness => 'Tsɔtsɔke';

  @override
  String get duaCategoryHome => 'Aƒeme';

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
  String get islamicEducation => 'Islamtɔwo ƒe Hehenasuku';

  @override
  String get sukunAudioTitle => 'Sukun Gbeɖiɖiwo ƒe Nɔnɔmewo';

  @override
  String get hadithCollections => 'Hadith ƒe Nuƒoƒoƒu';

  @override
  String get hadithSourcePending => 'Dzɔtsoƒe si ŋu woɖo kpee le lalam';

  @override
  String get hadithUnavailableTitle =>
      'Hadith nuƒoƒoƒu siwo ŋu woɖo kpee la meli haɖe o';

  @override
  String get hadithUnavailableBody =>
      'Tututu sia gakpɔtɔ nɔ te ɖe gotagome hadith nuɖuɖu si ŋu womeɖo kpee o dzi. Hadith ƒe ʋuʋu nɔa dɔmawɔmawɔ me vaseɖe esime woawɔ nyatakakadzraɖoƒe si wokpɔ tso eme la ɖekae.';

  @override
  String get paywallUnlockAll => 'Ʋu wò gbɔgbɔmemɔzɔzɔa ƒe nɔnɔmewo katã';

  @override
  String get premiumProductUnavailable =>
      'Premium product mele asiwò fifia o. Taflatse gadze agbagba ake emegbe.';

  @override
  String get premiumPurchaseFailed =>
      'Womete ŋu wu nuƒle nu o. Taflatse gadze agbagba ake.';

  @override
  String get paywallFeature1Title => 'Ahɔhɔ̃mekawo ƒe Kpeɖeŋutɔ Plus';

  @override
  String get paywallFeature1Desc => 'Seɖoƒemanɔsitɔ AI-ŋusẽ Q&A';

  @override
  String get paywallFeature2Title => 'Seɖoƒemanɔsitɔ Offline';

  @override
  String get paywallFeature2Desc => 'Wɔ nuxexlẽawo katã ƒe kɔpi';

  @override
  String get paywallFeature3Title => 'Aɖaŋu Siwo Wowɔ Ðekae';

  @override
  String get paywallFeature3Desc => 'Premium tanyawo & ŋɔŋlɔdzesiwo';

  @override
  String get paywallFeature4Title => 'Ad-Free';

  @override
  String get paywallFeature4Desc => 'Boblododowo zero';

  @override
  String get paywallGetAccess => 'Na Agbenɔƒewo Katã ƒe Mɔɖeɖe — \$1.00';

  @override
  String get restorePurchases => 'Gbugbɔ Ƒle Nuwo Gbɔ';

  @override
  String get zakatCalculator => 'Zakat ƒe Akɔntabubumɔ̃';

  @override
  String get zakatGold => 'Sika (Altın) .';

  @override
  String get zakatSilver => 'Klosalo (Gümüş) .';

  @override
  String get zakatCashBank => 'Ga / Gadzraɖoƒe';

  @override
  String get zakatBusiness => 'Dᴐwᴐna';

  @override
  String get zakatInvestments => 'Gadede asi na amewo';

  @override
  String get zakatWeightGrams => 'Kpekpeme (g) .';

  @override
  String get zakatPricePerGram => 'Ga home/g';

  @override
  String get zakatTotalAmount => 'Ga home bliboa';

  @override
  String get zakatInventoryValue => 'Nudzraɖoƒe ƒe Asixɔxɔ';

  @override
  String get zakatDebts => 'Fewo ƒe fewo';

  @override
  String get zakatTotal => 'Ƒuƒoƒo';

  @override
  String get calculateZakat => 'Bu Zakat ƒe akɔnta';

  @override
  String get nisabNotReached =>
      'Nisab meɖo afima o. Zakat menye agbanɔamedzi o.';

  @override
  String get totalZakat => 'Zakat bliboa';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'Sika Zakat';

  @override
  String get zakatSilverZakat => 'Klosalo Zakat';

  @override
  String get zakatCashZakat => 'Gazazã ƒe Zakat';

  @override
  String get zakatBusinessZakat => 'Asitsatsa ƒe Zakat';

  @override
  String get zakatInvestmentZakat => 'Gadede asi ƒe Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Gbesiagbe biabia ƒe seɖoƒe ɖo. Do ŋgɔ na Premium na seɖoƒemanɔsitɔ.';

  @override
  String get chatbotErrorMsg =>
      'Nyemete ŋu na ŋuɖoɖo aɖeke vɛ o. Taflatse gadze agbagba ake.';

  @override
  String get chatbotOfflinePrompt =>
      'Wogale Islamtɔwo ƒe sidzedze ƒe dɔwɔƒe si ŋu woɖo kpee si mele Internet dzi o la dzi kpɔm kokoko. Àte ŋu awɔ offline fallback fifia, gake gbedasi dedie siwo seɖoƒe li na koe wòaɖe afia vaseɖe esime nyatakakatsoƒe si wokpɔ tso eme la nasɔ.\n\nÀdi be yeana offline fallback nawɔ dɔa?';

  @override
  String get chatbotOfflineSwitched =>
      'Offline fallback wowɔ dɔ. Islamtɔwo ƒe ŋuɖoɖo siwo ŋu woɖo kpee le nutoa me la mesu te haɖe o.';

  @override
  String get chatbotOfflineDownloadLabel => 'Na Offline Fallback nawɔ dɔ';

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
  String get offlineQuranAudioPacks =>
      'Quran Odio Packs siwo mele Internet dzi o';

  @override
  String storedOnDeviceMb(String size) {
    return 'Wodzrae ɖo ɖe mɔ̃ dzi: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surahs downloaded';
  }

  @override
  String get redownloadMissingRepair => 'Repair / Download Missing';

  @override
  String get downloadAction => 'Hee ɖa anyi';

  @override
  String get resumeDownload => 'Gbugbɔ Gbugbɔ Wɔ Ðeɖe Ðe Edzi';

  @override
  String get deleteDownloadedFiles =>
      'Tsɔ Faɛl Siwo Woɖe Ðe Internet Dzi la Tutu';

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
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Download finished for $reciter with $failed failed surahs ($downloaded/$total downloaded).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Wotutu faɛl siwo mele internet dzi o na $reciter.';
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
  String get sukunMixerSubtitle => 'Dzɔdzɔme & Qur\'an Tɔtɔ';

  @override
  String get audioPlayFailed => 'Odio ƒoƒo do kpo nu';

  @override
  String get sukunNatureLabel => 'Sukun (Dzɔdzɔmenuwo) .';

  @override
  String get sukunRainOfMercy => 'Nublanuikpɔkpɔ ƒe Tsidzadza';

  @override
  String get sukunGardenOfPeace => 'Ŋutifafa ƒe Abɔ';

  @override
  String get sukunMidnightCalm => 'Zãtitina ƒe Dziɖeɖi';

  @override
  String get sukunOceanTawheed => 'Atsiaƒu ƒe Tawheed';

  @override
  String get sukunUnavailableTitle => 'Gbeɖiɖi ƒe nɔnɔmewo meli o';

  @override
  String get sukunUnavailableBody =>
      'Tu sia melɔ Sukun soundscape nunɔamesi siwo hiã la ɖe eme haɖe o.';

  @override
  String get prayerCompletion => 'Gbedodoɖa ƒe Nuwuwu';

  @override
  String get streaks => 'Streaks ƒe ʋuʋu';

  @override
  String get dayStreak => 'Ŋkeke ƒe streak';

  @override
  String get bestStreak => 'Streak nyuitɔ kekeake';

  @override
  String get chatbotCloudAiLabel => 'Alilikpo me AI';

  @override
  String get chatbotLocalAiLabel => 'Offline ƒe Fallback';

  @override
  String get chatbotUseCloudAi => 'Zã Alilikpo me AI (Gemini) .';

  @override
  String get chatbotDownloadLocalAi => 'Na Offline Fallback nawɔ dɔ';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Womeɖo alilikpo API o. Islamtɔwo ƒe mɔfiame siwo ŋu woɖo kpee le internet dzi la meli haɖe o.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Islamtɔwo ƒe mɔfiame siwo ŋu woɖo kpee le nutoa me la meli haɖe o. Trɔ ɖe Cloud AI ŋu hena ŋuɖoɖo siwo tso teƒe aɖe.';

  @override
  String get mosques => 'Mosquewo';

  @override
  String get halalFood => 'Halal Nuɖuɖu';

  @override
  String get placesSearchArea => 'Di nuto sia me';

  @override
  String get nearbyMosques => 'Mosque siwo te ɖe afima ŋu';

  @override
  String get islamicSchools => 'Islamtɔwo ƒe Sukuwo';

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
  String get placesNetworkError =>
      'Network ƒe vodada. Taflatse gadze agbagba ake.';

  @override
  String get placesLocationRequiredTitle => 'Wobia tso teƒe si woawɔe le';

  @override
  String get placesLocationRequiredBody =>
      'Ðo teƒe aɖe gbã ale be woate ŋu adi mosque siwo te ɖe afima ŋu, halal nuɖuɖu, kple Islam sukuwo nyuie.';

  @override
  String get placesMapTilesUnavailableTitle => 'Map tiles mele afima o';

  @override
  String get placesMapTilesUnavailableBody =>
      'Womeɖo anyigbatata tile dzɔtsoƒe si ŋu woɖo kpee na xɔtutu sia haɖe o. Teƒe siwo te ɖe ŋuwò ate ŋu atsɔ agba tso teƒe si nèdzra ɖo la kokoko.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'Etsɔa nyatakakawo ɖoa teƒe siwo womele o';

  @override
  String get placesDataSourceUnavailableBody =>
      'Womeɖo teƒewo ƒe nyatakaka ƒe nuwuƒe si ŋu woɖo kpee na xɔtutu sia haɖe o. Ðo PLACES_OVERPASS_API_URL ɖe teƒenɔla alo dɔwɔƒe si dzi woda asi ɖo hafi nàna didi si te ɖe ŋuwò nawɔ dɔ.';

  @override
  String get unknownPlaceName => 'Ŋkɔ si Womenya o';

  @override
  String get islamicPlaceFallback => 'Islamtɔwo ƒe Teƒe';

  @override
  String get asmaMeaning1 => 'Ame si ɖea vi';

  @override
  String get asmaMeaning2 => 'Nublanuikpɔla';

  @override
  String get asmaMeaning3 => 'Fia / Aƒetɔ Mavɔ';

  @override
  String get asmaMeaning4 => 'Kɔkɔetɔ kekeake';

  @override
  String get asmaMeaning5 => 'Ŋutifafa Dzɔtsoƒe';

  @override
  String get asmaMeaning6 => 'Dedienɔnɔ ƒe Nala';

  @override
  String get asmaMeaning7 => 'Dzɔla la';

  @override
  String get asmaMeaning8 => 'Ame Xɔasi / Ŋusẽtɔ Kekeake';

  @override
  String get asmaMeaning9 => 'Ame si ƒoa nya ɖe ame nu';

  @override
  String get asmaMeaning10 => 'Gãtɔ kekeake';

  @override
  String get asmaMeaning11 => 'Wɔla la';

  @override
  String get asmaMeaning12 => 'Ame si wɔa ɖoɖo';

  @override
  String get asmaMeaning13 => 'Atsyɔ̃ɖoɖo ƒe Nɔnɔmewɔla';

  @override
  String get asmaMeaning14 => 'Ame si tsɔa Ke';

  @override
  String get asmaMeaning15 => 'Ame si bɔbɔa eɖokui';

  @override
  String get asmaMeaning16 => 'Nuwo Katã ƒe Nunala';

  @override
  String get asmaMeaning17 => 'Ame si léa ame ɖe te';

  @override
  String get asmaMeaning18 => 'Ʋuʋula la';

  @override
  String get asmaMeaning19 => 'Ame Siwo Katã Nya';

  @override
  String get asmaMeaning20 => 'Mɔxexeɖeta';

  @override
  String get asmaMeaning21 => 'Kpeɖeŋutɔ la';

  @override
  String get asmaMeaning22 => 'Amegãɖeɖi la';

  @override
  String get asmaMeaning23 => 'Dziƒola';

  @override
  String get asmaMeaning24 => 'Bubudede Ame Ŋu';

  @override
  String get asmaMeaning25 => 'Ŋusẽtɔ la';

  @override
  String get asmaMeaning26 => 'Nu Katã ƒe Nyasela';

  @override
  String get asmaMeaning27 => 'Wo katã ƒe Nukpɔla';

  @override
  String get asmaMeaning28 => 'Ʋɔnudrɔ̃la la';

  @override
  String get asmaMeaning29 => 'Dzɔdzɔetɔwo';

  @override
  String get asmaMeaning30 => 'Ame si menya kpɔna dzea sii bɔbɔe o';

  @override
  String get asmaMeaning31 => 'Ame Siwo Katã Nya';

  @override
  String get asmaMeaning32 => 'Tɔgbuidzidzi';

  @override
  String get asmaMeaning33 => 'Nu wɔnuku la';

  @override
  String get asmaMeaning34 => 'Nutsɔtsɔke Gã la';

  @override
  String get asmaMeaning35 => 'Akpedada ƒe Teƒeɖoɖowɔla';

  @override
  String get asmaMeaning36 => 'Ame Kɔkɔtɔ';

  @override
  String get asmaMeaning37 => 'Gãtɔ kekeake';

  @override
  String get asmaMeaning38 => 'Nudzraɖoƒea';

  @override
  String get asmaMeaning39 => 'Nunyila la';

  @override
  String get asmaMeaning40 => 'Akɔntabubuwɔla';

  @override
  String get asmaMeaning41 => 'Amegã la';

  @override
  String get asmaMeaning42 => 'Ame si nye Dɔmenyotɔ';

  @override
  String get asmaMeaning43 => 'Ame si le ŋudzɔ';

  @override
  String get asmaMeaning44 => 'Gbedodoɖa ƒe Nyaŋuɖola';

  @override
  String get asmaMeaning45 => 'Amewo Katã Gɔmesese';

  @override
  String get asmaMeaning46 => 'Nunyala Deblibo';

  @override
  String get asmaMeaning47 => 'Lɔlɔ̃tɔ la';

  @override
  String get asmaMeaning48 => 'Ŋkɔkɔkɔtɔ Kekeake';

  @override
  String get asmaMeaning49 => 'Tsitretsiɖeŋula';

  @override
  String get asmaMeaning50 => 'Ðasefo la';

  @override
  String get asmaMeaning51 => 'Nyateƒe la';

  @override
  String get asmaMeaning52 => 'Nu Kakaɖedzidzikpɔla';

  @override
  String get asmaMeaning53 => 'Ŋusẽwo Katã ƒe Amesi';

  @override
  String get asmaMeaning54 => 'Ŋusẽtɔwo';

  @override
  String get asmaMeaning55 => 'Ametakpɔla la';

  @override
  String get asmaMeaning56 => 'Amesiwo Wokafu';

  @override
  String get asmaMeaning57 => 'Ame si ƒe asixɔxɔ dede nu ŋu';

  @override
  String get asmaMeaning58 => 'Dɔwɔƒea';

  @override
  String get asmaMeaning59 => 'Gbugbɔgaɖoanyila';

  @override
  String get asmaMeaning60 => 'Agbenala';

  @override
  String get asmaMeaning61 => 'Agbexɔla';

  @override
  String get asmaMeaning62 => 'Ame Si Le Agbe Tegbee';

  @override
  String get asmaMeaning63 => 'Ame si Kpɔa Ðokuiwò Ðe Edzi';

  @override
  String get asmaMeaning64 => 'Nu Dila';

  @override
  String get asmaMeaning65 => 'Ŋkɔkɔetɔawo';

  @override
  String get asmaMeaning66 => 'Ame ɖeka kolia';

  @override
  String get asmaMeaning67 => 'Ame ɖeka';

  @override
  String get asmaMeaning68 => 'Amesi Amesiame Di';

  @override
  String get asmaMeaning69 => 'Ŋusẽtɔwo';

  @override
  String get asmaMeaning70 => 'Ŋusẽwo katã Wɔla';

  @override
  String get asmaMeaning71 => 'Ame si wɔa nu kabakaba';

  @override
  String get asmaMeaning72 => 'Ame si tsi megbe';

  @override
  String get asmaMeaning73 => 'Gbãtɔ';

  @override
  String get asmaMeaning74 => 'Mlɔetɔ';

  @override
  String get asmaMeaning75 => 'Nu si dze ƒã';

  @override
  String get asmaMeaning76 => 'Nu Ɣla';

  @override
  String get asmaMeaning77 => 'Dudzikpɔla';

  @override
  String get asmaMeaning78 => 'Ame Kɔkɔetɔ';

  @override
  String get asmaMeaning79 => 'Nu Nyui Wɔla';

  @override
  String get asmaMeaning80 => 'Mɔfiame na Dzimetɔtrɔ';

  @override
  String get asmaMeaning81 => 'Hlɔ̃biala la';

  @override
  String get asmaMeaning82 => 'Nutsɔtsɔke la';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'Aƒetɔ / Dziɖulagã na Amesiame';

  @override
  String get asmaMeaning85 => 'Aƒetɔ si si Aƒetɔ kple Bounty le';

  @override
  String get asmaMeaning86 => 'Amesi Dzɔdzɔe';

  @override
  String get asmaMeaning87 => 'Nuƒoƒoƒula';

  @override
  String get asmaMeaning88 => 'Kesinɔtɔ la';

  @override
  String get asmaMeaning89 => 'Amesi naa kesinɔnuwo';

  @override
  String get asmaMeaning90 => 'Mɔxexe Ðe Nuveviwɔame Nu';

  @override
  String get asmaMeaning91 => 'Amesi He Nuveviwɔame vɛ';

  @override
  String get asmaMeaning92 => 'Viɖewo Nala';

  @override
  String get asmaMeaning93 => 'Kekeli la';

  @override
  String get asmaMeaning94 => 'Mɔfiala la';

  @override
  String get asmaMeaning95 => 'Dɔwɔƒea';

  @override
  String get asmaMeaning96 => 'Mavɔtɔ la';

  @override
  String get asmaMeaning97 => 'Domenyila la';

  @override
  String get asmaMeaning98 => 'Mɔfiala si Dzɔdzɔe Wu';

  @override
  String get asmaMeaning99 => 'Dɔnɔa';
}
