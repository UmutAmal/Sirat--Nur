// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Haitian Haitian Creole (`ht`).
class AppLocalizationsHt extends AppLocalizations {
  AppLocalizationsHt([String locale = 'ht']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Fason Limyè Islamik';

  @override
  String get home => 'Lakay';

  @override
  String get quran => 'Koran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Kalandriye';

  @override
  String get settings => 'Anviwònman';

  @override
  String get nextPrayer => 'Next Lapriyè';

  @override
  String get prayerTimes => 'Tan Lapriyè';

  @override
  String get continueReading => 'Kontinye lekti';

  @override
  String get getLifetimePro => 'Jwenn Lifetime Pro';

  @override
  String get unlockTajweed => 'Debloke Tajweed ak karakteristik avanse';

  @override
  String get prayerCalculation => 'Kalkil lapriyè';

  @override
  String get method => 'Metòd kalkil';

  @override
  String get madhab => 'Asr Metòd Jiristik';

  @override
  String get surahs => 'Soure yo';

  @override
  String get ayahs => 'Ayahs';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Solèy leve';

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
    return 'Tan pou $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Li lè pou nou priye $prayerName.';
  }

  @override
  String get dataStorage => 'Done & Depo';

  @override
  String get clearCache => 'Klè Cache';

  @override
  String get cacheClearedSuccess => 'Cache netwaye avèk siksè';

  @override
  String get location => 'Kote';

  @override
  String get language => 'Lang';

  @override
  String get selectLanguage => 'Chwazi Lang';

  @override
  String get searchLanguage => 'Chèche plis pase 180 lang...';

  @override
  String get systemDefault => 'Sistèm Default';

  @override
  String get currentLocation => 'Kote aktyèl (GPS)';

  @override
  String get locationServiceDisabled => 'Sèvis kote yo enfim.';

  @override
  String get locationPermissionDenied => 'Pèmisyon kote yo refize.';

  @override
  String get locationDetectionFailed =>
      'Pa t \'kapab detekte kote ou ye a. Tanpri chwazi yon vil manyèlman oswa eseye ankò.';

  @override
  String citiesCount(String count) {
    return '$count vil yo';
  }

  @override
  String get search => 'Rechèch';

  @override
  String get searchHint => 'Chèche...';

  @override
  String get noResults => 'Pa gen rezilta yo jwenn';

  @override
  String get loading => 'Chaje...';

  @override
  String get error => 'Erè';

  @override
  String get appErrorOccurred => 'Yon erè te fèt';

  @override
  String get appUnknownError => 'Erè enkoni';

  @override
  String get quranLoadFailed =>
      'Kontni koran pa t \'kapab chaje. Tanpri eseye ankò.';

  @override
  String get retry => 'Eseye ankò';

  @override
  String get refreshAction => 'Rafrechi';

  @override
  String get cancel => 'Anile';

  @override
  String get save => 'Sove';

  @override
  String get delete => 'Efase';

  @override
  String get edit => 'Edit';

  @override
  String get close => 'Fèmen';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Wi';

  @override
  String get no => 'Non';

  @override
  String get surah => 'Sura';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Paj';

  @override
  String get reading => 'Lekti';

  @override
  String get recitation => 'Resitasyon';

  @override
  String get translation => 'Tradiksyon';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Chaje tafsir...';

  @override
  String get tafsirSourceLabel => 'Tafsir sous';

  @override
  String get tafsirNoSurahFound => 'Yo pa jwenn okenn tafsir pou soure sa a.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Yo pa jwenn okenn tafsir pou ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir pa t \'kapab chaje.';

  @override
  String get tafsirNoTextForAyah => 'Pa gen tèks tafsir pou ayah sa a.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Telechaje tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Chaje tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Sous Tafsir te retounen yon erè HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Sous tafsir ki te chwazi a pa retounen okenn antre.';

  @override
  String get tafsirCacheUnavailable =>
      'Tafsir verifye poko disponib offline. Senkronize yon seri done tafsir souse anvan ou navige.';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get addBookmark => 'Ajoute Bookmark';

  @override
  String get removeBookmark => 'Retire Bookmark';

  @override
  String get lastRead => 'Dènye lekti';

  @override
  String get dailyZikr => 'Zikr chak jou';

  @override
  String get duaMeaning1 =>
      'lòt moun priye, ‘Senyè nou, ban nou sa ki byen nan monn sa a ak nan apre a, epi pwoteje nou kont touman dife a.’';

  @override
  String get duaMeaning2 =>
      'Bondye pa chaje okenn nanm ak plis pase sa li kapab pote: chak genyen kèlkeswa sa ki byen li te fè, epi soufri mal li yo- ‘ Granmèt, pa pran nou nan travay si nou bliye oswa fè erè. Senyè, pa chaje nou tankou ou te chaje moun ki te devan nou yo. Senyè, pa chaje nou plis pase fòs nou genyen pou nou sipòte. Padone nou, padone nou, gen pitye pou nou. Ou se Pwotektè nou, donk ede nou kont moun ki pa kwayan yo.’';

  @override
  String get duaMeaning3 =>
      '‘Seyè nou, pa kite kè nou devye apre ou fin gide nou. Fè nou mizèrikòd ou: se ou ki tout tan tout tan bay.';

  @override
  String get duaMeaning4 =>
      'Senyè, fè pou mwen menm ak desandan mwen yo ka kontinye priyè a. Seyè nou an, aksepte demann mwen an.';

  @override
  String get duaMeaning5 =>
      'epi bese zèl ou avèk imilite anvè yo ak jantiyès epi di: ‘Seyè, gen pitye pou yo, menm jan yo te pran swen m lè m te piti.';

  @override
  String get duaMeaning6 =>
      'Egzalte se pou Bondye, sila a ki vrèman nan kontwòl. [Pwofèt], pa kouri resite anvan revelasyon an fini nèt, men di, ‘Seyè, ogmante konesans mwen!’';

  @override
  String get duaMeaning7 =>
      'Di [Pwofèt], ‘Seyè, padone epi gen mizèrikòd: Ou se pi mizèrikòd nan tout.’';

  @override
  String get duaMeaning8 =>
      'moun ki priye, ‘Senyè nou, ban nou lajwa nan konjwen nou yo ak pitit pitit nou yo. Fè nou bon egzanp pou moun ki konnen w’.';

  @override
  String get morningZikr => 'Maten Zikr';

  @override
  String get eveningZikr => 'Aswè Zikr';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masa\'il';

  @override
  String get hadith => 'Adith';

  @override
  String get hadithCollection => 'Koleksyon Hadith';

  @override
  String get hadithBooks => 'Liv Hadith';

  @override
  String get searchHadith => 'Rechèch Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Non Allah';

  @override
  String get liveTv => 'Live TV';

  @override
  String get watchLive => 'Gade Live';

  @override
  String get streamError => 'Erè kouran';

  @override
  String get reload => 'Rechaje';

  @override
  String get openInYoutube => 'Louvri nan YouTube';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Jèn';

  @override
  String get quranReading => 'Lekti koran';

  @override
  String get prayers => 'Lapriyè';

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
  String get dhikrCount => 'Dhikr Konte';

  @override
  String get weeklyProgress => 'Pwogrè chak semèn';

  @override
  String get monthlyProgress => 'Pwogrè chak mwa';

  @override
  String get statistics => 'Estatistik';

  @override
  String get hijriCalendar => 'Kalandriye Hijri';

  @override
  String get gregorianCalendar => 'Kalandriye Gregoryen';

  @override
  String get today => 'Jodi a';

  @override
  String get tomorrow => 'Demen';

  @override
  String get yesterday => 'Yè';

  @override
  String get specialDays => 'Jou espesyal';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Nouvèl Ane Islamik';

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
  String get qiblaDirection => 'Direksyon Qibla';

  @override
  String get compass => 'Bousòl';

  @override
  String get degrees => 'degre';

  @override
  String get north => 'Nò';

  @override
  String get qiblaFound => 'Qibla jwenn!';

  @override
  String get turnDevice => 'Vire aparèy ou an pou fè fas a Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Erè konpa: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Capteur konpa pa disponib sou aparèy sa a.';

  @override
  String get qiblaLocationRequiredTitle => 'Kote obligatwa pou Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Mete pozisyon aktyèl ou anvan ou sèvi ak konpa Qibla pou direksyon an ka kalkile avèk presizyon.';

  @override
  String get adhanNotificationChannelName => 'Adhan Notifikasyon';

  @override
  String get adhanNotificationChannelDescription =>
      'Alèt tan lapriyè ak son adhan.';

  @override
  String get notifications => 'Notifikasyon';

  @override
  String get prayerNotifications => 'Notifikasyon lapriyè';

  @override
  String get enableNotifications => 'Pèmèt Notifikasyon yo';

  @override
  String get notificationTime => 'Tan Notifikasyon';

  @override
  String get beforePrayer => 'minit anvan lapriyè';

  @override
  String get theme => 'Tèm';

  @override
  String get lightMode => 'Mòd limyè';

  @override
  String get darkMode => 'Mòd nwa';

  @override
  String get systemTheme => 'Tèm sistèm';

  @override
  String get about => 'Konsènan';

  @override
  String get version => 'Version';

  @override
  String get privacyPolicy => 'Règleman sou enfòmasyon prive';

  @override
  String get termsOfService => 'Regleman Sèvis';

  @override
  String get contactUs => 'Kontakte nou';

  @override
  String get rateApp => 'To App';

  @override
  String get shareApp => 'Pataje App';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Tcheke $appName: Aplikasyon ultim nan vi Islamik! $url';
  }

  @override
  String get downloadManager => 'Telechaje Manadjè';

  @override
  String get downloads => 'Telechajman';

  @override
  String get downloading => 'Telechaje...';

  @override
  String get downloadComplete => 'Telechaje konplè';

  @override
  String get downloadFailed => 'Telechaje echwe';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'Pa gen koneksyon entènèt';

  @override
  String get checkConnection => 'Tanpri tcheke koneksyon ou';

  @override
  String get premium => 'Premium';

  @override
  String get upgradeToPro => 'Upgrade nan Pro';

  @override
  String get proFeatures => 'Karakteristik Pro';

  @override
  String get removeAds => 'Retire Ajoute yo';

  @override
  String get unlockAll => 'Debloke tout kontni';

  @override
  String get exclusiveContent => 'Kontni eksklizif';

  @override
  String get welcome => 'Byenvini';

  @override
  String get getStarted => 'Kòmanse';

  @override
  String get skip => 'Sote';

  @override
  String get next => 'Next';

  @override
  String get done => 'Fè';

  @override
  String get onboarding1Title => 'Byenveni nan Sirat-ı Nur';

  @override
  String get onboarding1Desc =>
      'Aplikasyon konplè Islamik konpayon ou a pou tan lapriyè, koran, ak plis ankò';

  @override
  String get onboarding2Title => 'Tan Lapriyè';

  @override
  String get onboarding2Desc => 'Tan lapriyè egzat ki baze sou kote ou';

  @override
  String get onboarding3Title => 'Koran ak plis ankò';

  @override
  String get onboarding3Desc =>
      'Li koran, swiv lekti ou, epi eksplore kontni Islamik';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'Reyajiste Counter';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'Kantite sib: $target';
  }

  @override
  String get tapToCount => 'Tape pou konte';

  @override
  String get zikrCompletedMashAllah => 'Konplete! MashAllah';

  @override
  String get zikrMeaningSubhanAllah => 'Allah pi wo pase tout enpèfeksyon.';

  @override
  String get zikrMeaningAlhamdulillah => 'Tout lwanj se pou Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah se pi gran an.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Pa gen okenn bondye men Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Mwen chache padon Allah.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Pa gen okenn pouvwa ak pa gen fòs eksepte nan Allah.';

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
  String get dailyProgress => 'Pwogrè chak jou';

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
  String get recheckPremium => 'Retcheke sitiyasyon abònman prim';

  @override
  String get syncStore =>
      'Senkronize ak magazen app a pou konfime abònman prim ou.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'Abònman Premium verifye.';

  @override
  String get premiumNotFound => 'Abònman Premium pa jwenn.';

  @override
  String premiumRefreshError(Object error) {
    return 'Pa t \'kapab rafrechi estati abònman prim: $error';
  }

  @override
  String get offlineDownloadManager => 'Offline Download Manager';

  @override
  String get manageDatasets => 'Jere gwo pake odyo ak done ki pa konekte.';

  @override
  String get freeStorage => 'Libere depo aparèy entèn yo.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'Tcheke baz done koran an...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'Estati baz done koran';

  @override
  String statusLabel(Object status) {
    return 'Estati: $status';
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
    return 'Tèks koran an echwe: $error';
  }

  @override
  String get audioVoice => 'Odyo Vwa';

  @override
  String get audioVoiceMisharyAlafasy => 'Gason (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Gason (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Gason (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Qibla Kalibrasyon';

  @override
  String get compassSmoothing => 'Lisaj konpa';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Kalibrasyon Offset';

  @override
  String currentOffset(Object offset) {
    return 'Aktyèl: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Ajiste si konpa ou bezwen yon koreksyon manyèl. Valè pozitif yo vire nan direksyon goch.';

  @override
  String get apply => 'Aplike chanjman yo';

  @override
  String get resetOnboarding => 'Reyajiste konfigirasyon intro';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Dyagnostik';

  @override
  String get diagnosticsNotSet => 'Pa mete';

  @override
  String get diagnosticsPrayerProfile => 'Profil lapriyè';

  @override
  String get diagnosticsPrayerSource => 'Otorite lapriyè';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manyèl ang koutim (pa gen okenn sous enstitisyonèl)';

  @override
  String diagnosticsPrayerHybridSource(String sourceName, String madhab) {
    return '$sourceName metòd ak itilizatè a chwazi $madhab anviwònman Asr';
  }

  @override
  String get diagnosticsCloudDriven => 'Cloud Driven';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'Byen odyo UI';

  @override
  String get diagnosticsQuranAudioAssets => 'Koran byen odyo';

  @override
  String get diagnosticsAudioAssets => 'Byen odyo';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count fichye';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Lekti manifès la echwe: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Lokal lokalizasyon';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count sipòte';
  }

  @override
  String get diagnosticsQuranDataset => 'Ansanm done koran';

  @override
  String get diagnosticsQuranSurahs => 'Sourate koran yo';

  @override
  String get diagnosticsQuranAyahs => 'Koran Ayahs';

  @override
  String get diagnosticsQuranJuzMetadata => 'Koran Juz Metadata';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Tab nwaj ki manke nan Supabase; pake repli aktif';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Tcheke nwaj la echwe: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz metadata ki manke; pake estriktirèl repli aktif';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Tèks estriktirèl nwaj la echwe: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Kalibrasyon obligatwa. Wotasyon aparèy nan figi-8.';

  @override
  String get dailyVerse => 'Vèsè chak jou';

  @override
  String get dailyVerseUnavailableTitle => 'Vèsè chak jou pa disponib';

  @override
  String get dailyVerseUnavailableBody =>
      'Kontni vèsè chak jou verifye poko configuré pou konstriksyon sa a. Konekte ak sous nwaj la oswa senkronize yon kachèt verifye anvan ou navige.';

  @override
  String get todaysIbadah => 'Jodi a Ibadah';

  @override
  String get quickAccess => 'Aksè rapid';

  @override
  String get assistant => 'Asistan';

  @override
  String get places => 'Kote yo';

  @override
  String get library => 'Bibliyotèk';

  @override
  String get analytics => 'Analytics';

  @override
  String get dailyDuas => 'Duas chak jou';

  @override
  String essentialDuas(String count) {
    return '$count esansyèl';
  }

  @override
  String get duaUnavailableTitle => 'Dous verifye yo poko disponib';

  @override
  String get duaUnavailableBody =>
      'Duas chak jou verifye yo poko senkronize ak aparèy sa a. Konekte ak sous nwaj la pou chaje duas ki soti olye pou yo yon repitasyon ki pa verifye.';

  @override
  String get duaCategoryQuranic => 'Koranik dua';

  @override
  String get duaCategoryMorningEvening => 'Maten & Aswè';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Pwoteksyon';

  @override
  String get duaCategoryBeginning => 'Kòmansman';

  @override
  String get duaCategorySleep => 'Dòmi';

  @override
  String get duaCategoryFoodDrink => 'Manje & Bwè';

  @override
  String get duaCategoryForgiveness => 'padon';

  @override
  String get duaCategoryHome => 'Lakay';

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
  String get islamicEducation => 'Edikasyon Islamik';

  @override
  String get sukunAudioTitle => 'Soukun Soundscapes';

  @override
  String get hadithCollections => 'Koleksyon Hadith';

  @override
  String get hadithSourcePending => 'Sous verifye annatant';

  @override
  String get hadithUnavailableTitle =>
      'Koleksyon adit verifye yo poko disponib';

  @override
  String get hadithUnavailableBody =>
      'Konstriksyon sa a toujou depann de yon manje adit ekstèn ki pa verifye. Navigasyon Hadith rete enfim jiskaske yon seri done sous senkronize.';

  @override
  String get paywallUnlockAll =>
      'Debloke tout karakteristik pou vwayaj espirityèl ou';

  @override
  String get premiumProductUnavailable =>
      'Pwodwi Premium pa disponib kounye a. Tanpri eseye ankò pita.';

  @override
  String get premiumPurchaseFailed =>
      'Achte pa t \'kapab fini. Tanpri eseye ankò.';

  @override
  String get paywallFeature1Title => 'Neural Asistan Plus';

  @override
  String get paywallFeature1Desc => 'Q&A san limit ki mache ak AI';

  @override
  String get paywallFeature2Title => 'San limit Offline';

  @override
  String get paywallFeature2Desc => 'Telechaje tout resitasyon yo';

  @override
  String get paywallFeature3Title => 'Desen eksklizif';

  @override
  String get paywallFeature3Desc => 'Tèm ak polis Premium';

  @override
  String get paywallFeature4Title => 'Piblisite-gratis';

  @override
  String get paywallFeature4Desc => 'Zewo piblisite';

  @override
  String get paywallGetAccess => 'Jwenn Aksè pou tout lavi — \$1.00';

  @override
  String get restorePurchases => 'Restore Acha';

  @override
  String get zakatCalculator => 'Zakat kalkilatris';

  @override
  String get zakatGold => 'Lò (Altın)';

  @override
  String get zakatSilver => 'Silver (Gümüş)';

  @override
  String get zakatCashBank => 'Lajan Kach / Bank';

  @override
  String get zakatBusiness => 'Biznis';

  @override
  String get zakatInvestments => 'Envestisman';

  @override
  String get zakatWeightGrams => 'Pwa (g)';

  @override
  String get zakatPricePerGram => 'Pri/g';

  @override
  String get zakatTotalAmount => 'Kantite total';

  @override
  String get zakatInventoryValue => 'Valè Envantè';

  @override
  String get zakatDebts => 'Dèt';

  @override
  String get zakatTotal => 'Total';

  @override
  String get calculateZakat => 'Kalkile zakat';

  @override
  String get nisabNotReached => 'Nisab pa rive. Zakat pa obligatwa.';

  @override
  String get totalZakat => 'Total zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Byen: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakat lò';

  @override
  String get zakatSilverZakat => 'Zakat ajan';

  @override
  String get zakatCashZakat => 'Zakat Lajan Kach';

  @override
  String get zakatBusinessZakat => 'Zakat biznis';

  @override
  String get zakatInvestmentZakat => 'Zakat envestisman';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! Mwen se asistan Islamik ou a. Mande m \'sou lapriyè, jèn, zakat, oswa nenpòt sijè Islamik.';

  @override
  String get chatbotLimitReached =>
      'Limit demann chak jou rive. Upgrade ak Premium pou san limit.';

  @override
  String get chatbotErrorMsg =>
      'Mwen pa t \'kapab jenere yon repons. Tanpri eseye ankò.';

  @override
  String get chatbotOfflinePrompt =>
      'Verifye baz konesans Islamik offline la toujou ap òganize. Ou ka aktive replik offline kounye a, men li pral sèlman montre mesaj ki an sekirite limite jiskaske seri done sous la pare.\n\nÈske ou ta renmen aktive offline repli?';

  @override
  String get chatbotOfflineSwitched =>
      'Offline selèb pèmèt. Repons Islamik lokal verifye yo poko pare.';

  @override
  String get chatbotOfflineDownloadLabel => 'Pèmèt Offline Fallback';

  @override
  String get downloadPreparing => 'Prepare download...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Telechaje soure $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Tout sourate deja telechaje pou resite sa a.';

  @override
  String get offlineQuranAudioPacks => 'Offline Koran odyo pake';

  @override
  String storedOnDeviceMb(String size) {
    return 'Ki estoke sou aparèy la: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total soure telechaje';
  }

  @override
  String get redownloadMissingRepair => 'Reparasyon / Telechaje ki manke';

  @override
  String get downloadAction => 'Telechaje';

  @override
  String get resumeDownload => 'Kontinye telechaje';

  @override
  String get deleteDownloadedFiles => 'Efase fichye telechaje yo';

  @override
  String get downloadCancelling => 'Anile...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Telechajman anile pou $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Téléchargement fini pou $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Téléchargement fini pou $reciter ak $failed sourate ki echwe ($downloaded/$total telechaje).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Efase fichye offline pou $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Sous odyo koran verifye yo pa disponib kounye a.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Pake odyo koran verifye pa konplè ($available/$total). Eseye ankò apre katalòg odyo a mete ajou.';
  }

  @override
  String get chatbotHint => 'Poze yon kesyon...';

  @override
  String get chatbotThinking => 'Panse...';

  @override
  String get sukunMixerSubtitle => 'Nati & Koran Mixer';

  @override
  String get audioPlayFailed => 'Lektur odyo echwe';

  @override
  String get sukunNatureLabel => 'Sukun (Nati)';

  @override
  String get sukunRainOfMercy => 'Lapli mizèrikòd';

  @override
  String get sukunGardenOfPeace => 'Jaden lapè';

  @override
  String get sukunMidnightCalm => 'Minwi Kalm';

  @override
  String get sukunOceanTawheed => 'Oseyan Tawheed';

  @override
  String get sukunUnavailableTitle => 'Soundscapes pa disponib';

  @override
  String get sukunUnavailableBody =>
      'Konstwiksyon sa a pa gen ladann byen Sukun yo obligatwa yo ankò.';

  @override
  String get prayerCompletion => 'Konplete Lapriyè';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Jounen tras';

  @override
  String get bestStreak => 'Pi bon tras';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'Sèvi ak Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Pèmèt Offline Fallback';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count kite';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API pa configuré. Verifye pedagojik Islamik offline pa disponib ankò.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Oryantasyon Islamik lokal verifye pa disponib ankò. Chanje nan Cloud AI pou jwenn repons yo.';

  @override
  String get mosques => 'Moske';

  @override
  String get halalFood => 'Manje Halal';

  @override
  String get placesSearchArea => 'Chèche zòn sa a';

  @override
  String get nearbyMosques => 'Moske ki tou pre';

  @override
  String get islamicSchools => 'Lekòl Islamik yo';

  @override
  String placesFoundCount(String count) {
    return '$count jwenn';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km lwen';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Erè API: $statusCode';
  }

  @override
  String get placesNetworkError => 'Erè rezo a. Tanpri eseye ankò.';

  @override
  String get placesLocationRequiredTitle => 'Kote obligatwa';

  @override
  String get placesLocationRequiredBody =>
      'Mete yon kote an premye pou moske ki tou pre, manje halal, ak lekòl Islamik yo ka fouye avèk presizyon.';

  @override
  String get placesMapTilesUnavailableTitle => 'Kat mozayik pa disponib';

  @override
  String get placesMapTilesUnavailableBody =>
      'Yon sous mozayik kat jeyografik verifye poko configuré pou konstriksyon sa a. Kote ki tou pre yo ka toujou chaje nan kote ou te sove yo.';

  @override
  String get placesDataSourceUnavailableTitle => 'Kote done yo pa disponib';

  @override
  String get placesDataSourceUnavailableBody =>
      'Yon pwen final done kote verifye poko konfigirasyon pou konstriksyon sa a. Mete PLACES_OVERPASS_API_URL sou yon proxy oswa yon founisè apwouve anvan ou pèmèt rechèch ki tou pre.';

  @override
  String get unknownPlaceName => 'Non enkoni';

  @override
  String get islamicPlaceFallback => 'Kote Islamik';

  @override
  String get asmaMeaning1 => 'Benefisyan yo';

  @override
  String get asmaMeaning2 => 'Mizèrikòd la';

  @override
  String get asmaMeaning3 => 'Wa a / Seyè ki p\'ap janm fini an';

  @override
  String get asmaMeaning4 => 'Très Sen an';

  @override
  String get asmaMeaning5 => 'Sous Lapè a';

  @override
  String get asmaMeaning6 => 'Ki bay sekirite a';

  @override
  String get asmaMeaning7 => 'Gadyen an';

  @override
  String get asmaMeaning8 => 'The Precious / The Most Mighty';

  @override
  String get asmaMeaning9 =>
      'The Restorer and Irresistible, whose will prevails with perfect power.';

  @override
  String get asmaMeaning10 => 'Pi gran an';

  @override
  String get asmaMeaning11 => 'Kreyatè a';

  @override
  String get asmaMeaning12 => 'Fè Lòd la';

  @override
  String get asmaMeaning13 => 'Formatè Bote a';

  @override
  String get asmaMeaning14 => 'The Forgiving';

  @override
  String get asmaMeaning15 => 'Subduer la';

  @override
  String get asmaMeaning16 => 'Donateur tout moun';

  @override
  String get asmaMeaning17 => 'The Sustainer';

  @override
  String get asmaMeaning18 => 'Ouvèti a';

  @override
  String get asmaMeaning19 => 'Konesans Tout moun';

  @override
  String get asmaMeaning20 => 'Konstriktè a';

  @override
  String get asmaMeaning21 => 'Sekou a';

  @override
  String get asmaMeaning22 => 'Abaser la';

  @override
  String get asmaMeaning23 => 'Exalter la';

  @override
  String get asmaMeaning24 => 'Donè onè a';

  @override
  String get asmaMeaning25 => 'Imilyatè a';

  @override
  String get asmaMeaning26 => 'Ouitè a tout moun';

  @override
  String get asmaMeaning27 => 'Vyan tout moun';

  @override
  String get asmaMeaning28 => 'Jij la';

  @override
  String get asmaMeaning29 => 'Jis la';

  @override
  String get asmaMeaning30 => 'Yon sibtil la';

  @override
  String get asmaMeaning31 => 'Tout Konsyan yo';

  @override
  String get asmaMeaning32 => 'Forebearing la';

  @override
  String get asmaMeaning33 => 'Mayifik la';

  @override
  String get asmaMeaning34 => 'Gwo Padon an';

  @override
  String get asmaMeaning35 => 'Rekonpansè Remèsiman an';

  @override
  String get asmaMeaning36 => 'Pi wo a';

  @override
  String get asmaMeaning37 => 'Pi gran an';

  @override
  String get asmaMeaning38 => 'The Preserver';

  @override
  String get asmaMeaning39 => 'Nourisè a';

  @override
  String get asmaMeaning40 => 'Rekonè a';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'The Generous';

  @override
  String get asmaMeaning43 => 'Veye a';

  @override
  String get asmaMeaning44 => 'Repons lapriyè a';

  @override
  String get asmaMeaning45 => 'The All Comprehending';

  @override
  String get asmaMeaning46 => 'The Perfectly Wise';

  @override
  String get asmaMeaning47 => 'Moun ki renmen an';

  @override
  String get asmaMeaning48 => 'Moun ki pi glwa';

  @override
  String get asmaMeaning49 => 'Rezirèksyon an';

  @override
  String get asmaMeaning50 => 'Temwen an';

  @override
  String get asmaMeaning51 => 'Verite a';

  @override
  String get asmaMeaning52 => 'Tout-Suffisan Trustee a';

  @override
  String get asmaMeaning53 => 'Posede tout fòs';

  @override
  String get asmaMeaning54 => 'The Forceful';

  @override
  String get asmaMeaning55 => 'Protektè a';

  @override
  String get asmaMeaning56 => 'Lwanj lan';

  @override
  String get asmaMeaning57 => 'Evalyatè a';

  @override
  String get asmaMeaning58 => 'Korijinè a';

  @override
  String get asmaMeaning59 => 'Restauratè a';

  @override
  String get asmaMeaning60 => 'Ki bay lavi a';

  @override
  String get asmaMeaning61 => 'Taker of Life';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'Sustainer oto-subsiste';

  @override
  String get asmaMeaning64 => 'Chèche a';

  @override
  String get asmaMeaning65 => 'Glorye a';

  @override
  String get asmaMeaning66 => 'Sèl la';

  @override
  String get asmaMeaning67 => 'Youn nan';

  @override
  String get asmaMeaning68 => 'Sa tout moun t\'ap chache a';

  @override
  String get asmaMeaning69 => 'Pwisan yo';

  @override
  String get asmaMeaning70 => 'Kreyatè tout pouvwa a';

  @override
  String get asmaMeaning71 => 'Expediter la';

  @override
  String get asmaMeaning72 => 'Reta a';

  @override
  String get asmaMeaning73 => 'Premye a';

  @override
  String get asmaMeaning74 => 'Dènye a';

  @override
  String get asmaMeaning75 => 'Manifè a';

  @override
  String get asmaMeaning76 => 'The Hidden';

  @override
  String get asmaMeaning77 => 'Gouvènè a';

  @override
  String get asmaMeaning78 => 'Siprèm nan';

  @override
  String get asmaMeaning79 => 'Afè bon an';

  @override
  String get asmaMeaning80 => 'Gid pou Repantans';

  @override
  String get asmaMeaning81 => 'Vanjè a';

  @override
  String get asmaMeaning82 => 'The Forgiver';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'Mèt la / Souvren tout moun';

  @override
  String get asmaMeaning85 => 'Posedetè Monwa ak Bounty';

  @override
  String get asmaMeaning86 => 'The Equitable One';

  @override
  String get asmaMeaning87 => 'Rasanbleman an';

  @override
  String get asmaMeaning88 => 'Rich la';

  @override
  String get asmaMeaning89 => 'Anrichisè a';

  @override
  String get asmaMeaning90 => 'Preventer Mal';

  @override
  String get asmaMeaning91 => 'Pote Mal';

  @override
  String get asmaMeaning92 => 'Banfè Benefis yo';

  @override
  String get asmaMeaning93 => 'Limyè a';

  @override
  String get asmaMeaning94 => 'Gidyan an';

  @override
  String get asmaMeaning95 => 'Korijinè a';

  @override
  String get asmaMeaning96 => 'Eternel la';

  @override
  String get asmaMeaning97 => 'Eritye a';

  @override
  String get asmaMeaning98 => 'Gid ki pi jis';

  @override
  String get asmaMeaning99 => 'Pasyan Youn nan';
}
