// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'Sirat-ı Nur';

  @override
  String get home => 'Ana Sayfa';

  @override
  String get quran => 'Kur\'an-ı Kerim';

  @override
  String get qibla => 'Kıble';

  @override
  String get zikr => 'Zikir';

  @override
  String get calendar => 'Takvim';

  @override
  String get settings => 'Ayarlar';

  @override
  String get nextPrayer => 'Sıradaki Namaz';

  @override
  String get prayerTimes => 'Namaz Vakitleri';

  @override
  String get continueReading => 'Okumaya Devam Et';

  @override
  String get getLifetimePro => 'Lifetime Pro Al';

  @override
  String get unlockTajweed => 'Tecvid ve Gelişmiş Özellikleri Aç';

  @override
  String get prayerCalculation => 'Namaz Hesaplama';

  @override
  String get method => 'Hesaplama Metodu';

  @override
  String get madhab => 'İkindi Hukuku Metodu';

  @override
  String get surahs => 'Sureler';

  @override
  String get ayahs => 'Ayetler';

  @override
  String get fajr => 'İmsak';

  @override
  String get sunrise => 'Güneş';

  @override
  String get dhuhr => 'Öğle';

  @override
  String get asr => 'İkindi';

  @override
  String get maghrib => 'Akşam';

  @override
  String get isha => 'Yatsı';

  @override
  String prayerNotificationTitle(String prayerName) {
    return '$prayerName vakti';
  }

  @override
  String prayerNotificationBody(String prayerName) {
    return '$prayerName vakti geldi.';
  }

  @override
  String get dataStorage => 'Veri ve Depolama';

  @override
  String get clearCache => 'Önbelleği Temizle';

  @override
  String get cacheClearedSuccess => 'Önbellek başarıyla temizlendi';

  @override
  String get location => 'Konum';

  @override
  String get language => 'Dil';

  @override
  String get selectLanguage => 'Dil Seçin';

  @override
  String get searchLanguage => '180+ dilde ara...';

  @override
  String get systemDefault => 'Sistem Varsayılanı';

  @override
  String get currentLocation => 'Mevcut Konum (GPS)';

  @override
  String get locationServiceDisabled => 'Konum servisleri kapalı.';

  @override
  String get locationPermissionDenied => 'Konum izni reddedildi.';

  @override
  String citiesCount(String count) {
    return '$count şehir';
  }

  @override
  String get search => 'Ara';

  @override
  String get searchHint => 'Ara...';

  @override
  String get noResults => 'Sonuç bulunamadı';

  @override
  String get loading => 'Yükleniyor...';

  @override
  String get error => 'Hata';

  @override
  String get retry => 'Tekrar Dene';

  @override
  String get cancel => 'İptal';

  @override
  String get save => 'Kaydet';

  @override
  String get delete => 'Sil';

  @override
  String get edit => 'Düzenle';

  @override
  String get close => 'Kapat';

  @override
  String get ok => 'Tamam';

  @override
  String get yes => 'Evet';

  @override
  String get no => 'Hayır';

  @override
  String get surah => 'Sure';

  @override
  String get juz => 'Cüz';

  @override
  String get page => 'Sayfa';

  @override
  String get reading => 'Okuma';

  @override
  String get recitation => 'Tilavet';

  @override
  String get translation => 'Çeviri';

  @override
  String get tafsir => 'Tefsir';

  @override
  String get bookmarks => 'Yer İşaretleri';

  @override
  String get addBookmark => 'Yer İşareti Ekle';

  @override
  String get removeBookmark => 'Yer İşaretini Kaldır';

  @override
  String get lastRead => 'Son Okunan';

  @override
  String get dailyZikr => 'Günlük Zikir';

  @override
  String get morningZikr => 'Sabah Zikri';

  @override
  String get eveningZikr => 'Akşam Zikri';

  @override
  String get tasbih => 'Tesbih';

  @override
  String get ahkab => 'Ahkâm';

  @override
  String get masaail => 'Mesail';

  @override
  String get hadith => 'Hadis';

  @override
  String get hadithCollection => 'Hadis Koleksiyonu';

  @override
  String get hadithBooks => 'Hadis Kitapları';

  @override
  String get searchHadith => 'Hadis Ara';

  @override
  String get asmaulHusna => 'Esmaül Hüsna';

  @override
  String get namesOfAllah => 'Allah\'ın İsimleri';

  @override
  String get liveTv => 'Canlı TV';

  @override
  String get watchLive => 'Canlı İzle';

  @override
  String get streamError => 'Yayın hatası';

  @override
  String get reload => 'Yenile';

  @override
  String get openInYoutube => 'YouTube\'da Aç';

  @override
  String get ibadahTracker => 'İbadet Takibi';

  @override
  String get fasting => 'Oruç';

  @override
  String get quranReading => 'Kur\'an Okuma';

  @override
  String get prayers => 'Namazlar';

  @override
  String get dhikrCount => 'Zikir Sayısı';

  @override
  String get weeklyProgress => 'Haftalık İlerleme';

  @override
  String get monthlyProgress => 'Aylık İlerleme';

  @override
  String get statistics => 'İstatistikler';

  @override
  String get hijriCalendar => 'Hicri Takvim';

  @override
  String get gregorianCalendar => 'Miladi Takvim';

  @override
  String get today => 'Bugün';

  @override
  String get tomorrow => 'Yarın';

  @override
  String get yesterday => 'Dün';

  @override
  String get specialDays => 'Özel Günler';

  @override
  String get ramadan => 'Ramazan';

  @override
  String get eidAlFitr => 'Ramazan Bayramı';

  @override
  String get eidAlAdha => 'Kurban Bayramı';

  @override
  String get laylatAlQadr => 'Kadir Gecesi';

  @override
  String get qiblaDirection => 'Kıble Yönü';

  @override
  String get compass => 'Pusula';

  @override
  String get degrees => 'derece';

  @override
  String get north => 'Kuzey';

  @override
  String get qiblaFound => 'Kıble bulundu!';

  @override
  String get turnDevice => 'Kıbleye dönmek için cihazınızı çevirin';

  @override
  String get notifications => 'Bildirimler';

  @override
  String get prayerNotifications => 'Namaz Bildirimleri';

  @override
  String get enableNotifications => 'Bildirimleri Etkinleştir';

  @override
  String get notificationTime => 'Bildirim Zamanı';

  @override
  String get beforePrayer => 'dakika önce';

  @override
  String get theme => 'Tema';

  @override
  String get lightMode => 'Açık Mod';

  @override
  String get darkMode => 'Koyu Mod';

  @override
  String get systemTheme => 'Sistem Teması';

  @override
  String get about => 'Hakkında';

  @override
  String get version => 'Sürüm';

  @override
  String get privacyPolicy => 'Gizlilik Politikası';

  @override
  String get termsOfService => 'Kullanım Şartları';

  @override
  String get contactUs => 'Bize Ulaşın';

  @override
  String get rateApp => 'Uygulamayı Değerlendir';

  @override
  String get shareApp => 'Uygulamayı Paylaş';

  @override
  String shareAppMessage(String appName, String url) {
    return '$appName uygulamasına göz atın: En kapsamlı İslami yaşam uygulaması! $url';
  }

  @override
  String get downloadManager => 'İndirme Yöneticisi';

  @override
  String get downloads => 'İndirilenler';

  @override
  String get downloading => 'İndiriliyor...';

  @override
  String get downloadComplete => 'İndirme Tamamlandı';

  @override
  String get downloadFailed => 'İndirme Başarısız';

  @override
  String get offlineMode => 'Çevrimdışı Mod';

  @override
  String get noInternet => 'İnternet Bağlantısı Yok';

  @override
  String get checkConnection => 'Lütfen bağlantınızı kontrol edin';

  @override
  String get premium => 'Premium';

  @override
  String get upgradeToPro => 'Pro\'ya Yükselt';

  @override
  String get proFeatures => 'Pro Özellikleri';

  @override
  String get removeAds => 'Reklamları Kaldır';

  @override
  String get unlockAll => 'Tüm İçeriği Aç';

  @override
  String get exclusiveContent => 'Özel İçerik';

  @override
  String get welcome => 'Hoş Geldiniz';

  @override
  String get getStarted => 'Başlayalım';

  @override
  String get skip => 'Atla';

  @override
  String get next => 'İleri';

  @override
  String get done => 'Tamamlandı';

  @override
  String get onboarding1Title => 'Sirat-ı Nur\'a Hoş Geldiniz';

  @override
  String get onboarding1Desc =>
      'Namaz vakitleri, Kur\'an ve daha fazlası için tam İslami yardımcınız';

  @override
  String get onboarding2Title => 'Namaz Vakitleri';

  @override
  String get onboarding2Desc => 'Konumunuza göre doğru namaz vakitleri';

  @override
  String get onboarding3Title => 'Kur\'an ve Daha Fazlası';

  @override
  String get onboarding3Desc =>
      'Kur\'an okuyun, okumanızı takip edin ve İslami içerikleri keşfedin';

  @override
  String get dhikrLibrary => 'Zikir Kütüphanesi';

  @override
  String get resetCounter => 'Sayacı Sıfırla';

  @override
  String get changeTarget => 'Hedefi Değiştir';

  @override
  String get newTarget => 'Yeni Hedef';

  @override
  String targetCount(Object target) {
    return 'Hedef: $target';
  }

  @override
  String get tapToCount => 'Saymak için dokunun';

  @override
  String get dailyChecklist => 'Günlük Kontrol';

  @override
  String get qazaDebt => 'Kaza (Borç)';

  @override
  String get resetQazaData => 'Kaza Verisini Sıfırla';

  @override
  String get resetQazaDebtQuestion => 'Kaza Borcunu Sıfırla?';

  @override
  String get rawatib => 'Revâtib';

  @override
  String get tahajjud => 'Teheccüd';

  @override
  String get dailyProgress => 'Günlük İlerleme';

  @override
  String get mandatoryPrayers => 'Farz Namazlar';

  @override
  String get sunnahAndOthers => 'Sünnet ve Diğerleri';

  @override
  String get spiritualGrowth => 'Manevi Gelişim';

  @override
  String get mandatoryDuty => 'Farz Görev';

  @override
  String get totalPrayers => 'Toplam Namaz';

  @override
  String get prayerDebt => 'Namaz Borcu';

  @override
  String get fastingDebt => 'Oruç Borcu';

  @override
  String get reset => 'Sıfırla';

  @override
  String get days => 'Gün';

  @override
  String get premiumIntegrity => 'Premium Doğrulama';

  @override
  String get recheckPremium => 'Premium Durumunu Yeniden Kontrol Et';

  @override
  String get syncStore => 'Mağaza ile eşitleyerek hakkınızı doğrulayın.';

  @override
  String get checkingPremium => 'Premium durumu kontrol ediliyor...';

  @override
  String get premiumVerified => 'Premium doğrulandı.';

  @override
  String get premiumNotFound => 'Premium bulunamadı.';

  @override
  String premiumRefreshError(Object error) {
    return 'Premium durumu güncellenemedi: $error';
  }

  @override
  String get offlineDownloadManager => 'Çevrimdışı İndirme Yöneticisi';

  @override
  String get manageDatasets =>
      'Büyük çevrimdışı ses ve veri paketlerini yönetin.';

  @override
  String get freeStorage => 'Cihaz depolamasında yer açın.';

  @override
  String get quranIntegrity => 'Kur\'an Bütünlüğü';

  @override
  String get checkQuranDb => 'Kur\'an Veritabanını Kontrol Et';

  @override
  String get verifyQuranContent => '114 sure ve 6236 ayeti doğrulayın.';

  @override
  String get checkingQuranDb => 'Kur\'an veritabanı kontrol ediliyor...';

  @override
  String get okLabel => 'Tamam';

  @override
  String get incomplete => 'Eksik';

  @override
  String get notSeeded => 'Tohumlanmadı';

  @override
  String get quranDbStatus => 'Kur\'an Veritabanı Durumu';

  @override
  String statusLabel(Object status) {
    return 'Durum: $status';
  }

  @override
  String surahsCount(Object count) {
    return 'Sureler: $count (beklenen 114)';
  }

  @override
  String ayahsCount(Object count) {
    return 'Ayetler: $count (beklenen 6236)';
  }

  @override
  String missingArabic(Object count) {
    return 'Eksik Arapça: $count';
  }

  @override
  String missingEnglish(Object count) {
    return 'Eksik İngilizce: $count';
  }

  @override
  String missingTurkish(Object count) {
    return 'Eksik Türkçe: $count';
  }

  @override
  String dbVersion(Object version) {
    return 'Veritabanı Sürümü: $version';
  }

  @override
  String dbPath(Object path) {
    return 'Yol: $path';
  }

  @override
  String quranCheckFailed(Object error) {
    return 'Kur\'an kontrolü başarısız: $error';
  }

  @override
  String get audioVoice => 'Ses Seçimi';

  @override
  String get fajrAngle => 'İmsak Açısı';

  @override
  String get ishaAngle => 'Yatsı Açısı';

  @override
  String get qiblaCalibration => 'Kıble Kalibrasyonu';

  @override
  String get compassSmoothing => 'Pusula Yumuşatma';

  @override
  String get reduceSensorJitter =>
      'Daha stabil ibre için sensör titremesini azaltın.';

  @override
  String get calibrationOffset => 'Kalibrasyon Ofseti';

  @override
  String currentOffset(Object offset) {
    return 'Şu an: $offset°';
  }

  @override
  String get manualCorrectionDesc =>
      'Pusula manuel düzeltme gerektiriyorsa ayarlayın. Pozitif değerler saat yönünde döndürür.';

  @override
  String get apply => 'Uygula';

  @override
  String get resetOnboarding => 'Onboarding\'i Sıfırla';

  @override
  String get rerunSetup => 'İlk kurulum sürecini yeniden başlatın.';

  @override
  String get diagnostics => 'Tanılama';

  @override
  String get diagnosticsNotSet => 'Ayarlanmadı';

  @override
  String get diagnosticsPrayerProfile => 'Namaz Profili';

  @override
  String get diagnosticsPrayerSource => 'Namaz Kurumu';

  @override
  String diagnosticsPrayerCustomProfile(String madhab) {
    return 'Özel / $madhab';
  }

  @override
  String get diagnosticsPrayerCustomSource =>
      'Kurumsal kaynak yok; manuel özel açı';

  @override
  String get diagnosticsCloudDriven => 'Bulut Tabanlı';

  @override
  String get diagnosticsAdhanAudioAssets => 'Ezan Ses Varlıkları';

  @override
  String get diagnosticsUiAudioAssets => 'Arayüz Ses Varlıkları';

  @override
  String get diagnosticsQuranAudioAssets => 'Kur\'an Ses Varlıkları';

  @override
  String get diagnosticsAudioAssets => 'Ses Varlıkları';

  @override
  String diagnosticsFilesCount(String count) {
    return '$count dosya';
  }

  @override
  String diagnosticsManifestReadFailed(String error) {
    return 'Manifest okunamadı: $error';
  }

  @override
  String get diagnosticsLocalizationLocales => 'Yerelleştirme Dilleri';

  @override
  String diagnosticsSupportedCount(String count) {
    return '$count destekleniyor';
  }

  @override
  String get diagnosticsQuranDataset => 'Kur\'an Veri Seti';

  @override
  String get diagnosticsQuranSurahs => 'Kur\'an Sureleri';

  @override
  String get diagnosticsQuranAyahs => 'Kur\'an Ayetleri';

  @override
  String get diagnosticsQuranJuzMetadata => 'Kur\'an Cüz Metaverisi';

  @override
  String get diagnosticsQuranCloudTablesMissing =>
      'Supabase bulut tabloları eksik; gömülü fallback aktif';

  @override
  String diagnosticsQuranCloudCheckFailed(String error) {
    return 'Bulut kontrolü başarısız: $error';
  }

  @override
  String get diagnosticsQuranCloudJuzMissing =>
      'Bulut cüz metaverisi eksik; gömülü yapısal fallback aktif';

  @override
  String diagnosticsQuranCloudStructuralCheckFailed(String error) {
    return 'Bulut yapısal kontrolü başarısız: $error';
  }

  @override
  String get healthCheckDesc =>
      'Sistem durumunu kontrol et ve sağlık taraması yap.';

  @override
  String get qiblaAligned => 'Kıble Hizalandı';

  @override
  String get rotateToFindQibla => 'Kıbleyi Bulmak İçin Çevir';

  @override
  String get calibrationRequiredFigure8 =>
      'Kalibrasyon gerekli. Cihazı 8 çizerek çevirin.';

  @override
  String get dailyVerse => 'Günün Ayeti';

  @override
  String get todaysIbadah => 'Bugünün İbadeti';

  @override
  String get quickAccess => 'Hızlı Erişim';

  @override
  String get assistant => 'Asistan';

  @override
  String get places => 'Mekanlar';

  @override
  String get library => 'Kütüphane';

  @override
  String get analytics => 'Analitik';

  @override
  String get dailyDuas => 'Günlük Dualar';

  @override
  String essentialDuas(String count) {
    return '$count temel dua';
  }

  @override
  String get duaUnavailableTitle => 'Doğrulanmış dualar henüz hazır değil';

  @override
  String get duaUnavailableBody =>
      'Doğrulanmış günlük dualar henüz bu cihaza senkronlanmadı. Doğrulanmamış fallback yerine kaynaklı duaları yüklemek için bulut kaynağına bağlanın.';

  @override
  String get duaCategoryQuranic => 'Kur\'an duası';

  @override
  String get duaCategoryMorningEvening => 'Sabah ve akşam';

  @override
  String get duaCategoryTasbih => 'Tesbih';

  @override
  String get duaCategoryProtection => 'Korunma';

  @override
  String get duaCategoryBeginning => 'Başlangıç';

  @override
  String get duaCategorySleep => 'Uyku';

  @override
  String get duaCategoryFoodDrink => 'Yeme ve içme';

  @override
  String get duaCategoryForgiveness => 'Bağışlanma';

  @override
  String get duaCategoryHome => 'Ev';

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
  String get islamicEducation => 'İslami Eğitim';

  @override
  String get sukunAudioTitle => 'Sükunet Sesleri';

  @override
  String get hadithCollections => 'Hadis Koleksiyonları';

  @override
  String get paywallUnlockAll =>
      'Ruhsal yolculuğunuz için tüm özellikleri açın';

  @override
  String get paywallFeature1Title => 'Neural Assistant Plus';

  @override
  String get paywallFeature1Desc => 'Sınırsız yapay zeka destekli soru-cevap';

  @override
  String get paywallFeature2Title => 'Sınırsız Çevrimdışı';

  @override
  String get paywallFeature2Desc => 'Tüm tilavetleri indirin';

  @override
  String get paywallFeature3Title => 'Özel Tasarımlar';

  @override
  String get paywallFeature3Desc => 'Premium temalar ve yazı tipleri';

  @override
  String get paywallFeature4Title => 'Reklamsız';

  @override
  String get paywallFeature4Desc => 'Sıfır reklam deneyimi';

  @override
  String get paywallGetAccess => 'Ömür Boyu Erişim — \$1.00';

  @override
  String get restorePurchases => 'Satın Alımları Geri Yükle';

  @override
  String get zakatCalculator => 'Zekat Hesaplayıcı';

  @override
  String get zakatGold => 'Altın';

  @override
  String get zakatSilver => 'Gümüş';

  @override
  String get zakatCashBank => 'Nakit / Banka';

  @override
  String get zakatBusiness => 'Ticaret';

  @override
  String get zakatInvestments => 'Yatırımlar';

  @override
  String get zakatWeightGrams => 'Ağırlık (g)';

  @override
  String get zakatPricePerGram => 'Fiyat/g';

  @override
  String get zakatTotalAmount => 'Toplam Miktar';

  @override
  String get zakatInventoryValue => 'Envanter Değeri';

  @override
  String get zakatDebts => 'Borçlar';

  @override
  String get zakatTotal => 'Toplam';

  @override
  String get calculateZakat => 'Zekatı Hesapla';

  @override
  String get nisabNotReached =>
      'Nisap miktarına ulaşılmadı. Zekat farz değildir.';

  @override
  String get totalZakat => 'Toplam Zekat';

  @override
  String nisabSummary(String nisab, String assets) {
    return 'Nisap: $nisab • Varlıklar: $assets';
  }

  @override
  String get zakatGoldZakat => 'Altın Zekatı';

  @override
  String get zakatSilverZakat => 'Gümüş Zekatı';

  @override
  String get zakatCashZakat => 'Nakit Zekatı';

  @override
  String get zakatBusinessZakat => 'Ticaret Zekatı';

  @override
  String get zakatInvestmentZakat => 'Yatırım Zekatı';

  @override
  String get chatbotGreeting =>
      'Selamun Aleyküm! Ben İslami asistanınızım. Bana namaz, oruç, zekat veya dini konularda sorular sorabilirsiniz.';

  @override
  String get chatbotLimitReached =>
      'Günlük soru limitinize ulaştınız. Sınırsız erişim için Premium\'a geçin.';

  @override
  String get chatbotErrorMsg =>
      'Bir cevap oluşturamadım. Lütfen tekrar deneyin.';

  @override
  String get chatbotOfflinePrompt =>
      'Doğrulanmış çevrimdışı İslami bilgi tabanı hâlâ kaynak bazında hazırlanıyor. Çevrimdışı fallback modunu şimdi açabilirsiniz; ancak doğrulanmış veri yüklenene kadar yalnızca sınırlı güvenli mesajlar gösterilecektir.\n\nÇevrimdışı fallback modunu etkinleştirmek ister misiniz?';

  @override
  String get chatbotOfflineSwitched =>
      'Çevrimdışı fallback etkinleştirildi. Doğrulanmış yerel İslami cevaplar henüz hazır değil.';

  @override
  String get chatbotOfflineDownloadLabel =>
      'Çevrimdışı Fallback\'i Etkinleştir';

  @override
  String get downloadPreparing => 'İndirme hazırlanıyor...';

  @override
  String downloadingSurah(String surah, String total) {
    return '$surah. sure indiriliyor (Toplam: $total)';
  }

  @override
  String get downloadCompleted => 'Bu hafız için tüm sureler zaten indirildi.';

  @override
  String get offlineQuranAudioPacks => 'Çevrimdışı Kur\'an Ses Paketleri';

  @override
  String storedOnDeviceMb(String size) {
    return 'Cihazda depolanan: $size MB';
  }

  @override
  String downloadedSurahProgress(String downloaded, String total) {
    return '$total sureden $downloaded indirildi';
  }

  @override
  String get redownloadMissingRepair => 'Eksikleri Onar / İndir';

  @override
  String get downloadAction => 'İndir';

  @override
  String get resumeDownload => 'İndirmeye Devam Et';

  @override
  String get deleteDownloadedFiles => 'İndirilen Dosyaları Sil';

  @override
  String get downloadCancelling => 'İptal ediliyor...';

  @override
  String downloadCanceledForReciter(String reciter) {
    return '$reciter için indirme iptal edildi.';
  }

  @override
  String downloadFinishedForReciter(String reciter) {
    return '$reciter için indirme tamamlandı.';
  }

  @override
  String deletedOfflineFilesForReciter(String reciter) {
    return '$reciter için çevrimdışı dosyalar silindi.';
  }

  @override
  String get quranAudioSourcesUnavailable =>
      'Doğrulanmış Kur\'an ses kaynakları şu anda kullanılamıyor.';

  @override
  String quranAudioSourcesIncomplete(String available, String total) {
    return 'Doğrulanmış Kur\'an ses paketi eksik ($available/$total). Cloud seed\'i yenileyip tekrar deneyin.';
  }

  @override
  String get chatbotHint => 'Bir soru sorun...';

  @override
  String get chatbotThinking => 'Düşünüyor...';

  @override
  String get sukunMixerSubtitle => 'Doğa ve Kur\'an Mikseri';

  @override
  String get audioPlayFailed => 'Ses çalınamadı';

  @override
  String get sukunNatureLabel => 'Sükun (Doğa)';

  @override
  String get sukunRainOfMercy => 'Rahmet Yağmuru';

  @override
  String get sukunGardenOfPeace => 'Huzur Bahçesi';

  @override
  String get sukunMidnightCalm => 'Gece Sükuneti';

  @override
  String get sukunOceanTawheed => 'Tevhid Okyanusu';

  @override
  String get sukunUnavailableTitle => 'Ses manzaraları kullanılamıyor';

  @override
  String get sukunUnavailableBody =>
      'Bu build henüz gerekli Sükun ses manzarası asset\'lerini içermiyor.';

  @override
  String get prayerCompletion => 'Namaz Tamamlama';

  @override
  String get streaks => 'Seriler';

  @override
  String get dayStreak => 'Gün serisi';

  @override
  String get bestStreak => 'En iyi seri';

  @override
  String get chatbotCloudAiLabel => 'Bulut AI';

  @override
  String get chatbotLocalAiLabel => 'Çevrimdışı Fallback';

  @override
  String get chatbotUseCloudAi => 'Bulut AI Kullan (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Çevrimdışı Fallback\'i Etkinleştir';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count kaldı';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Bulut API ayarlanmadı. Lütfen Yerel AI moduna geçin.';

  @override
  String get chatbotLocalNoInfo =>
      '[ÇEVRİMDIŞI] Doğrulanmış yerel İslami rehberlik henüz hazır değil. Kaynaklı cevaplar için Bulut AI moduna geçin.';

  @override
  String get mosques => 'Camiler';

  @override
  String get halalFood => 'Helal Gıda';

  @override
  String get placesSearchArea => 'Bu alanı ara';

  @override
  String get nearbyMosques => 'Yakındaki Camiler';

  @override
  String get islamicSchools => 'İslami Okullar';

  @override
  String placesFoundCount(String count) {
    return '$count bulundu';
  }

  @override
  String distanceAwayKm(String distance) {
    return '$distance km uzakta';
  }

  @override
  String placesApiError(String statusCode) {
    return 'API Hatası: $statusCode';
  }

  @override
  String get placesNetworkError => 'Ağ hatası. Lütfen tekrar deneyin.';

  @override
  String get unknownPlaceName => 'Bilinmeyen Ad';

  @override
  String get islamicPlaceFallback => 'İslami Mekan';
}
