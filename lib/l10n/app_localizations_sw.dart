// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class AppLocalizationsSw extends AppLocalizations {
  AppLocalizationsSw([String locale = 'sw']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Njia ya Kiislamu ya Nuru';

  @override
  String get home => 'Nyumbani';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Kalenda';

  @override
  String get settings => 'Mipangilio';

  @override
  String get nextPrayer => 'Sala Inayofuata';

  @override
  String get prayerTimes => 'Nyakati za Maombi';

  @override
  String get continueReading => 'Endelea Kusoma';

  @override
  String get getLifetimePro => 'Pata Pro wa Maisha';

  @override
  String get unlockTajweed => 'Unlock Tajweed & Advanced Features';

  @override
  String get prayerCalculation => 'Hesabu ya Maombi';

  @override
  String get method => 'Njia ya Kuhesabu';

  @override
  String get madhab => 'Njia ya Kisheria ya Asr';

  @override
  String get surahs => 'Sura';

  @override
  String get ayahs => 'Ayahs';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Kuchomoza kwa jua';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Magharibi';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Muda wa $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Ni wakati wa kuomba $prayerName.';
  }

  @override
  String get dataStorage => 'Data na Hifadhi';

  @override
  String get clearCache => 'Futa Cache';

  @override
  String get cacheClearedSuccess => 'Akiba imefutwa';

  @override
  String get location => 'Mahali';

  @override
  String get language => 'Lugha';

  @override
  String get selectLanguage => 'Chagua Lugha';

  @override
  String get searchLanguage => 'Tafuta zaidi ya lugha 180...';

  @override
  String get systemDefault => 'Chaguomsingi ya Mfumo';

  @override
  String get currentLocation => 'Eneo la Sasa (GPS)';

  @override
  String get locationServiceDisabled => 'Huduma ya eneo imezimwa.';

  @override
  String get locationPermissionDenied => 'Ruhusa ya eneo imekataliwa.';

  @override
  String get locationDetectionFailed =>
      'Haikuweza kutambua eneo lako. Tafadhali chagua jiji wewe mwenyewe au ujaribu tena.';

  @override
  String citiesCount(String count) {
    return '$count miji';
  }

  @override
  String get search => 'Tafuta';

  @override
  String get searchHint => 'Tafuta...';

  @override
  String get noResults => 'Hakuna matokeo yaliyopatikana';

  @override
  String get loading => 'Inapakia...';

  @override
  String get error => 'Hitilafu';

  @override
  String get appErrorOccurred => 'Hitilafu imetokea';

  @override
  String get appUnknownError => 'Hitilafu isiyojulikana';

  @override
  String get quranLoadFailed =>
      'Maudhui ya Quran hayakuweza kupakiwa. Tafadhali jaribu tena.';

  @override
  String get retry => 'Jaribu tena';

  @override
  String get refreshAction => 'Onyesha upya';

  @override
  String get cancel => 'Ghairi';

  @override
  String get save => 'Hifadhi';

  @override
  String get delete => 'Futa';

  @override
  String get edit => 'Hariri';

  @override
  String get close => 'Funga';

  @override
  String get ok => 'Sawa';

  @override
  String get yes => 'Ndiyo';

  @override
  String get no => 'Hapana';

  @override
  String get surah => 'Sura';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Ukurasa';

  @override
  String get reading => 'Kusoma';

  @override
  String get recitation => 'Recitation';

  @override
  String get translation => 'Tafsiri';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Inapakia tafsir...';

  @override
  String get tafsirSourceLabel => 'Chanzo cha Tafsir';

  @override
  String get tafsirNoSurahFound => 'Hakuna tafsir iliyopatikana kwa surah hii.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Hakuna tafsir iliyopatikana ya ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir haikuweza kupakiwa.';

  @override
  String get tafsirNoTextForAyah => 'Hakuna maandishi ya tafsir kwa aya hii.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Inapakua tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Inapakia tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Chanzo cha Tafsir kilileta hitilafu ya HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Chanzo cha tafsir kilichochaguliwa hakikurejesha maingizo.';

  @override
  String get tafsirCacheUnavailable =>
      'Tafsir iliyothibitishwa bado haipatikani nje ya mtandao. Sawazisha mkusanyiko wa data wa tafsir kabla ya kuvinjari.';

  @override
  String get bookmarks => 'Alamisho';

  @override
  String get addBookmark => 'Ongeza Alamisho';

  @override
  String get removeBookmark => 'Ondoa Alamisho';

  @override
  String get lastRead => 'Iliyosomwa Mwisho';

  @override
  String get dailyZikr => 'Zikr za kila siku';

  @override
  String get duaMeaning1 =>
      'wengine huomba, ‘Mola wetu, tupe mema duniani na Akhera, na utulinde na adhabu ya Moto.';

  @override
  String get duaMeaning2 =>
      'Mwenyezi Mungu haikalifishi nafsi yoyote zaidi ya inavyoweza kustahimili, kila mmoja anapata wema wowote alioufanya, na anapata ubaya wake, ‘Mola Mlezi, usituchukulie tukisahau au kukosea. Ewe Mola, usitutwishe kama ulivyowatwika waliokuwa kabla yetu. Bwana, usitulemee zaidi ya uwezo wetu wa kustahimili. Utusamehe, utusamehe, na utuhurumie. Wewe ndiye Mlinzi wetu, basi tusaidie dhidi ya makafiri.';

  @override
  String get duaMeaning3 =>
      '‘Mola wetu, usizipotoe nyoyo zetu baada ya wewe kutuongoza. Utupe rehema Yako: Wewe ndiwe Mtoaji daima.';

  @override
  String get duaMeaning4 =>
      'Mola wangu nijaalie mimi na dhuria wangu tushike Sala. Mola wetu, ukubali ombi langu.';

  @override
  String get duaMeaning5 =>
      'na uwainamishie bawa lako kwa unyenyekevu na useme, ‘Mola, warehemu, kama walivyonijali nilipokuwa mdogo.';

  @override
  String get duaMeaning6 =>
      'atukuzwe Mungu, ambaye kweli anatawala. [Mtume], usikimbilie kusoma kabla wahyi haujakamilika, bali sema, ‘Mola wangu, niongezee elimu!';

  @override
  String get duaMeaning7 =>
      'Sema [Mtume]: ‘Mola wangu, samehe na urehemu: Wewe ni mwingi wa kurehemu.';

  @override
  String get duaMeaning8 =>
      'wanaoomba: Mola wetu Mlezi, tupe furaha katika wake zetu na watoto wetu. Tufanyie mifano mizuri kwa wale wanaokufahamu wewe’.';

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
  String get hadith => 'Hadithi';

  @override
  String get hadithCollection => 'Mkusanyiko wa Hadith';

  @override
  String get hadithBooks => 'Vitabu vya Hadith';

  @override
  String get searchHadith => 'Tafuta Hadiyth';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Majina ya Mwenyezi Mungu';

  @override
  String get liveTv => 'TV ya moja kwa moja';

  @override
  String get watchLive => 'Tazama Moja kwa Moja';

  @override
  String get streamError => 'Hitilafu ya utiririshaji';

  @override
  String get reload => 'Pakia upya';

  @override
  String get openInYoutube => 'Fungua kwenye YouTube';

  @override
  String get ibadahTracker => 'Mfuatiliaji wa Ibada';

  @override
  String get fasting => 'Kufunga';

  @override
  String get quranReading => 'Kusoma Quran';

  @override
  String get playSurahAudio => 'Cheza sauti ya surah';

  @override
  String get pauseSurahAudio => 'Sitisha sauti ya surah';

  @override
  String get revelationMeccan => 'Makka';

  @override
  String get revelationMedinan => 'Madina';

  @override
  String get prayers => 'Maombi';

  @override
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '${hours}saa ${minutes}dakika';
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
  String get weeklyProgress => 'Maendeleo ya Wiki';

  @override
  String get monthlyProgress => 'Maendeleo ya Kila Mwezi';

  @override
  String get statistics => 'Takwimu';

  @override
  String get hijriCalendar => 'Kalenda ya Hijri';

  @override
  String get gregorianCalendar => 'Kalenda ya Gregorian';

  @override
  String get today => 'Leo';

  @override
  String get tomorrow => 'Kesho';

  @override
  String get yesterday => 'Jana';

  @override
  String get specialDays => 'Siku Maalum';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Mwaka Mpya wa Kiislamu';

  @override
  String get mawlidAnNabi => 'Maulid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadhani';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadhani';

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
  String get qiblaDirection => 'Mwelekeo wa Qibla';

  @override
  String get compass => 'Dira';

  @override
  String get degrees => 'digrii';

  @override
  String get north => 'Kaskazini';

  @override
  String get qiblaFound => 'Qibla imepatikana!';

  @override
  String get turnDevice => 'Geuza kifaa chako kielekee Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Hitilafu ya dira: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Kihisi cha dira hakipatikani kwenye kifaa hiki.';

  @override
  String get qiblaLocationRequiredTitle => 'Mahali panahitajika kwa Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Weka eneo lako halisi kabla ya kutumia dira ya Qibla ili mwelekeo uweze kuhesabiwa kwa usahihi.';

  @override
  String get adhanNotificationChannelName => 'Arifa za Adhana';

  @override
  String get adhanNotificationChannelDescription =>
      'Tahadhari za wakati wa maombi na sauti ya adhana.';

  @override
  String get notifications => 'Arifa';

  @override
  String get prayerNotifications => 'Prayer Notifications';

  @override
  String get enableNotifications => 'Washa Arifa';

  @override
  String get notificationTime => 'Muda wa Arifa';

  @override
  String get beforePrayer => 'minutes before prayer';

  @override
  String get theme => 'Mandhari';

  @override
  String get lightMode => 'Hali ya Mwanga';

  @override
  String get darkMode => 'Hali ya Giza';

  @override
  String get systemTheme => 'Mandhari ya Mfumo';

  @override
  String get about => 'Kuhusu';

  @override
  String get version => 'Toleo';

  @override
  String get privacyPolicy => 'Sera ya Faragha';

  @override
  String get termsOfService => 'Masharti ya Huduma';

  @override
  String get contactUs => 'Wasiliana Nasi';

  @override
  String get rateApp => 'Kadiria Programu';

  @override
  String get shareApp => 'Shiriki Programu';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Angalia $appName: Programu bora zaidi ya mtindo wa maisha ya Kiislamu! $url';
  }

  @override
  String get downloadManager => 'Kidhibiti cha Upakuaji';

  @override
  String get downloads => 'Vipakuliwa';

  @override
  String get downloading => 'Inapakua...';

  @override
  String get downloadComplete => 'Upakuaji umekamilika';

  @override
  String get downloadFailed => 'Imeshindwa Kupakua';

  @override
  String get offlineMode => 'Hali ya Nje ya Mtandao';

  @override
  String get noInternet => 'Hakuna Muunganisho wa Mtandao';

  @override
  String get checkConnection => 'Tafadhali angalia muunganisho wako';

  @override
  String get premium => 'Premium';

  @override
  String get upgradeToPro => 'Pata toleo jipya la Pro';

  @override
  String get proFeatures => 'Vipengele vya Pro';

  @override
  String get removeAds => 'Ondoa Matangazo';

  @override
  String get unlockAll => 'Fungua Maudhui Yote';

  @override
  String get exclusiveContent => 'Maudhui ya Kipekee';

  @override
  String get welcome => 'Karibu';

  @override
  String get getStarted => 'Anza';

  @override
  String get skip => 'Ruka';

  @override
  String get next => 'Inayofuata';

  @override
  String get done => 'Imekamilika';

  @override
  String get onboarding1Title => 'Karibu Sirat-ı Nur';

  @override
  String get onboarding1Desc =>
      'Programu yako kamili ya Uislamu ya nyakati za maombi, Kurani, na zaidi';

  @override
  String get onboarding2Title => 'Nyakati za Maombi';

  @override
  String get onboarding2Desc => 'Saa sahihi za maombi kulingana na eneo lako';

  @override
  String get onboarding3Title => 'Quran na Zaidi';

  @override
  String get onboarding3Desc =>
      'Soma Kurani, fuatilia usomaji wako, na uchunguze maudhui ya Kiislamu';

  @override
  String get dhikrLibrary => 'Maktaba ya Dhikr';

  @override
  String get resetCounter => 'Weka upya Kaunta';

  @override
  String get changeTarget => 'Badilisha Lengo';

  @override
  String get newTarget => 'Lengo Jipya';

  @override
  String targetCount(Object target) {
    return 'Idadi ya walengwa: $target';
  }

  @override
  String get tapToCount => 'Gusa ili kuhesabu';

  @override
  String get zikrCompletedMashAllah => 'Imekamilika! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Mwenyezi Mungu yu mbali sana juu ya kila upungufu.';

  @override
  String get zikrMeaningAlhamdulillah =>
      'Sifa njema zote ni za Mwenyezi Mungu.';

  @override
  String get zikrMeaningAllahuAkbar => 'Mwenyezi Mungu ndiye Mkubwa.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Hapana mungu ila Mwenyezi Mungu.';

  @override
  String get zikrMeaningAstaghfirullah => 'Naomba msamaha kwa Mwenyezi Mungu.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Hakuna nguvu wala nguvu ila kwa Mwenyezi Mungu.';

  @override
  String get dailyChecklist => 'Orodha ya Ukaguzi ya Kila Siku';

  @override
  String get qazaDebt => 'Qaza (Deni)';

  @override
  String get resetQazaData => 'Weka upya Data ya Qaza';

  @override
  String get resetQazaDebtQuestion => 'Ungependa kurejesha Deni la Qaza?';

  @override
  String get rawatib => 'Rawatib';

  @override
  String get tahajjud => 'Tahajjud';

  @override
  String get dailyProgress => 'Maendeleo ya Kila Siku';

  @override
  String get mandatoryPrayers => 'Maombi ya lazima';

  @override
  String get sunnahAndOthers => 'Sunnah na Nyinginezo';

  @override
  String get spiritualGrowth => 'Ukuaji wa Kiroho';

  @override
  String get mandatoryDuty => 'Wajibu wa Lazima';

  @override
  String get totalPrayers => 'Jumla ya Maombi';

  @override
  String get prayerDebt => 'Deni la Maombi';

  @override
  String get fastingDebt => 'Kufunga Deni';

  @override
  String get reset => 'Weka upya';

  @override
  String get days => 'Siku';

  @override
  String get premiumIntegrity => 'Uadilifu wa hali ya juu';

  @override
  String get recheckPremium => 'Angalia tena hali ya usajili unaolipishwa';

  @override
  String get syncStore =>
      'Sawazisha na duka la programu ili kuthibitisha usajili wako unaolipiwa.';

  @override
  String get checkingPremium => 'Inakagua hali ya malipo...';

  @override
  String get premiumVerified => 'Usajili wa malipo umethibitishwa.';

  @override
  String get premiumNotFound => 'Usajili wa malipo haujapatikana.';

  @override
  String premiumRefreshError(Object error) {
    return 'Haikuweza kuonyesha upya hali ya usajili unaolipishwa: $error';
  }

  @override
  String get offlineDownloadManager => 'Kidhibiti cha Upakuaji Nje ya Mtandao';

  @override
  String get manageDatasets =>
      'Dhibiti vifurushi vikubwa vya sauti nje ya mtandao na seti ya data.';

  @override
  String get freeStorage => 'Futa hifadhi ya ndani ya kifaa.';

  @override
  String get quranIntegrity => 'Uadilifu wa Quran';

  @override
  String get checkQuranDb => 'Angalia Hifadhidata ya Kurani';

  @override
  String get verifyQuranContent => 'Thibitisha surah 114 na aya 6236.';

  @override
  String get checkingQuranDb => 'Inakagua hifadhidata ya Quran...';

  @override
  String get okLabel => 'Sawa';

  @override
  String get incomplete => 'Haijakamilika';

  @override
  String get notSeeded => 'Haijapandwa mbegu';

  @override
  String get quranDbStatus => 'Hali ya Hifadhidata ya Quran';

  @override
  String statusLabel(Object status) {
    return 'Hali: $status';
  }

  @override
  String surahsCount(Object count) {
    return 'Sura: $count (inatarajiwa 114)';
  }

  @override
  String ayahsCount(Object count) {
    return 'Ayah: $count (inatarajiwa 6236)';
  }

  @override
  String missingArabic(Object count) {
    return 'Kiarabu haipo: $count';
  }

  @override
  String missingTurkish(Object count) {
    return 'Kituruki haipo: $count';
  }

  @override
  String dbVersion(Object version) {
    return 'Toleo la DB: $version';
  }

  @override
  String dbPath(Object path) {
    return 'Njia: $path';
  }

  @override
  String quranCheckFailed(Object error) {
    return 'Kukagua Qurani kumeshindwa: $error';
  }

  @override
  String get audioVoice => 'Sauti ya Sauti';

  @override
  String get audioVoiceMisharyAlafasy => 'Mwanaume (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Mwanaume (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Mwanaume (Sudais)';

  @override
  String get fajrAngle => 'Pembe ya Fajr';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Urekebishaji wa Qibla';

  @override
  String get compassSmoothing => 'Compass Smoothing';

  @override
  String get reduceSensorJitter =>
      'Punguza jita ya kihisi ili kupata sindano thabiti.';

  @override
  String get calibrationOffset => 'Calibration Offset';

  @override
  String currentOffset(Object offset) {
    return 'Ya sasa: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Rekebisha ikiwa dira yako inahitaji kusahihishwa mwenyewe. Thamani chanya huzunguka kisaa.';

  @override
  String get apply => 'Tekeleza mabadiliko';

  @override
  String get resetOnboarding => 'Weka upya usanidi wa utangulizi';

  @override
  String get rerunSetup => 'Rudia mchakato wa usanidi wa awali.';

  @override
  String get diagnostics => 'Uchunguzi';

  @override
  String get diagnosticsNotSet => 'Haijawekwa';

  @override
  String get diagnosticsPrayerProfile => 'Wasifu wa Maombi';

  @override
  String get diagnosticsPrayerSource => 'Mamlaka ya Maombi';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Maalum / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Pembe maalum za mwongozo (hakuna chanzo cha kitaasisi)';

  @override
  String diagnosticsPrayerHybridSource(String sourceName, String madhab) {
    return '$sourceName mbinu iliyochaguliwa na mtumiaji $madhab mpangilio wa Asr';
  }

  @override
  String diagnosticsPrayerRegionalFallbackSource(String sourceName) {
    return 'Njia mbadala ya eneo kwa kutumia $sourceName. Thibitisha nyakati za maombi ya karibu na msikiti wako au mamlaka rasmi ya kidini.';
  }

  @override
  String get diagnosticsCloudDriven => 'Inaendeshwa na Wingu';

  @override
  String get diagnosticsAdhanAudioAssets => 'Mali ya Sauti ya Adhan';

  @override
  String get diagnosticsUiAudioAssets => 'Vipengee vya Sauti vya UI';

  @override
  String get diagnosticsQuranAudioAssets => 'Mali za Sauti za Quran';

  @override
  String get diagnosticsAudioAssets => 'Vipengee vya Sauti';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count faili';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Usomaji wa maelezo haujafaulu: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Maeneo ya Ujanibishaji';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count inatumika';
  }

  @override
  String get diagnosticsQuranDataset => 'Hifadhidata ya Quran';

  @override
  String get diagnosticsQuranSurahs => 'Sura za Quran';

  @override
  String get diagnosticsQuranAyahs => 'Ayah za Quran';

  @override
  String get diagnosticsQuranJuzMetadata => 'Quran Juz Metadata';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Meza za wingu hazipo katika Supabase; vifurushi njia mbadala vinatumika';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Imeshindwa kuangalia wingu: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'metadata ya Cloud juz haipo; mrejesho wa muundo uliounganishwa unawashwa';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Ukaguzi wa muundo wa wingu haukufaulu: $error';
  }

  @override
  String get healthCheckDesc =>
      'Fanya ukaguzi wa afya na uangalie hali ya mfumo.';

  @override
  String get qiblaAligned => 'Qibla Imepangiliwa';

  @override
  String get rotateToFindQibla => 'Zungusha ili Upate Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Urekebishaji unahitajika. Zungusha kifaa katika takwimu-8.';

  @override
  String get dailyVerse => 'Mstari wa kila siku';

  @override
  String get dailyVerseUnavailableTitle => 'Aya ya kila siku haipatikani';

  @override
  String get dailyVerseUnavailableBody =>
      'Maudhui ya aya ya kila siku yaliyothibitishwa bado hayajasanidiwa kwa muundo huu. Unganisha kwenye chanzo cha wingu au usawazishe akiba iliyothibitishwa kabla ya kuvinjari.';

  @override
  String get todaysIbadah => 'Ibada ya leo';

  @override
  String get quickAccess => 'Ufikiaji wa Haraka';

  @override
  String get assistant => 'Msaidizi';

  @override
  String get places => 'Maeneo';

  @override
  String get library => 'Maktaba';

  @override
  String get analytics => 'Uchanganuzi';

  @override
  String get dailyDuas => 'Dua za kila siku';

  @override
  String essentialDuas(String count) {
    return '$count dua muhimu';
  }

  @override
  String get duaUnavailableTitle => 'Dua zilizothibitishwa bado hazipatikani';

  @override
  String get duaUnavailableBody =>
      'Dua za kila siku zilizothibitishwa bado hazijasawazishwa kwenye kifaa hiki. Unganisha kwenye chanzo cha wingu ili kupakia dua zilizotoka badala ya njia mbadala ambayo haijathibitishwa.';

  @override
  String get duaCategoryQuranic => 'Dua ya Quran';

  @override
  String get duaCategoryMorningEvening => 'Asubuhi na Jioni';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Ulinzi';

  @override
  String get duaCategoryBeginning => 'Mwanzo';

  @override
  String get duaCategorySleep => 'Kulala';

  @override
  String get duaCategoryFoodDrink => 'Chakula na Vinywaji';

  @override
  String get duaCategoryForgiveness => 'Msamaha';

  @override
  String get duaCategoryHome => 'Nyumbani';

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
  String get islamicEducation => 'Elimu ya Kiislamu';

  @override
  String get sukunAudioTitle => 'Picha za Sukun';

  @override
  String get hadithCollections => 'Makusanyo ya Hadith';

  @override
  String get hadithSourcePending => 'Chanzo kilichothibitishwa kinasubiri';

  @override
  String get hadithUnavailableTitle =>
      'Mkusanyiko wa Hadith zilizothibitishwa bado hazipatikani';

  @override
  String get hadithUnavailableBody =>
      'Muundo huu bado unategemea mlisho wa Hadith wa nje ambao haujathibitishwa. Uvinjari wa Hadith husalia kuzimwa hadi mkusanyiko wa data uliopatikana ulandanishwe.';

  @override
  String get paywallUnlockAll =>
      'Fungua vipengele vyote vya safari yako ya kiroho';

  @override
  String get premiumProductUnavailable =>
      'Bidhaa ya kulipia haipatikani kwa sasa. Tafadhali jaribu tena baadaye.';

  @override
  String get premiumPurchaseFailed =>
      'Ununuzi haukuweza kukamilika. Tafadhali jaribu tena.';

  @override
  String get paywallFeature1Title => 'Msaidizi wa Neural Plus';

  @override
  String get paywallFeature1Desc =>
      'Maswali na Majibu yanayoendeshwa na AI bila kikomo';

  @override
  String get paywallFeature2Title => 'Unlimited Offline';

  @override
  String get paywallFeature2Desc => 'Pakua vikariri vyote';

  @override
  String get paywallFeature3Title => 'Miundo ya Kipekee';

  @override
  String get paywallFeature3Desc => 'Mandhari na fonti za hali ya juu';

  @override
  String get paywallFeature4Title => 'Bila Matangazo';

  @override
  String get paywallFeature4Desc => 'Matangazo sifuri';

  @override
  String get paywallGetAccess => 'Pata Ufikiaji wa Maisha - \$1.00';

  @override
  String get restorePurchases => 'Rejesha Ununuzi';

  @override
  String get zakatCalculator => 'Kikokotoo cha Zakat';

  @override
  String get zakatGold => 'Dhahabu (Altın)';

  @override
  String get zakatSilver => 'Fedha (Gümüş)';

  @override
  String get zakatCashBank => 'Fedha / Benki';

  @override
  String get zakatBusiness => 'Biashara';

  @override
  String get zakatInvestments => 'Uwekezaji';

  @override
  String get zakatWeightGrams => 'Uzito (g)';

  @override
  String get zakatPricePerGram => 'Bei/g';

  @override
  String get zakatTotalAmount => 'Jumla ya Kiasi';

  @override
  String get zakatInventoryValue => 'Thamani ya Malipo';

  @override
  String get zakatDebts => 'Madeni';

  @override
  String get zakatTotal => 'Jumla';

  @override
  String get calculateZakat => 'Hesabu Zakat';

  @override
  String get nisabNotReached => 'Nisab haijafikiwa. Zaka si wajibu.';

  @override
  String get totalZakat => 'Jumla ya Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Mali: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakat ya dhahabu';

  @override
  String get zakatSilverZakat => 'Zakat ya Fedha';

  @override
  String get zakatCashZakat => 'Zakat ya Fedha';

  @override
  String get zakatBusinessZakat => 'Zakat ya Biashara';

  @override
  String get zakatInvestmentZakat => 'Zaka ya Uwekezaji';

  @override
  String get chatbotGreeting =>
      'Assalam Alaikum! Mimi ni msaidizi wako wa Kiislamu. Niulize kuhusu sala, saumu, zaka, au mada yoyote ya Kiislamu.';

  @override
  String get chatbotLimitReached =>
      'Kikomo cha hoja za kila siku kimefikiwa. Pata toleo jipya la Premium kwa ukomo.';

  @override
  String get chatbotErrorMsg => 'Sikuweza kutoa jibu. Tafadhali jaribu tena.';

  @override
  String get chatbotOfflinePrompt =>
      'Msingi wa maarifa ya Kiislamu nje ya mtandao uliothibitishwa bado unaratibiwa. Unaweza kuwezesha urejeshaji mkondo sasa, lakini itaonyesha ujumbe salama tu hadi mkusanyiko wa data uliyotoka uwe tayari.\n\nJe, ungependa kuwezesha urejeshaji wa nje ya mtandao?';

  @override
  String get chatbotOfflineSwitched =>
      'Njia mbadala ya nje ya mtandao imewezeshwa. Majibu yaliyothibitishwa ya Kiislamu ya ndani bado hayako tayari.';

  @override
  String get chatbotOfflineDownloadLabel => 'Washa Fallback Nje ya Mtandao';

  @override
  String get downloadPreparing => 'Inatayarisha upakuaji...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Inapakua surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Sura zote tayari zimepakuliwa kwa msomaji huyu.';

  @override
  String get offlineQuranAudioPacks =>
      'Vifurushi vya Sauti vya Kurani za nje ya mtandao';

  @override
  String storedOnDeviceMb(String size) {
    return 'Imehifadhiwa kwenye kifaa: MB $size';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surah zimepakuliwa';
  }

  @override
  String get redownloadMissingRepair => 'Urekebishaji / Upakuaji Haipo';

  @override
  String get downloadAction => 'Pakua';

  @override
  String get resumeDownload => 'Endelea kupakua';

  @override
  String get deleteDownloadedFiles => 'Futa Faili Zilizopakuliwa';

  @override
  String get cancelDownloadAction => 'Ghairi upakuaji';

  @override
  String get downloadCancelling => 'Inaghairi...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Upakuaji umeghairiwa kwa $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Upakuaji umekamilika kwa $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Upakuaji umekamilika kwa $reciter na $failed surah zilizoshindwa ($downloaded/$total zimepakuliwa).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Faili za nje ya mtandao zimefutwa za $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Vyanzo vya sauti vya Kurani vilivyothibitishwa havipatikani kwa sasa.';

  @override
  String get quranAudioPlaybackErrorWithConnectionHint =>
      'Uchezaji wa sauti umeshindwa. Tafadhali angalia muunganisho wako.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Kifurushi cha sauti cha Kurani kilichothibitishwa hakijakamilika ($available/$total). Jaribu tena baada ya katalogi ya sauti kusasishwa.';
  }

  @override
  String get chatbotHint => 'Uliza swali...';

  @override
  String get chatbotThinking => 'Kufikiri...';

  @override
  String get sukunMixerSubtitle => 'Asili na Mchanganyiko wa Kurani';

  @override
  String get audioPlayFailed => 'Uchezaji wa sauti umeshindwa';

  @override
  String get sukunNatureLabel => 'Sukun (Asili)';

  @override
  String get sukunRainOfMercy => 'Mvua ya Rehema';

  @override
  String get sukunGardenOfPeace => 'Bustani ya Amani';

  @override
  String get sukunMidnightCalm => 'Usiku wa manane Utulivu';

  @override
  String get sukunOceanTawheed => 'Bahari ya Tawhiyd';

  @override
  String get sukunUnavailableTitle => 'Mandhari ya sauti haipatikani';

  @override
  String get sukunUnavailableBody =>
      'Muundo huu bado haujumuishi vipengee vinavyohitajika vya mwonekano wa sauti wa Sukun.';

  @override
  String get prayerCompletion => 'Kukamilika kwa Maombi';

  @override
  String get streaks => 'Michirizi';

  @override
  String get dayStreak => 'Mfululizo wa siku';

  @override
  String get bestStreak => 'Mfululizo bora';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Njia ya Kurudi Nje ya Mtandao';

  @override
  String get chatbotUseCloudAi => 'Tumia Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Washa Fallback Nje ya Mtandao';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count imesalia';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'API ya Wingu haijasanidiwa. Mwongozo wa Kiislamu uliothibitishwa nje ya mtandao haupatikani bado.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Mwongozo wa karibu wa Kiislamu uliothibitishwa bado haupatikani. Badili hadi Cloud AI kwa majibu ya chanzo.';

  @override
  String get mosques => 'Misikiti';

  @override
  String get halalFood => 'Chakula cha Halal';

  @override
  String get placesSearchArea => 'Tafuta eneo hili';

  @override
  String get nearbyMosques => 'Misikiti iliyo karibu';

  @override
  String get islamicSchools => 'Shule za Kiislamu';

  @override
  String placesFoundCount(String count) {
    return '$count imepatikana';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance kilomita';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Hitilafu ya API: $statusCode';
  }

  @override
  String get placesNetworkError =>
      'Hitilafu ya mtandao. Tafadhali jaribu tena.';

  @override
  String get placesLocationRequiredTitle => 'Mahali panahitajika';

  @override
  String get placesLocationRequiredBody =>
      'Weka eneo kwanza ili misikiti iliyo karibu, chakula cha halali na shule za Kiislamu zitafutwe kwa usahihi.';

  @override
  String get placesMapTilesUnavailableTitle => 'Vigae vya ramani hazipatikani';

  @override
  String get placesMapTilesUnavailableBody =>
      'Chanzo cha kigae cha ramani kilichothibitishwa bado hakijasanidiwa kwa muundo huu. Maeneo ya karibu bado yanaweza kupakia kutoka eneo lako lililohifadhiwa.';

  @override
  String get placesDataSourceUnavailableTitle => 'Data ya maeneo haipatikani';

  @override
  String get placesDataSourceUnavailableBody =>
      'Mwisho wa data ya maeneo yaliyothibitishwa bado haujasanidiwa kwa muundo huu. Weka PLACES_OVERPASS_API_URL iwe proksi au mtoa huduma aliyeidhinishwa kabla ya kuwezesha utafutaji ulio karibu.';

  @override
  String get unknownPlaceName => 'Jina lisilojulikana';

  @override
  String get islamicPlaceFallback => 'Mahali pa Kiislamu';

  @override
  String get asmaMeaning1 => 'Mwingi wa Rehema';

  @override
  String get asmaMeaning2 => 'Mwenye Rehema';

  @override
  String get asmaMeaning3 => 'Mfalme / Bwana wa Milele';

  @override
  String get asmaMeaning4 => 'Mtakatifu Zaidi';

  @override
  String get asmaMeaning5 => 'Chanzo cha Amani';

  @override
  String get asmaMeaning6 => 'Mtoa Usalama';

  @override
  String get asmaMeaning7 => 'Mlezi';

  @override
  String get asmaMeaning8 => 'Mwenye Thamani / Mwenye Nguvu Zaidi';

  @override
  String get asmaMeaning9 => 'Mwenye Kulazimisha';

  @override
  String get asmaMeaning10 => 'Mkuu';

  @override
  String get asmaMeaning11 => 'Muumba';

  @override
  String get asmaMeaning12 => 'Mtengenezaji wa Utaratibu';

  @override
  String get asmaMeaning13 => 'Mtengenezaji wa Urembo';

  @override
  String get asmaMeaning14 => 'Mwenye Kusamehe';

  @override
  String get asmaMeaning15 => 'Mtawala';

  @override
  String get asmaMeaning16 => 'Mpaji wa Vyote';

  @override
  String get asmaMeaning17 => 'Mfadhili';

  @override
  String get asmaMeaning18 => 'Kifunguaji';

  @override
  String get asmaMeaning19 => 'Mjuzi wa Yote';

  @override
  String get asmaMeaning20 =>
      'The Withholder, who narrows and restrains by wisdom.';

  @override
  String get asmaMeaning21 => 'Mkombozi';

  @override
  String get asmaMeaning22 => 'Mwenye Abaser';

  @override
  String get asmaMeaning23 => 'Mnyanyuzi';

  @override
  String get asmaMeaning24 => 'Mtoaji wa Heshima';

  @override
  String get asmaMeaning25 => 'Mdhalilishaji';

  @override
  String get asmaMeaning26 => 'Msikiaji wa Yote';

  @override
  String get asmaMeaning27 => 'Mwonaji wa Wote';

  @override
  String get asmaMeaning28 => 'Hakimu';

  @override
  String get asmaMeaning29 => 'Mwenye Haki';

  @override
  String get asmaMeaning30 => 'Yule Mpole';

  @override
  String get asmaMeaning31 => 'Wenye Ufahamu Wote';

  @override
  String get asmaMeaning32 => 'Mtangulizi';

  @override
  String get asmaMeaning33 => 'Mtukufu';

  @override
  String get asmaMeaning34 => 'Msamehevu Mkuu';

  @override
  String get asmaMeaning35 => 'Mthawabishaji wa Shukrani';

  @override
  String get asmaMeaning36 => 'Aliye Juu Zaidi';

  @override
  String get asmaMeaning37 => 'Mkuu';

  @override
  String get asmaMeaning38 => 'Mhifadhi';

  @override
  String get asmaMeaning39 => 'Mlezi';

  @override
  String get asmaMeaning40 => 'Mwenye kuhisabu';

  @override
  String get asmaMeaning41 => 'Mkuu';

  @override
  String get asmaMeaning42 => 'Mwenye Ukarimu';

  @override
  String get asmaMeaning43 => 'Mwenye Kukesha';

  @override
  String get asmaMeaning44 => 'Mwitikio wa Swala';

  @override
  String get asmaMeaning45 => 'Ufahamu Wote';

  @override
  String get asmaMeaning46 => 'Mwenye Hekima Kamili';

  @override
  String get asmaMeaning47 => 'Yule Mpendwa';

  @override
  String get asmaMeaning48 => 'Aliyetukuka zaidi';

  @override
  String get asmaMeaning49 => 'Mfufuaji';

  @override
  String get asmaMeaning50 => 'Shahidi huyo';

  @override
  String get asmaMeaning51 => 'Ukweli';

  @override
  String get asmaMeaning52 => 'Mdhamini wa Kutosha Yote';

  @override
  String get asmaMeaning53 => 'Mmiliki wa Nguvu Zote';

  @override
  String get asmaMeaning54 => 'Mwenye Nguvu';

  @override
  String get asmaMeaning55 => 'Mlinzi';

  @override
  String get asmaMeaning56 => 'Waliosifiwa';

  @override
  String get asmaMeaning57 => 'Mthamini';

  @override
  String get asmaMeaning58 => 'Mwanzilishi';

  @override
  String get asmaMeaning59 => 'Mrejeshaji';

  @override
  String get asmaMeaning60 => 'Mpaji wa Uzima';

  @override
  String get asmaMeaning61 => 'Mtoa Uhai';

  @override
  String get asmaMeaning62 => 'Mwenye Kuishi';

  @override
  String get asmaMeaning63 => 'Mwenye Kujiruzuku';

  @override
  String get asmaMeaning64 => 'Mpataji';

  @override
  String get asmaMeaning65 => 'Mtukufu';

  @override
  String get asmaMeaning66 => 'Mmoja Pekee';

  @override
  String get asmaMeaning67 => 'Yule Mmoja';

  @override
  String get asmaMeaning68 => 'Anayetafutwa na Wote';

  @override
  String get asmaMeaning69 => 'Mwenye Nguvu';

  @override
  String get asmaMeaning70 => 'Muumba wa nguvu zote';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'Mcheleweshaji';

  @override
  String get asmaMeaning73 => 'Ya Kwanza';

  @override
  String get asmaMeaning74 => 'Wa Mwisho';

  @override
  String get asmaMeaning75 => 'Dhihirisho';

  @override
  String get asmaMeaning76 => 'Iliyofichwa';

  @override
  String get asmaMeaning77 => 'Mkuu wa Mkoa';

  @override
  String get asmaMeaning78 => 'Aliye Juu';

  @override
  String get asmaMeaning79 => 'Mwenye kufanya wema';

  @override
  String get asmaMeaning80 => 'Mwongozo wa Toba';

  @override
  String get asmaMeaning81 => 'Mlipiza kisasi';

  @override
  String get asmaMeaning82 => 'Mwenye kusamehe';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'Mmiliki / Mfalme wa Wote';

  @override
  String get asmaMeaning85 => 'Mwenye Ukuu na Fadhila';

  @override
  String get asmaMeaning86 => 'Mwenye Haki';

  @override
  String get asmaMeaning87 => 'Mkusanyaji';

  @override
  String get asmaMeaning88 => 'Tajiri';

  @override
  String get asmaMeaning89 => 'Mtajirisha';

  @override
  String get asmaMeaning90 => 'Kizuia Madhara';

  @override
  String get asmaMeaning91 => 'Mleta Madhara';

  @override
  String get asmaMeaning92 => 'Mtoaji wa Faida';

  @override
  String get asmaMeaning93 => 'Nuru';

  @override
  String get asmaMeaning94 => 'Mwongozi';

  @override
  String get asmaMeaning95 => 'Mwanzilishi';

  @override
  String get asmaMeaning96 => 'Yule wa Milele';

  @override
  String get asmaMeaning97 => 'Mrithi';

  @override
  String get asmaMeaning98 => 'Mwongozo Muadilifu';

  @override
  String get asmaMeaning99 => 'Yule Mgonjwa';
}
