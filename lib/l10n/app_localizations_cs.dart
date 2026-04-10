// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get appTitle => 'Cesta Alláha';

  @override
  String get splashTagline => 'Islámská cesta světla';

  @override
  String get home => 'Domov';

  @override
  String get quran => 'Korán';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Kalendář';

  @override
  String get settings => 'Nastavení';

  @override
  String get nextPrayer => 'Další modlitba';

  @override
  String get prayerTimes => 'Modlitební časy';

  @override
  String get continueReading => 'Pokračovat ve čtení';

  @override
  String get getLifetimePro => 'Získejte Lifetime Pro';

  @override
  String get unlockTajweed => 'Odemkněte Tajweed a pokročilé funkce';

  @override
  String get prayerCalculation => 'Výpočet modlitby';

  @override
  String get method => 'Metoda výpočtu';

  @override
  String get madhab => 'Asr Juristická metoda';

  @override
  String get surahs => 'súry';

  @override
  String get ayahs => 'Ayahs';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Východ slunce';

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
    return 'Čas na $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Je čas se modlit $prayerName.';
  }

  @override
  String get dataStorage => 'Data a úložiště';

  @override
  String get clearCache => 'Vymazat mezipaměť';

  @override
  String get cacheClearedSuccess => 'Mezipaměť byla úspěšně vymazána';

  @override
  String get location => 'Umístění';

  @override
  String get language => 'Jazyk';

  @override
  String get selectLanguage => 'Vyberte Jazyk';

  @override
  String get searchLanguage => 'Hledejte ve více než 180 jazycích...';

  @override
  String get systemDefault => 'Výchozí nastavení systému';

  @override
  String get currentLocation => 'Aktuální poloha (GPS)';

  @override
  String get locationServiceDisabled => 'Služba určování polohy je zakázána.';

  @override
  String get locationPermissionDenied => 'Povolení k poloze odepřeno.';

  @override
  String citiesCount(String count) {
    return '$count měst';
  }

  @override
  String get search => 'Vyhledávání';

  @override
  String get searchHint => 'Vyhledávání...';

  @override
  String get noResults => 'Nebyly nalezeny žádné výsledky';

  @override
  String get loading => 'Načítání...';

  @override
  String get error => 'Chyba';

  @override
  String get appErrorOccurred => 'Došlo k chybě';

  @override
  String get appUnknownError => 'Neznámá chyba';

  @override
  String get retry => 'Zkuste to znovu';

  @override
  String get refreshAction => 'Obnovit';

  @override
  String get cancel => 'Zrušit';

  @override
  String get save => 'Uložit';

  @override
  String get delete => 'Vymazat';

  @override
  String get edit => 'Upravit';

  @override
  String get close => 'Blízko';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Ano';

  @override
  String get no => 'Žádný';

  @override
  String get surah => 'súra';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Strana';

  @override
  String get reading => 'Čtení';

  @override
  String get recitation => 'Přednes';

  @override
  String get translation => 'Překlad';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Načítání tafsir...';

  @override
  String get tafsirSourceLabel => 'Zdroj Tafsir';

  @override
  String get tafsirNoSurahFound => 'Pro tuto súru nebyl nalezen žádný tafsir.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Pro ayah $ayah nebyl nalezen žádný tafsir.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir se nepodařilo načíst.';

  @override
  String get tafsirNoTextForAyah => 'Pro tento ayah není žádný text tafsir.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Stahování tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Načítání tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Zdroj Tafsir vrátil chybu HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Vybraný zdroj tafsir nevrátil žádné záznamy.';

  @override
  String get bookmarks => 'Záložky';

  @override
  String get addBookmark => 'Přidat záložku';

  @override
  String get removeBookmark => 'Odebrat záložku';

  @override
  String get lastRead => 'Naposledy přečteno';

  @override
  String get dailyZikr => 'Denní Zikr';

  @override
  String get duaMeaning1 =>
      'jiní se modlí: ‚Pane náš, dej nám dobro v tomto světě i v onom světě a chraň nás před mukami ohně.‘';

  @override
  String get duaMeaning2 =>
      'Bůh nezatěžuje žádnou duši víc, než může unést: každá získá všechno dobré, co vykonala, a trpí svým špatným – ‚Pane, neber nás do úkolu, pokud zapomeneme nebo uděláme chyby. Pane, nezatěžuj nás, jako jsi naložil ty před námi. Pane, nezatěžuj nás víc, než máme sílu unést. Odpusť nám, odpusť nám a smiluj se nad námi. Jsi náš ochránce, tak nám pomoz proti nevěřícím.‘';

  @override
  String get duaMeaning3 =>
      '„Náš Pane, nedopusť, aby se naše srdce odchýlila poté, co jsi nás vedl. Uděl nám své milosrdenství: Ty jsi věčný dar.';

  @override
  String get duaMeaning4 =>
      'Pane, dej, abych já a mé potomstvo pokračovali v modlitbě. Náš Pane, přijmi mou žádost.';

  @override
  String get duaMeaning5 =>
      'a sklop své křídlo v pokoře vůči nim v laskavosti a řekni: ‚Pane, smiluj se nad nimi, stejně jako se o mě starali, když jsem byl malý.‘';

  @override
  String get duaMeaning6 =>
      'buď vyvýšen Bůh, ten, kdo skutečně vládne. [Proroku], nespěchej s recitací, než bude zjevení zcela dokončeno, ale řekni: ‚Pane, rozmnož mě v poznání!‘';

  @override
  String get duaMeaning7 =>
      'Řekněte [Prorokovi]: ‚Pane, odpusť a smiluj se: Ty jsi nejmilosrdnější ze všech.‘';

  @override
  String get duaMeaning8 =>
      'ti, kdo se modlí: ‚Pane náš, dej nám radost z našich manželů a potomků. Dej nám dobrý příklad pro ty, kteří Tě znají.\"';

  @override
  String get morningZikr => 'Ráno Zikr';

  @override
  String get eveningZikr => 'Večerní Zikr';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masa\'il';

  @override
  String get hadith => 'hadísy';

  @override
  String get hadithCollection => 'Hadith Collection';

  @override
  String get hadithBooks => 'Hadith knihy';

  @override
  String get searchHadith => 'Prohledejte hadísy';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Jména Alláha';

  @override
  String get liveTv => 'Živá televize';

  @override
  String get watchLive => 'Sledujte živě';

  @override
  String get streamError => 'Chyba streamování';

  @override
  String get reload => 'Znovu načíst';

  @override
  String get openInYoutube => 'Otevřít na YouTube';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Půst';

  @override
  String get quranReading => 'Čtení Koránu';

  @override
  String get prayers => 'Modlitby';

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
  String get dhikrCount => 'Hrabě Dhikr';

  @override
  String get weeklyProgress => 'Týdenní pokrok';

  @override
  String get monthlyProgress => 'Měsíční pokrok';

  @override
  String get statistics => 'Statistika';

  @override
  String get hijriCalendar => 'Kalendář hidžra';

  @override
  String get gregorianCalendar => 'Gregoriánský kalendář';

  @override
  String get today => 'Dnes';

  @override
  String get tomorrow => 'Zítra';

  @override
  String get yesterday => 'Včera';

  @override
  String get specialDays => 'Speciální dny';

  @override
  String get ramadan => 'Ramadán';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Islámský nový rok';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadán';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadán';

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
  String get qiblaDirection => 'Směr Qibla';

  @override
  String get compass => 'Kompas';

  @override
  String get degrees => 'stupně';

  @override
  String get north => 'Severní';

  @override
  String get qiblaFound => 'Qibla nalezena!';

  @override
  String get turnDevice => 'Otočte své zařízení čelem k Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Chyba kompasu: $error';
  }

  @override
  String get notifications => 'Oznámení';

  @override
  String get prayerNotifications => 'Modlitební oznámení';

  @override
  String get enableNotifications => 'Povolit oznámení';

  @override
  String get notificationTime => 'Čas oznámení';

  @override
  String get beforePrayer => 'minut před modlitbou';

  @override
  String get theme => 'Téma';

  @override
  String get lightMode => 'Světelný režim';

  @override
  String get darkMode => 'Tmavý režim';

  @override
  String get systemTheme => 'Systémové téma';

  @override
  String get about => 'O';

  @override
  String get version => 'Verze';

  @override
  String get privacyPolicy => 'Zásady ochrany osobních údajů';

  @override
  String get termsOfService => 'Podmínky služby';

  @override
  String get contactUs => 'Kontaktujte nás';

  @override
  String get rateApp => 'Ohodnoťte aplikaci';

  @override
  String get shareApp => 'Sdílet aplikaci';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Podívejte se na $appName: Nejlepší aplikace pro islámský životní styl! $url';
  }

  @override
  String get downloadManager => 'Správce stahování';

  @override
  String get downloads => 'Stahování';

  @override
  String get downloading => 'Stahování...';

  @override
  String get downloadComplete => 'Stahování dokončeno';

  @override
  String get downloadFailed => 'Stahování se nezdařilo';

  @override
  String get offlineMode => 'Režim offline';

  @override
  String get noInternet => 'Žádné připojení k internetu';

  @override
  String get checkConnection => 'Zkontrolujte prosím své připojení';

  @override
  String get premium => 'Pojistné';

  @override
  String get upgradeToPro => 'Upgradujte na Pro';

  @override
  String get proFeatures => 'Pro funkce';

  @override
  String get removeAds => 'Odebrat reklamy';

  @override
  String get unlockAll => 'Odemknout veškerý obsah';

  @override
  String get exclusiveContent => 'Exkluzivní obsah';

  @override
  String get welcome => 'Vítejte';

  @override
  String get getStarted => 'Začněte';

  @override
  String get skip => 'Přeskočit';

  @override
  String get next => 'Další';

  @override
  String get done => 'Hotovo';

  @override
  String get onboarding1Title => 'Vítejte na cestě Alláha';

  @override
  String get onboarding1Desc =>
      'Vaše kompletní islámská doprovodná aplikace pro modlitební časy, Korán a další';

  @override
  String get onboarding2Title => 'Modlitební časy';

  @override
  String get onboarding2Desc => 'Přesné časy modliteb na základě vaší polohy';

  @override
  String get onboarding3Title => 'Korán a další';

  @override
  String get onboarding3Desc =>
      'Přečtěte si Korán, sledujte své čtení a prozkoumejte islámský obsah';

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
  String get zikrCompletedMashAllah => 'Hotovo! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Alláh je daleko nad každou nedokonalostí.';

  @override
  String get zikrMeaningAlhamdulillah => 'Všechna chvála patří Alláhovi.';

  @override
  String get zikrMeaningAllahuAkbar => 'Alláh je největší.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Není boha kromě Alláha.';

  @override
  String get zikrMeaningAstaghfirullah => 'Žádám Alláha o odpuštění.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Neexistuje žádná síla a žádná síla než skrze Alláha.';

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
  String get offlineDownloadManager => 'Správce stahování offline';

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
  String get audioVoice => 'Zvuk Hlas';

  @override
  String get audioVoiceMisharyAlafasy => 'Muž (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Muž (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'muž (Sudais)';

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
  String get diagnosticsNotSet => 'Není nastaveno';

  @override
  String get diagnosticsPrayerProfile => 'Modlitební profil';

  @override
  String get diagnosticsPrayerSource => 'Autorita modlitby';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Vlastní / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manuální uživatelské úhly (žádný institucionální zdroj)';

  @override
  String get diagnosticsCloudDriven => 'Cloud Driven';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Zvuková aktiva Koránu';

  @override
  String get diagnosticsAudioAssets => 'Zvuková aktiva';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count souborů';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Přečtení manifestu se nezdařilo: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Lokalizace Lokalizace';

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
      'V Supabase chybí cloudové tabulky; sdružená záložní aktivní';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Metadata cloud juz chybí; sdružená strukturální záložní aktivní';

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
  String get dailyVerse => 'Denní verš';

  @override
  String get todaysIbadah => 'Dnešní Ibadah';

  @override
  String get quickAccess => 'Rychlý přístup';

  @override
  String get assistant => 'Asistent';

  @override
  String get places => 'Místa';

  @override
  String get library => 'Knihovna';

  @override
  String get analytics => 'Analytics';

  @override
  String get dailyDuas => 'Denní Duas';

  @override
  String essentialDuas(String count) {
    return '$count zásadní duas';
  }

  @override
  String get duaUnavailableTitle => 'Ověřené dua zatím nejsou k dispozici';

  @override
  String get duaUnavailableBody =>
      'Ověřené denní dua zatím nebyly synchronizovány do tohoto zařízení. Připojte se ke cloudovému zdroji a načtěte duas ze zdrojů namísto neověřeného záložního řešení.';

  @override
  String get duaCategoryQuranic => 'Dua koránu';

  @override
  String get duaCategoryMorningEvening => 'Ráno & Večer';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Ochrana';

  @override
  String get duaCategoryBeginning => 'Začátky';

  @override
  String get duaCategorySleep => 'Spát';

  @override
  String get duaCategoryFoodDrink => 'Jídlo a pití';

  @override
  String get duaCategoryForgiveness => 'Odpuštění';

  @override
  String get duaCategoryHome => 'Domov';

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
  String get islamicEducation => 'Islámská výchova';

  @override
  String get sukunAudioTitle => 'Zvukové scenérie Sukun';

  @override
  String get hadithCollections => 'Hadith Collections';

  @override
  String get hadithSourcePending => 'Čeká se na ověřený zdroj';

  @override
  String get hadithUnavailableTitle =>
      'Ověřené sbírky hadísů zatím nejsou k dispozici';

  @override
  String get hadithUnavailableBody =>
      'Toto sestavení stále závisí na neověřeném externím zdroji hadísů. Procházení hadísů zůstane zakázáno, dokud nebude synchronizována zdrojová datová sada.';

  @override
  String get paywallUnlockAll =>
      'Odemkněte všechny funkce pro svou duchovní cestu';

  @override
  String get premiumProductUnavailable =>
      'Prémiový produkt není momentálně dostupný. Zkuste to znovu později.';

  @override
  String get premiumPurchaseFailed =>
      'Nákup nebylo možné dokončit. Zkuste to prosím znovu.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc =>
      'Neomezené dotazy a odpovědi s umělou inteligencí';

  @override
  String get paywallFeature2Title => 'Neomezený režim offline';

  @override
  String get paywallFeature2Desc => 'Stáhnout všechny recitace';

  @override
  String get paywallFeature3Title => 'Exkluzivní vzory';

  @override
  String get paywallFeature3Desc => 'Prémiové motivy a písma';

  @override
  String get paywallFeature4Title => 'Bez reklam';

  @override
  String get paywallFeature4Desc => 'Nulové reklamy';

  @override
  String get paywallGetAccess => 'Získejte doživotní přístup – 1,00 \$';

  @override
  String get restorePurchases => 'Obnovit nákupy';

  @override
  String get zakatCalculator => 'Kalkulačka Zakat';

  @override
  String get zakatGold => 'zlato (Altın)';

  @override
  String get zakatSilver => 'Stříbro (Gümüş)';

  @override
  String get zakatCashBank => 'Hotovost / Banka';

  @override
  String get zakatBusiness => 'podnikání';

  @override
  String get zakatInvestments => 'Investice';

  @override
  String get zakatWeightGrams => 'Hmotnost (g)';

  @override
  String get zakatPricePerGram => 'Cena/g';

  @override
  String get zakatTotalAmount => 'Celková částka';

  @override
  String get zakatInventoryValue => 'Hodnota zásob';

  @override
  String get zakatDebts => 'Dluhy';

  @override
  String get zakatTotal => 'Celkový';

  @override
  String get calculateZakat => 'Vypočítejte Zakat';

  @override
  String get nisabNotReached => 'Nisab není dosažen. Zakat není povinný.';

  @override
  String get totalZakat => 'Totální zakát';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Aktiva: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zlatý zakát';

  @override
  String get zakatSilverZakat => 'Stříbrný zakát';

  @override
  String get zakatCashZakat => 'Zakát v hotovosti';

  @override
  String get zakatBusinessZakat => 'Obchodní zakat';

  @override
  String get zakatInvestmentZakat => 'Investice Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Bylo dosaženo denního limitu dotazů. Upgradujte na Premium neomezeně.';

  @override
  String get chatbotErrorMsg =>
      'Nemohl jsem vygenerovat odpověď. Zkuste to prosím znovu.';

  @override
  String get chatbotOfflinePrompt =>
      'Ověřená offline islámská znalostní báze se stále zpracovává. Záložní režim offline můžete povolit nyní, ale bude zobrazovat pouze omezené bezpečné zprávy, dokud nebude zdrojová datová sada připravena.\n\nChcete povolit záložní režim offline?';

  @override
  String get chatbotOfflineSwitched =>
      'Záložní režim offline povolen. Ověřené místní islámské odpovědi ještě nejsou připraveny.';

  @override
  String get chatbotOfflineDownloadLabel => 'Povolit záložní režim offline';

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
  String get downloadAction => 'Stáhnout';

  @override
  String get resumeDownload => 'Obnovit stahování';

  @override
  String get deleteDownloadedFiles => 'Smazat stažené soubory';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Stahování bylo zrušeno pro $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Stahování pro $reciter dokončeno.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Stahování pro $reciter bylo dokončeno s $failed neúspěšnými súrami (staženo $downloaded/$total).';
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
  String get sukunMixerSubtitle => 'Mixér přírody a koránu';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (příroda)';

  @override
  String get sukunRainOfMercy => 'Rain of Mercy';

  @override
  String get sukunGardenOfPeace => 'Zahrada míru';

  @override
  String get sukunMidnightCalm => 'Půlnoční klid';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Zvukové scény nejsou k dispozici';

  @override
  String get sukunUnavailableBody =>
      'Tato sestava zatím nezahrnuje požadované zdroje zvukového prostředí Sukun.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Denní pruh';

  @override
  String get bestStreak => 'Nejlepší série';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Záložní režim offline';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Povolit záložní režim offline';

  @override
  String chatbotQueriesLeft(String count) {
    return 'Zbývá $count';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API není nakonfigurováno. Přepněte na místní umělou inteligenci.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Ověřené místní islámské pokyny zatím nejsou k dispozici. Chcete-li získat odpovědi ze zdrojů, přejděte na cloudovou umělou inteligenci.';

  @override
  String get mosques => 'mešity';

  @override
  String get halalFood => 'Halal jídlo';

  @override
  String get placesSearchArea => 'Prohledejte tuto oblast';

  @override
  String get nearbyMosques => 'Blízké mešity';

  @override
  String get islamicSchools => 'islámské školy';

  @override
  String placesFoundCount(String count) {
    return '$count nalezeno';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km daleko';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Chyba API: $statusCode';
  }

  @override
  String get placesNetworkError => 'Chyba sítě. Zkuste to prosím znovu.';

  @override
  String get placesLocationRequiredTitle => 'Místo je povinné';

  @override
  String get placesLocationRequiredBody =>
      'Nejprve nastavte místo, aby bylo možné přesně prohledat blízké mešity, halal jídlo a islámské školy.';

  @override
  String get placesMapTilesUnavailableTitle =>
      'Dlaždice mapy nejsou k dispozici';

  @override
  String get placesMapTilesUnavailableBody =>
      'Pro toto sestavení zatím není nakonfigurován ověřený zdroj mapových dlaždic. Místa v okolí se mohou stále načítat z vašeho uloženého místa.';

  @override
  String get unknownPlaceName => 'Neznámé jméno';

  @override
  String get islamicPlaceFallback => 'Islámské místo';

  @override
  String get asmaMeaning1 => 'Prospěšný';

  @override
  String get asmaMeaning2 => 'The Milosrdný';

  @override
  String get asmaMeaning3 => 'Král / Věčný pán';

  @override
  String get asmaMeaning4 => 'Nejsvětější';

  @override
  String get asmaMeaning5 => 'Zdroj míru';

  @override
  String get asmaMeaning6 => 'Dárce bezpečnosti';

  @override
  String get asmaMeaning7 => 'The Guardian';

  @override
  String get asmaMeaning8 => 'The Precious / The Most Mighty';

  @override
  String get asmaMeaning9 => 'The Compeller';

  @override
  String get asmaMeaning10 => 'Největší';

  @override
  String get asmaMeaning11 => 'Tvůrce';

  @override
  String get asmaMeaning12 => 'Tvůrce objednávky';

  @override
  String get asmaMeaning13 => 'Tvůrce krásy';

  @override
  String get asmaMeaning14 => 'The Forgiving';

  @override
  String get asmaMeaning15 => 'The Subduer';

  @override
  String get asmaMeaning16 => 'Dárce všeho';

  @override
  String get asmaMeaning17 => 'The Sustainer';

  @override
  String get asmaMeaning18 => 'Otevírák';

  @override
  String get asmaMeaning19 => 'Znalý všeho';

  @override
  String get asmaMeaning20 => 'The Constrictor';

  @override
  String get asmaMeaning21 => 'Uvolňovač';

  @override
  String get asmaMeaning22 => 'Abaser';

  @override
  String get asmaMeaning23 => 'The Exalter';

  @override
  String get asmaMeaning24 => 'The Bestower of Honor';

  @override
  String get asmaMeaning25 => 'Ponižující';

  @override
  String get asmaMeaning26 => 'Slyšící všech';

  @override
  String get asmaMeaning27 => 'Věštec všech';

  @override
  String get asmaMeaning28 => 'Soudce';

  @override
  String get asmaMeaning29 => 'The Just';

  @override
  String get asmaMeaning30 => 'Jemný';

  @override
  String get asmaMeaning31 => 'The All Aware';

  @override
  String get asmaMeaning32 => 'The Forbearing';

  @override
  String get asmaMeaning33 => 'The Magnificent';

  @override
  String get asmaMeaning34 => 'Velký odpouštějící';

  @override
  String get asmaMeaning35 => 'Odměna za vděčnost';

  @override
  String get asmaMeaning36 => 'Nejvyšší';

  @override
  String get asmaMeaning37 => 'Největší';

  @override
  String get asmaMeaning38 => 'The Preserver';

  @override
  String get asmaMeaning39 => 'The Nurisher';

  @override
  String get asmaMeaning40 => 'Reckoner';

  @override
  String get asmaMeaning41 => 'The Majestic';

  @override
  String get asmaMeaning42 => 'Štědrý';

  @override
  String get asmaMeaning43 => 'Bezpečný';

  @override
  String get asmaMeaning44 => 'Odpovídač na modlitbu';

  @override
  String get asmaMeaning45 => 'The All Comprehending';

  @override
  String get asmaMeaning46 => 'Dokonale moudrý';

  @override
  String get asmaMeaning47 => 'The Loving One';

  @override
  String get asmaMeaning48 => 'Ten nejslavnější';

  @override
  String get asmaMeaning49 => 'Resurrector';

  @override
  String get asmaMeaning50 => 'Svědek';

  @override
  String get asmaMeaning51 => 'Pravda';

  @override
  String get asmaMeaning52 => 'All-Sufficient Trustee';

  @override
  String get asmaMeaning53 => 'Vlastník veškeré síly';

  @override
  String get asmaMeaning54 => 'The Forceful';

  @override
  String get asmaMeaning55 => 'Ochránce';

  @override
  String get asmaMeaning56 => 'Chválený';

  @override
  String get asmaMeaning57 => 'Hodnotitel';

  @override
  String get asmaMeaning58 => 'Původce';

  @override
  String get asmaMeaning59 => 'The Restorer';

  @override
  String get asmaMeaning60 => 'Dárce života';

  @override
  String get asmaMeaning61 => 'The Taker of Life';

  @override
  String get asmaMeaning62 => 'Věčně žijící';

  @override
  String get asmaMeaning63 => 'Samostatný Sustainer';

  @override
  String get asmaMeaning64 => 'The Finder';

  @override
  String get asmaMeaning65 => 'The Glorious';

  @override
  String get asmaMeaning66 => 'The Only One';

  @override
  String get asmaMeaning67 => 'The One';

  @override
  String get asmaMeaning68 => 'Ten, který všichni hledají';

  @override
  String get asmaMeaning69 => 'Výkonný';

  @override
  String get asmaMeaning70 => 'Stvořitel veškeré moci';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'The Delayer';

  @override
  String get asmaMeaning73 => 'První';

  @override
  String get asmaMeaning74 => 'Poslední';

  @override
  String get asmaMeaning75 => 'Manifest';

  @override
  String get asmaMeaning76 => 'The Hidden';

  @override
  String get asmaMeaning77 => 'Guvernér';

  @override
  String get asmaMeaning78 => 'Nejvyšší';

  @override
  String get asmaMeaning79 => 'Působitel dobra';

  @override
  String get asmaMeaning80 => 'Průvodce pokáním';

  @override
  String get asmaMeaning81 => 'The Avenger';

  @override
  String get asmaMeaning82 => 'The Forgiver';

  @override
  String get asmaMeaning83 => 'Klement';

  @override
  String get asmaMeaning84 => 'Vlastník / Vládce všeho';

  @override
  String get asmaMeaning85 => 'Vlastník veličenstva a štědrosti';

  @override
  String get asmaMeaning86 => 'The Equitable One';

  @override
  String get asmaMeaning87 => 'The Gatherer';

  @override
  String get asmaMeaning88 => 'Bohatý';

  @override
  String get asmaMeaning89 => 'The Enricher';

  @override
  String get asmaMeaning90 => 'Preventer of Harm';

  @override
  String get asmaMeaning91 => 'Přinašeč škod';

  @override
  String get asmaMeaning92 => 'The Bestower of Benefits';

  @override
  String get asmaMeaning93 => 'Světlo';

  @override
  String get asmaMeaning94 => 'Průvodce';

  @override
  String get asmaMeaning95 => 'Původce';

  @override
  String get asmaMeaning96 => 'Věčný';

  @override
  String get asmaMeaning97 => 'Dědič';

  @override
  String get asmaMeaning98 => 'Nejspravedlivější průvodce';

  @override
  String get asmaMeaning99 => 'Pacient One';
}
