// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lithuanian (`lt`).
class AppLocalizationsLt extends AppLocalizations {
  AppLocalizationsLt([String locale = 'lt']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Islamo šviesos kelias';

  @override
  String get home => 'Pradžia';

  @override
  String get quran => 'Koranas';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Kalendorius';

  @override
  String get settings => 'Nustatymai';

  @override
  String get nextPrayer => 'Kita malda';

  @override
  String get prayerTimes => 'Maldos laikai';

  @override
  String get continueReading => 'Continue Reading';

  @override
  String get getLifetimePro => 'Get Lifetime Pro';

  @override
  String get unlockTajweed => 'Unlock Tajweed & Advanced Features';

  @override
  String get prayerCalculation => 'Maldos skaičiavimas';

  @override
  String get method => 'Skaičiavimo metodas';

  @override
  String get madhab => 'Asr juristinis metodas';

  @override
  String get surahs => 'Suros';

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
  String get dataStorage => 'Duomenys ir saugykla';

  @override
  String get clearCache => 'Išvalyti talpyklą';

  @override
  String get cacheClearedSuccess => 'Talpykla sėkmingai išvalyta';

  @override
  String get location => 'Vieta';

  @override
  String get language => 'Kalba';

  @override
  String get selectLanguage => 'Pasirinkite Kalba';

  @override
  String get searchLanguage => 'Search 180+ languages...';

  @override
  String get systemDefault => 'Numatytoji sistema';

  @override
  String get currentLocation => 'Dabartinė vieta (GPS)';

  @override
  String get locationServiceDisabled => 'Vietos nustatymo paslauga išjungta.';

  @override
  String get locationPermissionDenied => 'Vietos leidimas atmestas.';

  @override
  String get locationDetectionFailed =>
      'Nepavyko aptikti jūsų vietos. Pasirinkite miestą rankiniu būdu arba bandykite dar kartą.';

  @override
  String citiesCount(String count) {
    return '$count miestuose';
  }

  @override
  String get search => 'Ieškoti';

  @override
  String get searchHint => 'Ieškoti...';

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
  String get quranLoadFailed =>
      'Nepavyko įkelti Korano turinio. Bandykite dar kartą.';

  @override
  String get retry => 'Bandykite dar kartą';

  @override
  String get refreshAction => 'Atnaujinti';

  @override
  String get cancel => 'Atšaukti';

  @override
  String get save => 'Išsaugoti';

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
  String get no => 'Nr';

  @override
  String get surah => 'Sura';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Puslapis';

  @override
  String get reading => 'Reading';

  @override
  String get recitation => 'Recitation';

  @override
  String get translation => 'Vertimas';

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
  String get tafsirCacheUnavailable =>
      'Patvirtinta tafsir dar nepasiekiama neprisijungus. Prieš naršydami sinchronizuokite gautą tafsir duomenų rinkinį.';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get addBookmark => 'Pridėti žymę';

  @override
  String get removeBookmark => 'Pašalinti žymę';

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
  String get namesOfAllah => 'Alacho vardai';

  @override
  String get liveTv => 'Tiesioginė televizija';

  @override
  String get watchLive => 'Žiūrėkite tiesiogiai';

  @override
  String get streamError => 'Srauto klaida';

  @override
  String get reload => 'Įkelti iš naujo';

  @override
  String get openInYoutube => 'Atidaryti „YouTube“.';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Pasninkas';

  @override
  String get quranReading => 'Korano skaitymas';

  @override
  String get prayers => 'Maldos';

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
  String get weeklyProgress => 'Savaitės pažanga';

  @override
  String get monthlyProgress => 'Monthly Progress';

  @override
  String get statistics => 'Statistics';

  @override
  String get hijriCalendar => 'Hijri kalendorius';

  @override
  String get gregorianCalendar => 'Gregorian Calendar';

  @override
  String get today => 'Šiandien';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get specialDays => 'Ypatingos dienos';

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
  String get qiblaDirection => 'Qibla kryptis';

  @override
  String get compass => 'Kompasas';

  @override
  String get degrees => 'degrees';

  @override
  String get north => 'North';

  @override
  String get qiblaFound => 'Qibla rasta!';

  @override
  String get turnDevice => 'Pasukite prietaisą į Qiblą';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Kompaso klaida: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Šiame įrenginyje kompaso jutiklis nepasiekiamas.';

  @override
  String get qiblaLocationRequiredTitle => 'Reikalinga vieta Qiblai';

  @override
  String get qiblaLocationRequiredBody =>
      'Prieš naudodami Qibla kompasą, nustatykite savo tikrąją vietą, kad būtų galima tiksliai apskaičiuoti kryptį.';

  @override
  String get adhanNotificationChannelName => 'Adhan pranešimai';

  @override
  String get adhanNotificationChannelDescription =>
      'Maldos laikas perspėja su adhano garsu.';

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
  String get theme => 'tema';

  @override
  String get lightMode => 'Šviesos režimas';

  @override
  String get darkMode => 'Tamsusis režimas';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'Apie';

  @override
  String get version => 'Versija';

  @override
  String get privacyPolicy => 'Privatumo politika';

  @override
  String get termsOfService => 'Paslaugų teikimo sąlygos';

  @override
  String get contactUs => 'Susisiekite su mumis';

  @override
  String get rateApp => 'Įvertinkite programą';

  @override
  String get shareApp => 'Bendrinti programą';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Peržiūrėkite $appName: geriausią islamiško gyvenimo būdo programą! $url';
  }

  @override
  String get downloadManager => 'Atsisiuntimų tvarkyklė';

  @override
  String get downloads => 'Atsisiuntimai';

  @override
  String get downloading => 'Atsisiunčiama...';

  @override
  String get downloadComplete => 'Atsisiuntimas baigtas';

  @override
  String get downloadFailed => 'Atsisiųsti nepavyko';

  @override
  String get offlineMode => 'Režimas neprisijungus';

  @override
  String get noInternet => 'Nėra interneto ryšio';

  @override
  String get checkConnection => 'Patikrinkite ryšį';

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
  String get getStarted => 'Pradėkite';

  @override
  String get skip => 'Skip';

  @override
  String get next => 'Kitas';

  @override
  String get done => 'Atlikta';

  @override
  String get onboarding1Title => 'Sveiki atvykę į Sirat-ı Nur';

  @override
  String get onboarding1Desc =>
      'Jūsų visa islamo kompaniono programa maldai, Koranui ir kt';

  @override
  String get onboarding2Title => 'Maldos laikai';

  @override
  String get onboarding2Desc => 'Tikslus maldos laikas pagal jūsų vietą';

  @override
  String get onboarding3Title => 'Koranas ir daugiau';

  @override
  String get onboarding3Desc =>
      'Skaitykite Koraną, stebėkite savo skaitymą ir tyrinėkite islamo turinį';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'Iš naujo nustatyti skaitiklį';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'Tikslinis skaičius: $target';
  }

  @override
  String get tapToCount => 'Palieskite, kad suskaičiuotumėte';

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
  String get dailyProgress => 'Kasdienė pažanga';

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
      'Dar kartą patikrinkite aukščiausios kokybės prenumeratos būseną';

  @override
  String get syncStore =>
      'Sinchronizuokite su programų parduotuve, kad patvirtintumėte aukščiausios kokybės prenumeratą.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => '„Premium“ prenumerata patvirtinta.';

  @override
  String get premiumNotFound => 'Premium prenumerata nerasta.';

  @override
  String premiumRefreshError(Object error) {
    return 'Nepavyko atnaujinti aukščiausios kokybės prenumeratos būsenos: $error';
  }

  @override
  String get offlineDownloadManager => 'Atsisiuntimų tvarkyklė neprisijungus';

  @override
  String get manageDatasets =>
      'Tvarkykite didžiulius neprisijungus pasiekiamus garso ir duomenų rinkinių paketus.';

  @override
  String get freeStorage => 'Atlaisvinkite vidinę įrenginio saugyklą.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'Tikrinama Korano duomenų bazė...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'Korano duomenų bazės būsena';

  @override
  String statusLabel(Object status) {
    return 'Būsena: $status';
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
    return 'Nepavyko patikrinti Korano: $error';
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
  String get qiblaCalibration => 'Qibla kalibravimas';

  @override
  String get compassSmoothing => 'Kompaso išlyginimas';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Kalibravimo poslinkis';

  @override
  String currentOffset(Object offset) {
    return 'Dabartinis: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Sureguliuokite, ar jūsų kompasą reikia taisyti rankiniu būdu. Teigiamos reikšmės sukasi pagal laikrodžio rodyklę.';

  @override
  String get apply => 'Taikyti pakeitimus';

  @override
  String get resetOnboarding => 'Iš naujo nustatyti įvadinę sąranką';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Diagnostika';

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
  String diagnosticsPrayerHybridSource(String sourceName, String madhab) {
    return '$sourceName metodas su vartotojo pasirinktu $madhab Asr nustatymu';
  }

  @override
  String diagnosticsPrayerRegionalFallbackSource(String sourceName) {
    return 'Atsarginis regionas naudojant $sourceName. Patvirtinkite vietos maldos laiką su savo mečete arba oficialia religine institucija.';
  }

  @override
  String get diagnosticsCloudDriven => 'Varomas debesų';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan garso ištekliai';

  @override
  String get diagnosticsUiAudioAssets => 'UI garso ištekliai';

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
    return '$count palaikoma';
  }

  @override
  String get diagnosticsQuranDataset => 'Korano duomenų rinkinys';

  @override
  String get diagnosticsQuranSurahs => 'Korano suros';

  @override
  String get diagnosticsQuranAyahs => 'Korano Ayahs';

  @override
  String get diagnosticsQuranJuzMetadata => 'Korano Juz metaduomenys';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Supabase trūksta debesų lentelių; sugrupuotas atsarginis aktyvus';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Nepavyko patikrinti debesies: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Trūksta debesies juz metaduomenų; sujungtas struktūrinis atsarginis aktyvus';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Nepavyko patikrinti debesies struktūros: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Reikalingas kalibravimas. Pasukite įrenginį 8 paveiksle.';

  @override
  String get dailyVerse => 'Dienos eilėraštis';

  @override
  String get dailyVerseUnavailableTitle => 'Dienos eilutė nepasiekiama';

  @override
  String get dailyVerseUnavailableBody =>
      'Patvirtintas kasdienis eilėraščių turinys šiai versijai dar nesukonfigūruotas. Prieš naršydami prisijunkite prie debesies šaltinio arba sinchronizuokite patvirtintą talpyklą.';

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
      'Assalamu Alaikum! Aš esu jūsų islamo padėjėjas. Paklauskite manęs apie maldą, pasninką, zakatą ar bet kokią islamo temą.';

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
  String get downloadPreparing => 'Ruošiamasi atsisiuntimui...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Atsisiunčiama sura $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Visos jau atsisiųstos šio deklamuotojo suros.';

  @override
  String get offlineQuranAudioPacks => 'Korano garso paketai neprisijungus';

  @override
  String storedOnDeviceMb(String size) {
    return 'Išsaugota įrenginyje: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return 'Atsisiųsta $downloaded / $total surah';
  }

  @override
  String get redownloadMissingRepair => 'Trūksta remonto / atsisiuntimo';

  @override
  String get downloadAction => 'Atsisiųsti';

  @override
  String get resumeDownload => 'Tęsti atsisiuntimą';

  @override
  String get deleteDownloadedFiles => 'Ištrinkite atsisiųstus failus';

  @override
  String get downloadCancelling => 'Atšaukiama...';

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
    return 'Ištrinti neprisijungus pasiekiami $reciter failai.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Patvirtinti Korano garso šaltiniai šiuo metu nepasiekiami.';

  @override
  String get quranAudioPlaybackErrorWithConnectionHint =>
      'Nepavyko atkurti garso. Patikrinkite ryšį.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Patvirtintas Korano garso paketas neužbaigtas ($available/$total). Bandykite dar kartą, kai garso įrašų katalogas bus atnaujintas.';
  }

  @override
  String get chatbotHint => 'Užduoti klausimą...';

  @override
  String get chatbotThinking => 'Galvoju...';

  @override
  String get sukunMixerSubtitle => 'Gamtos ir Korano maišytuvas';

  @override
  String get audioPlayFailed => 'Nepavyko atkurti garso';

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
  String get prayerCompletion => 'Maldos užbaigimas';

  @override
  String get streaks => 'Dryžiai';

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
      'Cloud API nesukonfigūruota. Patvirtintos neprisijungus pasiekiamos islamo gairės dar nepasiekiamos.';

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
  String get placesDataSourceUnavailableTitle => 'Vietų duomenys nepasiekiami';

  @override
  String get placesDataSourceUnavailableBody =>
      'Patvirtintų vietų duomenų galutinis taškas šiai versijai dar nesukonfigūruotas. Prieš įjungdami netoliese esančią paiešką, nustatykite PLACES_OVERPASS_API_URL patvirtintą tarpinį serverį arba teikėją.';

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
  String get asmaMeaning7 =>
      'The Watchful Guardian, who observes and safeguards all creation.';

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
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

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
