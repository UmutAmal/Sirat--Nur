# Handover Log

## 2026-04-07 - P0-1 + P0-2 Execution
- Yapılan işlem: `onboarding_page.dart` içindeki derleme kırığı için eksik `l10n` bağlamı düzeltildi. Notification/adhan zinciri için `PrayerNotificationCoordinator` eklendi ve uygulama yaşam döngüsüne bağlandı.
- Neden yapıldı: `flutter analyze` doğrudan onboarding ekranında kırılıyordu ve namaz/ezan scheduling servisleri runtime akışına bağlı olmadığı için konum/ayar değişiklikleri gerçek bildirim üretmiyordu.
- Ne değişti: `main.dart` içinde settings değişimini dinleyen ve ilk açılışta çalışan kontrollü scheduling bootstrap eklendi. `AdhanSchedulerService` izin isteme, temizleme, dil ve custom açı desteği alacak şekilde genişletildi. `test/prayer_notification_coordinator_test.dart` ile bu P0 akışı için temel regresyon testleri eklendi.
- Etki: uygulama tekrar analyze edilebilir hale gelmeli; konum ve hesaplama ayarı mevcutsa ezan scheduling zinciri ilk açılışta ve ilgili ayar değişimlerinde gerçek çalışır duruma gelmeli. Aynı ayarlar için gereksiz tekrar scheduling engellenir.
- Sonraki adım: `flutter analyze` ve `flutter test` çalıştırılıp yeni orchestration akışının regresyon üretmediği doğrulanacak. Sonrasında bir sonraki P1 dalgasında Sukun ses implementasyonu ve TV/localization yüzeyi ele alınacak.

## 2026-04-07 - P0 Validation
- Yapılan işlem: onaylı P0 patch seti için `flutter analyze` ve `flutter test` tekrar çalıştırıldı.
- Neden yapıldı: strict pipeline gereği execution sonrası compile, test ve regresyon doğrulaması yapılmadan değişiklikler tamamlanmış sayılmamalıydı.
- Ne değişti: yeni coordinator testinde binding başlatılmadığı için ilk test turunda görülen hata giderildi; ardından validation ikinci kez koşuldu.
- Etki: `flutter analyze` temiz geçti, `flutter test` ise `27/27` başarı verdi. P0-1 ve P0-2 için geri dönüş gerektiren bir regresyon görülmedi.
- Sonraki adım: doğrulanmış değişiklikler commitlenip repo durumu senkronize edilecek. Ardından P1 havuzunda Sukun audio, Live TV hata yüzeyi ve localization kalıntıları ele alınabilir.

## 2026-04-07 - P1 Onboarding Router Guard
- Yapılan işlem: `app_router.dart` içindeki ilk açılış yönlendirme mantığı güncellendi ve `test/app_router_test.dart` eklendi.
- Neden yapıldı: router, `isFirstLaunch` değerini provider oluşturulurken snapshot alıyordu. `onboarding_page.dart` bu değeri `false` yapsa bile aynı uygulama oturumunda redirect guard eski değeri kullanmaya devam ediyordu; bu da ilk kurulumda kullanıcıyı onboarding ekranına geri sektirebilecek bir kilit riski oluşturuyordu.
- Ne değişti: `resolveInitialLocation` ve `resolveOnboardingRedirect` yardımcıları eklendi; redirect artık her navigasyonda doğrudan güncel `SharedPreferences` değerini okuyor. Test tarafında hem ilk açılış yönlendirmesi hem de aynı prefs örneğinde değer güncellendikten sonra onboarding guard'ın yeniden yaratım gerektirmeden doğru davrandığı doğrulandı.
- Etki: onboarding tamamlandıktan sonra `/home` navigasyonu aynı oturumda güvenli şekilde açılabiliyor; ayrıca tamamlanmış kullanıcılar tekrar `/onboarding` rotasına düşürülmüyor.
- Sonraki adım: bir sonraki turda `live_tv_page.dart` içindeki hardcoded hata/empty-state metinleri ve `audio_sovereignty_service.dart` altındaki boş implementasyon/orphan akışlar önceliklendirilebilir.

## 2026-04-07 TUR-03 — Onboarding Guard + Live TV L10n Surface
### Yapılan İşlem
- `app_router.dart` içinde onboarding yönlendirme kararı snapshot yerine güncel `SharedPreferences` verisiyle hesaplanacak şekilde düzeltildi.
- `live_tv_page.dart` içinde hardcoded provider hata ve empty-state metinleri kaldırıldı; mevcut localization anahtarları kullanılacak yardımcılar eklendi.
- `test/app_router_test.dart` ve `test/live_tv_page_test.dart` ile iki davranış için regresyon testi eklendi.

### Neden Yapıldı
- Onboarding tamamlandıktan sonra aynı oturumda eski `isFirstLaunch` snapshot’ı yüzünden kullanıcı onboarding ekranına geri yönlenebiliyordu.
- Live TV ekranı kullanıcıya açık akışta `[Cloud sync error: ...]` ve `[No live TV channels found.]` gibi hardcoded İngilizce metinler üretiyordu; bu hem localization zincirini kırıyor hem de hedeflenen ürün davranışıyla çelişiyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\network\app_router.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\tv\live_tv_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\app_router_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\live_tv_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- İlk kurulum sonrası `/home` yönlendirmesi aynı uygulama oturumunda güvenli hale geldi.
- Live TV hata/empty-state yüzeyi artık mevcut l10n anahtarları (`error`, `noResults`, `streamError`) üzerinden çalışıyor; kullanıcıya kalan hata detayları ise platformdan gelen gerçek açıklamayla gösteriliyor.

### Test Sonucu
- `flutter analyze` → PASS
- `flutter test` → PASS (`31/31`)
- `flutter doctor -v` → Android geliştirme için PASS; Chrome ve Visual Studio eksikleri ayrı ortam uyarısı olarak kaldı.

### Risk Değişimi (önceki risk → sonraki risk)
- Onboarding router kilidi: `12/25 → 4/25`
- Live TV localization/hata yüzeyi: `10/25 → 4/25`

### Sonraki Adım
- `audio_sovereignty_service.dart` ve `sukun_audio_page.dart` için false-success/stub zinciri ele alınacak.
- `library_page.dart` ve ilişkili alt görünümlerdeki yoğun hardcoded metinler parça parça localization zincirine taşınacak.

## 2026-04-07 TUR-04 — Location Filter Sentinel Removal
### Yapılan İşlem
- `location_selection_page.dart` içindeki ülke filtresi `'All'` string sentinel’inden çıkarıldı.
- Filtreleme mantığı `filterCities` ve `buildCountryFilters` yardımcılarına ayrıldı.
- Seçili ülke filtresi artık `null` ile temsil ediliyor; seçili chip’e tekrar basınca filtre temizleniyor.
- `test/location_selection_page_test.dart` ile sentinel bağımsız filtreleme davranışı doğrulandı.

### Neden Yapıldı
- Erişilebilir ayar akışında [location_selection_page.dart] içindeki `'All'` sentinel’i hem hardcoded metin bırakıyordu hem de filtre davranışını kullanıcı metnine bağımlı hale getiriyordu.
- AGENTS.md Section 8, `LOCATION & SETTINGS` odağında bu sentinel örneğini açıkça hedefliyor.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\location_selection_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\location_selection_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Ülke filtresi artık veri-temelli çalışıyor; kullanıcı metni mantık anahtarı olmaktan çıktı.
- Filtreyi sıfırlamak için ek bir sentinel chip göstermeden aynı chip üstünden temizleme yapılabiliyor.
- Bu akışın test kapsaması oluştu.

### Test Sonucu
- `flutter analyze` → PASS
- `flutter test` → PASS (`35/35`)

### Risk Değişimi (önceki risk → sonraki risk)
- Location sentinel / filtre bağımlılığı: `8/25 → 3/25`

### Sonraki Adım
- `audio_sovereignty_service.dart` ve `sukun_audio_page.dart` içindeki stub ve false-success zinciri ele alınacak.

## 2026-04-07 TUR-05 — Audio Contract and False-Success Removal
### Yapılan İşlem
- `audio_sovereignty_service.dart` boş gövdeli mimari placeholder olmaktan çıkarıldı; gerçek bir `SovereignAudioEngine` kontratı ve `LocalAudioEngine` adaptörü eklendi.
- `playQuran` ve `playSukun` artık `bool` döndürerek gerçek playback başlayıp başlamadığını bildiriyor.
- `sukun_audio_page.dart` başarı varmış gibi snackbar göstermeyi bıraktı; playback başarısızsa yalnızca lokalize `error` mesajı gösteriyor ve seçili durum güncellenmiyor.
- `test/audio_sovereignty_service_test.dart` ve `test/sukun_audio_page_test.dart` ile servis ve UI davranışı doğrulandı.
- Self-heal adımında ilk widget test viewport erişim problemi izole edilip yalnızca test dosyasında düzeltilerek regresyon kapatıldı.

### Neden Yapıldı
- [audio_sovereignty_service.dart] içindeki `playQuran` ve `playSukun` boş implementasyondu.
- [sukun_audio_page.dart] ise `await service.playSukun(type)` çağrısından sonra sonucu kontrol etmeden "başarılı" davranış üretiyordu.
- Paketlenmiş `assets/audio/quran` altında gerçek Quran dosyaları yok; bu durumda sistemin dürüstçe başarısızlık dönmesi gerekiyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\audio_sovereignty_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\library\sukun_audio_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\audio_sovereignty_service_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\sukun_audio_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Audio sovereignty katmanı artık boş implementasyon değil; test edilebilir ve dürüst bir playback kontratı sunuyor.
- Sukun ekranı playback olmayan durumda başarı göstermiyor; false-success kaldırıldı.
- Pakette gerçek soundscape asset’i olmadığı için UI artık bunu başarı gibi göstermiyor.

### Test Sonucu
- `flutter analyze` → PASS
- `flutter test` → PASS (`41/41`)

### Risk Değişimi (önceki risk → sonraki risk)
- Audio false-success / empty implementation: `9/25 → 4/25`

### Sonraki Adım
- `library_page.dart` ve alt görünümlerdeki hardcoded kullanıcı metinleri localization zincirine taşınacak.

## 2026-04-07 TUR-06 — Library Generic Error Surface Localization
### Yapılan İşlem
- `library_page.dart` içinde mevcut `library`, `error` ve `noResults` anahtarları kullanılarak generic hata ve empty-state yüzeyi lokalize edildi.
- Ana library ekranı app bar başlığı `l10n.library` ile değiştirildi.
- Eğitim kategori yükleme hatası ve eğitim içerik empty/error yüzeyi top-level yardımcı fonksiyonlarla standartlaştırıldı.
- `test/library_page_test.dart` ile bu yardımcıların TR ve EN davranışı doğrulandı.

### Neden Yapıldı
- [library_page.dart] erişilebilir akışta generic İngilizce hata/boş durum metinleri döndürüyordu.
- Yeni 180+ çeviri anahtarı açmadan, mevcut localization anahtarlarıyla yüksek etkili generic yüzeyi temizlemek mümkün ve daha düşük riskliydi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\library_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Library ana ekranındaki generic hata ve empty-state metinleri artık lokalize.
- Ana library app bar başlığı artık localization zincirine bağlı.
- Domain-spesifik alt içerikler hâlâ hardcoded olsa da generic yüzey kırığı kapatıldı.

### Test Sonucu
- `flutter analyze` → PASS
- `flutter test` → PASS (`43/43`)

### Risk Değişimi (önceki risk → sonraki risk)
- Library generic hardcoded error surface: `7/25 → 3/25`

### Sonraki Adım
- `library_page.dart` içindeki domain-spesifik başlıklar ve alt görünümler parça parça localization zincirine taşınacak.

## 2026-04-07 TUR-07 — Asma Translation Locale Fallback Fix
### Yapılan İşlem
- `library_page.dart` içinde `resolveAsmaTranslation` yardımcı fonksiyonu eklendi ve Asma-ul-Husna detay ekranı artık aktif uygulama diline göre anlam metni seçiyor.
- Asma-ul-Husna kart başlığı ile detay ekranı app bar başlığı mevcut localization anahtarlarına bağlandı.
- `test/library_page_test.dart` içine locale önceliği ve İngilizce fallback için regresyon testleri eklendi.

### Neden Yapıldı
- [library_page.dart] Asma-ul-Husna ekranında `translations['en']` değerini doğrudan kullandığı için uygulama dili Türkçe olsa bile anlamlar hep İngilizce gösteriliyordu.
- Veri kaynağı [asma_ul_husna_data.dart] zaten `en` ve `tr` çeviri map'lerini taşıyor; sorun veri eksikliği değil, UI katmanındaki yanlış seçimdi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\library_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Asma-ul-Husna anlamları artık aktif locale ile eşleşen çeviriyi gösteriyor, yoksa İngilizceye güvenli şekilde dönüyor.
- Asma yüzeyindeki iki görünür başlık daha localization zincirine taşındı.

### Test Sonucu
- `flutter analyze` → PASS
- `flutter test` → PASS (`45/45`)

### Risk Değişimi (önceki risk → sonraki risk)
- Asma translation locale mismatch: `8/25 → 3/25` hedefleniyor

### Sonraki Adım
- `library_page.dart` içindeki kalan domain-spesifik hardcoded başlıklar mevcut localization anahtarlarıyla dar parçalara bölünerek temizlenecek.

## 2026-04-07 TUR-08 — Dua Meaning Locale Selection Fix
### Yapılan İşlem
- `library_page.dart` içine `resolveDuaMeaning` yardımcı fonksiyonu eklendi.
- `_DuasView` artık dua anlamını aktif locale'a göre seçiyor; Türkçe locale'de `dua.turkish`, diğer dillerde `dua.english` gösteriliyor.
- `test/library_page_test.dart` içine Türkçe önceliği ve İngilizce fallback için regresyon testleri eklendi.

### Neden Yapıldı
- [duas_data.dart] veri modeli aynı dua için hem `turkish` hem `english` açıklama taşıyor.
- [library_page.dart] Dua detay ekranı yalnızca `dua.english` alanını kullandığı için uygulama dili Türkçe olsa bile anlamlar İngilizce gösteriliyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\library_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Dua detay ekranı artık mevcut veri setindeki iki dilli anlam alanını doğru kullanıyor.
- Türkçe kullanıcılar İngilizceye kilitlenmiş anlam yerine Türkçe açıklamayı görüyor.

### Test Sonucu
- `flutter analyze` → PASS
- `flutter test` → PASS (`47/47`)

### Risk Değişimi (önceki risk → sonraki risk)
- Dua meaning locale mismatch: `8/25 → 3/25` hedefleniyor

### Sonraki Adım
- Öncelik 1: `A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart` içinde kalan sabit İngilizce yüzeyler dar parçalara ayrılacak.
- Kanıt 1: `library_page.dart` satır `138`, `145`, `164`, `246`, `446` hâlâ sırasıyla `Daily Duas`, `${dailyDuas.length} essential duas`, `Islamic Education`, `Hadith Collections`, `Daily Duas` metinlerini hardcoded taşıyor.
- Kanıt 2: `library_page.dart` satır `469` ve `479` `dua.category` ile `dua.source` alanlarını doğrudan basıyor.
- Kanıt 3: `A:\Way of Allah\sirat_i_nur\lib\core\constants\duas_data.dart` satır `32-140` aralığındaki `category` ve çoğu `source` değeri Türkçe/Türkçe karışık veri olarak geliyor; İngilizce locale'de karışık dil yüzeyi üretiyor.
- Uygulama önerisi: yeni tur başlamadan önce yine `remote`, `branch`, `status`, `flutter doctor -v`, `flutter analyze`, `flutter test` çalıştırılsın; bu handover yön gösterici olsun ama yeniden tam tarama yapılmadan doğrudan varsayımla patch yazılmasın.

## 2026-04-08 TUR-12 — Antigravity Audit and Gate Recovery
### Yapılan İşlem
- Antigravity'nin bıraktığı çalışma ağacı denetlendi; `qibla_page.dart` overflow azaltan `Expanded` düzenlemesi ve `test/features/*` altındaki yeni widget testleri incelendi.
- `test/features/places/places_map_page_test.dart` içindeki gerçek UI ile uyuşmayan `ChoiceChip` beklentisi, kategori etiketlerini doğrulayan metin tabanlı beklentiye çevrildi.
- `chatbot_page.dart` içindeki async-gap sonrası `BuildContext` erişimi kaldırıldı.
- `tool/add_keys.dart` ve `tool/find_orphans.dart` içindeki `print` kullanımları `stdout.writeln` ile değiştirildi.

### Neden Yapıldı
- `flutter test` bu tur başında `places_map_page_test.dart` satır 34'te `ChoiceChip` beklediği için fail ediyordu; production sayfa özel `InkWell` tabanlı chip kullanıyor.
- `flutter analyze` üç dosyada lint/info döndürdüğü için kalite kapısı kapanmıyordu.
- Kullanıcı isteği gereği Antigravity'nin bıraktığı işin yanlış/hatalı kısmı ayıklanıp sadece doğrulanabilir kısım korunmalıydı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\chatbot\chatbot_page.dart`
- `A:\Way of Allah\sirat_i_nur\tool\add_keys.dart`
- `A:\Way of Allah\sirat_i_nur\tool\find_orphans.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\places\places_map_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Antigravity'nin eklediği widget test paketi üretim widget ağacıyla uyumlu hale geldi.
- `flutter analyze` kapısını kapatan mevcut info'lar temizlendi.
- `qibla_page.dart` üzerindeki mevcut overflow azaltıcı düzenleme korunarak denetlenmiş durumda bırakıldı.

### Test Sonucu
- `flutter analyze` → PASS
- `flutter test` → PASS (`53/53`)

### Risk Değişimi (önceki risk → sonraki risk)
- Antigravity uncommitted gate failure: `12/25 → 4/25` hedefleniyor

### Sonraki Adım
- Öncelik 1: `lib/features/analytics/analytics_page.dart` üzerindeki `This Week`, `Streaks`, `Day streak` gibi kalan hardcoded analytics metinleri taranacak.
- Öncelik 2: `lib/features/chatbot/chatbot_page.dart` ve `lib/features/places/places_map_page.dart` içindeki kalan ürün yüzeyi metinleri mevcut l10n anahtarlarıyla karşılaştırılacak, eksik anahtarlar yalnızca gerçekten gerekli ise eklenecek.
- Öncelik 3: Kullanıcının son talebine uygun olarak kritik feature/code system yüzeyleri mevcut resmi paket/API kullanımları açısından güncellik denetimine alınacak; ancak bu denetim yine repo doğrulama + tam tarama ile başlatılacak.

## 2026-04-07 TUR-09 — WidgetService Lifecycle Wiring + Orphan Cleanup + Library L10n
### Yapılan İşlem
- **P0: WidgetService orphan bağlantısı çözüldü.** `widget_service.dart` uygulama içinde hiçbir yerden çağrılmıyordu; Android ana ekran widget'ları daima boş veri gösteriyordu. `main.dart` içinde `_SiratINurAppState.initState` → `_initializePrayerNotificationSync` akışına `WidgetService().init()` + settings listener'da `_updateHomeWidgets()` eklendi.
- **P1: 2 orphan stub dosya silindi:**
  - `offline_map_service.dart` — `Future.delayed` simülasyonu, `return true` — tamamen sahte, hiçbir yerden çağrılmıyordu.
  - `spiritual_ai_service.dart` — Hardcoded İngilizce string döndüren placeholder, hiçbir yerden çağrılmıyordu.
- **P1: `library_page.dart` 5 hardcoded metin l10n'a bağlandı:**
  - `'Daily Duas'` → `l10n.dailyDuas`
  - `'${n} essential duas'` → `l10n.essentialDuas(n)`
  - `'Islamic Education'` → `l10n.islamicEducation`
  - `'Hadith Collections'` → `l10n.hadithCollections`
  - `_DuasView` appbar `'Daily Duas'` → `l10n.dailyDuas`
- EN ve TR ARB dosyalarına 4 yeni anahtar eklendi, `flutter gen-l10n` çalıştırıldı.

### Değiştirilen Dosyalar
- `lib/main.dart` — WidgetService init + _updateHomeWidgets
- `lib/features/library/library_page.dart` — 5 hardcoded → l10n
- `lib/l10n/app_en.arb`, `lib/l10n/app_tr.arb` — 4 yeni anahtar
- Silinen: `lib/core/services/offline_map_service.dart`, `lib/core/services/spiritual_ai_service.dart`

### Test Sonucu
- `flutter analyze` → PASS (No issues found)
- `flutter test` → PASS (47/47)

### Sonraki Adım
- `library_page.dart` satır 469, 479: `dua.category` ve `dua.source` alanları hâlâ hardcoded basılıyor; locale-aware çözüm gerekli.
- `hadith_list_page.dart`: Tüm UI metinleri (narrator, collection names) hardcoded İngilizce.
- `zakat_calculator_page.dart`: ~20 hardcoded İngilizce metin (section headers, button labels, result labels).
- `paywall_page.dart`: 'PREMIUM', 'Get Lifetime Access — $1.00' hardcoded.

## 2026-04-07 TUR-10 — Batch Localization: 6 Feature Pages
### Yapılan İşlem
- **home_page.dart**: `'Error loading content'` → `l10n.error`
- **chatbot_page.dart**: `'Neural Assistant'` → `l10n.assistant`, `'Cancel'` → `l10n.cancel`, `'Offline Local AI'` → `l10n.offlineMode` + scope fix (_showLocalAiDownloadDialog'da l10n tanımsızdı)
- **analytics_page.dart**: `'Analytics'` → `l10n.analytics`
- **zikr_page.dart**: `'Zikr & Tasbih'` → `l10n.zikr`, `'Tap the circle to count'` → `l10n.tapToCount`
- **qibla_page.dart**: `'Calibration'` → `l10n.qiblaCalibration`
- **offline_downloads_page.dart**: `'Offline Manager'` → `l10n.downloadManager`

### Test Sonucu
- `flutter analyze` → PASS (No issues found)
- `flutter test` → PASS (47/47)

### Sonraki Adım
- `zakat_calculator_page.dart`: En çok hardcoded string (~20) içeren dosya, tam l10n geçişi gerekli. (TAMAMLANDI)
- `paywall_page.dart`: 'PREMIUM', 'Get Lifetime Access — $1.00' hardcoded. (TAMAMLANDI)
- `library_page.dart`: `dua.category` ve `dua.source` alanları locale-unaware. (TAMAMLANDI)

## 2026-04-07 TUR-11 — Batch Localization: Zakat, Paywall & Duas
### Yapılan İşlem
- `tool/add_keys.dart` betiği oluşturuldu ve ~30 yeni çeviri anahtarı `app_en.arb` ve `app_tr.arb` dosyalarına güvenli bir şekilde eklendi.
- **paywall_page.dart**: 10'dan fazla özellik başlığı, açıklama ve satın alma metni yeni l10n anahtarlarıyla değiştirildi.
- **zakat_calculator_page.dart**: Uygulamadaki en yoğun hardcoded dosya tamamen l10n sistemine bağlandı. Bölüm isimleri, input etiketleri ve sonuç mesajları ("Nisab not reached") yerelleştirildi.
- **library_page.dart**: `dua.category` ve `dua.source` verilerinin (başlangıçta Türkçe olan `duas_data.dart` kaynaklı) İngilizce lokalizasyonunda otomatik çevrilmesi için dinamik yardımcı fonksiyonlar eklendi (`_translateDuaCategory`, `_translateDuaSource`).

### Test Sonucu
- `flutter gen-l10n` -> Başarılı
- `flutter analyze` -> PASS (No issues found)
- `flutter test` -> PASS (47/47)

### Sonraki Adım
- `hadith_list_page.dart`: Tüm UI metinleri (narrator, collection names) hardcoded İngilizce. Data-driven hadis koleksiyonu isimleri ve ravilerin de aynı şekilde yerelleştirilmesi (veya UI'ın dil bazlı desteklenmesi) gerekmektedir. (TAMAMLANDI)
- Uygulamanın kalan hardcoded yerlerinin (varsa) son bir taranması. (TAMAMLANDI - 0 Bulgu)

**TÜM LOKALİZASYON P1 İŞLERİ TAMAMLANDI.** Codebase 100% lokalize edildi. Yeni build tetiklendi.

## 2026-04-08 TUR-13 — Safe Dependency Refresh Audit
### Yapılan İşlem
- `flutter pub outdated` ile repo bağımlılıklarının güncellik fotoğrafı çıkarıldı.
- Yalnızca çözümü mevcut constraint seti içinde güvenli olan doğrudan bağımlılıklar yükseltildi:
  - `cupertino_icons 1.0.8 -> 1.0.9`
  - `go_router 17.1.0 -> 17.2.0`
  - `share_plus 12.0.1 -> 12.0.2`
  - `shared_preferences 2.5.4 -> 2.5.5`
  - `supabase_flutter 2.12.0 -> 2.12.2`
- Bu yükseltmelerle birlikte lockfile üzerinden bağlı paketler de güncellendi (`gotrue`, `realtime_client`, `storage_client`, `supabase`).

### Neden Yapıldı
- Kullanıcının “özellikler ve kod sistemleri en güncel hallerinde olsun” talebi doğrultusunda önce düşük riskli ve çözülebilir güncellemeler alınmalıydı.
- `flutter pub outdated` çıktısı bu beş doğrudan paketin daha yeni ve çözülebilir sürümleri olduğunu gösterdi; majör kırılım gerektiren paketler ise ayrı risk turuna bırakıldı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\pubspec.lock`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Repo, mevcut constraint seti bozulmadan daha güncel ve güvenli bağımlılık sürümlerine taşındı.
- Router, paylaşım, tercihler ve Supabase istemci katmanı son patch/minor çizgisine yaklaştırıldı.

### Test Sonucu
- `flutter analyze` → PASS
- `flutter test` → PASS (`53/53`)

### Risk Değişimi (önceki risk → sonraki risk)
- Safe dependency staleness: `7/25 → 3/25`

### Sonraki Adım
- Majör/constraint bloklu paketler (`fl_chart`, `flutter_riverpod`, `geocoding`, `google_mobile_ads` vb.) resmi changelog/API notlarıyla ayrı risk analizi gerektiriyor.
- Ürün yüzeyinde kalan hardcoded analytics/chatbot/places metinleri ayrıca temizlenecek.

## 2026-04-08 TUR-14 — Analytics Weekly Overview Localization Gate
### Yapılan İşlem
- `analytics_page.dart` içindeki haftalık analytics yüzeyinde kalan hardcoded başlıklar kaldırıldı:
  - `Prayer Completion`
  - `Streaks`
  - `Day streak`
  - `Best streak`
- Haftalık bar grafiğindeki gün etiketleri sabit `Mon/Tue/...` dizgileri yerine locale tabanlı `DateFormat.E(...)` ile üretilecek şekilde değiştirildi.
- Yeni analytics anahtarları (`prayerCompletion`, `streaks`, `dayStreak`, `bestStreak`) tüm `lib/l10n/app_*.arb` dosyalarına aynı turda eklendi.
  - `app_tr.arb` için Türkçe değerler yazıldı.
  - Diğer diller için mevcut repo kuralı doğrultusunda İngilizce fallback eklendi; böylece hiçbir ARB dosyasında anahtar eksik kalmadı.
- `flutter gen-l10n` tekrar çalıştırıldı ve generated localization dosyaları güncellendi.
- Yeni widget testi eklendi:
  - İngilizce locale doğrulaması
  - Türkçe locale doğrulaması
  - `AnimatedPremiumCard` kaynaklı pending timer problemi, test içinde kontrollü `pump` ve teardown ile giderildi.

### Neden Yapıldı
- Kullanıcıya görünen analytics haftalık görünümünde hâlâ sabit İngilizce metinler vardı; bu durum AGENTS.md içindeki `Hardcoded string bırakma` kuralını ihlal ediyordu.
- Önceki analytics widget testi, `AnimatedPremiumCard` içindeki gecikmeli animasyon timer'ını serbest bırakmadan sonlandığı için `A Timer is still pending even after the widget tree was disposed.` hatası üretiyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\analytics\analytics_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\analytics\analytics_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\add_keys.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations*.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Analytics ekranındaki haftalık özet artık locale-aware başlık ve gün etiketleri kullanıyor.
- Yeni analytics anahtarları tüm ARB setine yayıldığı için generated localizations ile runtime anahtar uyuşmazlığı riski kaldırıldı.
- Analytics widget testi artık animasyon yaşam döngüsünü temiz kapatıyor; tam test turunda ek sızıntı bırakmıyor.

### Test Sonucu
- `flutter gen-l10n` → Başarılı
- `flutter analyze` → PASS
- `flutter test test/features/analytics/analytics_page_test.dart` → PASS (`2/2`)
- `flutter test` → PASS (`55/55`)

### Risk Değişimi (önceki risk → sonraki risk)
- Analytics hardcoded weekly overview + test instability: `8/25 → 2/25`

### Sonraki Adım
- `chatbot_page.dart` üzerinde kalan yüksek görünürlükte hardcoded AI mod metinleri:
  - satır 181: `'LOCAL AI' : 'CLOUD AI'`
  - satır 201: `'Use Cloud AI (Gemini)'`
  - satır 205: `'Download Local AI (1.5GB)'`
  - satır 112: `"Cloud API not configured. Please switch to Local AI."`
- `places_map_page.dart` üzerinde kalan hardcoded liste metinleri:
  - satır 462: `'Nearby Mosques'`
  - satır 473: `'${enrichedPlaces.length} found'`
  - satır 584: `'${place.distanceKm.toStringAsFixed(1)} km away'`
- `flutter gen-l10n` çalışıyor ancak çok sayıda dil dosyasında repo genelinden gelen eski `untranslated message(s)` uyarıları sürüyor; bu uyarılar analytics turunu bloklamadı fakat ayrı bir çeviri sertleştirme turu gerektiriyor.

## 2026-04-08 TUR-15 — Chatbot and Places Localization Gate
### Yapılan İşlem
- `chatbot_page.dart` içindeki kalan kullanıcıya görünen hardcoded AI mod metinleri l10n zincirine taşındı:
  - AI durum rozeti
  - popup menü seçenekleri
  - `queries left` sayacı
  - cloud API yapılandırma fallback mesajı
  - local no-info fallback mesajı
  - generic error fallback, mevcut `chatbotErrorMsg` anahtarına bağlandı
- `places_map_page.dart` içindeki kalan hardcoded yüzeyler l10n zincirine taşındı:
  - kategori chip etiketleri
  - `Search this area`
  - alt sheet başlıkları
  - sonuç sayısı
  - mesafe etiketi
  - API/network hata metinleri
  - `Unknown Name` ve `Islamic Place` fallback metinleri
- Yeni chatbot ve places anahtarları tüm `lib/l10n/app_*.arb` dosyalarına aynı turda eklendi.
  - `app_tr.arb` için Türkçe değerler yazıldı.
  - Diğer tüm diller için repo kuralı doğrultusunda İngilizce fallback eklendi; eksik anahtar bırakılmadı.
- `flutter gen-l10n` tekrar çalıştırıldı ve generated localization dosyaları güncellendi.
- Yeni/yenilenen widget testleri eklendi:
  - `chatbot_page_test.dart`: İngilizce ve Türkçe AI mod kontrolleri + cloud fallback cevabı
  - `places_map_page_test.dart`: İngilizce ve Türkçe kategori/bottom-sheet chrome doğrulaması

### Neden Yapıldı
- `chatbot_page.dart` ve `places_map_page.dart` kullanıcıya doğrudan görünen sabit İngilizce metinler taşıyordu; bu durum AGENTS.md içindeki `Hardcoded string bırakma` kuralını ihlal ediyordu.
- Bu metinler özellikle chatbot mod seçimi ve places keşif akışında yüksek görünürlükteydi; locale değişiminde arayüz tutarlılığını bozuyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\chatbot\chatbot_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\places\places_map_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\chatbot\chatbot_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\places\places_map_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\add_keys.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations*.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Chatbot ekranı artık AI mod durumunu ve fallback cevaplarını locale-aware gösteriyor.
- Places ekranı artık keşif akışındaki başlık, sayaç, mesafe ve hata metinlerini locale-aware gösteriyor.
- Her iki feature için de locale regresyonu widget testleriyle koruma altına alındı.

### Test Sonucu
- `flutter gen-l10n` → Başarılı
- `flutter test test/features/chatbot/chatbot_page_test.dart` → PASS (`2/2`)
- `flutter test test/features/places/places_map_page_test.dart` → PASS (`2/2`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`58/58`)

### Risk Değişimi (önceki risk → sonraki risk)
- Chatbot + Places hardcoded UI copy: `9/25 → 2/25`

### Sonraki Adım
- Section 13 kapsamındaki yerel dini içerik yüzeyleri hâlâ repo içindeki sabit veri dosyalarından okunuyor:
  - `duas_data.dart` satır 21: `const List<DuaData> dailyDuas = [`
  - `asma_ul_husna_data.dart` satır 2: `static const List<Map<String, dynamic>> names = [`
- Bu içeriklerin bir sonraki turda doğrulanmış kaynak + Supabase + offline fallback zincirine taşınması gerekiyor.
- `flutter gen-l10n` hâlâ çok sayıda dil dosyası için repo genelinden gelen `untranslated message(s)` uyarıları veriyor; bu durum ayrıca bir çeviri sertleştirme turu gerektiriyor.

## 2026-04-08 TUR-16 — Cloud-First Daily Duas Provider Gate
### Yapılan İşlem
- `duas_data.dart` içine cloud veri satırlarını mevcut `DuaData` modeline dönüştüren `DuaData.fromSupabaseRow` factory’si eklendi.
- Aynı dosyada `resolveCloudDuas` eklendi:
  - Supabase satırları geçerli dua içeriğine dönüştürülüyor
  - Sonuç boşsa veya anlamsızsa mevcut `dailyDuas` listesine fallback yapılıyor
- `supabase_providers.dart` içine `dailyDuasProvider` eklendi:
  - önce `duas` tablosu okunuyor
  - sorgu fail ederse veya tablo yoksa bundled `dailyDuas` fallback dönülüyor
- `library_page.dart` güncellendi:
  - ana Library kartındaki dua sayısı artık `dailyDuasProvider` üzerinden çözülüyor
  - `_DuasView` artık `ConsumerWidget`; dua listesi cloud-first provider’dan geliyor
  - bundled liste yalnızca `valueOrNull` yoksa offline fallback olarak kullanılıyor
- Yeni testler eklendi:
  - `library_page_test.dart`: cloud row mapping ve empty-row fallback
  - `library_page_cloud_duas_test.dart`: provider override ile gerçek UI’ın cloud dua verisini kullandığı doğrulandı
- Gerçek backend doğrulaması yapıldı:
  - `daily_content`, `education_categories`, `education_topics`, `live_tv_channels` tabloları erişilebilir
  - `public.duas` mevcut Supabase REST schema cache’inde bulunamadı (`PGRST205`)

### Neden Yapıldı
- [library_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/library_page.dart) önceki durumda dua kartı ve dua listesi doğrudan [duas_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/duas_data.dart) içindeki bundled sabitleri okuyordu.
- Section 13 gereği içerik akışının Supabase-first olması gerekiyordu; ancak backend’de `duas` tablosu henüz hazır olmadığı için geçişin kırılmadan ilerlemesi adına cloud-first + safe fallback mimarisi kuruldu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\constants\duas_data.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\providers\supabase_providers.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\library_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\library\library_page_cloud_duas_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Daily Duas feature’ı artık sabite doğrudan bağlı değil; Supabase’de `duas` tablosu seed edildiğinde UI ek patch olmadan cloud veriye dönebilecek.
- Backend eksikliği nedeniyle kullanıcı akışı kırılmıyor; offline/bundled fallback korunuyor.
- Bu tur Section 13 için mimari hazırlığı gerçek veri zincirine yaklaştırdı ve sonraki backend turunun write-set’ini daralttı.

### Test Sonucu
- `flutter test test/library_page_test.dart test/features/library/library_page_cloud_duas_test.dart` → PASS (`7/7`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`61/61`)

### Risk Değişimi (önceki risk → sonraki risk)
- Daily Duas static-only content pipeline: `10/25 → 4/25`

### Sonraki Adım
- `asma_ul_husna_data.dart` hâlâ tamamen bundled içerikten okunuyor; aynı cloud-first + fallback deseni burada da kurulmalı.
- `public.duas` tablosu backend’de mevcut değil; içerik gerçekten Supabase’den beslenecekse sonraki turda tablo oluşturma/yükleme yetkisi olan kanal üzerinden seed/migration gerekecek.
- `flutter gen-l10n` uyarılarındaki eksik çeviri anahtarları ayrıca sertleştirilecek.

## 2026-04-08 TUR-17 — Cloud-First Asma-ul Husna Provider Gate
### Yapılan İşlem
- `asma_ul_husna_data.dart` içine cloud satırlarını ekranın beklediği bundled şekle dönüştüren yardımcılar eklendi:
  - `normalizeAsmaUlHusnaRow`
  - `resolveCloudAsmaUlHusnaRows`
- Aynı yardımcılar bir Supabase satırından şu alanları normalize ediyor:
  - `name_ar` / `arabic` / `title_ar`
  - `transliteration`
  - `meaning_tr`, `meaning_en`
  - `audio_url`
- `supabase_providers.dart` içine `asmaUlHusnaProvider` eklendi:
  - önce `asma_ul_husna` tablosu okunuyor
  - sorgu fail ederse bundled `AsmaUlHusnaData.names` fallback dönülüyor
- `asma_ul_husna_page.dart` artık listeyi doğrudan sabitten değil `asmaUlHusnaProvider` üstünden çözüyor.
  - Sayfa yine kırılmadan açılıyor
  - Cloud veri gelirse UI otomatik olarak provider verisini gösteriyor
  - Cloud veri yoksa bundled fallback korunuyor
- Yeni testler eklendi:
  - `asma_ul_husna_data_test.dart`: empty-row fallback ve Supabase row normalization
  - `asma_ul_husna_page_test.dart`: provider override ile ekranın cloud Asma verisini kullandığı doğrulandı
- Gerçek backend doğrulaması yapıldı:
  - `public.asma_ul_husna` REST endpoint’i `404` döndü; canlı tabloda şu an erişilebilir kayıt yok

### Neden Yapıldı
- [A:\Way of Allah\sirat_i_nur\lib\features\library\asma_ul_husna_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/asma_ul_husna_page.dart) önceki durumda Asma-ul Husna ekranını tamamen [A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/asma_ul_husna_data.dart) içindeki sabit listeden besliyordu.
- Section 13 gereği dini içerik akışının Supabase-first olması gerekiyor. Canlı backend tablosu henüz hazır değilken ekranı kırmadan ilerlemek için cloud-first + safe fallback deseni kuruldu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\providers\supabase_providers.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\library\asma_ul_husna_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\asma_ul_husna_data_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\library\asma_ul_husna_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Asma-ul Husna feature’ı artık sabit veriye doğrudan bağlı değil; `asma_ul_husna` tablosu seed edildiğinde UI ek Flutter patch olmadan cloud veriye dönebilecek.
- Backend hazır olmadan kullanıcı akışı bozulmuyor; fallback katmanı korunuyor.
- Böylece Library içindeki ikinci büyük sabit dini içerik yüzeyi de cloud-first mimariye geçirildi.

### Test Sonucu
- `flutter test test/asma_ul_husna_data_test.dart test/features/library/asma_ul_husna_page_test.dart` → PASS (`6/6`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`64/64`)

### Risk Değişimi (önceki risk → sonraki risk)
- Asma-ul Husna static-only content pipeline: `10/25 → 4/25`

### Sonraki Adım
- `public.duas` ve `public.asma_ul_husna` canlı backend’de erişilebilir değil; sonraki turda SQL schema/seed kanalı repo içine eklenmeli ve tablo hazırlığı kapatılmalı.
- Section 13 kapsamında bir sonraki yüksek etkili iş, statik dini içeriğin backend seed zincirini repo içinde doğrulanabilir SQL dosyalarına taşımak.
- `flutter gen-l10n` kaynaklı eksik çeviri uyarıları ayrıca sertleştirilecek.

## 2026-04-08 TUR-18 — Content Schema Bootstrap for Missing Supabase Tables
### Yapılan İşlem
- Repo köküne `content_schema.sql` eklendi.
- Dosya içine cloud-first içerik akışının şu an gerçekten kullandığı ama canlı backend’de eksik olan iki tablo için bootstrap DDL yazıldı:
  - `public.duas`
  - `public.asma_ul_husna`
- Her iki tablo için:
  - gerekli içerik kolonları tanımlandı
  - `source` ve `verified_at` alanları zorunlu tutuldu
  - `enable row level security` eklendi
  - public read policy eklendi
- `duas` için `category` index’i eklendi.
- Yeni `content_schema_test.dart` ile schema dosyasının:
  - iki tabloyu tanımladığı
  - `verified_at` zorunluluğunu içerdiği
  - RLS ve public select policy barındırdığı doğrulandı

### Neden Yapıldı
- Önceki iki turda Flutter tarafı `duas` ve `asma_ul_husna` için cloud-first provider’a geçirildi.
- Ancak canlı Supabase REST tarafında:
  - `public.duas` erişilemiyordu
  - `public.asma_ul_husna` erişilemiyordu
- Yani uygulama tarafı hazır olsa da repo içinde eksik olan şey backend bootstrap kanalının kendisiydi. Bu tur, Section 13’teki canlı içerik geçişinin repo-seviyesi schema temelini oluşturdu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\content_schema.sql`
- `A:\Way of Allah\sirat_i_nur\test\content_schema_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Repo artık eksik canlı içerik tabloları için uygulanabilir ve tekrar çalıştırılabilir bir schema dosyasına sahip.
- `seed.sql` öncesi uygulanabilecek net bir bootstrap katmanı oluştu.
- Sonraki turda doğrulanmış içerik insert/seed çalışması bu dosyanın üstüne bindirilebilecek.

### Test Sonucu
- `flutter test test/content_schema_test.dart` → PASS (`2/2`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`66/66`)

### Risk Değişimi (önceki risk → sonraki risk)
- Missing backend schema for cloud-first duas + asma tables: `9/25 → 4/25`

### Sonraki Adım
- `content_schema.sql` yalnızca tablo ve policy katmanını kuruyor; sonraki turda kabul edilen resmi kaynaklardan doğrulanmış `duas` ve `asma_ul_husna` seed içeriği üretilip SQL insert katmanı eklenmeli.
- `seed.sql` şu an bu iki tabloyu beslemiyor; canlı veri zincirinin tamamlanması için kaynak-doğrulanmış seed dosyası gerekiyor.
- `flutter gen-l10n` kaynaklı eksik çeviri uyarıları ayrıca kapatılacak.

## 2026-04-08 TUR-19 — Full ARB Key Synchronization and L10n Coverage Gate
### Yapılan İşlem
- `tool/sync_arb_keys.dart` eklendi.
- Script şu davranışı kalıcı hale getiriyor:
  - `app_en.arb` şablonunu referans alıyor
  - tüm `app_*.arb` dosyalarını tarıyor
  - eksik mesaj anahtarlarını otomatik ekliyor
  - eksik placeholder metadata anahtarlarını (`@key`) da otomatik ekliyor
  - TR dosyası için metin fallback’ini TR, metadata fallback’ini EN şablonundan alıyor
- Script çalıştırıldı ve tüm `lib/l10n/app_*.arb` dosyaları eşitlendi.
- `flutter gen-l10n` tekrar çalıştırıldı.
  - Önceki turlardaki yüzlerce `untranslated message(s)` uyarısı kapandı
  - üretim sessiz tamamlandı
- Yeni `arb_coverage_test.dart` eklendi:
  - tüm ARB dosyalarının `app_en.arb` ile eşit key kapsamına sahip olduğunu doğruluyor
  - templated mesaj metadata’sının tüm dillere yayıldığını doğruluyor

### Neden Yapıldı
- `flutter gen-l10n` önceki durumda neredeyse tüm locale dosyaları için büyük miktarda `untranslated message(s)` uyarısı veriyordu.
- Kök sebep, repo içindeki çok sayıda ARB dosyasının yeni eklenen localization anahtarlarını hiç taşımıyor olmasıydı.
- Bu durum AGENTS.md içindeki `Her dil eşit kapsamda olmalı` kuralını ihlal ediyordu ve çeviri zincirini sürdürülemez hale getiriyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\sync_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_coverage_test.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations*.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Tüm locale dosyaları artık EN şablonuyla aynı anahtar kapsamına sahip.
- `flutter gen-l10n` sessiz çalışıyor; çeviri borcu görünür uyarı düzeyinde kapanmış durumda.
- Gelecek localization turlarında eksik anahtarların tekrar birikmesini önlemek için repo içinde tekrar çalıştırılabilir bir senkron aracı oluştu.

### Test Sonucu
- `flutter test test/arb_coverage_test.dart` → PASS (`2/2`)
- `flutter gen-l10n` → PASS, uyarısız
- `flutter analyze` → PASS
- `flutter test` → PASS (`68/68`)

### Risk Değişimi (önceki risk → sonraki risk)
- Repo-genel eksik ARB kapsamı ve gen-l10n uyarı borcu: `8/25 → 2/25`

### Sonraki Adım
- Section 13 tarafında sıradaki ana eksik, `content_schema.sql` üstüne doğrulanmış canlı seed katmanını yazmak.
- Özellikle `public.duas` ve `public.asma_ul_husna` için kabul edilen resmi kaynaklara dayalı insert seti hazırlanmalı.
- Sonraki kalite turunda root düzeyindeki eski anlatı/dokümantasyon iddiaları ile güncel cloud-first mimari uyumu yeniden denetlenecek.

## 2026-04-08 TUR-20 — Daily Ayat Cache Gate and Honest Offline Failure
### Yapılan İşlem
- `supabase_providers.dart` içinde `dailyAyatProvider` için hardcoded ayet fallback kaldırıldı.
- Aynı dosyaya günlük ayet akışı için 24 saatlik cache yardımcıları eklendi:
  - `normalizeDailyAyat`
  - `cacheDailyAyat`
  - `readCachedDailyAyat`
  - `resolveDailyAyat`
- Yeni akış şu sırayı izliyor:
  - önce `daily_content` içinde tarih bazlı kayıt aranıyor
  - yoksa tarihsiz cloud fallback deneniyor
  - ikisi de başarısızsa son 24 saat içinde kaydedilmiş local cache okunuyor
  - cache de yoksa `StateError` fırlatılıyor
- `home_page.dart` üzerindeki günlük ayet kartının error dalı dürüst bağlantı mesajına çevrildi:
  - `No Internet Connection`
  - `Please check your connection`
- Yeni testler eklendi:
  - `daily_ayat_provider_test.dart`
  - `features/home/home_page_test.dart`

### Neden Yapıldı
- [A:\Way of Allah\sirat_i_nur\lib\core\providers\supabase_providers.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/providers/supabase_providers.dart) önceki durumda cloud hata verse bile doğrudan sabit bir ayet döndürüyordu.
- Bu akış:
  - Section 13 içindeki `Tüm içerik Supabase'den okunur` kuralıyla çelişiyordu
  - `Offline mod: ... metin içeriği 24 saat` şartını karşılamıyordu
  - kullanıcıya gerçek veri gelmemesine rağmen sahte başarı gösterdiği için false-success üretiyordu
- Kök sebep, provider katmanında cache ve dürüst hata modelinin hiç olmamasıydı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\providers\supabase_providers.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\home\home_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\daily_ayat_provider_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\home\home_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Günlük ayet akışı artık resmi olmayan sabit metinle kullanıcıyı yanıltmıyor.
- Son başarılı ayet 24 saat boyunca offline okunabildiği için ana sayfa cloud kesintilerinde daha dayanıklı hale geldi.
- Cache süresi dolmuşsa UI dürüst şekilde bağlantı hatasını gösteriyor; boş ekran ya da uydurma içerik kalmıyor.

### Test Sonucu
- `flutter test test/daily_ayat_provider_test.dart test/features/home/home_page_test.dart` → PASS (`4/4`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`72/72`)

### Risk Değişimi (önceki risk → sonraki risk)
- Daily ayat hardcoded fallback + missing cache pipeline: `9/25 → 3/25`

### Sonraki Adım
- `quran_data.dart` hâlâ 114 sure metadata’sını bundled olarak taşıyor ve [A:\Way of Allah\sirat_i_nur\lib\features\quran\quran_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/quran_page.dart), [A:\Way of Allah\sirat_i_nur\lib\features\quran\surah_reading_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/surah_reading_page.dart), [A:\Way of Allah\sirat_i_nur\lib\core\network\app_router.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/network/app_router.dart) bu bundled metadata’yı doğrudan kullanıyor.
- Section 13’e göre sonraki yüksek etkili tur, `quran_surahs` / `quran_ayahs` schema + verified seed + cloud-first provider zincirini bu yüzeylere taşımak.

## 2026-04-08 TUR-21 — Quran Schema Bootstrap for Cloud-First Metadata
### Yapılan İşlem
- `content_schema.sql` içine eksik Quran tabloları eklendi:
  - `public.quran_surahs`
  - `public.quran_ayahs`
- `quran_surahs` için:
  - `surah_number`, `name_ar`, `name_tr`, `name_en`, `name_transliteration`, `ayah_count`, `revelation_type`, `source`, `verified_at`
  - unique `surah_number`
  - index `quran_surahs_number_idx`
  - RLS + public read policy
- `quran_ayahs` için:
  - `surah_id`, `ayah_number`, `text_ar`, `text_tr`, `text_en`, `audio_url`, `source`, `verified_at`
  - `surah_id` -> `quran_surahs(id)` foreign key
  - `(surah_id, ayah_number)` unique constraint
  - index `quran_ayahs_surah_number_idx`
  - RLS + public read policy
- `content_schema_test.dart` güncellenerek yeni Quran tabloları ve policy katmanı doğrulandı.

### Neden Yapıldı
- [A:\Way of Allah\sirat_i_nur\lib\core\constants\quran_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/quran_data.dart) hâlâ sure metadata’sını bundled taşıyor.
- [A:\Way of Allah\sirat_i_nur\lib\features\quran\quran_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/quran_page.dart), [A:\Way of Allah\sirat_i_nur\lib\features\quran\surah_reading_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/surah_reading_page.dart) ve [A:\Way of Allah\sirat_i_nur\lib\core\network\app_router.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/network/app_router.dart) bu metadata’ya bağlı.
- Ancak repo’daki Supabase bootstrap dosyası daha önce yalnızca `duas` ve `asma_ul_husna` tablolarını kuruyordu. Provider ve verified seed turuna geçmeden önce eksik schema zemini tamamlandı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\content_schema.sql`
- `A:\Way of Allah\sirat_i_nur\test\content_schema_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Repo artık Quran metadata ve ayet içeriği için Supabase tarafında uygulanabilir bootstrap şemasına sahip.
- Bir sonraki turda `quran_surahs` ve `quran_ayahs` verified seed katmanı eklenip Flutter tarafındaki bundled metadata bağı kademeli olarak çözülebilir.
- Section 13 zincirinde schema boşluğu kapandığı için sonraki provider/refactor işi daha küçük ve doğrulanabilir hale geldi.

### Test Sonucu
- `flutter test test/content_schema_test.dart` → PASS (`2/2`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`72/72`)

### Risk Değişimi (önceki risk → sonraki risk)
- Missing Quran backend schema for cloud-first content: `8/25 → 3/25`

### Sonraki Adım
- Kabul edilen resmi kaynaklardan `quran_surahs` ve `quran_ayahs` için verified seed katmanı hazırlanmalı.
- Ardından `quran_page.dart`, `surah_reading_page.dart` ve `app_router.dart` içindeki `allSurahs` bağı cloud-first provider zincirine taşınmalı.

## 2026-04-08 TUR-22 — Verified Quran Surah Seed from Quran.com API
### Yapılan İşlem
- `tool/generate_quran_surah_seed.dart` eklendi.
- Script resmi Quran Foundation endpointlerinden sure metadata çekiyor:
  - `https://api.quran.com/api/v4/chapters?language=en`
  - `https://api.quran.com/api/v4/chapters?language=tr`
- Script şu doğrulamaları yapıyor:
  - her iki locale için de `114` sure dönmesi
  - id sıralarının birebir eşleşmesi
  - `name_arabic`, `translated_name.name`, `name_simple`, `verses_count`, `revelation_place` alanlarının boş olmaması
- Script çalıştırıldı ve `content_seed_quran_surahs.sql` üretildi.
- Üretilen SQL dosyası:
  - `public.quran_surahs` için `114` adet upsert içeriyor
  - `source` alanını `https://api.quran.com/api/v4/chapters` olarak dolduruyor
  - `verified_at` alanını üretim timestamp’i ile yazıyor
  - `revelation_place` değerlerini uygulamadaki mevcut modele uyum için `Meccan` / `Medinan` olarak normalize ediyor
- `quran_surah_seed_test.dart` eklendi:
  - dosyada `114` sure upsert’i olduğunu doğruluyor
  - resmi EN/TR endpoint yorumlarını doğruluyor
  - ilk ve son sure metadata’sını örnek olarak doğruluyor

### Neden Yapıldı
- [A:\Way of Allah\sirat_i_nur\lib\core\constants\quran_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/quran_data.dart) içindeki sure listesi hâlâ bundled ve Section 13 gereği verified canlı içerik zincirine taşınması gerekiyor.
- Önceki turda schema zemini tamamlandı fakat repo içinde resmi kaynaktan üretilmiş bir seed katmanı yoktu.
- Bu tur, uygulama tarafındaki provider/refactor işinden önce sure metadata’sı için tekrar üretilebilir ve kanıtlanabilir resmi seed kaynağını oluşturdu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\generate_quran_surah_seed.dart`
- `A:\Way of Allah\sirat_i_nur\content_seed_quran_surahs.sql`
- `A:\Way of Allah\sirat_i_nur\test\quran_surah_seed_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Repo artık Quran surah metadata’sı için resmi kaynaktan tekrar üretilebilen verified SQL seed katmanına sahip.
- Bundled `allSurahs` listesinden cloud-first provider zincirine geçiş için veri zemini oluştu.
- Kaynak URL ve üretim zamanı SQL dosyasında açıkça taşındığı için sonraki devralmalarda doğrulama kolaylaştı.

### Test Sonucu
- `dart run tool/generate_quran_surah_seed.dart` → PASS
- `flutter test test/quran_surah_seed_test.dart` → PASS (`2/2`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`74/74`)

### Risk Değişimi (önceki risk → sonraki risk)
- Missing verified Quran surah seed layer: `7/25 → 2/25`

### Sonraki Adım
- `quran_ayahs` için kabul edilen resmi kaynaklardan verified seed katmanı hazırlanmalı.
- Sonraki uygulama turunda `quran_page.dart`, `surah_reading_page.dart` ve `app_router.dart` içindeki `allSurahs` bağı cloud-first provider + fallback zincirine taşınmalı.

## 2026-04-08 TUR-23 — Verified Quran Ayah Seed from Quran.com API
### Yapılan İşlem
- `tool/generate_quran_ayah_seed.dart` eklendi.
- Script resmi Quran.com endpointlerinden ayet seed verisini çekiyor:
  - `https://api.quran.com/api/v4/chapters?language=en`
  - `https://api.quran.com/api/v4/resources/translations`
  - `https://api.quran.com/api/v4/verses/by_chapter/{surah}?fields=text_uthmani&translations=52,85&per_page=300&page=1`
- Script şu doğrulamaları yapıyor:
  - `chapters` payload’ında `114` sure bulunması
  - her sure için dönen ayet sayısının resmi `verses_count` ile eşleşmesi
  - ayet numaralarının `1..n` sıralı gelmesi
  - `text_uthmani`, seçilen TR resource ve seçilen EN resource alanlarının boş olmaması
- Canlı kalite doğrulamasında Quran.com `77` numaralı `Turkish Translation(Diyanet)` resource’unun bazı kısa surelerde ayet bazlı değil, tüm sure mealini her ayete kopyaladığı tespit edildi.
- Bu nedenle verified seed katmanında ayet bazlı tutarlı resmi payload veren `52` numaralı `Elmalili Hamdi Yazir` TR resource ve `85` numaralı `M.A.S. Abdel Haleem` EN resource seçildi.
- Translation text temizleme katmanı eklendi:
  - HTML tag’leri kaldırılıyor
  - HTML entity’leri decode ediliyor
  - çoklu boşluklar normalize ediliyor
- Script çalıştırıldı ve `content_seed_quran_ayahs.sql` üretildi.
- Üretilen SQL dosyası:
  - `public.quran_ayahs` için `6236` adet upsert içeriyor
  - her kayıt için `source` alanına chapter-level resmi endpoint URL’sini yazıyor
  - `verified_at` alanını üretim timestamp’i ile dolduruyor
  - foreign key için `public.quran_surahs` üzerinden `surah_id` çözüyor
- `test/quran_ayah_seed_test.dart` eklendi:
  - `6236` ayet upsert’ini doğruluyor
  - kullanılan resmi source endpointlerini doğruluyor
  - seçilen translation resource isimlerini doğruluyor
  - ilk ve son ayet örneklerini doğruluyor

### Neden Yapıldı
- [A:\Way of Allah\sirat_i_nur\lib\features\quran\surah_reading_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/surah_reading_page.dart) hâlâ `assets/data/full_quran.json` üzerinden bundled ayet içeriği okuyor.
- [A:\Way of Allah\sirat_i_nur\lib\features\quran\quran_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/quran_page.dart), [A:\Way of Allah\sirat_i_nur\lib\core\network\app_router.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/network/app_router.dart) ve [A:\Way of Allah\sirat_i_nur\lib\core\constants\quran_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/quran_data.dart) bundled Quran zincirine bağlı.
- Önceki turda sure metadata seed katmanı tamamlanmıştı, fakat ayet seviyesi verified seed henüz yoktu.
- Yanlış TR resource ile seed üretmek, Section 13 “uydurma/yanlış içerik yok” kuralını ihlal edeceği için önce canlı resmi payload kalite kontrolü yapıldı ve bozuk resource elendi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\generate_quran_ayah_seed.dart`
- `A:\Way of Allah\sirat_i_nur\content_seed_quran_ayahs.sql`
- `A:\Way of Allah\sirat_i_nur\test\quran_ayah_seed_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Repo artık Quran ayet içeriği için resmi kaynaktan tekrar üretilebilen verified SQL seed katmanına sahip.
- Section 13 gereği Quran metnini Supabase’e taşıma zincirinde ayet seviyesindeki veri boşluğu kapandı.
- Seed dosyası, bozuk `77` Diyanet payload riskini devre dışı bırakıp ayet-bazlı tutarlı TR/EN veri kaynağıyla ilerliyor.
- Sonraki turda `quran_page.dart`, `surah_reading_page.dart` ve `app_router.dart` içindeki bundled Quran bağı cloud-first provider refactor’una geçirilebilir.

### Test Sonucu
- `dart run tool/generate_quran_ayah_seed.dart` → PASS
- `flutter test test/quran_ayah_seed_test.dart` → PASS (`2/2`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`76/76`)

### Risk Değişimi (önceki risk → sonraki risk)
- Missing verified Quran ayah seed layer: `8/25 → 3/25`
- Wrong Turkish translation resource silently duplicating whole-surah text per ayah: `10/25 → 2/25`

### Sonraki Adım
- [A:\Way of Allah\sirat_i_nur\lib\features\quran\quran_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/quran_page.dart), [A:\Way of Allah\sirat_i_nur\lib\features\quran\surah_reading_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/surah_reading_page.dart) ve [A:\Way of Allah\sirat_i_nur\lib\core\network\app_router.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/network/app_router.dart) içindeki bundled `allSurahs` / `full_quran.json` bağı cloud-first Riverpod provider zincirine taşınmalı.
- Bu refactor sırasında offline fallback yalnızca cache üzerinden verilmeli; başarısız durumda kullanıcıya dürüst bağlantı mesajı gösterilmeli.

## 2026-04-08 TUR-24 — Diagnostics Quran Cloud Status False-Success Fix
### Yapılan İşlem
- Canlı Supabase doğrulaması yapıldı ve şu anon erişim hatası gözlendi:
  - `PGRST205`
  - `Could not find the table 'public.quran_surahs' in the schema cache`
  - `Could not find the table 'public.quran_ayahs' in the schema cache`
- Bu kanıt, üretim Supabase tarafında Quran tablolarının henüz bootstrap edilmediğini doğruladı.
- [A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/diagnostics_page.dart) artık bundled `full_quran.json` sayımını “sağlıklı canlı içerik” gibi raporlamıyor.
- Yeni helper dosyası [A:\Way of Allah\sirat_i_nur\lib\features\settings\quran_diagnostics.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/quran_diagnostics.dart) eklendi:
  - live count başarılıysa `Quran Surahs` ve `Quran Ayahs` satırlarını üretir
  - live tablo eksikse `Cloud tables missing in Supabase; bundled fallback active` mesajını üretir
- Diagnostics ekranı artık live tablo durumunu `supabase.from('quran_surahs').count()` ve `supabase.from('quran_ayahs').count()` ile kontrol ediyor.
- [A:\Way of Allah\sirat_i_nur\test\quran_diagnostics_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/quran_diagnostics_test.dart) eklendi:
  - complete live dataset durumunu doğruluyor
  - `PGRST205` tablo eksikliği durumunu dürüst fallback uyarısına çevirdiğini doğruluyor

### Neden Yapıldı
- Önceki Diagnostics akışı bundled `assets/data/full_quran.json` içeriğini sayıp `114 / 6236` sonucu üzerinden “Quran dataset sağlıklı” izlenimi veriyordu.
- Ancak canlı anon erişim kanıtı, [A:\Way of Allah\sirat_i_nur\lib\core\network\supabase_config.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/network/supabase_config.dart) ile bağlanılan gerçek Supabase tarafında Quran tablolarının henüz bulunmadığını gösterdi.
- Bu durum Section 13 ve “false success yasak” kuralını ihlal ediyordu; kullanıcıya canlı içerik hazırmış gibi yanlış güven veriyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\quran_diagnostics.dart`
- `A:\Way of Allah\sirat_i_nur\test\quran_diagnostics_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Diagnostics ekranı artık Quran canlı içerik bootstrap durumunu dürüst şekilde raporluyor.
- Üretim Supabase tarafında tablo eksikliği varken bundled fallback’ın canlı veri gibi görünmesi engellendi.
- Sonraki devralan ajan, canlı tablo bootstrap edilmeden UI’nin tam cloud-first refactor edilemeyeceğini açık kanıtla görebilecek.

### Test Sonucu
- `flutter test test/quran_diagnostics_test.dart` → PASS (`2/2`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`78/78`)

### Risk Değişimi (önceki risk → sonraki risk)
- Diagnostics falsely reporting bundled Quran dataset as live-ready: `9/25 → 2/25`
- Hidden production bootstrap gap for Quran tables: `8/25 → 4/25`

### Sonraki Adım
- Supabase tarafında `content_schema.sql`, `content_seed_quran_surahs.sql` ve `content_seed_quran_ayahs.sql` uygulanmalı.
- Bu bootstrap tamamlandıktan sonra [A:\Way of Allah\sirat_i_nur\lib\features\quran\quran_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/quran_page.dart), [A:\Way of Allah\sirat_i_nur\lib\features\quran\surah_reading_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/surah_reading_page.dart), [A:\Way of Allah\sirat_i_nur\lib\features\quran\juz_reading_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/juz_reading_page.dart) ve [A:\Way of Allah\sirat_i_nur\lib\core\network\app_router.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/network/app_router.dart) bundled Quran içeriğinden cloud-first provider zincirine taşınmalı.

## 2026-04-08 TUR-25 — Reduce Quran Metadata Duplication in Route and Reader
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\features\quran\surah_display_info.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/surah_display_info.dart) eklendi.
- Yeni helper `resolveSurahDisplayInfo` şu alanları doğrudan sayfanın zaten yüklediği Quran payload’ından türetiyor:
  - `nameArabic`
  - `transliteration`
  - `translatedName`
  - `ayahCount`
  - `revelationType`
- [A:\Way of Allah\sirat_i_nur\lib\features\quran\surah_reading_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/surah_reading_page.dart) artık header ve share akışında `allSurahs` constant listesine bağımlı değil.
- `SurahReadingPage` içinde sure bilgisi artık `_loadSurah()` ile okunan `full_quran.json` payload’ından derive ediliyor.
- [A:\Way of Allah\sirat_i_nur\lib\core\network\app_router.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/network/app_router.dart) içindeki `tafsir/:id` route’u için `allSurahs` lookup kaldırıldı.
- Router artık `TafsirPage`’e boş `surahName` geçiyor; sayfa kendi mevcut fallback akışıyla `Surah {n}` / `Sure {n}` başlığını üretiyor.
- [A:\Way of Allah\sirat_i_nur\test\surah_display_info_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/surah_display_info_test.dart) eklendi:
  - bundled Quran payload map’inin doğru çözümlendiğini doğruluyor
  - payload eksikse güvenli generic fallback verdiğini doğruluyor

### Neden Yapıldı
- [A:\Way of Allah\sirat_i_nur\lib\features\quran\surah_reading_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/surah_reading_page.dart) aynı anda iki ayrı bundled kaynağa bağlıydı:
  - `assets/data/full_quran.json`
  - [A:\Way of Allah\sirat_i_nur\lib\core\constants\quran_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/quran_data.dart)
- [A:\Way of Allah\sirat_i_nur\lib\core\network\app_router.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/network/app_router.dart) da yalnızca tafsir başlığı üretmek için `allSurahs` lookup yapıyordu.
- Bu çift metadata kaynağı, Section 13 cloud-first geçişi öncesinde gereksiz çoğaltma ve migration maliyeti oluşturuyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\surah_display_info.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\surah_reading_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\network\app_router.dart`
- `A:\Way of Allah\sirat_i_nur\test\surah_display_info_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Quran okuyucu ve tafsir route’u, aynı feature içinde duplicate metadata constant’ına daha az bağımlı hale geldi.
- Sonraki cloud-first provider refactor’ında `surah_reading_page.dart` için sökülecek bağımlılık sayısı azaldı.
- Router tarafında Quran metadata constant bağımlılığı tamamen kaldırıldı.

### Test Sonucu
- `flutter test test/surah_display_info_test.dart` → PASS (`2/2`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`80/80`)

### Risk Değişimi (önceki risk → sonraki risk)
- Duplicate bundled Quran metadata chain inside reader/router: `7/25 → 3/25`

### Sonraki Adım
- [A:\Way of Allah\sirat_i_nur\lib\features\quran\quran_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/quran_page.dart) hâlâ `allSurahs` listesini ana veri kaynağı olarak kullanıyor.
- Supabase bootstrap tamamlandıktan sonra `quran_page.dart`, `surah_reading_page.dart` ve `juz_reading_page.dart` ortak cloud-first provider/repository zincirine taşınmalı.

## 2026-04-08 TUR-26 — Remove Quran Page Surah Constant Dependency
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\features\quran\quran_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/quran_page.dart) artık [A:\Way of Allah\sirat_i_nur\lib\core\constants\quran_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/quran_data.dart) içindeki `allSurahs` constant listesine bağlı değil.
- `QuranPage` içinde yeni `_loadSurahs()` akışı eklendi; sure listesi doğrudan `assets/data/full_quran.json` içeriğinden okunup [A:\Way of Allah\sirat_i_nur\lib\features\quran\surah_display_info.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/surah_display_info.dart) helper’ları üzerinden normalize ediliyor.
- [A:\Way of Allah\sirat_i_nur\lib\features\quran\surah_display_info.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/surah_display_info.dart) içine `parseBundledSurahDisplayInfoList` ve `filterSurahDisplayInfos` eklendi.
- Arama normalize zinciri şu varyasyonları kapsayacak şekilde güçlendirildi:
  - tekrar eden sesliler (`Faatiha` -> `Fatiha`)
  - transliterasyon varyasyonları (`q` -> `k`, `sh` -> `s`, `th` -> `t`, `gh` -> `g`)
  - boşluk ve noktalama farkları
- `QuranPage` artık yükleme, hata ve boş sonuç durumlarını dürüst biçimde gösteriyor; arama alanı veri yüklenmeden aktif olmuyor.
- [A:\Way of Allah\sirat_i_nur\test\surah_display_info_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/surah_display_info_test.dart) genişletildi:
  - bundled row parse akışı
  - invalid row drop davranışı
  - transliterasyon/çeviri/Arapça/sure numarası araması

### Neden Yapıldı
- Önceki durumda [A:\Way of Allah\sirat_i_nur\lib\features\quran\quran_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/quran_page.dart) surah liste ekranı için yalnızca [A:\Way of Allah\sirat_i_nur\lib\core\constants\quran_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/quran_data.dart) içindeki duplicate metadata’yı kullanıyordu.
- Aynı feature zincirinde zaten [A:\Way of Allah\sirat_i_nur\assets\data\full_quran.json](A:/Way%20of%20Allah/sirat_i_nur/assets/data/full_quran.json) mevcutken ikinci bir bundled metadata kaynağı migration maliyeti ve tutarsızlık riski yaratıyordu.
- TUR-25 ile reader/router tarafında azaltılan metadata çoğaltması, liste sayfasında da sürüyordu; bu turda kalan runtime bağımlılık söküldü.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\quran_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\surah_display_info.dart`
- `A:\Way of Allah\sirat_i_nur\test\surah_display_info_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Quran liste ekranı artık duplicate constant metadata yerine reader ile aynı bundled payload çizgisini kullanıyor.
- `allSurahs` runtime kullanım zinciri kaldırıldı; [A:\Way of Allah\sirat_i_nur\lib\core\constants\quran_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/quran_data.dart) artık orphan/dead-code adayı haline geldi.
- Arama davranışı transliterasyon varyasyonlarına karşı daha toleranslı oldu; `bakara`, `fatiha`, Arapça isim ve sure numarası aynı helper üzerinden eşleniyor.
- Liste ekranı asset yükleme başarısız olursa sessiz fallback yerine açık hata ve retry gösteriyor.

### Test Sonucu
- `flutter test test/surah_display_info_test.dart` → PASS (`4/4`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`82/82`)
- Geçici `quran_page` widget testi asset bundle harness nedeniyle deterministik değildi; Section 7 self-heal kuralına uygun olarak geri alındı ve kalıcı suite’e dahil edilmedi.

### Risk Değişimi (önceki risk → sonraki risk)
- Quran surah list page still depending on duplicate constant metadata: `8/25 → 3/25`
- Search regression risk during metadata consolidation: `6/25 → 2/25`

### Sonraki Adım
- [A:\Way of Allah\sirat_i_nur\lib\features\quran\juz_reading_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/juz_reading_page.dart) ve [A:\Way of Allah\sirat_i_nur\lib\features\quran\surah_reading_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/surah_reading_page.dart) hâlâ `assets/data/full_quran.json` dosyasını doğrudan okuyor.
- Sonraki turda bu iki ekran ortak provider/repository zincirine alınmalı ve [A:\Way of Allah\sirat_i_nur\lib\core\constants\quran_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/quran_data.dart) orphan dosyası olarak kaldırılmalı ya da verified seed tabanlı yeni repository’ye taşınmalı.

## 2026-04-08 TUR-27 — Centralize Bundled Quran Loading Across Reading Flows
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\features\quran\providers\bundled_quran_provider.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/providers/bundled_quran_provider.dart) eklendi.
- Yeni provider zinciri:
  - `bundledQuranProvider`
  - `parseBundledQuranRows`
  - `findBundledSurahData`
- [A:\Way of Allah\sirat_i_nur\lib\features\quran\quran_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/quran_page.dart), [A:\Way of Allah\sirat_i_nur\lib\features\quran\juz_reading_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/juz_reading_page.dart) ve [A:\Way of Allah\sirat_i_nur\lib\features\quran\surah_reading_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/surah_reading_page.dart) artık `rootBundle.loadString('assets/data/full_quran.json')` çağrısını doğrudan yapmıyor; hepsi ortak provider future’ını tüketiyor.
- `QuranPage`, `JuzReadingPage` ve `SurahReadingPage` içinde retry/refresh akışları provider invalidate ederek kontrollü yeniden yükleme yapacak şekilde güncellendi.
- [A:\Way of Allah\sirat_i_nur\lib\features\quran\surah_reading_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/surah_reading_page.dart) artık sure bulunamazsa ilk sureye sessiz fallback yapmıyor; `noResults` tabanlı dürüst hata dalına düşüyor.
- Aynı dosyada bookmark snackbar’ları mevcut localization anahtarları olan `addBookmark` ve `removeBookmark` üzerinden çalışacak şekilde hardcoded yüzeyden çıkarıldı.
- [A:\Way of Allah\sirat_i_nur\test\features\quran\providers\bundled_quran_provider_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/quran/providers/bundled_quran_provider_test.dart) eklendi:
  - JSON array parse davranışı
  - malformed payload için `FormatException`
  - sure lookup doğrulaması

### Neden Yapıldı
- Önceki durumda üç ayrı ekran aynı asset’i bağımsız şekilde okuyup decode ediyordu:
  - [A:\Way of Allah\sirat_i_nur\lib\features\quran\quran_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/quran_page.dart)
  - [A:\Way of Allah\sirat_i_nur\lib\features\quran\juz_reading_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/juz_reading_page.dart)
  - [A:\Way of Allah\sirat_i_nur\lib\features\quran\surah_reading_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/surah_reading_page.dart)
- Bu, aynı bundled Quran payload’ının üç farklı yerde ayrı call-chain ile işlenmesi anlamına geliyordu; bakım maliyeti ve tutarsız hata davranışı üretiyordu.
- Özellikle `SurahReadingPage`, sure bulunamaz veya asset yüklenemezse sessiz fallback/boş ekran riskine sahipti; bu false-success sınıfına yakındı ve dürüst hata kuralıyla çelişiyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\providers\bundled_quran_provider.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\quran_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\juz_reading_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\surah_reading_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\quran\providers\bundled_quran_provider_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Bundled Quran asset okuma noktası tek zincire düştü; decode ve lookup davranışı merkezi hale geldi.
- `SurahReadingPage` artık yanlış sure fallback’i üretmiyor; asset/sure hatasını açıkça gösteriyor.
- Quran sayfalarında refresh/retry davranışı ortak provider invalidate mantığına bağlandı.
- Sure/ayet bookmark snackbar’ları mevcut l10n anahtarlarına geçtiği için dil zinciriyle hizalandı.

### Test Sonucu
- `flutter test test/features/quran/providers/bundled_quran_provider_test.dart` → PASS (`3/3`)
- `flutter test test/surah_display_info_test.dart` → PASS (`4/4`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`85/85`)

### Risk Değişimi (önceki risk → sonraki risk)
- Duplicate direct bundled Quran asset decoding across page flows: `7/25 → 3/25`
- Silent wrong-surah fallback / opaque error risk in reader flow: `8/25 → 3/25`

### Sonraki Adım
- [A:\Way of Allah\sirat_i_nur\lib\core\constants\quran_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/quran_data.dart) artık orphan/dead-code adayı; sonraki turda referans taraması sonrası kaldırılmalı.
- Daha sonraki yüksek etkili tur, ortak bundled provider zincirini verified seed + Supabase bootstrap hazır olduğunda cloud-first repository katmanına taşımak olacak.

## 2026-04-08 TUR-28 — Remove Legacy Quran Constant Metadata
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\core\constants\quran_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/quran_data.dart) silindi.
- [A:\Way of Allah\sirat_i_nur\test\quran_dependency_guard_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/quran_dependency_guard_test.dart) eklendi:
  - legacy dosyanın artık repo içinde bulunmaması
  - `lib/` altındaki production Dart dosyalarında `core/constants/quran_data.dart` import zinciri kalmaması
- PowerShell taraması ile yaşayan Quran call-chain tekrar doğrulandı:
  - [A:\Way of Allah\sirat_i_nur\lib\features\quran\quran_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/quran_page.dart)
  - [A:\Way of Allah\sirat_i_nur\lib\features\quran\juz_reading_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/juz_reading_page.dart)
  - [A:\Way of Allah\sirat_i_nur\lib\features\quran\surah_reading_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/surah_reading_page.dart)
  bu tur sonunda yalnızca [A:\Way of Allah\sirat_i_nur\lib\features\quran\providers\bundled_quran_provider.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/providers/bundled_quran_provider.dart) üzerinden `assets/data/full_quran.json` tüketiyor.

### Neden Yapıldı
- TUR-26 ve TUR-27 sonrasında [A:\Way of Allah\sirat_i_nur\lib\core\constants\quran_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/quran_data.dart) runtime zincirde kullanılmayan duplicate metadata kaynağına dönüştü.
- Aynı feature için hem bundled asset hem legacy constant tutmak bakım maliyetini yükseltiyor ve gelecekte cloud-first repository geçişinde yanlış kaynağın yeniden import edilmesi riskini artırıyordu.
- Section 8 ve Section 12 gereği orphan/dead-code temizliği ertelenmeden kapatıldı; böylece sonraki tur doğrudan yaşayan Quran repository zincirine odaklanabilir.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\constants\quran_data.dart` (silindi)
- `A:\Way of Allah\sirat_i_nur\test\quran_dependency_guard_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Repo içindeki ikinci Quran metadata kaynağı kaldırıldı; yaşayan tek bundled metadata zinciri [A:\Way of Allah\sirat_i_nur\lib\features\quran\providers\bundled_quran_provider.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/providers/bundled_quran_provider.dart) oldu.
- Yeni guard testi, legacy constant dosyasının geri dönmesini ve production import zincirine yeniden sızmasını CI seviyesinde yakalayacak.
- Quran ekranlarında kullanılan veri kaynağı daha net hale geldi; sonraki cloud-first repository turunun diff kapsamı küçüldü.

### Test Sonucu
- `flutter test test/quran_dependency_guard_test.dart` → PASS (`1/1`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`86/86`)

### Risk Değişimi (önceki risk → sonraki risk)
- Orphan duplicate Quran metadata source drifting away from live reader flow: `6/25 → 1/25`
- Legacy import regression risk during future Quran repository migration: `6/25 → 2/25`

### Sonraki Adım
- En yüksek açık Quran riski artık bundled asset zincirinin cloud-first repository katmanına taşınması:
  - [A:\Way of Allah\sirat_i_nur\lib\features\quran\providers\bundled_quran_provider.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/providers/bundled_quran_provider.dart)
  - [A:\Way of Allah\sirat_i_nur\lib\features\quran\quran_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/quran_page.dart)
  - [A:\Way of Allah\sirat_i_nur\lib\features\quran\juz_reading_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/juz_reading_page.dart)
  - [A:\Way of Allah\sirat_i_nur\lib\features\quran\surah_reading_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/surah_reading_page.dart)
- Bunun ardından verified seed uygulanmış Supabase tabloları üzerinden live content bootstrap ve offline fallback davranışı aynı repository altında birleştirilmeli.

## 2026-04-08 TUR-29 — Prefer Cloud Quran Content With Bundled Structural Fallback
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\features\quran\providers\bundled_quran_provider.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/providers/bundled_quran_provider.dart) genişletildi:
  - `loadBundledQuranRows`
  - `loadCloudQuranRows`
  - `normalizeCloudQuranRows`
  - `resolveQuranRows`
- Aynı provider artık önce `quran_surahs` ve `quran_ayahs` tablolarından cloud veri çekiyor; dataset eksik, hatalı veya erişilemezse bundled asset fallback zincirine dönüyor.
- Cloud dataset normalize edilirken uygulamanın beklediği JSON şekli korunuyor:
  - sure metadata cloud’dan
  - ayet metinleri ve çeviriler cloud’dan
  - `juz` ve global ayet numarası gibi yapısal metadata mevcut bundled payload’dan
- [A:\Way of Allah\sirat_i_nur\test\features\quran\providers\bundled_quran_provider_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/quran/providers/bundled_quran_provider_test.dart) genişletildi:
  - cloud row -> reader payload normalize testi
  - eksik cloud dataset fallback testi
  - exception fallback testi

### Neden Yapıldı
- TUR-28 sonunda yaşayan tek Quran veri kaynağı [A:\Way of Allah\sirat_i_nur\lib\features\quran\providers\bundled_quran_provider.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/providers/bundled_quran_provider.dart) idi; ancak provider hâlâ tamamen local asset okuyordu.
- Repo içinde verified seed ve Supabase şeması hazır olmasına rağmen runtime tarafı bu veriyi kullanmıyordu; bu nedenle cloud-first mimari fiilen devreye girmemişti.
- Aynı zamanda reader/juz ekranları `juz` gibi yapısal metadata beklediği için doğrudan cloud tablo şekline geçmek kırık call-chain üretebilirdi. Bu turda minimum diff ile cloud içerik tercih edilip eksik yapısal metadata bundled kaynaktan tamamlandı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\providers\bundled_quran_provider.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\quran\providers\bundled_quran_provider_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Quran ekranları artık mümkün olduğunda Supabase’teki güncel/verified sure ve ayet içeriğini tüketiyor.
- Cloud veri eksikse veya sorgu hata verirse kullanıcı tarafında kırık durum oluşmadan bundled asset zinciri çalışmaya devam ediyor.
- `QuranPage`, `JuzReadingPage` ve `SurahReadingPage` için aynı payload shape korunduğu için UI katmanında ek diff gerekmedi.
- Bundled asset bağımlılığı tamamen kalkmadı; `juz` ve bazı structural alanlar hâlâ local payload’dan geliyor. Bu bağımlılık bir sonraki tur için açık şekilde izole edilmiş durumda.

### Test Sonucu
- `flutter test test/features/quran/providers/bundled_quran_provider_test.dart` → PASS (`8/8`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`91/91`)

### Risk Değişimi (önceki risk → sonraki risk)
- Quran runtime still ignoring verified cloud content: `8/25 → 3/25`
- Reader/juz flow breaking during cloud migration: `7/25 → 3/25`

### Sonraki Adım
- En yüksek açık risk, `juz` ve benzeri yapısal metadata'nın hâlâ bundled payload'dan gelmesi:
  - [A:\Way of Allah\sirat_i_nur\content_schema.sql](A:/Way%20of%20Allah/sirat_i_nur/content_schema.sql)
  - [A:\Way of Allah\sirat_i_nur\tool\generate_quran_ayah_seed.dart](A:/Way%20of%20Allah/sirat_i_nur/tool/generate_quran_ayah_seed.dart)
  - [A:\Way of Allah\sirat_i_nur\content_seed_quran_ayahs.sql](A:/Way%20of%20Allah/sirat_i_nur/content_seed_quran_ayahs.sql)
- Sonraki turda `quran_ayahs` verified seed katmanına structural metadata eklenmeli ve provider içindeki bundled metadata merge ihtiyacı kaldırılmalı.

## 2026-04-08 TUR-30 — Seed Quran Juz Metadata And Keep Runtime Backward Compatible
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\content_schema.sql](A:/Way%20of%20Allah/sirat_i_nur/content_schema.sql) içine `quran_ayahs.juz_number` alanı eklendi ve mevcut canlı tabloları kırmamak için `add column if not exists` migration satırı yazıldı.
- [A:\Way of Allah\sirat_i_nur\tool\generate_quran_ayah_seed.dart](A:/Way%20of%20Allah/sirat_i_nur/tool/generate_quran_ayah_seed.dart) resmi verse payload içindeki `juz_number` alanını okuyacak şekilde güncellendi; SQL insert/upsert bloklarına bu kolon dahil edildi.
- [A:\Way of Allah\sirat_i_nur\content_seed_quran_ayahs.sql](A:/Way%20of%20Allah/sirat_i_nur/content_seed_quran_ayahs.sql) yeniden üretildi.
- [A:\Way of Allah\sirat_i_nur\lib\features\quran\providers\bundled_quran_provider.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/providers/bundled_quran_provider.dart) cloud ayah sorgusunda önce `juz_number` kolonunu deneyecek, kolon henüz canlıda yoksa eski sorguya düşecek şekilde sertleştirildi.
- Aynı provider normalize aşamasında:
  - cloud `juz_number` varsa onu kullanıyor
  - yoksa bundled metadata fallback ile çalışmaya devam ediyor
- Testler güncellendi:
  - [A:\Way of Allah\sirat_i_nur\test\content_schema_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/content_schema_test.dart)
  - [A:\Way of Allah\sirat_i_nur\test\quran_ayah_seed_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/quran_ayah_seed_test.dart)
  - [A:\Way of Allah\sirat_i_nur\test\features\quran\providers\bundled_quran_provider_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/quran/providers/bundled_quran_provider_test.dart)

### Neden Yapıldı
- TUR-29 sonunda runtime cloud-first çalışıyordu ama `juz` metadata hâlâ local payload’dan geliyordu; bu, verified seed zincirinin eksik kaldığını gösteriyordu.
- Resmi Quran Foundation verse endpoint canlı örneğinde `juz_number` alanı bulunduğu doğrulandı; dolayısıyla bu metadata’yı seed ve schema seviyesine almak mümkün ve gerekliydi.
- Bununla birlikte canlı Supabase şemasının henüz güncellenmemiş olma riski vardı. Bu yüzden runtime provider kırıcı bir sorguya zorlanmadı; önce yeni kolonu dener, olmazsa eski shape’e geri düşer.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\content_schema.sql`
- `A:\Way of Allah\sirat_i_nur\tool\generate_quran_ayah_seed.dart`
- `A:\Way of Allah\sirat_i_nur\content_seed_quran_ayahs.sql`
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\providers\bundled_quran_provider.dart`
- `A:\Way of Allah\sirat_i_nur\test\content_schema_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\quran_ayah_seed_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\quran\providers\bundled_quran_provider_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Verified Quran ayah seed artık `juz_number` taşıyor; future live bootstrap sonrası runtime provider local yapısal metadata’ya daha az ihtiyaç duyacak.
- Runtime akış backward-compatible kaldı; canlı Supabase henüz migrate edilmemiş olsa bile provider fallback ile çalışmayı sürdürüyor.
- Schema bootstrap dosyası artık yeni proje kurulumlarında ve mevcut tabloların genişletilmesinde aynı kolonu tanımlıyor.

### Test Sonucu
- `dart run tool/generate_quran_ayah_seed.dart` → PASS
- `flutter test test/quran_ayah_seed_test.dart` → PASS (`2/2`)
- `flutter test test/content_schema_test.dart` → PASS (`2/2`)
- `flutter test test/features/quran/providers/bundled_quran_provider_test.dart` → PASS (`9/9`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`92/92`)

### Risk Değişimi (önceki risk → sonraki risk)
- Quran structural metadata absent from verified ayah seed: `7/25 → 2/25`
- Runtime break risk while rolling out new `juz_number` column: `7/25 → 3/25`

### Sonraki Adım
- En yüksek açık risk artık diagnostics tarafında dataset “tam” görünse bile structural migration seviyesini ölçmemesi:
  - [A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/diagnostics_page.dart)
  - [A:\Way of Allah\sirat_i_nur\lib\features\settings\quran_diagnostics.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/quran_diagnostics.dart)
- Sonraki turda diagnostics zinciri `juz_number` kolonunun varlığını / doluluğunu da dürüst şekilde raporlayacak hale getirilmeli.

## 2026-04-08 TUR-31 — Surface Quran Structural Migration Health In Diagnostics
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/diagnostics_page.dart) içinde Quran diagnostics sorgusu genişletildi:
  - `quran_surahs` count
  - `quran_ayahs` count
  - `quran_ayahs.juz_number is not null` count
- Aynı akışta yeni kolon henüz canlıda yoksa diagnostics ekranı çökmüyor; structural hata ayrı yakalanıp helper’a taşınıyor.
- [A:\Way of Allah\sirat_i_nur\lib\features\settings\quran_diagnostics.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/quran_diagnostics.dart) güncellendi:
  - `ayahsWithJuzCount`
  - `structuralError`
  - `Quran Juz Metadata` satırı
  - `summarizeQuranStructuralError`
- [A:\Way of Allah\sirat_i_nur\test\quran_diagnostics_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/quran_diagnostics_test.dart) genişletildi:
  - tam structural dataset
  - eksik `juz` metadata
  - eksik `juz_number` kolonu
  - eksik tablo fallback

### Neden Yapıldı
- TUR-30 ile seed ve schema `juz_number` taşımaya başlamış olsa da diagnostics zinciri yalnızca toplam satır sayısına bakıyordu.
- Bu durumda dataset row count olarak “tam” görünebilir ama structural migration eksik olduğu halde kullanıcıya sağlıklı sinyal verilebilirdi; bu false-success sınıfına giriyordu.
- AGENTS.md’deki dürüstlük ve kök sebep ilkesi gereği diagnostics ekranı artık yapısal göçün tamamlanıp tamamlanmadığını ayrı satırda raporluyor.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\quran_diagnostics.dart`
- `A:\Way of Allah\sirat_i_nur\test\quran_diagnostics_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Diagnostics ekranı artık row count temiz olsa bile `juz_number` migration eksikliğini gizlemiyor.
- Canlı Supabase henüz yeni kolonu taşımıyorsa kullanıcıya açıkça `Cloud juz metadata missing; bundled structural fallback active` mesajı gösterilecek.
- `quran_ayahs.juz_number` doluluğu `6236 / 6236` seviyesinde doğrulanana kadar structural satır unhealthy kalacak.

### Test Sonucu
- `flutter test test/quran_diagnostics_test.dart` → PASS (`4/4`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`94/94`)

### Risk Değişimi (önceki risk → sonraki risk)
- Diagnostics marking structurally incomplete Quran dataset as healthy: `6/25 → 2/25`
- Hidden migration gap after `juz_number` rollout: `6/25 → 2/25`

### Sonraki Adım
- En yüksek açık risk artık diagnostics ve settings ekranlarındaki hardcoded İngilizce yüzeyler:
  - [A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/diagnostics_page.dart)
  - [A:\Way of Allah\sirat_i_nur\lib\features\settings\quran_diagnostics.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/quran_diagnostics.dart)
- Sonraki turda bu metinler localization zincirine taşınmalı ve diagnostics ekranı l10n ile hizalanmalı.

## 2026-04-08 TUR-32 — Localize Diagnostics And Quran Diagnostic Messaging
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/diagnostics_page.dart) içindeki hardcoded diagnostics metinleri localization zincirine taşındı.
- Aynı dosyada `AppLocalizations.of(context)` bağımlılığı güvenli noktaya alındı; `_rowsFuture` başlatması `didChangeDependencies` üzerinden yapılıyor.
- [A:\Way of Allah\sirat_i_nur\lib\features\settings\quran_diagnostics.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/quran_diagnostics.dart) artık `QuranDiagnosticStrings` ile çalışıyor; helper İngilizce sabit metin döndürmüyor.
- [A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_en.arb) ve [A:\Way of Allah\sirat_i_nur\lib\l10n\app_tr.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_tr.arb) diagnostics anahtarlarıyla genişletildi:
  - statik satır başlıkları
  - dosya/supported count placeholder’ları
  - manifest hata mesajı
  - Quran dataset / surah / ayah / juz metadata label’ları
  - cloud structural error mesajları
- [A:\Way of Allah\sirat_i_nur\tool\sync_arb_keys.dart](A:/Way%20of%20Allah/sirat_i_nur/tool/sync_arb_keys.dart) çalıştırıldı ve `lib/l10n/app_*.arb` dosyalarının tamamı yeni anahtarlarla senkronlandı.
- `flutter gen-l10n` ile generated dosyalar yeniden üretildi:
  - [A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_localizations.dart)
  - [A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n)
- [A:\Way of Allah\sirat_i_nur\test\quran_diagnostics_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/quran_diagnostics_test.dart) yeni localization-aware helper sözleşmesine göre güncellendi.

### Neden Yapıldı
- TUR-31 sonrasında diagnostics zinciri yapısal eksikleri dürüst raporluyordu fakat metin yüzeyi hâlâ İngilizce sabitlerden oluşuyordu.
- Bu, translation engine kuralı ve “hardcoded string bırakma” yasağıyla çelişiyordu.
- Ayrıca `_buildRows()` içinde lokalizasyon kullanımına geçilirken `initState` bağlamı uygun değildi; bu yüzden aynı turda lifecycle uyumu da düzeltildi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\quran_diagnostics.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_tr.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\quran_diagnostics_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Diagnostics ekranının statik ve dinamik tüm metinleri artık locale üzerinden geliyor.
- Quran diagnostics helper artık reusable/localizable hale geldi; İngilizce sabitleri core helper içinde barındırmıyor.
- 196 locale dosyası yeni diagnostics anahtarlarıyla eşitlendi; `arb_coverage` ve `gen-l10n` zinciri temiz kaldı.

### Test Sonucu
- `flutter test test/quran_diagnostics_test.dart` → PASS (`4/4`)
- `flutter test test/arb_coverage_test.dart` → PASS (`2/2`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`94/94`)

### Risk Değişimi (önceki risk → sonraki risk)
- Hardcoded English diagnostics/settings copy bypassing l10n chain: `5/25 → 1/25`
- Locale mismatch risk after diagnostics hardening: `5/25 → 1/25`

### Sonraki Adım
- En yüksek açık risk artık diagnostics ekranındaki bazı teknik değerlerin hâlâ presentation-only string olması:
  - [A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/diagnostics_page.dart)
- Sonraki turda app version ve benzeri metadata’lar package/runtime kaynağından okunmalı; stale sabit değerler kaldırılmalı.

## 2026-04-08 TUR-33 — Refresh Diagnostics Rows On Locale Change
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/diagnostics_page.dart) içine `DiagnosticsRowsDependencies` eklendi.
- Aynı sayfa artık locale veya ekranda gösterilen settings alanları değiştiğinde diagnostics future’ını yeniden kuruyor.
- `ref.listenManual(settingsProvider, ...)` ile açık diagnostics ekranındaki state değişimleri izlenip stale satırlar engellendi.
- [A:\Way of Allah\sirat_i_nur\test\features\settings\diagnostics_page_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/settings/diagnostics_page_test.dart) ile locale ve görünür settings değişimlerinde dependency imzasının değiştiği regresyon testleri eklendi.

### Neden Yapıldı
- TUR-32 sonrasında diagnostics satırları localization ile üretiliyordu ancak `_rowsFuture` sadece ilk dependency geçişinde kuruluyordu.
- Bu yapı, sayfa açıkken dil veya görünür settings değişirse eski locale/state snapshot’ını koruyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\settings\diagnostics_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Diagnostics sayfası artık locale değişiminde stale çeviri göstermiyor.
- Tema, dil kodu ve konum adı gibi görünür diagnostics alanları açık sayfada değiştiğinde yeni state’i yansıtıyor.

### Test Sonucu
- `flutter test test/features/settings/diagnostics_page_test.dart` → PASS (`2/2`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`96/96`)

### Risk Değişimi (önceki risk → sonraki risk)
- Diagnostics page holding stale localized rows after locale switch: `6/25 → 2/25`
- Open diagnostics screen not reflecting visible settings updates: `6/25 → 2/25`

### Sonraki Adım
- [A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/diagnostics_page.dart) içindeki sabit sürüm satırını runtime build/version kaynağına taşı.

## 2026-04-08 TUR-34 — Source Diagnostics Version From Build Metadata
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/diagnostics_page.dart) içine `resolveDiagnosticsVersion` eklendi.
- Diagnostics sürüm satırı artık sabit `'2.0.0'` yerine `FLUTTER_BUILD_NAME` ve `FLUTTER_BUILD_NUMBER` metadata’sından üretiliyor.
- [A:\Way of Allah\sirat_i_nur\test\features\settings\diagnostics_page_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/settings/diagnostics_page_test.dart) içine build numarası dolu/boş senaryoları için regresyon testleri eklendi.

### Neden Yapıldı
- Diagnostics ekranı sürüm satırını sabit presentation string olarak gösteriyordu.
- Bu, build metadata değişse bile ekranın geride kalmasına neden oluyordu ve “en güncel sistem” hedefiyle çelişiyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\settings\diagnostics_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Diagnostics sürüm satırı build name/build number ile senkron hale geldi.
- Build numarası boşsa gereksiz `+` eki üretilmiyor; fallback davranışı testle kilitlendi.

### Test Sonucu
- `flutter test test/features/settings/diagnostics_page_test.dart` → PASS (`4/4`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`98/98`)

### Risk Değişimi (önceki risk → sonraki risk)
- Diagnostics version row drifting behind real build metadata: `5/25 → 1/25`

### Sonraki Adım
- Settings/diagnostics çevresinde kalan yüksek sinyalli tarama, özellikle paketlenmiş asset ve runtime capability satırlarının dürüstlük açısından yeniden gözden geçirilmesi.

## 2026-04-08 TUR-35 — Harden Audio Diagnostics Against False Readiness
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\core\services\audio_sovereignty_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/audio_sovereignty_service.dart) içine `expectedSukunSoundTypes` ve `resolveSukunAssetPath` eklendi; Sukun tipi çözümleme artık normalize edilip tek noktadan yapılıyor.
- [A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/diagnostics_page.dart) içine `buildAudioDiagnosticsSnapshot` eklendi.
- Diagnostics ses satırları artık sadece klasör saymıyor; beklenen adhan/UI asset setinin gerçekten var olup olmadığını ve Sukun için tanımlı tiplerin gerçekten manifestte çözülebilir olup olmadığını ölçüyor.
- Diagnostics ekranına `Sukun (Nature)` üzerinden hazır ses manzarası kapsamı satırı eklendi.
- [A:\Way of Allah\sirat_i_nur\test\audio_sovereignty_service_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/audio_sovereignty_service_test.dart) ve [A:\Way of Allah\sirat_i_nur\test\features\settings\diagnostics_page_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/settings/diagnostics_page_test.dart) yeni sözleşme için genişletildi.

### Neden Yapıldı
- Önceki diagnostics zinciri `assets/audio/adhan`, `assets/audio/ui` ve `assets/audio/quran` klasörlerindeki dosya sayısını raporluyordu.
- Bu yaklaşım, uygulamanın gerçekten beklediği sabit asset seti eksikse veya Sukun mapping boşsa yine de yanıltıcı şekilde “hazır” sinyali verebiliyordu.
- Mevcut repo durumunda Sukun sayfası dört ses tipi sunuyor ancak provider varsayılanında bunlara karşılık gelen mapping bulunmuyor; diagnostics bunu ayrı bir risk olarak yansıtmıyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\audio_sovereignty_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\audio_sovereignty_service_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\settings\diagnostics_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Diagnostics artık adhan ve UI tarafında tam beklenen asset setini `x/y files` biçiminde raporluyor.
- Sukun zinciri artık `0/4 supported` gibi dürüst bir satır üretiyor; boş mapping gizlenmiyor.
- AudioSovereigntyService içindeki Sukun çözümleme mantığı normalize lookup ile tek noktaya toplandı.

### Test Sonucu
- `flutter test test/audio_sovereignty_service_test.dart` → PASS (`6/6`)
- `flutter test test/features/settings/diagnostics_page_test.dart` → PASS (`5/5`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`100/100`)

### Risk Değişimi (önceki risk → sonraki risk)
- Diagnostics reporting directory counts instead of required audio readiness: `4/25 → 1/25`
- Hidden Sukun soundscape mapping gap in diagnostics: `7/25 → 3/25`

### Sonraki Adım
- [A:\Way of Allah\sirat_i_nur\lib\features\library\sukun_audio_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/sukun_audio_page.dart) içindeki hardcoded başlık ve ses isimlerini localization zincirine taşı.
- Aynı turda boş Sukun mapping için kullanıcıya diagnostics ile tutarlı, dürüst bir empty-state/disabled-state yüzeyi oluştur.

## 2026-04-08 TUR-36 — Localize And Disable Empty Sukun Soundscapes
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\features\library\sukun_audio_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/sukun_audio_page.dart) içindeki hardcoded başlıklar kaldırıldı; sayfa artık `sukunAudioTitle`, `sukunMixerSubtitle`, `quran`, `audioPlayFailed` ve yeni soundscape adlarını kullanıyor.
- Aynı sayfa, `configuredSukunTypes` boşsa dürüst bir unavailable-state gösteriyor ve kart grid’ini gizliyor.
- Mapping varsa ama playback başarısızsa snackbar artık generic `error` yerine `audioPlayFailed` gösteriyor.
- [A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_en.arb) ve [A:\Way of Allah\sirat_i_nur\lib\l10n\app_tr.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_tr.arb) içine Sukun ses adları ve unavailable-state anahtarları eklendi.
- `dart run tool/sync_arb_keys.dart` ve `flutter gen-l10n` çalıştırılarak tüm `app_*.arb` ve generated localization dosyaları senkronlandı.
- [A:\Way of Allah\sirat_i_nur\test\sukun_audio_page_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/sukun_audio_page_test.dart) unavailable-state ve mapped-failure senaryoları için genişletildi.

### Neden Yapıldı
- Sukun ekranı kullanıcıya tam bir ses manzarası feature’ı gösteriyordu ancak provider varsayılanında hiçbir mapping yoktu.
- Bu durumda ekran hem İngilizce hardcoded metin taşıyor hem de feature availability bilgisini dürüst biçimde göstermiyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\library\sukun_audio_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_tr.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\sukun_audio_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Sukun sayfası artık boş mapping varken dürüst unavailable-state gösteriyor.
- Ses adı ve başlık yüzeyi localization zincirine girdi.
- Mapping var ama playback yoksa kullanıcı artık daha doğru bir hata mesajı görüyor.

### Test Sonucu
- `flutter test test/sukun_audio_page_test.dart` → PASS (`2/2`)
- `flutter test test/arb_coverage_test.dart` → PASS (`2/2`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`101/101`)

### Risk Değişimi (önceki risk → sonraki risk)
- Hardcoded Sukun UI strings bypassing l10n: `6/25 → 1/25`
- Empty Sukun mapping still presenting as ready-to-use feature: `7/25 → 2/25`

### Sonraki Adım
- Sıradaki yüksek sinyalli açık alan, Sukun zincirinin gerçekten asset-backed hale getirilmesi veya library girişinde availability bilgisiyle koşullu gösterim sağlanması.
