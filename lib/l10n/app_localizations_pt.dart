// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Way Of Allah';

  @override
  String get splashTagline => 'Caminho Islâmico da Luz';

  @override
  String get home => 'Home';

  @override
  String get quran => 'Quran';

  @override
  String get qibla => 'Qibla';

  @override
  String get zikr => 'Dhikr';

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
  String get fajr => 'Fajr';

  @override
  String get sunrise => 'Nascer do sol';

  @override
  String get dhuhr => 'Duhr';

  @override
  String get asr => 'Asr';

  @override
  String get maghrib => 'Magreb';

  @override
  String get isha => 'Isha';

  @override
  String prayerNotificationTitle(String prayerName) {
    return 'Hora de $prayerName';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return 'É hora de orar $prayerName.';
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
  String get systemDefault => 'Padrão do sistema';

  @override
  String get currentLocation => 'Current Location (GPS)';

  @override
  String get locationServiceDisabled =>
      'O serviço de localização está desativado.';

  @override
  String get locationPermissionDenied => 'Permissão de localização negada.';

  @override
  String get locationDetectionFailed =>
      'Não foi possível detectar sua localização. Escolha uma cidade manualmente ou tente novamente.';

  @override
  String citiesCount(String count) {
    return '$count cidades';
  }

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get noResults => 'Nenhum resultado encontrado';

  @override
  String get loading => 'Carregando...';

  @override
  String get error => 'Erro';

  @override
  String get appErrorOccurred => 'Ocorreu um erro';

  @override
  String get appUnknownError => 'Erro desconhecido';

  @override
  String get quranLoadFailed =>
      'O conteúdo do Alcorão não pôde ser carregado. Por favor, tente novamente.';

  @override
  String get retry => 'Retry';

  @override
  String get refreshAction => 'Atualizar';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Excluir';

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
    return 'Aia $ayah';
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
  String get tafsirLoading => 'Carregando tafsir...';

  @override
  String get tafsirSourceLabel => 'Fonte Tafsir';

  @override
  String get tafsirNoSurahFound => 'Nenhum tafsir encontrado para esta surata.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return 'Nenhum tafsir encontrado para ayah $ayah.';
  }

  @override
  String get tafsirLoadFailed => 'Não foi possível carregar Tafsir.';

  @override
  String get tafsirNoTextForAyah => 'Nenhum texto tafsir para este versículo.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Baixando tafsir $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Carregando tafsir $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'A fonte Tafsir retornou um erro HTTP $statusCode.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'A fonte tafsir selecionada não retornou nenhuma entrada.';

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
      'outros oram: ‘Nosso Senhor, dá-nos o bem neste mundo e no outro, e protege-nos do tormento do Fogo.’';

  @override
  String get duaMeaning2 =>
      'Deus não sobrecarrega nenhuma alma com mais do que ela pode suportar: cada uma ganha o bem que fez e sofre o mal - \'Senhor, não nos repreenda se esquecermos ou cometermos erros. Senhor, não nos sobrecarregue como você sobrecarregou aqueles que nos precederam. Senhor, não nos sobrecarregue com mais do que temos forças para suportar. Perdoe-nos, perdoe-nos e tenha piedade de nós. Você é nosso Protetor, então ajude-nos contra os descrentes.’';

  @override
  String get duaMeaning3 =>
      '\'Nosso Senhor, não deixe nossos corações se desviarem depois de nos guiar. Conceda-nos Sua misericórdia: Você é o Sempre Doador.';

  @override
  String get duaMeaning4 =>
      'Senhor, conceda que eu e meus descendentes possamos continuar a oração. Nosso Senhor, aceite meu pedido.';

  @override
  String get duaMeaning5 =>
      'e abaixe sua asa com humildade para com eles e diga: \'Senhor, tenha misericórdia deles, assim como eles cuidaram de mim quando eu era pequeno.\'';

  @override
  String get duaMeaning6 =>
      'exaltado seja Deus, aquele que verdadeiramente está no controle. [Profeta], não se apresse em recitar antes que a revelação esteja totalmente completa, mas diga: ‘Senhor, aumenta-me em conhecimento!’';

  @override
  String get duaMeaning7 =>
      'Diga [Profeta], ‘Senhor, perdoe e tenha misericórdia: Tu és o mais misericordioso de todos.’';

  @override
  String get duaMeaning8 =>
      'aqueles que oram: ‘Nosso Senhor, dá-nos alegria em nossos cônjuges e filhos. Faz-nos bons exemplos para aqueles que te conhecem’.';

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
  String get hadith => 'Hadith';

  @override
  String get hadithCollection => 'Coleção Hadith';

  @override
  String get hadithBooks => 'Livros Hadith';

  @override
  String get searchHadith => 'Pesquisar Hadith';

  @override
  String get asmaulHusna => 'Asma-ul-Husna';

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
  String get openInYoutube => 'Abrir no YouTube';

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
    return '$hours h $minutes min';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '$minutes min';
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
  String get islamicNewYear => 'Ano Novo Islâmico';

  @override
  String get mawlidAnNabi => 'Mawlid Kandili';

  @override
  String get specialDayDateRamadanStart => '1 Ramadã';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramadã';

  @override
  String get specialDayDateEidAlFitr => '1 Shawwal';

  @override
  String get specialDayDateEidAlAdha => '10Dhul Hijjah';

  @override
  String get specialDayDateIslamicNewYear => '1 Muarram';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rabiul Awwal';

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
    return 'Erro de bússola: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'O sensor da bússola não está disponível neste dispositivo.';

  @override
  String get qiblaLocationRequiredTitle => 'Localização necessária para Qibla';

  @override
  String get qiblaLocationRequiredBody =>
      'Defina sua localização real antes de usar a bússola Qibla para que a direção possa ser calculada com precisão.';

  @override
  String get adhanNotificationChannelName => 'Notificações Adhan';

  @override
  String get adhanNotificationChannelDescription =>
      'Alertas de tempo de oração com som adhan.';

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
  String get theme => 'Tema';

  @override
  String get lightMode => 'Modo claro';

  @override
  String get darkMode => 'Modo escuro';

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
    return 'Confira $appName: O melhor aplicativo de estilo de vida islâmico! $url';
  }

  @override
  String get downloadManager => 'Gerenciador de downloads';

  @override
  String get downloads => 'Downloads';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadComplete => 'Download completo';

  @override
  String get downloadFailed => 'Falha no download';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get noInternet => 'Sem conexão com a Internet';

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
  String get tapToCount => 'Toque para contar';

  @override
  String get zikrCompletedMashAllah => 'Concluído! MashAllah';

  @override
  String get zikrMeaningSubhanAllah =>
      'Allah está muito acima de toda imperfeição.';

  @override
  String get zikrMeaningAlhamdulillah => 'Todo louvor pertence a Allah.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah é o Maior.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Não há deus senão Alá.';

  @override
  String get zikrMeaningAstaghfirullah => 'Busco o perdão de Allah.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Não há poder nem força exceto através de Allah.';

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
  String get offlineDownloadManager => 'Gerenciador de download off-line';

  @override
  String get manageDatasets => 'Manage massive offline audio & dataset packs.';

  @override
  String get freeStorage => 'Libere armazenamento interno do dispositivo.';

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
  String get audioVoice => 'Voz de áudio';

  @override
  String get audioVoiceMisharyAlafasy => 'Masculino (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Masculino (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Masculino (Sudais)';

  @override
  String get fajrAngle => 'Fajr Angle';

  @override
  String get ishaAngle => 'Isha Angle';

  @override
  String get qiblaCalibration => 'Calibração Qibla';

  @override
  String get compassSmoothing => 'Suavização de bússola';

  @override
  String get reduceSensorJitter =>
      'Reduce sensor jitter for a steadier needle.';

  @override
  String get calibrationOffset => 'Deslocamento de calibração';

  @override
  String currentOffset(Object offset) {
    return 'Atual: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Ajuste se sua bússola precisar de correção manual. Os valores positivos giram no sentido horário.';

  @override
  String get apply => 'Apply';

  @override
  String get resetOnboarding => 'Reset Onboarding';

  @override
  String get rerunSetup => 'Re-run the initial setup process.';

  @override
  String get diagnostics => 'Diagnóstico';

  @override
  String get diagnosticsNotSet => 'Não definido';

  @override
  String get diagnosticsPrayerProfile => 'Perfil de Oração';

  @override
  String get diagnosticsPrayerSource => 'Autoridade de Oração';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Personalizado / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Ângulos personalizados manuais (sem fonte institucional)';

  @override
  String get diagnosticsCloudDriven => 'Orientado pela nuvem';

  @override
  String get diagnosticsAdhanAudioAssets => 'Recursos de áudio Adhan';

  @override
  String get diagnosticsUiAudioAssets => 'Ativos de áudio da IU';

  @override
  String get diagnosticsQuranAudioAssets => 'Ativos de áudio do Alcorão';

  @override
  String get diagnosticsAudioAssets => 'Ativos de áudio';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count arquivos';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Falha na leitura do manifesto: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Locais de localização';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count compatíveis';
  }

  @override
  String get diagnosticsQuranDataset => 'Conjunto de dados do Alcorão';

  @override
  String get diagnosticsQuranSurahs => 'Suratas do Alcorão';

  @override
  String get diagnosticsQuranAyahs => 'Versículos do Alcorão';

  @override
  String get diagnosticsQuranJuzMetadata => 'Metadados dos juz do Alcorão';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Tabelas de nuvem ausentes no Supabase; fallback empacotado ativo';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Falha na verificação da nuvem: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Faltam metadados juz na nuvem; fallback estrutural agrupado ativo';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Falha na verificação estrutural da nuvem: $error';
  }

  @override
  String get healthCheckDesc => 'Run health checks and view system status.';

  @override
  String get qiblaAligned => 'Qibla Aligned';

  @override
  String get rotateToFindQibla => 'Rotate to Find Qibla';

  @override
  String get calibrationRequiredFigure8 =>
      'Calibração necessária. Gire o dispositivo na figura 8.';

  @override
  String get dailyVerse => 'Versículo Diário';

  @override
  String get todaysIbadah => 'Ibadah de hoje';

  @override
  String get quickAccess => 'Acesso rápido';

  @override
  String get assistant => 'Assistente';

  @override
  String get places => 'Lugares';

  @override
  String get library => 'Biblioteca';

  @override
  String get analytics => 'Análise';

  @override
  String get dailyDuas => 'Duas diárias';

  @override
  String essentialDuas(String count) {
    return '$count duas essenciais';
  }

  @override
  String get duaUnavailableTitle =>
      'Duas verificadas ainda não estão disponíveis';

  @override
  String get duaUnavailableBody =>
      'As duas diárias verificadas ainda não foram sincronizadas com este dispositivo. Conecte-se à fonte da nuvem para carregar duas de origem em vez de um substituto não verificado.';

  @override
  String get duaCategoryQuranic => 'dua do Alcorão';

  @override
  String get duaCategoryMorningEvening => 'Manhã e Noite';

  @override
  String get duaCategoryTasbih => 'Tasbih';

  @override
  String get duaCategoryProtection => 'Proteção';

  @override
  String get duaCategoryBeginning => 'Começos';

  @override
  String get duaCategorySleep => 'Dormir';

  @override
  String get duaCategoryFoodDrink => 'Comida e bebida';

  @override
  String get duaCategoryForgiveness => 'Perdão';

  @override
  String get duaCategoryHome => 'Lar';

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
  String get islamicEducation => 'Educação Islâmica';

  @override
  String get sukunAudioTitle => 'Paisagens Sonoras de Sukun';

  @override
  String get hadithCollections => 'Coleções de Hadith';

  @override
  String get hadithSourcePending => 'Fonte verificada pendente';

  @override
  String get hadithUnavailableTitle =>
      'Coleções de hadith verificadas ainda não estão disponíveis';

  @override
  String get hadithUnavailableBody =>
      'Esta compilação ainda depende de um feed de hadith externo não verificado. A navegação Hadith permanece desativada até que um conjunto de dados de origem seja sincronizado.';

  @override
  String get paywallUnlockAll =>
      'Desbloqueie todos os recursos para sua jornada espiritual';

  @override
  String get premiumProductUnavailable =>
      'O produto premium não está disponível no momento. Por favor, tente novamente mais tarde.';

  @override
  String get premiumPurchaseFailed =>
      'Não foi possível concluir a compra. Por favor, tente novamente.';

  @override
  String get paywallFeature1Title => 'Assistente Neural Plus';

  @override
  String get paywallFeature1Desc =>
      'Perguntas e respostas ilimitadas com tecnologia de IA';

  @override
  String get paywallFeature2Title => 'Off-line ilimitado';

  @override
  String get paywallFeature2Desc => 'Baixe todas as recitações';

  @override
  String get paywallFeature3Title => 'Projetos Exclusivos';

  @override
  String get paywallFeature3Desc => 'Temas e fontes premium';

  @override
  String get paywallFeature4Title => 'Sem anúncios';

  @override
  String get paywallFeature4Desc => 'Zero anúncios';

  @override
  String get paywallGetAccess => 'Obtenha acesso vitalício – \$ 1,00';

  @override
  String get restorePurchases => 'Restaurar compras';

  @override
  String get zakatCalculator => 'Calculadora Zakat';

  @override
  String get zakatGold => 'Ouro (Altin)';

  @override
  String get zakatSilver => 'Prata (Gümüş)';

  @override
  String get zakatCashBank => 'Dinheiro / Banco';

  @override
  String get zakatBusiness => 'Negócios';

  @override
  String get zakatInvestments => 'Investimentos';

  @override
  String get zakatWeightGrams => 'Peso (g)';

  @override
  String get zakatPricePerGram => 'Preço/g';

  @override
  String get zakatTotalAmount => 'Montante total';

  @override
  String get zakatInventoryValue => 'Valor do estoque';

  @override
  String get zakatDebts => 'Dívidas';

  @override
  String get zakatTotal => 'Montante total';

  @override
  String get calculateZakat => 'Calcular Zakat';

  @override
  String get nisabNotReached =>
      'Nisab não foi alcançado. O Zakat não é obrigatório.';

  @override
  String get totalZakat => 'Zakat total';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisab: $nisab • Ativos: $assets';
  }

  @override
  String get zakatGoldZakat => 'Zakat Ouro';

  @override
  String get zakatSilverZakat => 'Zakat de prata';

  @override
  String get zakatCashZakat => 'Dinheiro Zakat';

  @override
  String get zakatBusinessZakat => 'Zakat de negócios';

  @override
  String get zakatInvestmentZakat => 'Investimento Zakat';

  @override
  String get chatbotGreeting =>
      'Assalamu Alaikum! Eu sou seu assistente islâmico. Pergunte-me sobre oração, jejum, zakat ou qualquer tópico islâmico.';

  @override
  String get chatbotLimitReached =>
      'Limite de consultas diárias atingido. Atualize para Premium de forma ilimitada.';

  @override
  String get chatbotErrorMsg =>
      'Não consegui gerar uma resposta. Por favor, tente novamente.';

  @override
  String get chatbotOfflinePrompt =>
      'A base de conhecimento islâmica off-line verificada ainda está sendo selecionada. Você pode ativar o substituto off-line agora, mas ele mostrará apenas mensagens seguras limitadas até que o conjunto de dados de origem esteja pronto.\n\nGostaria de ativar o substituto off-line?';

  @override
  String get chatbotOfflineSwitched =>
      'Fallback off-line ativado. As respostas islâmicas locais verificadas ainda não estão prontas.';

  @override
  String get chatbotOfflineDownloadLabel => 'Ativar substituto off-line';

  @override
  String get downloadPreparing => 'Preparando download...';

  @override
  String downloadingSurah(String surah, String total) {
    return 'Baixando surata $surah / $total';
  }

  @override
  String get downloadCompleted =>
      'Todas as suratas já baixadas para este recitador.';

  @override
  String get offlineQuranAudioPacks => 'Pacotes de áudio offline do Alcorão';

  @override
  String storedOnDeviceMb(String size) {
    return 'Armazenado no dispositivo: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$downloaded / $total suratas baixadas';
  }

  @override
  String get redownloadMissingRepair => 'Reparar/baixar ausente';

  @override
  String get downloadAction => 'Baixar';

  @override
  String get resumeDownload => 'Retomar download';

  @override
  String get deleteDownloadedFiles => 'Excluir arquivos baixados';

  @override
  String get downloadCancelling => 'Cancelando...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return 'Download cancelado para $reciter.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return 'Download concluído para $reciter.';
  }

  @override
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return 'Download concluído para $reciter com $failed suratas com falha (baixado de $downloaded/$total).';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return 'Arquivos off-line excluídos para $reciter.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Fontes de áudio verificadas do Alcorão não estão disponíveis no momento.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'O pacote de áudio verificado do Alcorão está incompleto ($available/$total). Atualize a semente da nuvem e tente novamente.';
  }

  @override
  String get chatbotHint => 'Faça uma pergunta...';

  @override
  String get chatbotThinking => 'Pensando...';

  @override
  String get sukunMixerSubtitle => 'Misturador de Natureza e Alcorão';

  @override
  String get audioPlayFailed => 'Falha na reprodução de áudio';

  @override
  String get sukunNatureLabel => 'Sukun (Natureza)';

  @override
  String get sukunRainOfMercy => 'Chuva de Misericórdia';

  @override
  String get sukunGardenOfPeace => 'Jardim da Paz';

  @override
  String get sukunMidnightCalm => 'Calma da meia-noite';

  @override
  String get sukunOceanTawheed => 'Oceano Tawhid';

  @override
  String get sukunUnavailableTitle => 'Paisagens sonoras indisponíveis';

  @override
  String get sukunUnavailableBody =>
      'Esta compilação ainda não inclui os recursos de paisagem sonora Sukun necessários.';

  @override
  String get prayerCompletion => 'Orações concluídas';

  @override
  String get streaks => 'Sequências';

  @override
  String get dayStreak => 'Dias seguidos';

  @override
  String get bestStreak => 'Melhor sequência';

  @override
  String get chatbotCloudAiLabel => 'IA na nuvem';

  @override
  String get chatbotLocalAiLabel => 'Reserva off-line';

  @override
  String get chatbotUseCloudAi => 'Usar IA na nuvem (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Ativar substituto off-line';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count restante';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'A API da nuvem não está configurada. A orientação islâmica off-line verificada ainda não está disponível.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] A orientação islâmica local verificada ainda não está disponível. Mude para Cloud AI para obter respostas de origem.';

  @override
  String get mosques => 'Mesquitas';

  @override
  String get halalFood => 'Comida Halal';

  @override
  String get placesSearchArea => 'Pesquisar esta área';

  @override
  String get nearbyMosques => 'Mesquitas próximas';

  @override
  String get islamicSchools => 'Escolas Islâmicas';

  @override
  String placesFoundCount(String count) {
    return '$count encontrado';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km de distância';
  }

  @override
  String placesApiError(String statusCode) {
    return 'Erro de API: $statusCode';
  }

  @override
  String get placesNetworkError => 'Erro de rede. Por favor, tente novamente.';

  @override
  String get placesLocationRequiredTitle => 'Local obrigatório';

  @override
  String get placesLocationRequiredBody =>
      'Defina primeiro um local para que mesquitas próximas, comida halal e escolas islâmicas possam ser pesquisadas com precisão.';

  @override
  String get placesMapTilesUnavailableTitle => 'Blocos de mapa indisponíveis';

  @override
  String get placesMapTilesUnavailableBody =>
      'Uma origem de bloco de mapa verificada ainda não está configurada para esta compilação. Os lugares próximos ainda podem ser carregados a partir do seu local salvo.';

  @override
  String get placesDataSourceUnavailableTitle =>
      'Dados de lugares indisponíveis';

  @override
  String get placesDataSourceUnavailableBody =>
      'Um endpoint de dados de locais verificados ainda não está configurado para esta compilação. Defina PLACES_OVERPASS_API_URL como um proxy ou provedor aprovado antes de ativar a pesquisa nas proximidades.';

  @override
  String get unknownPlaceName => 'Nome desconhecido';

  @override
  String get islamicPlaceFallback => 'Lugar Islâmico';

  @override
  String get asmaMeaning1 => 'O Beneficente';

  @override
  String get asmaMeaning2 => 'O Misericordioso';

  @override
  String get asmaMeaning3 => 'O Rei / Senhor Eterno';

  @override
  String get asmaMeaning4 => 'O Santíssimo';

  @override
  String get asmaMeaning5 => 'A Fonte da Paz';

  @override
  String get asmaMeaning6 => 'O Doador de Segurança';

  @override
  String get asmaMeaning7 => 'O Guardião';

  @override
  String get asmaMeaning8 => 'O Precioso / O Mais Poderoso';

  @override
  String get asmaMeaning9 => 'O Compeller';

  @override
  String get asmaMeaning10 => 'O melhor';

  @override
  String get asmaMeaning11 => 'O Criador';

  @override
  String get asmaMeaning12 => 'O Criador do Pedido';

  @override
  String get asmaMeaning13 => 'O Moldador da Beleza';

  @override
  String get asmaMeaning14 => 'O Perdoador';

  @override
  String get asmaMeaning15 => 'O Subjugador';

  @override
  String get asmaMeaning16 => 'O Doador de Tudo';

  @override
  String get asmaMeaning17 => 'O Sustentador';

  @override
  String get asmaMeaning18 => 'O abridor';

  @override
  String get asmaMeaning19 => 'O Conhecedor de Tudo';

  @override
  String get asmaMeaning20 => 'O Constritor';

  @override
  String get asmaMeaning21 => 'O Apaziguador';

  @override
  String get asmaMeaning22 => 'O Humilde';

  @override
  String get asmaMeaning23 => 'O Exaltador';

  @override
  String get asmaMeaning24 => 'O Outorgador de Honra';

  @override
  String get asmaMeaning25 => 'O Humilhador';

  @override
  String get asmaMeaning26 => 'O Ouvinte de Todos';

  @override
  String get asmaMeaning27 => 'O Vidente de Tudo';

  @override
  String get asmaMeaning28 => 'O Juiz';

  @override
  String get asmaMeaning29 => 'O Justo';

  @override
  String get asmaMeaning30 => 'O Sutil';

  @override
  String get asmaMeaning31 => 'Todos Conscientes';

  @override
  String get asmaMeaning32 => 'O Antecedente';

  @override
  String get asmaMeaning33 => 'O Magnífico';

  @override
  String get asmaMeaning34 => 'O Grande Perdoador';

  @override
  String get asmaMeaning35 => 'O recompensador da gratidão';

  @override
  String get asmaMeaning36 => 'O mais alto';

  @override
  String get asmaMeaning37 => 'O melhor';

  @override
  String get asmaMeaning38 => 'O Preservador';

  @override
  String get asmaMeaning39 => 'O Nutridor';

  @override
  String get asmaMeaning40 => 'O Contador';

  @override
  String get asmaMeaning41 => 'O Majestoso';

  @override
  String get asmaMeaning42 => 'O Generoso';

  @override
  String get asmaMeaning43 => 'O Vigilante';

  @override
  String get asmaMeaning44 => 'O Respondente à Oração';

  @override
  String get asmaMeaning45 => 'A compreensão total';

  @override
  String get asmaMeaning46 => 'O Perfeitamente Sábio';

  @override
  String get asmaMeaning47 => 'O Amado';

  @override
  String get asmaMeaning48 => 'O Mais Glorioso';

  @override
  String get asmaMeaning49 => 'O Ressurreitor';

  @override
  String get asmaMeaning50 => 'A Testemunha';

  @override
  String get asmaMeaning51 => 'A verdade';

  @override
  String get asmaMeaning52 => 'O Administrador Totalmente Suficiente';

  @override
  String get asmaMeaning53 => 'O Possuidor de Toda Força';

  @override
  String get asmaMeaning54 => 'O Forte';

  @override
  String get asmaMeaning55 => 'O Protetor';

  @override
  String get asmaMeaning56 => 'Os Elogiados';

  @override
  String get asmaMeaning57 => 'O Avaliador';

  @override
  String get asmaMeaning58 => 'O Originador';

  @override
  String get asmaMeaning59 => 'O Restaurador';

  @override
  String get asmaMeaning60 => 'O Doador da Vida';

  @override
  String get asmaMeaning61 => 'O tirador de vidas';

  @override
  String get asmaMeaning62 => 'O Sempre Vivo';

  @override
  String get asmaMeaning63 => 'O Sustentador Autossustentável';

  @override
  String get asmaMeaning64 => 'O Localizador';

  @override
  String get asmaMeaning65 => 'O Glorioso';

  @override
  String get asmaMeaning66 => 'O Único';

  @override
  String get asmaMeaning67 => 'O Único';

  @override
  String get asmaMeaning68 => 'O Procurado por Todos';

  @override
  String get asmaMeaning69 => 'O Poderoso';

  @override
  String get asmaMeaning70 => 'O Criador de todo poder';

  @override
  String get asmaMeaning71 => 'O Expedidor';

  @override
  String get asmaMeaning72 => 'O retardador';

  @override
  String get asmaMeaning73 => 'O Primeiro';

  @override
  String get asmaMeaning74 => 'O último';

  @override
  String get asmaMeaning75 => 'O Manifesto';

  @override
  String get asmaMeaning76 => 'O Oculto';

  @override
  String get asmaMeaning77 => 'O Governador';

  @override
  String get asmaMeaning78 => 'O Supremo';

  @override
  String get asmaMeaning79 => 'O Fazedor do Bem';

  @override
  String get asmaMeaning80 => 'O Guia para o Arrependimento';

  @override
  String get asmaMeaning81 => 'O Vingador';

  @override
  String get asmaMeaning82 => 'O Perdoador';

  @override
  String get asmaMeaning83 => 'O Clemente';

  @override
  String get asmaMeaning84 => 'O Proprietário/Soberano de Todos';

  @override
  String get asmaMeaning85 => 'O Possuidor de Majestade e Recompensa';

  @override
  String get asmaMeaning86 => 'O Equitativo';

  @override
  String get asmaMeaning87 => 'O Coletor';

  @override
  String get asmaMeaning88 => 'O Rico';

  @override
  String get asmaMeaning89 => 'O Enriquecedor';

  @override
  String get asmaMeaning90 => 'O Preventor de Danos';

  @override
  String get asmaMeaning91 => 'O Portador do Dano';

  @override
  String get asmaMeaning92 => 'O Concedente de Benefícios';

  @override
  String get asmaMeaning93 => 'A Luz';

  @override
  String get asmaMeaning94 => 'O Guia';

  @override
  String get asmaMeaning95 => 'O Originador';

  @override
  String get asmaMeaning96 => 'O Eterno';

  @override
  String get asmaMeaning97 => 'O Herdeiro';

  @override
  String get asmaMeaning98 => 'O Guia Mais Justo';

  @override
  String get asmaMeaning99 => 'O Paciente';
}
