// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Islamska Droga Światła';

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
  String get sunrise => 'Wschód słońca';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Maghrib';

  @override
  String get isha => 'Isza';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Czas na modlitwę $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Nadszedł czas na modlitwę $prayerName.';
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
  String get systemDefault => 'Domyślne systemowe';

  @override
  String get currentLocation => 'Current Location (GPS)';

  @override
  String get locationServiceDisabled => 'Usługa lokalizacyjna jest wyłączona.';

  @override
  String get locationPermissionDenied => 'Odmowa pozwolenia na lokalizację.';

  @override
  String get locationDetectionFailed =>
      'Nie udało się wykryć Twojej lokalizacji. Wybierz miasto ręcznie lub spróbuj ponownie.';

  @override
  String citiesCount(String count) {
    return '$count miast';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'Nie znaleziono żadnych wyników';

  @override
  String get loading => 'Ładowanie...';

  @override
  String get error => 'Błąd';

  @override
  String get appErrorOccurred => 'Wystąpił błąd';

  @override
  String get appUnknownError => 'Nieznany błąd';

  @override
  String get quranLoadFailed =>
      'Nie można załadować treści Koranu. Spróbuj ponownie.';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Odśwież';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Usuń';

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
    return 'Aja $ayah';
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
  String get tafsirLoading => 'Ładowanie tafsir...';

  @override
  String get tafsirSourceLabel => 'Źródło Tafsir';

  @override
  String get tafsirNoSurahFound => 'Nie znaleziono tafsir dla tej sury.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Nie znaleziono tafsira dla ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Nie można załadować Tafsira.';

  @override
  String get tafsirNoTextForAyah => 'Brak tekstu tafsir dla tej ayah.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Pobieranie tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Ładowanie tafsiru $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Źródło Tafsir zwróciło błąd HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Wybrane źródło tafsir nie zwróciło żadnych wpisów.';

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
      'inni modlą się: „Panie nasz, obdarz nas dobrem na tym świecie i w życiu ostatecznym i chroń nas od kary ognia”.';

  @override
  String get duaMeaning2 =>
      'Bóg nie obciąża żadnej duszy więcej, niż jest w stanie udźwignąć: każda czyni dobro, jakie uczyniła, a zło znosi. „Panie, nie karz nas, jeśli zapomnimy lub popełnimy błąd”. Panie, nie obciążaj nas tak, jak obciążałeś tych, którzy byli przed nami. Panie, nie obciążaj nas więcej, niż jesteśmy w stanie unieść. Przebacz nam, przebacz nam i zmiłuj się nad nami. Ty jesteś naszym Obrońcą, więc pomóż nam w walce z niewiernymi.';

  @override
  String get duaMeaning3 =>
      '„Panie nasz, nie pozwól, aby nasze serca zachwiały się po tym, jak nas prowadziłeś. Obdarz nas swoim miłosierdziem: Ty jesteś Zawsze Dawcą.';

  @override
  String get duaMeaning4 =>
      'Panie, spraw, abym ja i moje potomstwo wytrwali w modlitwie. Panie nasz, przyjmij moją prośbę.';

  @override
  String get duaMeaning5 =>
      'i w pokorze i dobroci opuść swe skrzydło ku nim i powiedz: «Panie, zmiłuj się nad nimi, tak jak oni troszczyli się o mnie, gdy byłem mały».';

  @override
  String get duaMeaning6 =>
      'wywyższony niech będzie Bóg, Ten, który naprawdę panuje. [Proroku], nie spiesz się z recytacją, zanim objawienie będzie w pełni ukończone, ale powiedz: „Panie, pomnóż moją wiedzę!”';

  @override
  String get duaMeaning7 =>
      'Powiedz [Prorok]: „Panie, przebacz i zmiłuj się. Ty jesteś najbardziej miłosierny ze wszystkich”.';

  @override
  String get duaMeaning8 =>
      'ci, którzy się modlą: «Panie nasz, daj nam radość z naszych małżonków i potomstwa. Uczyń nas dobrymi przykładami dla tych, którzy Cię znają”.';

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
  String get hadith => 'Hadisy';

  @override
  String get hadithCollection => 'Zbiór hadisów';

  @override
  String get hadithBooks => 'Książki hadisów';

  @override
  String get searchHadith => 'Wyszukaj hadisy';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Names of Allah';

  @override
  String get liveTv => 'Telewizja na żywo';

  @override
  String get watchLive => 'Oglądaj na żywo';

  @override
  String get streamError => 'Błąd strumienia';

  @override
  String get reload => 'Załaduj ponownie';

  @override
  String get openInYoutube => 'Otwórz w YouTube';

  @override
  String get ibadahTracker => 'Śledzenie Ibadah';

  @override
  String get fasting => 'Fasting';

  @override
  String get quranReading => 'Quran Reading';

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
  String get islamicNewYear => 'Islamski Nowy Rok';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadanu';

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
  String get degrees => 'degrees';

  @override
  String get north => 'North';

  @override
  String get qiblaFound => 'Qibla found!';

  @override
  String get turnDevice => 'Turn your device to face the Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Błąd kompasu: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Czujnik kompasu jest niedostępny na tym urządzeniu.';

  @override
  String get qiblaLocationRequiredTitle => 'Wymagana lokalizacja dla Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Przed użyciem kompasu Qibla ustaw swoją rzeczywistą lokalizację, aby móc dokładnie obliczyć kierunek.';

  @override
  String get adhanNotificationChannelName => 'Powiadomienia Adhana';

  @override
  String get adhanNotificationChannelDescription =>
      'Alerty czasu modlitwy z dźwiękiem Adhan.';

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
  String get theme => 'Motyw';

  @override
  String get lightMode => 'Tryb światła';

  @override
  String get darkMode => 'Tryb ciemny';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'About';

  @override
  String get version => 'Wersja';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get termsOfService => 'Terms of Service';

  @override
  String get contactUs => 'Contact Us';

  @override
  String get rateApp => 'Oceń aplikację';

  @override
  String get shareApp => 'Udostępnij aplikację';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Sprawdź $appName: najlepszą islamską aplikację lifestylową! $url';
  }

  @override
  String get downloadManager => 'Menedżer pobierania';

  @override
  String get downloads => 'Pliki do pobrania';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Pobierz ukończono';

  @override
  String get downloadFailed => 'Pobieranie nie powiodło się';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'Brak połączenia z Internetem';

  @override
  String get checkConnection => 'Sprawdź swoje połączenie';

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
  String get tapToCount => 'Kliknij, aby policzyć';

  @override
  String get zikrCompletedMashAllah => 'Zakończony! MaszAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah jest daleko ponad wszelką niedoskonałością.';

  @override
  String get zikrMeaningAlhamdulillah => 'Wszelka chwała należy się Allahowi.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah jest Największy.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Nie ma boga prócz Allaha.';

  @override
  String get zikrMeaningAstaghfirullah => 'Szukam przebaczenia Allaha.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Nie ma mocy ani siły, jak tylko dzięki Allahowi.';

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
  String get offlineDownloadManager => 'Menedżer pobierania offline';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Zwolnij pamięć wewnętrzną urządzenia.';

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
  String get audioVoice => 'Głos audio';

  @override
  String get audioVoiceMisharyAlafasy => 'Mężczyzna (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Mężczyzna (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Mężczyzna (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Kalibracja Qibla';

  @override
  String get compassSmoothing => 'Wygładzanie kompasu';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Przesunięcie kalibracji';

  @override
  String currentOffset(Object offset) {
    return 'Obecne: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Dostosuj, jeśli kompas wymaga ręcznej korekty. Wartości dodatnie obracają się zgodnie z ruchem wskazówek zegara.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Diagnostyka';

  @override
  String get diagnosticsNotSet => 'Nie ustawiono';

  @override
  String get diagnosticsPrayerProfile => 'Profil modlitwy';

  @override
  String get diagnosticsPrayerSource => 'Autorytet modlitwy';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Niestandardowe / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Ręczne niestandardowe kąty (brak źródła instytucjonalnego)';

  @override
  String get diagnosticsCloudDriven => 'Napędzany chmurą';

  @override
  String get diagnosticsAdhanAudioAssets => 'Zasoby audio Adhan';

  @override
  String get diagnosticsUiAudioAssets => 'Zasoby audio interfejsu użytkownika';

  @override
  String get diagnosticsQuranAudioAssets => 'Zasoby audio Koranu';

  @override
  String get diagnosticsAudioAssets => 'Zasoby audio';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count plików';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Odczyt manifestu nie powiódł się: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Lokalizacje lokalizacji';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count obsługiwane';
  }

  @override
  String get diagnosticsQuranDataset => 'Zbiór danych Koranu';

  @override
  String get diagnosticsQuranSurahs => 'Sury Koranu';

  @override
  String get diagnosticsQuranAyahs => 'Koran Aja';

  @override
  String get diagnosticsQuranJuzMetadata => 'Metadane Koranu Juz';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Brak tabel chmurowych w Supabase; pakiet zastępczy aktywny';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Sprawdzanie w chmurze nie powiodło się: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Brak metadanych chmury już; aktywny pakiet rezerwowy strukturalny';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Kontrola struktury chmury nie powiodła się: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Wymagana kalibracja. Obróć urządzenie na rysunku 8.';

  @override
  String get dailyVerse => 'Codzienny werset';

  @override
  String get todaysIbadah => 'Dzisiejsza Ibada';

  @override
  String get quickAccess => 'Szybki dostęp';

  @override
  String get assistant => 'Asystent';

  @override
  String get places => 'Miejsca';

  @override
  String get library => 'Biblioteka';

  @override
  String get analytics => 'Analityka';

  @override
  String get dailyDuas => 'Codzienny Duas';

  @override
  String essentialDuas(String count) {
    return '$count niezbędne duety';
  }

  @override
  String get duaUnavailableTitle =>
      'Zweryfikowane duas nie są jeszcze dostępne';

  @override
  String get duaUnavailableBody =>
      'Zweryfikowane codzienne duas nie zostały jeszcze zsynchronizowane z tym urządzeniem. Połącz się ze źródłem w chmurze, aby załadować źródła Dua zamiast niezweryfikowanego źródła zastępczego.';

  @override
  String get duaCategoryQuranic => 'Koraniczny dua';

  @override
  String get duaCategoryMorningEvening => 'Rano i wieczór';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Ochrona';

  @override
  String get duaCategoryBeginning => 'Początki';

  @override
  String get duaCategorySleep => 'Spać';

  @override
  String get duaCategoryFoodDrink => 'Jedzenie i napoje';

  @override
  String get duaCategoryForgiveness => 'Przebaczenie';

  @override
  String get duaCategoryHome => 'Dom';

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
  String get islamicEducation => 'Edukacja Islamska';

  @override
  String get sukunAudioTitle => 'Krajobrazy dźwiękowe Sukun';

  @override
  String get hadithCollections => 'Zbiory hadisów';

  @override
  String get hadithSourcePending => 'Oczekujące zweryfikowane źródło';

  @override
  String get hadithUnavailableTitle =>
      'Zweryfikowane zbiory hadisów nie są jeszcze dostępne';

  @override
  String get hadithUnavailableBody =>
      'Ta wersja nadal zależy od niezweryfikowanego zewnętrznego źródła hadisów. Przeglądanie hadisów pozostaje wyłączone do czasu zsynchronizowania źródłowego zbioru danych.';

  @override
  String get paywallUnlockAll =>
      'Odblokuj wszystkie funkcje swojej duchowej podróży';

  @override
  String get premiumProductUnavailable =>
      'Produkt premium nie jest obecnie dostępny. Spróbuj ponownie później.';

  @override
  String get premiumPurchaseFailed =>
      'Nie udało się sfinalizować zakupu. Spróbuj ponownie.';

  @override
  String get paywallFeature1Title => 'Asystent neuronowy Plus';

  @override
  String get paywallFeature1Desc =>
      'Nieograniczone pytania i odpowiedzi oparte na sztucznej inteligencji';

  @override
  String get paywallFeature2Title => 'Nieograniczona liczba offline';

  @override
  String get paywallFeature2Desc => 'Pobierz wszystkie recytacje';

  @override
  String get paywallFeature3Title => 'Ekskluzywne projekty';

  @override
  String get paywallFeature3Desc => 'Motywy i czcionki premium';

  @override
  String get paywallFeature4Title => 'Bez reklam';

  @override
  String get paywallFeature4Desc => 'Zero reklam';

  @override
  String get paywallGetAccess => 'Uzyskaj dożywotni dostęp — 1,00 USD';

  @override
  String get restorePurchases => 'Przywróć zakupy';

  @override
  String get zakatCalculator => 'Kalkulator Zakatu';

  @override
  String get zakatGold => 'Złoto (Altın)';

  @override
  String get zakatSilver => 'Srebro (Gümüş)';

  @override
  String get zakatCashBank => 'Gotówka/bank';

  @override
  String get zakatBusiness => 'Biznes';

  @override
  String get zakatInvestments => 'Inwestycje';

  @override
  String get zakatWeightGrams => 'Waga (g)';

  @override
  String get zakatPricePerGram => 'Cena/g';

  @override
  String get zakatTotalAmount => 'Całkowita kwota';

  @override
  String get zakatInventoryValue => 'Wartość zapasów';

  @override
  String get zakatDebts => 'Długi';

  @override
  String get zakatTotal => 'Całkowity';

  @override
  String get calculateZakat => 'Oblicz Zakat';

  @override
  String get nisabNotReached =>
      'Nie osiągnięto Nisaba. Zakat nie jest obowiązkowy.';

  @override
  String get totalZakat => 'Całkowity Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Aktywa: $assets';
  }

  @override
  String get zakatGoldZakat => 'Złoty Zakat';

  @override
  String get zakatSilverZakat => 'Srebrny Zakat';

  @override
  String get zakatCashZakat => 'Zakat gotówkowy';

  @override
  String get zakatBusinessZakat => 'Zakat biznesowy';

  @override
  String get zakatInvestmentZakat => 'Zakat Inwestycyjny';

  @override
  String get chatbotGreeting =>
      'Assalam Alaikum! Jestem twoim islamskim asystentem. Zapytaj mnie o modlitwę, post, zakat lub jakikolwiek inny temat islamski.';

  @override
  String get chatbotLimitReached =>
      'Osiągnięto dzienny limit zapytań. Przejdź na Premium bez ograniczeń.';

  @override
  String get chatbotErrorMsg =>
      'Nie udało mi się wygenerować odpowiedzi. Spróbuj ponownie.';

  @override
  String get chatbotOfflinePrompt =>
      'Zweryfikowana baza wiedzy islamskiej offline jest nadal w fazie tworzenia. Możesz teraz włączyć funkcję zastępczą w trybie offline, ale będzie ona wyświetlać tylko ograniczoną liczbę bezpiecznych komunikatów, dopóki źródłowy zbiór danych nie będzie gotowy.\n\nCzy chcesz włączyć funkcję zastępczą offline?';

  @override
  String get chatbotOfflineSwitched =>
      'Włączono opcję zastępczego trybu offline. Zweryfikowane lokalne odpowiedzi islamskie nie są jeszcze gotowe.';

  @override
  String get chatbotOfflineDownloadLabel => 'Włącz tryb awaryjny offline';

  @override
  String get downloadPreparing => 'Przygotowuję pobieranie...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Pobieranie sury $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Wszystkie sury już pobrane dla tego recytatora.';

  @override
  String get offlineQuranAudioPacks => 'Pakiety audio Koranu offline';

  @override
  String storedOnDeviceMb(String size) {
    return 'Przechowywane na urządzeniu: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total pobrane sura';
  }

  @override
  String get redownloadMissingRepair => 'Napraw/pobierz brakujące';

  @override
  String get downloadAction => 'Pobierz';

  @override
  String get resumeDownload => 'Wznów pobieranie';

  @override
  String get deleteDownloadedFiles => 'Usuń pobrane pliki';

  @override
  String get downloadCancelling => 'Anulowanie...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Pobieranie anulowane dla $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Pobieranie zakończone dla $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Pobieranie zostało zakończone dla $reciter z $failed nieudanymi surami (pobrano $downloaded/$total).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Usunięto pliki offline dla $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Zweryfikowane źródła dźwięku Koranu są obecnie niedostępne.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Zweryfikowany pakiet audio Koranu jest niekompletny ($available/$total). Odśwież ziarno chmury i spróbuj ponownie.';
  }

  @override
  String get chatbotHint => 'Zadaj pytanie...';

  @override
  String get chatbotThinking => 'Myśląc...';

  @override
  String get sukunMixerSubtitle => 'Mikser natury i Koranu';

  @override
  String get audioPlayFailed => 'Odtwarzanie dźwięku nie powiodło się';

  @override
  String get sukunNatureLabel => 'Sukun (Natura)';

  @override
  String get sukunRainOfMercy => 'Deszcz Miłosierdzia';

  @override
  String get sukunGardenOfPeace => 'Ogród Pokoju';

  @override
  String get sukunMidnightCalm => 'Spokój północy';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Krajobrazy dźwiękowe niedostępne';

  @override
  String get sukunUnavailableBody =>
      'Ta kompilacja nie zawiera jeszcze wymaganych zasobów dźwiękowych Sukun.';

  @override
  String get prayerCompletion => 'Zakończenie modlitwy';

  @override
  String get streaks => 'Pasemko';

  @override
  String get dayStreak => 'Pasja dnia';

  @override
  String get bestStreak => 'Najlepsza passa';

  @override
  String get chatbotCloudAiLabel => 'Chmura AI';

  @override
  String get chatbotLocalAiLabel => 'Powrót offline';

  @override
  String get chatbotUseCloudAi => 'Użyj Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Włącz tryb awaryjny offline';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count pozostał';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API nie jest skonfigurowane. Zweryfikowane wytyczne islamskie offline nie są jeszcze dostępne.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Zweryfikowane lokalne wytyczne islamskie nie są jeszcze dostępne. Przełącz się na Cloud AI, aby uzyskać odpowiedzi na podstawie źródeł.';

  @override
  String get mosques => 'Meczety';

  @override
  String get halalFood => 'Jedzenie halalowe';

  @override
  String get placesSearchArea => 'Przeszukaj ten obszar';

  @override
  String get nearbyMosques => 'W pobliżu meczety';

  @override
  String get islamicSchools => 'Szkoły Islamskie';

  @override
  String placesFoundCount(String count) {
    return 'Znaleziono $count';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km stąd';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Błąd API: $statusCode';
  }

  @override
  String get placesNetworkError => 'Błąd sieci. Spróbuj ponownie.';

  @override
  String get placesLocationRequiredTitle => 'Wymagana lokalizacja';

  @override
  String get placesLocationRequiredBody =>
      'Najpierw ustal lokalizację, aby można było dokładnie przeszukać pobliskie meczety, żywność halal i szkoły islamskie.';

  @override
  String get placesMapTilesUnavailableTitle => 'Kafelki mapy niedostępne';

  @override
  String get placesMapTilesUnavailableBody =>
      'Zweryfikowane źródło kafelków mapy nie zostało jeszcze skonfigurowane dla tej kompilacji. Miejsca w pobliżu można nadal wczytywać z zapisanej lokalizacji.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'Dane o miejscach są niedostępne';

  @override
  String get placesDataSourceUnavailableBody =>
      'Punkt końcowy danych zweryfikowanych miejsc nie jest jeszcze skonfigurowany dla tej kompilacji. Przed włączeniem wyszukiwania w pobliżu ustaw PLACES_OVERPASS_API_URL na zatwierdzonego proxy lub dostawcę.';

  @override
  String get unknownPlaceName => 'Nieznane imię';

  @override
  String get islamicPlaceFallback => 'Miejsce Islamskie';

  @override
  String get asmaMeaning1 => 'Dobroczynny';

  @override
  String get asmaMeaning2 => 'Miłosierny';

  @override
  String get asmaMeaning3 => 'Król / Wieczny Pan';

  @override
  String get asmaMeaning4 => 'Najświętsze';

  @override
  String get asmaMeaning5 => 'Źródło pokoju';

  @override
  String get asmaMeaning6 => 'Dawca bezpieczeństwa';

  @override
  String get asmaMeaning7 => 'Strażnik';

  @override
  String get asmaMeaning8 => 'Drogocenny / Najpotężniejszy';

  @override
  String get asmaMeaning9 => 'Komulator';

  @override
  String get asmaMeaning10 => 'Największy';

  @override
  String get asmaMeaning11 => 'Stwórca';

  @override
  String get asmaMeaning12 => 'Twórca porządku';

  @override
  String get asmaMeaning13 => 'Kształtownik piękna';

  @override
  String get asmaMeaning14 => 'Przebaczający';

  @override
  String get asmaMeaning15 => 'Pogromca';

  @override
  String get asmaMeaning16 => 'Dawca wszystkiego';

  @override
  String get asmaMeaning17 => 'Podtrzymujący';

  @override
  String get asmaMeaning18 => 'Rozpoczęcie';

  @override
  String get asmaMeaning19 => 'Wiedzący o wszystkim';

  @override
  String get asmaMeaning20 => 'dusiciel';

  @override
  String get asmaMeaning21 => 'Uwolnienie';

  @override
  String get asmaMeaning22 => 'Poniżacz';

  @override
  String get asmaMeaning23 => 'Wychwalający';

  @override
  String get asmaMeaning24 => 'Dawca honoru';

  @override
  String get asmaMeaning25 => 'Poniżacz';

  @override
  String get asmaMeaning26 => 'Słyszący wszystko';

  @override
  String get asmaMeaning27 => 'Widzący wszystko';

  @override
  String get asmaMeaning28 => 'Sędzia';

  @override
  String get asmaMeaning29 => 'Sprawiedliwy';

  @override
  String get asmaMeaning30 => 'Subtelny';

  @override
  String get asmaMeaning31 => 'Wszyscy Świadomi';

  @override
  String get asmaMeaning32 => 'Wytrwałość';

  @override
  String get asmaMeaning33 => 'Wspaniały';

  @override
  String get asmaMeaning34 => 'Wielki Przebaczający';

  @override
  String get asmaMeaning35 => 'Nagradzający wdzięczność';

  @override
  String get asmaMeaning36 => 'Najwyższy';

  @override
  String get asmaMeaning37 => 'Największy';

  @override
  String get asmaMeaning38 => 'Obrońca';

  @override
  String get asmaMeaning39 => 'Odżywka';

  @override
  String get asmaMeaning40 => 'Liczący';

  @override
  String get asmaMeaning41 => 'Majestatyczny';

  @override
  String get asmaMeaning42 => 'Hojny';

  @override
  String get asmaMeaning43 => 'Czujnik';

  @override
  String get asmaMeaning44 => 'Odpowiadający na modlitwę';

  @override
  String get asmaMeaning45 => 'Wszechrozumienie';

  @override
  String get asmaMeaning46 => 'Doskonale Mądry';

  @override
  String get asmaMeaning47 => 'Kochający';

  @override
  String get asmaMeaning48 => 'Najwspanialszy';

  @override
  String get asmaMeaning49 => 'Wskrzesiciel';

  @override
  String get asmaMeaning50 => 'Świadek';

  @override
  String get asmaMeaning51 => 'Prawda';

  @override
  String get asmaMeaning52 => 'Wszechwystarczający Powiernik';

  @override
  String get asmaMeaning53 => 'Posiadacz wszelkiej siły';

  @override
  String get asmaMeaning54 => 'Silny';

  @override
  String get asmaMeaning55 => 'Obrońca';

  @override
  String get asmaMeaning56 => 'Pochwaleni';

  @override
  String get asmaMeaning57 => 'Rzeczywista';

  @override
  String get asmaMeaning58 => 'Pomysłodawca';

  @override
  String get asmaMeaning59 => 'Odnowiciel';

  @override
  String get asmaMeaning60 => 'Dawca życia';

  @override
  String get asmaMeaning61 => 'Pogromca życia';

  @override
  String get asmaMeaning62 => 'Wiecznie żyjący';

  @override
  String get asmaMeaning63 => 'Samoistny element podtrzymujący';

  @override
  String get asmaMeaning64 => 'Wyszukiwacz';

  @override
  String get asmaMeaning65 => 'Wspaniały';

  @override
  String get asmaMeaning66 => 'Jedyny';

  @override
  String get asmaMeaning67 => 'Ten jedyny';

  @override
  String get asmaMeaning68 => 'Ten, którego wszyscy szukają';

  @override
  String get asmaMeaning69 => 'Potężny';

  @override
  String get asmaMeaning70 => 'Stwórca wszelkiej mocy';

  @override
  String get asmaMeaning71 => 'Ekspedytor';

  @override
  String get asmaMeaning72 => 'Opóźniacz';

  @override
  String get asmaMeaning73 => 'Pierwszy';

  @override
  String get asmaMeaning74 => 'Ostatni';

  @override
  String get asmaMeaning75 => 'Manifest';

  @override
  String get asmaMeaning76 => 'Ukryte';

  @override
  String get asmaMeaning77 => 'Gubernator';

  @override
  String get asmaMeaning78 => 'Najwyższy';

  @override
  String get asmaMeaning79 => 'Czyniciel dobra';

  @override
  String get asmaMeaning80 => 'Przewodnik pokuty';

  @override
  String get asmaMeaning81 => 'Mściciel';

  @override
  String get asmaMeaning82 => 'Przebaczający';

  @override
  String get asmaMeaning83 => 'Klement';

  @override
  String get asmaMeaning84 => 'Właściciel/władca wszystkiego';

  @override
  String get asmaMeaning85 => 'Posiadacz majestatu i bogactwa';

  @override
  String get asmaMeaning86 => 'Sprawiedliwy';

  @override
  String get asmaMeaning87 => 'Zbieracz';

  @override
  String get asmaMeaning88 => 'Bogaty';

  @override
  String get asmaMeaning89 => 'Wzbogacacz';

  @override
  String get asmaMeaning90 => 'Zapobiegający szkodom';

  @override
  String get asmaMeaning91 => 'Przynoszący krzywdę';

  @override
  String get asmaMeaning92 => 'Dawca korzyści';

  @override
  String get asmaMeaning93 => 'Światło';

  @override
  String get asmaMeaning94 => 'Przewodnik';

  @override
  String get asmaMeaning95 => 'Pomysłodawca';

  @override
  String get asmaMeaning96 => 'Odwieczny';

  @override
  String get asmaMeaning97 => 'Spadkobierca';

  @override
  String get asmaMeaning98 => 'Najsprawiedliwszy przewodnik';

  @override
  String get asmaMeaning99 => 'Pacjent Jeden';
}
