// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Armenian (`hy`).
class AppLocalizationsHy extends AppLocalizations {
  AppLocalizationsHy([String locale = 'hy']) : super(locale);

  @override
  String get appTitle => 'Ալլահի ճանապարհը';

  @override
  String get home => 'Տուն';

  @override
  String get quran => 'Ղուրան';

  @override
  String get qibla => 'Քիբլա';

  @override
  String get zikr => 'Զիքր';

  @override
  String get calendar => 'Օրացույց';

  @override
  String get settings => 'Կարգավորումներ';

  @override
  String get nextPrayer => 'Հաջորդ աղոթքը';

  @override
  String get prayerTimes => 'Աղոթքի ժամանակներ';

  @override
  String get continueReading => 'Շարունակել կարդալ';

  @override
  String get getLifetimePro => 'Ստացեք Lifetime Pro';

  @override
  String get unlockTajweed => 'Բացեք Tajweed-ը և առաջադեմ հատկությունները';

  @override
  String get prayerCalculation => 'Աղոթքի հաշվարկ';

  @override
  String get method => 'Հաշվարկի մեթոդ';

  @override
  String get madhab => 'Ասր Իրավաբանական Մեթոդ';

  @override
  String get surahs => 'Սուրաներ';

  @override
  String get ayahs => 'Այահներ';

  @override
  String get fajr => 'Ֆաջր';

  @override
  String get sunrise => 'Արեւածագ';

  @override
  String get dhuhr => 'Դուհր';

  @override
  String get asr => 'Ասր';

  @override
  String get maghrib => 'Մաղրիբ';

  @override
  String get isha => 'Իշա';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName-ի ժամանակը';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Ժամանակն է աղոթելու $prayerName:';
  }

  @override
  String get dataStorage => 'Տվյալներ և պահեստավորում';

  @override
  String get clearCache => 'Մաքրել քեշը';

  @override
  String get cacheClearedSuccess => 'Քեշը հաջողությամբ մաքրվեց';

  @override
  String get location => 'Գտնվելու վայրը';

  @override
  String get language => 'Լեզու';

  @override
  String get selectLanguage => 'Ընտրեք Լեզուն';

  @override
  String get searchLanguage => 'Որոնել 180+ լեզու...';

  @override
  String get systemDefault => 'Համակարգի լռելյայն';

  @override
  String get currentLocation => 'Ընթացիկ գտնվելու վայրը (GPS)';

  @override
  String get locationServiceDisabled =>
      'Տեղադրության ծառայությունն անջատված է:';

  @override
  String get locationPermissionDenied =>
      'Տեղադրության թույլտվությունը մերժվել է:';

  @override
  String citiesCount(String count) {
    return '$count քաղաքներ';
  }

  @override
  String get search => 'Որոնում';

  @override
  String get searchHint => 'Որոնել...';

  @override
  String get noResults => 'Ոչ մի արդյունք չի գտնվել';

  @override
  String get loading => 'Բեռնվում է...';

  @override
  String get error => 'Սխալ';

  @override
  String get retry => 'Կրկին փորձեք';

  @override
  String get cancel => 'Չեղարկել';

  @override
  String get save => 'Պահպանել';

  @override
  String get delete => 'Ջնջել';

  @override
  String get edit => 'Խմբագրել';

  @override
  String get close => 'Փակել';

  @override
  String get ok => 'Լավ';

  @override
  String get yes => 'Այո՛';

  @override
  String get no => 'Ոչ';

  @override
  String get surah => 'Սուրա';

  @override
  String get juz => 'Ջուզ';

  @override
  String get page => 'Էջ';

  @override
  String get reading => 'Ընթերցանություն';

  @override
  String get recitation => 'Ասմունք';

  @override
  String get translation => 'Թարգմանություն';

  @override
  String get tafsir => 'Թաֆսիր';

  @override
  String get bookmarks => 'Էջանիշեր';

  @override
  String get addBookmark => 'Ավելացնել էջանիշ';

  @override
  String get removeBookmark => 'Հեռացնել էջանիշը';

  @override
  String get lastRead => 'Վերջին ընթերցումը';

  @override
  String get dailyZikr => 'Ամենօրյա Զիքր';

  @override
  String get morningZikr => 'Առավոտյան Զիքր';

  @override
  String get eveningZikr => 'Երեկոյան Զիքր';

  @override
  String get tasbih => 'Թասբիհ';

  @override
  String get ahkab => 'Ահկամ';

  @override
  String get masaail => 'Մասաիլ';

  @override
  String get hadith => 'Հադիս';

  @override
  String get hadithCollection => 'Հադիսների ժողովածու';

  @override
  String get hadithBooks => 'Հադիսային գրքեր';

  @override
  String get searchHadith => 'Որոնել Հադիս';

  @override
  String get asmaulHusna => 'Ասմա-ուլ-Հուսնա';

  @override
  String get namesOfAllah => 'Ալլահի անունները';

  @override
  String get liveTv => 'Ուղիղ հեռուստատեսություն';

  @override
  String get watchLive => 'Դիտեք Ուղիղ եթեր';

  @override
  String get streamError => 'Հեռարձակման սխալ';

  @override
  String get reload => 'Վերբեռնել';

  @override
  String get openInYoutube => 'Բացեք YouTube-ում';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Պահք';

  @override
  String get quranReading => 'Ղուրանի ընթերցանություն';

  @override
  String get prayers => 'Աղոթքներ';

  @override
  String get dhikrCount => 'Դիքր կոմս';

  @override
  String get weeklyProgress => 'Շաբաթական առաջընթաց';

  @override
  String get monthlyProgress => 'Ամսական առաջընթաց';

  @override
  String get statistics => 'Վիճակագրություն';

  @override
  String get hijriCalendar => 'Հիջրի օրացույց';

  @override
  String get gregorianCalendar => 'Գրիգորյան օրացույց';

  @override
  String get today => 'Այսօր';

  @override
  String get tomorrow => 'Վաղը';

  @override
  String get yesterday => 'Երեկ';

  @override
  String get specialDays => 'Հատուկ օրեր';

  @override
  String get ramadan => 'Ռամադան';

  @override
  String get eidAlFitr => 'Էիդ Ալ-Ֆիտր';

  @override
  String get eidAlAdha => 'Կուրբան բայրամ';

  @override
  String get laylatAlQadr => 'Լեյլաթ Ալ-Քադր';

  @override
  String get qiblaDirection => 'Քիբլայի ուղղություն';

  @override
  String get compass => 'Կողմնացույց';

  @override
  String get degrees => 'աստիճաններ';

  @override
  String get north => 'Հյուսիսային';

  @override
  String get qiblaFound => 'Քիբլան գտնվեց:';

  @override
  String get turnDevice => 'Ձեր սարքը դարձրեք դեպի Քիբլան';

  @override
  String get notifications => 'Ծանուցումներ';

  @override
  String get prayerNotifications => 'Աղոթքի ծանուցումներ';

  @override
  String get enableNotifications => 'Միացնել ծանուցումները';

  @override
  String get notificationTime => 'Ծանուցման ժամանակը';

  @override
  String get beforePrayer => 'աղոթքից րոպեներ առաջ';

  @override
  String get theme => 'Թեմա';

  @override
  String get lightMode => 'Լույսի ռեժիմ';

  @override
  String get darkMode => 'Մութ ռեժիմ';

  @override
  String get systemTheme => 'Համակարգի թեմա';

  @override
  String get about => 'Մոտ';

  @override
  String get version => 'Տարբերակ';

  @override
  String get privacyPolicy => 'Գաղտնիության քաղաքականություն';

  @override
  String get termsOfService => 'Ծառայության պայմաններ';

  @override
  String get contactUs => 'Կապ մեզ հետ';

  @override
  String get rateApp => 'Գնահատեք հավելվածը';

  @override
  String get shareApp => 'Համօգտագործել հավելվածը';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Ներբեռնման մենեջեր';

  @override
  String get downloads => 'Ներբեռնումներ';

  @override
  String get downloading => 'Ներբեռնվում է...';

  @override
  String get downloadComplete => 'Ներբեռնումն ավարտված է';

  @override
  String get downloadFailed => 'Ներբեռնումը ձախողվեց';

  @override
  String get offlineMode => 'Անցանց ռեժիմ';

  @override
  String get noInternet => 'Ինտերնետ կապ չկա';

  @override
  String get checkConnection => 'Խնդրում ենք ստուգել ձեր կապը';

  @override
  String get premium => 'Պրեմիում';

  @override
  String get upgradeToPro => 'Թարմացրեք Pro-ի';

  @override
  String get proFeatures => 'Pro հատկանիշները';

  @override
  String get removeAds => 'Հեռացնել գովազդները';

  @override
  String get unlockAll => 'Բացել ամբողջ բովանդակությունը';

  @override
  String get exclusiveContent => 'Բացառիկ բովանդակություն';

  @override
  String get welcome => 'Բարի գալուստ';

  @override
  String get getStarted => 'Սկսեք';

  @override
  String get skip => 'Բաց թողնել';

  @override
  String get next => 'Հաջորդը';

  @override
  String get done => 'Կատարված է';

  @override
  String get onboarding1Title => 'Բարի գալուստ Ալլահի ճանապարհ';

  @override
  String get onboarding1Desc =>
      'Ձեր ամբողջական իսլամական ուղեկից հավելվածը աղոթքի ժամանակների, Ղուրանի և այլնի համար';

  @override
  String get onboarding2Title => 'Աղոթքի ժամանակներ';

  @override
  String get onboarding2Desc =>
      'Աղոթքի ճշգրիտ ժամերը՝ հիմնված ձեր գտնվելու վայրի վրա';

  @override
  String get onboarding3Title => 'Ղուրան և ավելին';

  @override
  String get onboarding3Desc =>
      'Կարդացեք Ղուրանը, հետևեք ձեր ընթերցանությանը և ուսումնասիրեք իսլամական բովանդակությունը';

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
  String get diagnosticsNotSet => 'Սահմանված չէ';

  @override
  String get diagnosticsPrayerProfile => 'Աղոթքի անձնագիր';

  @override
  String get diagnosticsPrayerSource => 'Աղոթքի Իշխանություն';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Հատուկ / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Ձեռքով հարմարեցված անկյուններ (ոչ ինստիտուցիոնալ աղբյուր)';

  @override
  String get diagnosticsCloudDriven => 'Cloud Driven';

  @override
  String get diagnosticsAdhanAudioAssets => 'Ադանի աուդիո ակտիվներ';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Ղուրանի աուդիո ակտիվներ';

  @override
  String get diagnosticsAudioAssets => 'Աուդիո ակտիվներ';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count ֆայլեր';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Չհաջողվեց կարդալ մանիֆեստը՝ $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Տեղայնացում Locales';

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
  String get dailyVerse => 'Ամենօրյա հատված';

  @override
  String get todaysIbadah => 'Այսօրվա Իբադան';

  @override
  String get quickAccess => 'Արագ մուտք';

  @override
  String get assistant => 'Օգնական';

  @override
  String get places => 'Վայրեր';

  @override
  String get library => 'Գրադարան';

  @override
  String get analytics => 'Վերլուծություն';

  @override
  String get dailyDuas => 'Daily Duas';

  @override
  String essentialDuas(String count) {
    return '$count էական աղոթքներ';
  }

  @override
  String get duaUnavailableTitle => 'Ստուգված դուաները դեռ հասանելի չեն';

  @override
  String get duaUnavailableBody =>
      'Ստուգված ամենօրյա դուաները դեռ չեն համաժամացվել այս սարքի հետ: Միացեք ամպային աղբյուրին՝ չստուգված հետադարձի փոխարեն բեռնելու աղբյուրից ստացված դուաները:';

  @override
  String get duaCategoryQuranic => 'Ղուրանի դուտա';

  @override
  String get duaCategoryMorningEvening => 'Առավոտ և երեկո';

  @override
  String get duaCategoryTasbih => 'Թասբիհ';

  @override
  String get duaCategoryProtection => 'Պաշտպանություն';

  @override
  String get duaCategoryBeginning => 'սկիզբներ';

  @override
  String get duaCategorySleep => 'Քնել';

  @override
  String get duaCategoryFoodDrink => 'Սնունդ և խմիչք';

  @override
  String get duaCategoryForgiveness => 'Ներողամտություն';

  @override
  String get duaCategoryHome => 'Տուն';

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
  String get islamicEducation => 'Իսլամական կրթություն';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Հադիսների հավաքածուներ';

  @override
  String get hadithSourcePending => 'Ստուգված աղբյուրը սպասվում է';

  @override
  String get hadithUnavailableTitle =>
      'Հադիսների ստուգված հավաքածուները դեռ հասանելի չեն';

  @override
  String get hadithUnavailableBody =>
      'Այս կառուցումը դեռևս կախված է չստուգված արտաքին հադիսների հոսքից: Հադիսների զննարկումն անջատված է մնում այնքան ժամանակ, քանի դեռ աղբյուրի տվյալների բազան չի համաժամացվում:';

  @override
  String get paywallUnlockAll =>
      'Բացեք բոլոր հնարավորությունները ձեր հոգևոր ճանապարհորդության համար';

  @override
  String get paywallFeature1Title => 'Նյարդային օգնական Plus';

  @override
  String get paywallFeature1Desc => 'Անսահմանափակ AI-ով աշխատող Q&A';

  @override
  String get paywallFeature2Title => 'Անսահմանափակ անցանց';

  @override
  String get paywallFeature2Desc => 'Ներբեռնեք բոլոր ասմունքները';

  @override
  String get paywallFeature3Title => 'Բացառիկ դիզայն';

  @override
  String get paywallFeature3Desc => 'Պրեմիում թեմաներ և տառատեսակներ';

  @override
  String get paywallFeature4Title => 'Առանց գովազդի';

  @override
  String get paywallFeature4Desc => 'Զրո գովազդ';

  @override
  String get paywallGetAccess => 'Ստացեք ցմահ մուտք՝ \$1,00';

  @override
  String get restorePurchases => 'Վերականգնել գնումները';

  @override
  String get zakatCalculator => 'Զաքաթի հաշվիչ';

  @override
  String get zakatGold => 'Ոսկի (Altın)';

  @override
  String get zakatSilver => 'Արծաթ (Gümüş)';

  @override
  String get zakatCashBank => 'Կանխիկ / Բանկ';

  @override
  String get zakatBusiness => 'Բիզնես';

  @override
  String get zakatInvestments => 'Ներդրումներ';

  @override
  String get zakatWeightGrams => 'Քաշը (գ)';

  @override
  String get zakatPricePerGram => 'Գինը / գ';

  @override
  String get zakatTotalAmount => 'Ընդհանուր Գումար';

  @override
  String get zakatInventoryValue => 'Գույքագրման արժեքը';

  @override
  String get zakatDebts => 'Պարտքեր';

  @override
  String get zakatTotal => 'Ընդամենը';

  @override
  String get calculateZakat => 'Հաշվեք Զաքաթը';

  @override
  String get nisabNotReached => 'Նիսաբը չի հասել. Զաքաթը պարտադիր չէ:';

  @override
  String get totalZakat => 'Ընդհանուր Զաքաթ';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Նիսաբ՝ $nisab • Ակտիվներ՝ $assets';
  }

  @override
  String get zakatGoldZakat => 'Ոսկու զաքաթ';

  @override
  String get zakatSilverZakat => 'Արծաթե Զաքաթ';

  @override
  String get zakatCashZakat => 'Կանխիկ Զաքաթ';

  @override
  String get zakatBusinessZakat => 'Բիզնես Զաքաթ';

  @override
  String get zakatInvestmentZakat => 'Ներդրումային Զաքաթ';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Հարցման ամենօրյա սահմանաչափը հասել է: Թարմացրեք Premium-ի անսահմանափակ:';

  @override
  String get chatbotErrorMsg =>
      'Ես չկարողացա արձագանք առաջացնել: Խնդրում ենք կրկին փորձել:';

  @override
  String get chatbotOfflinePrompt =>
      'Ստուգված օֆլայն իսլամական գիտելիքի բազան դեռ մշակվում է: Այժմ կարող եք միացնել անցանց հետադարձ կապը, բայց այն ցույց կտա միայն սահմանափակ անվտանգ հաղորդագրություններ, քանի դեռ աղբյուրի տվյալների բազան պատրաստ չէ:\n\nՑանկանու՞մ եք միացնել անցանց հետընտրական տարբերակը:';

  @override
  String get chatbotOfflineSwitched =>
      'Անցանց հետընտրական տարբերակը միացված է: Ստուգված տեղական իսլամական պատասխանները դեռ պատրաստ չեն:';

  @override
  String get chatbotOfflineDownloadLabel => 'Միացնել անցանց հետադարձ կապը';

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
  String get sukunMixerSubtitle => 'Nature & Qur\'an Mixer';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (Nature)';

  @override
  String get sukunRainOfMercy => 'Rain of Mercy';

  @override
  String get sukunGardenOfPeace => 'Garden of Peace';

  @override
  String get sukunMidnightCalm => 'Midnight Calm';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Soundscapes unavailable';

  @override
  String get sukunUnavailableBody =>
      'This build does not include the required Sukun soundscape assets yet.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Օրվա շարան';

  @override
  String get bestStreak => 'Լավագույն շարանը';

  @override
  String get chatbotCloudAiLabel => 'Ամպային AI';

  @override
  String get chatbotLocalAiLabel => 'Անցանց հետադարձ կապ';

  @override
  String get chatbotUseCloudAi => 'Use Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Միացնել անցանց հետադարձ կապը';

  @override
  String chatbotQueriesLeft(String count) {
    return 'Մնաց $count';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API-ն կազմաձևված չէ: Խնդրում ենք անցնել Local AI-ի:';

  @override
  String get chatbotLocalNoInfo =>
      '[ՕՖԼԱՅՆ] Ստուգված տեղական իսլամական ուղեցույցը դեռ հասանելի չէ: Անցեք Cloud AI-ին՝ աղբյուրի պատասխանների համար:';

  @override
  String get mosques => 'Մզկիթներ';

  @override
  String get halalFood => 'Հալալ սնունդ';

  @override
  String get placesSearchArea => 'Որոնեք այս տարածքը';

  @override
  String get nearbyMosques => 'Մոտակա մզկիթներ';

  @override
  String get islamicSchools => 'Իսլամական դպրոցներ';

  @override
  String placesFoundCount(String count) {
    return '$count գտնվել է';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance կմ հեռավորության վրա';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API-ի սխալ՝ $statusCode';
  }

  @override
  String get placesNetworkError => 'Ցանցի սխալ. Խնդրում ենք կրկին փորձել:';

  @override
  String get unknownPlaceName => 'Անհայտ անուն';

  @override
  String get islamicPlaceFallback => 'Իսլամական վայր';
}
