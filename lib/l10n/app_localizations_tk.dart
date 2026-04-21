// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkmen (`tk`).
class AppLocalizationsTk extends AppLocalizations {
  AppLocalizationsTk([String locale = 'tk']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Yslamyň ýagtylyk ýoly';

  @override
  String get home => 'Öý';

  @override
  String get quran => 'Kuran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Senenama';

  @override
  String get settings => 'Sazlamalar';

  @override
  String get nextPrayer => 'Indiki doga';

  @override
  String get prayerTimes => 'Namaz wagtlary';

  @override
  String get continueReading => 'Continue Reading';

  @override
  String get getLifetimePro => 'Get Lifetime Pro';

  @override
  String get unlockTajweed => 'Unlock Tajweed & Advanced Features';

  @override
  String get prayerCalculation => 'Namazyň hasaplamasy';

  @override
  String get method => 'Hasaplama usuly';

  @override
  String get madhab => 'Asr hukuk usuly';

  @override
  String get surahs => 'Suralar';

  @override
  String get ayahs => 'Aýlar';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Günüň dogmagy';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Magrib';

  @override
  String get isha => 'Işa';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName wagty';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '$prayerName doga etmegiň wagty geldi.';
  }

  @override
  String get dataStorage => 'Maglumat we ammar';

  @override
  String get clearCache => 'Keşi arassalaň';

  @override
  String get cacheClearedSuccess => 'Keş üstünlikli arassalandy';

  @override
  String get location => 'Locationerleşýän ýeri';

  @override
  String get language => 'Dil';

  @override
  String get selectLanguage => 'Dil saýlaň';

  @override
  String get searchLanguage => 'Search 180+ languages...';

  @override
  String get systemDefault => 'Ulgam standarty';

  @override
  String get currentLocation => 'Häzirki ýerleşýän ýeri (GPS)';

  @override
  String get locationServiceDisabled => 'Locationerleşiş hyzmaty ýapyk';

  @override
  String get locationPermissionDenied =>
      'Locationerleşmek üçin rugsat berilmedi';

  @override
  String get locationDetectionFailed =>
      'Locationeriňizi anyklap bilmedim El bilen şäheri saýlaň ýa-da gaýtadan synanyşyň.';

  @override
  String citiesCount(String count) {
    return '$count şäherler';
  }

  @override
  String get search => 'Gözlemek';

  @override
  String get searchHint => 'Gözleg ...';

  @override
  String get noResults => 'Netije tapylmady';

  @override
  String get loading => 'Adingüklenýär ...';

  @override
  String get error => 'Roralňyşlyk';

  @override
  String get appErrorOccurred => 'Erroralňyşlyk ýüze çykdy';

  @override
  String get appUnknownError => 'Näbelli ýalňyşlyk';

  @override
  String get quranLoadFailed =>
      'Gurhanyň mazmuny ýüklenip bilinmedi. Gaýtadan synanyşmagyňyzy haýyş edýäris.';

  @override
  String get retry => 'Gaýtadan synanyşyň';

  @override
  String get refreshAction => 'Täzele';

  @override
  String get cancel => 'Elatyr';

  @override
  String get save => 'Saklaň';

  @override
  String get delete => 'Öçür';

  @override
  String get edit => 'Edit';

  @override
  String get close => 'Close';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Yes';

  @override
  String get no => '.Ok';

  @override
  String get surah => 'Sura';

  @override
  String ayahLabel(String ayah) {
    return 'Aýýa $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Sahypa';

  @override
  String get reading => 'Reading';

  @override
  String get recitation => 'Recitation';

  @override
  String get translation => 'Translation';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Tafsir ýüklenýär ...';

  @override
  String get tafsirSourceLabel => 'Tafsir çeşmesi';

  @override
  String get tafsirNoSurahFound => 'Bu süre üçin tafsir tapylmady.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Aýah $ayah üçin tafsir tapylmady.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir ýüklenip bilmedi.';

  @override
  String get tafsirNoTextForAyah => 'Bu aýat üçin tafsir teksti ýok.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Downloading tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Loading tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir çeşmesi, HTTP $statusCode säwligini yzyna gaýtardy.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Saýlanan tafsir çeşmesi hiç hili ýazgy yzyna gaýtarmady.';

  @override
  String get tafsirCacheUnavailable =>
      'Barlanylan tafsir entek awtonom görnüşde elýeterli däl. Göz aýlamazdan ozal berlen tafsir maglumat toplumyny sinhronlaň.';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get addBookmark => 'Bellik goşuň';

  @override
  String get removeBookmark => 'Belligi aýyryň';

  @override
  String get lastRead => 'Last Read';

  @override
  String get dailyZikr => 'Daily Zikr';

  @override
  String get duaMeaning1 =>
      'beýlekiler: \"Rebbimiz, bize bu dünýäde we ahyretde ýagşylyk bersin we bizi ot azabyndan gora\" diýýärler.';

  @override
  String get duaMeaning2 =>
      'Hudaý hiç bir jany göterip biläýjekden köp ýüklemeýär: her kim eden ýagşylygyny gazanýar we erbetligine duçar bolýar - “Lorda Reb, ýatdan çykarsaň ýa-da ýalňyşsak, bize jogapkärçilik çekme. Lorda Reb, öňkülerimizi ýükleýşiň ýaly bize ýükleme. Lorda Reb, götermäge güýjümizden has köp ýükleme. Bagyşla, bagyşla we bize rehim et. Sen biziň goragçymyz, kapyrlara garşy bize kömek et \".';

  @override
  String get duaMeaning3 =>
      '«Lorda Reb, bize ýol görkezeniňden soň ýüregimiziň sowmagyna ýol berme. Rehim-şepagatyňy ber: Sen hemişe berýärsiň.';

  @override
  String get duaMeaning4 =>
      'Lorda Reb, meniň we nesillerimiň dogasyny dowam etdirmegine rugsat ber. Rebbimiz, haýyşymy kabul et.';

  @override
  String get duaMeaning5 =>
      'olara hoşniýetlilik bilen ganatyňyzy aşak salyň we: Lord Lorda Reb, kiçijik wagtym maňa ideg edişleri ýaly, olara rehim et! “diýiň.';

  @override
  String get duaMeaning6 =>
      'hakykatdanam gözegçilikde saklaýan Hudaý beýik bolsun. [Pygamber], wahy doly gutarmanka okamaga howlukma, ýöne: Lorda Reb, meni bilimde artdyr!';

  @override
  String get duaMeaning7 =>
      '[Pygambere] aýdyň: «Lorda Reb, bagyşla we rehim et: Sen hemmelerden iň rehimdarsyň».';

  @override
  String get duaMeaning8 =>
      '“Rebbimiz, är-aýallarymyzda we nesillerimizde bize şatlyk beriň. Seni tanaýanlara bize gowy görelde görkez ».';

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
  String get hadith => 'Hadys';

  @override
  String get hadithCollection => 'Hadys ýygyndysy';

  @override
  String get hadithBooks => 'Hadys kitaplary';

  @override
  String get searchHadith => 'Hadys gözläň';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Allanyň atlary';

  @override
  String get liveTv => 'Göni telewizor';

  @override
  String get watchLive => 'Göni tomaşa ediň';

  @override
  String get streamError => 'Akym ýalňyşlygy';

  @override
  String get reload => 'Gaýtadan ýükläň';

  @override
  String get openInYoutube => 'YouTube-da açyň';

  @override
  String get ibadahTracker => 'Ibadah Tracker';

  @override
  String get fasting => 'Oraza';

  @override
  String get quranReading => 'Kuran okamak';

  @override
  String get prayers => 'Doga';

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
  String get weeklyProgress => 'Hepdelik ösüş';

  @override
  String get monthlyProgress => 'Monthly Progress';

  @override
  String get statistics => 'Statistics';

  @override
  String get hijriCalendar => 'Hijri senenamasy';

  @override
  String get gregorianCalendar => 'Gregorian Calendar';

  @override
  String get today => 'Bu gün';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get specialDays => 'Specialörite günler';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Yslam Täze ýyly';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Remezan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Remezan';

  @override
  String get specialDayDateEidAlFitr => '1 Şawal';

  @override
  String get specialDayDateEidAlAdha => '10 Dhul Hijja';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharram';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabi al-Awwal';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'Qibla ugry';

  @override
  String get compass => 'Kompas';

  @override
  String get degrees => 'degrees';

  @override
  String get north => 'North';

  @override
  String get qiblaFound => 'Qibla tapyldy!';

  @override
  String get turnDevice => 'Enjamyňyzy “Qibla” -a öwüriň';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Kompas ýalňyşlygy: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Kompass datçigi bu enjamda elýeterli däl.';

  @override
  String get qiblaLocationRequiredTitle => 'Location required for Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      '“Qibla” kompasyny ulanmazdan ozal hakyky ýeriňizi kesgitläň, ugry takyk hasaplap bolar.';

  @override
  String get adhanNotificationChannelName => 'Adhan habarnamalary';

  @override
  String get adhanNotificationChannelDescription =>
      'Adhan sesi bilen doga wagty duýduryşlary.';

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
  String get theme => 'Mowzuk';

  @override
  String get lightMode => 'Lightagtylyk tertibi';

  @override
  String get darkMode => 'Garaňky re .im';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get about => 'Takmynan';

  @override
  String get version => 'Wersiýa';

  @override
  String get privacyPolicy => 'Gizlinlik syýasaty';

  @override
  String get termsOfService => 'Hyzmat şertleri';

  @override
  String get contactUs => 'Biz bilen habarlaşyň';

  @override
  String get rateApp => 'Programma bahasy';

  @override
  String get shareApp => 'Programmany paýlaş';

  @override
  String shareAppMessage(String appName, String url) {
    return '$appName gözden geçiriň: Yslam durmuşynyň iň soňky programmasy! $url';
  }

  @override
  String get downloadManager => 'Managerükleme dolandyryjysy';

  @override
  String get downloads => '.Üklemeler';

  @override
  String get downloading => 'Ingüklemek ...';

  @override
  String get downloadComplete => 'Doly göçürip al';

  @override
  String get downloadFailed => 'Downloadüklemek şowsuz';

  @override
  String get offlineMode => 'Oflayn tertip';

  @override
  String get noInternet => 'Internet birikmesi ýok';

  @override
  String get checkConnection => 'Baglanyşygyňyzy barlaň';

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
  String get getStarted => 'Başla';

  @override
  String get skip => 'Skip';

  @override
  String get next => 'Indiki';

  @override
  String get done => 'Boldy';

  @override
  String get onboarding1Title => 'Sirat-ı Nura hoş geldiňiz';

  @override
  String get onboarding1Desc =>
      'Namaz wagtlary, Kuran we başgalar üçin doly yslam ýoldaş programmaňyz';

  @override
  String get onboarding2Title => 'Namaz wagtlary';

  @override
  String get onboarding2Desc =>
      'Locationerleşýän ýeriňize görä takyk doga wagtlary';

  @override
  String get onboarding3Title => 'Kuran we başgalar';

  @override
  String get onboarding3Desc =>
      'Gurhany okaň, okamagyňyzy yzarlaň we yslam mazmunyny öwreniň';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'Hasaplaýjyny täzeden düzmek';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'Maksat sany: $target';
  }

  @override
  String get tapToCount => 'Hasaplamak üçin basyň';

  @override
  String get zikrCompletedMashAllah => 'Tamamlandy! MaşAllah';

  @override
  String get zikrMeaningSubhanAllah => 'Allah her bir kemçilikden ýokarydyr.';

  @override
  String get zikrMeaningAlhamdulillah => 'Hemme öwgi Allaha degişlidir.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah iň beýikdir.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Alladan başga hudaý ýok.';

  @override
  String get zikrMeaningAstaghfirullah => 'Allanyň bagyşlamagyny soraýaryn.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata => 'Alladan başga güýç we güýç ýok.';

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
  String get dailyProgress => 'Gündelik ösüş';

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
  String get recheckPremium => 'Premium abuna ýagdaýyny barlaň';

  @override
  String get syncStore =>
      'Premium abunalygyňyzy tassyklamak üçin programma dükany bilen sinhronlaň.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'Premium abunalygy tassyklandy';

  @override
  String get premiumNotFound => 'Premium abuna ýazylmady';

  @override
  String premiumRefreshError(Object error) {
    return 'Premium abuna ýagdaýyny täzeläp bolmady: $error';
  }

  @override
  String get offlineDownloadManager => 'Oflayn ýükleme dolandyryjysy';

  @override
  String get manageDatasets =>
      'Uly göwrümli awtonom ses we maglumat toplumlaryny dolandyryň.';

  @override
  String get freeStorage => 'Içerki enjam saklanyşyny boşadyň.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'Kuran maglumatlar bazasyny barlamak ...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'Kuran maglumat bazasynyň ýagdaýy';

  @override
  String statusLabel(Object status) {
    return ': Agdaýy: $status';
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
  String get audioVoice => 'Ses sesi';

  @override
  String get audioVoiceMisharyAlafasy => 'Erkek (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Erkek (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Erkek (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Kibla kalibrlemesi';

  @override
  String get compassSmoothing => 'Kompas tekizlemek';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Kalibrleme ofset';

  @override
  String currentOffset(Object offset) {
    return 'Häzirki: $offset °';
  }

  @override
  String get manualCorrectionDesc =>
      'Kompasyňyza el bilen düzediş gerek bolsa sazlaň. Oňyn bahalar sagat ugruna aýlanýar.';

  @override
  String get apply => 'Üýtgeşmeleri ulanyň';

  @override
  String get resetOnboarding => 'Giriş sazlamasyny täzeden düzmek';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Diagnostika';

  @override
  String get diagnosticsNotSet => 'Bellenmedi';

  @override
  String get diagnosticsPrayerProfile => 'Namazyň tertibi';

  @override
  String get diagnosticsPrayerSource => 'Namaz okamagy';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Omörite / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'El bilen ýasalan burçlar (institusional çeşme ýok)';

  @override
  String get diagnosticsCloudDriven => 'Bulut sürülýär';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan ses baýlyklary';

  @override
  String get diagnosticsUiAudioAssets => 'UI ses aktiwleri';

  @override
  String get diagnosticsQuranAudioAssets => 'Kuran ses baýlyklary';

  @override
  String get diagnosticsAudioAssets => 'Ses aktiwleri';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count faýllary';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Görkezilen şowsuzlyk: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Lokalizasiýa';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count goldaýar';
  }

  @override
  String get diagnosticsQuranDataset => 'Kuran maglumat toplumy';

  @override
  String get diagnosticsQuranSurahs => 'Kuran süreleri';

  @override
  String get diagnosticsQuranAyahs => 'Kuran aýatlary';

  @override
  String get diagnosticsQuranJuzMetadata => 'Kuran Juz Metadata';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Supabase-de ýok bulut tablisalary; birikdirilen yza gaýdyş işjeň';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Bulut barlagy şowsuz: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Bulut juz metadata ýitdi; birikdirilen gurluş yza gaýdyş işjeň';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Bulut gurluş gurluşy şowsuz boldy: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Kalibrleme zerur. Enjamy 8-nji suratda aýlaň.';

  @override
  String get dailyVerse => 'Gündelik aýat';

  @override
  String get dailyVerseUnavailableTitle => 'Gündelik aýat elýeterli däl';

  @override
  String get dailyVerseUnavailableBody =>
      'Barlanylan gündelik aýat mazmuny entek bu gurluş üçin düzülenok. Bulut çeşmesine birikdiriň ýa-da göz aýlamazdan ozal tassyklanan keşi sinhronlaň.';

  @override
  String get todaysIbadah => 'Şu günki Ibada';

  @override
  String get quickAccess => 'Çalt giriş';

  @override
  String get assistant => 'Kömekçi';

  @override
  String get places => 'Placeserler';

  @override
  String get library => 'Kitaphana';

  @override
  String get analytics => 'Analitika';

  @override
  String get dailyDuas => 'Gündelik Duas';

  @override
  String essentialDuas(String count) {
    return '$count zerur duas';
  }

  @override
  String get duaUnavailableTitle => 'Barlanylan dualar entek elýeterli däl';

  @override
  String get duaUnavailableBody =>
      'Barlanylan gündelik dualar entek bu enjam bilen sinhronlanmady. Barlanmadyk yza gaýtmagyň ýerine bulut çeşmesine birikdiriň.';

  @override
  String get duaCategoryQuranic => 'Kuran dua';

  @override
  String get duaCategoryMorningEvening => 'Irden we agşam';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Gorag';

  @override
  String get duaCategoryBeginning => 'Başlangyçlar';

  @override
  String get duaCategorySleep => 'Uka';

  @override
  String get duaCategoryFoodDrink => 'Iýmit we içgi';

  @override
  String get duaCategoryForgiveness => 'Bagyşlamak';

  @override
  String get duaCategoryHome => 'Öý';

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
  String get islamicEducation => 'Yslam bilimi';

  @override
  String get sukunAudioTitle => 'Sukun sesleri';

  @override
  String get hadithCollections => 'Hadys ýygyndylary';

  @override
  String get hadithSourcePending => 'Barlanylan çeşme garaşylýar';

  @override
  String get hadithUnavailableTitle =>
      'Barlanylan hadys ýygyndylary entek elýeterli däl';

  @override
  String get hadithUnavailableBody =>
      'Bu gurluş henizem tassyklanmadyk daşarky hadys iýmitine baglydyr. Hadyslara göz aýlamak, maglumat bazasy sinhronlanýança ýapyk bolýar.';

  @override
  String get paywallUnlockAll =>
      'Ruhy syýahatyňyz üçin ähli aýratynlyklary açyň';

  @override
  String get premiumProductUnavailable =>
      'Premium önüm häzirki wagtda elýeterli däl. Soňrak synanyşyň.';

  @override
  String get premiumPurchaseFailed =>
      'Satyn alyp bolmady. Gaýtadan synanyşmagyňyzy haýyş edýäris.';

  @override
  String get paywallFeature1Title => 'Neýr kömekçisi plýus';

  @override
  String get paywallFeature1Desc =>
      'Çäklendirilmedik AI bilen işleýän sorag-jogap';

  @override
  String get paywallFeature2Title => 'Çäklendirilmedik oflayn';

  @override
  String get paywallFeature2Desc => 'Allhli okalanlary göçürip alyň';

  @override
  String get paywallFeature3Title => 'Aýratyn dizaýnlar';

  @override
  String get paywallFeature3Desc => 'Premium mowzuklar we şriftler';

  @override
  String get paywallFeature4Title => 'Mahabatsyz';

  @override
  String get paywallFeature4Desc => 'Nol mahabat';

  @override
  String get paywallGetAccess => 'Ömürboýy giriş - \$ 1.00';

  @override
  String get restorePurchases => 'Satyn almagy dikelt';

  @override
  String get zakatCalculator => 'Zekat Kalkulýatory';

  @override
  String get zakatGold => 'Altyn (Altyn)';

  @override
  String get zakatSilver => 'Kümüş (Gümüş)';

  @override
  String get zakatCashBank => 'Nagt / bank';

  @override
  String get zakatBusiness => 'Işewürlik';

  @override
  String get zakatInvestments => 'Maýa goýumlary';

  @override
  String get zakatWeightGrams => 'Agramy (g)';

  @override
  String get zakatPricePerGram => 'Bahasy / g';

  @override
  String get zakatTotalAmount => 'Jemi mukdar';

  @override
  String get zakatInventoryValue => 'Öwreniş gymmaty';

  @override
  String get zakatDebts => 'Karzlar';

  @override
  String get zakatTotal => 'Jemi';

  @override
  String get calculateZakat => 'Zekat hasaplaň';

  @override
  String get nisabNotReached => 'Nisab ýetmedi. Zekat farz däldir.';

  @override
  String get totalZakat => 'Jemi zekat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Aktiwler: $assets';
  }

  @override
  String get zakatGoldZakat => 'Altyn Zekat';

  @override
  String get zakatSilverZakat => 'Kümüş zekat';

  @override
  String get zakatCashZakat => 'Nagt zekat';

  @override
  String get zakatBusinessZakat => 'Zekat';

  @override
  String get zakatInvestmentZakat => 'Maýa goýum zekaty';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! Men siziň yslam kömekçiňiz. Menden doga, agyz beklemek, zekat ýa-da yslam temasy hakda soraň.';

  @override
  String get chatbotLimitReached =>
      'Gündelik talap çäkleri ýetdi. Çäklendirilmedik Premium-a täzeläň.';

  @override
  String get chatbotErrorMsg =>
      'Men jogap berip bilmedim. Gaýtadan synanyşmagyňyzy haýyş edýäris.';

  @override
  String get chatbotOfflinePrompt =>
      'Barlanylan oflayn yslam bilim bazasy henizem dowam etdirilýär. Indi awtonom yza gaýdyp bilersiňiz, ýöne maglumat bazasy taýýar bolýança diňe çäkli ygtybarly habarlary görkezer.\n\nOflayn yza gaýdyp gelmek isleýärsiňizmi?';

  @override
  String get chatbotOfflineSwitched =>
      'Oflayn yza gaýtmak açyk. Barlanan ýerli yslam jogaplary entek taýýar däl.';

  @override
  String get chatbotOfflineDownloadLabel => 'Oflayn yza gaýtmagy işjeňleşdiriň';

  @override
  String get downloadPreparing => 'Göçürip almaga taýýarlanýar ...';

  @override
  String downloadingSurah(String surah, String total) {
    return '$surah / $total süresini göçürip almak';
  }

  @override
  String get downloadCompleted =>
      'Bu okaýjy üçin eýýäm ähli süreler göçürildi.';

  @override
  String get offlineQuranAudioPacks => 'Oflayn Kuran ses paketleri';

  @override
  String storedOnDeviceMb(String size) {
    return 'Enjamda saklanýar: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total süreleri göçürildi';
  }

  @override
  String get redownloadMissingRepair =>
      'Ingitirim bolanlary bejermek / göçürip almak';

  @override
  String get downloadAction => 'Göçürip al';

  @override
  String get resumeDownload => 'Göçürip al';

  @override
  String get deleteDownloadedFiles => 'Göçürilen faýllary poz';

  @override
  String get downloadCancelling => 'Elatyrmak ...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return '$reciter üçin göçürip almak ýatyryldy.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Üklemek $reciter üçin tamamlandy.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Download finished for $reciter with $failed failed surahs ($downloaded/$total downloaded).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return '$reciter üçin awtonom faýllar öçürildi.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Barlanan Kuranyň ses çeşmeleri häzir elýeterli däl.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Verified Quran audio pack is incomplete ($available/$total). Try again after the audio catalog is updated.';
  }

  @override
  String get chatbotHint => 'Sorag beriň ...';

  @override
  String get chatbotThinking => 'Oýlanmak ...';

  @override
  String get sukunMixerSubtitle => 'Tebigat we Gurhan garyjy';

  @override
  String get audioPlayFailed => 'Ses görkezmek şowsuz';

  @override
  String get sukunNatureLabel => 'Sukun (Tebigat)';

  @override
  String get sukunRainOfMercy => 'Merhemet ýagyşy';

  @override
  String get sukunGardenOfPeace => 'Parahatçylyk bagy';

  @override
  String get sukunMidnightCalm => 'Gijäniň ýary köşeş';

  @override
  String get sukunOceanTawheed => 'Okean Tawhid';

  @override
  String get sukunUnavailableTitle => 'Ses şekilleri elýeterli däl';

  @override
  String get sukunUnavailableBody =>
      'Bu gurluş entek zerur Sukun ses keşbini öz içine almaýar.';

  @override
  String get prayerCompletion => 'Namazyň tamamlanmagy';

  @override
  String get streaks => 'Köçeler';

  @override
  String get dayStreak => 'Gün tertibi';

  @override
  String get bestStreak => 'Iň gowy setir';

  @override
  String get chatbotCloudAiLabel => 'Bulut AI';

  @override
  String get chatbotLocalAiLabel => 'Oflayn yza gaýtmak';

  @override
  String get chatbotUseCloudAi => 'Cloud AI (Gemini) ulanyň';

  @override
  String get chatbotDownloadLocalAi => 'Oflayn yza gaýtmagy işjeňleşdiriň';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count galdy';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API düzülmedi. Barlanylan oflayn yslam görkezmesi entek elýeterli däl.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Barlanan ýerli yslam görkezmeleri entek elýeterli däl. Gysga jogaplar üçin “Cloud AI” -e geçiň.';

  @override
  String get mosques => 'Metjitler';

  @override
  String get halalFood => 'Halal iýmit';

  @override
  String get placesSearchArea => 'Bu ýeri gözläň';

  @override
  String get nearbyMosques => 'Golaýdaky metjitler';

  @override
  String get islamicSchools => 'Yslam mekdepleri';

  @override
  String placesFoundCount(String count) {
    return '$count tapyldy';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km uzaklykda';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API ýalňyşlygy: $statusCode';
  }

  @override
  String get placesNetworkError =>
      'Tor ýalňyşlygy. Gaýtadan synanyşmagyňyzy haýyş edýäris.';

  @override
  String get placesLocationRequiredTitle => 'Locationerleşýän ýeri';

  @override
  String get placesLocationRequiredBody =>
      'Ilki bilen golaýdaky metjitleri, halal naharlary we yslam mekdeplerini takyk gözläp tapmak üçin bir ýer belläň.';

  @override
  String get placesMapTilesUnavailableTitle => 'Karta plitalary elýeterli däl';

  @override
  String get placesMapTilesUnavailableBody =>
      'Barlanylan karta kafel çeşmesi entek bu gurluş üçin düzülenok. Byakyn ýerler henizem saklanan ýeriňizden ýükläp biler.';

  @override
  String get placesDataSourceUnavailableTitle => 'Maglumatlary elýeterli däl';

  @override
  String get placesDataSourceUnavailableBody =>
      'Barlanan ýerler maglumat nokady bu gurluş üçin entek düzülenok. Nearbyakyn gözlegleri açmazdan ozal PLACES_OVERPASS_API_URL tassyklanan proksi ýa-da üpjün edijä düzüň.';

  @override
  String get unknownPlaceName => 'Näbelli';

  @override
  String get islamicPlaceFallback => 'Yslam ýeri';

  @override
  String get asmaMeaning1 => 'Peýdaly';

  @override
  String get asmaMeaning2 => 'Rehimdar';

  @override
  String get asmaMeaning3 => 'Patyşa / Baky Reb';

  @override
  String get asmaMeaning4 => 'Iň mukaddes';

  @override
  String get asmaMeaning5 => 'Parahatçylygyň çeşmesi';

  @override
  String get asmaMeaning6 => 'Howpsuzlyk beriji';

  @override
  String get asmaMeaning7 => 'Goragçy';

  @override
  String get asmaMeaning8 => 'Iň gymmatly / iň güýçli';

  @override
  String get asmaMeaning9 => 'Satyjy';

  @override
  String get asmaMeaning10 => 'Iň beýik';

  @override
  String get asmaMeaning11 => 'Creatoraradyjy';

  @override
  String get asmaMeaning12 => 'Sargyt ýasaýjy';

  @override
  String get asmaMeaning13 => 'Gözelligiň şekili';

  @override
  String get asmaMeaning14 => 'Bagyşlaýjy';

  @override
  String get asmaMeaning15 => 'Subduer';

  @override
  String get asmaMeaning16 => 'Hemmesini beriji';

  @override
  String get asmaMeaning17 => 'Düzediji';

  @override
  String get asmaMeaning18 => 'Açyk';

  @override
  String get asmaMeaning19 => 'Hemmesini bilýän';

  @override
  String get asmaMeaning20 => 'Gurluşykçy';

  @override
  String get asmaMeaning21 => 'Kömekçi';

  @override
  String get asmaMeaning22 => 'Abaser';

  @override
  String get asmaMeaning23 => 'Exalter';

  @override
  String get asmaMeaning24 => 'Hormat gowşuryjy';

  @override
  String get asmaMeaning25 => 'Masgaralaýjy';

  @override
  String get asmaMeaning26 => 'Hemmesini diňleýji';

  @override
  String get asmaMeaning27 => 'Hemmesini görýän';

  @override
  String get asmaMeaning28 => 'Kazy';

  @override
  String get asmaMeaning29 => 'Adalat';

  @override
  String get asmaMeaning30 => 'Inçe';

  @override
  String get asmaMeaning31 => 'Hemmesi habarly';

  @override
  String get asmaMeaning32 => 'Öňünden gelýänler';

  @override
  String get asmaMeaning33 => 'Ajaýyp';

  @override
  String get asmaMeaning34 => 'Beýik Bagyşlaýjy';

  @override
  String get asmaMeaning35 => 'Şükür sylagy';

  @override
  String get asmaMeaning36 => 'Iň ýokary';

  @override
  String get asmaMeaning37 => 'Iň beýik';

  @override
  String get asmaMeaning38 => 'Saklaýjy';

  @override
  String get asmaMeaning39 => 'Iýmitlendiriji';

  @override
  String get asmaMeaning40 => 'Hasapçy';

  @override
  String get asmaMeaning41 => 'Ajaýyp';

  @override
  String get asmaMeaning42 => 'Sahy';

  @override
  String get asmaMeaning43 => 'Gözegçi';

  @override
  String get asmaMeaning44 => 'Namazyň jogaby';

  @override
  String get asmaMeaning45 => 'Hemmesi düşünýär';

  @override
  String get asmaMeaning46 => 'Iň oňat paýhas';

  @override
  String get asmaMeaning47 => 'Söýgüli';

  @override
  String get asmaMeaning48 => 'Iň şöhratly';

  @override
  String get asmaMeaning49 => 'Direliji';

  @override
  String get asmaMeaning50 => 'Şaýat';

  @override
  String get asmaMeaning51 => 'Hakykat';

  @override
  String get asmaMeaning52 => '-hli ýeterlik howandar';

  @override
  String get asmaMeaning53 => 'Allhli güýjüň eýesi';

  @override
  String get asmaMeaning54 => 'Güýçli';

  @override
  String get asmaMeaning55 => 'Goragçy';

  @override
  String get asmaMeaning56 => 'öwgüli sözler';

  @override
  String get asmaMeaning57 => 'Bahalandyryjy';

  @override
  String get asmaMeaning58 => 'Dörediji';

  @override
  String get asmaMeaning59 => 'Dikeldiji';

  @override
  String get asmaMeaning60 => 'Durmuş beriji';

  @override
  String get asmaMeaning61 => 'Durmuşyň alyjysy';

  @override
  String get asmaMeaning62 => 'Hemişe ýaşaýyş';

  @override
  String get asmaMeaning63 => 'Öz-özüni üpjün ediji';

  @override
  String get asmaMeaning64 => 'Gözleýji';

  @override
  String get asmaMeaning65 => 'Şöhratly';

  @override
  String get asmaMeaning66 => 'Diňe ýekeje';

  @override
  String get asmaMeaning67 => 'Bir';

  @override
  String get asmaMeaning68 => 'Hemmeler tarapyndan gözlenmeli';

  @override
  String get asmaMeaning69 => 'Güýçli';

  @override
  String get asmaMeaning70 => 'powerhli güýjüň ýaradyjysy';

  @override
  String get asmaMeaning71 => 'Ekspeditor';

  @override
  String get asmaMeaning72 => 'Gijä goýujy';

  @override
  String get asmaMeaning73 => 'Birinjisi';

  @override
  String get asmaMeaning74 => 'Iň soňky';

  @override
  String get asmaMeaning75 => 'Görkeziş';

  @override
  String get asmaMeaning76 => 'Gizlin';

  @override
  String get asmaMeaning77 => 'Häkim';

  @override
  String get asmaMeaning78 => 'Beýik';

  @override
  String get asmaMeaning79 => 'Gowy iş';

  @override
  String get asmaMeaning80 => 'Toba üçin gollanma';

  @override
  String get asmaMeaning81 => 'Öwez';

  @override
  String get asmaMeaning82 => 'Bagyşlaýjy';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'Hemmesiniň eýesi / hökümdary';

  @override
  String get asmaMeaning85 => 'Alyhezretiň we merhemetiň eýesi';

  @override
  String get asmaMeaning86 => 'Deňdir';

  @override
  String get asmaMeaning87 => 'erygnaýjy';

  @override
  String get asmaMeaning88 => 'Baý';

  @override
  String get asmaMeaning89 => 'Baýlaşdyryjy';

  @override
  String get asmaMeaning90 => 'Zyýanyň öňüni alyjy';

  @override
  String get asmaMeaning91 => 'Zyýan beriji';

  @override
  String get asmaMeaning92 => 'Peýdalary beriji';

  @override
  String get asmaMeaning93 => 'Lightagtylyk';

  @override
  String get asmaMeaning94 => 'Gollanma';

  @override
  String get asmaMeaning95 => 'Dörediji';

  @override
  String get asmaMeaning96 => 'Baky';

  @override
  String get asmaMeaning97 => 'Mirasçy';

  @override
  String get asmaMeaning98 => 'Iň dogry gollanma';

  @override
  String get asmaMeaning99 => 'Sabyrly';
}
