// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get splashTagline => 'Islamischer Weg des Lichts';

  @override
  String get home => 'Startseite';

  @override
  String get quran => 'Koran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Dhikr';

  @override
  String get calendar => 'Kalender';

  @override
  String get settings => 'Einstellungen';

  @override
  String get nextPrayer => 'Nächstes Gebet';

  @override
  String get prayerTimes => 'Gebetszeiten';

  @override
  String get continueReading => 'Lesen Sie weiter';

  @override
  String get getLifetimePro => 'Holen Sie sich Lifetime Pro';

  @override
  String get unlockTajweed =>
      'Schalten Sie Tajweed und erweiterte Funktionen frei';

  @override
  String get prayerCalculation => 'Gebetszeiten-Berechnung';

  @override
  String get method => 'Berechnungsmethode';

  @override
  String get madhab => 'Asr-Rechtsmethode';

  @override
  String get surahs => 'Suren';

  @override
  String get ayahs => 'Ayat';

  @override
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Sonnenaufgang';

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
    return 'Zeit für $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'Es ist Zeit, $prayerName zu beten.';
  }

  @override
  String get dataStorage => 'Daten & Speicherung';

  @override
  String get clearCache => 'Cache leeren';

  @override
  String get cacheClearedSuccess => 'Cache erfolgreich geleert';

  @override
  String get location => 'Standort';

  @override
  String get language => 'Sprache';

  @override
  String get selectLanguage => 'Wählen Sie Sprache aus';

  @override
  String get searchLanguage => 'Durchsuchen Sie mehr als 180 Sprachen...';

  @override
  String get systemDefault => 'Systemstandard';

  @override
  String get currentLocation => 'Aktueller Standort (GPS)';

  @override
  String get locationServiceDisabled => 'Der Standortdienst ist deaktiviert.';

  @override
  String get locationPermissionDenied => 'Standortberechtigung verweigert.';

  @override
  String get locationDetectionFailed =>
      'Ihr Standort konnte nicht ermittelt werden. Bitte wählen Sie manuell eine Stadt aus oder versuchen Sie es erneut.';

  @override
  String citiesCount(String count) {
    return '$count Städte';
  }

  @override
  String get search => 'Suchen';

  @override
  String get searchHint => 'Suchen...';

  @override
  String get noResults => 'Keine Ergebnisse gefunden';

  @override
  String get loading => 'Laden...';

  @override
  String get error => 'Fehler';

  @override
  String get appErrorOccurred => 'Es ist ein Fehler aufgetreten';

  @override
  String get appUnknownError => 'Unbekannter Fehler';

  @override
  String get quranLoadFailed =>
      'Koraninhalte konnten nicht geladen werden. Bitte versuchen Sie es erneut.';

  @override
  String get retry => 'Wiederholen';

  @override
  String get refreshAction => 'Aktualisieren';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get save => 'Speichern';

  @override
  String get delete => 'Löschen';

  @override
  String get edit => 'Bearbeiten';

  @override
  String get close => 'Schließen';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Nein';

  @override
  String get surah => 'Sure';

  @override
  String ayahLabel(String ayah) {
    return 'Vers $ayah';
  }

  @override
  String get juz => 'Juzʾ';

  @override
  String get page => 'Seite';

  @override
  String get reading => 'Lektüre';

  @override
  String get recitation => 'Rezitation';

  @override
  String get translation => 'Übersetzung';

  @override
  String get tafsir => 'Tafsir';

  @override
  String get tafsirLoading => 'Tafsir wird geladen...';

  @override
  String get tafsirSourceLabel => 'Tafsir-Quelle';

  @override
  String get tafsirNoSurahFound => 'Für diese Sure wurde kein Tafsir gefunden.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Für Ayah $ayah wurde kein Tafsir gefunden.';
  }

  @override
  String get tafsirLoadFailed => 'Tafsir konnte nicht geladen werden.';

  @override
  String get tafsirNoTextForAyah =>
      'Für diese Ayah gibt es keinen Tafsir-Text.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Tafsir wird heruntergeladen $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Tafsir wird geladen $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Die Tafsir-Quelle hat einen HTTP-Fehler $statusCode zurückgegeben.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Die ausgewählte Tafsir-Quelle hat keine Einträge zurückgegeben.';

  @override
  String get tafsirCacheUnavailable =>
      'Verifizierter Tafsir ist noch nicht offline verfügbar. Synchronisieren Sie einen Tafsir-Datensatz mit Quellen, bevor Sie ihn durchsuchen.';

  @override
  String get bookmarks => 'Lesezeichen';

  @override
  String get addBookmark => 'Lesezeichen hinzufügen';

  @override
  String get removeBookmark => 'Lesezeichen entfernen';

  @override
  String get lastRead => 'Zuletzt gelesen';

  @override
  String get dailyZikr => 'Tägliches Zikr';

  @override
  String get duaMeaning1 =>
      'andere beten: „Unser Herr, gib uns Gutes in dieser Welt und im Jenseits und beschütze uns vor der Qual des Feuers.“';

  @override
  String get duaMeaning2 =>
      'Allah belastet keine Seele über ihr Vermögen hinaus. Ihr kommt zugute, was sie erworben hat, und ihr fällt zur Last, was sie begangen hat. Unser Herr, zieh uns nicht zur Rechenschaft, wenn wir vergessen oder Fehler machen. Unser Herr, lege uns keine Last auf, wie Du sie denen vor uns auferlegt hast. Unser Herr, belaste uns nicht mit dem, wozu wir keine Kraft haben. Verzeih uns, vergib uns und erbarme Dich unser. Du bist unser Schutzherr; hilf uns gegen das ungläubige Volk.';

  @override
  String get duaMeaning3 =>
      '„Unser Herr, lass unsere Herzen nicht abweichen, nachdem Du uns geführt hast.“ Schenke uns Deine Barmherzigkeit: Du bist der Immer Gebende.';

  @override
  String get duaMeaning4 =>
      'Herr, schenke mir und meinen Nachkommen, dass wir weiterhin beten. Unser Herr, nimm meine Bitte an.';

  @override
  String get duaMeaning5 =>
      'und senke deinen Flügel in Demut und Güte zu ihnen und sprich: „Herr, erbarme dich ihrer, so wie sie sich um mich gekümmert haben, als ich klein war.“';

  @override
  String get duaMeaning6 =>
      'Gepriesen sei Gott, derjenige, der wirklich die Kontrolle hat. [Prophet], beeilen Sie sich nicht mit der Rezitation, bevor die Offenbarung vollständig vollständig ist, sondern sagen Sie: „Herr, vermehre mein Wissen!“';

  @override
  String get duaMeaning7 =>
      'Sag [Prophet]: „Herr, vergib und erbarme dich: Du bist der Barmherzigste von allen.“';

  @override
  String get duaMeaning8 =>
      'diejenigen, die beten: „Unser Herr, schenke uns Freude an unseren Ehepartnern und Nachkommen.“ Gib uns ein gutes Beispiel für diejenigen, die Dich kennen.';

  @override
  String get morningZikr => 'Morgen Zikr';

  @override
  String get eveningZikr => 'Abend-Zikr';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get ahkab => 'Ahkam';

  @override
  String get masaail => 'Masa\'il';

  @override
  String get hadith => 'Hadith';

  @override
  String get hadithCollection => 'Hadith-Sammlung';

  @override
  String get hadithBooks => 'Hadith-Bücher';

  @override
  String get searchHadith => 'Hadith durchsuchen';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

  @override
  String get namesOfAllah => 'Namen Allahs';

  @override
  String get liveTv => 'Live-TV';

  @override
  String get watchLive => 'Live ansehen';

  @override
  String get streamError => 'Stream-Fehler';

  @override
  String get reload => 'Neu laden';

  @override
  String get openInYoutube => 'Auf YouTube öffnen';

  @override
  String get ibadahTracker => 'Ibadah-Übersicht';

  @override
  String get fasting => 'Fasten';

  @override
  String get quranReading => 'Koranlesung';

  @override
  String get prayers => 'Gebete';

  @override
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '$hours Std. $minutes Min.';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '$minutes Min.';
  }

  @override
  String get prayerRemainingUnavailable => '--';

  @override
  String get dhikrCount => 'Dhikr-Zählung';

  @override
  String get weeklyProgress => 'Wochenfortschritt';

  @override
  String get monthlyProgress => 'Monatlicher Fortschritt';

  @override
  String get statistics => 'Statistiken';

  @override
  String get hijriCalendar => 'Hidschri-Kalender';

  @override
  String get gregorianCalendar => 'Gregorianischer Kalender';

  @override
  String get today => 'Heute';

  @override
  String get tomorrow => 'Morgen';

  @override
  String get yesterday => 'Gestern';

  @override
  String get specialDays => 'Besondere Tage';

  @override
  String get ramadan => 'Ramadan';

  @override
  String get eidAlFitr => 'Eid Al-Fitr';

  @override
  String get eidAlAdha => 'Eid Al-Adha';

  @override
  String get islamicNewYear => 'Islamisches Neujahr';

  @override
  String get mawlidAnNabi => 'Mawlid Kandili';

  @override
  String get specialDayDateRamadanStart => '1. Ramadan';

  @override
  String get specialDayDateLaylatAlQadr => '27. Ramadan';

  @override
  String get specialDayDateEidAlFitr => '1 Shawwal';

  @override
  String get specialDayDateEidAlAdha => '10 Dhu al-Hijjah';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharram';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabiul Awwal';

  @override
  String get laylatAlQadr => 'Laylat Al-Qadr';

  @override
  String get qiblaDirection => 'Qibla-Richtung';

  @override
  String get compass => 'Kompass';

  @override
  String get degrees => 'Grad';

  @override
  String get north => 'Norden';

  @override
  String get qiblaFound => 'Qibla gefunden!';

  @override
  String get turnDevice =>
      'Drehen Sie Ihr Gerät so, dass es der Qibla zugewandt ist';

  @override
  String qiblaCompassErrorDetails(String error) {
    return 'Kompassfehler: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Der Kompasssensor ist auf diesem Gerät nicht verfügbar.';

  @override
  String get qiblaLocationRequiredTitle => 'Standort für Qibla erforderlich';

  @override
  String get qiblaLocationRequiredBody =>
      'Stellen Sie Ihren tatsächlichen Standort ein, bevor Sie den Qibla-Kompass verwenden, damit die Richtung genau berechnet werden kann.';

  @override
  String get adhanNotificationChannelName => 'Adhan-Benachrichtigungen';

  @override
  String get adhanNotificationChannelDescription =>
      'Gebetszeitwarnungen mit Adhan-Sound.';

  @override
  String get notifications => 'Benachrichtigungen';

  @override
  String get prayerNotifications => 'Gebetsbenachrichtigungen';

  @override
  String get enableNotifications => 'Benachrichtigungen aktivieren';

  @override
  String get notificationTime => 'Benachrichtigungszeit';

  @override
  String get beforePrayer => 'Minuten vor dem Gebet';

  @override
  String get theme => 'Thema';

  @override
  String get lightMode => 'Lichtmodus';

  @override
  String get darkMode => 'Dunkler Modus';

  @override
  String get systemTheme => 'Systemthema';

  @override
  String get about => 'Über';

  @override
  String get version => 'App-Version';

  @override
  String get privacyPolicy => 'Datenschutzrichtlinie';

  @override
  String get termsOfService => 'Nutzungsbedingungen';

  @override
  String get contactUs => 'Kontaktieren Sie uns';

  @override
  String get rateApp => 'App bewerten';

  @override
  String get shareApp => 'App teilen';

  @override
  String shareAppMessage(String appName, String url) {
    return 'Schauen Sie sich $appName an: Die ultimative islamische Lifestyle-App! $url';
  }

  @override
  String get downloadManager => 'Download-Manager';

  @override
  String get downloads => 'Heruntergeladenes';

  @override
  String get downloading => 'Herunterladen...';

  @override
  String get downloadComplete => 'Download abgeschlossen';

  @override
  String get downloadFailed => 'Download fehlgeschlagen';

  @override
  String get offlineMode => 'Offline-Modus';

  @override
  String get noInternet => 'Keine Internetverbindung';

  @override
  String get checkConnection => 'Bitte überprüfen Sie Ihre Verbindung';

  @override
  String get premium => 'Prämie';

  @override
  String get upgradeToPro => 'Upgrade auf Pro';

  @override
  String get proFeatures => 'Pro-Funktionen';

  @override
  String get removeAds => 'Werbung entfernen';

  @override
  String get unlockAll => 'Schalten Sie alle Inhalte frei';

  @override
  String get exclusiveContent => 'Exklusiver Inhalt';

  @override
  String get welcome => 'Willkommen';

  @override
  String get getStarted => 'Legen Sie los';

  @override
  String get skip => 'Überspringen';

  @override
  String get next => 'Weiter';

  @override
  String get done => 'Erledigt';

  @override
  String get onboarding1Title => 'Willkommen bei Sirat-ı Nur';

  @override
  String get onboarding1Desc =>
      'Ihre komplette islamische Begleit-App für Gebetszeiten, Koran und mehr';

  @override
  String get onboarding2Title => 'Gebetszeiten';

  @override
  String get onboarding2Desc =>
      'Genaue Gebetszeiten basierend auf Ihrem Standort';

  @override
  String get onboarding3Title => 'Koran und mehr';

  @override
  String get onboarding3Desc =>
      'Lesen Sie den Koran, verfolgen Sie Ihre Lektüre und erkunden Sie islamische Inhalte';

  @override
  String get dhikrLibrary => 'Dhikr Library';

  @override
  String get resetCounter => 'Zähler zurücksetzen';

  @override
  String get changeTarget => 'Change Target';

  @override
  String get newTarget => 'New Target';

  @override
  String targetCount(Object target) {
    return 'Zielanzahl: $target';
  }

  @override
  String get tapToCount => 'Zum Zählen tippen';

  @override
  String get zikrCompletedMashAllah => 'Vollendet! MaschAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah steht weit über jeder Unvollkommenheit.';

  @override
  String get zikrMeaningAlhamdulillah => 'Alles Lob gebührt Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah ist der Größte.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Es gibt keinen Gott außer Allah.';

  @override
  String get zikrMeaningAstaghfirullah => 'Ich bitte Allah um Vergebung.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Es gibt keine Macht und keine Stärke außer durch Allah.';

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
  String get dailyProgress => 'Täglicher Fortschritt';

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
  String get recheckPremium =>
      'Überprüfen Sie den Status des Premium-Abonnements erneut';

  @override
  String get syncStore =>
      'Synchronisieren Sie mit dem App Store, um Ihr Premium-Abonnement zu bestätigen.';

  @override
  String get checkingPremium => 'Checking premium status...';

  @override
  String get premiumVerified => 'Premium-Abonnement bestätigt.';

  @override
  String get premiumNotFound => 'Premium-Abonnement nicht gefunden.';

  @override
  String premiumRefreshError(Object error) {
    return 'Der Status des Premium-Abonnements konnte nicht aktualisiert werden: $error';
  }

  @override
  String get offlineDownloadManager => 'Offline-Download-Manager';

  @override
  String get manageDatasets =>
      'Verwalten Sie umfangreiche Offline-Audio- und Datensatzpakete.';

  @override
  String get freeStorage => 'Geben Sie internen Gerätespeicher frei.';

  @override
  String get quranIntegrity => 'Quran Integrity';

  @override
  String get checkQuranDb => 'Check Quran Database';

  @override
  String get verifyQuranContent => 'Verify 114 surahs and 6236 ayahs.';

  @override
  String get checkingQuranDb => 'Überprüfung der Korandatenbank...';

  @override
  String get okLabel => 'OK';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get notSeeded => 'Not seeded';

  @override
  String get quranDbStatus => 'Status der Korandatenbank';

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
    return 'Koranüberprüfung fehlgeschlagen: $error';
  }

  @override
  String get audioVoice => 'Audiostimme';

  @override
  String get audioVoiceMisharyAlafasy => 'Männlich (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Männlich (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Männlich (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Qibla-Kalibrierung';

  @override
  String get compassSmoothing => 'Kompassglättung';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Kalibrierungsoffset';

  @override
  String currentOffset(Object offset) {
    return 'Aktuell: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Passen Sie an, ob Ihr Kompass eine manuelle Korrektur benötigt. Positive Werte drehen sich im Uhrzeigersinn.';

  @override
  String get apply => 'Änderungen übernehmen';

  @override
  String get resetOnboarding => 'Intro-Setup zurücksetzen';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Diagnose';

  @override
  String get diagnosticsNotSet => 'Nicht festgelegt';

  @override
  String get diagnosticsPrayerProfile => 'Gebetsprofil';

  @override
  String get diagnosticsPrayerSource => 'Gebetsautorität';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Benutzerdefiniert / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Manuelle benutzerdefinierte Winkel (keine institutionelle Quelle)';

  @override
  String diagnosticsPrayerHybridSource(String sourceName, String madhab) {
    return '$sourceName-Methode mit vom Benutzer ausgewählter $madhab Asr-Einstellung';
  }

  @override
  String get diagnosticsCloudDriven => 'Cloud-gesteuert';

  @override
  String get diagnosticsAdhanAudioAssets => 'Adhan Audio-Assets';

  @override
  String get diagnosticsUiAudioAssets => 'UI-Audio-Assets';

  @override
  String get diagnosticsQuranAudioAssets => 'Koran-Audio-Assets';

  @override
  String get diagnosticsAudioAssets => 'Audio-Assets';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count Dateien';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Das Lesen des Manifests ist fehlgeschlagen: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Lokalisierungsgebiete';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count unterstützt';
  }

  @override
  String get diagnosticsQuranDataset => 'Koran-Datensatz';

  @override
  String get diagnosticsQuranSurahs => 'Koran-Suren';

  @override
  String get diagnosticsQuranAyahs => 'Koran-Ayas';

  @override
  String get diagnosticsQuranJuzMetadata => 'Koran-Juz-Metadaten';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Cloud-Tabellen fehlen in Supabase; gebündelter Fallback aktiv';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Cloud-Prüfung fehlgeschlagen: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Cloud-Juz-Metadaten fehlen; gebündelter struktureller Fallback aktiv';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Cloud-Strukturprüfung fehlgeschlagen: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Kalibrierung erforderlich. Drehen Sie das Gerät in Abbildung 8.';

  @override
  String get dailyVerse => 'Täglicher Vers';

  @override
  String get dailyVerseUnavailableTitle => 'Täglicher Vers nicht verfügbar';

  @override
  String get dailyVerseUnavailableBody =>
      'Verifizierter täglicher Versinhalt ist für diesen Build noch nicht konfiguriert. Stellen Sie vor dem Surfen eine Verbindung zur Cloud-Quelle her oder synchronisieren Sie einen verifizierten Cache.';

  @override
  String get todaysIbadah => 'Die heutige Ibadah';

  @override
  String get quickAccess => 'Schnellzugriff';

  @override
  String get assistant => 'Assistent';

  @override
  String get places => 'Orte';

  @override
  String get library => 'Bibliothek';

  @override
  String get analytics => 'Analytik';

  @override
  String get dailyDuas => 'Tägliche Duas';

  @override
  String essentialDuas(String count) {
    return '$count wesentliche Duas';
  }

  @override
  String get duaUnavailableTitle =>
      'Verifizierte Duas sind noch nicht verfügbar';

  @override
  String get duaUnavailableBody =>
      'Verifizierte tägliche Duas wurden noch nicht mit diesem Gerät synchronisiert. Stellen Sie eine Verbindung zur Cloud-Quelle her, um Quell-Duas anstelle eines nicht verifizierten Fallbacks zu laden.';

  @override
  String get duaCategoryQuranic => 'Koran-Dua';

  @override
  String get duaCategoryMorningEvening => 'Morgens und abends';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Schutz';

  @override
  String get duaCategoryBeginning => 'Anfänge';

  @override
  String get duaCategorySleep => 'Schlafen';

  @override
  String get duaCategoryFoodDrink => 'Essen & Trinken';

  @override
  String get duaCategoryForgiveness => 'Vergebung';

  @override
  String get duaCategoryHome => 'Heim';

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
  String get islamicEducation => 'Islamische Bildung';

  @override
  String get sukunAudioTitle => 'Sukun-Klanglandschaften';

  @override
  String get hadithCollections => 'Hadith-Sammlungen';

  @override
  String get hadithSourcePending => 'Verifizierte Quelle steht noch aus';

  @override
  String get hadithUnavailableTitle =>
      'Verifizierte Hadith-Sammlungen sind noch nicht verfügbar';

  @override
  String get hadithUnavailableBody =>
      'Dieser Build hängt immer noch von einem ungeprüften externen Hadith-Feed ab. Das Durchsuchen von Hadithen bleibt deaktiviert, bis ein Quelldatensatz synchronisiert wird.';

  @override
  String get paywallUnlockAll =>
      'Schalten Sie alle Funktionen für Ihre spirituelle Reise frei';

  @override
  String get premiumProductUnavailable =>
      'Das Premiumprodukt ist derzeit nicht verfügbar. Bitte versuchen Sie es später noch einmal.';

  @override
  String get premiumPurchaseFailed =>
      'Der Kauf konnte nicht abgeschlossen werden. Bitte versuchen Sie es erneut.';

  @override
  String get paywallFeature1Title => 'Neuronaler Assistent Plus';

  @override
  String get paywallFeature1Desc =>
      'Unbegrenzte KI-gestützte Fragen und Antworten';

  @override
  String get paywallFeature2Title => 'Unbegrenzt offline';

  @override
  String get paywallFeature2Desc => 'Laden Sie alle Rezitationen herunter';

  @override
  String get paywallFeature3Title => 'Exklusive Designs';

  @override
  String get paywallFeature3Desc => 'Premium-Themen und -Schriftarten';

  @override
  String get paywallFeature4Title => 'Werbefrei';

  @override
  String get paywallFeature4Desc => 'Keine Werbung';

  @override
  String get paywallGetAccess => 'Erhalten Sie lebenslangen Zugang – 1,00 \$';

  @override
  String get restorePurchases => 'Einkäufe wiederherstellen';

  @override
  String get zakatCalculator => 'Zakat-Rechner';

  @override
  String get zakatGold => 'Gold (Altin)';

  @override
  String get zakatSilver => 'Silber (Gümüş)';

  @override
  String get zakatCashBank => 'Bargeld / Bank';

  @override
  String get zakatBusiness => 'Geschäft';

  @override
  String get zakatInvestments => 'Investitionen';

  @override
  String get zakatWeightGrams => 'Gewicht (g)';

  @override
  String get zakatPricePerGram => 'Preis/g';

  @override
  String get zakatTotalAmount => 'Gesamtbetrag';

  @override
  String get zakatInventoryValue => 'Inventarwert';

  @override
  String get zakatDebts => 'Schulden';

  @override
  String get zakatTotal => 'Gesamt';

  @override
  String get calculateZakat => 'Berechnen Sie Zakat';

  @override
  String get nisabNotReached =>
      'Nisab nicht erreicht. Zakat ist nicht obligatorisch.';

  @override
  String get totalZakat => 'Gesamte Zakat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Vermögenswerte: $assets';
  }

  @override
  String get zakatGoldZakat => 'Gold-Zakat';

  @override
  String get zakatSilverZakat => 'Silbernes Zakat';

  @override
  String get zakatCashZakat => 'Bargeld Zakat';

  @override
  String get zakatBusinessZakat => 'Geschäfts-Zakat';

  @override
  String get zakatInvestmentZakat => 'Investitionszakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! Ich bin Ihr islamischer Assistent. Fragen Sie mich nach Gebet, Fasten, Zakat oder anderen islamischen Themen.';

  @override
  String get chatbotLimitReached =>
      'Das tägliche Abfragelimit wurde erreicht. Upgraden Sie unbegrenzt auf Premium.';

  @override
  String get chatbotErrorMsg =>
      'Ich konnte keine Antwort generieren. Bitte versuchen Sie es erneut.';

  @override
  String get chatbotOfflinePrompt =>
      'Die verifizierte Offline-Islam-Wissensdatenbank wird noch kuratiert. Sie können jetzt den Offline-Fallback aktivieren, es werden jedoch nur begrenzte sichere Meldungen angezeigt, bis der Quelldatensatz bereit ist.\n\nMöchten Sie den Offline-Fallback aktivieren?';

  @override
  String get chatbotOfflineSwitched =>
      'Offline-Fallback aktiviert. Verifizierte lokale islamische Antworten sind noch nicht fertig.';

  @override
  String get chatbotOfflineDownloadLabel => 'Offline-Ersatz aktivieren';

  @override
  String get downloadPreparing => 'Download wird vorbereitet...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Sure $surah / $total wird heruntergeladen';
  }

  @override
  String get downloadCompleted =>
      'Alle Suren, die für diesen Rezitator bereits heruntergeladen wurden.';

  @override
  String get offlineQuranAudioPacks => 'Offline-Koran-Audiopakete';

  @override
  String storedOnDeviceMb(String size) {
    return 'Auf dem Gerät gespeichert: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total Suren heruntergeladen';
  }

  @override
  String get redownloadMissingRepair => 'Reparatur/Download fehlt';

  @override
  String get downloadAction => 'Herunterladen';

  @override
  String get resumeDownload => 'Weiter herunterladen';

  @override
  String get deleteDownloadedFiles => 'Heruntergeladene Dateien löschen';

  @override
  String get downloadCancelling => 'Stornierung...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Download für $reciter abgebrochen.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Download für $reciter abgeschlossen.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Download abgeschlossen für $reciter mit $failed fehlgeschlagenen Suren ($downloaded/$total heruntergeladen).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Offlinedateien für $reciter gelöscht.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Verifizierte Koran-Audioquellen sind derzeit nicht verfügbar.';

  @override
  String get quranAudioPlaybackErrorWithConnectionHint =>
      'Die Audiowiedergabe ist fehlgeschlagen. Bitte überprüfen Sie Ihre Verbindung.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Das bestätigte Koran-Audiopaket ist unvollständig ($available/$total). Versuchen Sie es erneut, nachdem der Audiokatalog aktualisiert wurde.';
  }

  @override
  String get chatbotHint => 'Stellen Sie eine Frage...';

  @override
  String get chatbotThinking => 'Denken...';

  @override
  String get sukunMixerSubtitle => 'Natur- und Koranmischer';

  @override
  String get audioPlayFailed => 'Die Audiowiedergabe ist fehlgeschlagen';

  @override
  String get sukunNatureLabel => 'Sukun (Natur)';

  @override
  String get sukunRainOfMercy => 'Regen der Gnade';

  @override
  String get sukunGardenOfPeace => 'Garten des Friedens';

  @override
  String get sukunMidnightCalm => 'Mitternachtsstille';

  @override
  String get sukunOceanTawheed => 'Ozean-Tawheed';

  @override
  String get sukunUnavailableTitle => 'Soundscapes nicht verfügbar';

  @override
  String get sukunUnavailableBody =>
      'Dieser Build enthält noch nicht die erforderlichen Sukun-Soundscape-Assets.';

  @override
  String get prayerCompletion => 'Gebetsabschluss';

  @override
  String get streaks => 'Serien';

  @override
  String get dayStreak => 'Tage in Folge';

  @override
  String get bestStreak => 'Beste Serie';

  @override
  String get chatbotCloudAiLabel => 'Cloud-KI';

  @override
  String get chatbotLocalAiLabel => 'Offline-Ersatz';

  @override
  String get chatbotUseCloudAi => 'Cloud AI verwenden (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Offline-Ersatz aktivieren';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count übrig';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Die Cloud-API ist nicht konfiguriert. Verifizierte Offline-Islamberatung ist noch nicht verfügbar.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Verifizierte lokale islamische Anleitung ist noch nicht verfügbar. Wechseln Sie zu Cloud AI, um Antworten aus Quellen zu erhalten.';

  @override
  String get mosques => 'Moscheen';

  @override
  String get halalFood => 'Halal-Essen';

  @override
  String get placesSearchArea => 'Durchsuchen Sie diesen Bereich';

  @override
  String get nearbyMosques => 'Moscheen in der Nähe';

  @override
  String get islamicSchools => 'Islamische Schulen';

  @override
  String placesFoundCount(String count) {
    return '$count gefunden';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km entfernt';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API-Fehler: $statusCode';
  }

  @override
  String get placesNetworkError =>
      'Netzwerkfehler. Bitte versuchen Sie es erneut.';

  @override
  String get placesLocationRequiredTitle => 'Standort erforderlich';

  @override
  String get placesLocationRequiredBody =>
      'Legen Sie zunächst einen Standort fest, damit in der Nähe befindliche Moscheen, Halal-Essen und islamische Schulen genau gesucht werden können.';

  @override
  String get placesMapTilesUnavailableTitle => 'Kartenkacheln nicht verfügbar';

  @override
  String get placesMapTilesUnavailableBody =>
      'Für diesen Build ist noch keine verifizierte Kartenkachelquelle konfiguriert. Orte in der Nähe können weiterhin von Ihrem gespeicherten Standort geladen werden.';

  @override
  String get placesDataSourceUnavailableTitle => 'Ortsdaten nicht verfügbar';

  @override
  String get placesDataSourceUnavailableBody =>
      'Für diesen Build ist noch kein Datenendpunkt für verifizierte Orte konfiguriert. Legen Sie PLACES_OVERPASS_API_URL auf einen zugelassenen Proxy oder Anbieter fest, bevor Sie die Suche in der Nähe aktivieren.';

  @override
  String get unknownPlaceName => 'Unbekannter Name';

  @override
  String get islamicPlaceFallback => 'Islamischer Ort';

  @override
  String get asmaMeaning1 =>
      'Der Allerbarmer, der allen Geschöpfen in dieser Welt Barmherzigkeit erweist.';

  @override
  String get asmaMeaning2 =>
      'Der besonders Barmherzige, der den Gläubigen im Jenseits grenzenlose Gnade und Güte schenkt.';

  @override
  String get asmaMeaning3 =>
      'Der König, dem Schöpfung, Besitz und Herrschaft uneingeschränkt gehören.';

  @override
  String get asmaMeaning4 =>
      'Der Heilige, frei von jedem Mangel und jeder Unvollkommenheit.';

  @override
  String get asmaMeaning5 =>
      'Der Frieden Gebende, der vor Gefahren bewahrt und Heil schenkt.';

  @override
  String get asmaMeaning6 =>
      'Der Sicherheit Gebende, der Vertrauen schenkt, schützt und dessen Verheißung zuverlässig ist.';

  @override
  String get asmaMeaning7 =>
      'Der Wachsame, der alles sieht, bewahrt und die Schöpfung verwaltet.';

  @override
  String get asmaMeaning8 =>
      'Der Allmächtige, dem Ehre gehört und der über alles siegreich ist.';

  @override
  String get asmaMeaning9 =>
      'Der Allgewaltige, der Seinen Willen durchsetzt und Zerbrochenes wiederherstellt.';

  @override
  String get asmaMeaning10 => 'Der Erhabene, dessen Größe ohnegleichen ist.';

  @override
  String get asmaMeaning11 =>
      'Der Schöpfer, der aus dem Nichts erschafft und jedes Wesen bestimmt.';

  @override
  String get asmaMeaning12 =>
      'Der Hervorbringer, der alles vollkommen und in Harmonie erschafft.';

  @override
  String get asmaMeaning13 =>
      'Der Gestalter, der den Geschöpfen ihre Form und Einzigartigkeit gibt.';

  @override
  String get asmaMeaning14 =>
      'Der stets Vergebende, der Sünden immer wieder vergibt.';

  @override
  String get asmaMeaning15 =>
      'Der Bezwinger, dem alles unterworfen ist und den niemand besiegen kann.';

  @override
  String get asmaMeaning16 =>
      'Der Freigebige, der ohne Gegenleistung reichlich schenkt.';

  @override
  String get asmaMeaning17 =>
      'Der Versorger, der Nahrung und Unterhalt für Körper und Seele gibt.';

  @override
  String get asmaMeaning18 =>
      'Der Öffnende, der Türen des Guten öffnet und gerecht entscheidet.';

  @override
  String get asmaMeaning19 =>
      'Der Allwissende, der jedes Ding vollkommen kennt.';

  @override
  String get asmaMeaning20 =>
      'Der Verengende, der nach Weisheit Enge und Zurückhaltung bestimmt.';

  @override
  String get asmaMeaning21 =>
      'Der Weitende, der nach Weisheit Fülle, Erleichterung und Weite schenkt.';

  @override
  String get asmaMeaning22 =>
      'Der Erniedrigende, der nach Gerechtigkeit herabsetzt.';

  @override
  String get asmaMeaning23 =>
      'Der Erhöhende, der Ehre schenkt und erhöht, wen Er will.';

  @override
  String get asmaMeaning24 =>
      'Der Ehrende, der Würde, Ehre und Stärke verleiht.';

  @override
  String get asmaMeaning25 =>
      'Der Demütigende, der nach Gerechtigkeit erniedrigt, wen Er will.';

  @override
  String get asmaMeaning26 =>
      'Der Allhörende, der jedes offene und verborgene Wort hört.';

  @override
  String get asmaMeaning27 =>
      'Der Allsehende, der alles Sichtbare und Verborgene sieht.';

  @override
  String get asmaMeaning28 =>
      'Der Richter, der endgültig urteilt und Wahrheit von Falschheit trennt.';

  @override
  String get asmaMeaning29 =>
      'Der Gerechte, der vollkommen gerecht handelt und alles an seinen Platz setzt.';

  @override
  String get asmaMeaning30 =>
      'Der Feinfühlige, der gütig handelt und alle Feinheiten kennt.';

  @override
  String get asmaMeaning31 =>
      'Der Allkundige, dem das Innere und Äußere aller Dinge bekannt ist.';

  @override
  String get asmaMeaning32 =>
      'Der Nachsichtige, der nicht vorschnell straft und milde handelt.';

  @override
  String get asmaMeaning33 =>
      'Der Gewaltige, dessen Wesen und Eigenschaften unermesslich erhaben sind.';

  @override
  String get asmaMeaning34 =>
      'Der große Vergebende, dessen Vergebung weit und reich ist.';

  @override
  String get asmaMeaning35 =>
      'Der Dank Annehmende, der kleine gute Taten mit großem Lohn vergilt.';

  @override
  String get asmaMeaning36 =>
      'Der Allerhöchste, über jede Vorstellung erhaben.';

  @override
  String get asmaMeaning37 => 'Der Große, dessen Größe ohnegleichen ist.';

  @override
  String get asmaMeaning38 => 'Der Bewahrer, der alles schützt und erhält.';

  @override
  String get asmaMeaning39 =>
      'Der Ernährer, der jedem Geschöpf seinen Unterhalt zuteilt.';

  @override
  String get asmaMeaning40 =>
      'Der Abrechnende und Genügende, der die Angelegenheiten Seiner Diener vollkommen wahrnimmt.';

  @override
  String get asmaMeaning41 =>
      'Der Majestätische, Besitzer von Erhabenheit und Würde.';

  @override
  String get asmaMeaning42 =>
      'Der Großzügige, dessen Güte und Gaben reichlich sind.';

  @override
  String get asmaMeaning43 =>
      'Der Beobachtende, der jedes Wesen in jedem Augenblick sieht und bewacht.';

  @override
  String get asmaMeaning44 => 'Der Erhörende, der Gebete und Bitten annimmt.';

  @override
  String get asmaMeaning45 =>
      'Der Umfassende, dessen Wissen und Barmherzigkeit alles umschließen.';

  @override
  String get asmaMeaning46 =>
      'Der Allweise, der jedes Werk mit vollkommener Weisheit erschafft.';

  @override
  String get asmaMeaning47 =>
      'Der Liebevolle, der Seine Diener liebt und der Liebe am würdigsten ist.';

  @override
  String get asmaMeaning48 =>
      'Der Ruhmwürdige, dem jedes Lob gebührt und dessen Rang groß ist.';

  @override
  String get asmaMeaning49 =>
      'Der Auferwecker, der Tote zum Leben erweckt und Gesandte entsendet.';

  @override
  String get asmaMeaning50 =>
      'Der Zeuge, der überall gegenwärtig ist und alles bezeugt.';

  @override
  String get asmaMeaning51 =>
      'Der Wahre, dessen Dasein unveränderlich ist und der die Wahrheit offenbar macht.';

  @override
  String get asmaMeaning52 =>
      'Der Sachwalter, der die Angelegenheiten derer zum besten Ende führt, die auf Ihn vertrauen.';

  @override
  String get asmaMeaning53 =>
      'Der Starke, dessen Macht unübertroffen ist und nie abnimmt.';

  @override
  String get asmaMeaning54 =>
      'Der Feste, Quelle aller Stärke und unerschütterlicher Macht.';

  @override
  String get asmaMeaning55 => 'Der schützende Freund, Helfer und Beistand.';

  @override
  String get asmaMeaning56 =>
      'Der Lobwürdige, dem jedes Lob und jeder Dank gebührt.';

  @override
  String get asmaMeaning57 =>
      'Der Aufzählende, der Anzahl und Maß aller Dinge kennt.';

  @override
  String get asmaMeaning58 =>
      'Der Urheber, der die Schöpfung ohne Vorbild und ohne Stoff beginnt.';

  @override
  String get asmaMeaning59 =>
      'Der Wiedererschaffende, der nach dem Vergehen erneut zum Leben bringt.';

  @override
  String get asmaMeaning60 =>
      'Der Lebensspender, der belebt und Leben schenkt.';

  @override
  String get asmaMeaning61 =>
      'Der Tod Bringende, der jedes Lebewesen den Tod kosten lässt.';

  @override
  String get asmaMeaning62 =>
      'Der Lebendige, der ewige und unvergängliche Leben besitzt.';

  @override
  String get asmaMeaning63 =>
      'Der Bestehende, der alles erhält und aus Sich selbst besteht.';

  @override
  String get asmaMeaning64 =>
      'Der Findende, dem nichts fehlt und der alles findet, was Er will.';

  @override
  String get asmaMeaning65 =>
      'Der Edle, dessen Würde, Ruhm und Großzügigkeit überreich sind.';

  @override
  String get asmaMeaning66 =>
      'Der Eine, ohne Teilhaber in Wesen, Eigenschaften und Taten.';

  @override
  String get asmaMeaning67 =>
      'Der Einzigartige, die betonte Einheit ohne Gleichen.';

  @override
  String get asmaMeaning68 =>
      'Der Unabhängige, auf den alle angewiesen sind und der niemanden braucht.';

  @override
  String get asmaMeaning69 =>
      'Der Allmächtige, der alles erschaffen kann, wie Er will.';

  @override
  String get asmaMeaning70 =>
      'Der Bestimmende, der frei verfügt und über alles Macht hat.';

  @override
  String get asmaMeaning71 =>
      'Der Voranstellende, der erhöht und vorzieht, wen Er will.';

  @override
  String get asmaMeaning72 =>
      'Der Zurückstellende, der verzögert und zurücksetzt, wen Er will.';

  @override
  String get asmaMeaning73 => 'Der Erste, ohne Anfang Seines Daseins.';

  @override
  String get asmaMeaning74 => 'Der Letzte, ohne Ende Seines Daseins.';

  @override
  String get asmaMeaning75 =>
      'Der Offenbare, dessen Zeichen und Wahrheit klar erkennbar sind.';

  @override
  String get asmaMeaning76 =>
      'Der Verborgene, dessen erhabene Wirklichkeit der Verstand nicht erfassen kann.';

  @override
  String get asmaMeaning77 =>
      'Der Schutzherr und Verwalter, der die ganze Schöpfung lenkt.';

  @override
  String get asmaMeaning78 => 'Der Hocherhabene, unendlich über allem.';

  @override
  String get asmaMeaning79 =>
      'Der Gütige, Quelle von Güte, Wohltat und rechtschaffenem Handeln.';

  @override
  String get asmaMeaning80 =>
      'Der Reue Annehmende, der Reue annimmt und Sünden vergibt.';

  @override
  String get asmaMeaning81 =>
      'Der Vergelter, der den Unterdrückern gerecht Vergeltung gibt.';

  @override
  String get asmaMeaning82 =>
      'Der Verzeihende, der Sünden tilgt und reichlich vergibt.';

  @override
  String get asmaMeaning83 =>
      'Der Mitfühlende, voller Barmherzigkeit und liebevoller Fürsorge.';

  @override
  String get asmaMeaning84 =>
      'Der Besitzer der Herrschaft, dem jedes Reich und jedes Wesen gehört.';

  @override
  String get asmaMeaning85 =>
      'Der Herr von Majestät und Ehre, Besitzer erhabener Größe und großzügiger Gaben.';

  @override
  String get asmaMeaning86 =>
      'Der Ausgleichende, der gerecht urteilt und alles in vollkommener Harmonie ordnet.';

  @override
  String get asmaMeaning87 =>
      'Der Versammelnde, der die Geschöpfe am Tag der Auferstehung zusammenbringt.';

  @override
  String get asmaMeaning88 =>
      'Der Reiche, völlig unabhängig und auf niemanden angewiesen.';

  @override
  String get asmaMeaning89 =>
      'Der Reich Machende, der Bedürfnisse erfüllt und reich macht.';

  @override
  String get asmaMeaning90 =>
      'Der Hindernde, der nach Weisheit zurückhält und Schaden abwehrt.';

  @override
  String get asmaMeaning91 =>
      'Der Schaden Zulassende, der nach Weisheit Prüfung und Schaden eintreten lässt.';

  @override
  String get asmaMeaning92 =>
      'Der Nutzende, der Nutzen, Wohltat und Hilfe schenkt.';

  @override
  String get asmaMeaning93 => 'Das Licht, das Himmel, Erde und Herzen erhellt.';

  @override
  String get asmaMeaning94 =>
      'Der Rechtleitende, der auf den geraden Weg führt.';

  @override
  String get asmaMeaning95 =>
      'Der unvergleichliche Schöpfer, der ohne Vorbild Neues hervorbringt.';

  @override
  String get asmaMeaning96 => 'Der Bleibende, dessen Dasein ewig fortbesteht.';

  @override
  String get asmaMeaning97 =>
      'Der Erbe, dem alles nach dem Vergehen der Geschöpfe bleibt.';

  @override
  String get asmaMeaning98 =>
      'Der Führer zur Rechtschaffenheit, der alles mit vollkommener Weisheit leitet.';

  @override
  String get asmaMeaning99 =>
      'Der Geduldige, der nicht zur Strafe eilt und in vollkommener Nachsicht handelt.';
}
