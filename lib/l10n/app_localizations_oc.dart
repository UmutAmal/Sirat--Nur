// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Occitan (`oc`).
class AppLocalizationsOc extends AppLocalizations {
  AppLocalizationsOc([String locale = 'oc']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Camin islamic de la lutz';

  @override
  String get home => 'Ostal';

  @override
  String get quran => 'Coran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Calendièr';

  @override
  String get settings => 'Paramètres';

  @override
  String get nextPrayer => 'Pregària seguenta';

  @override
  String get prayerTimes => 'Temps de pregària';

  @override
  String get continueReading => 'Contunhar la lectura';

  @override
  String get getLifetimePro => 'Obtenètz Lifetime Pro';

  @override
  String get unlockTajweed => 'Unlock Tajweed & Advanced Features';

  @override
  String get prayerCalculation => 'Prayer Calculation';

  @override
  String get method => 'Calculation Method';

  @override
  String get madhab => 'Asr Juristic Method';

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
    return 'Time for $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'It is time to pray $prayerName.';
  }

  @override
  String get dataStorage => 'Donadas e emmagazinatge';

  @override
  String get clearCache => 'Escafar l\'escobilhièr';

  @override
  String get cacheClearedSuccess => 'Cache escafat amb succès';

  @override
  String get location => 'Endrech';

  @override
  String get language => 'Lenga';

  @override
  String get selectLanguage => 'Seleccionar Lenga';

  @override
  String get searchLanguage => 'Cercar mai de 180 lengas...';

  @override
  String get systemDefault => 'Per defaut del sistèma';

  @override
  String get currentLocation => 'Emplaçament actual (GPS)';

  @override
  String get locationServiceDisabled =>
      'Lo servici de localizacion es desactivat.';

  @override
  String get locationPermissionDenied =>
      'L\'autorizacion de l\'emplaçament refusada.';

  @override
  String get locationDetectionFailed =>
      'Impossible de detectar vòstre emplaçament. Causissètz una vila manualament o ensajatz tornarmai.';

  @override
  String citiesCount(String count) {
    return '$count vilas';
  }

  @override
  String get search => 'Cercar';

  @override
  String get searchHint => 'Cercar...';

  @override
  String get noResults => 'Cap de resultat trobat';

  @override
  String get loading => 'En cargament...';

  @override
  String get error => 'Error';

  @override
  String get appErrorOccurred => 'Una error s\'es producha';

  @override
  String get appUnknownError => 'Error desconeguda';

  @override
  String get quranLoadFailed =>
      'Lo contengut de l\'Alcoran a pas pogut èsser cargat. Ensajatz tornarmai.';

  @override
  String get retry => 'Tornatz ensajar';

  @override
  String get refreshAction => 'Actualizar';

  @override
  String get cancel => 'Anullar';

  @override
  String get save => 'Salvar';

  @override
  String get delete => 'Escafar';

  @override
  String get edit => 'Modificar';

  @override
  String get close => 'Barrar';

  @override
  String get ok => 'ÒC BEN';

  @override
  String get yes => 'Òc';

  @override
  String get no => 'Non';

  @override
  String get surah => 'Surah';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Page';

  @override
  String get reading => 'Lectura';

  @override
  String get recitation => 'Recitation';

  @override
  String get translation => 'Translation';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'En cargament de tafsir...';

  @override
  String get tafsirSourceLabel => 'Tafsir source';

  @override
  String get tafsirNoSurahFound => 'Cap de tafsir trobat per aquesta sura.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Cap de tafsir pas trobat per ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir a pas pogut èsser cargat.';

  @override
  String get tafsirNoTextForAyah => 'Pas de tèxte tafsir per aqueste ayah.';

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
    return 'La font Tafsir a retornat una error HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'La font tafsir seleccionada a renviat pas cap d\'entrada.';

  @override
  String get tafsirCacheUnavailable =>
      'Lo tafsir verificat es pas encara disponible fòra linha. Sincronizatz un ensemble de donadas tafsir font abans de navigar.';

  @override
  String get bookmarks => 'Los marcapaginas';

  @override
  String get addBookmark => 'Add Bookmark';

  @override
  String get removeBookmark => 'Remove Bookmark';

  @override
  String get lastRead => 'Darrièra lectura';

  @override
  String get dailyZikr => 'Zikr quotidian';

  @override
  String get duaMeaning1 =>
      'others pray, ‘Our Lord, give us good in this world and in the Hereafter, and protect us from the torment of the Fire.’';

  @override
  String get duaMeaning2 =>
      'God does not burden any soul with more than it can bear: each gains whatever good it has done, and suffers whatever bad it has done. ‘Lord, do not take us to task if we forget or make mistakes. Lord, do not burden us as You burdened those before us. Lord, do not burden us with more than we have strength to bear. Pardon us, forgive us, and have mercy on us. You are our Protector, so help us against the disbelievers.’';

  @override
  String get duaMeaning3 =>
      '‘Our Lord, do not let our hearts deviate after You have guided us. Grant us Your mercy: You are the Ever Giving.';

  @override
  String get duaMeaning4 =>
      'Lord, grant that I and my offspring may keep up the prayer. Our Lord, accept my request.';

  @override
  String get duaMeaning5 =>
      'and lower your wing in humility towards them in kindness and say, ‘Lord, have mercy on them, just as they cared for me when I was little.’';

  @override
  String get duaMeaning6 =>
      'exalted be God, the one who is truly in control. [Prophet], do not rush to recite before the revelation is fully complete but say, ‘Lord, increase me in knowledge!’';

  @override
  String get duaMeaning7 =>
      'Say [Prophet], ‘Lord, forgive and have mercy: You are the most merciful of all.’';

  @override
  String get duaMeaning8 =>
      'those who pray, ‘Our Lord, give us joy in our spouses and offspring. Make us good examples to those who are aware of You’.';

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
  String get hadithCollection => 'Hadith Collection';

  @override
  String get hadithBooks => 'Hadith Books';

  @override
  String get searchHadith => 'Search Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Names of Allah';

  @override
  String get liveTv => 'Television en dirècte';

  @override
  String get watchLive => 'Watch Live';

  @override
  String get streamError => 'Error de flux';

  @override
  String get reload => 'Recargar';

  @override
  String get openInYoutube => 'Dobrir sus YouTube';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Fasting';

  @override
  String get quranReading => 'Quran Reading';

  @override
  String get playSurahAudio => 'Reproduire l\'àudio de la sura';

  @override
  String get pauseSurahAudio => 'Pausa de l\'àudio de la sura';

  @override
  String get revelationMeccan => 'Mecana';

  @override
  String get revelationMedinan => 'Medinan';

  @override
  String get prayers => 'Prayers';

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
  String get weeklyProgress => 'Weekly Progress';

  @override
  String get monthlyProgress => 'Progrès mensual';

  @override
  String get statistics => 'Estatisticas';

  @override
  String get hijriCalendar => 'Hijri Calendar';

  @override
  String get gregorianCalendar => 'Calendièr Gregorian';

  @override
  String get today => 'Today';

  @override
  String get tomorrow => 'Deman';

  @override
  String get yesterday => 'Ièr';

  @override
  String get specialDays => 'Special Days';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Islamic New Year';

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
  String get qiblaDirection => 'Qibla Direction';

  @override
  String get compass => 'Compass';

  @override
  String get degrees => 'grases';

  @override
  String get north => 'Nòrd';

  @override
  String get qiblaFound => 'Qibla found!';

  @override
  String get turnDevice => 'Turn your device to face the Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Compass error: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Compass sensor is unavailable on this device.';

  @override
  String get qiblaLocationRequiredTitle => 'Emplaçament requerit per Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Definissètz vòstre emplaçament real abans d\'utilizar la bossòla Qibla per que la direccion pòsca èsser calculada amb precision.';

  @override
  String get adhanNotificationChannelName => 'Notificacions d\'Adhan';

  @override
  String get adhanNotificationChannelDescription =>
      'Alèrtas de temps de pregària amb son d\'adhan.';

  @override
  String get notifications => 'Notificacions';

  @override
  String get prayerNotifications => 'Notificacions de pregària';

  @override
  String get enableNotifications => 'Activar las notificacions';

  @override
  String get notificationTime => 'Temps de notificacion';

  @override
  String get beforePrayer => 'minutas abans la pregària';

  @override
  String get theme => 'Theme';

  @override
  String get lightMode => 'Light Mode';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get systemTheme => 'Tèma del sistèma';

  @override
  String get about => 'About';

  @override
  String get version => 'Version';

  @override
  String get privacyPolicy => 'Politica de confidencialitat';

  @override
  String get termsOfService => 'Terms of Service';

  @override
  String get contactUs => 'Contact Us';

  @override
  String get rateApp => 'Valoratz aquesta aplicacion';

  @override
  String get shareApp => 'Partejatz aquesta aplicacion';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Agachatz $appName: L\'aplicacion d\'estil de vida islamic definitiva! $url';
  }

  @override
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Download Complete';

  @override
  String get downloadFailed => 'Download Failed';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'No Internet Connection';

  @override
  String get checkConnection => 'Verificatz vòstra connexion';

  @override
  String get premium => 'Prima';

  @override
  String get upgradeToPro => 'Mesa a jorn a Pro';

  @override
  String get proFeatures => 'Caracteristicas professionalas';

  @override
  String get removeAds => 'Suprimir los anoncis';

  @override
  String get unlockAll => 'Desblocar tot lo contengut';

  @override
  String get exclusiveContent => 'Contengut exclusiu';

  @override
  String get welcome => 'Benvengut';

  @override
  String get getStarted => 'Get Started';

  @override
  String get skip => 'Sautar';

  @override
  String get next => 'Next';

  @override
  String get done => 'Done';

  @override
  String get onboarding1Title => 'Welcome to Sirat-ı Nur';

  @override
  String get onboarding1Desc =>
      'Your complete Islamic companion app for prayer times, Quran, and more';

  @override
  String get onboarding2Title => 'Prayer Times';

  @override
  String get onboarding2Desc =>
      'Oras de pregària precises en foncion de vòstre emplaçament';

  @override
  String get onboarding3Title => 'Quran & More';

  @override
  String get onboarding3Desc =>
      'Read Quran, track your reading, and explore Islamic content';

  @override
  String get dhikrLibrary => 'Bibliotèca Dhikr';

  @override
  String get resetCounter => 'Reset Counter';

  @override
  String get changeTarget => 'Cambiar la tòca';

  @override
  String get newTarget => 'Novèla cibla';

  @override
  String targetCount(Object target) {
    return 'Target: $target';
  }

  @override
  String get tapToCount => 'Tap to count';

  @override
  String get zikrCompletedMashAllah => 'Completed! MashAllah';

  @override
  String get zikrMeaningSubhanAllah => 'Allah is far above every imperfection.';

  @override
  String get zikrMeaningAlhamdulillah => 'All praise belongs to Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah is the Greatest.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'There is no god but Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'I seek Allah\'s forgiveness.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'There is no power and no strength except through Allah.';

  @override
  String get dailyChecklist => 'Lista de verificacion quotidiana';

  @override
  String get qazaDebt => 'Qaza (Deute)';

  @override
  String get resetQazaData => 'Reïnicializar las donadas de Qaza';

  @override
  String get resetQazaDebtQuestion => 'Reïnicializar lo deute de Qaza?';

  @override
  String get rawatib => 'Rawatib';

  @override
  String get tahajjud => 'Tahajjud';

  @override
  String get dailyProgress => 'Daily Progress';

  @override
  String get mandatoryPrayers => 'Pregàrias obligatòrias';

  @override
  String get sunnahAndOthers => 'Sunnah & Autres';

  @override
  String get spiritualGrowth => 'Creissença esperitala';

  @override
  String get mandatoryDuty => 'Dever obligatòri';

  @override
  String get totalPrayers => 'Total de pregàrias';

  @override
  String get prayerDebt => 'Deute de pregària';

  @override
  String get fastingDebt => 'Deute de june';

  @override
  String get reset => 'Reïnicializar';

  @override
  String get days => 'Jorns';

  @override
  String get premiumIntegrity => 'Integritat Premium';

  @override
  String get recheckPremium => 'Recheck Premium Status';

  @override
  String get syncStore => 'Sync with the store to confirm your entitlement.';

  @override
  String get checkingPremium => 'Verificacion de l\'estat premium...';

  @override
  String get premiumVerified => 'Premium verified.';

  @override
  String get premiumNotFound => 'Premium not found.';

  @override
  String premiumRefreshError(Object error) {
    return 'Could not refresh premium status: $error';
  }

  @override
  String get offlineDownloadManager =>
      'Gestionari de telecargaments fòra linha';

  @override
  String get manageDatasets =>
      'Gerir de paquets d\'àudio e de donadas massís fòra linha.';

  @override
  String get freeStorage => 'Liberar l\'emmagazinatge intèrne del periferic.';

  @override
  String get quranIntegrity => 'Integritat del Coran';

  @override
  String get checkQuranDb => 'Verificatz la basa de donadas de l\'Alcoran';

  @override
  String get verifyQuranContent => 'Verificar 114 souras e 6236 ayas.';

  @override
  String get checkingQuranDb => 'Checking Quran database...';

  @override
  String get okLabel => 'ÒC BEN';

  @override
  String get incomplete => 'Incomplet';

  @override
  String get notSeeded => 'Pas semenat';

  @override
  String get quranDbStatus => 'Quran Database Status';

  @override
  String statusLabel(Object status) {
    return 'Status: $status';
  }

  @override
  String surahsCount(Object count) {
    return 'Souras: $count (114 esperat)';
  }

  @override
  String ayahsCount(Object count) {
    return 'Ayahs: $count (6236 esperat)';
  }

  @override
  String missingArabic(Object count) {
    return 'Arabe mancant: $count';
  }

  @override
  String missingTurkish(Object count) {
    return 'Turc mancant: $count';
  }

  @override
  String dbVersion(Object version) {
    return 'Version DB: $version';
  }

  @override
  String dbPath(Object path) {
    return 'Camin: $path';
  }

  @override
  String quranCheckFailed(Object error) {
    return 'Quran check failed: $error';
  }

  @override
  String get audioVoice => 'Votz àudio';

  @override
  String get audioVoiceMisharyAlafasy => 'Male (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Male (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Male (Sudais)';

  @override
  String get fajrAngle => 'Angle de Fajr';

  @override
  String get ishaAngle => 'Angle Isha';

  @override
  String get qiblaCalibration => 'Qibla Calibration';

  @override
  String get compassSmoothing => 'Alisament de la brújula';

  @override
  String get reduceSensorJitter =>
      'Reduire lo tremolament del captor per una agulha mai establa.';

  @override
  String get calibrationOffset => 'Decalatge de calibratge';

  @override
  String currentOffset(Object offset) {
    return 'Actual: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Ajustatz se vòstra bossòla a besonh d\'una correccion manuala. Las valors positivas viran dins lo sens orari.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup =>
      'Tornatz executar lo procès de configuracion inicial.';

  @override
  String get diagnostics => 'Diagnostics';

  @override
  String get diagnosticsNotSet => 'Not set';

  @override
  String get diagnosticsPrayerProfile => 'Perfil de pregària';

  @override
  String get diagnosticsPrayerSource => 'Autoritat de pregària';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Personalizat / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Angles personalizats manuals (pas de font institucionala)';

  @override
  String diagnosticsPrayerHybridSource(String sourceName, String madhab) {
    return 'metòde $sourceName amb lo paramètre $madhab Asr seleccionat per l\'utilizaire';
  }

  @override
  String diagnosticsPrayerRegionalFallbackSource(String sourceName) {
    return 'Resultat regional en utilizant $sourceName. Confirmatz los oraris de pregària locals amb vòstra mosquèa o autoritat religiosa oficiala.';
  }

  @override
  String get diagnosticsCloudDriven => 'Cloud Driven';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Quran Audio Assets';

  @override
  String get diagnosticsAudioAssets => 'Audio Assets';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count files';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifest read failed: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Localization Locales';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count supported';
  }

  @override
  String get diagnosticsQuranDataset => 'Quran Dataset';

  @override
  String get diagnosticsQuranSurahs => 'Quran Surahs';

  @override
  String get diagnosticsQuranAyahs => 'Quran Ayahs';

  @override
  String get diagnosticsQuranJuzMetadata => 'Quran Juz Metadata';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Cloud tables missing in Supabase; bundled fallback active';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz metadata missing; bundled structural fallback active';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Cloud structural check failed: $error';
  }

  @override
  String get healthCheckDesc =>
      'Executatz de contraròtles de santat e visualizatz l\'estat del sistèma.';

  @override
  String get qiblaAligned => 'Qibla alinhat';

  @override
  String get rotateToFindQibla => 'Virar per trobar lo Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Calibration required. Rotate device in figure-8.';

  @override
  String get dailyVerse => 'Daily Verse';

  @override
  String get dailyVerseUnavailableTitle => 'Daily verse unavailable';

  @override
  String get dailyVerseUnavailableBody =>
      'Verified daily verse content is not configured for this build yet. Connect to the cloud source or sync a verified cache before browsing.';

  @override
  String get todaysIbadah => 'Today\'s Ibadah';

  @override
  String get quickAccess => 'Quick Access';

  @override
  String get assistant => 'Assistant';

  @override
  String get places => 'Places';

  @override
  String get library => 'Library';

  @override
  String get analytics => 'Analisi';

  @override
  String get dailyDuas => 'Daily Duas';

  @override
  String essentialDuas(String count) {
    return '$count essential duas';
  }

  @override
  String get duaUnavailableTitle => 'Verified duas are not available yet';

  @override
  String get duaUnavailableBody =>
      'Verified daily duas have not been synced to this device yet. Connect to the cloud source to load sourced duas instead of an unverified fallback.';

  @override
  String get duaCategoryQuranic => 'Quranic dua';

  @override
  String get duaCategoryMorningEvening => 'Morning & Evening';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Protection';

  @override
  String get duaCategoryBeginning => 'Beginnings';

  @override
  String get duaCategorySleep => 'Sleep';

  @override
  String get duaCategoryFoodDrink => 'Food & Drink';

  @override
  String get duaCategoryForgiveness => 'Forgiveness';

  @override
  String get duaCategoryHome => 'Home';

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
  String get islamicEducation => 'Educacion islamica';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Hadith Collections';

  @override
  String get hadithSourcePending => 'Verified source pending';

  @override
  String get hadithUnavailableTitle =>
      'Las colleccions de hadiths verificadas son pas encara disponiblas';

  @override
  String get hadithUnavailableBody =>
      'Aquesta construccion depend encara d\'un flux de hadith extèrne non verificat. La navigacion per Hadith demòra desactivada fins qu\'un ensemble de donadas font siá sincronizat.';

  @override
  String get paywallUnlockAll =>
      'Unlock all features for your spiritual journey';

  @override
  String get premiumProductUnavailable =>
      'Premium product is not available right now. Please try again later.';

  @override
  String get premiumPurchaseFailed =>
      'La crompa a pas pogut èsser completada. Ensajatz tornarmai.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'Unlimited AI-powered Q&A';

  @override
  String get paywallFeature2Title => 'Unlimited Offline';

  @override
  String get paywallFeature2Desc => 'Download all recitations';

  @override
  String get paywallFeature3Title => 'Exclusive Designs';

  @override
  String get paywallFeature3Desc => 'Premium themes & fonts';

  @override
  String get paywallFeature4Title => 'Ad-Free';

  @override
  String get paywallFeature4Desc => 'Zero advertisements';

  @override
  String get paywallGetAccess => 'Get Lifetime Access — \$1.00';

  @override
  String get restorePurchases => 'Restore Purchases';

  @override
  String get zakatCalculator => 'Zakat Calculator';

  @override
  String get zakatGold => 'Gold (Altın)';

  @override
  String get zakatSilver => 'Silver (Gümüş)';

  @override
  String get zakatCashBank => 'Cash / Bank';

  @override
  String get zakatBusiness => 'Business';

  @override
  String get zakatInvestments => 'Investments';

  @override
  String get zakatWeightGrams => 'Weight (g)';

  @override
  String get zakatPricePerGram => 'Price/g';

  @override
  String get zakatTotalAmount => 'Total Amount';

  @override
  String get zakatInventoryValue => 'Inventory Value';

  @override
  String get zakatDebts => 'Debts';

  @override
  String get zakatTotal => 'Total';

  @override
  String get calculateZakat => 'Calculate Zakat';

  @override
  String get nisabNotReached => 'Nisab not reached. Zakat is not obligatory.';

  @override
  String get totalZakat => 'Total Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'Gold Zakat';

  @override
  String get zakatSilverZakat => 'Silver Zakat';

  @override
  String get zakatCashZakat => 'Cash Zakat';

  @override
  String get zakatBusinessZakat => 'Business Zakat';

  @override
  String get zakatInvestmentZakat => 'Investment Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Daily query limit reached. Upgrade to Premium for unlimited.';

  @override
  String get chatbotErrorMsg =>
      'I could not generate a response. Please try again.';

  @override
  String get chatbotOfflinePrompt =>
      'La basa de coneissença islamica fòra linha verificada es encara en cors de comissariat. Podètz activar lo retorn fòra linha ara, mas aficharà pas que de messatges segurs limitats fins que l\'ensemble de donadas font es prèst.\n\nVolètz activar lo retorn fòra linha ?';

  @override
  String get chatbotOfflineSwitched =>
      'Retrodiment fòra linha activat. Las responsas islamicas localas verificadas son pas encara prèstas.';

  @override
  String get chatbotOfflineDownloadLabel => 'Activar lo retorn fòra linha';

  @override
  String get downloadPreparing => 'En preparacion de telecargament...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Descargament de surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Todas las surahs ya telecargadas para este recitador.';

  @override
  String get offlineQuranAudioPacks =>
      'Paquets d\'àudio de l\'Alcoran fòra linha';

  @override
  String storedOnDeviceMb(String size) {
    return 'Stored on device: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total souras telecargadas';
  }

  @override
  String get redownloadMissingRepair => 'Reparacion / Telecargament Manca';

  @override
  String get downloadAction => 'Descargar';

  @override
  String get resumeDownload => 'Contunhar lo telecargament';

  @override
  String get deleteDownloadedFiles => 'Suprimir los fichièrs telecargats';

  @override
  String get cancelDownloadAction => 'Anullar lo telecargament';

  @override
  String get downloadCancelling => 'En anullant...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Telecargament anullat per $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Telecargament completat per $reciter.';
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
    return 'Deleted offline files for $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Verified Quran audio sources are unavailable right now.';

  @override
  String get quranAudioPlaybackErrorWithConnectionHint =>
      'La lectura de l\'àudio a fracassat. Verificatz vòstra connexion.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Verified Quran audio pack is incomplete ($available/$total). Try again after the audio catalog is updated.';
  }

  @override
  String get chatbotHint => 'Ask a question...';

  @override
  String get chatbotThinking => 'Thinking...';

  @override
  String get sukunMixerSubtitle => 'Mesclador de natura e d\'alcoran';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (Natura)';

  @override
  String get sukunRainOfMercy => 'Pluèja de Misericòrdia';

  @override
  String get sukunGardenOfPeace => 'Jardin de la Paz';

  @override
  String get sukunMidnightCalm => 'Calma de mièjanuèch';

  @override
  String get sukunOceanTawheed => 'Tawhed de l\'ocean';

  @override
  String get sukunUnavailableTitle => 'Los païsatges sonòrs indisponibles';

  @override
  String get sukunUnavailableBody =>
      'Aquesta version inclutz pas encara los actius de païsatge sonòr Sukun requerits.';

  @override
  String get prayerCompletion => 'Finalizacion de la pregària';

  @override
  String get streaks => 'Raias';

  @override
  String get dayStreak => 'Rasca de jorn';

  @override
  String get bestStreak => 'Best streak';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Offline Fallback';

  @override
  String get chatbotUseCloudAi => 'Utilizar l\'IA del nívol (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Enable Offline Fallback';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'L\'API Cloud es pas configurada. L\'orientacion islamica verificada fòra linha es pas encara disponibla.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] L\'orientacion islamica locala verificada es pas encara disponibla. Passatz a Cloud AI per de responsas provesidas.';

  @override
  String get mosques => 'Mosques';

  @override
  String get halalFood => 'Halal Food';

  @override
  String get placesSearchArea => 'Cercatz aquesta zòna';

  @override
  String get nearbyMosques => 'Mosquèas pròchas';

  @override
  String get islamicSchools => 'Islamic Schools';

  @override
  String placesFoundCount(String count) {
    return '$count trobat';
  }

  @override
  String distanceAwayKm(String distance) {
    return 'a $distance km';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Error API: $statusCode';
  }

  @override
  String get placesNetworkError => 'Error de ret. Ensajatz tornarmai.';

  @override
  String get placesLocationRequiredTitle => 'Emplaçament requerit';

  @override
  String get placesLocationRequiredBody =>
      'Definissètz d\'en primièr un emplaçament per que las mosquèas, la noiridura halal e las escòlas islamicas pròchas pòscan èsser cercadas amb precision.';

  @override
  String get placesMapTilesUnavailableTitle =>
      'Los mosaïcs de mapa son pas disponibles';

  @override
  String get placesMapTilesUnavailableBody =>
      'Una font de mosaïc de mapa verificada es pas encara configurada per aquesta version. Los luòcs pròches pòdon encara se cargar dempuèi vòstre emplaçament enregistrat.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'Plaça las donadas indisponiblas';

  @override
  String get placesDataSourceUnavailableBody =>
      'Un ponch final de donadas de luòcs verificat es pas encara configurat per aquesta version. Definissètz PLACES_OVERPASS_API_URL a un mandatari o provesidor aprovat abans d\'activar la recèrca pròcha.';

  @override
  String get unknownPlaceName => 'Unknown Name';

  @override
  String get islamicPlaceFallback => 'Islamic Place';

  @override
  String get asmaMeaning1 => 'The Beneficent';

  @override
  String get asmaMeaning2 => 'The Merciful';

  @override
  String get asmaMeaning3 => 'The King / Eternal Lord';

  @override
  String get asmaMeaning4 => 'The Most Holy';

  @override
  String get asmaMeaning5 => 'The Source of Peace';

  @override
  String get asmaMeaning6 => 'The Giver of Security';

  @override
  String get asmaMeaning7 =>
      'The Watchful Guardian, who observes and safeguards all creation.';

  @override
  String get asmaMeaning8 => 'The Precious / The Most Mighty';

  @override
  String get asmaMeaning9 =>
      'The Restorer and Irresistible, whose will prevails with perfect power.';

  @override
  String get asmaMeaning10 => 'The Greatest';

  @override
  String get asmaMeaning11 => 'The Creator';

  @override
  String get asmaMeaning12 => 'The Maker of Order';

  @override
  String get asmaMeaning13 => 'The Shaper of Beauty';

  @override
  String get asmaMeaning14 => 'The Forgiving';

  @override
  String get asmaMeaning15 => 'The Subduer';

  @override
  String get asmaMeaning16 => 'The Giver of All';

  @override
  String get asmaMeaning17 => 'The Sustainer';

  @override
  String get asmaMeaning18 => 'The Opener';

  @override
  String get asmaMeaning19 => 'The Knower of All';

  @override
  String get asmaMeaning20 =>
      'The Withholder, who narrows and restrains by wisdom.';

  @override
  String get asmaMeaning21 =>
      'The Expander, who opens, eases, and grants abundance by wisdom.';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'The Bestower of Honour';

  @override
  String get asmaMeaning25 => 'The Humiliator';

  @override
  String get asmaMeaning26 => 'The Hearer of All';

  @override
  String get asmaMeaning27 => 'The Seer of All';

  @override
  String get asmaMeaning28 => 'The Judge';

  @override
  String get asmaMeaning29 => 'The Just';

  @override
  String get asmaMeaning30 => 'The Subtle One';

  @override
  String get asmaMeaning31 => 'The All Aware';

  @override
  String get asmaMeaning32 => 'The Forebearing';

  @override
  String get asmaMeaning33 => 'The Magnificent';

  @override
  String get asmaMeaning34 => 'The Great Forgiver';

  @override
  String get asmaMeaning35 => 'The Rewarder of Thankfulness';

  @override
  String get asmaMeaning36 => 'The Highest';

  @override
  String get asmaMeaning37 => 'The Greatest';

  @override
  String get asmaMeaning38 => 'The Preserver';

  @override
  String get asmaMeaning39 => 'The Nourisher';

  @override
  String get asmaMeaning40 => 'The Reckoner';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'The Generous';

  @override
  String get asmaMeaning43 => 'The Watchful One';

  @override
  String get asmaMeaning44 => 'The Responder to Prayer';

  @override
  String get asmaMeaning45 => 'The All Comprehending';

  @override
  String get asmaMeaning46 => 'The Perfectly Wise';

  @override
  String get asmaMeaning47 => 'The Loving One';

  @override
  String get asmaMeaning48 => 'The Most Glorious One';

  @override
  String get asmaMeaning49 => 'The Resurrector';

  @override
  String get asmaMeaning50 => 'The Witness';

  @override
  String get asmaMeaning51 => 'The Truth';

  @override
  String get asmaMeaning52 => 'The All-Sufficient Trustee';

  @override
  String get asmaMeaning53 => 'The Possessor of All Strength';

  @override
  String get asmaMeaning54 => 'The Forceful';

  @override
  String get asmaMeaning55 => 'The Protector';

  @override
  String get asmaMeaning56 => 'The Praised';

  @override
  String get asmaMeaning57 => 'The Appraiser';

  @override
  String get asmaMeaning58 => 'The Originator';

  @override
  String get asmaMeaning59 => 'The Restorer';

  @override
  String get asmaMeaning60 => 'The Giver of Life';

  @override
  String get asmaMeaning61 => 'The Taker of Life';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'The Self-Subsisting Sustainer';

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
  String get asmaMeaning70 => 'The Creator of all power';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'The Delayer';

  @override
  String get asmaMeaning73 => 'The First';

  @override
  String get asmaMeaning74 => 'The Last';

  @override
  String get asmaMeaning75 => 'The Manifest';

  @override
  String get asmaMeaning76 => 'The Hidden';

  @override
  String get asmaMeaning77 =>
      'The Protecting Patron, who governs and cares for all creation.';

  @override
  String get asmaMeaning78 => 'The Supreme One';

  @override
  String get asmaMeaning79 => 'The Doer of Good';

  @override
  String get asmaMeaning80 => 'The Guide to Repentance';

  @override
  String get asmaMeaning81 => 'The Avenger';

  @override
  String get asmaMeaning82 => 'The Forgiver';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'The Owner / Sovereign of All';

  @override
  String get asmaMeaning85 => 'The Possessor of Majesty and Bounty';

  @override
  String get asmaMeaning86 => 'The Equitable One';

  @override
  String get asmaMeaning87 => 'The Gatherer';

  @override
  String get asmaMeaning88 => 'The Rich One';

  @override
  String get asmaMeaning89 => 'The Enricher';

  @override
  String get asmaMeaning90 => 'The Preventer of Harm';

  @override
  String get asmaMeaning91 => 'The Bringer of Harm';

  @override
  String get asmaMeaning92 => 'The Bestower of Benefits';

  @override
  String get asmaMeaning93 => 'The Light';

  @override
  String get asmaMeaning94 => 'The Guider';

  @override
  String get asmaMeaning95 => 'The Originator';

  @override
  String get asmaMeaning96 => 'The Everlasting One';

  @override
  String get asmaMeaning97 => 'The Inheritor';

  @override
  String get asmaMeaning98 => 'The Most Righteous Guide';

  @override
  String get asmaMeaning99 =>
      'The Patient, who does not hasten punishment and acts with perfect forbearance.';
}
