// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Scottish Gaelic Gaelic (`gd`).
class AppLocalizationsGd extends AppLocalizations {
  AppLocalizationsGd([String locale = 'gd']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Islamic Way of Light';

  @override
  String get home => 'Dhachaigh';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Zikr';

  @override
  String get calendar => 'Mìosachan';

  @override
  String get settings => 'Suidhichidhean';

  @override
  String get nextPrayer => 'An ath Ùrnaigh';

  @override
  String get prayerTimes => 'Amannan Ùrnuigh';

  @override
  String get continueReading => 'Lean air adhart a’ leughadh';

  @override
  String get getLifetimePro => 'Faigh Lifetime Pro';

  @override
  String get unlockTajweed => 'Fuasgail Tajweed & Feartan Adhartach';

  @override
  String get prayerCalculation => 'Àireamhachadh ùrnaigh';

  @override
  String get method => 'Dòigh àireamhachaidh';

  @override
  String get madhab => 'Dòigh lagha Asr';

  @override
  String get surahs => 'Surahs';

  @override
  String get ayahs => 'Seadh';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'èirigh na grèine';

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
    return 'Uair airson $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Tha an t-àm ann ùrnaigh a dhèanamh $prayerName.';
  }

  @override
  String get dataStorage => 'Dàta & Stòradh';

  @override
  String get clearCache => 'Glan an tasgadan';

  @override
  String get cacheClearedSuccess =>
      'Chaidh an tasgadan a ghlanadh gu soirbheachail';

  @override
  String get location => 'Àite';

  @override
  String get language => 'Cànain';

  @override
  String get selectLanguage => 'Tagh Cànan';

  @override
  String get searchLanguage => 'Rannsaich 180+ cànan...';

  @override
  String get systemDefault => 'Default siostam';

  @override
  String get currentLocation => 'Àite an-dràsta (GPS)';

  @override
  String get locationServiceDisabled => 'Tha seirbheis àite à comas.';

  @override
  String get locationPermissionDenied => 'Cead àite air a dhiùltadh.';

  @override
  String get locationDetectionFailed =>
      'Cha b\' urrainn dhuinn d\' ionad a lorg. Tagh baile-mòr le làimh no feuch ris a-rithist.';

  @override
  String citiesCount(String count) {
    return '$count bailtean mòra';
  }

  @override
  String get search => 'Rannsaich';

  @override
  String get searchHint => 'Lorg...';

  @override
  String get noResults => 'No results found';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get appErrorOccurred => 'Thachair mearachd';

  @override
  String get appUnknownError => 'Mearachd neo-aithnichte';

  @override
  String get quranLoadFailed =>
      'Cha b’ urrainn dhuinn susbaint Quran a luchdachadh. Feuch ris a-rithist.';

  @override
  String get retry => 'Feuch a-rithist';

  @override
  String get refreshAction => 'Refresh';

  @override
  String get cancel => 'Sguir dheth';

  @override
  String get save => 'Sàbhail';

  @override
  String get delete => 'Delete';

  @override
  String get edit => 'Deasaich';

  @override
  String get close => 'Dùin';

  @override
  String get ok => 'ceart gu leòr';

  @override
  String get yes => 'Tha';

  @override
  String get no => 'Chan eil';

  @override
  String get surah => 'Surah';

  @override
  String ayahLabel(String ayah) {
    return 'Ayah $ayah';
  }

  @override
  String get juz => 'Juz';

  @override
  String get page => 'Duilleag';

  @override
  String get reading => 'Leughadh';

  @override
  String get recitation => 'Aithris';

  @override
  String get translation => 'Eadar-theangachadh';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'A\' luchdachadh tafsir...';

  @override
  String get tafsirSourceLabel => 'Stòr Tafsir';

  @override
  String get tafsirNoSurahFound =>
      'Cha deach tafsir a lorg airson an surah seo.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Cha deach tafsir a lorg airson ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Cha b\' urrainn dhuinn Tafsir a luchdachadh.';

  @override
  String get tafsirNoTextForAyah =>
      'Chan eil teacsa tafsir ann airson an ayah seo.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'A’ luchdachadh sìos tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'A’ luchdachadh tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Thill stòr Tafsir mearachd HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Cha do thill an stòr tafsir a chaidh a thaghadh a-steach.';

  @override
  String get tafsirCacheUnavailable =>
      'Chan eil tafsir dearbhte ri fhaighinn far loidhne fhathast. Sioncronaich stòr-dàta tafsir a fhuair thu mus brobhsadh thu.';

  @override
  String get bookmarks => 'Comharran-leabhair';

  @override
  String get addBookmark => 'Cuir comharra-leabhair ris';

  @override
  String get removeBookmark => 'Thoir air falbh Bookmark';

  @override
  String get lastRead => 'Leughadh mu dheireadh';

  @override
  String get dailyZikr => 'Zikr làitheil';

  @override
  String get duaMeaning1 =>
      'tha cuid eile ag urnuigh, \'Ar Tighearna, dean maith dhuinn anns an t-saoghal so, agus anns an àm ri teachd, agus dìon sinn o chràdh an Teine.\'';

  @override
  String get duaMeaning2 =>
      'Cha \'n \'eil Dia a\' cur uallach air anam air bith le tuiUeadh na \'s urrainn e ghiùlain : tha gach aon a\' cosnadh am maith a rinn e, agus a\' fulang a dhroch-dhleasdanais : \' A Thighearna, na gabh sinn gu obair ma dhi-chuimhnicheas sinn no ma ni sinn mearachd. A Thighearna, na cuir eallach oirnn mar a chuir thusa uallach orrasan a bha romhainn. A Thighearna, na cuir barrachd eallach oirnn na tha neart againn ri ghiùlan. Maitheanas dhuinn, maith dhuinn, agus dean trocair oirnn. Is tusa an Neach-dìon againn, mar sin cuidich sinn an aghaidh nan eas-chreidmheach.\'';

  @override
  String get duaMeaning3 =>
      '‘Ar Tighearna, na leig le ar cridheachan a dhol air seacharan às deidh do threòrachadh. Deònaich dhuinn do thròcair : Is tusa an tì a bheir gu bràth.';

  @override
  String get duaMeaning4 =>
      'A Thighearna, deònaich gum faod mise agus mo shliochd an ùrnaigh a chumail suas. A Thighearna, gabh ri m’ iarrtas.';

  @override
  String get duaMeaning5 =>
      'agus lughdaich do sgiath ann an irioslachd d\' an ionnsuidh ann an caoimhneas, agus abair, \" A Thighearna, dean trocair orra, mar a bha curam aca dhiom an uair a bha mi beag.\"';

  @override
  String get duaMeaning6 =>
      'àrdaichte gu robh Dia, an ti aig am bheil da rìreadh smachd. [Fhàidh], na dèan cabhag airson aithris mus bi am foillseachadh làn iomlan ach abair, ‘A Thighearna, meudaich mi ann an eòlas!’';

  @override
  String get duaMeaning7 =>
      'Abair [Fàidh], ‘A Thighearna, thoir maitheanas agus dèan tròcair: Is tusa an neach as tròcairiche dhiubh uile.’';

  @override
  String get duaMeaning8 =>
      'iadsan a nì ùrnaigh, ‘Ar Tighearna, dèan gàirdeachas dhuinn nar cèile agus nar sliochd. Dèan eisimpleirean math dhuinn dhaibhsan a tha eòlach ort’.';

  @override
  String get morningZikr => 'Madainn Zikr';

  @override
  String get eveningZikr => 'Feasgar Zikr';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get ahkab => 'Achkam';

  @override
  String get masaail => 'Masa\'il';

  @override
  String get hadith => 'Hadith';

  @override
  String get hadithCollection => 'Cruinneachadh de hadith';

  @override
  String get hadithBooks => 'Leabhraichean hadith';

  @override
  String get searchHadith => 'Faigh Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Ainmean Allah';

  @override
  String get liveTv => 'Tbh beò';

  @override
  String get watchLive => 'Coimhead beò';

  @override
  String get streamError => 'Mearachd sruth';

  @override
  String get reload => 'Ath-luchdaich';

  @override
  String get openInYoutube => 'Fosgailte ann an YouTube';

  @override
  String get ibadahTracker => 'Lorgaire Ibadah';

  @override
  String get fasting => 'Fastadh';

  @override
  String get quranReading => 'Leughadh an Quran';

  @override
  String get prayers => 'Ùrnaighean';

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
  String get dhikrCount => 'Cunnt Dhikr';

  @override
  String get weeklyProgress => 'Adhartas Seachdaineach';

  @override
  String get monthlyProgress => 'Adhartas Mìosail';

  @override
  String get statistics => 'Staitistig';

  @override
  String get hijriCalendar => 'Mìosachan Hijri';

  @override
  String get gregorianCalendar => 'Mìosachan Gregorian';

  @override
  String get today => 'An-diugh';

  @override
  String get tomorrow => 'A-màireach';

  @override
  String get yesterday => 'An-dè';

  @override
  String get specialDays => 'Làithean Sònraichte';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid al-Adha';

  @override
  String get islamicNewYear => 'Bliadhna Ùr Ioslamach';

  @override
  String get mawlidAnNabi => 'Mawlid an-Nabi';

  @override
  String get specialDayDateRamadanStart => '1 Ramadan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadan';

  @override
  String get specialDayDateEidAlFitr => '1 Saoghal';

  @override
  String get specialDayDateEidAlAdha => '10 Dhul Hijjah';

  @override
  String get specialDayDateIslamicNewYear => '1 Muirram';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabi al-Awwal';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'Stiùireadh Qibla';

  @override
  String get compass => 'Compass';

  @override
  String get degrees => 'ceuman';

  @override
  String get north => 'Tuath';

  @override
  String get qiblaFound => 'Lorg Qibla!';

  @override
  String get turnDevice =>
      'Tionndaidh an inneal agad gus aghaidh a thoirt air an Qibla';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Mearachd a\' chomais: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Chan eil sensor Compass ri fhaighinn air an inneal seo.';

  @override
  String get qiblaLocationRequiredTitle => 'Location required for Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Set your actual location before using the Qibla compass so the direction can be calculated accurately.';

  @override
  String get adhanNotificationChannelName => 'Adhan Notifications';

  @override
  String get adhanNotificationChannelDescription =>
      'Prayer time alerts with adhan sound.';

  @override
  String get notifications => 'Brathan';

  @override
  String get prayerNotifications => 'Brathan Ùrnaigh';

  @override
  String get enableNotifications => 'Dèan comas air fiosan';

  @override
  String get notificationTime => 'Uair Fios';

  @override
  String get beforePrayer => 'mionaidean roimh urnuigh';

  @override
  String get theme => 'Cuspair';

  @override
  String get lightMode => 'Modh Solais';

  @override
  String get darkMode => 'Modh Dorcha';

  @override
  String get systemTheme => 'Cuspair an t-siostam';

  @override
  String get about => 'Mu dheidhinn';

  @override
  String get version => 'Tionndadh';

  @override
  String get privacyPolicy => 'Poileasaidh Dìomhaireachd';

  @override
  String get termsOfService => 'Teirmean seirbheis';

  @override
  String get contactUs => 'Cuir fios thugainn';

  @override
  String get rateApp => 'App astar';

  @override
  String get shareApp => 'Co-roinn App';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Thoir sùil air $appName: An app dòigh-beatha Ioslamach mu dheireadh! $url';
  }

  @override
  String get downloadManager => 'Download Manager';

  @override
  String get downloads => 'Luchdaich sìos';

  @override
  String get downloading => 'A\' luchdachadh sìos...';

  @override
  String get downloadComplete => 'Download Complete';

  @override
  String get downloadFailed => 'Download Failed';

  @override
  String get offlineMode => 'Modh far loidhne';

  @override
  String get noInternet => 'No Internet Connection';

  @override
  String get checkConnection => 'Feuch an toir thu sùil air a’ cheangal agad';

  @override
  String get premium => 'Premium';

  @override
  String get upgradeToPro => 'Àrdachadh gu Pro';

  @override
  String get proFeatures => 'Feartan Pro';

  @override
  String get removeAds => 'Thoir air falbh sanasan';

  @override
  String get unlockAll => 'Fuasgail a h-uile susbaint';

  @override
  String get exclusiveContent => 'Susbaint air leth';

  @override
  String get welcome => 'Fàilte';

  @override
  String get getStarted => 'Tòisich';

  @override
  String get skip => 'Leum';

  @override
  String get next => 'Air adhart';

  @override
  String get done => 'Dèanta';

  @override
  String get onboarding1Title => 'Fàilte gu Slighe Allah';

  @override
  String get onboarding1Desc =>
      'An app companach Ioslamach iomlan agad airson amannan ùrnaigh, Quran, agus barrachd';

  @override
  String get onboarding2Title => 'Amannan Ùrnuigh';

  @override
  String get onboarding2Desc => 'Amannan ùrnaigh ceart stèidhichte air d ’àite';

  @override
  String get onboarding3Title => 'Quran agus barrachd';

  @override
  String get onboarding3Desc =>
      'Leugh Quran, cùm sùil air do leughadh, agus rannsaich susbaint Ioslamach';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'Ath-shuidheachadh Counter';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'Cunnt targaid: $target';
  }

  @override
  String get tapToCount => 'Tap air gus cunntadh';

  @override
  String get zikrCompletedMashAllah => 'Crìochnaichte! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Tha Allah fada os cionn gach neo-fhoirfeachd.';

  @override
  String get zikrMeaningAlhamdulillah => 'Buinidh a h-uile moladh do Dhia.';

  @override
  String get zikrMeaningAllahuAkbar => 'Is e Allah am fear as motha.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Chan eil dia ann ach Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Tha mi a’ sireadh maitheanas Allah.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Chan eil cumhachd no neart ann ach tro Dhia.';

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
  String get dailyProgress => 'Adhartas Làitheil';

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
  String get recheckPremium => 'Dèan ath-sgrùdadh air inbhe ballrachd premium';

  @override
  String get syncStore =>
      'Sioncronaich leis an app store gus do phrìomh fho-sgrìobhadh a dhearbhadh.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'Fo-sgrìobhadh Premium air a dhearbhadh.';

  @override
  String get premiumNotFound => 'Cha deach fo-sgrìobhadh Premium a lorg.';

  @override
  String premiumRefreshError(Object error) {
    return 'Cha b\' urrainn dhuinn inbhe an fho-sgrìobhaidh ùrachadh: $error';
  }

  @override
  String get offlineDownloadManager => 'Offline Download Manager';

  @override
  String get manageDatasets =>
      'Stiùirich pasganan claisneachd is dàta mòr far-loidhne.';

  @override
  String get freeStorage => 'Stòradh inneal taobh a-staigh an-asgaidh.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'Luchdaich a-nuas an stòr-dàta Quran. . .';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'Stòr-dàta Quran inbhean';

  @override
  String statusLabel(Object status) {
    return 'Inbhe: $status';
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
  String get audioVoice => 'Guth Fuaim';

  @override
  String get audioVoiceMisharyAlafasy => 'Fireann (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Fireann (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Fireann (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Calibration Qibla';

  @override
  String get compassSmoothing => 'Compass Smoothing';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Offset Calibration';

  @override
  String currentOffset(Object offset) {
    return 'An-dràsta: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Atharraich ma tha feum aig a’ chombaist agad air ceartachadh làimhe. Bidh luachan adhartach a’ tionndadh deiseal.';

  @override
  String get apply => 'Cuir atharrachaidhean an sàs';

  @override
  String get resetOnboarding => 'Ath-shuidhich suidheachadh intro';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Diagnosachd';

  @override
  String get diagnosticsNotSet => 'Gun a shuidheachadh';

  @override
  String get diagnosticsPrayerProfile => 'Pròifil Ùrnaigh';

  @override
  String get diagnosticsPrayerSource => 'Ughdarras Urnuigh';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Custom / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Ceàrnan gnàthaichte làimhe (gun stòr institiùideach)';

  @override
  String get diagnosticsCloudDriven => 'Cloud air a stiùireadh';

  @override
  String get diagnosticsAdhanAudioAssets => 'Maoin Fuaim Adhan';

  @override
  String get diagnosticsUiAudioAssets => 'Maoin Fuaim UI';

  @override
  String get diagnosticsQuranAudioAssets => 'Stòr-dàta Quran fuaim';

  @override
  String get diagnosticsAudioAssets => 'Maoin Fuaim';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count faidhlichean';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Dh’fhàillig leughadh am follais: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Ionadan ionadail';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count a\' faighinn taic';
  }

  @override
  String get diagnosticsQuranDataset => 'Stòr-dàta Quran';

  @override
  String get diagnosticsQuranSurahs => 'Quran Surah';

  @override
  String get diagnosticsQuranAyahs => 'Ayahs an Quran';

  @override
  String get diagnosticsQuranJuzMetadata => 'Metadata an Quran Juz';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Clàran neòil a dhìth ann an Supabase; fallback cuachta gnìomhach';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Dh’fhàillig sgrùdadh neòil: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz meata-dàta a dhìth; tuiteam air ais structarail cuachta gnìomhach';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Dh’fhàillig sgrùdadh structarail neòil: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Calibration a dhìth. Rothar inneal ann am figear-8.';

  @override
  String get dailyVerse => 'Rann làitheil';

  @override
  String get todaysIbadah => 'Ibadah an-diugh';

  @override
  String get quickAccess => 'Cothrom luath';

  @override
  String get assistant => 'Neach-cuideachaidh';

  @override
  String get places => 'Àiteachan';

  @override
  String get library => 'Leabharlann';

  @override
  String get analytics => 'Analytics';

  @override
  String get dailyDuas => 'Duas làitheil';

  @override
  String essentialDuas(String count) {
    return '$count duas riatanach';
  }

  @override
  String get duaUnavailableTitle =>
      'Chan eil dàs dearbhte rim faighinn fhathast';

  @override
  String get duaUnavailableBody =>
      'Cha deach dus làitheil dearbhte a shioncronachadh ris an inneal seo fhathast. Ceangail ris an stòr sgòthan gus duas a luchdachadh sìos an àite tuiteam air ais gun dearbhadh.';

  @override
  String get duaCategoryQuranic => 'Dà Quranic';

  @override
  String get duaCategoryMorningEvening => 'Madainn & Feasgar';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Dìon';

  @override
  String get duaCategoryBeginning => 'Toiseachan';

  @override
  String get duaCategorySleep => 'Cadal';

  @override
  String get duaCategoryFoodDrink => 'Biadh & Deoch';

  @override
  String get duaCategoryForgiveness => 'Maitheanas';

  @override
  String get duaCategoryHome => 'Dhachaigh';

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
  String get islamicEducation => 'Foghlam Ioslamach';

  @override
  String get sukunAudioTitle => 'Cruthan-clò Sukun';

  @override
  String get hadithCollections => 'Cruinneachadh de hadith';

  @override
  String get hadithSourcePending => 'Stòr dearbhte ri feitheamh';

  @override
  String get hadithUnavailableTitle =>
      'Chan eil cruinneachaidhean hadith dearbhte rim faighinn fhathast';

  @override
  String get hadithUnavailableBody =>
      'Tha an togail seo fhathast an urra ri biadhadh hadith taobh a-muigh neo-dhearbhte. Bidh brobhsadh Hadith a’ fuireach ciorramach gus an tèid stòr-dàta a fhuaras a shioncronachadh.';

  @override
  String get paywallUnlockAll =>
      'Fuasgail a h-uile feart airson do thuras spioradail';

  @override
  String get premiumProductUnavailable =>
      'Chan eil toradh Premium ri fhaighinn an-dràsta. Feuch ris a-rithist nas anmoiche.';

  @override
  String get premiumPurchaseFailed =>
      'Cha b’ urrainnear an ceannach a chrìochnachadh. Feuch ris a-rithist.';

  @override
  String get paywallFeature1Title => 'Neach-taic Neural Plus';

  @override
  String get paywallFeature1Desc => 'Q&A le cumhachd AI gun chrìoch';

  @override
  String get paywallFeature2Title => 'Gun chrìoch far loidhne';

  @override
  String get paywallFeature2Desc => 'Luchdadh a-nuas a h-uile aithris';

  @override
  String get paywallFeature3Title => 'Dealbhaidhean sònraichte';

  @override
  String get paywallFeature3Desc => 'Cuspairean & clòidean Premium';

  @override
  String get paywallFeature4Title => 'Saor bho sanasachd';

  @override
  String get paywallFeature4Desc => 'Sanasan neoni';

  @override
  String get paywallGetAccess => 'Faigh Cothrom Fad-beatha - \$1.00';

  @override
  String get restorePurchases => 'Thoir air ais ceannach';

  @override
  String get zakatCalculator => 'Àireamhair Zakat';

  @override
  String get zakatGold => 'Òr (Altin)';

  @override
  String get zakatSilver => 'Airgid (Gümüş)';

  @override
  String get zakatCashBank => 'Airgead / Banca';

  @override
  String get zakatBusiness => 'Gnìomhachas';

  @override
  String get zakatInvestments => 'Tasgaidhean';

  @override
  String get zakatWeightGrams => 'Cuideam (g)';

  @override
  String get zakatPricePerGram => 'Prìs/g';

  @override
  String get zakatTotalAmount => 'Suim iomlan';

  @override
  String get zakatInventoryValue => 'Luach Clàr-seilbhe';

  @override
  String get zakatDebts => 'Fiachan';

  @override
  String get zakatTotal => 'Iomlan';

  @override
  String get calculateZakat => 'Obraich a-mach Zakat';

  @override
  String get nisabNotReached =>
      'Nisab cha ruigear. Chan eil Zakat èigneachail.';

  @override
  String get totalZakat => 'Gu h-iomlan an Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Maoin: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakat òir';

  @override
  String get zakatSilverZakat => 'Zakat airgid';

  @override
  String get zakatCashZakat => 'Airgead airgid';

  @override
  String get zakatBusinessZakat => 'Gnìomhachas Zakat';

  @override
  String get zakatInvestmentZakat => 'Tasgadh Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.';

  @override
  String get chatbotLimitReached =>
      'Ràinig crìoch ceist làitheil. Àrdaich gu Premium airson gun chrìoch.';

  @override
  String get chatbotErrorMsg =>
      'Cha b’ urrainn dhomh freagairt a ghineadh. Feuch ris a-rithist.';

  @override
  String get chatbotOfflinePrompt =>
      'Tha am bunait eòlais Ioslamach far-loidhne dearbhte fhathast ga chur air dòigh. Faodaidh tu cùl-taic far loidhne a chomasachadh a-nis, ach cha sheall e ach teachdaireachdan cuibhrichte sàbhailte gus am bi an stòr-dàta a fhuaireadh deiseil.\n\nAm bu toil leat cùl-taic far loidhne a chomasachadh?';

  @override
  String get chatbotOfflineSwitched =>
      'Cùl-taic far-loidhne air a chomasachadh. Chan eil freagairtean Ioslamach ionadail dearbhte deiseil fhathast.';

  @override
  String get chatbotOfflineDownloadLabel =>
      'Dèan comas air cùl-taic far-loidhne';

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
  String get offlineQuranAudioPacks => 'Pacaidean fuaim Quran far loidhne';

  @override
  String storedOnDeviceMb(String size) {
    return 'Air a stòradh air inneal: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total surahs downloaded';
  }

  @override
  String get redownloadMissingRepair => 'Repair / Download Missing';

  @override
  String get downloadAction => 'Luchdaich sìos';

  @override
  String get resumeDownload => 'Ath-thòiseachadh a luchdachadh sìos';

  @override
  String get deleteDownloadedFiles =>
      'Sguab às Faidhlichean a chaidh a luchdachadh sìos';

  @override
  String get downloadCancelling => 'Cancelling...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Chaidh an luchdachadh sìos a chuir dheth airson $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Luchdaich sìos crìochnaichte airson $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Chrìochnaich an luchdachadh sìos airson $reciter le $failed surahs air fàiligeadh ($downloaded/$total air a luchdachadh sìos).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Faidhlichean far loidhne air an toirt às airson $reciter.';
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
  String get sukunMixerSubtitle => 'Measgadair nàdair agus Qur\'an';

  @override
  String get audioPlayFailed => 'Dh\'fhàillig ath-chluich fuaim';

  @override
  String get sukunNatureLabel => 'Sukun (nàdar)';

  @override
  String get sukunRainOfMercy => 'Uisge na Tròcair';

  @override
  String get sukunGardenOfPeace => 'Gàradh na Sìthe';

  @override
  String get sukunMidnightCalm => 'Calma meadhan-oidhche';

  @override
  String get sukunOceanTawheed => 'Cuan Tawheed';

  @override
  String get sukunUnavailableTitle => 'Soundscapes nach eil ri fhaighinn';

  @override
  String get sukunUnavailableBody =>
      'Chan eil an togail seo a’ toirt a-steach na maoinean cruth-fuaim Sukun a tha a dhìth fhathast.';

  @override
  String get prayerCompletion => 'Crìochnachadh Ùrnaigh';

  @override
  String get streaks => 'Sruthan';

  @override
  String get dayStreak => 'Sruth latha';

  @override
  String get bestStreak => 'An t-sreath as fheàrr';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'Fallback far loidhne';

  @override
  String get chatbotUseCloudAi => 'Cleachd Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Dèan comas air cùl-taic far-loidhne';

  @override
  String chatbotQueriesLeft(String count) {
    return 'Dh’fhalbh $count';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Chan eil Cloud API air a rèiteachadh. Chan eil stiùireadh Ioslamach dearbhte far-loidhne ri fhaighinn fhathast.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Chan eil stiùireadh Ioslamach ionadail dearbhte ri fhaighinn fhathast. Gluais gu Cloud AI airson freagairtean fhaighinn.';

  @override
  String get mosques => 'Mosg';

  @override
  String get halalFood => 'Biadh Halal';

  @override
  String get placesSearchArea => 'Rannsaich an raon seo';

  @override
  String get nearbyMosques => 'Mosg faisg air làimh';

  @override
  String get islamicSchools => 'Sgoiltean Ioslamach';

  @override
  String placesFoundCount(String count) {
    return '$count air a lorg';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km air falbh';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Mearachd API: $statusCode';
  }

  @override
  String get placesNetworkError => 'Mearachd lìonraidh. Feuch ris a-rithist.';

  @override
  String get placesLocationRequiredTitle => 'Àite a dhìth';

  @override
  String get placesLocationRequiredBody =>
      'Suidhich àite an toiseach gus an tèid mosg faisg air làimh, biadh halal, agus sgoiltean Ioslamach a sgrùdadh gu ceart.';

  @override
  String get placesMapTilesUnavailableTitle =>
      'Chan eil leacan mapa ri fhaighinn';

  @override
  String get placesMapTilesUnavailableBody =>
      'Chan eil stòr leac mapa dearbhte air a rèiteachadh airson an togail seo fhathast. Faodaidh àiteachan faisg air làimh luchdachadh bhon àite a chaidh a shàbhaladh fhathast.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'Chan eil dàta àite ri fhaighinn';

  @override
  String get placesDataSourceUnavailableBody =>
      'Chan eil ceann-uidhe dàta àiteachan dearbhte air a rèiteachadh airson an togail seo fhathast. Suidhich PLACES_OVERPASS_API_URL gu neach-ionaid no solaraiche aontaichte mus cuir thu an comas rannsachadh faisg air làimh.';

  @override
  String get unknownPlaceName => 'Ainm Neo-aithnichte';

  @override
  String get islamicPlaceFallback => 'Àite Ioslamach';

  @override
  String get asmaMeaning1 => 'Am Fear-tairbheach';

  @override
  String get asmaMeaning2 => 'An Tròcair';

  @override
  String get asmaMeaning3 => 'An Rìgh/Tighearna sìorraidh';

  @override
  String get asmaMeaning4 => 'An Tì as Naomh';

  @override
  String get asmaMeaning5 => 'Stòr na Sìth';

  @override
  String get asmaMeaning6 => 'An Tabhartas Tèarainteachd';

  @override
  String get asmaMeaning7 => 'An Neach-gleidhidh';

  @override
  String get asmaMeaning8 => 'An Luachmhoir / An Tì as Cumhachdach';

  @override
  String get asmaMeaning9 => 'An Coinneach';

  @override
  String get asmaMeaning10 => 'Am fear as motha';

  @override
  String get asmaMeaning11 => 'An Cruthadair';

  @override
  String get asmaMeaning12 => 'An Neach-dèanaidh Òrdugh';

  @override
  String get asmaMeaning13 => 'An Cruthadair Bòidhchead';

  @override
  String get asmaMeaning14 => 'Am maitheanas';

  @override
  String get asmaMeaning15 => 'Am Fo-cheannard';

  @override
  String get asmaMeaning16 => 'Tabhair nan Uile';

  @override
  String get asmaMeaning17 => 'An Neach-gleidhidh';

  @override
  String get asmaMeaning18 => 'Am Fosgladair';

  @override
  String get asmaMeaning19 => 'Neach-eòlais nan Uile';

  @override
  String get asmaMeaning20 =>
      'The Withholder, who narrows and restrains by wisdom.';

  @override
  String get asmaMeaning21 => 'Am Fear-saoraidh';

  @override
  String get asmaMeaning22 => 'An t-Abas';

  @override
  String get asmaMeaning23 => 'An t-Ard-fhear';

  @override
  String get asmaMeaning24 => 'Am Fear Buidheachais';

  @override
  String get asmaMeaning25 => 'An Irioslachd';

  @override
  String get asmaMeaning26 => 'Neach-èisdeachd nan Uile';

  @override
  String get asmaMeaning27 => 'Am Fiosaiche nan Uile';

  @override
  String get asmaMeaning28 => 'Am Breitheamh';

  @override
  String get asmaMeaning29 => 'Na Fìreantachd';

  @override
  String get asmaMeaning30 => 'Am fear subtle';

  @override
  String get asmaMeaning31 => 'Na h-uile mothachail';

  @override
  String get asmaMeaning32 => 'An Sean-ghiùlan';

  @override
  String get asmaMeaning33 => 'An Sgothach';

  @override
  String get asmaMeaning34 => 'Am Machaire Mòr';

  @override
  String get asmaMeaning35 => 'An Neach-duaisbeanaidh Taingealachd';

  @override
  String get asmaMeaning36 => 'An ìre as àirde';

  @override
  String get asmaMeaning37 => 'Am fear as motha';

  @override
  String get asmaMeaning38 => 'An Neach-gleidhidh';

  @override
  String get asmaMeaning39 => 'Am Fear-beathachaidh';

  @override
  String get asmaMeaning40 => 'An Neach-cunntais';

  @override
  String get asmaMeaning41 => 'Am Mòrachd';

  @override
  String get asmaMeaning42 => 'An Fialaidh';

  @override
  String get asmaMeaning43 => 'Am Fear Faire';

  @override
  String get asmaMeaning44 => 'Am Fear-freagairt Ùrnaigh';

  @override
  String get asmaMeaning45 => 'An Uile-thuigse';

  @override
  String get asmaMeaning46 => 'Am Fìor Ghlic';

  @override
  String get asmaMeaning47 => 'Am Fear Gràdhach';

  @override
  String get asmaMeaning48 => 'Am fear as glòrmhoire';

  @override
  String get asmaMeaning49 => 'An t-Aiseirigh';

  @override
  String get asmaMeaning50 => 'Am Fianais';

  @override
  String get asmaMeaning51 => 'An Fhìrinn';

  @override
  String get asmaMeaning52 => 'An t-Urrasair Uile gu leòr';

  @override
  String get asmaMeaning53 => 'Sealbhaiche a h-uile Neart';

  @override
  String get asmaMeaning54 => 'Na Feachd';

  @override
  String get asmaMeaning55 => 'An Dìonadair';

  @override
  String get asmaMeaning56 => 'Am Moladh';

  @override
  String get asmaMeaning57 => 'Am Measadair';

  @override
  String get asmaMeaning58 => 'An Tùsanach';

  @override
  String get asmaMeaning59 => 'An t-Urr';

  @override
  String get asmaMeaning60 => 'Tabhair na Beatha';

  @override
  String get asmaMeaning61 => 'Glacadair na Beatha';

  @override
  String get asmaMeaning62 => 'Am bith beò';

  @override
  String get asmaMeaning63 => 'An Neach-gleidhidh fèin-sheasmhach';

  @override
  String get asmaMeaning64 => 'An Lorgar';

  @override
  String get asmaMeaning65 => 'An Glòireach';

  @override
  String get asmaMeaning66 => 'An t-aon fhear';

  @override
  String get asmaMeaning67 => 'Am fear';

  @override
  String get asmaMeaning68 => 'Am fear a bhios na h-uile a’ sireadh';

  @override
  String get asmaMeaning69 => 'An Cumhachdach';

  @override
  String get asmaMeaning70 => 'Cruthaiche a h-uile cumhachd';

  @override
  String get asmaMeaning71 => 'An t-Easpag';

  @override
  String get asmaMeaning72 => 'An Moill';

  @override
  String get asmaMeaning73 => 'A’ Chiad';

  @override
  String get asmaMeaning74 => 'An tè mu dheireadh';

  @override
  String get asmaMeaning75 => 'Am Manifest';

  @override
  String get asmaMeaning76 => 'Am Falaichte';

  @override
  String get asmaMeaning77 => 'An Riaghladair';

  @override
  String get asmaMeaning78 => 'An t-Àrd-neach';

  @override
  String get asmaMeaning79 => 'Doer of Good';

  @override
  String get asmaMeaning80 => 'Stiùireadh an Aithreachais';

  @override
  String get asmaMeaning81 => 'An Dìoghaltas';

  @override
  String get asmaMeaning82 => 'Am Machaire';

  @override
  String get asmaMeaning83 =>
      'The Most Kind and Compassionate, full of tender mercy.';

  @override
  String get asmaMeaning84 => 'An Sealbhadair/Uachdaran nan Uile';

  @override
  String get asmaMeaning85 => 'Sealbhaiche na Mòrachd agus na Bounty';

  @override
  String get asmaMeaning86 => 'Am Fear Cothromach';

  @override
  String get asmaMeaning87 => 'An Neach-cruinneachaidh';

  @override
  String get asmaMeaning88 => 'Am Fear Saibhir';

  @override
  String get asmaMeaning89 => 'An Saibhreasaiche';

  @override
  String get asmaMeaning90 => 'An Neach-Bacadh Dochair';

  @override
  String get asmaMeaning91 => 'Buireadair a’ chron';

  @override
  String get asmaMeaning92 => 'Am Fear-buannachd as Fheàrr';

  @override
  String get asmaMeaning93 => 'An Solas';

  @override
  String get asmaMeaning94 => 'An Treòir';

  @override
  String get asmaMeaning95 => 'An Tùsanach';

  @override
  String get asmaMeaning96 => 'Am Fear Siorruidh';

  @override
  String get asmaMeaning97 => 'An t-Oighreiche';

  @override
  String get asmaMeaning98 => 'An Leabhar-iùil as Ceartaiche';

  @override
  String get asmaMeaning99 => 'An t-euslainteach';
}
