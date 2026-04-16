// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Calea Islamică a Luminii';

  @override
  String get home => 'Acasă';

  @override
  String get quran => 'Coranul';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Calendar';

  @override
  String get settings => 'Setări';

  @override
  String get nextPrayer => 'Următoarea rugăciune';

  @override
  String get prayerTimes => 'Timp de rugăciune';

  @override
  String get continueReading => 'Continue Reading';

  @override
  String get getLifetimePro => 'Get Lifetime Pro';

  @override
  String get unlockTajweed => 'Unlock Tajweed & Advanced Features';

  @override
  String get prayerCalculation => 'Calcul rugăciunii';

  @override
  String get method => 'Metoda de calcul';

  @override
  String get madhab => 'Asr Metoda juridică';

  @override
  String get surahs => 'sure';

  @override
  String get ayahs => 'Ayahs';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Răsărit de soare';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Magribul';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Este timpul pentru $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Este timpul să ne rugăm $prayerName.';
  }

  @override
  String get dataStorage => 'Date și stocare';

  @override
  String get clearCache => 'Goliți memoria cache';

  @override
  String get cacheClearedSuccess => 'Cache-ul a fost golit cu succes';

  @override
  String get location => 'Locație';

  @override
  String get language => 'Limba';

  @override
  String get selectLanguage => 'Selectați Limbă';

  @override
  String get searchLanguage => 'Search 180+ languages...';

  @override
  String get systemDefault => 'Implicit sistem';

  @override
  String get currentLocation => 'Locația curentă (GPS)';

  @override
  String get locationServiceDisabled =>
      'Serviciul de localizare este dezactivat.';

  @override
  String get locationPermissionDenied =>
      'Permisiunea pentru locație a fost refuzată.';

  @override
  String get locationDetectionFailed =>
      'Nu s-a putut detecta locația dvs. Alegeți manual un oraș sau încercați din nou.';

  @override
  String citiesCount(String count) {
    return '$count orașe';
  }

  @override
  String get search => 'Caută';

  @override
  String get searchHint => 'Cauta...';

  @override
  String get noResults => 'Nu s-au găsit rezultate';

  @override
  String get loading => 'Se încarcă...';

  @override
  String get error => 'Eroare';

  @override
  String get appErrorOccurred => 'A apărut o eroare';

  @override
  String get appUnknownError => 'Eroare necunoscută';

  @override
  String get quranLoadFailed =>
      'Conținutul Coranului nu a putut fi încărcat. Vă rugăm să încercați din nou.';

  @override
  String get retry => 'Reîncercați';

  @override
  String get refreshAction => 'Reîmprospătați';

  @override
  String get cancel => 'Anulează';

  @override
  String get save => 'Salvați';

  @override
  String get delete => 'Ștergeți';

  @override
  String get edit => 'Edit';

  @override
  String get close => 'Close';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'Nu';

  @override
  String get surah => 'Sura';

  @override
  String ayahLabel(String ayah) {
    return 'Da $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Pagina';

  @override
  String get reading => 'Reading';

  @override
  String get recitation => 'Recitation';

  @override
  String get translation => 'Translation';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Se încarcă tafsir...';

  @override
  String get tafsirSourceLabel => 'sursa Tafsir';

  @override
  String get tafsirNoSurahFound =>
      'Nu s-a găsit niciun tafsir pentru această sură.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Nu a fost găsit niciun tafsir pentru ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir nu a putut fi încărcat.';

  @override
  String get tafsirNoTextForAyah => 'Fără text tafsir pentru această ayah.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Se descarcă tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Se încarcă tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Sursa Tafsir a returnat o eroare HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Sursa tafsir selectată nu a returnat nicio intrare.';

  @override
  String get tafsirCacheUnavailable =>
      'Tafsir verificat nu este încă disponibil offline. Sincronizați un set de date tafsir din sursă înainte de a naviga.';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get addBookmark => 'Adăugați marcaj';

  @override
  String get removeBookmark => 'Eliminați marcajul';

  @override
  String get lastRead => 'Last Read';

  @override
  String get dailyZikr => 'Daily Zikr';

  @override
  String get duaMeaning1 =>
      'alții se roagă: „Doamne, dă-ne bine în lumea aceasta și în cea de Apoi și ferește-ne de chinul Focului”.';

  @override
  String get duaMeaning2 =>
      'Dumnezeu nu împovărează niciun suflet cu mai mult decât poate suporta: fiecare câștigă orice bine a făcut și suferă răul ei... „Doamne, nu ne lua la sarcină dacă uităm sau greșim. Doamne, nu ne împovăra cum i-ai împovărat pe cei dinaintea noastră. Doamne, nu ne împovăra cu mai mult decât avem putere să suportăm. Iartă-ne, iartă-ne și ai milă de noi. Tu ești Protectorul nostru, așa că ajută-ne împotriva necredincioșilor.”';

  @override
  String get duaMeaning3 =>
      '„Doamne, nu lăsa inimile noastre să se abate după ce Tu ne-ai călăuzit. Dăruiește-ne mila Ta: Tu ești Cel Dăruitor.';

  @override
  String get duaMeaning4 =>
      'Doamne, dă-mi voie ca eu și urmașii mei să ținem rugăciunea. Domnul nostru, acceptă cererea mea.';

  @override
  String get duaMeaning5 =>
      'și coboară-ți aripa cu smerenie față de ei cu bunătate și spune: „Doamne, miluiește-i, așa cum au avut grijă de mine când eram mic”.';

  @override
  String get duaMeaning6 =>
      'înălțat să fie Dumnezeu, cel care este cu adevărat în control. [Profet], nu te grăbi să reciti înainte ca revelația să fie pe deplin completă, ci spune: „Doamne, mărește-mă în cunoștință!”';

  @override
  String get duaMeaning7 =>
      'Spune [Profet]: „Doamne, iartă și ai milă: Tu ești cel mai milostiv dintre toți.”';

  @override
  String get duaMeaning8 =>
      'cei care se roagă: „Doamne, dă-ne bucurie în soții și în urmașii noștri. Fă-ne exemple bune pentru cei care te cunosc”.';

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
  String get hadithCollection => 'Colecția Hadith';

  @override
  String get hadithBooks => 'Cărți Hadith';

  @override
  String get searchHadith => 'Caută Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Numele lui Allah';

  @override
  String get liveTv => 'TV în direct';

  @override
  String get watchLive => 'Urmărește în direct';

  @override
  String get streamError => 'Eroare de flux';

  @override
  String get reload => 'Reîncărcați';

  @override
  String get openInYoutube => 'Deschide pe YouTube';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'post';

  @override
  String get quranReading => 'Citirea Coranului';

  @override
  String get prayers => 'Rugăciuni';

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
  String get weeklyProgress => 'Progresul săptămânal';

  @override
  String get monthlyProgress => 'Monthly Progress';

  @override
  String get statistics => 'Statistics';

  @override
  String get hijriCalendar => 'Calendarul Hijri';

  @override
  String get gregorianCalendar => 'Gregorian Calendar';

  @override
  String get today => 'Astăzi';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get specialDays => 'Zile speciale';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Anul Nou Islamic';

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
  String get qiblaDirection => 'Direcția Qibla';

  @override
  String get compass => 'busola';

  @override
  String get degrees => 'degrees';

  @override
  String get north => 'North';

  @override
  String get qiblaFound => 'Qibla găsit!';

  @override
  String get turnDevice => 'Întoarceți dispozitivul în fața Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Eroare busola: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Senzorul busolă nu este disponibil pe acest dispozitiv.';

  @override
  String get qiblaLocationRequiredTitle => 'Locația necesară pentru Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Setați-vă locația reală înainte de a utiliza busola Qibla, astfel încât direcția să poată fi calculată cu precizie.';

  @override
  String get adhanNotificationChannelName => 'Notificări Adhan';

  @override
  String get adhanNotificationChannelDescription =>
      'Alerte de timp de rugăciune cu sunet adhan.';

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
  String get theme => 'Temă';

  @override
  String get lightMode => 'Modul de lumină';

  @override
  String get darkMode => 'Modul întunecat';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'Despre';

  @override
  String get version => 'Versiune';

  @override
  String get privacyPolicy => 'Politica de confidențialitate';

  @override
  String get termsOfService => 'Termeni și condiții';

  @override
  String get contactUs => 'Contactați-ne';

  @override
  String get rateApp => 'Evaluați aplicația';

  @override
  String get shareApp => 'Partajați aplicația';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Consultați $appName: Aplicația supremă pentru stilul de viață islamic! $url';
  }

  @override
  String get downloadManager => 'Manager de descărcare';

  @override
  String get downloads => 'Descărcări';

  @override
  String get downloading => 'Se descarcă...';

  @override
  String get downloadComplete => 'Descărcare finalizată';

  @override
  String get downloadFailed => 'Descărcarea eșuată';

  @override
  String get offlineMode => 'Modul offline';

  @override
  String get noInternet => 'Fără conexiune la internet';

  @override
  String get checkConnection => 'Vă rugăm să vă verificați conexiunea';

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
  String get getStarted => 'Începeți';

  @override
  String get skip => 'Skip';

  @override
  String get next => 'În continuare';

  @override
  String get done => 'Gata';

  @override
  String get onboarding1Title => 'Bine ați venit la Sirat-ı Nur';

  @override
  String get onboarding1Desc =>
      'Aplicația dvs. completă însoțitoare islamică pentru orele de rugăciune, Coran și multe altele';

  @override
  String get onboarding2Title => 'Timp de rugăciune';

  @override
  String get onboarding2Desc =>
      'Orele precise de rugăciune în funcție de locația dvs';

  @override
  String get onboarding3Title => 'Coran și altele';

  @override
  String get onboarding3Desc =>
      'Citiți Coranul, urmăriți-vă citirea și explorați conținutul islamic';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'Resetează contorul';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'Număr țintă: $target';
  }

  @override
  String get tapToCount => 'Atingeți pentru a număra';

  @override
  String get zikrCompletedMashAllah => 'Finalizat! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah este cu mult deasupra oricărei imperfecțiuni.';

  @override
  String get zikrMeaningAlhamdulillah => 'Toată lauda îi aparține lui Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah este Cel Mai Mare.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Nu există zeu în afară de Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Caut iertarea lui Allah.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Nu există putere și putere decât prin Allah.';

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
  String get dailyProgress => 'Progres zilnic';

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
      'Verificați din nou starea abonamentului premium';

  @override
  String get syncStore =>
      'Sincronizați cu magazinul de aplicații pentru a vă confirma abonamentul premium.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'Abonament premium verificat.';

  @override
  String get premiumNotFound => 'Abonamentul premium nu a fost găsit.';

  @override
  String premiumRefreshError(Object error) {
    return 'Nu s-a putut reîmprospăta starea abonamentului premium: $error';
  }

  @override
  String get offlineDownloadManager => 'Manager de descărcare offline';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Eliberați stocarea internă a dispozitivului.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'Se verifică baza de date a Coranului...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'Starea bazei de date Coran';

  @override
  String statusLabel(Object status) {
    return 'Stare: $status';
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
  String get audioVoice => 'Voce audio';

  @override
  String get audioVoiceMisharyAlafasy => 'Bărbat (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Bărbat (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Masculin (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Calibrare Qibla';

  @override
  String get compassSmoothing => 'Netezirea busolă';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Offset de calibrare';

  @override
  String currentOffset(Object offset) {
    return 'Actual: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Reglați dacă busola necesită o corecție manuală. Valorile pozitive se rotesc în sensul acelor de ceasornic.';

  @override
  String get apply => 'Aplicați modificări';

  @override
  String get resetOnboarding => 'Resetați configurarea intrării';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Diagnosticare';

  @override
  String get diagnosticsNotSet => 'Nu setat';

  @override
  String get diagnosticsPrayerProfile => 'Profil de rugăciune';

  @override
  String get diagnosticsPrayerSource => 'Autoritatea de rugăciune';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Personalizat / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Unghiuri personalizate manual (fără sursă instituțională)';

  @override
  String get diagnosticsCloudDriven => 'Condus pe cloud';

  @override
  String get diagnosticsAdhanAudioAssets => 'Materiale audio Adhan';

  @override
  String get diagnosticsUiAudioAssets => 'Elemente audio UI';

  @override
  String get diagnosticsQuranAudioAssets => 'Materiale audio Coran';

  @override
  String get diagnosticsAudioAssets => 'Active audio';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count fișiere';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Citirea manifestului a eșuat: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Localizare locală';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count acceptat';
  }

  @override
  String get diagnosticsQuranDataset => 'Setul de date Coran';

  @override
  String get diagnosticsQuranSurahs => 'Sure ale Coranului';

  @override
  String get diagnosticsQuranAyahs => 'Coran Ayahs';

  @override
  String get diagnosticsQuranJuzMetadata => 'Metadatele Coranului Juz';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Lipsesc tabele cloud în Supabase; bundled fallback activ';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Verificarea în cloud a eșuat: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Metadatele cloud juz lipsesc; bundled fallback structural activ';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Verificarea structurală în cloud a eșuat: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Este necesară calibrarea. Rotiți dispozitivul din figura-8.';

  @override
  String get dailyVerse => 'Vers zilnic';

  @override
  String get todaysIbadah => 'Ibadah de azi';

  @override
  String get quickAccess => 'Acces rapid';

  @override
  String get assistant => 'Asistent';

  @override
  String get places => 'Locuri';

  @override
  String get library => 'Bibliotecă';

  @override
  String get analytics => 'Analytics';

  @override
  String get dailyDuas => 'Duas zilnic';

  @override
  String essentialDuas(String count) {
    return '$count duas esențiale';
  }

  @override
  String get duaUnavailableTitle =>
      'Duasele verificate nu sunt încă disponibile';

  @override
  String get duaUnavailableBody =>
      'Duaurile zilnice verificate nu au fost încă sincronizate cu acest dispozitiv. Conectați-vă la sursa cloud pentru a încărca duas-ul sursă în loc de o rezervă neverificată.';

  @override
  String get duaCategoryQuranic => 'Dua Coranică';

  @override
  String get duaCategoryMorningEvening => 'Dimineața și seara';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Protecţie';

  @override
  String get duaCategoryBeginning => 'Începuturile';

  @override
  String get duaCategorySleep => 'Dormi';

  @override
  String get duaCategoryFoodDrink => 'Mâncare și băutură';

  @override
  String get duaCategoryForgiveness => 'Iertare';

  @override
  String get duaCategoryHome => 'Acasă';

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
  String get islamicEducation => 'Educația islamică';

  @override
  String get sukunAudioTitle => 'Peisaje sonore Sukun';

  @override
  String get hadithCollections => 'Colecții de hadith';

  @override
  String get hadithSourcePending => 'Sursă verificată în așteptare';

  @override
  String get hadithUnavailableTitle =>
      'Colecțiile verificate de hadith nu sunt încă disponibile';

  @override
  String get hadithUnavailableBody =>
      'Această construcție depinde în continuare de un flux de hadith extern neverificat. Navigarea Hadith rămâne dezactivată până când un set de date sursă este sincronizat.';

  @override
  String get paywallUnlockAll =>
      'Deblocați toate funcțiile pentru călătoria voastră spirituală';

  @override
  String get premiumProductUnavailable =>
      'Produsul premium nu este disponibil momentan. Vă rugăm să încercați din nou mai târziu.';

  @override
  String get premiumPurchaseFailed =>
      'Achiziția nu a putut fi finalizată. Vă rugăm să încercați din nou.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc =>
      'Întrebări și răspunsuri nelimitate bazate pe inteligență artificială';

  @override
  String get paywallFeature2Title => 'Offline nelimitat';

  @override
  String get paywallFeature2Desc => 'Descărcați toate recitațiile';

  @override
  String get paywallFeature3Title => 'Designuri exclusive';

  @override
  String get paywallFeature3Desc => 'Teme și fonturi premium';

  @override
  String get paywallFeature4Title => 'Fără reclame';

  @override
  String get paywallFeature4Desc => 'Zero reclame';

  @override
  String get paywallGetAccess => 'Obțineți acces pe viață - 1,00 USD';

  @override
  String get restorePurchases => 'Restabiliți achizițiile';

  @override
  String get zakatCalculator => 'Calculator zakat';

  @override
  String get zakatGold => 'Aur (Altın)';

  @override
  String get zakatSilver => 'Argint (Gümüş)';

  @override
  String get zakatCashBank => 'Cash / Banca';

  @override
  String get zakatBusiness => 'Afaceri';

  @override
  String get zakatInvestments => 'Investiții';

  @override
  String get zakatWeightGrams => 'Greutate (g)';

  @override
  String get zakatPricePerGram => 'Preț/g';

  @override
  String get zakatTotalAmount => 'Valoare totală';

  @override
  String get zakatInventoryValue => 'Valoarea de inventar';

  @override
  String get zakatDebts => 'Datorii';

  @override
  String get zakatTotal => 'Total';

  @override
  String get calculateZakat => 'Calculați Zakat';

  @override
  String get nisabNotReached => 'Nisab nu a ajuns. Zakat nu este obligatoriu.';

  @override
  String get totalZakat => 'Zakat total';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Active: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakat de aur';

  @override
  String get zakatSilverZakat => 'Zakat de argint';

  @override
  String get zakatCashZakat => 'Cash Zakat';

  @override
  String get zakatBusinessZakat => 'Zakat de afaceri';

  @override
  String get zakatInvestmentZakat => 'Zakat de investiții';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! Sunt asistentul tău islamic. Întrebați-mă despre rugăciune, post, zakat sau orice subiect islamic.';

  @override
  String get chatbotLimitReached =>
      'Limita zilnică de interogări a fost atinsă. Faceți upgrade la Premium pentru nelimitat.';

  @override
  String get chatbotErrorMsg =>
      'Nu am putut genera un răspuns. Vă rugăm să încercați din nou.';

  @override
  String get chatbotOfflinePrompt =>
      'Baza de cunoștințe islamice verificată offline este încă în curs de pregătire. Puteți activa acum back-up offline, dar va afișa doar mesaje sigure limitate până când setul de date sursă este gata.\n\nDoriți să activați alternativa offline?';

  @override
  String get chatbotOfflineSwitched =>
      'Funcția de rezervă offline a fost activată. Răspunsurile islamice locale verificate nu sunt încă gata.';

  @override
  String get chatbotOfflineDownloadLabel =>
      'Activați funcția de rezervă offline';

  @override
  String get downloadPreparing => 'Se pregătește descărcarea...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Se descarcă sura $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Toate surele au fost deja descărcate pentru acest recitator.';

  @override
  String get offlineQuranAudioPacks => 'Pachete audio offline Coran';

  @override
  String storedOnDeviceMb(String size) {
    return 'Stocat pe dispozitiv: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total sure descărcate';
  }

  @override
  String get redownloadMissingRepair => 'Reparare/Descărcare lipsă';

  @override
  String get downloadAction => 'Descărcați';

  @override
  String get resumeDownload => 'Reluați descărcarea';

  @override
  String get deleteDownloadedFiles => 'Ștergeți fișierele descărcate';

  @override
  String get downloadCancelling => 'Se anulează...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Descărcarea a fost anulată pentru $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Descărcarea finalizată pentru $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Descărcarea s-a încheiat pentru $reciter cu $failed sure nereușite ($downloaded/$total descărcate).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Fișierele offline au fost șterse pentru $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Sursele audio verificate ale Coranului nu sunt disponibile momentan.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Pachetul audio Coran verificat este incomplet ($available/$total). Actualizează cloud seed și încearcă din nou.';
  }

  @override
  String get chatbotHint => 'Pune o intrebare...';

  @override
  String get chatbotThinking => 'Gândind...';

  @override
  String get sukunMixerSubtitle => 'Mixer Natură și Coran';

  @override
  String get audioPlayFailed => 'Redarea audio a eșuat';

  @override
  String get sukunNatureLabel => 'Sukun (Natura)';

  @override
  String get sukunRainOfMercy => 'Ploaie de milă';

  @override
  String get sukunGardenOfPeace => 'Grădina Păcii';

  @override
  String get sukunMidnightCalm => 'Calm la miezul nopții';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Peisaje sonore indisponibile';

  @override
  String get sukunUnavailableBody =>
      'Această versiune nu include încă elementele necesare peisajului sonor Sukun.';

  @override
  String get prayerCompletion => 'Finalizarea rugăciunii';

  @override
  String get streaks => 'Dâre';

  @override
  String get dayStreak => 'Urma zilei';

  @override
  String get bestStreak => 'Cea mai bună serie';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Fallback offline';

  @override
  String get chatbotUseCloudAi => 'Utilizați Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Activați funcția de rezervă offline';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count a rămas';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API nu este configurat. Îndrumările islamice verificate offline nu sunt încă disponibile.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Îndrumările islamice locale verificate nu sunt încă disponibile. Treceți la Cloud AI pentru răspunsuri din sursă.';

  @override
  String get mosques => 'Moschei';

  @override
  String get halalFood => 'Mâncare Halal';

  @override
  String get placesSearchArea => 'Cauta in aceasta zona';

  @override
  String get nearbyMosques => 'Moscheile din apropiere';

  @override
  String get islamicSchools => 'Școli islamice';

  @override
  String placesFoundCount(String count) {
    return '$count găsit';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km distanță';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Eroare API: $statusCode';
  }

  @override
  String get placesNetworkError =>
      'Eroare de rețea. Vă rugăm să încercați din nou.';

  @override
  String get placesLocationRequiredTitle => 'Este necesară locația';

  @override
  String get placesLocationRequiredBody =>
      'Setați mai întâi o locație, astfel încât moscheile din apropiere, mâncarea halal și școlile islamice să poată fi căutate cu precizie.';

  @override
  String get placesMapTilesUnavailableTitle => 'Dale de hartă indisponibile';

  @override
  String get placesMapTilesUnavailableBody =>
      'O sursă de dale de hartă verificată nu este încă configurată pentru această versiune. Locațiile din apropiere se pot încărca în continuare din locația dvs. salvată.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'Datele locațiilor nu sunt disponibile';

  @override
  String get placesDataSourceUnavailableBody =>
      'Un punct final de date pentru locații verificate nu este încă configurat pentru această versiune. Setați PLACES_OVERPASS_API_URL la un proxy sau un furnizor aprobat înainte de a activa căutarea în apropiere.';

  @override
  String get unknownPlaceName => 'Nume necunoscut';

  @override
  String get islamicPlaceFallback => 'Locul Islamic';

  @override
  String get asmaMeaning1 => 'Beneficienții';

  @override
  String get asmaMeaning2 => 'Milostivul';

  @override
  String get asmaMeaning3 => 'Regele / Domnul etern';

  @override
  String get asmaMeaning4 => 'Preasfânta';

  @override
  String get asmaMeaning5 => 'Sursa păcii';

  @override
  String get asmaMeaning6 => 'Dătătorul de securitate';

  @override
  String get asmaMeaning7 =>
      'The Watchful Guardian, who observes and safeguards all creation.';

  @override
  String get asmaMeaning8 => 'Cel Prețios / Cel Mai Puternic';

  @override
  String get asmaMeaning9 =>
      'The Restorer and Irresistible, whose will prevails with perfect power.';

  @override
  String get asmaMeaning10 => 'Cel mai mare';

  @override
  String get asmaMeaning11 => 'Creatorul';

  @override
  String get asmaMeaning12 => 'The Maker of Order';

  @override
  String get asmaMeaning13 => 'Conformatorul frumuseții';

  @override
  String get asmaMeaning14 => 'The Forgiving';

  @override
  String get asmaMeaning15 => 'Supusul';

  @override
  String get asmaMeaning16 => 'Dătătorul tuturor';

  @override
  String get asmaMeaning17 => 'The Sustainer';

  @override
  String get asmaMeaning18 => 'Deschizătorul';

  @override
  String get asmaMeaning19 => 'Cunoscătorul tuturor';

  @override
  String get asmaMeaning20 =>
      'The Withholder, who narrows and restrains by wisdom.';

  @override
  String get asmaMeaning21 => 'Alinatorul';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'Exalterul';

  @override
  String get asmaMeaning24 => 'Dăruitor de onoare';

  @override
  String get asmaMeaning25 => 'Umilitorul';

  @override
  String get asmaMeaning26 => 'Ascultătorul tuturor';

  @override
  String get asmaMeaning27 => 'Văzătorul tuturor';

  @override
  String get asmaMeaning28 => 'Judecătorul';

  @override
  String get asmaMeaning29 => 'The Just';

  @override
  String get asmaMeaning30 => 'Cel Subtil';

  @override
  String get asmaMeaning31 => 'The All Aware';

  @override
  String get asmaMeaning32 => 'Forebearing';

  @override
  String get asmaMeaning33 => 'The Magnificul';

  @override
  String get asmaMeaning34 => 'Marele Iertător';

  @override
  String get asmaMeaning35 => 'Răsplătitorul mulțumirii';

  @override
  String get asmaMeaning36 => 'Cel mai înalt';

  @override
  String get asmaMeaning37 => 'Cel mai mare';

  @override
  String get asmaMeaning38 => 'The Preserver';

  @override
  String get asmaMeaning39 => 'Hrănitorul';

  @override
  String get asmaMeaning40 => 'The Reckoner';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'Generosul';

  @override
  String get asmaMeaning43 => 'Cel Vegheant';

  @override
  String get asmaMeaning44 => 'Răspunsul la rugăciune';

  @override
  String get asmaMeaning45 => 'The All Comprehending';

  @override
  String get asmaMeaning46 => 'Cel perfect înțelept';

  @override
  String get asmaMeaning47 => 'Cel Iubitor';

  @override
  String get asmaMeaning48 => 'Cel mai glorios';

  @override
  String get asmaMeaning49 => 'Învietul';

  @override
  String get asmaMeaning50 => 'Martorul';

  @override
  String get asmaMeaning51 => 'Adevărul';

  @override
  String get asmaMeaning52 => 'Atot-suficientul fiduciar';

  @override
  String get asmaMeaning53 => 'Deținătorul tuturor puterilor';

  @override
  String get asmaMeaning54 => 'Fortul';

  @override
  String get asmaMeaning55 => 'The Protector';

  @override
  String get asmaMeaning56 => 'Lăudatul';

  @override
  String get asmaMeaning57 => 'Evaluatorul';

  @override
  String get asmaMeaning58 => 'Inițiatorul';

  @override
  String get asmaMeaning59 => 'Restauratorul';

  @override
  String get asmaMeaning60 => 'Dătătorul de viață';

  @override
  String get asmaMeaning61 => 'Taker of Life';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'Susținătorul auto-subsist';

  @override
  String get asmaMeaning64 => 'The Finder';

  @override
  String get asmaMeaning65 => 'The Glorious';

  @override
  String get asmaMeaning66 => 'Singurul';

  @override
  String get asmaMeaning67 => 'The One';

  @override
  String get asmaMeaning68 => 'Cel căutat de toți';

  @override
  String get asmaMeaning69 => 'Cel Puternic';

  @override
  String get asmaMeaning70 => 'Creatorul întregii puteri';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'The Delayer';

  @override
  String get asmaMeaning73 => 'Primul';

  @override
  String get asmaMeaning74 => 'Ultimul';

  @override
  String get asmaMeaning75 => 'Manifestul';

  @override
  String get asmaMeaning76 => 'The Hidden';

  @override
  String get asmaMeaning77 => 'Guvernatorul';

  @override
  String get asmaMeaning78 => 'Cel Suprem';

  @override
  String get asmaMeaning79 => 'Făcătorul binelui';

  @override
  String get asmaMeaning80 => 'Ghidul pentru pocăință';

  @override
  String get asmaMeaning81 => 'Răzbunătorul';

  @override
  String get asmaMeaning82 => 'The Forgiver';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'Proprietarul / Suveranul tuturor';

  @override
  String get asmaMeaning85 => 'Posesorul Majestății și Bounty';

  @override
  String get asmaMeaning86 => 'Cel Echitabil';

  @override
  String get asmaMeaning87 => 'Adunatorul';

  @override
  String get asmaMeaning88 => 'Bogatul';

  @override
  String get asmaMeaning89 => 'Îmbogățitorul';

  @override
  String get asmaMeaning90 => 'The Preventer of Harm';

  @override
  String get asmaMeaning91 => 'Aducătorul de rău';

  @override
  String get asmaMeaning92 => 'Dăruitor de beneficii';

  @override
  String get asmaMeaning93 => 'Lumina';

  @override
  String get asmaMeaning94 => 'Ghidul';

  @override
  String get asmaMeaning95 => 'Inițiatorul';

  @override
  String get asmaMeaning96 => 'Cel Veșnic';

  @override
  String get asmaMeaning97 => 'Moștenitorul';

  @override
  String get asmaMeaning98 => 'Cel mai drept ghid';

  @override
  String get asmaMeaning99 => 'Pacientul Cel';
}
