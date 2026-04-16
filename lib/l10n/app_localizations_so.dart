// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Somali (`so`).
class AppLocalizationsSo extends AppLocalizations {
  AppLocalizationsSo([String locale = 'so']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Habka Iftiinka Islaamka';

  @override
  String get home => 'Guriga';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Kalandarka';

  @override
  String get settings => 'Dejinta';

  @override
  String get nextPrayer => 'Ducada xigta';

  @override
  String get prayerTimes => 'Prayer Times';

  @override
  String get continueReading => 'Continue Reading';

  @override
  String get getLifetimePro => 'Get Lifetime Pro';

  @override
  String get unlockTajweed => 'Unlock Tajweed & Advanced Features';

  @override
  String get prayerCalculation => 'Xisaabinta Salaadda';

  @override
  String get method => 'Habka Xisaabinta';

  @override
  String get madhab => 'Habka Garsoorka Casr';

  @override
  String get surahs => 'Surahs';

  @override
  String get ayahs => 'Ayahs';

  @override
  String get fajr => 'Fajar';

  @override
  String get sunrise => 'Qorrax soo bax';

  @override
  String get dhuhr => 'Dhuxr';

  @override
  String get asr => 'Casr';

  @override
  String get maghrib => 'Magrib';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Waqtiga $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Waa waqtigii la tukan lahaa $prayerName.';
  }

  @override
  String get dataStorage => 'Xogta & Kaydinta';

  @override
  String get clearCache => 'Nadiifi Cache';

  @override
  String get cacheClearedSuccess => 'Cache si guul leh ayaa loo nadiifiyay';

  @override
  String get location => 'Goobta';

  @override
  String get language => 'Luuqad';

  @override
  String get selectLanguage => 'Dooro Luuqad';

  @override
  String get searchLanguage => 'Search 180+ languages...';

  @override
  String get systemDefault => 'Nidaamka Default';

  @override
  String get currentLocation => 'Goobta Hadda (GPS)';

  @override
  String get locationServiceDisabled => 'Adeegga goobta waa naafo';

  @override
  String get locationPermissionDenied => 'Ogolaanshiyaha goobta waa la diiday.';

  @override
  String get locationDetectionFailed =>
      'Lama ogaan karo goobtaada Fadlan gacanta ku dooro magaalo ama isku day mar kale.';

  @override
  String citiesCount(String count) {
    return '$count cities';
  }

  @override
  String get search => 'Raadi';

  @override
  String get searchHint => 'Raadi...';

  @override
  String get noResults => 'Wax natiijooyin ah lama helin';

  @override
  String get loading => 'Soodejinaya...';

  @override
  String get error => 'Khalad';

  @override
  String get appErrorOccurred => 'Khalad ayaa dhacay';

  @override
  String get appUnknownError => 'Khalad aan la garanayn';

  @override
  String get quranLoadFailed =>
      'Waxa ku jira Quraanka lama rari karo Fadlan isku day mar kale';

  @override
  String get retry => 'Isku day';

  @override
  String get refreshAction => 'Dib u cusboonaysii';

  @override
  String get cancel => 'Jooji';

  @override
  String get save => 'Badbaadin';

  @override
  String get delete => 'Tirtir';

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
  String get tafsirLoading => 'Soodejinaya tafsiir...';

  @override
  String get tafsirSourceLabel => 'isha Tafsiir';

  @override
  String get tafsirNoSurahFound => 'Tafsiir looma helin suuraddan.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Wax tafsiir ah looma helin aayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsiir lama rari karo';

  @override
  String get tafsirNoTextForAyah =>
      'Ma jiro qoraal tafsiir ah oo loogu talagalay aayaddan.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Soo dejinta tafsiir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Soodejinaya tafsiir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Isha Tafsiirka ayaa soo celisay khalad HTTP $statusCode';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Isha tafsiir ee la xushay ma soo celin wax gelinta';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get addBookmark => 'Ku dar Bookmark';

  @override
  String get removeBookmark => 'Ka saar Bookmark';

  @override
  String get lastRead => 'Last Read';

  @override
  String get dailyZikr => 'Daily Zikr';

  @override
  String get duaMeaning1 =>
      'Qaar kale waxay ku baryaayaan ‘Eebbow na sii wanaag adduun iyo aakhiraba, naga ilaali cadaabka naarta.';

  @override
  String get duaMeaning2 =>
      'Eebbana kuma cusleeyo nafta wax ka badan oo ay qaadi karto: mid kastaa wuxuu kasbaday wixii wanaag ahaa ee uu falay, xumaantiisana wuu ku dhacaa- ‘Rabbiyow ha na qaban haddaynu hilmaanno ama aynu khaladno. Rabbiyow, ha nagu cuslayn sidii aad kuwii naga horreeyey noogu cuslaysay. Rabbiyow, ha nagu culaysin wax ka badan inta aan haysanno itaal aan ku qaadno. Na cafi, na cafi, oo noo naxariiso. adigaa gargaarahannaga ah ee naga gargaar gaalada.';

  @override
  String get duaMeaning3 =>
      '‘Eebbow yuusan quluubtayada ka leexan markaad na hanuunisay ka dib. Na sii naxariistaada adaa wax bixiya.';

  @override
  String get duaMeaning4 =>
      'Rabbiyow, ina siin aniga iyo farcankayga aan tukanno salaadda. Rabbiyow, baryadayda aqbal.';

  @override
  String get duaMeaning5 =>
      'oo hoos u deji baalkaaga adigoo u khushuucsan xaggooda si naxariis leh, oo waxaad ku tidhaahdaa, Rabbiyow u naxariiso siday ii danayn jireen markaan yaraa.';

  @override
  String get duaMeaning6 =>
      'Eebaa nasahane ee ah kan wax maamula. [Nabiyow], ha ku degdegin inaad wax akhrido ka hor intuusan waxyigu dhammayn ee waxaad dhahdaa, ‘Rabbiyow ii kordhi cilmiga!';

  @override
  String get duaMeaning7 =>
      'Waxaad dhahdaa [Nabiga], ‘Eebow dambi dhaaf oo u naxariiso, adaa naxariis badane.';

  @override
  String get duaMeaning8 =>
      'Kuwa tukanaya, ‘Eebbow, na sii farxadda xaasaskeenna iyo carruurteenna. Nooga yeel tusaale wanaagsan kuwa ku baraarugsan’.';

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
  String get hadith => 'Xadiiska';

  @override
  String get hadithCollection => 'Ururinta Xadiiska';

  @override
  String get hadithBooks => 'Kutubta Xadiiska';

  @override
  String get searchHadith => 'Raadi Xadiiska';

  @override
  String get asmaulHusna => 'Asma-ul-Xusna';

  @override
  String get namesOfAllah => 'Names of Allah';

  @override
  String get liveTv => 'TV toos ah';

  @override
  String get watchLive => 'Daawo Live';

  @override
  String get streamError => 'Cilada socodka';

  @override
  String get reload => 'Dib u soo deji';

  @override
  String get openInYoutube => 'Ka fur YouTube';

  @override
  String get ibadahTracker => 'Cibaado Tracker';

  @override
  String get fasting => 'Soonka';

  @override
  String get quranReading => 'Quraan Akhriska';

  @override
  String get prayers => 'Ducada';

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
  String get weeklyProgress => 'Horumarka Todobaadlaha ah';

  @override
  String get monthlyProgress => 'Monthly Progress';

  @override
  String get statistics => 'Statistics';

  @override
  String get hijriCalendar => 'Hijri Calendar';

  @override
  String get gregorianCalendar => 'Gregorian Calendar';

  @override
  String get today => 'Maanta';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get specialDays => 'Maalmaha gaarka ah';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Sanadka Cusub ee Islaamka';

  @override
  String get mawlidAnNabi => 'Mawliid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadaan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadaan';

  @override
  String get specialDayDateEidAlFitr => '1 Shawaal';

  @override
  String get specialDayDateEidAlAdha => '10 Dhul Hijjah';

  @override
  String get specialDayDateIslamicNewYear => '1 Muxaram';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabii al-Awal';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'Jihada Qibla';

  @override
  String get compass => 'Compass';

  @override
  String get degrees => 'degrees';

  @override
  String get north => 'North';

  @override
  String get qiblaFound => 'Qibla la helay!';

  @override
  String get turnDevice => 'U rog qalabkaaga si aad u wajahdo Qiblada';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Cilad kambaska: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Dareemaha Compass lagama heli karo qalabkan.';

  @override
  String get qiblaLocationRequiredTitle => 'Meesha loo baahan yahay Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Deji goobtaada dhabta ah ka hor intaadan isticmaalin kombuyuutarka Qibla si jihada loo xisaabiyo si sax ah.';

  @override
  String get adhanNotificationChannelName => 'Ogeysiinta Adhan';

  @override
  String get adhanNotificationChannelDescription =>
      'Waqtiga salaadda wuxuu ku baraarujinayaa dhawaaqa adhan.';

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
  String get theme => 'Dulucda';

  @override
  String get lightMode => 'Qaabka Iftiinka';

  @override
  String get darkMode => 'Qaab Madow';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'Ku saabsan';

  @override
  String get version => 'Nooca';

  @override
  String get privacyPolicy => 'Siyaasadda Qarsoonnimada';

  @override
  String get termsOfService => 'Shuruudaha Adeegga';

  @override
  String get contactUs => 'Nala Soo Xidhiidh';

  @override
  String get rateApp => 'Qiimaynta App';

  @override
  String get shareApp => 'La wadaag App-ka';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Check out $appName: The ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'Soo dejinta';

  @override
  String get downloading => 'Soo dejinaya...';

  @override
  String get downloadComplete => 'Download Dhamaystiran';

  @override
  String get downloadFailed => 'Soo dajisku wuu fashilmay';

  @override
  String get offlineMode => 'Qaabka khadka tooska ah';

  @override
  String get noInternet => 'Xiriir internet ma jiro';

  @override
  String get checkConnection => 'Fadlan hubi xidhiidhkaaga';

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
  String get getStarted => 'Bilow';

  @override
  String get skip => 'Skip';

  @override
  String get next => 'Xiga';

  @override
  String get done => 'La sameeyay';

  @override
  String get onboarding1Title => 'Ku soo dhawoow Sirat-ı Nur';

  @override
  String get onboarding1Desc =>
      'App-ka saxaabigaaga Islaamka oo dhammaystiran ee waqtiyada salaadda, Qur\'aanka, iyo in ka badan';

  @override
  String get onboarding2Title => 'Waqtiyada Salaadda';

  @override
  String get onboarding2Desc =>
      'Waqtiyada salaadda saxda ah ee ku salaysan goobtaada';

  @override
  String get onboarding3Title => 'Quraan & Ka sii badan';

  @override
  String get onboarding3Desc =>
      'Qur\'aanka akhri, akhrintaada raadi, oo sahmi nuxurka Islaamka';

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
  String get tapToCount => 'Taabo si aad u tiriso';

  @override
  String get zikrCompletedMashAllah => 'Dhammaystiran! Maasha Allaah';

  @override
  String get zikrMeaningSubhanAllah => 'Eebbana waa ka sarreeyaa cillad kasta.';

  @override
  String get zikrMeaningAlhamdulillah => 'Mahad oo dhan Allaah ayaa iska leh.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allaah ayaa u weyn.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Allaah mooyee ilaah kale ma jiro.';

  @override
  String get zikrMeaningAstaghfirullah =>
      'Allaah ayaan danbi dhaaf waydiisanayaa.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Awood iyo xoogna ma jiro Allaah mooyee.';

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
  String get offlineDownloadManager => 'Maamulaha soo dejinta khadka tooska ah';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Soo deji kaydinta qalabka gudaha';

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
  String get audioVoice => 'Codka Maqalka';

  @override
  String get audioVoiceMisharyAlafasy => 'Lab (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Lab (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Lab (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Qibla Calibration';

  @override
  String get compassSmoothing => 'Jilicsan Compass';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Dib u habeynta';

  @override
  String currentOffset(Object offset) {
    return 'Hadda: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Hagaajin haddii kombuyuutarku u baahan yahay sixid gacanta ah. Qiimayaasha togan waxay u wareegaan saacada.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'ogaanshaha';

  @override
  String get diagnosticsNotSet => 'Lama dejin';

  @override
  String get diagnosticsPrayerProfile => 'Profile Ducada';

  @override
  String get diagnosticsPrayerSource => 'Maamulka Ducada';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Xaglaha gaarka ah ee gacanta (malaha il hay\'ad)';

  @override
  String get diagnosticsCloudDriven => 'Daruuruhu wadey';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'Hantida Maqalka UI';

  @override
  String get diagnosticsQuranAudioAssets => 'Hantida Maqalka Quraanka';

  @override
  String get diagnosticsAudioAssets => 'Hantida Maqalka';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count faylasha';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Muujinta akhrinta waa guuldareystay: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Deegaanaynta';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count waa la taageeray';
  }

  @override
  String get diagnosticsQuranDataset => 'Xogta Quraanka';

  @override
  String get diagnosticsQuranSurahs => 'Suuradaha Quraanka';

  @override
  String get diagnosticsQuranAyahs => 'Aayadaha Quraanka';

  @override
  String get diagnosticsQuranJuzMetadata => 'Quran Juz Metadata';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Miisaska daruuraha ayaa ka maqan Supabase; dib u dhac isku xiran oo firfircoon';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Hubinta daruurtu waa fashilantay: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Xogta badan ee Cloud juz ayaa maqan; dib-u-dhac dhismeed isku xidhan oo firfircoon';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Hubinta qaab dhismeedka daruuraha ayaa fashilmay: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Qalabaynta ayaa loo baahan yahay. Ku wareeji qalabka sawirka-8.';

  @override
  String get dailyVerse => 'Aayadda Maalinlaha ah';

  @override
  String get todaysIbadah => 'Cibaado maanta';

  @override
  String get quickAccess => 'Helitaanka Degdegga ah';

  @override
  String get assistant => 'Kaaliyaha';

  @override
  String get places => 'Goobaha';

  @override
  String get library => 'Maktabadda';

  @override
  String get analytics => 'Falanqaynta';

  @override
  String get dailyDuas => 'Ducaada maalinlaha ah';

  @override
  String essentialDuas(String count) {
    return '$count essential duas';
  }

  @override
  String get duaUnavailableTitle => 'Duco la xaqiijiyay wali lama hayo';

  @override
  String get duaUnavailableBody =>
      'Duas maalinle ah oo la xaqiijiyay weli lama midin qalabkan. Ku xidh isha daruuraha si aad ugu shubto duas laga keenay halkii aad ka ahaan lahayd dib u dhac aan la xaqiijin.';

  @override
  String get duaCategoryQuranic => 'ducada quraanka';

  @override
  String get duaCategoryMorningEvening => 'Subax & Fiid';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Ilaalinta';

  @override
  String get duaCategoryBeginning => 'Bilawga';

  @override
  String get duaCategorySleep => 'Hurdo';

  @override
  String get duaCategoryFoodDrink => 'Cunto & Cabbitaan';

  @override
  String get duaCategoryForgiveness => 'Cafiska';

  @override
  String get duaCategoryHome => 'Guriga';

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
  String get islamicEducation => 'Barashada Islaamka';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Ururinta Xadiiska';

  @override
  String get hadithSourcePending => 'Isha la xaqiijiyay';

  @override
  String get hadithUnavailableTitle =>
      'Ururinta xadiisyada la xaqiijiyay wali lama hayo';

  @override
  String get hadithUnavailableBody =>
      'Dhismahani wuxuu weli ku xiran yahay quudinta xadiiska dibadda ah ee aan la xaqiijin. Baadhitaanka xadiisku waxa uu ahaanayaa mid naafo ah ilaa xogta laga soo xigtay la isku dhejiyo.';

  @override
  String get paywallUnlockAll =>
      'Fur dhammaan sifooyinka safarkaaga ruuxiga ah';

  @override
  String get premiumProductUnavailable =>
      'Alaabta qaaliga ah lama heli karo hadda Fadlan isku day mar kale hadhow';

  @override
  String get premiumPurchaseFailed =>
      'Iibka waa la dhammayn kari waayay Fadlan isku day mar kale';

  @override
  String get paywallFeature1Title => 'Kaaliyaha Neural Plus';

  @override
  String get paywallFeature1Desc => 'Q&A aan xadidnayn oo AI ku shaqeeya';

  @override
  String get paywallFeature2Title => 'Aan xad lahayn';

  @override
  String get paywallFeature2Desc => 'Soo deji dhammaan akhrinta';

  @override
  String get paywallFeature3Title => 'Naqshado Gaar ah';

  @override
  String get paywallFeature3Desc => 'Mowduucyada qiimaha leh & xarfaha';

  @override
  String get paywallFeature4Title => 'Xayeysiis bilaasha';

  @override
  String get paywallFeature4Desc => 'eber xayaysiis';

  @override
  String get paywallGetAccess => 'Helitaanka nolosha - \$1.00';

  @override
  String get restorePurchases => 'Soo Celinta Iibka';

  @override
  String get zakatCalculator => 'Xisaabiyaha Sakada';

  @override
  String get zakatGold => 'Dahab (Altın)';

  @override
  String get zakatSilver => 'Silver (Gümüş)';

  @override
  String get zakatCashBank => 'Lacag caddaan ah / Bangi';

  @override
  String get zakatBusiness => 'Ganacsiga';

  @override
  String get zakatInvestments => 'Maalgelinta';

  @override
  String get zakatWeightGrams => 'Miisaanka (g)';

  @override
  String get zakatPricePerGram => 'Qiimaha/g';

  @override
  String get zakatTotalAmount => 'Wadarta tirada';

  @override
  String get zakatInventoryValue => 'Qiimaha Alaabta';

  @override
  String get zakatDebts => 'Dayn';

  @override
  String get zakatTotal => 'Wadarta';

  @override
  String get calculateZakat => 'Xisaabi Sakada';

  @override
  String get nisabNotReached => 'Nisab lama gaarin. Sakadu waajib maaha.';

  @override
  String get totalZakat => 'Wadarta Sakada';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Hantida: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakada Dahabka ah';

  @override
  String get zakatSilverZakat => 'Sakada qalinka ah';

  @override
  String get zakatCashZakat => 'Zakada lacagta ah';

  @override
  String get zakatBusinessZakat => 'Sakada ganacsiga';

  @override
  String get zakatInvestmentZakat => 'Sakada maalgashiga';

  @override
  String get chatbotGreeting =>
      'Asalaamu Calaykum! Waxaan ahay kaaliyahaaga Islaamka. I weydii wax ku saabsan salaadda, soonka, sakada, ama mawduuc kasta oo Islaami ah.';

  @override
  String get chatbotLimitReached =>
      'Xadka weydiinta maalinlaha ah ayaa la gaarey U cusboonaysii Premium si aan xadidnayn.';

  @override
  String get chatbotErrorMsg => 'Jawaab ma dhalin. Fadlan isku day mar kale';

  @override
  String get chatbotOfflinePrompt =>
      'Saldhigga aqoonta Islaamka ee khadka tooska ah ee la xaqiijiyey ayaa weli la daabicinayaa. Waxaad awood u siin kartaa dib u dhaca khadka tooska ah hadda, laakiin waxay tusi doontaa oo kaliya fariimaha badbaadada xaddidan ilaa inta xog-ururinta laga keenay diyaar yahay.\n\nMa jeclaan lahayd inaad karti u geliso soo noqoshada khadka tooska ah?';

  @override
  String get chatbotOfflineSwitched =>
      'Dib u dhaca khadka tooska ah waa la furay Jawaabaha islaamiga ah ee deegaanka ee la xaqiijiyay wali diyaar uma aha.';

  @override
  String get chatbotOfflineDownloadLabel => 'Daar dib-u-dhaca khadka tooska ah';

  @override
  String get downloadPreparing => 'Diyaarinta soo dejinta...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Soodejinaya suuradda $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Dhammaan suuradaha mar hore loo soo dejiyay akhristaha.';

  @override
  String get offlineQuranAudioPacks =>
      'Xirmooyinka Maqalka Qur\'aanka ee offline';

  @override
  String storedOnDeviceMb(String size) {
    return 'Ku kaydsan aaladda: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surahs downloaded';
  }

  @override
  String get redownloadMissingRepair => 'Dayactirka / soo dejinta maqan';

  @override
  String get downloadAction => 'Download';

  @override
  String get resumeDownload => 'Dib u bilaw soo dejinta';

  @override
  String get deleteDownloadedFiles => 'Tirtir faylalka la soo dejiyay';

  @override
  String get downloadCancelling => 'burinaya...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Soo dejintu waa la joojiyay $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Soo dejintu waa dhammaatay $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Soodejintu way dhammaatay $reciter leh $failed suuradaha fashilmay ($downloaded/$total la soo dejiyay).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Faylasha qad la\'aanta ee la tirtiray ee $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Ilaha maqalka Qur\'aanka ah ee la xaqiijiyay hadda lama heli karo.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Verified Quran audio pack is incomplete ($available/$total). Refresh cloud seed and try again.';
  }

  @override
  String get chatbotHint => 'Weydii su\'aal...';

  @override
  String get chatbotThinking => 'Fikirka...';

  @override
  String get sukunMixerSubtitle => 'Dabeecadda & Qur\'aanka Isku-dhafka';

  @override
  String get audioPlayFailed => 'Dib-u-soo-celinta maqalka waa fashilantay';

  @override
  String get sukunNatureLabel => 'Sukun (Dabeecada)';

  @override
  String get sukunRainOfMercy => 'Roobka Naxariista';

  @override
  String get sukunGardenOfPeace => 'Beerta Nabadda';

  @override
  String get sukunMidnightCalm => 'Saqda dhexe is deji';

  @override
  String get sukunOceanTawheed => 'Badweynta Tawxiid';

  @override
  String get sukunUnavailableTitle => 'Muuqaallada dhawaaqa lama heli karo';

  @override
  String get sukunUnavailableBody =>
      'Dhismahan kuma jiro wali hantida muuqaalka muuqaalka Sukun ee loo baahan yahay.';

  @override
  String get prayerCompletion => 'Dhamaystirka Ducada';

  @override
  String get streaks => 'Xarig';

  @override
  String get dayStreak => 'Maalin is daba joog ah';

  @override
  String get bestStreak => 'Xarigga ugu fiican';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Dib-u-dhaca Khadka Tooska ah';

  @override
  String get chatbotUseCloudAi => 'Isticmaal Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Daar dib-u-dhaca khadka tooska ah';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count left';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API ma habaysan Hanuuninta Islaamka ee khadka tooska ah ee la xaqiijiyay weli lama heli karo.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Hanuun Islaami ah oo la xaqiijiyay weli lama hayo. U beddel Cloud AI jawaabaha laga soo xigtay';

  @override
  String get mosques => 'Masaajidada';

  @override
  String get halalFood => 'Cunto Xalaal ah';

  @override
  String get placesSearchArea => 'Ka raadi aaggan';

  @override
  String get nearbyMosques => 'Masaajidada u dhow';

  @override
  String get islamicSchools => 'Dugsiyada Islaamiga ah';

  @override
  String placesFoundCount(String count) {
    return '$count la helay';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km away';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Cilad API: $statusCode';
  }

  @override
  String get placesNetworkError => 'Cilada shabakada Fadlan isku day mar kale';

  @override
  String get placesLocationRequiredTitle => 'Goobta loo baahan yahay';

  @override
  String get placesLocationRequiredBody =>
      'Marka hore deji meel u dhow masaajidda, cuntada xalaasha ah, iyo dugsiyada islaamiga ah si sax ah loogu baadho.';

  @override
  String get placesMapTilesUnavailableTitle =>
      'Duubabka khariidadu lama heli karo';

  @override
  String get placesMapTilesUnavailableBody =>
      'Isha foornada khariidad ee la xaqiijiyay wali looma habeynin dhismahan. Meelaha u dhow weli way ka soo rari karaan goobtaada kaydsan.';

  @override
  String get placesDataSourceUnavailableTitle => 'Xogta meelaha lama heli karo';

  @override
  String get placesDataSourceUnavailableBody =>
      'Meesha la xaqiijiyay barta dhamaadka xogta looma habeynin dhismahan wali. Deji PLACES_OVERPASS_API_URL wakiil ama bixiye la ansixiyay ka hor inta aanad awood u gelin raadinta dhow.';

  @override
  String get unknownPlaceName => 'Magaca Aan La Aqoon';

  @override
  String get islamicPlaceFallback => 'Goobta Islaamka';

  @override
  String get asmaMeaning1 => 'Ka Faa\'iidayso';

  @override
  String get asmaMeaning2 => 'Raxmaana';

  @override
  String get asmaMeaning3 => 'Boqorka / Rabbi daa\'imka ah';

  @override
  String get asmaMeaning4 => 'Kan ugu quduusan';

  @override
  String get asmaMeaning5 => 'Isha Nabadda';

  @override
  String get asmaMeaning6 => 'Bixiyaha Amniga';

  @override
  String get asmaMeaning7 => 'Ilaaliyaha';

  @override
  String get asmaMeaning8 => 'Qaaliga ah / kan ugu awoodda badan';

  @override
  String get asmaMeaning9 => 'Qasab';

  @override
  String get asmaMeaning10 => 'Kan ugu weyn';

  @override
  String get asmaMeaning11 => 'Abuuraha';

  @override
  String get asmaMeaning12 => 'Sameeyaha Amarka';

  @override
  String get asmaMeaning13 => 'Qaabka Quruxda';

  @override
  String get asmaMeaning14 => 'Cafiska';

  @override
  String get asmaMeaning15 => 'Subduer-ka';

  @override
  String get asmaMeaning16 => 'Bixiyaha oo dhan';

  @override
  String get asmaMeaning17 => 'Waaryaha';

  @override
  String get asmaMeaning18 => 'Furaha';

  @override
  String get asmaMeaning19 => 'Wax walba og';

  @override
  String get asmaMeaning20 => 'Constrictor The';

  @override
  String get asmaMeaning21 => 'Gargaarka';

  @override
  String get asmaMeaning22 => 'Cabaas';

  @override
  String get asmaMeaning23 => 'Sarreeye';

  @override
  String get asmaMeaning24 => 'Maamuuskii';

  @override
  String get asmaMeaning25 => 'Dulmiga';

  @override
  String get asmaMeaning26 => 'Maqalka Dhammaan';

  @override
  String get asmaMeaning27 => 'Wax arka Dhammaan';

  @override
  String get asmaMeaning28 => 'Garsooraha';

  @override
  String get asmaMeaning29 => 'Cadaalada';

  @override
  String get asmaMeaning30 => 'Midka Dahsoon';

  @override
  String get asmaMeaning31 => 'The All Aware';

  @override
  String get asmaMeaning32 => 'Hordhac';

  @override
  String get asmaMeaning33 => 'Cajiibka';

  @override
  String get asmaMeaning34 => 'Dambi dhaafka weyn';

  @override
  String get asmaMeaning35 => 'Abaal marinta Mahadnaqa';

  @override
  String get asmaMeaning36 => 'Kan ugu sarreeya';

  @override
  String get asmaMeaning37 => 'Kan ugu weyn';

  @override
  String get asmaMeaning38 => 'Ilaaliyaha';

  @override
  String get asmaMeaning39 => 'Nafaqeeyaha';

  @override
  String get asmaMeaning40 => 'Xisaabiyaha';

  @override
  String get asmaMeaning41 => 'Sharafta leh';

  @override
  String get asmaMeaning42 => 'Deeqsinimada';

  @override
  String get asmaMeaning43 => 'Midka Fiican';

  @override
  String get asmaMeaning44 => 'Ajiibiyaha Ducada';

  @override
  String get asmaMeaning45 => 'Fahamka oo dhan';

  @override
  String get asmaMeaning46 => 'Caqliga qumman';

  @override
  String get asmaMeaning47 => 'Midka Jecel';

  @override
  String get asmaMeaning48 => 'Midka ugu sharafta badan';

  @override
  String get asmaMeaning49 => 'Soobixiye';

  @override
  String get asmaMeaning50 => 'Markhaatigii';

  @override
  String get asmaMeaning51 => 'Xaqiiqda';

  @override
  String get asmaMeaning52 => 'Masuulka ugu Filan';

  @override
  String get asmaMeaning53 => 'Lahaanshaha Awood oo dhan';

  @override
  String get asmaMeaning54 => 'Qasabka ah';

  @override
  String get asmaMeaning55 => 'Ilaaliyaha';

  @override
  String get asmaMeaning56 => 'Mahadsanid';

  @override
  String get asmaMeaning57 => 'Qiimeeyaha';

  @override
  String get asmaMeaning58 => 'Asalkiilaha';

  @override
  String get asmaMeaning59 => 'Soo-celinta';

  @override
  String get asmaMeaning60 => 'Bixiyaha Nolosha';

  @override
  String get asmaMeaning61 => 'Kan Nolosha Qaatay';

  @override
  String get asmaMeaning62 => 'Waliga Nool';

  @override
  String get asmaMeaning63 => 'Kaaliyaha Is-xilqaanka ah';

  @override
  String get asmaMeaning64 => 'Raadiyaha';

  @override
  String get asmaMeaning65 => 'Sharafta leh';

  @override
  String get asmaMeaning66 => 'Ka Keliya';

  @override
  String get asmaMeaning67 => 'Midka';

  @override
  String get asmaMeaning68 => 'Midka La Doonayo Dhammaan';

  @override
  String get asmaMeaning69 => 'Kuwa Awooda leh';

  @override
  String get asmaMeaning70 => 'Abuuraha awoodda oo dhan';

  @override
  String get asmaMeaning71 => 'Expediter-ka';

  @override
  String get asmaMeaning72 => 'Dib u dhaca';

  @override
  String get asmaMeaning73 => 'Ugu Horayn';

  @override
  String get asmaMeaning74 => 'Ugu Dambeyntii';

  @override
  String get asmaMeaning75 => 'Muujinta';

  @override
  String get asmaMeaning76 => 'Qarsoon';

  @override
  String get asmaMeaning77 => 'Gudoomiyaha';

  @override
  String get asmaMeaning78 => 'Kan ugu sarreeya';

  @override
  String get asmaMeaning79 => 'Wanaag fala';

  @override
  String get asmaMeaning80 => 'Tusaha Towbada';

  @override
  String get asmaMeaning81 => 'Aargoosiga';

  @override
  String get asmaMeaning82 => 'Cafiskii';

  @override
  String get asmaMeaning83 => 'Clement';

  @override
  String get asmaMeaning84 => 'Mulkiilaha / Boqorka Dhammaan';

  @override
  String get asmaMeaning85 => 'Lahaanshaha sharafta iyo fadliga';

  @override
  String get asmaMeaning86 => 'Midka loo siman yahay';

  @override
  String get asmaMeaning87 => 'Soo ururiyaha';

  @override
  String get asmaMeaning88 => 'Taajirkii';

  @override
  String get asmaMeaning89 => 'Enricher The';

  @override
  String get asmaMeaning90 => 'Ka Hortagga Waxyeelada';

  @override
  String get asmaMeaning91 => 'Dhibka Keenay';

  @override
  String get asmaMeaning92 => 'Bixiyaha Faa\'iidooyinka';

  @override
  String get asmaMeaning93 => 'Iftiinka';

  @override
  String get asmaMeaning94 => 'Hagaha';

  @override
  String get asmaMeaning95 => 'Asalkiilaha';

  @override
  String get asmaMeaning96 => 'Midka Aakhiro';

  @override
  String get asmaMeaning97 => 'Dhaxalka';

  @override
  String get asmaMeaning98 => 'Tusaha ugu Xaqsan';

  @override
  String get asmaMeaning99 => 'Kan Bukaanka ah';
}
