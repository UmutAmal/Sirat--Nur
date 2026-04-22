// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Igbo (`ig`).
class AppLocalizationsIg extends AppLocalizations {
  AppLocalizationsIg([String locale = 'ig']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Ụzọ Ìhè nke Islam';

  @override
  String get home => 'Ụlọ';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Kalenda';

  @override
  String get settings => 'Ntọala';

  @override
  String get nextPrayer => 'Ekpere ọzọ';

  @override
  String get prayerTimes => 'Oge Ekpere';

  @override
  String get continueReading => 'Continue Reading';

  @override
  String get getLifetimePro => 'Get Lifetime Pro';

  @override
  String get unlockTajweed => 'Unlock Tajweed & Advanced Features';

  @override
  String get prayerCalculation => 'Ngụkọ ekpere';

  @override
  String get method => 'Usoro mgbako';

  @override
  String get madhab => 'Usoro iwu nke Asr';

  @override
  String get surahs => 'Surah';

  @override
  String get ayahs => 'Ayah';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Ọwụwa anyanwụ';

  @override
  String get dhuhr => 'Dhuh';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Magrib';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Oge maka $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Oge eruola ikpe ekpere $prayerName.';
  }

  @override
  String get dataStorage => 'Data & Nchekwa';

  @override
  String get clearCache => 'Kpochapụ cache';

  @override
  String get cacheClearedSuccess => 'A kpochapụrụ cache nke ọma';

  @override
  String get location => 'Ebe';

  @override
  String get language => 'Asụsụ';

  @override
  String get selectLanguage => 'Họrọ Asụsụ';

  @override
  String get searchLanguage => 'Search 180+ languages...';

  @override
  String get systemDefault => 'Sistemụ ndabara';

  @override
  String get currentLocation => 'Ebe dị ugbu a (GPS)';

  @override
  String get locationServiceDisabled => 'Agbanyụrụ ọrụ ebe.';

  @override
  String get locationPermissionDenied => 'Ajụrụ ikike ebe.';

  @override
  String get locationDetectionFailed =>
      'Enweghị ike ịchọpụta ọnọdụ gị. Biko jiri aka họrọ obodo ma ọ bụ nwaa ọzọ.';

  @override
  String citiesCount(String count) {
    return 'Obodo $count';
  }

  @override
  String get search => 'Chọọ';

  @override
  String get searchHint => 'Chọọ...';

  @override
  String get noResults => 'Ọnweghị nsonaazụ ahụrụ';

  @override
  String get loading => 'Na-ebu...';

  @override
  String get error => 'Njehie';

  @override
  String get appErrorOccurred => 'Enwere mperi';

  @override
  String get appUnknownError => 'Njehie amaghị';

  @override
  String get quranLoadFailed =>
      'Enweghị ike ibunye ọdịnaya Quran. Biko nwaa ọzọ.';

  @override
  String get retry => 'Gbalịa ọzọ';

  @override
  String get refreshAction => 'Weghachite ume';

  @override
  String get cancel => 'Kagbuo';

  @override
  String get save => 'Chekwa';

  @override
  String get delete => 'Hichapụ';

  @override
  String get edit => 'Edit';

  @override
  String get close => 'Close';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'Mba';

  @override
  String get surah => 'Surah';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Ibe';

  @override
  String get reading => 'Reading';

  @override
  String get recitation => 'Recitation';

  @override
  String get translation => 'Ntụgharị asụsụ';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Na-ebu tafsir...';

  @override
  String get tafsirSourceLabel => 'Isi mmalite Tafsir';

  @override
  String get tafsirNoSurahFound => 'Enweghị tafsir ahụrụ maka surah a.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Enweghị tafsir ahụrụ maka ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Enweghị ike ibunye Tafsir.';

  @override
  String get tafsirNoTextForAyah => 'Enweghị ederede tafsir maka ayah a.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Na-ebudata tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Na-ebu tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Isi mmalite Tafsir weghachiri mperi HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Isi mmalite tafsir ahọpụtara weghachighị ndenye ọ bụla.';

  @override
  String get tafsirCacheUnavailable =>
      'Ekwenyere tafsir adịkwaghị na ntanetị. Mekọrịta dataset tafsir ewepụtara tupu ịme nchọgharị.';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get addBookmark => 'Tinye ibe edokọbara';

  @override
  String get removeBookmark => 'Wepu ibe edokọbara';

  @override
  String get lastRead => 'Last Read';

  @override
  String get dailyZikr => 'Daily Zikr';

  @override
  String get duaMeaning1 =>
      'ndị ọzọ na-ekpe ekpere, sị, ‘Onyenwe anyị, nye anyị ihe ọma n’ụwa a na n’ụwa, chebe anyị pụọ n’ahụhụ nke ọkụ.';

  @override
  String get duaMeaning2 =>
      'Chineke adịghị ebu mkpụrụ obi ọ bụla ibu karịa ihe ọ pụrụ iburu: onye ọ bụla na-enweta ihe ọma ọ bụla o mere, na-ata ahụhụ ihe ọjọọ ya- ‘Onyenwe anyị, ewerela anyị n’ọrụ ma ọ bụrụ na anyị echefuo ma ọ bụ mehie. Onyenweanyị, ebula anyị ibu dị ka I boro ndị bu anyị ụzọ. Onye-nwe-anyị, etinyela anyị ibu karịa ka anyị nwere ike ibu. Gbaghara anyị, gbaghara anyị, meekwa anyị ebere. Ị bụ onye nchebe anyị, ya mere nyere anyị aka megide ndị na-ekweghị ekwe.';

  @override
  String get duaMeaning3 =>
      '‘Onye-nwe-anyị, ekwela ka obi anyị gbagharịa ma I duzie anyị. Nye ayi ebere Gi: Gi bu onye na-enye mgbe nile.';

  @override
  String get duaMeaning4 =>
      'Onyenweanyị, mee ka mụ na ụmụ m na-ekpesi ekpere ike. Onyenweanyị, nara arịrịọ m.';

  @override
  String get duaMeaning5 =>
      'wedata nku-gi n\'obi umeala n\'ebe ha nọ n\'obi-ọma, si, Onye-nwe-ayi, mere ha ebere, dika ha lekọtaworom mb͕e m\'di ntà.';

  @override
  String get duaMeaning6 =>
      'Chineke dị elu, Onye na-achị n\'ezie. [Prọfet], kûsọp ukot ẹkot mbemiso ediyarade oro ọyọhọ ọyọhọ, edi dọhọ ete, ‘Ọbọn̄, anam mi ọdọdiọn̄ ọfiọk!’';

  @override
  String get duaMeaning7 =>
      'Kwuo [Amụma], ‘Onyenwe anyị, gbaghara ma mee ebere: Ị bụ onye obi ebere karịa ihe niile.’';

  @override
  String get duaMeaning8 =>
      'ndị na-ekpe ekpere, ‘Onyenwe anyị, nye anyị ọṅụ n’ime di na nwunye na ụmụ anyị. Mee anyị ezi ihe atụ nye ndị maara gị’.';

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
  String get hadith => 'Hadith';

  @override
  String get hadithCollection => 'Nchịkọta Hadith';

  @override
  String get hadithBooks => 'Akwụkwọ Hadith';

  @override
  String get searchHadith => 'Chọọ Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Aha nke Allah';

  @override
  String get liveTv => 'Igwe onyonyo dị ndụ';

  @override
  String get watchLive => 'Lelee Live';

  @override
  String get streamError => 'Njehie iyi';

  @override
  String get reload => 'Bugharịa';

  @override
  String get openInYoutube => 'Mepee na YouTube';

  @override
  String get ibadahTracker => 'Ibada Tracker';

  @override
  String get fasting => 'Ibu ọnụ';

  @override
  String get quranReading => 'Ọgụgụ Quran';

  @override
  String get prayers => 'Ekpere';

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
  String get weeklyProgress => 'Ọganihu kwa izu';

  @override
  String get monthlyProgress => 'Monthly Progress';

  @override
  String get statistics => 'Statistics';

  @override
  String get hijriCalendar => 'Kalịnda Hijiri';

  @override
  String get gregorianCalendar => 'Gregorian Calendar';

  @override
  String get today => 'Taa';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get specialDays => 'Ụbọchị pụrụ iche';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Afọ Ọhụrụ nke Islam';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadan';

  @override
  String get specialDayDateLaylatAlQadr => '27 nke ọnwa Ramadan';

  @override
  String get specialDayDateEidAlFitr => '1 Shawwal';

  @override
  String get specialDayDateEidAlAdha => '10 Dhul Hijjah';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharram';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabi al-Awwal';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'Ntuziaka Qibla';

  @override
  String get compass => 'Kompas';

  @override
  String get degrees => 'degrees';

  @override
  String get north => 'North';

  @override
  String get qiblaFound => 'Qibla hụrụ!';

  @override
  String get turnDevice => 'Tụgharịa ngwaọrụ gị ka chere Qibla ihu';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Compass error: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Ihe mmetụta kompas adịghị na ngwaọrụ a.';

  @override
  String get qiblaLocationRequiredTitle => 'Ebe achọrọ maka Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Tọọ ọnọdụ gị n\'ezie tupu i jiri kompas Qibla ka e nwee ike gbakọọ ntụzịaka nke ọma.';

  @override
  String get adhanNotificationChannelName => 'Ọkwa Adhan';

  @override
  String get adhanNotificationChannelDescription =>
      'Ekpere oge alerts na adhan ụda.';

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
  String get theme => 'Isiokwu';

  @override
  String get lightMode => 'Ọnọdụ ọkụ';

  @override
  String get darkMode => 'Ọnọdụ gbara ọchịchịrị';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'Ihe gbasara';

  @override
  String get version => 'Ụdị';

  @override
  String get privacyPolicy => 'Amụma nzuzo';

  @override
  String get termsOfService => 'Usoro ọrụ';

  @override
  String get contactUs => 'Kpọtụrụ anyị';

  @override
  String get rateApp => 'Ọnụ ego ngwa';

  @override
  String get shareApp => 'Kekọrịta ngwa';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Lelee $appName: Ngwa kacha ebi ndụ islam! $url';
  }

  @override
  String get downloadManager => 'Onye njikwa nbudata';

  @override
  String get downloads => 'Nbudata';

  @override
  String get downloading => 'Na-ebudata...';

  @override
  String get downloadComplete => 'Budata zuru ezu';

  @override
  String get downloadFailed => 'Nbudata agaghị';

  @override
  String get offlineMode => 'Ụdị anọghị n\'ịntanetị';

  @override
  String get noInternet => 'Enweghị njikọ ịntanetị';

  @override
  String get checkConnection => 'Biko lelee njikọ gị';

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
  String get getStarted => 'Malite';

  @override
  String get skip => 'Skip';

  @override
  String get next => 'Na-esote';

  @override
  String get done => 'Emechaala';

  @override
  String get onboarding1Title => 'Nnọọ na Sirat-ı Nur';

  @override
  String get onboarding1Desc =>
      'Ngwa enyi gị islam zuru oke maka oge ekpere, Quran na ndị ọzọ';

  @override
  String get onboarding2Title => 'Oge Ekpere';

  @override
  String get onboarding2Desc => 'Oge ekpere ziri ezi dabere na ọnọdụ gị';

  @override
  String get onboarding3Title => 'Quran & Ndị ọzọ';

  @override
  String get onboarding3Desc =>
      'Gua Quran, soro agụmagụ gị wee chọpụta ọdịnaya Islam';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'Tọgharịa Counter';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'Ebumnuche: $target';
  }

  @override
  String get tapToCount => 'Pịa ka ịgụọ';

  @override
  String get zikrCompletedMashAllah => 'Emechaala! MashaAllah';

  @override
  String get zikrMeaningSubhanAllah => 'Allah dị elu karịa ezughị okè ọ bụla.';

  @override
  String get zikrMeaningAlhamdulillah => 'Otuto niile bụ nke Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah kachasi ike.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Ọ dịghị chi ma ọ bụghị Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'M na-arịọ Allah mgbaghara.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Ọ dịghị ike na ọ dịghị ike ma e wezụga site Allah.';

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
  String get dailyProgress => 'Ọganihu kwa ụbọchị';

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
  String get recheckPremium => 'Lelee ọkwa ndenye aha adịchaghị';

  @override
  String get syncStore =>
      'Mekọrịta na ụlọ ahịa ngwà iji kwado ndenye aha gị adịchaghị.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'Ekwenyere ndenye aha adịchaghị.';

  @override
  String get premiumNotFound => 'Ahụghị ndebanye aha adịchaghị.';

  @override
  String premiumRefreshError(Object error) {
    return 'Enweghị ike iweghachi ọkwa ndebanye aha adịchaghị: $error';
  }

  @override
  String get offlineDownloadManager =>
      'Onye njikwa nbudata na-anọghị n\'ịntanetị';

  @override
  String get manageDatasets =>
      'Jikwaa nnukwu ọdịyo na ntanetị na ngwugwu data.';

  @override
  String get freeStorage => 'Hapụ ebe nchekwa ngwaọrụ dị n\'ime.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'Na-elele nchekwa data Quran...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'Ọnọdụ nchekwa data nke Quran';

  @override
  String statusLabel(Object status) {
    return 'Ọnọdụ: $status';
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
    return 'Nlele Quran dara: $error';
  }

  @override
  String get audioVoice => 'Olu olu';

  @override
  String get audioVoiceMisharyAlafasy => 'Nwoke (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Nwoke (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Nwoke (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Nhazi nke Qibla';

  @override
  String get compassSmoothing => 'Kompas na-amụmụ ọnụ ọchị';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Mmezi mmezi';

  @override
  String currentOffset(Object offset) {
    return 'Ugbu a: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Gbanwee ma ọ bụrụ na kompas gị chọrọ mgbazi akwụkwọ ntuziaka. Ụkpụrụ ziri ezi na-atụgharị n\'akụkụ elekere.';

  @override
  String get apply => 'Tinye mgbanwe';

  @override
  String get resetOnboarding => 'Tọgharịa nhazi mmalite';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Nchọpụta nchọpụta';

  @override
  String get diagnosticsNotSet => 'Edobeghị';

  @override
  String get diagnosticsPrayerProfile => 'Profaịlụ ekpere';

  @override
  String get diagnosticsPrayerSource => 'Ikike ekpere';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Omenala / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Akuku omenala ejiri aka (enweghị isi mmalite)';

  @override
  String get diagnosticsCloudDriven => 'Igwe ojii chụpụrụ';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Akụ';

  @override
  String get diagnosticsQuranAudioAssets => 'Akụrụngwa ọdịyo nke Quran';

  @override
  String get diagnosticsAudioAssets => 'Akụrụngwa ọdịyo';

  @override
  String diagnosticsFilesCount(String count) {
    return 'faịlụ $count';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Gosipụta agụghị: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Mpaghara Mpaghara';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count supported';
  }

  @override
  String get diagnosticsQuranDataset => 'Dataset nke Quran';

  @override
  String get diagnosticsQuranSurahs => 'Surah nke Quran';

  @override
  String get diagnosticsQuranAyahs => 'Quran Ayah';

  @override
  String get diagnosticsQuranJuzMetadata => 'Quran Juz metadata';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Tebụl igwe ojii na-efu na Supabase; ngwungwu ọdịda na-arụ ọrụ';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Nyocha igwe ojii dara: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz metadata efu; ngwugwu structural fallback na-arụ ọrụ';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Nlele nhazi igwe ojii dara: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'achọrọ nhazi nhazi. Tụgharịa ngwaọrụ na ọnụ ọgụgụ-8.';

  @override
  String get dailyVerse => 'Amaokwu kwa ụbọchị';

  @override
  String get dailyVerseUnavailableTitle => 'Amaghị amaokwu kwa ụbọchị';

  @override
  String get dailyVerseUnavailableBody =>
      'ahazibeghị ọdịnaya amaokwu kwa ụbọchị ka ọ rụọ ọrụ a. Jikọọ na isi iyi igwe ojii ma ọ bụ mekọrịta cache enwetara tupu ị chọgharịa.';

  @override
  String get todaysIbadah => 'Ibada nke taa';

  @override
  String get quickAccess => 'Nweta ngwa ngwa';

  @override
  String get assistant => 'Enyemaka';

  @override
  String get places => 'Ebe';

  @override
  String get library => 'Ụlọ akwụkwọ';

  @override
  String get analytics => 'Nchịkọta';

  @override
  String get dailyDuas => 'Duas kwa ụbọchị';

  @override
  String essentialDuas(String count) {
    return '$count duas dị mkpa';
  }

  @override
  String get duaUnavailableTitle => 'Duas akwadoro adịghị';

  @override
  String get duaUnavailableBody =>
      'Emekọrịtabeghị duas kwa ụbọchị na ngwaọrụ a. Jikọọ na isi iyi ígwé ojii iji buo duas ewepụtara kama ịdaghachi azụ achọpụtaghị.';

  @override
  String get duaCategoryQuranic => 'Quran dua';

  @override
  String get duaCategoryMorningEvening => 'Ụtụtụ na mgbede';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Nchedo';

  @override
  String get duaCategoryBeginning => 'Mmalite';

  @override
  String get duaCategorySleep => 'Ụra';

  @override
  String get duaCategoryFoodDrink => 'Nri na ihe ọṅụṅụ';

  @override
  String get duaCategoryForgiveness => 'Mgbaghara';

  @override
  String get duaCategoryHome => 'Ụlọ';

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
  String get islamicEducation => 'Education nke Islam';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Nchịkọta Hadith';

  @override
  String get hadithSourcePending => 'Ekwenyere na isi iyi na-echere';

  @override
  String get hadithUnavailableTitle =>
      'Nchịkọta haddi ekwenyeghị ekwenye adịbeghị';

  @override
  String get hadithUnavailableBody =>
      'Nke a na-ewu ka na-adabere na unverified mpụga hadith ndepụta. A na-enwe nkwarụ chọgharịa haddith ruo mgbe emekọrịtara ntọala data ewepụtara.';

  @override
  String get paywallUnlockAll => 'Mepee atụmatụ niile maka njem ime mmụọ gị';

  @override
  String get premiumProductUnavailable =>
      'Ngwaahịa adịchaghị adị ugbu a. Biko nwaa ọzọ ma emechaa.';

  @override
  String get premiumPurchaseFailed => 'Enweghị ike ịzụta ya. Biko nwaa ọzọ.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'Q&A na-akparaghị ókè AI';

  @override
  String get paywallFeature2Title => 'Na-anọghị n\'ịntanetị na-akparaghị ókè';

  @override
  String get paywallFeature2Desc => 'Budata agụmagụ niile';

  @override
  String get paywallFeature3Title => 'Ekebere Nanị';

  @override
  String get paywallFeature3Desc => 'Gburugburu ama mkpụrụedemede';

  @override
  String get paywallFeature4Title => 'Enweghị mgbasa ozi';

  @override
  String get paywallFeature4Desc => 'Mgbasa ozi efu';

  @override
  String get paywallGetAccess => 'Nweta ohere ndụ - \$1.00';

  @override
  String get restorePurchases => 'Weghachi azụ ahịa';

  @override
  String get zakatCalculator => 'Ihe mgbako Zakat';

  @override
  String get zakatGold => 'Ọlaedo (Altın)';

  @override
  String get zakatSilver => 'Ọlaọcha (Gümüş)';

  @override
  String get zakatCashBank => 'Ego / Bank';

  @override
  String get zakatBusiness => 'Azụmahịa';

  @override
  String get zakatInvestments => 'Ntinye ego';

  @override
  String get zakatWeightGrams => 'Ibu (g)';

  @override
  String get zakatPricePerGram => 'Ọnụ ahịa/g';

  @override
  String get zakatTotalAmount => 'Mkpokọta ọnụego';

  @override
  String get zakatInventoryValue => 'Uru Ndepụta Ngwaahịa';

  @override
  String get zakatDebts => 'Ụgwọ';

  @override
  String get zakatTotal => 'Mkpokọta';

  @override
  String get calculateZakat => 'Gbakọọ Zakat';

  @override
  String get nisabNotReached => 'Nisab eruteghị. Zakat abụghị iwu.';

  @override
  String get totalZakat => 'Mkpokọta Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Akụrụngwa: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakat ọla edo';

  @override
  String get zakatSilverZakat => 'Zakat ọla ọcha';

  @override
  String get zakatCashZakat => 'Ego ego Zakat';

  @override
  String get zakatBusinessZakat => 'Zakat azụmahịa';

  @override
  String get zakatInvestmentZakat => 'Zakat itinye ego';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! Abụ m onye enyemaka islam gị. Jụọ m gbasara ekpere, ibu ọnụ, zakat, ma ọ bụ isiokwu Islam ọ bụla.';

  @override
  String get chatbotLimitReached =>
      'Eruola oke ajụjụ ọnụ kwa ụbọchị. Kwalite na Premium maka enweghị oke.';

  @override
  String get chatbotErrorMsg =>
      'Enweghị m ike iwepụta nzaghachi. Biko nwaa ọzọ.';

  @override
  String get chatbotOfflinePrompt =>
      'A ka na-echekwa ntọala ihe ọmụma Islam na-anọghị n\'ịntanetị. Ị nwere ike mee ka ọ daa azụ na-anọghị n\'ịntanetị ugbu a, mana ọ ga-egosi naanị ozi nchekwa nwere oke ruo mgbe nhazi data ewepụtara dị njikere.\n\nỌ ga-amasị gị ịgbalite ọdịda na-anọghị n\'ịntanetị?';

  @override
  String get chatbotOfflineSwitched =>
      'Agbanyere ọdịda na-anọghị n\'ịntanetị. Azịza ndị islam mpaghara akwadoro adịbeghị.';

  @override
  String get chatbotOfflineDownloadLabel => 'Kwado ọdịda na-anọghị n\'ịntanetị';

  @override
  String get downloadPreparing => 'Na-akwado nbudata...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Na-ebudata surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Ebudatalarị surah niile maka onye na-agụ akwụkwọ a.';

  @override
  String get offlineQuranAudioPacks =>
      'Ngwungwu ọdịyo Quran na-anọghị n\'ịntanetị';

  @override
  String storedOnDeviceMb(String size) {
    return 'Echekwara na ngwaọrụ: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total ebudatara surah.';
  }

  @override
  String get redownloadMissingRepair => 'Mmezi / nbudata efu';

  @override
  String get downloadAction => 'Budata';

  @override
  String get resumeDownload => 'Gaa n\'ihu nbudata';

  @override
  String get deleteDownloadedFiles => 'Hichapụ faịlụ ebudatara';

  @override
  String get downloadCancelling => 'Na-akagbu...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Kagburu nbudata maka $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Nbudata emechara maka $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Nbudata emechara maka $reciter nwere surah $failed dara ada ($downloaded/$total ebudatara).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'ehichapụ faịlụ ndị na-adịghị n\'ịntanetị maka $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Isi mmalite ọdịyo Quran akwadoro adịghị ugbu a.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Ngwungwu ọdịyo nke Quran ezughị oke ($available/$total). Gbalịa ọzọ ka emelitere katalọgụ ọdịyo.';
  }

  @override
  String get chatbotHint => 'Jụọ ajụjụ...';

  @override
  String get chatbotThinking => 'Na-eche...';

  @override
  String get sukunMixerSubtitle => 'Nature & Qur\'an mixer';

  @override
  String get audioPlayFailed => 'Nkpọghachi ọdịyo dara';

  @override
  String get sukunNatureLabel => 'Sukun (Nature)';

  @override
  String get sukunRainOfMercy => 'Mmiri ozuzo nke ebere';

  @override
  String get sukunGardenOfPeace => 'Ogige Udo';

  @override
  String get sukunMidnightCalm => 'Ụyọkọ etiti abalị';

  @override
  String get sukunOceanTawheed => 'Oké Osimiri Tawheed';

  @override
  String get sukunUnavailableTitle => 'Ụda ụda adịghị';

  @override
  String get sukunUnavailableBody =>
      'Ihe owuwu a agụnyeghị akụ mpaghara ụda Sukun achọrọ.';

  @override
  String get prayerCompletion => 'Emecha ekpere';

  @override
  String get streaks => 'Egwu';

  @override
  String get dayStreak => 'Ogologo ụbọchị';

  @override
  String get bestStreak => 'Ogologo kacha mma';

  @override
  String get chatbotCloudAiLabel => 'Igwe ojii AI';

  @override
  String get chatbotLocalAiLabel => 'Ndaghachi na-anọghị n\'ịntanetị';

  @override
  String get chatbotUseCloudAi => 'Jiri igwe ojii AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Kwado ọdịda na-anọghị n\'ịntanetị';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count ekpe';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Ahazighị igwe ojii API. Ntuziaka islam akwadoro na adịghị n\'ịntanetị adịghị ugbu a.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] ntụzịaka islam mpaghara enyochabeghị ugbu a. Banye na Cloud AI maka azịza ewepụtara.';

  @override
  String get mosques => 'Ụlọ alakụba';

  @override
  String get halalFood => 'Nri Halal';

  @override
  String get placesSearchArea => 'Chọọ mpaghara a';

  @override
  String get nearbyMosques => 'Ụlọ alakụba dị nso';

  @override
  String get islamicSchools => 'Ụlọ akwụkwọ islam';

  @override
  String placesFoundCount(String count) {
    return '$count hụrụ';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km pụọ';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API Error: $statusCode';
  }

  @override
  String get placesNetworkError => 'Njehie netwọkụ. Biko nwaa ọzọ.';

  @override
  String get placesLocationRequiredTitle => 'Ebe achọrọ';

  @override
  String get placesLocationRequiredBody =>
      'Tọọ ebe mbụ ka e wee chọọ ụlọ alakụba dị nso, nri halal na ụlọ akwụkwọ islam nke ọma.';

  @override
  String get placesMapTilesUnavailableTitle => 'Taịlị maapụ adịghị';

  @override
  String get placesMapTilesUnavailableBody =>
      'Ahaziri isi iyi taịlị maapụ akwadoro maka nrụpụta a. Ebe ndị dị nso ka nwere ike ibunye na ebe echekwara gị.';

  @override
  String get placesDataSourceUnavailableTitle => 'Ebe data adịghị';

  @override
  String get placesDataSourceUnavailableBody =>
      'Ahaziri ebe njedebe data akwadoro maka iwulite a. Tọọ PLACES_OVERPASS_API_URL ka ọ bụrụ onye nnọchi anya ma ọ bụ onye na-eweta akwadoro tupu ịmee ọchụchọ dị nso.';

  @override
  String get unknownPlaceName => 'Aha amaghi ama';

  @override
  String get islamicPlaceFallback => 'Ebe islam';

  @override
  String get asmaMeaning1 => 'Onye bara uru';

  @override
  String get asmaMeaning2 => 'Onye Ebere';

  @override
  String get asmaMeaning3 => 'Eze / Dinwenu ebighi ebi';

  @override
  String get asmaMeaning4 => 'Kasị Nsọ';

  @override
  String get asmaMeaning5 => 'Isi Udo';

  @override
  String get asmaMeaning6 => 'Onye na-enye nchekwa';

  @override
  String get asmaMeaning7 => 'Onye nche';

  @override
  String get asmaMeaning8 => 'Onye Dị oke ọnụ ahịa / Kasị Dike';

  @override
  String get asmaMeaning9 => 'Onye na-eme ihe ike';

  @override
  String get asmaMeaning10 => 'Kachasị ukwuu';

  @override
  String get asmaMeaning11 => 'Onye Okike';

  @override
  String get asmaMeaning12 => 'Onye mebere iwu';

  @override
  String get asmaMeaning13 => 'Onye Nhazi Mma';

  @override
  String get asmaMeaning14 => 'Mgbaghara';

  @override
  String get asmaMeaning15 => 'Onye na-achị';

  @override
  String get asmaMeaning16 => 'Onye nyere mmadụ niile';

  @override
  String get asmaMeaning17 => 'Onye nkwado';

  @override
  String get asmaMeaning18 => 'Onye mmeghe';

  @override
  String get asmaMeaning19 => 'Onye maara ihe niile';

  @override
  String get asmaMeaning20 => 'Onye na-eme ihe';

  @override
  String get asmaMeaning21 => 'Onye enyemaka';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'Onye Elu';

  @override
  String get asmaMeaning24 => 'Onye na-enye nsọpụrụ';

  @override
  String get asmaMeaning25 => 'Onye mmechuihu';

  @override
  String get asmaMeaning26 => 'Onye na-anụ ihe niile';

  @override
  String get asmaMeaning27 => 'Onye na-ahụ ihe niile';

  @override
  String get asmaMeaning28 => 'Onyeikpe';

  @override
  String get asmaMeaning29 => 'Onye ezi omume';

  @override
  String get asmaMeaning30 => 'Nke dị aghụghọ';

  @override
  String get asmaMeaning31 => 'Ndị niile maara';

  @override
  String get asmaMeaning32 => 'Onye na-ebu ụzọ';

  @override
  String get asmaMeaning33 => 'Ebube';

  @override
  String get asmaMeaning34 => 'Onye Ngbaghara';

  @override
  String get asmaMeaning35 => 'Onye na-enye ekele ekele';

  @override
  String get asmaMeaning36 => 'Nke Kachasị Elu';

  @override
  String get asmaMeaning37 => 'Kachasị ukwuu';

  @override
  String get asmaMeaning38 => 'Ihe nchekwa';

  @override
  String get asmaMeaning39 => 'Onye Nhazi';

  @override
  String get asmaMeaning40 => 'Onye na-agụta';

  @override
  String get asmaMeaning41 => 'Onye ebube';

  @override
  String get asmaMeaning42 => 'Onye mmesapụ aka';

  @override
  String get asmaMeaning43 => 'Onye Na-eche nche';

  @override
  String get asmaMeaning44 => 'Onye na-aza ekpere';

  @override
  String get asmaMeaning45 => 'Nghọta niile';

  @override
  String get asmaMeaning46 => 'Onye maara ihe nke ọma';

  @override
  String get asmaMeaning47 => 'Onye hụrụ n\'anya';

  @override
  String get asmaMeaning48 => 'Onye Kacha Ebube';

  @override
  String get asmaMeaning49 => 'Onye Nbilite';

  @override
  String get asmaMeaning50 => 'Onye akaebe';

  @override
  String get asmaMeaning51 => 'Eziokwu';

  @override
  String get asmaMeaning52 => 'Onye nlekọta zuru oke';

  @override
  String get asmaMeaning53 => 'Onye nwe ike niile';

  @override
  String get asmaMeaning54 => 'Onye ike';

  @override
  String get asmaMeaning55 => 'Onye nchekwa';

  @override
  String get asmaMeaning56 => 'Ndị Ekele';

  @override
  String get asmaMeaning57 => 'Onye Ntụle';

  @override
  String get asmaMeaning58 => 'Onye malitere';

  @override
  String get asmaMeaning59 => 'Onye na-eweghachi';

  @override
  String get asmaMeaning60 => 'Onye Na-enye Ndụ';

  @override
  String get asmaMeaning61 => 'Onye were ndụ';

  @override
  String get asmaMeaning62 => 'Onye Dị Ndụ';

  @override
  String get asmaMeaning63 => 'Onye na-akwado onwe ya';

  @override
  String get asmaMeaning64 => 'Onye Nchọta';

  @override
  String get asmaMeaning65 => 'Ebube';

  @override
  String get asmaMeaning66 => 'Naanị Otu';

  @override
  String get asmaMeaning67 => 'Onye';

  @override
  String get asmaMeaning68 => 'Onye Niile Na-achọ';

  @override
  String get asmaMeaning69 => 'Onye Ike';

  @override
  String get asmaMeaning70 => 'Onye kere ike niile';

  @override
  String get asmaMeaning71 => 'Onye na-eme njem';

  @override
  String get asmaMeaning72 => 'Onye na-egbu oge';

  @override
  String get asmaMeaning73 => 'Nke mbụ';

  @override
  String get asmaMeaning74 => 'Nke Ikpeazụ';

  @override
  String get asmaMeaning75 => 'Ihe ngosi';

  @override
  String get asmaMeaning76 => 'Ihe zoro ezo';

  @override
  String get asmaMeaning77 => 'Onye Gọvanọ';

  @override
  String get asmaMeaning78 => 'Onye Kasị Elu';

  @override
  String get asmaMeaning79 => 'Onye na-eme ihe ọma';

  @override
  String get asmaMeaning80 => 'Nduzi maka nchegharị';

  @override
  String get asmaMeaning81 => 'Onye ọbọ';

  @override
  String get asmaMeaning82 => 'Onye Mgbaghara';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'Onye nwe / Eze nke All';

  @override
  String get asmaMeaning85 => 'Onye nwe ebube na amara';

  @override
  String get asmaMeaning86 => 'Onye Kwesịrị Ekwesị';

  @override
  String get asmaMeaning87 => 'Onye nchịkọta';

  @override
  String get asmaMeaning88 => 'Onye Ogaranya';

  @override
  String get asmaMeaning89 => 'Onye na-emeju ihe';

  @override
  String get asmaMeaning90 => 'Onye na-egbochi mmerụ ahụ';

  @override
  String get asmaMeaning91 => 'Onye Na-eweta Nsogbu';

  @override
  String get asmaMeaning92 => 'Onye nyere uru';

  @override
  String get asmaMeaning93 => 'Ìhè';

  @override
  String get asmaMeaning94 => 'Onye Nduzi';

  @override
  String get asmaMeaning95 => 'Onye malitere';

  @override
  String get asmaMeaning96 => 'Onye Ebighị Ebi';

  @override
  String get asmaMeaning97 => 'Onye nketa';

  @override
  String get asmaMeaning98 => 'Nduzi kachasi ezi omume';

  @override
  String get asmaMeaning99 => 'Onye Nri';
}
