import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_bs.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_sw.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('bn'),
    Locale('bs'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fa'),
    Locale('fr'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('ms'),
    Locale('nl'),
    Locale('pt'),
    Locale('ru'),
    Locale('sw'),
    Locale('tr'),
    Locale('ur'),
    Locale('zh'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Sirat-i Nur'**
  String get appTitle;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @quran.
  ///
  /// In en, this message translates to:
  /// **'Quran'**
  String get quran;

  /// No description provided for @qibla.
  ///
  /// In en, this message translates to:
  /// **'Qibla'**
  String get qibla;

  /// No description provided for @zikr.
  ///
  /// In en, this message translates to:
  /// **'Zikr'**
  String get zikr;

  /// No description provided for @calendar.
  ///
  /// In en, this message translates to:
  /// **'Calendar'**
  String get calendar;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @nextPrayer.
  ///
  /// In en, this message translates to:
  /// **'Next Prayer'**
  String get nextPrayer;

  /// No description provided for @prayerTimes.
  ///
  /// In en, this message translates to:
  /// **'Prayer Times'**
  String get prayerTimes;

  /// No description provided for @continueReading.
  ///
  /// In en, this message translates to:
  /// **'Continue Reading'**
  String get continueReading;

  /// No description provided for @getLifetimePro.
  ///
  /// In en, this message translates to:
  /// **'Get Lifetime Pro'**
  String get getLifetimePro;

  /// No description provided for @unlockFeatures.
  ///
  /// In en, this message translates to:
  /// **'Unlock Advanced Features'**
  String get unlockFeatures;

  /// No description provided for @prayerCalculation.
  ///
  /// In en, this message translates to:
  /// **'Prayer Calculation'**
  String get prayerCalculation;

  /// No description provided for @method.
  ///
  /// In en, this message translates to:
  /// **'Calculation Method'**
  String get method;

  /// No description provided for @madhab.
  ///
  /// In en, this message translates to:
  /// **'Asr Juristic Method'**
  String get madhab;

  /// No description provided for @surahs.
  ///
  /// In en, this message translates to:
  /// **'Surahs'**
  String get surahs;

  /// No description provided for @ayahs.
  ///
  /// In en, this message translates to:
  /// **'Ayahs'**
  String get ayahs;

  /// No description provided for @fajr.
  ///
  /// In en, this message translates to:
  /// **'Fajr'**
  String get fajr;

  /// No description provided for @sunrise.
  ///
  /// In en, this message translates to:
  /// **'Sunrise'**
  String get sunrise;

  /// No description provided for @dhuhr.
  ///
  /// In en, this message translates to:
  /// **'Dhuhr'**
  String get dhuhr;

  /// No description provided for @asr.
  ///
  /// In en, this message translates to:
  /// **'Asr'**
  String get asr;

  /// No description provided for @maghrib.
  ///
  /// In en, this message translates to:
  /// **'Maghrib'**
  String get maghrib;

  /// No description provided for @isha.
  ///
  /// In en, this message translates to:
  /// **'Isha'**
  String get isha;

  /// No description provided for @dataStorage.
  ///
  /// In en, this message translates to:
  /// **'Data & Storage'**
  String get dataStorage;

  /// No description provided for @clearCache.
  ///
  /// In en, this message translates to:
  /// **'Clear Cache'**
  String get clearCache;

  /// No description provided for @cacheClearedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Cache cleared successfully'**
  String get cacheClearedSuccess;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @selectLanguage.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguage;

  /// No description provided for @searchLanguage.
  ///
  /// In en, this message translates to:
  /// **'Search languages...'**
  String get searchLanguage;

  /// No description provided for @systemDefault.
  ///
  /// In en, this message translates to:
  /// **'System Default'**
  String get systemDefault;

  /// No description provided for @currentLocation.
  ///
  /// In en, this message translates to:
  /// **'Current Location (GPS)'**
  String get currentLocation;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @searchHint.
  ///
  /// In en, this message translates to:
  /// **'Search...'**
  String get searchHint;

  /// No description provided for @noResults.
  ///
  /// In en, this message translates to:
  /// **'No results found'**
  String get noResults;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @surah.
  ///
  /// In en, this message translates to:
  /// **'Surah'**
  String get surah;

  /// No description provided for @juz.
  ///
  /// In en, this message translates to:
  /// **'Juz'**
  String get juz;

  /// No description provided for @page.
  ///
  /// In en, this message translates to:
  /// **'Page'**
  String get page;

  /// No description provided for @reading.
  ///
  /// In en, this message translates to:
  /// **'Reading'**
  String get reading;

  /// No description provided for @recitation.
  ///
  /// In en, this message translates to:
  /// **'Recitation'**
  String get recitation;

  /// No description provided for @translation.
  ///
  /// In en, this message translates to:
  /// **'Translation'**
  String get translation;

  /// No description provided for @tafsir.
  ///
  /// In en, this message translates to:
  /// **'Tafsir'**
  String get tafsir;

  /// No description provided for @bookmarks.
  ///
  /// In en, this message translates to:
  /// **'Bookmarks'**
  String get bookmarks;

  /// No description provided for @addBookmark.
  ///
  /// In en, this message translates to:
  /// **'Add Bookmark'**
  String get addBookmark;

  /// No description provided for @removeBookmark.
  ///
  /// In en, this message translates to:
  /// **'Remove Bookmark'**
  String get removeBookmark;

  /// No description provided for @lastRead.
  ///
  /// In en, this message translates to:
  /// **'Last Read'**
  String get lastRead;

  /// No description provided for @dailyZikr.
  ///
  /// In en, this message translates to:
  /// **'Daily Zikr'**
  String get dailyZikr;

  /// No description provided for @tracker.
  ///
  /// In en, this message translates to:
  /// **'Tracker'**
  String get tracker;

  /// No description provided for @library.
  ///
  /// In en, this message translates to:
  /// **'Library'**
  String get library;

  /// No description provided for @chatbot.
  ///
  /// In en, this message translates to:
  /// **'Assistant'**
  String get chatbot;

  /// No description provided for @liveTv.
  ///
  /// In en, this message translates to:
  /// **'Live TV'**
  String get liveTv;

  /// No description provided for @places.
  ///
  /// In en, this message translates to:
  /// **'Places'**
  String get places;

  /// No description provided for @downloads.
  ///
  /// In en, this message translates to:
  /// **'Downloads'**
  String get downloads;

  /// No description provided for @premium.
  ///
  /// In en, this message translates to:
  /// **'Premium'**
  String get premium;

  /// No description provided for @onboarding.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get onboarding;

  /// No description provided for @analytics.
  ///
  /// In en, this message translates to:
  /// **'Analytics'**
  String get analytics;

  /// No description provided for @offlineManager.
  ///
  /// In en, this message translates to:
  /// **'Offline Manager'**
  String get offlineManager;

  /// No description provided for @restore.
  ///
  /// In en, this message translates to:
  /// **'Restore Purchases'**
  String get restore;

  /// No description provided for @getLifetimeAccess.
  ///
  /// In en, this message translates to:
  /// **'Get Lifetime Access'**
  String get getLifetimeAccess;

  /// No description provided for @premiumRequired.
  ///
  /// In en, this message translates to:
  /// **'Premium Required'**
  String get premiumRequired;

  /// No description provided for @upgradeNow.
  ///
  /// In en, this message translates to:
  /// **'Upgrade Now'**
  String get upgradeNow;

  /// No description provided for @downloadNow.
  ///
  /// In en, this message translates to:
  /// **'Download Now'**
  String get downloadNow;

  /// No description provided for @downloading.
  ///
  /// In en, this message translates to:
  /// **'Downloading...'**
  String get downloading;

  /// No description provided for @downloadComplete.
  ///
  /// In en, this message translates to:
  /// **'Download complete!'**
  String get downloadComplete;

  /// No description provided for @readyForOffline.
  ///
  /// In en, this message translates to:
  /// **'Ready for Offline Use'**
  String get readyForOffline;

  /// No description provided for @installedOnDevice.
  ///
  /// In en, this message translates to:
  /// **'Installed on device'**
  String get installedOnDevice;

  /// No description provided for @notDownloaded.
  ///
  /// In en, this message translates to:
  /// **'Not downloaded yet'**
  String get notDownloaded;

  /// No description provided for @deletePack.
  ///
  /// In en, this message translates to:
  /// **'Delete Pack?'**
  String get deletePack;

  /// No description provided for @deletePackDesc.
  ///
  /// In en, this message translates to:
  /// **'This will remove the offline pack. Internet will be required for playback.'**
  String get deletePackDesc;

  /// No description provided for @neuralAssistant.
  ///
  /// In en, this message translates to:
  /// **'Neural Assistant'**
  String get neuralAssistant;

  /// No description provided for @askQuestion.
  ///
  /// In en, this message translates to:
  /// **'Ask a question...'**
  String get askQuestion;

  /// No description provided for @freeQueries.
  ///
  /// In en, this message translates to:
  /// **'Free queries remaining'**
  String get freeQueries;

  /// No description provided for @unlimitedQueries.
  ///
  /// In en, this message translates to:
  /// **'Unlimited queries with Premium'**
  String get unlimitedQueries;

  /// No description provided for @asmaUlHusna.
  ///
  /// In en, this message translates to:
  /// **'Asma-ul-Husna'**
  String get asmaUlHusna;

  /// No description provided for @namesOfAllah.
  ///
  /// In en, this message translates to:
  /// **'99 Names of Allah'**
  String get namesOfAllah;

  /// No description provided for @islamicEducation.
  ///
  /// In en, this message translates to:
  /// **'Islamic Education'**
  String get islamicEducation;

  /// No description provided for @hadithCollections.
  ///
  /// In en, this message translates to:
  /// **'Hadith Collections'**
  String get hadithCollections;

  /// No description provided for @searchHadith.
  ///
  /// In en, this message translates to:
  /// **'Search Hadith'**
  String get searchHadith;

  /// No description provided for @duas.
  ///
  /// In en, this message translates to:
  /// **'Duas'**
  String get duas;

  /// No description provided for @dailyDuas.
  ///
  /// In en, this message translates to:
  /// **'Daily Duas'**
  String get dailyDuas;

  /// No description provided for @makkahLive.
  ///
  /// In en, this message translates to:
  /// **'Makkah Live'**
  String get makkahLive;

  /// No description provided for @madinahLive.
  ///
  /// In en, this message translates to:
  /// **'Madinah Live'**
  String get madinahLive;

  /// No description provided for @qiblaDirection.
  ///
  /// In en, this message translates to:
  /// **'Qibla Direction'**
  String get qiblaDirection;

  /// No description provided for @calibrate.
  ///
  /// In en, this message translates to:
  /// **'Calibrate'**
  String get calibrate;

  /// No description provided for @prayerTracker.
  ///
  /// In en, this message translates to:
  /// **'Prayer Tracker'**
  String get prayerTracker;

  /// No description provided for @quranTracker.
  ///
  /// In en, this message translates to:
  /// **'Quran Reading'**
  String get quranTracker;

  /// No description provided for @fastingTracker.
  ///
  /// In en, this message translates to:
  /// **'Fasting'**
  String get fastingTracker;

  /// No description provided for @zakatCalculator.
  ///
  /// In en, this message translates to:
  /// **'Zakat Calculator'**
  String get zakatCalculator;

  /// No description provided for @selectCity.
  ///
  /// In en, this message translates to:
  /// **'Select City'**
  String get selectCity;

  /// No description provided for @detectLocation.
  ///
  /// In en, this message translates to:
  /// **'Detect Location'**
  String get detectLocation;

  /// No description provided for @manualSelection.
  ///
  /// In en, this message translates to:
  /// **'Manual Selection'**
  String get manualSelection;

  /// No description provided for @diagnostics.
  ///
  /// In en, this message translates to:
  /// **'Diagnostics'**
  String get diagnostics;

  /// No description provided for @appVersion.
  ///
  /// In en, this message translates to:
  /// **'App Version'**
  String get appVersion;

  /// No description provided for @audioVoice.
  ///
  /// In en, this message translates to:
  /// **'Audio Voice'**
  String get audioVoice;

  /// No description provided for @qiblaOffset.
  ///
  /// In en, this message translates to:
  /// **'Qibla Offset'**
  String get qiblaOffset;

  /// No description provided for @smoothing.
  ///
  /// In en, this message translates to:
  /// **'Smoothing'**
  String get smoothing;

  /// No description provided for @customAngles.
  ///
  /// In en, this message translates to:
  /// **'Custom Angles'**
  String get customAngles;

  /// No description provided for @fajrAngle.
  ///
  /// In en, this message translates to:
  /// **'Fajr Angle'**
  String get fajrAngle;

  /// No description provided for @ishaAngle.
  ///
  /// In en, this message translates to:
  /// **'Isha Angle'**
  String get ishaAngle;

  /// No description provided for @appearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearance;

  /// No description provided for @darkMode.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get darkMode;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @rateApp.
  ///
  /// In en, this message translates to:
  /// **'Rate App'**
  String get rateApp;

  /// No description provided for @shareApp.
  ///
  /// In en, this message translates to:
  /// **'Share App'**
  String get shareApp;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @termsOfService.
  ///
  /// In en, this message translates to:
  /// **'Terms of Service'**
  String get termsOfService;

  /// No description provided for @hijriCalendar.
  ///
  /// In en, this message translates to:
  /// **'Hijri Calendar'**
  String get hijriCalendar;

  /// No description provided for @todayIbadah.
  ///
  /// In en, this message translates to:
  /// **'Today\'s Ibadah'**
  String get todayIbadah;

  /// No description provided for @dailyVerse.
  ///
  /// In en, this message translates to:
  /// **'Daily Verse'**
  String get dailyVerse;

  /// No description provided for @quickAccess.
  ///
  /// In en, this message translates to:
  /// **'Quick Access'**
  String get quickAccess;

  /// No description provided for @welcomeTitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Sirat-i Nur'**
  String get welcomeTitle;

  /// No description provided for @welcomeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Your complete Islamic companion'**
  String get welcomeSubtitle;

  /// No description provided for @selectLocation.
  ///
  /// In en, this message translates to:
  /// **'Select Your Location'**
  String get selectLocation;

  /// No description provided for @selectLanguageOnboard.
  ///
  /// In en, this message translates to:
  /// **'Select Your Language'**
  String get selectLanguageOnboard;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStarted;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @mosqueNearby.
  ///
  /// In en, this message translates to:
  /// **'Nearby Mosques'**
  String get mosqueNearby;

  /// No description provided for @halalPlaces.
  ///
  /// In en, this message translates to:
  /// **'Halal Places'**
  String get halalPlaces;

  /// No description provided for @quranAudioPack.
  ///
  /// In en, this message translates to:
  /// **'Quran Audio Pack'**
  String get quranAudioPack;

  /// No description provided for @offlineData.
  ///
  /// In en, this message translates to:
  /// **'Offline Data'**
  String get offlineData;

  /// No description provided for @offlineDataDesc.
  ///
  /// In en, this message translates to:
  /// **'Download recitations for seamless offline access.'**
  String get offlineDataDesc;

  /// No description provided for @downloadPremiumDesc.
  ///
  /// In en, this message translates to:
  /// **'Offline Downloads are available exclusively for Premium members.'**
  String get downloadPremiumDesc;

  /// No description provided for @neuralAssistantPlus.
  ///
  /// In en, this message translates to:
  /// **'Neural Assistant Plus'**
  String get neuralAssistantPlus;

  /// No description provided for @neuralAssistantPlusDesc.
  ///
  /// In en, this message translates to:
  /// **'In-depth religious Q&A and spiritual guidance.'**
  String get neuralAssistantPlusDesc;

  /// No description provided for @unlimitedOffline.
  ///
  /// In en, this message translates to:
  /// **'Unlimited Offline'**
  String get unlimitedOffline;

  /// No description provided for @unlimitedOfflineDesc.
  ///
  /// In en, this message translates to:
  /// **'Download all recitations and tafsirs.'**
  String get unlimitedOfflineDesc;

  /// No description provided for @exclusiveDesigns.
  ///
  /// In en, this message translates to:
  /// **'Exclusive Designs'**
  String get exclusiveDesigns;

  /// No description provided for @exclusiveDesignsDesc.
  ///
  /// In en, this message translates to:
  /// **'Unlock premium themes and calligraphy fonts.'**
  String get exclusiveDesignsDesc;

  /// No description provided for @siratNurPremium.
  ///
  /// In en, this message translates to:
  /// **'Sirat-i Nur Premium'**
  String get siratNurPremium;

  /// No description provided for @premiumSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Unlock all advanced features designed to guide you on your spiritual journey.'**
  String get premiumSubtitle;

  /// No description provided for @errorOccurred.
  ///
  /// In en, this message translates to:
  /// **'An error occurred'**
  String get errorOccurred;

  /// No description provided for @goHome.
  ///
  /// In en, this message translates to:
  /// **'Go Home'**
  String get goHome;

  /// No description provided for @noInternetConnection.
  ///
  /// In en, this message translates to:
  /// **'No internet connection'**
  String get noInternetConnection;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'bn',
    'bs',
    'de',
    'en',
    'es',
    'fa',
    'fr',
    'id',
    'it',
    'ja',
    'ko',
    'ms',
    'nl',
    'pt',
    'ru',
    'sw',
    'tr',
    'ur',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'bn':
      return AppLocalizationsBn();
    case 'bs':
      return AppLocalizationsBs();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fa':
      return AppLocalizationsFa();
    case 'fr':
      return AppLocalizationsFr();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'ms':
      return AppLocalizationsMs();
    case 'nl':
      return AppLocalizationsNl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'sw':
      return AppLocalizationsSw();
    case 'tr':
      return AppLocalizationsTr();
    case 'ur':
      return AppLocalizationsUr();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
