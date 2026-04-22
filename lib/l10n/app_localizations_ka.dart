// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Georgian (`ka`).
class AppLocalizationsKa extends AppLocalizations {
  AppLocalizationsKa([String locale = 'ka']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'სინათლის ისლამური გზა';

  @override
  String get home => 'მთავარი';

  @override
  String get quran => 'ყურანი';

  @override
  String get qibla => 'ქიბლა';

  @override
  String get zikr => 'ზიქრ';

  @override
  String get calendar => 'კალენდარი';

  @override
  String get settings => 'პარამეტრები';

  @override
  String get nextPrayer => 'შემდეგი ლოცვა';

  @override
  String get prayerTimes => 'ლოცვის დრო';

  @override
  String get continueReading => 'განაგრძეთ კითხვა';

  @override
  String get getLifetimePro => 'მიიღეთ Lifetime Pro';

  @override
  String get unlockTajweed => 'განბლოკეთ Tajweed და გაფართოებული ფუნქციები';

  @override
  String get prayerCalculation => 'ლოცვის გამოთვლა';

  @override
  String get method => 'გაანგარიშების მეთოდი';

  @override
  String get madhab => 'Asr იურიდიული მეთოდი';

  @override
  String get surahs => 'სურები';

  @override
  String get ayahs => 'აიჰები';

  @override
  String get fajr => 'ფაჯრ';

  @override
  String get sunrise => 'მზის ამოსვლა';

  @override
  String get dhuhr => 'დჰური';

  @override
  String get asr => 'ასრ';

  @override
  String get maghrib => 'მაღრიბი';

  @override
  String get isha => 'იშა';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'დროა $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'ლოცვის დროა $prayerName.';
  }

  @override
  String get dataStorage => 'მონაცემთა და შენახვა';

  @override
  String get clearCache => 'ქეშის გასუფთავება';

  @override
  String get cacheClearedSuccess => 'ქეში წარმატებით გაიწმინდა';

  @override
  String get location => 'მდებარეობა';

  @override
  String get language => 'ენა';

  @override
  String get selectLanguage => 'აირჩიეთ ენა';

  @override
  String get searchLanguage => 'მოძებნეთ 180+ ენა...';

  @override
  String get systemDefault => 'სისტემის ნაგულისხმევი';

  @override
  String get currentLocation => 'მიმდინარე მდებარეობა (GPS)';

  @override
  String get locationServiceDisabled => 'მდებარეობის სერვისი გამორთულია.';

  @override
  String get locationPermissionDenied => 'მდებარეობის ნებართვა უარყოფილია.';

  @override
  String get locationDetectionFailed =>
      'თქვენი მდებარეობის აღმოჩენა ვერ მოხერხდა. გთხოვთ, აირჩიოთ ქალაქი ხელით ან სცადოთ ხელახლა.';

  @override
  String citiesCount(String count) {
    return '$count ქალაქები';
  }

  @override
  String get search => 'ძიება';

  @override
  String get searchHint => 'ძიება...';

  @override
  String get noResults => 'შედეგი ვერ მოიძებნა';

  @override
  String get loading => 'იტვირთება...';

  @override
  String get error => 'შეცდომა';

  @override
  String get appErrorOccurred => 'მოხდა შეცდომა';

  @override
  String get appUnknownError => 'უცნობი შეცდომა';

  @override
  String get quranLoadFailed =>
      'ყურანის შინაარსი ვერ ჩაიტვირთა. გთხოვთ, სცადოთ ხელახლა.';

  @override
  String get retry => 'ხელახლა სცადეთ';

  @override
  String get refreshAction => 'განაახლეთ';

  @override
  String get cancel => 'გაუქმება';

  @override
  String get save => 'შენახვა';

  @override
  String get delete => 'წაშლა';

  @override
  String get edit => 'რედაქტირება';

  @override
  String get close => 'დახურვა';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'დიახ';

  @override
  String get no => 'არა';

  @override
  String get surah => 'სურა';

  @override
  String ayahLabel(String ayah) {
    return 'აია $ayah';
  }

  @override
  String get juz => 'ჯუზი';

  @override
  String get page => 'გვერდი';

  @override
  String get reading => 'კითხვა';

  @override
  String get recitation => 'რეციდიცია';

  @override
  String get translation => 'თარგმანი';

  @override
  String get tafsir => 'ტაფსირი';

  @override
  String get tafsirLoading => 'ტაფსირის ჩატვირთვა...';

  @override
  String get tafsirSourceLabel => 'ტაფსირის წყარო';

  @override
  String get tafsirNoSurahFound => 'ამ სურისთვის ტაფსირი ვერ მოიძებნა.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'აია $ayah-ისთვის ტაფსირი ვერ მოიძებნა.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir ვერ ჩაიტვირთა.';

  @override
  String get tafsirNoTextForAyah => 'ამ აიისთვის ტაფსირის ტექსტი არ არის.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'ტაფსირის ჩამოტვირთვა $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'იტვირთება tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tafsir წყარომ დააბრუნა HTTP $statusCode შეცდომა.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'არჩეული tafsir წყარო არ დააბრუნა ჩანაწერები.';

  @override
  String get tafsirCacheUnavailable =>
      'დადასტურებული tafsir ჯერ არ არის ხელმისაწვდომი ხაზგარეშე. დაათვალიერეთ წყაროდან მიღებული tafsir მონაცემთა ნაკრების სინქრონიზაცია.';

  @override
  String get bookmarks => 'სანიშნეები';

  @override
  String get addBookmark => 'დაამატეთ სანიშნე';

  @override
  String get removeBookmark => 'ამოიღეთ სანიშნე';

  @override
  String get lastRead => 'ბოლო წაკითხვა';

  @override
  String get dailyZikr => 'ყოველდღიური ზიკრი';

  @override
  String get duaMeaning1 =>
      'სხვები ლოცულობენ: „უფალო ჩვენო, მოგვეცი სიკეთე ამქვეყნადაც და ამქვეყნიურშიც და დაგვიფარე ცეცხლის ტანჯვისგან“.';

  @override
  String get duaMeaning2 =>
      'ღმერთი არც ერთ სულს არ იტვირთავს იმაზე მეტს, რისი ატანა შეუძლია: თითოეული იძენს სიკეთეს, რაც გააკეთა და იტანჯება თავის ცუდზე - „უფალო, ნუ დაგვიშავებ საქმეს, თუ დავივიწყებთ ან შეცდომებს დავუშვებთ. უფალო, ნუ დაგვტვირთავ ჩვენ, როგორც შენ დატვირთე ჩვენზე ადრე. უფალო, ნუ დაგვტვირთავ იმაზე მეტს, ვიდრე გვაქვს ძალა. შეგვიწყალე, შეგვიწყალე და შეგვიწყალე. შენ ხარ ჩვენი მფარველი, ამიტომ დაგვეხმარე ურწმუნოების წინააღმდეგ.';

  @override
  String get duaMeaning3 =>
      '\"უფალო ჩვენო, ნუ მისცე უფლება ჩვენს გულებს გადაუხვევს მას შემდეგ, რაც შენ გვიხელმძღვანელე. მოგვეცი შენი წყალობა: შენ ხარ მარად მომცემი.';

  @override
  String get duaMeaning4 =>
      'უფალო, მიეცი, რომ მე და ჩემმა შთამომავლობამ გავაგრძელოთ ლოცვა. უფალო, მიიღე ჩემი თხოვნა.';

  @override
  String get duaMeaning5 =>
      'და ჩამოწიე ფრთა მათ მიმართ თავმდაბლობით სიკეთით და უთხარი: „უფალო, შემიწყალე ისინი, როგორც ისინი ზრუნავდნენ ჩემზე, როცა პატარა ვიყავი“.';

  @override
  String get duaMeaning6 =>
      'ამაღლებული იყოს ღმერთი, ვინც ჭეშმარიტად აკონტროლებს. [წინასწარმეტყველო], ნუ იჩქარებ წაკითხვას გამოცხადების დასრულებამდე, არამედ უთხარი: „უფალო, გამაძლიერე ცოდნაში!“';

  @override
  String get duaMeaning7 =>
      'უთხარი [წინასწარმეტყველს]: „უფალო, აპატიე და შეიწყალე: შენ ყველაზე მოწყალე ხარ“.';

  @override
  String get duaMeaning8 =>
      'ისინი, ვინც ლოცულობენ: „უფალო ჩვენო, მოგვცეს სიხარული ჩვენს მეუღლეებსა და შთამომავლობაში. გაგვაჩინე კარგი მაგალითი მათთვის, ვინც იცის შენი“.';

  @override
  String get morningZikr => 'დილის ზიქრი';

  @override
  String get eveningZikr => 'საღამოს ზიქრი';

  @override
  String get tasbih => 'ტასბიჰ';

  @override
  String get ahkab => 'ახკამ';

  @override
  String get masaail => 'მასაილი';

  @override
  String get hadith => 'ჰადისი';

  @override
  String get hadithCollection => 'ჰადისის კრებული';

  @override
  String get hadithBooks => 'ჰადისის წიგნები';

  @override
  String get searchHadith => 'მოძებნეთ ჰადისი';

  @override
  String get asmaulHusna => 'ასმა-ულ-ჰუსნა';

  @override
  String get namesOfAllah => 'ალაჰის სახელები';

  @override
  String get liveTv => 'პირდაპირი ტელევიზია';

  @override
  String get watchLive => 'უყურეთ პირდაპირ ეთერში';

  @override
  String get streamError => 'ნაკადის შეცდომა';

  @override
  String get reload => 'გადატვირთვა';

  @override
  String get openInYoutube => 'გახსენით YouTube-ზე';

  @override
  String get ibadahTracker => 'იბადა ტრეკერი';

  @override
  String get fasting => 'მარხვა';

  @override
  String get quranReading => 'ყურანის კითხვა';

  @override
  String get prayers => 'ლოცვები';

  @override
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '$hoursსთ $minutesწთ';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '$minutesმ';
  }

  @override
  String get prayerRemainingUnavailable => '--';

  @override
  String get dhikrCount => 'დჰიქრის გრაფი';

  @override
  String get weeklyProgress => 'ყოველკვირეული პროგრესი';

  @override
  String get monthlyProgress => 'ყოველთვიური პროგრესი';

  @override
  String get statistics => 'სტატისტიკა';

  @override
  String get hijriCalendar => 'ჰიჯრის კალენდარი';

  @override
  String get gregorianCalendar => 'გრიგორიანული კალენდარი';

  @override
  String get today => 'დღეს';

  @override
  String get tomorrow => 'ხვალ';

  @override
  String get yesterday => 'გუშინ';

  @override
  String get specialDays => 'განსაკუთრებული დღეები';

  @override
  String get ramadan => 'რამადანი';

  @override
  String get eidAlFitr => 'ეიდ ალ-ფიტრ';

  @override
  String get eidAlAdha => 'ეიდ ალ-ადჰა';

  @override
  String get islamicNewYear => 'ისლამური ახალი წელი';

  @override
  String get mawlidAnNabi => 'მავლიდ ან-ნაბი';

  @override
  String get specialDayDateRamadanStart => '1 რამადანი';

  @override
  String get specialDayDateLaylatAlQadr => '27 რამადანი';

  @override
  String get specialDayDateEidAlFitr => '1 შავვალი';

  @override
  String get specialDayDateEidAlAdha => '10 დულ ჰიჯა';

  @override
  String get specialDayDateIslamicNewYear => '1 მუჰარამი';

  @override
  String get specialDayDateMawlidAnNabi => '12 რაბი ალ-ავვალი';

  @override
  String get laylatAlQadr => 'ლეილათ ალ-კადრი';

  @override
  String get qiblaDirection => 'Qibla მიმართულება';

  @override
  String get compass => 'კომპასი';

  @override
  String get degrees => 'გრადუსი';

  @override
  String get north => 'ჩრდილოეთი';

  @override
  String get qiblaFound => 'ქიბლა ნაპოვნია!';

  @override
  String get turnDevice => 'მოაბრუნეთ თქვენი მოწყობილობა ქიბლასკენ';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'კომპასის შეცდომა: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'კომპასის სენსორი მიუწვდომელია ამ მოწყობილობაზე.';

  @override
  String get qiblaLocationRequiredTitle => 'მდებარეობა საჭიროა Qibla-სთვის';

  @override
  String get qiblaLocationRequiredBody =>
      'დააყენეთ თქვენი რეალური მდებარეობა Qibla კომპასის გამოყენებამდე, რათა მიმართულება ზუსტად გამოითვალოს.';

  @override
  String get adhanNotificationChannelName => 'ადანის შეტყობინებები';

  @override
  String get adhanNotificationChannelDescription =>
      'ლოცვის დრო აფრთხილებს ადანის ხმით.';

  @override
  String get notifications => 'შეტყობინებები';

  @override
  String get prayerNotifications => 'ლოცვის შეტყობინებები';

  @override
  String get enableNotifications => 'ჩართეთ შეტყობინებები';

  @override
  String get notificationTime => 'შეტყობინების დრო';

  @override
  String get beforePrayer => 'ლოცვამდე წუთით ადრე';

  @override
  String get theme => 'თემა';

  @override
  String get lightMode => 'სინათლის რეჟიმი';

  @override
  String get darkMode => 'მუქი რეჟიმი';

  @override
  String get systemTheme => 'სისტემის თემა';

  @override
  String get about => 'შესახებ';

  @override
  String get version => 'ვერსია';

  @override
  String get privacyPolicy => 'კონფიდენციალურობის პოლიტიკა';

  @override
  String get termsOfService => 'მომსახურების პირობები';

  @override
  String get contactUs => 'დაგვიკავშირდით';

  @override
  String get rateApp => 'შეაფასეთ აპლიკაცია';

  @override
  String get shareApp => 'აპის გაზიარება';

  @override
  String shareAppMessage(String appName, String url) {
    return 'შეამოწმეთ $appName: ისლამური ცხოვრების სტილის საბოლოო აპლიკაცია! $url';
  }

  @override
  String get downloadManager => 'ჩამოტვირთვის მენეჯერი';

  @override
  String get downloads => 'ჩამოტვირთვები';

  @override
  String get downloading => 'მიმდინარეობს ჩამოტვირთვა...';

  @override
  String get downloadComplete => 'ჩამოტვირთვა დასრულებულია';

  @override
  String get downloadFailed => 'ჩამოტვირთვა ვერ მოხერხდა';

  @override
  String get offlineMode => 'ხაზგარეშე რეჟიმი';

  @override
  String get noInternet => 'ინტერნეტთან კავშირი არ არის';

  @override
  String get checkConnection => 'გთხოვთ, შეამოწმოთ თქვენი კავშირი';

  @override
  String get premium => 'პრემიუმი';

  @override
  String get upgradeToPro => 'გადადით Pro-ზე';

  @override
  String get proFeatures => 'პრო ფუნქციები';

  @override
  String get removeAds => 'რეკლამების წაშლა';

  @override
  String get unlockAll => 'განბლოკეთ მთელი კონტენტი';

  @override
  String get exclusiveContent => 'ექსკლუზიური კონტენტი';

  @override
  String get welcome => 'მოგესალმებით';

  @override
  String get getStarted => 'დაიწყეთ';

  @override
  String get skip => 'გამოტოვება';

  @override
  String get next => 'შემდეგი';

  @override
  String get done => 'შესრულებულია';

  @override
  String get onboarding1Title => 'კეთილი იყოს თქვენი მობრძანება ალაჰის გზაზე';

  @override
  String get onboarding1Desc =>
      'თქვენი სრული ისლამური თანამგზავრი აპლიკაცია ლოცვის დროისთვის, ყურანი და სხვა';

  @override
  String get onboarding2Title => 'ლოცვის დრო';

  @override
  String get onboarding2Desc =>
      'ლოცვის ზუსტი დრო თქვენი მდებარეობიდან გამომდინარე';

  @override
  String get onboarding3Title => 'ყურანი და სხვა';

  @override
  String get onboarding3Desc =>
      'წაიკითხეთ ყურანი, თვალყური ადევნეთ თქვენს კითხვას და შეისწავლეთ ისლამური შინაარსი';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'მრიცხველის გადატვირთვა';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'სამიზნეების რაოდენობა: $target';
  }

  @override
  String get tapToCount => 'შეეხეთ დასათვლელად';

  @override
  String get zikrCompletedMashAllah => 'დასრულდა! მაშალაჰ';

  @override
  String get zikrMeaningSubhanAllah =>
      'ალაჰი მაღლა დგას ყოველგვარ არასრულყოფილებაზე.';

  @override
  String get zikrMeaningAlhamdulillah => 'ყველა დიდება ალაჰს ეკუთვნის.';

  @override
  String get zikrMeaningAllahuAkbar => 'ალაჰი უდიდესია.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'არ არსებობს ღმერთი გარდა ალაჰისა.';

  @override
  String get zikrMeaningAstaghfirullah => 'მე ვთხოვ ალაჰის პატიებას.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'არ არსებობს ძალა და ძალა, გარდა ალლაჰის მეშვეობით.';

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
  String get dailyProgress => 'ყოველდღიური პროგრესი';

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
  String get recheckPremium => 'ხელახლა შეამოწმეთ პრემიუმ გამოწერის სტატუსი';

  @override
  String get syncStore =>
      'დაასინქრონეთ აპლიკაციების მაღაზიასთან თქვენი პრემიუმ გამოწერის დასადასტურებლად.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'პრემიუმ გამოწერა დადასტურებულია.';

  @override
  String get premiumNotFound => 'პრემიუმ გამოწერა ვერ მოიძებნა.';

  @override
  String premiumRefreshError(Object error) {
    return 'პრემიუმ გამოწერის სტატუსის განახლება ვერ მოხერხდა: $error';
  }

  @override
  String get offlineDownloadManager => 'ხაზგარეშე ჩამოტვირთვის მენეჯერი';

  @override
  String get manageDatasets =>
      'მართეთ მასიური ხაზგარეშე აუდიო და მონაცემთა ნაკრები.';

  @override
  String get freeStorage => 'გაათავისუფლეთ მოწყობილობის შიდა მეხსიერება.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'ყურანის მონაცემთა ბაზის შემოწმება...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'ყურანის მონაცემთა ბაზის სტატუსი';

  @override
  String statusLabel(Object status) {
    return 'სტატუსი: $status';
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
    return 'ყურანის შემოწმება ვერ მოხერხდა: $error';
  }

  @override
  String get audioVoice => 'აუდიო ხმა';

  @override
  String get audioVoiceMisharyAlafasy => 'მამაკაცი (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'მამაკაცი (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'მამაკაცი (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'ქიბლას კალიბრაცია';

  @override
  String get compassSmoothing => 'კომპასი გლუვი';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'კალიბრაციის ოფსეტი';

  @override
  String currentOffset(Object offset) {
    return 'მიმდინარე: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'დაარეგულირეთ, თუ კომპასს სჭირდება ხელით შესწორება. დადებითი მნიშვნელობები ბრუნავს საათის ისრის მიმართულებით.';

  @override
  String get apply => 'ცვლილებების გამოყენება';

  @override
  String get resetOnboarding => 'შესავალი დაყენების გადატვირთვა';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'დიაგნოსტიკა';

  @override
  String get diagnosticsNotSet => 'არ არის დაყენებული';

  @override
  String get diagnosticsPrayerProfile => 'ლოცვის პროფილი';

  @override
  String get diagnosticsPrayerSource => 'ლოცვის ორგანო';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'მორგებული / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'ხელით მორგებული კუთხეები (ინსტიტუციური წყაროს გარეშე)';

  @override
  String get diagnosticsCloudDriven => 'ღრუბლოვანი';

  @override
  String get diagnosticsAdhanAudioAssets => 'ადანის აუდიო აქტივები';

  @override
  String get diagnosticsUiAudioAssets => 'UI აუდიო აქტივები';

  @override
  String get diagnosticsQuranAudioAssets => 'ყურანის აუდიო აქტივები';

  @override
  String get diagnosticsAudioAssets => 'აუდიო აქტივები';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count ფაილი';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'მანიფესტის წაკითხვა ვერ მოხერხდა: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'ლოკალიზაციის ლოკალები';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count მხარდაჭერა';
  }

  @override
  String get diagnosticsQuranDataset => 'ყურანის მონაცემთა ნაკრები';

  @override
  String get diagnosticsQuranSurahs => 'ყურანის სურები';

  @override
  String get diagnosticsQuranAyahs => 'ყურანის აიაები';

  @override
  String get diagnosticsQuranJuzMetadata => 'ყურანის ჯუზი მეტამონაცემები';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'ღრუბლოვანი ცხრილები აკლია Supabase-ში; შეფუთული სარეზერვო აქტიური';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'ღრუბლოვანი შემოწმება ვერ მოხერხდა: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud juz მეტამონაცემები აკლია; შეფუთული სტრუქტურული სარეზერვო აქტიური';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'ღრუბლის სტრუქტურული შემოწმება ვერ მოხერხდა: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'საჭიროა კალიბრაცია. დაატრიალეთ მოწყობილობა ფიგურაში-8.';

  @override
  String get dailyVerse => 'ყოველდღიური ლექსი';

  @override
  String get dailyVerseUnavailableTitle => 'ყოველდღიური ლექსი მიუწვდომელია';

  @override
  String get dailyVerseUnavailableBody =>
      'დადასტურებული ყოველდღიური ლექსის შინაარსი ჯერ არ არის კონფიგურირებული ამ კონსტრუქციისთვის. დაუკავშირდით ღრუბლოვან წყაროს ან დაარეგულირეთ დადასტურებული ქეში.';

  @override
  String get todaysIbadah => 'დღევანდელი იბადა';

  @override
  String get quickAccess => 'სწრაფი წვდომა';

  @override
  String get assistant => 'ასისტენტი';

  @override
  String get places => 'ადგილები';

  @override
  String get library => 'ბიბლიოთეკა';

  @override
  String get analytics => 'ანალიტიკა';

  @override
  String get dailyDuas => 'ყოველდღიური დუასი';

  @override
  String essentialDuas(String count) {
    return '$count აუცილებელი დუები';
  }

  @override
  String get duaUnavailableTitle =>
      'დადასტურებული დუა ჯერ არ არის ხელმისაწვდომი';

  @override
  String get duaUnavailableBody =>
      'დადასტურებული ყოველდღიური დუაები ჯერ არ არის სინქრონიზებული ამ მოწყობილობასთან. დაუკავშირდით ღრუბლოვან წყაროს, რომ ჩატვირთოთ მოპოვებული დუები დაუდასტურებელი სარეზერვო ნაცვლად.';

  @override
  String get duaCategoryQuranic => 'ყურანის დუა';

  @override
  String get duaCategoryMorningEvening => 'დილა და საღამო';

  @override
  String get duaCategoryTasbih => 'ტასბიჰ';

  @override
  String get duaCategoryProtection => 'დაცვა';

  @override
  String get duaCategoryBeginning => 'საწყისები';

  @override
  String get duaCategorySleep => 'დაიძინე';

  @override
  String get duaCategoryFoodDrink => 'საკვები და სასმელი';

  @override
  String get duaCategoryForgiveness => 'პატიება';

  @override
  String get duaCategoryHome => 'მთავარი';

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
  String get islamicEducation => 'ისლამური განათლება';

  @override
  String get sukunAudioTitle => 'სუკუნის ხმები';

  @override
  String get hadithCollections => 'ჰადიდების კრებულები';

  @override
  String get hadithSourcePending => 'დადასტურებული წყარო ელოდება';

  @override
  String get hadithUnavailableTitle =>
      'დადასტურებული ჰადისის კრებულები ჯერ არ არის ხელმისაწვდომი';

  @override
  String get hadithUnavailableBody =>
      'ეს კონსტრუქცია ჯერ კიდევ დამოკიდებულია დაუმოწმებელ გარე ჰადისის არხზე. ჰადისების დათვალიერება გათიშული რჩება მანამ, სანამ არ მოხდება მონაცემთა ნაკრების სინქრონიზაცია.';

  @override
  String get paywallUnlockAll =>
      'გახსენით ყველა ფუნქცია თქვენი სულიერი მოგზაურობისთვის';

  @override
  String get premiumProductUnavailable =>
      'პრემიუმ პროდუქტი ამჟამად არ არის ხელმისაწვდომი. გთხოვთ, სცადოთ მოგვიანებით.';

  @override
  String get premiumPurchaseFailed =>
      'შესყიდვა ვერ დასრულდა. გთხოვთ, სცადოთ ხელახლა.';

  @override
  String get paywallFeature1Title => 'ნერვული ასისტენტი პლუსი';

  @override
  String get paywallFeature1Desc => 'ულიმიტო AI-ზე მომუშავე კითხვა-პასუხი';

  @override
  String get paywallFeature2Title => 'შეუზღუდავი ხაზგარეშე';

  @override
  String get paywallFeature2Desc => 'ჩამოტვირთეთ ყველა გამოთქმა';

  @override
  String get paywallFeature3Title => 'ექსკლუზიური დიზაინები';

  @override
  String get paywallFeature3Desc => 'პრემიუმ თემები და შრიფტები';

  @override
  String get paywallFeature4Title => 'რეკლამის გარეშე';

  @override
  String get paywallFeature4Desc => 'ნულოვანი რეკლამა';

  @override
  String get paywallGetAccess => 'მიიღეთ უვადო წვდომა - \$1.00';

  @override
  String get restorePurchases => 'შესყიდვების აღდგენა';

  @override
  String get zakatCalculator => 'ზაქატის კალკულატორი';

  @override
  String get zakatGold => 'ოქრო (ალტინი)';

  @override
  String get zakatSilver => 'ვერცხლი (Gümüş)';

  @override
  String get zakatCashBank => 'ნაღდი ფული / ბანკი';

  @override
  String get zakatBusiness => 'ბიზნესი';

  @override
  String get zakatInvestments => 'ინვესტიციები';

  @override
  String get zakatWeightGrams => 'წონა (გ)';

  @override
  String get zakatPricePerGram => 'ფასი/გრ';

  @override
  String get zakatTotalAmount => 'მთლიანი თანხა';

  @override
  String get zakatInventoryValue => 'ინვენტარის ღირებულება';

  @override
  String get zakatDebts => 'ვალები';

  @override
  String get zakatTotal => 'სულ';

  @override
  String get calculateZakat => 'გამოთვალეთ ზაქათი';

  @override
  String get nisabNotReached =>
      'ნისაბს არ მიუღწევია. ზაქათი არ არის სავალდებულო.';

  @override
  String get totalZakat => 'სულ ზაქათი';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'ნისაბ: $nisab • აქტივები: $assets';
  }

  @override
  String get zakatGoldZakat => 'ოქროს ზაქათი';

  @override
  String get zakatSilverZakat => 'ვერცხლის ზაქათი';

  @override
  String get zakatCashZakat => 'ნაღდი ზაქათი';

  @override
  String get zakatBusinessZakat => 'ბიზნეს ზაქათი';

  @override
  String get zakatInvestmentZakat => 'საინვესტიციო ზაქათი';

  @override
  String get chatbotGreeting =>
      'ასსალამუ ალაიკუმ! მე ვარ თქვენი ისლამური თანაშემწე. მკითხეთ ლოცვაზე, მარხვაზე, ზაქატზე ან რომელიმე ისლამურ თემაზე.';

  @override
  String get chatbotLimitReached =>
      'მიღწეულია მოთხოვნის ყოველდღიური ლიმიტი. განაახლეთ Premium-ზე შეუზღუდავად.';

  @override
  String get chatbotErrorMsg =>
      'პასუხის მოპოვება ვერ მოვახერხე. გთხოვთ, სცადოთ ხელახლა.';

  @override
  String get chatbotOfflinePrompt =>
      'დამოწმებული ოფლაინ ისლამური ცოდნის ბაზა ჯერ კიდევ მიმდინარეობს. შეგიძლიათ ახლავე ჩართოთ ხაზგარეშე სარეზერვო საშუალება, მაგრამ ის აჩვენებს მხოლოდ შეზღუდულ უსაფრთხო შეტყობინებებს, სანამ წყაროს მონაცემთა ნაკრები მზად იქნება.\n\nგსურთ ჩართოთ ოფლაინ სარეზერვო?';

  @override
  String get chatbotOfflineSwitched =>
      'ხაზგარეშე სარეზერვო საშუალება ჩართულია. დამოწმებული ადგილობრივი ისლამური პასუხები ჯერ მზად არ არის.';

  @override
  String get chatbotOfflineDownloadLabel => 'ჩართეთ ოფლაინ სარეზერვო საშუალება';

  @override
  String get downloadPreparing => 'მიმდინარეობს ჩამოტვირთვის მომზადება...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'მიმდინარეობს სურა $surah / $total ჩამოტვირთვა';
  }

  @override
  String get downloadCompleted =>
      'ყველა სურა უკვე გადმოწერილია ამ მკითხავისთვის.';

  @override
  String get offlineQuranAudioPacks => 'ოფლაინ ყურანის აუდიო პაკეტები';

  @override
  String storedOnDeviceMb(String size) {
    return 'ინახება მოწყობილობაზე: $size მბაიტი';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return 'ჩამოტვირთულია $downloaded / $total სურა';
  }

  @override
  String get redownloadMissingRepair => 'შეკეთება / ჩამოტვირთვა აკლია';

  @override
  String get downloadAction => 'ჩამოტვირთვა';

  @override
  String get resumeDownload => 'განაგრძეთ ჩამოტვირთვა';

  @override
  String get deleteDownloadedFiles => 'ჩამოტვირთული ფაილების წაშლა';

  @override
  String get downloadCancelling => 'გაუქმება...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'ჩამოტვირთვა გაუქმდა $reciter-ისთვის.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'ჩამოტვირთვა დასრულდა $reciter-ისთვის.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'ჩამოტვირთვა დასრულდა $reciter-ისთვის $failed წარუმატებელი სურებით (ჩამოტვირთულია $downloaded/$total).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'წაშლილია ოფლაინ ფაილები $reciter-ისთვის.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'დადასტურებული ყურანის აუდიო წყაროები ამჟამად მიუწვდომელია.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'დადასტურებული ყურანის აუდიო პაკეტი არასრულია ($available/$total). სცადეთ ხელახლა აუდიო კატალოგის განახლების შემდეგ.';
  }

  @override
  String get chatbotHint => 'დასვით შეკითხვა...';

  @override
  String get chatbotThinking => 'ფიქრი...';

  @override
  String get sukunMixerSubtitle => 'ბუნებისა და ყურანის შემრევი';

  @override
  String get audioPlayFailed => 'აუდიოს დაკვრა ვერ მოხერხდა';

  @override
  String get sukunNatureLabel => 'სუკუნი (ბუნება)';

  @override
  String get sukunRainOfMercy => 'წყალობის წვიმა';

  @override
  String get sukunGardenOfPeace => 'მშვიდობის ბაღი';

  @override
  String get sukunMidnightCalm => 'შუაღამის სიმშვიდე';

  @override
  String get sukunOceanTawheed => 'ოკეანის ტაუჰიდი';

  @override
  String get sukunUnavailableTitle => 'ხმოვანი პეიზაჟები მიუწვდომელია';

  @override
  String get sukunUnavailableBody =>
      'ეს კონსტრუქცია ჯერ არ შეიცავს Sukun soundscape-ის აუცილებელ აქტივებს.';

  @override
  String get prayerCompletion => 'ლოცვის დასრულება';

  @override
  String get streaks => 'ზოლები';

  @override
  String get dayStreak => 'დღის სტრიქონი';

  @override
  String get bestStreak => 'საუკეთესო სერია';

  @override
  String get chatbotCloudAiLabel => 'Cloud AI';

  @override
  String get chatbotLocalAiLabel => 'ხაზგარეშე გამობრუნება';

  @override
  String get chatbotUseCloudAi => 'გამოიყენეთ Cloud AI (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'ჩართეთ ოფლაინ სარეზერვო საშუალება';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count დარჩა';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Cloud API არ არის კონფიგურირებული. დადასტურებული ხაზგარეშე ისლამური სახელმძღვანელო ჯერ არ არის ხელმისაწვდომი.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] დადასტურებული ადგილობრივი ისლამური სახელმძღვანელო ჯერ არ არის ხელმისაწვდომი. გადაერთეთ Cloud AI-ზე წყაროს პასუხებისთვის.';

  @override
  String get mosques => 'მეჩეთები';

  @override
  String get halalFood => 'ჰალალის საკვები';

  @override
  String get placesSearchArea => 'მოძებნეთ ეს ტერიტორია';

  @override
  String get nearbyMosques => 'ახლომდებარე მეჩეთები';

  @override
  String get islamicSchools => 'ისლამური სკოლები';

  @override
  String placesFoundCount(String count) {
    return '$count მოიძებნა';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance კმ დაშორებით';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API შეცდომა: $statusCode';
  }

  @override
  String get placesNetworkError => 'ქსელის შეცდომა. გთხოვთ, სცადოთ ხელახლა.';

  @override
  String get placesLocationRequiredTitle => 'საჭიროა ადგილმდებარეობა';

  @override
  String get placesLocationRequiredBody =>
      'ჯერ დააყენეთ მდებარეობა, რათა ზუსტად მოძებნოთ ახლომდებარე მეჩეთები, ჰალალის საკვები და ისლამური სკოლები.';

  @override
  String get placesMapTilesUnavailableTitle => 'რუკის ფილები მიუწვდომელია';

  @override
  String get placesMapTilesUnavailableBody =>
      'დადასტურებული რუკის ფილა წყარო ჯერ არ არის კონფიგურირებული ამ კონსტრუქციისთვის. ახლომდებარე ადგილები კვლავ შეიძლება ჩაიტვირთოს თქვენი შენახული მდებარეობიდან.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'ადგილების მონაცემები მიუწვდომელია';

  @override
  String get placesDataSourceUnavailableBody =>
      'დადასტურებული ადგილების მონაცემების ბოლო წერტილი ჯერ არ არის კონფიგურირებული ამ კონსტრუქციისთვის. ახლომდებარე ძიების ჩართვამდე დააყენეთ PLACES_OVERPASS_API_URL დამტკიცებულ პროქსი ან პროვაიდერი.';

  @override
  String get unknownPlaceName => 'უცნობი სახელი';

  @override
  String get islamicPlaceFallback => 'ისლამური ადგილი';

  @override
  String get asmaMeaning1 => 'კეთილმსახური';

  @override
  String get asmaMeaning2 => 'მოწყალე';

  @override
  String get asmaMeaning3 => 'მეფე / მარადიული უფალი';

  @override
  String get asmaMeaning4 => 'წმინდა';

  @override
  String get asmaMeaning5 => 'მშვიდობის წყარო';

  @override
  String get asmaMeaning6 => 'უსაფრთხოების გამცემი';

  @override
  String get asmaMeaning7 => 'Guardian';

  @override
  String get asmaMeaning8 => 'ძვირფასი / ყველაზე ძლევამოსილი';

  @override
  String get asmaMeaning9 => 'კომპლექტერი';

  @override
  String get asmaMeaning10 => 'ყველაზე დიდი';

  @override
  String get asmaMeaning11 => 'შემოქმედი';

  @override
  String get asmaMeaning12 => 'შეკვეთის შემქმნელი';

  @override
  String get asmaMeaning13 => 'სილამაზის შემქმნელი';

  @override
  String get asmaMeaning14 => 'მიმტევებელი';

  @override
  String get asmaMeaning15 => 'დამორჩილებული';

  @override
  String get asmaMeaning16 => 'ყველას გამცემი';

  @override
  String get asmaMeaning17 => 'Sustainer';

  @override
  String get asmaMeaning18 => 'გამხსნელი';

  @override
  String get asmaMeaning19 => 'ყველას მცოდნე';

  @override
  String get asmaMeaning20 => 'კონსტრიქტორი';

  @override
  String get asmaMeaning21 => 'განმშვიდებელი';

  @override
  String get asmaMeaning22 => 'აბაზერი';

  @override
  String get asmaMeaning23 => 'ეგზალტერი';

  @override
  String get asmaMeaning24 => 'ღირსების მიმნიჭებელი';

  @override
  String get asmaMeaning25 => 'დამამცირებელი';

  @override
  String get asmaMeaning26 => 'ყველას მსმენელი';

  @override
  String get asmaMeaning27 => 'ყველას მხილველი';

  @override
  String get asmaMeaning28 => 'მოსამართლე';

  @override
  String get asmaMeaning29 => 'სამართლიანი';

  @override
  String get asmaMeaning30 => 'დახვეწილი';

  @override
  String get asmaMeaning31 => 'ყველამ იცის';

  @override
  String get asmaMeaning32 => 'წინამძღვარი';

  @override
  String get asmaMeaning33 => 'დიდებული';

  @override
  String get asmaMeaning34 => 'დიდი მიმტევებელი';

  @override
  String get asmaMeaning35 => 'მადლობის ჯილდო';

  @override
  String get asmaMeaning36 => 'უმაღლესი';

  @override
  String get asmaMeaning37 => 'ყველაზე დიდი';

  @override
  String get asmaMeaning38 => 'დამცავი';

  @override
  String get asmaMeaning39 => 'მკვებავი';

  @override
  String get asmaMeaning40 => 'გამომრიცხველი';

  @override
  String get asmaMeaning41 => 'დიდი';

  @override
  String get asmaMeaning42 => 'კეთილშობილი';

  @override
  String get asmaMeaning43 => 'ფხიზლად';

  @override
  String get asmaMeaning44 => 'ლოცვის პასუხი';

  @override
  String get asmaMeaning45 => 'ყველაფრის გაგება';

  @override
  String get asmaMeaning46 => 'სრულყოფილად ბრძენი';

  @override
  String get asmaMeaning47 => 'მოყვარული';

  @override
  String get asmaMeaning48 => 'ყველაზე დიდებული';

  @override
  String get asmaMeaning49 => 'აღმდგარი';

  @override
  String get asmaMeaning50 => 'მოწმე';

  @override
  String get asmaMeaning51 => 'ჭეშმარიტება';

  @override
  String get asmaMeaning52 => 'ყოვლისმომცველი რწმუნებული';

  @override
  String get asmaMeaning53 => 'ყოველი ძალის მფლობელი';

  @override
  String get asmaMeaning54 => 'ძალა';

  @override
  String get asmaMeaning55 => 'მფარველი';

  @override
  String get asmaMeaning56 => 'დიდება';

  @override
  String get asmaMeaning57 => 'შემფასებელი';

  @override
  String get asmaMeaning58 => 'ორიგინატორი';

  @override
  String get asmaMeaning59 => 'აღმდგენი';

  @override
  String get asmaMeaning60 => 'სიცოცხლის მომცემი';

  @override
  String get asmaMeaning61 => 'სიცოცხლის მიმღები';

  @override
  String get asmaMeaning62 => 'მარად ცოცხალი';

  @override
  String get asmaMeaning63 => 'თვითარსებული მხარდამჭერი';

  @override
  String get asmaMeaning64 => 'მპოვნელი';

  @override
  String get asmaMeaning65 => 'დიდებული';

  @override
  String get asmaMeaning66 => 'ერთადერთი';

  @override
  String get asmaMeaning67 => 'The One';

  @override
  String get asmaMeaning68 => 'ერთი, რომელსაც ყველა ეძებს';

  @override
  String get asmaMeaning69 => 'ძლიერი';

  @override
  String get asmaMeaning70 => 'ყოველი ძალაუფლების შემოქმედი';

  @override
  String get asmaMeaning71 => 'ექსპედიტორი';

  @override
  String get asmaMeaning72 => 'დაგვიანებული';

  @override
  String get asmaMeaning73 => 'პირველი';

  @override
  String get asmaMeaning74 => 'უკანასკნელი';

  @override
  String get asmaMeaning75 => 'მანიფესტი';

  @override
  String get asmaMeaning76 => 'დამალული';

  @override
  String get asmaMeaning77 => 'გუბერნატორი';

  @override
  String get asmaMeaning78 => 'უზენაესი';

  @override
  String get asmaMeaning79 => 'სიკეთის შემსრულებელი';

  @override
  String get asmaMeaning80 => 'მონანიების გზამკვლევი';

  @override
  String get asmaMeaning81 => 'შურისმაძიებელი';

  @override
  String get asmaMeaning82 => 'მიმტევებელი';

  @override
  String get asmaMeaning83 => 'კლიმენტი';

  @override
  String get asmaMeaning84 => 'მფლობელი / ყველას სუვერენი';

  @override
  String get asmaMeaning85 => 'დიდებულებისა და სიკეთის მფლობელი';

  @override
  String get asmaMeaning86 => 'Equitable One';

  @override
  String get asmaMeaning87 => 'შემკრები';

  @override
  String get asmaMeaning88 => 'მდიდარი';

  @override
  String get asmaMeaning89 => 'გამდიდებელი';

  @override
  String get asmaMeaning90 => 'ზიანის პრევენცია';

  @override
  String get asmaMeaning91 => 'ზიანის მომტანი';

  @override
  String get asmaMeaning92 => 'ბენეფიტების გამცემი';

  @override
  String get asmaMeaning93 => 'სინათლე';

  @override
  String get asmaMeaning94 => 'მეგზური';

  @override
  String get asmaMeaning95 => 'ორიგინატორი';

  @override
  String get asmaMeaning96 => 'მარადიული';

  @override
  String get asmaMeaning97 => 'მემკვიდრე';

  @override
  String get asmaMeaning98 => 'ყველაზე მართალი მეგზური';

  @override
  String get asmaMeaning99 => 'პაციენტი ერთი';
}
