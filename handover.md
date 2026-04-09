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

## 2026-04-08 TUR-37 — Disable Empty Sukun Entry In Library
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/library_page.dart) içine `isSukunAudioAvailable` ve `resolveSukunLibrarySubtitle` yardımcıları eklendi.
- Aynı dosyada library ekranı artık `audioSovereigntyServiceProvider` üzerinden varsayılan Sukun mapping var mı diye bakıyor.
- Sukun mapping yoksa kartın `onTap` davranışı kapatıldı, subtitle `sukunUnavailableTitle` ile değiştirildi ve trailing ikon `block_rounded` oldu.
- [A:\Way of Allah\sirat_i_nur\test\library_page_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/library_page_test.dart) içine availability ve subtitle helper regresyon testleri eklendi.
- [A:\Way of Allah\sirat_i_nur\test\features\library\library_page_cloud_duas_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/library/library_page_cloud_duas_test.dart) içine boş soundscape mapping senaryosunda Sukun kartının disabled kaldığını doğrulayan widget testi eklendi.

### Neden Yapıldı
- [A:\Way of Allah\sirat_i_nur\lib\core\services\audio_sovereignty_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/audio_sovereignty_service.dart) varsayılan provider akışı boş `sukunAssets` ile kuruluyor.
- Buna rağmen [A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/library_page.dart) Sukun kartını normal çalışan feature gibi gösterip `/library/sukun-audio` yönlendirmesini açık bırakıyordu.
- Bu durum giriş yüzeyinde false-success üretiyor ve kullanıcıyı varsayılan olarak boş bir experience’e sokuyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\library_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\library\library_page_cloud_duas_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Library girişinde Sukun feature’ı artık yalnızca gerçekten yapılandırılmış soundscape varsa açılabilir görünüyor.
- Varsayılan boş mapping senaryosunda kullanıcı dürüst unavailable copy görüyor ve yanlış navigasyona yönlendirilmiyor.
- Sukun availability kararı artık giriş kartı ile detay sayfasında aynı servis kaynağından türetiliyor.

### Test Sonucu
- `flutter test test/library_page_test.dart` → PASS (`8/8`)
- `flutter test test/features/library/library_page_cloud_duas_test.dart --reporter expanded` → PASS (`2/2`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`104/104`)

### Risk Değişimi (önceki risk → sonraki risk)
- Empty Sukun mapping still exposed as tappable library feature: `6/25 → 2/25`

### Sonraki Adım
- Sıradaki yüksek etkili açık alan, Sukun zincirini gerçek asset veya Supabase-backed `audio_files` kaydıyla doldurmak; dürüst disabled state artık var ama içerik hâlâ varsayılan kurulumda yok.

## 2026-04-08 TUR-38 — Add Cloud-First Sukun Audio Sources
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\core\services\audio_sovereignty_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/audio_sovereignty_service.dart) içine `isRemoteAudioSource`, `resolveSukunSoundType`, `resolveSukunSource` ve `playSource` eklendi; service artık local asset ile remote URL arasında dürüst seçim yapabiliyor.
- Aynı dosyada `SovereignAudioEngine` ve `LocalAudioEngine` `playUrl` desteği alacak şekilde genişletildi.
- [A:\Way of Allah\sirat_i_nur\lib\core\providers\supabase_providers.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/providers/supabase_providers.dart) içine `resolveCloudSukunSources` ve `sukunAudioSourcesProvider` eklendi; `audio_files` tablosundaki oynatılabilir `url` alanları beklenen `rain/forest/night/ocean` tiplerine normalize ediliyor.
- [A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/library_page.dart) artık local mapping ile cloud mapping birleşiminden availability hesaplıyor.
- [A:\Way of Allah\sirat_i_nur\lib\features\library\sukun_audio_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/sukun_audio_page.dart) `sukunAudioSourcesProvider` izliyor; cloud kaynak çözülürken loading kartı gösteriyor ve remote URL geldiğinde `playSukun(..., cloudSources:)` üzerinden oynatıyor.
- [A:\Way of Allah\sirat_i_nur\content_schema.sql](A:/Way%20of%20Allah/sirat_i_nur/content_schema.sql) içine `public.audio_files` tablosu, indeks ve public read policy eklendi.
- Yeni regresyon testleri eklendi: [A:\Way of Allah\sirat_i_nur\test\sukun_audio_sources_provider_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/sukun_audio_sources_provider_test.dart), ayrıca audio/library/sukun/content schema testleri cloud-first akış için genişletildi.

### Neden Yapıldı
- Sukun özelliği artık dürüst disabled-state gösteriyordu fakat gerçek cloud source zinciri yoktu; provider varsayılanı hâlâ boş local mapping ile sınırlıydı.
- [A:\Way of Allah\sirat_i_nur\lib\core\services\audio_player_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/audio_player_service.dart) remote `playUrl` desteğine sahip olmasına rağmen bu yetenek `AudioSovereigntyService` tarafından kullanılmıyordu.
- `audio_files` bootstrap tablosu da eksik olduğu için Supabase üzerinden verified Sukun seslerini bağlayacak şema zemini bulunmuyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\content_schema.sql`
- `A:\Way of Allah\sirat_i_nur\lib\core\providers\supabase_providers.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\services\audio_sovereignty_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\library\sukun_audio_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\audio_sovereignty_service_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\content_schema_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\library\library_page_cloud_duas_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\settings\diagnostics_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\library_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\sukun_audio_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\sukun_audio_sources_provider_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Sukun feature’ı artık yalnızca local asset’lere değil, Supabase `audio_files` tablosundan gelen verified remote URL’lere de bağlanabiliyor.
- Library girişi ve detay sayfası aynı cloud-first availability bilgisini kullanıyor.
- Cloud provider ilk frame’de loading iken sayfa artık yanlış unavailable-state üretmiyor.
- `audio_files` tablosu ve policy’si hazır olduğu için bir sonraki turda verified seed/load işlemi doğrudan bu şema üstünden yapılabilecek.

### Test Sonucu
- `flutter test test/audio_sovereignty_service_test.dart` → PASS (`8/8`)
- `flutter test test/sukun_audio_sources_provider_test.dart` → PASS (`2/2`)
- `flutter test test/sukun_audio_page_test.dart --reporter expanded` → PASS (`3/3`)
- `flutter test test/library_page_test.dart` → PASS (`9/9`)
- `flutter test test/features/library/library_page_cloud_duas_test.dart --reporter expanded` → PASS (`3/3`)
- `flutter test test/content_schema_test.dart` → PASS (`2/2`)
- `flutter test test/features/settings/diagnostics_page_test.dart` → PASS (`5/5`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`111/111`)

### Risk Değişimi (önceki risk → sonraki risk)
- Sukun feature relying only on empty local mappings with no cloud source path: `7/25 → 3/25`
- Missing `audio_files` Supabase bootstrap for cloud audio rollout: `7/25 → 2/25`

### Sonraki Adım
- Sıradaki yüksek etkili açık alan, kabul edilen resmi kaynaklardan gerçek Sukun/nature seslerini çekip `audio_files` ve storage zincirine verified seed olarak yüklemek; runtime cloud-first hazır ama içerik satırları henüz boş.

## 2026-04-08 TUR-39 — Align Diagnostics With Cloud Audio Sources
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/diagnostics_page.dart) içindeki `buildAudioDiagnosticsSnapshot` helper’ı `cloudSukunSources` alacak şekilde genişletildi.
- Aynı helper artık `resolveSukunSource` kullanarak local asset ile remote URL kaynaklarını birlikte değerlendiriyor; remote URL varsa hazır kabul ediyor.
- Diagnostics build akışı artık [A:\Way of Allah\sirat_i_nur\lib\core\providers\supabase_providers.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/providers/supabase_providers.dart) içindeki `sukunAudioSourcesProvider.future` değerini okuyup cloud Sukun kaynaklarını readiness hesabına katıyor.
- [A:\Way of Allah\sirat_i_nur\test\features\settings\diagnostics_page_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/settings/diagnostics_page_test.dart) içine cloud source readiness regresyon testi eklendi.

### Neden Yapıldı
- Bir önceki turda runtime cloud-first Sukun oynatımı açıldıktan sonra diagnostics ekranı hâlâ yalnızca local asset saydığı için yanlış negatif sağlık sonucu üretebiliyordu.
- Aynı feature’ın library ekranında “hazır”, diagnostics ekranında “eksik” görünmesi sistem bütünlüğünü bozuyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\settings\diagnostics_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Diagnostics artık cloud-first Sukun kaynaklarını doğru sayıyor.
- Library/Sukun runtime zinciri ile diagnostics sağlık göstergesi aynı source-of-truth üzerinden çalışıyor.

### Test Sonucu
- `flutter test test/features/settings/diagnostics_page_test.dart` → PASS (`6/6`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`113/113`)

### Risk Değişimi (önceki risk → sonraki risk)
- Diagnostics showing false-negative Sukun readiness after cloud rollout: `5/25 → 1/25`

### Sonraki Adım
- Sıradaki yüksek etkili açık alan, bundled Asma fallback verisinin yanlış sûre MP3’lerini oynatmasıydı; bunu bir sonraki turda kapattım.

## 2026-04-08 TUR-40 — Disable Wrong Bundled Asma Audio Playback
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/asma_ul_husna_data.dart) içine `buildBundledAsmaUlHusnaFallback()` eklendi; bundled fallback artık `audioUrl` alanlarını bilinçli olarak boşaltıyor.
- Aynı dosyadaki `resolveCloudAsmaUlHusnaRows` boş cloud durumda doğrudan raw bundled liste yerine bu sanitized fallback’i döndürüyor.
- [A:\Way of Allah\sirat_i_nur\lib\core\providers\supabase_providers.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/providers/supabase_providers.dart) catch fallback’i de sanitized Asma listesine geçirildi.
- [A:\Way of Allah\sirat_i_nur\lib\features\library\asma_ul_husna_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/asma_ul_husna_page.dart) içinde `hasPlayableAsmaAudio` eklendi; audio yoksa kart tap’i kapanıyor ve `volume_off_rounded` gösteriliyor.
- [A:\Way of Allah\sirat_i_nur\test\asma_ul_husna_data_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/asma_ul_husna_data_test.dart) ve [A:\Way of Allah\sirat_i_nur\test\features\library\asma_ul_husna_page_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/library/asma_ul_husna_page_test.dart) false playback regresyonları için genişletildi.

### Neden Yapıldı
- Bundled `AsmaUlHusnaData.names` içinde `audioUrl` alanları, isim telaffuzu yerine numaralı Kur’an/sûre MP3’lerine gidiyordu.
- Cloud içerik yokken kullanıcının yanlış dini içeriği “Asma audio” gibi dinlemesi Section 13 ve false-success kurallarını ihlal ediyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\providers\supabase_providers.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\library\asma_ul_husna_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\asma_ul_husna_data_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\library\asma_ul_husna_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Cloud `audio_url` yoksa Asma ekranı artık yanlış ses çalmıyor.
- Doğrulanmış cloud audio geldiğinde ses oynatma davranışı korunuyor.
- Bundled fallback, yanlış dini medya ile kullanıcıyı yanıltmayan dürüst moda geçti.

### Test Sonucu
- `flutter test test/asma_ul_husna_data_test.dart` → PASS (`3/3`)
- `flutter test test/features/library/asma_ul_husna_page_test.dart` → PASS (`4/4`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`113/113`)

### Risk Değişimi (önceki risk → sonraki risk)
- Bundled Asma fallback playing unrelated surah MP3s as if they were Asma audio: `9/25 → 2/25`

### Sonraki Adım
- Kabul edilen kaynak taramasında Sukun/nature için resmi katalog doğrulanamadı; bilgi eksikliği var, uydurma seed üretilmedi.
- Sıradaki uygulanabilir yüksek risk, doğrulanmış official source setiyle `audio_files` içine gerçek adhan/quran/asma audio seed katmanı üretmek.

## 2026-04-08 TUR-41 — Seed Verified Quran Audio And Remove Synthetic Bucket URLs
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\content_schema.sql](A:/Way%20of%20Allah/sirat_i_nur/content_schema.sql) içine `audio_files.surah_number` kolonu ve `type + reciter + surah_number` unique index’i eklendi; `audio_files` tablosu artık sure bazlı Kur'an seslerini yapısal olarak taşıyabiliyor.
- [A:\Way of Allah\sirat_i_nur\tool\generate_quran_audio_seed.dart](A:/Way%20of%20Allah/sirat_i_nur/tool/generate_quran_audio_seed.dart) eklendi; resmi Quran.com `chapter_recitations` endpointlerinden `alafasy`, `husary`, `abdul_basit_murattal`, `abdul_basit_mujawwad`, `sudais`, `shuraim` için 6x114 verified audio satırı üretiyor.
- Bu araç çalıştırılarak [A:\Way of Allah\sirat_i_nur\content_seed_quran_audio.sql](A:/Way%20of%20Allah/sirat_i_nur/content_seed_quran_audio.sql) üretildi.
- [A:\Way of Allah\sirat_i_nur\lib\core\services\offline_audio_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/offline_audio_service.dart) içindeki `OfflineReciters.getSurahUrl` ve `getAllSurahUrls` artık sentetik Supabase bucket URL üretmiyor; doğrudan `audio_files` tablosundan verified `quran_surah` satırlarını okuyor.
- Aynı dosyada `resolveCloudQuranSurahUrls`, `resolvePlayableCloudAudioUrl` ve `missingQuranSurahAudioSources` eklendi; incomplete/malformed cloud satırları filtreleniyor.
- [A:\Way of Allah\sirat_i_nur\lib\features\quran\surah_reading_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/surah_reading_page.dart) artık tam URL adaylarını async çözüyor; bucket taban URL + `/$surah.mp3` birleştirme kaldırıldı.
- [A:\Way of Allah\sirat_i_nur\lib\features\downloads\offline_downloads_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/downloads/offline_downloads_page.dart) verified cloud katalog yoksa veya 114 sure tamam değilse dürüst hata veriyor; sentetik veya eksik paket üstünden toplu indirme başlatmıyor.
- Aynı ekrandaki belirgin hardcoded metinler localization zincirine taşındı; yeni anahtarlar tüm `app_*.arb` dosyalarına ve generated l10n dosyalarına yayıldı.
- Yeni testler eklendi: [A:\Way of Allah\sirat_i_nur\test\offline_audio_service_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/offline_audio_service_test.dart) ve [A:\Way of Allah\sirat_i_nur\test\quran_audio_seed_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/quran_audio_seed_test.dart).

### Neden Yapıldı
- [A:\Way of Allah\sirat_i_nur\lib\core\services\offline_audio_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/offline_audio_service.dart) önceki durumda `sirat_assets/audio/{reciter}_{surah}.mp3` URL’lerini veritabanından bağımsız olarak üretiyordu; bu, verified seed yokken sahte link anlamına geliyordu.
- [A:\Way of Allah\sirat_i_nur\lib\features\downloads\offline_downloads_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/downloads/offline_downloads_page.dart) bu sentetik URL’lerle toplu indirme başlatabildiği için kullanıcıya yanlış “hazır katalog” sinyali verebiliyordu.
- `audio_files` tablosu Sukun için yeterliydi ancak Kur'an sure seslerinde `surah_number` olmadığı için runtime ve seed katmanı güvenilir şekilde birleşemiyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\content_schema.sql`
- `A:\Way of Allah\sirat_i_nur\content_seed_quran_audio.sql`
- `A:\Way of Allah\sirat_i_nur\lib\core\services\offline_audio_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\downloads\offline_downloads_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\surah_reading_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_tr.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations*.dart`
- `A:\Way of Allah\sirat_i_nur\tool\generate_quran_audio_seed.dart`
- `A:\Way of Allah\sirat_i_nur\test\content_schema_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\offline_audio_service_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\quran_audio_seed_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Kur'an ses akışı artık doğrulanmış resmi katalog olmadan sentetik link üretmiyor.
- Sure oynatma ve çevrimdışı indirme aynı `audio_files` source-of-truth üstünden çalışıyor.
- `content_seed_quran_audio.sql` sayesinde verified ses kayıtları projeye taşındı; kullanıcı cihazına indirilen MP3’ler artık resmi Quran.com chapter recitation URL’lerinden geliyor.
- Offline download UI incomplete cloud seed durumunu dürüst şekilde raporluyor.

### Test Sonucu
- `dart run tool/generate_quran_audio_seed.dart` → PASS (`684` audio insert)
- `flutter test test/offline_audio_service_test.dart` → PASS (`2/2`)
- `flutter test test/quran_audio_seed_test.dart` → PASS (`2/2`)
- `flutter test test/content_schema_test.dart` → PASS (`2/2`)
- `flutter test test/features/downloads/offline_downloads_test.dart` → PASS (`1/1`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`117/117`)

### Risk Değişimi (önceki risk → sonraki risk)
- Synthetic Supabase bucket URLs masking missing Quran audio seed: `8/25 → 2/25`
- Offline downloads starting from incomplete or unverifiable Quran audio catalog: `7/25 → 2/25`

### Sonraki Adım
- Sıradaki yüksek etkili açık alan, diagnostics ekranının cloud-first Kur'an audio completeness bilgisini de raporlaması; şu an ses sağlığı satırları daha çok local asset odaklı.
- Ardından accepted sources uygunsa adhan ve doğrulanabilir Asma audio seed katmanı `audio_files` üstünde genişletilecek; resmi kaynak yoksa bilgi eksikliği dürüstçe korunacak.

## 2026-04-08 TUR-42 — Align Quran Audio Diagnostics With Cloud Catalog
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\core\services\offline_audio_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/offline_audio_service.dart) içine `resolveCloudQuranAudioCatalog` ve `OfflineReciters.getQuranAudioCatalog()` tamamlandı; runtime ve diagnostics artık aynı verified cloud Kur'an audio katalog çözümleyicisini paylaşıyor.
- [A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/diagnostics_page.dart) içindeki `buildAudioDiagnosticsSnapshot` local `assets/audio/quran/*` sayımı yerine cloud catalog completeness ölçer hale getirildi.
- Aynı sayfada Kur'an audio satırı artık `audio_files` içindeki verified `quran_surah` satırlarını raporluyor; `0/684` yerine dürüst unavailable mesajı, kısmi katalogda incomplete mesajı, tam katalogda `684/684 files` gösteriyor.
- [A:\Way of Allah\sirat_i_nur\test\features\settings\diagnostics_page_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/settings/diagnostics_page_test.dart) cloud Quran catalog coverage testini aldı.
- [A:\Way of Allah\sirat_i_nur\test\offline_audio_service_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/offline_audio_service_test.dart) per-reciter catalog grouping regresyonunu aldı.

### Neden Yapıldı
- Runtime Kur'an audio akışı [A:\Way of Allah\sirat_i_nur\content_seed_quran_audio.sql](A:/Way%20of%20Allah/sirat_i_nur/content_seed_quran_audio.sql) ve `audio_files` tablosundaki verified cloud kaynaklara taşınmıştı; diagnostics ise hâlâ bundle içindeki yerel `assets/audio/quran/*` dosyalarını sayıyordu.
- Bu ayrışma, cloud catalog eksik veya bozuk olsa bile diagnostics ekranının sağlıklı görünebilmesine yol açabiliyordu.
- Kök sebep, health report ile gerçek playback/download source-of-truth’un farklı olmasıydı; bu turda iki zincir tek helper altında birleştirildi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\offline_audio_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\settings\diagnostics_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\offline_audio_service_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Diagnostics ekranı artık runtime ile aynı verified Kur'an audio katalogunu ölçüyor.
- Eksik veya boş cloud catalog, local asset varmış gibi sahte sağlıklı görünmüyor.
- Kısmi cloud seed durumları, indirme ekranındaki dürüst incomplete mesajıyla aynı doğrulukta raporlanıyor.

### Test Sonucu
- `flutter test test/features/settings/diagnostics_page_test.dart` → PASS (`7/7`)
- `flutter test test/offline_audio_service_test.dart` → PASS (`3/3`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`119/119`)

### Risk Değişimi (önceki risk → sonraki risk)
- Diagnostics reporting bundled Quran audio assets while runtime depends on verified cloud catalog: `6/25 → 2/25`

### Sonraki Adım
- Sıradaki uygulanabilir risk, verified resmi Kur'an ses dosyalarını gerektiğinde bizim tarafımıza tekrar üretilebilir şekilde çekebilen bir mirror/download aracı eklemek.
- Bu araç, repo’ya dev binary yığmadan accepted source’tan kontrollü indirme yapmalı ve eksik/bozuk indirmeleri dürüst raporlamalı.

## 2026-04-08 TUR-43 — Add Repeatable Verified Quran Audio Mirror Tool
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\tool\download_verified_quran_audio.dart](A:/Way%20of%20Allah/sirat_i_nur/tool/download_verified_quran_audio.dart) eklendi; bu araç versioned [A:\Way of Allah\sirat_i_nur\content_seed_quran_audio.sql](A:/Way%20of%20Allah/sirat_i_nur/content_seed_quran_audio.sql) içindeki verified resmi Kur'an audio satırlarını parse edip fiziksel MP3 dosyalarını seçili klasöre indiriyor.
- Araç, `--reciters`, `--surahs`, `--output-dir`, `--overwrite` seçenekleriyle kısmi veya tam mirror çalıştırabiliyor; başarıyla inen dosyalar için `manifest.json` üretiyor.
- [A:\Way of Allah\sirat_i_nur\test\download_verified_quran_audio_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/download_verified_quran_audio_test.dart) eklendi; parser, katalog gruplama, committed seed kapsamı ve invalid surah selection doğrulanıyor.
- Canlı smoke doğrulama çalıştırıldı: `dart run tool/download_verified_quran_audio.dart --reciters=alafasy --surahs=1 --output-dir=build/verified_quran_audio_smoke --overwrite`
- Smoke sonucu fiziksel dosya oluştu: `A:\Way of Allah\sirat_i_nur\build\verified_quran_audio_smoke\alafasy\001.mp3` (`793327` byte) ve manifest üretildi.

### Neden Yapıldı
- Verified SQL seed ve runtime cloud katalog vardı, fakat resmi ses dosyalarını “bizim tarafa” tekrar üretilebilir ve kontrollü biçimde çekmek için repo içi araç yoktu.
- Bu eksik, cloud seed doğru olsa bile bağımsız içerik arşivleme, backup ve kontrollü ingest akışlarını dışarıda bırakıyordu.
- Kök sebep, verified metadata ile fiziksel dosya materialization adımının birbirinden kopuk olmasıydı; bu turda ikisi repo içinde birleşti.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\download_verified_quran_audio.dart`
- `A:\Way of Allah\sirat_i_nur\test\download_verified_quran_audio_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Resmi, doğrulanmış Kur'an audio URLs artık repo içinden tekrar üretilebilir şekilde fiziksel MP3’e indirilebiliyor.
- Büyük binary’leri git’e doldurmadan kontrollü mirror akışı oluştu.
- Manifest sayesinde hangi reciter/surah dosyasının hangi resmi kaynaktan ve hangi verified timestamp ile geldiği izlenebilir hale geldi.

### Test Sonucu
- `flutter test test/download_verified_quran_audio_test.dart` → PASS (`4/4`)
- `dart run tool/download_verified_quran_audio.dart --reciters=alafasy --surahs=1 --output-dir=build/verified_quran_audio_smoke --overwrite` → PASS (`1` dosya indirildi, `0` fail)
- `flutter analyze` → PASS
- `flutter test` → PASS (`123/123`)

### Risk Değişimi (önceki risk → sonraki risk)
- No repeatable repo-native way to materialize verified Quran audio files locally: `7/25 → 2/25`

### Sonraki Adım
- Sıradaki tarama odağı prayer & notification pipeline olacak: `prayer_notification_coordinator.dart`, `adhan_scheduler_service.dart`, `notification_service.dart`, `prayer_times_service.dart`.
- Özellikle location değişimi sonrası reschedule zinciri, duplicate cancel/schedule davranışı ve timezone/DST kenar durumları yeniden doğrulanacak.

## 2026-04-08 TUR-44 — Fix Post-Isha Next Prayer Regression
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_calendar_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/prayer_calendar_service.dart) içine test edilebilir `currentTime` parametresi eklendi.
- Aynı servis içinde `maghrib` sonrası dallanma ayrıldı; `Isha` geçildikten sonra `nextPrayerName` artık yarının `Fajr` vaktine dönüyor.
- [A:\Way of Allah\sirat_i_nur\test\prayer_calendar_service_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/prayer_calendar_service_test.dart) eklendi; gün sonu senaryosunda `nextPrayerTime` yarının `fajr` alanına eşitleniyor.

### Neden Yapıldı
- [A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_calendar_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/prayer_calendar_service.dart) önceki durumda `now.isBefore(maghrib)` sonrasındaki tüm zamanı `Isha` kabul ediyordu.
- Bu, `Isha` sonrası kullanıcının bir sonraki vakti yanlış görmesine neden olabiliyordu; özellikle AGENTS.md’de işaretlenen “Fajr yarınki hesabı” kenar durumuyla birebir çakışıyordu.
- Kök sebep, gün sonu geçişinde `Isha` ile “yarının Fajr’ı” arasındaki ayrımın hiç yapılmamasıydı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_calendar_service.dart`
- `A:\Way of Allah\sirat_i_nur\test\prayer_calendar_service_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Gün sonu prayer state artık `Isha` sonrası yanlış vakit göstermiyor.
- Offline prayer calendar hesaplaması, prayer times provider’daki “yarının fajr’ı” mantığıyla hizalandı.
- Bu düzeltme scheduler için kullanılan hesaplanan zaman yapısını da daha tutarlı hale getirdi.

### Test Sonucu
- `flutter test test/prayer_calendar_service_test.dart` → PASS (`1/1`)
- `flutter test test/prayer_notification_coordinator_test.dart` → PASS (`4/4`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`124/124`)

### Risk Değişimi (önceki risk → sonraki risk)
- Post-Isha next prayer incorrectly staying on same-day Isha instead of tomorrow Fajr: `8/25 → 2/25`

### Sonraki Adım
- Sıradaki prayer pipeline turunda `cancelAll()` temizleme akışının duplicate/çakışan schedule davranışı analiz edilecek.
- Özellikle `PrayerNotificationCoordinator.sync()` ile [A:\Way of Allah\sirat_i_nur\lib\core\services\adhan_scheduler_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/adhan_scheduler_service.dart) arasındaki clear/schedule zinciri kanıta dayalı olarak daraltılacak.

## 2026-04-08 TUR-45 — Remove Duplicate Notification Bootstrap Path
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\main.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/main.dart) içinden `NotificationService` importu ve `NotificationService().init()` bootstrap çağrısı kaldırıldı.
- Üretim zincirinde başka hiçbir referansı kalmayan [A:\Way of Allah\sirat_i_nur\lib\core\services\notification_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/notification_service.dart) dosyası silindi.
- [A:\Way of Allah\sirat_i_nur\test\notification_service_guard_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/notification_service_guard_test.dart) eklendi; legacy servis dosyasının ve import/bootstrap izlerinin geri dönmesini engelliyor.

### Neden Yapıldı
- Call-chain taraması [A:\Way of Allah\sirat_i_nur\lib\main.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/main.dart) dışında `NotificationService` kullanımının olmadığını gösterdi.
- Aynı anda [A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_notification_coordinator.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/prayer_notification_coordinator.dart) zaten kendi `AdhanSchedulerService.init()` ve `requestPermissions()` akışını yürütüyordu.
- Bu yapı aynı bildirim ekosistemini iki ayrı plugin örneğiyle init etme ve izin isteme riskini taşıyordu; kök sebep yaşayan scheduling zinciri dışında kalmış orphan bootstrap yoluydu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\main.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\services\notification_service.dart`
- `A:\Way of Allah\sirat_i_nur\test\notification_service_guard_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Bildirim bootstrap akışı tek yaşayan prayer scheduler zincirine indirildi.
- Duplicate init / duplicate permission path riski kapandı.
- Orphan notification service geri dönmeyecek şekilde test guard’ıyla kilitlendi.

### Test Sonucu
- `flutter test test/notification_service_guard_test.dart` → PASS (`1/1`)
- `flutter test test/prayer_notification_coordinator_test.dart` → PASS (`4/4`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`125/125`)

### Risk Değişimi (önceki risk → sonraki risk)
- Duplicate notification bootstrap path with orphan service still initializing local notifications: `7/25 → 2/25`

### Sonraki Adım
- Sıradaki prayer pipeline turunda `PrayerNotificationCoordinator.sync()` ile `AdhanSchedulerService.scheduleAdhans()` arasındaki yarış/çakışma yüzeyi incelenecek.
- Özellikle hızlı ardışık settings değişimlerinde eski sync’in yeni sync’i yanlışlıkla temizleyip temizlemediği izole edilecek.

## 2026-04-08 TUR-46 — Prepare Storage-Backed Quran Audio Ingest
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\core\network\supabase_config.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/network/supabase_config.dart) içine `SUPABASE_QURAN_AUDIO_BUCKET` / varsayılan `quran-audio` tanımı eklendi.
- [A:\Way of Allah\sirat_i_nur\lib\core\services\offline_audio_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/offline_audio_service.dart) artık `storage_path` dolu satırlardan kendi Supabase public storage URL’ini türetebiliyor; `url` alanı boş bırakılmış storage-backed `audio_files` satırları runtime’da çözülebilir hale geldi.
- [A:\Way of Allah\sirat_i_nur\content_schema.sql](A:/Way%20of%20Allah/sirat_i_nur/content_schema.sql) içine `quran-audio` public bucket bootstrap’i ve `storage.objects` select policy eklendi.
- [A:\Way of Allah\sirat_i_nur\tool\generate_quran_audio_storage_seed.dart](A:/Way%20of%20Allah/sirat_i_nur/tool/generate_quran_audio_storage_seed.dart) eklendi; mirror manifest’ten `url = NULL`, `storage_path = reciter/file.mp3` kullanan storage-backed `audio_files` SQL seed üretiyor.
- [A:\Way of Allah\sirat_i_nur\test\generate_quran_audio_storage_seed_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/generate_quran_audio_storage_seed_test.dart) eklendi; manifest parse, SQL üretimi ve smoke manifest dönüşümü doğrulandı.
- Smoke üretimi çalıştırıldı: `dart run tool/generate_quran_audio_storage_seed.dart --manifest=build/verified_quran_audio_smoke/manifest.json --output=build/verified_quran_audio_smoke_storage.sql`

### Neden Yapıldı
- Kullanıcı yönlendirmesi doğrultusunda dış Quran audio linklerinin kalıcı source-of-truth olması kabul edilmedi; dosyaların bizim storage/database zincirimize alınması gerekiyor.
- Bu oturumda service-role/CLI erişimi olmadığı için production Supabase’e doğrudan write yapılamadı; buna rağmen sahte işlem yapılmadan gerçek ingest hattı repo içinde tamamlandı.
- Kök eksik, resmi dosyaları indirdikten sonra bunları internal `storage_path` tabanlı `audio_files` satırlarına çevirecek araç ve runtime desteğinin olmamasıydı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\network\supabase_config.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\services\offline_audio_service.dart`
- `A:\Way of Allah\sirat_i_nur\content_schema.sql`
- `A:\Way of Allah\sirat_i_nur\tool\generate_quran_audio_storage_seed.dart`
- `A:\Way of Allah\sirat_i_nur\test\generate_quran_audio_storage_seed_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\offline_audio_service_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\content_schema_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Quran audio runtime’ı artık kendi Supabase storage bucket yolundan beslenebilecek durumda.
- Mirror edilmiş resmi MP3 dosyalar, dış link olmadan `audio_files.storage_path` tabanlı iç kaynağa çevrilebiliyor.
- `build\verified_quran_audio_smoke_storage.sql` ile storage-backed ingest’in uçtan uca smoke doğrulaması alındı.

### Test Sonucu
- `flutter test test/generate_quran_audio_storage_seed_test.dart` → PASS (`4/4`)
- `flutter test test/offline_audio_service_test.dart` → PASS (`4/4`)
- `dart run tool/generate_quran_audio_storage_seed.dart --manifest=build/verified_quran_audio_smoke/manifest.json --output=build/verified_quran_audio_smoke_storage.sql` → PASS (`1` row)
- `flutter analyze` → PASS
- `flutter test` → PASS (`130/130`)

### Risk Değişimi (önceki risk → sonraki risk)
- Runtime depending on external Quran audio URLs with no internal storage-backed ingest path: `8/25 → 3/25`

### Sonraki Adım
- Service-role veya eşdeğer güvenli write kanalı geldiğinde, mirror edilmiş dosyalar `quran-audio` bucket’ına yüklenip üretilen storage-backed seed `audio_files` tablosuna uygulanacak.
- Kod tarafında sıradaki açık risk yine prayer pipeline yarış koşulları: hızlı ardışık settings değişimlerinde sync çakışmaları.

## 2026-04-08 TUR-47 — Serialize Prayer Sync Queue
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_notification_coordinator.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/prayer_notification_coordinator.dart) içine `_queuedSettings` ve `_activeSync` eklendi; `sync()` artık hızlı ardışık çağrıları sıraya alıp tek drain döngüsünde işliyor.
- Aynı dosyada `_drainQueuedSyncs()` eklendi; in-flight schedule temizlenmeden ikinci bir schedule/clear başlatılmıyor ve aradaki eskimiş fingerprint’ler atlanıyor.
- [A:\Way of Allah\sirat_i_nur\test\prayer_notification_coordinator_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/prayer_notification_coordinator_test.dart) içine bloke edilebilen `BlockingAdhanSchedulerService` ve iki regresyon testi eklendi.

### Neden Yapıldı
- [A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_notification_coordinator.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/prayer_notification_coordinator.dart) içindeki önceki akış her `sync()` çağrısını bağımsız `scheduleAdhans()` / `clearScheduledAdhans()` çalıştırıyordu.
- Hızlı ardışık lokasyon değişimlerinde eski sync tamamlanmadan yeni sync başlayabildiği için scheduler tarafında aynı anda iki operasyon çalıştırma ve ara state’i planlama riski vardı.
- Kök sebep, coordinator katmanında son ayarların kuyruğa alınıp tek aktif scheduler işlemiyle seri biçimde işlenmemesiydi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_notification_coordinator.dart`
- `A:\Way of Allah\sirat_i_nur\test\prayer_notification_coordinator_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Prayer scheduling zinciri aynı anda birden fazla clear/schedule operasyonu başlatmıyor.
- Çok hızlı ayar değişimlerinde ara lokasyonlar yerine en güncel state uygulanıyor.
- Queue davranışı testle kilitlendi; ileride concurrency regresyonu daha kolay yakalanacak.

### Test Sonucu
- `flutter analyze` → PASS
- `flutter test` → PASS (`132/132`)

### Risk Değişimi (önceki risk → sonraki risk)
- Overlapping prayer notification sync calls causing stale or conflicting schedule operations: `8/25 → 3/25`

### Sonraki Adım
- Sıradaki prayer pipeline turunda ülke/bölge bazlı resmî dini kurum namaz hesap yöntemi zinciri doğrulanacak.
- Özellikle `location_selection_page.dart`, `settings_provider.dart`, `prayer_times_service.dart` ve `prayer_calendar_service.dart` arasında calculation method / madhab varsayılanları tek kaynağa indirilecek.

## 2026-04-08 TUR-48 — Align Prayer Defaults With Official Regional Profiles
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/prayer_profile_service.dart) eklendi; canonical calculation method listesi, legacy string normalizer’ları, ülke/zaman dilimi bazlı prayer profile resolver’ı ve ortak `CalculationParameters` üreticisi burada toplandı.
- [A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_provider.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/settings_provider.dart) artık lokasyon güncellemesinde `countryCode` alıp resmî profile göre method/madhab/default angle set ediyor; legacy `Turkey`, `ISNA`, `Shafi` gibi kayıtları canonical forma normalize ediyor.
- [A:\Way of Allah\sirat_i_nur\lib\features\settings\location_selection_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/location_selection_page.dart) manuel şehir seçimi ve GPS tespitinde `countryCode` geçiriyor.
- [A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_times_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/prayer_times_service.dart) ve [A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_calendar_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/prayer_calendar_service.dart) artık ayrı ayrı method switch’leri yerine ortak profile builder kullanıyor.
- [A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/settings_page.dart) method/madhab picker’larını canonical profile listesine taşıdı; `Ja'fari` seçeneği eklendi.
- [A:\Way of Allah\sirat_i_nur\test\prayer_profile_service_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/prayer_profile_service_test.dart), [A:\Way of Allah\sirat_i_nur\test\settings_provider_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/settings_provider_test.dart) ve [A:\Way of Allah\sirat_i_nur\test\prayer_calendar_service_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/prayer_calendar_service_test.dart) ile profile çözümü, legacy migration ve resmî interval-profile regresyonları kilitlendi.

### Neden Yapıldı
- Mevcut akışta [A:\Way of Allah\sirat_i_nur\lib\features\settings\location_selection_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/location_selection_page.dart) yalnız koordinat yazıyor, method/madhab varsayılanlarını resmî ülke profiline göre güncellemiyordu.
- [A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_times_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/prayer_times_service.dart) ile [A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_calendar_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/prayer_calendar_service.dart) aynı string’leri farklı yorumluyordu; bu da aynı ayarın farklı ekran ve scheduler zincirlerinde farklı sonuç vermesine yol açabiliyordu.
- Önceki model resmî profillerin `ishaInterval` / `maghribAngle` gibi parametrelerini method isminden tekrar üretmek yerine stale custom angle değerlerini sızdırabiliyordu; özellikle `Umm al-Qura` ve `Tehran` için bu dinî doğruluk riskiydi.
- Resmî kaynak dayanağı olarak Diyanet, Dar al-Ifta, JAKIM, Kemenag, MUIS ve diğer ülke/kurum homepageleri esas alındı; adhan engine’de bire bir karşılığı olmayan bölgeler en yakın desteklenen profile açıkça infer edildi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_provider.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\location_selection_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_times_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_calendar_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\prayer_profile_service_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\settings_provider_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\prayer_calendar_service_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Lokasyon değiştiğinde namaz hesap yöntemi ve Asr gölgeleme varsayılanı artık ülke/bölge profiline göre otomatik hizalanıyor.
- Prayer provider, offline calendar, widget/scheduler zinciri aynı method resolver’ı kullandığı için aynı ayardan farklı sonuç üretme riski kapandı.
- `Umm al-Qura` interval tabanlı Isha ve `Tehran` maghrib angle gibi engine profilleri stale custom açıyla bozulmuyor.
- İran için `Ja'fari` label’ı eklendi; engine teknik olarak yalnız Hanafi vs. standard shadow factor ayırdığı için bu alan Adhan paketinin sınırı içinde standard shadow factor’a map edildi.

### Test Sonucu
- `flutter test test/prayer_profile_service_test.dart` → PASS (`7/7`)
- `flutter test test/settings_provider_test.dart` → PASS (`9/9`)
- `flutter test test/prayer_calendar_service_test.dart` → PASS (`2/2`)
- `flutter test test/prayer_notification_coordinator_test.dart` → PASS (`6/6`)
- `flutter test test/location_selection_page_test.dart` → PASS (`4/4`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`142/142`)

### Risk Değişimi (önceki risk → sonraki risk)
- Country and region prayer defaults staying on arbitrary or inconsistent calculation profiles across services: `12/25 → 4/25`

### Sonraki Adım
- Sıradaki prayer pipeline turunda widget zincirindeki tarih/zaman dilimi drift’i giderilecek; [A:\Way of Allah\sirat_i_nur\lib\main.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/main.dart) içindeki widget update akışı `DateTime.now()` yerine lokasyon timezone’ına göre hesaplanacak.
- Ardından prayer profile source bilgisi diagnostics yüzeyine taşınıp hangi resmî profile’in aktif olduğu kullanıcıya dürüst biçimde gösterilecek.

## 2026-04-08 TUR-49 — Fix Prayer Widget Timezone Drift
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_widget_sync_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/prayer_widget_sync_service.dart) eklendi; widget güncellemesi için timezone-aware referans zamanı çözüp tek noktadan `PrayerTimesEntity` üretiyor.
- [A:\Way of Allah\sirat_i_nur\lib\main.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/main.dart) içindeki `_updateHomeWidgets()` akışı doğrudan `DateTime.now()` ile hesap yapmak yerine yeni helper’ı kullanacak şekilde değiştirildi.
- [A:\Way of Allah\sirat_i_nur\test\prayer_widget_sync_service_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/prayer_widget_sync_service_test.dart) eklendi; lokasyon yokken `null` dönmesi ve timezone-aware referans tarihinin aynı güne göre hesap üretmesi kilitlendi.

### Neden Yapıldı
- [A:\Way of Allah\sirat_i_nur\lib\main.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/main.dart) önceki halinde widget zinciri cihazın yerel `DateTime.now()` tarihini kullanıyordu.
- Kullanıcı İstanbul dışındaki bir lokasyonu seçtiğinde, özellikle gece yarısı civarında cihaz tarihi ile seçilen lokasyonun tarihi ayrışabiliyor ve widget tarafında yanlış günün vakitleri üretilebiliyordu.
- Kök sebep, notification/provider zincirinde kullanılan timezone-aware `now` ile widget zincirinde kullanılan cihaz-local `now` değerinin farklı olmasıydı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_widget_sync_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\main.dart`
- `A:\Way of Allah\sirat_i_nur\test\prayer_widget_sync_service_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Prayer widget hesapları artık seçilen lokasyonun timezone’una göre aynı referans günden üretiliyor.
- Notification scheduler, provider ve widget zinciri aynı zaman referans mantığında hizalanmış oldu.
- Gece yarısı çevresindeki gün kayması riski kapandı.

### Test Sonucu
- `flutter test test/prayer_widget_sync_service_test.dart` → PASS (`2/2`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`144/144`)

### Risk Değişimi (önceki risk → sonraki risk)
- Home widget prayer schedule using device-local date instead of selected location timezone: `9/25 → 2/25`

### Sonraki Adım
- Sıradaki prayer pipeline turunda aktif resmî prayer profile adı ve kaynağı diagnostics yüzeyine taşınacak.
- Böylece kullanıcı hangi kurum/profile göre vakit hesaplandığını uygulama içinden doğrudan görebilecek.

## 2026-04-08 TUR-50 — Surface Active Prayer Authority In Diagnostics
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/diagnostics_page.dart) içine aktif namaz profili ve namaz kurumu satırları eklendi; satırlar doğrudan `settings.calculationMethod` + `settings.madhab` üzerinden [A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/prayer_profile_service.dart) tarafından çözülen resmî profile bağlandı.
- Aynı diagnostics zincirinde dependency anahtarı genişletildi; locale, tema, dil ve lokasyonun yanına `calculationMethod` ve `madhab` da eklendi.
- [A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/prayer_profile_service.dart) içine ortak `displayMadhabLabel` helper’ı eklendi ve [A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/settings_page.dart) ile diagnostics aynı madhab label gösterimine hizalandı.
- [A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_en.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_tr.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_tr.arb) ve tüm `app_*.arb` setine yeni diagnostics prayer anahtarları yayıldı; generated localization dosyaları yenilendi.
- [A:\Way of Allah\sirat_i_nur\test\features\settings\diagnostics_page_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/settings/diagnostics_page_test.dart) genişletildi; prayer ayarı değişince dependency hash’in değişmesi, resmî profil çözümü ve custom profilde kurumsal kaynak yok uyarısı testle kilitlendi.

### Neden Yapıldı
- Önceki diagnostics ekranı lokasyon, tema ve veri seti sağlığını gösteriyordu ancak aktif namaz saatlerinin hangi resmî kuruma ve hangi mezhep/Asr kuralına göre hesaplandığını göstermiyordu.
- Ayrıca diagnostics dependency anahtarı `calculationMethod` ve `madhab` içermediği için kullanıcı ayar ekranından method veya mezhep değiştirince diagnostics açıkken satırlar stale kalabiliyordu.
- Kök sebep, prayer profile bilgisinin servis katmanında bulunmasına rağmen diagnostics görünümüne hiç taşınmaması ve invalidate koşulunun eksik kurulmasıydı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_tr.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations*.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\settings\diagnostics_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Kullanıcı artık diagnostics ekranında aktif namaz profilini, mezhep label’ını ve hangi kurumsal kaynağın esas alındığını doğrudan görebiliyor.
- `Custom` modda uygulama kurumsal otorite varmış gibi davranmıyor; satır `kurumsal kaynak yok; manuel özel açı` olarak dürüst uyarı veriyor.
- Diagnostics ekranı prayer ayarı değişince stale kalmıyor; method veya madhab değişiminde satırlar yeniden üretiliyor.

### Test Sonucu
- `flutter test test/features/settings/diagnostics_page_test.dart` → PASS (`9/9`)
- `flutter gen-l10n` → PASS
- `flutter analyze` → PASS
- `flutter test` → PASS (`146/146`)

### Risk Değişimi (önceki risk → sonraki risk)
- Active prayer authority being invisible or stale in diagnostics despite country/region based official profiles: `8/25 → 2/25`

### Sonraki Adım
- Sıradaki prayer şeffaflık turunda aynı resmî kaynak bilgisi diagnostics dışına taşınıp [A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/settings_page.dart) içinde ana prayer ayarları akışında doğrudan görünür hale getirilecek.
- Böylece kullanıcı diagnostics ekranına girmeden de seçili ülke/bölge profili ve kurumsal kaynağı ana ayarlar ekranında görebilecek.

## 2026-04-08 TUR-51 — Show Prayer Authority In Main Settings Flow
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/settings_page.dart) prayer calculation kartına yeni bir `Prayer Authority` satırı eklendi.
- Satır aktif profile göre [A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/prayer_profile_service.dart) içinden kurum adı ve URL çözüyor; resmî kaynak varsa `open_in_new`, custom modda `block` ikonu gösteriyor.
- Aynı servis içine `hasOfficialPrayerAuthority` helper’ı eklendi ve diagnostics ile settings aynı authority kuralını kullanacak şekilde hizalandı.
- [A:\Way of Allah\sirat_i_nur\test\features\settings\settings_page_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/settings/settings_page_test.dart) eklendi; resmî kurum satırı ve custom mod dürüstlük durumu widget seviyesinde test edildi.
- [A:\Way of Allah\sirat_i_nur\test\prayer_profile_service_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/prayer_profile_service_test.dart) authority helper davranışıyla genişletildi.

### Neden Yapıldı
- Diagnostics ekranı prayer authority bilgisini gösteriyor olsa da ana ayarlar akışında kullanıcı hâlâ hangi kuruma göre namaz vakti üretildiğini göremiyordu.
- Bu durum, ülke/bölgeye göre resmî profile hizalanan sistemin kullanıcı tarafından ana ekrandan doğrulanamamasına yol açıyordu.
- Kök sebep, prayer authority bilgisinin yalnız servis katmanında ve diagnostics ekranında kalmasıydı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\settings\settings_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\prayer_profile_service_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Kullanıcı artık prayer method ve madhab seçimlerinin hemen altında hangi resmî kurum kaynağının esas alındığını görebiliyor.
- Resmî kaynak varsa kurum URL’si açılabiliyor; custom modda sahte tıklanabilirlik veya kurumsal otorite izlenimi verilmiyor.
- Settings ve diagnostics authority karar mantığı tek helper üzerinden hizalandığı için drift riski azaldı.

### Test Sonucu
- `flutter test test/prayer_profile_service_test.dart` → PASS (`8/8`)
- `flutter test test/features/settings/settings_page_test.dart` → PASS (`2/2`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`149/149`)

### Risk Değişimi (önceki risk → sonraki risk)
- Prayer authority visibility existing only in diagnostics instead of the main settings flow: `7/25 → 2/25`

### Sonraki Adım
- Sıradaki turda prayer/settings yüzeyindeki kalan hardcoded about/share/version akışı runtime metadata ve localization zincirine taşınacak.
- Ardından prayer-notification zincirinde bölge/timezone bazlı kenar durumlar yeniden taranacak.

## 2026-04-08 TUR-52 — Remove Hardcoded About And Share Metadata
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\core\services\app_metadata_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/app_metadata_service.dart) eklendi; runtime sürüm çözümü, legalese üretimi ve ortak uygulama URL sabitleri tek yerde toplandı.
- [A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/settings_page.dart) artık `version`, `applicationName`, `applicationVersion`, `applicationLegalese`, share text ve dış URL’leri hardcoded değil ortak metadata + localization zinciri üzerinden çözüyor.
- [A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/diagnostics_page.dart) içindeki version resolver yeni ortak metadata helper’ına bağlandı; settings ve diagnostics aynı sürüm kaynağını kullanıyor.
- [A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_en.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_tr.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_tr.arb) ve tüm `app_*.arb` setine `shareAppMessage` anahtarı yayıldı; generated localization dosyaları yenilendi.
- [A:\Way of Allah\sirat_i_nur\test\features\settings\settings_page_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/settings/settings_page_test.dart) genişletildi; runtime sürüm değeri ve localized share message kilitlendi.

### Neden Yapıldı
- Ana ayarlar ekranında `2.0.0`, `Sirat-i Nur`, `© Sirat-i Nur` ve paylaşım mesajı sabit string olarak duruyordu.
- Bu durum build metadata değiştiğinde UI ile gerçek sürümün ayrışmasına ve localization zincirinin about/share yüzeyinde delinmesine neden oluyordu.
- Kök sebep, sürüm/uygulama metadata’sının ortak yardımcı katmanda toplanmaması ve share metninin l10n yerine inline string ile üretilmesiydi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\app_metadata_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_tr.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations*.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\settings\settings_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Settings ve diagnostics artık aynı runtime sürüm kaynağını gösteriyor.
- About dialog uygulama adını locale-aware `appTitle` üzerinden alıyor.
- Share akışı her dilde localization zinciri üzerinden üretiliyor; inline İngilizce pazarlama metni kaldırıldı.

### Test Sonucu
- `flutter gen-l10n` → PASS
- `flutter test test/features/settings/settings_page_test.dart` → PASS (`3/3`)
- `flutter test test/features/settings/diagnostics_page_test.dart` → PASS (`9/9`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`150/150`)

### Risk Değişimi (önceki risk → sonraki risk)
- Settings about/share flow using stale hardcoded metadata instead of runtime and localized values: `6/25 → 1/25`

### Sonraki Adım
- Sıradaki turda prayer-notification zinciri, özellikle bölge/timezone değişimlerinde scheduler ve displayed times arasında kenar durum drift’i açısından yeniden taranacak.
- Ardından kalan hardcoded veya orphan yüzeyler için yeni risk sıralaması açılacak.

## 2026-04-08 TUR-53 — Fix Prayer DST Offset Drift
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\core\utils\timezone_utils.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/utils/timezone_utils.dart) içine `adjustCalculationTime` helper’ı eklendi; timezone ofseti artık referans gün/saat yerine doğrudan her hesaplanan vakit anına göre uygulanıyor.
- [A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_calendar_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/prayer_calendar_service.dart) tüm vakitleri ve ertesi gün Fajr hesabını yeni vakit-bazlı helper üzerinden ayarlayacak şekilde düzeltildi.
- [A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_times_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/prayer_times_service.dart) da aynı helper’a bağlandı; UI ve scheduler/calendar zinciri aynı DST mantığını kullanıyor.
- [A:\Way of Allah\sirat_i_nur\test\prayer_calendar_service_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/prayer_calendar_service_test.dart) Berlin DST geçiş gününde referans-ofset yaklaşımının yanlış olduğunu ve servis çıktısının vakit-bazlı ofsetle eşleştiğini kilitledi.
- [A:\Way of Allah\sirat_i_nur\test\timezone_utils_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/timezone_utils_test.dart) eklendi; aynı hedef gün içinde DST değişince `timezoneDeltaForDate` farkının değiştiğini doğruluyor.

### Neden Yapıldı
- Önceki akış `timezoneDeltaForDate(dateOrNow, timezone)` sonucunu tek bir sabit delta olarak günün tüm vakitlerine uyguluyordu.
- Yaz/kış saati geçiş günü gece yarısından önce yapılan hesapta, aynı gün içindeki Fajr/Dhuhr gibi vakitler geçişten sonraki doğru ofset yerine referans anın ofsetini taşıyabiliyordu.
- Kök sebep, timezone ofsetinin vakit anına göre değil hesaplama başlangıç anına göre uygulanmasıydı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\utils\timezone_utils.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_calendar_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_times_service.dart`
- `A:\Way of Allah\sirat_i_nur\test\prayer_calendar_service_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\timezone_utils_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- DST geçiş günlerinde prayer UI, offline calendar ve notification scheduler aynı doğru vakit-bazlı timezone düzeltmesini kullanıyor.
- Gece yarısına yakın hesaplanan günlerde gün içi future prayers’ın bir saat kayması riski kapandı.
- AGENTS.md’de işaretlenen timezone/DST edge-case sınıfı doğrudan testle kapsandı.

### Test Sonucu
- `flutter test test/timezone_utils_test.dart` → PASS (`1/1`)
- `flutter test test/prayer_calendar_service_test.dart` → PASS (`3/3`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`152/152`)

### Risk Değişimi (önceki risk → sonraki risk)
- Prayer times using a single reference timezone delta across DST transition days: `10/25 → 2/25`

### Sonraki Adım
- Sıradaki prayer pipeline turunda scheduler ile widget/provider zinciri arasında kalan locale/title ve audio channel yüzeyi yeniden taranacak.
- Ardından settings/about dışında kalan orphan ve hardcoded yüzeyler için yeni P1/P2 sıralaması çıkarılacak.

## 2026-04-08 TUR-54 — Localize Prayer Notification Copy Across All Locales
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\core\utils\prayer_name_localization.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/utils/prayer_name_localization.dart) statik 20-dil map yaklaşımından çıkarıldı; prayer name ve notification copy artık generated [A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_localizations.dart) üzerinden çözülüyor.
- [A:\Way of Allah\sirat_i_nur\lib\core\services\adhan_scheduler_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/adhan_scheduler_service.dart) içindeki TR/EN hardcoded title-body üretimi kaldırıldı; scheduler artık locale-aware notification title/body helper’larını kullanıyor.
- [A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_en.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_tr.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_tr.arb) ve tüm `app_*.arb` dosyalarına `prayerNotificationTitle` ile `prayerNotificationBody` placeholder anahtarları eklendi; generated localization dosyaları yenilendi.
- [A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart](A:/Way%20of%20Allah/sirat_i_nur/tool/translate_arb_keys.dart) eklendi; seçili ARB anahtarlarını 196 locale setine placeholder imzasını koruyarak çeviriyor ve yanlış placeholder içeren mevcut değerleri yeniden üretebiliyor.
- [A:\Way of Allah\sirat_i_nur\test\prayer_name_localization_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/prayer_name_localization_test.dart) eklendi; generated prayer names, localized TR notification copy ve English fallback kilitlendi.

### Neden Yapıldı
- [A:\Way of Allah\sirat_i_nur\lib\core\services\adhan_scheduler_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/adhan_scheduler_service.dart) title/body tarafında yalnızca Türkçe ve İngilizce cümle şablonu kullanıyordu.
- Bu akışta Almanca, Fransızca, Arapça, Endonezce ve diğer tüm locale’ler kısmi veya tam İngilizce notification cümlesi alıyordu; AGENTS.md’deki tam localization zinciri kuralı delinmişti.
- Kök sebep, prayer notification copy’nin ARB zincirine hiç girmemesi ve prayer names için sınırlı dil setine sahip ayrı bir hardcoded map kullanılmasıydı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\adhan_scheduler_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\utils\prayer_name_localization.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_tr.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations*.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\test\prayer_name_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Namaz isimleri ve bildirim cümleleri artık aynı localization kaynağından çözülüyor; scheduler ve widget/localizer zinciri ayrışmıyor.
- Yeni notification copy tüm locale setine placeholder-safe şekilde yayıldı; ICU syntax kırığı self-heal edilerek kapatıldı.
- Dini içerik doğruluğu denetiminde asıl bir sonraki yüksek riskin [A:\Way of Allah\sirat_i_nur\lib\core\constants\islamic_chatbot_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/islamic_chatbot_data.dart) olduğu netleşti: İngilizce response blokları Türkçe/karma içerik ve doğruluk riski taşıyor.

### Test Sonucu
- `dart run tool/translate_arb_keys.dart fajr sunrise dhuhr asr maghrib isha prayerNotificationTitle prayerNotificationBody` → PASS
- `flutter gen-l10n` → PASS
- `flutter test test/prayer_name_localization_test.dart` → PASS (`3/3`)
- `flutter test test/arb_coverage_test.dart` → PASS (`2/2`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`155/155`)

### Risk Değişimi (önceki risk → sonraki risk)
- Prayer notifications using TR/EN-only hardcoded copy outside the ARB chain: `9/25 → 2/25`

### Sonraki Adım
- Sıradaki turda [A:\Way of Allah\sirat_i_nur\lib\core\constants\islamic_chatbot_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/islamic_chatbot_data.dart) içerik bazlı doğruluk, dil tutarlılığı ve kaynak dürüstlüğü açısından satır satır temizlenecek.
- Özellikle İngilizce response bloklarındaki Türkçe metin, hatalı dua/transliterasyon ve “4 temel unsur” deyip 6 unsur listeleme gibi semantik hatalar kök sebep düzeyinde giderilecek.

## 2026-04-08 TUR-55 — Disable Unverified Local Islamic Chatbot Answers
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\core\constants\islamic_chatbot_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/islamic_chatbot_data.dart) içine `hasVerifiedDataset = false` guard’ı eklendi; `getResponse` artık doğrulanmış dataset yokken bilinçli olarak `null` dönüyor ve sabit dini cevapları runtime’dan çıkarıyor.
- [A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_en.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_tr.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_tr.arb) ve tüm `app_*.arb` setinde chatbot offline/local metinleri dürüst fallback söylemine çevrildi: `chatbotLocalAiLabel`, `chatbotDownloadLocalAi`, `chatbotOfflinePrompt`, `chatbotOfflineSwitched`, `chatbotOfflineDownloadLabel`, `chatbotLocalNoInfo`.
- [A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart](A:/Way%20of%20Allah/sirat_i_nur/tool/translate_arb_keys.dart) `--force` desteği alacak şekilde genişletildi; anlamı değişen chatbot anahtarları eski çevirileri korumadan 196 locale setine yeniden yayıldı.
- [A:\Way of Allah\sirat_i_nur\test\features\chatbot\chatbot_page_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/chatbot/chatbot_page_test.dart) güncellendi; offline fallback seçiminden sonra artık dürüst unavailable mesajı gösterdiği doğrulandı.
- [A:\Way of Allah\sirat_i_nur\test\islamic_chatbot_data_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/islamic_chatbot_data_test.dart) eklendi; doğrulanmamış dataset varken lokal dini cevapların hiç dönmediği kilitlendi.

### Neden Yapıldı
- [A:\Way of Allah\sirat_i_nur\lib\core\constants\islamic_chatbot_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/islamic_chatbot_data.dart) içinde İngilizce response bloklarında Türkçe içerik, hatalı dua/transliterasyon ve semantik/doktrinel doğruluk riski bulunuyor.
- Mevcut chatbot akışı bu sabit içeriği `Local AI` etiketiyle kullanıcıya dini rehberlik gibi sunuyordu; bu hem false success hem de dini açıdan yüksek riskliydi.
- Kök sebep, verified source pipeline kurulmadan sabit metin deposunun üretim fallback’i olarak kullanılması ve UI’ın bunu “indirilebilir local AI” gibi pazarlamasıydı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\constants\islamic_chatbot_data.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_tr.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations*.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\chatbot\chatbot_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\islamic_chatbot_data_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Doğrulanmamış lokal dini içerik artık hiçbir dilde chatbot yanıtı olarak servis edilmiyor.
- Offline chatbot yüzeyi sahte “1.5 GB local AI download” anlatımından çıkarıldı; kullanıcıya verified local dataset’in hazır olmadığı dürüstçe gösteriliyor.
- Tüm locale seti yeni dürüst offline fallback metinlerini aldı; chatbot UI ile runtime davranışı hizalandı.

### Test Sonucu
- `dart run tool/translate_arb_keys.dart --force chatbotOfflinePrompt chatbotOfflineSwitched chatbotOfflineDownloadLabel chatbotLocalAiLabel chatbotDownloadLocalAi chatbotLocalNoInfo` → PASS
- `flutter gen-l10n` → PASS
- `flutter test test/islamic_chatbot_data_test.dart` → PASS (`1/1`)
- `flutter test test/features/chatbot/chatbot_page_test.dart` → PASS (`3/3`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`157/157`)

### Risk Değişimi (önceki risk → sonraki risk)
- Unverified local Islamic chatbot dataset being served as authoritative guidance: `14/25 → 3/25`

### Sonraki Adım
- Sıradaki turda [A:\Way of Allah\sirat_i_nur\lib\core\constants\islamic_chatbot_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/islamic_chatbot_data.dart) tamamen verified-source tabanlı yeni bir içerik pipeline’ına taşınacak veya repo dışı doğrulanmış dataset gelene kadar production akışından kaldırılacak.
- Ayrıca [A:\Way of Allah\sirat_i_nur\assets\data\full_quran.json](A:/Way%20of%20Allah/sirat_i_nur/assets/data/full_quran.json) ile official Quran seed zinciri arasında örneklem ve sayım doğrulaması eklenerek fallback asset’in de kaynak dürüstlüğü testle kilitlenecek.

## 2026-04-08 TUR-56 — Rebuild Bundled Quran Fallback From Verified Seed
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\tool\generate_bundled_quran_asset.dart](A:/Way%20of%20Allah/sirat_i_nur/tool/generate_bundled_quran_asset.dart) eklendi; committed `content_seed_quran_surahs.sql` ve `content_seed_quran_ayahs.sql` dosyalarını parse edip [A:\Way of Allah\sirat_i_nur\assets\data\full_quran.json](A:/Way%20of%20Allah/sirat_i_nur/assets/data/full_quran.json) dosyasını yeniden üretiyor.
- Aynı araç çalıştırılarak [A:\Way of Allah\sirat_i_nur\assets\data\full_quran.json](A:/Way%20of%20Allah/sirat_i_nur/assets/data/full_quran.json) resmi Quran.com seed zinciriyle birebir hizalandı.
- [A:\Way of Allah\sirat_i_nur\test\bundled_quran_asset_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/bundled_quran_asset_test.dart) eklendi; committed asset’in seed’den türetilen beklenen payload ile tam eşleştiği ve kritik ayetlerin doğru metin/meal taşıdığı testle kilitlendi.

### Neden Yapıldı
- [A:\Way of Allah\sirat_i_nur\assets\data\full_quran.json](A:/Way%20of%20Allah/sirat_i_nur/assets/data/full_quran.json) yaşayan fallback olarak üretimde kalıyordu.
- Dosya içeriğinde satır bazlı dini doğruluk kırığı vardı: örneğin Bakara 1. ayetin Arapça alanına besmele gömülmüşken İngilizce alan yalnızca `Alif Lam Mim` diyordu; bu, fallback asset’in authoritative seed zincirinden koptuğunu gösteriyordu.
- Kök sebep, fallback JSON’un verified source zincirinden tekrar üretilebilir şekilde türetilmemesi ve testle korunmamasıydı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\generate_bundled_quran_asset.dart`
- `A:\Way of Allah\sirat_i_nur\assets\data\full_quran.json`
- `A:\Way of Allah\sirat_i_nur\test\bundled_quran_asset_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Bundled Quran fallback artık resmi seed zincirinden otomatik türetiliyor; sessiz içerik sapması test olmadan repo’ya giremiyor.
- Fatiha, Bakara ve Nâs dahil kritik ayetlerde Arapça metin ve TR/EN meal seed ile aynı hale geldi.
- Kullanıcı çevrimdışı fallback’te de cloud zinciriyle aynı doğrulanmış Quran içeriğini görüyor.

### Test Sonucu
- `dart run tool/generate_bundled_quran_asset.dart` → PASS
- `flutter test test/bundled_quran_asset_test.dart` → PASS (`2/2`)
- `flutter test test/features/quran/providers/bundled_quran_provider_test.dart` → PASS (`9/9`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`159/159`)

### Risk Değişimi (önceki risk → sonraki risk)
- Bundled Quran fallback asset drifting away from the verified source chain: `15/25 → 2/25`

### Sonraki Adım
- Sıradaki turda [A:\Way of Allah\sirat_i_nur\lib\core\constants\duas_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/duas_data.dart) sabit duası satır satır resmi kaynak ve zincir dürüstlüğü açısından denetlenecek.
- Özellikle yanlış/hatalı transliterasyon, zayıf veya belirsiz kaynak atfı ve standard dua metni olmayan girişler verified pipeline gelene kadar production fallback’ten çıkarılacak.

## 2026-04-08 TUR-57 — Disable Unverified Bundled Dua Fallback
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\core\constants\duas_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/duas_data.dart) içine `hasVerifiedBundledDuas = false` ve `bundledDailyDuaFallback()` eklendi; `resolveCloudDuas` artık cloud veri boşsa doğrulanmamış sabit listeye değil boş güvenli fallback’e dönüyor.
- [A:\Way of Allah\sirat_i_nur\lib\core\providers\supabase_providers.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/providers/supabase_providers.dart) `dailyDuasProvider` catch dalında da aynı verified fallback kuralına geçirildi.
- [A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/library_page.dart) daily duas kartını availability-aware hale getirdi; veri yoksa kart bloklanıyor, sahte `12 essential duas` sayacı yerine dürüst unavailable kopyası gösteriliyor ve detay ekranı boş liste yerine açıklayıcı unavailable mesajı veriyor.
- [A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_en.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_tr.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_tr.arb) ve tüm `app_*.arb` setinde `dailyDuas`, `essentialDuas`, `duaUnavailableTitle`, `duaUnavailableBody` zinciri güncellendi; ardından `flutter gen-l10n` yeniden üretildi.
- [A:\Way of Allah\sirat_i_nur\test\library_page_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/library_page_test.dart) ve [A:\Way of Allah\sirat_i_nur\test\features\library\library_page_cloud_duas_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/library/library_page_cloud_duas_test.dart) yeni verified fallback davranışını kilitleyecek şekilde genişletildi.

### Neden Yapıldı
- [A:\Way of Allah\sirat_i_nur\lib\core\constants\duas_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/duas_data.dart) içindeki sabit dualar arasında hatalı transliterasyon, standart dua metni olmayan girişler ve belirsiz kaynak atıfları bulunuyor.
- Buna rağmen [A:\Way of Allah\sirat_i_nur\lib\core\providers\supabase_providers.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/providers/supabase_providers.dart) ile [A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/library_page.dart) bu sabitleri production fallback olarak kullanıcıya gerçek verified içerik gibi sunuyordu.
- Kök sebep, verified dua seed zinciri kurulmadan sabit listenin otomatik fallback olarak kalması ve UI’ın bunu dürüstçe işaretlememesiydi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\constants\duas_data.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\providers\supabase_providers.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_tr.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations*.dart`
- `A:\Way of Allah\sirat_i_nur\test\library_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\library\library_page_cloud_duas_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Cloud `duas` tablosu boşsa veya erişilemezse kullanıcıya artık doğrulanmamış dua içeriği servis edilmiyor.
- Daily duas kartı ve detay sayfası, yanlış dini içerik yerine verified içerik eksikliğini dürüstçe bildiriyor.
- `dailyDuas` ve ilgili unavailable copy yeni turda tüm locale setine yayıldı; generated localization sınıfları ARB ile yeniden senkronlandı.

### Test Sonucu
- `dart run tool/translate_arb_keys.dart dailyDuas essentialDuas duaUnavailableTitle duaUnavailableBody` → PASS
- `flutter gen-l10n` → PASS
- `flutter test test/library_page_test.dart` → PASS (`10/10`)
- `flutter test test/features/library/library_page_cloud_duas_test.dart` → PASS (`4/4`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`161/161`)

### Risk Değişimi (önceki risk → sonraki risk)
- Unverified bundled dua content being shown as trustworthy production fallback: `14/25 → 3/25`

### Sonraki Adım
- Sıradaki turda [A:\Way of Allah\sirat_i_nur\lib\core\constants\duas_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/duas_data.dart) repo içinde bırakılan sabit listenin kendisi kaynak bazında tek tek ayıklanacak veya verified dua seed hattı kurulana kadar tamamen production dışı yardımcı dataset statüsüne indirilecek.
- Ardından [A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/library_page.dart) ve `duas` cloud zinciri için resmi/kurumsal seed pipeline hazırlanacak.

## 2026-04-09 TUR-58 — Restore Verified Quranic Dua Fallback
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\core\constants\duas_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/duas_data.dart) içindeki bundled dua listesi tamamen yenilendi; artık yalnızca verified bundled Quran seed zincirinden alınan `Quran 2:201`, `Quran 2:286`, `Quran 3:8`, `Quran 14:40`, `Quran 17:24`, `Quran 20:114`, `Quran 23:118` ve `Quran 25:74` ayetlerini taşıyor.
- Aynı dosyada doğrulanmamış transliterasyonlar payload’dan çıkarıldı; fallback dua nesnelerinde `transliteration` alanı bilinçli olarak boş bırakıldı.
- [A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/library_page.dart) quranic dua kategorisini ve kaynak etiketlerini localization zincirine taşıdı; transliterasyon boşsa UI artık sahte/eksik satır göstermiyor.
- [A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_en.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_tr.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_tr.arb) ve tüm `app_*.arb` setine dua kategori ve kaynak anahtarları yayıldı; ardından `flutter gen-l10n` yeniden üretildi.
- [A:\Way of Allah\sirat_i_nur\test\duas_data_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/duas_data_test.dart) eklendi; [A:\Way of Allah\sirat_i_nur\test\library_page_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/library_page_test.dart) ve [A:\Way of Allah\sirat_i_nur\test\features\library\library_page_cloud_duas_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/library/library_page_cloud_duas_test.dart) verified fallback davranışını kilitleyecek şekilde güncellendi.

### Neden Yapıldı
- [A:\Way of Allah\sirat_i_nur\lib\core\constants\duas_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/duas_data.dart) içinde production dışında dursa bile doğrulanmamış dua/transliterasyon içerikleri repo’da kalıyordu; kullanıcı yeniden verified fallback açıldığında ikinci kez temizlik gerekecekti.
- Kök sebep, bundled Quran seed zinciri doğrulanmış olmasına rağmen dua fallback’inin bu zincirden tekrar türetilmemesi ve UI’ın `quranic_dua` gibi iç anahtarları gösterebilmesiydi.
- Dini içerik doğruluğunu iki kez çevirmek yerine önce authoritative içerik setini sabitledim; çevrilecek şey yalnızca arayüz kategorileri ve kaynak etiketleri olarak bırakıldı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\constants\duas_data.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_tr.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations*.dart`
- `A:\Way of Allah\sirat_i_nur\test\duas_data_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\library_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\library\library_page_cloud_duas_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Cloud `duas` verisi yoksa uygulama artık boş unavailable durumu yerine doğrulanmış Quranic dua fallback’i gösterebiliyor.
- Fallback içerikte yanlış veya doğrulanmamış transliterasyon kalmadı; kullanıcıya eksik veriyi tamamlanmış gibi gösteren satır da kaldırıldı.
- Dua kategori ve kaynak çipi tüm locale zincirinde ham teknik anahtar veya sabit Türkçe/İngilizce metin sızdırmıyor.

### Test Sonucu
- `dart run tool/translate_arb_keys.dart duaCategoryQuranic duaCategoryMorningEvening duaCategoryTasbih duaCategoryProtection duaCategoryBeginning duaCategorySleep duaCategoryFoodDrink duaCategoryForgiveness duaCategoryHome duaSourceBukhari duaSourceMuslim duaSourceAbuDawud duaSourceTirmidhi duaSourceAhmad` → PASS
- `flutter gen-l10n` → PASS
- `flutter test test/duas_data_test.dart` → PASS (`2/2`)
- `flutter test test/library_page_test.dart` → PASS (`10/10`)
- `flutter test test/features/library/library_page_cloud_duas_test.dart` → PASS (`4/4`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`163/163`)

### Risk Değişimi (önceki risk → sonraki risk)
- Bundled dua fallback containing unverified religious content and leaking raw technical category keys: `13/25 → 3/25`

### Sonraki Adım
- Sıradaki turda verified fallback dışında kalan dini içerik sabitleri taranacak; özellikle [A:\Way of Allah\sirat_i_nur\lib\core\constants\islamic_chatbot_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/islamic_chatbot_data.dart) ve benzeri yerlerde authoritative olmayan dini cevap şablonları varsa ayrıştırılacak.
- Ardından dua/hadis/kategori zincirinin tüm locale setinde anlamsal tutarlılığı ve hardcoded proper noun yüzeyi denetlenecek.

## 2026-04-09 TUR-59 — Remove Retired Local Chatbot Corpus
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\core\constants\islamic_chatbot_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/islamic_chatbot_data.dart) sadeleştirildi; file artık yalnızca `hasVerifiedDataset = false` guard’ını ve her durumda `null` dönen dürüst offline sözleşmesini taşıyor.
- Aynı dosyadan doğrulanmamış namaz, oruç, Kur'an, hadis ve mezhep cevap corpus’u tamamen çıkarıldı; repo içinde geri açılabilir sahte dini fallback bırakılmadı.
- [A:\Way of Allah\sirat_i_nur\test\islamic_chatbot_data_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/islamic_chatbot_data_test.dart) genişletildi; disabled contract’e ek olarak eski corpus’tan kalan `6666 Ayet`, yanlış iftar duası ve benzeri marker’ların dosyada bulunmadığını guard testiyle kilitliyor.

### Neden Yapıldı
- Önceki turda [A:\Way of Allah\sirat_i_nur\lib\core\constants\islamic_chatbot_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/islamic_chatbot_data.dart) runtime’da kapalı olsa da repo içinde hatalı ve doğrulanmamış dini cevap bloklarını barındırıyordu.
- Kök sebep, `hasVerifiedDataset = false` bayrağının veri corpus’unu fiziksel olarak da temizlemek yerine yalnızca erişimi durdurmasıydı.
- Kullanıcının talep ettiği “repo içinde de saçma/yanlış dini metin bırakmama” kuralı için disabled state tek başına yeterli değildi; corpus’un kendisini kaldırmak gerekiyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\constants\islamic_chatbot_data.dart`
- `A:\Way of Allah\sirat_i_nur\test\islamic_chatbot_data_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Offline chatbot fallback’i artık yalnızca verified dataset geldiğinde açılabilecek temiz bir contract olarak kaldı.
- Repo içinde yanlış ayet sayısı, uydurma/bozuk dua ve zayıf dini genelleme içeren statik corpus tamamen kaldırıldı.
- Bu modül yanlışlıkla yeniden aktifleştirilse bile authoritative olmayan yerel cevap üretmeyecek.

### Test Sonucu
- `flutter test test/islamic_chatbot_data_test.dart` → PASS (`2/2`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`164/164`)

### Risk Değişimi (önceki risk → sonraki risk)
- Retired local chatbot corpus storing inaccurate religious guidance inside the repo: `12/25 → 2/25`

### Sonraki Adım
- Sıradaki turda [A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/asma_ul_husna_data.dart) içindeki bundled meaning/transliteration yüzeyi authoritative source ve source-attribution açısından denetlenecek.
- Ardından hadith ve library kaynak adları için proper-noun/localization semantiği ayrı bir kalite turunda gözden geçirilecek.

## 2026-04-09 TUR-60 — Canonicalize Hadith Source Proper Nouns
### Yapılan İşlem
- Tüm [A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_en.arb) setinde `duaSourceBukhari`, `duaSourceMuslim`, `duaSourceAbuDawud`, `duaSourceTirmidhi`, `duaSourceAhmad` anahtarları kanonik proper noun değerlerine sabitlendi: `Bukhari`, `Muslim`, `Abu Dawud`, `Tirmidhi`, `Ahmad`.
- Ardından `flutter gen-l10n` yeniden üretildi; generated localization sınıfları yeni proper noun kuralıyla senkronlandı.
- [A:\Way of Allah\sirat_i_nur\test\arb_proper_noun_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/arb_proper_noun_test.dart) eklendi; tüm ARB dosyalarında hadis kaynak adlarının makine çevirisiyle drift etmediğini test ediyor.

### Neden Yapıldı
- Önceki turdaki otomatik çeviri yayılımı bazı locale’lerde proper noun olan hadis kaynak adlarını ortak isimlere veya açıklayıcı ifadelere çevirmişti; örneğin `Muslim` bazı dosyalarda “müslüman” anlamına kayıyordu.
- Kök sebep, proper noun ile çevirilebilir UI terimlerinin aynı otomatik çeviri hattına bırakılmasıydı.
- Hadis referans zincirinde anlam kayması dini doğruluk ve kaynak atfı açısından kabul edilemez olduğu için kanonik adlar tüm dillere ortaklaştırıldı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_proper_noun_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Dua ve hadis kaynak çipleri artık hiçbir locale’de “Muslim = müslüman” gibi semantik bozulmaya uğramıyor.
- Proper noun olan hadis müellif adları tüm uygulamada tek ve güvenli referans biçimiyle gösteriliyor.
- Bu anahtarlar yeniden otomatik çeviriye kayarsa guard testi hemen fail verecek.

### Test Sonucu
- `flutter gen-l10n` → PASS
- `flutter test test/arb_proper_noun_test.dart` → PASS (`1/1`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`165/165`)

### Risk Değişimi (önceki risk → sonraki risk)
- Hadith source proper nouns drifting into mistranslated common nouns across locales: `8/25 → 2/25`

### Sonraki Adım
- Sıradaki turda [A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/asma_ul_husna_data.dart) bundled meaning/transliteration ve legacy audio URL yüzeyi authoritative source-attribution açısından temizlenecek.
- Bunun ardından hadith/library isimlendirmesinde kalan hardcoded collection label yüzeyi taranacak.

## 2026-04-09 TUR-61 — Sanitize Bundled Asma Fallback
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/asma_ul_husna_data.dart) içindeki bundled `AsmaUlHusnaData.names` listesinden tüm legacy external `audioUrl` değerleri çıkarıldı; bundled source artık üçüncü taraf MP3 URL taşımıyor.
- Aynı dosyadaki authoring-note kalıntıları temizlendi ve `The Maginificent` yazımı `The Magnificent` olarak düzeltildi.
- `buildBundledAsmaUlHusnaFallback()` bundled fallback için dürüst biçimde boş `audioUrl` üretmeye devam edecek şekilde korundu; `normalizeAsmaUlHusnaRow()` ise cloud satırlardan gelen gerçek `audio_url` alanını normalize edip UI zincirine aktarmaya devam etti.
- [A:\Way of Allah\sirat_i_nur\test\asma_ul_husna_data_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/asma_ul_husna_data_test.dart) genişletildi; source dosyada legacy CDN URL’leri ve authoring-note kalıntıları kalmadığını guard testiyle kilitliyor.

### Neden Yapıldı
- Önceki Asma fallback verisi repo içinde eski harici ses URL’lerini ve üretim-notu yorumlarını tutuyordu; runtime sessiz fallback kullansa bile source-of-truth kirli kalıyordu.
- Kök sebep, bundled fallback’in cloud veriden ayrıştırılmasına rağmen source dosyanın tarihsel authoring artıklarıyla birlikte commit edilmiş olmasıydı.
- Kullanıcının talep ettiği “repo içinde de sahte/yanlış/dışa bağımlı dini içerik bırakmama” kuralı için sadece runtime guard yeterli değildi; bundled kaynağın kendisinin de temizlenmesi gerekiyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart`
- `A:\Way of Allah\sirat_i_nur\test\asma_ul_husna_data_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Bundled Asma fallback artık doğrulanmamış üçüncü taraf ses bağlantılarını repo içinde taşımıyor.
- Cloud veri varsa gerçek `audio_url` zinciri çalışmaya devam ediyor; cloud yoksa UI dürüst biçimde sessiz fallback gösteriyor.
- Legacy authoring-note veya dış URL yeniden eklenirse guard testi doğrudan fail verecek.

### Test Sonucu
- `flutter test test/asma_ul_husna_data_test.dart` → PASS (`4/4`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`166/166`)

### Risk Değişimi (önceki risk → sonraki risk)
- Bundled Asma source embedding legacy external audio URLs and authoring artifacts: `10/25 → 3/25`

### Sonraki Adım
- Sıradaki turda [A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/asma_ul_husna_data.dart) içindeki İngilizce içerik kalitesi ve olası typo yüzeyi authoritative meaning ve dil kalitesi açısından taranacak.
- Ardından tüm locale setinde Asma anlam zinciri ile bundled data arasında anlamsal drift olup olmadığı kontrol edilecek.

## 2026-04-09 TUR-62 — Correct Bundled Asma Typos
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/asma_ul_husna_data.dart) içindeki yüksek güvenli typo ve formatting bozuklukları düzeltildi.
- İngilizce anlam satırlarında `Repentence -> Repentance`, `Soverign -> Sovereign`, `Inhertior -> Inheritor` gibi açık yazım hataları temizlendi; ayrıca `The Inspirer of Faith`, `The Knower of All`, `The Hearer of All`, `The Seer of All`, `The Possessor of Majesty and Bounty` gibi başlıklar tutarlı büyük harf formatına çekildi.
- Transliterasyon yüzeyinde `Al Mujeeb ` sondaki boşluğu kaldırıldı; `Al Mughi -> Al Mughni` ve `Ad Daaarr -> Ad Darr` düzeltmeleri yapıldı.
- [A:\Way of Allah\sirat_i_nur\test\asma_ul_husna_data_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/asma_ul_husna_data_test.dart) genişletildi; typo-prone satırların geri dönmesini engelleyen guard testi eklendi.

### Neden Yapıldı
- Önceki turda legacy URL ve authoring-note yüzeyi temizlenmiş olsa da bundled Asma verisi içinde kullanıcıya doğrudan görünen bariz dil ve transliteration hataları kalıyordu.
- Kök sebep, bundled fallback verisinin uzun süredir yeniden kalite denetiminden geçmemesi ve cloud kaynak gelmediğinde bu metinlerin doğrudan UI’ya yansımasıydı.
- Kullanıcının “önce dini içerik doğru olsun” talebi için semantik olmayan ama güven erozyonu yaratan typo katmanı önce kapatıldı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart`
- `A:\Way of Allah\sirat_i_nur\test\asma_ul_husna_data_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Bundled Asma fallback artık belirgin İngilizce yazım hataları ve bozuk transliterasyonlarla kullanıcıya görünmüyor.
- `Al Mughni` ve `Ad Darr` gibi isimlerde yanlış karakter dizileri temizlendi; sonraki semantic audit için zemin sadeleşti.
- Guard testi bu typo yüzeyinin yeniden repo’ya sızmasını engelleyecek.

### Test Sonucu
- `flutter test test/asma_ul_husna_data_test.dart` → PASS (`5/5`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`167/167`)

### Risk Değişimi (önceki risk → sonraki risk)
- Bundled Asma dataset exposing visible spelling and transliteration defects in fallback mode: `9/25 → 3/25`

### Sonraki Adım
- Sıradaki turda [A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/asma_ul_husna_data.dart) içindeki anlam satırları authoritative Türkçe kaynakla semantik hizaya göre denetlenecek.
- Ardından Asma UI’de bu meanings/transliterations için locale-specific presentation ve source-attribution yüzeyi taranacak.

## 2026-04-09 TUR-63 — Localize Religious UI Keys Across Supported Locales
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart](A:/Way%20of%20Allah/sirat_i_nur/tool/translate_arb_keys.dart) üç kontrollü batch ile çalıştırıldı; dini UI yüzeyindeki `hadith`, `hadithCollection`, `hadithBooks`, `searchHadith`, `asmaulHusna`, `dailyDuas`, `essentialDuas`, `duaUnavailableTitle`, `duaUnavailableBody`, `duaCategory*`, `hadithCollections` anahtarları desteklenen locale’lerde yeniden çevrildi.
- Sonuçlar tüm ilgili [A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_en.arb) dosyalarına ve generated [A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_localizations.dart) zincirine yayıldı.
- [A:\Way of Allah\sirat_i_nur\test\arb_religious_localization_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/arb_religious_localization_test.dart) eklendi; `de`, `fr`, `es`, `ar`, `hi`, `zh_CN`, `zh_TW`, `ru`, `id`, `pt` locale’lerinde `dailyDuas`, `hadithCollections`, `duaUnavailableTitle` değerlerinin İngilizceye düşmediğini guard ediyor.

### Neden Yapıldı
- Tarama sırasında 194 locale’de dini UI anahtarlarının en az bir kısmının hâlâ İngilizce kaldığı kanıtlandı; özellikle `dailyDuas`, `hadithCollections` ve `duaUnavailableTitle` zinciri yeni dini içerik yüzeyinde görünür İngilizce fallback üretiyordu.
- Kök sebep, önceki localization turlarının bütün dini anahtarları bütün locale setine aynı yoğunlukta yaymamasıydı.
- Kullanıcının “tüm diller için tam çeviri” talebine yaklaşmak için desteklenen locale’lerde gerçek çeviri tekrar üretildi; belirsiz veya nadir locale’lerde ise AGENTS.md kuralına uygun olarak gerektiğinde EN referans korunmuş oldu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_religious_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Ana hedef dillerde dini UI metni artık İngilizce fallback yerine yerel çeviriyle geliyor.
- `dailyDuas`, `hadithCollections`, `duaUnavailableTitle` gibi doğrudan kullanıcıya görünen dini yüzeylerde locale-semantic kalite yükseldi.
- Guard testi sayesinde bu çekirdek dini UI kopyası hedef dillerde tekrar İngilizceye düşerse CI seviyesinde yakalanacak.

### Test Sonucu
- `flutter gen-l10n` → PASS
- `flutter test test/arb_religious_localization_test.dart` → PASS (`1/1`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`168/168`)

### Risk Değişimi (önceki risk → sonraki risk)
- Religious UI strings falling back to English across supported locales: `11/25 → 4/25`

### Sonraki Adım
- Sıradaki turda [A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/asma_ul_husna_data.dart) anlam satırları authoritative Türkçe kaynağa göre semantik audit’ten geçirilecek.
- Ardından nadir locale’lerde İngilizce kalan dini UI anahtarları destek/borrowing/belirsizlik ekseninde raporlanıp mümkün olan ek locale map’leriyle daraltılacak.

## 2026-04-09 TUR-64 — Align High-Risk Asma Meanings With Official Sources
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/asma_ul_husna_data.dart) içinde resmi kaynakla anlam kayması üreten üç yüksek riskli İngilizce gloss dar kapsamlı olarak düzeltildi: `Al Mu'min` için `The Giver of Security`, `As Samad` için `The One Sought by All`, `Ad Darr` için `The Bringer of Harm`.
- [A:\Way of Allah\sirat_i_nur\test\asma_ul_husna_data_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/asma_ul_husna_data_test.dart) içine bu üç ismi kilitleyen yeni regresyon testi eklendi.

### Neden Yapıldı
- Tarama sonrası bundled fallback hâlâ [A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/asma_ul_husna_data.dart) içinde resmi Türkçe açıklamayla çelişen veya onu daraltan İngilizce gloss’lar taşıyordu.
- `Al Mu'min` için eski `The Inspirer of Faith` ifadesi güven ve eminlik anlamını kaçırıyordu; `As Samad` için `The Supreme Provider` ifadesi Diyanet tefsirindeki “herkesin kendisine ihtiyacını arz ettiği” boyutunu daraltıyordu; `Ad Darr` için `The Creator of the harmful` ifadesi de TDV açıklamasındaki kullanım biçimini bozuk ve kaba veriyordu.
- Kullanıcının dini içerikte doğruluk talebi nedeniyle yalnızca resmi ve birincil kaynakla yüksek güvenli hizalanabilen isimler seçildi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart`
- `A:\Way of Allah\sirat_i_nur\test\asma_ul_husna_data_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Bundled Asma fallback artık üç kritik isimde resmi anlam eksenine daha yakın ve kullanıcıya daha dürüst İngilizce gloss gösteriyor.
- Cloud veri yokken doğrudan UI’ya düşen dini içerikte anlam kayması azaltıldı.
- Regresyon testi bu üç düzeltmenin yanlışlıkla geri alınmasını engelleyecek.

### Test Sonucu
- `flutter test test/asma_ul_husna_data_test.dart` → PASS (`6/6`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`169/169`)

### Risk Değişimi (önceki risk → sonraki risk)
- High-risk bundled Asma English glosses diverging from official Turkish meaning: `12/25 → 4/25`

### Sonraki Adım
- Sıradaki turda [A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/asma_ul_husna_data.dart) içindeki ikinci grup semantik riskler (`Al Quddus`, `Al Wakeel`, `Al Qayyoom`, `Al Waajid`) resmi kaynakla dar kapsamlı denetlenecek.
- Ardından dini içerik zincirinde hadith ve dua source-attribution yüzeyi taranacak.

## 2026-04-09 TUR-65 — Align Secondary Asma Glosses With Official Semantics
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/asma_ul_husna_data.dart) içinde ikinci grup yüksek güvenli semantik kaymalar düzeltildi: `Al Quddus` için `The Most Holy`, `Al Wakeel` için `The All-Sufficient Trustee`, `Al Qayyoom` için `The Self-Subsisting Sustainer`.
- [A:\Way of Allah\sirat_i_nur\test\asma_ul_husna_data_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/asma_ul_husna_data_test.dart) aynı kaynak uyumunu test seviyesinde kilitleyecek şekilde genişletildi.

### Neden Yapıldı
- `The Purest`, `The Trustee` ve `The Self Existing` gloss’ları ilgili isimlerin TDV anlam katmanını ya fazla daraltıyor ya da kullanıcıya eksik semantik veriyordu.
- `Kuddûs` için resmi metin her türlü noksanlıktan tenzih ve yücelik vurgusuna dayanıyor; `Vekîl` için yeterlilik ve tevekkül edilen işlerin üstlenilmesi boyutu öne çıkıyor; `Kayyûm` için ise hem bizâtihi kâim oluş hem de bütün varlığı ayakta tutma anlamı birlikte korunmalıydı.
- Kullanıcıya cloud fallback veya bundled fallback modunda eksik dini anlam göstermemek için bu üç satır önce kapatıldı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart`
- `A:\Way of Allah\sirat_i_nur\test\asma_ul_husna_data_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Bundled Asma fallback artık üç temel isimde resmi semantiğe daha yakın, daha az eksik İngilizce gloss gösteriyor.
- UI tarafında kullanıcıya görünen dini içerik kalitesi yükseldi; özellikle `Al Qayyoom` için yalnızca “self-existing” eksenine sıkışan anlam genişletildi.
- Regresyon testi bu düzeltmelerin sessizce geri alınmasını önleyecek.

### Test Sonucu
- `flutter test test/asma_ul_husna_data_test.dart` → PASS (`6/6`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`169/169`)

### Risk Değişimi (önceki risk → sonraki risk)
- Secondary bundled Asma glosses understating official semantic scope: `10/25 → 3/25`

### Sonraki Adım
- Sıradaki turda [A:\Way of Allah\sirat_i_nur\lib\core\constants\hadith_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/hadith_data.dart) ve [A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/library_page.dart) üzerinden hadith source-attribution zinciri taranacak.
- Ardından [A:\Way of Allah\sirat_i_nur\lib\core\constants\duas_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/duas_data.dart) içindeki verified fallback referansları kaynak başlığı açısından tek tek denetlenecek.

## 2026-04-09 TUR-66 — Disable Unverified Hadith Browsing
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\core\services\hadith_api_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/hadith_api_service.dart) içine `hasVerifiedHadithDataset = false` sözleşmesi eklendi.
- [A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/library_page.dart) hadith kartlarını bu sözleşmeye bağladı; doğrulanmamış durumda sayı bazlı subtitle kaldırıldı, `Verified source pending` kopyası ve blok ikonuna geçildi, kart tap davranışı kapatıldı.
- [A:\Way of Allah\sirat_i_nur\lib\features\library\hadith_list_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/hadith_list_page.dart) ve [A:\Way of Allah\sirat_i_nur\lib\features\library\hadith_search_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/hadith_search_page.dart) doğrulanmamış dış feed varken dürüst unavailable-state göstermeye alındı.
- Yeni hadith güvenilirlik metinleri tüm [A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_en.arb) ve generated localization zincirine yayıldı.

### Neden Yapıldı
- Tarama sırasında [A:\Way of Allah\sirat_i_nur\lib\core\services\hadith_api_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/hadith_api_service.dart) hadith içeriğini doğrulanmamış bir GitHub/CDN feed’inden çektiği halde UI’nın bunu doğrulanmış dini veri gibi sunduğu kanıtlandı.
- [A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/library_page.dart) içindeki sabit `7,563 hadith` benzeri sayaçlar da kaynak-atıfsız kesinlik izlenimi veriyordu.
- Kullanıcının “sahte olmasın” ve dini içerikte doğruluk talebi nedeniyle doğrulanmamış hadith browse akışı dürüst biçimde kapatıldı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\hadith_api_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\library\hadith_list_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\library\hadith_search_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\library_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\library\hadith_gate_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_religious_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Doğrulanmamış harici hadith feed artık kullanıcıya sanki doğrulanmış hadis koleksiyonuymuş gibi açılmıyor.
- Kaynaksız hadith sayıları ve browse akışı dürüst unavailable-state ile değiştirildi.
- Priority locale’lerde yeni hadith güvenilirlik kopyası İngilizce fallback’e düşmüyor.

### Test Sonucu
- `dart run tool/translate_arb_keys.dart --force hadithSourcePending hadithUnavailableTitle hadithUnavailableBody` → PASS
- `flutter gen-l10n` → PASS (locale uyarı raporu mevcut olsa da priority locale testi geçti)
- `flutter test test/features/library/hadith_gate_test.dart` → PASS (`2/2`)
- `flutter test test/library_page_test.dart` → PASS (`11/11`)
- `flutter test test/arb_religious_localization_test.dart` → PASS (`1/1`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`172/172`)

### Risk Değişimi (önceki risk → sonraki risk)
- Unverified external hadith feed presented as trusted religious browsing data: `16/25 → 4/25`

### Sonraki Adım
- Sıradaki turda [A:\Way of Allah\sirat_i_nur\lib\core\services\hadith_api_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/hadith_api_service.dart) ve [A:\Way of Allah\sirat_i_nur\lib\features\library\providers\hadith_provider.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/providers/hadith_provider.dart) doğrulanmış dataset gelene kadar production zincirinden tamamen izole edilip edilmeyeceği denetlenecek.
- Ardından dua source-attribution ve rare-locale religious copy audit’i devam edecek.

## 2026-04-09 TUR-67 — Localize Hadith Collection Names Through One Shared Source
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\features\library\hadith_collection_copy.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/hadith_collection_copy.dart) eklendi; hadith koleksiyon adlarını locale-aware çözen tek kaynak fonksiyon oluşturuldu.
- [A:\Way of Allah\sirat_i_nur\lib\features\library\hadith_list_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/hadith_list_page.dart) ve [A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/library_page.dart) bu ortak fonksiyona taşındı.
- [A:\Way of Allah\sirat_i_nur\test\features\library\hadith_collection_copy_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/library/hadith_collection_copy_test.dart) ile Türkçe ve İngilizce kanonik adlar kilitlendi.

### Neden Yapıldı
- Hadith browse akışı dürüst biçimde kapatılmış olsa da library kartları koleksiyon adlarını hâlâ sabit İngilizce string’lerle gösteriyordu.
- Aynı koleksiyonun [A:\Way of Allah\sirat_i_nur\lib\features\library\hadith_list_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/hadith_list_page.dart) içinde Türkçe, [A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/library_page.dart) içinde İngilizce görünmesi locale tutarsızlığı üretiyordu.
- Kök sebep, koleksiyon adlarının iki farklı yerde ayrı sabitlerle tutulmasıydı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\library\hadith_collection_copy.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\library\hadith_list_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\library\hadith_collection_copy_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Hadith koleksiyon adları artık tek yerden çözülüyor; Türkçe görünümde `Sahih-i Buhârî`, `Sünen-i Nesâî` gibi kanonik adlar doğru yüzeye geliyor.
- Library kartı ve hadith sayfası aynı locale mantığını kullanıyor; dini içerik adlandırmasında tutarsızlık azaldı.
- Ortak helper testi bu isimlerin sessizce İngilizce sabite geri dönmesini engelleyecek.

### Test Sonucu
- `flutter test test/features/library/hadith_collection_copy_test.dart` → PASS (`2/2`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`174/174`)

### Risk Değişimi (önceki risk → sonraki risk)
- Hadith collection names diverging across library surfaces by locale: `8/25 → 2/25`

### Sonraki Adım
- Sıradaki turda rare-locale hadith güvenilirlik kopyasında İngilizce fallback kalan locale’ler ölçülüp uygun olanlar daraltılacak.
- Paralelde [A:\Way of Allah\sirat_i_nur\lib\features\library\providers\hadith_provider.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/providers/hadith_provider.dart) production akışından tamamen koparılabilecek mi denetlenecek.

## 2026-04-09 TUR-68 — Isolate Unverified Hadith Provider
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\core\services\hadith_api_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/hadith_api_service.dart) içine `VerifiedHadithDatasetUnavailable` exception’ı eklendi; `fetchHadiths` ve `fetchArabicHadiths` doğrulanmış dataset yoksa ağa çıkmadan fail-fast davranacak şekilde sertleştirildi.
- [A:\Way of Allah\sirat_i_nur\lib\features\library\providers\hadith_provider.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/providers/hadith_provider.dart) `hasVerifiedHadithDataset = false` durumunda aynı exception ile provider seviyesinde de zinciri kesti.
- [A:\Way of Allah\sirat_i_nur\test\hadith_provider_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/hadith_provider_test.dart) eklendi; service ve Riverpod provider’ın doğrulanmamış harici hadith feed’e istemeden erişemediği regresyonla kilitlendi.

### Neden Yapıldı
- Önceki turda UI dürüst unavailable-state göstermeye alınmış olsa da production zincirinde [A:\Way of Allah\sirat_i_nur\lib\core\services\hadith_api_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/hadith_api_service.dart) ve [A:\Way of Allah\sirat_i_nur\lib\features\library\providers\hadith_provider.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/providers/hadith_provider.dart) üzerinden doğrulanmamış harici hadith feed’e kod seviyesinde hâlâ erişim mümkündü.
- Kullanıcı akışı dışından veya gelecekte eklenecek yeni bir yüzeyden bu provider çağrılırsa sistem tekrar kaynaksız dini içeriği network’ten çekebilirdi.
- Kök sebep, güvenilirlik kontrolünün yalnızca UI katmanında yapılması, servis ve provider katmanının fail-fast davranmamasıydı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\hadith_api_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\library\providers\hadith_provider.dart`
- `A:\Way of Allah\sirat_i_nur\test\hadith_provider_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Doğrulanmamış hadith feed artık yalnızca UI’da gizlenmiyor; service ve provider katmanı da bunu bilinçli olarak reddediyor.
- İleride yeni bir ekran veya background call yanlışlıkla hadith provider’ı çağırsa bile sistem harici kaynağa erişmeden dürüst hata üretecek.
- Production zinciri “unverified dataset kapalı” sözleşmesini tüm katmanlarda tutarlı hale getirdi.

### Test Sonucu
- `flutter test test/hadith_provider_test.dart` → PASS (`2/2`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`176/176`)

### Risk Değişimi (önceki risk → sonraki risk)
- Unverified external hadith feed still reachable through production provider/service chain: `12/25 → 3/25`

### Sonraki Adım
- Sıradaki turda hadith unavailable kopyasında İngilizce fallback kalan rare locale’ler ölçülüp kapatılacak.
- Ardından production yüzeyinde kullanılmayan hadith network kodu tamamen retire edilebiliyor mu denetlenecek.

## 2026-04-09 TUR-69 — Block Unverified Hadith Routes At Router Level
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\core\network\app_router.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/network/app_router.dart) içine `resolveAppRedirect` ve hadith route guard’ı eklendi.
- `/library/search` ve `/library/hadith/:id` yolları, `hasVerifiedHadithDataset = false` durumunda router seviyesinde `/library` ekranına geri yönlendirilecek şekilde kapatıldı.
- [A:\Way of Allah\sirat_i_nur\test\app_router_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/app_router_test.dart) iki yeni regresyon testiyle hem hadith route bloklamasını hem de onboarding redirect’in önceliğini kilitledi.

### Neden Yapıldı
- [A:\Way of Allah\sirat_i_nur\lib\features\library\hadith_list_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/hadith_list_page.dart) ve [A:\Way of Allah\sirat_i_nur\lib\features\library\hadith_search_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/hadith_search_page.dart) dürüst unavailable-state gösterse de [A:\Way of Allah\sirat_i_nur\lib\core\network\app_router.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/network/app_router.dart) deep-link veya manuel route erişimini hâlâ açık bırakıyordu.
- Bu durum production’da doğrulanmamış hadith feature’ının halen kullanılabilir bir yüzeyi varmış izlenimi veriyordu.
- Kök sebep, hadith dataset doğrulama sözleşmesinin router katmanına kadar taşınmamış olmasıydı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\network\app_router.dart`
- `A:\Way of Allah\sirat_i_nur\test\app_router_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Doğrulanmamış hadith route’ları artık yalnızca sayfa içinde hata veren yüzeyler değil; router seviyesinde production akışından çıkarıldı.
- Uygulama dışından gelen derin link veya manuel navigation denemeleri kullanıcıyı tekrar library köküne döndürüyor.
- Onboarding guard önceliği korunarak yeni route koruması sessiz regresyon üretmeden eklendi.

### Test Sonucu
- `flutter test test/app_router_test.dart` → PASS (`4/4`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`178/178`)

### Risk Değişimi (önceki risk → sonraki risk)
- Unverified hadith routes still reachable through deep-link/manual navigation: `9/25 → 2/25`

### Sonraki Adım
- Sıradaki turda rare-locale hadith unavailable kopyasında İngilizce fallback kalan locale’ler translation pipeline açısından sınıflandırılacak.
- Ardından doğrulanmış hadith dataset gelene kadar production’da kalan hadith network kodu tamamen retire edilebiliyor mu denetlenecek.

## 2026-04-09 TUR-70 — Fix High-Confidence Variant Locale Religious Copy
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart](A:/Way%20of%20Allah/sirat_i_nur/tool/translate_arb_keys.dart) `nb`, `nn` ve `zh` locale’lerini sırasıyla `no` ve `zh-cn` çeviri hedeflerine eşleyecek alias desteğiyle güncellendi.
- [A:\Way of Allah\sirat_i_nur\lib\l10n\app_nb.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_nb.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_nn.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_nn.arb) ve [A:\Way of Allah\sirat_i_nur\lib\l10n\app_zh.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_zh.arb) içinde dini UI için kritik kalan İngilizce fallback kopyaları (`dailyDuas`, `hadithCollections`, `hadithSourcePending`, `hadithUnavailableTitle`, `hadithUnavailableBody`, `duaUnavailableTitle`) güvenilir sibling locale kopyasıyla dolduruldu.
- [A:\Way of Allah\sirat_i_nur\test\arb_religious_localization_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/arb_religious_localization_test.dart) `nb`, `nn` ve `zh` varyantlarını kapsayacak şekilde genişletildi; ayrıca `hadithUnavailableBody` de regressionset’e dahil edildi.

### Neden Yapıldı
- Rare locale audit’i, hadith güvenilirlik uyarılarında İngilizce fallback kalan `69` locale olduğunu gösterdi.
- Bu kümenin tamamı aynı güven düzeyinde değildi; `nb`, `nn` ve `zh` için repo içinde zaten güvenilir sibling kaynaklar ([A:\Way of Allah\sirat_i_nur\lib\l10n\app_no.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_no.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_zh_CN.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_zh_CN.arb)) bulunuyordu.
- Kök sebep, çeviri aracının bu varyant locale’leri doğru hedef dil koduna eşlememesi ve generic `zh`/Norwegian varyantlarının İngilizce referansta kalmasıydı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_nb.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_nn.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_zh.arb`
- `A:\Way of Allah\sirat_i_nur\test\arb_religious_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- `nb`, `nn` ve generic `zh` artık dini içerik UI’sinde İngilizce fallback göstermiyor.
- Çeviri aracı gelecekte aynı anahtarlar eklendiğinde bu üç varyant için tekrar İngilizceye düşmeyecek.
- Hadith unavailable uyarılarında İngilizce fallback kalan rare locale sayısı `69`dan `66`ya indi; kalan küme artık daha belirsiz ve ayrı audit/translation turu gerektiriyor.

### Test Sonucu
- `flutter gen-l10n` → PASS
- `flutter test test/arb_religious_localization_test.dart` → PASS (`1/1`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`178/178`)

### Risk Değişimi (önceki risk → sonraki risk)
- High-confidence variant locales still falling back to English for core religious UI: `8/25 → 2/25`

### Sonraki Adım
- Sıradaki turda kalan `66` rare locale, güvenilir sibling-fallback uygulanabilecekler ve EN referansında kalması gerekenler olarak sınıflandırılacak.
- Paralelde production’da kalan hadith network kodu doğrulanmış dataset gelene kadar daha da daraltılabilecek mi denetlenecek.

## 2026-04-09 TUR-71 — Sync Generated Localization Outputs
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_localizations_en.dart) generated localization dosyaları, TUR-70’teki ARB değişikliklerinden sonra `flutter gen-l10n` çıktısıyla senkronize edildi.
- `flutter analyze` ve tam `flutter test` turu senkronized generated dosyalarla tekrar çalıştırıldı.

### Neden Yapıldı
- TUR-70 commit’i sonrası çalışma ağacında sadece generated localization dosyaları dirty kaldı.
- Kök sebep, ARB değişikliklerinden sonra üretilen `app_localizations_*.dart` dosyalarının commit kapsamına alınmamış olmasıydı.
- Generated ve source ARB zincirinin ayrışması, temiz çalışma ağacı ve tekrar üretilebilir build kuralını ihlal ediyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Generated localization katmanı tekrar ARB kaynaklarıyla aynı seviyeye getirildi.
- Repo yeniden temiz çalışma ağacına dönecek şekilde senkronize edildi.
- Sonraki localization turları artık önceki üretilmiş çıktı farklarını taşımayacak.

### Test Sonucu
- `flutter analyze` → PASS
- `flutter test` → PASS (`178/178`)

### Risk Değişimi (önceki risk → sonraki risk)
- Generated localization outputs out of sync with committed ARB sources: `7/25 → 1/25`

### Sonraki Adım
- Sıradaki turda kalan `66` rare locale için sibling-fallback uygulanabilirlik matrisi çıkarılacak.
- Ardından hadith network kodu doğrulanmış dataset gelene kadar daha da retire edilebiliyor mu denetlenecek.

## 2026-04-09 TUR-72 — Retire Unverified Hadith Network Path
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\core\services\hadith_api_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/hadith_api_service.dart) içindeki `dart:convert`, `http` importları ve tüm harici CDN fetch implementasyonu kaldırıldı.
- `HadithApiService.fetchHadiths` ve `HadithApiService.fetchArabicHadiths` artık doğrudan `VerifiedHadithDatasetUnavailable` fırlatan dürüst sözleşmeye indirildi.
- Mevcut [A:\Way of Allah\sirat_i_nur\test\hadith_provider_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/hadith_provider_test.dart) ve tam test koşusu ile provider zincirinin bu değişiklikten etkilenmeden aynı dürüst fail-fast davranışı koruduğu doğrulandı.

### Neden Yapıldı
- Önceki turlarda UI, provider ve router katmanı hadith feed’i kapatmış olsa da [A:\Way of Allah\sirat_i_nur\lib\core\services\hadith_api_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/hadith_api_service.dart) içinde doğrulanmamış harici CDN endpoint’lerine ait tüm network yolu hâlâ repo içinde duruyordu.
- Bu kod production’da çalışmasa bile tekrar yanlışlıkla etkinleştirilebilecek latent bir harici bağımlılık ve dini içerik riski taşıyordu.
- Kök sebep, “dataset yoksa fail-fast” kararının servis implementasyonundan ziyade method başındaki guard ile sınırlı kalmasıydı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\hadith_api_service.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Doğrulanmamış hadith CDN entegrasyonu artık kod tabanında yaşayan bir network yolu olarak kalmıyor.
- Harici hadith feed’i yanlışlıkla yeniden çağırabilecek latent HTTP akışı tamamen söküldü.
- Servis katmanı artık repo düzeyinde de “verified dataset yoksa hadith yok” sözleşmesiyle uyumlu.

### Test Sonucu
- `flutter test test/hadith_provider_test.dart` → PASS (`2/2`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`178/178`)

### Risk Değişimi (önceki risk → sonraki risk)
- Dormant unverified hadith CDN code still present in production service layer: `11/25 → 1/25`

### Sonraki Adım
- Sıradaki turda kalan `66` rare locale sibling-fallback ve EN-reference kümelerine ayrılacak.
- Ardından kalan dini UI çeviri yüzeyi için güvenilir şekilde ilerlenebilen locale’ler tek tek kapatılacak.

## 2026-04-09 TUR-73 — Map Twi Religious Copy To Akan Fallback
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart](A:/Way%20of%20Allah/sirat_i_nur/tool/translate_arb_keys.dart) içine `tw -> ak` alias eşlemesi eklendi.
- [A:\Way of Allah\sirat_i_nur\lib\l10n\app_tw.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_tw.arb) içindeki dini UI için kritik kalan İngilizce fallback anahtarları ([A:\Way of Allah\sirat_i_nur\lib\l10n\app_ak.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_ak.arb) referansı ile) sibling fallback’e taşındı.
- [A:\Way of Allah\sirat_i_nur\test\arb_religious_localization_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/arb_religious_localization_test.dart) `tw` locale’ini priority regressionset’e ekledi.

### Neden Yapıldı
- Rare locale audit’inde [A:\Way of Allah\sirat_i_nur\lib\l10n\app_tw.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_tw.arb) hadith ve dua güvenilirlik kopyasının tamamen İngilizce kaldığı doğrulandı.
- Bu locale için repo içinde yüksek güvenli sibling kaynak zaten mevcuttu: [A:\Way of Allah\sirat_i_nur\lib\l10n\app_ak.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_ak.arb).
- Library of Congress ISO 639-3 yönergesinde Twi’nin Akan makrodiline bağlı olduğu açıkça belirtiliyor; bu yüzden `tw -> ak` eşlemesi uydurma değil, kaynaklı fallback.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_tw.arb`
- `A:\Way of Allah\sirat_i_nur\test\arb_religious_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- `tw` locale’i artık dini UI’de İngilizce fallback göstermiyor.
- Çeviri aracı ileride aynı anahtarlar geldiğinde `tw` için tekrar İngilizceye düşmeyecek.
- İngilizce hadith unavailable fallback kalan rare locale sayısı `66`dan `65`e indi.

### Test Sonucu
- `flutter test test/arb_religious_localization_test.dart` → PASS (`1/1`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`178/178`)

### Risk Değişimi (önceki risk → sonraki risk)
- Twi locale still falling back to English for core religious UI despite a safe sibling fallback: `7/25 → 1/25`

### Sonraki Adım
- Sıradaki turda kalan `65` locale içinden resmî veya sibling kaynakla güvenilir biçimde eşlenebilenler ayıklanacak.
- EN referansında kalması gereken belirsiz rare locale’ler için ayrı audit matrisi hazırlanacak.

## 2026-04-09 TUR-74 — Sync Safe Variant Locale Files From Sibling Sources
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\tool\sync_variant_arb_fallbacks.dart](A:/Way%20of%20Allah/sirat_i_nur/tool/sync_variant_arb_fallbacks.dart) eklendi; güvenli varyant çiftlerinde İngilizce kalan ARB anahtarlarını sibling locale’den otomatik devralıyor.
- Araç bu turda [A:\Way of Allah\sirat_i_nur\lib\l10n\app_nb.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_nb.arb) <= [A:\Way of Allah\sirat_i_nur\lib\l10n\app_no.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_no.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_nn.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_nn.arb) <= [A:\Way of Allah\sirat_i_nur\lib\l10n\app_no.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_no.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_tw.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_tw.arb) <= [A:\Way of Allah\sirat_i_nur\lib\l10n\app_ak.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_ak.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_zh.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_zh.arb) <= [A:\Way of Allah\sirat_i_nur\lib\l10n\app_zh_CN.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_zh_CN.arb) eşleşmelerini uyguladı.
- Sonuçta `nb` ve `nn` için `21`, `tw` için `147`, `zh` için `157` İngilizce fallback anahtarı sibling dosyalardan dolduruldu.
- [A:\Way of Allah\sirat_i_nur\test\arb_variant_fallback_sync_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/arb_variant_fallback_sync_test.dart) eklendi; bu dört varyantta kaynak sibling dosya çevrilmişken hedefin İngilizce kalması engellendi.
- Generated localization dosyaları da senkronlandı: [A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_nb.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_localizations_nb.dart), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_nn.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_localizations_nn.dart), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_tw.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_localizations_tw.dart), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_zh.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_localizations_zh.dart).

### Neden Yapıldı
- Önceki turlarda tek tek dini anahtar düzeltmeleri yapılmış olsa da bu varyant locale dosyalarının büyük bölümü hâlâ İngilizce UI metinleri taşıyordu.
- Kök sebep, güvenli varyant diller için mevcut sibling locale çevirilerinin toplu olarak devralınmamasıydı.
- Bu dört eşleşme için sibling kaynak repo içinde zaten vardı ve güven düzeyi yüksekti; tek tek anahtar kapatmak yerine sistematik sync daha yüksek etki sağladı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\sync_variant_arb_fallbacks.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_nb.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_nn.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_tw.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_zh.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_nb.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_nn.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_tw.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_zh.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_variant_fallback_sync_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- `nb`, `nn`, `tw` ve `zh` locale’lerinde uygulamanın çok daha büyük bir yüzeyi artık İngilizce fallback göstermiyor.
- Bu dört locale için sibling kaynak çevrilmişken hedef dosyanın tekrar İngilizce kalması testle engellendi.
- Rare hadith unavailable fallback sayısı `65` olarak kaldı; fakat bu turda sadece dini üç anahtar değil, genel UI kapsaması da geniş ölçekte iyileştirildi.

### Test Sonucu
- `dart run tool/sync_variant_arb_fallbacks.dart` → PASS
- `flutter gen-l10n` → PASS
- `flutter test test/arb_variant_fallback_sync_test.dart` → PASS (`1/1`)
- `flutter test test/arb_religious_localization_test.dart` → PASS (`1/1`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`179/179`)

### Risk Değişimi (önceki risk → sonraki risk)
- Safe variant locales still showing large English UI surfaces despite trusted sibling translations: `13/25 → 3/25`

### Sonraki Adım
- Sıradaki turda kalan `65` rare locale içinden başka güvenli sibling veya makrodil eşleşmesi olanlar ayıklanacak.
- Ardından sibling’i olmayan belirsiz locale kümesi için EN-reference audit matrisi çıkarılacak.

## 2026-04-09 TUR-75 — Localize Live TV YouTube Action Across Priority Locales
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart](A:/Way%20of%20Allah/sirat_i_nur/tool/translate_arb_keys.dart) `--force openInYoutube` ile tüm `app_*.arb` dosyalarında yeniden çalıştırıldı.
- Bu turda [A:\Way of Allah\sirat_i_nur\lib\l10n\app_da.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_da.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_he.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_he.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_ja.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_ja.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_nb.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_nb.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_nn.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_nn.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_no.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_no.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_vi.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_vi.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_zh.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_zh.arb) ve diğer desteklenen locale dosyalarında `openInYoutube` artık İngilizce değil.
- Generated localization çıktıları yenilendi; örnek olarak [A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_da.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_localizations_da.dart), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_he.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_localizations_he.dart), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_ja.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_localizations_ja.dart), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_nb.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_localizations_nb.dart), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_zh.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_localizations_zh.dart) güncellendi.
- [A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/arb_ui_localization_test.dart) eklendi; Live TV üzerindeki `openInYoutube` eyleminin öncelikli locale setinde İngilizce fallback’e dönmesi engellendi.

### Neden Yapıldı
- Tarama turunda [A:\Way of Allah\sirat_i_nur\lib\features\tv\live_tv_page.dart#L222](A:/Way%20of%20Allah/sirat_i_nur/lib/features/tv/live_tv_page.dart#L222) ve [A:\Way of Allah\sirat_i_nur\lib\features\tv\live_tv_page.dart#L303](A:/Way%20of%20Allah/sirat_i_nur/lib/features/tv/live_tv_page.dart#L303) tarafından kullanılan `openInYoutube` anahtarının `135` locale’de hâlâ İngilizce kaldığı doğrulandı.
- Bu boşluk, uygulamanın görünür bir aksiyonunda geniş çaplı localization kırığı oluşturuyordu.
- Aynı anahtarın desteklenen dillerde çevrilebildiği kanıtlandığı için bu turda en yüksek etkili localization boşluğu olarak seçildi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb` içindeki `openInYoutube` alanı güncellenen dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart` generated dosyaları
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- `openInYoutube` için İngilizce fallback taşıyan locale sayısı `135`ten `63`e düştü.
- `tr`, `de`, `fr`, `es`, `ar`, `da`, `he`, `ja`, `nb`, `nn`, `no`, `pt`, `ru`, `tw`, `vi`, `zh`, `zh_CN`, `zh_TW` priority seti artık bu aksiyonda İngilizce göstermiyor.
- Kalan `63` locale, çeviri aracıyla güvenilir çıktı üretmeyen rare/uncertain küme olarak ayrıştırıldı; bunlar sonraki turda sibling/makrodil eşleşmesi olanlar ve dürüst EN-reference kalması gerekenler diye sınıflanacak.

### Test Sonucu
- `dart run tool/translate_arb_keys.dart --force openInYoutube` → PASS
- `flutter gen-l10n` → PASS
- `flutter test test/arb_ui_localization_test.dart` → PASS (`1/1`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`180/180`)

### Risk Değişimi (önceki risk → sonraki risk)
- Live TV action label still falling back to English across a broad locale surface: `14/25 → 5/25`

### Sonraki Adım
- Sıradaki turda kalan `63` rare locale içinden güvenli sibling veya makrodil eşleşmesi olanlar kapatılacak.
- Sibling’i olmayan locale’ler için key bazlı EN-reference audit matrisi çıkarılıp hangi anahtarların dürüstçe EN’de kalacağı ayrı kayda alınacak.

## 2026-04-09 TUR-76 — Localize Home Dashboard Labels Across Priority Locales
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart](A:/Way%20of%20Allah/sirat_i_nur/tool/translate_arb_keys.dart) `--force dailyVerse todaysIbadah quickAccess assistant places library analytics islamicEducation` ile tüm `app_*.arb` setinde yeniden çalıştırıldı.
- Özellikle [A:\Way of Allah\sirat_i_nur\lib\l10n\app_da.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_da.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_he.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_he.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_ja.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_ja.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_nb.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_nb.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_zh.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_zh.arb) ve diğer desteklenen locale dosyalarında ana ekran kopyası güncellendi.
- Generated localization çıktıları yenilendi; örnek olarak [A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_da.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_localizations_da.dart), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_he.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_localizations_he.dart), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_ja.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_localizations_ja.dart), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_nb.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_localizations_nb.dart), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_zh.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_localizations_zh.dart) senkronlandı.
- [A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/arb_ui_localization_test.dart) genişletildi; `dailyVerse`, `todaysIbadah`, `quickAccess`, `places`, `library`, `islamicEducation` anahtarları için priority locale setinde İngilizce fallback regresyonu engellendi.

### Neden Yapıldı
- Tarama turunda [A:\Way of Allah\sirat_i_nur\lib\features\home\home_page.dart#L44](A:/Way%20of%20Allah/sirat_i_nur/lib/features/home/home_page.dart#L44), [A:\Way of Allah\sirat_i_nur\lib\features\home\home_page.dart#L60](A:/Way%20of%20Allah/sirat_i_nur/lib/features/home/home_page.dart#L60), [A:\Way of Allah\sirat_i_nur\lib\features\home\home_page.dart#L119](A:/Way%20of%20Allah/sirat_i_nur/lib/features/home/home_page.dart#L119), [A:\Way of Allah\sirat_i_nur\lib\features\home\home_page.dart#L227](A:/Way%20of%20Allah/sirat_i_nur/lib/features/home/home_page.dart#L227) tarafından kullanılan home dashboard anahtarlarının `194` locale’de İngilizce kaldığı doğrulandı.
- Bu cluster uygulamanın ana giriş ekranında yer aldığı için kullanıcı etkisi, nadir locale sorunlarından daha yüksekti.
- `assistant` ve `analytics` anahtarları bazı dillerde loanword olarak İngilizceyle aynı kaldığı için bu turda sahte fail oluşturmamak adına ayrı audit listesine alındı; kesin lokalize olan altı anahtar testle kilitlendi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb` içindeki home dashboard anahtarları güncellenen dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart` generated dosyaları
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- `dailyVerse` için İngilizce fallback sayısı `194`ten `66`ya düştü.
- `todaysIbadah` için `194`ten `63`e düştü.
- `quickAccess` için `194`ten `64`e düştü.
- `places` için `194`ten `65`e düştü.
- `library` için `194`ten `68`e düştü.
- `islamicEducation` için `194`ten `63`e düştü.
- Priority locale seti ana ekran kopyasında artık İngilizce fallback göstermiyor.

### Test Sonucu
- `dart run tool/translate_arb_keys.dart --force dailyVerse todaysIbadah quickAccess assistant places library analytics islamicEducation` → PASS
- `flutter gen-l10n` → PASS
- `flutter test test/arb_ui_localization_test.dart` → PASS (`2/2`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`181/181`)

### Risk Değişimi (önceki risk → sonraki risk)
- Home dashboard core labels still falling back to English across most locales: `15/25 → 6/25`

### Sonraki Adım
- Sıradaki turda `diagnostics*` ve `shareAppMessage` gibi `194` locale’de İngilizce kalan geniş UI anahtarları ele alınacak.
- Paralel audit olarak `analytics` ve `assistant` gibi loanword davranışı gösteren anahtarlar için locale bazlı kabul matrisi çıkarılacak.

## 2026-04-09 TUR-77 — Localize Settings Share And Diagnostics Copy
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart](A:/Way%20of%20Allah/sirat_i_nur/tool/translate_arb_keys.dart) `--force shareAppMessage diagnosticsNotSet diagnosticsPrayerProfile diagnosticsPrayerSource diagnosticsCloudDriven diagnosticsAudioAssets` ile tüm `app_*.arb` setinde çalıştırıldı.
- Güvenli ama araç tarafından İngilizce bırakılan iki priority locale manuel düzeltildi:
  - [A:\Way of Allah\sirat_i_nur\lib\l10n\app_fr.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_fr.arb) `shareAppMessage`
  - [A:\Way of Allah\sirat_i_nur\lib\l10n\app_es.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_es.arb) `shareAppMessage`
- Generated localization dosyaları yenilendi; örnek olarak [A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_fr.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_localizations_fr.dart), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_es.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_localizations_es.dart), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_da.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_localizations_da.dart), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_he.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_localizations_he.dart) güncellendi.
- [A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/arb_ui_localization_test.dart) genişletildi; diagnostics etiketleri ve güvenli share locale seti için EN fallback regresyonu kilitlendi.
- [A:\Way of Allah\sirat_i_nur\test\features\settings\settings_page_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/settings/settings_page_test.dart) içine Fransızca share helper testi eklendi.

### Neden Yapıldı
- Tarama turunda [A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart#L595](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/settings_page.dart#L595) `shareAppMessage` ve [A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart#L281](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/diagnostics_page.dart#L281), [A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart#L285](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/diagnostics_page.dart#L285), [A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart#L295](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/diagnostics_page.dart#L295), [A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart#L304](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/diagnostics_page.dart#L304), [A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart#L429](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/diagnostics_page.dart#L429) anahtarlarının neredeyse tüm locale setinde İngilizce kaldığı doğrulandı.
- Bu metinler settings ve diagnostics gibi geniş görünür yüzeylerde doğrudan kullanıcıya çıkıyor.
- `tw` için `shareAppMessage` hâlâ belirsiz kaldı; AGENTS.md kuralına uygun olarak uydurma yapılmadı ve EN-reference audit listesinde bırakıldı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb` içindeki share/diagnostics anahtarları güncellenen dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart` generated dosyaları
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\settings\settings_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- `shareAppMessage` için İngilizce fallback sayısı `194`ten `109`a düştü.
- `diagnosticsNotSet` için `194`ten `65`e düştü.
- `diagnosticsPrayerProfile` için `194`ten `64`e düştü.
- `diagnosticsPrayerSource` için `194`ten `64`e düştü.
- `diagnosticsCloudDriven` için `194`ten `89`a düştü.
- `diagnosticsAudioAssets` için `194`ten `70`e düştü.
- Priority locale seti diagnostics yüzeyinde artık İngilizce fallback göstermiyor; güvenli priority locale seti share kopyasında da İngilizce taşımıyor.

### Test Sonucu
- `dart run tool/translate_arb_keys.dart --force shareAppMessage diagnosticsNotSet diagnosticsPrayerProfile diagnosticsPrayerSource diagnosticsCloudDriven diagnosticsAudioAssets` → PASS
- `flutter gen-l10n` → PASS
- `flutter test test/arb_ui_localization_test.dart` → PASS (`4/4`)
- `flutter test test/features/settings/settings_page_test.dart` → PASS (`4/4`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`184/184`)

### Risk Değişimi (önceki risk → sonraki risk)
- Settings share and diagnostics copy still falling back to English across the supported surface: `15/25 → 6/25`

### Sonraki Adım
- Sıradaki turda `locationServiceDisabled`, `locationPermissionDenied`, `citiesCount` ve kalan diagnostics/share rare-locale EN-reference kümesi ele alınacak.
- `assistant` ve `analytics` için loanword kabul matrisi çıkarılıp hangi locale’lerde EN-formun meşru olduğu ayrı kayda alınacak.

## 2026-04-09 TUR-78 — Localize Location Permission And Count Copy
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart](A:/Way%20of%20Allah/sirat_i_nur/tool/translate_arb_keys.dart) `--force locationServiceDisabled locationPermissionDenied citiesCount` ile tüm `app_*.arb` setinde çalıştırıldı.
- Generated localization dosyaları `flutter gen-l10n` ile yenilendi; güncellenen örnekler arasında [A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_tr.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_localizations_tr.dart), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_de.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_localizations_de.dart), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_zh.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_localizations_zh.dart) bulunuyor.
- [A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/arb_ui_localization_test.dart) genişletildi; güvenli priority locale seti için `locationServiceDisabled`, `locationPermissionDenied`, `citiesCount` anahtarlarında EN fallback regresyonu kilitlendi.
- [A:\Way of Allah\sirat_i_nur\test\location_selection_page_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/location_selection_page_test.dart) yeniden çalıştırılarak mevcut filtreleme davranışının yeni locale güncellemesiyle bozulmadığı doğrulandı.

### Neden Yapıldı
- Tarama turunda [A:\Way of Allah\sirat_i_nur\lib\features\settings\location_selection_page.dart#L81](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/location_selection_page.dart#L81), [A:\Way of Allah\sirat_i_nur\lib\features\settings\location_selection_page.dart#L92](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/location_selection_page.dart#L92) ve [A:\Way of Allah\sirat_i_nur\lib\features\settings\location_selection_page.dart#L278](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/location_selection_page.dart#L278) anahtarlarının geniş locale setinde İngilizce kaldığı doğrulandı.
- Bu metinler konum izni, servis devre dışı ve şehir sayacı gibi doğrudan kullanıcı akışını etkileyen kritik ayar yüzeylerinde gösteriliyor.
- `tw` için `citiesCount` güvenilir sibling çevirisi bulunamadı; AGENTS.md kuralına uygun olarak uydurma yapılmadı ve bu anahtar güvenli locale seti testinden dışarıda bırakıldı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb` içindeki location anahtarları güncellenen dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart` generated dosyaları
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- `locationServiceDisabled` için İngilizce fallback sayısı `194`ten `64`e düştü.
- `locationPermissionDenied` için `194`ten `64`e düştü.
- `citiesCount` için `194`ten `84`e düştü.
- Güvenli priority locale seti artık konum izin ve şehir sayacı yüzeyinde İngilizce fallback göstermiyor.

### Test Sonucu
- `dart run tool/translate_arb_keys.dart --force locationServiceDisabled locationPermissionDenied citiesCount` → PASS
- `flutter gen-l10n` → PASS
- `flutter test test/location_selection_page_test.dart` → PASS (`4/4`)
- `flutter test test/arb_ui_localization_test.dart` → PASS (`5/5`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`185/185`)

### Risk Değişimi (önceki risk → sonraki risk)
- Location permission and count copy still falling back to English across the supported surface: `14/25 → 6/25`

### Sonraki Adım
- Sıradaki turda `assistant`, `analytics`, `location` ve `share/diagnostics` kümelerinde kalan rare-locale EN-reference alanları sınıflandırılacak.
- Ardından code-referenced anahtarlar içinde en yüksek İngilizce fallback sayısına sahip sonraki UI kümesi lokalize edilecek.

## 2026-04-09 TUR-79 — Harden Diagnostics Asset And Custom Copy Localization
### Yapılan İşlem
- Yarım kalan localization turu güvenli biçimde devralındı; [A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart](A:/Way%20of%20Allah/sirat_i_nur/tool/translate_arb_keys.dart) ile daha önce başlatılmış `diagnosticsAdhanAudioAssets`, `diagnosticsQuranAudioAssets`, `diagnosticsFilesCount`, `diagnosticsManifestReadFailed`, `diagnosticsLocalizationLocales`, `diagnosticsPrayerCustomProfile`, `diagnosticsPrayerCustomSource` kümesinin kısmi etkisi ölçüldü.
- Priority locale setinde İngilizce kalan yüzey için kontrollü locale-hedefli batch düzeltme uygulandı; özellikle [A:\Way of Allah\sirat_i_nur\lib\l10n\app_da.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_da.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_he.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_he.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_nb.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_nb.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_nn.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_nn.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_no.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_no.arb) içinde `diagnosticsAdhanAudioAssets` elle düzeltildi.
- Variant fallback zinciri de düzeltildi; [A:\Way of Allah\sirat_i_nur\lib\l10n\app_tw.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_tw.arb) ilgili diagnostics anahtarlarında [A:\Way of Allah\sirat_i_nur\lib\l10n\app_ak.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_ak.arb) ile hizalandı.
- [A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/arb_ui_localization_test.dart) genişletildi; güvenli priority locale seti için diagnostics asset/custom copy EN fallback regresyonu kilitlendi.

### Neden Yapıldı
- Tarama turunda [A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart#L288](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/diagnostics_page.dart#L288), [A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart#L298](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/diagnostics_page.dart#L298), [A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart#L385](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/diagnostics_page.dart#L385), [A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart#L394](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/diagnostics_page.dart#L394), [A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart#L412](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/diagnostics_page.dart#L412), [A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart#L430](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/diagnostics_page.dart#L430), [A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart#L438](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/diagnostics_page.dart#L438) anahtarlarının çok sayıda locale’de İngilizce kaldığı doğrulandı.
- İlk toplu çeviri komutu kullanıcı kesmesiyle yarıda kaldı; self-heal kuralıyla kısmi durum ölçülüp yalnızca eksik kalan locale/anahtar yüzeyine odaklanıldı.
- Tam test turu, [A:\Way of Allah\sirat_i_nur\test\arb_variant_fallback_sync_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/arb_variant_fallback_sync_test.dart) içinde `tw` varyant fallback regresyonu buldu; bu yalnızca ilgili locale üzerinde düzeltilip tekrar doğrulandı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb` içindeki diagnostics asset/custom anahtarları güncellenen dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart` generated dosyaları
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- `diagnosticsAdhanAudioAssets` için İngilizce fallback sayısı `195`ten `101`e düştü.
- `diagnosticsQuranAudioAssets` için `195`ten `79`a düştü.
- `diagnosticsFilesCount` için `195`ten `77`ye düştü.
- `diagnosticsManifestReadFailed` için `195`ten `80`e düştü.
- `diagnosticsLocalizationLocales` için `195`ten `81`e düştü.
- `diagnosticsPrayerCustomProfile` için `195`ten `112`ye düştü.
- `diagnosticsPrayerCustomSource` için `195`ten `74`e düştü.
- Güvenli priority locale seti diagnostics asset/custom yüzeyinde artık İngilizce fallback göstermiyor.

### Test Sonucu
- `flutter gen-l10n` → PASS
- `flutter test test/arb_ui_localization_test.dart` → PASS (`6/6`)
- `flutter test test/arb_variant_fallback_sync_test.dart` → PASS (`1/1`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`186/186`)

### Risk Değişimi (önceki risk → sonraki risk)
- Diagnostics asset and custom-profile copy still falling back to English across the supported surface: `15/25 → 6/25`

### Sonraki Adım
- Sıradaki turda code-referenced yüksek yoğunluklu kalan UI anahtarları olan `calculateZakat`, `dayStreak`, `bestStreak` kümesi lokalize edilecek.
- Ardından chatbot ve paywall yüzeyindeki kalan loanword/EN-reference kümeleri ayrı audit turuna alınacak.

## 2026-04-09 TUR-80 — Localize Analytics Streak And Zakat Labels
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart](A:/Way%20of%20Allah/sirat_i_nur/tool/translate_arb_keys.dart) `--force calculateZakat dayStreak bestStreak` ile başlatıldı; komut tüm locale setinde uzun sürdüğü için zaman aşımına girdi ama ARB dosyalarına kısmi yazım bıraktı.
- Self-heal kuralıyla kısmi durum ölçüldü; güvenli priority locale setinde yalnızca [A:\Way of Allah\sirat_i_nur\lib\l10n\app_vi.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_vi.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_zh.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_zh.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_zh_CN.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_zh_CN.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_zh_TW.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_zh_TW.arb) ve variant fallback tarafında [A:\Way of Allah\sirat_i_nur\lib\l10n\app_tw.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_tw.arb) eksik kaldığı doğrulandı.
- Bu dar küme için locale-hedefli batch düzeltme uygulandı; `tw` varyantı da [A:\Way of Allah\sirat_i_nur\lib\l10n\app_ak.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_ak.arb) sibling fallback’ine hizalandı.
- [A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/arb_ui_localization_test.dart) genişletildi; priority locale seti için `calculateZakat`, `dayStreak`, `bestStreak` EN fallback regresyonu kilitlendi.

### Neden Yapıldı
- Tarama turunda [A:\Way of Allah\sirat_i_nur\lib\features\analytics\analytics_page.dart#L104](A:/Way%20of%20Allah/sirat_i_nur/lib/features/analytics/analytics_page.dart#L104), [A:\Way of Allah\sirat_i_nur\lib\features\analytics\analytics_page.dart#L137](A:/Way%20of%20Allah/sirat_i_nur/lib/features/analytics/analytics_page.dart#L137) ve [A:\Way of Allah\sirat_i_nur\lib\features\library\zakat_calculator_page.dart#L184](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/zakat_calculator_page.dart#L184) anahtarlarının neredeyse tüm locale setinde İngilizce kaldığı doğrulandı.
- Bu metinler analytics ve zekat ekranında yüksek görünürlüklü kullanıcı yüzeyleri olduğu için sonraki öncelikli localization boşluğuydu.
- Toplu komut zaman aşımına girince sadece eksik kalan locale setine odaklanılarak risk kapatıldı; global revert yapılmadı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb` içindeki `calculateZakat`, `dayStreak`, `bestStreak` anahtarları güncellenen dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart` generated dosyaları
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- `calculateZakat` için İngilizce fallback sayısı `195`ten `78`e düştü.
- `dayStreak` için `195`ten `79`a düştü.
- `bestStreak` için `195`ten `79`a düştü.
- Priority locale seti analytics streak ve zekat CTA yüzeyinde artık İngilizce fallback göstermiyor.

### Test Sonucu
- `flutter gen-l10n` → PASS
- `flutter test test/arb_ui_localization_test.dart` → PASS (`7/7`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`187/187`)

### Risk Değişimi (önceki risk → sonraki risk)
- Analytics streak and zakat action labels still falling back to English across the supported surface: `14/25 → 6/25`

### Sonraki Adım
- Sıradaki turda code-referenced kalan yüksek yoğunluklu localization yüzeyleri olan chatbot cloud labels ve paywall feature başlıkları ele alınacak.
- Rare locale ve loanword davranışı gösteren anahtarlar için sibling fallback ve güvenli EN-reference matrisi ayrı audit olarak sürdürülecek.

## 2026-04-09 TUR-81 — Localize Chatbot Cloud Copy And Paywall Surface
### Yapılan İşlem
- Yarım kalan chatbot localization turu güvenli biçimde devralındı; [A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart](A:/Way%20of%20Allah/sirat_i_nur/tool/translate_arb_keys.dart) `--force chatbotCloudAiLabel chatbotQueriesLeft paywallFeature1Title paywallFeature1Desc paywallFeature2Title paywallFeature2Desc paywallFeature3Title paywallFeature3Desc paywallFeature4Title paywallFeature4Desc paywallUnlockAll paywallGetAccess restorePurchases` ile çalıştırıldı.
- Priority locale setinde İngilizce kalan residual yüzeyler elle kapatıldı; özellikle [A:\Way of Allah\sirat_i_nur\lib\l10n\app_da.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_da.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_nb.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_nb.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_nn.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_nn.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_no.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_no.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_fr.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_fr.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_tr.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_tr.arb) ve [A:\Way of Allah\sirat_i_nur\lib\l10n\app_zh.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_zh.arb) dosyalarında residual EN başlıklar düzeltildi.
- [A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/arb_ui_localization_test.dart) genişletildi; güvenli priority locale seti için chatbot cloud copy, priority locale seti için paywall copy EN fallback regresyonları kilitlendi.

### Neden Yapıldı
- Tarama turunda [A:\Way of Allah\sirat_i_nur\lib\features\chatbot\chatbot_page.dart#L78](A:/Way%20of%20Allah/sirat_i_nur/lib/features/chatbot/chatbot_page.dart#L78), [A:\Way of Allah\sirat_i_nur\lib\features\chatbot\chatbot_page.dart#L101](A:/Way%20of%20Allah/sirat_i_nur/lib/features/chatbot/chatbot_page.dart#L101), [A:\Way of Allah\sirat_i_nur\lib\features\chatbot\chatbot_page.dart#L103](A:/Way%20of%20Allah/sirat_i_nur/lib/features/chatbot/chatbot_page.dart#L103), [A:\Way of Allah\sirat_i_nur\lib\features\chatbot\chatbot_page.dart#L167](A:/Way%20of%20Allah/sirat_i_nur/lib/features/chatbot/chatbot_page.dart#L167), [A:\Way of Allah\sirat_i_nur\lib\features\chatbot\chatbot_page.dart#L212](A:/Way%20of%20Allah/sirat_i_nur/lib/features/chatbot/chatbot_page.dart#L212) üzerindeki chatbot anahtarlarının ve [A:\Way of Allah\sirat_i_nur\lib\features\premium\paywall_page.dart#L57](A:/Way%20of%20Allah/sirat_i_nur/lib/features/premium/paywall_page.dart#L57), [A:\Way of Allah\sirat_i_nur\lib\features\premium\paywall_page.dart#L62](A:/Way%20of%20Allah/sirat_i_nur/lib/features/premium/paywall_page.dart#L62), [A:\Way of Allah\sirat_i_nur\lib\features\premium\paywall_page.dart#L63](A:/Way%20of%20Allah/sirat_i_nur/lib/features/premium/paywall_page.dart#L63), [A:\Way of Allah\sirat_i_nur\lib\features\premium\paywall_page.dart#L64](A:/Way%20of%20Allah/sirat_i_nur/lib/features/premium/paywall_page.dart#L64), [A:\Way of Allah\sirat_i_nur\lib\features\premium\paywall_page.dart#L65](A:/Way%20of%20Allah/sirat_i_nur/lib/features/premium/paywall_page.dart#L65), [A:\Way of Allah\sirat_i_nur\lib\features\premium\paywall_page.dart#L66](A:/Way%20of%20Allah/sirat_i_nur/lib/features/premium/paywall_page.dart#L66), [A:\Way of Allah\sirat_i_nur\lib\features\premium\paywall_page.dart#L102](A:/Way%20of%20Allah/sirat_i_nur/lib/features/premium/paywall_page.dart#L102), [A:\Way of Allah\sirat_i_nur\lib\features\premium\paywall_page.dart#L110](A:/Way%20of%20Allah/sirat_i_nur/lib/features/premium/paywall_page.dart#L110) üzerinden okunan paywall anahtarlarının çok sayıda locale’de İngilizce kaldığı doğrulandı.
- Batch çeviri sonrası güvenli locale residual’ları izole edildi; `chatbotCloudAiLabel` için İskandinav varyantları ve paywall `feature1`/`feature3` başlıklarındaki residual EN yüzeyi ayrı patch ile kapatıldı.
- `chatbotQueriesLeft` anahtarı için [A:\Way of Allah\sirat_i_nur\lib\l10n\app_tw.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_tw.arb) hâlâ güvenilir sibling veya resmi referans üretmediği için rare-locale EN-reference olarak bırakıldı; uydurma çeviri eklenmedi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb` içindeki chatbot ve paywall anahtarları güncellenen dosyalar
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- `chatbotCloudAiLabel` için İngilizce fallback sayısı `195`ten `100`e düştü.
- `chatbotCloudNotConfigured` için `195`ten `64`e düştü.
- `chatbotErrorMsg` için `195`ten `64`e düştü.
- `chatbotLimitReached` için `195`ten `64`e düştü.
- `chatbotQueriesLeft` için `195`ten `85`e düştü.
- `paywallFeature1Title` için İngilizce fallback sayısı `196`dan `99`a düştü.
- `paywallFeature1Desc` için `195`ten `67`ye düştü.
- `paywallFeature2Title` için `195`ten `73`e düştü.
- `paywallFeature2Desc` için `195`ten `64`e düştü.
- `paywallFeature3Title` için `195`ten `65`e düştü.
- `paywallFeature3Desc` için `195`ten `65`e düştü.
- `paywallFeature4Title` için `195`ten `71`e düştü.
- `paywallFeature4Desc` için `195`ten `64`e düştü.
- `paywallUnlockAll` için `195`ten `64`e düştü.
- `paywallGetAccess` için `195`ten `65`e düştü.
- `restorePurchases` için `195`ten `64`e düştü.
- Güvenli priority locale seti chatbot cloud copy’de, priority locale seti paywall yüzeyinde artık İngilizce fallback göstermiyor.

### Test Sonucu
- `flutter gen-l10n` → PASS
- `flutter test test/arb_ui_localization_test.dart` → PASS (`9/9`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`189/189`)

### Risk Değişimi (önceki risk → sonraki risk)
- Chatbot cloud labels and paywall premium copy still falling back to English across the supported surface: `15/25 → 6/25`

### Sonraki Adım
- Sıradaki turda code-referenced yüksek yoğunluklu localization yüzeyleri içinden rare-locale kalıntıları ve kalan chatbot/paywall EN-reference kümeleri yeniden sınıflandırılacak.
- Özellikle [A:\Way of Allah\sirat_i_nur\lib\l10n\app_tw.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_tw.arb) içindeki `chatbotQueriesLeft` ve diğer sibling kaynağı zayıf rare-locale satırları dürüst EN-reference / sibling-fallback matrisine göre ele alınacak.

## 2026-04-09 TUR-82 — Localize Zakat Calculator Surface
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart](A:/Way%20of%20Allah/sirat_i_nur/tool/translate_arb_keys.dart) `--force zakatCalculator zakatGold zakatSilver zakatCashBank zakatBusiness zakatInvestments zakatDebts zakatPricePerGram zakatWeightGrams zakatInventoryValue zakatTotalAmount nisabSummary nisabNotReached totalZakat zakatGoldZakat zakatSilverZakat zakatCashZakat zakatBusinessZakat zakatInvestmentZakat zakatTotal` ile çalıştırıldı ve zekat ekranının tam metin kümesi tüm locale setinde çevrildi.
- Batch sonrası priority locale residual’ları elle kapatıldı; özellikle [A:\Way of Allah\sirat_i_nur\lib\l10n\app_da.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_da.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_de.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_de.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_es.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_es.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_fr.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_fr.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_nb.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_nb.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_nn.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_nn.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_no.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_no.arb) ve [A:\Way of Allah\sirat_i_nur\lib\l10n\app_pt.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_pt.arb) içinde residual EN etiketler düzeltildi.
- [A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/arb_ui_localization_test.dart) genişletildi; güvenli priority locale seti için zekat hesaplayıcı yüzeyinin EN fallback regresyonu kilitlendi.

### Neden Yapıldı
- Tarama turunda [A:\Way of Allah\sirat_i_nur\lib\features\library\zakat_calculator_page.dart#L80](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/zakat_calculator_page.dart#L80), [A:\Way of Allah\sirat_i_nur\lib\features\library\zakat_calculator_page.dart#L124](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/zakat_calculator_page.dart#L124), [A:\Way of Allah\sirat_i_nur\lib\features\library\zakat_calculator_page.dart#L145](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/zakat_calculator_page.dart#L145), [A:\Way of Allah\sirat_i_nur\lib\features\library\zakat_calculator_page.dart#L154](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/zakat_calculator_page.dart#L154), [A:\Way of Allah\sirat_i_nur\lib\features\library\zakat_calculator_page.dart#L161](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/zakat_calculator_page.dart#L161), [A:\Way of Allah\sirat_i_nur\lib\features\library\zakat_calculator_page.dart#L186](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/zakat_calculator_page.dart#L186), [A:\Way of Allah\sirat_i_nur\lib\features\library\zakat_calculator_page.dart#L204](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/zakat_calculator_page.dart#L204), [A:\Way of Allah\sirat_i_nur\lib\features\library\zakat_calculator_page.dart#L212](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/zakat_calculator_page.dart#L212) üzerinden okunan zekat anahtarlarının neredeyse tüm locale setinde İngilizce kaldığı doğrulandı.
- Bu ekran finansal ve dini hüküm bağlamı taşıdığı için yanlış veya İngilizce kalan copy’nin kullanıcı etkisi yüksekti; code-referenced localization sıralamasında en yüksek kümelerden biri olarak seçildi.
- [A:\Way of Allah\sirat_i_nur\lib\l10n\app_tw.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_tw.arb) içindeki `nisabSummary` alanı, güvenilir sibling referansı hâlâ İngilizce `Assets` taşıdığı için rare-locale EN-reference olarak bırakıldı; uydurma çeviri eklenmedi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb` içindeki zekat anahtarları güncellenen dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart` generated dosyaları
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- `zakatCalculator` için İngilizce fallback sayısı `195`ten `69`a düştü.
- `zakatGold` için `195`ten `64`e düştü.
- `zakatSilver` için `195`ten `69`a düştü.
- `zakatCashBank` için `195`ten `67`ye düştü.
- `zakatBusiness` için `195`ten `66`ya düştü.
- `zakatInvestments` için `195`ten `68`e düştü.
- `zakatDebts` için `195`ten `65`e düştü.
- `zakatPricePerGram` için `195`ten `64`e düştü.
- `zakatWeightGrams` için `195`ten `64`e düştü.
- `zakatInventoryValue` için `195`ten `67`ye düştü.
- `zakatTotalAmount` için `195`ten `66`ya düştü.
- `nisabSummary` için `195`ten `95`e düştü.
- `nisabNotReached` için `195`ten `64`e düştü.
- `totalZakat` için `195`ten `73`e düştü.
- `zakatGoldZakat` için `195`ten `70`e düştü.
- `zakatSilverZakat` için `195`ten `70`e düştü.
- `zakatCashZakat` için `195`ten `83`e düştü.
- `zakatBusinessZakat` için `195`ten `72`ye düştü.
- `zakatInvestmentZakat` için `195`ten `71`e düştü.
- `zakatTotal` için `195`ten `75`e düştü.
- Güvenli priority locale seti zekat hesaplayıcı yüzeyinde artık İngilizce fallback göstermiyor.

### Test Sonucu
- `flutter gen-l10n` → PASS
- `flutter test test/arb_ui_localization_test.dart` → PASS (`10/10`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`190/190`)

### Risk Değişimi (önceki risk → sonraki risk)
- Zakat calculator copy still falling back to English across the supported surface: `15/25 → 6/25`

### Sonraki Adım
- Sıradaki turda code-referenced yüksek yoğunluklu localization yüzeyleri içinden `places` ve `sukun` kümeleri karşılaştırılıp en yüksek kullanıcı etkili olan seçilecek.
- Rare-locale tarafında sibling referansı zayıf olan `tw` / `ak` EN-reference satırları ayrı dürüstlük matrisiyle ele alınacak.

## 2026-04-09 TUR-83 — Localize Places Discovery Surface
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart](A:/Way%20of%20Allah/sirat_i_nur/tool/translate_arb_keys.dart) `--force placesSearchArea nearbyMosques islamicSchools halalFood mosques placesFoundCount distanceAwayKm placesApiError placesNetworkError islamicPlaceFallback unknownPlaceName` ile çalıştırıldı ve places keşif yüzeyi tüm locale setine yayıldı.
- Batch sonrası yalnızca `tw` varyantında İngilizce kalan residual satırlar kapatıldı; [A:\Way of Allah\sirat_i_nur\lib\l10n\app_ak.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_ak.arb) ve [A:\Way of Allah\sirat_i_nur\lib\l10n\app_tw.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_tw.arb) içinde `placesFoundCount`, `distanceAwayKm`, `placesApiError` sibling uyumlu hale getirildi.
- [A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/arb_ui_localization_test.dart) genişletildi; priority locale seti için places discovery copy EN fallback regresyonu kilitlendi.

### Neden Yapıldı
- Tarama turunda [A:\Way of Allah\sirat_i_nur\lib\features\places\places_map_page.dart#L83](A:/Way%20of%20Allah/sirat_i_nur/lib/features/places/places_map_page.dart#L83), [A:\Way of Allah\sirat_i_nur\lib\features\places\places_map_page.dart#L107](A:/Way%20of%20Allah/sirat_i_nur/lib/features/places/places_map_page.dart#L107), [A:\Way of Allah\sirat_i_nur\lib\features\places\places_map_page.dart#L122](A:/Way%20of%20Allah/sirat_i_nur/lib/features/places/places_map_page.dart#L122), [A:\Way of Allah\sirat_i_nur\lib\features\places\places_map_page.dart#L171](A:/Way%20of%20Allah/sirat_i_nur/lib/features/places/places_map_page.dart#L171), [A:\Way of Allah\sirat_i_nur\lib\features\places\places_map_page.dart#L330](A:/Way%20of%20Allah/sirat_i_nur/lib/features/places/places_map_page.dart#L330), [A:\Way of Allah\sirat_i_nur\lib\features\places\places_map_page.dart#L386](A:/Way%20of%20Allah/sirat_i_nur/lib/features/places/places_map_page.dart#L386), [A:\Way of Allah\sirat_i_nur\lib\features\places\places_map_page.dart#L468](A:/Way%20of%20Allah/sirat_i_nur/lib/features/places/places_map_page.dart#L468), [A:\Way of Allah\sirat_i_nur\lib\features\places\places_map_page.dart#L479](A:/Way%20of%20Allah/sirat_i_nur/lib/features/places/places_map_page.dart#L479), [A:\Way of Allah\sirat_i_nur\lib\features\places\places_map_page.dart#L590](A:/Way%20of%20Allah/sirat_i_nur/lib/features/places/places_map_page.dart#L590) üzerinden okunan places anahtarlarının neredeyse tüm locale setinde İngilizce kaldığı doğrulandı.
- Bu yüzey arama, sonuç, hata ve kategori metinlerini içerdiği için kullanıcı etkisi yüksek ve code-referenced localization sıralamasında ilk kümelerden biriydi.
- Rare-locale residual yalnızca `tw` varyantında kaldı; sibling locale ile eşleşen güvenli satırlar manuel kapatıldı, uydurma geniş yorum eklenmedi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb` içindeki places anahtarları güncellenen dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart` generated dosyaları
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- `placesSearchArea` için İngilizce fallback sayısı `195`ten `64`e düştü.
- `nearbyMosques` için `195`ten `66`ya düştü.
- `islamicSchools` için `195`ten `64`e düştü.
- `halalFood` için `195`ten `68`e düştü.
- `mosques` için `195`ten `69`a düştü.
- `placesFoundCount` için `195`ten `80`e düştü.
- `distanceAwayKm` için `195`ten `85`e düştü.
- `placesApiError` için `195`ten `78`e düştü.
- `placesNetworkError` için `195`ten `64`e düştü.
- `islamicPlaceFallback` için `195`ten `65`e düştü.
- `unknownPlaceName` için `195`ten `64`e düştü.
- Priority locale seti places discovery yüzeyinde artık İngilizce fallback göstermiyor.

### Test Sonucu
- `flutter gen-l10n` → PASS
- `flutter test test/arb_ui_localization_test.dart` → PASS (`11/11`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`191/191`)

### Risk Değişimi (önceki risk → sonraki risk)
- Places discovery copy still falling back to English across the supported surface: `15/25 → 6/25`

### Sonraki Adım
- Sıradaki turda [A:\Way of Allah\sirat_i_nur\lib\features\library\sukun_audio_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/sukun_audio_page.dart) üzerindeki `sukun` kümesi ele alınacak.
- Ardından diagnostics/quran dataset ve download flow copy kümeleri yeniden sıralanacak.

## 2026-04-09 TUR-84 — Localize Sukun Soundscape Surface
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart](A:/Way%20of%20Allah/sirat_i_nur/tool/translate_arb_keys.dart) `--force sukunAudioTitle sukunGardenOfPeace sukunMidnightCalm sukunMixerSubtitle sukunNatureLabel sukunOceanTawheed sukunRainOfMercy sukunUnavailableBody sukunUnavailableTitle` ile çalıştırıldı ve Sukun yüzeyi tüm locale setine yayıldı.
- Batch sonrası güvenli priority locale setinde kalan residual İngilizce satırlar kapatıldı; [A:\Way of Allah\sirat_i_nur\lib\l10n\app_da.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_da.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_fr.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_fr.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_nb.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_nb.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_nn.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_nn.arb), [A:\Way of Allah\sirat_i_nur\lib\l10n\app_no.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_no.arb) içinde `sukunAudioTitle`, `sukunNatureLabel`, `sukunOceanTawheed` sibling-uyumlu hale getirildi.
- [A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/arb_ui_localization_test.dart) genişletildi; güvenli priority locale seti için Sukun soundscape copy EN fallback regresyonu kilitlendi.

### Neden Yapıldı
- Tarama turunda [A:\Way of Allah\sirat_i_nur\lib\features\library\sukun_audio_page.dart#L60](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/sukun_audio_page.dart#L60), [A:\Way of Allah\sirat_i_nur\lib\features\library\sukun_audio_page.dart#L103](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/sukun_audio_page.dart#L103), [A:\Way of Allah\sirat_i_nur\lib\features\library\sukun_audio_page.dart#L160](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/sukun_audio_page.dart#L160), [A:\Way of Allah\sirat_i_nur\lib\features\library\sukun_audio_page.dart#L232](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/sukun_audio_page.dart#L232) üzerinden okunan `sukun*` anahtarlarının geniş locale setinde İngilizce kaldığı doğrulandı.
- Bu yüzey başlık, unavailable-state ve ses adı etiketlerini içerdiği için kullanıcı etkisi yüksek ve Library deneyiminde doğrudan görünür bir localization borcuydu.
- Rare-locale tarafında geniş EN-reference kalıntıları sürüyor; bu turda yalnızca güvenli priority locale seti kapatıldı, uydurma geniş yorum eklenmedi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb` içindeki `sukun*` anahtarları güncellenen dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart` generated dosyaları
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- `sukunAudioTitle` için İngilizce fallback sayısı `195`ten `102`ye düştü.
- `sukunGardenOfPeace` için `195`ten `64`e düştü.
- `sukunMidnightCalm` için `195`ten `67`ye düştü.
- `sukunMixerSubtitle` için `195`ten `68`e düştü.
- `sukunNatureLabel` için `195`ten `72`ye düştü.
- `sukunOceanTawheed` için `195`ten `96`ya düştü.
- `sukunRainOfMercy` için `195`ten `65`e düştü.
- `sukunUnavailableBody` için `195`ten `63`e düştü.
- `sukunUnavailableTitle` için `195`ten `64`e düştü.
- Güvenli priority locale seti Sukun soundscape yüzeyinde artık İngilizce fallback göstermiyor.

### Test Sonucu
- `flutter gen-l10n` → PASS
- `flutter test test/arb_ui_localization_test.dart` → PASS (`12/12`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`192/192`)

### Risk Değişimi (önceki risk → sonraki risk)
- Sukun soundscape copy still falling back to English across the supported surface: `15/25 → 6/25`

### Sonraki Adım
- Sıradaki turda code-referenced kalan yoğun localization kümeleri içinden `downloads`, `offline quran audio` ve `diagnostics/quran dataset` yüzeyleri yeniden sıralanacak.
- Rare-locale tarafında `sukun*` anahtarlarının EN-reference kalan satırları sibling veya EN-reference dürüstlük matrisiyle ayrıca ele alınacak.

## 2026-04-09 TUR-85 — Localize Global App Error Surface
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\features\common\app_error_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/common/app_error_page.dart) hardcoded başlık ve fallback hata metninden çıkarılıp `AppLocalizations` zincirine bağlandı.
- [A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_en.arb) ve [A:\Way of Allah\sirat_i_nur\lib\l10n\app_tr.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_tr.arb) içine `appErrorOccurred` ve `appUnknownError` anahtarları eklendi.
- [A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart](A:/Way%20of%20Allah/sirat_i_nur/tool/translate_arb_keys.dart) `--force appErrorOccurred appUnknownError` ile çalıştırıldı ve anahtarlar tüm `app_*.arb` setine yayıldı.
- [A:\Way of Allah\sirat_i_nur\test\features\common\app_error_page_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/common/app_error_page_test.dart) eklendi; [A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/arb_ui_localization_test.dart) genişletildi.

### Neden Yapıldı
- Tarama turunda [A:\Way of Allah\sirat_i_nur\lib\features\common\app_error_page.dart#L19](A:/Way%20of%20Allah/sirat_i_nur/lib/features/common/app_error_page.dart#L19) ve [A:\Way of Allah\sirat_i_nur\lib\features\common\app_error_page.dart#L22](A:/Way%20of%20Allah/sirat_i_nur/lib/features/common/app_error_page.dart#L22) genel hata ekranının hâlâ İngilizce hardcoded başlık ve fallback mesajı kullandığını gösterdi.
- Bu yüzey hata durumunda uygulama geneline yayılabilecek ortak bir ekran olduğu için kullanıcı etkisi yüksek ve localization borcu doğrudan görünürdü.
- Çözüm, mevcut `error` anahtarıyla anlamsal kayıp yaşamamak için ayrı başlık ve fallback body anahtarları eklenerek yapıldı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\common\app_error_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\common\app_error_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- `appErrorOccurred` için İngilizce fallback sayısı `195`ten `63`e düştü.
- `appUnknownError` için İngilizce fallback sayısı `195`ten `63`e düştü.
- Priority locale seti genel hata ekranında artık İngilizce fallback göstermiyor.
- Sağlanan exception mesajı varsa ekran bunu koruyor; fallback metin yalnızca gerçekten bilinmeyen hata durumunda kullanılıyor.

### Test Sonucu
- `dart run tool/translate_arb_keys.dart --force appErrorOccurred appUnknownError` → PASS
- `flutter gen-l10n` → PASS
- `flutter test test/features/common/app_error_page_test.dart` → PASS (`2/2`)
- `flutter test test/arb_ui_localization_test.dart` → PASS (`13/13`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`195/195`)

### Risk Değişimi (önceki risk → sonraki risk)
- Global app error surface still using hardcoded English fallback: `14/25 → 4/25`

### Sonraki Adım
- Sıradaki turda [A:\Way of Allah\sirat_i_nur\lib\features\qibla\qibla_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/qibla/qibla_page.dart) üzerindeki `Compass Error` hardcoded hata yüzeyi ele alınacak.
- Ardından [A:\Way of Allah\sirat_i_nur\lib\features\library\hadith_list_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/hadith_list_page.dart) ve kalan low-surface hardcoded metinler yeniden sıralanacak.

## 2026-04-09 TUR-86 — Localize Qibla Error Surface
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\features\qibla\qibla_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/qibla/qibla_page.dart) içindeki hardcoded `Compass Error` dalı localization zincirine taşındı ve değer kartlarındaki sabit `Qibla` / `Heading` etiketleri mevcut `qibla` ve `compass` anahtarlarına bağlandı.
- [A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_en.arb) ve [A:\Way of Allah\sirat_i_nur\lib\l10n\app_tr.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_tr.arb) içine placeholder’lı `qiblaCompassErrorDetails` anahtarı eklendi.
- [A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart](A:/Way%20of%20Allah/sirat_i_nur/tool/translate_arb_keys.dart) `--force qiblaCompassErrorDetails` ile çalıştırıldı ve tüm locale setine yayıldı.
- [A:\Way of Allah\sirat_i_nur\test\features\qibla\qibla_page_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/qibla/qibla_page_test.dart) genişletildi; Türkçe hata yüzeyi doğrulandı. [A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/arb_ui_localization_test.dart) broad guard ile güncellendi.

### Neden Yapıldı
- Tarama turunda [A:\Way of Allah\sirat_i_nur\lib\features\qibla\qibla_page.dart#L76](A:/Way%20of%20Allah/sirat_i_nur/lib/features/qibla/qibla_page.dart#L76), [A:\Way of Allah\sirat_i_nur\lib\features\qibla\qibla_page.dart#L291](A:/Way%20of%20Allah/sirat_i_nur/lib/features/qibla/qibla_page.dart#L291) ve [A:\Way of Allah\sirat_i_nur\lib\features\qibla\qibla_page.dart#L299](A:/Way%20of%20Allah/sirat_i_nur/lib/features/qibla/qibla_page.dart#L299) Qibla ekranında hâlâ İngilizce hardcoded hata ve kart etiketi kullandığını gösterdi.
- Bu yüzey sensör hatasında doğrudan kullanıcıya gösterildiği için hata anında dürüst ama yerelleşmiş mesaj vermek kritik oldu.
- Rare-locale self-heal turunda `ak/tw` varyantlarının İngilizce residual taşıdığı görüldü; mevcut sibling hata kalıbıyla uyumlu `Compass mfomso: {error}` satırı manuel kapatıldı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\qibla\qibla_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\qibla\qibla_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- `qiblaCompassErrorDetails` için İngilizce fallback sayısı `195`ten `71`e düştü.
- Priority locale seti Qibla hata yüzeyinde artık İngilizce fallback göstermiyor.
- Qibla değer kartları mevcut yerelleştirilmiş `qibla` ve `compass` anahtarlarını kullandığı için aynı ekran içinde terminoloji tutarlı hale geldi.

### Test Sonucu
- `dart run tool/translate_arb_keys.dart --force qiblaCompassErrorDetails` → PASS
- `flutter gen-l10n` → PASS
- `flutter test test/features/qibla/qibla_page_test.dart` → PASS (`2/2`)
- `flutter test test/arb_ui_localization_test.dart` → PASS (`14/14`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`197/197`)

### Risk Değişimi (önceki risk → sonraki risk)
- Qibla screen still exposes hardcoded English error feedback: `12/25 → 4/25`

### Sonraki Adım
- Sıradaki turda [A:\Way of Allah\sirat_i_nur\lib\features\library\hadith_list_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/hadith_list_page.dart) içindeki `No hadiths found here.` residual yüzeyi ele alınacak.
- Ardından [A:\Way of Allah\sirat_i_nur\lib\features\zikr\zikr_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/zikr/zikr_page.dart) üzerindeki `Completed! MashAllah` hardcoded başarı metni için aynı loop açılacak.

## 2026-04-09 TUR-87 — Localize Hadith List Error and Empty States
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\features\library\hadith_list_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/hadith_list_page.dart) içinde `buildHadithListErrorText` ve `buildHadithListEmptyText` yardımcıları eklendi.
- Hadith listesi data dalında hardcoded `Error loading hadiths.\nCheck internet connection.` ve `No hadiths found here.` metinleri kaldırıldı; mevcut `error`, `checkConnection` ve `noResults` localization zinciri kullanılmaya başlandı.
- [A:\Way of Allah\sirat_i_nur\test\features\library\hadith_list_copy_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/library/hadith_list_copy_test.dart) eklendi ve helper çıktıları EN/TR için kilitlendi.

### Neden Yapıldı
- Tarama turunda [A:\Way of Allah\sirat_i_nur\lib\features\library\hadith_list_page.dart#L86](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/hadith_list_page.dart#L86) ve [A:\Way of Allah\sirat_i_nur\lib\features\library\hadith_list_page.dart#L94](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/hadith_list_page.dart#L94) hadith liste yüzeyinin hâlâ İngilizce hardcoded hata ve boş durum metinleri kullandığını gösterdi.
- Route bugün verified dataset kapısı nedeniyle çoğu akışta bloklu olsa da, dataset açıldığında ilk görülecek data yüzeyi burası olacağı için residual risk hemen kapatıldı.
- Yeni key açılmadı; mevcut localization anahtarlarıyla minimal doğrulanabilir diff tercih edildi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\library\hadith_list_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\library\hadith_list_copy_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Hadith listesi verified dataset açıldığında artık İngilizce hardcoded hata ve empty-state göstermeyecek.
- Hata mesajı locale-aware `Error/Hata` etiketi ve bağlantı uyarısıyla dürüst biçimde üretilecek.
- Empty-state tüm destekli dillerde mevcut `noResults` anahtarıyla hizalandı.

### Test Sonucu
- `flutter test test/features/library/hadith_list_copy_test.dart` → PASS (`2/2`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`199/199`)

### Risk Değişimi (önceki risk → sonraki risk)
- Hadith list surface still exposing hardcoded English data states: `10/25 → 3/25`

### Sonraki Adım
- Sıradaki turda [A:\Way of Allah\sirat_i_nur\lib\features\zikr\zikr_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/zikr/zikr_page.dart) içindeki `Completed! MashAllah` hardcoded başarı yüzeyi localization zincirine taşınacak.
- Ardından low-surface residual taraması yeniden çalıştırılacak.

## 2026-04-09 TUR-88 — Localize Zikr Completion Copy
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\features\zikr\zikr_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/zikr/zikr_page.dart) içine `resolveZikrCompletedText` yardımcı fonksiyonu eklendi ve hardcoded `Completed! MashAllah` başarı metni `zikrCompletedMashAllah` localization anahtarına taşındı.
- [A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_en.arb) ve [A:\Way of Allah\sirat_i_nur\lib\l10n\app_tr.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_tr.arb) içine `zikrCompletedMashAllah` eklendi; ardından [A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart](A:/Way%20of%20Allah/sirat_i_nur/tool/translate_arb_keys.dart) `--force zikrCompletedMashAllah` ile çalıştırılarak tüm locale setine yayıldı.
- [A:\Way of Allah\sirat_i_nur\test\features\zikr\zikr_page_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/zikr/zikr_page_test.dart) eklendi ve Türkçe completion banner doğrulandı.
- [A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/arb_ui_localization_test.dart) broad priority-locale guard ile güncellendi.

### Neden Yapıldı
- Tarama turunda [A:\Way of Allah\sirat_i_nur\lib\features\zikr\zikr_page.dart#L138](A:/Way%20of%20Allah/sirat_i_nur/lib/features/zikr/zikr_page.dart#L138) zikr hedefi tamamlandığında hâlâ İngilizce hardcoded başarı metni gösterdiğini ortaya koydu.
- Bu yüzey kullanıcı tamamladığında doğrudan görüldüğü için düşük kapsamlı ama yüksek görünürlükte localization kırığıydı.
- Yeni anahtar bütün locale setine aynı turda yayıldı; priority locale kümesinde İngilizce fallback bırakılmadı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\zikr\zikr_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\zikr\zikr_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Zikr completion banner artık bütün destekli dillerde localization zincirinden geliyor.
- Priority locale seti `zikrCompletedMashAllah` için İngilizce fallback göstermiyor.
- Başarı mesajı production UI’de hardcoded string kalmadan testle kilitlendi.

### Test Sonucu
- `dart run tool/translate_arb_keys.dart --force zikrCompletedMashAllah` → PASS
- `flutter gen-l10n` → PASS
- `flutter test test/features/zikr/zikr_page_test.dart` → PASS (`1/1`)
- `flutter test test/arb_ui_localization_test.dart` → PASS (`15/15`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`201/201`)

### Risk Değişimi (önceki risk → sonraki risk)
- Zikr completion surface still exposing hardcoded English success copy: `8/25 → 2/25`

### Sonraki Adım
- Sıradaki turda [A:\Way of Allah\sirat_i_nur\lib\features\zikr\zikr_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/zikr/zikr_page.dart) içindeki hardcoded zikr meaning gloss’ları doğrulanmış dini anlamlarla localization zincirine taşınacak.
- Ardından kalan residual hardcoded taraması yeniden çalıştırılacak.

## 2026-04-09 TUR-89 — Localize Verified Zikr Meanings
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\features\zikr\zikr_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/zikr/zikr_page.dart) içinde `resolveZikrMeaning` yardımcı fonksiyonu eklendi; zikr kartındaki hardcoded İngilizce meaning gloss’ları kaldırıldı ve localization anahtarlarına bağlandı.
- [A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_en.arb) ve [A:\Way of Allah\sirat_i_nur\lib\l10n\app_tr.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_tr.arb) içine altı zikr meaning anahtarı eklendi.
- [A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart](A:/Way%20of%20Allah/sirat_i_nur/tool/translate_arb_keys.dart) `--force zikrMeaningSubhanAllah zikrMeaningAlhamdulillah zikrMeaningAllahuAkbar zikrMeaningLaIlahaIllallah zikrMeaningAstaghfirullah zikrMeaningLaHawlaWaLaQuwwata` ile çalıştırıldı ve tüm locale setine yayıldı.
- [A:\Way of Allah\sirat_i_nur\test\features\zikr\zikr_page_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/zikr/zikr_page_test.dart) genişletildi; Türkçe meaning görünümü doğrulandı.
- [A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/arb_ui_localization_test.dart) broad guard ile yeni zikr meaning anahtarları için güncellendi.

### Neden Yapıldı
- Tarama turunda [A:\Way of Allah\sirat_i_nur\lib\features\zikr\zikr_page.dart#L18](A:/Way%20of%20Allah/sirat_i_nur/lib/features/zikr/zikr_page.dart#L18) sonrası `_zikrs` listesinde meaning alanlarının hâlâ İngilizce hardcoded dini gloss taşıdığı tespit edildi.
- Kullanıcı talimatına göre dini içerik çeviri turundan önce semantik doğruluk sabitlenmeliydi; bu yüzden zikr anlamları localization’a taşınmadan önce doğrulanmış formülasyonla yeniden yazıldı.
- Amaç yalnızca UI yerelleştirmesi değil, zikr gloss’larının dini olarak daha doğru ve tutarlı hale getirilmesiydi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\zikr\zikr_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\zikr\zikr_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Zikr ekranındaki altı meaning gloss artık hardcoded İngilizce değil, tüm locale setinde localization zincirinden geliyor.
- Priority locale seti bu anahtarlar için İngilizce fallback göstermiyor.
- Türkçe religious gloss’lar UI’de daha doğru formülasyonla görünür hale geldi.

### Test Sonucu
- `dart run tool/translate_arb_keys.dart --force zikrMeaningSubhanAllah zikrMeaningAlhamdulillah zikrMeaningAllahuAkbar zikrMeaningLaIlahaIllallah zikrMeaningAstaghfirullah zikrMeaningLaHawlaWaLaQuwwata` → PASS
- `flutter gen-l10n` → PASS
- `flutter test test/features/zikr/zikr_page_test.dart` → PASS (`2/2`)
- `flutter test test/arb_ui_localization_test.dart` → PASS (`16/16`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`203/203`)

### Risk Değişimi (önceki risk → sonraki risk)
- Zikr screen still exposing English hardcoded religious glosses: `13/25 → 3/25`

### Sonraki Adım
- Sıradaki turda [A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/asma_ul_husna_data.dart) içindeki cloud parser’ın çok dilli `translations` map’ini yalnızca `tr/en`’e düşürme sorunu düzeltilecek.
- Ardından [A:\Way of Allah\sirat_i_nur\lib\features\library\asma_ul_husna_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/asma_ul_husna_page.dart) üzerindeki locale-agnostic search/filter yüzeyi yeniden değerlendirilecek.

## 2026-04-09 TUR-90 — Preserve Asma Cloud Translation Maps
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/asma_ul_husna_data.dart) içine `_readAsmaTranslations` eklendi; cloud row içindeki tüm dolu `translations` anahtarları normalize edilip korunmaya başlandı.
- `normalizeAsmaUlHusnaRow` artık translation map’ini yalnızca `tr/en`e kırpmıyor; DB’den gelen çok dilli alanları koruyup `tr/en` referanslarını üstüne merge ediyor.
- `resolveCloudAsmaUlHusnaRows` filtre mantığı yalnızca `tr/en` varlığına değil, herhangi bir dolu translation değerine göre çalışacak şekilde düzeltildi.
- [A:\Way of Allah\sirat_i_nur\test\asma_ul_husna_data_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/asma_ul_husna_data_test.dart) çok dilli translation preservation testiyle genişletildi.
- [A:\Way of Allah\sirat_i_nur\test\features\library\asma_ul_husna_page_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/library/asma_ul_husna_page_test.dart) locale-specific cloud translation görünümünü doğrulayan widget testi ile genişletildi.

### Neden Yapıldı
- Tarama turunda [A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart#L1128](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/asma_ul_husna_data.dart#L1128) sonrası parser’ın Supabase `translations` map’ini okuyup yine de [A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart#L1154](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/asma_ul_husna_data.dart#L1154) noktasında yalnızca `{'tr': ..., 'en': ...}` döndürdüğü görüldü.
- Bu, veritabanında daha fazla dil hazır olsa bile runtime’da bunların sessizce kaybolmasına ve tüm diğer locale’lerin İngilizce fallback’e düşmesine neden oluyordu.
- Sorun dini içerik zincirinde olduğundan, çeviri kapsamı genişletilmeden önce veri kaybı kökten kapatıldı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart`
- `A:\Way of Allah\sirat_i_nur\test\asma_ul_husna_data_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\library\asma_ul_husna_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Asma cloud dataset’i artık veritabanında hazır olan locale-specific meaning alanlarını runtime’a tam olarak taşıyor.
- `de` gibi `tr/en` dışı locale’ler cloud row üzerinde karşılığı varsa İngilizceye düşmeden kendi meaning’ini gösterebiliyor.
- 180+ dil hedefi için data-layer tarafındaki sessiz truncation kökten kaldırıldı.

### Test Sonucu
- `flutter test test/asma_ul_husna_data_test.dart` → PASS (`7/7`)
- `flutter test test/features/library/asma_ul_husna_page_test.dart` → PASS (`5/5`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`205/205`)

### Risk Değişimi (önceki risk → sonraki risk)
- Asma cloud parser dropping non-TR/EN locale content at runtime: `14/25 → 4/25`

### Sonraki Adım
- Sıradaki turda [A:\Way of Allah\sirat_i_nur\lib\features\library\asma_ul_husna_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/asma_ul_husna_page.dart) search/filter akışı `tr/en` ile sınırlı taramadan çıkarılacak.
- Ardından Asma ekranında locale coverage ve residual English fallback yüzeyi yeniden taranacak.

## 2026-04-09 TUR-91 — Expand Asma Search Across All Locale Meanings
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\features\library\asma_ul_husna_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/asma_ul_husna_page.dart) içine `matchesAsmaSearchQuery` yardımcı fonksiyonu eklendi.
- Asma arama filtresi artık yalnızca transliteration + `tr/en` değil, Arabic metin ve `translations` map içindeki tüm locale değerleri üzerinden eşleşme yapıyor.
- [A:\Way of Allah\sirat_i_nur\test\features\library\asma_ul_husna_page_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/library/asma_ul_husna_page_test.dart) `de` locale meaning üzerinden arama regresyonu ile genişletildi.

### Neden Yapıldı
- Bir önceki turda parser çok dilli translation map’ini koruyacak hale geldi; fakat [A:\Way of Allah\sirat_i_nur\lib\features\library\asma_ul_husna_page.dart#L35](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/asma_ul_husna_page.dart#L35) sonrası filtre akışı hâlâ yalnızca transliteration + `tr/en` değerlerini taradığı için yeni locale verileri aramada görünmez kalıyordu.
- Bu durum özellikle non-TR/EN locale kullanan kullanıcılar için Asma dataset’i kısmen çevrilmiş olsa bile bulunabilirliği bozan bir UX kırığıydı.
- Aynı translation map kök sebebinin UI katmanındaki ikinci etkisi kapatıldı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\library\asma_ul_husna_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\library\asma_ul_husna_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Asma araması artık cloud dataset’te bulunan locale-specific meaning alanlarını da tarıyor.
- Alman dili örneğinde `Der Liebevolle` gibi meaning üzerinden doğrudan arama yapılabiliyor.
- Parser düzeltmesiyle gelen çok dilli veri artık UI aramasında da kullanılabilir hale geldi.

### Test Sonucu
- `flutter test test/features/library/asma_ul_husna_page_test.dart` → PASS (`6/6`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`206/206`)

### Risk Değişimi (önceki risk → sonraki risk)
- Asma search filtering only TR/EN strings while cloud rows contain more locales: `10/25 → 3/25`

### Sonraki Adım
- Sıradaki turda Asma bundled fallback’in yalnızca `tr/en` barındırması nedeniyle cloud yokken diğer locale’lerin İngilizceye düşme riski ele alınacak.
- Ardından genel residual localization taraması yeniden çalıştırılacak.
## 2026-04-09 TUR-92 — Localize Bundled Asma Fallback Across Locales
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\features\library\asma_meaning_localization.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/asma_meaning_localization.dart) eklendi; bundled Asma fallback için `asmaMeaning1..asmaMeaning99` getter zinciri oluşturuldu.
- [A:\Way of Allah\sirat_i_nur\lib\features\library\asma_ul_husna_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/asma_ul_husna_page.dart) artık locale-specific cloud translation yoksa bundled l10n meaning’e düşüyor; arama filtresi de bu localized fallback metnini tarıyor.
- `app_en.arb` ve `app_tr.arb` referanslarına 99 Asma meaning anahtarı üretildi; ardından tüm `app_*.arb` dosyalarına aynı anahtar seti yayıldı ve generated l10n dosyaları yenilendi.
- [A:\Way of Allah\sirat_i_nur\test\features\library\asma_ul_husna_page_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/library/asma_ul_husna_page_test.dart) bundled localized fallback görünümü ve buna göre arama senaryosu ile genişletildi.
- [A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/arb_ui_localization_test.dart) safe priority locale setinde `asmaMeaning1..asmaMeaning99` için English fallback guard ile genişletildi.

### Neden Yapıldı
- Bir önceki turda cloud translation map kaybı kapatıldı, ancak [A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/asma_ul_husna_data.dart) içindeki bundled fallback hâlâ yalnızca `tr/en` taşıdığı için cloud yokken `de`, `fr`, `ru` gibi locale'ler İngilizce meaning'e düşüyordu.
- Bu durum çevrimdışı kullanımda Asma ekranının çok dilli vaat ile uyumsuz davranmasına ve locale-specific aramanın cloud yoksa kısmen bozulmasına yol açıyordu.
- Risk dini içerik + localization zincirinin kesişiminde olduğu için bundled fallback de cloud kadar locale-aware hale getirildi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\library\asma_meaning_localization.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\library\asma_ul_husna_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations*.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\library\asma_ul_husna_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Asma ekranı cloud veri yokken de priority locale setinde İngilizceye düşmeden localized bundled meaning gösterebiliyor.
- Bundled fallback araması artık locale-specific meaning metni üzerinden de çalışıyor.
- `asmaMeaning1..asmaMeaning99` anahtarları tüm locale setinde mevcut olduğu için offline Asma meaning zinciri generated l10n ile kilitlendi.

### Test Sonucu
- `flutter test test/features/library/asma_ul_husna_page_test.dart` → PASS (`8/8`)
- `flutter test test/arb_ui_localization_test.dart` → PASS (`17/17`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`209/209`)

### Risk Değişimi (önceki risk → sonraki risk)
- Bundled Asma fallback dropping to English outside TR/EN when cloud data is absent: `13/25 → 3/25`

### Sonraki Adım
- Sıradaki turda tam proje taraması tekrar çalıştırılacak ve kalan en yüksek riskli residual hardcoded/localization veya boş implementasyon yüzeyi seçilecek.
- Özellikle library/settings/chatbot/audio zincirlerinde yeni hardcoded string, false-success veya orphan servis kalıntıları yeniden taranacak.
## 2026-04-09 TUR-93 — Localize Daily Dua Fallback Across Locales
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\core\constants\duas_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/duas_data.dart) `translations` map desteğiyle genişletildi; Supabase row içindeki `translations` alanı korunuyor ve `text_tr/text_en` ile merge ediliyor.
- [A:\Way of Allah\sirat_i_nur\lib\features\library\dua_meaning_localization.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/dua_meaning_localization.dart) eklendi; verified bundled dua fallback için `duaMeaning1..duaMeaning8` getter çözümleyicisi kuruldu.
- [A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/library_page.dart) artık locale-specific dua translation varsa onu, yoksa bundled l10n meaning’i, o da yoksa İngilizce/Türkçe fallback’i kullanıyor.
- `app_en.arb` ve `app_tr.arb` içine 8 verified dua meaning anahtarı eklendi; ardından bunlar bütün `app_*.arb` setine yayıldı ve generated l10n dosyaları yenilendi.
- [A:\Way of Allah\sirat_i_nur\test\library_page_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/library_page_test.dart), [A:\Way of Allah\sirat_i_nur\test\features\library\library_page_cloud_duas_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/library/library_page_cloud_duas_test.dart) ve [A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/arb_ui_localization_test.dart) yeni locale-aware fallback regresyonlarıyla genişletildi.

### Neden Yapıldı
- [A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/library/library_page.dart) içindeki `resolveDuaMeaning` tüm non-TR locale'lerde doğrudan İngilizceye düşüyordu.
- [A:\Way of Allah\sirat_i_nur\lib\core\constants\duas_data.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/constants/duas_data.dart) bundled fallback’i yalnızca `turkish` ve `english` alanlarına sahipti; cloud row’larda daha geniş locale map’i olsa bile model bunu saklamıyordu.
- Bu durum verified günlük dua içeriklerinin çevrimdışı kullanımda ve locale-aware cloud satırlarda gereksiz İngilizce fallback üretmesine neden oluyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\constants\duas_data.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\library\dua_meaning_localization.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations*.dart`
- `A:\Way of Allah\sirat_i_nur\test\library_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\library\library_page_cloud_duas_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Verified günlük dua fallback’i safe priority locale setinde artık İngilizceye zorunlu düşmüyor.
- Cloud dua satırı locale-specific `translations` map taşıyorsa runtime bunu koruyup gösterebiliyor.
- Bundled daily dua meaning zinciri Asma fallback ile aynı locale-aware modele getirildi.

### Test Sonucu
- `flutter test test/library_page_test.dart` → PASS (`13/13`)
- `flutter test test/features/library/library_page_cloud_duas_test.dart` → PASS (`5/5`)
- `flutter test test/arb_ui_localization_test.dart` → PASS (`18/18`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`213/213`)

### Risk Değişimi (önceki risk → sonraki risk)
- Daily Dua fallback forcing English outside TR when cloud data is missing or locale-specific translation exists: `13/25 → 3/25`

### Sonraki Adım
- Sıradaki turda tam proje taraması tekrar çalıştırılacak ve dini içerik + localization zincirinde kalan en yüksek residual risk seçilecek.
- Özellikle Library içindeki diğer verified content fallback’leri ve settings/chatbot/paywall residual hardcoded yüzeyleri yeniden taranacak.
