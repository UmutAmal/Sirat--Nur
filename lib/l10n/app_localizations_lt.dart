// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lithuanian (`lt`).
class AppLocalizationsLt extends AppLocalizations {
  AppLocalizationsLt([String locale = 'lt']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Islamo šviesos kelias';

  @override
  String get home => 'Home';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Calendar';

  @override
  String get settings => 'Settings';

  @override
  String get nextPrayer => 'Next Prayer';

  @override
  String get prayerTimes => 'Prayer Times';

  @override
  String get continueReading => 'Continue Reading';

  @override
  String get getLifetimePro => 'Get Lifetime Pro';

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
  String get sunrise => 'Saulėtekis';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Magribas';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Laikas $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Atėjo laikas melstis $prayerName.';
  }

  @override
  String get dataStorage => 'Data & Storage';

  @override
  String get clearCache => 'Clear Cache';

  @override
  String get cacheClearedSuccess => 'Cache cleared successfully';

  @override
  String get location => 'Location';

  @override
  String get language => 'Language';

  @override
  String get selectLanguage => 'Select Language';

  @override
  String get searchLanguage => 'Search 180+ languages...';

  @override
  String get systemDefault => 'System Default';

  @override
  String get currentLocation => 'Current Location (GPS)';

  @override
  String get locationServiceDisabled => 'Vietos nustatymo paslauga išjungta.';

  @override
  String get locationPermissionDenied => 'Vietos leidimas atmestas.';

  @override
  String citiesCount(String count) {
    return '$count miestuose';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'Rezultatų nerasta';

  @override
  String get loading => 'Įkeliama...';

  @override
  String get error => 'Klaida';

  @override
  String get appErrorOccurred => 'Įvyko klaida';

  @override
  String get appUnknownError => 'Nežinoma klaida';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Atnaujinti';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Ištrinti';

  @override
  String get edit => 'Edit';

  @override
  String get close => 'Close';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'No';

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
  String get reading => 'Reading';

  @override
  String get recitation => 'Recitation';

  @override
  String get translation => 'Translation';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Įkeliama tafsir...';

  @override
  String get tafsirSourceLabel => 'Tafsir šaltinis';

  @override
  String get tafsirNoSurahFound => 'Šiai surai tafsyro nerasta.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Ayah $ayah tafsir nerasta.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir nepavyko įkelti.';

  @override
  String get tafsirNoTextForAyah => 'Nėra tafsir teksto šiai ayah.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Atsisiunčiama tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Įkeliamas tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return '„Tafsir“ šaltinis pateikė HTTP $statusCode klaidą.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Pasirinktas tafsir šaltinis nepateikė jokių įrašų.';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get addBookmark => 'Add Bookmark';

  @override
  String get removeBookmark => 'Remove Bookmark';

  @override
  String get lastRead => 'Last Read';

  @override
  String get dailyZikr => 'Daily Zikr';

  @override
  String get duaMeaning1 =>
      'kiti meldžia: „Mūsų Viešpatie, duok mums gero šiame pasaulyje ir anapusyje ir apsaugok mus nuo Ugnies kančių“.';

  @override
  String get duaMeaning2 =>
      'Dievas neapkrauna nė vienos sielos daugiau, nei ji gali pakelti: kiekviena laimi tai, ką padarė gera, ir kenčia už blogį – „Viešpatie, neimk mūsų į darbą, jei pamirštame ar klystame. Viešpatie, neapkrauk mūsų taip, kaip apsunkei tuos, kurie buvo prieš mus. Viešpatie, neapkrauk mūsų daugiau, nei turime jėgų pakelti. Atleisk mums, atleisk mums ir pasigailėk mūsų. Tu esi mūsų gynėjas, tad padėk mums nuo netikinčiųjų.';

  @override
  String get duaMeaning3 =>
      '„Mūsų Viešpatie, neleisk, kad mūsų širdys nukryptų po to, kai mus vedei. Suteik mums savo gailestingumą: Tu esi visad dovanojantis.';

  @override
  String get duaMeaning4 =>
      'Viešpatie, duok, kad aš ir mano palikuonys tęstume maldą. Viešpatie, priimk mano prašymą.';

  @override
  String get duaMeaning5 =>
      'Nuleiskite savo sparną nuolankiai prieš juos gerumu ir sakyk: \'Viešpatie, pasigailėk jų, kaip jie rūpinosi manimi, kai buvau mažas\'.';

  @override
  String get duaMeaning6 =>
      'tebūna išaukštintas Dievas, tas, kuris tikrai valdo. [Pranaše], neskubėk deklamuoti, kol apreiškimas nėra visiškai baigtas, bet sakyk: \'Viešpatie, padidink mane pažinimu!\'';

  @override
  String get duaMeaning7 =>
      'Pasakykite [Pranašas]: „Viešpatie, atleisk ir pasigailėk: tu esi gailestingiausias iš visų“.';

  @override
  String get duaMeaning8 =>
      'tie, kurie meldžiasi: „Viešpatie, duok mums džiaugsmo mūsų sutuoktiniais ir palikuonimis“. Parodyk mus geru pavyzdžiu tiems, kurie Tave žino“.';

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
  String get hadith => 'Haditas';

  @override
  String get hadithCollection => 'Hadith kolekcija';

  @override
  String get hadithBooks => 'Hadith knygos';

  @override
  String get searchHadith => 'Ieškoti haditų';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Names of Allah';

  @override
  String get liveTv => 'Live TV';

  @override
  String get watchLive => 'Watch Live';

  @override
  String get streamError => 'Stream error';

  @override
  String get reload => 'Reload';

  @override
  String get openInYoutube => 'Atidaryti „YouTube“.';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Fasting';

  @override
  String get quranReading => 'Quran Reading';

  @override
  String get prayers => 'Prayers';

  @override
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '${hours}h ${minutes}min';
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
  String get monthlyProgress => 'Monthly Progress';

  @override
  String get statistics => 'Statistics';

  @override
  String get hijriCalendar => 'Hijri Calendar';

  @override
  String get gregorianCalendar => 'Gregorian Calendar';

  @override
  String get today => 'Today';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get specialDays => 'Special Days';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Islamo Naujieji metai';

  @override
  String get mawlidAnNabi => 'Mawlidas an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadanas';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadanas';

  @override
  String get specialDayDateEidAlFitr => '1 Shawwal';

  @override
  String get specialDayDateEidAlAdha => '10 Dhul Hijjah';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharramas';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabi al-Awwal';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'Qibla Direction';

  @override
  String get compass => 'Compass';

  @override
  String get degrees => 'degrees';

  @override
  String get north => 'North';

  @override
  String get qiblaFound => 'Qibla found!';

  @override
  String get turnDevice => 'Turn your device to face the Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Kompaso klaida: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Šiame įrenginyje kompaso jutiklis nepasiekiamas.';

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
  String get theme => 'Theme';

  @override
  String get lightMode => 'Light Mode';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'About';

  @override
  String get version => 'Version';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get termsOfService => 'Terms of Service';

  @override
  String get contactUs => 'Contact Us';

  @override
  String get rateApp => 'Rate App';

  @override
  String get shareApp => 'Share App';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Peržiūrėkite $appName: geriausią islamiško gyvenimo būdo programą! $url';
  }

  @override
  String get downloadManager => 'Atsisiuntimų tvarkyklė';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Atsisiuntimas baigtas';

  @override
  String get downloadFailed => 'Atsisiųsti nepavyko';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'Nėra interneto ryšio';

  @override
  String get checkConnection => 'Please check your connection';

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
  String get getStarted => 'Get Started';

  @override
  String get skip => 'Skip';

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
  String get onboarding2Desc => 'Accurate prayer times based on your location';

  @override
  String get onboarding3Title => 'Quran & More';

  @override
  String get onboarding3Desc =>
      'Read Quran, track your reading, and explore Islamic content';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'Reset Counter';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'Target: $target';
  }

  @override
  String get tapToCount => 'Tap to count';

  @override
  String get zikrCompletedMashAllah => 'Baigta! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Alachas yra daug aukščiau už visus netobulumus.';

  @override
  String get zikrMeaningAlhamdulillah => 'Visos šlovės priklauso Allahui.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah is the Greatest.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Nėra kito dievo, išskyrus Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Aš prašau Allaho atleidimo.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Nėra jėgos ir jėgos, išskyrus per Allahą.';

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
  String get recheckPremium => 'Recheck Premium Status';

  @override
  String get syncStore => 'Sync with the store to confirm your entitlement.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'Premium verified.';

  @override
  String get premiumNotFound => 'Premium not found.';

  @override
  String premiumRefreshError(Object error) {
    return 'Could not refresh premium status: $error';
  }

  @override
  String get offlineDownloadManager => 'Atsisiuntimų tvarkyklė neprisijungus';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Free up internal device storage.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'Checking Quran database...';

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
  String missingEnglish(Object count) {
    return 'Missing English: $count';
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
  String get audioVoice => 'Garso balsas';

  @override
  String get audioVoiceMisharyAlafasy => 'Vyras (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Vyras (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Vyras (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Qibla Calibration';

  @override
  String get compassSmoothing => 'Compass Smoothing';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Calibration Offset';

  @override
  String currentOffset(Object offset) {
    return 'Current: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Adjust if your compass needs a manual correction. Positive values rotate clockwise.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Diagnostics';

  @override
  String get diagnosticsNotSet => 'Nenustatyta';

  @override
  String get diagnosticsPrayerProfile => 'Maldos profilis';

  @override
  String get diagnosticsPrayerSource => 'Maldos valdžia';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Tinkintas / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Rankiniai pasirinktiniai kampai (be institucinio šaltinio)';

  @override
  String get diagnosticsCloudDriven => 'Varomas debesų';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan garso ištekliai';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Korano garso ištekliai';

  @override
  String get diagnosticsAudioAssets => 'Garso ištekliai';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count failus';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Nepavyko nuskaityti manifesto: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Lokalizacijos vietos';

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
      'Supabase trūksta debesų lentelių; sugrupuotas atsarginis aktyvus';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Trūksta debesies juz metaduomenų; sujungtas struktūrinis atsarginis aktyvus';

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
      'Calibration required. Rotate device in figure-8.';

  @override
  String get dailyVerse => 'Dienos eilėraštis';

  @override
  String get todaysIbadah => 'Šiandien Ibada';

  @override
  String get quickAccess => 'Greita prieiga';

  @override
  String get assistant => 'Asistentas';

  @override
  String get places => 'Vietos';

  @override
  String get library => 'biblioteka';

  @override
  String get analytics => 'Analizė';

  @override
  String get dailyDuas => 'Dienos Duas';

  @override
  String essentialDuas(String count) {
    return '$count esminiai duas';
  }

  @override
  String get duaUnavailableTitle => 'Patvirtintos duos dar nepasiekiamos';

  @override
  String get duaUnavailableBody =>
      'Patvirtinti kasdieniniai duai dar nebuvo sinchronizuoti su šiuo įrenginiu. Prisijunkite prie debesies šaltinio, kad įkeltumėte šaltinio duas, o ne nepatvirtintą atsarginį failą.';

  @override
  String get duaCategoryQuranic => 'Korano dua';

  @override
  String get duaCategoryMorningEvening => 'Rytas & Vakaras';

  @override
  String get duaCategoryTasbih => 'Tasbihas';

  @override
  String get duaCategoryProtection => 'Apsauga';

  @override
  String get duaCategoryBeginning => 'Pradžios';

  @override
  String get duaCategorySleep => 'Miegoti';

  @override
  String get duaCategoryFoodDrink => 'Maistas ir gėrimai';

  @override
  String get duaCategoryForgiveness => 'Atleidimas';

  @override
  String get duaCategoryHome => 'Pradžia';

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
  String get islamicEducation => 'Islamo švietimas';

  @override
  String get sukunAudioTitle => 'Sukun garso peizažai';

  @override
  String get hadithCollections => 'Hadith kolekcijos';

  @override
  String get hadithSourcePending => 'Laukiama patvirtinto šaltinio';

  @override
  String get hadithUnavailableTitle =>
      'Patvirtintos haditų kolekcijos dar nepasiekiamos';

  @override
  String get hadithUnavailableBody =>
      'Ši konstrukcija vis dar priklauso nuo nepatvirtinto išorinio haditų sklaidos kanalo. Hadith naršymas lieka išjungtas, kol nebus sinchronizuojamas šaltinio duomenų rinkinys.';

  @override
  String get paywallUnlockAll =>
      'Atrakinkite visas dvasinės kelionės funkcijas';

  @override
  String get premiumProductUnavailable =>
      'Aukščiausios kokybės gaminio šiuo metu nėra. Bandykite dar kartą vėliau.';

  @override
  String get premiumPurchaseFailed =>
      'Pirkimo užbaigti nepavyko. Bandykite dar kartą.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'Neribotas AI varomas klausimų ir atsakymų';

  @override
  String get paywallFeature2Title => 'Neribotas neprisijungus';

  @override
  String get paywallFeature2Desc => 'Parsisiųsti visas deklamacijas';

  @override
  String get paywallFeature3Title => 'Išskirtiniai dizainai';

  @override
  String get paywallFeature3Desc => 'Aukščiausios kokybės temos ir šriftai';

  @override
  String get paywallFeature4Title => 'Be skelbimų';

  @override
  String get paywallFeature4Desc => 'Nulis reklamos';

  @override
  String get paywallGetAccess =>
      'Gaukite visą gyvenimą trunkančią prieigą – 1,00 USD';

  @override
  String get restorePurchases => 'Atkurti pirkinius';

  @override
  String get zakatCalculator => 'Zakat skaičiuoklė';

  @override
  String get zakatGold => 'Auksas (Altın)';

  @override
  String get zakatSilver => 'Sidabras (Gümüş)';

  @override
  String get zakatCashBank => 'Grynieji pinigai / bankas';

  @override
  String get zakatBusiness => 'Verslas';

  @override
  String get zakatInvestments => 'Investicijos';

  @override
  String get zakatWeightGrams => 'Svoris (g)';

  @override
  String get zakatPricePerGram => 'Kaina/g';

  @override
  String get zakatTotalAmount => 'Bendra suma';

  @override
  String get zakatInventoryValue => 'Atsargų vertė';

  @override
  String get zakatDebts => 'Skolos';

  @override
  String get zakatTotal => 'Iš viso';

  @override
  String get calculateZakat => 'Apskaičiuokite Zakatą';

  @override
  String get nisabNotReached => 'Nisab nepasiekta. Zakat nėra privalomas.';

  @override
  String get totalZakat => 'Iš viso Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return '„Nisab“: $nisab • Turtas: $assets';
  }

  @override
  String get zakatGoldZakat => 'Auksinis Zakatas';

  @override
  String get zakatSilverZakat => 'Sidabrinis Zakatas';

  @override
  String get zakatCashZakat => 'Grynieji Zakat';

  @override
  String get zakatBusinessZakat => 'Verslas Zakat';

  @override
  String get zakatInvestmentZakat => 'Investicijos Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Pasiektas dienos užklausų limitas. Naujovinkite į „Premium“ ir neribokite.';

  @override
  String get chatbotErrorMsg =>
      'Negalėjau sugeneruoti atsakymo. Bandykite dar kartą.';

  @override
  String get chatbotOfflinePrompt =>
      'Patvirtinta neprisijungus pasiekiama islamo žinių bazė vis dar kuruojama. Dabar galite įgalinti atsarginį režimą neprisijungus, tačiau bus rodomi tik riboti saugūs pranešimai, kol šaltinio duomenų rinkinys bus paruoštas.\n\nAr norite įgalinti atsarginį režimą neprisijungus?';

  @override
  String get chatbotOfflineSwitched =>
      'Atsarginis režimas neprisijungus įgalintas. Patvirtinti vietiniai islamo atsakymai dar neparengti.';

  @override
  String get chatbotOfflineDownloadLabel =>
      'Įgalinti atsarginį režimą neprisijungus';

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
  String get offlineQuranAudioPacks => 'Offline Quran Audio Packs';

  @override
  String storedOnDeviceMb(String size) {
    return 'Stored on device: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surahs downloaded';
  }

  @override
  String get redownloadMissingRepair => 'Repair / Download Missing';

  @override
  String get downloadAction => 'Atsisiųsti';

  @override
  String get resumeDownload => 'Tęsti atsisiuntimą';

  @override
  String get deleteDownloadedFiles => 'Ištrinkite atsisiųstus failus';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return '$reciter atsisiuntimas atšauktas.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return '$reciter atsisiuntimas baigtas.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Atsisiuntimas baigtas $reciter su $failed nepavykusiomis suromis ($downloaded/$total atsisiųsta).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Deleted offline files for $reciter.';
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
  String get sukunMixerSubtitle => 'Gamtos ir Korano maišytuvas';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (gamta)';

  @override
  String get sukunRainOfMercy => 'Gailestingumo lietus';

  @override
  String get sukunGardenOfPeace => 'Taikos sodas';

  @override
  String get sukunMidnightCalm => 'Vidurnakčio ramybė';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Garso vaizdai nepasiekiami';

  @override
  String get sukunUnavailableBody =>
      'Į šią konstrukciją dar neįtraukti reikiami „Sukun soundscape“ ištekliai.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Dienos serija';

  @override
  String get bestStreak => 'Geriausia serija';

  @override
  String get chatbotCloudAiLabel => 'Debesis AI';

  @override
  String get chatbotLocalAiLabel => 'Atsarginis režimas neprisijungus';

  @override
  String get chatbotUseCloudAi => 'Naudokite debesies AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi =>
      'Įgalinti atsarginį režimą neprisijungus';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count liko';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API nesukonfigūruota. Perjunkite į vietinį AI.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Patvirtinti vietiniai islamo nurodymai dar nepasiekiami. Perjunkite į „Cloud AI“, kad gautumėte atsakymus iš šaltinio.';

  @override
  String get mosques => 'Mečetės';

  @override
  String get halalFood => 'Halal maistas';

  @override
  String get placesSearchArea => 'Ieškokite šioje srityje';

  @override
  String get nearbyMosques => 'Netoliese esančios mečetės';

  @override
  String get islamicSchools => 'Islamo mokyklos';

  @override
  String placesFoundCount(String count) {
    return '$count rasta';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km atstumu';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API klaida: $statusCode';
  }

  @override
  String get placesNetworkError => 'Tinklo klaida. Bandykite dar kartą.';

  @override
  String get placesLocationRequiredTitle => 'Reikalinga vieta';

  @override
  String get placesLocationRequiredBody =>
      'Pirmiausia nustatykite vietą, kad būtų galima tiksliai ieškoti netoliese esančių mečečių, halal maisto ir islamo mokyklų.';

  @override
  String get placesMapTilesUnavailableTitle =>
      'Žemėlapio plytelės nepasiekiamos';

  @override
  String get placesMapTilesUnavailableBody =>
      'Patvirtintas žemėlapio išklotinės šaltinis šiai versijai dar nesukonfigūruotas. Netoliese esančias vietas vis tiek galima įkelti iš jūsų išsaugotos vietos.';

  @override
  String get unknownPlaceName => 'Nežinomas vardas';

  @override
  String get islamicPlaceFallback => 'Islamo vieta';

  @override
  String get asmaMeaning1 => 'Geras';

  @override
  String get asmaMeaning2 => 'Gailestingasis';

  @override
  String get asmaMeaning3 => 'Karalius / Amžinasis Viešpats';

  @override
  String get asmaMeaning4 => 'Švenčiausiasis';

  @override
  String get asmaMeaning5 => 'Taikos šaltinis';

  @override
  String get asmaMeaning6 => 'Saugumo teikėjas';

  @override
  String get asmaMeaning7 => 'The Guardian';

  @override
  String get asmaMeaning8 => 'Brangiausias / Galingiausias';

  @override
  String get asmaMeaning9 => 'Kompeller';

  @override
  String get asmaMeaning10 => 'Didžiausias';

  @override
  String get asmaMeaning11 => 'Kūrėjas';

  @override
  String get asmaMeaning12 => 'Tvarkos kūrėjas';

  @override
  String get asmaMeaning13 => 'Grožio formuotojas';

  @override
  String get asmaMeaning14 => 'Atleidimas';

  @override
  String get asmaMeaning15 => 'Pavaldytojas';

  @override
  String get asmaMeaning16 => 'Viso davėjas';

  @override
  String get asmaMeaning17 => 'Pasainer';

  @override
  String get asmaMeaning18 => 'Atidariklis';

  @override
  String get asmaMeaning19 => 'Visų žinovas';

  @override
  String get asmaMeaning20 => 'Konstriktorius';

  @override
  String get asmaMeaning21 => 'Atleidėjas';

  @override
  String get asmaMeaning22 => 'Abaser';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'Garbės davėjas';

  @override
  String get asmaMeaning25 => 'Pažemintuvas';

  @override
  String get asmaMeaning26 => 'Visų girdintysis';

  @override
  String get asmaMeaning27 => 'Visų matytojas';

  @override
  String get asmaMeaning28 => 'Teisėjas';

  @override
  String get asmaMeaning29 => 'Teisingas';

  @override
  String get asmaMeaning30 => 'Subtilus';

  @override
  String get asmaMeaning31 => 'Visi žino';

  @override
  String get asmaMeaning32 => 'Pirmiausia';

  @override
  String get asmaMeaning33 => 'Puikus';

  @override
  String get asmaMeaning34 => 'Didysis atleidėjas';

  @override
  String get asmaMeaning35 => 'Padėkos apdovanotasis';

  @override
  String get asmaMeaning36 => 'Aukščiausias';

  @override
  String get asmaMeaning37 => 'Didžiausias';

  @override
  String get asmaMeaning38 => 'Konservatorius';

  @override
  String get asmaMeaning39 => 'Maitiklis';

  @override
  String get asmaMeaning40 => 'Skaičiavimo priemonė';

  @override
  String get asmaMeaning41 => 'Didenybė';

  @override
  String get asmaMeaning42 => 'Dosnūs';

  @override
  String get asmaMeaning43 => 'Burusis';

  @override
  String get asmaMeaning44 => 'Atsakytojas į maldą';

  @override
  String get asmaMeaning45 => 'Visa suprantama';

  @override
  String get asmaMeaning46 => 'Tobulai išmintingieji';

  @override
  String get asmaMeaning47 => 'Mylimas žmogus';

  @override
  String get asmaMeaning48 => 'Pats šlovingiausias';

  @override
  String get asmaMeaning49 => 'Prisikėlėjas';

  @override
  String get asmaMeaning50 => 'Liudytojas';

  @override
  String get asmaMeaning51 => 'Tiesa';

  @override
  String get asmaMeaning52 => 'Visų pakanka patikėtinio';

  @override
  String get asmaMeaning53 => 'Visų jėgų turėtojas';

  @override
  String get asmaMeaning54 => 'Galingas';

  @override
  String get asmaMeaning55 => 'Apsaugininkas';

  @override
  String get asmaMeaning56 => 'Pagirti';

  @override
  String get asmaMeaning57 => 'Vertintojas';

  @override
  String get asmaMeaning58 => 'Kūrėjas';

  @override
  String get asmaMeaning59 => 'Restauratorius';

  @override
  String get asmaMeaning60 => 'Gyvybės davėjas';

  @override
  String get asmaMeaning61 => 'Gyvybės atėmėjas';

  @override
  String get asmaMeaning62 => 'Visalaikis gyvenimas';

  @override
  String get asmaMeaning63 => 'Savarankiškas maitintojas';

  @override
  String get asmaMeaning64 => 'Finder';

  @override
  String get asmaMeaning65 => 'Šlovingasis';

  @override
  String get asmaMeaning66 => 'Vienintelis';

  @override
  String get asmaMeaning67 => 'Vienas';

  @override
  String get asmaMeaning68 => 'Tas, kurio ieško visi';

  @override
  String get asmaMeaning69 => 'Galingasis';

  @override
  String get asmaMeaning70 => 'Visos jėgos Kūrėjas';

  @override
  String get asmaMeaning71 => 'Expediter';

  @override
  String get asmaMeaning72 => 'Atidėtojas';

  @override
  String get asmaMeaning73 => 'Pirmasis';

  @override
  String get asmaMeaning74 => 'Paskutinis';

  @override
  String get asmaMeaning75 => 'Manifestas';

  @override
  String get asmaMeaning76 => 'Paslėptas';

  @override
  String get asmaMeaning77 => 'Gubernatorius';

  @override
  String get asmaMeaning78 => 'Aukščiausiasis';

  @override
  String get asmaMeaning79 => 'Gero darytojas';

  @override
  String get asmaMeaning80 => 'Atgailos vadovas';

  @override
  String get asmaMeaning81 => 'Keršytojas';

  @override
  String get asmaMeaning82 => 'Atleidėjas';

  @override
  String get asmaMeaning83 => 'Klementas';

  @override
  String get asmaMeaning84 => 'Savininkas / visų valdovas';

  @override
  String get asmaMeaning85 => 'Didenybės ir dosnumo turėtojas';

  @override
  String get asmaMeaning86 => 'Equitable One';

  @override
  String get asmaMeaning87 => 'Rinkėjas';

  @override
  String get asmaMeaning88 => 'Turtingasis';

  @override
  String get asmaMeaning89 => 'Sodriklis';

  @override
  String get asmaMeaning90 => 'Žalos prevencijos priemonė';

  @override
  String get asmaMeaning91 => 'Žalos nešėjas';

  @override
  String get asmaMeaning92 => 'Privalumų davėjas';

  @override
  String get asmaMeaning93 => 'Šviesa';

  @override
  String get asmaMeaning94 => 'Vadovas';

  @override
  String get asmaMeaning95 => 'Kūrėjas';

  @override
  String get asmaMeaning96 => 'Amžinasis';

  @override
  String get asmaMeaning97 => 'Paveldėtojas';

  @override
  String get asmaMeaning98 => 'Teisiausias vadovas';

  @override
  String get asmaMeaning99 => 'Pacientas vienas';
}
