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
  String get splashTagline => 'İslami Işık Yolu';

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
  String get prayerCalculation => 'Namaz Vakti Hesaplama';

  @override
  String get method => 'Hesaplama Yöntemi';

  @override
  String get madhab => 'İkindi Fıkhî Yöntemi';

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
  String get locationDetectionFailed =>
      'Konumunuz algılanamadı. Lütfen bir şehri elle seçin veya tekrar deneyin.';

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
  String get appErrorOccurred => 'Bir hata oluştu';

  @override
  String get appUnknownError => 'Bilinmeyen hata';

  @override
  String get quranLoadFailed =>
      'Kur\'an içeriği yüklenemedi. Lütfen tekrar deneyin.';

  @override
  String get retry => 'Tekrar Dene';

  @override
  String get refreshAction => 'Yenile';

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
  String ayahLabel(String ayah) {
    return '$ayah. Ayet';
  }

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
  String get tafsirLoading => 'Tefsir yükleniyor...';

  @override
  String get tafsirSourceLabel => 'Tefsir kaynağı';

  @override
  String get tafsirNoSurahFound => 'Bu sure için tefsir bulunamadı.';

  @override
  String tafsirNoAyahFound(String ayah) {
    return '$ayah. ayet için tefsir bulunamadı.';
  }

  @override
  String get tafsirLoadFailed => 'Tefsir yüklenemedi.';

  @override
  String get tafsirNoTextForAyah => 'Bu ayet için tefsir metni bulunamadı.';

  @override
  String tafsirDownloadingProgress(String current, String total) {
    return 'Tefsir indiriliyor $current/$total';
  }

  @override
  String tafsirLoadingProgress(String current, String total) {
    return 'Tefsir yükleniyor $current/$total';
  }

  @override
  String tafsirApiStatusError(String statusCode) {
    return 'Tefsir kaynağı HTTP $statusCode hatası döndürdü.';
  }

  @override
  String get tafsirNoEntriesReturned =>
      'Seçilen tefsir kaynağı hiç kayıt döndürmedi.';

  @override
  String get tafsirCacheUnavailable =>
      'Doğrulanmış tefsir henüz çevrimdışı hazır değil. Gezinmeden önce kaynaklandırılmış bir tefsir veri kümesini senkronlayın.';

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
  String get duaMeaning1 =>
      'Yine onlardan: \"Ey Rabbimiz! Bize dünyada bir güzellik ve ahirette de bir güzellik ver ve bizi ateş azabından koru!\" diyenler vardır.';

  @override
  String get duaMeaning2 =>
      'Allah hiç kimseye gücünün yeteceğinden başka yük yüklemez. Herkesin kazandığı hayır kendisine, yaptığı kötülüğün zararı yine kendisinedir. Ey Rabbimiz, eğer unuttuk ya da yanıldıysak bizi tutup sorguya çekme! Ey Rabbimiz, bize bizden öncekilere yüklediğin gibi ağır yük yükleme! Ey Rabbimiz, bize gücümüzün yetmeyeceği yükü de yükleme! Bağışla bizi, mağfiret et bizi, rahmet et bize! Sensin bizim Mevlamız, kâfir kavimlere karşı yardım et bize.';

  @override
  String get duaMeaning3 =>
      'Ey Rabbimiz! Bize ihsan ettiğin hidayetten sonra kalblerimizi haktan saptırma, bize kendi katından rahmet ihsan eyle! Şüphesiz ki, Sen bol ihsan sahibisin.';

  @override
  String get duaMeaning4 =>
      '\"Ey Rabbim! Beni ve soyumdan gelecekleri namazını dosdoğru kılanlardan eyle! Ey Rabbimiz! duamı kabul et!\"';

  @override
  String get duaMeaning5 =>
      'İkisine de acıyarak tevazu kanatlarını indir. Ve şöyle de: \"Ey Rabbim! Onların beni küçükten terbiye edip yetiştirdikleri gibi, sen de kendilerine merhamet et.\"';

  @override
  String get duaMeaning6 =>
      'Hükmü her yerde geçerli gerçek hükümdar olan Allah yücedir. (Ey Muhammed!) Kur\'\'ân sana vahyedilirken, vahiy bitmeden önce (unutma korkusu ile) Kur\'\'ân\'\'ı okumada acele etme; \"Rabbim! benim ilmimi artır\" de.';

  @override
  String get duaMeaning7 =>
      'Resulüm! De ki: \"Rabbim, bağışla ve merhamet et! Sen merhametlilerin en iyisisin.\"';

  @override
  String get duaMeaning8 =>
      'Ve onlar ki: \"Ey Rabbimiz! Bize gözümüzü aydınlatacak eşler ve zürriyetler bağışla ve bizi takva sahiplerine önder kıl\" derler.';

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
  String prayerRemainingHoursMinutes(String hours, String minutes) {
    return '${hours}s ${minutes}d';
  }

  @override
  String prayerRemainingMinutes(String minutes) {
    return '${minutes}d';
  }

  @override
  String get prayerRemainingUnavailable => '--';

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
  String get islamicNewYear => 'Hicri Yılbaşı';

  @override
  String get mawlidAnNabi => 'Mevlid Kandili';

  @override
  String get specialDayDateRamadanStart => '1 Ramazan';

  @override
  String get specialDayDateLaylatAlQadr => '27 Ramazan';

  @override
  String get specialDayDateEidAlFitr => '1 Şevval';

  @override
  String get specialDayDateEidAlAdha => '10 Zilhicce';

  @override
  String get specialDayDateIslamicNewYear => '1 Muharrem';

  @override
  String get specialDayDateMawlidAnNabi => '12 Rebiülevvel';

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
  String qiblaCompassErrorDetails(String error) {
    return 'Pusula hatası: $error';
  }

  @override
  String get qiblaSensorUnavailable =>
      'Bu cihazda pusula sensörü kullanılamıyor.';

  @override
  String get qiblaLocationRequiredTitle => 'Kıble için konum gerekli';

  @override
  String get qiblaLocationRequiredBody =>
      'Kıble yönünün doğru hesaplanabilmesi için pusulayı kullanmadan önce gerçek konumunuzu ayarlayın.';

  @override
  String get adhanNotificationChannelName => 'Ezan Bildirimleri';

  @override
  String get adhanNotificationChannelDescription =>
      'Ezan sesiyle namaz vakti uyarıları.';

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
  String get zikrCompletedMashAllah => 'Tamamlandı! Maşallah';

  @override
  String get zikrMeaningSubhanAllah => 'Allah her türlü noksanlıktan uzaktır.';

  @override
  String get zikrMeaningAlhamdulillah => 'Hamd Allah\'a mahsustur.';

  @override
  String get zikrMeaningAllahuAkbar => 'Allah en büyüktür.';

  @override
  String get zikrMeaningLaIlahaIllallah => 'Allah\'tan başka ilah yoktur.';

  @override
  String get zikrMeaningAstaghfirullah => 'Allah\'tan bağışlanma dilerim.';

  @override
  String get zikrMeaningLaHawlaWaLaQuwwata =>
      'Güç ve kuvvet ancak Allah iledir.';

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
  String get audioVoiceMisharyAlafasy => 'Erkek (Mishary Alafasy)';

  @override
  String get audioVoiceAbdulBaset => 'Erkek (Abdul Basit)';

  @override
  String get audioVoiceSudais => 'Erkek (Sudais)';

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
  String get hadithSourcePending => 'Doğrulanmış kaynak bekleniyor';

  @override
  String get hadithUnavailableTitle =>
      'Doğrulanmış hadis koleksiyonları henüz hazır değil';

  @override
  String get hadithUnavailableBody =>
      'Bu sürüm hâlâ doğrulanmamış harici bir hadis akışına dayanıyor. Kaynaklandırılmış veri kümesi senkronlanana kadar hadis gezintisi kapalı tutuluyor.';

  @override
  String get paywallUnlockAll =>
      'Ruhsal yolculuğunuz için tüm özellikleri açın';

  @override
  String get premiumProductUnavailable =>
      'Premium ürün şu anda kullanılamıyor. Lütfen daha sonra tekrar deneyin.';

  @override
  String get premiumPurchaseFailed =>
      'Satın alma tamamlanamadı. Lütfen tekrar deneyin.';

  @override
  String get paywallFeature1Title => 'Nöral Asistan Plus';

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
  String get chatbotOfflineDownloadLabel => 'Çevrimdışı Yedeği Etkinleştir';

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
  String downloadPartiallyFinishedForReciter(
    String reciter,
    String downloaded,
    String total,
    String failed,
  ) {
    return '$reciter için indirme tamamlandı ancak $failed sure indirilemedi ($total sureden $downloaded indirildi).';
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
    return 'Doğrulanmış Kur\'an ses paketi eksik ($available/$total). Ses kataloğu güncellendikten sonra tekrar deneyin.';
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
  String get chatbotLocalAiLabel => 'Çevrimdışı Yedek';

  @override
  String get chatbotUseCloudAi => 'Bulut AI Kullan (Gemini)';

  @override
  String get chatbotDownloadLocalAi => 'Çevrimdışı Yedeği Etkinleştir';

  @override
  String chatbotQueriesLeft(String count) {
    return '$count kaldı';
  }

  @override
  String get chatbotCloudNotConfigured =>
      'Bulut API ayarlanmadı. Doğrulanmış çevrimdışı İslami rehberlik henüz hazır değil.';

  @override
  String get chatbotLocalNoInfo =>
      '[OFFLINE] Doğrulanmış yerel İslami rehberlik henüz hazır değil. Kaynaklı cevaplar için Bulut AI moduna geçin.';

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
  String get placesLocationRequiredTitle => 'Konum gerekli';

  @override
  String get placesLocationRequiredBody =>
      'Yakındaki cami, helal gıda ve İslami eğitim noktalarını doğru arayabilmek için önce bir konum ayarlayın.';

  @override
  String get placesMapTilesUnavailableTitle =>
      'Harita katmanları kullanılamıyor';

  @override
  String get placesMapTilesUnavailableBody =>
      'Bu sürüm için doğrulanmış bir harita katman kaynağı henüz yapılandırılmadı. Yakındaki mekanlar yine de kayıtlı konumunuzdan yüklenebilir.';

  @override
  String get placesDataSourceUnavailableTitle => 'Mekan verisi kullanılamıyor';

  @override
  String get placesDataSourceUnavailableBody =>
      'Bu sürüm için doğrulanmış bir mekan verisi uç noktası henüz yapılandırılmadı. Yakındaki aramayı açmadan önce PLACES_OVERPASS_API_URL değerini onaylı bir proxy veya sağlayıcıya ayarlayın.';

  @override
  String get unknownPlaceName => 'Bilinmeyen Ad';

  @override
  String get islamicPlaceFallback => 'İslami Mekan';

  @override
  String get asmaMeaning1 =>
      'Dünyadaki bütün yaratılmışlara merhamet eden, acıyan, esirgeyen.';

  @override
  String get asmaMeaning2 =>
      'Ahirette müminlere sonsuz ihsanda, lütufta ve ikramda bulunan.';

  @override
  String get asmaMeaning3 =>
      'Kainatın sahibi, mülk ve saltanatı sürekli olan, hakimiyetin mutlak sahibi.';

  @override
  String get asmaMeaning4 =>
      'Her türlü eksiklikten uzak olan, her türlü noksanlıktan münezzeh.';

  @override
  String get asmaMeaning5 => 'Her tehlikeden selamete çıkaran, esenlik veren.';

  @override
  String get asmaMeaning6 =>
      'Güven veren, emin kılan, koruyan, vaadine güvenilen.';

  @override
  String get asmaMeaning7 =>
      'Her şeyi görüp gözeten, denetleyen, kâinatın hâkim ve yöneticisi.';

  @override
  String get asmaMeaning8 =>
      'İzzet sahibi, her şeye galip olan, mutlak güç sahibi.';

  @override
  String get asmaMeaning9 =>
      'Azamet ve kudret sahibi, dilediğini yapan ve yaptıran.';

  @override
  String get asmaMeaning10 =>
      'Büyüklükte eşi, benzeri olmayan, azametini gösteren.';

  @override
  String get asmaMeaning11 =>
      'Yaratan, yoktan var eden, varlıkların hallerini takdir eden.';

  @override
  String get asmaMeaning12 => 'Her şeyi kusursuz ve uyumlu yaratan.';

  @override
  String get asmaMeaning13 =>
      'Varlıklara şekil veren ve onları birbirinden farklı kılan.';

  @override
  String get asmaMeaning14 =>
      'Çok mağfiret eden, daima affeden, günahları bağışlayan.';

  @override
  String get asmaMeaning15 =>
      'Her şeye hakim ve galip, yenilmeyen mutlak galip.';

  @override
  String get asmaMeaning16 => 'Karşılık beklemeden bol bol lütfeden ve veren.';

  @override
  String get asmaMeaning17 => 'Bedenlerin ve ruhların gıdasını yaratıp veren.';

  @override
  String get asmaMeaning18 => 'İyilik kapılarını açan, hakemlik yapan.';

  @override
  String get asmaMeaning19 => 'Her şeyi hakkıyla bilen, her şeyi en iyi bilen.';

  @override
  String get asmaMeaning20 => 'Dilediğine darlık veren, sıkan, daraltan.';

  @override
  String get asmaMeaning21 => 'Dilediğine bolluk veren, açan, genişleten.';

  @override
  String get asmaMeaning22 => 'Alçaltan, aşağı indiren.';

  @override
  String get asmaMeaning23 => 'Şeref verip yükselten, dilediğini yücelten.';

  @override
  String get asmaMeaning24 => 'Dilediğini aziz eden, izzet ve şeref veren.';

  @override
  String get asmaMeaning25 => 'Dilediğini zillete düşüren, alçaltan.';

  @override
  String get asmaMeaning26 => 'Her şeyi en iyi işiten.';

  @override
  String get asmaMeaning27 => 'Gizli açık, her şeyi en iyi gören.';

  @override
  String get asmaMeaning28 =>
      'Mutlak hakim, hakkı batıldan ayıran, son hükmü veren.';

  @override
  String get asmaMeaning29 => 'Mutlak adil, çok adaletli, yerli yerinde yapan.';

  @override
  String get asmaMeaning30 => 'Lütuf ve ihsan sahibi, bütün incelikleri bilen.';

  @override
  String get asmaMeaning31 =>
      'Olmuş olacak her şeyin iç yüzünden haberdar olan.';

  @override
  String get asmaMeaning32 =>
      'Cezada acele etmeyen, yumuşak davranan, hilm sahibi.';

  @override
  String get asmaMeaning33 =>
      'Pek yüce, zat ve sıfatlarının mahiyeti anlaşılamayacak kadar yüce.';

  @override
  String get asmaMeaning34 =>
      'Affı, mağfireti bol, bütün günahları bağışlayan.';

  @override
  String get asmaMeaning35 =>
      'Az amele, çok sevap veren, şükürleri kabul eden.';

  @override
  String get asmaMeaning36 => 'Yüceler yücesi, çok yüce.';

  @override
  String get asmaMeaning37 => 'Büyüklükte benzeri olmayan, pek büyük.';

  @override
  String get asmaMeaning38 => 'Her şeyi koruyucu olan, koruyup gözeten.';

  @override
  String get asmaMeaning39 =>
      'Her yaratılmışın rızkını, gıdasını veren ve tayin eden.';

  @override
  String get asmaMeaning40 => 'Kulların hesabını en iyi gören.';

  @override
  String get asmaMeaning41 => 'Celal ve azamet sahibi olan.';

  @override
  String get asmaMeaning42 => 'Keremi, lütuf ve ihsanı bol, çok ikram eden.';

  @override
  String get asmaMeaning43 =>
      'Her varlığı her an görüp gözeten, kontrolü altında tutan.';

  @override
  String get asmaMeaning44 => 'Duaları, istekleri kabul eden.';

  @override
  String get asmaMeaning45 => 'İlmi ve rahmeti her şeyi kuşatan.';

  @override
  String get asmaMeaning46 => 'Her işi hikmetli, her şeyi hikmetle yaratan.';

  @override
  String get asmaMeaning47 =>
      'Kullarını en fazla seven, sevilmeye en layık olan.';

  @override
  String get asmaMeaning48 => 'Her türlü övgüye layık, kadri ve şânı büyük.';

  @override
  String get asmaMeaning49 => 'Ölüleri dirilten, peygamber gönderen.';

  @override
  String get asmaMeaning50 => 'Her zaman her yerde hazır ve nazır olan.';

  @override
  String get asmaMeaning51 =>
      'Varlığı hiç değişmeden duran, var olan, hakkı ortaya çıkaran.';

  @override
  String get asmaMeaning52 =>
      'Kendisine tevekkül edenlerin işlerini en iyi sonuçlandıran.';

  @override
  String get asmaMeaning53 => 'Kudreti en üstün ve hiç azalmaz olan.';

  @override
  String get asmaMeaning54 => 'Kuvvet ve kudret kaynağı, pek güçlü.';

  @override
  String get asmaMeaning55 => 'Dost ve yardımcı olan.';

  @override
  String get asmaMeaning56 => 'Her türlü övgüye, hamd ve senaya layık olan.';

  @override
  String get asmaMeaning57 =>
      'Her şeyin sayısını bilen, her şeyi tek tek sayan.';

  @override
  String get asmaMeaning58 =>
      'Yarattıklarını maddesiz ve modelsiz olarak ilk baştan yaratan.';

  @override
  String get asmaMeaning59 =>
      'Yarattıklarını yok edip, sonra tekrar diriltecek olan.';

  @override
  String get asmaMeaning60 => 'İhya eden, dirilten, can veren.';

  @override
  String get asmaMeaning61 => 'Her canlıya ölümü tattıran.';

  @override
  String get asmaMeaning62 => 'Ezeli ve ebedi hayat sahibi, daima diri olan.';

  @override
  String get asmaMeaning63 => 'Varlıkları diri tutan, zatı ile kaim olan.';

  @override
  String get asmaMeaning64 =>
      'İstediğini, istediği vakit bulan, hiçbir şeye muhtaç olmayan.';

  @override
  String get asmaMeaning65 => 'Kadri ve şanı büyük, keremi, ihsanı bol olan.';

  @override
  String get asmaMeaning66 =>
      'Zat, sıfat ve fiillerinde ortağı olmayan, tek olan.';

  @override
  String get asmaMeaning67 => 'Zatında tek olan (Vahidin pekiştirilmiş hali).';

  @override
  String get asmaMeaning68 =>
      'Hiçbir şeye ihtiyacı olmayan, herkesin muhtaç olduğu merci.';

  @override
  String get asmaMeaning69 =>
      'Dilediğini dilediği gibi yaratmaya muktedir olan.';

  @override
  String get asmaMeaning70 =>
      'Dilediği gibi tasarruf eden, her şeye gücü yeten.';

  @override
  String get asmaMeaning71 => 'Dilediğini öne alan, yükselten.';

  @override
  String get asmaMeaning72 =>
      'Dilediğini sona alan, erteleyen, geriye bırakan.';

  @override
  String get asmaMeaning73 => 'Ezeli olan, varlığının başlangıcı olmayan.';

  @override
  String get asmaMeaning74 => 'Ebedi olan, varlığının sonu olmayan.';

  @override
  String get asmaMeaning75 =>
      'Varlığı açık, aşikar olan, kesin delillerle bilinen.';

  @override
  String get asmaMeaning76 =>
      'Akılların idrak edemeyeceği yüceliği gizli olan.';

  @override
  String get asmaMeaning77 => 'Bütün kainatı idare eden.';

  @override
  String get asmaMeaning78 => 'Son derece yüce olan.';

  @override
  String get asmaMeaning79 => 'İyilik ve ihsanı bol, iyilik kaynağı.';

  @override
  String get asmaMeaning80 => 'Tevbeleri kabul edip, günahları bağışlayan.';

  @override
  String get asmaMeaning81 => 'Zalimlerin cezasını veren, intikam alan.';

  @override
  String get asmaMeaning82 => 'Affı çok olan, günahları silen.';

  @override
  String get asmaMeaning83 => 'Çok merhametli, pek şefkatli.';

  @override
  String get asmaMeaning84 => 'Mülkün, her varlığın asıl sahibi.';

  @override
  String get asmaMeaning85 => 'Celal, azamet ve pek büyük ikram sahibi.';

  @override
  String get asmaMeaning86 =>
      'Her işi birbirine uygun yapan, adaletle hükmeden.';

  @override
  String get asmaMeaning87 => 'Mahşerde mahlükatı bir araya toplayan.';

  @override
  String get asmaMeaning88 => 'İhtiyaçsız, hiç kimseye muhtaç olmayan.';

  @override
  String get asmaMeaning89 => 'İhtiyaç gideren, zengin eden.';

  @override
  String get asmaMeaning90 => 'Dilemediği şeye mani olan, engelleyen.';

  @override
  String get asmaMeaning91 =>
      'Elem ve zarar verenleri yaratan, dilediğine zarar veren.';

  @override
  String get asmaMeaning92 =>
      'Fayda veren şeyleri yaratan, dilediğine fayda veren.';

  @override
  String get asmaMeaning93 => 'Âlemleri nurlandıran, dilediğine nur veren.';

  @override
  String get asmaMeaning94 => 'Hidayet veren, doğru yola ileten.';

  @override
  String get asmaMeaning95 => 'Örneksiz, hayret verici harikalar yaratan.';

  @override
  String get asmaMeaning96 => 'Varlığının sonu olmayan, ebedi olan.';

  @override
  String get asmaMeaning97 => 'Her şeyin asıl sahibi ve varisi olan.';

  @override
  String get asmaMeaning98 => 'Doğru yolu gösteren, irşad eden.';

  @override
  String get asmaMeaning99 => 'Cezada acele etmeyen, sabırlı olan.';
}
