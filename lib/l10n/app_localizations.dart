import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_aa.dart';
import 'app_localizations_ab.dart';
import 'app_localizations_ae.dart';
import 'app_localizations_af.dart';
import 'app_localizations_ak.dart';
import 'app_localizations_am.dart';
import 'app_localizations_an.dart';
import 'app_localizations_ar.dart';
import 'app_localizations_as.dart';
import 'app_localizations_av.dart';
import 'app_localizations_ay.dart';
import 'app_localizations_az.dart';
import 'app_localizations_ba.dart';
import 'app_localizations_be.dart';
import 'app_localizations_bg.dart';
import 'app_localizations_bh.dart';
import 'app_localizations_bho.dart';
import 'app_localizations_bi.dart';
import 'app_localizations_bm.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_bo.dart';
import 'app_localizations_br.dart';
import 'app_localizations_bs.dart';
import 'app_localizations_ca.dart';
import 'app_localizations_ce.dart';
import 'app_localizations_ceb.dart';
import 'app_localizations_ch.dart';
import 'app_localizations_co.dart';
import 'app_localizations_cr.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_cu.dart';
import 'app_localizations_cv.dart';
import 'app_localizations_cy.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_dv.dart';
import 'app_localizations_dz.dart';
import 'app_localizations_ee.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_eo.dart';
import 'app_localizations_es.dart';
import 'app_localizations_et.dart';
import 'app_localizations_eu.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_ff.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fj.dart';
import 'app_localizations_fo.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_fy.dart';
import 'app_localizations_ga.dart';
import 'app_localizations_gd.dart';
import 'app_localizations_gl.dart';
import 'app_localizations_gn.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_gv.dart';
import 'app_localizations_ha.dart';
import 'app_localizations_haw.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hmn.dart';
import 'app_localizations_ho.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_ht.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_hy.dart';
import 'app_localizations_hz.dart';
import 'app_localizations_ia.dart';
import 'app_localizations_id.dart';
import 'app_localizations_ie.dart';
import 'app_localizations_ig.dart';
import 'app_localizations_ii.dart';
import 'app_localizations_ik.dart';
import 'app_localizations_ilo.dart';
import 'app_localizations_io.dart';
import 'app_localizations_is.dart';
import 'app_localizations_it.dart';
import 'app_localizations_iu.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_jv.dart';
import 'app_localizations_ka.dart';
import 'app_localizations_kg.dart';
import 'app_localizations_ki.dart';
import 'app_localizations_kj.dart';
import 'app_localizations_kk.dart';
import 'app_localizations_kl.dart';
import 'app_localizations_km.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_kr.dart';
import 'app_localizations_kri.dart';
import 'app_localizations_ks.dart';
import 'app_localizations_ku.dart';
import 'app_localizations_kv.dart';
import 'app_localizations_kw.dart';
import 'app_localizations_ky.dart';
import 'app_localizations_la.dart';
import 'app_localizations_lb.dart';
import 'app_localizations_lg.dart';
import 'app_localizations_li.dart';
import 'app_localizations_ln.dart';
import 'app_localizations_lo.dart';
import 'app_localizations_lt.dart';
import 'app_localizations_lu.dart';
import 'app_localizations_lus.dart';
import 'app_localizations_lv.dart';
import 'app_localizations_mai.dart';
import 'app_localizations_mg.dart';
import 'app_localizations_mh.dart';
import 'app_localizations_mi.dart';
import 'app_localizations_mk.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mn.dart';
import 'app_localizations_mni.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_mt.dart';
import 'app_localizations_my.dart';
import 'app_localizations_na.dart';
import 'app_localizations_nb.dart';
import 'app_localizations_nd.dart';
import 'app_localizations_ne.dart';
import 'app_localizations_ng.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_nn.dart';
import 'app_localizations_no.dart';
import 'app_localizations_nr.dart';
import 'app_localizations_nso.dart';
import 'app_localizations_nv.dart';
import 'app_localizations_ny.dart';
import 'app_localizations_oc.dart';
import 'app_localizations_oj.dart';
import 'app_localizations_om.dart';
import 'app_localizations_or.dart';
import 'app_localizations_os.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_pi.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_ps.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_qu.dart';
import 'app_localizations_rm.dart';
import 'app_localizations_rn.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_rw.dart';
import 'app_localizations_sa.dart';
import 'app_localizations_sc.dart';
import 'app_localizations_sd.dart';
import 'app_localizations_se.dart';
import 'app_localizations_sg.dart';
import 'app_localizations_si.dart';
import 'app_localizations_sk.dart';
import 'app_localizations_sl.dart';
import 'app_localizations_sm.dart';
import 'app_localizations_sn.dart';
import 'app_localizations_so.dart';
import 'app_localizations_sq.dart';
import 'app_localizations_sr.dart';
import 'app_localizations_ss.dart';
import 'app_localizations_st.dart';
import 'app_localizations_su.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_sw.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_tg.dart';
import 'app_localizations_th.dart';
import 'app_localizations_ti.dart';
import 'app_localizations_tk.dart';
import 'app_localizations_tl.dart';
import 'app_localizations_tn.dart';
import 'app_localizations_to.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_ts.dart';
import 'app_localizations_tt.dart';
import 'app_localizations_tw.dart';
import 'app_localizations_ty.dart';
import 'app_localizations_ug.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_uz.dart';
import 'app_localizations_ve.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_vo.dart';
import 'app_localizations_wa.dart';
import 'app_localizations_wo.dart';
import 'app_localizations_xh.dart';
import 'app_localizations_yi.dart';
import 'app_localizations_yo.dart';
import 'app_localizations_za.dart';
import 'app_localizations_zh.dart';
import 'app_localizations_zu.dart';

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
    Locale('aa'),
    Locale('ab'),
    Locale('ae'),
    Locale('af'),
    Locale('ak'),
    Locale('am'),
    Locale('an'),
    Locale('ar'),
    Locale('as'),
    Locale('av'),
    Locale('ay'),
    Locale('az'),
    Locale('ba'),
    Locale('be'),
    Locale('bg'),
    Locale('bh'),
    Locale('bho'),
    Locale('bi'),
    Locale('bm'),
    Locale('bn'),
    Locale('bo'),
    Locale('br'),
    Locale('bs'),
    Locale('ca'),
    Locale('ce'),
    Locale('ceb'),
    Locale('ch'),
    Locale('co'),
    Locale('cr'),
    Locale('cs'),
    Locale('cu'),
    Locale('cv'),
    Locale('cy'),
    Locale('da'),
    Locale('de'),
    Locale('dv'),
    Locale('dz'),
    Locale('ee'),
    Locale('el'),
    Locale('en'),
    Locale('eo'),
    Locale('es'),
    Locale('et'),
    Locale('eu'),
    Locale('fa'),
    Locale('ff'),
    Locale('fi'),
    Locale('fj'),
    Locale('fo'),
    Locale('fr'),
    Locale('fy'),
    Locale('ga'),
    Locale('gd'),
    Locale('gl'),
    Locale('gn'),
    Locale('gu'),
    Locale('gv'),
    Locale('ha'),
    Locale('haw'),
    Locale('he'),
    Locale('hi'),
    Locale('hmn'),
    Locale('ho'),
    Locale('hr'),
    Locale('ht'),
    Locale('hu'),
    Locale('hy'),
    Locale('hz'),
    Locale('ia'),
    Locale('id'),
    Locale('ie'),
    Locale('ig'),
    Locale('ii'),
    Locale('ik'),
    Locale('ilo'),
    Locale('io'),
    Locale('is'),
    Locale('it'),
    Locale('iu'),
    Locale('ja'),
    Locale('jv'),
    Locale('ka'),
    Locale('kg'),
    Locale('ki'),
    Locale('kj'),
    Locale('kk'),
    Locale('kl'),
    Locale('km'),
    Locale('kn'),
    Locale('ko'),
    Locale('kr'),
    Locale('kri'),
    Locale('ks'),
    Locale('ku'),
    Locale('kv'),
    Locale('kw'),
    Locale('ky'),
    Locale('la'),
    Locale('lb'),
    Locale('lg'),
    Locale('li'),
    Locale('ln'),
    Locale('lo'),
    Locale('lt'),
    Locale('lu'),
    Locale('lus'),
    Locale('lv'),
    Locale('mai'),
    Locale('mg'),
    Locale('mh'),
    Locale('mi'),
    Locale('mk'),
    Locale('ml'),
    Locale('mn'),
    Locale('mni'),
    Locale('mr'),
    Locale('ms'),
    Locale('mt'),
    Locale('my'),
    Locale('na'),
    Locale('nb'),
    Locale('nd'),
    Locale('ne'),
    Locale('ng'),
    Locale('nl'),
    Locale('nn'),
    Locale('no'),
    Locale('nr'),
    Locale('nso'),
    Locale('nv'),
    Locale('ny'),
    Locale('oc'),
    Locale('oj'),
    Locale('om'),
    Locale('or'),
    Locale('os'),
    Locale('pa'),
    Locale('pi'),
    Locale('pl'),
    Locale('ps'),
    Locale('pt'),
    Locale('qu'),
    Locale('rm'),
    Locale('rn'),
    Locale('ro'),
    Locale('ru'),
    Locale('rw'),
    Locale('sa'),
    Locale('sc'),
    Locale('sd'),
    Locale('se'),
    Locale('sg'),
    Locale('si'),
    Locale('sk'),
    Locale('sl'),
    Locale('sm'),
    Locale('sn'),
    Locale('so'),
    Locale('sq'),
    Locale('sr'),
    Locale('ss'),
    Locale('st'),
    Locale('su'),
    Locale('sv'),
    Locale('sw'),
    Locale('ta'),
    Locale('te'),
    Locale('tg'),
    Locale('th'),
    Locale('ti'),
    Locale('tk'),
    Locale('tl'),
    Locale('tn'),
    Locale('to'),
    Locale('tr'),
    Locale('ts'),
    Locale('tt'),
    Locale('tw'),
    Locale('ty'),
    Locale('ug'),
    Locale('uk'),
    Locale('ur'),
    Locale('uz'),
    Locale('ve'),
    Locale('vi'),
    Locale('vo'),
    Locale('wa'),
    Locale('wo'),
    Locale('xh'),
    Locale('yi'),
    Locale('yo'),
    Locale('za'),
    Locale('zh'),
    Locale('zh', 'CN'),
    Locale('zh', 'TW'),
    Locale('zu'),
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

  /// No description provided for @unlockTajweed.
  ///
  /// In en, this message translates to:
  /// **'Unlock Tajweed & Advanced Features'**
  String get unlockTajweed;

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
  /// **'Search 180+ languages...'**
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

  /// No description provided for @locationServiceDisabled.
  ///
  /// In en, this message translates to:
  /// **'Location service is disabled.'**
  String get locationServiceDisabled;

  /// No description provided for @locationPermissionDenied.
  ///
  /// In en, this message translates to:
  /// **'Location permission denied.'**
  String get locationPermissionDenied;

  /// No description provided for @citiesCount.
  ///
  /// In en, this message translates to:
  /// **'{count} cities'**
  String citiesCount(String count);

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

  /// No description provided for @morningZikr.
  ///
  /// In en, this message translates to:
  /// **'Morning Zikr'**
  String get morningZikr;

  /// No description provided for @eveningZikr.
  ///
  /// In en, this message translates to:
  /// **'Evening Zikr'**
  String get eveningZikr;

  /// No description provided for @tasbih.
  ///
  /// In en, this message translates to:
  /// **'Tasbih'**
  String get tasbih;

  /// No description provided for @ahkab.
  ///
  /// In en, this message translates to:
  /// **'Ahkam'**
  String get ahkab;

  /// No description provided for @masaail.
  ///
  /// In en, this message translates to:
  /// **'Masa\'il'**
  String get masaail;

  /// No description provided for @hadith.
  ///
  /// In en, this message translates to:
  /// **'Hadith'**
  String get hadith;

  /// No description provided for @hadithCollection.
  ///
  /// In en, this message translates to:
  /// **'Hadith Collection'**
  String get hadithCollection;

  /// No description provided for @hadithBooks.
  ///
  /// In en, this message translates to:
  /// **'Hadith Books'**
  String get hadithBooks;

  /// No description provided for @searchHadith.
  ///
  /// In en, this message translates to:
  /// **'Search Hadith'**
  String get searchHadith;

  /// No description provided for @asmaulHusna.
  ///
  /// In en, this message translates to:
  /// **'Asma-ul-Husna'**
  String get asmaulHusna;

  /// No description provided for @namesOfAllah.
  ///
  /// In en, this message translates to:
  /// **'Names of Allah'**
  String get namesOfAllah;

  /// No description provided for @liveTv.
  ///
  /// In en, this message translates to:
  /// **'Live TV'**
  String get liveTv;

  /// No description provided for @watchLive.
  ///
  /// In en, this message translates to:
  /// **'Watch Live'**
  String get watchLive;

  /// No description provided for @streamError.
  ///
  /// In en, this message translates to:
  /// **'Stream error'**
  String get streamError;

  /// No description provided for @reload.
  ///
  /// In en, this message translates to:
  /// **'Reload'**
  String get reload;

  /// No description provided for @openInYoutube.
  ///
  /// In en, this message translates to:
  /// **'Open in YouTube'**
  String get openInYoutube;

  /// No description provided for @ibadahTracker.
  ///
  /// In en, this message translates to:
  /// **'Ibadah Tracker'**
  String get ibadahTracker;

  /// No description provided for @fasting.
  ///
  /// In en, this message translates to:
  /// **'Fasting'**
  String get fasting;

  /// No description provided for @quranReading.
  ///
  /// In en, this message translates to:
  /// **'Quran Reading'**
  String get quranReading;

  /// No description provided for @prayers.
  ///
  /// In en, this message translates to:
  /// **'Prayers'**
  String get prayers;

  /// No description provided for @dhikrCount.
  ///
  /// In en, this message translates to:
  /// **'Dhikr Count'**
  String get dhikrCount;

  /// No description provided for @weeklyProgress.
  ///
  /// In en, this message translates to:
  /// **'Weekly Progress'**
  String get weeklyProgress;

  /// No description provided for @monthlyProgress.
  ///
  /// In en, this message translates to:
  /// **'Monthly Progress'**
  String get monthlyProgress;

  /// No description provided for @statistics.
  ///
  /// In en, this message translates to:
  /// **'Statistics'**
  String get statistics;

  /// No description provided for @hijriCalendar.
  ///
  /// In en, this message translates to:
  /// **'Hijri Calendar'**
  String get hijriCalendar;

  /// No description provided for @gregorianCalendar.
  ///
  /// In en, this message translates to:
  /// **'Gregorian Calendar'**
  String get gregorianCalendar;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @tomorrow.
  ///
  /// In en, this message translates to:
  /// **'Tomorrow'**
  String get tomorrow;

  /// No description provided for @yesterday.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday;

  /// No description provided for @specialDays.
  ///
  /// In en, this message translates to:
  /// **'Special Days'**
  String get specialDays;

  /// No description provided for @ramadan.
  ///
  /// In en, this message translates to:
  /// **'Ramadan'**
  String get ramadan;

  /// No description provided for @eidAlFitr.
  ///
  /// In en, this message translates to:
  /// **'Eid Al-Fitr'**
  String get eidAlFitr;

  /// No description provided for @eidAlAdha.
  ///
  /// In en, this message translates to:
  /// **'Eid Al-Adha'**
  String get eidAlAdha;

  /// No description provided for @laylatAlQadr.
  ///
  /// In en, this message translates to:
  /// **'Laylat Al-Qadr'**
  String get laylatAlQadr;

  /// No description provided for @qiblaDirection.
  ///
  /// In en, this message translates to:
  /// **'Qibla Direction'**
  String get qiblaDirection;

  /// No description provided for @compass.
  ///
  /// In en, this message translates to:
  /// **'Compass'**
  String get compass;

  /// No description provided for @degrees.
  ///
  /// In en, this message translates to:
  /// **'degrees'**
  String get degrees;

  /// No description provided for @north.
  ///
  /// In en, this message translates to:
  /// **'North'**
  String get north;

  /// No description provided for @qiblaFound.
  ///
  /// In en, this message translates to:
  /// **'Qibla found!'**
  String get qiblaFound;

  /// No description provided for @turnDevice.
  ///
  /// In en, this message translates to:
  /// **'Turn your device to face the Qibla'**
  String get turnDevice;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @prayerNotifications.
  ///
  /// In en, this message translates to:
  /// **'Prayer Notifications'**
  String get prayerNotifications;

  /// No description provided for @enableNotifications.
  ///
  /// In en, this message translates to:
  /// **'Enable Notifications'**
  String get enableNotifications;

  /// No description provided for @notificationTime.
  ///
  /// In en, this message translates to:
  /// **'Notification Time'**
  String get notificationTime;

  /// No description provided for @beforePrayer.
  ///
  /// In en, this message translates to:
  /// **'minutes before prayer'**
  String get beforePrayer;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @lightMode.
  ///
  /// In en, this message translates to:
  /// **'Light Mode'**
  String get lightMode;

  /// No description provided for @darkMode.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get darkMode;

  /// No description provided for @systemTheme.
  ///
  /// In en, this message translates to:
  /// **'System Theme'**
  String get systemTheme;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @version.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get version;

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

  /// No description provided for @contactUs.
  ///
  /// In en, this message translates to:
  /// **'Contact Us'**
  String get contactUs;

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

  /// No description provided for @downloadManager.
  ///
  /// In en, this message translates to:
  /// **'Download Manager'**
  String get downloadManager;

  /// No description provided for @downloads.
  ///
  /// In en, this message translates to:
  /// **'Downloads'**
  String get downloads;

  /// No description provided for @downloading.
  ///
  /// In en, this message translates to:
  /// **'Downloading...'**
  String get downloading;

  /// No description provided for @downloadComplete.
  ///
  /// In en, this message translates to:
  /// **'Download Complete'**
  String get downloadComplete;

  /// No description provided for @downloadFailed.
  ///
  /// In en, this message translates to:
  /// **'Download Failed'**
  String get downloadFailed;

  /// No description provided for @offlineMode.
  ///
  /// In en, this message translates to:
  /// **'Offline Mode'**
  String get offlineMode;

  /// No description provided for @noInternet.
  ///
  /// In en, this message translates to:
  /// **'No Internet Connection'**
  String get noInternet;

  /// No description provided for @checkConnection.
  ///
  /// In en, this message translates to:
  /// **'Please check your connection'**
  String get checkConnection;

  /// No description provided for @premium.
  ///
  /// In en, this message translates to:
  /// **'Premium'**
  String get premium;

  /// No description provided for @upgradeToPro.
  ///
  /// In en, this message translates to:
  /// **'Upgrade to Pro'**
  String get upgradeToPro;

  /// No description provided for @proFeatures.
  ///
  /// In en, this message translates to:
  /// **'Pro Features'**
  String get proFeatures;

  /// No description provided for @removeAds.
  ///
  /// In en, this message translates to:
  /// **'Remove Ads'**
  String get removeAds;

  /// No description provided for @unlockAll.
  ///
  /// In en, this message translates to:
  /// **'Unlock All Content'**
  String get unlockAll;

  /// No description provided for @exclusiveContent.
  ///
  /// In en, this message translates to:
  /// **'Exclusive Content'**
  String get exclusiveContent;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcome;

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

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @onboarding1Title.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Sirat-ı Nur'**
  String get onboarding1Title;

  /// No description provided for @onboarding1Desc.
  ///
  /// In en, this message translates to:
  /// **'Your complete Islamic companion app for prayer times, Quran, and more'**
  String get onboarding1Desc;

  /// No description provided for @onboarding2Title.
  ///
  /// In en, this message translates to:
  /// **'Prayer Times'**
  String get onboarding2Title;

  /// No description provided for @onboarding2Desc.
  ///
  /// In en, this message translates to:
  /// **'Accurate prayer times based on your location'**
  String get onboarding2Desc;

  /// No description provided for @onboarding3Title.
  ///
  /// In en, this message translates to:
  /// **'Quran & More'**
  String get onboarding3Title;

  /// No description provided for @onboarding3Desc.
  ///
  /// In en, this message translates to:
  /// **'Read Quran, track your reading, and explore Islamic content'**
  String get onboarding3Desc;

  /// No description provided for @dhikrLibrary.
  ///
  /// In en, this message translates to:
  /// **'Dhikr Library'**
  String get dhikrLibrary;

  /// No description provided for @resetCounter.
  ///
  /// In en, this message translates to:
  /// **'Reset Counter'**
  String get resetCounter;

  /// No description provided for @changeTarget.
  ///
  /// In en, this message translates to:
  /// **'Change Target'**
  String get changeTarget;

  /// No description provided for @newTarget.
  ///
  /// In en, this message translates to:
  /// **'New Target'**
  String get newTarget;

  /// No description provided for @targetCount.
  ///
  /// In en, this message translates to:
  /// **'Target: {target}'**
  String targetCount(Object target);

  /// No description provided for @tapToCount.
  ///
  /// In en, this message translates to:
  /// **'Tap to count'**
  String get tapToCount;

  /// No description provided for @dailyChecklist.
  ///
  /// In en, this message translates to:
  /// **'Daily Checklist'**
  String get dailyChecklist;

  /// No description provided for @qazaDebt.
  ///
  /// In en, this message translates to:
  /// **'Qaza (Debt)'**
  String get qazaDebt;

  /// No description provided for @resetQazaData.
  ///
  /// In en, this message translates to:
  /// **'Reset Qaza Data'**
  String get resetQazaData;

  /// No description provided for @resetQazaDebtQuestion.
  ///
  /// In en, this message translates to:
  /// **'Reset Qaza Debt?'**
  String get resetQazaDebtQuestion;

  /// No description provided for @rawatib.
  ///
  /// In en, this message translates to:
  /// **'Rawatib'**
  String get rawatib;

  /// No description provided for @tahajjud.
  ///
  /// In en, this message translates to:
  /// **'Tahajjud'**
  String get tahajjud;

  /// No description provided for @dailyProgress.
  ///
  /// In en, this message translates to:
  /// **'Daily Progress'**
  String get dailyProgress;

  /// No description provided for @mandatoryPrayers.
  ///
  /// In en, this message translates to:
  /// **'Mandatory Prayers'**
  String get mandatoryPrayers;

  /// No description provided for @sunnahAndOthers.
  ///
  /// In en, this message translates to:
  /// **'Sunnah & Others'**
  String get sunnahAndOthers;

  /// No description provided for @spiritualGrowth.
  ///
  /// In en, this message translates to:
  /// **'Spiritual Growth'**
  String get spiritualGrowth;

  /// No description provided for @mandatoryDuty.
  ///
  /// In en, this message translates to:
  /// **'Mandatory Duty'**
  String get mandatoryDuty;

  /// No description provided for @totalPrayers.
  ///
  /// In en, this message translates to:
  /// **'Total Prayers'**
  String get totalPrayers;

  /// No description provided for @prayerDebt.
  ///
  /// In en, this message translates to:
  /// **'Prayer Debt'**
  String get prayerDebt;

  /// No description provided for @fastingDebt.
  ///
  /// In en, this message translates to:
  /// **'Fasting Debt'**
  String get fastingDebt;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// No description provided for @days.
  ///
  /// In en, this message translates to:
  /// **'Days'**
  String get days;

  /// No description provided for @premiumIntegrity.
  ///
  /// In en, this message translates to:
  /// **'Premium Integrity'**
  String get premiumIntegrity;

  /// No description provided for @recheckPremium.
  ///
  /// In en, this message translates to:
  /// **'Recheck Premium Status'**
  String get recheckPremium;

  /// No description provided for @syncStore.
  ///
  /// In en, this message translates to:
  /// **'Sync with the store to confirm your entitlement.'**
  String get syncStore;

  /// No description provided for @checkingPremium.
  ///
  /// In en, this message translates to:
  /// **'Checking premium status...'**
  String get checkingPremium;

  /// No description provided for @premiumVerified.
  ///
  /// In en, this message translates to:
  /// **'Premium verified.'**
  String get premiumVerified;

  /// No description provided for @premiumNotFound.
  ///
  /// In en, this message translates to:
  /// **'Premium not found.'**
  String get premiumNotFound;

  /// No description provided for @premiumRefreshError.
  ///
  /// In en, this message translates to:
  /// **'Could not refresh premium status: {error}'**
  String premiumRefreshError(Object error);

  /// No description provided for @offlineDownloadManager.
  ///
  /// In en, this message translates to:
  /// **'Offline Download Manager'**
  String get offlineDownloadManager;

  /// No description provided for @manageDatasets.
  ///
  /// In en, this message translates to:
  /// **'Manage massive offline audio & dataset packs.'**
  String get manageDatasets;

  /// No description provided for @freeStorage.
  ///
  /// In en, this message translates to:
  /// **'Free up internal device storage.'**
  String get freeStorage;

  /// No description provided for @quranIntegrity.
  ///
  /// In en, this message translates to:
  /// **'Quran Integrity'**
  String get quranIntegrity;

  /// No description provided for @checkQuranDb.
  ///
  /// In en, this message translates to:
  /// **'Check Quran Database'**
  String get checkQuranDb;

  /// No description provided for @verifyQuranContent.
  ///
  /// In en, this message translates to:
  /// **'Verify 114 surahs and 6236 ayahs.'**
  String get verifyQuranContent;

  /// No description provided for @checkingQuranDb.
  ///
  /// In en, this message translates to:
  /// **'Checking Quran database...'**
  String get checkingQuranDb;

  /// No description provided for @okLabel.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get okLabel;

  /// No description provided for @incomplete.
  ///
  /// In en, this message translates to:
  /// **'Incomplete'**
  String get incomplete;

  /// No description provided for @notSeeded.
  ///
  /// In en, this message translates to:
  /// **'Not seeded'**
  String get notSeeded;

  /// No description provided for @quranDbStatus.
  ///
  /// In en, this message translates to:
  /// **'Quran Database Status'**
  String get quranDbStatus;

  /// No description provided for @statusLabel.
  ///
  /// In en, this message translates to:
  /// **'Status: {status}'**
  String statusLabel(Object status);

  /// No description provided for @surahsCount.
  ///
  /// In en, this message translates to:
  /// **'Surahs: {count} (expected 114)'**
  String surahsCount(Object count);

  /// No description provided for @ayahsCount.
  ///
  /// In en, this message translates to:
  /// **'Ayahs: {count} (expected 6236)'**
  String ayahsCount(Object count);

  /// No description provided for @missingArabic.
  ///
  /// In en, this message translates to:
  /// **'Missing Arabic: {count}'**
  String missingArabic(Object count);

  /// No description provided for @missingEnglish.
  ///
  /// In en, this message translates to:
  /// **'Missing English: {count}'**
  String missingEnglish(Object count);

  /// No description provided for @missingTurkish.
  ///
  /// In en, this message translates to:
  /// **'Missing Turkish: {count}'**
  String missingTurkish(Object count);

  /// No description provided for @dbVersion.
  ///
  /// In en, this message translates to:
  /// **'DB Version: {version}'**
  String dbVersion(Object version);

  /// No description provided for @dbPath.
  ///
  /// In en, this message translates to:
  /// **'Path: {path}'**
  String dbPath(Object path);

  /// No description provided for @quranCheckFailed.
  ///
  /// In en, this message translates to:
  /// **'Quran check failed: {error}'**
  String quranCheckFailed(Object error);

  /// No description provided for @audioVoice.
  ///
  /// In en, this message translates to:
  /// **'Audio Voice'**
  String get audioVoice;

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

  /// No description provided for @qiblaCalibration.
  ///
  /// In en, this message translates to:
  /// **'Qibla Calibration'**
  String get qiblaCalibration;

  /// No description provided for @compassSmoothing.
  ///
  /// In en, this message translates to:
  /// **'Compass Smoothing'**
  String get compassSmoothing;

  /// No description provided for @reduceSensorJitter.
  ///
  /// In en, this message translates to:
  /// **'Reduce sensor jitter for a steadier needle.'**
  String get reduceSensorJitter;

  /// No description provided for @calibrationOffset.
  ///
  /// In en, this message translates to:
  /// **'Calibration Offset'**
  String get calibrationOffset;

  /// No description provided for @currentOffset.
  ///
  /// In en, this message translates to:
  /// **'Current: {offset}°'**
  String currentOffset(Object offset);

  /// No description provided for @manualCorrectionDesc.
  ///
  /// In en, this message translates to:
  /// **'Adjust if your compass needs a manual correction. Positive values rotate clockwise.'**
  String get manualCorrectionDesc;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// No description provided for @resetOnboarding.
  ///
  /// In en, this message translates to:
  /// **'Reset Onboarding'**
  String get resetOnboarding;

  /// No description provided for @rerunSetup.
  ///
  /// In en, this message translates to:
  /// **'Re-run the initial setup process.'**
  String get rerunSetup;

  /// No description provided for @diagnostics.
  ///
  /// In en, this message translates to:
  /// **'Diagnostics'**
  String get diagnostics;

  /// No description provided for @diagnosticsNotSet.
  ///
  /// In en, this message translates to:
  /// **'Not set'**
  String get diagnosticsNotSet;

  /// No description provided for @diagnosticsCloudDriven.
  ///
  /// In en, this message translates to:
  /// **'Cloud Driven'**
  String get diagnosticsCloudDriven;

  /// No description provided for @diagnosticsAdhanAudioAssets.
  ///
  /// In en, this message translates to:
  /// **'Adhan Audio Assets'**
  String get diagnosticsAdhanAudioAssets;

  /// No description provided for @diagnosticsUiAudioAssets.
  ///
  /// In en, this message translates to:
  /// **'UI Audio Assets'**
  String get diagnosticsUiAudioAssets;

  /// No description provided for @diagnosticsQuranAudioAssets.
  ///
  /// In en, this message translates to:
  /// **'Quran Audio Assets'**
  String get diagnosticsQuranAudioAssets;

  /// No description provided for @diagnosticsAudioAssets.
  ///
  /// In en, this message translates to:
  /// **'Audio Assets'**
  String get diagnosticsAudioAssets;

  /// No description provided for @diagnosticsFilesCount.
  ///
  /// In en, this message translates to:
  /// **'{count} files'**
  String diagnosticsFilesCount(String count);

  /// No description provided for @diagnosticsManifestReadFailed.
  ///
  /// In en, this message translates to:
  /// **'Manifest read failed: {error}'**
  String diagnosticsManifestReadFailed(String error);

  /// No description provided for @diagnosticsLocalizationLocales.
  ///
  /// In en, this message translates to:
  /// **'Localization Locales'**
  String get diagnosticsLocalizationLocales;

  /// No description provided for @diagnosticsSupportedCount.
  ///
  /// In en, this message translates to:
  /// **'{count} supported'**
  String diagnosticsSupportedCount(String count);

  /// No description provided for @diagnosticsQuranDataset.
  ///
  /// In en, this message translates to:
  /// **'Quran Dataset'**
  String get diagnosticsQuranDataset;

  /// No description provided for @diagnosticsQuranSurahs.
  ///
  /// In en, this message translates to:
  /// **'Quran Surahs'**
  String get diagnosticsQuranSurahs;

  /// No description provided for @diagnosticsQuranAyahs.
  ///
  /// In en, this message translates to:
  /// **'Quran Ayahs'**
  String get diagnosticsQuranAyahs;

  /// No description provided for @diagnosticsQuranJuzMetadata.
  ///
  /// In en, this message translates to:
  /// **'Quran Juz Metadata'**
  String get diagnosticsQuranJuzMetadata;

  /// No description provided for @diagnosticsQuranCloudTablesMissing.
  ///
  /// In en, this message translates to:
  /// **'Cloud tables missing in Supabase; bundled fallback active'**
  String get diagnosticsQuranCloudTablesMissing;

  /// No description provided for @diagnosticsQuranCloudCheckFailed.
  ///
  /// In en, this message translates to:
  /// **'Cloud check failed: {error}'**
  String diagnosticsQuranCloudCheckFailed(String error);

  /// No description provided for @diagnosticsQuranCloudJuzMissing.
  ///
  /// In en, this message translates to:
  /// **'Cloud juz metadata missing; bundled structural fallback active'**
  String get diagnosticsQuranCloudJuzMissing;

  /// No description provided for @diagnosticsQuranCloudStructuralCheckFailed.
  ///
  /// In en, this message translates to:
  /// **'Cloud structural check failed: {error}'**
  String diagnosticsQuranCloudStructuralCheckFailed(String error);

  /// No description provided for @healthCheckDesc.
  ///
  /// In en, this message translates to:
  /// **'Run health checks and view system status.'**
  String get healthCheckDesc;

  /// No description provided for @qiblaAligned.
  ///
  /// In en, this message translates to:
  /// **'Qibla Aligned'**
  String get qiblaAligned;

  /// No description provided for @rotateToFindQibla.
  ///
  /// In en, this message translates to:
  /// **'Rotate to Find Qibla'**
  String get rotateToFindQibla;

  /// No description provided for @calibrationRequiredFigure8.
  ///
  /// In en, this message translates to:
  /// **'Calibration required. Rotate device in figure-8.'**
  String get calibrationRequiredFigure8;

  /// No description provided for @dailyVerse.
  ///
  /// In en, this message translates to:
  /// **'Daily Verse'**
  String get dailyVerse;

  /// No description provided for @todaysIbadah.
  ///
  /// In en, this message translates to:
  /// **'Today\'s Ibadah'**
  String get todaysIbadah;

  /// No description provided for @quickAccess.
  ///
  /// In en, this message translates to:
  /// **'Quick Access'**
  String get quickAccess;

  /// No description provided for @assistant.
  ///
  /// In en, this message translates to:
  /// **'Assistant'**
  String get assistant;

  /// No description provided for @places.
  ///
  /// In en, this message translates to:
  /// **'Places'**
  String get places;

  /// No description provided for @library.
  ///
  /// In en, this message translates to:
  /// **'Library'**
  String get library;

  /// No description provided for @analytics.
  ///
  /// In en, this message translates to:
  /// **'Analytics'**
  String get analytics;

  /// No description provided for @dailyDuas.
  ///
  /// In en, this message translates to:
  /// **'Daily Duas'**
  String get dailyDuas;

  /// No description provided for @essentialDuas.
  ///
  /// In en, this message translates to:
  /// **'{count} essential duas'**
  String essentialDuas(String count);

  /// No description provided for @islamicEducation.
  ///
  /// In en, this message translates to:
  /// **'Islamic Education'**
  String get islamicEducation;

  /// No description provided for @sukunAudioTitle.
  ///
  /// In en, this message translates to:
  /// **'Sukun Soundscapes'**
  String get sukunAudioTitle;

  /// No description provided for @hadithCollections.
  ///
  /// In en, this message translates to:
  /// **'Hadith Collections'**
  String get hadithCollections;

  /// No description provided for @paywallUnlockAll.
  ///
  /// In en, this message translates to:
  /// **'Unlock all features for your spiritual journey'**
  String get paywallUnlockAll;

  /// No description provided for @paywallFeature1Title.
  ///
  /// In en, this message translates to:
  /// **'Neural Assistant Plus'**
  String get paywallFeature1Title;

  /// No description provided for @paywallFeature1Desc.
  ///
  /// In en, this message translates to:
  /// **'Unlimited AI-powered Q&A'**
  String get paywallFeature1Desc;

  /// No description provided for @paywallFeature2Title.
  ///
  /// In en, this message translates to:
  /// **'Unlimited Offline'**
  String get paywallFeature2Title;

  /// No description provided for @paywallFeature2Desc.
  ///
  /// In en, this message translates to:
  /// **'Download all recitations'**
  String get paywallFeature2Desc;

  /// No description provided for @paywallFeature3Title.
  ///
  /// In en, this message translates to:
  /// **'Exclusive Designs'**
  String get paywallFeature3Title;

  /// No description provided for @paywallFeature3Desc.
  ///
  /// In en, this message translates to:
  /// **'Premium themes & fonts'**
  String get paywallFeature3Desc;

  /// No description provided for @paywallFeature4Title.
  ///
  /// In en, this message translates to:
  /// **'Ad-Free'**
  String get paywallFeature4Title;

  /// No description provided for @paywallFeature4Desc.
  ///
  /// In en, this message translates to:
  /// **'Zero advertisements'**
  String get paywallFeature4Desc;

  /// No description provided for @paywallGetAccess.
  ///
  /// In en, this message translates to:
  /// **'Get Lifetime Access — \$1.00'**
  String get paywallGetAccess;

  /// No description provided for @restorePurchases.
  ///
  /// In en, this message translates to:
  /// **'Restore Purchases'**
  String get restorePurchases;

  /// No description provided for @zakatCalculator.
  ///
  /// In en, this message translates to:
  /// **'Zakat Calculator'**
  String get zakatCalculator;

  /// No description provided for @zakatGold.
  ///
  /// In en, this message translates to:
  /// **'Gold (Altın)'**
  String get zakatGold;

  /// No description provided for @zakatSilver.
  ///
  /// In en, this message translates to:
  /// **'Silver (Gümüş)'**
  String get zakatSilver;

  /// No description provided for @zakatCashBank.
  ///
  /// In en, this message translates to:
  /// **'Cash / Bank'**
  String get zakatCashBank;

  /// No description provided for @zakatBusiness.
  ///
  /// In en, this message translates to:
  /// **'Business'**
  String get zakatBusiness;

  /// No description provided for @zakatInvestments.
  ///
  /// In en, this message translates to:
  /// **'Investments'**
  String get zakatInvestments;

  /// No description provided for @zakatWeightGrams.
  ///
  /// In en, this message translates to:
  /// **'Weight (g)'**
  String get zakatWeightGrams;

  /// No description provided for @zakatPricePerGram.
  ///
  /// In en, this message translates to:
  /// **'Price/g'**
  String get zakatPricePerGram;

  /// No description provided for @zakatTotalAmount.
  ///
  /// In en, this message translates to:
  /// **'Total Amount'**
  String get zakatTotalAmount;

  /// No description provided for @zakatInventoryValue.
  ///
  /// In en, this message translates to:
  /// **'Inventory Value'**
  String get zakatInventoryValue;

  /// No description provided for @zakatDebts.
  ///
  /// In en, this message translates to:
  /// **'Debts'**
  String get zakatDebts;

  /// No description provided for @zakatTotal.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get zakatTotal;

  /// No description provided for @calculateZakat.
  ///
  /// In en, this message translates to:
  /// **'Calculate Zakat'**
  String get calculateZakat;

  /// No description provided for @nisabNotReached.
  ///
  /// In en, this message translates to:
  /// **'Nisab not reached. Zakat is not obligatory.'**
  String get nisabNotReached;

  /// No description provided for @totalZakat.
  ///
  /// In en, this message translates to:
  /// **'Total Zakat'**
  String get totalZakat;

  /// No description provided for @nisabSummary.
  ///
  /// In en, this message translates to:
  /// **'Nisab: {nisab} • Assets: {assets}'**
  String nisabSummary(String nisab, String assets);

  /// No description provided for @zakatGoldZakat.
  ///
  /// In en, this message translates to:
  /// **'Gold Zakat'**
  String get zakatGoldZakat;

  /// No description provided for @zakatSilverZakat.
  ///
  /// In en, this message translates to:
  /// **'Silver Zakat'**
  String get zakatSilverZakat;

  /// No description provided for @zakatCashZakat.
  ///
  /// In en, this message translates to:
  /// **'Cash Zakat'**
  String get zakatCashZakat;

  /// No description provided for @zakatBusinessZakat.
  ///
  /// In en, this message translates to:
  /// **'Business Zakat'**
  String get zakatBusinessZakat;

  /// No description provided for @zakatInvestmentZakat.
  ///
  /// In en, this message translates to:
  /// **'Investment Zakat'**
  String get zakatInvestmentZakat;

  /// No description provided for @chatbotGreeting.
  ///
  /// In en, this message translates to:
  /// **'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.'**
  String get chatbotGreeting;

  /// No description provided for @chatbotLimitReached.
  ///
  /// In en, this message translates to:
  /// **'Daily query limit reached. Upgrade to Premium for unlimited.'**
  String get chatbotLimitReached;

  /// No description provided for @chatbotErrorMsg.
  ///
  /// In en, this message translates to:
  /// **'I could not generate a response. Please try again.'**
  String get chatbotErrorMsg;

  /// No description provided for @chatbotOfflinePrompt.
  ///
  /// In en, this message translates to:
  /// **'Downloading the Local AI model requires ~1.5 GB of storage. Once downloaded, Neural Assistant will work completely offline without limits. \n\nWould you like to start the download?'**
  String get chatbotOfflinePrompt;

  /// No description provided for @chatbotOfflineSwitched.
  ///
  /// In en, this message translates to:
  /// **'Switched to simulated offline local LLM mode.'**
  String get chatbotOfflineSwitched;

  /// No description provided for @chatbotOfflineDownloadLabel.
  ///
  /// In en, this message translates to:
  /// **'Download & Apply'**
  String get chatbotOfflineDownloadLabel;

  /// No description provided for @downloadPreparing.
  ///
  /// In en, this message translates to:
  /// **'Preparing download...'**
  String get downloadPreparing;

  /// No description provided for @downloadingSurah.
  ///
  /// In en, this message translates to:
  /// **'Downloading surah {surah} / {total}'**
  String downloadingSurah(String surah, String total);

  /// No description provided for @downloadCompleted.
  ///
  /// In en, this message translates to:
  /// **'All surahs already downloaded for this reciter.'**
  String get downloadCompleted;

  /// No description provided for @offlineQuranAudioPacks.
  ///
  /// In en, this message translates to:
  /// **'Offline Quran Audio Packs'**
  String get offlineQuranAudioPacks;

  /// No description provided for @storedOnDeviceMb.
  ///
  /// In en, this message translates to:
  /// **'Stored on device: {size} MB'**
  String storedOnDeviceMb(String size);

  /// No description provided for @downloadedSurahProgress.
  ///
  /// In en, this message translates to:
  /// **'{downloaded} / {total} surahs downloaded'**
  String downloadedSurahProgress(String downloaded, String total);

  /// No description provided for @redownloadMissingRepair.
  ///
  /// In en, this message translates to:
  /// **'Repair / Download Missing'**
  String get redownloadMissingRepair;

  /// No description provided for @downloadAction.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get downloadAction;

  /// No description provided for @resumeDownload.
  ///
  /// In en, this message translates to:
  /// **'Resume Download'**
  String get resumeDownload;

  /// No description provided for @deleteDownloadedFiles.
  ///
  /// In en, this message translates to:
  /// **'Delete Downloaded Files'**
  String get deleteDownloadedFiles;

  /// No description provided for @downloadCancelling.
  ///
  /// In en, this message translates to:
  /// **'Cancelling...'**
  String get downloadCancelling;

  /// No description provided for @downloadCanceledForReciter.
  ///
  /// In en, this message translates to:
  /// **'Download canceled for {reciter}.'**
  String downloadCanceledForReciter(String reciter);

  /// No description provided for @downloadFinishedForReciter.
  ///
  /// In en, this message translates to:
  /// **'Download completed for {reciter}.'**
  String downloadFinishedForReciter(String reciter);

  /// No description provided for @deletedOfflineFilesForReciter.
  ///
  /// In en, this message translates to:
  /// **'Deleted offline files for {reciter}.'**
  String deletedOfflineFilesForReciter(String reciter);

  /// No description provided for @quranAudioSourcesUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Verified Quran audio sources are unavailable right now.'**
  String get quranAudioSourcesUnavailable;

  /// No description provided for @quranAudioSourcesIncomplete.
  ///
  /// In en, this message translates to:
  /// **'Verified Quran audio pack is incomplete ({available}/{total}). Refresh cloud seed and try again.'**
  String quranAudioSourcesIncomplete(String available, String total);

  /// No description provided for @chatbotHint.
  ///
  /// In en, this message translates to:
  /// **'Ask a question...'**
  String get chatbotHint;

  /// No description provided for @chatbotThinking.
  ///
  /// In en, this message translates to:
  /// **'Thinking...'**
  String get chatbotThinking;

  /// No description provided for @sukunMixerSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Nature & Qur\'an Mixer'**
  String get sukunMixerSubtitle;

  /// No description provided for @audioPlayFailed.
  ///
  /// In en, this message translates to:
  /// **'Audio playback failed'**
  String get audioPlayFailed;

  /// No description provided for @sukunNatureLabel.
  ///
  /// In en, this message translates to:
  /// **'Sukun (Nature)'**
  String get sukunNatureLabel;

  /// No description provided for @sukunRainOfMercy.
  ///
  /// In en, this message translates to:
  /// **'Rain of Mercy'**
  String get sukunRainOfMercy;

  /// No description provided for @sukunGardenOfPeace.
  ///
  /// In en, this message translates to:
  /// **'Garden of Peace'**
  String get sukunGardenOfPeace;

  /// No description provided for @sukunMidnightCalm.
  ///
  /// In en, this message translates to:
  /// **'Midnight Calm'**
  String get sukunMidnightCalm;

  /// No description provided for @sukunOceanTawheed.
  ///
  /// In en, this message translates to:
  /// **'Ocean Tawheed'**
  String get sukunOceanTawheed;

  /// No description provided for @sukunUnavailableTitle.
  ///
  /// In en, this message translates to:
  /// **'Soundscapes unavailable'**
  String get sukunUnavailableTitle;

  /// No description provided for @sukunUnavailableBody.
  ///
  /// In en, this message translates to:
  /// **'This build does not include the required Sukun soundscape assets yet.'**
  String get sukunUnavailableBody;

  /// No description provided for @prayerCompletion.
  ///
  /// In en, this message translates to:
  /// **'Prayer Completion'**
  String get prayerCompletion;

  /// No description provided for @streaks.
  ///
  /// In en, this message translates to:
  /// **'Streaks'**
  String get streaks;

  /// No description provided for @dayStreak.
  ///
  /// In en, this message translates to:
  /// **'Day streak'**
  String get dayStreak;

  /// No description provided for @bestStreak.
  ///
  /// In en, this message translates to:
  /// **'Best streak'**
  String get bestStreak;

  /// No description provided for @chatbotCloudAiLabel.
  ///
  /// In en, this message translates to:
  /// **'Cloud AI'**
  String get chatbotCloudAiLabel;

  /// No description provided for @chatbotLocalAiLabel.
  ///
  /// In en, this message translates to:
  /// **'Local AI'**
  String get chatbotLocalAiLabel;

  /// No description provided for @chatbotUseCloudAi.
  ///
  /// In en, this message translates to:
  /// **'Use Cloud AI (Gemini)'**
  String get chatbotUseCloudAi;

  /// No description provided for @chatbotDownloadLocalAi.
  ///
  /// In en, this message translates to:
  /// **'Download Local AI (1.5 GB)'**
  String get chatbotDownloadLocalAi;

  /// No description provided for @chatbotQueriesLeft.
  ///
  /// In en, this message translates to:
  /// **'{count} left'**
  String chatbotQueriesLeft(String count);

  /// No description provided for @chatbotCloudNotConfigured.
  ///
  /// In en, this message translates to:
  /// **'Cloud API not configured. Please switch to Local AI.'**
  String get chatbotCloudNotConfigured;

  /// No description provided for @chatbotLocalNoInfo.
  ///
  /// In en, this message translates to:
  /// **'[LOCAL AI] I don\'t have information on this topic yet. You can ask about prayer, fasting, zakat, hajj, faith, or ethics.'**
  String get chatbotLocalNoInfo;

  /// No description provided for @mosques.
  ///
  /// In en, this message translates to:
  /// **'Mosques'**
  String get mosques;

  /// No description provided for @halalFood.
  ///
  /// In en, this message translates to:
  /// **'Halal Food'**
  String get halalFood;

  /// No description provided for @placesSearchArea.
  ///
  /// In en, this message translates to:
  /// **'Search this area'**
  String get placesSearchArea;

  /// No description provided for @nearbyMosques.
  ///
  /// In en, this message translates to:
  /// **'Nearby Mosques'**
  String get nearbyMosques;

  /// No description provided for @islamicSchools.
  ///
  /// In en, this message translates to:
  /// **'Islamic Schools'**
  String get islamicSchools;

  /// No description provided for @placesFoundCount.
  ///
  /// In en, this message translates to:
  /// **'{count} found'**
  String placesFoundCount(String count);

  /// No description provided for @distanceAwayKm.
  ///
  /// In en, this message translates to:
  /// **'{distance} km away'**
  String distanceAwayKm(String distance);

  /// No description provided for @placesApiError.
  ///
  /// In en, this message translates to:
  /// **'API Error: {statusCode}'**
  String placesApiError(String statusCode);

  /// No description provided for @placesNetworkError.
  ///
  /// In en, this message translates to:
  /// **'Network error. Please try again.'**
  String get placesNetworkError;

  /// No description provided for @unknownPlaceName.
  ///
  /// In en, this message translates to:
  /// **'Unknown Name'**
  String get unknownPlaceName;

  /// No description provided for @islamicPlaceFallback.
  ///
  /// In en, this message translates to:
  /// **'Islamic Place'**
  String get islamicPlaceFallback;
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
    'aa',
    'ab',
    'ae',
    'af',
    'ak',
    'am',
    'an',
    'ar',
    'as',
    'av',
    'ay',
    'az',
    'ba',
    'be',
    'bg',
    'bh',
    'bho',
    'bi',
    'bm',
    'bn',
    'bo',
    'br',
    'bs',
    'ca',
    'ce',
    'ceb',
    'ch',
    'co',
    'cr',
    'cs',
    'cu',
    'cv',
    'cy',
    'da',
    'de',
    'dv',
    'dz',
    'ee',
    'el',
    'en',
    'eo',
    'es',
    'et',
    'eu',
    'fa',
    'ff',
    'fi',
    'fj',
    'fo',
    'fr',
    'fy',
    'ga',
    'gd',
    'gl',
    'gn',
    'gu',
    'gv',
    'ha',
    'haw',
    'he',
    'hi',
    'hmn',
    'ho',
    'hr',
    'ht',
    'hu',
    'hy',
    'hz',
    'ia',
    'id',
    'ie',
    'ig',
    'ii',
    'ik',
    'ilo',
    'io',
    'is',
    'it',
    'iu',
    'ja',
    'jv',
    'ka',
    'kg',
    'ki',
    'kj',
    'kk',
    'kl',
    'km',
    'kn',
    'ko',
    'kr',
    'kri',
    'ks',
    'ku',
    'kv',
    'kw',
    'ky',
    'la',
    'lb',
    'lg',
    'li',
    'ln',
    'lo',
    'lt',
    'lu',
    'lus',
    'lv',
    'mai',
    'mg',
    'mh',
    'mi',
    'mk',
    'ml',
    'mn',
    'mni',
    'mr',
    'ms',
    'mt',
    'my',
    'na',
    'nb',
    'nd',
    'ne',
    'ng',
    'nl',
    'nn',
    'no',
    'nr',
    'nso',
    'nv',
    'ny',
    'oc',
    'oj',
    'om',
    'or',
    'os',
    'pa',
    'pi',
    'pl',
    'ps',
    'pt',
    'qu',
    'rm',
    'rn',
    'ro',
    'ru',
    'rw',
    'sa',
    'sc',
    'sd',
    'se',
    'sg',
    'si',
    'sk',
    'sl',
    'sm',
    'sn',
    'so',
    'sq',
    'sr',
    'ss',
    'st',
    'su',
    'sv',
    'sw',
    'ta',
    'te',
    'tg',
    'th',
    'ti',
    'tk',
    'tl',
    'tn',
    'to',
    'tr',
    'ts',
    'tt',
    'tw',
    'ty',
    'ug',
    'uk',
    'ur',
    'uz',
    've',
    'vi',
    'vo',
    'wa',
    'wo',
    'xh',
    'yi',
    'yo',
    'za',
    'zh',
    'zu',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'CN':
            return AppLocalizationsZhCn();
          case 'TW':
            return AppLocalizationsZhTw();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'aa':
      return AppLocalizationsAa();
    case 'ab':
      return AppLocalizationsAb();
    case 'ae':
      return AppLocalizationsAe();
    case 'af':
      return AppLocalizationsAf();
    case 'ak':
      return AppLocalizationsAk();
    case 'am':
      return AppLocalizationsAm();
    case 'an':
      return AppLocalizationsAn();
    case 'ar':
      return AppLocalizationsAr();
    case 'as':
      return AppLocalizationsAs();
    case 'av':
      return AppLocalizationsAv();
    case 'ay':
      return AppLocalizationsAy();
    case 'az':
      return AppLocalizationsAz();
    case 'ba':
      return AppLocalizationsBa();
    case 'be':
      return AppLocalizationsBe();
    case 'bg':
      return AppLocalizationsBg();
    case 'bh':
      return AppLocalizationsBh();
    case 'bho':
      return AppLocalizationsBho();
    case 'bi':
      return AppLocalizationsBi();
    case 'bm':
      return AppLocalizationsBm();
    case 'bn':
      return AppLocalizationsBn();
    case 'bo':
      return AppLocalizationsBo();
    case 'br':
      return AppLocalizationsBr();
    case 'bs':
      return AppLocalizationsBs();
    case 'ca':
      return AppLocalizationsCa();
    case 'ce':
      return AppLocalizationsCe();
    case 'ceb':
      return AppLocalizationsCeb();
    case 'ch':
      return AppLocalizationsCh();
    case 'co':
      return AppLocalizationsCo();
    case 'cr':
      return AppLocalizationsCr();
    case 'cs':
      return AppLocalizationsCs();
    case 'cu':
      return AppLocalizationsCu();
    case 'cv':
      return AppLocalizationsCv();
    case 'cy':
      return AppLocalizationsCy();
    case 'da':
      return AppLocalizationsDa();
    case 'de':
      return AppLocalizationsDe();
    case 'dv':
      return AppLocalizationsDv();
    case 'dz':
      return AppLocalizationsDz();
    case 'ee':
      return AppLocalizationsEe();
    case 'el':
      return AppLocalizationsEl();
    case 'en':
      return AppLocalizationsEn();
    case 'eo':
      return AppLocalizationsEo();
    case 'es':
      return AppLocalizationsEs();
    case 'et':
      return AppLocalizationsEt();
    case 'eu':
      return AppLocalizationsEu();
    case 'fa':
      return AppLocalizationsFa();
    case 'ff':
      return AppLocalizationsFf();
    case 'fi':
      return AppLocalizationsFi();
    case 'fj':
      return AppLocalizationsFj();
    case 'fo':
      return AppLocalizationsFo();
    case 'fr':
      return AppLocalizationsFr();
    case 'fy':
      return AppLocalizationsFy();
    case 'ga':
      return AppLocalizationsGa();
    case 'gd':
      return AppLocalizationsGd();
    case 'gl':
      return AppLocalizationsGl();
    case 'gn':
      return AppLocalizationsGn();
    case 'gu':
      return AppLocalizationsGu();
    case 'gv':
      return AppLocalizationsGv();
    case 'ha':
      return AppLocalizationsHa();
    case 'haw':
      return AppLocalizationsHaw();
    case 'he':
      return AppLocalizationsHe();
    case 'hi':
      return AppLocalizationsHi();
    case 'hmn':
      return AppLocalizationsHmn();
    case 'ho':
      return AppLocalizationsHo();
    case 'hr':
      return AppLocalizationsHr();
    case 'ht':
      return AppLocalizationsHt();
    case 'hu':
      return AppLocalizationsHu();
    case 'hy':
      return AppLocalizationsHy();
    case 'hz':
      return AppLocalizationsHz();
    case 'ia':
      return AppLocalizationsIa();
    case 'id':
      return AppLocalizationsId();
    case 'ie':
      return AppLocalizationsIe();
    case 'ig':
      return AppLocalizationsIg();
    case 'ii':
      return AppLocalizationsIi();
    case 'ik':
      return AppLocalizationsIk();
    case 'ilo':
      return AppLocalizationsIlo();
    case 'io':
      return AppLocalizationsIo();
    case 'is':
      return AppLocalizationsIs();
    case 'it':
      return AppLocalizationsIt();
    case 'iu':
      return AppLocalizationsIu();
    case 'ja':
      return AppLocalizationsJa();
    case 'jv':
      return AppLocalizationsJv();
    case 'ka':
      return AppLocalizationsKa();
    case 'kg':
      return AppLocalizationsKg();
    case 'ki':
      return AppLocalizationsKi();
    case 'kj':
      return AppLocalizationsKj();
    case 'kk':
      return AppLocalizationsKk();
    case 'kl':
      return AppLocalizationsKl();
    case 'km':
      return AppLocalizationsKm();
    case 'kn':
      return AppLocalizationsKn();
    case 'ko':
      return AppLocalizationsKo();
    case 'kr':
      return AppLocalizationsKr();
    case 'kri':
      return AppLocalizationsKri();
    case 'ks':
      return AppLocalizationsKs();
    case 'ku':
      return AppLocalizationsKu();
    case 'kv':
      return AppLocalizationsKv();
    case 'kw':
      return AppLocalizationsKw();
    case 'ky':
      return AppLocalizationsKy();
    case 'la':
      return AppLocalizationsLa();
    case 'lb':
      return AppLocalizationsLb();
    case 'lg':
      return AppLocalizationsLg();
    case 'li':
      return AppLocalizationsLi();
    case 'ln':
      return AppLocalizationsLn();
    case 'lo':
      return AppLocalizationsLo();
    case 'lt':
      return AppLocalizationsLt();
    case 'lu':
      return AppLocalizationsLu();
    case 'lus':
      return AppLocalizationsLus();
    case 'lv':
      return AppLocalizationsLv();
    case 'mai':
      return AppLocalizationsMai();
    case 'mg':
      return AppLocalizationsMg();
    case 'mh':
      return AppLocalizationsMh();
    case 'mi':
      return AppLocalizationsMi();
    case 'mk':
      return AppLocalizationsMk();
    case 'ml':
      return AppLocalizationsMl();
    case 'mn':
      return AppLocalizationsMn();
    case 'mni':
      return AppLocalizationsMni();
    case 'mr':
      return AppLocalizationsMr();
    case 'ms':
      return AppLocalizationsMs();
    case 'mt':
      return AppLocalizationsMt();
    case 'my':
      return AppLocalizationsMy();
    case 'na':
      return AppLocalizationsNa();
    case 'nb':
      return AppLocalizationsNb();
    case 'nd':
      return AppLocalizationsNd();
    case 'ne':
      return AppLocalizationsNe();
    case 'ng':
      return AppLocalizationsNg();
    case 'nl':
      return AppLocalizationsNl();
    case 'nn':
      return AppLocalizationsNn();
    case 'no':
      return AppLocalizationsNo();
    case 'nr':
      return AppLocalizationsNr();
    case 'nso':
      return AppLocalizationsNso();
    case 'nv':
      return AppLocalizationsNv();
    case 'ny':
      return AppLocalizationsNy();
    case 'oc':
      return AppLocalizationsOc();
    case 'oj':
      return AppLocalizationsOj();
    case 'om':
      return AppLocalizationsOm();
    case 'or':
      return AppLocalizationsOr();
    case 'os':
      return AppLocalizationsOs();
    case 'pa':
      return AppLocalizationsPa();
    case 'pi':
      return AppLocalizationsPi();
    case 'pl':
      return AppLocalizationsPl();
    case 'ps':
      return AppLocalizationsPs();
    case 'pt':
      return AppLocalizationsPt();
    case 'qu':
      return AppLocalizationsQu();
    case 'rm':
      return AppLocalizationsRm();
    case 'rn':
      return AppLocalizationsRn();
    case 'ro':
      return AppLocalizationsRo();
    case 'ru':
      return AppLocalizationsRu();
    case 'rw':
      return AppLocalizationsRw();
    case 'sa':
      return AppLocalizationsSa();
    case 'sc':
      return AppLocalizationsSc();
    case 'sd':
      return AppLocalizationsSd();
    case 'se':
      return AppLocalizationsSe();
    case 'sg':
      return AppLocalizationsSg();
    case 'si':
      return AppLocalizationsSi();
    case 'sk':
      return AppLocalizationsSk();
    case 'sl':
      return AppLocalizationsSl();
    case 'sm':
      return AppLocalizationsSm();
    case 'sn':
      return AppLocalizationsSn();
    case 'so':
      return AppLocalizationsSo();
    case 'sq':
      return AppLocalizationsSq();
    case 'sr':
      return AppLocalizationsSr();
    case 'ss':
      return AppLocalizationsSs();
    case 'st':
      return AppLocalizationsSt();
    case 'su':
      return AppLocalizationsSu();
    case 'sv':
      return AppLocalizationsSv();
    case 'sw':
      return AppLocalizationsSw();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
    case 'tg':
      return AppLocalizationsTg();
    case 'th':
      return AppLocalizationsTh();
    case 'ti':
      return AppLocalizationsTi();
    case 'tk':
      return AppLocalizationsTk();
    case 'tl':
      return AppLocalizationsTl();
    case 'tn':
      return AppLocalizationsTn();
    case 'to':
      return AppLocalizationsTo();
    case 'tr':
      return AppLocalizationsTr();
    case 'ts':
      return AppLocalizationsTs();
    case 'tt':
      return AppLocalizationsTt();
    case 'tw':
      return AppLocalizationsTw();
    case 'ty':
      return AppLocalizationsTy();
    case 'ug':
      return AppLocalizationsUg();
    case 'uk':
      return AppLocalizationsUk();
    case 'ur':
      return AppLocalizationsUr();
    case 'uz':
      return AppLocalizationsUz();
    case 've':
      return AppLocalizationsVe();
    case 'vi':
      return AppLocalizationsVi();
    case 'vo':
      return AppLocalizationsVo();
    case 'wa':
      return AppLocalizationsWa();
    case 'wo':
      return AppLocalizationsWo();
    case 'xh':
      return AppLocalizationsXh();
    case 'yi':
      return AppLocalizationsYi();
    case 'yo':
      return AppLocalizationsYo();
    case 'za':
      return AppLocalizationsZa();
    case 'zh':
      return AppLocalizationsZh();
    case 'zu':
      return AppLocalizationsZu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
