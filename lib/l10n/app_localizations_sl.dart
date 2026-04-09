// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovenian (`sl`).
class AppLocalizationsSl extends AppLocalizations {
  AppLocalizationsSl([String locale = 'sl']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

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
  String get sunrise => 'sončni vzhod';

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
    return 'Čas za $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Čas je za molitev $prayerName.';
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
  String get locationServiceDisabled => 'Lokacijska storitev je onemogočena.';

  @override
  String get locationPermissionDenied => 'Dovoljenje za lokacijo zavrnjeno.';

  @override
  String citiesCount(String count) {
    return '$count mest';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'No results found';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get appErrorOccurred => 'Prišlo je do napake';

  @override
  String get appUnknownError => 'Neznana napaka';

  @override
  String get retry => 'Retry';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Delete';

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
      'drugi molijo: \'Naš Gospod, daj nam dobro na tem svetu in na onstranstvu in nas varuj pred mukami ognja.\'';

  @override
  String get duaMeaning2 =>
      'Bog nobene duše ne obremenjuje z več, kot lahko prenese: vsaka pridobi vse, kar je dobrega storila, in trpi zaradi slabega – ‘Gospod, ne obremenjuj nas, če pozabljamo ali delamo napake. Gospod, ne obremenjuj nas, kakor si obremenjeval tiste pred nami. Gospod, ne obremenjuj nas z več, kot imamo moči nositi. Oprosti nam, odpusti nam in usmili se nas. Ti si naš zaščitnik, zato nam pomagaj proti nevernikom.«';

  @override
  String get duaMeaning3 =>
      '\'Naš Gospod, ne dovoli, da naša srca skrenejo, potem ko si nas vodil. Podeli nam svoje usmiljenje: Ti si tisti, ki vedno daje.';

  @override
  String get duaMeaning4 =>
      'Gospod, daj, da jaz in moje potomstvo nadaljujemo z molitvijo. Gospod naš, sprejmi mojo prošnjo.';

  @override
  String get duaMeaning5 =>
      'in spusti svoje krilo v ponižnosti proti njim v prijaznosti in reci: \'Gospod, usmili se jih, tako kot so skrbeli zame, ko sem bil majhen.\'';

  @override
  String get duaMeaning6 =>
      'vzvišen bodi Bog, tisti, ki resnično obvladuje. [Prerok], ne hiti recitirati, preden je razodetje popolnoma dokončano, ampak reci: \'Gospod, pomnoži me v spoznanju!\'';

  @override
  String get duaMeaning7 =>
      'Reci [prerok]: \'Gospod, odpusti in usmili se: ti si najbolj usmiljen od vseh.\'';

  @override
  String get duaMeaning8 =>
      'tisti, ki molijo: \'Naš Gospod, daj nam veselje v naših zakoncih in potomcih. Naredi nas za dober zgled tistim, ki se Te zavedajo.';

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
  String get hadith => 'hadis';

  @override
  String get hadithCollection => 'Zbirka hadisov';

  @override
  String get hadithBooks => 'Haditske knjige';

  @override
  String get searchHadith => 'Iskanje Hadith';

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
  String get openInYoutube => 'Odpri v YouTubu';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Fasting';

  @override
  String get quranReading => 'Quran Reading';

  @override
  String get prayers => 'Prayers';

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
  String get islamicNewYear => 'islamsko novo leto';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1. ramadan';

  @override
  String get specialDayDateLaylatAlQadr => '27 ramazan';

  @override
  String get specialDayDateEidAlFitr => '1 šavval';

  @override
  String get specialDayDateEidAlAdha => '10 zul hidždže';

  @override
  String get specialDayDateIslamicNewYear => '1 muharram';

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
    return 'Napaka kompasa: $error';
  }

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
    return 'Oglejte si $appName: Najboljša aplikacija za islamski življenjski slog! $url';
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
  String get zikrCompletedMashAllah => 'Dokončano! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah je daleč nad vsako nepopolnostjo.';

  @override
  String get zikrMeaningAlhamdulillah => 'Vsa slava pripada Allahu.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah je največji.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Ni boga razen Allaha.';

  @override
  String get zikrMeaningAstaghfirullah => 'Iščem Allahovo odpuščanje.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Ni moči in moči razen prek Allaha.';

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
  String get offlineDownloadManager => 'Offline Download Manager';

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
  String get audioVoice => 'Audio Voice';

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
  String get diagnosticsNotSet => 'Ni nastavljeno';

  @override
  String get diagnosticsPrayerProfile => 'Profil molitve';

  @override
  String get diagnosticsPrayerSource => 'Molitvena avtoriteta';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Po meri / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Ročni koti po meri (brez institucionalnega vira)';

  @override
  String get diagnosticsCloudDriven => 'Poganja oblak';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Zvočna sredstva Kur\'ana';

  @override
  String get diagnosticsAudioAssets => 'Zvočna sredstva';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count datotek';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Branje manifesta ni uspelo: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Lokalizacija Locales';

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
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Calibration required. Rotate device in figure-8.';

  @override
  String get dailyVerse => 'Dnevni verz';

  @override
  String get todaysIbadah => 'Današnji ibadah';

  @override
  String get quickAccess => 'Hitri dostop';

  @override
  String get assistant => 'Pomočnik';

  @override
  String get places => 'Mesta';

  @override
  String get library => 'Knjižnica';

  @override
  String get analytics => 'analitika';

  @override
  String get dailyDuas => 'Dnevne Due';

  @override
  String essentialDuas(String count) {
    return '$count bistvene besede';
  }

  @override
  String get duaUnavailableTitle => 'Preverjene due še niso na voljo';

  @override
  String get duaUnavailableBody =>
      'Preverjeni dnevni dua še niso bili sinhronizirani s to napravo. Povežite se z virom v oblaku, da naložite izvirne due namesto nepreverjenega nadomestnega.';

  @override
  String get duaCategoryQuranic => 'Kur\'anska dua';

  @override
  String get duaCategoryMorningEvening => 'Zjutraj in zvečer';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Zaščita';

  @override
  String get duaCategoryBeginning => 'Začetki';

  @override
  String get duaCategorySleep => 'spi';

  @override
  String get duaCategoryFoodDrink => 'Hrana in pijača';

  @override
  String get duaCategoryForgiveness => 'Odpuščanje';

  @override
  String get duaCategoryHome => 'domov';

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
  String get islamicEducation => 'Islamsko izobraževanje';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Zbirke hadisov';

  @override
  String get hadithSourcePending => 'Preverjen vir čaka';

  @override
  String get hadithUnavailableTitle =>
      'Preverjene zbirke hadisov še niso na voljo';

  @override
  String get hadithUnavailableBody =>
      'Ta zgradba je še vedno odvisna od nepreverjenega zunanjega vira hadisa. Brskanje po hadisih ostane onemogočeno, dokler se izvorni nabor podatkov ne sinhronizira.';

  @override
  String get paywallUnlockAll =>
      'Odklenite vse funkcije za svoje duhovno potovanje';

  @override
  String get paywallFeature1Title => 'Nevronski pomočnik Plus';

  @override
  String get paywallFeature1Desc =>
      'Neomejena vprašanja in odgovori, ki jih poganja AI';

  @override
  String get paywallFeature2Title => 'Neomejeno brez povezave';

  @override
  String get paywallFeature2Desc => 'Prenesite vse recitacije';

  @override
  String get paywallFeature3Title => 'Ekskluzivni modeli';

  @override
  String get paywallFeature3Desc => 'Premium teme in pisave';

  @override
  String get paywallFeature4Title => 'Brez oglasov';

  @override
  String get paywallFeature4Desc => 'Nič oglasov';

  @override
  String get paywallGetAccess => 'Pridobite doživljenjski dostop — 1,00 USD';

  @override
  String get restorePurchases => 'Obnovi nakupe';

  @override
  String get zakatCalculator => 'Kalkulator zakata';

  @override
  String get zakatGold => 'zlato (Altın)';

  @override
  String get zakatSilver => 'Srebro (Gümüş)';

  @override
  String get zakatCashBank => 'Gotovina / banka';

  @override
  String get zakatBusiness => 'Posel';

  @override
  String get zakatInvestments => 'Naložbe';

  @override
  String get zakatWeightGrams => 'Teža (g)';

  @override
  String get zakatPricePerGram => 'Cena/g';

  @override
  String get zakatTotalAmount => 'Skupni znesek';

  @override
  String get zakatInventoryValue => 'Inventarna vrednost';

  @override
  String get zakatDebts => 'Dolgovi';

  @override
  String get zakatTotal => 'Skupaj';

  @override
  String get calculateZakat => 'Izračunajte Zakat';

  @override
  String get nisabNotReached => 'Nisab ni dosežen. Zakat ni obvezen.';

  @override
  String get totalZakat => 'Skupni zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Sredstva: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zlati zakat';

  @override
  String get zakatSilverZakat => 'Srebrni zakat';

  @override
  String get zakatCashZakat => 'Gotovina Zakat';

  @override
  String get zakatBusinessZakat => 'Poslovni Zakat';

  @override
  String get zakatInvestmentZakat => 'Naložba Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Dosežena je dnevna omejitev poizvedb. Nadgradite na Premium za neomejeno.';

  @override
  String get chatbotErrorMsg =>
      'Nisem mogel ustvariti odgovora. prosim poskusite ponovno';

  @override
  String get chatbotOfflinePrompt =>
      'Preverjena baza islamskega znanja brez povezave je še vedno v pripravi. Nadomestni način brez povezave lahko omogočite zdaj, vendar bo prikazoval samo omejena varna sporočila, dokler izvorni nabor podatkov ne bo pripravljen.\n\nAli želite omogočiti nadomestni način brez povezave?';

  @override
  String get chatbotOfflineSwitched =>
      'Nadomestni način brez povezave je omogočen. Preverjeni lokalni islamski odgovori še niso pripravljeni.';

  @override
  String get chatbotOfflineDownloadLabel =>
      'Omogoči nadomestni način brez povezave';

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
  String get downloadAction => 'Download';

  @override
  String get resumeDownload => 'Resume Download';

  @override
  String get deleteDownloadedFiles => 'Delete Downloaded Files';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Download canceled for $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Download completed for $reciter.';
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
  String get sukunMixerSubtitle => 'Mešalnik narave in Kur\'ana';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (narava)';

  @override
  String get sukunRainOfMercy => 'Dež usmiljenja';

  @override
  String get sukunGardenOfPeace => 'Vrt miru';

  @override
  String get sukunMidnightCalm => 'Polnočni mir';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Zvočne pokrajine niso na voljo';

  @override
  String get sukunUnavailableBody =>
      'Ta zgradba še ne vključuje zahtevanih sredstev zvočne pokrajine Sukun.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Dnevni niz';

  @override
  String get bestStreak => 'Najboljši niz';

  @override
  String get chatbotCloudAiLabel => 'AI v oblaku';

  @override
  String get chatbotLocalAiLabel => 'Nadomestni način brez povezave';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Omogoči nadomestni način brez povezave';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count ostalo';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API ni konfiguriran. Preklopite na lokalni AI.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Preverjene lokalne islamske smernice še niso na voljo. Preklopite na Cloud AI za pridobljene odgovore.';

  @override
  String get mosques => 'mošeje';

  @override
  String get halalFood => 'Halal hrana';

  @override
  String get placesSearchArea => 'Preiščite to območje';

  @override
  String get nearbyMosques => 'Bližnje mošeje';

  @override
  String get islamicSchools => 'Islamske šole';

  @override
  String placesFoundCount(String count) {
    return '$count najden';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km stran';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Napaka API-ja: $statusCode';
  }

  @override
  String get placesNetworkError => 'Omrežna napaka. prosim poskusite ponovno';

  @override
  String get unknownPlaceName => 'Neznano ime';

  @override
  String get islamicPlaceFallback => 'Islamsko mesto';

  @override
  String get asmaMeaning1 => 'The Beneficent';

  @override
  String get asmaMeaning2 => 'Usmiljeni';

  @override
  String get asmaMeaning3 => 'Kralj / Večni gospodar';

  @override
  String get asmaMeaning4 => 'Najsvetejše';

  @override
  String get asmaMeaning5 => 'Vir miru';

  @override
  String get asmaMeaning6 => 'Dajalec varnosti';

  @override
  String get asmaMeaning7 => 'The Guardian';

  @override
  String get asmaMeaning8 => 'The Precious / The Most Mighty';

  @override
  String get asmaMeaning9 => 'The Compeller';

  @override
  String get asmaMeaning10 => 'Največji';

  @override
  String get asmaMeaning11 => 'Ustvarjalec';

  @override
  String get asmaMeaning12 => 'Ustvarjalec reda';

  @override
  String get asmaMeaning13 => 'Oblikovalec lepote';

  @override
  String get asmaMeaning14 => 'Odpuščanje';

  @override
  String get asmaMeaning15 => 'Uničevalec';

  @override
  String get asmaMeaning16 => 'Dajalec vseh';

  @override
  String get asmaMeaning17 => 'Vzdrževalec';

  @override
  String get asmaMeaning18 => 'Odpirač';

  @override
  String get asmaMeaning19 => 'Poznavalec vseh';

  @override
  String get asmaMeaning20 => 'Constrictor';

  @override
  String get asmaMeaning21 => 'Razbremenilec';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'The Bestower of Honor';

  @override
  String get asmaMeaning25 => 'Poniževalec';

  @override
  String get asmaMeaning26 => 'Slišalec vseh';

  @override
  String get asmaMeaning27 => 'Videc vseh';

  @override
  String get asmaMeaning28 => 'Sodnik';

  @override
  String get asmaMeaning29 => 'The Just';

  @override
  String get asmaMeaning30 => 'Subtilni';

  @override
  String get asmaMeaning31 => 'The All Aware';

  @override
  String get asmaMeaning32 => 'The Forebearing';

  @override
  String get asmaMeaning33 => 'Veličastno';

  @override
  String get asmaMeaning34 => 'Veliki odpuščalec';

  @override
  String get asmaMeaning35 => 'Nagrajevalec hvaležnosti';

  @override
  String get asmaMeaning36 => 'Najvišji';

  @override
  String get asmaMeaning37 => 'Največji';

  @override
  String get asmaMeaning38 => 'Ohranjevalnik';

  @override
  String get asmaMeaning39 => 'The Nourisher';

  @override
  String get asmaMeaning40 => 'The Reckoner';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'The Generous';

  @override
  String get asmaMeaning43 => 'Pozorni';

  @override
  String get asmaMeaning44 => 'Odziv na molitev';

  @override
  String get asmaMeaning45 => 'The All Comprehending';

  @override
  String get asmaMeaning46 => 'The Perfectly Wise';

  @override
  String get asmaMeaning47 => 'Ljubeči';

  @override
  String get asmaMeaning48 => 'The Most Glorious One';

  @override
  String get asmaMeaning49 => 'Vstajenec';

  @override
  String get asmaMeaning50 => 'The Witness';

  @override
  String get asmaMeaning51 => 'Resnica';

  @override
  String get asmaMeaning52 => 'Vsezadostni skrbnik';

  @override
  String get asmaMeaning53 => 'Posednik vseh moči';

  @override
  String get asmaMeaning54 => 'The Forceful';

  @override
  String get asmaMeaning55 => 'Zaščitnik';

  @override
  String get asmaMeaning56 => 'Pohvaljeni';

  @override
  String get asmaMeaning57 => 'Cenilec';

  @override
  String get asmaMeaning58 => 'Začetnik';

  @override
  String get asmaMeaning59 => 'Restavrator';

  @override
  String get asmaMeaning60 => 'Dajalec življenja';

  @override
  String get asmaMeaning61 => 'Jemalec življenja';

  @override
  String get asmaMeaning62 => 'The Ever Living';

  @override
  String get asmaMeaning63 => 'Samooskrbni vzdrževalec';

  @override
  String get asmaMeaning64 => 'Iskalec';

  @override
  String get asmaMeaning65 => 'The Glorious';

  @override
  String get asmaMeaning66 => 'Edini';

  @override
  String get asmaMeaning67 => 'The One';

  @override
  String get asmaMeaning68 => 'Eden, ki ga vsi iščejo';

  @override
  String get asmaMeaning69 => 'Mogočni';

  @override
  String get asmaMeaning70 => 'Ustvarjalec vse moči';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'Odlagalec';

  @override
  String get asmaMeaning73 => 'Prvi';

  @override
  String get asmaMeaning74 => 'Zadnji';

  @override
  String get asmaMeaning75 => 'Manifest';

  @override
  String get asmaMeaning76 => 'Skrito';

  @override
  String get asmaMeaning77 => 'Guverner';

  @override
  String get asmaMeaning78 => 'Najvišji';

  @override
  String get asmaMeaning79 => 'Delalec dobrega';

  @override
  String get asmaMeaning80 => 'Vodnik po kesanju';

  @override
  String get asmaMeaning81 => 'Maščevalec';

  @override
  String get asmaMeaning82 => 'Odpuščajoči';

  @override
  String get asmaMeaning83 => 'Klement';

  @override
  String get asmaMeaning84 => 'Lastnik / Suveren vseh';

  @override
  String get asmaMeaning85 => 'Posednik veličanstva in darovosti';

  @override
  String get asmaMeaning86 => 'Equitable One';

  @override
  String get asmaMeaning87 => 'Nabiralec';

  @override
  String get asmaMeaning88 => 'Bogataš';

  @override
  String get asmaMeaning89 => 'The Enricher';

  @override
  String get asmaMeaning90 => 'Preprečevalec škode';

  @override
  String get asmaMeaning91 => 'Prinašalec škode';

  @override
  String get asmaMeaning92 => 'Podeljevalec koristi';

  @override
  String get asmaMeaning93 => 'Svetloba';

  @override
  String get asmaMeaning94 => 'Vodnik';

  @override
  String get asmaMeaning95 => 'Začetnik';

  @override
  String get asmaMeaning96 => 'Večni';

  @override
  String get asmaMeaning97 => 'Dedič';

  @override
  String get asmaMeaning98 => 'The Most Righteous Guide';

  @override
  String get asmaMeaning99 => 'The Patient One';
}
