// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uzbek (`uz`).
class AppLocalizationsUz extends AppLocalizations {
  AppLocalizationsUz([String locale = 'uz']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Islom nur yo\'li';

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
  String get fajr => 'Bomdod';

  @override
  String get sunrise => 'Quyosh chiqishi';

  @override
  String get dhuhr => 'Peshin';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Shom';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName vaqti';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '$prayerName ibodat qilish vaqti keldi.';
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
  String get locationServiceDisabled => 'Joylashuv xizmati o‘chirilgan.';

  @override
  String get locationPermissionDenied => 'Joylashuv ruxsati rad etildi.';

  @override
  String get locationDetectionFailed =>
      'Joylashuvingiz aniqlanmadi. Shaharni qoʻlda tanlang yoki qayta urinib koʻring.';

  @override
  String citiesCount(String count) {
    return '$count shaharlar';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'Hech qanday natija topilmadi';

  @override
  String get loading => 'Yuklanmoqda...';

  @override
  String get error => 'Xato';

  @override
  String get appErrorOccurred => 'Xatolik yuz berdi';

  @override
  String get appUnknownError => 'Noma\'lum xato';

  @override
  String get quranLoadFailed =>
      'Qur\'on mazmunini yuklab bo\'lmadi. Iltimos, qayta urinib koʻring.';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Yangilash';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Oʻchirish';

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
    return 'Oya $ayah';
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
  String get tafsirLoading => 'Tafsir yuklanmoqda...';

  @override
  String get tafsirSourceLabel => 'Tafsir manbasi';

  @override
  String get tafsirNoSurahFound => 'Bu sura uchun tafsir topilmadi.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return '$ayah oyati uchun tafsir topilmadi.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsirni yuklab bo‘lmadi.';

  @override
  String get tafsirNoTextForAyah => 'Bu oyat uchun tafsir matni yo\'q.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return '$current/$total tafsiri yuklab olinmoqda';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Tafsir yuklanmoqda $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir manbasi HTTP $statusCode xatosini qaytardi.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Tanlangan tafsir manbasi hech qanday yozuvni qaytarmadi.';

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
      'Boshqalar esa: «Ey Robbimiz, bizga dunyo va oxiratda yaxshilik ato et va bizni do\'zax azobidan saqla», deb duo qiladilar.';

  @override
  String get duaMeaning2 =>
      'Alloh hech bir jonga toqatidan ortiq narsani yuklamaydi: har kim qilgan yaxshiligidan ortig‘ini oladi va o‘zining yomonligidan azob chekadi – “Ey Robbim, agar unutsak yoki xato qilsak, bizni jazolamagin. Parvardigorim, bizdan oldingilarga og‘ir yuklaganingdek, bizni ham yuklamagin. Parvardigorim, bizni kuchimizdan ortiq yuklamagin. Bizni kechir, kechir va bizga rahm qil. Sen bizning valiymizsan, kofirlarga qarshi bizga yordam ber», dedilar.';

  @override
  String get duaMeaning3 =>
      '«Ey Robbimiz, bizlarni hidoyat qilganingdan keyin qalblarimizni og\'dirmagin. Bizga rahmatingni ato et, O\'zing berguvchisan.';

  @override
  String get duaMeaning4 =>
      'Rabbim, menga va zurriyotimga namozni to\'g\'ri o\'qishni nasib et. Robbimiz, iltimosimni qabul qil.';

  @override
  String get duaMeaning5 =>
      'Ularga mehribonlik ila tavakkal qilib qanotingizni pastga tushiring va: “Yo Parvardigorim, ular menga kichikligimda g‘amxo‘rlik qilganidek, ularga ham rahm qil”, deb ayt.';

  @override
  String get duaMeaning6 =>
      'Haqiqatan ham hukmron bo\'lgan Alloh pokdir. [Payg‘ambar], vahiy to‘liq bo‘lmasdan turib, qiroat qilishga shoshilma, balki: “Robbim, ilmimni ziyoda qil!” deb ayt.';

  @override
  String get duaMeaning7 =>
      '(Payg‘ambarga) ayt: “Robbim, mag‘firat qil va rahm qil, Sen eng mehribonsan”.';

  @override
  String get duaMeaning8 =>
      '«Robbimiz, bizni juftlarimiz va zurriyotlarimizni xursand qilgin», deb duo qilganlar. Bizni O\'zingdan xabardor bo\'lganlarga yaxshi namuna qilgin», dedi.';

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
  String get hadith => 'Hadis';

  @override
  String get hadithCollection => 'Hadislar to\'plami';

  @override
  String get hadithBooks => 'Hadis kitoblari';

  @override
  String get searchHadith => 'Hadis qidirish';

  @override
  String get asmaulHusna => 'Asmo-ul-Husno';

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
  String get openInYoutube => 'YouTube\'da oching';

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
    return '${hours}soat ${minutes}daq';
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
  String get islamicNewYear => 'Islomiy Yangi yil';

  @override
  String get mawlidAnNabi => 'Mavlid an-Nabiy';

  @override
  String get specialDayDateRamadanStart => '1 Ramazon';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramazon';

  @override
  String get specialDayDateEidAlFitr => '1 Shavvol';

  @override
  String get specialDayDateEidAlAdha => '10 Zulhijja';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharram';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabiul-avval';

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
    return 'Kompas xatosi: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Kompas sensori bu qurilmada ishlamaydi.';

  @override
  String get qiblaLocationRequiredTitle => 'Qibla uchun joy kerak';

  @override
  String get qiblaLocationRequiredBody =>
      'Qibla kompasidan foydalanishdan oldin oʻzingizning haqiqiy joylashuvingizni oʻrnating, shunda yoʻnalish aniq hisoblab chiqiladi.';

  @override
  String get adhanNotificationChannelName => 'Azon bildirishnomalari';

  @override
  String get adhanNotificationChannelDescription =>
      'Namoz vaqti azon ovozi bilan ogohlantiriladi.';

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
    return '$appName ni ko‘ring: Islomiy hayot tarziga oid so‘nggi ilova! $url';
  }

  @override
  String get downloadManager => 'Yuklab olish menejeri';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Yuklab olish tugallandi';

  @override
  String get downloadFailed => 'Yuklab olinmadi';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'Internetga ulanmagan';

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
  String get zikrCompletedMashAllah => 'Bajarildi! MashAlloh';

  @override
  String get zikrMeaningSubhanAllah => 'Alloh taolo har bir nuqsondan uzoqdir.';

  @override
  String get zikrMeaningAlhamdulillah => 'Hamma hamdlar Allohga xosdir.';

  @override
  String get zikrMeaningAllahuAkbar => 'Alloh eng buyukdir.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Allohdan o\'zga iloh yo\'q.';

  @override
  String get zikrMeaningAstaghfirullah => 'Allohdan mag\'firat so\'rayman.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Allohdan boshqa hech qanday kuch va quvvat yo\'q.';

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
  String get offlineDownloadManager => 'Oflayn yuklab olish menejeri';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Qurilmaning ichki xotirasidan joy boʻshating.';

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
  String get audioVoice => 'Audio ovoz';

  @override
  String get audioVoiceMisharyAlafasy => 'Erkak (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Erkak (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Erkak (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Qibla kalibrlash';

  @override
  String get compassSmoothing => 'Kompasni tekislash';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Kalibrlash ofset';

  @override
  String currentOffset(Object offset) {
    return 'Hozirgi: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Agar kompasingizga qo\'lda tuzatish kerak bo\'lsa, sozlang. Ijobiy qiymatlar soat yo\'nalishi bo\'yicha aylanadi.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Diagnostics';

  @override
  String get diagnosticsNotSet => 'Belgilanmagan';

  @override
  String get diagnosticsPrayerProfile => 'Namoz profili';

  @override
  String get diagnosticsPrayerSource => 'Namoz hokimiyati';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manual custom angles (no institutional source)';

  @override
  String get diagnosticsCloudDriven => 'Bulutga asoslangan';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI audio aktivlari';

  @override
  String get diagnosticsQuranAudioAssets => 'Qur\'on audio aktivlari';

  @override
  String get diagnosticsAudioAssets => 'Audio aktivlar';

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
    return '$count qo\'llab-quvvatlanadi';
  }

  @override
  String get diagnosticsQuranDataset => 'Qur\'on ma\'lumotlar to\'plami';

  @override
  String get diagnosticsQuranSurahs => 'Qur\'on suralari';

  @override
  String get diagnosticsQuranAyahs => 'Qur\'on oyatlari';

  @override
  String get diagnosticsQuranJuzMetadata => 'Qur\'on Juz metama\'lumotlari';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Supabase-da bulutli jadvallar yo\'q; to\'plangan qayta tiklash faol';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Bulutli tekshiruv amalga oshmadi: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz metama\'lumotlari etishmayapti; to\'plangan strukturaviy tiklanish faol';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Bulutli tizim tekshiruvi amalga oshmadi: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Kalibrlash talab qilinadi. 8-rasmdagi qurilmani aylantiring.';

  @override
  String get dailyVerse => 'Kundalik oyat';

  @override
  String get todaysIbadah => 'Bugungi Ibodat';

  @override
  String get quickAccess => 'Tez kirish';

  @override
  String get assistant => 'Yordamchi';

  @override
  String get places => 'Joylar';

  @override
  String get library => 'Kutubxona';

  @override
  String get analytics => 'Analitika';

  @override
  String get dailyDuas => 'Kundalik duolar';

  @override
  String essentialDuas(String count) {
    return '$count muhim duolar';
  }

  @override
  String get duaUnavailableTitle => 'Tasdiqlangan duolar hali mavjud emas';

  @override
  String get duaUnavailableBody =>
      'Tasdiqlangan kundalik duolar hali bu qurilmaga sinxronlanmagan. Tasdiqlanmagan zaxira oʻrniga manbali duolarni yuklash uchun bulut manbasiga ulaning.';

  @override
  String get duaCategoryQuranic => 'Qur\'on duo';

  @override
  String get duaCategoryMorningEvening => 'Ertalab va kechqurun';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Himoya';

  @override
  String get duaCategoryBeginning => 'Boshlanishlar';

  @override
  String get duaCategorySleep => 'Uxlash';

  @override
  String get duaCategoryFoodDrink => 'Oziq-ovqat va ichimliklar';

  @override
  String get duaCategoryForgiveness => 'Kechirim';

  @override
  String get duaCategoryHome => 'Uy';

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
  String get islamicEducation => 'Islom ta\'limi';

  @override
  String get sukunAudioTitle => 'Sukun ovoz manzaralari';

  @override
  String get hadithCollections => 'Hadislar to\'plami';

  @override
  String get hadithSourcePending => 'Tasdiqlangan manba kutilmoqda';

  @override
  String get hadithUnavailableTitle =>
      'Tasdiqlangan hadis to‘plamlari hozircha mavjud emas';

  @override
  String get hadithUnavailableBody =>
      'Bu tuzilish hali ham tasdiqlanmagan tashqi hadis tasmasiga bog\'liq. Hadislarni koʻrib chiqish manba maʼlumotlar toʻplami sinxronlanmaguncha oʻchirib qoʻyiladi.';

  @override
  String get paywallUnlockAll =>
      'Ruhiy sayohatingiz uchun barcha xususiyatlarni oching';

  @override
  String get premiumProductUnavailable =>
      'Premium mahsulot hozirda mavjud emas. Keyinroq qayta urinib ko‘ring.';

  @override
  String get premiumPurchaseFailed =>
      'Xaridni yakunlab bo‘lmadi. Iltimos, qayta urinib koʻring.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'Cheksiz AI bilan ishlaydigan savol-javob';

  @override
  String get paywallFeature2Title => 'Cheksiz oflayn';

  @override
  String get paywallFeature2Desc => 'Barcha qiroatlarni yuklab oling';

  @override
  String get paywallFeature3Title => 'Eksklyuziv dizaynlar';

  @override
  String get paywallFeature3Desc => 'Premium mavzular va shriftlar';

  @override
  String get paywallFeature4Title => 'Reklamasiz';

  @override
  String get paywallFeature4Desc => 'Nol reklama';

  @override
  String get paywallGetAccess => 'Umr bo\'yi ruxsat olish - \$1.00';

  @override
  String get restorePurchases => 'Xaridlarni tiklash';

  @override
  String get zakatCalculator => 'Zakot kalkulyatori';

  @override
  String get zakatGold => 'Oltin (Oltin)';

  @override
  String get zakatSilver => 'Kumush (Gümüsh)';

  @override
  String get zakatCashBank => 'Naqd pul / bank';

  @override
  String get zakatBusiness => 'Biznes';

  @override
  String get zakatInvestments => 'Investitsiyalar';

  @override
  String get zakatWeightGrams => 'Og\'irligi (g)';

  @override
  String get zakatPricePerGram => 'Narxi/g';

  @override
  String get zakatTotalAmount => 'Umumiy hisob';

  @override
  String get zakatInventoryValue => 'Inventarizatsiya qiymati';

  @override
  String get zakatDebts => 'Qarzlar';

  @override
  String get zakatTotal => 'Jami';

  @override
  String get calculateZakat => 'Calculate Zakat';

  @override
  String get nisabNotReached => 'Nisobga etib bormadi. Zakot farz emas.';

  @override
  String get totalZakat => 'Jami zakot';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisob: $nisab • Obyektlar: $assets';
  }

  @override
  String get zakatGoldZakat => 'Oltin zakot';

  @override
  String get zakatSilverZakat => 'Kumush zakot';

  @override
  String get zakatCashZakat => 'Naqd zakot';

  @override
  String get zakatBusinessZakat => 'Biznes zakot';

  @override
  String get zakatInvestmentZakat => 'Investitsiya zakot';

  @override
  String get chatbotGreeting =>
      'Assalomu alaykum! Men sizning islomiy yordamchingizman. Mendan namoz, ro\'za, zakot yoki biron bir islomiy mavzu haqida so\'rang.';

  @override
  String get chatbotLimitReached =>
      'Kunlik soʻrovlar chegarasiga yetdi. Cheksiz Premiumga yangilang.';

  @override
  String get chatbotErrorMsg =>
      'Men javob yarata olmadim. Iltimos, qayta urinib koʻring.';

  @override
  String get chatbotOfflinePrompt =>
      'Tasdiqlangan oflayn islomiy bilimlar bazasi hali ham tuzatilmoqda. Siz hozir oflayn qayta tiklashni yoqishingiz mumkin, ammo manba maʼlumotlar toʻplami tayyor boʻlgunga qadar u faqat cheklangan xavfsiz xabarlarni koʻrsatadi.\n\nOflayn qayta tiklashni yoqmoqchimisiz?';

  @override
  String get chatbotOfflineSwitched =>
      'Oflayn qayta tiklash yoqilgan. Tasdiqlangan mahalliy islomiy javoblar hali tayyor emas.';

  @override
  String get chatbotOfflineDownloadLabel => 'Oflayn qayta tiklashni yoqish';

  @override
  String get downloadPreparing => 'Yuklash tayyorlanmoqda...';

  @override
  String downloadingSurah(String surah, String total) {
    return '$surah / $total surasi yuklab olinmoqda';
  }

  @override
  String get downloadCompleted =>
      'Bu qori uchun barcha suralar allaqachon yuklab olingan.';

  @override
  String get offlineQuranAudioPacks => 'Oflayn Qur\'on audio to\'plamlari';

  @override
  String storedOnDeviceMb(String size) {
    return 'Qurilmada saqlangan: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total suralar yuklab olindi';
  }

  @override
  String get redownloadMissingRepair => 'Ta\'mirlash / Yuklab olish yo\'qolgan';

  @override
  String get downloadAction => 'Yuklab oling';

  @override
  String get resumeDownload => 'Yuklashni davom ettirish';

  @override
  String get deleteDownloadedFiles => 'Yuklab olingan fayllarni o\'chirish';

  @override
  String get downloadCancelling => 'Bekor qilinmoqda...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return '$reciter uchun yuklab olish bekor qilindi.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return '$reciter uchun yuklab olindi.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return '$reciter uchun $failed muvaffaqiyatsiz suralarni yuklab olish tugadi ($downloaded/$total yuklab olindi).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return '$reciter uchun oflayn fayllar o‘chirib tashlandi.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Tasdiqlangan Qur\'on audio manbalari hozirda mavjud emas.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Tasdiqlangan Qurʼon audio toʻplami toʻliq emas ($available/$total). Bulut urugʻini yangilang va qaytadan urinib koʻring.';
  }

  @override
  String get chatbotHint => 'Savol bering...';

  @override
  String get chatbotThinking => 'O\'ylash...';

  @override
  String get sukunMixerSubtitle => 'Tabiat va Qur\'on mikser';

  @override
  String get audioPlayFailed => 'Audio ijro qilinmadi';

  @override
  String get sukunNatureLabel => 'Sukun (tabiat)';

  @override
  String get sukunRainOfMercy => 'Mehribonlik yomg\'iri';

  @override
  String get sukunGardenOfPeace => 'Tinchlik bog\'i';

  @override
  String get sukunMidnightCalm => 'Yarim tun tinch';

  @override
  String get sukunOceanTawheed => 'Okean tavhidi';

  @override
  String get sukunUnavailableTitle => 'Ovoz manzaralari mavjud emas';

  @override
  String get sukunUnavailableBody =>
      'Ushbu tuzilma hali zarur Sukun soundscape aktivlarini o\'z ichiga olmaydi.';

  @override
  String get prayerCompletion => 'Namozni yakunlash';

  @override
  String get streaks => 'Chiziqlar';

  @override
  String get dayStreak => 'Kunlik chiziq';

  @override
  String get bestStreak => 'Best streak';

  @override
  String get chatbotCloudAiLabel => 'Bulutli AI';

  @override
  String get chatbotLocalAiLabel => 'Oflayn qayta tiklash';

  @override
  String get chatbotUseCloudAi => 'Cloud AI (Gemini) dan foydalaning';

  @override
  String get chatbotDownloadLocalAi => 'Oflayn qayta tiklashni yoqish';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count qoldi';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API sozlanmagan. Tasdiqlangan oflayn islomiy koʻrsatmalar hali mavjud emas.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Tasdiqlangan mahalliy islomiy koʻrsatmalar hali mavjud emas. Manbali javoblar uchun Cloud AI-ga o\'ting.';

  @override
  String get mosques => 'Masjidlar';

  @override
  String get halalFood => 'Halol taom';

  @override
  String get placesSearchArea => 'Ushbu hududni qidiring';

  @override
  String get nearbyMosques => 'Yaqin masjidlar';

  @override
  String get islamicSchools => 'Islom maktablari';

  @override
  String placesFoundCount(String count) {
    return '$count topildi';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km uzoqlikda';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API xatosi: $statusCode';
  }

  @override
  String get placesNetworkError =>
      'Tarmoq xatosi. Iltimos, qayta urinib koʻring.';

  @override
  String get placesLocationRequiredTitle => 'Joylashuv talab qilinadi';

  @override
  String get placesLocationRequiredBody =>
      'Yaqin atrofdagi masjidlar, halol taomlar va islomiy maktablarni aniq qidirish uchun birinchi navbatda joyni belgilang.';

  @override
  String get placesMapTilesUnavailableTitle => 'Xarita plitalari mavjud emas';

  @override
  String get placesMapTilesUnavailableBody =>
      'Tasdiqlangan xaritalar manbasi hali bu tuzilish uchun sozlanmagan. Yaqin-atrofdagi joylar hali ham saqlangan joylashuvingizdan yuklanishi mumkin.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'Joylar maʼlumotlari mavjud emas';

  @override
  String get placesDataSourceUnavailableBody =>
      'Tasdiqlangan joylar maʼlumotlarining soʻnggi nuqtasi bu tuzilish uchun hali sozlanmagan. Yaqin atrofdagi qidiruvni yoqishdan oldin PLACES_OVERPASS_API_URL manzilini tasdiqlangan proksi-server yoki provayderga sozlang.';

  @override
  String get unknownPlaceName => 'Noma\'lum ism';

  @override
  String get islamicPlaceFallback => 'Islomiy joy';

  @override
  String get asmaMeaning1 => 'Mehribon';

  @override
  String get asmaMeaning2 => 'Mehribon';

  @override
  String get asmaMeaning3 => 'Qirol / Abadiy Rabbiy';

  @override
  String get asmaMeaning4 => 'Eng muqaddas';

  @override
  String get asmaMeaning5 => 'Tinchlik manbai';

  @override
  String get asmaMeaning6 => 'Xavfsizlik beruvchi';

  @override
  String get asmaMeaning7 => 'The Guardian';

  @override
  String get asmaMeaning8 => 'Qimmatli / Eng Qudratli';

  @override
  String get asmaMeaning9 => 'Majburlovchi';

  @override
  String get asmaMeaning10 => 'Eng buyuk';

  @override
  String get asmaMeaning11 => 'Yaratuvchi';

  @override
  String get asmaMeaning12 => 'Buyurtma beruvchi';

  @override
  String get asmaMeaning13 => 'Go\'zallikning Shakllantiruvchisi';

  @override
  String get asmaMeaning14 => 'Kechirimli';

  @override
  String get asmaMeaning15 => 'Bo‘ysundiruvchi';

  @override
  String get asmaMeaning16 => 'Hammasini beruvchi';

  @override
  String get asmaMeaning17 => 'Rabbiy';

  @override
  String get asmaMeaning18 => 'Ochish';

  @override
  String get asmaMeaning19 => 'Hamma narsani biluvchi';

  @override
  String get asmaMeaning20 => 'Konstruktor';

  @override
  String get asmaMeaning21 => 'Tinchlantiruvchi';

  @override
  String get asmaMeaning22 => 'Abaser';

  @override
  String get asmaMeaning23 => 'Exalter';

  @override
  String get asmaMeaning24 => 'Hurmat sohibi';

  @override
  String get asmaMeaning25 => 'Xo\'rlovchi';

  @override
  String get asmaMeaning26 => 'Hammasini Eshituvchi';

  @override
  String get asmaMeaning27 => 'Hammasini ko\'ruvchi';

  @override
  String get asmaMeaning28 => 'Sudya';

  @override
  String get asmaMeaning29 => 'Odil';

  @override
  String get asmaMeaning30 => 'Nozik';

  @override
  String get asmaMeaning31 => 'Hamma xabardor';

  @override
  String get asmaMeaning32 => 'The Forebearing';

  @override
  String get asmaMeaning33 => 'Muhtasham';

  @override
  String get asmaMeaning34 => 'Buyuk kechiruvchi';

  @override
  String get asmaMeaning35 => 'Minnatdorchilikni mukofotlovchi';

  @override
  String get asmaMeaning36 => 'Eng yuqori';

  @override
  String get asmaMeaning37 => 'Eng buyuk';

  @override
  String get asmaMeaning38 => 'Muhofaza qiluvchi';

  @override
  String get asmaMeaning39 => 'Oziqlantiruvchi';

  @override
  String get asmaMeaning40 => 'Hisobchi';

  @override
  String get asmaMeaning41 => 'Majestik';

  @override
  String get asmaMeaning42 => 'Saxovatli';

  @override
  String get asmaMeaning43 => 'Ehtiyotkor';

  @override
  String get asmaMeaning44 => 'Ibodatga javob beruvchi';

  @override
  String get asmaMeaning45 => 'Hamma narsani tushunish';

  @override
  String get asmaMeaning46 => 'Mukammal dono';

  @override
  String get asmaMeaning47 => 'Sevgili';

  @override
  String get asmaMeaning48 => 'Eng ulug\'vor';

  @override
  String get asmaMeaning49 => 'Tiriluvchi';

  @override
  String get asmaMeaning50 => 'Guvoh';

  @override
  String get asmaMeaning51 => 'Haqiqat';

  @override
  String get asmaMeaning52 => 'Hammasi yetarli ishonchli boshqaruvchi';

  @override
  String get asmaMeaning53 => 'Barcha Kuch Egasi';

  @override
  String get asmaMeaning54 => 'Kuchli';

  @override
  String get asmaMeaning55 => 'Himoyachi';

  @override
  String get asmaMeaning56 => 'Maqtovli';

  @override
  String get asmaMeaning57 => 'Baholovchi';

  @override
  String get asmaMeaning58 => 'Originator';

  @override
  String get asmaMeaning59 => 'Qayta tiklovchi';

  @override
  String get asmaMeaning60 => 'Hayot Beruvchi';

  @override
  String get asmaMeaning61 => 'Hayot oluvchi';

  @override
  String get asmaMeaning62 => 'Har doim tirik';

  @override
  String get asmaMeaning63 => 'Oʻz-oʻzini taʼminlovchi';

  @override
  String get asmaMeaning64 => 'The Finder';

  @override
  String get asmaMeaning65 => 'Shon-sharafli';

  @override
  String get asmaMeaning66 => 'Yagona';

  @override
  String get asmaMeaning67 => 'Bir';

  @override
  String get asmaMeaning68 => 'Hamma tomonidan qidirilgan';

  @override
  String get asmaMeaning69 => 'Kuchli';

  @override
  String get asmaMeaning70 => 'Barcha kuchlarning Yaratuvchisi';

  @override
  String get asmaMeaning71 => 'Tezkor';

  @override
  String get asmaMeaning72 => 'Kechiktiruvchi';

  @override
  String get asmaMeaning73 => 'Birinchi';

  @override
  String get asmaMeaning74 => 'Oxirgi';

  @override
  String get asmaMeaning75 => 'Manifest';

  @override
  String get asmaMeaning76 => 'Yashirin';

  @override
  String get asmaMeaning77 => 'Gubernator';

  @override
  String get asmaMeaning78 => 'Oliy Zot';

  @override
  String get asmaMeaning79 => 'Yaxshilik qiluvchi';

  @override
  String get asmaMeaning80 => 'Tavba qilish uchun qo\'llanma';

  @override
  String get asmaMeaning81 => 'Qasoskor';

  @override
  String get asmaMeaning82 => 'Kechiruvchi';

  @override
  String get asmaMeaning83 => 'Klement';

  @override
  String get asmaMeaning84 => 'Hammaning Egasi/Hukmdori';

  @override
  String get asmaMeaning85 => 'Ulugʻlik va fazl sohibi';

  @override
  String get asmaMeaning86 => 'Adolatli';

  @override
  String get asmaMeaning87 => 'Yig\'uvchi';

  @override
  String get asmaMeaning88 => 'Boy';

  @override
  String get asmaMeaning89 => 'Boyituvchi';

  @override
  String get asmaMeaning90 => 'Zararning oldini oluvchi';

  @override
  String get asmaMeaning91 => 'Zarar keltiruvchi';

  @override
  String get asmaMeaning92 => 'Foydalar ato etuvchi';

  @override
  String get asmaMeaning93 => 'Nur';

  @override
  String get asmaMeaning94 => 'Yo\'lboshchi';

  @override
  String get asmaMeaning95 => 'Originator';

  @override
  String get asmaMeaning96 => 'Abadiy';

  @override
  String get asmaMeaning97 => 'Meroschi';

  @override
  String get asmaMeaning98 => 'Eng solih yo\'lboshchi';

  @override
  String get asmaMeaning99 => 'Bemor';
}
