// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tagalog (`tl`).
class AppLocalizationsTl extends AppLocalizations {
  AppLocalizationsTl([String locale = 'tl']) : super(locale);

  @override
  String get appTitle => 'Daan ng Allah';

  @override
  String get splashTagline => 'Islamikong Daan ng Liwanag';

  @override
  String get home => 'Bahay';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Kalendaryo';

  @override
  String get settings => 'Mga setting';

  @override
  String get nextPrayer => 'Susunod na Panalangin';

  @override
  String get prayerTimes => 'Oras ng Panalangin';

  @override
  String get continueReading => 'Magpatuloy sa Pagbabasa';

  @override
  String get getLifetimePro => 'Kumuha ng Lifetime Pro';

  @override
  String get unlockTajweed => 'I-unlock ang Tajweed at Advanced na Mga Tampok';

  @override
  String get prayerCalculation => 'Pagkalkula ng Panalangin';

  @override
  String get method => 'Paraan ng Pagkalkula';

  @override
  String get madhab => 'Asr Juristic Method';

  @override
  String get surahs => 'Mga Surah';

  @override
  String get ayahs => 'Mga Ayah';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'pagsikat ng araw';

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
    return 'Oras para sa $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Oras na para manalangin ng $prayerName.';
  }

  @override
  String get dataStorage => 'Data at Imbakan';

  @override
  String get clearCache => 'I-clear ang Cache';

  @override
  String get cacheClearedSuccess => 'Matagumpay na na-clear ang cache';

  @override
  String get location => 'Lokasyon';

  @override
  String get language => 'Wika';

  @override
  String get selectLanguage => 'Piliin ang Wika';

  @override
  String get searchLanguage => 'Maghanap ng 180+ wika...';

  @override
  String get systemDefault => 'System Default';

  @override
  String get currentLocation => 'Kasalukuyang Lokasyon (GPS)';

  @override
  String get locationServiceDisabled =>
      'Naka-disable ang serbisyo sa lokasyon.';

  @override
  String get locationPermissionDenied =>
      'Tinanggihan ang pahintulot sa lokasyon.';

  @override
  String get locationDetectionFailed =>
      'Hindi matukoy ang iyong lokasyon. Mangyaring pumili ng lungsod nang manu-mano o subukang muli.';

  @override
  String citiesCount(String count) {
    return '$count lungsod';
  }

  @override
  String get search => 'Maghanap';

  @override
  String get searchHint => 'Hanapin...';

  @override
  String get noResults => 'Walang nakitang resulta';

  @override
  String get loading => 'Naglo-load...';

  @override
  String get error => 'Error';

  @override
  String get appErrorOccurred => 'May naganap na error';

  @override
  String get appUnknownError => 'Hindi kilalang error';

  @override
  String get quranLoadFailed =>
      'Hindi ma-load ang nilalaman ng Quran. Pakisubukang muli.';

  @override
  String get retry => 'Subukan muli';

  @override
  String get refreshAction => 'I-refresh';

  @override
  String get cancel => 'Kanselahin';

  @override
  String get save => 'I-save';

  @override
  String get delete => 'Tanggalin';

  @override
  String get edit => 'I-edit';

  @override
  String get close => 'Isara';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Oo';

  @override
  String get no => 'Hindi';

  @override
  String get surah => 'Surah';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Pahina';

  @override
  String get reading => 'Nagbabasa';

  @override
  String get recitation => 'Pagbigkas';

  @override
  String get translation => 'Pagsasalin';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Nilo-load ang tafsir...';

  @override
  String get tafsirSourceLabel => 'Tafsir source';

  @override
  String get tafsirNoSurahFound =>
      'Walang nakitang tafsir para sa surah na ito.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Walang nakitang tafsir para kay ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Hindi ma-load ang Tafsir.';

  @override
  String get tafsirNoTextForAyah =>
      'Walang teksto ng tafsir para sa ayah na ito.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Dina-download ang tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Nilo-load ang tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Nagbalik ang Tafsir source ng HTTP $statusCode error.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Walang naibalik na mga entry ang napiling tafsir source.';

  @override
  String get bookmarks => 'Mga bookmark';

  @override
  String get addBookmark => 'Magdagdag ng Bookmark';

  @override
  String get removeBookmark => 'Alisin ang Bookmark';

  @override
  String get lastRead => 'Huling Pagbasa';

  @override
  String get dailyZikr => 'Pang-araw-araw na Zikr';

  @override
  String get duaMeaning1 =>
      'ang iba ay nagdarasal, ‘Panginoon namin, bigyan mo kami ng kabutihan sa mundong ito at sa Kabilang-Buhay, at iligtas mo kami sa pahirap ng Apoy.’';

  @override
  String get duaMeaning2 =>
      'Ang Diyos ay hindi nagpapabigat sa sinumang kaluluwa ng higit sa kanyang makakaya: bawat isa ay nakakamit ng anumang kabutihan na kanyang nagawa, at nagdurusa sa kanyang kasamaan- ‘Panginoon, huwag mo kaming bigyan ng gawain kung kami ay nakakalimutan o nagkakamali. Panginoon, huwag Mo kaming pabigatin gaya ng pagpapasan Mo sa mga nauna sa amin. Panginoon, huwag Mo kaming pabigatan ng higit pa sa aming lakas upang pasanin. Patawarin mo kami, patawarin mo kami, at maawa ka sa amin. Ikaw ang aming Tagapagtanggol, kaya tulungan mo kami laban sa mga hindi naniniwala.’';

  @override
  String get duaMeaning3 =>
      '‘Aming Panginoon, huwag mong hayaang lumihis ang aming mga puso pagkatapos Mo kaming gabayan. Ipagkaloob Mo sa amin ang Iyong awa: Ikaw ang Laging Nagbibigay.';

  @override
  String get duaMeaning4 =>
      'Panginoon, ipagkaloob mo na ako at ang aking mga supling ay mapanatili ang panalangin. Panginoon, tanggapin mo ang aking kahilingan.';

  @override
  String get duaMeaning5 =>
      'at ibaba ang iyong pakpak sa pagpapakumbaba sa kanila sa kagandahang-loob at sabihin, \'Panginoon, maawa ka sa kanila, tulad ng kanilang pag-aalaga sa akin noong ako ay maliit pa.\'';

  @override
  String get duaMeaning6 =>
      'dakilain ang Diyos, ang tunay na may kontrol. [Propeta], huwag magmadali sa pagbigkas bago ganap na ganap ang paghahayag ngunit sabihin, ‘Panginoon, dagdagan mo ako ng kaalaman!’';

  @override
  String get duaMeaning7 =>
      'Sabihin [Propeta], ‘Panginoon, magpatawad at maawa ka: Ikaw ang pinakamaawain sa lahat.\'';

  @override
  String get duaMeaning8 =>
      'ang mga nagdarasal, ‘Aming Panginoon, bigyan mo kami ng kagalakan sa aming mga asawa at mga supling. Gawin Mo kaming mabuting halimbawa sa mga nakakaalam sa Iyo’.';

  @override
  String get morningZikr => 'Zikr sa umaga';

  @override
  String get eveningZikr => 'Panggabing Zikr';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masa\'il';

  @override
  String get hadith => 'Hadith';

  @override
  String get hadithCollection => 'Koleksyon ng Hadith';

  @override
  String get hadithBooks => 'Mga Aklat ng Hadith';

  @override
  String get searchHadith => 'Maghanap ng Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Mga Pangalan ng Allah';

  @override
  String get liveTv => 'Live na TV';

  @override
  String get watchLive => 'Manood ng Live';

  @override
  String get streamError => 'Error sa stream';

  @override
  String get reload => 'I-reload';

  @override
  String get openInYoutube => 'Buksan sa YouTube';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Pag-aayuno';

  @override
  String get quranReading => 'Pagbasa ng Quran';

  @override
  String get prayers => 'Mga panalangin';

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
  String get dhikrCount => 'Bilang ng Dhikr';

  @override
  String get weeklyProgress => 'Lingguhang Pag-unlad';

  @override
  String get monthlyProgress => 'Buwanang Pag-unlad';

  @override
  String get statistics => 'Mga istatistika';

  @override
  String get hijriCalendar => 'Kalendaryo ng Hijri';

  @override
  String get gregorianCalendar => 'Kalendaryong Gregorian';

  @override
  String get today => 'Ngayong araw';

  @override
  String get tomorrow => 'Bukas';

  @override
  String get yesterday => 'Kahapon';

  @override
  String get specialDays => 'Mga Espesyal na Araw';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Bagong Taon ng Islam';

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
  String get qiblaDirection => 'Direksyon ng Qibla';

  @override
  String get compass => 'Kumpas';

  @override
  String get degrees => 'digri';

  @override
  String get north => 'Hilaga';

  @override
  String get qiblaFound => 'Natagpuan ang Qibla!';

  @override
  String get turnDevice => 'Lumiko ang iyong device upang humarap sa Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Error sa compass: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Hindi available ang compass sensor sa device na ito.';

  @override
  String get qiblaLocationRequiredTitle =>
      'Kinakailangan ang lokasyon para sa Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Itakda ang iyong aktwal na lokasyon bago gamitin ang Qibla compass para tumpak na makalkula ang direksyon.';

  @override
  String get adhanNotificationChannelName => 'Mga Notification ng Adhan';

  @override
  String get adhanNotificationChannelDescription =>
      'Mga alerto sa oras ng panalangin na may tunog ng adhan.';

  @override
  String get notifications => 'Mga abiso';

  @override
  String get prayerNotifications => 'Mga Abiso sa Panalangin';

  @override
  String get enableNotifications => 'Paganahin ang Mga Notification';

  @override
  String get notificationTime => 'Oras ng Pag-abiso';

  @override
  String get beforePrayer => 'minuto bago ang panalangin';

  @override
  String get theme => 'Tema';

  @override
  String get lightMode => 'Light Mode';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get systemTheme => 'Tema ng System';

  @override
  String get about => 'Tungkol sa';

  @override
  String get version => 'Bersyon';

  @override
  String get privacyPolicy => 'Patakaran sa Privacy';

  @override
  String get termsOfService => 'Mga Tuntunin ng Serbisyo';

  @override
  String get contactUs => 'Makipag-ugnayan sa Amin';

  @override
  String get rateApp => 'I-rate ang App';

  @override
  String get shareApp => 'Ibahagi ang App';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Tingnan ang $appName: Ang ultimate Islamic lifestyle app! $url';
  }

  @override
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'Mga download';

  @override
  String get downloading => 'Dina-download...';

  @override
  String get downloadComplete => 'Kumpleto na ang pag-download';

  @override
  String get downloadFailed => 'Nabigo ang pag-download';

  @override
  String get offlineMode => 'Offline na Mode';

  @override
  String get noInternet => 'Walang Koneksyon sa Internet';

  @override
  String get checkConnection => 'Pakisuri ang iyong koneksyon';

  @override
  String get premium => 'Premium';

  @override
  String get upgradeToPro => 'Mag-upgrade sa Pro';

  @override
  String get proFeatures => 'Mga Tampok ng Pro';

  @override
  String get removeAds => 'Alisin ang Mga Ad';

  @override
  String get unlockAll => 'I-unlock ang Lahat ng Nilalaman';

  @override
  String get exclusiveContent => 'Eksklusibong Nilalaman';

  @override
  String get welcome => 'Maligayang pagdating';

  @override
  String get getStarted => 'Magsimula';

  @override
  String get skip => 'Laktawan';

  @override
  String get next => 'Susunod';

  @override
  String get done => 'Tapos na';

  @override
  String get onboarding1Title => 'Maligayang pagdating sa Daan ng Allah';

  @override
  String get onboarding1Desc =>
      'Ang iyong kumpletong Islamic companion app para sa mga oras ng pagdarasal, Quran, at higit pa';

  @override
  String get onboarding2Title => 'Oras ng Panalangin';

  @override
  String get onboarding2Desc =>
      'Tumpak na oras ng panalangin batay sa iyong lokasyon';

  @override
  String get onboarding3Title => 'Quran at Higit Pa';

  @override
  String get onboarding3Desc =>
      'Magbasa ng Quran, subaybayan ang iyong pagbabasa, at tuklasin ang nilalamang Islamiko';

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
  String get zikrCompletedMashAllah => 'Tapos na! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Si Allah ay higit sa lahat ng di-kasakdalan.';

  @override
  String get zikrMeaningAlhamdulillah => 'Ang lahat ng papuri ay kay Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Si Allah ang Pinakamadakila.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Walang diyos kundi si Allah.';

  @override
  String get zikrMeaningAstaghfirullah =>
      'Humihingi ako ng kapatawaran sa Allah.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Walang kapangyarihan at walang lakas maliban sa pamamagitan ng Allah.';

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
  String get offlineDownloadManager => 'Offline na Download Manager';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Magbakante ng panloob na storage ng device.';

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
  String get audioVoice => 'Audio Voice';

  @override
  String get audioVoiceMisharyAlafasy => 'Lalaki (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Lalaki (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Lalaki (Sudais)';

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
  String get diagnosticsNotSet => 'Hindi nakatakda';

  @override
  String get diagnosticsPrayerProfile => 'Profile ng Panalangin';

  @override
  String get diagnosticsPrayerSource => 'Awtoridad sa Panalangin';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Mga manu-manong custom na anggulo (walang institusyonal na pinagmulan)';

  @override
  String get diagnosticsCloudDriven => 'Cloud Driven';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI Audio Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Quran Audio Asset';

  @override
  String get diagnosticsAudioAssets => 'Mga Audio Asset';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count file';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Nabigo ang pagbabasa ng manifest: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Mga Lokal na Lokalisasyon';

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
      'Nawawala ang mga cloud table sa Supabase; aktibo ang naka-bundle na fallback';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud check failed: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Nawawala ang metadata ng cloud juz; naka-bundle na structural fallback aktibo';

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
  String get dailyVerse => 'Araw-araw na Talata';

  @override
  String get todaysIbadah => 'Ibadah ngayon';

  @override
  String get quickAccess => 'Mabilis na Access';

  @override
  String get assistant => 'Katulong';

  @override
  String get places => 'Mga lugar';

  @override
  String get library => 'Aklatan';

  @override
  String get analytics => 'Analytics';

  @override
  String get dailyDuas => 'Araw-araw na Duas';

  @override
  String essentialDuas(String count) {
    return '$count mahahalagang duas';
  }

  @override
  String get duaUnavailableTitle =>
      'Hindi pa available ang mga na-verify na dua';

  @override
  String get duaUnavailableBody =>
      'Ang mga na-verify na pang-araw-araw na dua ay hindi pa na-sync sa device na ito. Kumonekta sa cloud source para i-load ang mga sourced na dua sa halip na isang hindi na-verify na fallback.';

  @override
  String get duaCategoryQuranic => 'Quranikong dua';

  @override
  String get duaCategoryMorningEvening => 'Umaga at Gabi';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Proteksyon';

  @override
  String get duaCategoryBeginning => 'Mga simula';

  @override
  String get duaCategorySleep => 'Matulog';

  @override
  String get duaCategoryFoodDrink => 'Pagkain at Inumin';

  @override
  String get duaCategoryForgiveness => 'Pagpapatawad';

  @override
  String get duaCategoryHome => 'Bahay';

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
  String get islamicEducation => 'Edukasyong Islamiko';

  @override
  String get sukunAudioTitle => 'Sukun Soundscapes';

  @override
  String get hadithCollections => 'Mga Koleksyon ng Hadith';

  @override
  String get hadithSourcePending => 'Nakabinbin ang na-verify na pinagmulan';

  @override
  String get hadithUnavailableTitle =>
      'Hindi pa available ang mga na-verify na koleksyon ng hadith';

  @override
  String get hadithUnavailableBody =>
      'Nakadepende pa rin ang build na ito sa isang hindi na-verify na external na feed ng hadith. Mananatiling naka-disable ang pag-browse sa Hadith hanggang sa ma-sync ang isang sourced dataset.';

  @override
  String get paywallUnlockAll =>
      'I-unlock ang lahat ng feature para sa iyong espirituwal na paglalakbay';

  @override
  String get premiumProductUnavailable =>
      'Ang premium na produkto ay hindi magagamit sa ngayon. Pakisubukang muli mamaya.';

  @override
  String get premiumPurchaseFailed =>
      'Hindi makumpleto ang pagbili. Pakisubukang muli.';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'Walang limitasyong AI-powered Q&A';

  @override
  String get paywallFeature2Title => 'Walang limitasyong Offline';

  @override
  String get paywallFeature2Desc => 'I-download ang lahat ng recitations';

  @override
  String get paywallFeature3Title => 'Mga Eksklusibong Disenyo';

  @override
  String get paywallFeature3Desc => 'Mga premium na tema at font';

  @override
  String get paywallFeature4Title => 'Walang Ad';

  @override
  String get paywallFeature4Desc => 'Zero advertisement';

  @override
  String get paywallGetAccess => 'Kumuha ng Panghabambuhay na Access — \$1.00';

  @override
  String get restorePurchases => 'Ibalik ang Mga Pagbili';

  @override
  String get zakatCalculator => 'Calculator ng Zakat';

  @override
  String get zakatGold => 'Ginto (Altın)';

  @override
  String get zakatSilver => 'Pilak (Gümüş)';

  @override
  String get zakatCashBank => 'Cash / Bangko';

  @override
  String get zakatBusiness => 'negosyo';

  @override
  String get zakatInvestments => 'Mga pamumuhunan';

  @override
  String get zakatWeightGrams => 'Timbang (g)';

  @override
  String get zakatPricePerGram => 'Presyo/g';

  @override
  String get zakatTotalAmount => 'Kabuuang Halaga';

  @override
  String get zakatInventoryValue => 'Halaga ng Imbentaryo';

  @override
  String get zakatDebts => 'Mga utang';

  @override
  String get zakatTotal => 'Kabuuan';

  @override
  String get calculateZakat => 'Kalkulahin ang Zakat';

  @override
  String get nisabNotReached =>
      'Hindi naabot ang Nisab. Ang Zakat ay hindi obligado.';

  @override
  String get totalZakat => 'Kabuuang Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Assets: $assets';
  }

  @override
  String get zakatGoldZakat => 'Gintong Zakat';

  @override
  String get zakatSilverZakat => 'Silver Zakat';

  @override
  String get zakatCashZakat => 'Cash Zakat';

  @override
  String get zakatBusinessZakat => 'Zakat sa Negosyo';

  @override
  String get zakatInvestmentZakat => 'Investment Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Naabot na ang limitasyon sa pang-araw-araw na query. Mag-upgrade sa Premium para sa unlimited.';

  @override
  String get chatbotErrorMsg =>
      'Hindi ako makabuo ng tugon. Pakisubukang muli.';

  @override
  String get chatbotOfflinePrompt =>
      'Kinu-curate pa rin ang na-verify na offline na Islamic knowledge base. Maaari mong paganahin ang offline na fallback ngayon, ngunit magpapakita lamang ito ng mga limitadong ligtas na mensahe hanggang sa handa na ang pinagkunan na dataset.\n\nGusto mo bang paganahin ang offline na fallback?';

  @override
  String get chatbotOfflineSwitched =>
      'Naka-enable ang offline na fallback. Ang mga na-verify na lokal na sagot sa Islam ay hindi pa handa.';

  @override
  String get chatbotOfflineDownloadLabel => 'Paganahin ang Offline Fallback';

  @override
  String get downloadPreparing => 'Inihahanda ang pag-download...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Dina-download ang surah $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Na-download na ang lahat ng surah para sa reciter na ito.';

  @override
  String get offlineQuranAudioPacks => 'Offline Quran Audio Packs';

  @override
  String storedOnDeviceMb(String size) {
    return 'Stored on device: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surah ang na-download';
  }

  @override
  String get redownloadMissingRepair => 'Ayusin / Nawawala ang Download';

  @override
  String get downloadAction => 'I-download';

  @override
  String get resumeDownload => 'Ipagpatuloy ang Pag-download';

  @override
  String get deleteDownloadedFiles => 'Tanggalin ang mga Na-download na File';

  @override
  String get downloadCancelling => 'Kinakansela...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Kinansela ang pag-download para sa $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Nakumpleto ang pag-download para sa $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Natapos na ang pag-download para sa $reciter na may $failed na mga nabigong surah ($downloaded/$total ang na-download).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Deleted offline files for $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Hindi available sa ngayon ang mga na-verify na mapagkukunan ng audio ng Quran.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Ang na-verify na Quran audio pack ay hindi kumpleto ($available/$total). I-refresh ang cloud seed at subukang muli.';
  }

  @override
  String get chatbotHint => 'Ask a question...';

  @override
  String get chatbotThinking => 'Thinking...';

  @override
  String get sukunMixerSubtitle => 'Panghalo ng Kalikasan at Qur\'an';

  @override
  String get audioPlayFailed => 'Audio playback failed';

  @override
  String get sukunNatureLabel => 'Sukun (Kalikasan)';

  @override
  String get sukunRainOfMercy => 'Ulan ng Awa';

  @override
  String get sukunGardenOfPeace => 'Hardin ng Kapayapaan';

  @override
  String get sukunMidnightCalm => 'Hatinggabi Kalmado';

  @override
  String get sukunOceanTawheed => 'Ocean Tawheed';

  @override
  String get sukunUnavailableTitle => 'Hindi available ang mga soundscape';

  @override
  String get sukunUnavailableBody =>
      'Hindi pa kasama sa build na ito ang mga kinakailangang Sukun soundscape asset.';

  @override
  String get prayerCompletion => 'Prayer Completion';

  @override
  String get streaks => 'Streaks';

  @override
  String get dayStreak => 'Day streak';

  @override
  String get bestStreak => 'Pinakamahusay na streak';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Offline na Fallback';

  @override
  String get chatbotUseCloudAi => 'Gamitin ang Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Paganahin ang Offline Fallback';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count ang natitira';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Hindi naka-configure ang Cloud API. Hindi pa available ang na-verify na offline na gabay sa Islam.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Hindi pa available ang na-verify na lokal na gabay sa Islam. Lumipat sa Cloud AI para sa mga sourced na sagot.';

  @override
  String get mosques => 'Mga Mosque';

  @override
  String get halalFood => 'Halal na Pagkain';

  @override
  String get placesSearchArea => 'Hanapin ang lugar na ito';

  @override
  String get nearbyMosques => 'Mga Kalapit na Mosque';

  @override
  String get islamicSchools => 'Mga Paaralan ng Islam';

  @override
  String placesFoundCount(String count) {
    return '$count ang natagpuan';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km ang layo';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Error sa API: $statusCode';
  }

  @override
  String get placesNetworkError => 'Error sa network. Pakisubukang muli.';

  @override
  String get placesLocationRequiredTitle => 'Kinakailangan ang lokasyon';

  @override
  String get placesLocationRequiredBody =>
      'Magtakda muna ng lokasyon para tumpak na mahanap ang mga kalapit na mosque, halal na pagkain, at Islamic school.';

  @override
  String get placesMapTilesUnavailableTitle =>
      'Hindi available ang mga tile ng mapa';

  @override
  String get placesMapTilesUnavailableBody =>
      'Ang isang na-verify na pinagmulan ng tile ng mapa ay hindi pa naka-configure para sa build na ito. Maaari pa ring mag-load ang mga kalapit na lugar mula sa iyong naka-save na lokasyon.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'Hindi available ang data ng mga lugar';

  @override
  String get placesDataSourceUnavailableBody =>
      'Ang isang na-verify na endpoint ng data ng mga lugar ay hindi pa naka-configure para sa build na ito. Itakda ang PLACES_OVERPASS_API_URL sa isang aprubadong proxy o provider bago i-enable ang paghahanap sa malapit.';

  @override
  String get unknownPlaceName => 'Hindi Kilalang Pangalan';

  @override
  String get islamicPlaceFallback => 'Islamic Lugar';

  @override
  String get asmaMeaning1 => 'The Beneficent';

  @override
  String get asmaMeaning2 => 'Ang Maawain';

  @override
  String get asmaMeaning3 => 'Ang Hari / Walang Hanggang Panginoon';

  @override
  String get asmaMeaning4 => 'Ang Kabanal-banalan';

  @override
  String get asmaMeaning5 => 'Ang Pinagmumulan ng Kapayapaan';

  @override
  String get asmaMeaning6 => 'Ang Tagapagbigay ng Seguridad';

  @override
  String get asmaMeaning7 => 'Ang Tagapangalaga';

  @override
  String get asmaMeaning8 => 'Ang Mahalaga / Ang Pinakamakapangyarihan';

  @override
  String get asmaMeaning9 => 'The Compeller';

  @override
  String get asmaMeaning10 => 'Ang Pinakadakila';

  @override
  String get asmaMeaning11 => 'Ang Lumikha';

  @override
  String get asmaMeaning12 => 'Ang Gumawa ng Order';

  @override
  String get asmaMeaning13 => 'Ang Hugis ng Kagandahan';

  @override
  String get asmaMeaning14 => 'Ang Mapagpatawad';

  @override
  String get asmaMeaning15 => 'The Subduer';

  @override
  String get asmaMeaning16 => 'Ang Tagapagbigay ng Lahat';

  @override
  String get asmaMeaning17 => 'The Sustainer';

  @override
  String get asmaMeaning18 => 'Ang Pagbubukas';

  @override
  String get asmaMeaning19 => 'Ang Nakakaalam ng Lahat';

  @override
  String get asmaMeaning20 => 'The Constrictor';

  @override
  String get asmaMeaning21 => 'Ang Reliever';

  @override
  String get asmaMeaning22 => 'The Abaser';

  @override
  String get asmaMeaning23 => 'Ang Dakila';

  @override
  String get asmaMeaning24 => 'Ang Tagapagbigay ng karangalan';

  @override
  String get asmaMeaning25 => 'The Humiliator';

  @override
  String get asmaMeaning26 => 'Ang Nakaririnig ng Lahat';

  @override
  String get asmaMeaning27 => 'Ang Tagakita ng Lahat';

  @override
  String get asmaMeaning28 => 'Ang Hukom';

  @override
  String get asmaMeaning29 => 'Ang Makatarungan';

  @override
  String get asmaMeaning30 => 'Ang Tunay';

  @override
  String get asmaMeaning31 => 'The All Aware';

  @override
  String get asmaMeaning32 => 'Ang Forebearing';

  @override
  String get asmaMeaning33 => 'Ang Kahanga-hanga';

  @override
  String get asmaMeaning34 => 'Ang Dakilang Tagapagpatawad';

  @override
  String get asmaMeaning35 => 'Ang Gantimpala ng Pasasalamat';

  @override
  String get asmaMeaning36 => 'Ang Pinakamataas';

  @override
  String get asmaMeaning37 => 'Ang Pinakadakila';

  @override
  String get asmaMeaning38 => 'The Preserver';

  @override
  String get asmaMeaning39 => 'The Nourisher';

  @override
  String get asmaMeaning40 => 'The Reckoner';

  @override
  String get asmaMeaning41 => 'Ang Maharlika';

  @override
  String get asmaMeaning42 => 'Ang Mapagbigay';

  @override
  String get asmaMeaning43 => 'The Watchful One';

  @override
  String get asmaMeaning44 => 'Ang Tumutugon sa Panalangin';

  @override
  String get asmaMeaning45 => 'The All Comprehending';

  @override
  String get asmaMeaning46 => 'Ang Ganap na Matalino';

  @override
  String get asmaMeaning47 => 'Ang Nagmamahal';

  @override
  String get asmaMeaning48 => 'Ang Pinakamaluwalhati';

  @override
  String get asmaMeaning49 => 'Ang Muling Nabuhay';

  @override
  String get asmaMeaning50 => 'Ang Saksi';

  @override
  String get asmaMeaning51 => 'Ang Katotohanan';

  @override
  String get asmaMeaning52 => 'The All-Sufficient Trustee';

  @override
  String get asmaMeaning53 => 'Ang Nagmamay-ari ng Lahat ng Lakas';

  @override
  String get asmaMeaning54 => 'Ang Mapilit';

  @override
  String get asmaMeaning55 => 'Ang Tagapagtanggol';

  @override
  String get asmaMeaning56 => 'Ang Pinupuri';

  @override
  String get asmaMeaning57 => 'The Appraiser';

  @override
  String get asmaMeaning58 => 'Ang Nagsimula';

  @override
  String get asmaMeaning59 => 'The Restorer';

  @override
  String get asmaMeaning60 => 'Ang Tagapagbigay ng Buhay';

  @override
  String get asmaMeaning61 => 'Ang Buhay';

  @override
  String get asmaMeaning62 => 'Ang Kailanman Nabubuhay';

  @override
  String get asmaMeaning63 => 'The Self-Subsisting Sustainer';

  @override
  String get asmaMeaning64 => 'Ang Tagahanap';

  @override
  String get asmaMeaning65 => 'Ang Maluwalhati';

  @override
  String get asmaMeaning66 => 'The Only One';

  @override
  String get asmaMeaning67 => 'The One';

  @override
  String get asmaMeaning68 => 'Ang Hinahangad ng Lahat';

  @override
  String get asmaMeaning69 => 'Ang Makapangyarihan';

  @override
  String get asmaMeaning70 => 'Ang Lumikha ng lahat ng kapangyarihan';

  @override
  String get asmaMeaning71 => 'The Expediter';

  @override
  String get asmaMeaning72 => 'Ang Delayer';

  @override
  String get asmaMeaning73 => 'Ang Una';

  @override
  String get asmaMeaning74 => 'Ang Huli';

  @override
  String get asmaMeaning75 => 'The Manifest';

  @override
  String get asmaMeaning76 => 'Ang Nakatago';

  @override
  String get asmaMeaning77 => 'Ang Gobernador';

  @override
  String get asmaMeaning78 => 'Ang Kataas-taasan';

  @override
  String get asmaMeaning79 => 'The Doer of Good';

  @override
  String get asmaMeaning80 => 'Ang Patnubay sa Pagsisisi';

  @override
  String get asmaMeaning81 => 'Ang Tagapaghiganti';

  @override
  String get asmaMeaning82 => 'Ang Mapagpatawad';

  @override
  String get asmaMeaning83 => 'The Clement';

  @override
  String get asmaMeaning84 => 'Ang May-ari / Soberano ng Lahat';

  @override
  String get asmaMeaning85 => 'Ang Nagmamay-ari ng Kamahalan at Bounty';

  @override
  String get asmaMeaning86 => 'Ang Pantay';

  @override
  String get asmaMeaning87 => 'Ang Nagtitipon';

  @override
  String get asmaMeaning88 => 'Ang Mayaman';

  @override
  String get asmaMeaning89 => 'The Enricher';

  @override
  String get asmaMeaning90 => 'Ang Tagapagpigil sa Kapinsalaan';

  @override
  String get asmaMeaning91 => 'Ang Naghahatid ng Kapinsalaan';

  @override
  String get asmaMeaning92 => 'Ang Tagapagbigay ng Mga Benepisyo';

  @override
  String get asmaMeaning93 => 'Ang Liwanag';

  @override
  String get asmaMeaning94 => 'Ang Tagapatnubay';

  @override
  String get asmaMeaning95 => 'Ang Nagsimula';

  @override
  String get asmaMeaning96 => 'Ang Walang Hanggan';

  @override
  String get asmaMeaning97 => 'The Inheritor';

  @override
  String get asmaMeaning98 => 'Ang Pinaka Matuwid na Patnubay';

  @override
  String get asmaMeaning99 => 'The Patient One';
}
