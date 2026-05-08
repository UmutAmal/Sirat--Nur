// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lingala (`ln`).
class AppLocalizationsLn extends AppLocalizations {
  AppLocalizationsLn([String locale = 'ln']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Nzela ya Pole ya Islam';

  @override
  String get home => 'Ndako';

  @override
  String get quran => 'Coran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Calendrier ya makambo';

  @override
  String get settings => 'Ba paramètres';

  @override
  String get nextPrayer => 'Libondeli oyo elandi';

  @override
  String get prayerTimes => 'Ntango ya mabondeli';

  @override
  String get continueReading => 'Koba Kotanga';

  @override
  String get getLifetimePro => 'Bozua Pro ya Bomoi mobimba';

  @override
  String get unlockTajweed => 'Unlock Tajweed & Advanced Features';

  @override
  String get prayerCalculation => 'Calcul ya losambo';

  @override
  String get method => 'Lolenge ya kosala calcul';

  @override
  String get madhab => 'Asr Méthode ya Juristique';

  @override
  String get surahs => 'Ba surahs';

  @override
  String get ayahs => 'Ba ayahs';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Kobima ya moi';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Maghrib, oyo ezali';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Tango ya $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Ezali tango ya kosambela $prayerName.';
  }

  @override
  String get dataStorage => 'Ba Données & Bobombi';

  @override
  String get clearCache => 'Bolongola Cache';

  @override
  String get cacheClearedSuccess => 'Cache elongolamaki malamu';

  @override
  String get location => 'Esika';

  @override
  String get language => 'Lokota';

  @override
  String get selectLanguage => 'Poná Monoko';

  @override
  String get searchLanguage => 'Boluka minoko 180+...';

  @override
  String get systemDefault => 'Système na ndenge ya liboso';

  @override
  String get currentLocation => 'Esika ya lelo (GPS) .';

  @override
  String get locationServiceDisabled => 'Service ya esika ezali désactivé.';

  @override
  String get locationPermissionDenied => 'Ndingisa ya esika eboyamaki.';

  @override
  String get locationDetectionFailed =>
      'Ekokaki te ko détecter esika ozali. Svp pona engumba moko na maboko to meka lisusu.';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => 'Koluka';

  @override
  String get searchHint => 'Koluka...';

  @override
  String get noResults => 'Ba résultats ezwami te';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get appErrorOccurred => 'Libunga moko esalemaki';

  @override
  String get appUnknownError => 'Libunga eyebani te';

  @override
  String get quranLoadFailed =>
      'Contenu ya Coran ekokaki kozala chargé te. Svp meka lisusu.';

  @override
  String get retry => 'Meká lisusu';

  @override
  String get refreshAction => 'Refresh';

  @override
  String get cancel => 'Kolongola';

  @override
  String get save => 'Kobikisa';

  @override
  String get delete => 'Delete';

  @override
  String get edit => 'Kokoma';

  @override
  String get close => 'Kokanga';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Iyo';

  @override
  String get no => 'Te';

  @override
  String get surah => 'Surah';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Lokasa';

  @override
  String get reading => 'Kotanga';

  @override
  String get recitation => 'Recitation';

  @override
  String get translation => 'Bobongoli';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Ezali ko charger tafsir...';

  @override
  String get tafsirSourceLabel => 'Liziba ya Tafsir';

  @override
  String get tafsirNoSurahFound => 'Tafsir moko te ezwami mpo na surah oyo.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Tafsir moko te ezwami mpo na ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir ekokaki kozala na chargement te.';

  @override
  String get tafsirNoTextForAyah => 'Texte ya tafsir te pona ayah oyo.';

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
    return 'Liziba ya Tafsir ezongisaki libunga ya HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Source ya tafsir oyo eponami ezongisaki ba entrées te.';

  @override
  String get tafsirCacheUnavailable =>
      'Verifié tafsir ezali nanu te hors ligne. Sync ensemble ya ba données ya tafsir sourced avant ya ko naviguer.';

  @override
  String get bookmarks => 'Ba marque-pages';

  @override
  String get addBookmark => 'Bakisa Marque-page';

  @override
  String get removeBookmark => 'Longola Marque-pages';

  @override
  String get lastRead => 'Botangi ya nsuka';

  @override
  String get dailyZikr => 'Mokolo na mokolo Zikr';

  @override
  String get duaMeaning1 =>
      'basusu basambelaka, ‘Nkolo na biso, pesa biso bolamu na mokili mpe na sima, mpe batela biso na minyoko ya Mɔtɔ.’';

  @override
  String get duaMeaning2 =>
      'Nzambe azali kopesa molimo moko te kilo koleka oyo ekoki komema: moto na moto azali kozwa bolamu nyonso oyo asali, mpe azali konyokwama mabe na yango- ‘ Nkolo, kozwa biso na mokumba te soki tobosani to tosali mabunga. Nkolo, kopesa biso kilo te ndenge opesaki ba oyo bazalaki liboso na biso. Nkolo, kopesa biso kilo te koleka oyo tozali na makasi ya komema. Limbisa biso, limbisa biso, mpe yokela biso mawa. Ozali Mobateli na biso, yango wana salisá biso na bato oyo bazangi kondima.’';

  @override
  String get duaMeaning3 =>
      '‘Nkolo na biso, kotika te mitema na biso epengwisa sima na Yo kotambwisa biso. Pesa biso ngolu na Yo: Ozali Mopesi Toujours.';

  @override
  String get duaMeaning4 =>
      'Nkolo, pesa ngai ná bana na ngai tókoba losambo. Nkolo na biso, ndima bosenga na ngai.';

  @override
  String get duaMeaning5 =>
      'mpe kitisá lipapu na yo na komikitisa epai na bango na boboto mpe lobá ete, ‘Nkolo, yokela bango mawa, kaka ndenge bazalaki kobatela ngai ntango nazalaki moke.’';

  @override
  String get duaMeaning6 =>
      'atombwama Nzambe, ye oyo azali mpenza na bokonzi. [Mosakoli], kokende mbangumbangu te mpo na kotánga liboso ete emoniseli esila mpenza kasi loba ete, ‘Nkolo, bakisá ngai boyebi!’';

  @override
  String get duaMeaning7 =>
      'Loba [Mosakoli], ‘Nkolo, limbisa mpe yoka mawa: Ozali na mawa koleka nyonso.’';

  @override
  String get duaMeaning8 =>
      'baoyo bazali kobondela, ‘Nkolo na biso, pesá biso esengo kati na balongani mpe bana na biso. Sala biso bandakisa malamu na baye bayebi Yo’.';

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
  String get hadith => 'Hadith (Hadith) oyo';

  @override
  String get hadithCollection => 'Liboke ya ba Hadith';

  @override
  String get hadithBooks => 'Mikanda ya Hadith';

  @override
  String get searchHadith => 'Boluka Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna azali moto ya mayele';

  @override
  String get namesOfAllah => 'Ba kombo ya Allah';

  @override
  String get liveTv => 'TV en direct';

  @override
  String get watchLive => 'Botala En direct';

  @override
  String get streamError => 'Libunga ya koleka';

  @override
  String get reload => 'Recharger lisusu';

  @override
  String get openInYoutube => 'Fungola na YouTube';

  @override
  String get ibadahTracker => 'Molandi ya Ibadah';

  @override
  String get fasting => 'Kokila bilei';

  @override
  String get quranReading => 'Botangi ya Coran';

  @override
  String get playSurahAudio => 'Beta audio ya surah';

  @override
  String get pauseSurahAudio => 'Pause na audio ya surah';

  @override
  String get revelationMeccan => 'Bato ya Mecque';

  @override
  String get revelationMedinan => 'Medinani';

  @override
  String get prayers => 'Mabondeli';

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
  String get weeklyProgress => 'Bokóli ya Pɔsɔ na Pɔsɔ';

  @override
  String get monthlyProgress => 'Bokoli ya sanza na sanza';

  @override
  String get statistics => 'Statistiques ya ba statistiques';

  @override
  String get hijriCalendar => 'Manáka ya Hijri';

  @override
  String get gregorianCalendar => 'Manáka ya Grégoire';

  @override
  String get today => 'Lelo';

  @override
  String get tomorrow => 'Lobi';

  @override
  String get yesterday => 'Lobi eleki';

  @override
  String get specialDays => 'Mikolo ya sipesiale';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Mobu ya sika ya Islam';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi, oyo azali';

  @override
  String get specialDayDateRamadanStart => '1 Mokolo ya Ramadan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Mokolo ya Ramadan';

  @override
  String get specialDayDateEidAlFitr => '1 Moto oyo azali Shawwal';

  @override
  String get specialDayDateEidAlAdha => '10 Zul Hijjah';

  @override
  String get specialDayDateIslamicNewYear => '1 Moharram, Mokonzi ya mboka';

  @override
  String get specialDayDateMawlidAnNabi =>
      '12 Rabi al-Awwal azali moto ya mayele';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'Qibla Direction ya kosala';

  @override
  String get compass => 'Boussole ya kosala';

  @override
  String get degrees => 'degrés ya kozwa ba degrés';

  @override
  String get north => 'Norde';

  @override
  String get qiblaFound => 'Qibla ezwami!';

  @override
  String get turnDevice => 'Bambolá aparɛyi na yo mpo etala Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Compass error: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Capteur ya boussole ezali te na appareil oyo.';

  @override
  String get qiblaLocationRequiredTitle => 'Esika esengeli mpo na Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Botia esika na yo ya solo liboso ya kosalela boussole Qibla mpo ete nzela ekoka ko calculer na bosikisiki.';

  @override
  String get adhanNotificationChannelName => 'Mayebisi ya Adhan';

  @override
  String get adhanNotificationChannelDescription =>
      'Tango ya losambo ekebisi na mongongo ya adhan.';

  @override
  String get notifications => 'Mayebisi';

  @override
  String get prayerNotifications => 'Mayebisi ya Libondeli';

  @override
  String get enableNotifications => 'Activer ba Notifications';

  @override
  String get notificationTime => 'Ntango ya Koyebisa';

  @override
  String get beforePrayer => 'miniti moke liboso ya libondeli';

  @override
  String get theme => 'Moto ya likambo';

  @override
  String get lightMode => 'Mode ya Pole';

  @override
  String get darkMode => 'Mode ya Molili';

  @override
  String get systemTheme => 'Thème ya Système';

  @override
  String get about => 'Pene';

  @override
  String get version => 'Ya';

  @override
  String get privacyPolicy => 'Politiki ya kobatela makambo ya moto ye moko';

  @override
  String get termsOfService => 'Mibeko ya Mosala';

  @override
  String get contactUs => 'Bokutana na Biso';

  @override
  String get rateApp => 'Bopesa cote na app oyo';

  @override
  String get shareApp => 'Bokabola app oyo';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Tala $appName: Application ya suka ya mode de vie islamique! $url Ezali na .';
  }

  @override
  String get downloadManager => 'Gestionnaire ya téléchargement';

  @override
  String get downloads => 'Ba téléchargements';

  @override
  String get downloading => 'Kozwa téléchargement...';

  @override
  String get downloadComplete => 'Télécharger Complète';

  @override
  String get downloadFailed => 'Téléchargement Elongi te';

  @override
  String get offlineMode => 'Mode Hors Connexion';

  @override
  String get noInternet => 'No Internet Connection';

  @override
  String get checkConnection => 'Svp tala connexion na yo';

  @override
  String get premium => 'Prime';

  @override
  String get upgradeToPro => 'Bosala mise à niveau na Pro';

  @override
  String get proFeatures => 'Makambo ya Pro';

  @override
  String get removeAds => 'Longola ba Piblisite';

  @override
  String get unlockAll => 'Débloquer Contenu Nionso';

  @override
  String get exclusiveContent =>
      'Makambo oyo ezali na kati ya makambo kaka moko';

  @override
  String get welcome => 'Boyei malamu';

  @override
  String get getStarted => 'Kobanda';

  @override
  String get skip => 'Kokipe te';

  @override
  String get next => 'Oyo elandi';

  @override
  String get done => 'Esalemi';

  @override
  String get onboarding1Title => 'Boyei malamu na Sirat-ı Nur';

  @override
  String get onboarding1Desc =>
      'Application na yo mobimba ya moninga islamique mpo na tango ya losambo, Coran, mpe mingi mosusu';

  @override
  String get onboarding2Title => 'Ntango ya mabondeli';

  @override
  String get onboarding2Desc =>
      'Bantango ya mabondeli ya sikisiki na kotalela esika ozali';

  @override
  String get onboarding3Title => 'Coran & Makambo mosusu';

  @override
  String get onboarding3Desc =>
      'Tanga Coran, landa botangi na yo, pe tala makambo ya Islam';

  @override
  String get dhikrLibrary => 'Bibliotɛkɛ ya Dhikr';

  @override
  String get resetCounter => 'Reset Compteur ya kosala';

  @override
  String get changeTarget => 'Bobongola Cible';

  @override
  String get newTarget => 'Cible ya Sika';

  @override
  String targetCount(Object target) {
    return 'Target: $target';
  }

  @override
  String get tapToCount => 'Finá mpo na kotánga';

  @override
  String get zikrCompletedMashAllah => 'Esili! MashAllah azali moto ya mayele';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah azali mosika likolo ya bozangi kokoka nyonso.';

  @override
  String get zikrMeaningAlhamdulillah => 'Masanzoli nionso ezali ya Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah azali Monene.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Nzambe moko te azali kaka Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Nazali koluka bolimbisi ya Allah.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Nguya pe makasi ezali te longola se na nzela ya Allah.';

  @override
  String get dailyChecklist => 'Liste ya vérification ya mokolo na mokolo';

  @override
  String get qazaDebt => 'Qaza (Nyongo) .';

  @override
  String get resetQazaData => 'Réinitialiser ba Données ya Qaza';

  @override
  String get resetQazaDebtQuestion => 'Réinitialiser Nyongo ya Qaza?';

  @override
  String get rawatib => 'Rawatib';

  @override
  String get tahajjud => 'Tahajjud';

  @override
  String get dailyProgress => 'Bokoli ya mokolo na mokolo';

  @override
  String get mandatoryPrayers => 'Mabondeli oyo esɛngami';

  @override
  String get sunnahAndOthers => 'Sunnah & Basusu';

  @override
  String get spiritualGrowth => 'Bokoli ya Molimo';

  @override
  String get mandatoryDuty => 'Mosala ya Obligatoire';

  @override
  String get totalPrayers => 'Mabondeli ya mobimba';

  @override
  String get prayerDebt => 'Nyongo ya losambo';

  @override
  String get fastingDebt => 'Nyongo ya kokila bilei';

  @override
  String get reset => 'Réinitialiser lisusu';

  @override
  String get days => 'Mikolo';

  @override
  String get premiumIntegrity => 'Intégrité ya Premium';

  @override
  String get recheckPremium => 'Tala lisusu ezalela ya abonnément ya premium';

  @override
  String get syncStore =>
      'Sync na app store pona ko confirmer abonnément premium na yo.';

  @override
  String get checkingPremium => 'Ko vérifier état ya premium...';

  @override
  String get premiumVerified => 'Abonnement premium e vérifié.';

  @override
  String get premiumNotFound => 'Abonnement premium ezwami te.';

  @override
  String premiumRefreshError(Object error) {
    return 'Ekoki te kozongisa sika ezalela ya abonnément premium: $error';
  }

  @override
  String get offlineDownloadManager =>
      'Gestionnaire ya téléchargement hors ligne';

  @override
  String get manageDatasets =>
      'Gérer ba paquets audio & ensembles de données massifs hors ligne.';

  @override
  String get freeStorage =>
      'Kopesa bonsomi ya kobomba biloko ya kati ya aparɛyi.';

  @override
  String get quranIntegrity => 'Bosembo ya Coran';

  @override
  String get checkQuranDb => 'Tala Base ya ba données ya Coran';

  @override
  String get verifyQuranContent => 'Verifier 114 surahs na 6236 ayahs.';

  @override
  String get checkingQuranDb => 'Kotala base de données ya Coran...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Ezali ya kokoka te';

  @override
  String get notSeeded => 'Ezali na mboto te';

  @override
  String get quranDbStatus => 'Ezalela ya Base ya Ba données ya Coran';

  @override
  String statusLabel(Object status) {
    return 'Status: $status';
  }

  @override
  String surahsCount(Object count) {
    return 'Ba surahs: $count (ezelamaki 114)';
  }

  @override
  String ayahsCount(Object count) {
    return 'Ayahs: $count (ezelamaki 6236)';
  }

  @override
  String missingArabic(Object count) {
    return 'Arabe oyo ezangi: $count';
  }

  @override
  String missingTurkish(Object count) {
    return 'Turc oyo ezangi: $count';
  }

  @override
  String dbVersion(Object version) {
    return 'Version ya DB: $version';
  }

  @override
  String dbPath(Object path) {
    return 'Nzela: $path .';
  }

  @override
  String quranCheckFailed(Object error) {
    return 'Quran check failed: $error';
  }

  @override
  String get audioVoice => 'Mongongo ya Audio';

  @override
  String get audioVoiceMisharyAlafasy => 'Male (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Male (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Male (Sudais)';

  @override
  String get fajrAngle => 'Angle ya Fajr';

  @override
  String get ishaAngle => 'Angle ya Isha';

  @override
  String get qiblaCalibration => 'Calibration ya Qibla';

  @override
  String get compassSmoothing => 'Boussole ya kosala lisse';

  @override
  String get reduceSensorJitter =>
      'Kitisa jitter ya capteur mpo na aiguilles ya stable.';

  @override
  String get calibrationOffset => 'Offset ya calibration';

  @override
  String currentOffset(Object offset) {
    return 'Ya lelo: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Bongisá soki boussole na yo esengeli kobongisama na mabɔkɔ. Ba valeurs positifs ebalukaka na sens ya montre.';

  @override
  String get apply => 'Salelá mbongwana oyo esalemi';

  @override
  String get resetOnboarding => 'Réinitialiser configuration ya intro';

  @override
  String get rerunSetup =>
      'Bosala lisusu processus ya configuration ya liboso.';

  @override
  String get diagnostics => 'Ba diagnostics ya ba diagnostics';

  @override
  String get diagnosticsNotSet => 'Etiamaki te';

  @override
  String get diagnosticsPrayerProfile => 'Profil ya losambo';

  @override
  String get diagnosticsPrayerSource => 'Bokonzi ya losambo';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Momeseno / $madhab .';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Ba angles personnalisés manuels (source institutionnelle te) .';

  @override
  String diagnosticsPrayerHybridSource(String sourceName, String madhab) {
    return '$sourceName méthode na paramètre ya Asr oyo mosaleli aponaki $madhab';
  }

  @override
  String diagnosticsPrayerRegionalFallbackSource(String sourceName) {
    return 'Fallback ya région na kosalelaka $sourceName. Confirmer ba heures ya losambo ya esika na yo na mosquée na yo to na autorité religieuse officielle.';
  }

  @override
  String get diagnosticsCloudDriven => 'Lipata Etambwisami';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Biloko ya koyoka';

  @override
  String get diagnosticsUiAudioAssets => 'Biloko ya Audio ya UI';

  @override
  String get diagnosticsQuranAudioAssets => 'Biloko ya Audio ya Coran';

  @override
  String get diagnosticsAudioAssets => 'Biloko ya koyoka';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count ba fichiers';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifest read failed: $error';
  }

  @override
  String get diagnosticsLocalizationLocales =>
      'Ba Localisation ya Localisation';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count esungami';
  }

  @override
  String get diagnosticsQuranDataset => 'Ensemble ya ba données ya Coran';

  @override
  String get diagnosticsQuranSurahs => 'Ba Surahs ya Coran';

  @override
  String get diagnosticsQuranAyahs => 'Ba Ayahs ya Coran';

  @override
  String get diagnosticsQuranJuzMetadata => 'Ba Métadonnées ya Coran Juz';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Ba tableaux ya mapata ezangi na Supabase; bundled fallback ezali kosala';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Vérification ya cloud elongi te: $error .';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Ba métadonnées ya clou juz ezangi; bundled structurel fallback ezali kosala';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Vérification structurelle ya lipata elongi te: $error .';
  }

  @override
  String get healthCheckDesc =>
      'Salá ba vérifications ya santé mpe tala état ya système.';

  @override
  String get qiblaAligned => 'Qibla Ezali na boyokani';

  @override
  String get rotateToFindQibla => 'Bobalusa mpo na koluka Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Esengeli kosala calibration. Bambolá esaleli oyo ezali na elilingi-8.';

  @override
  String get dailyVerse => 'Vɛrsɛ ya mokolo na mokolo';

  @override
  String get dailyVerseUnavailableTitle => 'Vɛrsɛ ya mokolo na mokolo ezali te';

  @override
  String get dailyVerseUnavailableBody =>
      'Contenu ya verset ya mokolo na mokolo oyo e vérifié e configuré nanu te pona kotonga oyo. Bo sangana na source ya cloud to bo synchroniser cache vérifié avant ya ko naviguer.';

  @override
  String get todaysIbadah => 'Ibadah ya lelo';

  @override
  String get quickAccess => 'Kokɔta Noki';

  @override
  String get assistant => 'Molandi';

  @override
  String get places => 'Bisika';

  @override
  String get library => 'Biblioteke';

  @override
  String get analytics => 'Analytique ya kosala makambo';

  @override
  String get dailyDuas => 'Duas ya mokolo na mokolo';

  @override
  String essentialDuas(String count) {
    return '$count essential duas';
  }

  @override
  String get duaUnavailableTitle => 'Ba duas vérifiés ezali nanu te';

  @override
  String get duaUnavailableBody =>
      'Ba duas ya mokolo na mokolo oyo e vérifié e synchronisé nanu na dispositif oyo te. Connecter na source ya cloud pona ko charger ba duas sourced au lieu ya fallback oyo e vérifié te.';

  @override
  String get duaCategoryQuranic => 'Dua ya Coran';

  @override
  String get duaCategoryMorningEvening => 'Tongo & Pokwa';

  @override
  String get duaCategoryTasbih => 'Tasbih, oyo azali';

  @override
  String get duaCategoryProtection => 'Bobateli';

  @override
  String get duaCategoryBeginning => 'Ebandeli';

  @override
  String get duaCategorySleep => 'Mpongi';

  @override
  String get duaCategoryFoodDrink => 'Bilei & Masanga';

  @override
  String get duaCategoryForgiveness => 'Bolimbisi';

  @override
  String get duaCategoryHome => 'Ndako';

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
  String get islamicEducation => 'Boyekoli ya Islam';

  @override
  String get sukunAudioTitle => 'Sukun Ba paysages sonores';

  @override
  String get hadithCollections => 'Ba Collections ya Hadith';

  @override
  String get hadithSourcePending => 'Source vérifiée ezali kozela';

  @override
  String get hadithUnavailableTitle =>
      'Ba collections ya hadith vérifié ezali nanu te';

  @override
  String get hadithUnavailableBody =>
      'Kotonga oyo etali kaka alimentation ya hadith ya libanda oyo e vérifié te. Navigation ya Hadith etikalaka désactivé kino ensemble ya ba données sourced ekozala synchronisée.';

  @override
  String get paywallUnlockAll =>
      'Fungola makambo nyonso mpo na mobembo na yo ya molimo';

  @override
  String get premiumProductUnavailable =>
      'Produit premium ezali te sikoyo. Svp meka lisusu sima.';

  @override
  String get premiumPurchaseFailed =>
      'Kosomba ekokaki kosila te. Svp meka lisusu.';

  @override
  String get paywallFeature1Title => 'Assistant neuronaux Plus';

  @override
  String get paywallFeature1Desc => 'Q&A oyo esalemi na AI oyo ezangi ndelo';

  @override
  String get paywallFeature2Title => 'Ezali na ndelo te Offline';

  @override
  String get paywallFeature2Desc => 'Télécharger ba récitations nionso';

  @override
  String get paywallFeature3Title => 'Ba Designs ya Exclusifs';

  @override
  String get paywallFeature3Desc => 'Ba thèmes & ba fonts ya premium';

  @override
  String get paywallFeature4Title => 'Ad-Free na ba publicités';

  @override
  String get paywallFeature4Desc => 'Ba piblisite ya zéro';

  @override
  String get paywallGetAccess => 'Bozwa Bomoi mobimba ya Bokoti — \$1.00';

  @override
  String get restorePurchases => 'Zongisa Biloko oyo Basombaki';

  @override
  String get zakatCalculator => 'Calculateur ya Zakat';

  @override
  String get zakatGold => 'Wolo (Altın) .';

  @override
  String get zakatSilver => 'Palata (Gümüş) .';

  @override
  String get zakatCashBank => 'Mbongo ya mbongo / Banque';

  @override
  String get zakatBusiness => 'Mosala';

  @override
  String get zakatInvestments => 'Ba investissements';

  @override
  String get zakatWeightGrams => 'Kilo (g) .';

  @override
  String get zakatPricePerGram => 'Ntalo/g';

  @override
  String get zakatTotalAmount => 'Mosolo mobimba';

  @override
  String get zakatInventoryValue => 'Valeur ya Inventaire';

  @override
  String get zakatDebts => 'Banyongo';

  @override
  String get zakatTotal => 'Mobimba';

  @override
  String get calculateZakat => 'Bosala calcul ya Zakat';

  @override
  String get nisabNotReached =>
      'Nisab akómaki na lobɔkɔ te. Zaka ezali obligatoire te.';

  @override
  String get totalZakat => 'Zaka mobimba';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zaka ya wolo';

  @override
  String get zakatSilverZakat => 'Zaka ya palata';

  @override
  String get zakatCashZakat => 'Zaka ya mbongo';

  @override
  String get zakatBusinessZakat => 'Zaka ya mombongo';

  @override
  String get zakatInvestmentZakat => 'Zaka ya botiami mosolo';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Limite ya mituna ya mokolo na mokolo ekokisami. Bomatisa na Premium mpo na oyo ezangi ndelo.';

  @override
  String get chatbotErrorMsg => 'Nakokaki te kobimisa eyano. Svp meka lisusu.';

  @override
  String get chatbotOfflinePrompt =>
      'Base ya boyebi ya Islam oyo e vérifié hors ligne ezali kaka ko curer. Okoki ko activer fallback hors ligne sikoyo, kasi ekolakisa kaka ba messages ya sécurité limitée tii tango ensemble ya ba données sourced ekozala prêt.\n\nOlingi ko activer fallback hors ligne?';

  @override
  String get chatbotOfflineSwitched =>
      'Fallback hors ligne efungolami. Ba réponses islamiques locales vérifiées ezali nanu prêt te.';

  @override
  String get chatbotOfflineDownloadLabel => 'Activer Fallback hors ligne';

  @override
  String get downloadPreparing => 'Kobongisa téléchargement...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Téléchargement sura $surah / $total .';
  }

  @override
  String get downloadCompleted =>
      'Ba surah nionso esi e téléchargé pona réciter oyo.';

  @override
  String get offlineQuranAudioPacks => 'Offline Coran Audio Packs';

  @override
  String storedOnDeviceMb(String size) {
    return 'Ebombami na dispositif: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total ba surahs oyo ezwami';
  }

  @override
  String get redownloadMissingRepair => 'Réparation / Téléchargement Ezali te';

  @override
  String get downloadAction => 'Kozwa';

  @override
  String get resumeDownload => 'Koba ko télécharger';

  @override
  String get deleteDownloadedFiles => 'Bolongola ba fichiers oyo o télécharger';

  @override
  String get cancelDownloadAction => 'Annuler téléchargement';

  @override
  String get downloadCancelling => 'Kolongolama...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Téléchargement elongolami mpo na $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Téléchargement esili mpo na $reciter.';
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
    return 'Elongolami ba fichiers hors ligne pona $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Verified Quran audio sources are unavailable right now.';

  @override
  String get quranAudioPlaybackErrorWithConnectionHint =>
      'Kobɛta mongongo elongaki te. Svp tala connexion na yo.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Verified Quran audio pack is incomplete ($available/$total). Try again after the audio catalog is updated.';
  }

  @override
  String get chatbotHint => 'Ask a question...';

  @override
  String get chatbotThinking => 'Thinking...';

  @override
  String get sukunMixerSubtitle => 'Nature & Mosangani ya Coran';

  @override
  String get audioPlayFailed => 'Kobɛta mongongo elongaki te';

  @override
  String get sukunNatureLabel => 'Sukun (Bozalisi) .';

  @override
  String get sukunRainOfMercy => 'Mbula ya Mawa';

  @override
  String get sukunGardenOfPeace => 'Elanga ya Kimya';

  @override
  String get sukunMidnightCalm => 'Miti ya butu Kimya';

  @override
  String get sukunOceanTawheed => 'Tawheed ya Océan';

  @override
  String get sukunUnavailableTitle => 'Ba paysages sonores ezali te';

  @override
  String get sukunUnavailableBody =>
      'Build oyo ezali naino te na ba biens ya surface soundscape ya Sukun oyo esengeli.';

  @override
  String get prayerCompletion => 'Kosilisa libondeli';

  @override
  String get streaks => 'Ba streaks ya ba streaks';

  @override
  String get dayStreak => 'Mokolo ya molongo';

  @override
  String get bestStreak => 'Meilleur streak';

  @override
  String get chatbotCloudAiLabel => 'AI ya lipata';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback ya sima';

  @override
  String get chatbotUseCloudAi => 'Salelá AI ya Lipata (Gemini) .';

  @override
  String get chatbotDownloadLocalAi => 'Activer Fallback hors ligne';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'API ya cloud ezali configuré te. Verifié hors ligne guidance islamique ezali nanu te.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Bokambami ya Islam ya mboka oyo e vérifié ezali nanu te. Bobongola na Cloud AI mpo na biyano oyo euti na source.';

  @override
  String get mosques => 'Ba Mosquées';

  @override
  String get halalFood => 'Bilei ya Halal';

  @override
  String get placesSearchArea => 'Luká esika oyo';

  @override
  String get nearbyMosques => 'Ba Mosquées oyo ezali pene wana';

  @override
  String get islamicSchools => 'Biteyelo ya Islam';

  @override
  String placesFoundCount(String count) {
    return '$count ezwami';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km mosika';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Libunga ya API: $statusCode';
  }

  @override
  String get placesNetworkError => 'Libunga ya réseau. Svp meka lisusu.';

  @override
  String get placesLocationRequiredTitle => 'Esika esengeli kozala';

  @override
  String get placesLocationRequiredBody =>
      'Botia esika liboso po ba mosquées ya pembeni, biloko ya kolia ya halal, na ba écoles islamiques ekoki kolukama na bosikisiki.';

  @override
  String get placesMapTilesUnavailableTitle => 'Carreaux ya carte ezali te';

  @override
  String get placesMapTilesUnavailableBody =>
      'Source ya carreaux ya carte oyo e vérifié e configuré nanu te pona botongi oyo. Bisika ya penepene ekoki kaka ko charger uta na esika oyo obombi.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'Ezali kotya ba données oyo ezali te';

  @override
  String get placesDataSourceUnavailableBody =>
      'Point d\'arrêt ya ba données ya places vérifié e configuré nanu te pona construction oyo. Botia PLACES_OVERPASS_API_URL na proxy to mopesi oyo endimami yambo ya kofungola boluki ya penepene.';

  @override
  String get unknownPlaceName => 'Kombo eyebani te';

  @override
  String get islamicPlaceFallback => 'Esika ya Islam';

  @override
  String get asmaMeaning1 => 'Moto oyo azali na litomba';

  @override
  String get asmaMeaning2 => 'Moto ya mawa';

  @override
  String get asmaMeaning3 => 'Mokonzi / Nkolo ya seko';

  @override
  String get asmaMeaning4 => 'Eleki Mosantu';

  @override
  String get asmaMeaning5 => 'Liziba ya Kimya';

  @override
  String get asmaMeaning6 => 'Mopesi ya Bobateli';

  @override
  String get asmaMeaning7 => 'Mobateli ya mobateli';

  @override
  String get asmaMeaning8 => 'Ba Taux / Ba Puissance koleka';

  @override
  String get asmaMeaning9 => 'Mosali ya makasi';

  @override
  String get asmaMeaning10 => 'Monene';

  @override
  String get asmaMeaning11 => 'Mozalisi';

  @override
  String get asmaMeaning12 => 'Mosali ya Ordre';

  @override
  String get asmaMeaning13 => 'Mobongisi ya Kitoko';

  @override
  String get asmaMeaning14 => 'Ba bolimbisi';

  @override
  String get asmaMeaning15 => 'Moto oyo azali kokitanya';

  @override
  String get asmaMeaning16 => 'Mopesi ya Nyonso';

  @override
  String get asmaMeaning17 => 'Moto oyo azali kobatela';

  @override
  String get asmaMeaning18 => 'Mofungoli';

  @override
  String get asmaMeaning19 => 'Moyebi ya Nyonso';

  @override
  String get asmaMeaning20 => 'Mopekisami';

  @override
  String get asmaMeaning21 => 'Mosungi';

  @override
  String get asmaMeaning22 => 'Bato ya Abaser';

  @override
  String get asmaMeaning23 => 'Motomboli';

  @override
  String get asmaMeaning24 => 'Mopesi ya lokumu';

  @override
  String get asmaMeaning25 => 'Moto ya kokitisa';

  @override
  String get asmaMeaning26 => 'Moyoki ya Nyonso';

  @override
  String get asmaMeaning27 => 'Momoni ya Nyonso';

  @override
  String get asmaMeaning28 => 'Mosambisi';

  @override
  String get asmaMeaning29 => 'Ba Sembo';

  @override
  String get asmaMeaning30 => 'Oyo ya Subtil';

  @override
  String get asmaMeaning31 => 'Bato nionso bayebi';

  @override
  String get asmaMeaning32 => 'Ba kobota';

  @override
  String get asmaMeaning33 => 'Ba Magnifiques';

  @override
  String get asmaMeaning34 => 'Molimbisi Monene';

  @override
  String get asmaMeaning35 => 'Mopesi mbano ya botondi';

  @override
  String get asmaMeaning36 => 'Oyo ya likolo koleka';

  @override
  String get asmaMeaning37 => 'Monene';

  @override
  String get asmaMeaning38 => 'Mobateli ya biloko';

  @override
  String get asmaMeaning39 => 'Mopesi bilei';

  @override
  String get asmaMeaning40 => 'Mosali ya mosolo';

  @override
  String get asmaMeaning41 => 'Ba Majestique';

  @override
  String get asmaMeaning42 => 'Bato ya motema malamu';

  @override
  String get asmaMeaning43 => 'Moto oyo azali kokengela';

  @override
  String get asmaMeaning44 => 'Moyano na losambo';

  @override
  String get asmaMeaning45 => 'Ba Kososola Nyonso';

  @override
  String get asmaMeaning46 => 'Ba mayele ya kokoka';

  @override
  String get asmaMeaning47 => 'Moto ya Bolingo';

  @override
  String get asmaMeaning48 => 'Moto ya Nkembo koleka';

  @override
  String get asmaMeaning49 => 'Mosekwi ya bato';

  @override
  String get asmaMeaning50 => 'Motatoli';

  @override
  String get asmaMeaning51 => 'Bosolo';

  @override
  String get asmaMeaning52 => 'Mobateli ya makambo nyonso oyo ekoki';

  @override
  String get asmaMeaning53 => 'Mozwi ya Bokasi Nyonso';

  @override
  String get asmaMeaning54 => 'Bato ya makasi';

  @override
  String get asmaMeaning55 => 'Mobateli oyo';

  @override
  String get asmaMeaning56 => 'Ba Kumisami';

  @override
  String get asmaMeaning57 => 'Motangi ya motuya';

  @override
  String get asmaMeaning58 => 'Mobandisi';

  @override
  String get asmaMeaning59 => 'Mozongisaka';

  @override
  String get asmaMeaning60 => 'Mopesi ya Bomoi';

  @override
  String get asmaMeaning61 => 'Mozwi ya bomoi';

  @override
  String get asmaMeaning62 => 'Ba oyo bazali na bomoi ya seko';

  @override
  String get asmaMeaning63 => 'Moto oyo azali ko se soutenir yango moko';

  @override
  String get asmaMeaning64 => 'Moluki';

  @override
  String get asmaMeaning65 => 'Bato ya Nkembo';

  @override
  String get asmaMeaning66 => 'Mozali Se moko';

  @override
  String get asmaMeaning67 => 'Moto oyo';

  @override
  String get asmaMeaning68 => 'Moto Oyo Nyonso Balukaka';

  @override
  String get asmaMeaning69 => 'Bato ya nguya';

  @override
  String get asmaMeaning70 => 'Mozalisi ya nguya nionso';

  @override
  String get asmaMeaning71 => 'Mosali ya mbangu';

  @override
  String get asmaMeaning72 => 'Motangi ya retard';

  @override
  String get asmaMeaning73 => 'Oyo ya liboso';

  @override
  String get asmaMeaning74 => 'Oyo ya suka';

  @override
  String get asmaMeaning75 => 'Ba Manifeste';

  @override
  String get asmaMeaning76 => 'Ba Bombami';

  @override
  String get asmaMeaning77 => 'Mokonzi ya mboka';

  @override
  String get asmaMeaning78 => 'Moto ya likolo';

  @override
  String get asmaMeaning79 => 'Mosali ya Malamu';

  @override
  String get asmaMeaning80 => 'Motambwisi ya boyamboli';

  @override
  String get asmaMeaning81 => 'Mozongisi mabe';

  @override
  String get asmaMeaning82 => 'Molimbisi';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'Nkolo / Mokonzi ya Nyonso';

  @override
  String get asmaMeaning85 => 'Mozwi ya Majesty na Bounty';

  @override
  String get asmaMeaning86 => 'Oyo ya Equitable';

  @override
  String get asmaMeaning87 => 'Mosangisi';

  @override
  String get asmaMeaning88 => 'Moto ya Mozwi';

  @override
  String get asmaMeaning89 => 'Moto oyo azali ko enrichir';

  @override
  String get asmaMeaning90 => 'Mopekisi ya Mabe';

  @override
  String get asmaMeaning91 => 'Momemi ya Mabe';

  @override
  String get asmaMeaning92 => 'Mopesi ya Matomba';

  @override
  String get asmaMeaning93 => 'Mwinda';

  @override
  String get asmaMeaning94 => 'Motambwisi';

  @override
  String get asmaMeaning95 => 'Mobandisi';

  @override
  String get asmaMeaning96 => 'Moto ya seko';

  @override
  String get asmaMeaning97 => 'Mosangoli ya libula';

  @override
  String get asmaMeaning98 => 'Motambwisi oyo eleki sembo';

  @override
  String get asmaMeaning99 => 'Mobɛli oyo';
}
