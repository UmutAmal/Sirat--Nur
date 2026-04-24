// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Western Frisian (`fy`).
class AppLocalizationsFy extends AppLocalizations {
  AppLocalizationsFy([String locale = 'fy']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Islamityske Way of Light';

  @override
  String get home => 'Thús';

  @override
  String get quran => 'Koran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Kalinder';

  @override
  String get settings => 'Ynstellings';

  @override
  String get nextPrayer => 'Folgjende Gebed';

  @override
  String get prayerTimes => 'Gebedstiden';

  @override
  String get continueReading => 'Trochgean mei lêzen';

  @override
  String get getLifetimePro => 'Krij Lifetime Pro';

  @override
  String get unlockTajweed => 'Untskoattelje Tajweed & Avansearre funksjes';

  @override
  String get prayerCalculation => 'Gebedsberekkening';

  @override
  String get method => 'Berekkening Metoade';

  @override
  String get madhab => 'Asr Juridyske metoade';

  @override
  String get surahs => 'Surahs';

  @override
  String get ayahs => 'Ayahs';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Sunrise';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Maghrib';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Tiid foar $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'It is tiid om te bidden $prayerName.';
  }

  @override
  String get dataStorage => 'Data & opslach';

  @override
  String get clearCache => 'Cache wiskje';

  @override
  String get cacheClearedSuccess => 'Cache mei sukses wiske';

  @override
  String get location => 'Lokaasje';

  @override
  String get language => 'Taal';

  @override
  String get selectLanguage => 'Selektearje Taal';

  @override
  String get searchLanguage => 'Sykje 180+ talen...';

  @override
  String get systemDefault => 'Systeem Standert';

  @override
  String get currentLocation => 'Aktuele lokaasje (GPS)';

  @override
  String get locationServiceDisabled => 'Lokaasje tsjinst is útskeakele.';

  @override
  String get locationPermissionDenied => 'Lokaasje tastimming wegere.';

  @override
  String get locationDetectionFailed =>
      'Koe jo lokaasje net ûntdekke. Kies in stêd mei de hân of besykje it nochris.';

  @override
  String citiesCount(String count) {
    return '$count stêden';
  }

  @override
  String get search => 'Sykje';

  @override
  String get searchHint => 'Sykje...';

  @override
  String get noResults => 'Gjin resultaten fûn';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Flater';

  @override
  String get appErrorOccurred => 'Der barde in flater';

  @override
  String get appUnknownError => 'Unbekende flater';

  @override
  String get quranLoadFailed =>
      'Koranynhâld koe net laden wurde. Besykje it nochris.';

  @override
  String get retry => 'Opnij besykje';

  @override
  String get refreshAction => 'Ferfarskje';

  @override
  String get cancel => 'Ofbrekke';

  @override
  String get save => 'Rêde';

  @override
  String get delete => 'Wiskje';

  @override
  String get edit => 'Bewurkje';

  @override
  String get close => 'Slute';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Nee';

  @override
  String get surah => 'Surah';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Side';

  @override
  String get reading => 'Lêzing';

  @override
  String get recitation => 'Resitaasje';

  @override
  String get translation => 'Oersetting';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Tafsir laden...';

  @override
  String get tafsirSourceLabel => 'Tafsir boarne';

  @override
  String get tafsirNoSurahFound => 'Gjin tafsir fûn foar dizze surah.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Gjin tafsir fûn foar ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir koe net laden wurde.';

  @override
  String get tafsirNoTextForAyah => 'Gjin tafsir tekst foar dizze ayah.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Download tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Loading tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir boarne joech in HTTP $statusCode flater werom.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'De selektearre tafsir boarne joech gjin ynstjoerings.';

  @override
  String get tafsirCacheUnavailable =>
      'Ferifiearre tafsir is noch net offline beskikber. Syngronisearje in boarne tafsir-dataset foardat jo blêdzje.';

  @override
  String get bookmarks => 'Blêdwizers';

  @override
  String get addBookmark => 'Blêdwizer tafoegje';

  @override
  String get removeBookmark => 'Blêdwizer fuortsmite';

  @override
  String get lastRead => 'Lêste lêzen';

  @override
  String get dailyZikr => 'Daily Zikr';

  @override
  String get duaMeaning1 =>
      'oaren bidde: ‘Us Hear, jou ús it goede yn dizze wrâld en yn it Hiernamaals, en beskerm ús tsjin de marteling fan it Fjoer.’';

  @override
  String get duaMeaning2 =>
      'God belêstet gjin siel mei mear as se ferneare kin: elk wint wat goed er dien hat, en lijt syn kwea- ‘Hear, nim ús net oan as wy ferjitte of flaters meitsje. Hear, belêste ús net sa\'t Jo dy foar ús hawwe. Hear, belêste ús net mei mear as wy krêft hawwe om te dragen. Ferjou ús, ferjou ús, en hawwe genede oer ús. Do bist ús Beskermer, dus help ús tsjin de ûnleauwigen.’';

  @override
  String get duaMeaning3 =>
      '‘Us Hear, lit ús hert net ôfwike neidat Jo ús liede hawwe. Jou ús jo genede: Jo binne de ivich jaan.';

  @override
  String get duaMeaning4 =>
      'Hear, jou dat ik en myn neiteam it gebed folhâlde meie. Us Hear, akseptearje myn fersyk.';

  @override
  String get duaMeaning5 =>
      'en del dyn wjuk yn dimmenens tsjin harren yn goedernichheid del en sis: ‘Hear, haw genede oer harren, krekt sa’t se my fersoarge doe’t ik lyts wie’.';

  @override
  String get duaMeaning6 =>
      'ferheven wêze God, dejinge dy\'t wier yn kontrôle is. [Profeet], haast net om te recitearjen foardat de iepenbiering folslein kompleet is, mar sis: \'Hear, fergrutsje my yn kennis!\'';

  @override
  String get duaMeaning7 =>
      'Sis [profeet], \'Hear, ferjou en haw barmhertichheid: Jo binne de barmhertichste fan allegear.\'';

  @override
  String get duaMeaning8 =>
      'dyjingen dy\'t bidde: \'Us Hear, jow ús freugde yn ús breidspearen en neiteam. Meitsje ús goede foarbylden foar dyjingen dy\'t jo bewust binne\'.';

  @override
  String get morningZikr => 'Moarn Zikr';

  @override
  String get eveningZikr => 'Jûn Zikr';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masa\'il';

  @override
  String get hadith => 'Hadith';

  @override
  String get hadithCollection => 'Hadith Samling';

  @override
  String get hadithBooks => 'Hadith Boeken';

  @override
  String get searchHadith => 'Sykje Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Nammen fan Allah';

  @override
  String get liveTv => 'Live TV';

  @override
  String get watchLive => 'Sjoch Live';

  @override
  String get streamError => 'Stream flater';

  @override
  String get reload => 'Reload';

  @override
  String get openInYoutube => 'Iepenje yn YouTube';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Fêste';

  @override
  String get quranReading => 'Koranlêzing';

  @override
  String get prayers => 'Gebeden';

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
  String get weeklyProgress => 'Wyklikse foarútgong';

  @override
  String get monthlyProgress => 'Monthly Progress';

  @override
  String get statistics => 'Statistyk';

  @override
  String get hijriCalendar => 'Hijri kalinder';

  @override
  String get gregorianCalendar => 'Gregoriaanske kalinder';

  @override
  String get today => 'Hjoed';

  @override
  String get tomorrow => 'Moarn';

  @override
  String get yesterday => 'Juster';

  @override
  String get specialDays => 'Spesjale dagen';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Islamityske Nijjier';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadan';

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
  String get qiblaDirection => 'Qibla rjochting';

  @override
  String get compass => 'Kompas';

  @override
  String get degrees => 'graden';

  @override
  String get north => 'Noard';

  @override
  String get qiblaFound => 'Qibla fûn!';

  @override
  String get turnDevice => 'Draai jo apparaat nei de Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Kompasflater: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Kompassensor is net beskikber op dit apparaat.';

  @override
  String get qiblaLocationRequiredTitle => 'Lokaasje nedich foar Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Stel jo werklike lokaasje yn foardat jo it Qibla-kompas brûke, sadat de rjochting krekt kin wurde berekkene.';

  @override
  String get adhanNotificationChannelName => 'Adhan Notifikaasjes';

  @override
  String get adhanNotificationChannelDescription =>
      'Gebedstiidalarms mei adhan-lûd.';

  @override
  String get notifications => 'Notifikaasjes';

  @override
  String get prayerNotifications => 'Gebedsnotifikaasjes';

  @override
  String get enableNotifications => 'Notifikaasjes ynskeakelje';

  @override
  String get notificationTime => 'Notifikaasje Tiid';

  @override
  String get beforePrayer => 'minuten foar it gebed';

  @override
  String get theme => 'Tema';

  @override
  String get lightMode => 'Ljochtmodus';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get systemTheme => 'Systeem Tema';

  @override
  String get about => 'Oer';

  @override
  String get version => 'Ferzje';

  @override
  String get privacyPolicy => 'Privacybelied';

  @override
  String get termsOfService => 'Terms of Service';

  @override
  String get contactUs => 'Kontakt mei ús opnimme';

  @override
  String get rateApp => 'Rate App';

  @override
  String get shareApp => 'Diele App';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Besjoch $appName: De ultime app foar islamityske libbensstyl! $url';
  }

  @override
  String get downloadManager => 'Downloadbehearder';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Ynladen...';

  @override
  String get downloadComplete => 'Download kompleet';

  @override
  String get downloadFailed => 'Download mislearre';

  @override
  String get offlineMode => 'Offline modus';

  @override
  String get noInternet => 'Gjin ynternetferbining';

  @override
  String get checkConnection => 'Kontrolearje asjebleaft jo ferbining';

  @override
  String get premium => 'Premium';

  @override
  String get upgradeToPro => 'Upgrade nei Pro';

  @override
  String get proFeatures => 'Pro Features';

  @override
  String get removeAds => 'Fuortsmite Ads';

  @override
  String get unlockAll => 'Alle ynhâld ûntsluten';

  @override
  String get exclusiveContent => 'Eksklusive ynhâld';

  @override
  String get welcome => 'Wolkom';

  @override
  String get getStarted => 'Begjinne';

  @override
  String get skip => 'Oerslaan';

  @override
  String get next => 'Folgjende';

  @override
  String get done => 'Dien';

  @override
  String get onboarding1Title => 'Wolkom by Sirat-ı Nur';

  @override
  String get onboarding1Desc =>
      'Jo folsleine islamityske begelieder-app foar gebedstiden, Koran, en mear';

  @override
  String get onboarding2Title => 'Gebedstiden';

  @override
  String get onboarding2Desc => 'Akkurate gebedstiden basearre op jo lokaasje';

  @override
  String get onboarding3Title => 'Koran en mear';

  @override
  String get onboarding3Desc =>
      'Lês de Koran, folgje jo lêzen en ferkenne islamityske ynhâld';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'Teller weromsette';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'Doeltelling: $target';
  }

  @override
  String get tapToCount => 'Tik om te tellen';

  @override
  String get zikrCompletedMashAllah => 'Foltôge! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah is fier boppe elke ûnfolsleinens.';

  @override
  String get zikrMeaningAlhamdulillah => 'Alle lof heart oan Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah is de Grutste.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'D\'r is gjin god behalve Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Ik sykje Allah syn ferjouwing.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'D\'r is gjin macht en gjin krêft útsein troch Allah.';

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
  String get recheckPremium =>
      'Kontrolearje de status fan premium abonnemint opnij';

  @override
  String get syncStore =>
      'Syngronisearje mei de app store om jo premium abonnemint te befêstigjen.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'Premium abonnemint ferifiearre.';

  @override
  String get premiumNotFound => 'Premium abonnemint net fûn.';

  @override
  String premiumRefreshError(Object error) {
    return 'Koe premium abonnemintstatus net ferfarskje: $error';
  }

  @override
  String get offlineDownloadManager => 'Offline downloadbehearder';

  @override
  String get manageDatasets =>
      'Behear massale offline audio- en datasetpakketten.';

  @override
  String get freeStorage => 'Befrijje ynterne apparaat opslach.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'Kontrolearje de Koran-database ...';

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
    return 'Korankontrôle mislearre: $error';
  }

  @override
  String get audioVoice => 'Audio Stim';

  @override
  String get audioVoiceMisharyAlafasy => 'Man (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Man (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Man (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Qibla Kalibraasje';

  @override
  String get compassSmoothing => 'Kompas Smoothing';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Kalibraasje offset';

  @override
  String currentOffset(Object offset) {
    return 'Aktueel: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Pas oan as jo kompas in manuele korreksje nedich is. Positive wearden draaie mei de klok yn.';

  @override
  String get apply => 'Feroarings tapasse';

  @override
  String get resetOnboarding => 'Reset yntro opset';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Diagnostyk';

  @override
  String get diagnosticsNotSet => 'Net ynsteld';

  @override
  String get diagnosticsPrayerProfile => 'Gebedsprofyl';

  @override
  String get diagnosticsPrayerSource => 'Gebedsautoriteit';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Oanpaste / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Hânlieding oanpaste hoeken (gjin ynstitúsjonele boarne)';

  @override
  String diagnosticsPrayerHybridSource(String sourceName, String madhab) {
    return '$sourceName metoade mei brûker selekteare $madhab Asr ynstelling';
  }

  @override
  String diagnosticsPrayerRegionalFallbackSource(String sourceName) {
    return 'Regionale fallback mei $sourceName. Befêstigje lokale gebedstiden mei jo moskee as offisjele religieuze autoriteit.';
  }

  @override
  String get diagnosticsCloudDriven => 'Cloud Driven';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Koran Audio Assets';

  @override
  String get diagnosticsAudioAssets => 'Audio Assets';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count triemmen';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifestlêzen mislearre: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Lokalisaasje Locales';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count stipe';
  }

  @override
  String get diagnosticsQuranDataset => 'Quran Dataset';

  @override
  String get diagnosticsQuranSurahs => 'Koran Surahs';

  @override
  String get diagnosticsQuranAyahs => 'Koran Ayahs';

  @override
  String get diagnosticsQuranJuzMetadata => 'Koran Juz Metadata';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Wolkentabellen ûntbrekke yn Supabase; bondele fallback aktyf';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Wolkkontrôle mislearre: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Wolke juz metadata mist; bondele strukturele fallback aktyf';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Wolke strukturele kontrôle mislearre: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Kalibraasje nedich. Rotearje apparaat yn figuer-8.';

  @override
  String get dailyVerse => 'Deistich fers';

  @override
  String get dailyVerseUnavailableTitle => 'Deistich fers net beskikber';

  @override
  String get dailyVerseUnavailableBody =>
      'Ferifiearre deistige fers ynhâld is noch net ynsteld foar dizze build. Ferbine mei de wolkboarne of syngronisearje in ferifiearre cache foardat jo blêdzje.';

  @override
  String get todaysIbadah => 'Hjoed Ibadah';

  @override
  String get quickAccess => 'Fluch tagong';

  @override
  String get assistant => 'Assistint';

  @override
  String get places => 'Plakken';

  @override
  String get library => 'Biblioteek';

  @override
  String get analytics => 'Analytics';

  @override
  String get dailyDuas => 'Daily Duas';

  @override
  String essentialDuas(String count) {
    return '$count essensjele duas';
  }

  @override
  String get duaUnavailableTitle => 'Ferifiearre duas binne noch net beskikber';

  @override
  String get duaUnavailableBody =>
      'Ferifiearre deistige duas binne noch net syngronisearre mei dit apparaat. Ferbine mei de wolkboarne om boarne duas te laden ynstee fan in net ferifiearre fallback.';

  @override
  String get duaCategoryQuranic => 'Koranyske dua';

  @override
  String get duaCategoryMorningEvening => 'Moarn & Jûn';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Beskerming';

  @override
  String get duaCategoryBeginning => 'Beginings';

  @override
  String get duaCategorySleep => 'Sliep';

  @override
  String get duaCategoryFoodDrink => 'Iten & Drinken';

  @override
  String get duaCategoryForgiveness => 'Ferjouwing';

  @override
  String get duaCategoryHome => 'Thús';

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
  String get islamicEducation => 'Islamityske Underwiis';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Hadith Samlingen';

  @override
  String get hadithSourcePending => 'Ferifiearre boarne yn ôfwachting';

  @override
  String get hadithUnavailableTitle =>
      'Ferifiearre hadith-kolleksjes binne noch net beskikber';

  @override
  String get hadithUnavailableBody =>
      'Dizze build is noch ôfhinklik fan in net ferifiearre eksterne hadith feed. Hadith-blêdzjen bliuwt útskeakele oant in boarne dataset wurdt syngronisearre.';

  @override
  String get paywallUnlockAll =>
      'Untskoattelje alle funksjes foar jo geastlike reis';

  @override
  String get premiumProductUnavailable =>
      'Premiumprodukt is no net beskikber. Besykje it letter nochris.';

  @override
  String get premiumPurchaseFailed =>
      'Oankeap koe net foltôge wurde. Besykje it nochris.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'Unbeheind AI-oandreaune Q&A';

  @override
  String get paywallFeature2Title => 'Unbeheind Offline';

  @override
  String get paywallFeature2Desc => 'Download alle resitaasjes';

  @override
  String get paywallFeature3Title => 'Eksklusive ûntwerpen';

  @override
  String get paywallFeature3Desc => 'Premium tema\'s en lettertypen';

  @override
  String get paywallFeature4Title => 'Ad-Free';

  @override
  String get paywallFeature4Desc => 'Nul advertinsjes';

  @override
  String get paywallGetAccess => 'Krij libbenslange tagong - \$ 1,00';

  @override
  String get restorePurchases => 'Weromsette Purchases';

  @override
  String get zakatCalculator => 'Zakat rekkenmasine';

  @override
  String get zakatGold => 'Goud (Altın)';

  @override
  String get zakatSilver => 'Sulver (Gümüş)';

  @override
  String get zakatCashBank => 'Cash / Bank';

  @override
  String get zakatBusiness => 'Bedriuw';

  @override
  String get zakatInvestments => 'Ynvestearingen';

  @override
  String get zakatWeightGrams => 'Gewicht (g)';

  @override
  String get zakatPricePerGram => 'Priis/g';

  @override
  String get zakatTotalAmount => 'Totaal bedrach';

  @override
  String get zakatInventoryValue => 'Ynventariswearde';

  @override
  String get zakatDebts => 'Skulden';

  @override
  String get zakatTotal => 'Totaal';

  @override
  String get calculateZakat => 'Berekkenje Zakat';

  @override
  String get nisabNotReached => 'Nisab net berikt. Zakat is net ferplichte.';

  @override
  String get totalZakat => 'Totaal Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'Goud Zakat';

  @override
  String get zakatSilverZakat => 'Sulveren Zakat';

  @override
  String get zakatCashZakat => 'Cash Zakat';

  @override
  String get zakatBusinessZakat => 'Business Zakat';

  @override
  String get zakatInvestmentZakat => 'Ynvestearring Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! Ik bin jo islamityske assistint. Freegje my oer gebed, fêstjen, zakat, of hokker islamityske ûnderwerp.';

  @override
  String get chatbotLimitReached =>
      'Deistich query limyt berikt. Upgrade nei Premium foar ûnbeheind.';

  @override
  String get chatbotErrorMsg =>
      'Ik koe gjin antwurd generearje. Besykje it nochris.';

  @override
  String get chatbotOfflinePrompt =>
      'De ferifiearre offline islamityske kennisbasis wurdt noch gearstald. Jo kinne offline fallback no ynskeakelje, mar it sil allinich beheinde feilige berjochten sjen litte oant de boarne dataset klear is.\n\nWolle jo offline fallback ynskeakelje?';

  @override
  String get chatbotOfflineSwitched =>
      'Offline fallback ynskeakele. Ferifiearre lokale islamityske antwurden binne noch net klear.';

  @override
  String get chatbotOfflineDownloadLabel => 'Offline Fallback ynskeakelje';

  @override
  String get downloadPreparing => 'Download klearmakke...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'It downloaden fan surah $surah / $total';
  }

  @override
  String get downloadCompleted => 'Alle surahs al ynladen foar dizze reciter.';

  @override
  String get offlineQuranAudioPacks => 'Offline Quran Audio Packs';

  @override
  String storedOnDeviceMb(String size) {
    return 'Opslein op apparaat: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surahs ynladen';
  }

  @override
  String get redownloadMissingRepair => 'Reparaasje / Download Missing';

  @override
  String get downloadAction => 'Download';

  @override
  String get resumeDownload => 'Trochgean download';

  @override
  String get deleteDownloadedFiles => 'Wiskje ynladen triemmen';

  @override
  String get downloadCancelling => 'Annulearje...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Download annulearre foar $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Download foltôge foar $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Download klear foar $reciter mei $failed mislearre surahs ($downloaded/$total ynladen).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Offline bestannen wiske foar $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Ferifiearre Quran-audioboarnen binne op it stuit net beskikber.';

  @override
  String get quranAudioPlaybackErrorWithConnectionHint =>
      'Audio ôfspieljen mislearre. Kontrolearje asjebleaft jo ferbining.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Ferifiearre Quran-audiopakket is net kompleet ($available/$total). Besykje it nochris nei\'t de audiokatalogus bywurke is.';
  }

  @override
  String get chatbotHint => 'Stel in fraach ...';

  @override
  String get chatbotThinking => 'Tinkend...';

  @override
  String get sukunMixerSubtitle => 'Natuer & Koran Mixer';

  @override
  String get audioPlayFailed => 'Audio ôfspieljen mislearre';

  @override
  String get sukunNatureLabel => 'Sukun (Natuer)';

  @override
  String get sukunRainOfMercy => 'Rein fan Mercy';

  @override
  String get sukunGardenOfPeace => 'Tún fan Frede';

  @override
  String get sukunMidnightCalm => 'Middernacht kalm';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Soundscapes net beskikber';

  @override
  String get sukunUnavailableBody =>
      'Dizze build omfettet de fereaske Sukun soundscape-aktiva noch net.';

  @override
  String get prayerCompletion => 'Gebed foltôging';

  @override
  String get streaks => 'Strepen';

  @override
  String get dayStreak => 'Dag streak';

  @override
  String get bestStreak => 'Beste streak';

  @override
  String get chatbotCloudAiLabel => 'Wolk AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'Brûk Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Offline Fallback ynskeakelje';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count oer';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API is net ynsteld. Ferifiearre offline islamityske begelieding is noch net beskikber.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Ferifiearre lokale islamityske begelieding is noch net beskikber. Wikselje nei Cloud AI foar boarne antwurden.';

  @override
  String get mosques => 'Moskeeën';

  @override
  String get halalFood => 'Halal Food';

  @override
  String get placesSearchArea => 'Sykje dit gebiet';

  @override
  String get nearbyMosques => 'Nearby Moskeeën';

  @override
  String get islamicSchools => 'Islamityske skoallen';

  @override
  String placesFoundCount(String count) {
    return '$count fûn';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km fuort';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API-flater: $statusCode';
  }

  @override
  String get placesNetworkError => 'Netwurk flater. Besykje it nochris.';

  @override
  String get placesLocationRequiredTitle => 'Lokaasje fereaske';

  @override
  String get placesLocationRequiredBody =>
      'Stel earst in lokaasje yn, sadat moskeeën yn \'e buert, halal-iten en islamityske skoallen sekuer kinne wurde socht.';

  @override
  String get placesMapTilesUnavailableTitle => 'Kaarttegels net beskikber';

  @override
  String get placesMapTilesUnavailableBody =>
      'In ferifiearre kaarttegelboarne is noch net ynsteld foar dizze build. Plakken yn \'e buert kinne noch laden wurde fan jo bewarre lokaasje.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'Plakken gegevens net beskikber';

  @override
  String get placesDataSourceUnavailableBody =>
      'In ferifiearre plakken gegevenseinpunt is noch net ynsteld foar dizze build. Stel PLACES_OVERPASS_API_URL yn op in goedkarde proxy of provider foardat jo sykjen yn \'e buert ynskeakelje.';

  @override
  String get unknownPlaceName => 'Unbekende namme';

  @override
  String get islamicPlaceFallback => 'Islamityske plak';

  @override
  String get asmaMeaning1 => 'De Beneficent';

  @override
  String get asmaMeaning2 => 'De Barmhertige';

  @override
  String get asmaMeaning3 => 'De kening / ivige Hear';

  @override
  String get asmaMeaning4 => 'It Allerhillichste';

  @override
  String get asmaMeaning5 => 'De boarne fan frede';

  @override
  String get asmaMeaning6 => 'De Giver fan Feiligens';

  @override
  String get asmaMeaning7 => 'De Guardian';

  @override
  String get asmaMeaning8 => 'De kostberste / de machtichste';

  @override
  String get asmaMeaning9 =>
      'The Restorer and Irresistible, whose will prevails with perfect power.';

  @override
  String get asmaMeaning10 => 'De Grutste';

  @override
  String get asmaMeaning11 => 'De Skepper';

  @override
  String get asmaMeaning12 => 'The Maker of Order';

  @override
  String get asmaMeaning13 => 'The Shaper of Beauty';

  @override
  String get asmaMeaning14 => 'De ferjouwing';

  @override
  String get asmaMeaning15 => 'De Subduer';

  @override
  String get asmaMeaning16 => 'De Giver fan alles';

  @override
  String get asmaMeaning17 => 'De Sustainer';

  @override
  String get asmaMeaning18 => 'De iepener';

  @override
  String get asmaMeaning19 => 'De kenner fan alles';

  @override
  String get asmaMeaning20 =>
      'The Withholder, who narrows and restrains by wisdom.';

  @override
  String get asmaMeaning21 =>
      'The Expander, who opens, eases, and grants abundance by wisdom.';

  @override
  String get asmaMeaning22 => 'De Abaser';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'The Bestower of Honor';

  @override
  String get asmaMeaning25 => 'De fernedering';

  @override
  String get asmaMeaning26 => 'De hearer fan alles';

  @override
  String get asmaMeaning27 => 'De sjenner fan alles';

  @override
  String get asmaMeaning28 => 'De rjochter';

  @override
  String get asmaMeaning29 => 'De juste';

  @override
  String get asmaMeaning30 => 'De subtile';

  @override
  String get asmaMeaning31 => 'The All Aware';

  @override
  String get asmaMeaning32 => 'De Forearing';

  @override
  String get asmaMeaning33 => 'De Magnificent';

  @override
  String get asmaMeaning34 => 'De Grutte Forgiver';

  @override
  String get asmaMeaning35 => 'De beleanning fan tankberens';

  @override
  String get asmaMeaning36 => 'De Heechste';

  @override
  String get asmaMeaning37 => 'De Grutste';

  @override
  String get asmaMeaning38 => 'De behâlder';

  @override
  String get asmaMeaning39 => 'The Nourisher';

  @override
  String get asmaMeaning40 => 'The Reckoner';

  @override
  String get asmaMeaning41 => 'De Majestic';

  @override
  String get asmaMeaning42 => 'De genereuze';

  @override
  String get asmaMeaning43 => 'De Wakende';

  @override
  String get asmaMeaning44 => 'It antwurd op gebed';

  @override
  String get asmaMeaning45 => 'The All Comprehending';

  @override
  String get asmaMeaning46 => 'De Perfectly Wise';

  @override
  String get asmaMeaning47 => 'De leafdefolle';

  @override
  String get asmaMeaning48 => 'De hearlikste';

  @override
  String get asmaMeaning49 => 'De opstanner';

  @override
  String get asmaMeaning50 => 'De tsjûge';

  @override
  String get asmaMeaning51 => 'De wierheid';

  @override
  String get asmaMeaning52 => 'De All-Sufficient Trustee';

  @override
  String get asmaMeaning53 => 'De besitter fan alle sterkte';

  @override
  String get asmaMeaning54 => 'De krêftige';

  @override
  String get asmaMeaning55 => 'De beskermer';

  @override
  String get asmaMeaning56 => 'De priizge';

  @override
  String get asmaMeaning57 => 'De taksator';

  @override
  String get asmaMeaning58 => 'De oarsprong';

  @override
  String get asmaMeaning59 => 'De restaurateur';

  @override
  String get asmaMeaning60 => 'De Giver fan it libben';

  @override
  String get asmaMeaning61 => 'De libbensnimmer';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'The Self-Subsisting Sustainer';

  @override
  String get asmaMeaning64 => 'De Finder';

  @override
  String get asmaMeaning65 => 'The Glorious';

  @override
  String get asmaMeaning66 => 'De ienige';

  @override
  String get asmaMeaning67 => 'De iene';

  @override
  String get asmaMeaning68 => 'De iene socht troch allegear';

  @override
  String get asmaMeaning69 => 'De machtige';

  @override
  String get asmaMeaning70 => 'De Skepper fan alle macht';

  @override
  String get asmaMeaning71 => 'De Expediter';

  @override
  String get asmaMeaning72 => 'De fertrager';

  @override
  String get asmaMeaning73 => 'De earste';

  @override
  String get asmaMeaning74 => 'De lêste';

  @override
  String get asmaMeaning75 => 'It Manifest';

  @override
  String get asmaMeaning76 => 'De ferburgen';

  @override
  String get asmaMeaning77 => 'De gûverneur';

  @override
  String get asmaMeaning78 => 'De Supreme One';

  @override
  String get asmaMeaning79 => 'De Doer fan Goed';

  @override
  String get asmaMeaning80 => 'De gids foar bekearing';

  @override
  String get asmaMeaning81 => 'De Avenger';

  @override
  String get asmaMeaning82 => 'De Forgiver';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'De eigner / soeverein fan alles';

  @override
  String get asmaMeaning85 => 'De besitter fan Majesteit en Bounty';

  @override
  String get asmaMeaning86 => 'The Equitable One';

  @override
  String get asmaMeaning87 => 'The Gatherer';

  @override
  String get asmaMeaning88 => 'De rike';

  @override
  String get asmaMeaning89 => 'De ferriker';

  @override
  String get asmaMeaning90 => 'De Preventer fan Harm';

  @override
  String get asmaMeaning91 => 'De bringer fan skea';

  @override
  String get asmaMeaning92 => 'The bestower of Benefits';

  @override
  String get asmaMeaning93 => 'It ljocht';

  @override
  String get asmaMeaning94 => 'De gids';

  @override
  String get asmaMeaning95 => 'De Originator';

  @override
  String get asmaMeaning96 => 'De ivige';

  @override
  String get asmaMeaning97 => 'De erfgenamt';

  @override
  String get asmaMeaning98 => 'De meast rjochtfeardige gids';

  @override
  String get asmaMeaning99 => 'De pasjint ien';
}
