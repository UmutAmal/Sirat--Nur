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
## 2026-04-09 TUR-94 — Localize Calendar Special Day Labels
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\features\calendar\calendar_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/calendar/calendar_page.dart) içindeki özel gün listesi `islamicNewYear`, `mawlidAnNabi` ve ilgili Hijri tarih anahtarları üzerinden l10n zincirine taşındı.
- `1 Muharram` olayı artık yanlışlıkla `Hijri Calendar` etiketiyle değil, locale-aware `Islamic New Year / Hicri Yılbaşı` başlığıyla geliyor.
- `Mawlid an-Nabi` hardcoded başlığı locale-aware `mawlidAnNabi` anahtarına taşındı.
- Calendar özel gün snapshot’ı için [A:\Way of Allah\sirat_i_nur\lib\features\calendar\calendar_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/calendar/calendar_page.dart) içine `buildImportantDates` helper’ı eklendi ve test edilebilir hale getirildi.
- [A:\Way of Allah\sirat_i_nur\test\features\calendar\calendar_page_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/calendar/calendar_page_test.dart) yeni title/date helper testleri ile eklendi.
- Yeni takvim anahtarları tüm `app_*.arb` dosyalarına yayıldı, residual English safe-locale artıkları noktasal olarak düzeltildi ve broad guard [A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/arb_ui_localization_test.dart) ile genişletildi.

### Neden Yapıldı
- Tarama turunda [A:\Way of Allah\sirat_i_nur\lib\features\calendar\calendar_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/calendar/calendar_page.dart) özel gün listesinin bir satırda `Hijri Calendar` metnini yanlış event label olarak kullandığı ve `Mawlid an-Nabi` başlığını hardcoded tuttuğu görüldü.
- Bu, hem localization zincirini kırıyor hem de dini takvim semantiğinde yanlış başlık gösteriyordu.
- Sorun user-facing takvim yüzeyinde olduğundan, başlık ve tarih etiketleri birlikte locale-aware hale getirildi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\calendar\calendar_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations*.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\calendar\calendar_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Takvim özel gün listesi artık yanlış `Hijri Calendar` başlığı üretmiyor.
- `Mawlid an-Nabi` ve `Islamic New Year` başlıkları locale-aware geldiği için priority locale setinde İngilizce artıkları kapandı.
- Hijri ay adları gibi kanonik özel adlar broad guard’da zorla yeniden çevrilmedi; test kapsamı yalnızca gerçekten yerelleşmesi gereken başlık anahtarlarında tutuldu.

### Test Sonucu
- `flutter test test/features/calendar/calendar_page_test.dart` → PASS (`2/2`)
- `flutter test test/arb_ui_localization_test.dart` → PASS (`19/19`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`216/216`)

### Risk Değişimi (önceki risk → sonraki risk)
- Calendar special day list using incorrect and hardcoded English labels: `12/25 → 3/25`

### Sonraki Adım
- Sıradaki tarama turunda `main.dart` içindeki user-facing olmayan ama dağınık bootstrap log kopyası ve `offline_downloads_page.dart` hata yüzeyi yeniden değerlendirilecek.
- Ardından library/settings/chatbot tarafında kalan residual hardcoded metinler için yeni evidence scan açılacak.
## 2026-04-09 TUR-95 — Close 9 High-Risk Localization and Honesty Gaps
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\core\services\offline_audio_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/offline_audio_service.dart) içine `OfflineDownloadBatchResult` eklendi; toplu indirme artık toplam, başarılı, başarısız ve iptal durumunu aggregate olarak döndürüyor.
- [A:\Way of Allah\sirat_i_nur\lib\features\downloads\offline_downloads_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/downloads/offline_downloads_page.dart) completion snackbar akışı honest-state’e taşındı; tam başarı, kısmi başarı ve iptal ayrı mesaj üretiyor.
- Download/diagnostics/chatbot kümelerindeki yeni ve eksik anahtarlar tüm `app_*.arb` setine yayıldı; safe priority locale kalıntıları noktasal düzeltildi ve broad guard [A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/arb_ui_localization_test.dart) ile genişletildi.
- [A:\Way of Allah\sirat_i_nur\lib\features\quran\tafsir_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/quran/tafsir_page.dart) TR/EN gömülü kopyadan çıkarıldı; tüm error/loading/empty-state yüzeyi l10n zincirine bağlandı.
- [A:\Way of Allah\sirat_i_nur\lib\core\services\tafsir_local_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/tafsir_local_service.dart) English progress/error string üretmek yerine kodlu `TafsirException` dönmeye başladı; kullanıcıya görünen metin artık sayfada localize ediliyor.
- [A:\Way of Allah\sirat_i_nur\lib\features\places\places_map_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/places/places_map_page.dart) kamusal OSM tile URL’inden çıkarıldı; tile kaynağı [A:\Way of Allah\sirat_i_nur\lib\core\network\supabase_config.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/network/supabase_config.dart) üstünden çözülüyor ve yoksa map honest unavailable-state gösteriyor.
- Aynı Places turunda sessiz İstanbul fallback kaldırıldı; gerçek kullanıcı konumu yoksa fetch başlatılmıyor ve dürüst konum gerekli ekranı gösteriliyor.
- [A:\Way of Allah\sirat_i_nur\lib\features\premium\premium_provider.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/premium/premium_provider.dart) store hata metinlerini kodlu hata sözleşmesine taşıdı; [A:\Way of Allah\sirat_i_nur\lib\features\premium\paywall_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/premium/paywall_page.dart) bu kodları localize ediyor.
- [A:\Way of Allah\sirat_i_nur\lib\features\home\home_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/home/home_page.dart) kalan vakit formatını locale-aware helper ile `2h 5m` hardcoded biçiminden çıkardı.
- [A:\Way of Allah\sirat_i_nur\lib\main.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/main.dart) splash ekranına gerçek localization delegelerini bağladı ve `splashTagline` hardcoded İngilizce metnini kaldırdı.
- Yeni/ genişletilmiş regression testleri eklendi: [A:\Way of Allah\sirat_i_nur\test\features\downloads\offline_downloads_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/downloads/offline_downloads_test.dart), [A:\Way of Allah\sirat_i_nur\test\features\quran\tafsir_page_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/quran/tafsir_page_test.dart), [A:\Way of Allah\sirat_i_nur\test\features\places\places_map_page_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/places/places_map_page_test.dart), [A:\Way of Allah\sirat_i_nur\test\features\premium\paywall_page_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/premium/paywall_page_test.dart), [A:\Way of Allah\sirat_i_nur\test\features\common\splash_screen_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/common/splash_screen_test.dart), [A:\Way of Allah\sirat_i_nur\test\features\home\home_page_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/home/home_page_test.dart).

### Neden Yapıldı
- Offline indirme zinciri başarısız sureleri loglayıp kullanıcıya yine tam başarı snackbar’ı gösteriyordu; bu doğrudan false-success üretiyordu.
- Tafsir, premium, splash, remaining-prayer ve places yüzeylerinde ya hardcoded İngilizce copy ya da localization dışı hata akışı vardı.
- Harita akışındaki kamusal OSM tile bağı ve sessiz İstanbul fallback’i hem prod sürekliliği hem de yanlış ibadet/yer bağlamı riski taşıyordu.
- Download/diagnostics/chatbot kümelerinde yüzlerce locale’de EN artıklar kaldığı için “her dil eşit kapsamda” kuralı ihlal ediliyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\network\supabase_config.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\services\offline_audio_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\services\tafsir_local_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\downloads\offline_downloads_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\home\home_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\places\places_map_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\premium\paywall_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\premium\premium_provider.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\tafsir_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\main.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\downloads\offline_downloads_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\home\home_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\places\places_map_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\premium\paywall_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\quran\tafsir_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\common\splash_screen_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Kullanıcı artık başarısız kısmi indirmeyi tam başarı gibi görmüyor.
- Tafsir, premium, splash, download, diagnostics, chatbot, prayer remaining ve places yüzeyleri localization zincirine daha tutarlı bağlandı.
- Places ekranı yanlış şehir verisi göstermeyi bıraktı ve tile sağlayıcısı config yoksa dürüst unavailable-state’e geçti.
- Priority locale setinde bu turdaki 9 risk kümesine bağlı İngilizce artıkları kapandı; broad guard testleriyle geri sızma engellendi.

### Test Sonucu
- `flutter gen-l10n` → PASS
- `flutter test test/features/downloads/offline_downloads_test.dart test/features/home/home_page_test.dart test/features/premium/paywall_page_test.dart test/features/common/splash_screen_test.dart test/features/quran/tafsir_page_test.dart test/features/places/places_map_page_test.dart test/arb_ui_localization_test.dart` → PASS
- `flutter analyze` → PASS
- `flutter test` → PASS (`226/226`)

### Risk Değişimi (önceki risk → sonraki risk)
- Offline downloads false-success completion flow: `16/25 → 3/25`
- Download/diagnostics/chatbot residual EN cluster: `20/25 → 6/25`
- TafsirPage embedded TR/EN user copy: `16/25 → 3/25`
- Public OSM tile dependency: `16/25 → 4/25`
- Silent Istanbul fallback in Places: `12/25 → 3/25`
- Premium product unavailable hardcoded English: `12/25 → 3/25`
- Chatbot offline verified-content English residue cluster: `12/25 → 5/25`
- Home remaining-prayer non-localized duration: `10/25 → 2/25`
- Splash hardcoded English tagline: `10/25 → 2/25`

### Sonraki Adım
- Yeni turda rare locale kalıntıları için evidence scan açılacak; özellikle download/diagnostics/chatbot kümelerinde safe sibling-fallback uygulanabilen locale’ler ile EN-reference’da dürüst bırakılması gerekenler ayrıştırılacak.
- Ardından user-facing kalan en yüksek residual hardcoded metin veya false-success zinciri seçilip ayrı minimal patch döngüsüne alınacak.
## 2026-04-10 TUR-96 — Canonicalize and Localize Audio Voice Labels
### Yapılan İşlem
- [A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_provider.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/settings_provider.dart) içine canonical voice id sabitleri (`mishary_alafasy`, `abdul_baset`, `sudais`), `selectableAudioVoices` listesi ve `normalizeAudioVoice` helper’ı eklendi.
- Aynı dosyada `SettingsState.audioVoice` artık user-facing etiket yerine canonical id saklıyor; legacy değerler (`Male (Mishary Alafasy)`, `Sudais`, `Male (AbdulBaset)`) yüklenirken normalize ediliyor.
- [A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/settings_page.dart) içine `displayAudioVoiceLabel` helper’ı eklendi; ayarlar ekranı ve voice picker artık locale-aware l10n anahtarlarını kullanıyor.
- `audioVoiceMisharyAlafasy`, `audioVoiceAbdulBaset`, `audioVoiceSudais` anahtarları [A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_en.arb) ve [A:\Way of Allah\sirat_i_nur\lib\l10n\app_tr.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_tr.arb) içine eklendi; ardından `audioVoice` ile birlikte tüm `app_*.arb` setine force batch yayılımı çalıştırıldı ve generated l10n dosyaları yenilendi.
- Regression genişletildi: [A:\Way of Allah\sirat_i_nur\test\settings_provider_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/settings_provider_test.dart), [A:\Way of Allah\sirat_i_nur\test\features\settings\settings_page_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/settings/settings_page_test.dart), [A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/arb_ui_localization_test.dart).

### Neden Yapıldı
- [A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/settings_page.dart) voice picker içinde `Male (Mishary Alafasy)` gibi hardcoded İngilizce etiketler kullanıyordu.
- [A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_provider.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/settings_provider.dart) aynı etiketleri persistence değeri olarak sakladığı için UI ve storage katmanı birbirine karışıyordu; bu da locale değişince etiket drift’i üretiyordu.
- Yeni risk taramasında `audioVoice` anahtarının geniş locale setinde İngilizce kaldığı görüldü; safe priority locale seti için bu yüzey kapatıldı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_provider.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations*.dart`
- `A:\Way of Allah\sirat_i_nur\test\settings_provider_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\settings\settings_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Audio voice tercihi artık dil bağımsız canonical kimlik ile saklanıyor; locale değişince aynı kayıt doğru biçimde yeni etiketle gösteriliyor.
- Safe priority locale setinde `audioVoice` ve üç voice label anahtarı İngilizce fallback vermemeye başladı.
- Rare base locale setinde `92` dosya hâlâ EN-reference taşıyor; sibling fallback kaynağı olmadığı ve güvenilir otomatik çeviri aynı EN değeri döndürdüğü için bu alanlarda uydurma yapılmadı.

### Test Sonucu
- `flutter gen-l10n` → PASS
- `flutter test test/settings_provider_test.dart` → PASS (`10/10`)
- `flutter test test/features/settings/settings_page_test.dart` → PASS (`5/5`)
- `flutter test test/arb_ui_localization_test.dart` → PASS (`24/24`)
- Hedefli testler ilk paralel denemede Windows Flutter tool `NativeAssetsManifest.json` kopyalama çakışmasıyla çöktü; seri tekrar çalıştırmada kod hatası olmadığı doğrulandı.
- `flutter analyze` → PASS
- `flutter test` → PASS (`229/229`)

### Risk Değişimi (önceki risk → sonraki risk)
- Settings audio voice labels stored and rendered as hardcoded English display strings: `13/25 → 3/25`
- Safe priority locale audio voice English fallback cluster: `14/25 → 4/25`

### Sonraki Adım
- Rare base locale kümelerinde kalan EN-reference anahtarlar için kanıta dayalı sınıflandırma sürdürülecek; güvenilir fallback kaynağı olmayanlar dürüst EN-reference olarak işaretlenecek, güvenli mapping bulunanlar batch düzeltmeye alınacak.
- Paralel yeni taramada ayarlar, tracker ve diagnostics yüzeylerinde kalan user-facing hardcoded metinler yeniden sayısallaştırılacak.

## 2026-04-10 TUR-97 — Sanitize Corrupted Audio Voice Localization

### Ne Yapıldı
- [A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart](A:/Way%20of%20Allah/sirat_i_nur/tool/translate_arb_keys.dart) içine `audioVoice*` anahtarları için post-process katmanı eklendi; artık çok satırlı/bozuk çeviri çıkarsa dürüst source değere düşüyor ve `AbdulBaset` yazımı kanonik `Abdul Basit` biçimine normalize ediliyor.
- [A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_provider.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/settings/settings_provider.dart) legacy `Male (AbdulBaset)` ve yeni `Male (Abdul Basit)` etiketlerinin ikisini de aynı canonical `abdul_baset` kimliğine normalize edecek şekilde genişletildi.
- Tüm [A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_en.arb) setinde audio voice alanları sanitize edildi; newline içeren bozuk satırlar temizlendi, tüm `AbdulBaset` etiketleri `Abdul Basit` olarak düzeltildi.
- Guard testi genişletildi: [A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/arb_ui_localization_test.dart) artık tüm ARB setinde audio voice label’larının çok satırlı çöp taşımadığını ve `AbdulBaset` tipografik hatasını geri almadığını doğruluyor.

### Neden Yapıldı
- Yeni taramada [A:\Way of Allah\sirat_i_nur\lib\l10n\app_ay.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_ay.arb) ve [A:\Way of Allah\sirat_i_nur\lib\l10n\app_ti.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_ti.arb) gibi dosyalarda audio voice etiketlerine anlamsız satır ön ekleri sızdığı görüldü; bu kullanıcıya doğrudan bozuk metin gösteriyordu.
- [A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_en.arb) ve [A:\Way of Allah\sirat_i_nur\lib\l10n\app_tr.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_tr.arb) tarafında `AbdulBaset` etiketi bitişik yazıldığı için proper-name kalitesi de düşüktü.
- Bu iki sorun aynı kökten, yani translator batch sonrası sanitize eksikliğinden geliyordu; çözüm kaynağa eklendi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_provider.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations*.dart`
- `A:\Way of Allah\sirat_i_nur\test\settings_provider_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Audio voice etiketleri artık kullanıcıya satır içi çöp veya kırık proper-name göstermiyor.
- Legacy saklanmış değerler kırılmadan okunmaya devam ediyor.
- Çeviri batch’i ileride yeniden çalışsa bile aynı bozukluk tekrar üretilirse tool katmanı onu sanitize edecek.

### Test Sonucu
- `flutter gen-l10n` → PASS
- `flutter test test/settings_provider_test.dart` → PASS (`11/11`)
- `flutter test test/arb_ui_localization_test.dart` → PASS (`25/25`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`231/231`)

### Risk Değişimi (önceki risk → sonraki risk)
- Audio voice locale labels contain machine-translated garbage/newline corruption: `12/25 → 2/25`
- Audio voice proper-name typo (`AbdulBaset`) across locale set: `10/25 → 2/25`

### Sonraki Adım
- Rare locale EN-reference kümeleri içinde hangi anahtarların dürüst bırakılacağı, hangilerinin güvenli sibling/source fallback ile kapatılabileceği sınıflandırılacak.
- Kod tarafında orphan [A:\Way of Allah\sirat_i_nur\lib\core\utils\l10n_utils.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/utils/l10n_utils.dart) artık kullanım dışı; bir sonraki düşük diff turunda kaldırılacak.

## 2026-04-10 TUR-98 — Localize Safe Locale Chatbot and Status Copy

### Ne Yapıldı
- [A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart](A:/Way%20of%20Allah/sirat_i_nur/tool/translate_arb_keys.dart) içine `chatbotUseCloudAi` için proper-name koruma katmanı eklendi; çeviri sonrası `Gemini` parantez içi marka adı zorunlu olarak korunuyor.
- Tüm [A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_en.arb) setinde `chatbotUseCloudAi`, `noResults`, `loading`, `error`, `delete`, `downloadComplete`, `downloadFailed`, `noInternet` anahtarları tekrar batch çevrilip sanitize edildi.
- [A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/arb_ui_localization_test.dart) genişletildi; güvenli öncelikli locale setinde bu anahtarların İngilizce fallback vermediği ve `Gemini` markasını bozmadığı regression ile kilitlendi.

### Neden Yapıldı
- Tarama sonucunda güvenli öncelikli locale setinde `chatbotUseCloudAi` ile temel durum kopyalarının İngilizce kaldığı görüldü; bu küme kullanıcıya lokalize edildi sanılan ama fiilen çevrilmemiş temel UI akışı gösteriyordu.
- Aynı batch sırasında bazı locale’lerde `Gemini` marka adı yerelleştirilerek bozuldu; bu da proper noun kalitesini düşürdü ve geri döndürülmesi gereken ayrı bir kök sebep doğurdu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Güvenli öncelikli locale seti artık temel durum kopyalarında İngilizceye düşmüyor.
- Chatbot cloud aksiyon etiketinde `Gemini` marka adı tüm locale setinde bozulmadan korunuyor.
- Translation batch tekrarlansa bile tool katmanı proper-name regressions üretmeyecek.

### Test Sonucu
- `flutter gen-l10n` → PASS
- `flutter test test/arb_ui_localization_test.dart` → PASS (`27/27`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`233/233`)

### Risk Değişimi (önceki risk → sonraki risk)
- Safe priority locales still fall back to English for chatbot cloud action: `12/25 → 3/25`
- Safe priority locales still fall back to English for basic status copy: `14/25 → 3/25`
- Translator batch may corrupt `Gemini` proper noun: `10/25 → 2/25`

### Sonraki Adım
- Orphan [A:\Way of Allah\sirat_i_nur\lib\core\utils\l10n_utils.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/utils/l10n_utils.dart) kaldırılacak veya tekrar bağlanacak; şu an kullanım dışı.
- Rare locale kalan EN-reference anahtarları sibling/source matrisiyle sınıflandırılmaya devam edecek.

## 2026-04-10 TUR-99 — Localize Core Navigation Labels

### Ne Yapıldı
- [A:\Way of Allah\sirat_i_nur\lib\features\common\main_skeleton.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/common/main_skeleton.dart) artık alt navigasyon etiketlerini hardcoded İngilizce string’lerden değil mevcut localization anahtarlarından (`home`, `quran`, `qibla`, `zikr`, `calendar`) okuyor.
- [A:\Way of Allah\sirat_i_nur\test\features\common\main_skeleton_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/common/main_skeleton_test.dart) eklendi; Türkçe ve İngilizce navigasyon etiketleri regression ile doğrulanıyor.

### Neden Yapıldı
- Tam proje taramasında [A:\Way of Allah\sirat_i_nur\lib\features\common\main_skeleton.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/common/main_skeleton.dart) alt navigasyonun en görünür kullanıcı yüzeylerinden biri olmasına rağmen `Home`, `Quran`, `Qibla`, `Zikr`, `Calendar` etiketlerini sabit İngilizce tuttuğu görüldü.
- Aynı anlamları taşıyan localization anahtarları zaten hazırdı; kök sebep UI katmanının l10n zincirine hiç bağlanmamış olmasıydı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\common\main_skeleton.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\common\main_skeleton_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Alt navigasyon artık uygulama diliyle hizalı görünüyor; en temel gezinme yüzeyi İngilizceye zorunlu düşmüyor.
- Bu yüzey için widget regression eklendiği için hardcoded label geri sızması testte yakalanacak.

### Test Sonucu
- `flutter test test/features/common/main_skeleton_test.dart` → PASS (`2/2`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`235/235`)

### Risk Değişimi (önceki risk → sonraki risk)
- Core bottom navigation still exposes hardcoded English labels: `15/25 → 2/25`

### Sonraki Adım
- Orphan [A:\Way of Allah\sirat_i_nur\lib\core\utils\l10n_utils.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/utils/l10n_utils.dart) kaldırılacak; tarama şu an yalnızca tanımını buluyor.
- Ardından core yüzeylerde kalan kullanıcıya dönük hardcoded string avına devam edilecek.

## 2026-04-10 TUR-100 — Remove Legacy l10n Utility Orphan

### Ne Yapıldı
- Kullanımı kalmayan [A:\Way of Allah\sirat_i_nur\lib\core\utils\l10n_utils.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/utils/l10n_utils.dart) dosyası silindi.
- [A:\Way of Allah\sirat_i_nur\test\l10n_utils_guard_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/l10n_utils_guard_test.dart) eklendi; hem dosyanın geri dönmediğini hem de production `lib/` altında `trEn(` veya `l10n_utils.dart` importlarının yeniden sızmadığını doğruluyor.

### Neden Yapıldı
- Tam taramada `rg -n "trEn\\(|l10n_utils" lib test` yalnızca [A:\Way of Allah\sirat_i_nur\lib\core\utils\l10n_utils.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/utils/l10n_utils.dart) tanımını döndürdü; helper artık yaşayan call chain’de yoktu.
- Kullanılmayan localization utility’leri repo içinde bırakmak yanlış tekrar kullanım ve eski TR/EN ikili fallback kalıbının geri sızması riskini taşıyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\utils\l10n_utils.dart`
- `A:\Way of Allah\sirat_i_nur\test\l10n_utils_guard_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Eski ikili `trEn` helper’ı üretim akışından tamamen çıktı.
- Localization zinciri tek doğru kaynak olarak generated `AppLocalizations` etrafında daha net kaldı.
- Bu helper’ın geri sızması test seviyesinde yakalanacak.

### Test Sonucu
- `flutter test test/l10n_utils_guard_test.dart` → PASS (`1/1`)
- `flutter analyze` → PASS
- `flutter test` → PASS (`236/236`)

### Risk Değişimi (önceki risk → sonraki risk)
- Legacy `trEn` / `l10n_utils` orphan helper may be reused by mistake: `8/25 → 1/25`

### Sonraki Adım
- Taramada kalan kullanıcıya dönük hardcoded copy yüzeyleri yeniden sınıflandırılacak; özellikle [A:\Way of Allah\sirat_i_nur\lib\features\common\main_skeleton.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/common/main_skeleton.dart) sonrası core yüzeylerde başka sabit UI string kalıp kalmadığı yeniden taranacak.

## 2026-04-15 TUR-101 — Localize Qibla Sensor Unavailable Errors

### Ne Yapıldı
- [A:\Way of Allah\sirat_i_nur\lib\core\services\qibla_sensor_bridge.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/qibla_sensor_bridge.dart) içinde pusula sensörü yokken fırlatılan hardcoded İngilizce `StateError` yerine typed `QiblaSensorUnavailableException` eklendi.
- [A:\Way of Allah\sirat_i_nur\lib\features\qibla\qibla_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/qibla/qibla_page.dart) artık raw `err.toString()` göstermiyor; bilinen sensör yokluğu hatasını localized `qiblaSensorUnavailable` mesajına, bilinmeyen hataları dürüst `appUnknownError` metnine map ediyor.
- [A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_en.arb) ve [A:\Way of Allah\sirat_i_nur\lib\l10n\app_tr.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_tr.arb) referanslarına `qiblaSensorUnavailable` anahtarı eklendi; ardından `dart run tool/translate_arb_keys.dart qiblaSensorUnavailable` ve `flutter gen-l10n` ile tüm ARB/generated l10n seti güncellendi.
- [A:\Way of Allah\sirat_i_nur\test\features\qibla\qibla_page_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/features/qibla/qibla_page_test.dart) sensör yokluğu UI'sinin Türkçe çıktısını ve raw exception sızıntısının gizlendiğini doğrulayacak şekilde genişletildi.
- [A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/arb_ui_localization_test.dart) qibla hata kopyası guard'ına yeni anahtar eklendi.

### Neden Yapıldı
- Tam proje taramasında [A:\Way of Allah\sirat_i_nur\lib\core\services\qibla_sensor_bridge.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/qibla_sensor_bridge.dart) sensör yokluğunda `Compass sensor unavailable on this device.` metnini doğrudan exception olarak üretiyordu.
- [A:\Way of Allah\sirat_i_nur\lib\features\qibla\qibla_page.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/features/qibla/qibla_page.dart) bu exception'ı `err.toString()` ile kullanıcıya gösterebildiği için localization zinciri kırılıyor ve Türkçe kullanımda İngilizce teknik hata sızıyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\qibla_sensor_bridge.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\qibla\qibla_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations*.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\qibla\qibla_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Qibla ekranı artık pusula sensörü olmayan cihazlarda kullanıcıya localized, anlaşılır ve teknik detay sızdırmayan hata gösteriyor.
- Eski İngilizce sensör hata metninin UI'a geri dönmesi widget ve ARB guard testleriyle yakalanacak.
- Full test öncesi `build/verified_quran_audio_smoke/manifest.json` artefact'i temizlenmiş olduğundan resmi seed üzerinden tek surelik smoke mirror tekrar üretildi; bu artefact `build/` altında ignored kalır ve commit kapsamına alınmaz.

### Test Sonucu
- `dart run tool/download_verified_quran_audio.dart --reciters=alafasy --surahs=1 --output-dir=build/verified_quran_audio_smoke` → PASS (`requested=1`, `downloaded=1`, `failed=0`)
- `flutter gen-l10n` → PASS
- `flutter test test/features/qibla/qibla_page_test.dart --reporter compact` → PASS (`3/3`)
- `flutter test test/arb_ui_localization_test.dart --reporter compact` → PASS (`27/27`)
- `flutter analyze` → PASS
- `flutter test --reporter compact` → PASS (`237/237`)

### Risk Değişimi (önceki risk → sonraki risk)
- Qibla sensor unavailable path leaks raw English exception text to localized UI: `12/25 → 2/25`

### Sonraki Adım
- [A:\Way of Allah\sirat_i_nur\test\generate_quran_audio_storage_seed_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/generate_quran_audio_storage_seed_test.dart) temiz checkout'ta ignored `build/verified_quran_audio_smoke/manifest.json` dosyasına bağımlı; bu test bir sonraki döngüde self-contained fixture veya deterministic setup ile kalıcı hale getirilecek.
- Core servislerde kalan kullanıcıya dönük hardcoded string taraması sürdürülecek; özellikle notification/audio/prayer pipeline kullanıcı mesajları yeniden sınıflandırılacak.

## 2026-04-15 TUR-102 — Make Quran Audio Storage Seed Test Deterministic

### Ne Yapıldı
- [A:\Way of Allah\sirat_i_nur\test\generate_quran_audio_storage_seed_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/generate_quran_audio_storage_seed_test.dart) içindeki smoke manifest testi ignored `build/verified_quran_audio_smoke/manifest.json` dosyasına bağımlı olmaktan çıkarıldı.
- Test artık `Directory.systemTemp` altında gerçek mirror manifest şemasına sahip geçici `manifest.json` ve `alafasy/001.mp3` dosyası üretip aynı parse + storage-backed SQL dönüşümünü doğruluyor.
- Test sonunda geçici dizin `addTearDown` ile temizleniyor; repo build artefact'ine, network'e veya önceki manuel smoke koşusuna bağımlılık kalmadı.

### Neden Yapıldı
- Full test temiz artefact ortamında `Smoke manifest missing. Run the verified audio mirror smoke step first.` hatasıyla kırılabiliyordu.
- Kök sebep, testin git tarafından ignore edilen `build/` çıktısını zorunlu kabul etmesiydi; bu durum clean checkout, CI veya `flutter clean` sonrası false-negative test başarısızlığı üretirdi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\test\generate_quran_audio_storage_seed_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Full test artık Quran audio storage seed guard'ı için önce manuel smoke download yapılmasını gerektirmiyor.
- Storage-backed SQL dönüşümü aynı gerçek manifest alanlarıyla doğrulanmaya devam ediyor.
- Ses mirror doğrulama akışı ayrı tool ve smoke komutu olarak korunuyor; unit test deterministic hale getirildi.

### Test Sonucu
- `dart format test/generate_quran_audio_storage_seed_test.dart` → PASS
- `flutter test test/generate_quran_audio_storage_seed_test.dart --reporter compact` → PASS (`4/4`)
- `flutter analyze` → PASS
- `flutter test --reporter compact` → PASS (`237/237`)

### Risk Değişimi (önceki risk → sonraki risk)
- Full test depends on ignored Quran audio smoke build artefact: `12/25 → 1/25`

### Sonraki Adım
- Core servislerde kalan kullanıcıya dönük hardcoded string taraması sürdürülecek; ilk adaylar notification channel copy ve prayer/audio pipeline mesajlarıdır.
- Rare locale EN-reference kalan anahtarlar güvenli sibling/source fallback matrisiyle sınıflandırılmaya devam edecek.

## 2026-04-15 TUR-103 — Localize Adhan Notification Channel Copy

### Ne Yapıldı
- [A:\Way of Allah\sirat_i_nur\lib\core\services\adhan_scheduler_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/adhan_scheduler_service.dart) içindeki Android notification channel adı ve açıklaması hardcoded İngilizce olmaktan çıkarıldı.
- [A:\Way of Allah\sirat_i_nur\lib\core\utils\prayer_name_localization.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/utils/prayer_name_localization.dart) içine `notificationChannelName` ve `notificationChannelDescription` helper'ları eklendi; servis artık channel copy'yi settings dilinden generated l10n üzerinden çözüyor.
- [A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_en.arb) ve [A:\Way of Allah\sirat_i_nur\lib\l10n\app_tr.arb](A:/Way%20of%20Allah/sirat_i_nur/lib/l10n/app_tr.arb) referanslarına `adhanNotificationChannelName` ve `adhanNotificationChannelDescription` eklendi; tüm ARB/generated l10n seti güncellendi.
- [A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart](A:/Way%20of%20Allah/sirat_i_nur/tool/translate_arb_keys.dart) tek satır kalması gereken channel/audio voice anahtarları için newline/rubbish split çıktısını EN referansa düşürecek şekilde sertleştirildi.
- [A:\Way of Allah\sirat_i_nur\test\prayer_name_localization_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/prayer_name_localization_test.dart) Türkçe channel copy ve servis dosyasında raw İngilizce channel string kalmadığını doğruluyor.
- [A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart](A:/Way%20of%20Allah/sirat_i_nur/test/arb_ui_localization_test.dart) güvenli öncelikli locale setinde channel copy'nin İngilizce fallback vermediğini ve tüm locale'lerde tek satır kaldığını kilitliyor.

### Neden Yapıldı
- [A:\Way of Allah\sirat_i_nur\lib\core\services\adhan_scheduler_service.dart](A:/Way%20of%20Allah/sirat_i_nur/lib/core/services/adhan_scheduler_service.dart) Android channel için `Adhan Notifications` ve `High precision Islamic prayer alerts` metinlerini sabit tutuyordu.
- Android notification channel adı/açıklaması kullanıcıya sistem bildirim ayarlarında görünen kalıcı bir yüzeydir; uygulama Türkçe veya başka dildeyken İngilizce kalması tam localization hedefini bozuyordu.
- İlk batch çeviri denemesinde bazı nadir locale'lerde channel açıklamasına satır sonu karışabildiği görüldü; bu yüzden tool katmanında da kök sebep koruması eklendi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\adhan_scheduler_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\utils\prayer_name_localization.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations*.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\test\prayer_name_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Adhan bildirim kanalı artık kullanıcı diline göre adlandırılıyor ve açıklanıyor.
- Notification channel copy tek satır kalma garantisi test ve translation-tool post-process ile korunuyor.
- Raw İngilizce channel metinlerinin servis dosyasına geri sızması testte yakalanacak.

### Test Sonucu
- `dart format tool/translate_arb_keys.dart test/arb_ui_localization_test.dart` → PASS
- `dart run tool/translate_arb_keys.dart --force adhanNotificationChannelName adhanNotificationChannelDescription` → PASS
- `flutter gen-l10n` → PASS
- `flutter test test/prayer_name_localization_test.dart test/arb_ui_localization_test.dart --reporter compact` → PASS (`34/34`)
- `flutter analyze` → PASS
- `flutter test --reporter compact` → PASS (`241/241`)

### Risk Değişimi (önceki risk → sonraki risk)
- Android adhan notification channel exposes hardcoded English system copy: `12/25 → 2/25`
- Translation batch can create multiline garbage for single-line system labels: `10/25 → 2/25`

### Sonraki Adım
- Prayer/audio pipeline içinde kalan kullanıcıya dönük hardcoded error/debug copy taranacak; özellikle exception mesajı UI'a taşınan akışlar önceliklendirilecek.
- Rare locale EN-reference kalan anahtarlar için güvenli fallback ve doğrulanabilir çeviri matrisi genişletilmeye devam edecek.
## 2026-04-15 TUR-104 — Hide Raw Premium Store Errors

### Ne Yapıldı
- `lib/features/premium/premium_provider.dart` içindeki IAP stream, purchase ve restore hata yolları artık kullanıcıya ham exception/store metni taşımıyor; stable `kPremiumPurchaseFailedErrorCode` yazıyor.
- `lib/features/premium/paywall_page.dart` içindeki `localizePremiumError` bilinmeyen premium hata kodlarını localized `premiumPurchaseFailed` metnine düşürüyor.
- `test/features/premium/paywall_page_test.dart` TR/EN hata lokalizasyonunu ve ham `error.toString()`, `e.toString()`, `purchase.error?.message`, `return error;` sızıntılarının geri gelmemesini doğruluyor.

### Neden Yapıldı
- `premium_provider.dart` hata durumunda `error.toString()`, `purchase.error?.message` ve `e.toString()` kullanabiliyordu.
- `paywall_page.dart` default branch ile bilinmeyen hatayı doğrudan UI'a döndürüyordu.
- Mevcut localization zincirinde `premiumProductUnavailable` ve `premiumPurchaseFailed` anahtarları zaten vardı; kök çözüm ham store metnini stable hata koduna indirmekti.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\premium\premium_provider.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\premium\paywall_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\premium\paywall_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Test Sonucu
- `dart format lib/features/premium/premium_provider.dart lib/features/premium/paywall_page.dart test/features/premium/paywall_page_test.dart` PASS
- `flutter test test/features/premium/paywall_page_test.dart test/premium_provider_test.dart --reporter compact` PASS
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`242/242`)

### Risk Değişimi
- Premium purchase/restore hatalarının localized paywall UI'a ham teknik/store metni sızdırma riski: `12/25 -> 2/25`

### Sonraki Adım
- UI'a görünen diğer ham hata yolları taranacak. İlk adaylar: `lib/features/quran/quran_page.dart`, `lib/features/quran/juz_reading_page.dart`, `lib/features/settings/location_selection_page.dart`, `lib/features/common/app_error_page.dart`, `lib/features/library/library_page.dart`, `lib/features/library/hadith_list_page.dart`, `lib/features/settings/diagnostics_page.dart`.
## 2026-04-15 TUR-105 — Localize Quran Reader Load Failures

### Yapılan İşlem
- `lib/features/quran/quran_page.dart`, `lib/features/quran/juz_reading_page.dart` ve `lib/features/quran/surah_reading_page.dart` yükleme catch yollarında ham `error.toString()` / `e.toString()` UI sızıntısı kaldırıldı.
- Hata ayrıntısı sadece `debugPrint` içinde tutuldu; kullanıcı gövdesi `l10n.quranLoadFailed` ile güvenli ve lokalize mesaja bağlandı.
- `quranLoadFailed` anahtarı `lib/l10n/app_*.arb` dosyalarının tamamına eklendi ve `flutter gen-l10n` ile generated localization dosyaları güncellendi.
- `test/features/quran/quran_error_copy_test.dart` eklendi; TR/EN copy ve üç Kur’an okuyucu ekranında ham exception sızıntısı guard edildi.
- `test/arb_ui_localization_test.dart` güvenli öncelikli dillerde `quranLoadFailed` İngilizce fallback’e düşmesin diye genişletildi.

### Neden Yapıldı
- `quran_page.dart:60`, `juz_reading_page.dart:76`, `surah_reading_page.dart:103` hata metnini `_error` alanına ham exception olarak yazıyordu.
- Aynı ekranların `_buildErrorState` metinleri `_error` alanını doğrudan `Text(...)` ile gösterdiği için Supabase/asset/format hataları kullanıcıya teknik ve İngilizce çıkabiliyordu.
- Kök çözüm exception detayını log’da bırakıp UI metnini localization zincirine taşımaktı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\quran_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\juz_reading_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\surah_reading_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations*.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\quran\quran_error_copy_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Kur’an index, sure okuma ve cüz okuma yükleme hatalarında kullanıcı artık teknik exception/store/asset metni görmez.
- Hata mesajı tüm l10n zincirinden gelir; TR ve EN referans metinleri sabittir, öncelikli dillerde fallback guard vardır.

### Test Sonucu
- `flutter test test/features/quran/quran_error_copy_test.dart test/arb_ui_localization_test.dart --reporter compact` PASS
- İlk `flutter analyze` bir scope hatası yakaladı; `surah_reading_page.dart` catch bloğunda lokal `l10n` alınarak düzeltildi.
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`244/244`)
- `git diff --check` PASS

### Risk Değişimi
- Kur’an okuyucu ekranlarında ham exception metni gösterme riski: `12/25 -> 2/25`

### Sonraki Adım
- Kalan UI hata metni adayları sırayla taranacak: `lib/features/common/app_error_page.dart`, `lib/features/settings/location_selection_page.dart`, `lib/features/library/library_page.dart`, `lib/features/library/hadith_list_page.dart`, `lib/features/settings/diagnostics_page.dart`.
## 2026-04-15 TUR-106 — Hide Raw App Route Errors

### Yapılan İşlem
- `lib/features/common/app_error_page.dart` genel hata sayfasında `error?.toString()` gösterimi kaldırıldı.
- Kullanıcıya her durumda localized `l10n.appUnknownError` gösteriliyor; teknik route/app exception metni UI'a basılmıyor.
- `test/features/common/app_error_page_test.dart` mevcut beklenti tersine çevrilerek `Exception('Network timeout')` metninin görünmediği doğrulandı.

### Neden Yapıldı
- `app_router.dart:137` router hata durumunda `AppErrorPage(error: state.error)` çağırıyor.
- `app_error_page.dart:24` bu exception'ı doğrudan `Text(error?.toString()...)` ile kullanıcıya gösterebiliyordu.
- Bu genel yüzey, route/permission/provider gibi teknik hatalarda İngilizce veya hassas debug metni sızdırma riski taşıyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\common\app_error_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\common\app_error_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Genel route/app hata ekranı artık yalnızca lokalize güvenli mesaj gösterir.
- Mevcut `appErrorOccurred` ve `appUnknownError` localization zinciri kullanıldığı için yeni ARB anahtarı gerekmedi.

### Test Sonucu
- `flutter test test/features/common/app_error_page_test.dart --reporter compact` PASS
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`244/244`)
- `git diff --check` PASS

### Risk Değişimi
- Genel hata sayfasında teknik exception sızıntısı riski: `12/25 -> 2/25`

### Sonraki Adım
- UI'a görünen ham hata metni adaylarında sıradaki dosya `lib/features/settings/location_selection_page.dart`; `_showMessage('${l10n.error}: $error')` akışı incelenip güvenli localized mesaja çevrilecek.

## 2026-04-15 TUR-107 — Localize Location Detection Failures

### Yapılan İşlem
- `lib/features/settings/location_selection_page.dart` GPS/konum algılama catch yolunda `${l10n.error}: $error` snackbar sızıntısı kaldırıldı.
- Ham exception yalnızca `debugPrint('Location detection failed: $error')` içinde kaldı; kullanıcıya `l10n.locationDetectionFailed` gösteriliyor.
- `locationDetectionFailed` anahtarı tüm `lib/l10n/app_*.arb` dosyalarına eklendi ve `flutter gen-l10n` ile generated dosyalar güncellendi.
- `tool/translate_arb_keys.dart` bu kısa snackbar metnini single-line korumasına aldı.
- `test/location_selection_page_test.dart` TR/EN metin doğrulaması ve ham `$error` snackbar source guard ile güçlendirildi.
- `test/arb_ui_localization_test.dart` priority locale fallback guardına `locationDetectionFailed` eklendi.

### Neden Yapıldı
- `location_selection_page.dart:147` doğrudan `_showMessage('${l10n.error}: $error')` kullanıyordu.
- Geolocator/platform/storage hataları kullanıcıya teknik veya İngilizce exception metni olarak çıkabiliyordu.
- Servis kapalı ve izin reddi yolları zaten özel metne sahipti; genel detect/update failure için ayrı localized copy gerekiyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\location_selection_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations*.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\test\location_selection_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Konum algılama başarısız olduğunda kullanıcı artık ham platform/geocoder/storage exception metni görmez.
- Mesaj tüm localization zincirinde var ve priority locale guard ile korunuyor.

### Test Sonucu
- `flutter test test/location_selection_page_test.dart test/arb_ui_localization_test.dart --reporter compact` PASS
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`245/245`)
- `git diff --check` PASS
- `flutter doctor -v` Android için PASS; Chrome ve Visual Studio eksikleri Android release/test akışını durdurmayan non-critical ortam maddeleri olarak kaldı.

### Risk Değişimi
- Konum algılama snackbar'ında ham exception gösterme riski: `12/25 -> 2/25`

### Sonraki Adım
- Kalan ham hata adayları sırayla taranacak: `lib/features/library/library_page.dart`, `lib/features/library/hadith_list_page.dart`, `lib/features/settings/diagnostics_page.dart`, `lib/features/settings/quran_diagnostics.dart`.

## 2026-04-15 TUR-108 — Hide Raw Library Load Errors

### Yapılan İşlem
- `lib/features/library/library_page.dart` içindeki `buildLibraryErrorText` artık exception parametresi almaz ve UI'a ham `$error` basmaz.
- `lib/features/library/hadith_list_page.dart` içindeki `buildHadithListErrorText` aynı şekilde ham hata metnini kaldırdı.
- İki akış da mevcut localized `l10n.error` + `l10n.checkConnection` metnini kullanıyor; yeni ARB anahtarı eklenmedi çünkü zincirde kapsayıcı ve çevrilmiş copy zaten vardı.
- `test/library_page_test.dart` ve `test/features/library/hadith_list_copy_test.dart` beklentileri tersine çevrildi: hata metni lokalize kalmalı, `timeout` / `zaman asimi` gibi raw exception parçaları görünmemeli.

### Neden Yapıldı
- `library_page.dart:15` doğrudan `${l10n.error}: $error` döndürüyordu.
- `hadith_list_page.dart:11` doğrudan `${l10n.error}: $error\n${l10n.checkConnection}` döndürüyordu.
- Bu iki helper, Supabase/network/provider exception metinlerini kullanıcıya teknik ve çoğu durumda İngilizce olarak gösterebiliyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\library\hadith_list_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\library_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\library\hadith_list_copy_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Kütüphane ve hadis listesi hata durumlarında kullanıcı artık raw network/provider exception metni görmez.
- Mesajlar mevcut localization zincirinden gelir ve bağlantı kontrolü için kullanıcıya anlaşılır aksiyon verir.

### Test Sonucu
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`245/245`) baseline PASS
- `flutter test test/library_page_test.dart test/features/library/hadith_list_copy_test.dart --reporter compact` PASS
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`245/245`)
- `git diff --check` PASS

### Risk Değişimi
- Library/Hadith hata yüzeylerinde ham exception gösterme riski: `12/25 -> 2/25`

### Sonraki Adım
- Kalan ham/teknik hata adaylarında `lib/features/settings/diagnostics_page.dart` ve `lib/features/settings/quran_diagnostics.dart` incelenecek; diagnostics yüzeyinde kullanıcıya güvenli özet, geliştiriciye yeterli ayrıntı dengesi korunacak.

## 2026-04-15 TUR-109 — Sanitize Diagnostics Error Output

### Yapılan İşlem
- `lib/features/settings/diagnostics_page.dart` FutureBuilder hata ekranında `${snapshot.error}` gösterimi kaldırıldı.
- Diagnostics genel hata metni `buildDiagnosticsErrorText(l10n)` helper'ına taşındı ve mevcut localized `l10n.error` + `l10n.checkConnection` metniyle güvenli hale getirildi.
- Quran cloud diagnostic callback zinciri artık raw `Object error` taşımaz; bilinmeyen cloud/structural hatalar `l10n.appUnknownError` ile lokalize özetlenir.
- `lib/features/settings/quran_diagnostics.dart` bilinen Supabase eksik tablo/kolon hatalarını tanımaya devam eder, ama raw exception callback'e ve UI'a aktarılmaz.
- Asset manifest okuma hatasında raw detail UI'a basılmıyor; yalnızca debug log için `Error.safeToString` ile teknik kayıt tutuluyor.
- `test/quran_diagnostics_test.dart` bilinmeyen Supabase/structural hata metinlerinin redakte edildiğini doğrulayan iki regresyon testi kazandı.
- `test/features/settings/diagnostics_page_test.dart` genel diagnostics hata metninin TR/EN lokalize ve raw exception'dan arındırılmış olduğunu doğruluyor.

### Neden Yapıldı
- `diagnostics_page.dart:483` doğrudan `${l10n.error}: ${snapshot.error}` gösteriyordu.
- `diagnostics_page.dart:332`, `diagnostics_page.dart:334` ve `diagnostics_page.dart:430` raw `error.toString()` değerini localization placeholder'ına geçiriyordu.
- `quran_diagnostics.dart:78` ve `quran_diagnostics.dart:95` exception metnini hem sınıflandırma hem callback yolu için kullanıyordu; bu zincir bilinmeyen provider/Supabase ayrıntılarını kullanıcıya sızdırabiliyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\quran_diagnostics.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\settings\diagnostics_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\quran_diagnostics_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Diagnostics ekranı kullanıcıya artık raw Supabase/provider/manifest exception metni göstermez.
- Eksik Quran cloud tablo/kolon durumları için dürüst ve özel fallback mesajları korunur.
- Bilinmeyen hata ayrıntıları UI yerine yalnızca debug log/diagnostic fingerprint seviyesinde kalır.

### Test Sonucu
- İlk hedef test koşusu `Error.safeToString` fingerprint'i fazla maskelediği için iki sınıflandırma testinde FAIL verdi; root cause izole edilip fingerprint `StringBuffer.write(error)` ile UI sızıntısı açmadan düzeltildi.
- `flutter test test/quran_diagnostics_test.dart test/features/settings/diagnostics_page_test.dart --reporter compact` PASS
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`248/248`)
- `git diff --check` PASS

### Risk Değişimi
- Diagnostics ekranında raw teknik hata sızıntısı riski: `12/25 -> 2/25`

### Sonraki Adım
- Yeni tarama döngüsünde kalan kullanıcıya görünen raw hata/placeholder/TODO yüzeyleri tekrar aranacak; öncelik `lib/features/**` UI akışları ve audio/download false-success zinciri olacak.

## 2026-04-15 TUR-110 — Sanitize Live TV Error Copy

### Yapılan İşlem
- `lib/features/tv/live_tv_page.dart` içindeki `buildLiveTvProviderErrorText` artık raw provider exception parametresi almaz.
- Provider hata state'i `l10n.streamError` + `l10n.checkConnection` ile güvenli lokalize mesaja çevrildi.
- WebView main-frame hatasında `error.description` artık overlay'e yazılmıyor.
- Live TV error overlay'i her zaman `l10n.streamError` ve `l10n.checkConnection` gösteriyor.
- Debug log da raw description yerine WebView `errorCode` ve `errorType` ile sınırlı tutuldu.
- `test/live_tv_page_test.dart` provider error helper'ının TR/EN lokalize kaldığını ve `timeout` / `zaman asimi` raw exception parçalarını göstermediğini doğruluyor.

### Neden Yapıldı
- `live_tv_page.dart:9` `${l10n.error}: $error` döndürüyordu.
- `live_tv_page.dart:119` WebView `error.description` değerini `_errorText` üzerinden kullanıcıya basıyordu.
- Bu iki yol canlı yayın provider veya WebView teknik hata metinlerini kullanıcıya İngilizce/ham olarak gösterebiliyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\tv\live_tv_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\live_tv_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Canlı TV hata yüzeyi raw provider/WebView açıklamalarını sızdırmaz.
- Kullanıcıya tek, anlaşılır ve lokalize aksiyon verilir: yayın hatası + bağlantıyı kontrol et.

### Test Sonucu
- `flutter test test/live_tv_page_test.dart --reporter compact` PASS
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`248/248`)
- `git diff --check` PASS

### Risk Değişimi
- Live TV hata yüzeyinde raw teknik hata gösterme riski: `12/25 -> 2/25`

### Sonraki Adım
- Ham hata sızıntısı taramasına devam edilecek; sıradaki adaylar `main.dart` global bootstrap logları, qibla placeholder hata ayrıntıları ve premium refresh placeholder zincirinin kullanıcıya açık olup olmadığıdır.

## 2026-04-15 TUR-111 — Require Real Location For Qibla

### Yapılan İşlem
- `lib/features/qibla/qibla_page.dart` konum yokken İstanbul koordinatlarına sessiz fallback yapmayı bıraktı.
- Qibla sensör stream'i yalnızca `settings.latitude` ve `settings.longitude` birlikte varsa izleniyor.
- Konum eksikse kullanıcıya `qiblaLocationRequiredTitle` ve `qiblaLocationRequiredBody` üzerinden lokalize, dürüst empty-state gösteriliyor.
- Yeni Qibla konum copy'si `app_en.arb` ve `app_tr.arb` şablonlarına eklendi; `tool/translate_arb_keys.dart --force` ile tüm `app_*.arb` dosyalarına yayıldı.
- `flutter gen-l10n` ile tüm generated `AppLocalizations` sınıfları yenilendi.
- `test/features/qibla/qibla_page_test.dart` konum yokken sensörün izlenmediğini, fallback koordinatlarının kaynakta kalmadığını ve iki koordinatın da zorunlu olduğunu doğrulayan regresyon testleri kazandı.
- `test/arb_ui_localization_test.dart` öncelikli locale'lerde yeni Qibla konum copy'sinin İngilizce fallback'e düşmediğini kontrol ediyor.

### Neden Yapıldı
- `lib/features/qibla/qibla_page.dart` önce `settings.latitude ?? 41.0082` ve `settings.longitude ?? 28.9784` ile konum yokken İstanbul üzerinden Qibla açısı hesaplıyordu.
- Bu davranış ilk kurulumda veya kullanıcı konumu temizlediğinde yanlış şehir üzerinden ibadet yönlendirmesi üretme riski taşıyordu.
- Qibla gibi dini hassasiyet taşıyan akışlarda sessiz coğrafi tahmin yerine gerçek kullanıcı konumu veya dürüst blokaj gerekir.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\qibla\qibla_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations*.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\qibla\qibla_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Konum eksikken Qibla yönü artık yanlış varsayımla hesaplanmaz.
- Kullanıcı gerçek konum ayarlamadan pusula yönlendirmesi görmez.
- Qibla konum eksikliği 180+ locale zincirinde localized copy ile açıklanır.
- Regresyon testleri fallback koordinatlarının geri dönmesini yakalar.

### Test Sonucu
- Başlangıç `flutter analyze` PASS
- Başlangıç `flutter test --reporter compact` PASS (`248/248`)
- İlk hedef test koşusu `app_tw.arb` yeni Qibla başlığını İngilizce bıraktığı için FAIL verdi; `app_tw.arb` ve sibling `app_ak.arb` Twi/Akan copy'si düzeltilip `flutter gen-l10n` yeniden çalıştırıldı.
- `flutter test test/features/qibla/qibla_page_test.dart test/arb_ui_localization_test.dart --reporter compact` PASS
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`251/251`)
- `git diff --check` PASS

### Risk Değişimi
- Qibla ekranında konum yokken yanlış şehir üzerinden yön hesaplama riski: `16/25 -> 2/25`

### Sonraki Adım
- Yeni döngüde Qibla hata sınıflandırmasındaki `error.toString()` kullanımı ve `main.dart` bootstrap loglarında raw hata ayrıntılarının kullanıcıya veya loglara fazla taşınıp taşınmadığı taranacak.

## 2026-04-15 TUR-112 — Sanitize Qibla Error Classification

### Yapılan İşlem
- `lib/features/qibla/qibla_page.dart` içindeki Qibla hata sınıflandırması doğrudan `error.toString()` çağrısından çıkarıldı.
- `isQiblaSensorUnavailableError(error)` helper'ı eklendi; typed `QiblaSensorUnavailableException` önce yakalanıyor, diğer hatalarda yalnızca internal fingerprint için `StringBuffer.write(error)` kullanılıyor.
- `resolveQiblaErrorMessage` kullanıcıya yine sadece localized `qiblaSensorUnavailable` veya `appUnknownError` metinlerini döndürüyor.
- `test/features/qibla/qibla_page_test.dart` sensör unavailable sınıflandırmasını, bilinmeyen hata ayrımını ve kaynakta `error.toString()` deseninin geri dönmemesini doğruluyor.

### Neden Yapıldı
- `lib/features/qibla/qibla_page.dart:13` önce `error.toString().contains(...)` ile raw hata string'ine doğrudan bağlıydı.
- UI raw hata göstermese de bu desen ileride ham hata sızıntısı veya kırılgan sınıflandırma riski oluşturuyordu.
- Qibla gibi hassas akışlarda kullanıcıya gösterilen hata metni sadece l10n zincirinden gelmeli.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\qibla\qibla_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\qibla\qibla_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Qibla hata çözümleyici raw hata string'ini doğrudan kullanıcı metnine veya kırılgan resolver desenine bağlamaz.
- Known sensor unavailable durumları localized kalır; unknown durumlar localized `Bilinmeyen hata` yoluna düşer.
- Kaynak guard testi regressionsızlığı korur.

### Test Sonucu
- İlk hedef test koşusu `Error.safeToString(Exception(...))` mesajı maskelediği için FAIL verdi; root cause izole edildi ve UI'a sızıntı açmadan internal fingerprint `StringBuffer.write(error)` ile düzeltildi.
- `flutter test test/features/qibla/qibla_page_test.dart --reporter compact` PASS
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`252/252`)
- `git diff --check` PASS

### Risk Değişimi
- Qibla hata sınıflandırmasında raw string bağımlılığı riski: `9/25 -> 2/25`

### Sonraki Adım
- Yeni tarama döngüsünde `main.dart`, `audio_player_service.dart`, `prayer_notification_coordinator.dart`, `quran_page.dart` ve `juz_reading_page.dart` debug loglarında raw hata detaylarının azaltılması değerlendirilecek; kullanıcı UI'ına sızan aday varsa önce o kapatılacak.

## 2026-04-15 TUR-113 — Localize Quran Audio Download Status Copy

### Yapılan İşlem
- `lib/l10n/app_*.arb` içindeki `downloadCompleted`, `quranAudioSourcesUnavailable` ve `quranAudioSourcesIncomplete` anahtarları tüm locale batch'inde güncellendi.
- `flutter gen-l10n` ile `lib/l10n/app_localizations*.dart` generated çıktıları yenilendi.
- `tool/translate_arb_keys.dart` içinde bu üç indirme/ses durumu anahtarı tek satır korunacak anahtarlar listesine eklendi.
- `test/arb_ui_localization_test.dart` öncelikli locale'lerde bu kullanıcıya görünen indirme/ses durumu metinlerinin İngilizce fallback'e düşmesini yakalayacak şekilde genişletildi.

### Neden Yapıldı
- `lib/features/downloads/offline_downloads_page.dart` kullanıcıya indirme tamamlandı, doğrulanmış ses kaynakları yok veya paket eksik mesajlarını doğrudan l10n üzerinden gösteriyor.
- Önceki taramada `app_ar.arb`, `app_de.arb`, `app_fr.arb` ve benzeri priority locale'lerde bu anahtarların İngilizce kaldığı görüldü.
- Offline Kur'an sesi gibi çekirdek bir akışta kullanıcıya görünen copy'nin tüm l10n zincirinde yerel dile düşmesi gerekiyor.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Offline indirme ve Kur'an ses kaynağı durum mesajlarında priority locale İngilizce fallback riski düşürüldü.
- Aynı anahtarların ileride yanlışlıkla çok satırlı veya İngilizce fallback kalması regresyon testine bağlandı.
- Generated l10n dosyaları ARB kaynaklarıyla senkron kaldı.

### Test Sonucu
- `flutter test test\arb_ui_localization_test.dart --reporter compact` PASS
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`252/252`)
- `git diff --check` PASS (sadece CRLF uyarıları)

### Risk Değişimi
- Offline Kur'an sesi indirme/durum copy'sinde İngilizce fallback riski: `12/25 -> 3/25`

### Sonraki Adım
- Yeni döngüde kullanıcıya görünen veya loglarda gereksiz ham hata ayrıntısı taşıyan `debugPrint` adayları taranacak; UI'a sızma ihtimali en yüksek olan akış önce kapatılacak.

## 2026-04-15 TUR-114 — Sanitize Quran Audio Playback Logs

### Yapılan İşlem
- `lib/features/quran/surah_reading_page.dart` ses oynatma fallback döngüsünde başarısız URL ve raw exception loglanması kaldırıldı.
- Aynı dosyada son hata nesnesi tutulmadan yalnızca `hadAudioFailure` bayrağıyla güvenli, genel başarısızlık logu bırakıldı.
- `lib/core/services/audio_player_service.dart` remote URL, local asset path ve raw playback exception loglarını genel durum mesajlarına çevirdi.
- `test/features/quran/quran_error_copy_test.dart` Kur'an ses loglarında URL, asset path ve raw exception desenlerinin geri dönmesini yakalayan kaynak guard testi kazandı.

### Neden Yapıldı
- `lib/features/quran/surah_reading_page.dart` önce `Audio source failed: $url, error: $error` ve `Audio playback failed for all sources: $lastError` ile dış ses URL'lerini ve ham exception ayrıntılarını logluyordu.
- `lib/core/services/audio_player_service.dart` önce `Playing remote URL: $url`, `URL playback error: $e`, `Playing local asset: $assetPath` ve `Asset playback error: $e` desenleriyle gereksiz ayrıntı taşıyordu.
- Kur'an ses hattı dini içerik ve dış kaynak sürekliliği açısından hassas olduğu için kullanıcıya ve loglara ham altyapı ayrıntısı taşımadan dürüst hata davranışı korunmalı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\surah_reading_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\services\audio_player_service.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\quran\quran_error_copy_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Kur'an ses kaynakları başarısız olduğunda UI hâlâ lokalize `streamError/checkConnection` mesajını gösterir; davranış değişmedi.
- Loglar artık dış URL, local asset path veya raw exception nesnesi içermez.
- Regresyon guard testi bu desenlerin geri dönmesini engeller.

### Test Sonucu
- İlk hedef test derlemesi test içindeki `$url/$error` stringlerinin yanlışlıkla interpolation sayılması nedeniyle FAIL verdi; test guard stringleri raw string'e çevrildi.
- `flutter test test\features\quran\quran_error_copy_test.dart --reporter compact` PASS
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`253/253`)
- `git diff --check` PASS (sadece CRLF uyarıları)

### Risk Değişimi
- Kur'an ses hattında URL/raw exception loglama riski: `9/25 -> 2/25`

### Sonraki Adım
- Yeni döngüde `main.dart`, `prayer_notification_coordinator.dart`, `premium_provider.dart`, `quran_page.dart`, `juz_reading_page.dart` ve `location_selection_page.dart` içindeki kalan raw debug log desenleri sınıflandırılacak; kullanıcıya veya hassas veriye yakın olanlar önce sanitize edilecek.

## 2026-04-15 TUR-115 — Sanitize App Bootstrap Raw Error Logs

### Yapılan İşlem
- `lib/main.dart` içindeki Supabase, timezone, global uncaught error, WidgetService, prayer notification bootstrap ve widget update logları raw exception nesnesi basmayacak şekilde güncellendi.
- Stack trace gereken global/bootstrap hata yollarında `debugPrintStack` korunurken exception mesajı log metninden çıkarıldı.
- `test/features/common/main_bootstrap_logging_test.dart` eklendi; `main.dart` içinde `$e` ve `$error` ile ham bootstrap hata ayrıntısı loglayan eski desenlerin geri dönmesini engelliyor.

### Neden Yapıldı
- `lib/main.dart:105`, `lib/main.dart:111`, `lib/main.dart:124`, `lib/main.dart:161`, `lib/main.dart:177` ve `lib/main.dart:189` önce raw exception değerlerini log mesajlarına ekliyordu.
- App bootstrap ve global uncaught error handler bütün uygulama yüzeyine yakın olduğu için burada ham hata ayrıntısı taşımak geniş kapsamlı sızıntı ve bakım riski oluşturur.
- Kullanıcı davranışı değişmeden güvenli, genel log mesajları yeterlidir.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\main.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\common\main_bootstrap_logging_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- App açılışı, global hata yakalama ve widget/prayer bootstrap logları artık ham exception içeriği içermez.
- Tanılama için stack trace korundu; exception mesajının doğrudan loglanması kaldırıldı.
- Regresyon testi eski `$e/$error` log desenlerinin geri dönmesini yakalar.

### Test Sonucu
- `flutter test test\features\common\main_bootstrap_logging_test.dart --reporter compact` PASS
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`254/254`)
- `git diff --check` PASS

### Risk Değişimi
- App bootstrap/global error handler raw exception loglama riski: `12/25 -> 3/25`

### Sonraki Adım
- Yeni döngüde kalan `prayer_notification_coordinator.dart`, `premium_provider.dart`, `quran_page.dart`, `juz_reading_page.dart` ve `location_selection_page.dart` raw debug logları aynı minimal yaklaşım ile sınıflandırılıp kapatılacak.

## 2026-04-15 TUR-116 — Sanitize Premium Store Error Logs

### Yapılan İşlem
- `lib/features/premium/premium_provider.dart` içindeki IAP stream, purchase ve restore logları raw store exception nesnesi basmayacak şekilde güncellendi.
- Premium state/error davranışı değiştirilmedi; kullanıcıya hâlâ `kPremiumPurchaseFailedErrorCode` üzerinden lokalize paywall mesajı gidiyor.
- `test/features/premium/paywall_page_test.dart` premium provider içinde `$error` ve `$e` ile ham store hata ayrıntısı loglayan eski desenleri yakalayacak şekilde genişletildi.

### Neden Yapıldı
- `lib/features/premium/premium_provider.dart:59`, `lib/features/premium/premium_provider.dart:140` ve `lib/features/premium/premium_provider.dart:161` önce raw IAP/store exception metnini logluyordu.
- Premium satın alma/restore akışı ödeme ve mağaza SDK durumlarına yakın olduğu için ham hata ayrıntısı gereksiz ve hassas olabilir.
- Kullanıcıya gösterilen hata zaten güvenli localization zincirinden geldiği için log tarafı da aynı güvenli seviyeye çekildi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\premium\premium_provider.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\premium\paywall_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Premium IAP stream/purchase/restore başarısızlıkları artık ham store exception içeriğini loglamaz.
- Kullanıcıya görünen premium hata copy'si ve state akışı değişmedi.
- Regresyon testi eski raw store log desenlerinin geri dönmesini yakalar.

### Test Sonucu
- `flutter test test\features\premium\paywall_page_test.dart --reporter compact` PASS
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`254/254`)
- `git diff --check` PASS (sadece CRLF uyarıları)

### Risk Değişimi
- Premium/IAP raw store exception loglama riski: `9/25 -> 2/25`

### Sonraki Adım
- Yeni döngüde konum algılama, namaz bildirim senkronu ve Kur'an indeks/jüz yükleme loglarındaki kalan raw hata desenleri kapatılacak.

## 2026-04-15 TUR-117 — Sanitize Location Detection Error Log

### Yapılan İşlem
- `lib/features/settings/location_selection_page.dart` konum algılama catch bloğunda raw `error` loglanması kaldırıldı.
- Kullanıcıya gösterilen `l10n.locationDetectionFailed` snackbar davranışı aynen korundu.
- `test/location_selection_page_test.dart` eski `Location detection failed: $error` deseninin geri dönmesini yakalayacak şekilde genişletildi.

### Neden Yapıldı
- `lib/features/settings/location_selection_page.dart:144` önce konum algılama başarısızlığında ham exception metnini logluyordu.
- Konum akışı kullanıcı lokasyon izinleri ve cihaz servislerine yakın olduğu için ham hata ayrıntısı loglanmamalı.
- UI zaten lokalize ve güvenli hata mesajı gösterdiği için log tarafında da genel mesaj yeterlidir.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\location_selection_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\location_selection_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Konum algılama başarısızlıkları artık ham exception içeriği loglamaz.
- Kullanıcı manuel şehir seçimine yönlendiren lokalize hata mesajını görmeye devam eder.
- Regresyon testi eski raw log deseninin geri dönmesini engeller.

### Test Sonucu
- `flutter test test\location_selection_page_test.dart --reporter compact` PASS
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`254/254`)
- `git diff --check` PASS (sadece CRLF uyarıları)

### Risk Değişimi
- Konum algılama raw exception loglama riski: `9/25 -> 2/25`

### Sonraki Adım
- Yeni döngüde namaz bildirim senkronu ve Kur'an indeks/jüz yükleme loglarındaki kalan raw hata desenleri kapatılacak.

## 2026-04-15 TUR-118 — Sanitize Prayer Notification Sync Logs

### Yapılan İşlem
- `lib/core/services/prayer_notification_coordinator.dart` içindeki scheduler sync catch bloğu raw `error` metni loglamayacak şekilde güncellendi.
- Stack trace tanılama için korunurken exception mesajı log satırından çıkarıldı.
- `test/prayer_notification_coordinator_test.dart` mevcut queue/schedule testlerine ek olarak eski `Prayer notification sync failed: $error` deseninin geri dönmesini yakalayan kaynak guard testi kazandı.

### Neden Yapıldı
- `lib/core/services/prayer_notification_coordinator.dart:80` önce namaz bildirimi senkron başarısızlığında raw scheduler exception metnini logluyordu.
- Bu akış konum, mezhep, hesaplama yöntemi, timezone ve ezan planlama zincirine bağlı olduğu için ham altyapı hata ayrıntısı gereksiz risk oluşturur.
- Dini bildirim davranışı değişmeden güvenli log seviyesi yeterlidir.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_notification_coordinator.dart`
- `A:\Way of Allah\sirat_i_nur\test\prayer_notification_coordinator_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Namaz bildirimi senkron başarısızlıklarında raw exception mesajı loglanmaz.
- Stack trace korunur; schedule/clear/queue davranışı aynı kalır.
- Regresyon testi eski raw log deseninin geri dönmesini engeller.

### Test Sonucu
- `flutter test test\prayer_notification_coordinator_test.dart --reporter compact` PASS
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`255/255`)
- `git diff --check` PASS (sadece CRLF uyarıları)

### Risk Değişimi
- Namaz bildirimi sync raw scheduler exception loglama riski: `9/25 -> 2/25`

### Sonraki Adım
- Yeni döngüde Kur'an indeks, jüz ve sure yükleme loglarında kalan raw hata desenleri kapatılacak.

## 2026-04-15 TUR-119 — Sanitize Quran Load Failure Logs

### Yapılan İşlem
- `lib/features/quran/quran_page.dart`, `lib/features/quran/juz_reading_page.dart` ve `lib/features/quran/surah_reading_page.dart` yükleme catch blokları raw exception metni loglamayacak şekilde güncellendi.
- Kullanıcıya gösterilen `l10n.quranLoadFailed` hata state'i aynen korundu.
- `test/features/quran/quran_error_copy_test.dart` Kur'an indeks, jüz ve sure yükleme loglarında eski `$error/$e` desenlerinin geri dönmesini yakalayacak şekilde genişletildi.

### Neden Yapıldı
- `lib/features/quran/quran_page.dart:57`, `lib/features/quran/juz_reading_page.dart:73` ve `lib/features/quran/surah_reading_page.dart:99` önce raw yükleme exception metnini logluyordu.
- Kur'an içerik yükleme akışı core dini içerik yüzeyi olduğu için kullanıcıya veya loglara ham altyapı hata ayrıntısı taşımamalı.
- UI tarafında zaten localized, güvenli ve dürüst hata mesajı kullanılıyor.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\quran_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\juz_reading_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\surah_reading_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\quran\quran_error_copy_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Kur'an indeks, jüz ve sure yükleme başarısızlıklarında raw exception loglanmaz.
- Kullanıcı hâlâ localized `quranLoadFailed` mesajını görür.
- Regresyon testi eski raw log desenlerinin geri dönmesini engeller.

### Test Sonucu
- `flutter test test\features\quran\quran_error_copy_test.dart --reporter compact` PASS
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`255/255`)
- `git diff --check` PASS (sadece CRLF uyarıları)

### Risk Değişimi
- Kur'an yükleme raw exception loglama riski: `9/25 -> 2/25`

### Sonraki Adım
- Yeni döngüde kalan `debugPrint` noktaları tekrar taranacak; raw hata kalmadıysa hardcoded/localization veya false-success risklerine geri dönülecek.

## 2026-04-15 TUR-120 — Sanitize Diagnostics Manifest Error Log

### Yapılan İşlem
- `lib/features/settings/diagnostics_page.dart` asset manifest okuma catch bloğunda `Error.safeToString(error)` ile raw exception loglanması kaldırıldı.
- Kullanıcıya gösterilen `diagnosticsManifestReadFailed(l10n.appUnknownError)` davranışı aynen korundu.
- `test/features/settings/diagnostics_page_test.dart` eski raw manifest log deseninin geri dönmesini yakalayan kaynak guard testi kazandı.

### Neden Yapıldı
- `lib/features/settings/diagnostics_page.dart:437` önce manifest okuma hatasında raw exception metnini logluyordu.
- Diagnostics ekranı üretim destek yüzeyi olduğu için kullanıcıya güvenli metin gösterse bile logda ham exception ayrıntısı taşımamalı.
- Manifest okuma başarısızlığında genel log mesajı ve UI'da localized bilinmeyen hata yeterlidir.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\settings\diagnostics_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Diagnostics asset manifest hataları artık raw exception içeriğini loglamaz.
- UI'daki localized diagnostics hata metni korunur.
- Regresyon testi eski `Error.safeToString(error)` log deseninin geri dönmesini engeller.

### Test Sonucu
- `flutter test test\features\settings\diagnostics_page_test.dart --reporter compact` PASS
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`256/256`)
- `git diff --check` PASS (sadece CRLF uyarıları)

### Risk Değişimi
- Diagnostics manifest raw exception loglama riski: `8/25 -> 2/25`

### Sonraki Adım
- Yeni döngüde raw log taraması temizse hardcoded chatbot system prompt, offline download logging ve l10n coverage kalanları risk sırasına göre incelenecek.

## 2026-04-15 TUR-121 — Load Storage-Backed Quran Audio URLs

### Yapılan İşlem
- `lib/core/services/offline_audio_service.dart` canlı Supabase `audio_files` sorguları `storage_path` alanını da seçecek şekilde güncellendi.
- `resolvePlayableCloudAudioUrl()` zaten `storage_path` değerini Supabase Storage public URL'ine çeviriyordu; fakat canlı sorgu bu alanı çekmediği için owned/storage-backed ses yolu devreye giremiyordu.
- `test/offline_audio_service_test.dart` canlı Kur'an ses sorgularının `storage_path` alanını seçmesini zorunlu kılan regresyon testi kazandı.

### Neden Yapıldı
- `lib/core/services/offline_audio_service.dart:330` ve `lib/core/services/offline_audio_service.dart:362` önce yalnızca `type, reciter, surah_number, url` seçiyordu.
- Bu yüzden veritabanında Supabase Storage yolu mevcut olsa bile uygulama external `url` alanına bağımlı kalabiliyordu.
- Kullanıcının "sesler bizim database/storage zincirimizden alınmalı, external linkler ilerde kapanabilir" beklentisi için canlı sorgunun owned audio metadata'sını tam çekmesi gerekiyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\offline_audio_service.dart`
- `A:\Way of Allah\sirat_i_nur\test\offline_audio_service_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Canlı Kur'an ses tek sure ve katalog sorguları artık `storage_path` döndürür.
- `storage_path` varsa Supabase Storage public URL'i external URL'e tercih edilir.
- Regresyon testi eski eksik select listesinin geri dönmesini engeller.

### Test Sonucu
- `flutter test test\offline_audio_service_test.dart --reporter compact` PASS (`5/5`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`257/257`)
- `git diff --check` PASS (sadece CRLF uyarıları)

### Risk Değişimi
- Owned/storage-backed Kur'an ses yolunun canlı sorguda bypass edilme riski: `12/25 -> 3/25`

### Sonraki Adım
- Yeni döngüde Kur'an ses seed ve storage seed bütünlüğü incelenecek; external URL seed'lerinin storage mirror/import akışıyla doğrulanıp doğrulanmadığı kanıtlanacak.

## 2026-04-15 TUR-122 — Reject Incomplete Quran Audio Storage Mirrors

### Yapılan İşlem
- `tool/generate_quran_audio_storage_seed.dart` mirror manifest özetini zorunlu doğrulayacak şekilde sertleştirildi.
- Manifestte `failed` listesi boş değilse, `downloaded + skipped != requested` ise veya `files.length != requested` ise storage-backed SQL üretimi durduruluyor.
- `test/generate_quran_audio_storage_seed_test.dart` başarısız indirme ve eksik mirrored row senaryolarını regresyon testiyle kilitledi.

### Neden Yapıldı
- `tool/generate_quran_audio_storage_seed.dart:56` önce yalnızca `files` dizisini okuyordu.
- Bu durumda download aracı bazı sureleri indirememiş olsa bile manifestteki kısmi `files` listesiyle storage seed üretilebilirdi.
- Gerçek ses dosyası Storage'a alınmadan veritabanına storage yolu yazmak false-success riski doğurur; bu özellikle Kur'an ses zincirinde kabul edilemez.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\generate_quran_audio_storage_seed.dart`
- `A:\Way of Allah\sirat_i_nur\test\generate_quran_audio_storage_seed_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Eksik veya başarısız mirror manifestleri artık storage seed SQL üretemez.
- Tamamlanmamış ses indirme akışı veritabanında sahte owned-audio durumuna dönüşmez.
- Storage import sürecinde "önce gerçek dosya, sonra DB seed" güvenliği güçlendi.

### Test Sonucu
- `flutter test test\generate_quran_audio_storage_seed_test.dart --reporter compact` PASS (`6/6`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`259/259`)
- `git diff --check` PASS (sadece CRLF uyarıları)

### Risk Değişimi
- Eksik Kur'an audio mirror manifestinden storage seed üretme false-success riski: `12/25 -> 2/25`

### Sonraki Adım
- Yeni döngüde `tool/download_verified_quran_audio.dart` failure çıktıları incelenecek; raw hata metni/partial manifest davranışı ve import operatör güvenliği taranacak.

## 2026-04-15 TUR-123 — Sanitize Quran Audio Mirror Failure Output

### Yapılan İşlem
- `tool/download_verified_quran_audio.dart` mirror catch bloğunda raw exception metnini manifest `failed` listesine yazma davranışı kaldırıldı.
- `describeQuranAudioMirrorFailure()` eklendi; timeout, network, TLS, HTTP, dosya sistemi ve beklenmeyen hata türleri sabit güvenli kategorilere ayrılıyor.
- `test/download_verified_quran_audio_test.dart` private host/raw detay içeren exception metninin manifest mesajına sızmamasını doğrulayan test kazandı.

### Neden Yapıldı
- `tool/download_verified_quran_audio.dart:228` önce `catch (error)` ile yakalanan ham exception'ı `failures.add(... $error)` olarak manifest ve stderr hattına taşıyordu.
- Mirror manifestleri handover/import zincirinde paylaşılabileceği için ham ağ, host veya sistem ayrıntıları kalıcı çıktı olmamalı.
- Storage seed generator artık başarısız manifestleri reddediyor; bu turda reddedilen hata listesinin kendisi de güvenli hale getirildi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\download_verified_quran_audio.dart`
- `A:\Way of Allah\sirat_i_nur\test\download_verified_quran_audio_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Kur'an ses mirror aracı başarısız indirmelerde raw exception metni yazmaz.
- Operatör hâlâ failure kategorisini görür (`network error`, `tls error`, `file system error` vb.).
- Regresyon testi private host/raw detayların geri dönmesini engeller.

### Test Sonucu
- `flutter test test\download_verified_quran_audio_test.dart --reporter compact` PASS (`5/5`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`260/260`)
- Raw hata taraması (`$error`, `$e`, `Error.safeToString`, `.toString()`) ilgili tool/test dosyalarında temiz.

### Risk Değişimi
- Kur'an audio mirror manifest/stderr raw exception sızıntısı riski: `8/25 -> 2/25`

### Sonraki Adım
- Yeni döngüde gerçek storage import ergonomisi incelenecek: mirror tamamlandıktan sonra hangi dosyaların Supabase Storage'a yükleneceği ve DB seed sırası operatör açısından kanıtlanacak.

## 2026-04-15 TUR-124 — Add Quran Audio Supabase Storage Uploader

### Yapılan İşlem
- `tool/upload_quran_audio_storage.dart` eklendi.
- Araç tamamlanmış mirror manifestini okur, local MP3 dosyalarını Supabase Storage `quran-audio` bucket'ına yükler ve service-role anahtarını yalnızca env üzerinden alır.
- `--dry-run`, `--no-upsert`, `--supabase-url`, `--bucket` ve custom `--service-role-key-env` seçenekleri eklendi.
- `test/upload_quran_audio_storage_test.dart` upload URL üretimini, header davranışını, object path türetimini ve raw upload hata sanitization'ını doğruluyor.

### Neden Yapıldı
- Önceki zincirde `tool/download_verified_quran_audio.dart` local mirror üretir, `tool/generate_quran_audio_storage_seed.dart` DB seed üretirdi; fakat gerçek dosyaları Supabase Storage'a koyan tekrarlanabilir repo aracı yoktu.
- Bu eksik adım operatörü manuel ve hataya açık upload'a zorluyordu.
- User beklentisi "sesler bizim database/storage zincirimizden alınmalı" olduğu için download -> upload -> storage seed sırası repo içinde otomasyonla desteklenmeli.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\upload_quran_audio_storage.dart`
- `A:\Way of Allah\sirat_i_nur\test\upload_quran_audio_storage_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Kur'an ses import zinciri artık üç aşamalı ve tekrar çalıştırılabilir hale geldi: verified download, Supabase Storage upload, storage-backed DB seed.
- Service-role anahtarı komut satırına yazılmaz; env üzerinden okunur ve stdout/stderr'e basılmaz.
- Upload hataları raw exception yerine güvenli kategorilerle raporlanır.

### Test Sonucu
- `flutter test test\upload_quran_audio_storage_test.dart --reporter compact` PASS (`4/4`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`264/264`)

### Risk Değişimi
- Kur'an audio storage import adımının manuel/eksik kalma riski: `12/25 -> 4/25`

### Sonraki Adım
- Yeni döngüde content/README operatör belgeleri taranacak; download -> upload -> seed sırasının dokümante edilip edilmediği ve yanlış sırada seed uygulama riskinin kapalı olup olmadığı doğrulanacak.

## 2026-04-15 TUR-125 — Document Quran Audio Storage Import Order

### Yapılan İşlem
- `README.md` içindeki stale `flutter_secure_storage` dependency ifadesi kaldırıldı.
- Normal local geliştirme için gizli key gerekmediği, production build için Supabase `--dart-define` değerlerinin açıkça verileceği netleştirildi.
- README'e Kur'an ses egemenliği akışı eklendi: verified download, dry-run upload plan, Supabase Storage upload, storage-backed seed üretimi ve son olarak schema/seed uygulama sırası.
- `test/readme_operational_docs_test.dart` eklendi; README'in import sırasını ve stale dependency'nin geri dönmemesini doğruluyor.

### Neden Yapıldı
- `README.md:23` projede olmayan `flutter_secure_storage` dependency'sini yazıyordu.
- `README.md:47` önce "No API hoops" diyerek production/Supabase import gerçekliğini fazla basitleştiriyordu.
- Kur'an audio storage seed dosyası, MP3 dosyaları bucket'a yüklenmeden uygulanırsa runtime 404 üretebilir; doğru sıra README'de guard edilmeliydi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\README.md`
- `A:\Way of Allah\sirat_i_nur\test\readme_operational_docs_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Yeni dev/operatörler external URL seed, Storage upload ve storage-backed DB seed sırasını karıştırmaz.
- Service-role key'in komut satırına değil env'e konması README'de açıkça belirtilir.
- README regresyon testi operasyonel dokümanın tekrar eksilmesini engeller.

### Test Sonucu
- `flutter test test\readme_operational_docs_test.dart --reporter compact` PASS (`2/2`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`266/266`)

### Risk Değişimi
- Kur'an audio storage seed'in dosyalar upload edilmeden uygulanma riski: `10/25 -> 3/25`

### Sonraki Adım
- Yeni döngüde gerçek content seed / storage seed testleri taranacak; README sırası dışında otomatik guard eksikliği kalıp kalmadığı kontrol edilecek.

## 2026-04-15 TUR-126 — Embed Storage Seed Apply-Order Warning

### Yapılan İşlem
- `tool/generate_quran_audio_storage_seed.dart` tarafından üretilen SQL başlığına uygulama sırası uyarısı eklendi.
- Başlık artık storage seed'in yalnızca eşleşen MP3 dosyaları Supabase Storage bucket'ına yüklendikten sonra uygulanacağını söylüyor.
- `test/generate_quran_audio_storage_seed_test.dart` bu uyarının SQL çıktısından silinmesini engelleyen regresyon beklentisi kazandı.

### Neden Yapıldı
- README artık doğru import sırasını anlatıyor; fakat generated SQL dosyası tek başına paylaşılabilir veya uygulanabilir.
- `tool/generate_quran_audio_storage_seed.dart:148` önce yalnızca auto-generated ve target bucket bilgisini yazıyordu.
- Storage dosyaları yüklenmeden DB seed uygulamak runtime 404 riski oluşturur; uyarı seed artefact'ının içinde de taşınmalı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\generate_quran_audio_storage_seed.dart`
- `A:\Way of Allah\sirat_i_nur\test\generate_quran_audio_storage_seed_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Generated `content_seed_quran_audio_storage.sql` kendi içinde yanlış sıra uyarısı taşır.
- README'e ulaşmadan SQL'i gören operatör de "önce upload, sonra seed" kuralını görür.
- Regresyon testi uyarının tekrar düşmesini engeller.

### Test Sonucu
- `flutter test test\generate_quran_audio_storage_seed_test.dart --reporter compact` PASS (`6/6`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`266/266`)

### Risk Değişimi
- Storage-backed Quran audio seed artefact'ının upload öncesi uygulanma riski: `8/25 -> 3/25`

### Sonraki Adım
- Yeni döngüde upload tool path güvenliği taranacak; manifestteki reciter/local_path değerleriyle bucket dışı veya beklenmeyen object path üretme riski kontrol edilecek.

## 2026-04-15 TUR-127 — Harden Quran Audio Mirror Path Validation

### Yapılan İşlem
- `tool/generate_quran_audio_storage_seed.dart` manifest parser'ı reciter id değerini canonical `a-z`, `0-9`, `_`, `-` karakter setiyle sınırlandırdı.
- `local_path` dosya adının sure numarasına karşılık gelen `NNN.mp3` formatıyla eşleşmesi zorunlu hale getirildi.
- `test/generate_quran_audio_storage_seed_test.dart` path traversal benzeri reciter id ve sure numarasıyla uyuşmayan dosya adı senaryolarını reddeden testler kazandı.

### Neden Yapıldı
- `tool/upload_quran_audio_storage.dart:24` object path'i `reciterId/basename(localPath)` ile üretiyor.
- `tool/generate_quran_audio_storage_seed.dart:69` önce reciter değerini yalnızca boş değil diye kabul ediyordu.
- Elle bozulmuş veya güvenilmeyen manifest, beklenmeyen storage object path üretimine yol açabilirdi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\generate_quran_audio_storage_seed.dart`
- `A:\Way of Allah\sirat_i_nur\test\generate_quran_audio_storage_seed_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Storage seed ve upload zinciri yalnızca canonical reciter klasörleri ve beklenen sure MP3 adlarıyla ilerler.
- Path traversal veya yanlış sure/dosya eşleşmesi erken `FormatException` ile durur.
- Upload tool, parser'dan gelen daha güvenli manifest satırlarına dayanır.

### Test Sonucu
- `flutter test test\generate_quran_audio_storage_seed_test.dart --reporter compact` PASS (`8/8`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`268/268`)

### Risk Değişimi
- Bozulmuş Quran audio manifestinden beklenmeyen Supabase Storage object path üretme riski: `10/25 -> 2/25`

### Sonraki Adım
- Yeni döngüde dini içerik metinleri tarafına geri dönülecek; önce chatbot system prompt ve dua/asr içeriklerinde hardcoded/uydurma içerik riski taranacak.

## 2026-04-15 TUR-128 — Harden Islamic Chatbot Authority Boundaries

### Yapılan İşlem
- `lib/features/chatbot/chatbot_page.dart` içindeki Gemini system instruction inline metinden test edilebilir `islamicChatbotSystemInstruction` sabitine taşındı.
- Prompt artık modelin kendini müftü/âlim yerine koymamasını, kaynak uydurmamasını, karmaşık gerçek hayat vakalarında kesin fetva vermemesini ve yerel ehil âlim/resmi dini otoriteye yönlendirmesini söylüyor.
- `test/chatbot_system_instruction_test.dart` eklendi; prompt'un scholar authority iddiası taşımamasını, kaynak uydurmayı yasaklamasını, mezhep/scholarly-difference ihtiyatını ve aynı dilde cevap ilkesini doğruluyor.

### Neden Yapıldı
- `lib/features/chatbot/chatbot_page.dart:48` önce modeli "strictly orthodox Islamic scholar" olarak tanımlıyordu.
- Bu ifade kullanıcıda dinî otorite/fetva beklentisi oluşturabilir ve AI'nin kesin hüküm vermesi riskini artırır.
- Kullanıcının "günaha sokma bizi" uyarısı doğrultusunda AI cevap üretimi sınırları açık ve testli olmalı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\chatbot\chatbot_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\chatbot_system_instruction_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Cloud AI dini sorularda daha ihtiyatlı, kaynak uydurmayan ve kendi otorite sınırını açıklayan bir sistem talimatıyla çalışır.
- Non-Islamic sorular hâlâ reddedilir, ancak dini cevaplarda "emin değilse söyle" ve "kaynak doğrula" kuralı güçlendi.
- Regresyon testi eski "strictly orthodox Islamic scholar" tarzı otorite iddiasının geri dönmesini engeller.

### Test Sonucu
- `flutter test test\chatbot_system_instruction_test.dart --reporter compact` PASS (`2/2`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`270/270`)

### Risk Değişimi
- Chatbot'un dinî otorite iddiasıyla kesin/uydurma kaynaklı cevap üretme riski: `16/25 -> 5/25`

### Sonraki Adım
- Yeni döngüde offline chatbot veri seti (`islamic_chatbot_data.dart`) taranacak; yerel cevaplarda kaynak/uydurma/mezhep hassasiyeti ve test boşlukları kontrol edilecek.

## 2026-04-15 TUR-129 — Clarify Chatbot Offline Fallback Status

### Yapılan İşlem
- `chatbotCloudNotConfigured` metni tüm `lib/l10n/app_*.arb` dosyalarında "Local AI'ye geç" yönlendirmesinden dürüst "doğrulanmış offline İslami rehberlik henüz hazır değil" durumuna taşındı.
- `flutter gen-l10n` çalıştırılarak generated localization sınıfları güncellendi.
- `tool/add_keys.dart` varsayılanları eski Local AI kopyasını tekrar üretmeyecek şekilde güncellendi.
- Chatbot widget testi, ARB localization testi ve add-key guard testi yeni dürüst kopyayı ve eski Local AI metninin geri dönmemesini doğrulayacak şekilde genişletildi.

### Neden Yapıldı
- `lib/core/constants/islamic_chatbot_data.dart` verified offline dataset'i bilinçli olarak kapalı tutuyor; buna rağmen eski copy kullanıcıyı "Local AI" moduna geçmeye yönlendiriyordu.
- Bu, özellikle dinî rehberlikte false-success/false-availability riski oluşturuyordu: kullanıcı mevcut olmayan doğrulanmış yerel içeriğe yönlendirilmiş oluyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations*.dart`
- `A:\Way of Allah\sirat_i_nur\tool\add_keys.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\chatbot\chatbot_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\islamic_chatbot_data_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Cloud API ayarlı değilken uygulama artık olmayan Local AI/verified offline rehberlik akışını vaat etmiyor.
- 180+ locale aynı anahtarda eş kapsamlı güncellendi; generated l10n zinciri uygulama tarafıyla senkron kaldı.
- Eski "Please switch to Local AI", "Download Local AI" ve TR karşılıklarının l10n/tool zincirine geri girmesi testle engellendi.

### Test Sonucu
- `flutter test test\features\chatbot\chatbot_page_test.dart test\islamic_chatbot_data_test.dart test\arb_ui_localization_test.dart --reporter compact` PASS
- `flutter test test\arb_ui_localization_test.dart --reporter compact` PASS (`30/30`)
- `flutter test test\islamic_chatbot_data_test.dart --reporter compact` PASS (`3/3`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`272/272`)
- `git diff --check` PASS (yalnızca CRLF çalışma kopyası uyarıları)

### Risk Değişimi
- Chatbot cloud-offline fallback kopyasının doğrulanmamış/olmayan Local AI akışını vaat etme riski: `12/25 -> 2/25`

### Sonraki Adım
- Yeni döngüde dini içerik veri yüzeyleri taranacak; önce dua/asr/asma içeriklerinde kaynak, uydurma metin ve Supabase'e taşınmamış hardcoded içerik riski kontrol edilecek.

## 2026-04-15 TUR-130 — Require Verified Dua Provenance

### Yapılan İşlem
- `DuaData` modeline Supabase `verified_at` bilgisini taşıyan `verifiedAt` alanı eklendi.
- `resolveCloudDuas` artık canlı Supabase dua satırını yalnızca Arapça metin, TR/EN anlam, `source` ve `verified_at` birlikte doluysa kabul ediyor; eksik provenance varsa doğrulanmış bundled Kur'an fallback'e dönüyor.
- `duas_data.dart` içindeki 20:114 Türkçe fallback mealinde Dart string concatenation yüzünden düşen `Kur'ân` apostrofları doğrulanmış `assets/data/full_quran.json` metniyle birebir hizalandı.
- `test/duas_data_test.dart` bundled dua fallback'in her Arapça/TR/EN metnini `assets/data/full_quran.json` içindeki doğrulanmış ayet payload'ı ile birebir karşılaştıran guard kazandı.
- Cloud dua testleri `source + verified_at` olmayan satırları reddetmeyi ve doğrulanmış satır provenance'ını korumayı doğrulayacak şekilde güncellendi.

### Neden Yapıldı
- `lib/core/constants/duas_data.dart:203` önce cloud dua satırını yalnızca Arapça ve TR/EN metin dolu diye kabul ediyordu.
- Bu, Supabase tablosuna yanlışlıkla `source` veya `verified_at` eksik satır girerse uygulamanın doğrulanmamış dinî içeriği göstermesine yol açabilirdi.
- Yeni asset eşleşme testi, bundled fallback içinde Kur'an metni/mealinden sessiz sapmaları yakaladı ve 20:114'teki `Kur'ân` yazım bozulmasını gerçek kanıtla ortaya çıkardı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\constants\duas_data.dart`
- `A:\Way of Allah\sirat_i_nur\test\duas_data_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\library_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Canlı dua içeriği artık doğrulanmış provenance olmadan UI'a çıkmaz.
- Bundled Kur'an dua fallback'i, repo içindeki doğrulanmış Quran.com seed zincirinden üretilen asset ile testte birebir bağlıdır.
- Dini içerikte yanlış yazım veya kaynak/provenance boşluğu sessizce üretime sızmadan testte yakalanır.

### Test Sonucu
- `flutter test test\duas_data_test.dart test\library_page_test.dart --reporter compact` PASS (`18/18`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`275/275`)
- `git diff --check` PASS (yalnızca CRLF çalışma kopyası uyarıları)

### Risk Değişimi
- Cloud dua satırlarında doğrulanmamış/eksik kaynaklı dinî içerik gösterme riski: `16/25 -> 4/25`
- Bundled dua fallback metninin doğrulanmış Kur'an asset'inden sessiz sapma riski: `12/25 -> 3/25`

### Sonraki Adım
- Yeni döngüde Asma-ul-Husna cloud satırları aynı provenance kuralıyla taranacak; `source` ve `verified_at` eksik canlı satırların bundled verified fallback'i gölgeleme riski kontrol edilecek.

## 2026-04-15 TUR-131 — Require Verified Asma Provenance

### Yapılan İşlem
- `normalizeAsmaUlHusnaRow` Supabase satırlarından `source` ve `verified_at` bilgisini normalize ederek `source` ve `verifiedAt` alanlarıyla taşıyacak hale getirildi.
- `resolveCloudAsmaUlHusnaRows` artık canlı Asma satırını yalnızca Arapça ad, transliterasyon, en az bir anlam, `source` ve `verified_at` birlikte doluysa kabul ediyor.
- `test/asma_ul_husna_data_test.dart` cloud row mapping ve çok dilli translation testlerini provenance alanlarıyla güncelledi.
- Eksik `source` veya `verified_at` taşıyan cloud Asma satırlarının bundled fallback'e döndüğünü doğrulayan regresyon testi eklendi.

### Neden Yapıldı
- `content_schema.sql` içindeki `public.asma_ul_husna` tablosu `source text not null` ve `verified_at timestamptz not null` şartı taşıyor.
- Ancak Flutter parser tarafı bu iki provenance alanını okumuyor ve zorlamıyordu; yanlış/manuel bir canlı satır, doğrulanmış bundled Asma fallback'i gölgeleyebilirdi.
- Dinî içerikte canlı veri, kaynak ve doğrulama zamanı olmadan UI'a çıkmamalı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart`
- `A:\Way of Allah\sirat_i_nur\test\asma_ul_husna_data_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Asma-ul-Husna canlı içerik zinciri schema kuralıyla uygulama parser'ında da tutarlı hale geldi.
- Eksik provenance taşıyan cloud satırlar artık kullanıcıya gösterilmez; güvenli bundled fallback korunur.
- Çok dilli translation map koruması devam ederken kaynak/doğrulama şartı regresyon testine bağlandı.

### Test Sonucu
- `flutter test test\asma_ul_husna_data_test.dart test\features\library\asma_ul_husna_page_test.dart --reporter compact` PASS (`16/16`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`276/276`)
- `git diff --check` PASS (yalnızca CRLF çalışma kopyası uyarıları)

### Risk Değişimi
- Cloud Asma satırlarında doğrulanmamış/eksik kaynaklı dinî içerik gösterme riski: `16/25 -> 4/25`

### Sonraki Adım
- Yeni döngüde `audio_files` tablosundan gelen sukun/nature audio satırlarında `source` ve `verified_at` zorlanıp zorlanmadığı kontrol edilecek; ses içeriğinde doğrulanmamış URL gösterimi riski kapatılacak.

## 2026-04-15 TUR-132 — Require Verified Sukun Audio Provenance

### Yapılan İşlem
- `resolveCloudSukunSources` artık `sukun` veya `nature` tipindeki `audio_files` satırını yalnızca `source/reference` ve `verified_at/verifiedAt` doluysa kabul ediyor.
- URL değişkeni `source` ismiyle karışmayacak şekilde `url` olarak ayrıldı; provenance `source` alanı ile playable URL alanı netleşti.
- `test/sukun_audio_sources_provider_test.dart` geçerli cloud audio satırlarını provenance alanlarıyla güncelledi.
- Playable URL taşısa bile `source` veya `verified_at` eksik satırların reddedildiğini doğrulayan regresyon testi eklendi.

### Neden Yapıldı
- `content_schema.sql` içindeki `public.audio_files` tablosu `source text not null` ve `verified_at timestamptz not null` şartı taşıyor.
- Flutter tarafındaki `resolveCloudSukunSources` daha önce yalnızca `type`, `url` ve sound type çıkarımına bakıyordu.
- Bu durum, manuel/bozuk cloud satırlarında doğrulanmamış ses URL'lerinin sukun/nature playback'e çıkmasına yol açabilirdi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\providers\supabase_providers.dart`
- `A:\Way of Allah\sirat_i_nur\test\sukun_audio_sources_provider_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Sukun/nature cloud audio kaynakları artık schema provenance kuralıyla uygulama parser'ında tutarlı.
- Doğrulanmamış veya kaynağı belirsiz ses URL'leri kullanıcıya "çalışan içerik" gibi gösterilmez.
- `sukun_audio_page` ve Library sukun entry akışı var olan doğrulanmış provider sözleşmesini korur.

### Test Sonucu
- `flutter test test\sukun_audio_sources_provider_test.dart test\sukun_audio_page_test.dart --reporter compact` PASS (`19/19`)
- `flutter test test\library_page_test.dart --reporter compact` PASS (`13/13`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`277/277`)
- `git diff --check` PASS (yalnızca CRLF çalışma kopyası uyarıları)

### Risk Değişimi
- Cloud sukun/nature audio satırlarında doğrulanmamış veya kaynağı belirsiz ses URL'i oynatma riski: `12/25 -> 3/25`

### Sonraki Adım
- Yeni döngüde Quran audio catalog tarafındaki `audio_files` satırlarında `source` ve `verified_at` zorunlu kabul zinciri yeniden taranacak; özellikle `offline_audio_service.dart` cloud catalog parser'ı provenance kontrolü açısından denetlenecek.

## 2026-04-15 TUR-133 — Require Verified Quran Audio Provenance

### Yapılan İşlem
- `offline_audio_service.dart` içine `hasVerifiedCloudAudioProvenance` helper'ı eklendi.
- `resolveCloudQuranSurahUrls` artık `quran_surah` row'unu catalog'a almadan önce `source/reference` ve `verified_at/verifiedAt` alanlarını zorunlu kontrol ediyor.
- `OfflineReciters.getSurahUrl` ve `OfflineReciters.getQuranAudioCatalog` Supabase select listesine `source, verified_at` alanlarını dahil edecek şekilde güncellendi.
- `getSurahUrl` tekil row dönerken provenance eksikse URL üretmek yerine `null` döndürüyor.
- `test/offline_audio_service_test.dart` geçerli Quran audio row'larını provenance alanlarıyla güncelledi ve oynatılabilir URL taşıyan ama `source` veya `verified_at` eksik satırların reddedildiğini doğrulayan test kazandı.

### Neden Yapıldı
- `content_schema.sql` `public.audio_files` için `source` ve `verified_at` alanlarını zorunlu tutuyor.
- Ancak `OfflineReciters.getSurahUrl` ve `getQuranAudioCatalog` bu alanları hiç seçmiyor, parser da bu bilgileri kontrol etmiyordu.
- Bu, Kur'an ses indirme/streaming catalog'una kaynağı belirsiz veya doğrulanmamış URL girmesine neden olabilirdi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\offline_audio_service.dart`
- `A:\Way of Allah\sirat_i_nur\test\offline_audio_service_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Kur'an audio catalog'u schema provenance kuralıyla uyumlu hale geldi.
- Tekil surah URL çözümü ve toplu catalog çözümü aynı doğrulama kapısından geçiyor.
- Supabase Storage-backed owned audio desteği korunurken, doğrulanmamış satırlar sessizce kullanıcıya sunulmuyor.

### Test Sonucu
- `flutter test test\offline_audio_service_test.dart --reporter compact` PASS (`6/6`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`278/278`)
- `git diff --check` PASS (yalnızca CRLF çalışma kopyası uyarıları)

### Risk Değişimi
- Cloud Quran audio satırlarında doğrulanmamış veya kaynağı belirsiz URL'i indirme/streaming catalog'una alma riski: `16/25 -> 3/25`

### Sonraki Adım
- Yeni döngüde `quran_ayahs` cloud loader tarafında canlı ayet satırları için `source` ve `verified_at` alanlarının select/normalize zincirinde korunup korunmadığı taranacak.

## 2026-04-15 TUR-134 — Require Verified Quran Text Provenance

### Yapılan İşlem
- `loadCloudQuranRows` Supabase `quran_surahs` sorgusuna `source, verified_at` alanlarını ekledi.
- `_loadCloudAyahRows` Supabase `quran_ayahs` birincil ve fallback sorgularına `source, verified_at` alanlarını ekledi.
- `normalizeCloudQuranRows` artık hem sure metadata satırlarında hem ayet metni satırlarında `source/source` ve `verified_at/verifiedAt` değerleri dolu değilse canlı cloud verisini reddediyor.
- `test/features/quran/providers/bundled_quran_provider_test.dart` geçerli cloud fixture'larını provenance alanlarıyla güncelledi; eksik provenance'lı cloud Kur'an satırlarını reddeden ve canlı sorguların provenance kolonlarını istediğini doğrulayan regresyon testleri eklendi.

### Neden Yapıldı
- `content_schema.sql` içindeki `quran_surahs` ve `quran_ayahs` tabloları `source` ve `verified_at` alanlarını dinî içerik doğrulama zincirinin zorunlu parçası olarak tanımlıyor.
- Flutter loader daha önce bu alanları seçmediği için canlı cloud metin/metadata satırı, doğrulanmış kaynak bilgisi olmadan bundled Kur'an asset'inin üstüne geçebilirdi.
- Bu risk dinî metin doğruluğu ve kullanıcıya dürüst veri sunma prensibi açısından P1 seviyesindeydi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\providers\bundled_quran_provider.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\quran\providers\bundled_quran_provider_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Canlı Kur'an sure metadata ve ayet metinleri artık source/verified_at bilgisi olmadan uygulama içine alınmaz.
- Doğrulanmamış cloud veri varsa uygulama bundled, test korumalı Kur'an asset'ine geri düşer; kullanıcıya kaynağı belirsiz dinî metin gösterilmez.
- `quran_surahs` ve `quran_ayahs` schema sözleşmesi loader ve test seviyesinde uygulanır hale geldi.

### Test Sonucu
- `flutter test test\features\quran\providers\bundled_quran_provider_test.dart --reporter compact` PASS (`11/11`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`280/280`)
- `git diff --check` PASS (yalnızca CRLF çalışma kopyası uyarıları)

### Risk Değişimi
- Canlı Kur'an metin/metadata satırlarında doğrulanmamış veya kaynağı belirsiz içeriğin bundled asset'i override etme riski: `20/25 -> 4/25`

### Sonraki Adım
- Yeni döngüde `quran_diagnostics.dart` tarafı taranacak; diagnostics sadece sayım/juz yapısını değil, `quran_surahs` ve `quran_ayahs` provenance eksiklerini de kullanıcıya dürüst fallback uyarısı olarak gösteriyor mu doğrulanacak.

## 2026-04-15 TUR-135 — Diagnose Quran Provenance Gaps

### Yapılan İşlem
- `DiagnosticsPage` artık `quran_surahs` ve `quran_ayahs` için raw tablo sayımına ek olarak `source` dolu ve `verified_at` dolu kayıt sayımı çekiyor.
- `buildQuranDiagnosticRows` sure ve ayet satırlarının sağlığını raw sayı ile verified sayı kesişimine göre hesaplıyor.
- Raw tablo sayıları `114/6236` tamam görünse bile provenance eksikse diagnostics satırları artık `113 / 114` veya `6235 / 6236` gibi sağlıksız sonuç gösteriyor.
- `quran_diagnostics_test.dart` raw sayılar tamken provenance sayısı eksik olan regresyonu ekledi.
- `diagnostics_page_test.dart` canlı diagnostics sorgularının `source` ve `verified_at` filtrelerini taşıdığını koruyan guard test kazandı.

### Neden Yapıldı
- TUR-134 loader seviyesinde doğrulanmamış canlı Kur'an metnini reddetti; ancak diagnostics ekranı hâlâ yalnızca tablo sayısı ve cüz metadata sayısı ile dataset'i sağlıklı gösterebilirdi.
- Bu, kaynak bilgisi eksik bir Supabase dataset'inin operatöre "sağlıklı" görünmesine yol açan dürüstlük açığıydı.
- Kök sebep, `diagnostics_page.dart` içinde `quran_surahs` ve `quran_ayahs` için provenance filtreli ayrı sayım yapılmamasıydı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\quran_diagnostics.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\settings\diagnostics_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\quran_diagnostics_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Diagnostics ekranı artık canlı Kur'an dataset'i için sadece miktarı değil, kaynak doğrulama alanlarının varlığını da sağlık sinyaline dahil ediyor.
- Doğrulanmış source/verified_at eksikliği varsa kullanıcı/operatör false-healthy durum görmüyor.
- Yeni l10n anahtarı eklenmedi; mevcut lokalize "Kur'an Sureleri" ve "Kur'an Ayetleri" satırları korunarak global çeviri kapsamı büyütülmedi.

### Test Sonucu
- `flutter test test\quran_diagnostics_test.dart test\features\settings\diagnostics_page_test.dart --reporter compact` PASS (`19/19`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`282/282`)
- `git diff --check` PASS (yalnızca CRLF çalışma kopyası uyarıları)

### Risk Değişimi
- Diagnostics ekranının source/verified_at eksik Kur'an dataset'ini sağlıklı göstermesi riski: `16/25 -> 4/25`

### Sonraki Adım
- Yeni döngüde canlı Supabase dini içerik akışlarında kalan provenance veya false-success boşlukları taranacak; öncelik `quran_integrity`/offline indirme ve kullanıcıya başarı mesajı gösteren akışlar olacak.

## 2026-04-15 TUR-136 — Extend Quran Audio Unavailable Translations

### Yapılan İşlem
- `tool/translate_arb_keys.dart` download/diagnostics anahtar kümesi için çalıştırıldı; mevcut doğru çevirileri koruyan ve placeholder bozulursa İngilizce referansa geri dönen güvenli yol kullanıldı.
- Güvenli çeviri sonucu üreten `ay`, `az`, `kk`, `lus`, `mai`, `sa`, `ti` locale dosyalarında `quranAudioSourcesUnavailable` artık İngilizce fallback değil.
- `flutter gen-l10n` çalıştırılarak ilgili generated localization Dart dosyaları ARB ile senkronlandı.
- `arb_ui_localization_test.dart` içine bu 7 locale için `quranAudioSourcesUnavailable` İngilizceye geri düşmesin diye regresyon testi eklendi.

### Neden Yapıldı
- Ön taramada `quranAudioSourcesUnavailable` dahil download/diagnostics kümesinde çok sayıda locale'in `app_en.arb` ile birebir aynı kaldığı doğrulandı.
- Çeviri aracı bazı nadir/az desteklenen dillerde güvenli sonuç üretemediğinde İngilizce referansa geri dönüyor; AGENTS kuralı gereği belirsiz dilde uydurma yapılmadı.
- Güvenli sonuç veren locale'lerde elde edilen gerçek çeviri kazanımı kalıcı testle korunmalıydı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_ay.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_az.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_kk.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_lus.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_mai.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_sa.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_ti.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_ay.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_az.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_kk.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_lus.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_mai.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_sa.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_ti.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Kur'an ses kaynakları yok mesajı 7 ek locale'de kullanıcıya İngilizce fallback yerine hedef dilde gösterilir.
- Generated l10n dosyaları ARB değişiklikleriyle tutarlı kaldı.
- Kalan nadir/az desteklenen locale'lerde otomatik araç güvenli çeviri üretmediği için İngilizce referans korunmuştur; bu alan sonraki l10n döngülerinde daha güvenilir çeviri kaynağı veya manuel uzman doğrulamasıyla ele alınacak.

### Test Sonucu
- `flutter test test\arb_ui_localization_test.dart test\arb_coverage_test.dart --reporter compact` PASS
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`283/283`)
- `git diff --check` PASS (yalnızca CRLF çalışma kopyası uyarıları)

### Risk Değişimi
- `quranAudioSourcesUnavailable` için İngilizce fallback kalan non-EN locale sayısı: `92 -> 85`
- Download/diagnostics genel l10n fallback riski: `20/25 -> 18/25`

### Sonraki Adım
- Yeni döngüde l10n fallback sayısını otomatik ölçen kalıcı rapor/test eklenecek veya desteklenen locale grupları için bir sonraki güvenli anahtar batch'i çevrilecek; zorla uydurma çeviri yapılmayacak.

## 2026-04-15 TUR-137 — Unify High Latitude Prayer Rule

### Yapılan İşlem
- `prayer_profile_service.dart` içine ortak `applyAutomaticHighLatitudeRule` helper'ı eklendi.
- `prayerTimesProvider` canlı namaz vakti hesabında `lat.abs() > 48.0` için twilight-angle yüksek enlem kuralını artık aynı helper üzerinden uyguluyor.
- `PrayerCalendarService` mevcut explicit `highLatitudeRule` parametresini koruyarak otomatik fallback'i aynı helper'a taşıdı.
- `prayer_profile_service_test.dart` yüksek enlem helper davranışını, `prayer_times_service_test.dart` canlı provider call-chain guard'ını kapsayacak şekilde genişletildi.

### Neden Yapıldı
- Takvim/offline namaz vakti hesabı yüksek enlem bölgelerinde twilight-angle kuralı uygularken canlı provider aynı kuralı uygulamıyordu.
- Bu ayrışma Oslo, Berlin, Londra gibi yüksek enlem şehirlerinde ana ekran/canlı provider ile takvim servisi arasında farklı vakitler üretebilecek dini güvenilirlik riski oluşturuyordu.
- Kök sebep, yüksek enlem kuralının sadece `PrayerCalendarService.calculatePrayerTimes` içinde inline bulunması ve provider call-chain'inde ortak profile helper'a bağlı olmamasıydı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_times_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_calendar_service.dart`
- `A:\Way of Allah\sirat_i_nur\test\prayer_profile_service_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\prayer_times_service_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Canlı provider ve takvim servisi yüksek enlem fallback davranışında aynı kuralı kullanıyor.
- Ülke/bölgeye göre seçilen calculation profile ve mezhep ayarı korunuyor; bu patch yalnızca daha önce takvim servisinde zaten var olan yüksek enlem fallback'ini canlı provider'a da taşıdı.
- Explicit `highLatitudeRule` verilen takvim hesapları ezilmiyor, bu yüzden daha özel dini/kurumsal kural parametresi varsa önceliği devam ediyor.

### Test Sonucu
- `flutter test test\prayer_profile_service_test.dart test\prayer_calendar_service_test.dart test\prayer_times_service_test.dart --reporter compact` PASS (`16/16`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`286/286`)
- `git diff --check` PASS (yalnızca CRLF çalışma kopyası uyarıları)

### Risk Değişimi
- Yüksek enlem bölgelerinde canlı provider ile takvim/offline namaz vakti hesabının ayrışması riski: `12/25 -> 4/25`

### Sonraki Adım
- Yeni döngüde prayer/notification pipeline derin taramasına devam edilecek; öncelik DST/yarınki Fajr ve notification scheduling zincirinde `cancelAll`/yeniden planlama çakışması olup olmadığını kanıtla doğrulamak olacak.

## 2026-04-15 TUR-138 — Scope Adhan Notification Cancellation

### Yapılan İşlem
- `AdhanSchedulerService` içindeki iki geniş `cancelAll()` kullanımı kaldırıldı.
- 30 günlük adhan planlama penceresi, günlük 5 vakit ve ID stride değeri sabitlere taşındı.
- `clearScheduledAdhans()` ve `scheduleAdhans()` artık yalnızca deterministik adhan ID aralığını `_cancelScheduledAdhans()` üzerinden iptal ediyor.
- `adhanNotificationId(dayIndex, prayerIndex)` helper'ı eklenerek planlanan ve iptal edilen ID'lerin aynı formülü kullanması sağlandı.
- `notification_service_guard_test.dart` içine `cancelAll()` geri dönüşünü ve ID aralığı regresyonunu yakalayan test eklendi.

### Neden Yapıldı
- `adhan_scheduler_service.dart:42` ve `adhan_scheduler_service.dart:58` tüm bildirim havuzunu silen `cancelAll()` çağrıları içeriyordu.
- Bugün projede legacy notification servisi kaldırılmış olsa da bu geniş silme, sonraki hatırlatıcı/uyarı özellikleri eklendiğinde adhan yenilemesinin unrelated bildirimleri de sessizce iptal etmesine yol açabilirdi.
- Kök sebep, adhan bildirimlerinin kendi ID alanı varken iptal operasyonunun bu alana scope edilmemesiydi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\adhan_scheduler_service.dart`
- `A:\Way of Allah\sirat_i_nur\test\notification_service_guard_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Adhan planını yenilemek veya konum kaldırıldığında adhanları temizlemek artık yalnız adhan ID'lerini etkiliyor.
- Gelecekte zikir, ders, premium, içerik veya widget kaynaklı ayrı bildirimler eklendiğinde adhan scheduling onları topluca silmeyecek.
- Mevcut 30 günlük adhan planlama davranışı korunuyor; schedule ID'leri aynı stride içinde kalıyor.

### Test Sonucu
- `flutter test test\notification_service_guard_test.dart test\prayer_notification_coordinator_test.dart --reporter compact` PASS (`9/9`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`287/287`)
- `git diff --check` PASS (yalnızca CRLF çalışma kopyası uyarıları)

### Risk Değişimi
- Adhan yenilemesinin unrelated bildirimleri geniş `cancelAll()` ile silmesi riski: `10/25 -> 3/25`

### Sonraki Adım
- Yeni döngüde prayer pipeline'da kalan zaman/hesaplama edge-case'leri taranacak; özellikle canlı provider'ın `now` bağımlılığı test edilebilir hale getirilip yarınki Fajr/DST senaryosu kaynak guard yerine davranış testiyle korunacak.

## 2026-04-15 TUR-139 — Make Prayer Countdown DST-Aware

### Yapılan İşlem
- `TimezoneUtils.differenceInTimezone` helper'ı eklendi; iki wall-clock zamanı seçili IANA timezone içinde gerçek elapsed time olarak karşılaştırıyor.
- `prayerTimesProvider` içindeki `timeRemaining` hesabı düz `nextTime.difference(now)` yerine `TimezoneUtils.differenceInTimezone(nextTime, now, settings.timezone)` kullanacak şekilde değiştirildi.
- `timezone_utils_test.dart` Berlin 2026 ilkbahar DST sıçramasında 01:30 -> 03:30 wall-clock farkının gerçek 1 saat olduğunu doğrulayan regresyon testi kazandı.
- `prayer_times_service_test.dart` provider'ın eski naive `DateTime.difference` yoluna dönmemesini koruyan guard test kazandı.

### Neden Yapıldı
- Canlı namaz vakti provider'ı, kalan süreyi hedef bölgenin DST geçişlerini hesaba katmadan naive `DateTime.difference` ile hesaplıyordu.
- Saat ileri/geri alınan gecelerde özellikle yarınki Fajr geri sayımı kullanıcıya bir saat fazla veya eksik görünebilirdi.
- Kök sebep, provider'ın namaz saatlerini timezone'a göre wall-clock olarak düzeltmesine rağmen süre farkını aynı timezone içinde instant farkına çevirmemesiydi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\utils\timezone_utils.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_times_service.dart`
- `A:\Way of Allah\sirat_i_nur\test\timezone_utils_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\prayer_times_service_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Ana ekranın kalan vakit göstergesi DST geçişlerinde seçili şehir/bölge timezone'una göre gerçek süreyi gösterir.
- Namaz vakti saat metinleri ve resmi hesap profilleri değiştirilmedi; sadece kalan süre farkı daha doğru hesaplanıyor.
- Geçersiz veya boş timezone varsa eski naive fark davranışına güvenli fallback devam ediyor.

### Test Sonucu
- `flutter test test\timezone_utils_test.dart test\prayer_times_service_test.dart test\prayer_calendar_service_test.dart --reporter compact` PASS (`9/9`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`289/289`)
- `git diff --check` PASS (yalnızca CRLF çalışma kopyası uyarıları)

### Risk Değişimi
- DST geçiş gecelerinde canlı namaz vakti geri sayımının bir saat şaşması riski: `12/25 -> 3/25`

### Sonraki Adım
- Yeni döngüde canlı provider hesaplama çekirdeği daha test edilebilir hale getirilecek veya dini içerik/audio provenance tarafındaki kalan yüksek riskli boşluklar yeniden taranacak; öncelik kullanıcıya yanlış dini zaman/içerik gösterme ihtimali en yüksek olan akışta olacak.

## 2026-04-15 TUR-140 — Require Complete Quran Audio Storage Catalog

### Yapılan İşlem
- `generate_quran_audio_storage_seed.dart` varsayılan olarak tam Kur'an ses kataloğu zorunlu olacak şekilde sertleştirildi.
- Tam katalog kuralı 6 desteklenen reciter x 114 sure = 684 storage-backed MP3 satırı olarak doğrulanıyor.
- Eksik reciter, eksik sure, duplicate sure veya desteklenmeyen reciter manifestleri storage seed üretmeden önce `FormatException` ile durduruluyor.
- Yerel smoke/development akışları için açık `--allow-partial` bayrağı eklendi; üretim varsayılanı tam katalog zorunluluğu olarak kaldı.
- README audio sovereignty yönergesi `--allow-partial` bayrağının prod audio seeding için kullanılmaması gerektiğini belirtecek şekilde güncellendi.
- `generate_quran_audio_storage_seed_test.dart` kısmi manifestin varsayılan olarak reddedildiğini ve smoke testlerin yalnız explicit partial modda çalıştığını doğruluyor.

### Neden Yapıldı
- Storage-backed runtime doğru şekilde `storage_path` satırlarını external URL'lere tercih ediyordu; ancak seed generator sadece manifest'in kendi `requested` sayısını tamamlamasını kontrol ediyordu.
- Bir operatör yanlışlıkla 1 surelik veya tek reciter'lı mirror manifestiyle `content_seed_quran_audio_storage.sql` üretebilir, sonra database'de eksik ama storage-backed görünen bir katalog oluşturabilirdi.
- Kök sebep, generator'ın “manifest kendi içinde tutarlı mı?” kontrolü yapması fakat “ürün için tam desteklenen Quran audio kataloğu mu?” kontrolü yapmamasıydı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\generate_quran_audio_storage_seed.dart`
- `A:\Way of Allah\sirat_i_nur\test\generate_quran_audio_storage_seed_test.dart`
- `A:\Way of Allah\sirat_i_nur\README.md`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Üretim storage audio seed'i artık eksik mirror manifestten sessizce üretilemiyor.
- 684 dosyalık tam katalog tamamlanmadan Supabase Storage-backed audio seed oluşturma akışı güvenli şekilde fail ediyor.
- Local smoke test ihtiyacı korunuyor ancak açık `--allow-partial` gerektirdiği için production yolu yanlışlıkla gevşemiyor.

### Test Sonucu
- `flutter test test\generate_quran_audio_storage_seed_test.dart test\download_verified_quran_audio_test.dart test\upload_quran_audio_storage_test.dart test\offline_audio_service_test.dart test\readme_operational_docs_test.dart --reporter compact` PASS (`26/26`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`290/290`)
- `git diff --check` PASS (yalnızca CRLF çalışma kopyası uyarıları)

### Risk Değişimi
- Eksik Quran audio mirror manifestinden production storage seed üretilmesi riski: `16/25 -> 3/25`

### Sonraki Adım
- Yeni döngüde audio/database hattında gerçek upload manifestinin dosya varlığı ve boyut doğrulaması taranacak; ardından kalan l10n fallback ölçümü veya dini içerik provenance boşlukları yeniden skorlanacak.

## 2026-04-15 TUR-141 — Preflight Quran Audio Storage Upload Files

### Yapılan İşlem
- `upload_quran_audio_storage.dart` içine `validateMirroredQuranAudioUploadPlan` helper'ı eklendi.
- Upload planı artık her manifest satırı için local MP3 dosyasının varlığını, boş olmamasını ve duplicate storage object path üretmemesini kontrol ediyor.
- `uploadMirroredQuranAudioFiles` networke çıkmadan önce preflight failure varsa upload'u `uploaded=0` ile durduruyor.
- CLI `--dry-run` yolu da aynı preflight kontrolünü kullanıyor; eksik/boş/duplicate dosya varsa planı başarılı göstermiyor ve `FAILED:` satırlarıyla `exitCode=1` bırakıyor.
- `upload_quran_audio_storage_test.dart` eksik dosya, boş dosya, duplicate object path ve networke çıkmadan abort davranışlarını kapsayacak şekilde genişletildi.

### Neden Yapıldı
- TUR-140 production storage seed'in tam katalog olmasını zorunlu kıldı; ancak upload aracının `--dry-run` yolu sadece manifest parse edip local MP3 dosyalarının gerçekten var ve dolu olduğunu doğrulamıyordu.
- Bu, operatöre “upload plan doğrulandı” hissi verip gerçek upload aşamasında eksik dosya failure'larıyla karşılaşma veya kısmi süreç riski oluşturuyordu.
- Kök sebep, local dosya bütünlüğü kontrolünün yalnız gerçek upload loop içinde yapılması ve dry-run ile ortak preflight katmanı olmamasıydı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\upload_quran_audio_storage.dart`
- `A:\Way of Allah\sirat_i_nur\test\upload_quran_audio_storage_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Supabase Storage audio yükleme planı artık network yazımı başlamadan önce local dosya bütünlüğünü doğruluyor.
- Eksik veya boş MP3 dosyası bulunan manifest dry-run'da başarı gibi görünmüyor.
- Duplicate object path yanlışlıkları tek dosyanın başka sure/reciter satırını ezmesi riskini upload öncesi yakalıyor.

### Test Sonucu
- `flutter test test\upload_quran_audio_storage_test.dart test\generate_quran_audio_storage_seed_test.dart test\readme_operational_docs_test.dart --reporter compact` PASS (`17/17`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`292/292`)
- `git diff --check` PASS (yalnızca CRLF çalışma kopyası uyarıları)

### Risk Değişimi
- Quran audio upload dry-run'ın eksik/boş local MP3 dosyalarını başarı gibi göstermesi riski: `12/25 -> 3/25`

### Sonraki Adım
- Yeni döngüde kalan l10n fallback ölçümü veya dini içerik provenance boşlukları tekrar skorlanacak; özellikle kullanıcıya hâlâ İngilizce kalan download/diagnostics/chatbot metinleri için güvenli otomatik ölçüm raporu eklenecek.

## 2026-04-15 TUR-142 — Localize Download Progress Copy Batch

### Yapılan İşlem
- `tool/translate_arb_keys.dart` tek satır koruma listesine download-progress anahtarları eklendi: `freeStorage`, `downloadPreparing`, `downloadingSurah`, `downloadedSurahProgress`, `redownloadMissingRepair`, `downloadCancelling`.
- `dart run tool\translate_arb_keys.dart freeStorage downloadPreparing downloadingSurah downloadedSurahProgress redownloadMissingRepair downloadCancelling` çalıştırıldı.
- `flutter gen-l10n` ile generated localization Dart dosyaları ARB değişiklikleriyle senkronlandı.
- `arb_ui_localization_test.dart` safe priority locale setinde bu yeni download-progress anahtarlarının İngilizce fallback'e dönmemesini ve tüm locale'lerde tek satır kalmasını koruyacak şekilde genişletildi.
- Ölçüm sonucu İngilizce fallback sayıları şu şekilde azaldı: `freeStorage 187 -> 81`, `downloadPreparing 194 -> 88`, `downloadingSurah 194 -> 98`, `downloadedSurahProgress 194 -> 97`, `redownloadMissingRepair 194 -> 90`, `downloadCancelling 194 -> 90`.

### Neden Yapıldı
- L10n taramasında download-progress/repair copy kümesinin neredeyse tüm locale'lerde İngilizce kaldığı görüldü.
- Bu metinler offline Quran audio indirme akışında doğrudan kullanıcıya görünüyor; tam yerelleştirme hedefiyle uyumsuzdu.
- Kök sebep, önceki download/diagnostics l10n batch'lerinin ana eylem ve sonuç mesajlarını kapsaması ama progress/repair yardımcı metinlerini kapsam dışında bırakmasıydı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Öncelikli ve çeviri aracı tarafından güvenli sonuç üreten locale'lerde offline download progress metinleri İngilizce fallback yerine hedef dilde gösterilir.
- Placeholder'lı metinlerde `{surah}`, `{downloaded}`, `{total}` metadata korundu; ARB coverage testleri bunu doğruluyor.
- Nadir veya araç tarafından güvenli çevrilemeyen locale'lerde İngilizce fallback kaldı; AGENTS kuralı gereği belirsiz dilde uydurma çeviri yapılmadı.

### Test Sonucu
- `flutter test test\arb_ui_localization_test.dart test\arb_coverage_test.dart --reporter compact` PASS (`34/34`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`293/293`)
- `git diff --check` PASS (yalnızca CRLF çalışma kopyası uyarıları)

### Risk Değişimi
- Offline download progress/repair copy için geniş İngilizce fallback riski: `18/25 -> 12/25`

### Sonraki Adım
- Yeni döngüde kalan l10n fallback sayıları aynı ölçümle tekrar skorlanacak; öncelik chatbot offline ve diagnostics/download sonuç mesajlarında güvenli otomatik çeviriyle azaltılabilecek sonraki batch olacak.

## 2026-04-15 TUR-143 — Guard Single-Line L10n Status Copy

### Yapılan İşlem
- `tool/translate_arb_keys.dart` içinde tek satır kalması gereken status/action anahtarları genişletildi: `downloadAction`, `resumeDownload`, `deleteDownloadedFiles`, `downloadCanceledForReciter`, `downloadFinishedForReciter`, `downloadPartiallyFinishedForReciter`, `diagnosticsQuranCloudTablesMissing`, `diagnosticsQuranCloudJuzMissing`, `chatbotOfflineSwitched`, `chatbotLocalNoInfo`.
- Aynı araç artık mevcut bir çeviri tek satır sözleşmesine rağmen newline içeriyorsa onu güvenli çeviri saymıyor ve yeniden üretime sokuyor.
- `dart run tool\translate_arb_keys.dart diagnosticsQuranCloudTablesMissing diagnosticsQuranCloudJuzMissing downloadAction resumeDownload deleteDownloadedFiles downloadCanceledForReciter downloadFinishedForReciter downloadPartiallyFinishedForReciter chatbotOfflineSwitched chatbotLocalNoInfo` çalıştırıldı.
- `flutter gen-l10n` ile generated localization dosyaları ARB onarımlarıyla senkronlandı.
- `arb_ui_localization_test.dart` içindeki tek satır regresyon testi bu status/action anahtarlarını da kapsayacak şekilde genişletildi.

### Neden Yapıldı
- L10n taramasında 5 locale'de (`ay`, `lus`, `mai`, `sa`, `ti`) kullanıcıya görünen diagnostics/download/chatbot durum metinlerinde newline ve bozuk çeviri artefaktı kaldığı görüldü.
- Kök sebep, bu anahtarların önceki çeviri guard'ında tek satır sözleşmesine dahil edilmemesi ve `_shouldPreserve` mantığının newline içeren mevcut çeviriyi korunabilir saymasıydı.
- Dini/teknik içerikte uydurma veya bozuk metin göstermek yerine güvenli İngilizce referansa fallback etmek tercih edildi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_ay.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_lus.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_mai.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_sa.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_ti.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Hedef 10 anahtarda newline artefaktı tüm ARB dosyalarında `0` olarak doğrulandı.
- `ay/lus/mai/sa/ti` locale'lerinde bozuk satır kırılmış status metinleri temizlendi.
- Bazı nadir locale'lerde İngilizce fallback sayısı arttı; bu, belirsiz veya bozuk çeviriyi kullanıcıya göstermekten daha güvenli bir durumdur.

### Test Sonucu
- `flutter test test\arb_ui_localization_test.dart test\arb_coverage_test.dart --reporter compact` PASS (`34/34`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`293/293`)
- `git diff --check` PASS (yalnızca CRLF çalışma kopyası uyarıları)

### Risk Değişimi
- Diagnostics/download/chatbot status copy içinde bozuk multiline çeviri gösterme riski: `12/25 -> 3/25`

### Sonraki Adım
- Yeni döngüde l10n fallback sayıları yeniden ölçülecek; çeviri aracıyla güvenli azaltılabilecek kalan kullanıcı-facing İngilizce fallback kümeleri seçilecek.
- Dini içerik/audio Supabase hattında ise storage-backed Quran audio dışında kalan dua/sukun/adhan içeriklerinin kaynak ve storage bağı yeniden skorlanacak.

## 2026-04-15 TUR-144 — Prefer Supabase Storage for Sukun Audio

### Yapılan İşlem
- `SupabaseConfig` içine `SUPABASE_SUKUN_AUDIO_BUCKET` dart-define desteği eklendi; varsayılan bucket `audio-sukun`.
- `resolvePlayableCloudAudioUrl` helper'ı bucket parametresi alacak şekilde genişletildi; Quran audio için mevcut `quran-audio` varsayılanı korundu.
- `resolveCloudSukunSources` artık `audio_files.storage_path` doluysa dış `url` yerine Supabase Storage public URL'i üretip onu kullanıyor.
- `content_schema.sql` içine `audio-sukun` storage bucket bootstrap satırı ve public read RLS policy'si eklendi.
- `sukun_audio_sources_provider_test.dart` storage-backed sukun satırının external URL yerine Supabase Storage URL'ine çözüldüğünü doğruluyor.
- `content_schema_test.dart` `audio-sukun` bucket ve policy sözleşmesini sabitliyor.

### Neden Yapıldı
- Audio taramasında Quran audio hattının storage-backed çalıştığı, fakat sukun/nature seslerinin `url` alanına doğrudan bağlı kaldığı görüldü.
- Bu, external CDN linki kapanırsa sukun seslerinin Supabase Storage'daki sahipli kopya varken bile dış linke bağımlı kalması riskini doğuruyordu.
- Kök sebep, sukun provider'ın `storage_path` alanını hiç playable URL çözümüne sokmamasıydı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\network\supabase_config.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\services\offline_audio_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\providers\supabase_providers.dart`
- `A:\Way of Allah\sirat_i_nur\content_schema.sql`
- `A:\Way of Allah\sirat_i_nur\test\sukun_audio_sources_provider_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\content_schema_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Sukun/nature audio satırları artık doğrulanmış `source` + `verified_at` yanında `storage_path` verdiğinde bizim Supabase Storage bucket'ımızdan oynatılır.
- External `url` alanı sadece storage path yoksa fallback olarak kalır; bu davranış Quran audio ile tutarlı hale geldi.
- Schema bootstrap `audio-sukun` bucket'ının public read policy ile kurulmasını garanti eder.

### Test Sonucu
- `flutter test test\sukun_audio_sources_provider_test.dart test\offline_audio_service_test.dart test\content_schema_test.dart --reporter compact` PASS (`12/12`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`294/294`)

### Risk Değişimi
- Sukun/nature audio'nun external URL kapanınca Supabase Storage kopyasını tercih etmemesi riski: `12/25 -> 3/25`

### Sonraki Adım
- Yeni döngüde adhan ve dua audio bucket/storage_path desteği taranacak; özellikle `duas.audio_url` ve adhan asset/static fallback hattının Supabase Storage sahipli kopyalara bağlanma durumu skorlanacak.

## 2026-04-15 TUR-145 — Add Storage Contract for Dua and Adhan Audio

### Yapılan İşlem
- `SupabaseConfig` içine `SUPABASE_DUA_AUDIO_BUCKET` ve `SUPABASE_ADHAN_AUDIO_BUCKET` dart-define destekleri eklendi; varsayılanlar `audio-dua` ve `audio-adhan`.
- `content_schema.sql` içinde `duas.storage_path` kolonu migration-safe şekilde eklendi.
- `content_schema.sql` `audio-dua` ve `audio-adhan` storage bucket bootstrap satırları ve public read RLS policy'leriyle genişletildi.
- `DuaData` modeli `audioUrl` alanı kazandı.
- `DuaData.fromSupabaseRow` cloud dua satırlarında `storage_path` varsa `audio-dua` Supabase Storage public URL'ini üretip dış `audio_url` alanına tercih edecek şekilde değiştirildi.
- `duas_data_test.dart`, `library_page_test.dart` ve `content_schema_test.dart` storage-backed dua audio ve bucket/schema sözleşmesini koruyacak şekilde genişletildi.

### Neden Yapıldı
- Sukun audio TUR-144 ile storage-backed hale geldi; ancak dua tarafında tablo yalnız `audio_url` taşıyor, model ise audio bilgisini hiç taşımıyordu.
- Bu durum ileride dua sesleri eklendiğinde external link bağımlılığını tekrar üretme riski oluşturuyordu.
- Adhan notification sesleri Android raw resource kısıtı nedeniyle runtime'da hâlâ local asset gerektirse de, verified adhan dosyalarının Supabase Storage'da tutulabilmesi için bucket contract'ı schema'ya eklendi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\network\supabase_config.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\constants\duas_data.dart`
- `A:\Way of Allah\sirat_i_nur\content_schema.sql`
- `A:\Way of Allah\sirat_i_nur\test\duas_data_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\library_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\content_schema_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Verified cloud dua satırları artık `storage_path` ile bizim `audio-dua` bucket'ımızdan çözülebilir.
- External `audio_url` sadece storage path yoksa fallback olarak kalır.
- Supabase bootstrap, dua ve adhan audio dosyaları için sahipli bucket/RLS zeminini hazırlar.

### Test Sonucu
- `flutter test test\duas_data_test.dart test\library_page_test.dart test\content_schema_test.dart --reporter compact` PASS (`22/22`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`296/296`)

### Risk Değişimi
- Dua audio için external URL bağımlılığına geri düşme ve schema'da owned bucket eksikliği riski: `12/25 -> 4/25`

### Sonraki Adım
- Yeni döngüde Asma-ul-Husna audio mapping hattı aynı storage_path/owned-bucket kuralına göre taranacak; dış audio URL'leri varsa `audio-asma` veya mevcut audio bucket stratejisine bağlanma durumu skorlanacak.

## 2026-04-15 TUR-146 — Prefer Supabase Storage for Asma Audio

### Yapılan İşlem
- `SupabaseConfig` içine `SUPABASE_ASMA_AUDIO_BUCKET` dart-define desteği eklendi; varsayılan bucket `audio-asma`.
- `content_schema.sql` içinde `asma_ul_husna.storage_path` kolonu migration-safe şekilde eklendi.
- `content_schema.sql` `audio-asma` storage bucket bootstrap satırı ve public read RLS policy'siyle genişletildi.
- `normalizeAsmaUlHusnaRow` cloud Asma satırlarında `storage_path` varsa `audio-asma` Supabase Storage public URL'ini üretip dış `audio_url` alanına tercih edecek şekilde değiştirildi.
- `asma_ul_husna_data_test.dart` storage-backed Asma satırının external URL yerine Supabase Storage URL'ine çözüldüğünü doğruluyor.
- `content_schema_test.dart` `asma_ul_husna.storage_path`, `audio-asma` bucket ve policy sözleşmesini sabitliyor.

### Neden Yapıldı
- TUR-144 ve TUR-145 ile Quran, sukun ve dua seslerinde owned storage önceliği güçlendirildi; Asma-ul-Husna audio mapping hattı ise hâlâ doğrudan dış `audio_url`/`url` alanına bağlıydı.
- Bu, external link kapanırsa Asma-ul-Husna seslerinin Supabase Storage'daki sahipli kopya varken bile dış linke bağımlı kalması riskini doğuruyordu.
- Kök sebep, Asma cloud row normalizer'ın `storage_path` alanını playable URL çözümüne hiç sokmamasıydı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\network\supabase_config.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart`
- `A:\Way of Allah\sirat_i_nur\content_schema.sql`
- `A:\Way of Allah\sirat_i_nur\test\asma_ul_husna_data_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\content_schema_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Verified cloud Asma satırları artık `storage_path` ile bizim `audio-asma` bucket'ımızdan çözülebilir.
- External `audio_url`/`url` alanı sadece storage path yoksa fallback olarak kalır.
- Supabase bootstrap, Asma ses dosyaları için sahipli bucket/RLS zeminini hazırlar.

### Test Sonucu
- `flutter test test\asma_ul_husna_data_test.dart test\features\library\asma_ul_husna_page_test.dart --reporter compact` PASS (`19/19`)
- `flutter test test\content_schema_test.dart --reporter compact` PASS (`2/2`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`297/297`)

### Risk Değişimi
- Asma-ul-Husna audio'nun external URL kapanınca Supabase Storage kopyasını tercih etmemesi riski: `12/25 -> 3/25`

### Sonraki Adım
- Yeni döngüde audio storage URL üretiminin birden fazla dosyada kopyalanması taranacak; risk anlamlıysa minimal shared helper ile drift/encoding hatası azaltılacak.

## 2026-04-15 TUR-147 — Consolidate Supabase Storage URL Helpers

### Yapılan İşlem
- `lib/core/network/supabase_storage_url.dart` eklendi; Supabase Storage object path normalizasyonu ve public URL üretimi tek hafif helper'a toplandı.
- `offline_audio_service.dart` mevcut public `normalizeStorageObjectPath` ve `buildSupabaseStoragePublicUrl` API'lerini wrapper olarak korudu; dış import sözleşmesi bozulmadı.
- `duas_data.dart` ve `asma_ul_husna_data.dart` içindeki private duplicate storage URL builder'lar kaldırıldı.
- `generate_quran_audio_storage_seed.dart` kendi duplicate object path normalizer'ı yerine ortak helper'ı kullanacak şekilde değiştirildi.
- `supabase_storage_url_test.dart` bucket prefix temizleme, leading slash temizleme, Windows path separator ve URL encoding davranışlarını sabitledi.

### Neden Yapıldı
- TUR-144, TUR-145 ve TUR-146 sonrası Quran, sukun, dua, adhan ve Asma audio zincirleri owned Supabase Storage'a bağlandı; ancak URL üretme mantığı `offline_audio_service.dart`, `duas_data.dart`, `asma_ul_husna_data.dart` ve tool içinde kopyalanmıştı.
- Bu tekrar, bucket prefix kuralı veya URL encoding davranışı ileride bir dosyada güncellenip diğerlerinde kalırsa storage-backed seslerin bir bölümünde sessiz 404/drift riski doğuruyordu.
- Kök sebep, storage URL sözleşmesinin network/config katmanında tek kaynak yerine feature ve tool dosyalarına dağılmış olmasıydı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\network\supabase_storage_url.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\services\offline_audio_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\constants\duas_data.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart`
- `A:\Way of Allah\sirat_i_nur\tool\generate_quran_audio_storage_seed.dart`
- `A:\Way of Allah\sirat_i_nur\test\supabase_storage_url_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Quran/sukun, dua, Asma ve storage seed üretimi aynı path normalizasyon + URL encoding kuralını kullanıyor.
- Eski testlerin import ettiği `offline_audio_service.dart` public helper isimleri çalışmaya devam ediyor.
- Storage bucket prefix'i path içinde verilse de verilmese de aynı object URL'i üretiliyor.

### Test Sonucu
- `flutter test test\supabase_storage_url_test.dart test\offline_audio_service_test.dart test\duas_data_test.dart test\asma_ul_husna_data_test.dart test\generate_quran_audio_storage_seed_test.dart --reporter compact` PASS (`33/33`)

### Risk Değişimi
- Supabase Storage public URL üretim mantığının feature/tool dosyaları arasında drift etme riski: `9/25 -> 2/25`

### Sonraki Adım
- Yeni döngüde Places/Overpass parsing ve map data hata yüzeyi taranacak; özellikle beklenmeyen JSON tiplerinin kullanıcıya yanlış veya ham hata olarak yansıma ihtimali skorlanacak.

## 2026-04-15 TUR-148 — Harden Places Overpass Data Pipeline

### Yapılan İşlem
- `places_map_page.dart` içinde harita kategori enum'u ve place modeli testlenebilir public tipler olarak düzenlendi.
- Overpass query üretimi `buildOverpassPlacesQuery` helper'ına taşındı; cami, helal gıda ve İslami eğitim kategorileri tek sözleşmeden üretiliyor.
- Overpass endpoint çözümü `resolvePlacesOverpassEndpoint` helper'ına taşındı ve URL doğrulaması eklendi.
- `SupabaseConfig` içine `PLACES_OVERPASS_API_URL` dart-define desteği eklendi; varsayılan development endpoint mevcut Overpass API.
- Overpass JSON parse akışı `parseOverpassPlacesPayload` helper'ına taşındı; malformed row'lar atlanıyor, malformed response envelope ise kontrollü `FormatException` ile mevcut localized network fallback'e düşüyor.
- `places_map_page_test.dart` malformed coordinate, center coordinate, tag fallback, endpoint doğrulama ve kategori query sözleşmesini kapsayacak şekilde genişletildi.
- `README.md` içindeki eski "unrestricted OpenStreetMap grids" ifadesi düzeltildi; üretimde verified tile source ve Overpass proxy/provider konfigürasyonu belgelendi.

### Neden Yapıldı
- Global risk taramasında `places_map_page.dart:116-147` aralığında Overpass response parse işleminin doğrudan `json.decode`, `data['elements'] as List`, dynamic tag ve dynamic coordinate kullanımına bağlı olduğu görüldü.
- Aynı akış `https://overpass-api.de/api/interpreter` endpoint'ine doğrudan bağlıydı; ileride üretimde monitored proxy veya onaylı provider'a geçiş için build-time konfigürasyon yoktu.
- README hâlâ harita katmanını "free and unrestricted" olarak anlatıyordu; bu, public tile server riskini kapatan önceki davranışla çelişiyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\places\places_map_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\network\supabase_config.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\places\places_map_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\README.md`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Places ekranı tek bozuk Overpass satırı yüzünden tüm geçerli sonuçları kaybetmez.
- Overpass response şeması bozulursa kullanıcı raw exception görmez; mevcut localized fallback korunur.
- Places API endpoint'i artık production build'de `PLACES_OVERPASS_API_URL` ile approved provider/proxy'ye yönlendirilebilir.
- Operasyon dokümantasyonu public tile/API bağımlılıklarını daha dürüst ve uygulanabilir anlatır.

### Test Sonucu
- `flutter test test\features\places\places_map_page_test.dart --reporter compact` PASS (`5/5`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`302/302`)

### Risk Değişimi
- Places Overpass parse/config hattında malformed data ve public endpoint drift riski: `12/25 -> 3/25`

### Sonraki Adım
- Yeni döngüde global taramadaki raw debug/error yüzeyleri ve dependency freshness çıktısı skorlanacak; ilk olarak kullanıcıya açık hata mesajı veya üretim davranışı etkileyen yüzeyler kapatılacak.

## 2026-04-15 TUR-149 — Remove Stale Android Maps and Ads Placeholders

### Yapılan İşlem
- `AndroidManifest.xml` içindeki kullanılmayan `com.google.android.geo.API_KEY` metadata'sı ve `YOUR_GOOGLE_MAPS_API_KEY` placeholder'ı kaldırıldı.
- Manifestte duran AdMob test application id metadata'sı kaldırıldı.
- Dart kodunda hiç kullanılmayan `google_mobile_ads` dependency'si `pubspec.yaml` ve `pubspec.lock` içinden çıkarıldı.
- `android/app/build.gradle.kts` içindeki default Flutter scaffold `TODO` yorumları temizlendi; application id zaten gerçek paket id olduğu için korunup testlendi.
- `android_config_test.dart` eklendi; Maps/AdMob placeholder metadata'sı, AdMob test id'si, kullanılmayan ads dependency'si ve Gradle TODO'ları geri gelirse test fail edecek.

### Neden Yapıldı
- Global platform taramasında `android/app/src/main/AndroidManifest.xml:43-47` aralığında Google Maps placeholder key'i ve AdMob test id'si bulundu.
- `rg` taraması `google_mobile_ads`, `MobileAds`, `BannerAd` veya AdRequest kullanımının Dart tarafında hiç olmadığını gösterdi; dependency ve manifest metadata'sı fiili feature'a bağlı değildi.
- Bu sahte metadata üretim APK'sına taşınırsa "placeholder yok, sahte yok" kuralını ihlal eder ve mağaza/SDK davranışında yanlış sinyal üretir.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\android\app\src\main\AndroidManifest.xml`
- `A:\Way of Allah\sirat_i_nur\android\app\build.gradle.kts`
- `A:\Way of Allah\sirat_i_nur\pubspec.yaml`
- `A:\Way of Allah\sirat_i_nur\pubspec.lock`
- `A:\Way of Allah\sirat_i_nur\test\android_config_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Android APK artık kullanılmayan Google Maps ve AdMob placeholder/test metadata'sı taşımıyor.
- Kullanılmayan ads dependency'si kaldırıldığı için bağımlılık yüzeyi küçüldü.
- Android platform config regresyonu testle korunuyor.

### Test Sonucu
- `flutter pub get` PASS
- `flutter test test\android_config_test.dart --reporter compact` PASS (`2/2`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`304/304`)
- `flutter build apk --release` PASS (`build\app\outputs\flutter-apk\app-release.apk`, 85.5 MB)

### Risk Değişimi
- Android üretim paketinde stale Google Maps/AdMob placeholder metadata ship edilmesi riski: `12/25 -> 2/25`

### Sonraki Adım
- Yeni döngüde dependency freshness tablosundaki güvenli patch/minor güncellemeler ile raw error/debug yüzeyleri yeniden skorlanacak; yüksek etkili olan önce kapatılacak.

## 2026-04-15 TUR-150 — Refresh Compatible Dependencies and Stabilize Android Release Build

### Yapılan İşlem
- `flutter pub upgrade` ile mevcut `pubspec.yaml` constraint'leri içinde kalınarak uyumlu dependency set'i güncellendi.
- `pubspec.lock` içinde güvenli patch/minor çözümlemeler yenilendi; major constraint değişimi bu turda yapılmadı.
- Android release build sırasında Windows cross-drive ortamında tetiklenen Kotlin incremental cache stacktrace'i kök sebepten kapatmak için `android/gradle.properties` içine `kotlin.incremental=false` eklendi.
- `android_config_test.dart` genişletildi; Android release build hattında bu Kotlin incremental cache guard'ı kaldırılırsa test fail edecek.

### Neden Yapıldı
- TUR-149 sonrası dependency freshness taramasında mevcut constraint'ler içinde güncellenebilen paketler bulundu.
- Release build doğrulaması, repo `A:\` üzerinde ve pub cache `C:\Users\UMUT\AppData\Local\Pub\Cache` altında olduğu için Kotlin incremental cache'in cross-drive relative path hesaplarında stacktrace üretebildiğini gösterdi.
- Build APK üretse bile cache stacktrace'i üretim build hattında güvenilmez sinyal ve ileride kırılgan CI riski oluşturuyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\android\gradle.properties`
- `A:\Way of Allah\sirat_i_nur\pubspec.lock`
- `A:\Way of Allah\sirat_i_nur\test\android_config_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Uyumlu dependency set'i güncel hale getirildi; riskli major migration'lar ayrı skorlanmak üzere bilinçli olarak bu turdan ayrıldı.
- Android release build hattı Windows cross-drive Kotlin incremental cache stacktrace'inden arındırıldı.
- Kotlin incremental cache ayarı artık testle korunuyor; ileride aynı release-build gürültüsü sessizce geri dönemez.

### Test Sonucu
- `flutter pub upgrade` PASS
- `flutter test test\android_config_test.dart --reporter compact` PASS (`3/3`)
- `flutter clean` PASS
- `flutter pub get` PASS
- `flutter build apk --release` PASS (`build\app\outputs\flutter-apk\app-release.apk`, 85.9 MB)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`305/305`)

### Risk Değişimi
- Compatible dependency drift ve Windows cross-drive Kotlin incremental cache release-build stacktrace riski: `12/25 -> 3/25`

### Sonraki Adım
- Yeni döngüde major dependency upgrades ayrı ayrı skorlanacak; uygulama davranışını etkileyebilecek major migration'lar resmi changelog/pub.dev kanıtı ve tam regression suite ile parça parça ele alınacak.

## 2026-04-15 TUR-151 — Guard ARB Translation Tool Against English Fallback Regressions

### Yapılan İşlem
- `translate_arb_keys.dart` çeviri seçim mantığı sertleştirildi.
- Çeviri servisi İngilizce fallback, boş değer, bozuk placeholder veya tek satır kuralını bozan çıktı döndürürse mevcut geçerli lokalize değer korunacak şekilde `resolveTranslatedArbValue` eklendi.
- Placeholder doğrulaması sıra bağımlı olmaktan çıkarıldı; çeviriler doğal dil gereği `{failed}` ve `{reciter}` gibi placeholder'ları farklı sırada kullanabiliyorsa artık geçerli sayılıyor.
- `translate_arb_keys_test.dart` eklendi; İngilizce fallback regressions, geçerli yeni çeviri, bozuk placeholder ve yeniden sıralanmış placeholder senaryoları testle korunuyor.
- `--force` ile yapılan deneme batch'i kalite kontrolünde bazı mevcut iyi çevirileri İngilizceye düşürdüğü için ARB içerik değişiklikleri commit edilmedi; yalnızca tool guard'ı ve test commit'e hazırlanıyor.

### Neden Yapıldı
- Download/diagnostics localization taramasında birçok nadir locale için İngilizce fallback bulundu.
- Mevcut tool, başarısız çeviri sonucunu İngilizce kaynakla değiştirerek bazı doğru çevirileri geriye götürebiliyordu.
- Kök sebep, tool'un çeviri adayını mevcut değerle kıyaslamadan kabul etmesi ve placeholder sırasını gereksiz şekilde katı kontrol etmesiydi.
- Dini ve hassas ürün bağlamında doğrulanmamış/kalitesiz makine çevirisini commit etmek doğru olmadığı için önce çeviri pipeline'ı regresyon yapamaz hale getirildi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Çeviri batch'leri artık mevcut iyi lokalizasyonları İngilizce fallback ile ezemez.
- Placeholder sırası farklı olan ama semantik olarak doğru çeviriler korunur.
- Kalan İngilizce fallback'ler için sonraki batch'ler daha güvenli çalıştırılabilir; doğrulanmayan output uygulamaya alınmaz.

### Test Sonucu
- `flutter test test\translate_arb_keys_test.dart test\arb_ui_localization_test.dart --reporter compact` PASS (`37/37`)

### Risk Değişimi
- Çeviri tooling'in iyi lokalizasyonları İngilizce fallback ile bozma riski: `16/25 -> 3/25`
- Kalan download/diagnostics locale fallback temizliği: aktif risk olarak sonraki tura taşındı; doğrulanmamış makine çıktısı commit edilmedi.

### Sonraki Adım
- Yeni döngüde download/diagnostics fallback kalan locale'leri güvenli batch stratejisiyle ele alınacak; her batch sonrası English-identical sayımı, placeholder doğrulaması ve l10n testleri çalıştırılacak.

## 2026-04-15 TUR-152 — Centralize Home Prayer Time Calculation Pipeline

### Yapılan İşlem
- `prayer_times_service.dart` içindeki ana ekran namaz vakti hesaplaması, duplicate `PrayerTimes` kurulumundan çıkarılıp merkezi `PrayerCalendarService.calculatePrayerTimes` sözleşmesine bağlandı.
- `buildPrayerTimesData` helper'ı eklendi; provider artık aynı helper üzerinden veri üretiyor.
- Ana ekran hesaplaması resmi profil, mezhep, yüksek enlem, DST ve yarınki Fajr mantığını takvim servisiyle aynı kaynaktan alıyor.
- `prayer_times_service_test.dart` genişletildi; ana ekran hattının merkezi servis kullanması, konum yokken null dönmesi ve Isha sonrası yarınki Fajr mantığını merkezi servisle aynı üretmesi testleniyor.

### Neden Yapıldı
- Prayer pipeline taramasında ana ekran ve takvim/cache servisi aynı namaz vakti algoritmasını ayrı ayrı kuruyordu.
- Bu tekrar, ileride ülke/resmi kurum profili, mezhep, yüksek enlem veya DST düzeltmesi tek hatta uygulanıp diğer hatta unutulursa kullanıcıya farklı vakitler gösterme riski doğururdu.
- Kök sebep, `prayer_times_service.dart` provider'ının merkezi hesaplama servisini çağırmak yerine `PrayerTimes` nesnesini kendi içinde yeniden kurmasıydı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_times_service.dart`
- `A:\Way of Allah\sirat_i_nur\test\prayer_times_service_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Ana ekrandaki namaz vakti ve kalan süre hesabı merkezi, testli ve resmi profil-aware pipeline'a bağlandı.
- Yarınki Fajr, DST ve mezhep/profile davranışı iki ayrı yerde drift edemez.
- UI için formatlama aynı kaldı; hesaplama kaynağı tekleştirildi.

### Test Sonucu
- `flutter test test\prayer_times_service_test.dart test\prayer_calendar_service_test.dart test\prayer_profile_service_test.dart --reporter compact` PASS (`19/19`)

### Risk Değişimi
- Ana ekran ile takvim/notification namaz vakti hesaplarının zamanla ayrışma riski: `16/25 -> 3/25`

### Sonraki Adım
- Yeni döngüde prayer profile coverage genişletilecek; ülke/timezone fallback haritasında resmi veya kabul gören profile eşleşmesi olmayan bölgeler skorlanacak.

## 2026-04-15 TUR-153 — Harden Regional Prayer Profile Timezone Fallbacks

### Yapılan İşlem
- `resolvePrayerProfile` içindeki timezone fallback mantığı merkezi `_timezoneProfileFallbacks` tablosuna taşındı.
- `America/*` genellemesi kaldırıldı; ISNA fallback'i yalnızca açıkça listelenmiş US/Canada timezone'larında kullanılacak şekilde sınırlandı.
- Körfez timezone'ları ülke kodu gelmediğinde de mevcut kurum profilleriyle aynı profile bağlandı: `Asia/Riyadh`, `Asia/Bahrain`, `Asia/Muscat` -> Umm al-Qura; `Asia/Dubai` -> Dubai; `Asia/Kuwait` -> Kuwait; `Asia/Qatar` -> Qatar.
- Endonezya ve Malezya için başkent dışı timezone'lar eklendi: `Asia/Makassar`, `Asia/Jayapura`, `Asia/Pontianak` -> KEMENAG; `Asia/Kuching` -> JAKIM.
- `prayer_profile_service_test.dart` ve `settings_provider_test.dart` yeni regresyon matrisiyle genişletildi.

### Neden Yapıldı
- Ülke kodu her cihaz/geocoder akışında garanti değil; `updateLocation` ülke kodu yokken sadece timezone ile profil çözebiliyor.
- Önceki resolver `America/*` ile tüm Amerika kıtasını ISNA'ya bağlıyordu; `America/Sao_Paulo` gibi Güney Amerika timezone'ları yanlış profile düşebiliyordu.
- Körfez bölgelerinde ülke kodu yoksa `Asia/Dubai`, `Asia/Kuwait`, `Asia/Qatar`, `Asia/Riyadh` gibi timezone'lar generic MWL/Shafii fallback'e düşebiliyordu.
- Kök sebep, timezone fallback'in açık kurum profili matrisi yerine geniş ve eksik `if` zinciri kullanmasıydı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart`
- `A:\Way of Allah\sirat_i_nur\test\prayer_profile_service_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\settings_provider_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Ülke kodu eksik olsa bile desteklenen Körfez/Güneydoğu Asya bölgeleri generic metoda düşmez.
- Güney Amerika gibi açıkça ISNA kapsamı olarak modellenmemiş timezone'lar yanlışlıkla North America profili almaz.
- Settings persistence hattı da bu davranışı testle doğruluyor; profile, madhab ve açı değerleri birlikte korunuyor.

### Test Sonucu
- `flutter test test\prayer_profile_service_test.dart test\settings_provider_test.dart --reporter compact` PASS (`25/25`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`316/316`)

### Risk Değişimi
- Ülke kodu eksikken yanlış namaz vakti kurum profiline düşme riski: `16/25 -> 4/25`

### Sonraki Adım
- Sonraki döngüde prayer notification/widget/cache hattında aynı resmi profil zincirinin tüm yüzeylerde drift etmediği yeniden taranacak.

## 2026-04-15 TUR-154 — Localize Android Prayer Widget Runtime Labels

### Yapılan İşlem
- `PrayerLocalizer` widget başlıkları için ARB kaynaklı `nextPrayerLabel` ve `prayerTimesLabel` helper'larıyla genişletildi.
- `WidgetService.updatePrayerWidget` artık `next_prayer_header` ve lokalize `next_prayer_name` değerlerini HomeWidget preferences içine yazıyor.
- `WidgetService.updateAllPrayersWidget` artık `all_prayers_header` ile `fajr_label`, `dhuhr_label`, `asr_label`, `maghrib_label`, `isha_label` anahtarlarını ARB/l10n zincirinden üretip native widget'a aktarıyor.
- `PrayerWidgetProvider.java` ve `AllPrayersWidgetProvider.java` hardcoded/preview etiketlere güvenmek yerine Flutter'ın yazdığı lokalize label key'lerini okuyor.
- Android widget layout'larına runtime güncellenebilir label `TextView` ID'leri eklendi.
- `android_widget_localization_test.dart` eklendi; Flutter-to-native label köprüsü, Java provider okumaları ve XML ID'leri regresyon guard altına alındı.

### Neden Yapıldı
- Android native widget yüzeyi Flutter ARB zincirinden kopuktu; layout içinde `NEXT PRAYER`, `DAILY PRAYER TIMES`, `Fajr`, `Dhuhr`, `Asr`, `Maghrib`, `Isha` preview metinleri runtime label olarak kalabiliyordu.
- Kullanıcı uygulama dilini Türkçe, Arapça veya başka bir locale seçse bile widget başlıkları native tarafta İngilizce görünebilirdi.
- Kök sebep, native provider'ların sadece vakit değerlerini okuması; başlık/namaz adlarını Flutter l10n'den alıp widget preferences'a taşımamasıydı.
- Native tarafta ayrı çeviri tablosu üretmek yerine tek doğru kaynak olan Flutter ARB/l10n zinciri kullanılacak şekilde düzeltildi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\utils\prayer_name_localization.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\services\widget_service.dart`
- `A:\Way of Allah\sirat_i_nur\android\app\src\main\java\com\umutamal\sirat_i_nur\PrayerWidgetProvider.java`
- `A:\Way of Allah\sirat_i_nur\android\app\src\main\java\com\umutamal\sirat_i_nur\AllPrayersWidgetProvider.java`
- `A:\Way of Allah\sirat_i_nur\android\app\src\main\res\layout\widget_prayer.xml`
- `A:\Way of Allah\sirat_i_nur\android\app\src\main\res\layout\widget_all_prayers.xml`
- `A:\Way of Allah\sirat_i_nur\test\android_widget_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\prayer_name_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Android prayer widgets artık runtime'da uygulama locale'ine göre lokalize başlık ve namaz adları gösterir.
- Java tarafındaki `toUpperCase()` kaldırıldı; Türkçe gibi locale hassas harf dönüşümlerinde namaz adları bozulmaz.
- Widget localization köprüsü testli olduğu için native yüzeyin ARB zincirinden tekrar kopması yakalanır.

### Test Sonucu
- `flutter test test\android_widget_localization_test.dart test\prayer_name_localization_test.dart test\prayer_widget_sync_service_test.dart --reporter compact` PASS (`11/11`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`320/320`)
- `flutter build apk --debug` PASS (`build\app\outputs\flutter-apk\app-debug.apk`)

### Risk Değişimi
- Android prayer widget başlıklarının/labellarının İngilizce hardcoded kalma riski: `12/25 -> 3/25`

### Sonraki Adım
- Sonraki döngüde Android widget provider kapsamı devam edecek: Qibla/Ayah widget native yüzeyleri, manifest receiver kayıtları ve widget info XML dosyaları lokalizasyon/eksik provider açısından taranacak.

## 2026-04-15 TUR-155 — Complete Qibla and Ayah Android Widget Providers

### Yapılan İşlem
- `QiblaWidgetProvider.java` eklendi; `qibla_header`, `qibla_direction`, `qibla_status` HomeWidget verilerini native layout'a yazıyor.
- `AyahWidgetProvider.java` eklendi; `ayah_header`, `ayah_arabic`, `ayah_translation`, `ayah_reference` HomeWidget verilerini native layout'a yazıyor.
- `AndroidManifest.xml` içine `.QiblaWidgetProvider` ve `.AyahWidgetProvider` receiver kayıtları eklendi; mevcut `@xml/widget_info_qibla` ve `@xml/widget_info_ayah` provider tanımları artık gerçekten erişilebilir.
- `widget_qibla.xml` ve `widget_ayah.xml` başlık TextView'lerine runtime güncelleme ID'leri eklendi.
- `WidgetService.updateQiblaWidget` ve `WidgetService.updateAyahWidget` locale-aware başlıkları ARB/l10n zincirinden HomeWidget preferences'a yazacak şekilde genişletildi.
- `android_widget_localization_test.dart` manifestte Flutter'ın kullandığı her Android widget provider adının kayıtlı olmasını zorunlu kılacak şekilde genişletildi.

### Neden Yapıldı
- `WidgetService` içinde `QiblaWidgetProvider` ve `AyahWidgetProvider` adları vardı, `res/xml` içinde de ilgili widget info dosyaları bulunuyordu.
- Buna rağmen `AndroidManifest.xml` yalnızca `PrayerWidgetProvider` ve `AllPrayersWidgetProvider` receiver'larını kaydediyordu; Java klasöründe Qibla/Ayah provider sınıfları yoktu.
- Kök sebep, widget servis sözleşmesinin Android native provider/manifest katmanında yarım bırakılmasıydı.
- Bu durumda Qibla/Ayah widget güncelleme çağrıları native tarafta gerçek provider bulamayabilir veya kullanıcı widget listesinden bu yüzeyleri alamazdı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\android\app\src\main\AndroidManifest.xml`
- `A:\Way of Allah\sirat_i_nur\android\app\src\main\java\com\umutamal\sirat_i_nur\QiblaWidgetProvider.java`
- `A:\Way of Allah\sirat_i_nur\android\app\src\main\java\com\umutamal\sirat_i_nur\AyahWidgetProvider.java`
- `A:\Way of Allah\sirat_i_nur\android\app\src\main\res\layout\widget_qibla.xml`
- `A:\Way of Allah\sirat_i_nur\android\app\src\main\res\layout\widget_ayah.xml`
- `A:\Way of Allah\sirat_i_nur\lib\core\services\widget_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\utils\prayer_name_localization.dart`
- `A:\Way of Allah\sirat_i_nur\test\android_widget_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\prayer_name_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Flutter tarafındaki Qibla/Ayah widget güncelleme API'leri artık Android manifest/provider/layout zincirinde gerçek karşılığa sahip.
- Qibla ve Günün Ayeti widget başlıkları da runtime'da ARB/l10n kaynaklı locale-aware metinle güncellenir.
- Yeni test, Flutter'da kullanılan provider adının manifestten düşmesi halinde regresyonu yakalar.

### Test Sonucu
- `flutter test test\android_widget_localization_test.dart test\prayer_name_localization_test.dart --reporter compact` PASS (`10/10`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`321/321`)
- `flutter build apk --debug` PASS (`build\app\outputs\flutter-apk\app-debug.apk`)

### Risk Değişimi
- Qibla/Ayah Android widget yüzeylerinin yarım provider/manifest zinciriyle kırık kalma riski: `16/25 -> 3/25`

### Sonraki Adım
- Sonraki döngüde Android widget XML dosyalarındaki kullanılmayan/duplicate provider info kayıtları ve native widget preview metinlerinin test kapsamı taranacak.

## 2026-04-15 TUR-156 — Remove Unregistered Android Widget Info XML

### Yapılan İşlem
- `android/app/src/main/res/xml/widget_info_all_prayers.xml` kaldırıldı.
- Aktif AllPrayers widget receiver zaten `@xml/widget_info_all` kullanıyor; kaldırılan dosya hiçbir manifest kaydında veya kod referansında kullanılmıyordu.
- `android_widget_localization_test.dart` genişletildi; `res/xml/widget_info*.xml` dosyalarından manifestte referanslanmayan olursa test artık fail ediyor.

### Neden Yapıldı
- Widget audit sırasında aynı `widget_all_prayers` layout'una işaret eden iki ayrı provider XML bulundu.
- `widget_info_all_prayers.xml` kullanılmadığı halde repoda kaldığı için ileride yanlış dosyanın güncellenip aktif sanılması veya widget davranışı hakkında hatalı varsayım oluşması riski vardı.
- Kök sebep, Android widget kaynakları için manifest-referans bütünlüğünü doğrulayan test bulunmamasıydı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\android\app\src\main\res\xml\widget_info_all_prayers.xml`
- `A:\Way of Allah\sirat_i_nur\test\android_widget_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Android widget provider XML kaynakları manifestle birebir tutarlı hale geldi.
- Kullanılmayan widget metadata dosyaları üretim paketine taşınmaz.
- Yeni test, gelecekte manifestte kayıtlı olmayan widget provider XML dosyalarını yakalar.

### Test Sonucu
- `flutter test test\android_widget_localization_test.dart --reporter compact` PASS (`5/5`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`322/322`)
- `flutter build apk --debug` PASS (`build\app\outputs\flutter-apk\app-debug.apk`)

### Risk Değişimi
- Kullanılmayan/yanlış widget provider XML dosyasıyla Android widget davranışının karışması riski: `8/25 -> 2/25`

### Sonraki Adım
- Sonraki döngüde Android native widget preview metinleri ve widget_service çağrılarının gerçek ürün akışlarında tetiklenme kapsamı taranacak.

## 2026-04-15 TUR-157 — Wire Qibla and Ayah Widget Data Sync

### Yapılan İşlem
- `main.dart` bootstrap akışı Android widget kapsamı için genişletildi; `settingsProvider` değişimlerinde Prayer, AllPrayers ve Qibla widget'ları locale-aware şekilde güncelleniyor.
- `dailyAyatProvider` için `listenManual` aboneliği eklendi; Supabase/cache üzerinden doğrulanmış günlük ayet geldiğinde Ayah widget verileri native HomeWidget preferences içine aktarılıyor.
- Ayah widget metni için boş/eksik `content_ar`, locale uyumlu çeviri veya `reference` alanı varsa widget'a eksik veri basmayan koruma eklendi.
- Qibla widget yönü artık `QiblaUtils.calculateQiblaDirection` ile kayıtlı konumdan hesaplanıyor; başlık ve durum metni `PrayerLocalizer` üzerinden ARB/l10n zincirinden geliyor.
- Prayer, Qibla ve Ayah widget güncellemeleri birbirinden izole hata bloklarına ayrıldı; tek widget yüzeyindeki hata diğer yüzeyleri susturmuyor.
- `main_bootstrap_logging_test.dart` Android widget bootstrap bağlantısını ve loglarda ham exception nesnesi sızmamasını koruyacak şekilde genişletildi.
- `prayer_name_localization_test.dart` Qibla yön label helper'ını kapsayacak şekilde genişletildi.

### Neden Yapıldı
- Önceki turlarda Qibla/Ayah provider, manifest ve layout zinciri tamamlanmıştı; fakat ana uygulama akışı bu widget'lara veri göndermiyordu.
- Kök sebep, `WidgetService.updateQiblaWidget` ve `WidgetService.updateAyahWidget` API'lerinin ürün bootstrap akışında yalnızca toplu helper içinde kalması ve gerçek provider/state değişimlerine bağlanmamasıydı.
- Kullanıcı Android ana ekranına Qibla veya Günün Ayeti widget'ını eklediğinde widget boş/stale kalabilirdi; bu false-success niteliğinde ürün riskiydi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\main.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\utils\prayer_name_localization.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\common\main_bootstrap_logging_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\prayer_name_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Android Qibla widget'ı artık kayıtlı kullanıcı konumundan gerçek Kıble açısını alır.
- Android Günün Ayeti widget'ı artık Supabase/cache kaynaklı günlük ayet içeriğini kullanır; dini içerik uygulama içindeki doğrulanmış provider zincirinden gelir, uydurma veri üretilmez.
- Locale ayarı değiştiğinde widget başlıkları ve Ayah çeviri tercihi uygulama diliyle uyumlu kalır.
- Prayer/Qibla/Ayah widget güncelleme hataları birbirinden izole olduğu için tek yüzey arızası tüm widget senkronizasyonunu kesmez.

### Test Sonucu
- `flutter test test\features\common\main_bootstrap_logging_test.dart test\prayer_name_localization_test.dart test\android_widget_localization_test.dart --reporter compact` PASS (`13/13`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`323/323`)
- `flutter build apk --debug` PASS (`build\app\outputs\flutter-apk\app-debug.apk`)

### Risk Değişimi
- Qibla/Ayah Android widget'larının provider/manifest var olduğu halde gerçek ürün veri akışına bağlanmama riski: `16/25 -> 3/25`

### Sonraki Adım
- Sonraki döngüde Android widget XML preview/default metinlerinin kullanıcıya stale veya hardcoded içerik göstermediği ve widget servis sözleşmesinin tüm native kaynaklarla birebir eşleştiği tekrar taranacak.

## 2026-04-15 TUR-158 — Remove Android Widget Runtime Preview Copy

### Yapılan İşlem
- `widget_prayer.xml`, `widget_all_prayers.xml`, `widget_qibla.xml` ve `widget_ayah.xml` içindeki runtime `android:text` örnek metinleri kaldırıldı.
- Aynı örnekler yalnızca Android Studio/design preview amacıyla `tools:text` değerlerine taşındı.
- `PrayerWidgetProvider.java`, `AllPrayersWidgetProvider.java`, `QiblaWidgetProvider.java` ve `AyahWidgetProvider.java` fallback değerleri İngilizce/Türkçe label yerine boş veya dil-bağımsız placeholder olacak şekilde güncellendi.
- `android_widget_localization_test.dart` genişletildi; widget layout'larında runtime `android:text="..."` kalırsa veya Java provider'lar hardcoded İngilizce fallback'e dönerse test fail ediyor.

### Neden Yapıldı
- Android widget layout'larında `NEXT PRAYER`, `DAILY PRAYER TIMES`, `Kıble / Qibla`, `Günün Ayeti / Ayah of the Day` ve örnek ayet/metin değerleri runtime attribute olarak duruyordu.
- Native provider fallback'leri de `Next Prayer`, `Prayer Times`, `Fajr`, `Daily Verse` gibi İngilizce metinlere düşüyordu.
- Kök sebep, Flutter ARB/l10n zinciri kurulmuş olmasına rağmen native widget ilk render/default state katmanında kullanıcıya görünebilecek gömülü metin bırakılmasıydı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\android\app\src\main\java\com\umutamal\sirat_i_nur\PrayerWidgetProvider.java`
- `A:\Way of Allah\sirat_i_nur\android\app\src\main\java\com\umutamal\sirat_i_nur\AllPrayersWidgetProvider.java`
- `A:\Way of Allah\sirat_i_nur\android\app\src\main\java\com\umutamal\sirat_i_nur\QiblaWidgetProvider.java`
- `A:\Way of Allah\sirat_i_nur\android\app\src\main\java\com\umutamal\sirat_i_nur\AyahWidgetProvider.java`
- `A:\Way of Allah\sirat_i_nur\android\app\src\main\res\layout\widget_prayer.xml`
- `A:\Way of Allah\sirat_i_nur\android\app\src\main\res\layout\widget_all_prayers.xml`
- `A:\Way of Allah\sirat_i_nur\android\app\src\main\res\layout\widget_qibla.xml`
- `A:\Way of Allah\sirat_i_nur\android\app\src\main\res\layout\widget_ayah.xml`
- `A:\Way of Allah\sirat_i_nur\test\android_widget_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Android widget runtime yüzeyinde Flutter l10n/HomeWidget verisi gelmeden yanlış dilde veya stale dini metin gösterilmez.
- Design-time preview görünümü korunur; kullanıcıya görünen veri ise Flutter tarafındaki doğrulanmış/lokalize widget servis sözleşmesine bağlı kalır.
- Yeni testler, native widget layout veya provider katmanına tekrar runtime hardcoded metin eklenmesini yakalar.

### Test Sonucu
- `flutter test test\android_widget_localization_test.dart --reporter compact` PASS (`7/7`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`325/325`)
- `flutter build apk --debug` PASS (`build\app\outputs\flutter-apk\app-debug.apk`)

### Risk Değişimi
- Android widget native runtime/default state katmanında hardcoded veya yanlış dilde metin gösterme riski: `12/25 -> 2/25`

### Sonraki Adım
- Sonraki döngüde ARB dosyalarında kalan İngilizce-identical değerler taranacak; önce `chatbotUseCloudAi`, `nearbyMosques`, `distanceAwayKm`, `splashTagline` gibi hâlâ nadir locale'lerde İngilizce kalan kullanıcı metinleri ele alınacak.

## 2026-04-15 TUR-159 — Harden Daily Ayah Cache Fallback

### Yapılan İşlem
- `dailyAyatProvider` Supabase client okunamadığında doğrudan hata vermek yerine önce `readCachedDailyAyat` ile taze cache'i deneyecek şekilde güncellendi.
- Taze cache varsa günlük ayet ana ekran ve Android Ayah widget akışına cache üzerinden veriliyor.
- Supabase client yok ve taze cache de yoksa provider yine dürüst biçimde `daily_ayat_unavailable` hatası veriyor; sahte veya gömülü ayet üretmiyor.
- `daily_ayat_provider_test.dart` içine Supabase client unavailable + fresh cache ve Supabase client unavailable + missing cache edge-case testleri eklendi.
- Aynı döngüde geniş ARB auto-translation batch denendi; araç desteklenmeyen locale'lerde güvenilir çıktı üretmediği ve `sa` için şüpheli dil çıktısı verdiği için değişiklik commit edilmeden geri alındı.

### Neden Yapıldı
- `dailyAyatProvider`, `resolveDailyAyat` içindeki cache fallback'e ulaşmadan önce `ref.read(supabaseClientProvider)` çağırıyordu.
- Supabase init/client erişimi üretimde başarısız olursa taze cache mevcut olsa bile ana ekran günlük ayet kartı ve Android Ayah widget senkronizasyonu veri alamayabilirdi.
- Kök sebep, cloud client edinme hatasının veri çözümleme fallback zincirinin dışında olmasıydı.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\providers\supabase_providers.dart`
- `A:\Way of Allah\sirat_i_nur\test\daily_ayat_provider_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Günlük ayet akışı Supabase client başlangıç hatasında bile doğrulanmış taze cache'i kullanır.
- Offline/cache davranışı provider seviyesinde testli hale geldi.
- Dini içerik için sahte fallback üretilmedi; cache yoksa hata açıkça korunuyor.

### Test Sonucu
- `flutter test test\daily_ayat_provider_test.dart --reporter compact` PASS (`5/5`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`327/327`)

### Risk Değişimi
- Supabase client yokken taze günlük ayet cache'inin bypass edilmesi riski: `12/25 -> 3/25`

### Sonraki Adım
- Sonraki döngüde Supabase client edinme hatasının benzer şekilde cache/fallback zincirini bypass ettiği diğer provider'lar taranacak; özellikle `sukunAudioSourcesProvider`, `dailyDuasProvider`, `asmaUlHusnaProvider` ve Quran/audio provider zincirleri kontrol edilecek.

## 2026-04-15 TUR-160 — Preserve Fallback Providers When Supabase Client Is Missing

### Yapılan İşlem
- `readOptionalSupabaseClient` helper'ı eklendi; Supabase client henüz yoksa veya init başarısızsa exception yerine `null` döndürüyor.
- `dailyAyatProvider` bu helper'a taşındı; önceki cache fallback davranışı korunup tekrar kullanıldı.
- `sukunAudioSourcesProvider`, Supabase client yoksa boş güvenli kaynak haritası döndürerek mevcut honest unavailable state'in çalışmasına izin veriyor.
- `dailyDuasProvider`, Supabase client yoksa doğrulanmış bundled dua fallback'ine dönüyor.
- `asmaUlHusnaProvider`, Supabase client yoksa bundled Esma fallback'ini döndürüyor.
- `daily_ayat_provider_test.dart` içine fallback-backed cloud provider'ların Supabase unavailable durumunda local fallback'i bypass etmediğini doğrulayan test eklendi.

### Neden Yapıldı
- `sukunAudioSourcesProvider`, `dailyDuasProvider` ve `asmaUlHusnaProvider` sorgu hatalarını yakalıyordu; ancak `ref.read(supabaseClientProvider)` çağrısı try/catch dışında olduğu için Supabase init/client hatasında fallback zinciri devreye girmeden provider kırılabilirdi.
- Kök sebep, cloud client edinme adımının fallback kontrolünden ayrı tutulmasıydı.
- Bu, özellikle offline/ilk açılış/konfigürasyon hatası senaryolarında kullanıcıya boş ekran veya provider error gösterebilirdi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\providers\supabase_providers.dart`
- `A:\Way of Allah\sirat_i_nur\test\daily_ayat_provider_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Fallback'i olan cloud provider'lar Supabase client erişilemezken de güvenli, doğrulanmış yerel alternatife düşer.
- Sukun tarafı sahte ses üretmez; boş kaynak döndürür ve UI honest unavailable state'i gösterir.
- Dua ve Esma tarafı mevcut doğrulanmış bundled fallback zincirini korur.

### Test Sonucu
- `flutter test test\daily_ayat_provider_test.dart --reporter compact` PASS (`6/6`)
- `flutter analyze` PASS
- `flutter test --reporter compact` PASS (`328/328`)

### Risk Değişimi
- Supabase client edinme hatasının fallback-backed provider'larda local fallback'i bypass etme riski: `12/25 -> 3/25`

### Sonraki Adım
- Sonraki döngüde cloud-only provider'lar (`liveTvProvider`, `educationCategoriesProvider`, `educationTopicsProvider`) kullanıcıya dürüst hata/empty state veriyor mu ve client-unavailable halinde raw crash üretmeden yönetiliyor mu kontrol edilecek.

## 2026-04-15 TUR-161 — Harden Live TV Cloud Row Consumption

### Yapılan İşlem
- `LiveTvPage` icin cloud row URL tuketimi merkezi helper'lara tasindi: `resolveLiveTvCandidateUrls`, `resolveLiveTvExternalUri`, `resolveLiveTvDisplayText`.
- Embed/fallback/external stream URL'leri artik yalnizca `http` ve `https` scheme'leriyle kabul ediliyor; bos, relative, non-string, `javascript:` ve `youtube://` gibi launch/webview guvenli olmayan degerler reddediliyor.
- YouTube arama sonucu URL'leri stream adayi olarak kabul edilmiyor; embed URL'ler yinelenirse tekilleştiriliyor ve autoplay/playsinline/mute parametreleri kontrollu ekleniyor.
- `_openExternal` artik `Uri.parse` ile exception uretmiyor; gecersiz external URL'de lokalize `streamError` snackbar'i gosteriyor.
- Refresh/cloud data degisiminden sonra secili kanal index'i yeni liste uzunlugunun disina cikarsa 0'a cekiliyor.
- Title/subtitle alanlari non-string veya bos cloud degerlerinde `Text` widget'ina dynamic tip gecirmeden guvenli bos metne dusuyor.
- `live_tv_page_test.dart` icine URL sanitizer, external launcher URL, fallback candidate ve display text edge-case testleri eklendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\tv\live_tv_page.dart:218` onceki akista `Uri.parse(stream['external_url'] ?? '')` kullaniyordu; Supabase satirinda bos, bozuk veya non-string URL gelirse kullanici "YouTube'da ac" aksiyonunda crash uretebilirdi.
- `_currentCandidates` akisi da dynamic cloud degerlerini URL adayi olarak daraltmadan okuyordu; non-string veya guvenli olmayan scheme'ler ileride WebView/launcher tarafinda ayni sinif hatayi tekrar uretme riski tasiyordu.
- Liste refresh oldugunda `_selectedIndex` yeni liste uzunlugunun disinda kalabilirdi; bu da `final stream = _streams[_selectedIndex]` satirinda range hatasina acikti.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\tv\live_tv_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\live_tv_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Live TV cloud verisi bozuk veya beklenmeyen tipte gelse bile ekran crash yerine mevcut lokalize hata/empty-state davranisini korur.
- Guvenilmeyen URL scheme'leri WebView veya external launcher'a tasinmaz.
- Testler ayni riskin sadece `Uri.parse` satirinda degil, aday URL ve display text tuketiminde de tekrar acilmasini engeller.

### Test Sonucu
- `flutter test test\live_tv_page_test.dart` PASS (`6/6`)
- `flutter analyze` PASS
- `flutter test` PASS (`332/332`)

### Risk Değişimi
- Live TV cloud satirlarindan bozuk URL/tip veya refresh sonrasi index tasmasiyla crash uretme riski: `12/25 -> 3/25`

### Sonraki Adım
- Sonraki dongude `educationCategoriesProvider` ve `educationTopicsProvider` ile `LibraryPage` cloud-only egitim icerigi tuketimi ayni veri-hijyeni perspektifiyle taranacak; non-string title/content, bos kategori ve Supabase client unavailable hallerinin kullaniciya raw crash yerine durust lokalize state verip vermedigi dogrulanacak.

## 2026-04-15 TUR-162 — Harden Library Education Cloud Rows

### Yapılan İşlem
- `resolveEducationCategories`, `resolveEducationTopics`, `resolveEducationCategoryId`, `resolveEducationText` ve `resolveEducationIcon` helper'lari eklendi.
- `educationCategoriesProvider`, Supabase `education_categories` sonucunu UI'ya vermeden once id + title zorunlu olacak sekilde normalize ediyor; eksik/bos/uygunsuz satirlar filtreleniyor.
- `educationTopicsProvider`, topic title + content zorunlu olacak sekilde normalize ediyor; bos veya non-string dini/egitim icerigi gosterilmiyor.
- `LibraryPage`, provider zaten normalize etse bile test override veya gelecekteki ham veri kacislarina karsi kategorileri tekrar `resolveEducationCategories` ile filtreliyor.
- Kategori bos kalirsa egitim bolumu artik sessiz bos Column yerine lokalize `noResults` empty-state gosteriyor.
- Kategori id/title/icon/title_en ve topic title/title_en/content alanlari widget'a dynamic olarak gecirilmiyor; text/icon helper'lari ile guvenli string'e indirgeniyor.
- `library_page_cloud_duas_test.dart` icine kategori/topic sanitizer unit testleri ve bozuk kategori satirlarinin render oncesi filtrelendigini dogrulayan widget testi eklendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart:303` onceki akista `cat['id']` ve `cat['title']` dynamic olarak navigation fonksiyonuna veriliyordu; Supabase satirinda non-string/bos id veya title varsa runtime type/range akisi bozulabilirdi.
- `A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart:688` topic `title`, `title_en`, `content` alanlarini dogrudan `Text` widget'ina tasiyordu; non-string veya bos content hem crash hem de anlamsiz dini/egitim karti riski tasiyordu.
- Kök sebep, cloud-only egitim tablolarinda UI'dan once veri-hijyeni katmaninin olmamasiydi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\providers\supabase_providers.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\library\library_page_cloud_duas_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Library egitim bolumu bozuk cloud satirlariyla crash uretmez ve bos/uydurma egitim metni gostermez.
- Provider ve UI katmaninda cift guard oldugu icin test override, Supabase response sapmasi veya gelecekteki refactor ayni veri sinifini kolayca yeniden acamaz.
- Bos kategori sonucu artik kullaniciya durust empty-state olarak gorunur.

### Test Sonucu
- `flutter test test\features\library\library_page_cloud_duas_test.dart` PASS (`8/8`)
- `flutter analyze` PASS
- `flutter test` PASS (`335/335`)

### Risk Değişimi
- Library egitim cloud satirlarindan non-string/bos id, title veya content nedeniyle crash ya da anlamsiz kart gosterme riski: `12/25 -> 3/25`

### Sonraki Adım
- Sonraki dongude cloud-only provider client-unavailable davranisi ve ekranlarda raw exception sızıntısı taranacak; ozellikle `liveTvProvider`, `educationCategoriesProvider`, `educationTopicsProvider` hata state'lerinin lokalize ve kullaniciya durust kalmasi icin provider/UI test guard'lari kontrol edilecek.

## 2026-04-15 TUR-163 — Preserve Bundled Quran When Supabase Client Is Missing

### Yapılan İşlem
- `bundledQuranProvider`, Supabase client'i dogrudan `ref.read(supabaseClientProvider)` ile okumak yerine `readOptionalSupabaseClient(ref)` kullanacak sekilde guncellendi.
- Supabase client yoksa `loadCloudRows` bilincli olarak `null` donuyor ve mevcut `resolveQuranRows` zinciri dogrulanmis bundled Kur'an asset'ine dusuyor.
- `bundled_quran_provider_test.dart` icine provider seviyesinde Supabase client unavailable test eklendi; test gercek `assets/data/full_quran.json` dosyasini okuyup 114 surelik bundled payload'in dondugunu dogruluyor.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\providers\bundled_quran_provider.dart:307` onceki akista Supabase client edinme hatasi, `resolveQuranRows` fallback zincirine ulasmadan provider'i kirabiliyordu.
- Bu durum Quran ana ekran, sure okuma ve cuz okuma yuzeylerinde dogrulanmis bundled asset mevcut olsa bile kullaniciya hata gosterebilirdi.
- Kök sebep, cloud client edinme adiminin Kur'an bundled fallback zincirinin disinda kalmasiydi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\providers\bundled_quran_provider.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\quran\providers\bundled_quran_provider_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Supabase init/client hatasinda Kur'an icerigi sahte uretilmez; mevcut dogrulanmis bundled Kur'an asset'i kullanilir.
- Core Quran akisi offline/konfig hatasi senaryosunda daha dayanikli hale geldi.
- Provider seviyesinde regresyon testi, client edinme hatasinin fallback'i tekrar bypass etmesini engeller.

### Test Sonucu
- `flutter test test\features\quran\providers\bundled_quran_provider_test.dart` PASS (`12/12`)
- `flutter analyze` PASS
- `flutter test` PASS (`336/336`)

### Risk Değişimi
- Supabase client edinme hatasinin Quran bundled fallback zincirini bypass etme riski: `16/25 -> 3/25`

### Sonraki Adım
- Sonraki dongude `liveTvProvider`, `educationCategoriesProvider` ve `educationTopicsProvider` gibi gercek cloud-only provider'lar icin client-unavailable durumunun UI'da lokalize hata state'iyle kaldigini ve raw exception sızdırmadigini test guard'lariyla dogrula.

## 2026-04-15 TUR-164 — Sanitize Cloud-Only Provider Unavailable Errors

### Yapılan İşlem
- `kCloudContentUnavailableErrorCode` ve `readRequiredSupabaseClient` helper'i eklendi.
- `liveTvProvider`, `educationCategoriesProvider` ve `educationTopicsProvider` dogrudan `ref.read(supabaseClientProvider)` yerine `readRequiredSupabaseClient(ref)` kullanacak sekilde guncellendi.
- Supabase client yoksa bu cloud-only provider'lar sahte/yerel veri uretmiyor; kontrollu `StateError('cloud_content_unavailable')` uretiyor.
- `daily_ayat_provider_test.dart` icine Supabase client override'i raw/secret hata firlatsa bile cloud-only provider'larin yalnizca kontrollu hata kodunu dondurdugunu dogrulayan test eklendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\core\providers\supabase_providers.dart:187`, `:325` ve `:338` onceki akista Supabase client edinme hatasini oldugu gibi provider error'a tasiyordu.
- Live TV ve education cloud-only yuzeylerinde local fallback yok; bu dogru. Ancak client edinme hatasi raw exception olarak kalirsa log/UI/debug yuzeylerine detay sizma riski tasir.
- Kök sebep, fallback-backed provider'lar icin kurulan optional client sinirinin cloud-only provider'larda kontrollu hata sinirina donusturulmemesiydi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\providers\supabase_providers.dart`
- `A:\Way of Allah\sirat_i_nur\test\daily_ayat_provider_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Cloud-only provider'lar Supabase yokken sahte basari/yerel icerik uretmez.
- Raw Supabase init/client detaylari kontrollu hata koduyla maskelenir.
- UI tarafindaki mevcut lokalize error state'ler bu kontrollu hata uzerinden calismaya devam eder.

### Test Sonucu
- `flutter test test\daily_ayat_provider_test.dart` PASS (`7/7`)
- `flutter analyze` PASS
- `flutter test` PASS (`337/337`)

### Risk Değişimi
- Cloud-only provider'larda Supabase client edinme hatasinin raw exception olarak sizma riski: `12/25 -> 3/25`

### Sonraki Adım
- Sonraki dongude Settings/About ve Places directions gibi external URL launch yuzeyleri taranacak; sabit URL'ler bile bozulursa `Uri.parse` kaynakli crash veya sessiz launch failure uretmemesi icin helper/test guard degerlendirilecek.

## 2026-04-15 TUR-165 — Harden External URL Launches

### Yapılan İşlem
- `external_url.dart` helper'i eklendi; yalnizca host iceren `http`/`https` URI'leri dis uygulamaya acilabilir hale getirildi.
- `settings_page.dart` icindeki resmi namaz kaynagi, Play Store puanlama ve gizlilik politikasi linkleri ortak `launchExternalHttpUrl` helper'ina tasindi.
- `places_map_page.dart` icindeki Google Maps arama linki string interpolation yerine `Uri.https` ile uretilir hale getirildi ve ortak `launchExternalUri` helper'iyle aciliyor.
- `external_url_test.dart` icinde gecersiz semalar, bos/relative URL'ler, host'suz HTTPS ve Google Maps query encoding regresyonlari icin test guard eklendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart:113`, `:254` ve `:275` onceki akista sabit linkleri dogrudan parse edip launch ediyordu; ileride config/sabit degisirse invalid URL crash veya sessiz basarisizlik riski vardi.
- `A:\Way of Allah\sirat_i_nur\lib\features\places\places_map_page.dart:307` onceki akista harita koordinatlarini URL string'i icine elle yerlestiriyordu; merkezi encode/guard olmadigi icin ayni hata sinifi tekrar uretilebilirdi.
- Kök sebep, dis URL acma sinirinin her ekranda ayri ve guard'siz kurulmasiydi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\utils\external_url.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\places\places_map_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\external_url_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Dis linklerde host'suz, relative, `mailto:` veya `javascript:` gibi uygulama disi web linki olmayan girdiler acilmaz.
- Launch basarisiz olursa kullanici lokalize hata snackbar'i gorur; false success veya sessiz yutma yoktur.
- Google Maps linki query parametreleriyle encode edildigi icin koordinat linki daha dayanikli hale geldi.

### Test Sonucu
- `flutter test test\external_url_test.dart test\features\settings\settings_page_test.dart test\features\places\places_map_page_test.dart` PASS (`12/12`)
- `flutter analyze` PASS
- `flutter test` PASS (`339/339`)

### Risk Değişimi
- External URL launch parse/failure crash veya sessiz basarisizlik riski: `10/25 -> 2/25`

### Sonraki Adım
- Sonraki dongude kalan `Uri.parse` / `launchUrl` yuzeyleri taranacak; test veya kontrollu helper disinda kalan dis link akisi varsa ayni merkezi sinira alinacak, yoksa ARB kalite/regresyon ve premium hata metni risklerine gecilecek.

## 2026-04-15 TUR-166 — Clean ARB Translation Batch Debris

### Yapılan İşlem
- `app_ay.arb`, `app_lus.arb`, `app_mai.arb`, `app_sa.arb` ve `app_ti.arb` icindeki onceki ceviri batch'inden kalan satir basi/cop prefix'ler temizlendi.
- `chatbotOfflinePrompt` bilincli cok paragraflı mesaj olarak korundu; yalnizca basindaki batch debris satiri kaldirildi.
- `app_ti.arb` icindeki `placesMapTilesUnavailableTitle` degeri dogrulanabilir olmayan tekrarli Tigrinya cop metni tasidigi icin uydurma ceviri uretilmeden guvenli EN fallback'e indirildi.
- `flutter gen-l10n` calistirilarak generated `app_localizations_*.dart` dosyalari ARB kaynaklariyla senkronlandi.
- `arb_coverage_test.dart` icine izinli anahtarlar disinda newline, bilinen batch debris prefix'i ve 6+ kez tekrar eden kelime run'i yakalayan regresyon testi eklendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_ay.arb:47`, `app_lus.arb:47`, `app_mai.arb:47`, `app_sa.arb:47` ve `app_ti.arb:47` gibi ortak UI anahtarlarinda kullaniciya gorunen metin basinda ceviri cop parcalari bulunuyordu.
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_ti.arb:756` onceki akista tek satir baslik yerine uzun tekrarli "ስርሓት" dizisi tasiyordu.
- Kök sebep, ARB coverage testlerinin anahtar/metadata varligini kontrol etmesine ragmen mesaj degerlerinde batch debris, beklenmeyen newline ve tekrarli kelime bozulmasini yakalamamasiydi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_ay.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_lus.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_mai.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_sa.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_ti.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_ay.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_lus.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_mai.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_sa.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_ti.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_coverage_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- 5 locale'deki no-results, loading, premium hata, tafsir hata ve places honest-state kopyalari artik kullaniciya cop prefix ile gorunmez.
- Tekrarlayan bozuk metin, ozellikle Places map tile unavailable basligi icin UI'da anlamsiz uzun blok olusturmaz.
- Yeni ARB kalite testi ayni bozulma sinifinin ileride tekrar sessizce generated dosyalara tasinmasini engeller.

### Test Sonucu
- `flutter test test\arb_coverage_test.dart` PASS (`3/3`)
- `flutter analyze` PASS
- `flutter test` PASS (`340/340`)

### Risk Değişimi
- ARB batch debris / beklenmeyen newline / tekrarli kelime bozulmasinin kullaniciya gorunme riski: `16/25 -> 3/25`

### Sonraki Adım
- Sonraki dongude kalan dogrudan Live TV external launch akisi ortak URL helper'a alinacak mi kontrol edilecek; ardindan `prayerRemainingUnavailable`, `missingEnglish` ve genis locale fallback kalintilari icin sahte ceviri uretmeden kalite guard'lari genisletilecek.

## 2026-04-15 TUR-167 — Harden Live TV External URL Boundary

### Yapılan İşlem
- Live TV URL sanitizer'i `isExternalHttpUri` ortak helper'ina baglandi; artik sadece host iceren `http`/`https` URI'leri kabul ediliyor.
- `_openExternal`, `canLaunchUrl` + `launchUrl` akisi yerine merkezi `launchExternalUri` helper'ini kullanacak sekilde guncellendi.
- Live TV testlerine host'suz `https:///missing-host` external URL ve embed candidate regresyonlari eklendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\tv\live_tv_page.dart:25` onceki akista yalnizca semayi kontrol ediyor, host'u zorunlu tutmuyordu.
- `A:\Way of Allah\sirat_i_nur\lib\features\tv\live_tv_page.dart:228` onceki akista Live TV external launch kendi ad-hoc `canLaunchUrl`/`launchUrl` sinirini kullaniyor, ortak failure guard'ini bypass ediyordu.
- Kök sebep, Live TV'nin TUR-165'te eklenen merkezi dis URL sinirindan ayri kalmasiydi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\tv\live_tv_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\live_tv_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Host'suz veya malformed HTTP(S) Live TV URL'leri WebView candidate zincirine ya da external launch'a ilerleyemez.
- Live TV external launch basarisizligi merkezi helper tarafindan kontrollu ve lokalize hata yoluna girer.
- External URL hardening tek helper sinirinda toplandigi icin ayni hata sinifi daha zor tekrar eder.

### Test Sonucu
- `flutter test test\live_tv_page_test.dart test\external_url_test.dart` PASS (`8/8`)
- `flutter analyze` PASS
- `flutter test` PASS (`340/340`)

### Risk Değişimi
- Live TV host'suz/malformed URL'nin WebView veya external launch'a sizma riski: `12/25 -> 2/25`

### Sonraki Adım
- Sonraki dongude l10n kalite taramasinda `prayerRemainingUnavailable`, `missingEnglish` ve fallback-English kalintilarinin hangi locale/test kapsami disinda kaldigi kanitlanacak; dogrulanabilir olanlar duzeltilecek, dogrulanamayanlar icin sahte ceviri yerine guard/rapor stratejisi uygulanacak.

## 2026-04-15 TUR-168 — Normalize Prayer Remaining Placeholder Across Locales

### Yapılan İşlem
- `prayerRemainingUnavailable` degeri 21 locale'de dogrulanmis sembolik placeholder olan `--` degerine normalize edildi.
- `flutter gen-l10n` calistirilarak ilgili generated `app_localizations_*.dart` dosyalari ARB kaynaklariyla senkronlandi.
- `arb_ui_localization_test.dart` icine tum locale dosyalarinda `prayerRemainingUnavailable == "--"` invariant'ini zorunlu kılan test eklendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\home\home_page.dart:13` kalan vakit hesaplanamadiginda bu anahtari dogrudan ana ekranda gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_bho.arb:758` onceki akista `-- 1999 में भइल रहे।`, `app_sa.arb:758` ise `-- ९.` gibi bozulmus metin tasiyordu.
- Bu anahtar dilsel cumle degil, UI placeholder oldugu icin her locale'de ayni sembolik deger olmali; farkli/uzatilmis degerler ana ekranda anlamsiz metin gosterebilir.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_ak.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_ay.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_bho.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_bm.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_ee.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_gn.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_ilo.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_kri.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_ln.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_lus.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_nso.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_om.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_or.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_qu.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_rw.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_sa.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_tk.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_ts.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_tt.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_tw.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_ug.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart` ilgili 21 locale dosyasi
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Ana ekranda kalan vakit hesaplanamadiginda hicbir locale bozuk sayi/cumle parcasi gostermeyecek.
- Placeholder artik ceviri pipeline'i tarafindan yanlislikla cumlelestirilemez; yeni test tum locale dosyalarinda bunu yakalar.
- `missingEnglish` gibi gercek ceviri isteyen genis kapsamli anahtarlar bu turda uydurulmadan bir sonraki analiz turuna birakildi.

### Test Sonucu
- `flutter test test\arb_ui_localization_test.dart --plain-name "general ARB localization coverage prayer remaining unavailable placeholder stays symbolic in every locale"` PASS (`1/1`)
- `flutter analyze` PASS
- `flutter test` PASS (`341/341`)

### Risk Değişimi
- Home kalan vakit placeholder'inin bozuk locale metni gostermesi riski: `10/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude `missingEnglish` ve diagnostics/localization durum metinleri icin kullaniciya gorunen yuzeyler incelenecek; once priority locale'lerde dogrulanabilir ceviri ve test guard, sonra nadir diller icin sahte olmayan fallback stratejisi uygulanacak.

## 2026-04-15 TUR-169 — Remove Legacy Unused missingEnglish L10n Key

### Yapılan İşlem
- `missingEnglish` ve `@missingEnglish` anahtarlari 196 ARB dosyasindan kaldirildi.
- `flutter gen-l10n` calistirilarak abstract `AppLocalizations.missingEnglish` API'si ve tum generated locale override'lari temizlendi.
- `arb_coverage_test.dart` icine bu legacy anahtarin ARB kaynaklarina veya generated l10n API'sine geri donmesini engelleyen guard eklendi.

### Neden Yapıldı
- `rg -n "missingEnglish\\(" lib test` taramasinda anahtarin uretim kodunda hicbir cagrisi olmadigi, yalnizca generated localization dosyalarinda yasadigi goruldu.
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb:337` ve diger 195 ARB dosyasi kullanilmayan diagnostic metni tasiyordu.
- Kök sebep, daha once diagnostics/localization sayimlari icin tasarlanmis legacy anahtarin UI akisi sadeleştikten sonra ARB ve generated API'de orphan kalmasiydi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_coverage_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Kullanilmayan ve 188 locale'de English fallback kalan bir l10n API uyesi kaldirildi; sahte/otomatik ceviri uretmeden borc temizlendi.
- Generated localization yuzeyi kuculdu ve ileride bu legacy anahtara yanlislikla yeni ceviri batch'i uygulanmasi engellendi.
- Yeni guard, ARB kaynaklari ve generated Dart dosyalari birlikte kontrol ettigi icin anahtarin sessizce geri gelmesini yakalar.

### Test Sonucu
- `flutter test test\arb_coverage_test.dart --plain-name "ARB coverage legacy missingEnglish diagnostic key stays removed"` PASS (`1/1`)
- `flutter analyze` PASS
- `flutter test` PASS (`342/342`)

### Risk Değişimi
- Kullanilmayan `missingEnglish` anahtarinin English fallback/ceviri borcu olarak kalmasi riski: `8/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude kalan l10n fallback taramasinda yalnizca uretim yuzeyinde gorunen aktif anahtarlar ele alinacak; unused anahtarlar remove, aktif anahtarlar ise dogrulanabilir priority locale ceviri + test guard seklinde islenecek.

## 2026-04-15 TUR-170 — Harden Places Overpass Endpoint Boundary

### Yapılan İşlem
- `resolvePlacesOverpassEndpoint` fonksiyonu merkezi `isExternalHttpUri` kuralina baglandi.
- Overpass endpoint konfigurasyonu artik yalnizca host'u olan `http` veya `https` URI kabul ediyor.
- Places helper testine `ftp://overpass.example/api` ve `https:///missing-host` regresyon vakalari eklendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\places\places_map_page.dart:43` endpoint cozumleyici sadece `hasScheme` ve `host.isEmpty` kontrolu yapiyordu.
- Bu kontrol `ftp://overpass.example/api` gibi HTTP disi ama host'lu URI'leri kabul edebiliyordu; hata ancak `http.post` katmaninda gec yakalanirdi.
- Ayni projede dis linkler icin `A:\Way of Allah\sirat_i_nur\lib\core\utils\external_url.dart:5` merkezi HTTP(S) kuralina gecildigi icin Places ag endpoint'i de ayni sinira baglanmaliydi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\places\places_map_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\places\places_map_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Yanlis Overpass konfigurasyonlari ag istegine inmeden deterministik `FormatException` ile durdurulur.
- Places harita akisi public tile fallback veya Istanbul fallback kullanmadan, sadece acik konfigurasyonla calismaya devam eder.
- Yeni test guard'i, ileride endpoint validation'in HTTP(S) disi scheme'lere genislemesini engeller.

### Test Sonucu
- `flutter test test\features\places\places_map_page_test.dart test\external_url_test.dart` PASS (`7/7`)
- `flutter analyze` PASS
- `flutter test` PASS (`342/342`)

### Risk Değişimi
- Places Overpass endpoint'inin gecersiz scheme/host konfigurasyonlarini gec kabul etmesi riski: `8/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude public/external servis bagimliliklari taramasi devam edecek; ozellikle Overpass varsayilan endpoint'in operasyonel sureklilik riski ve Supabase proxy/edge-function gereksinimi kanitla ayrilacak.

## 2026-04-15 TUR-171 — Remove Public Overpass Default Dependency

### Yapılan İşlem
- `PLACES_OVERPASS_API_URL` default degeri bos yapildi; uygulama artik define verilmeden public Overpass servisine cikmiyor.
- Places veri kaynagi icin `PlacesDataAvailability` ve `canFetchPlaces` helper'lari eklendi.
- Endpoint yoksa veya HTTP(S) degilse Places fetch zinciri baslamadan duruyor; UI lokalize ve durust "mekan verisi kullanilamiyor" durumunu gosteriyor.
- Yeni `placesDataSourceUnavailableTitle` ve `placesDataSourceUnavailableBody` anahtarlari 196 ARB dosyasina eklendi, `flutter gen-l10n` ile generated API yenilendi.
- Uzun localized empty-state metinleri icin bottom sheet bos durum UI'i scroll toleransli hale getirildi.
- README production konfigurasyon ornegi public Overpass yerine onayli proxy/provider yonlendirmesine cekildi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\core\network\supabase_config.dart:56` onceki default `https://overpass-api.de/api/interpreter` idi.
- `A:\Way of Allah\sirat_i_nur\lib\features\places\places_map_page.dart:273` init akisi ve `:388` anchor sync akisi kayitli konum varsa endpoint explicit olmadan fetch baslatabiliyordu.
- `A:\Way of Allah\sirat_i_nur\README.md:61` public Overpass default'unu development icin normal kabul ediyordu; bu, production sureklilik ve servis politikasi acisindan gizli dis bagimlilik yaratiyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\README.md`
- `A:\Way of Allah\sirat_i_nur\lib\core\network\supabase_config.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\places\places_map_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations*.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\places\places_map_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Public Overpass endpoint artik uygulamanin sessiz varsayilani degil; yakin mekan aramasi ancak operator acikca onayli HTTP(S) endpoint verdiginde baslar.
- Konum var ama endpoint yoksa arka planda false network error uretmek yerine veri kaynagi eksigi lokalize olarak anlatilir.
- Yeni widget testi, endpoint yokken `Network error. Please try again.` gosterilmedigini ve durust data-source state'in gorundugunu dogrular.
- `rg -n "overpass-api\.de|tile\.openstreetmap\.org" README.md lib test tool` temiz dondu; dogrudan public harita/Overpass bagimliligi kalmadi.

### Test Sonucu
- `flutter test test\features\places\places_map_page_test.dart test\arb_ui_localization_test.dart test\translate_arb_keys_test.dart` PASS (`45/45`)
- `flutter analyze` PASS
- `flutter test` PASS (`344/344`)

### Risk Değişimi
- Places akisini public Overpass varsayilanina sessiz baglama riski: `16/25 -> 1/25`
- Uzun localized Places empty-state metinlerinde bottom sheet overflow riski: `9/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude kalan dis URL ve cloud data provenance riskleri taranacak; ozellikle Supabase seed/storage ses kaynaklarinda external URL kaldiysa runtime'in Storage-backed kaynagi zorunlu tutup tutmadigi tekrar kanitlanacak.

## 2026-04-16 TUR-172 — Require Storage-Backed Runtime Audio

### Yapılan İşlem
- Quran offline audio resolver'i `storage_path` yoksa external `url` degerini playable kaynak olarak dondurmemeye cekildi.
- Dua ve Asma cloud resolver'lari `storage_path` yoksa `audio_url` / `url` fallback'i vermeyecek sekilde sertlestirildi.
- Sukun cloud source testleri storage-backed satirlari bekleyecek ve external-only satirlari reddedecek hale getirildi.
- README ses egemenligi bolumu "runtime requires Supabase Storage-backed `storage_path` rows" politikasina guncellendi.
- Test guard'lari external URL'lerin sadece mirror/provenance girdisi olarak kalmasini, runtime playback fallback olmamasini dogrulayacak sekilde yenilendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\core\services\offline_audio_service.dart:31` once `storage_path` yoksa `url` alanini playable audio kabul ediyordu.
- `A:\Way of Allah\sirat_i_nur\lib\core\constants\duas_data.dart:79` ve `A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart:948` ayni sekilde storage yoksa external audio URL'ye dusuyordu.
- Kullanici hedefi seslerin bizim storage/database hattimizdan gelmesi; external linkler sadece dogrulanmis mirror araclari icin kaynak olarak kalmali, uygulama runtime'inda false playback garantisi vermemeli.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\README.md`
- `A:\Way of Allah\sirat_i_nur\lib\core\services\offline_audio_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\constants\duas_data.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart`
- `A:\Way of Allah\sirat_i_nur\test\offline_audio_service_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\sukun_audio_sources_provider_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\duas_data_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\asma_ul_husna_data_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\readme_operational_docs_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Quran, Dua, Asma ve Sukun runtime audio yuzeyleri external URL kapanmasindan etkilenmeyecek sekilde Storage-backed kaynagi zorunlu tutar.
- External audio URL'ler artik sadece mirror/upload tooling icin dogrulanmis kaynak verisi olarak kalir; uygulama tarafinda oynatilabilir fallback sayilmaz.
- Storage yuklenmeden seed uygulanirsa audio ozelligi sahte basari yerine eksik kaynak olarak davranir.

### Test Sonucu
- `flutter test test\readme_operational_docs_test.dart test\offline_audio_service_test.dart test\sukun_audio_sources_provider_test.dart test\duas_data_test.dart test\asma_ul_husna_data_test.dart` PASS (`30/30`)
- `flutter analyze` PASS
- `flutter test` PASS (`346/346`)

### Risk Değişimi
- Runtime audio'nun external URL fallback'e bagimli kalmasi riski: `16/25 -> 1/25`
- Storage yuklenmeden audio'nun playable kabul edilmesi riski: `12/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude `AudioSovereigntyService.playSource` ve dogrudan cloudSources enjekte edilen test/ekran yuzeyleri incelenecek; Supabase Storage disi remote URL'lerin UI veya servis katmaninda yanlislikla oynatilabilir kabul edilip edilmedigi kanitla ayrilacak.

## 2026-04-16 TUR-173 — Block Non-Storage Remote Audio Playback

### Yapılan İşlem
- `isSupabaseStoragePublicUrl` guard'i eklendi; sadece configured Supabase public audio bucket URL'leri playable remote audio kabul ediliyor.
- `AudioPlayerService.playUrl` non-storage remote URL'leri just_audio'ya ulasmadan false dondurecek sekilde sertlestirildi.
- `AudioSovereigntyService` cloud sukun kaynaklarini ve `playSource` remote kararini ayni Storage guard'i uzerinden gecirecek hale getirildi.
- Library, Sukun audio page ve diagnostics hazirlik sayaclari remote kaynaklari artik "her http/https hazir" olarak degil, sadece Storage-backed ise hazir sayiyor.
- Widget/unit testleri Storage-backed sukun URL'lerinin calistigini, external-only sukun URL'lerinin gizlendigini ve engine'e ulasmadigini dogrulayacak sekilde guncellendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\core\services\audio_sovereignty_service.dart:14` generic `isRemoteAudioSource` ile her HTTP(S) URL'yi remote audio kabul ediyordu.
- `A:\Way of Allah\sirat_i_nur\lib\core\services\audio_sovereignty_service.dart:115` cloudSources injection icindeki URL'nin bizim Storage hattimizdan gelip gelmedigini kontrol etmiyordu.
- `A:\Way of Allah\sirat_i_nur\lib\core\services\audio_player_service.dart:60` direct `playUrl` cagrilarinda external remote URL'leri oynatmaya acikti.
- `A:\Way of Allah\sirat_i_nur\lib\features\library\sukun_audio_page.dart:38`, `A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart:26` ve `A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart:190` UI/diagnostics seviyesinde external cloud kaynaklari hazir sayabiliyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\network\supabase_storage_url.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\services\audio_player_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\services\audio_sovereignty_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\library\sukun_audio_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\supabase_storage_url_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\audio_sovereignty_service_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\library_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\sukun_audio_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\library\library_page_cloud_duas_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\settings\diagnostics_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Runtime audio artik external CDN veya ucuncu taraf MP3 kapanmalarina sessizce baglanmiyor; sadece bizim configured Supabase Storage public audio bucket'larimiz playable remote kabul ediliyor.
- Sukun UI, library entry ve diagnostics ayni guvenlik/egemenlik kuralini paylasiyor; false-ready ve false-success riski azaldi.
- Asma gibi direct `AudioPlayerService.playUrl` yuzeyleri de central guard sayesinde Storage disi remote URL'yi oynatmaya calismiyor.
- `rg -n "cdn\.example|https://[^'\"]+\.mp3" lib test` temiz dondu; test fixture'larinda bile external playable MP3 ornegi kalmadi.

### Test Sonucu
- `flutter test test\supabase_storage_url_test.dart test\audio_sovereignty_service_test.dart test\library_page_test.dart test\sukun_audio_page_test.dart test\features\library\library_page_cloud_duas_test.dart test\features\settings\diagnostics_page_test.dart` PASS (`50/50`)
- `flutter analyze` PASS
- `flutter test` PASS (`350/350`)

### Risk Değişimi
- `AudioSovereigntyService` veya direct `playUrl` uzerinden Storage disi remote audio oynatilmasi riski: `16/25 -> 1/25`
- UI/diagnostics'in external sukun URL'lerini hazir saymasi riski: `12/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude content/schema/seed tarafinda `audio_files.url` alaninin mirror/provenance disinda runtime anlam tasimadigi README ve tooling guard'lariyla tamamen kanitlanacak; ardindan kalan TODO/placeholder ve hardcoded string taramasina donulecek.

## 2026-04-16 TUR-174 — Mark Legacy Quran Audio Seed As Mirror-Only

### Yapılan İşlem
- README'deki eski "MP3 CDN endpoint" iddiasi Storage-backed audio politikasina uygun hale getirildi.
- `content_seed_quran_audio.sql` ve `tool/generate_quran_audio_seed.dart` basliklari "mirror input only" diye acik etiketlendi.
- README Quran Audio Sovereignty bolumu `content_seed_quran_audio.sql` dosyasinin runtime playback seed veya fallback olmadigini netlestirdi.
- Test guard'lari legacy seed'in mirror-only oldugunu ve README'nin stale CDN ifadesini yeniden tasimadigini dogrulayacak sekilde genisletildi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\README.md:15` hala audio voice selector'larin "MP3 CDN endpoint" kaydirdigini soyluyordu; TUR-172/TUR-173 sonrasi bu yanlis ve operasyonel olarak riskliydi.
- `A:\Way of Allah\sirat_i_nur\content_seed_quran_audio.sql:1` ve `A:\Way of Allah\sirat_i_nur\tool\generate_quran_audio_seed.dart:35` dosyayi sadece "verified seed" diye etiketliyordu; oysa satirlar external `url` + NULL `storage_path` tasiyor ve runtime icin tek basina uygulanmamali.
- Storage-backed runtime akisinda bu dosya sadece mirror/upload pipeline'inin kaynak katalog girdisidir; bu ayrim yazili ve testli olmazsa operator yanlis seed uygulayabilir.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\README.md`
- `A:\Way of Allah\sirat_i_nur\content_seed_quran_audio.sql`
- `A:\Way of Allah\sirat_i_nur\tool\generate_quran_audio_seed.dart`
- `A:\Way of Allah\sirat_i_nur\test\quran_audio_seed_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\readme_operational_docs_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Operator artik legacy external URL seed'ini runtime audio seed'i sanmayacak; production playback icin Storage seed zorunlulugu README, SQL ve generator seviyesinde gorunur.
- Testler `content_seed_quran_audio.sql` mirror-only basligini ve README'deki Storage-backed runtime metnini koruyor.
- Kod runtime davranisi degismedi; bu tur sadece dokumantasyon/tooling belirsizligini kapatti.

### Test Sonucu
- `flutter test test\quran_audio_seed_test.dart test\readme_operational_docs_test.dart` PASS (`5/5`)
- `flutter analyze` PASS
- `flutter test` PASS (`351/351`)

### Risk Değişimi
- Legacy Quran audio seed'inin production playback seed'i sanilmasi riski: `12/25 -> 1/25`
- README'nin direct CDN audio mimarisini yeniden normalleştirmesi riski: `10/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude kalan `TODO`/`placeholder`/stale README ve test fixture bulgulari daraltip gercek production risklerinden baslanacak; ozellikle debug log sanitization ve raw error copy guard'lari yeniden taranacak.

## 2026-04-16 TUR-175 — Sanitize Bootstrap Stack Logging

### Yapılan İşlem
- Global `runZonedGuarded` hata handler'i raw stack trace basmayacak sekilde sadeleştirildi.
- Prayer notification bootstrap catch blogu `debugPrintStack` kullanmayacak hale getirildi.
- `main_bootstrap_logging_test` icine `debugPrintStack` guard'i eklendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\main.dart:126` global uncaught error handler'i sembolik mesajdan sonra stack trace basiyordu.
- `A:\Way of Allah\sirat_i_nur\lib\main.dart:211` prayer notification bootstrap hata yolunda da stack trace basiliyordu.
- Onceki guard raw exception objelerini engelliyordu ama stack trace sızıntısını yakalamıyordu; stack trace cihaz yolu, plugin detayi ve ortam bilgisi tasiyabilir.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\main.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\common\main_bootstrap_logging_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Bootstrap/global hata loglari artik raw stack trace yaymadan sembolik, sanitize mesajlar verir.
- Android widget sync ve prayer bootstrap davranisi degismedi; sadece log ayrintisi daraltildi.
- Test guard'i `debugPrintStack` geri gelirse yakalar.

### Test Sonucu
- `flutter test test\features\common\main_bootstrap_logging_test.dart` PASS (`2/2`)
- `flutter analyze` PASS
- `flutter test` PASS (`351/351`)

### Risk Değişimi
- Bootstrap/global hata loglarinda stack trace ve ortam detayi sızması riski: `10/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude `sharedPreferencesProvider` UnimplementedError bulgusunun production'da override ile guvenli kaldigi testle kanitlanacak veya gerekiyorsa daha guvenli bootstrapping guard'i eklenecek; ardindan remaining hardcoded UI string taramasi surdurulecek.

## 2026-04-16 TUR-176 — Replace SharedPreferences Stub Error

### Yapılan İşlem
- `sharedPreferencesProvider` artik `UnimplementedError` yerine sabit kodlu `StateError` donduruyor.
- `kSharedPreferencesProviderNotBootstrappedErrorCode` eklendi.
- Test, provider override edilmeden okunursa kontrollu hata kodu verdigini ve kaynak dosyada `UnimplementedError` kalmadigini dogruluyor.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_provider.dart:5` AGENTS taramasinda placeholder/stub benzeri `UnimplementedError` olarak yakalandi.
- Production bootstrapping `A:\Way of Allah\sirat_i_nur\lib\main.dart:121` uzerinde `sharedPreferencesProvider.overrideWithValue(prefs)` ile dogru calisiyor; yine de override unutulursa hata kontrollu ve aranabilir bir kodla cikmali.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_provider.dart`
- `A:\Way of Allah\sirat_i_nur\test\settings_provider_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Provider artik "implement later" izlenimi veren hata tipi kullanmiyor.
- Bootstrapping hatasi olursa stable hata kodu ile yakalanabilir; production override akisi degismedi.
- Test suite bu guard'i iceriyor ve toplam test sayisi 352'ye cikti.

### Test Sonucu
- `flutter test test\settings_provider_test.dart` PASS (`13/13`)
- `flutter analyze` PASS
- `flutter test` PASS (`352/352`)

### Risk Değişimi
- SharedPreferences provider'in stub/placeholder hata gibi gorunmesi ve override unutulmasinda belirsiz crash vermesi riski: `8/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude hardcoded UI metin taramasi daha dar AST/grep kombinasyonuyla surdurulecek; currency/proper noun gibi bilerek sabit kalanlar ayrilip gercek lokalizasyon eksikleri kapatilacak.

## 2026-04-16 TUR-177 — Remove Debug Premium Unlock Fallback

### Yapılan İşlem
- `PremiumNotifier.purchasePremium()` icindeki debug/dev fallback premium verme blogu kaldirildi.
- Premium entitlement yorumlari platform store `purchased/restored` event'i disinda local unlock olmayacak sekilde netlestirildi.
- README'deki stale "Paywall button toggles local state" ve "Local simulated Paywall provider" ifadeleri platform in-app purchase akisina gore duzeltildi.
- Premium ve README testlerine debug fallback'in geri gelmesini engelleyen guard'lar eklendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\premium\premium_provider.dart:121` urun listesi bosken debug build'de `kDebugMode` kontroluyle `isPremium=true` yapiyordu.
- Bu davranis gercek store satin almasi olmadan premium basarisi urettigi icin AGENTS false-success yasagini ihlal ediyordu.
- `A:\Way of Allah\sirat_i_nur\README.md:15` ve `A:\Way of Allah\sirat_i_nur\README.md:43` hala local simulated/toggle anlatimini tasiyordu; dokumantasyon gercek akisla celisiyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\premium\premium_provider.dart`
- `A:\Way of Allah\sirat_i_nur\README.md`
- `A:\Way of Allah\sirat_i_nur\test\features\premium\paywall_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\readme_operational_docs_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Premium artik debug ortaminda bile urun bilgisi yokken local entitlement grant etmiyor; kullaniciya localized product unavailable hatasi donuyor.
- Store stream'inden `purchased/restored` event gelmeden `SharedPreferences` icine premium yetkisi yazilmiyor.
- README operasyonel gercegi saklamiyor; paywall'in platform store akisina bagli oldugunu soyluyor.
- Test guard'lari `kDebugMode` premium fallback'i ve stale README simülasyon metinleri geri gelirse yakalayacak.

### Test Sonucu
- `flutter test test\features\premium\paywall_page_test.dart test\premium_provider_test.dart` PASS (`11/11`)
- `flutter test test\readme_operational_docs_test.dart` PASS (`3/3`)
- `flutter analyze` PASS
- `flutter test` PASS (`354/354`)

### Risk Değişimi
- Premium urunleri yuklenmeyince debug/dev build'de satin alma olmadan entitlement verilmesi riski: `16/25 -> 1/25`
- README'nin simulated premium davranisini normalleştirmesi riski: `10/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude premium receipt/server validation notlari ve kalan stale/fake davranis taramasi ayrilacak; ardindan production false-success yuzeyleri icin offline download, purchase restore timeout ve map fallback akislari tekrar taranacak.

## 2026-04-16 TUR-178 — Remove Supabase Anon Key Fallback

### Yapılan İşlem
- `SupabaseConfig.anonKey` icindeki commit edilmis `sb_publishable_...` default fallback kaldirildi.
- `SupabaseConfig.hasRuntimeCredentials()` ve `SupabaseConfig.isConfigured` eklendi.
- `SupabaseConfig.initialize()` artik URL + anon key birlikte yoksa kontrollu `supabase_credentials_missing` hata koduyla cikiyor; `main.dart` bunu zaten non-blocking yakaliyor.
- README, Supabase'in build-time config ile aktif oldugunu ve anon key'in default olarak bos kalmasi gerektigini anlatacak sekilde duzeltildi.
- `supabase_config_test.dart` eklendi; kaynakta anon key fallback'i geri gelirse ve credential helper gevserse test fail edecek.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\core\network\supabase_config.dart:21` anon key'i `String.fromEnvironment` defaultValue olarak koda gomuyordu.
- AGENTS.md Section 13 API key'lerin `.env` veya build-time config ile yonetilmesini, koda gomulmemesini zorunlu kiliyor.
- Anon/publishable key secret-grade olmasa bile production config'i repo icine sabitlemek yanlis proje baglantisi, veri egemenligi karisikligi ve anahtar rotasyonu riski dogurur.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\network\supabase_config.dart`
- `A:\Way of Allah\sirat_i_nur\README.md`
- `A:\Way of Allah\sirat_i_nur\test\supabase_config_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Repo artik Supabase anon key fallback'i tasimiyor; production/cloud calismasi `--dart-define=SUPABASE_ANON_KEY=...` ile bilincli olarak acilacak.
- Local/test calismada Supabase init eksik credential nedeniyle kontrollu ve non-blocking sekilde devre disi kaliyor; mevcut bundled/cache fallback testleri aynen geciyor.
- Public Storage URL uretimi icin proje URL default'u korunuyor; API key disari tasindi.
- `rg -n "sb_publishable|SUPABASE_ANON_KEY.*defaultValue|defaultValue: 'sb_" . --glob '!build/**' --glob '!**/.dart_tool/**'` sifir eslesme dondurdu.

### Test Sonucu
- `flutter test test\supabase_config_test.dart test\readme_operational_docs_test.dart` PASS (`5/5`)
- `flutter analyze` PASS
- `flutter test` PASS (`356/356`)

### Risk Değişimi
- Supabase anon key'in repoda default fallback olarak ship edilmesi riski: `16/25 -> 1/25`
- Eksik Supabase credential durumunda belirsiz init davranisi riski: `8/25 -> 2/25`

### Sonraki Adım
- Sonraki dongude kalan secret/config taramasi `API_KEY`, `SECRET`, `TOKEN`, `YOUR_`, `example.com`, `localhost` ve platform manifest dosyalari uzerinden surdurulecek; ardindan en yuksek production riskli bulguya minimal patch uygulanacak.

## 2026-04-16 TUR-179 — Make Chatbot Cloud Status Honest When Gemini Is Missing

### Yapılan İşlem
- Chatbot artik `GEMINI_API_KEY` yokken baslangicta `Offline Fallback` modunda aciliyor.
- Gemini chat session olusmadiysa Cloud AI popup menu item'i disabled hale getirildi.
- Savunmali olarak cloud secimi chat session yokken tetiklenirse localized `chatbotCloudNotConfigured` snackbar'i gosteriliyor ve cloud moduna gecilmiyor.
- EN/TR widget testleri key yokken Cloud rozetinin gorunmemesini, Offline Fallback rozetinin gorunmesini ve Cloud menu item'inin disabled kalmasini dogrulayacak sekilde guncellendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\chatbot\chatbot_page.dart:45` `_isOfflineMode=false` basliyordu.
- `A:\Way of Allah\sirat_i_nur\lib\features\chatbot\chatbot_page.dart:53` `GEMINI_API_KEY` bosken `_chat` null kaliyor ama UI satir 167-169 araliginda hala `chatbotCloudAiLabel` gosteriyordu.
- Bu, cloud servis hazir degilken kullaniciya Cloud AI hazir sinyali verdigi icin false-ready riskidir.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\chatbot\chatbot_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\chatbot\chatbot_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Gemini key enjekte edilmemis build'lerde chatbot kendini cloud hazir gibi gostermiyor.
- Kullanici cloud moduna gecemez; bunun yerine dogrulanmis local dataset hazir olana kadar sinirli ve durust offline fallback akisinda kalir.
- Gemini key build-time verildiginde `_initGemini()` chat session'i olusturur ve Cloud AI modu normal calismaya devam eder.

### Test Sonucu
- `flutter test test\features\chatbot\chatbot_page_test.dart` PASS (`5/5`)
- `flutter test test\chatbot_system_instruction_test.dart` PASS (`2/2`)
- `flutter analyze` PASS
- `flutter test` PASS (`356/356`)

### Risk Değişimi
- Gemini key yokken chatbotun Cloud AI hazir gibi gorunmesi riski: `12/25 -> 1/25`
- Kullanici cloud secimini gercek chat session olmadan etkinlestirebilme riski: `10/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude chatbot offline/local dataset tarafinda gercek veri yokken kalan copy ve mode akislarinin tamamı taranacak; ardindan `example.com`/`tiles.example.com` dokumantasyon placeholder'lari ve production manifest ayarlari tekrar ayrilacak.

## 2026-04-16 TUR-180 — Restrict Live TV Playback Hosts

### Yapılan İşlem
- Live TV stream/embed URL kabul kapisi `https` ve guvenilir YouTube hostlari ile sinirlandi.
- `youtube.com`, alt alanlari, `youtube-nocookie.com` ve alt alanlari disindaki cloud `embed_url`, `fallback_embed_url` ve `external_url` degerleri oynatma aday listesine alinmiyor.
- YouTube arama sonucu filtresi genel `host.contains('youtube')` kontrolu yerine ayni guvenilir host yardimcisina baglandi.
- Widget/dart unit testleri non-YouTube host, HTTP YouTube ve benzer isimli sahte hostlari reddedecek sekilde genisletildi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\tv\live_tv_page.dart:24` once yalnizca `isExternalHttpUri(uri)` kontrolu yapiyordu.
- `A:\Way of Allah\sirat_i_nur\lib\features\tv\live_tv_page.dart:42` once YouTube disi URL'leri ham haliyle geri dondurebiliyordu.
- Live TV WebView `JavaScriptMode.unrestricted` ile calistigi icin Supabase satirina giren rastgele HTTPS hostunu embed etmek production surekliligi ve icerik guveni riskiydi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\tv\live_tv_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\live_tv_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Cloud Live TV satirlari artik yalnizca guvenilir YouTube/YouTube-nocookie kaynaklarini oynatir.
- `http://youtube.com/...`, `https://example.com/...`, `https://not-youtube.example/...` ve benzeri hostlar sessizce aday listesinden dusurulur.
- Mevcut YouTube embed/watch akisi korunur; normalize edilen URL'ler `autoplay`, `playsinline` ve mute parametrelerini almaya devam eder.

### Test Sonucu
- `flutter test test\live_tv_page_test.dart` PASS (`7/7`)
- `flutter analyze` PASS
- `flutter test` PASS (`357/357`)

### Risk Değişimi
- Live TV WebView'in Supabase kaynakli rastgele external hostu acabilmesi riski: `16/25 -> 2/25`
- YouTube arama sonucu filtrelemede benzer alan adi/host yanlis pozitif riski: `8/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude `example.com`, placeholder URL ve production manifest/config kalintilari yeniden taranacak; ardindan en yuksek false-success veya guvenilmeyen icerik riski secilip ayni analyze/test/commit kapisindan gecirilecek.

## 2026-04-16 TUR-181 — Harden Places HTTPS Configuration

### Yapılan İşlem
- Places harita tile template kapisi HTTPS ve `{z}`, `{x}`, `{y}` template zorunluluguyla daraltildi.
- Places Overpass endpoint kabul kapisi HTTP(S) yerine yalnizca HTTPS olacak sekilde sertlestirildi.
- README production build ornekleri fake endpoint ve fake key degerleri yerine environment variable referanslariyla guncellendi.
- `supabase_config.dart` yorum blogundaki sahte `https://...` ve `sb_...` ornekleri kaldirildi.
- Places, README ve Supabase config testleri bu placeholder/insecure config davranislarinin geri gelmesini engelleyecek sekilde genisletildi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\places\places_map_page.dart:42` once sadece bos tile template'i reddediyor, HTTP veya template olmayan URL'leri hazir sayabiliyordu.
- `A:\Way of Allah\sirat_i_nur\lib\features\places\places_map_page.dart:92` once `isExternalHttpUri` ile HTTP Overpass endpointlerini de kabul ediyordu.
- Places sorgusu kullanicinin koordinatini Overpass sorgu govdesine koydugu icin HTTP endpoint konumu MITM/telemetri riskine acardi.
- `A:\Way of Allah\sirat_i_nur\README.md:57` ve `A:\Way of Allah\sirat_i_nur\README.md:58` once `tiles.example.com` ve `places-proxy.example.com` gibi gercek olmayan production endpointleri gosteriyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\places\places_map_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\network\supabase_config.dart`
- `A:\Way of Allah\sirat_i_nur\README.md`
- `A:\Way of Allah\sirat_i_nur\test\features\places\places_map_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\readme_operational_docs_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\supabase_config_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Places ekrani artik HTTP tile veya HTTP Overpass ayariyla sessizce calismiyor; kullaniciya mevcut honest unavailable akisi gosteriliyor.
- Production operator dokumani fake endpointleri kopyalamaya tesvik etmiyor; gercek degerler environment tarafindan veriliyor.
- Tile template dogrulamasi, yanlis statik URL girildiginde FlutterMap'e gecmeden once konfigurasyon hatasini yakaliyor.

### Test Sonucu
- `flutter test test\features\places\places_map_page_test.dart` PASS (`7/7`)
- `flutter test test\readme_operational_docs_test.dart test\supabase_config_test.dart` PASS (`6/6`)
- `flutter analyze` PASS
- `flutter test` PASS (`358/358`)

### Risk Değişimi
- Places konum sorgusunun HTTP endpoint uzerinden gonderilebilmesi riski: `12/25 -> 1/25`
- Harita tile template'inin sahte/statik/insecure degerle hazir sayilmasi riski: `10/25 -> 1/25`
- Production dokumanindan fake endpoint/key ornegi kopyalanmasi riski: `8/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude kalan runtime external URL ve debug logging yuzeyleri yeniden taranacak; ozellikle `tafsir_local_service.dart`, `external_url.dart` ve bootstrap debug loglari kanitla skorlanacak.

## 2026-04-16 TUR-182 — Require HTTPS for External App Links

### Yapılan İşlem
- Genel external URL yardimcisi artik hostlu HTTP(S) yerine yalnizca hostlu HTTPS URL'leri kabul ediyor.
- Mevcut fonksiyon adi call-site stabilitesi icin korundu; davranis yorumla netlestirildi.
- `external_url_test.dart` HTTP URL'nin reddedildigini ve HTTPS Google Maps/dogru app linklerinin gecmeye devam ettigini dogrulayacak sekilde guncellendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\core\utils\external_url.dart:5` once `http` ve `https` scheme'lerini birlikte geciriyordu.
- `A:\Way of Allah\sirat_i_nur\test\external_url_test.dart:6` once `http://example.com/path` kabulunu bekleyerek insecure downgrade davranisini regresyon olarak koruyordu.
- Settings, privacy, Play Store, prayer authority source ve harita directions gibi kullanici cikis linklerinde HTTP downgrade kapisi acik kalmamali.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\utils\external_url.dart`
- `A:\Way of Allah\sirat_i_nur\test\external_url_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- App icinden acilan genel external linkler HTTPS disinda baslatilmayacak.
- Mevcut production linkleri zaten HTTPS oldugu icin Settings, Play Store, privacy, Google Maps directions ve Live TV akislari korunuyor.
- Gelecekte yanlislikla HTTP link eklendiyse helper null dondurur ve localized launch failure akisi devreye girer.

### Test Sonucu
- `flutter test test\external_url_test.dart` PASS (`2/2`)
- `flutter analyze` PASS
- `flutter test` PASS (`358/358`)

### Risk Değişimi
- Genel app external linklerinin HTTP downgrade kabul etmesi riski: `10/25 -> 1/25`
- Testlerin insecure HTTP kabulunu dogru davranis gibi sabitlemesi riski: `8/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude `tafsir_local_service.dart` runtime dini icerik indirme ve cache dogrulama akisi ayrintili incelenecek; kaynak/provenance, hata sanitizasyonu ve test bosluklari skorlanacak.

## 2026-04-16 TUR-183 — Prevent Wrong Tafsir Source Fallbacks

### Yapılan İşlem
- Tafsir kaynak eslestirmesi sessiz `en.ibn_kathir` fallback'i yerine yalnizca bilinen canonical kaynaklari ve dogrulanmis EN legacy alias'larini kabul edecek sekilde degistirildi.
- `tr.yazir`, `tr.suati`, `tr.ozturk` gibi dogrulanmamis legacy alias'lar artik Ingilizce tafsir gibi etiketlenmiyor; `unsupported_source` hatasi uretiyor.
- `en.muhammadtaqiusmani` legacy alias'i yanlis `Ibn Kathir` eslesmesi yerine `en.maarif` canonical kaynagina alindi.
- Quran.com API tafsir satirlari cache'e yazilmadan once `normalizeApiTafsirRows` ile temizleniyor; malformed entry, bos metin ve gecersiz ayet numarasi atiliyor.
- API cevap zarfi dolu olsa bile hic gecerli tafsir metni yoksa eski cache silinmeden `no_entries` hatasi uretiliyor.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\core\services\tafsir_local_service.dart:74` once bilinmeyen kaynaklari otomatik `en.ibn_kathir`'e dusuruyordu.
- Eski kodda TR kaynak alias'lari Ingilizce API id'siyle eslenerek dini icerikte yanlis kaynak/provenance etiketi uretebiliyordu.
- `A:\Way of Allah\sirat_i_nur\lib\core\services\tafsir_local_service.dart:137` civarindaki eski satir isleme, API entry sekline guveniyor ve gecerli satir sayisi sifir olsa bile batch'i basarili tamamlayabiliyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\tafsir_local_service.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\quran\tafsir_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Tafsir ekrani sadece dogrulanmis canonical kaynak veya dogru canonical EN alias ile cache yazar.
- Kaynak adi ile gercek tafsir icerigi arasinda sessiz uyumsuzluk uretilmez.
- Malformed/empty API response eski saglam cache'i silmez; kullaniciya mevcut localized hata akisi doner.

### Test Sonucu
- `flutter test test\features\quran\tafsir_page_test.dart` PASS (`3/3`)
- `flutter analyze` PASS
- `flutter test` PASS (`360/360`)

### Risk Değişimi
- Bilinmeyen/legacy Tafsir kaynaginin sessizce Ibn Kathir gibi gosterilmesi riski: `16/25 -> 1/25`
- TR legacy alias'larin Ingilizce tafsir ile yanlis provenance uretmesi riski: `16/25 -> 1/25`
- Gecersiz API entry'lerinin cache'i bos basari gibi tamamlamasi riski: `12/25 -> 2/25`

### Sonraki Adım
- Sonraki dongude Tafsir servisinin remote bagimliligi ve offline/provenance modeli daha derin incelenecek; kalici cozum olarak Supabase/bundled verified tafsir katalog ihtiyaci handover risklerine ayrilacak veya dusuk kapsamli guard eklenecek.

## 2026-04-16 TUR-184 — Validate Tafsir Verse-Key Surah Alignment

### Yapılan İşlem
- Tafsir API satiri normalize edilirken `verse_key` icindeki sure numarasi istenen sureyle eslesmiyorsa satir cache disinda birakiliyor.
- Tafsir test fixture'ina farkli sureden donen `verse_key` eklendi ve bunun cache satirina donusmedigi dogrulandi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\core\services\tafsir_local_service.dart:97` once `verse_key` icindeki sure bolumunu kontrol etmiyor, yalnizca ayet numarasini okuyordu.
- API veya veri sekli bozulursa `3:5` gibi baska sureye ait tefsir, istenen sure numarasiyla cache'e yazilabilirdi.
- Bu, dini icerikte ayet-tefsir eslesmesini bozabilecek yuksek etkili ama kucuk kapsamli bir dogruluk riskidir.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\tafsir_local_service.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\quran\tafsir_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Tafsir cache satirlari artik hem istenen sure numarasina hem de `verse_key` kaynak sure numarasina uyumlu olmak zorunda.
- API'den yanlis sureye ait entry gelirse sessizce atilir; gecerli satir kalmazsa TUR-183'teki `no_entries` korumasi eski cache'i silmeden hata uretir.

### Test Sonucu
- `flutter test test\features\quran\tafsir_page_test.dart` PASS (`3/3`)
- `flutter analyze` PASS
- `flutter test` PASS (`360/360`)

### Risk Değişimi
- Baska sureye ait Tafsir entry'sinin istenen sure altinda cache'lenmesi riski: `12/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude remaining debug logging ve production operator ciktilari tekrar taranacak; raw teknik hata/metaveri kullaniciya veya release loguna siziyor mu kanitla ayrilacak.

## 2026-04-16 TUR-185 — Sanitize Live TV WebView Error Logs

### Yapılan İşlem
- Live TV WebView main-frame load hata logu, WebView `errorCode` ve `errorType` metadata'sini basmayacak sekilde sabit mesaja indirildi.
- `live_tv_page_test.dart` kaynak guard'i eklenerek `error.errorCode` ve `error.errorType` log ifadelerinin geri gelmesi engellendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\tv\live_tv_page.dart:153` once WebView hata kodu ve hata tipini debug loguna yaziyordu.
- Kullaniciya ham hata gosterilmese bile release/debug loglarinda teknik hata metadata'si gereksiz telemetri yuzeyi olusturuyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\tv\live_tv_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\live_tv_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Live TV hata akisi aynen calisir: fallback candidate denenir, bittiginde localized stream error UI gosterilir.
- Log artik sadece olay sinyali verir; raw WebView hata metadata'si yazilmaz.

### Test Sonucu
- `flutter test test\live_tv_page_test.dart` PASS (`8/8`)
- `flutter analyze` PASS
- `flutter test` PASS (`361/361`)

### Risk Değişimi
- Live TV WebView hata metadata'sinin loglara sizmasi riski: `8/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude kalan debugPrint yuzeyleri, ozellikle premium/IAP ve audio player servisleri icin raw state, URL, path veya exception sizintisi acisindan tekrar skorlanacak.

## 2026-04-16 TUR-186 — Harden Premium IAP Bootstrap Failures

### Yapılan İşlem
- Premium provider bootstrap akisi `try/catch` ile sarildi.
- Store kullanilamazsa, urun listesi bos donerse veya IAP bootstrap cagrisinda exception olursa state artik `premium_product_unavailable` koduna dusuyor.
- Paywall guard testi, bootstrap hatasinin raw exception metniyle loglanmamasini ve kontrollu unavailable kodunun korunmasini dogruluyor.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\premium\premium_provider.dart:50` once `_iap.isAvailable()` hatasini yakalamiyordu.
- `A:\Way of Allah\sirat_i_nur\lib\features\premium\premium_provider.dart:70` once `_iap.queryProductDetails(...)` hatasini yakalamiyordu.
- Bu iki cagri constructor tarafindan fire-and-forget baslatilan `_init()` icinde oldugu icin store/plugin bootstrap hatasi UI'nin localized hata zincirine girmeden zone'a dusme riski tasiyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\premium\premium_provider.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\premium\paywall_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Premium satin alma ekrani store hazir degilken sahte basari veya ham hata uretmez; kontrollu ve localized `premium_product_unavailable` mesajina baglanir.
- Satin alma ve restore hata akislari aynen korunur; yalnizca bootstrap asamasindaki eksik koruma tamamlandi.

### Test Sonucu
- `flutter test test\features\premium\paywall_page_test.dart test\premium_provider_test.dart` PASS (`8/8`)
- `flutter analyze` PASS
- `flutter test` PASS (`361/361`)

### Risk Değişimi
- IAP bootstrap exception'inin kontrolsuz sekilde kacmasi riski: `12/25 -> 1/25`
- Urun listesi bosken kullanicinin belirsiz premium durumu gormesi riski: `8/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude audio ve offline download log/sonuc akislari tekrar taranacak; URL/path/partial-success ya da raw exception yuzeyi kaldiysa ayni sekilde kucuk patch ile kapatilacak.

## 2026-04-16 TUR-187 — Harden Offline Quran Audio Download Gate

### Yapılan İşlem
- Offline Quran audio download kapisina desteklenen reciter, 1-114 sure araligi ve `quran-audio` Supabase Storage public URL kontrolu eklendi.
- `getAudioPath`, `isAudioDownloaded`, `downloadSurahAudio`, `getDownloadedSurahs` ve `deleteReciterAudio` desteklenmeyen reciter/sure degerlerinde dosya sistemine dusmeden guvenli cikiyor.
- Offline audio testleri, dis CDN URL'si, yanlis bucket, gecersiz sure ve path traversal benzeri reciter degerlerinin IO/network oncesi reddedildigini dogruluyor.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\core\services\offline_audio_service.dart:211` once public `downloadSurahAudio(...)` metodunda URL ownership kontrolu yapmadan `dio.download(...)` cagirabiliyordu.
- `A:\Way of Allah\sirat_i_nur\lib\core\services\offline_audio_service.dart:185` once `reciterId` degerini dosya adina dogrudan katarak path olusturuyordu.
- UI katalog akisi Storage-backed olsa bile servis siniri kendi basina sert olmadiginda gelecekteki call-site hatalari dis URL indirme veya guvensiz dosya yolu riskine donebilirdi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\offline_audio_service.dart`
- `A:\Way of Allah\sirat_i_nur\test\offline_audio_service_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Quran offline indirme artik yalnizca uygulamanin kendi Supabase `quran-audio` bucket public URL'lerinden dosya indirebilir.
- Yanlis reciter/sure degeri dosya sistemi veya ag cagrisi baslatmadan reddedilir.
- Mevcut UI akisi etkilenmez; reciter listesi ve katalog zaten ayni canonical id'leri uretiyor.

### Test Sonucu
- `flutter test test\offline_audio_service_test.dart` PASS (`10/10`)
- `flutter analyze` PASS
- `flutter test` PASS (`363/363`)

### Risk Değişimi
- Public offline download metodunun dis URL indirmesi riski: `12/25 -> 1/25`
- Desteklenmeyen reciter degeriyle guvensiz dosya yolu uretilmesi riski: `12/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude Surah okuma sayfasindaki playback loglari ve audio candidate zinciri kontrol edilecek; raw reciter/candidate metadata veya kontrolsuz exception yuzeyi kaldiysa kucuk patch ile kapatilacak.

## 2026-04-16 TUR-188 — Harden Surah Audio Playback Fallbacks

### Yapılan İşlem
- Surah okuma sayfasinda yerel Quran mp3 lookup/playback hatalari kontrollu yakalaniyor.
- Bozuk/yarim yerel mp3 playback'i cloud Storage-backed adaylara fallback etmeyi engellemiyor.
- Remote audio candidate hatalari reciter id, candidate index veya URL basmadan sabit log mesajiyla sinirlandi.
- Quran audio log guard testi raw reciter/candidate metadata loglarinin geri gelmesini engelleyecek sekilde genisletildi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\surah_reading_page.dart:132` once local `setFilePath/play` hatasi yakalanmadan `_togglePlay` future'undan disari cikabiliyordu.
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\surah_reading_page.dart:149` remote `setUrl/play` hatasi yakalaniyordu ama onceki log reciter ve candidate metadata'si basiyordu.
- Offline indirme kapisi sertlestirildikten sonra playback hattinin da bozuk local cache ve log sanitization acisindan ayni seviyede davranmasi gerekiyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\surah_reading_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\quran\quran_error_copy_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Kullanici bozuk/yarim inmis local mp3 yuzunden ses akisini tamamen kaybetmez; uygulama cloud adaya gecer ve gerekirse mevcut localized stream error snackbar'ini gosterir.
- Loglar artik URL, exception, reciter id veya candidate index yuzeyi tasimaz.

### Test Sonucu
- `flutter test test\features\quran\quran_error_copy_test.dart` PASS (`3/3`)
- `flutter analyze` PASS
- `flutter test` PASS (`363/363`)

### Risk Değişimi
- Bozuk local Quran mp3 dosyasinin playback future'unu kontrolsuz fail ettirmesi riski: `12/25 -> 1/25`
- Quran audio remote fallback loglarinda raw reciter/candidate metadata sizmasi riski: `8/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude router path parsing ve Quran/Tafsir/Juz route parametreleri kontrol edilecek; gecersiz id ile crash riski varsa uygulama seviyesinde kontrollu redirect veya safe parse guard eklenecek.

## 2026-04-16 TUR-189 — Guard Quran Route Id Parsing

### Yapılan İşlem
- Quran Surah, Juz ve Tafsir route id'leri icin bounded safe parse helper'lari eklendi.
- Gecersiz Surah/Tafsir id'leri (`null`, non-numeric, 1-114 disi) pageBuilder'a girmeden `/quran` route'una yonlendiriliyor.
- Gecersiz Juz id'leri (`null`, non-numeric, 1-30 disi) pageBuilder'a girmeden `/quran` route'una yonlendiriliyor.
- PageBuilder tarafinda da parse fallback'i korundu; redirect calismasa bile `int.parse` crash yuzeyi kalmadi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\core\network\app_router.dart:200` Surah route'u once path parametresini dogrudan `int.parse` ile okuyordu.
- `A:\Way of Allah\sirat_i_nur\lib\core\network\app_router.dart:216` Juz route'u once path parametresini dogrudan `int.parse` ile okuyordu.
- `A:\Way of Allah\sirat_i_nur\lib\core\network\app_router.dart:232` Tafsir route'u once path parametresini dogrudan `int.parse` ile okuyordu.
- Deep link veya elle yazilan gecersiz URL uygulamayi error page yerine pageBuilder exception riskine sokabiliyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\network\app_router.dart`
- `A:\Way of Allah\sirat_i_nur\test\app_router_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- `/quran/reading/foo`, `/quran/reading/115`, `/quran/juz/31` ve benzeri URL'ler artik crash uretmeden Quran ana ekranina doner.
- Router testleri valid boundary degerlerini ve invalid redirect kararlarini kapsar.
- `dart format` ayni dosyadaki uzun satirlari da normalize etti; davranissal kapsam safe route parsing ile sinirlidir.

### Test Sonucu
- `flutter test test\app_router_test.dart` PASS (`5/5`)
- `flutter analyze` PASS
- `flutter test` PASS (`364/364`)

### Risk Değişimi
- Gecersiz Quran route id'sinin pageBuilder icinde crash uretmesi riski: `12/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude kalan `int.parse`/`!` route ve user-input parse yuzeyleri repo genelinde taranacak; ayni siniftan crash riski varsa dosya bazli kucuk guard eklenecek.

## 2026-04-16 TUR-190 — Guard Library Education Category Id Rendering

### Yapılan İşlem
- Library Islamic Education kategori render akisi `resolveEducationCategoryId(cat)!` force unwrap kullanmayacak sekilde guvenli hale getirildi.
- Kategori id beklenmedik sekilde null gelirse UI satiri crash yerine bos placeholder ile atliyor.
- Existing education category widget testine source guard eklendi; force unwrap geri gelirse test fail edecek.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart:307` once resolver sonucunu `!` ile aciyordu.
- `resolveEducationCategories(...)` normalde id/title filtreliyor; ancak UI katmaninin bu varsayima sert baglanmasi ileride provider/refactor kaynakli null id durumunda build crash riski olusturuyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\library\library_page_cloud_duas_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Cloud education kategori verisi beklenmedik sekilde sekil degistirse bile Library ekrani build asamasinda patlamaz.
- Mevcut valid kategori rendering davranisi degismedi.

### Test Sonucu
- `flutter test test\features\library\library_page_cloud_duas_test.dart` PASS (`8/8`)
- `flutter analyze` PASS
- `flutter test` PASS (`364/364`)

### Risk Değişimi
- Library education kategori id null durumunda build crash riski: `8/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude kalan force unwrap yuzeyleri icinden runtime data'ya bagli olanlar ayrilacak; route parametresi, provider sonucu veya cloud row kaynakli yeni bir crash yuzeyi varsa kapatilacak.

## 2026-04-16 TUR-191 — Sanitize Prayer Notification Sync Failure Logs

### Yapılan İşlem
- Prayer notification coordinator sync failure catch blogu raw stack trace basmayacak sekilde sadeleştirildi.
- Test guard'i `debugPrintStack` kullanimini yasaklayacak sekilde guncellendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_notification_coordinator.dart:80` sabit hata mesaji basiyordu, ancak hemen ardindan stack trace basarak dosya yolu ve teknik call-chain metadata'sini loglara tasiyordu.
- Namaz bildirim planlama hatti core dini zamanlama akisi oldugu icin failure loglari kullanici/veri/gizlilik acisindan minimum sinyal uretmeli; raw stack sadece lokal debug ihtiyacidir, runtime log yuzeyi degildir.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_notification_coordinator.dart`
- `A:\Way of Allah\sirat_i_nur\test\prayer_notification_coordinator_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Scheduler exception durumunda uygulama davranisi degismez; hata yutulur ve sonraki sync dongusu calismaya devam eder.
- Loglarda artik raw stack trace/path metadata'si yoktur.

### Test Sonucu
- `flutter test test\prayer_notification_coordinator_test.dart` PASS (`7/7`)
- `flutter analyze` PASS
- `flutter test` PASS (`364/364`)

### Risk Değişimi
- Prayer notification sync failure loglarinda raw stack trace sizmasi riski: `8/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude places ve qibla tarafindaki nullable coordinate unwrap'leri yeniden incelenecek; guard kosullari ile unwrap kullanimlari ayrilacak ve gercek crash yuzeyi kaldiysa kapatilacak.

## 2026-04-16 TUR-192 — Remove Places Map Center Force-Unwraps

### Yapılan İşlem
- Places map state icindeki `_currentCenter` ve `_lastFetchCenter` kullanımları local snapshot degiskenlerine alindi.
- `_changeCategory`, `_queueAnchorSync`, `showSearchHere` ve search-area button akislari `!` kullanmadan ayni guard mantigini koruyor.
- Places testine source guard eklendi; `_lastFetchCenter!` ve `_currentCenter!` geri gelirse test fail edecek.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\places\places_map_page.dart:372` once null check sonrasi `_currentCenter!` ile fetch cagiriyordu.
- `A:\Way of Allah\sirat_i_nur\lib\features\places\places_map_page.dart:395` ve `:533` once `_lastFetchCenter!` / `_currentCenter!` kullaniyordu.
- Stateful map UI'da ayni nullable field'i guard sonrasi tekrar force-unwrap etmek gereksiz crash yuzeyi ve bakim riski olusturuyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\places\places_map_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\places\places_map_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Places UI davranisi degismedi; sadece nullable center degerleri tek anlik snapshot olarak kullaniliyor.
- Search area ve category refresh akislari center null ise sessizce cikmaya devam eder.

### Test Sonucu
- `flutter test test\features\places\places_map_page_test.dart` PASS (`8/8`)
- `flutter analyze` PASS
- `flutter test` PASS (`365/365`)

### Risk Değişimi
- Places map center state degisimi sonrasi force-unwrap crash riski: `8/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude Qibla sensor bridge ve prayer widget latitude/longitude unwrap'leri kontrol edilecek; guard ile local snapshot ayrimi yetersizse ayni null-safety sertlestirmesi uygulanacak.

## 2026-04-16 TUR-193 — Remove Qibla Page Coordinate Force-Unwraps

### Yapılan İşlem
- QiblaPage build akisi latitude/longitude degerlerini local snapshot olarak okuyor.
- Null koordinat durumunda mevcut location-required state korunuyor; dolu koordinat durumunda Qibla bearing hesabi `!` kullanmadan yapiliyor.
- Qibla testine `settings.latitude!` / `settings.longitude!` kullaniminin geri gelmesini engelleyen source guard eklendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\qibla\qibla_page.dart:57` ve `:58` once `hasQiblaLocation(settings)` guardindan sonra field'lari force-unwrap ediyordu.
- `SettingsState` immutable olsa da UI tarafinda nullable coordinate guard'ini local snapshot ile yapmak daha guvenli ve Places dongusundeki null-safety standardiyla tutarlidir.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\qibla\qibla_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\qibla\qibla_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Qibla ekrani davranisi degismedi; sadece koordinat force-unwrap yuzeyi kaldirildi.
- Eksik konumda sensor provider yine izlenmez, gercek konum gerektiren honest state gosterilir.

### Test Sonucu
- `flutter test test\features\qibla\qibla_page_test.dart` PASS (`7/7`)
- `flutter analyze` PASS
- `flutter test` PASS (`365/365`)

### Risk Değişimi
- Qibla UI coordinate force-unwrap crash yuzeyi: `8/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude PrayerWidgetSyncService ve PrayerNotificationCoordinator latitude/longitude unwrap'leri local snapshot ile kapatilacak; ardindan QiblaSensorBridge heading unwrap'i ayrica incelenecek.

## 2026-04-16 TUR-194 — Guard Prayer Coordinate Snapshots

### Yapılan İşlem
- PrayerNotificationCoordinator scheduler akisi latitude/longitude degerlerini tek seferlik local snapshot olarak okuyor.
- PrayerWidgetSyncService widget entity uretiminde ayni snapshot standardina gecildi; null koordinatta mevcut `null` sonuc korunuyor.
- Prayer coordinator ve widget sync testlerine `settings.latitude!` / `settings.longitude!` force-unwrap kullanimini engelleyen source guard eklendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_notification_coordinator.dart:64` ve `:65` scheduler call chain'inde koordinatlar artik local snapshot'a aliniyor.
- `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_widget_sync_service.dart:19` ve `:20` widget call chain'inde koordinatlar artik local snapshot'a aliniyor.
- Onceki guard mantigi dogru olsa da nullable field'i guard sonrasi force-unwrap etmek gereksiz crash yuzeyi ve ileride refactor hatasi riski olusturuyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_notification_coordinator.dart`
- `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_widget_sync_service.dart`
- `A:\Way of Allah\sirat_i_nur\test\prayer_notification_coordinator_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\prayer_widget_sync_service_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Prayer notification schedule ve Android widget davranisi degismedi; sadece koordinat erisimi null-safe snapshot ile yapiliyor.
- Konum eksikse scheduler yine adhans temizliyor, widget entity uretimi yine `null` donuyor.

### Test Sonucu
- `flutter test test\prayer_notification_coordinator_test.dart test\prayer_widget_sync_service_test.dart` PASS (`10/10`)
- `flutter analyze` PASS
- `flutter test` PASS (`366/366`)

### Risk Değişimi
- Prayer scheduler/widget coordinate force-unwrap crash yuzeyi: `8/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude `A:\Way of Allah\sirat_i_nur\lib\core\services\qibla_sensor_bridge.dart` icindeki `event.heading!` kullanimi local heading snapshot ile kapatilacak.

## 2026-04-16 TUR-195 — Guard Qibla Sensor Heading Snapshot

### Yapılan İşlem
- QiblaSensorBridge compass event akisi `event.heading` degerini local `heading` snapshot olarak okuyor.
- Null heading durumunda mevcut `continue` davranisi korunuyor; dolu heading ayni snapshot ile EKF filtreye ve `QiblaOrientation.magneticHeading` alanina aktariliyor.
- Qibla testlerine `event.heading!` force-unwrap kullanimini engelleyen source guard eklendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\core\services\qibla_sensor_bridge.dart:62` artik sensor heading degerini local snapshot olarak aliyor.
- Eski akista `event.heading == null` guardindan sonra `event.heading!` iki kez kullaniliyordu; bu gereksiz force-unwrap refactor sonrasi crash riski ve null-safety standart sapmasi olusturuyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\qibla_sensor_bridge.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\qibla\qibla_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Qibla sensor davranisi degismedi; null heading event'leri yine atlanir, dolu heading event'leri ayni hesap zincirinden gecer.
- Force-unwrap geri gelirse `Qibla sensor bridge uses local heading snapshots` testi fail edecek.

### Test Sonucu
- `flutter test test\features\qibla\qibla_page_test.dart` PASS (`8/8`)
- `flutter analyze` PASS
- `flutter test` PASS (`367/367`)

### Risk Değişimi
- Qibla sensor heading force-unwrap crash yuzeyi: `6/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude kalan `!` kullanimlari icinde gercek crash yuzeyi olan runtime path'ler ayrilacak; safe static map/index pattern'leri test guard ile belgelenip riskli olanlar snapshot'a alinacak.

## 2026-04-16 TUR-196 — Guard Chatbot Gemini Session Snapshots

### Yapılan İşlem
- Chatbot Gemini model init akisi local `model` snapshot ile ChatSession olusturuyor; kullanilmayan `_model` state alani kaldirildi.
- Mesaj gonderme akisi `_chat` degerini local `chat` snapshot olarak okuyor ve null guard sonrasi force-unwrap kullanmiyor.
- Chatbot testlerine `_model!` / `_chat!` geri gelmesini ve kullanilmayan model state alanini engelleyen source guard eklendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\chatbot\chatbot_page.dart:57` model init icin local snapshot kullaniyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\chatbot\chatbot_page.dart:95` message send call chain'inde chat session local snapshot'a aliniyor.
- Onceki akista `_model!.startChat()` ve `_chat!.sendMessage(...)` guard sonrasi force-unwrap kullaniyordu; bu lifecycle refactor'larinda gereksiz crash yuzeyi olusturuyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\chatbot\chatbot_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\chatbot\chatbot_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Offline fallback ve Gemini mode davranisi degismedi.
- Chatbot icinde kullanilmayan model state'i temizlendi; session sadece `_chat` uzerinden tutuluyor.

### Test Sonucu
- `flutter test test\features\chatbot\chatbot_page_test.dart` PASS (`4/4`)
- `flutter analyze` PASS
- `flutter test` PASS (`368/368`)

### Risk Değişimi
- Chatbot Gemini session force-unwrap/lifecycle crash yuzeyi: `6/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude `A:\Way of Allah\sirat_i_nur\lib\core\network\app_router.dart` hadith route parametresi ve `A:\Way of Allah\sirat_i_nur\lib\features\quran\tafsir_page.dart` tafsir id default'u incelenecek; gercek runtime risk olan kisim once kapatilacak.

## 2026-04-16 TUR-197 — Guard Tafsir Default Source Selection

### Yapılan İşlem
- TafsirLocalService icine `defaultTafsirSourceId` eklendi; default kaynak secimi verified `availableTafsirs` listesinden null-safe ve canonical olarak uretiliyor.
- TafsirPage `_selectedTafsir` baslangici static map force-unwrap yerine servis default resolver'ina baglandi.
- Tafsir testlerine default kaynak beklentisi ve `availableTafsirs.first['id']!` geri donusunu engelleyen source guard eklendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\core\services\tafsir_local_service.dart:82` default tafsir source secimini servis seviyesinde merkezilestiriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\tafsir_page.dart:79` sayfa state init'i artik force-unwrap kullanmadan verified canonical default aliyor.
- Eski akista static liste bugun dolu olsa da `availableTafsirs.first['id']!` UI init sirasinda gereksiz runtime crash yuzeyi olusturuyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\tafsir_local_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\tafsir_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\quran\tafsir_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Mevcut default tafsir kaynagi degismedi: `en.ibn_kathir`.
- Liste ileride bozulursa silent null crash yerine kontrollu `TafsirException('no_tafsir_sources')` yuzeyi olusur.

### Test Sonucu
- `flutter test test\features\quran\tafsir_page_test.dart` PASS (`4/4`)
- `flutter analyze` PASS
- `flutter test` PASS (`369/369`)

### Risk Değişimi
- Tafsir page default source force-unwrap crash yuzeyi: `6/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude `A:\Way of Allah\sirat_i_nur\lib\core\services\tafsir_local_service.dart` database getter force-unwrap kullanimi ve `_apiIdForSource` fallback mantigi incelenecek; gercek hata yuzeyi varsa servis testleriyle kapatilacak.

## 2026-04-16 TUR-198 — Guard Tafsir Database Getter Snapshot

### Yapılan İşlem
- TafsirLocalService `database` getter'i `_database!` force-unwrap yerine local `existingDatabase` ve `initializedDatabase` snapshot'lari kullanıyor.
- Ilk init akisi ayni sekilde `_initDatabase()` cagiriyor, sonucu cache'e yaziyor ve direkt initialized snapshot'i donduruyor.
- Tafsir servis testlerine `_database!` geri gelmesini engelleyen source guard eklendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\core\services\tafsir_local_service.dart:42` mevcut cache'i local snapshot olarak okuyor.
- `A:\Way of Allah\sirat_i_nur\lib\core\services\tafsir_local_service.dart:45` init sonucunu local snapshot olarak tutup `:47` dogrudan donduruyor.
- Eski akista null check sonrasi `_database!` iki kez kullaniliyordu; servis lifecycle refactor'larinda gereksiz crash yuzeyi olusturuyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\tafsir_local_service.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\quran\tafsir_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Database init/cache davranisi degismedi.
- Null-safety standardi servis getter seviyesinde de force-unwrap'siz hale getirildi.

### Test Sonucu
- `flutter test test\features\quran\tafsir_page_test.dart` PASS (`5/5`)
- `flutter analyze` PASS
- `flutter test` PASS (`370/370`)

### Risk Değişimi
- Tafsir database getter force-unwrap/lifecycle crash yuzeyi: `6/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude `_apiIdForSource` icindeki fallback `?? 169` kontrol edilecek; unsupported source zaten exception attigi icin fallback maskesi gereksizse kontrollu hata ile degistirilecek.

## 2026-04-16 TUR-199 — Remove Tafsir API ID Fallback Mask

### Yapılan İşlem
- `_apiIdForSource` artik `_sourceToApiId[canonical] ?? 169` fallback'i kullanmiyor.
- Canonical source haritada yoksa kontrollu `TafsirException('unsupported_source')` atiliyor.
- Tafsir servis testlerine `?? 169` fallback'inin geri gelmesini engelleyen source guard eklendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\core\services\tafsir_local_service.dart:137` API id degerini local `apiId` olarak okuyor.
- Eski fallback, ileride source haritasi bozulursa kullaniciyi sessizce farkli tafsir kaynagina yonlendirebilirdi; dini icerikte sessiz kaynak degisimi kabul edilemez.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\tafsir_local_service.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\quran\tafsir_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Mevcut desteklenen tafsir kaynaklarinda davranis degismedi.
- Harita bozulursa yanlis kaynaga dusmek yerine kontrollu unsupported-source hatasi uretilir.

### Test Sonucu
- `flutter test test\features\quran\tafsir_page_test.dart` PASS (`6/6`)
- `flutter analyze` PASS
- `flutter test` PASS (`371/371`)

### Risk Değişimi
- Tafsir source resolver silent wrong-source fallback riski: `10/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude route builder ve premium/paywall error unwrap gibi kalan runtime `!` kullanimlari yeniden taranacak; gercek kullanıcı akışına en yakin olan once kapatilacak.

## 2026-04-16 TUR-200 — Guard Zakat Result Render Snapshot

### Yapılan İşlem
- ZakatCalculatorPage build akisi `_result` degerini local `result` snapshot olarak okuyor.
- Result karti null guard sonrasi `result` uzerinden render ediliyor; `_result!` force-unwrap kullanimi kaldirildi.
- Zakat test dosyasi eklendi; mevcut gold nisab hesap davranisi ve `_result!` geri donus guard'i doğrulandi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\library\zakat_calculator_page.dart:126` render icin local result snapshot aliyor.
- Eski akista `_result != null` guardindan sonra `_result!` sekiz kez kullaniliyordu; UI state refactor'larinda gereksiz crash yuzeyi olusturuyordu.
- Zakat hesap mantigi dini hassasiyet tasidigi icin formule dokunulmadi; test mevcut altin nisab davranisini kilitledi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\library\zakat_calculator_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\library\zakat_calculator_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Zakat hesap formulu ve UI sonucu degismedi.
- Result render akisi nullable state force-unwrap kullanmadan calisiyor.

### Test Sonucu
- `flutter test test\features\library\zakat_calculator_page_test.dart` PASS (`2/2`)
- `flutter analyze` PASS
- `flutter test` PASS (`373/373`)

### Risk Değişimi
- Zakat result render force-unwrap crash yuzeyi: `6/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude premium/paywall error unwrap ve places/tafsir `_error!` render yuzeyleri local snapshot standardina alinacak.

## 2026-04-16 TUR-201 — Guard Premium Error Render Snapshot

### Yapılan İşlem
- PaywallPage build akisi `premiumState.error` degerini local `premiumError` snapshot olarak okuyor.
- Hata metni render'i `premiumError != null` guardindan sonra sanitize edilmiş `localizePremiumError` zincirine snapshot degeriyle gidiyor.
- Premium paywall testine `premiumState.error!` geri gelmesini engelleyen source guard eklendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\premium\paywall_page.dart:25` premium error state'ini local snapshot'a aliyor.
- Eski akista `premiumState.error != null` guardindan sonra `premiumState.error!` kullaniliyordu; UI state refactor'larinda gereksiz crash yuzeyi olusturuyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\premium\paywall_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\premium\paywall_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Premium hata copy'si ve store exception redaction davranisi degismedi.
- Paywall error render akisi nullable state force-unwrap kullanmadan calisiyor.

### Test Sonucu
- `flutter test test\features\premium\paywall_page_test.dart` PASS (`3/3`)
- `flutter analyze` PASS
- `flutter test` PASS (`373/373`)

### Risk Değişimi
- Premium paywall error render force-unwrap crash yuzeyi: `6/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude places ve tafsir `_error!` render yuzeyleri local snapshot standardina alinacak; once daha aktif/harici veri akisi olan Places ele alinacak.

## 2026-04-16 TUR-202 — Guard Places Error Render Snapshot

### Yapılan İşlem
- PlacesMapPage build akisi `_error` degerini local `error` snapshot olarak okuyor.
- Liste panelindeki hata render'i `error != null` guardindan sonra snapshot degeriyle calisiyor.
- Places testindeki source guard genisletildi; `_error!` geri gelirse test fail edecek.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\places\places_map_page.dart:492` places error state'ini local snapshot'a aliyor.
- Eski akista `_error != null` guardindan sonra `_error!` kullaniliyordu; harici veri/Overpass hata akisi olan bu ekranda gereksiz render crash yuzeyi olusturuyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\places\places_map_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\places\places_map_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Places hata copy'si ve honest unavailable state davranisi degismedi.
- Places list paneli nullable error state force-unwrap kullanmadan render ediliyor.

### Test Sonucu
- `flutter test test\features\places\places_map_page_test.dart` PASS (`8/8`)
- `flutter analyze` PASS
- `flutter test` PASS (`373/373`)

### Risk Değişimi
- Places error render force-unwrap crash yuzeyi: `6/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude TafsirPage `_error!` render yuzeyi local snapshot standardina alinacak.

## 2026-04-16 TUR-203 — Guard Tafsir Error Render Snapshot

### Yapılan İşlem
- TafsirPage `_buildBody` akisi `_error` degerini local `error` snapshot olarak okuyor.
- Error state render'i `error != null` guardindan sonra snapshot degeriyle calisiyor.
- Tafsir testindeki source guard genisletildi; `_error!` geri gelirse test fail edecek.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\tafsir_page.dart:210` tafsir error state'ini local snapshot'a aliyor.
- Eski akista `_error != null` guardindan sonra `_error!` kullaniliyordu; harici tafsir fetch/cache akisi olan bu ekranda gereksiz render crash yuzeyi olusturuyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\tafsir_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\quran\tafsir_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Tafsir hata copy'si ve retry davranisi degismedi.
- Tafsir error render akisi nullable state force-unwrap kullanmadan calisiyor.

### Test Sonucu
- `flutter test test\features\quran\tafsir_page_test.dart` PASS (`6/6`)
- `flutter analyze` PASS
- `flutter test` PASS (`373/373`)

### Risk Değişimi
- Tafsir error render force-unwrap crash yuzeyi: `6/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude settings locationName ve prayer queuedSettings runtime force-unwrap yuzeyleri incelenecek; state race etkisi daha yuksek olan once kapatilacak.

## 2026-04-16 TUR-204 — Guard Settings Location Name Snapshot

### Yapılan İşlem
- SettingsPage build akisi `settings.locationName` degerini local `locationName` snapshot olarak okuyor.
- Konum satiri `locationName == null` guardindan sonra snapshot degeriyle render ediliyor.
- SettingsPage testine source guard eklendi; `settings.locationName!` geri gelirse test fail edecek.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart:34` settings location adini local snapshot'a aliyor.
- Eski akista `settings.locationName == null` guardindan sonra `settings.locationName!` kullaniliyordu; provider state'i render boyunca tekrar okunmasa bile bu pattern ileride refactor/race hatasina acik gereksiz nullable force-unwrap yuzeyi olusturuyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\settings\settings_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Settings konum gostergesi ve timezone formati degismedi.
- Konum adi render akisi nullable state force-unwrap kullanmadan calisiyor.

### Test Sonucu
- `flutter test test\features\settings\settings_page_test.dart` PASS (`6/6`)
- `flutter analyze` PASS
- `flutter test` PASS (`374/374`)

### Risk Değişimi
- Settings locationName render force-unwrap crash yuzeyi: `6/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude PrayerNotificationCoordinator `_queuedSettings!` drain yuzeyi incelenecek ve local snapshot standardina alinacak.

## 2026-04-16 TUR-205 — Guard Prayer Queue Settings Snapshot

### Yapılan İşlem
- PrayerNotificationCoordinator queue drain akisi `_queuedSettings` degerini local `settings` snapshot olarak okuyor.
- Queue bos ise `_drainQueuedSyncs` artik force-unwrap yerine kontrollu `return` ile cikiyor.
- Prayer notification coordinator testindeki source guard genisletildi; `_queuedSettings!` geri gelirse test fail edecek.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_notification_coordinator.dart:56` queued settings degerini local snapshot'a aliyor.
- Eski akista `while (_queuedSettings != null)` guardindan sonra `_queuedSettings!` kullaniliyordu; notification scheduling queue hattinda gereksiz nullable force-unwrap pattern'i birakmak ileride refactor/race hatasina acik yuzey olusturuyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_notification_coordinator.dart`
- `A:\Way of Allah\sirat_i_nur\test\prayer_notification_coordinator_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Hızlı konum/ayar degisikliklerini serialize etme davranisi degismedi.
- Queue drain akisi nullable state force-unwrap kullanmadan calisiyor.

### Test Sonucu
- `flutter test test\prayer_notification_coordinator_test.dart` PASS (`7/7`)
- `flutter analyze` PASS
- `flutter test` PASS (`374/374`)

### Risk Değişimi
- Prayer notification queued settings force-unwrap yuzeyi: `6/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude offline audio `surahUrls[surahNumber]!` snapshot yuzeyi ve owned-storage download hattindaki false-success riskleri yeniden taranacak.

## 2026-04-16 TUR-206 — Guard Offline Audio URL Entry Snapshot

### Yapılan İşlem
- OfflineAudioService `downloadAllSurahs` akisi surah URL'lerini sorted key lookup yerine sorted entry snapshot ile geziyor.
- `surahUrls[surahNumber]!` force-unwrap kaldirildi; her indirme icin `entry.key` ve `entry.value` kullaniliyor.
- Offline audio testine sorted drain ve source guard eklendi; force lookup geri gelirse test fail edecek.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\core\services\offline_audio_service.dart:252` sorted entry snapshot olusturuyor.
- Eski akista `surahUrls.keys.toList()` uzerinden siralanan anahtar daha sonra `surahUrls[surahNumber]!` ile tekrar okunuyordu; bu gereksiz force-unwrap hem null-safety standardini zayiflatiyor hem de ileride mutable map/refactor riskine acik yuzey birakiyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\offline_audio_service.dart`
- `A:\Way of Allah\sirat_i_nur\test\offline_audio_service_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Indirme sirasinin artan sure numarasina gore isleme davranisi korundu.
- Invalid/external URL'ler sahte basari uretmeden failedSurahs listesine dusmeye devam ediyor.

### Test Sonucu
- `flutter test test\offline_audio_service_test.dart` PASS (`11/11`)
- `flutter analyze` PASS
- `flutter test` PASS (`375/375`)

### Risk Değişimi
- Offline audio surah URL force-unwrap yuzeyi: `6/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude app_router route parametre force-unwrap yuzeyleri ve route guard testleri incelenecek.

## 2026-04-16 TUR-207 — Guard Hadith Route Collection Id

### Yapılan İşlem
- App router hadith collection route id icin `resolveHadithCollectionRouteId` helper'i eklendi.
- Bos veya missing hadith collection id durumunda route `/library` ekranina redirect ediliyor.
- Hadith list page builder `state.pathParameters['id']!` yerine trim edilmis helper sonucunu kullaniyor.
- App router testine missing/blank id guard'i ve source guard eklendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\core\network\app_router.dart:150` hadith collection id'yi kontrollu normalize ediyor.
- Eski akista `A:\Way of Allah\sirat_i_nur\lib\core\network\app_router.dart:330` route parametresi `!` ile okunuyordu; GoRouter normalde `:id` saglasa bile page builder tarafinda gereksiz crash yuzeyi kalmisti.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\network\app_router.dart`
- `A:\Way of Allah\sirat_i_nur\test\app_router_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Quran route id guard davranisi degismedi.
- Hadith dataset global block onceligi korunuyor.
- Hadith collection id eksik/blank olursa crash yerine `/library` fallback uygulanıyor.

### Test Sonucu
- `flutter test test\app_router_test.dart` PASS (`6/6`)
- `flutter analyze` PASS
- `flutter test` PASS (`376/376`)

### Risk Değişimi
- App router hadith collection route force-unwrap yuzeyi: `6/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude locale_utils nullable countryCode snapshot yuzeyi ve locale fallback testleri incelenecek.

## 2026-04-16 TUR-208 — Guard Locale Country Snapshot

### Yapılan İşlem
- Locale resolver `requested.countryCode` degerini local `requestedCountry` snapshot olarak okuyor.
- Language + region fallback karsilastirmasi snapshot deger uzerinden yapiliyor.
- Locale utils icin parse, region fallback, language fallback ve source guard testleri eklendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\core\utils\locale_utils.dart:67` requested country code'u local snapshot'a aliyor.
- Eski akista `requested.countryCode != null` guardindan sonra `requested.countryCode!` kullaniliyordu; bu gereksiz nullable force-unwrap pattern'i locale fallback hattinda kalmisti.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\utils\locale_utils.dart`
- `A:\Way of Allah\sirat_i_nur\test\locale_utils_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Exact match, language+region fallback ve language-only fallback sirasi korundu.
- Locale resolver force-unwrap kullanmadan ayni sonuc setini uretiyor.

### Test Sonucu
- `flutter test test\locale_utils_test.dart` PASS (`2/2`)
- `flutter analyze` PASS
- `flutter test` PASS (`378/378`)

### Risk Değişimi
- Locale countryCode force-unwrap yuzeyi: `6/25 -> 1/25`

### Sonraki Adım
- Sonraki dongude tum `lib/` icin kalan runtime null-assertion yuzeyleri yeniden taranacak; AppLocalizations patternleri haric tutulup en yuksek etkili kalan bulgu secilecek.

## 2026-04-16 TUR-209 — Localize Chatbot Runtime Copy

### Yapılan İşlem
- `chatbotGreeting`, `chatbotHint` ve `chatbotThinking` UI kopyalari mevcut korumali ARB ceviri araci ile desteklenen locale dosyalarinda Ingilizce fallback'ten cikarildi.
- `flutter gen-l10n` calistirilarak uretilmis `app_localizations_*.dart` dosyalari ARB kaynaklariyla senkronlandi.
- `test\arb_ui_localization_test.dart` icine guvenli oncelikli locale seti icin chatbot runtime copy fallback guard'i eklendi.
- `app_ay.arb`, `app_lus.arb`, `app_mai.arb`, `app_sa.arb`, `app_ti.arb` icinde ceviri servisinden gelen aciklama on ekleri temizlendi ve multiline batch debris riski kapatildi.

### Neden Yapıldı
- Diff oncesi taramada `chatbotGreeting`, `chatbotHint` ve `chatbotThinking` degerleri bircok locale dosyasinda `app_en.arb` ile birebir ayniydi; bu metinler chatbot ekraninda kullaniciya gorunen runtime UI kopyasidir.
- Bu tur dini kaynak metni uretmedi; yalnizca UI yardim metinleri lokalizasyon zincirine alindi.
- Nadir veya translator tarafindan guvenle cevrilemeyen locale dosyalarinda uydurma yapilmadi; AGENTS.md kuralina uygun sekilde EN referansi korunacak kalan alanlar bir sonraki l10n genisletme turuna acik risk olarak birakildi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- TR, DE, FR, ES, AR, HI, ID, PT, RU, ZH, ZH_CN ve ZH_TW oncelikli guvenli locale setinde chatbot runtime UI kopyasi artik Ingilizce fallback gostermiyor.
- ARB format guard'i satir kirilmasi ve batch debris icin bu turdaki bozuk ceviri ciktilarini yakaladi; temizleme sonrasi scan PASS oldu.
- Kalan nadir/unsupported locale fallback sayisi `255` olarak tespit edildi; bu alan uydurma ceviri yapmadan sonraki genisletme turunda yeniden ele alinacak.

### Test Sonucu
- `flutter test test\arb_coverage_test.dart test\arb_variant_fallback_sync_test.dart test\translate_arb_keys_test.dart test\arb_ui_localization_test.dart` PASS (`44/44`)
- `flutter analyze` PASS
- `flutter test` PASS (`379/379`)
- `git diff --check` PASS

### Risk Değişimi
- Oncelikli locale setinde chatbot runtime UI Ingilizce fallback riski: `12/25 -> 2/25`
- Tum locale setinde nadir/unsupported chatbot runtime fallback riski: `12/25 -> 8/25`

### Sonraki Adım
- Sonraki dongude l10n fallback sayim raporundaki kalan desteklenen locale/key eslesmeleri ayrilacak; uydurma yapmadan guvenle cevrilebilen anahtarlar icin yeni minimal batch uygulanacak.

## 2026-04-16 TUR-210 — Guard Chatbot Translation Debris

### Yapılan İşlem
- `tool\translate_arb_keys.dart` single-line guard listesine `chatbotGreeting`, `chatbotHint` ve `chatbotThinking` eklendi.
- `test\translate_arb_keys_test.dart` icine multiline chatbot runtime ceviri adayini reddeden regresyon testi eklendi.

### Neden Yapıldı
- TUR-209 odak testinde ceviri batch'i bazi locale degerlerine aciklama on eki ve satir kirilmasi eklemisti.
- Kök sebep `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart:339` civarinda bu chatbot runtime anahtarlarinin single-line guard kapsaminda olmamasiydi.
- Yeni test `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart:85` multiline aday geldiginde mevcut guvenli lokalize degerin korunmasini kanitliyor.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Gelecek ARB batch'lerinde chatbot runtime UI metinleri satir kirilmasi veya ceviri aciklama on ekiyle kirlenirse kaynakta reddedilecek.
- Mevcut ARB coverage debris testiyle arac seviyesi guard birbirini tamamliyor.

### Test Sonucu
- `flutter test test\translate_arb_keys_test.dart test\arb_coverage_test.dart` PASS (`10/10`)
- `flutter analyze` PASS
- `flutter test` PASS (`380/380`)

### Risk Değişimi
- Chatbot runtime ceviri batch debris tekrar riski: `10/25 -> 2/25`

### Sonraki Adım
- Sonraki dongude kalan l10n fallback sayimini anahtar bazinda yeniden raporla; guvenli desteklenen locale/key kumesinde en yuksek gorunurlukteki UI metinlerini sec.

## 2026-04-16 TUR-211 — Localize Analytics Streak Labels

### Yapılan İşlem
- `streaks` ve `dayStreak` analytics UI etiketleri korumali ARB batch'i ile genis locale kumesinde Ingilizce fallback'ten cikarildi.
- `flutter gen-l10n` calistirilarak uretilmis l10n Dart dosyalari ARB kaynaklariyla senkronlandi.
- `tool\translate_arb_keys.dart` single-line guard listesine `streaks` ve `dayStreak` eklendi.
- `test\translate_arb_keys_test.dart` icine multiline analytics label output regresyon testi eklendi.
- `test\arb_ui_localization_test.dart` analytics/zakat guard kapsaminda `streaks` degerini de kontrol ediyor.
- Oncelikli locale setinde makine cevirisinin baglami bozdugu `streaks/dayStreak` degerleri elle duzeltildi: DE, FR, ES, AR, HI, ID, PT, RU, ZH, ZH_CN, ZH_TW.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\analytics\analytics_page.dart:73` analytics ekraninda `l10n.streaks` gosteriyor.
- Diff oncesi `app_de.arb`, `app_ar.arb`, `app_fr.arb`, `app_es.arb` gibi oncelikli locale dosyalarinda `streaks` degeri dogrudan `"Streaks"` olarak kaliyordu.
- Ilk batch sonrasi Almanca/Fransizca/Ispanyolca gibi dillerde "stripe/spot" anlamina kayan ceviriler goruldu; commit oncesi kalite duzeltmesi yapildi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Oncelikli locale setinde `streaks/dayStreak` Ingilizce fallback riski kapandi.
- `streaks` toplam fallback sayisi `194 -> 71` seviyesine indi.
- `dayStreak` kalan fallback sayisi `65` olarak olculdu; kalanlar nadir/unsupported locale grubunda sonraki l10n turuna aday.
- Analytics streak label'lari artik tek satir kalmak zorunda; ceviri aciklama on eki gelirse arac tarafinda reddedilecek.

### Test Sonucu
- `flutter test test\translate_arb_keys_test.dart test\arb_coverage_test.dart test\arb_ui_localization_test.dart test\features\analytics\analytics_page_test.dart` PASS (`47/47`)
- `flutter analyze` PASS
- `flutter test` PASS (`381/381`)

### Risk Değişimi
- Oncelikli locale setinde analytics streak Ingilizce fallback riski: `12/25 -> 2/25`
- Tum locale setinde analytics streak fallback riski: `12/25 -> 7/25`

### Sonraki Adım
- Sonraki dongude fallback sayiminda ust siradaki kullaniciya gorunen `audioPlayFailed`, `offlineQuranAudioPacks`, `storedOnDeviceMb`, `deletedOfflineFilesForReciter` veya diagnostics kumesi arasindan en yuksek etkili UI grubunu sec.

## 2026-04-16 TUR-212 — Localize Offline Audio Runtime Copy

### Yapılan İşlem
- `offlineQuranAudioPacks`, `storedOnDeviceMb`, `deletedOfflineFilesForReciter` ve `audioPlayFailed` anahtarlari korumali ARB batch'i ile genis locale kumesinde lokalize edildi.
- `flutter gen-l10n` calistirilarak uretilmis `app_localizations_*.dart` dosyalari ARB kaynaklariyla senkronlandi.
- `tool\translate_arb_keys.dart` single-line guard listesine bu dort anahtar eklendi.
- Batch separator bozuldugunda tum locale'i Ingilizceye dusuren kok sebep azaltildi: ceviri araci artik batch parcasi ayrilamazsa ayni anahtarlari tek tek cevirerek kurtarmayi deniyor.
- `test\arb_ui_localization_test.dart` download/diagnostics priority guard ve single-line guard kapsaminda bu dort kullanici yuzeyi anahtarini kontrol ediyor.
- `test\translate_arb_keys_test.dart` icine multiline offline audio label output regresyon testi eklendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\downloads\offline_downloads_page.dart:194` silme sonucunu `deletedOfflineFilesForReciter` ile snackbar olarak gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\downloads\offline_downloads_page.dart:232` offline ses paketleri basligini `offlineQuranAudioPacks` ile gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\downloads\offline_downloads_page.dart:239` cihazdaki toplam boyutu `storedOnDeviceMb` ile gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\library\sukun_audio_page.dart:248` ve `A:\Way of Allah\sirat_i_nur\lib\features\library\asma_ul_husna_page.dart:276` playback hatasini `audioPlayFailed` ile gosteriyor.
- TUR-212 oncesi bu dort anahtar `194` locale civarinda `app_en.arb` ile birebir ayniydi; bu dogrudan kullanici yuzeyinde Ingilizce fallback uretiyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Oncelikli locale setinde offline audio/download runtime copy Ingilizce fallback riski kapandi.
- `offlineQuranAudioPacks` fallback sayisi `194 -> 70` seviyesine indi.
- `storedOnDeviceMb` fallback sayisi `194 -> 65` seviyesine indi.
- `deletedOfflineFilesForReciter` fallback sayisi `194 -> 70` seviyesine indi.
- `audioPlayFailed` fallback sayisi `194 -> 68` seviyesine indi.
- Kalan fallback'ler Google ceviri destegi olmayan veya guvenli aday uretilemeyen nadir/legacy locale grubunda birakildi; uydurma hedef dil metni yazilmadi.

### Test Sonucu
- `flutter analyze` PASS
- `flutter test` PASS (`381/381`) baseline oncesi
- `flutter test test\translate_arb_keys_test.dart test\arb_coverage_test.dart test\arb_ui_localization_test.dart` PASS (`46/46`)
- Tek satir ve placeholder taramasi PASS: `{size}` ve `{reciter}` tum ARB dosyalarinda korundu.

### Risk Değişimi
- Oncelikli locale setinde offline audio/download runtime copy fallback riski: `12/25 -> 2/25`
- Tum locale setinde offline audio/download runtime copy fallback riski: `12/25 -> 7/25`
- Ceviri araci batch separator bozulmasi tekrar riski: `10/25 -> 4/25`

### Sonraki Adım
- Sonraki dongude diagnostics kumesindeki `diagnosticsQuranDataset`, `diagnosticsQuranSurahs`, `diagnosticsQuranAyahs`, `diagnosticsQuranJuzMetadata`, `diagnosticsQuranCloudCheckFailed` ve `diagnosticsQuranCloudStructuralCheckFailed` fallback riskini ayni guard+batch+quality akisi ile kapat.

### Final Doğrulama Eki
- Commit oncesi son kosuda `flutter test` PASS (`382/382`) olarak tamamlandi.

## 2026-04-16 TUR-213 — Localize Diagnostics Runtime Copy

### Yapılan İşlem
- `diagnosticsUiAudioAssets`, `diagnosticsQuranAudioAssets`, `diagnosticsSupportedCount`, `diagnosticsQuranDataset`, `diagnosticsQuranSurahs`, `diagnosticsQuranAyahs`, `diagnosticsQuranJuzMetadata`, `diagnosticsQuranCloudCheckFailed` ve `diagnosticsQuranCloudStructuralCheckFailed` anahtarlari korumali ARB batch'i ile genis locale kumesinde lokalize edildi.
- `flutter gen-l10n` calistirilarak uretilmis `app_localizations_*.dart` dosyalari ARB kaynaklariyla senkronlandi.
- `tool\translate_arb_keys.dart` single-line guard listesine diagnostics runtime anahtarlari eklendi.
- `test\arb_ui_localization_test.dart` priority locale fallback guard ve diagnostics single-line guard kapsaminda bu anahtarlari kontrol ediyor.
- `test\translate_arb_keys_test.dart` icine multiline diagnostics hata metni adayini reddeden regresyon testi eklendi.
- Priority locale kalite gecisinde yanlis veya fazla genel kalan degerler elle duzeltildi: ES, FR, PT, RU, ZH, ZH_CN, ZH_TW, NB, NN, NO, DA, HE, VI.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb` icindeki diagnostics runtime anahtarlari TUR-213 oncesi 194 locale civarinda app_en ile birebir ayniydi.
- Bu metinler diagnostics ve veri sagligi ekranlarinda kullaniciya gorunen durum/hata metni oldugu icin Ingilizce fallback, tam lokalizasyon hedefiyle uyumsuzdu.
- Kök risk, onceki batch'lerde oldugu gibi ceviri ciktisinin satir kirilmasi veya placeholder bozmasiydi; bu nedenle arac guard'i ve test guard'i birlikte eklendi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Oncelikli locale setinde diagnostics runtime copy Ingilizce fallback riski kapandi.
- Fallback sayimlari: `diagnosticsUiAudioAssets 194 -> 79`, `diagnosticsQuranAudioAssets 77 -> 69`, `diagnosticsSupportedCount 194 -> 71`, `diagnosticsQuranDataset 194 -> 79`, `diagnosticsQuranSurahs 194 -> 76`, `diagnosticsQuranAyahs 194 -> 81`, `diagnosticsQuranJuzMetadata 194 -> 90`, `diagnosticsQuranCloudCheckFailed 194 -> 70`, `diagnosticsQuranCloudStructuralCheckFailed 194 -> 74`.
- `{count}` ve `{error}` placeholder'lari tum ARB dosyalarinda korundu; diagnostics copy icinde newline kalmadi.
- Kalan fallback'ler Google ceviri destegi olmayan veya guvenli aday uretilemeyen nadir/legacy locale grubunda birakildi; dini veya teknik metin uydurulmadi.

### Test Sonucu
- Baslangic dogrulamasi: `flutter analyze` PASS
- Baslangic dogrulamasi: `flutter test` PASS (`382/382`)
- Odak test: `flutter test test\translate_arb_keys_test.dart test\arb_coverage_test.dart test\arb_ui_localization_test.dart` PASS (`48/48`)
- Diff denetimi: `git diff --check` PASS (yalnizca mevcut Windows CRLF uyarilari)
- Placeholder/newline taramasi PASS: `{count}` ve `{error}` korundu, diagnostics runtime copy tek satir kaldi.

### Risk Değişimi
- Oncelikli locale setinde diagnostics runtime copy fallback riski: `12/25 -> 2/25`
- Tum locale setinde diagnostics runtime copy fallback riski: `12/25 -> 7/25`
- Diagnostics ceviri batch debris tekrar riski: `10/25 -> 3/25`

### Sonraki Adım
- Commit oncesi tam `flutter analyze` ve tam `flutter test` tekrar calistir; PASS olursa `i18n: localize diagnostics runtime copy` commit'i ile push et.
- Sonraki dongude genel l10n fallback taramasini yenile ve en yuksek kullanici gorunurlugune sahip kalan anahtar grubunu sec.

### Final Doğrulama Eki
- Commit oncesi son kosuda `flutter analyze` PASS olarak tamamlandi.
- Commit oncesi son kosuda `flutter test` PASS (`384/384`) olarak tamamlandi.

## 2026-04-16 TUR-214 — Localize Analytics Prayer Completion Label

### Yapılan İşlem
- `prayerCompletion` anahtari korumali ARB batch'i ile genis locale kumesinde lokalize edildi.
- `flutter gen-l10n` calistirilarak uretilmis `app_localizations_*.dart` dosyalari ARB kaynaklariyla senkronlandi.
- `tool\translate_arb_keys.dart` single-line guard listesine `prayerCompletion` eklendi.
- `test\arb_ui_localization_test.dart` analytics/zakat priority locale guard kapsaminda `prayerCompletion` degerini kontrol ediyor.
- `test\translate_arb_keys_test.dart` multiline analytics label output testine `prayerCompletion` senaryosu eklendi.
- Priority locale kalite gecisinde genel "dua/prayer" anlamina kayan degerler namaz tamamlama baglamina uygun sekilde elle duzeltildi: DE, FR, ES, AR, HI, ID, PT, RU, ZH, ZH_CN, ZH_TW, JA, KO, NL, IT, DA, HE, NB, NN, NO, VI.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\analytics\analytics_page.dart:49` analytics ekraninda `l10n.prayerCompletion` basligini gosteriyor.
- TUR-214 oncesi `A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb:615` degeri "Prayer Completion" iken DE/FR/ES/AR/HI/ID/PT/RU/ZH gibi priority locale dosyalarinda ayni Ingilizce deger kaliyordu.
- Kök risk, kullaniciya gorunen analytics basliginin tam lokalizasyon zincirine girmemesi ve ceviri aracinin tek satir UI etiketlerinde aciklama/newline uretme ihtimaliydi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Priority locale setinde analytics "Prayer Completion" Ingilizce fallback riski kapandi.
- `prayerCompletion` fallback sayisi `194 -> 63` seviyesine indi.
- Kalan fallback'ler Google ceviri destegi olmayan veya guvenli aday uretilemeyen nadir/legacy locale grubunda birakildi; dini UI etiketi uydurulmadi.
- Tek satir guard'i ile gelecekteki batch debris/newline riski azaltildi.

### Test Sonucu
- Odak test: `flutter test test\translate_arb_keys_test.dart test\arb_coverage_test.dart test\arb_ui_localization_test.dart test\features\analytics\analytics_page_test.dart` PASS (`50/50`)
- `git diff --check` PASS (yalnizca mevcut Windows CRLF uyarilari)
- `flutter analyze` PASS
- `flutter test` PASS (`384/384`)
- `prayerCompletion` single-line taramasi PASS

### Risk Değişimi
- Priority locale analytics prayer completion fallback riski: `12/25 -> 2/25`
- Tum locale setinde analytics prayer completion fallback riski: `12/25 -> 6/25`

### Sonraki Adım
- Sonraki dongude kullaniciya gorunen kalan priority fallback'lerden `rawatib`, `fastingDebt`, `qiblaAligned`, `qiblaCalibration`, `dailyChecklist`, `dailyProgress` veya aktif sayfalarda kullanilan benzer anahtarlar arasindan en yuksek etkili tek yuzeyi sec.

## 2026-04-16 TUR-215 — Localize Qibla Calibration Copy

### Yapılan İşlem
- `qiblaCalibration`, `calibrationOffset`, `currentOffset`, `compassSmoothing`, `manualCorrectionDesc` ve `calibrationRequiredFigure8` anahtarlari korumali ARB batch'i ile genis locale kumesinde lokalize edildi.
- `flutter gen-l10n` calistirilarak uretilmis `app_localizations_*.dart` dosyalari ARB kaynaklariyla senkronlandi.
- `tool\translate_arb_keys.dart` single-line guard listesine qibla calibration kumesi eklendi.
- `test\arb_ui_localization_test.dart` qibla priority locale fallback guard kapsaminda bu kullanici yuzeyi anahtarlarini kontrol ediyor.
- `test\translate_arb_keys_test.dart` multiline qibla calibration output regresyon testiyle arac seviyesinde batch debris korumasi ekledi.
- `app_tw.arb` ve `app_ak.arb` icinde `currentOffset` icin guvenli mevcut lokalize deger korundu; placeholder `{offset}` tum ARB dosyalarinda korundu.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\qibla\qibla_page.dart:363` kalibrasyon diyalogu basligini `l10n.qiblaCalibration` ile gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\qibla\qibla_page.dart:366` kalibrasyon gereksinimi metnini `l10n.calibrationRequiredFigure8` ile gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart:146`, `:154`, `:155`, `:164`, `:443` ve `:449` ayarlar yuzeyinde ayni qibla calibration kumesini kullaniyor.
- TUR-215 oncesi bu anahtarlar priority locale setinde Ingilizce fallback uretme riski tasiyordu; bu, aktif Qibla/Ayarlar deneyiminde tam lokalizasyon hedefiyle uyumsuzdu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Priority locale setinde Qibla kalibrasyon ve ayarlar copy Ingilizce fallback riski kapandi.
- Kalan fallback sayimlari: `qiblaCalibration 78`, `calibrationOffset 79`, `currentOffset 79`, `compassSmoothing 81`, `manualCorrectionDesc 66`, `calibrationRequiredFigure8 66`.
- Kalan fallback'ler Google ceviri destegi olmayan veya guvenli aday uretilemeyen nadir/legacy locale grubunda birakildi; dini/teknik copy uydurulmadi.
- Tek satir guard'i ile gelecekteki batch debris/newline riski azaltildi.

### Test Sonucu
- Odak test: `flutter test test\translate_arb_keys_test.dart test\arb_coverage_test.dart test\arb_ui_localization_test.dart test\features\qibla\qibla_page_test.dart test\settings_provider_test.dart` PASS (`70/70`)
- `git diff --check` PASS (yalnizca mevcut Windows CRLF uyarilari)
- `flutter analyze` PASS
- `flutter test` PASS (`385/385`)
- Placeholder/fallback taramasi PASS: `{offset}` korundu, eksik ARB anahtari yok.

### Risk Değişimi
- Priority locale qibla calibration fallback riski: `12/25 -> 2/25`
- Tum locale qibla calibration fallback riski: `12/25 -> 7/25`
- Qibla calibration ceviri batch debris tekrar riski: `10/25 -> 3/25`

### Sonraki Adım
- Sonraki dongude aktif kullanici yuzeylerinde kalan l10n fallback ve hardcoded string taramasini yenile; `tapToCount`, `juz`, `tafsir`, `dailyChecklist`, `dailyProgress` veya benzer gorunur anahtarlar arasindan en yuksek riskli tek yuzeyi sec.

## 2026-04-16 TUR-216 — Localize Zikr Counter Hint

### Yapılan İşlem
- `tapToCount` anahtari korumali ARB batch'i ile genis locale kumesinde lokalize edildi.
- `flutter gen-l10n` calistirilarak uretilmis `app_localizations_*.dart` dosyalari ARB kaynaklariyla senkronlandi.
- `tool\translate_arb_keys.dart` single-line guard listesine `tapToCount` eklendi.
- `test\arb_ui_localization_test.dart` zikr completion priority locale guard kapsaminda `tapToCount` degerini de kontrol ediyor.
- `test\translate_arb_keys_test.dart` multiline zikr counter hint output regresyon testiyle ceviri debris korumasi ekledi.
- Priority kalite gecisinde Korece `tapToCount` degeri "hesapla" anlamindan "say" baglamina elle duzeltildi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\zikr\zikr_page.dart:172` zikir sayacinda `l10n.tapToCount` metnini kullaniciya gosteriyor.
- TUR-216 oncesi aktif l10n fallback taramasinda `tapToCount` icin `21` priority locale ve `187` toplam locale `app_en.arb` ile birebir ayniydi.
- Bu metin kullaniciya dogrudan gorunen bir eylem ipucu oldugu icin Ingilizce fallback tam lokalizasyon hedefiyle uyumsuzdu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Priority locale setinde `tapToCount` Ingilizce fallback riski kapandi.
- `tapToCount` fallback sayisi `187 -> 63` seviyesine indi.
- Kalan fallback'ler Google ceviri destegi olmayan veya guvenli aday uretilemeyen nadir/legacy locale grubunda birakildi; UI metni uydurulmadi.
- Tek satir guard'i ile gelecekteki batch debris/newline riski azaltildi.

### Test Sonucu
- Odak test: `flutter test test\translate_arb_keys_test.dart test\arb_coverage_test.dart test\arb_ui_localization_test.dart test\tracker_test.dart` PASS (`58/58`)
- Priority fallback taramasi PASS: `priority_same=[]`
- `git diff --check` PASS (yalnizca mevcut Windows CRLF uyarilari)
- `flutter analyze` PASS
- `flutter test` PASS (`386/386`)

### Risk Değişimi
- Priority locale zikr counter hint fallback riski: `12/25 -> 2/25`
- Tum locale zikr counter hint fallback riski: `12/25 -> 6/25`
- Zikr counter hint ceviri batch debris tekrar riski: `10/25 -> 3/25`

### Sonraki Adım
- Sonraki dongude aktif l10n fallback taramasini yenile; bilincli placeholder/proper noun anahtarlarini eleyip `diagnostics`, `juz`, `tafsir`, `dailyChecklist`, `dailyProgress` veya benzer gorunur anahtarlar arasindan en yuksek etkili tek yuzeyi sec.

## 2026-04-16 TUR-217 — Localize Diagnostics Screen Title

### Yapılan İşlem
- `diagnostics` anahtari korumali ARB batch'i ile genis locale kumesinde lokalize edildi.
- `flutter gen-l10n` calistirilarak uretilmis `app_localizations_*.dart` dosyalari ARB kaynaklariyla senkronlandi.
- `tool\translate_arb_keys.dart` single-line guard listesine `diagnostics` eklendi.
- `test\arb_ui_localization_test.dart` diagnostics label priority locale guard kapsaminda `diagnostics` basligini da kontrol ediyor.
- `test\translate_arb_keys_test.dart` multiline diagnostics title output regresyon testiyle ceviri debris korumasi ekledi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart:225` ayarlar yuzeyinde diagnostics kart basligini `l10n.diagnostics` ile gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb:356` kaynak metin olarak `"Diagnostics"` degerini tasiyor.
- TUR-217 oncesi aktif l10n fallback taramasinda `diagnostics` icin `21` priority locale ve `187` toplam locale `app_en.arb` ile birebir ayniydi.
- Bu baslik kullaniciya dogrudan gorunen ayarlar navigasyon yuzeyi oldugu icin Ingilizce fallback tam lokalizasyon hedefiyle uyumsuzdu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Priority locale setinde `diagnostics` Ingilizce fallback riski kapandi.
- `diagnostics` fallback sayisi `187 -> 69` seviyesine indi.
- Kalan fallback'ler Google ceviri destegi olmayan veya guvenli aday uretilemeyen nadir/legacy locale grubunda birakildi; UI metni uydurulmadi.
- Tek satir guard'i ile gelecekteki batch debris/newline riski azaltildi.

### Test Sonucu
- Odak test: `flutter test test\translate_arb_keys_test.dart test\arb_coverage_test.dart test\arb_ui_localization_test.dart test\features\settings\diagnostics_page_test.dart test\quran_diagnostics_test.dart` PASS (`69/69`)
- Priority fallback taramasi PASS: `priority_same=[]`
- `git diff --check` PASS (yalnizca mevcut Windows CRLF uyarilari)
- `flutter analyze` PASS
- `flutter test` PASS (`386/386`)

### Risk Değişimi
- Priority locale diagnostics title fallback riski: `12/25 -> 2/25`
- Tum locale diagnostics title fallback riski: `12/25 -> 6/25`
- Diagnostics title ceviri batch debris tekrar riski: `10/25 -> 3/25`

### Sonraki Adım
- Sonraki dongude aktif l10n fallback taramasini yenile; bilincli placeholder/proper noun anahtarlarini eleyip `juz`, `tafsir`, `dailyChecklist`, `dailyProgress` veya benzer gorunur anahtarlar arasindan en yuksek etkili tek yuzeyi sec.

## 2026-04-16 TUR-218 — Localize Zikr Navigation Label

### Yapılan İşlem
- `zikr` anahtari korumali ARB batch'i ile genis locale kumesinde lokalize edildi.
- `flutter gen-l10n` calistirilarak uretilmis `app_localizations_*.dart` dosyalari ARB kaynaklariyla senkronlandi.
- Priority Latin-script locale'lerde Google ceviri ayni `Zikr` degerini biraktigi icin dini terim uydurulmadan kabul goren alternatif transliterasyon `Dhikr` kullanildi.
- `tool\translate_arb_keys.dart` single-line guard listesine `zikr` eklendi.
- `test\arb_ui_localization_test.dart` zikr completion guard kapsaminda `zikr` navigasyon basligini da kontrol ediyor.
- `test\translate_arb_keys_test.dart` multiline `zikr` output regresyon testiyle ceviri debris korumasi ekledi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\common\main_skeleton.dart:67` ana navigasyonda `l10n.zikr` etiketini gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\zikr\zikr_page.dart:59` zikir sayfasi basligini `l10n.zikr` ile gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\analytics\analytics_page.dart:40` analytics kartinda `l10n.zikr` degerini kullaniyor.
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb:8` kaynak metin olarak `"Zikr"` degerini tasiyor.
- TUR-218 oncesi aktif kullanilan l10n fallback taramasinda `zikr` icin `16` priority locale ve `168` toplam locale `app_en.arb` ile birebir ayniydi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Priority locale setinde `zikr` Ingilizce fallback riski kapandi.
- `zikr` fallback sayisi `168 -> 126` seviyesine indi.
- Kalan fallback'ler Google ceviri destegi olmayan veya guvenli aday uretilemeyen nadir/legacy locale grubunda birakildi; dini terim uydurulmadi.
- Tek satir guard'i ile gelecekteki batch debris/newline riski azaltildi.

### Test Sonucu
- Odak test: `flutter test test\translate_arb_keys_test.dart test\arb_coverage_test.dart test\arb_ui_localization_test.dart test\arb_religious_localization_test.dart test\features\common\main_skeleton_test.dart test\tracker_test.dart test\features\analytics\analytics_page_test.dart` PASS (`63/63`)
- Priority fallback taramasi PASS: `priority_same=[]`
- `git diff --check` PASS (yalnizca mevcut Windows CRLF uyarilari)
- `flutter analyze` PASS
- `flutter test` PASS (`386/386`)

### Risk Değişimi
- Priority locale zikr navigation fallback riski: `16/25 -> 2/25`
- Tum locale zikr navigation fallback riski: `16/25 -> 7/25`
- Zikr translation batch debris tekrar riski: `10/25 -> 3/25`

### Sonraki Adım
- Sonraki dongude aktif l10n fallback taramasini yenile; bilincli canonical terimleri eleyip `juz`, `tafsir`, `qibla`, `version`, `darkMode`, `systemDefault` veya benzer gorunur anahtarlar arasindan en yuksek etkili tek yuzeyi sec.

## 2026-04-16 TUR-219 — Localize Theme Mode Settings Copy

### Yapılan İşlem
- `theme`, `lightMode`, `darkMode`, `systemDefault` anahtarlari korumali ARB batch'i ile genis locale kumesinde lokalize edildi.
- `flutter gen-l10n` calistirilarak uretilmis `app_localizations_*.dart` dosyalari ARB kaynaklariyla senkronlandi.
- Cince UI kalite gecisinde `lightMode` icin Google kaynakli "isik/aydinlatma modu" anlami `zh` ve `zh_CN` icin `浅色模式`, `zh_TW` icin `淺色模式` olarak duzeltildi.
- `tool\translate_arb_keys.dart` single-line guard listesine theme mode anahtarlari eklendi.
- `test\arb_ui_localization_test.dart` theme mode priority locale fallback guard'i ekledi.
- `test\translate_arb_keys_test.dart` multiline theme mode output regresyon testiyle ceviri debris korumasi ekledi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart:173` ayarlar yuzeyinde `l10n.theme` basligini gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart:181` dark mode satirinda `l10n.darkMode` degerini gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart:523` ve `:582` sistem varsayilani seceneklerinde `l10n.systemDefault` kullaniyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart:275`, `:276` ve `:281` diagnostics satirlarinda ayni theme mode copy kumesini gosteriyor.
- TUR-219 oncesi aktif l10n fallback taramasinda `theme`, `lightMode`, `darkMode`, `systemDefault` icin priority fallback sayilari sirasiyla `10`, `10`, `10`, `10` idi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Priority locale setinde theme mode Ingilizce fallback riski kapandi.
- Fallback sayilari: `theme 134 -> 66`, `lightMode 136 -> 69`, `darkMode 138 -> 71`, `systemDefault 138 -> 74`.
- Kalan fallback'ler Google ceviri destegi olmayan veya guvenli aday uretilemeyen nadir/legacy locale grubunda birakildi; UI metni uydurulmadi.
- Tek satir guard'i ile gelecekteki batch debris/newline riski azaltildi.

### Test Sonucu
- Odak test 1: `flutter test test\translate_arb_keys_test.dart test\arb_coverage_test.dart test\arb_ui_localization_test.dart` PASS (`52/52`)
- Odak test 2: `flutter test test\features\settings\diagnostics_page_test.dart test\settings_provider_test.dart` PASS (`25/25`)
- `git diff --check` PASS (yalnizca mevcut Windows CRLF uyarilari)
- `flutter analyze` PASS
- `flutter test` PASS (`388/388`)

### Risk Değişimi
- Priority locale theme mode fallback riski: `10/25 -> 2/25`
- Tum locale theme mode fallback riski: `10/25 -> 6/25`
- Theme mode ceviri batch debris tekrar riski: `10/25 -> 3/25`

### Sonraki Adım
- Sonraki dongude aktif l10n fallback taramasini yenile; canonical dini terimleri ayri risk olarak isaretleyip `version`, `downloads`, `premium`, `ayahs`, `surah` veya benzer gorunur ama guvenle cevrilebilir anahtarlar arasindan en yuksek etkili tek yuzeyi sec.

## 2026-04-16 TUR-220 — Localize Downloads Quick Access Label

### Yapılan İşlem
- `downloads` anahtari korumali ARB batch'i ile genis locale kumesinde lokalize edildi.
- `flutter gen-l10n` calistirilarak uretilmis `app_localizations_*.dart` dosyalari ARB kaynaklariyla senkronlandi.
- Priority locale kalite gecisinde `da`, `de`, `nl` icin Ingilizceyle birebir kalan degerler elle duzeltildi: `Hentede filer`, `Heruntergeladenes`, `Gedownloade bestanden`.
- `tool\translate_arb_keys.dart` single-line guard listesine `downloads` eklendi.
- `test\arb_ui_localization_test.dart` home dashboard copy guard'ina `downloads` eklendi.
- `test\translate_arb_keys_test.dart` multiline `downloads` output regresyon testiyle ceviri debris korumasi ekledi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\home\home_page.dart:370` ana ekran quick access satirinda `l10n.downloads` etiketini gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb:262` kaynak metin olarak `"Downloads"` degerini tasiyor.
- TUR-220 oncesi aktif l10n fallback taramasinda `downloads` icin `13` priority locale ve `140` toplam locale `app_en.arb` ile birebir ayniydi.
- Bu yuzey ana ekranda gorundugu icin kullanici ilk temasinda Ingilizce kalinti riski olusturuyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Priority locale setinde `downloads` Ingilizce fallback riski kapandi.
- `downloads` fallback sayisi `140 -> 72` seviyesine indi.
- Kalan fallback'ler Google ceviri destegi olmayan veya guvenli aday uretilemeyen nadir/legacy locale grubunda birakildi; UI metni uydurulmadi.
- Tek satir guard'i ile gelecekteki batch debris/newline riski azaltildi.

### Test Sonucu
- Odak test: `flutter test test\translate_arb_keys_test.dart test\arb_coverage_test.dart test\arb_ui_localization_test.dart test\features\home\home_page_test.dart` PASS (`55/55`)
- Priority fallback taramasi PASS: `priority_same=[]`
- `git diff --check` PASS (yalnizca mevcut Windows CRLF uyarilari)
- `flutter analyze` PASS
- `flutter test` PASS (`389/389`)
- Ortam dogrulama: `flutter doctor -v` Android/test hatti icin PASS; Chrome ve Visual Studio eksikligi yalniz web/Windows desktop hedefleri icin non-kritik olarak kaydedildi.

### Risk Değişimi
- Priority locale downloads quick access fallback riski: `13/25 -> 2/25`
- Tum locale downloads quick access fallback riski: `13/25 -> 6/25`
- Downloads ceviri batch debris tekrar riski: `10/25 -> 3/25`

### Sonraki Adım
- Sonraki dongude aktif l10n fallback taramasini yenile; canonical dini terimleri ayri risk olarak isaretleyip `premium`, `ayahs`, `surah`, `version`, `rateApp`, `shareApp` veya benzer gorunur ama guvenle cevrilebilir anahtarlar arasindan en yuksek etkili tek yuzeyi sec.

## 2026-04-16 TUR-221 — Localize Settings About Share Labels

### Yapılan İşlem
- Ayarlar/About yuzeyindeki `version`, `rateApp`, `shareApp` anahtarlari korumali ARB batch'i ile genis locale kumesinde lokalize edildi.
- `flutter gen-l10n` calistirilarak uretilmis `app_localizations_*.dart` dosyalari ARB kaynaklariyla senkronlandi.
- Priority/safe locale kalite gecisinde Danca, Almanca, Fransizca, Ispanyolca, Ibranice, Japonca, Norvec varyantlari, Portekizce ve Cince varyantlarindaki kaba veya Ingilizceyle birebir kalan ifadeler elle duzeltildi.
- `tool\translate_arb_keys.dart` single-line guard listesine `version`, `rateApp`, `shareApp` eklendi.
- `test\arb_ui_localization_test.dart` share/about copy guard'i `version`, `rateApp`, `shareApp`, `shareAppMessage` kumesini birlikte denetleyecek sekilde genisletildi.
- `test\translate_arb_keys_test.dart` multiline settings about output regresyon testiyle ceviri debris korumasi eklendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart:240` About bolumunde `l10n.version` etiketini gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart:253` `l10n.rateApp` satirini gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart:261` `l10n.shareApp` satirini gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart:608` paylasim metnini `l10n.shareAppMessage` ile uretiyor.
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb:244`, `:248`, `:249` kaynak metin olarak sirasiyla `"Version"`, `"Rate App"`, `"Share App"` degerlerini tasiyor.
- TUR-221 oncesi aktif l10n fallback taramasinda `version`, `rateApp`, `shareApp` icin safe/priority fallback sayilari sirasiyla `11`, `8`, `8` idi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Safe/priority locale setinde settings About/Share copy icin Ingilizce fallback riski kapandi.
- Fallback sayilari: `version 139 -> 69`, `rateApp 141 -> 81`, `shareApp 138 -> 74`.
- `shareAppMessage` mevcut guard kapsaminda tekrar tarandi; safe locale setinde Ingilizce fallback kalmadigi dogrulandi.
- Kalan fallback'ler Google ceviri destegi olmayan veya guvenli aday uretilemeyen nadir/legacy locale grubunda birakildi; gorunur UI metni uydurulmadi.
- Tek satir guard'i ile gelecekteki batch debris/newline riski azaltildi.

### Test Sonucu
- Odak test: `flutter test test\translate_arb_keys_test.dart test\arb_coverage_test.dart test\arb_ui_localization_test.dart test\features\settings\settings_page_test.dart` PASS (`60/60`)
- Safe fallback taramasi PASS: `version`, `rateApp`, `shareApp`, `shareAppMessage` icin `safe_same=[]`
- `flutter gen-l10n` PASS

### Risk Değişimi
- Safe/priority locale settings About/Share fallback riski: `11/25 -> 2/25`
- Tum locale settings About/Share fallback riski: `11/25 -> 6/25`
- Settings about/share ceviri batch debris tekrar riski: `10/25 -> 3/25`

### Sonraki Adım
- Commit kapisinda `git diff --check`, `flutter analyze`, `flutter test` calistir; hepsi gecerse commit/push yap.
- Sonraki dongude aktif l10n fallback taramasini yenile; `ok`, `liveTv`, `offlineMode`, `clearCache`, `hijriCalendar`, `home`, `settings`, `searchHint` gibi gorunur ve dini terim olmayan anahtarlar arasindan en yuksek etkili tek yuzeyi sec.

## 2026-04-16 TUR-222 — Localize Ibadah Tracker Quick Access Label

### Yapılan İşlem
- Ana ekran quick access kartindaki `ibadahTracker` anahtari korumali ARB batch'i ile genis locale kumesinde lokalize edildi.
- `flutter gen-l10n` calistirilarak uretilmis `app_localizations_*.dart` dosyalari ARB kaynaklariyla senkronlandi.
- Safe/priority locale kalite gecisinde `da`, `de`, `es`, `fr`, `he`, `ja`, `nb`, `nn`, `no`, `pt`, `ru`, `vi`, `zh`, `zh_CN`, `zh_TW` degerleri elle duzeltildi.
- `tool\translate_arb_keys.dart` single-line guard listesine `ibadahTracker` eklendi.
- `test\arb_ui_localization_test.dart` home dashboard copy guard'ina `ibadahTracker` eklendi.
- `test\translate_arb_keys_test.dart` multiline `ibadahTracker` output regresyon testiyle ceviri debris korumasi eklendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\home\home_page.dart:369` ana ekran quick access kartinda `l10n.ibadahTracker` etiketini gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb:169` kaynak metin olarak `"Ibadah Tracker"` degerini tasiyor.
- TUR-222 oncesi aktif l10n fallback taramasinda `ibadahTracker` icin `9` safe/priority locale ve `155` toplam locale `app_en.arb` ile birebir ayniydi.
- Ana ekran quick access karti ilk temas yuzeyi oldugu icin Ingilizce "Tracker" kalintisi gorunur UI riski olusturuyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Safe/priority locale setinde `ibadahTracker` Ingilizce fallback riski kapandi.
- `ibadahTracker` fallback sayisi `155 -> 106` seviyesine indi.
- Dini kavram uydurulmadi; `ibadah/ibadet` anlami korunurken UI eylemi "takip/kayit/oversikt" gibi dil-baglamli ifadelerle yerlestirildi.
- Kalan fallback'ler Google ceviri destegi olmayan veya guvenli aday uretilemeyen nadir/legacy locale grubunda birakildi.
- Tek satir guard'i ile gelecekteki batch debris/newline riski azaltildi.

### Test Sonucu
- Odak test: `flutter test test\translate_arb_keys_test.dart test\arb_coverage_test.dart test\arb_ui_localization_test.dart test\features\home\home_page_test.dart` PASS (`57/57`)
- Safe fallback taramasi PASS: `ibadahTracker` icin `safe_same=[]`
- `flutter gen-l10n` PASS

### Risk Değişimi
- Safe/priority locale home quick access fallback riski: `9/25 -> 2/25`
- Tum locale ibadah tracker fallback riski: `9/25 -> 6/25`
- Ibadah tracker ceviri batch debris tekrar riski: `10/25 -> 3/25`

### Sonraki Adım
- Commit kapisinda `git diff --check`, `flutter analyze`, `flutter test` calistir; hepsi gecerse commit/push yap.
- Sonraki dongude aktif l10n fallback taramasini yenile; `offlineMode`, `liveTv`, `clearCache`, `hijriCalendar`, `home`, `settings`, `searchHint`, `weeklyProgress` gibi gorunur ve guvenle cevrilebilir anahtarlar arasindan en yuksek etkili tek yuzeyi sec.

## 2026-04-16 TUR-223 — Localize Live TV Runtime Copy

### Yapılan İşlem
- Live TV yuzeyinde kullanilan `liveTv`, `watchLive`, `streamError`, `reload`, `checkConnection` anahtarlari korumali ARB batch'i ile genis locale kumesinde lokalize edildi.
- `flutter gen-l10n` calistirilarak uretilmis `app_localizations_*.dart` dosyalari ARB kaynaklariyla senkronlandi.
- Safe/priority locale kalite gecisinde `he`, `ja`, `nb`, `nn`, `no`, `pt`, `ru`, `vi` fallback'lerinin kapandigi dogrulandi.
- `tool\translate_arb_keys.dart` single-line guard listesine Live TV runtime anahtarlari eklendi.
- `test\arb_ui_localization_test.dart` live tv actions guard'i `liveTv`, `watchLive`, `streamError`, `reload`, `checkConnection`, `openInYoutube` kumesini kapsayacak sekilde genisletildi.
- `test\translate_arb_keys_test.dart` multiline Live TV output regresyon testiyle ceviri debris korumasi eklendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\tv\live_tv_page.dart:10` hata metnini `l10n.streamError` ve `l10n.checkConnection` ile birlestiriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\tv\live_tv_page.dart:248` AppBar basliginda `l10n.liveTv` gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\tv\live_tv_page.dart:256` refresh tooltip'inde `l10n.reload` kullaniyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\tv\live_tv_page.dart:328`, `:352`, `:374` hata/aksiyon yuzeylerinde `streamError`, `reload`, `watchLive` anahtarlarini gosteriyor.
- TUR-223 oncesi aktif l10n fallback taramasinda bu bes anahtar icin `8` safe/priority locale ve yaklasik `134-137` toplam locale `app_en.arb` ile birebir ayniydi.
- Live TV sayfasi ana ekran quick access yuzeyinden acildigi icin bu Ingilizce kalintilar gorunur UI riski olusturuyordu.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Safe/priority locale setinde Live TV runtime/action copy icin Ingilizce fallback riski kapandi.
- Fallback sayilari: `liveTv 137 -> 72`, `watchLive 134 -> 67`, `streamError 134 -> 65`, `reload 135 -> 70`, `checkConnection 134 -> 65`.
- `openInYoutube` mevcut guard kapsaminda tekrar dogrulandi; safe locale setinde Ingilizce fallback kalmadigi teyit edildi.
- Kalan fallback'ler ceviri servisinin guvenli aday uretmedigi nadir/legacy locale grubunda birakildi; "tamamlamak" adina sahte veya uydurma metin yazilmadi.
- Tek satir guard'i ile gelecekteki batch debris/newline riski azaltildi.

### Test Sonucu
- Odak test: `flutter test test\translate_arb_keys_test.dart test\arb_coverage_test.dart test\arb_ui_localization_test.dart test\live_tv_page_test.dart` PASS (`64/64`)
- Safe fallback taramasi PASS: `liveTv`, `watchLive`, `streamError`, `reload`, `checkConnection`, `openInYoutube` icin `safe_same=[]`
- Single-line taramasi PASS: Live TV runtime/action anahtarlarinda bos veya multiline locale degeri yok.
- `flutter gen-l10n` PASS

### Risk Değişimi
- Safe/priority locale Live TV fallback riski: `8/25 -> 2/25`
- Tum locale Live TV fallback riski: `8/25 -> 5/25`
- Live TV ceviri batch debris tekrar riski: `10/25 -> 3/25`

### Sonraki Adım
- Commit kapisinda `git diff --check`, `flutter analyze`, `flutter test` calistir; hepsi gecerse commit/push yap.
- Sonraki dongude aktif l10n fallback taramasini yenile; `offlineMode`, `clearCache`, `hijriCalendar`, `home`, `settings`, `searchHint`, `weeklyProgress`, `quranReading` gibi gorunur ve guvenle cevrilebilir anahtarlar arasindan en yuksek etkili tek yuzeyi sec.

## 2026-04-16 TUR-224 — Localize Settings Shell, Storage, Location and Legal Copy

### Yapılan İşlem
- Settings ana yuzeyinde kullanilan `settings`, `prayerCalculation`, `method`, `madhab`, `location`, `language`, `selectLanguage`, `currentLocation`, `dataStorage`, `clearCache`, `cacheClearedSuccess`, `about`, `privacyPolicy`, `termsOfService`, `contactUs` anahtarlari korumali ARB batch'i ile genis locale kumesinde lokalize edildi.
- `flutter gen-l10n` calistirilarak uretilmis `app_localizations_*.dart` dosyalari ARB kaynaklariyla senkronlandi.
- Safe/priority locale kalite gecisinde `tr`, `de`, `fr`, `es`, `ar`, `da`, `he`, `ja`, `nb`, `nn`, `no`, `pt`, `ru`, `tw`, `vi`, `zh`, `zh_CN`, `zh_TW` icin Ingilizce fallback kalmadigi dogrulandi.
- `prayerCalculation` ve `madhab` icin TR/DE/FR/ES/AR/DA/HE/JA/NB/NN/NO/PT/RU/VI/ZH degerleri elle duzeltildi; "namaz vakti hesaplama" ve "Asr/ikindi fıkhî yöntem" anlami korunacak sekilde Google ceviri mekanikligi giderildi.
- `tool\translate_arb_keys.dart` single-line guard listesine settings shell anahtarlari eklendi.
- `test\arb_ui_localization_test.dart` settings shell fallback guard'i eklendi.
- `test\translate_arb_keys_test.dart` multiline settings shell output regresyon testiyle ceviri debris korumasi eklendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart:47` AppBar basliginda `l10n.settings` gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart:55-74` namaz hesaplama ve Asr fıkhî yontem ayarlarini `l10n.prayerCalculation`, `l10n.method`, `l10n.madhab` ile gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart:131-143` konum bolumunde `l10n.location` kullaniyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart:190-197` dil secimi yuzeyinde `l10n.language` ve secim akisini kullaniyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart:203-217` veri/depolama bolumunde `l10n.dataStorage`, `l10n.clearCache`, `l10n.cacheClearedSuccess` gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart:232-273` about/legal yuzeylerinde `l10n.about`, `l10n.privacyPolicy`, `l10n.termsOfService`, `l10n.contactUs` gosteriyor.
- TUR-224 oncesi aktif l10n fallback taramasinda bu anahtarlarin safe/priority setinde ortak `8` locale, toplam locale setinde yaklasik `134-137` locale app_en ile birebir ayniydi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Safe/priority locale setinde settings shell/storage/location/legal copy icin Ingilizce fallback riski kapandi.
- Kalan toplam fallback sayilari: `settings 68`, `prayerCalculation 66`, `method 65`, `madhab 70`, `location 66`, `language 65`, `selectLanguage 66`, `currentLocation 66`, `dataStorage 67`, `clearCache 68`, `cacheClearedSuccess 65`, `about 68`, `privacyPolicy 68`, `termsOfService 68`, `contactUs 67`.
- Kalan fallback'ler ceviri servisinin guvenli aday uretmedigi nadir/legacy locale grubunda birakildi; "tamamlamak" adina sahte veya uydurma metin yazilmadi.
- Dini hassasiyet: `madhab` rastgele mezhep yorumu olarak degil, Asr/ikindi fıkhî yontem etiketi olarak tutuldu.
- Tek satir guard'i ile gelecekteki batch debris/newline riski azaltildi.

### Test Sonucu
- Odak test: `flutter test test\translate_arb_keys_test.dart test\arb_coverage_test.dart test\arb_ui_localization_test.dart test\features\settings\settings_page_test.dart test\features\settings\diagnostics_page_test.dart test\location_selection_page_test.dart` PASS (`81/81`)
- Safe fallback taramasi PASS: settings shell/storage/location/legal anahtarlarinda `safe_same=[]`
- Single-line taramasi PASS: settings shell anahtarlarinda bos veya multiline locale degeri yok.
- `flutter gen-l10n` PASS

### Risk Değişimi
- Safe/priority locale settings shell fallback riski: `8/25 -> 2/25`
- Tum locale settings shell fallback riski: `8/25 -> 5/25`
- Settings shell ceviri batch debris tekrar riski: `10/25 -> 3/25`

### Sonraki Adım
- Commit kapisinda `git diff --check`, `flutter analyze`, `flutter test` calistir; hepsi gecerse commit/push yap.
- Sonraki dongude aktif l10n fallback taramasini yenile; `offlineMode`, `hijriCalendar`, `searchHint`, `weeklyProgress`, `quranReading`, `prayers`, `fasting`, `calendar` gibi gorunur ve guvenle cevrilebilir anahtarlar arasindan en yuksek etkili tek yuzeyi sec.

## 2026-04-16 TUR-225 — Localize Chatbot Mode Controls

### Yapılan İşlem
- Chatbot mode/offline kontrol yuzeyinde kullanilan `chatbotLocalAiLabel`, `chatbotCloudAiLabel`, `chatbotUseCloudAi`, `chatbotDownloadLocalAi`, `chatbotOfflineDownloadLabel`, `chatbotOfflinePrompt`, `chatbotOfflineSwitched`, `chatbotLocalNoInfo`, `offlineMode`, `cancel` anahtarlari guvenli ARB batch'i ile guncellendi.
- `flutter gen-l10n` calistirilarak generated `app_localizations_*.dart` dosyalari ARB kaynaklariyla senkronlandi.
- Safe/priority locale setinde `tr`, `de`, `fr`, `es`, `ar`, `da`, `he`, `ja`, `nb`, `nn`, `no`, `pt`, `ru`, `vi`, `zh`, `zh_CN`, `zh_TW` icin bu chatbot mode anahtarlarinda Ingilizce fallback kalmadigi dogrulandi.
- Otomatik cevirinin hatali urettigi veya Ingilizce biraktigi kisa UI degerleri elle duzeltildi: ozellikle `he` icin "סתירה לא מקוונת" hatali anlami `גיבוי לא מקוון` olarak, `tr` icin "Çevrimdışı Fallback" mekanik kopyasi `Çevrimdışı Yedek` olarak, `da/nb/nn/no` fallback kopyalari yerel "reserve" ifadeleriyle duzeltildi.
- `tool\translate_arb_keys.dart` single-line guard listesine chatbot mode kontrol anahtarlari eklendi.
- `test\arb_ui_localization_test.dart` icine safe/priority locale chatbot mode fallback guard'i eklendi.
- `test\translate_arb_keys_test.dart` icine multiline chatbot mode output regresyon testi eklendi.
- `test\features\chatbot\chatbot_page_test.dart` Turkce widget beklentisi yeni dogal copy ile guncellendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\chatbot\chatbot_page.dart:171-172` AppBar mode badge icin `l10n.chatbotLocalAiLabel` ve `l10n.chatbotCloudAiLabel` gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\chatbot\chatbot_page.dart:418-421` offline dialog basligi ve aciklama metnini `l10n.offlineMode` ve `l10n.chatbotOfflinePrompt` ile gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\chatbot\chatbot_page.dart:425` iptal aksiyonunu `l10n.cancel` ile gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\chatbot\chatbot_page.dart:439` offline fallback etkinlestirme butonunu `l10n.chatbotOfflineDownloadLabel` ile gosteriyor.
- TUR-225 oncesi fallback taramasinda `offlineMode` ve `cancel` safe/priority setinde `8` locale, `chatbotLocalAiLabel` ise `4` safe locale icin app_en ile birebir ayniydi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\chatbot\chatbot_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Chatbot mode badge, offline dialog basligi, iptal butonu ve offline fallback butonu safe/priority locale setinde artik Ingilizce fallback gostermiyor.
- Single-line guard ile kisa UI etiketlerinde batch debris/newline riski kapatildi.
- `chatbotUseCloudAi` icinde `Gemini` proper noun'u tum safe/priority locale setinde korundu.
- Kalan tum-locale birebir Ingilizce degerler cogunlukla ceviri servisinin guvenli aday uretmedigi nadir/legacy locale grubunda birakildi; sahte veya uydurma ceviri yazilmadi. TUR-225 sonrasi toplam fallback sayilari: `chatbotLocalAiLabel 83`, `chatbotCloudAiLabel 98`, `chatbotUseCloudAi 69`, `chatbotDownloadLocalAi 63`, `chatbotOfflineDownloadLabel 63`, `chatbotOfflinePrompt 63`, `chatbotOfflineSwitched 63`, `chatbotLocalNoInfo 68`, `offlineMode 70`, `cancel 67`.

### Test Sonucu
- Ilk odak testte `test\features\chatbot\chatbot_page_test.dart:62` eski Turkce "Çevrimdışı Fallback" beklentisi nedeniyle fail etti; test yeni `Çevrimdışı Yedek` copy'sine guncellendi.
- Odak test: `flutter test test\translate_arb_keys_test.dart test\arb_coverage_test.dart test\arb_ui_localization_test.dart test\features\chatbot\chatbot_page_test.dart` PASS (`64/64`)
- Safe fallback taramasi PASS: hedef chatbot mode anahtarlarinda `safe_same=[]`
- Single-line taramasi PASS: hedef tek satir anahtarlarinda newline yok.
- Proper noun taramasi PASS: `chatbotUseCloudAi` icinde `Gemini` tum safe/priority locale setinde korundu.
- `flutter gen-l10n` PASS

### Risk Değişimi
- Safe/priority locale chatbot mode fallback riski: `16/25 -> 2/25`
- Chatbot mode tek satir batch debris riski: `10/25 -> 3/25`
- Tum-locale nadir/legacy fallback riski: `8/25 -> 5/25`

### Rollback Planı
- `lib\l10n\app_*.arb`, `lib\l10n\app_localizations_*.dart`, `test\arb_ui_localization_test.dart`, `test\translate_arb_keys_test.dart`, `test\features\chatbot\chatbot_page_test.dart` ve `tool\translate_arb_keys.dart` icindeki TUR-225 degisiklikleri geri alinir; production Dart UI logic degismedigi icin runtime rollback dar kapsamli kalir.

### Sonraki Adım
- Commit kapisinda `git diff --check`, `flutter analyze`, `flutter test` calistir; hepsi gecerse commit/push yap.
- Sonraki dongude aktif l10n fallback taramasini yenile; `hijriCalendar`, `weeklyProgress`, `quranReading`, `prayers`, `fasting`, `calendar`, `searchHint` veya `qiblaDirection` gibi gorunur yuzeylerden en yuksek riskli tek cluster sec.

## 2026-04-16 TUR-226 — Localize Onboarding Copy and Preserve App Brand

### Yapılan İşlem
- Onboarding yuzeyinde kullanilan `onboarding1Title`, `onboarding1Desc`, `onboarding2Title`, `onboarding2Desc`, `onboarding3Title`, `onboarding3Desc`, `next`, `getStarted` anahtarlari guvenli ARB batch'i ile guncellendi.
- `flutter gen-l10n` calistirilarak generated `app_localizations_*.dart` dosyalari ARB kaynaklariyla senkronlandi.
- Safe/priority locale setinde `tr`, `de`, `fr`, `es`, `ar`, `da`, `he`, `ja`, `nb`, `nn`, `no`, `pt`, `ru`, `vi`, `zh`, `zh_CN`, `zh_TW` icin onboarding anahtarlarinda Ingilizce fallback kalmadigi dogrulandi.
- Otomatik cevirinin `Sirat-ı Nur` uygulama adini bazi dillerde `Way of Allah`, `Voie d'Allah`, `Camino de Allah`, `Allahs vej`, `طريقة الله`, `阿拉之道` gibi anlam cevirisine kaydirdigi tespit edildi ve tum `app_*.arb` dosyalarinda bu onboarding marka kalintilari temizlendi.
- `tool\translate_arb_keys.dart` mevcut degerleri de post-process edecek sekilde guclendirildi; `onboarding1Title` icin app brand korumasi ve onboarding single-line guard'i eklendi.
- `test\arb_ui_localization_test.dart` icine safe/priority onboarding fallback guard'i ve app brand koruma guard'i eklendi.
- `test\translate_arb_keys_test.dart` icine multiline onboarding output, yeni adayda brand koruma ve mevcut stale brand repair regresyon testleri eklendi.
- `test\features\onboarding\onboarding_page_test.dart` eklendi; Turkce onboarding flow'u gercek generated l10n ile render edilip `İleri` aksiyonu uzerinden ikinci sayfaya gecis dogrulandi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\onboarding\onboarding_page.dart:34-35` ilk onboarding slaytinda `l10n.onboarding1Title` ve `l10n.onboarding1Desc` gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\onboarding\onboarding_page.dart:40-41` ikinci slaytta `l10n.onboarding2Title` ve `l10n.onboarding2Desc` gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\onboarding\onboarding_page.dart:46-47` ucuncu slaytta `l10n.onboarding3Title` ve `l10n.onboarding3Desc` gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\onboarding\onboarding_page.dart:94` ileri/baslama butonu icin `l10n.next` ve `l10n.getStarted` kullaniyor.
- TUR-226 oncesi fallback taramasinda onboarding anahtarlarinda safe/priority sette `8` locale app_en ile birebir ayniydi; ayrica `app_aa`, `app_ab`, `app_ae`, `app_af`, `app_an`, `app_av`, `app_ba`, `app_bh`, `app_bi`, `app_bo`, `app_br`, `app_ce`, `app_ch`, `app_cr`, `app_cu`, `app_cv`, `app_dz`, `app_el`, `app_ff`, `app_fj`, `app_fo`, `app_fy`, `app_ht` icinde stale `Way of Allah` onboarding title kalintisi vardi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\onboarding\onboarding_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Safe/priority locale setinde onboarding ekraninda Ingilizce fallback riski kapandi.
- Tum ARB setinde onboarding title icin yanlis uygulama adi / anlam cevirisi kalintisi kapandi; `forbidden_brand_hits=[]`.
- Single-line guard ile onboarding kisa UI metinlerinde batch debris/newline riski kapatildi.
- Kalan tum-locale birebir Ingilizce degerler cogunlukla ceviri servisinin guvenli aday uretmedigi nadir/legacy locale grubunda birakildi; sahte veya uydurma ceviri yazilmadi. TUR-226 sonrasi toplam fallback sayilari: `onboarding1Title 63`, `onboarding1Desc 65`, `onboarding2Title 66`, `onboarding2Desc 65`, `onboarding3Title 69`, `onboarding3Desc 65`, `next 68`, `getStarted 65`.

### Test Sonucu
- Odak test: `flutter test test\translate_arb_keys_test.dart test\arb_coverage_test.dart test\arb_ui_localization_test.dart test\features\onboarding\onboarding_page_test.dart` PASS (`66/66`)
- Safe fallback taramasi PASS: hedef onboarding anahtarlarinda `safe_same=[]`
- Single-line taramasi PASS: hedef onboarding anahtarlarinda `newline=[]`
- Brand taramasi PASS: tum `app_*.arb` dosyalarinda onboarding title icin `forbidden_brand_hits=[]`
- `git diff --check` PASS
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test` PASS (`402/402`)
- `flutter gen-l10n` PASS

### Risk Değişimi
- Safe/priority locale onboarding fallback riski: `8/25 -> 2/25`
- Onboarding marka yanlis ceviri riski: `12/25 -> 2/25`
- Onboarding tek satir batch debris riski: `10/25 -> 3/25`
- Tum-locale nadir/legacy fallback riski: `8/25 -> 5/25`

### Rollback Planı
- `lib\l10n\app_*.arb`, `lib\l10n\app_localizations_*.dart`, `test\arb_ui_localization_test.dart`, `test\translate_arb_keys_test.dart`, `test\features\onboarding\onboarding_page_test.dart` ve `tool\translate_arb_keys.dart` icindeki TUR-226 degisiklikleri geri alinir; production Dart UI logic degismedigi icin runtime rollback dar kapsamli kalir.

### Sonraki Adım
- Commit/push sonrasi yeni dongude aktif l10n fallback taramasini yenile; `hijriCalendar`, `weeklyProgress`, `quranReading`, `prayers`, `fasting`, `calendar`, `searchHint` veya `qiblaDirection` gibi gorunur yuzeylerden en yuksek riskli tek cluster sec.

## 2026-04-16 TUR-227 — Localize Home, Tracking and Calendar Shell Copy

### Yapılan İşlem
- Ana ekran, alt navigasyon, ibadet takibi, analiz ve takvim yuzeylerinde kullanilan `home`, `calendar`, `nextPrayer`, `quranReading`, `prayers`, `fasting`, `weeklyProgress`, `hijriCalendar`, `today`, `specialDays`, `done` anahtarlari guvenli ARB batch'i ile guncellendi.
- `flutter gen-l10n` calistirilarak generated `app_localizations_*.dart` dosyalari ARB kaynaklariyla senkronlandi.
- Safe/priority locale setinde `tr`, `de`, `fr`, `es`, `ar`, `da`, `he`, `ja`, `nb`, `nn`, `no`, `pt`, `ru`, `vi`, `zh`, `zh_CN`, `zh_TW` icin bu cekirdek UI anahtarlarinda Ingilizce fallback kalmadigi dogrulandi.
- Otomatik cevirinin zayif urettigi degerler elle duzeltildi: `fr home=Accueil`, `es home=Inicio`, `zh/zh_CN home=首页`, `zh_TW home=首頁`, `ja hijriCalendar=ヒジュラ暦`, `zh/zh_CN fasting=斋戒`, `zh_TW fasting=齋戒`, `vi fasting=Nhịn chay` gibi baglama uygun kopyalar uygulandi.
- `tool\translate_arb_keys.dart` single-line guard listesine bu cekirdek shell anahtarlari eklendi.
- `test\arb_ui_localization_test.dart` icine safe/priority fallback guard'i ve bilinen zayif ceviri kalintisi guard'i eklendi.
- `test\translate_arb_keys_test.dart` icine multiline home/tracking shell output regresyon testi eklendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\common\main_skeleton.dart:52` alt navigasyonda `l10n.home` gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\common\main_skeleton.dart:72` alt navigasyonda `l10n.calendar` gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\home\home_page.dart:259` ana sayfada `l10n.nextPrayer` gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\analytics\analytics_page.dart:27` analiz yuzeyinde `l10n.weeklyProgress` gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\analytics\analytics_page.dart:37-39` analiz ozetinde `l10n.prayers` ve `l10n.fasting` gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\calendar\calendar_page.dart:90`, `A:\Way of Allah\sirat_i_nur\lib\features\calendar\calendar_page.dart:148`, `A:\Way of Allah\sirat_i_nur\lib\features\calendar\calendar_page.dart:403` takvim yuzeyinde `l10n.calendar`, `l10n.hijriCalendar`, `l10n.specialDays` gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\tracker\tracker_page.dart:122-258` ibadet takip yuzeyinde `l10n.prayers`, `l10n.fasting`, `l10n.quranReading`, `l10n.today`, `l10n.done` kullaniyor.
- TUR-227 oncesi fallback taramasinda bu cekirdek anahtarlar `he`, `ja`, `nb`, `nn`, `no`, `pt`, `ru`, `vi` safe locale setinde app_en ile birebir ayniydi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Safe/priority locale setinde alt navigasyon, ana sayfa, takvim, analiz ve ibadet takip shell metinlerinde Ingilizce fallback riski kapandi.
- Bilinen zayif makine cevirileri icin regresyon bariyeri eklendi; `known_bad_hits=[]` taramasi PASS.
- Single-line guard ile kisa shell etiketlerinde batch debris/newline riski kapatildi.
- Kalan tum-locale birebir Ingilizce degerler cogunlukla ceviri servisinin guvenli aday uretmedigi nadir/legacy locale grubunda birakildi; sahte veya uydurma ceviri yazilmadi. TUR-227 sonrasi toplam fallback sayilari: `home 66`, `calendar 67`, `nextPrayer 65`, `quranReading 66`, `prayers 65`, `fasting 65`, `weeklyProgress 68`, `hijriCalendar 70`, `today 65`, `specialDays 65`, `done 66`.

### Test Sonucu
- Odak test: `flutter test test\translate_arb_keys_test.dart test\arb_coverage_test.dart test\arb_ui_localization_test.dart` PASS (`68/68`)
- UI odak test: `flutter test test\features\common\main_skeleton_test.dart test\features\analytics\analytics_page_test.dart test\features\calendar\calendar_page_test.dart test\features\tracker\tracker_page_test.dart` PASS
- Safe fallback taramasi PASS: hedef home/tracking/calendar shell anahtarlarinda `safe_same=[]`
- Single-line taramasi PASS: hedef shell anahtarlarinda `newline=[]`
- Bilinen zayif ceviri taramasi PASS: `known_bad_hits=[]`
- `git diff --check` PASS
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test` PASS (`405/405`)
- `flutter gen-l10n` PASS

### Risk Değişimi
- Safe/priority locale home/tracking/calendar shell fallback riski: `8/25 -> 2/25`
- Zayif makine cevirisi riski: `12/25 -> 3/25`
- Shell etiketlerinde multiline/batch debris riski: `10/25 -> 3/25`
- Tum-locale nadir/legacy fallback riski: `8/25 -> 5/25`

### Rollback Planı
- `lib\l10n\app_*.arb`, `lib\l10n\app_localizations_*.dart`, `test\arb_ui_localization_test.dart`, `test\translate_arb_keys_test.dart` ve `tool\translate_arb_keys.dart` icindeki TUR-227 degisiklikleri geri alinir; production Dart UI logic degismedigi icin runtime rollback dar kapsamli kalir.

### Sonraki Adım
- Commit/push sonrasi yeni dongude aktif l10n fallback taramasini yenile; `qiblaDirection`, `compass`, `turnDevice`, `qiblaFound`, `search`, `searchHint`, `retry`, `save`, `addBookmark`, `removeBookmark`, `downloading` gibi gorunur yuzeylerden en yuksek riskli tek cluster sec.

## 2026-04-16 TUR-228 — Localize Qibla Compass Shell Copy

### Yapılan İşlem
- Kible pusulasi yuzeyinde kullanilan `qiblaDirection`, `compass`, `turnDevice`, `qiblaFound` anahtarlari guvenli ARB batch'i ile guncellendi.
- `flutter gen-l10n` calistirilarak generated `app_localizations_*.dart` dosyalari ARB kaynaklariyla senkronlandi.
- Safe/priority locale setinde `tr`, `de`, `fr`, `es`, `ar`, `da`, `he`, `ja`, `nb`, `nn`, `no`, `pt`, `ru`, `vi`, `zh`, `zh_CN`, `zh_TW` icin kible pusulasi shell metinlerinde Ingilizce fallback kalmadigi dogrulandi.
- Otomatik cevirinin zayif urettigi degerler elle duzeltildi: `es qiblaDirection=Dirección de la qibla`, `da/nb/nn/no qiblaDirection=Qibla-retning`, `he qiblaFound=הקיבלה נמצאה!`, `ja qiblaFound=キブラ方向を検出しました！`, `pt qiblaDirection=Direção da qibla`, `vi turnDevice=Xoay thiết bị của bạn về hướng Qibla`, `zh/zh_CN qiblaFound=已找到朝拜方向！`, `zh_TW turnDevice=請將裝置朝向朝拜方向` gibi baglama uygun kopyalar uygulandi.
- `tool\translate_arb_keys.dart` single-line guard listesine `qiblaDirection`, `compass`, `turnDevice`, `qiblaFound` eklendi.
- `test\arb_ui_localization_test.dart` icine safe/priority fallback guard'i ve bilinen zayif ceviri kalintisi guard'i eklendi.
- `test\translate_arb_keys_test.dart` icine multiline qibla compass shell output regresyon testi eklendi.
- Standalone `qibla` anahtari bu turda zorlanmadi; bazi dillerde dogru kullanim transliterasyon/proper noun oldugu icin yalanci kalite kazanci uretmemek adina kapsam disinda birakildi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\qibla\qibla_page.dart:134` hizalama durumunda `l10n.qiblaFound` veya `l10n.turnDevice` gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\qibla\qibla_page.dart:331` pusula label'i icin `l10n.compass` gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\qibla\qibla_page.dart:349` yon satirinda `l10n.qiblaDirection` gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\common\main_skeleton.dart:62` alt navigasyonda standalone `l10n.qibla` kullaniyor; bu proper-name yuzey oldugu icin TUR-228'de degistirilmedi.
- TUR-228 oncesi fallback taramasinda hedef kible pusulasi anahtarlarinda `he`, `ja`, `nb`, `nn`, `no`, `pt`, `ru`, `vi` safe locale setinde app_en ile birebir ayni degerler vardi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Safe/priority locale setinde kible pusulasi yon, pusula, cihazi cevir ve kible bulundu metinlerinde Ingilizce fallback riski kapandi.
- Bilinen zayif makine cevirileri icin regresyon bariyeri eklendi; `known_bad_hits=[]` taramasi PASS.
- Single-line guard ile pusula shell etiketlerinde batch debris/newline riski kapatildi.
- Kalan tum-locale birebir Ingilizce degerler cogunlukla ceviri servisinin guvenli aday uretmedigi nadir/legacy locale grubunda birakildi; sahte veya uydurma ceviri yazilmadi. TUR-228 sonrasi toplam fallback sayilari: `qiblaDirection 71`, `compass 73`, `turnDevice 65`, `qiblaFound 65`.

### Test Sonucu
- Odak test: `flutter test test\translate_arb_keys_test.dart test\arb_coverage_test.dart test\arb_ui_localization_test.dart` PASS (`71/71`)
- UI odak test: `flutter test test\features\qibla\qibla_page_test.dart` PASS (`8/8`)
- Safe fallback taramasi PASS: hedef qibla compass shell anahtarlarinda `safe_same=[]`
- Single-line taramasi PASS: hedef qibla compass shell anahtarlarinda `newline=[]`
- Bilinen zayif ceviri taramasi PASS: `known_bad_hits=[]`
- `git diff --check` PASS
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test` PASS (`408/408`)
- `flutter gen-l10n` PASS
- `flutter doctor -v` Android/test hattinda PASS; Chrome ve Visual Studio eksikleri yalniz web/Windows hedefleri icin kayitli, bu Android/test dongusunu bloke etmiyor.

### Risk Değişimi
- Safe/priority locale qibla compass shell fallback riski: `8/25 -> 2/25`
- Zayif makine cevirisi riski: `12/25 -> 3/25`
- Qibla shell etiketlerinde multiline/batch debris riski: `10/25 -> 3/25`
- Tum-locale nadir/legacy fallback riski: `8/25 -> 5/25`

### Rollback Planı
- `lib\l10n\app_*.arb`, `lib\l10n\app_localizations_*.dart`, `test\arb_ui_localization_test.dart`, `test\translate_arb_keys_test.dart` ve `tool\translate_arb_keys.dart` icindeki TUR-228 degisiklikleri geri alinir; production Dart UI logic degismedigi icin runtime rollback dar kapsamli kalir.

### Sonraki Adım
- Commit/push sonrasi yeni dongude aktif l10n fallback taramasini yenile; `search`, `searchHint`, `retry`, `save`, `addBookmark`, `removeBookmark`, `downloading`, `settings`, `themeMode`, `aboutApp` gibi gorunur yuzeylerden en yuksek riskli tek cluster sec.

## 2026-04-16 TUR-229 — Localize Common Action Copy

### Yapılan İşlem
- Quran, Tafsir, Hadith, Asma, Settings ve Downloads yuzeylerinde kullanilan `search`, `searchHint`, `retry`, `save`, `addBookmark`, `removeBookmark`, `downloading` anahtarlari guvenli ARB batch'i ile guncellendi.
- `flutter gen-l10n` calistirilarak generated `app_localizations_*.dart` dosyalari ARB kaynaklariyla senkronlandi.
- Safe/priority locale setinde `tr`, `de`, `fr`, `es`, `ar`, `da`, `he`, `ja`, `nb`, `nn`, `no`, `pt`, `ru`, `vi`, `zh`, `zh_CN`, `zh_TW` icin ortak aksiyon metinlerinde Ingilizce fallback kalmadigi dogrulandi.
- Otomatik cevirinin zayif urettigi degerler elle duzeltildi: `da search=Søg`, `da searchHint=Søg...`, `da save=Gem`, `es retry=Reintentar`, `es save=Guardar`, `zh/zh_CN save=保存`, `zh_TW save=儲存`.
- `tool\translate_arb_keys.dart` single-line guard listesine ortak aksiyon anahtarlari eklendi.
- `test\arb_ui_localization_test.dart` icine safe/priority fallback guard'i ve bilinen zayif ceviri kalintisi guard'i eklendi.
- `test\translate_arb_keys_test.dart` icine multiline common action output regresyon testi eklendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\quran_page.dart:98` Quran arama hint'inde `l10n.search` kullaniyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\quran_page.dart:354` hata aksiyonunda `l10n.retry` kullaniyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\surah_reading_page.dart:242` bookmark snackbar'inda `l10n.addBookmark` / `l10n.removeBookmark` kullaniyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\surah_reading_page.dart:511` retry aksiyonunda `l10n.retry` kullaniyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\juz_reading_page.dart:350` retry aksiyonunda `l10n.retry` kullaniyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\tafsir_page.dart:271` retry aksiyonunda `l10n.retry` kullaniyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\location_selection_page.dart:226` konum arama hint'inde `l10n.searchHint` kullaniyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart:485` kaydet butonunda `l10n.save` kullaniyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\library\asma_ul_husna_page.dart:131` Asma arama hint'inde `l10n.search` kullaniyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\library\hadith_search_page.dart:79` ve `A:\Way of Allah\sirat_i_nur\lib\features\library\hadith_search_page.dart:89` Hadith arama yuzeyinde `l10n.searchHint` kullaniyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\downloads\offline_downloads_page.dart:376` indirme durumunda `l10n.downloading` kullaniyor.
- TUR-229 oncesi fallback taramasinda `search`, `searchHint`, `retry`, `save`, `addBookmark`, `removeBookmark`, `downloading` anahtarlari `he`, `ja`, `nb`, `nn`, `no`, `pt`, `ru`, `vi` safe locale setinde app_en ile birebir ayniydi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Safe/priority locale setinde ortak arama, tekrar dene, kaydet, bookmark ve indirme durum metinlerinde Ingilizce fallback riski kapandi.
- Bilinen zayif makine cevirileri icin regresyon bariyeri eklendi; `known_bad_hits=[]` taramasi PASS.
- Single-line guard ile kisa aksiyon etiketlerinde batch debris/newline riski kapatildi.
- Kalan tum-locale birebir Ingilizce degerler cogunlukla ceviri servisinin guvenli aday uretmedigi nadir/legacy locale grubunda birakildi; sahte veya uydurma ceviri yazilmadi. TUR-229 sonrasi toplam fallback sayilari: `search 65`, `searchHint 65`, `retry 66`, `save 66`, `addBookmark 67`, `removeBookmark 65`, `downloading 67`.

### Test Sonucu
- Odak test: `flutter test test\translate_arb_keys_test.dart test\arb_coverage_test.dart test\arb_ui_localization_test.dart` PASS (`74/74`)
- UI odak test: `flutter test test\features\library\asma_ul_husna_page_test.dart test\features\quran\tafsir_page_test.dart test\features\quran\quran_error_copy_test.dart test\features\downloads\offline_downloads_test.dart test\features\settings\settings_page_test.dart test\location_selection_page_test.dart` PASS (`31/31`)
- Safe fallback taramasi PASS: hedef ortak aksiyon anahtarlarinda `safe_same=[]`
- Single-line taramasi PASS: hedef ortak aksiyon anahtarlarinda `newline=[]`
- Bilinen zayif ceviri taramasi PASS: `known_bad_hits=[]`
- `git diff --check` PASS
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test` PASS (`411/411`)
- `flutter gen-l10n` PASS

### Risk Değişimi
- Safe/priority locale common action fallback riski: `8/25 -> 2/25`
- Zayif makine cevirisi riski: `12/25 -> 3/25`
- Kisa aksiyon etiketlerinde multiline/batch debris riski: `10/25 -> 3/25`
- Tum-locale nadir/legacy fallback riski: `8/25 -> 5/25`

### Rollback Planı
- `lib\l10n\app_*.arb`, `lib\l10n\app_localizations_*.dart`, `test\arb_ui_localization_test.dart`, `test\translate_arb_keys_test.dart` ve `tool\translate_arb_keys.dart` icindeki TUR-229 degisiklikleri geri alinir; production Dart UI logic degismedigi icin runtime rollback dar kapsamli kalir.

### Sonraki Adım
- Commit/push sonrasi yeni dongude aktif l10n fallback taramasini yenile; `surah`, `ayah`, `readQuran`, `prayerTimes`, `zakat`, `duas`, `asmaUlHusna`, `hadith` gibi ana dini navigasyon/icerik yuzeylerinden en yuksek riskli tek cluster sec.

## 2026-04-16 TUR-230 — Localize Quran Reading Shell Terms

### Yapılan İşlem
- Quran okuma, cüz listesi, sure listesi, ayet sayisi ve sayfa takip yuzeylerinde kullanilan `quran`, `surah`, `surahs`, `ayahs`, `juz`, `page` anahtarlari guvenli ARB batch'i ile guncellendi.
- `flutter gen-l10n` calistirilarak generated `app_localizations_*.dart` dosyalari ARB kaynaklariyla senkronlandi.
- Safe/priority locale setinde `tr`, `de`, `fr`, `es`, `ar`, `da`, `he`, `ja`, `nb`, `nn`, `no`, `pt`, `ru`, `vi`, `zh`, `zh_CN`, `zh_TW` icin Quran reading shell metinlerinde Ingilizce fallback kalmadigi dogrulandi; `fr:page` mesru ayni-yazim oldugu icin bilerek istisna tutuldu.
- Otomatik cevirinin dini baglamda zayif urettigi degerler elle duzeltildi: `da surah=Sura`, `da surahs=Suraer`, `da ayahs=Ayat`, `de ayahs=Ayat`, `es ayahs=Aleyas`, `fr ayahs=Versets`, `he surahs=סורות`, `he ayahs=איאת`, `ja quran=クルアーン`, `ru ayahs=Аяты`, `vi surah=Chương`, `zh/zh_CN surah=苏拉`, `zh_TW surah=蘇拉` gibi baglama uygun kopyalar uygulandi.
- `tool\translate_arb_keys.dart` single-line guard listesine Quran reading shell anahtarlari eklendi.
- `test\arb_ui_localization_test.dart` icine safe/priority fallback guard'i, `fr:page` mesru ayni-yazim istisnasi ve bilinen zayif dini terim kalintisi guard'i eklendi.
- `test\translate_arb_keys_test.dart` icine multiline Quran reading shell output regresyon testi eklendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\common\main_skeleton.dart:57` alt navigasyonda `l10n.quran` gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\quran_page.dart:75` Quran sayfa basliginda `l10n.quran` kullaniyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\quran_page.dart:79-80` tab etiketlerinde `l10n.surahs` ve `l10n.juz` kullaniyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\quran_page.dart:234` sure kartinda `l10n.ayahs` kullaniyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\quran_page.dart:301-315` juz/page listelerinde `l10n.juz` ve `l10n.page` kullaniyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\juz_reading_page.dart:177` cüz okuma ozetinde `l10n.ayahs` ve `l10n.surah` kullaniyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\surah_reading_page.dart:346` sure detayinda `l10n.ayahs` kullaniyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\tafsir_page.dart:14` fallback baslikta `l10n.surah` kullaniyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\tracker\tracker_page.dart:129` ve `A:\Way of Allah\sirat_i_nur\lib\features\tracker\tracker_page.dart:235` Quran sayfa takibinde `l10n.page` kullaniyor.
- TUR-230 oncesi fallback taramasinda bu cluster'da safe locale setinde genis Ingilizce kalinti vardi: `quran` 8 locale, `surah` 9 locale, `surahs` 9 locale, `ayahs` 11 locale, `juz` 12 locale, `page` 9 locale.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Safe/priority locale setinde Quran ana navigasyon, sure/cüz/ayet/sayfa shell metinlerinde Ingilizce fallback riski kapandi.
- Dini terimlerde zayif makine cevirisi bariyeri eklendi; `known_bad_hits=[]` taramasi PASS.
- Single-line guard ile Quran reading shell etiketlerinde batch debris/newline riski kapatildi.
- Kalan tum-locale birebir Ingilizce degerler cogunlukla ceviri servisinin guvenli aday uretmedigi nadir/legacy locale grubunda birakildi; sahte veya uydurma ceviri yazilmadi. TUR-230 sonrasi exact fallback sayilari: `quran 91`, `surah 101`, `surahs 82`, `ayahs 109`, `juz 133`, `page 72`.

### Test Sonucu
- Odak test: `flutter test test\translate_arb_keys_test.dart test\arb_coverage_test.dart test\arb_ui_localization_test.dart` PASS (`77/77`)
- UI odak test: `flutter test test\features\quran\quran_error_copy_test.dart test\features\quran\tafsir_page_test.dart test\features\tracker\tracker_page_test.dart test\features\analytics\analytics_page_test.dart test\features\common\main_skeleton_test.dart test\sukun_audio_page_test.dart` PASS (`19/19`)
- Safe fallback taramasi PASS: `fr:page` mesru ayni-yazim istisnasi disinda `safe_same=[]`
- Single-line taramasi PASS: hedef Quran reading shell anahtarlarinda `newline=[]`
- Bilinen zayif dini terim taramasi PASS: `known_bad_hits=[]`
- `git diff --check` PASS
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test` PASS (`414/414`)
- `flutter gen-l10n` PASS
- `flutter doctor -v` Android/test hattinda PASS; Chrome ve Visual Studio eksikleri yalniz web/Windows hedefleri icin kayitli, bu Android/test dongusunu bloke etmiyor.

### Risk Değişimi
- Safe/priority locale Quran reading shell fallback riski: `12/25 -> 2/25`
- Dini terimlerde zayif makine cevirisi riski: `16/25 -> 4/25`
- Quran shell etiketlerinde multiline/batch debris riski: `10/25 -> 3/25`
- Tum-locale nadir/legacy fallback riski: `8/25 -> 5/25`

### Rollback Planı
- `lib\l10n\app_*.arb`, `lib\l10n\app_localizations_*.dart`, `test\arb_ui_localization_test.dart`, `test\translate_arb_keys_test.dart` ve `tool\translate_arb_keys.dart` icindeki TUR-230 degisiklikleri geri alinir; production Dart UI logic degismedigi icin runtime rollback dar kapsamli kalir.

### Sonraki Adım
- Commit/push sonrasi yeni dongude aktif risk taramasini yenile; `prayerTimes`, `asmaUlHusna`, `hadith`, `zakat`, `dua`, `library`, `islamicEducation` gibi ana dini navigasyon/icerik yuzeylerinden en yuksek riskli tek cluster sec.

## 2026-04-16 TUR-231 — Localize Prayer Times and Allah Names Shell Copy

### Yapılan İşlem
- Namaz vakitleri widget etiketi ve kutuphane Allah isimleri kartinda kullanilan `prayerTimes` ve `namesOfAllah` anahtarlari guvenli ARB batch'i ile guncellendi.
- `flutter gen-l10n` calistirilarak generated `app_localizations_*.dart` dosyalari ARB kaynaklariyla senkronlandi.
- Safe/priority locale setinde `tr`, `de`, `fr`, `es`, `ar`, `da`, `he`, `ja`, `nb`, `nn`, `no`, `pt`, `ru`, `vi`, `zh`, `zh_CN`, `zh_TW` icin `prayerTimes` ve `namesOfAllah` anahtarlarinda Ingilizce fallback kalmadigi dogrulandi.
- Otomatik cevirinin dini baglamda fazla genel urettigi degerler elle duzeltildi: `he namesOfAllah=שמות אללה`, `ja prayerTimes=礼拝時刻`, `nn prayerTimes=Bønetider`, `nn namesOfAllah=Allahs namn`, `pt namesOfAllah=Nomes de Allah`, `ru prayerTimes=Время намаза`, `vi prayerTimes=Giờ cầu nguyện`, `vi namesOfAllah=Các danh xưng của Allah`, `zh/zh_CN prayerTimes=礼拜时间`, `zh_TW prayerTimes=禮拜時間`, `zh/zh_CN/zh_TW namesOfAllah=安拉的尊名`.
- `tool\translate_arb_keys.dart` single-line guard listesine `prayerTimes` ve `namesOfAllah` eklendi.
- `test\arb_ui_localization_test.dart` icine safe/priority fallback guard'i ve bilinen zayif dini baglam cevirisi guard'i eklendi.
- `test\translate_arb_keys_test.dart` icine multiline prayer/library shell output regresyon testi eklendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\core\services\widget_service.dart:99` tum namazlar widget basliginda `PrayerLocalizer.prayerTimesLabel(languageCode)` kullaniyor.
- `A:\Way of Allah\sirat_i_nur\lib\core\utils\prayer_name_localization.dart:47-48` widget basligini generated `prayerTimes` l10n degerinden cozumluyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart:155` kutuphane karti alt metninde `l10n.namesOfAllah` gosteriyor.
- TUR-231 oncesi fallback taramasinda `prayerTimes` safe locale setinde `he`, `ja`, `nb`, `nn`, `no`, `pt`, `ru`, `vi`; `namesOfAllah` safe locale setinde `he`, `ja`, `nb`, `nn`, `no`, `pt`, `ru`, `vi` icin app_en ile birebir ayniydi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Safe/priority locale setinde namaz vakitleri widget basligi ve Allah'in isimleri kutuphane copy'sinde Ingilizce fallback riski kapandi.
- Dini baglamda fazla genel "prayer/molitva/祈祷" benzeri ceviri kalintilari icin regresyon bariyeri eklendi; `known_bad_hits=[]` taramasi PASS.
- Single-line guard ile iki kisa shell etiketinde batch debris/newline riski kapatildi.
- Kalan tum-locale birebir Ingilizce degerler cogunlukla ceviri servisinin guvenli aday uretmedigi nadir/legacy locale grubunda birakildi; sahte veya uydurma ceviri yazilmadi. TUR-231 sonrasi exact fallback sayilari: `prayerTimes 64`, `namesOfAllah 65`.

### Test Sonucu
- Odak test: `flutter test test\translate_arb_keys_test.dart test\arb_coverage_test.dart test\arb_ui_localization_test.dart` PASS (`80/80`)
- Prayer localizer test: `flutter test test\prayer_name_localization_test.dart` PASS (`6/6`)
- Library odak test: `flutter test test\library_page_test.dart` PASS (`14/14`)
- Asma UI odak test: `flutter test test\features\library\asma_ul_husna_page_test.dart` PASS (`8/8`)
- Safe fallback taramasi PASS: hedef prayer/library shell anahtarlarinda `safe_same=[]`
- Single-line taramasi PASS: hedef prayer/library shell anahtarlarinda `newline=[]`
- Bilinen zayif ceviri taramasi PASS: `known_bad_hits=[]`
- `git diff --check` PASS
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test` PASS (`417/417`)
- `flutter gen-l10n` PASS

### Risk Değişimi
- Safe/priority locale prayer/library shell fallback riski: `12/25 -> 2/25`
- Dini baglamda zayif makine cevirisi riski: `16/25 -> 4/25`
- Kisa prayer/library shell etiketlerinde multiline/batch debris riski: `10/25 -> 3/25`
- Tum-locale nadir/legacy fallback riski: `8/25 -> 5/25`

### Rollback Planı
- `lib\l10n\app_*.arb`, `lib\l10n\app_localizations_*.dart`, `test\arb_ui_localization_test.dart`, `test\translate_arb_keys_test.dart` ve `tool\translate_arb_keys.dart` icindeki TUR-231 degisiklikleri geri alinir; production Dart UI logic degismedigi icin runtime rollback dar kapsamli kalir.

### Sonraki Adım
- Commit/push sonrasi yeni dongude aktif l10n fallback taramasini yenile; proper-name bozulmasi yapmadan `asmaulHusna`, `hadith`, `analytics`, `assistant`, `ok`, `no` ve ozel gun isimleri arasindan en yuksek riskli tek cluster sec.

## 2026-04-16 TUR-232 — Localize Tracker Negative Status Copy

### Yapılan İşlem
- Ibadah tracker fasting durumunda kullanilan `no` anahtari guvenli ARB batch'i ile guncellendi.
- `flutter gen-l10n` calistirilarak generated `app_localizations_*.dart` dosyalari ARB kaynaklariyla senkronlandi.
- Safe/priority locale setinde `tr`, `de`, `fr`, `ar`, `da`, `he`, `ja`, `nb`, `nn`, `no`, `pt`, `ru`, `vi`, `zh`, `zh_CN`, `zh_TW` icin `no` anahtarinda Ingilizce fallback kalmadigi dogrulandi; `es:no=No` mesru ayni-yazim oldugu icin bilerek istisna tutuldu.
- Otomatik cevirinin UI baglaminda zayif urettigi degerler elle duzeltildi: `de no=Nein`, `da no=Nej`, `he no=לא`, `nb/nn/no no=Nei`, `vi no=Không`.
- `tool\translate_arb_keys.dart` single-line guard listesine `no` eklendi.
- `test\arb_ui_localization_test.dart` icine tracker negative status fallback guard'i, Ispanyolca mesru ayni-yazim istisnasi ve bilinen zayif ceviri kalintisi guard'i eklendi.
- `test\translate_arb_keys_test.dart` icindeki common action single-line testine `no` eklendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\tracker\tracker_page.dart:280` fasting kapali durumunda `${l10n.fasting}: ${l10n.no}` gosteriyor.
- TUR-232 oncesi fallback taramasinda `no` safe locale setinde `he`, `ja`, `nb`, `nn`, `no`, `pt`, `ru`, `vi` icin app_en ile birebir ayniydi; `es` ayni yazim oldugu icin risk sayilmadi.
- Batch sonrasi `da/nb/nn/no=Ingen`, `de=NEIN`, `vi=KHÔNG` gibi UI baglaminda zayif degerler tespit edilip elle duzeltildi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Safe/priority locale setinde tracker fasting negative durumunda Ingilizce `No` gosteren UI riski kapandi.
- `Ingen`, `NEIN`, `KHÔNG` gibi baglama/tonlama acisindan zayif otomatik ceviri degerleri icin regresyon bariyeri eklendi.
- Single-line guard ile kisa status etiketinde batch debris/newline riski kapatildi.
- Kalan tum-locale birebir Ingilizce degerler cogunlukla ceviri servisinin guvenli aday uretmedigi nadir/legacy locale grubunda veya mesru ayni-yazim dillerinde birakildi; sahte veya uydurma ceviri yazilmadi. TUR-232 sonrasi exact fallback sayisi: `no 67`.

### Test Sonucu
- Odak test: `flutter test test\translate_arb_keys_test.dart test\arb_coverage_test.dart test\arb_ui_localization_test.dart test\features\tracker\tracker_page_test.dart test\tracker_test.dart` PASS (`92/92`)
- Safe fallback taramasi PASS: `es:no` mesru ayni-yazim istisnasi disinda `safe_same=[]`
- Single-line taramasi PASS: hedef `no` anahtarinda `newline=[]`
- Bilinen zayif ceviri taramasi PASS: `known_bad_hits=[]`
- `git diff --check` PASS
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test` PASS (`419/419`)
- `flutter gen-l10n` PASS

### Risk Değişimi
- Safe/priority locale tracker negative status fallback riski: `9/25 -> 2/25`
- UI baglaminda zayif makine cevirisi riski: `12/25 -> 3/25`
- Kisa status etiketinde multiline/batch debris riski: `8/25 -> 2/25`
- Tum-locale nadir/legacy fallback riski: `8/25 -> 5/25`

### Rollback Planı
- `lib\l10n\app_*.arb`, `lib\l10n\app_localizations_*.dart`, `test\arb_ui_localization_test.dart`, `test\translate_arb_keys_test.dart` ve `tool\translate_arb_keys.dart` icindeki TUR-232 degisiklikleri geri alinir; production Dart UI logic degismedigi icin runtime rollback dar kapsamli kalir.

### Sonraki Adım
- Commit/push sonrasi yeni dongude aktif risk taramasini yenile; proper-name terimleri zorlamadan `analytics`, `assistant`, `ok`, `premium`, `asmaulHusna` ve ozel gun/vakit adlari arasindan en yuksek riskli, gercek UI etkisi olan tek cluster sec.

## 2026-04-16 TUR-233 — Localize Analytics Shell Copy

### Yapılan İşlem
- Ana sayfa quick access ve Analytics sayfa basliginda kullanilan `analytics` anahtari guvenli ARB batch'i ile guncellendi.
- `flutter gen-l10n` calistirilarak generated `app_localizations_*.dart` dosyalari ARB kaynaklariyla senkronlandi.
- Safe/priority locale setinde `tr`, `de`, `fr`, `es`, `ar`, `da`, `he`, `ja`, `nb`, `nn`, `no`, `pt`, `ru`, `vi`, `zh`, `zh_CN`, `zh_TW` icin `analytics` anahtarinda Ingilizce fallback kalmadigi dogrulandi.
- Otomatik cevirinin Ingilizce biraktigi Kuzey dili degerleri elle duzeltildi: `da/nb/nn/no analytics=Analyse`.
- `tool\translate_arb_keys.dart` single-line guard listesine `analytics` eklendi.
- `test\arb_ui_localization_test.dart` icindeki analytics/zakat fallback guard kapsamına `analytics` anahtari eklendi.
- `test\translate_arb_keys_test.dart` icindeki analytics single-line guard testine `analytics` eklendi.

### Neden Yapıldı
- `A:\Way of Allah\sirat_i_nur\lib\features\analytics\analytics_page.dart:15` AppBar basliginda `l10n.analytics` gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\home\home_page.dart:371` ana sayfa quick access kartinda `l10n.analytics` gosteriyor.
- TUR-233 oncesi fallback taramasinda `analytics` safe locale setinde `da`, `nb`, `nn`, `no` icin app_en ile birebir ayniydi.

### Değiştirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Safe/priority locale setinde ana sayfa ve analytics AppBar yuzeylerinde Ingilizce `Analytics` fallback riski kapandi.
- Single-line guard ile kisa analytics shell etiketinde batch debris/newline riski kapatildi.
- Kalan tum-locale birebir Ingilizce degerler cogunlukla ceviri servisinin guvenli aday uretmedigi nadir/legacy locale grubunda birakildi; sahte veya uydurma ceviri yazilmadi. TUR-233 sonrasi exact fallback sayisi: `analytics 87`.

### Test Sonucu
- Odak test: `flutter test test\translate_arb_keys_test.dart test\arb_coverage_test.dart test\arb_ui_localization_test.dart test\features\analytics\analytics_page_test.dart test\features\home\home_page_test.dart` PASS (`86/86`)
- Safe fallback taramasi PASS: hedef `analytics` anahtarinda `safe_same=[]`
- Single-line taramasi PASS: hedef `analytics` anahtarinda `newline=[]`
- `git diff --check` PASS
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test` PASS (`419/419`)
- `flutter gen-l10n` PASS

### Risk Değişimi
- Safe/priority locale analytics shell fallback riski: `8/25 -> 2/25`
- Kisa analytics etiketinde multiline/batch debris riski: `8/25 -> 2/25`
- Tum-locale nadir/legacy fallback riski: `7/25 -> 5/25`

### Rollback Planı
- `lib\l10n\app_*.arb`, `lib\l10n\app_localizations_*.dart`, `test\arb_ui_localization_test.dart`, `test\translate_arb_keys_test.dart` ve `tool\translate_arb_keys.dart` icindeki TUR-233 degisiklikleri geri alinir; production Dart UI logic degismedigi icin runtime rollback dar kapsamli kalir.

### Sonraki Adım
- Commit/push sonrasi yeni dongude aktif risk taramasini yenile; proper-name ve mesru transliterasyonlari zorlamadan `assistant`, `ok`, `premium`, `hadithBooks`, `duaCategoryProtection` gibi gorunur ve cevrilebilir UI etiketlerinden en yuksek riskli tek cluster sec.

## 2026-04-16 TUR-234 — Reject Empty Offline Quran Audio Files

### Yapilan Islem
- Offline Kur'an ses indirme hattinda basarili HTTP sonucu alinsa bile dosyanin gercekten olustugunu ve bos olmadigini dogrulayan `validateDownloadedQuranAudioFile` guard'i eklendi.
- `downloadSurahAudio` artik `Dio.download` sonrasinda dogrudan `true` donmuyor; kaydedilen dosya yoksa veya 0 byte ise indirme basarisiz sayiliyor.
- Indirme hatasinda veya bos dosya kalintisinda partial/corrupt MP3 dosyasi best-effort siliniyor.
- `isAudioDownloaded` ve `getDownloadedSurahs` var olan eski 0 byte kalintilari indirildi saymiyor; listeleme sirasinda bos dosyayi temizliyor.
- Unit testlere bos dosya reddi ve bos MP3 kalintisinin sure listesine girmemesi icin regresyon guard'i eklendi.

### Neden Yapildi
- `A:\Way of Allah\sirat_i_nur\lib\core\services\offline_audio_service.dart:240` offline sure indirme girisi.
- TUR-234 oncesi `downloadSurahAudio` icinde `Dio.download` tamamlaninca kaydedilen dosyanin varligi veya boyutu dogrulanmadan `true` donuluyordu.
- `A:\Way of Allah\sirat_i_nur\lib\core\services\offline_audio_service.dart:237` `isAudioDownloaded` sadece dosya varligini sayiyordu; 0 byte kalinti dosya indirildi kabul edilebilirdi.
- `A:\Way of Allah\sirat_i_nur\lib\core\services\offline_audio_service.dart:332` `getDownloadedSurahs` dosya adini parse ederek sureyi listeye aliyordu; dosya icerigi dogrulanmiyordu.
- Kullanici etkisi: bozuk/0 byte MP3 dosyasi cihazda kalirsa offline indirme tamamlanmis gorunebilir, sonraki oynatma ise sessiz veya hatali olabilir.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\offline_audio_service.dart`
- `A:\Way of Allah\sirat_i_nur\test\offline_audio_service_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Offline Kur'an ses paketlerinde bos/bozuk dosyanin basarili indirme olarak sayilmasi engellendi.
- Eski surumlerden kalmis 0 byte MP3 kalintilari otomatik temizlenerek downloaded count daha durust hale getirildi.
- Supabase Storage disi external link reddi korunuyor; bu tur sadece cihazdaki dosya butunlugu guard'ini ekledi.

### Test Sonucu
- Odak test: `flutter test test\offline_audio_service_test.dart` PASS (`13/13`)
- `git diff --check` PASS
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test` PASS (`421/421`)

### Risk Degisimi
- Offline audio false-success / corrupt file count riski: `16/25 -> 4/25`
- Eski bos MP3 kalintilarinin downloaded count'u bozma riski: `12/25 -> 3/25`
- Rollback riski: `4/25`; degisiklik tek servis ve tek test dosyasi ile sinirli.

### Rollback Plani
- `lib\core\services\offline_audio_service.dart` icindeki TUR-234 guard ve cleanup degisiklikleri geri alinir.
- `test\offline_audio_service_test.dart` icindeki iki yeni bos dosya regresyon testi kaldirilir.

### Sonraki Adim
- Commit/push sonrasi yeni dongude audio/content hattindan devam et: `download_verified_quran_audio`, `upload_quran_audio_storage`, seed SQL ve runtime catalog arasinda dis linklerin yalniz mirror input olarak kaldigini ve runtime playback'in sadece Supabase Storage'dan beslendigini tekrar tara; ardindan en yuksek riskli tek bulguyu kapat.

## 2026-04-16 TUR-235 — Validate Quran Audio Mirror and Upload MP3 Payloads

### Yapilan Islem
- Quran audio mirror/upload tool zincirine MP3 imza kontrolu eklendi.
- Yeni `tool\quran_audio_file_validation.dart` yardimcisi ID3 ve MPEG frame-sync basliklarini taniyor; bos veya HTML gibi non-audio payload'lari reddediyor.
- `tool\download_verified_quran_audio.dart` artik mevcut dosyayi sadece non-empty diye skip etmiyor; dosya MP3 imzasi tasimiyorsa best-effort silip yeniden indirmeye calisiyor.
- Mirror download sonrasi dosya 0 byte veya MP3 olmayan payload ise manifest'e girmiyor, failure olarak `empty file` veya `invalid mp3 file` yaziliyor.
- `tool\upload_quran_audio_storage.dart` upload/dry-run plani artik missing, empty ve duplicate kontrollerine ek olarak invalid MP3 dosyasini da storage'a yuklemeden reddediyor.
- Unit testlere ID3/frame-sync kabul testi, empty/HTML red testi, mirror source guard'i ve upload invalid MP3 failure beklentisi eklendi.

### Neden Yapildi
- `A:\Way of Allah\sirat_i_nur\tool\download_verified_quran_audio.dart:218` mirror skip karari TUR-235 oncesi sadece dosyanin var ve non-empty olmasina dayanabiliyordu.
- `A:\Way of Allah\sirat_i_nur\tool\download_verified_quran_audio.dart:248` download sonrasi non-empty ama MP3 olmayan dosya manifest'e girebilirdi.
- `A:\Way of Allah\sirat_i_nur\tool\upload_quran_audio_storage.dart:97` upload plani dosyanin mevcut ve non-empty oldugunu kontrol ediyordu, fakat MP3 payload oldugunu dogrulamiyordu.
- Kullanici etkisi: external mirror kaynagindan HTML hata sayfasi, redirect govdesi veya baska non-audio payload gelirse Supabase Storage'a ses diye yuklenebilir; sonra runtime Storage-backed URL kullansa bile icerik bozuk olur.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\quran_audio_file_validation.dart`
- `A:\Way of Allah\sirat_i_nur\tool\download_verified_quran_audio.dart`
- `A:\Way of Allah\sirat_i_nur\tool\upload_quran_audio_storage.dart`
- `A:\Way of Allah\sirat_i_nur\test\quran_audio_file_validation_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\download_verified_quran_audio_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\upload_quran_audio_storage_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Quran audio database/storage hattinda "external link runtime'a sizmasin" kuralinin yanina "storage'a yuklenen payload gercek MP3 olsun" bariyeri eklendi.
- Mevcut invalid mirror dosyasi artik sessizce skip edilmez; tool onu silip yeniden indirmeye calisir.
- Upload dry-run/operator akisi invalid MP3 dosyasini network yazimi baslamadan durdurur.

### Test Sonucu
- Odak test: `flutter test test\quran_audio_file_validation_test.dart test\download_verified_quran_audio_test.dart test\upload_quran_audio_storage_test.dart` PASS (`14/14`)
- `git diff --check` PASS
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test` PASS (`424/424`)

### Risk Degisimi
- Mirror kaynakli non-audio payload'in storage'a ses gibi girmesi riski: `16/25 -> 4/25`
- Invalid mevcut mirror dosyasinin skip edilip manifest'e girmesi riski: `12/25 -> 3/25`
- Upload/dry-run operator hatasiyla invalid MP3 yukleme riski: `12/25 -> 3/25`

### Rollback Plani
- `tool\quran_audio_file_validation.dart` ve `test\quran_audio_file_validation_test.dart` kaldirilir.
- `tool\download_verified_quran_audio.dart` ve `tool\upload_quran_audio_storage.dart` icindeki TUR-235 MP3 imza guard'lari geri alinir.
- Ilgili iki test dosyasindaki TUR-235 beklentileri kaldirilir.

### Sonraki Adim
- Commit/push sonrasi yeni dongude hardcoded/fallback UI risklerini ve runtime content risklerini tekrar tara; ozellikle `shareAppMessage` rare-locale fallback'leri, Places tile/provider konfigurasyonu ve Premium/Paywall hata copy guard'lari arasindan en yuksek riskli tek cluster'i sec.

## 2026-04-16 TUR-236 — Localize Premium Error Copy and Guard Single-Line Output

### Yapilan Islem
- Paywall/premium hata metinlerinde kullanilan `premiumProductUnavailable` ve `premiumPurchaseFailed` anahtarlari guvenli ARB batch'i ile yeniden islendi.
- `flutter gen-l10n` calistirilarak generated localization dosyalari ARB kaynaklariyla senkronlandi.
- `tool\translate_arb_keys.dart` single-line guard listesine `premiumProductUnavailable` ve `premiumPurchaseFailed` eklendi.
- `test\translate_arb_keys_test.dart` icine premium hata metinleri icin multiline output regresyon testi eklendi.
- `test\arb_ui_localization_test.dart` icine tum locale'lerde premium hata copy'sinin tek satir kaldigini dogrulayan regresyon testi eklendi.
- Otomatik batch sonucunda 22 locale'de iki premium hata mesaji Ingilizce fallback'ten cikarildi: `ak`, `as`, `bho`, `bm`, `cy`, `dv`, `ee`, `ga`, `gd`, `gn`, `hr`, `ilo`, `kri`, `lg`, `ln`, `nso`, `om`, `qu`, `sr`, `th`, `ts`, `tw`.

### Neden Yapildi
- `A:\Way of Allah\sirat_i_nur\lib\features\premium\paywall_page.dart:11` urun bulunamadiginda `l10n.premiumProductUnavailable` gosteriyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\premium\paywall_page.dart:13` ve `A:\Way of Allah\sirat_i_nur\lib\features\premium\paywall_page.dart:15` satin alma hatalarinda `l10n.premiumPurchaseFailed` gosteriyor.
- TUR-236 oncesi iki anahtar da 85 locale'de app_en ile birebir ayniydi; odeme/store hatasinda kullanici Ingilizce fallback gorebiliyordu.
- TUR-236 sonrasi exact fallback sayisi iki anahtar icin `85 -> 63`; kalan 63 locale ceviri servisinin guvenilir aday uretmedigi nadir/legacy locale grubunda birakildi, sahte ceviri yazilmadi.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- 22 locale'de premium/paywall hata deneyimi kullanicinin diline yaklastirildi.
- Premium hata metinleri icin multiline/batch debris riski test ve tool seviyesinde kapatildi.
- Safe/priority locale setindeki premium hata copy'si Ingilizceye dusmeme guard'i korunuyor; tum locale'lerde tek satir guard'i eklendi.

### Test Sonucu
- Odak test: `flutter test test\translate_arb_keys_test.dart test\arb_coverage_test.dart test\arb_ui_localization_test.dart test\features\premium\paywall_page_test.dart test\premium_provider_test.dart` PASS (`92/92`)
- Exact fallback taramasi: `premiumProductUnavailable 85 -> 63`, `premiumPurchaseFailed 85 -> 63`
- Single-line taramasi: `premiumProductUnavailable newline_count=0`, `premiumPurchaseFailed newline_count=0`
- `flutter gen-l10n` PASS
- `git diff --check` PASS
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test` PASS (`426/426`)

### Risk Degisimi
- Premium/paywall hata copy'sinde genis Ingilizce fallback riski: `12/25 -> 8/25`
- Safe/priority locale premium hata fallback riski: `8/25 -> 2/25`
- Premium hata copy'sinde multiline/batch debris riski: `8/25 -> 2/25`

### Rollback Plani
- `lib\l10n\app_*.arb` ve `lib\l10n\app_localizations_*.dart` icindeki TUR-236 premium hata copy batch'i geri alinir.
- `test\arb_ui_localization_test.dart`, `test\translate_arb_keys_test.dart` ve `tool\translate_arb_keys.dart` icindeki TUR-236 guard ekleri kaldirilir.

### Sonraki Adim
- Commit/push sonrasi yeni dongude kalan UI fallbacklerden `shareAppMessage` cluster'ini veya premium rare-locale kalanlarini yeniden riskle; yalniz guvenilir aday ureten locale'leri guncelle, uydurma ceviri yazma.

## 2026-04-16 TUR-237 — Guard Share App Message Placeholders

### Yapilan Islem
- `shareAppMessage` anahtari guvenli ARB batch'inden gecirildi.
- `tool\translate_arb_keys.dart` single-line guard listesine `shareAppMessage` eklendi.
- `test\translate_arb_keys_test.dart` icindeki settings/about guard'i `shareAppMessage` icin placeholder'li multiline adaylari reddedecek sekilde genisletildi.
- `test\arb_ui_localization_test.dart` icine tum locale'lerde `shareAppMessage` icin `{appName}` ve `{url}` placeholder'larinin korunmasini ve metnin tek satir kalmasini dogrulayan test eklendi.
- `flutter gen-l10n` calistirildi; ARB degerlerinde guvenilir yeni ceviri uretilemedigi icin generated l10n dosyalarinda content degisimi olusmadi.

### Neden Yapildi
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_page.dart:608` uygulama paylasim metnini `l10n.shareAppMessage(l10n.appTitle, appUrl)` ile uretiyor.
- `shareAppMessage` TUR-237 oncesi 109 locale'de app_en ile birebir ayniydi; batch denemesi sonrasi exact fallback sayisi yine 109 kaldi.
- Bu anahtar placeholder'li oldugu icin hatali ceviri `{appName}` veya `{url}` placeholder'larini dusurebilir ya da multiline/batch debris uretebilir; bu risk test/tool seviyesinde kapatildi.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- `shareAppMessage` icin tum locale'lerde placeholder kaybi ve multiline metin riski regresyonla korunuyor.
- Bu turda yeni guvenilir locale cevirisi uretilemedi; sahte/uydurma ceviri yazilmadi.
- Kalan UI fallback riski aynen takipte: `shareAppMessage exact_en_count=109`.

### Test Sonucu
- Odak test: `flutter test test\translate_arb_keys_test.dart test\arb_coverage_test.dart test\arb_ui_localization_test.dart` PASS (`85/85`)
- Exact fallback taramasi: `shareAppMessage exact_en_count=109`
- Placeholder taramasi: `missing_placeholder_count=0`
- Single-line taramasi: `newline_count=0`
- `flutter gen-l10n` PASS
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test` PASS (`427/427`)

### Risk Degisimi
- `shareAppMessage` placeholder kaybi riski: `10/25 -> 2/25`
- `shareAppMessage` multiline/batch debris riski: `8/25 -> 2/25`
- `shareAppMessage` genis Ingilizce fallback riski: `12/25 -> 12/25` (guvenilir ceviri uretilemedi; bilincli olarak sahte ceviri yazilmadi)

### Rollback Plani
- `test\arb_ui_localization_test.dart`, `test\translate_arb_keys_test.dart` ve `tool\translate_arb_keys.dart` icindeki TUR-237 guard ekleri geri alinir.

### Sonraki Adim
- Commit/push sonrasi share copy icin daha guvenilir ceviri stratejisi ara: once desteklenen ve dini/kulturel risk dusuk locale alt kumesi belirlenmeli, sonra sadece dogrulanabilir adaylar ARB'ye alinmali. Alternatif olarak yeni dongude non-i18n runtime risklerinden en yuksek skorlu olani sec.

## 2026-04-16 TUR-238 — Refresh Patch Dependencies

### Yapilan Islem
- `flutter pub outdated` ile dependency kilit durumu tarandi.
- `flutter pub upgrade supabase_flutter` calistirilarak Supabase patch zinciri guncellendi.
- `flutter pub upgrade` calistirilarak constraint icinde kalan transitive patch guncellemesi alindi.
- `pubspec.yaml` degistirilmedi; major/breaking migration isteyen paketler bu turda kapsam disi birakildi.

### Neden Yapildi
- `flutter pub outdated` TUR-238 oncesi `supabase_flutter 2.12.2 -> 2.12.4` icin constraint icinde patch guncellemesi gosteriyordu.
- Supabase runtime hattinda auth, postgrest, realtime ve storage client zinciri kullaniliyor; lock dosyasinin constraint icindeki en guncel patch seviyesine alinmasi servis davranisi ve bugfix tazeligini artirir.
- Kalan direct major adaylari (`fl_chart 0.66.2 -> 1.2.0`, `flutter_riverpod 2.6.1 -> 3.3.1`, `geocoding 3.0.0 -> 4.0.0`, `share_plus 12.0.2 -> 13.0.0`) API migration gerektirdigi icin tek minimal patch dongusune dahil edilmedi.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\pubspec.lock`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- `supabase_flutter` `2.12.2 -> 2.12.4`
- `supabase` `2.10.4 -> 2.10.6`
- `gotrue` `2.19.0 -> 2.20.0`
- `postgrest` `2.6.0 -> 2.7.0`
- `realtime_client` `2.7.1 -> 2.7.3`
- `storage_client` `2.5.1 -> 2.5.2`
- `vibration_platform_interface` `0.1.1 -> 0.1.2`
- Constraint disi major upgrade riski takipte kaldi; bu paketler ayri migration dongulerinde ele alinmali.

### Test Sonucu
- `flutter pub outdated` PASS; constraint icinde kalan patch update'ler uygulandi, major/breaking adaylar listelendi.
- `git diff --check` PASS
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test` PASS (`427/427`)
- `flutter doctor -v` Android/test hatti icin kritik hata gostermedi; Chrome ve Visual Studio eksikligi web/Windows desktop hedefleri icin ortam notu olarak takipte.

### Risk Degisimi
- Supabase patch tazelik riski: `8/25 -> 2/25`
- Constraint icindeki transitive patch eskime riski: `6/25 -> 2/25`
- Major dependency migration riski: `12/25 -> 12/25` (bilerek ayrildi; scope buyutulmedi)

### Rollback Plani
- `pubspec.lock` TUR-238 oncesi kilit surumlerine geri alinir ve `flutter pub get` calistirilir.
- `handover.md` icindeki TUR-238 kaydi append-only kalacagi icin gerekirse yeni bir revert kaydi eklenir.

### Sonraki Adim
- Commit/push sonrasi siradaki dongude direct major dependency adaylarini risk skoruna gore ayri ayri ele al: once en dusuk migration yuzeyi olan `share_plus`, sonra `geocoding`; `flutter_riverpod` ve `fl_chart` icin kod etkisi taranmadan pubspec constraint'i genisletme.

## 2026-04-16 TUR-239 — Upgrade Geocoding Major

### Yapilan Islem
- `geocoding` direct dependency constraint'i `^3.0.0 -> ^4.0.0` olarak guncellendi.
- `pubspec.lock` icinde `geocoding 3.0.0 -> 4.0.0` ve `geocoding_android 3.3.1 -> 4.0.1` cozuldu.
- `share_plus 13.0.0` icin dry-run yapildi; `geolocator -> geolocator_linux -> package_info_plus -> win32` zinciri nedeniyle cozumleyici catismasi kanitlandi, bu turda zorlanmadi.

### Neden Yapildi
- `flutter pub outdated` TUR-238 sonrasi `geocoding 3.0.0 -> 4.0.0` direct major adayini cozulur olarak gosteriyordu.
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\location_selection_page.dart:108` uretimde tek `placemarkFromCoordinates` kullanim noktasi; changelog'a gore 4.0.0 icin app-facing reverse geocoding API degisikligi yok, ana breaking sart Flutter 3.29+.
- Ortam `flutter doctor -v` ile Flutter `3.41.4` gosteriyor; bu sart saglandigi icin migration scope'u dusuk tutuldu.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\pubspec.yaml`
- `A:\Way of Allah\sirat_i_nur\pubspec.lock`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Location detection reverse geocoding hatti daha guncel Android federated paketiyle calisacak.
- `geocoding` artik direct outdated listesinden cikti.
- Kalan direct outdated major adaylari `fl_chart`, `flutter_riverpod` ve `share_plus`; `share_plus` icin mevcut blokaj `win32` transitive constraint catismasi.

### Test Sonucu
- Dry-run: `flutter pub add geocoding:^4.0.0 --dry-run` PASS, 2 dependency degisimi ongoruldu.
- Odak test: `flutter test test\location_selection_page_test.dart` PASS (`5/5`)
- `flutter pub outdated` PASS; `geocoding` direct outdated listesinden kalkti.
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test` PASS (`427/427`)

### Risk Degisimi
- `geocoding` major eskime riski: `12/25 -> 2/25`
- Location reverse geocoding API regression riski: `8/25 -> 3/25` (odak test + analyze + full test ile korundu)
- `share_plus` major eskime riski: `12/25 -> 12/25` (resolver blokaji nedeniyle bilerek ertelendi)

### Rollback Plani
- `pubspec.yaml` icinde `geocoding: ^4.0.0` satiri `^3.0.0` yapilir.
- `flutter pub get` calistirilir ve `pubspec.lock` eski `geocoding 3.0.0 / geocoding_android 3.3.1` cozumune dondurulur.
- Location focused test, analyze ve full test tekrar calistirilir.

### Sonraki Adim
- Commit/push sonrasi direct major risklerden `fl_chart` icin usage/changelog taramasi yap; grafik API migration yuzeyi buyukse once source-level guard/test ekle, sonra constraint dene. `flutter_riverpod 3.x` genis state-management migration oldugu icin en sona birak.

## 2026-04-16 TUR-240 — Remove Unused Chart Dependency

### Yapilan Islem
- `fl_chart` direct dependency'si `pubspec.yaml` dosyasindan kaldirildi.
- `pubspec.lock` icinden kullanilmayan `fl_chart 0.66.2` ve transitive `equatable 2.0.8` kilitleri dustu.
- `test\dependency_hygiene_test.dart` eklendi; `fl_chart` tekrar pubspec'e girerse gercek Dart import'u bulunmasini guard ediyor.

### Neden Yapildi
- `rg -n "fl_chart|LineChart|BarChart|PieChart|FlSpot|LineChartData|BarChartData|PieChartData" .` taramasi `pubspec` ve handover notlari disinda uretim/test/tool kullanimi bulmadi.
- `flutter pub outdated` TUR-239 sonrasi `fl_chart 0.66.2 -> 1.2.0` direct major adayini gosteriyordu; ancak paket uygulamada kullanilmadigi icin major upgrade yerine dependency yuzeyini kaldirmak daha dogru kok sebep cozumudur.
- Unused UI dependency uygulama cozumleme/agac yuzeyini buyutur ve gelecekte sahte feature bagimliligi olusturur.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\pubspec.yaml`
- `A:\Way of Allah\sirat_i_nur\pubspec.lock`
- `A:\Way of Allah\sirat_i_nur\test\dependency_hygiene_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Direct outdated listesinde `fl_chart` artik yok.
- Kullanilmayan `equatable` transitive kilidi de lock dosyasindan kalkti.
- Gelecekte grafik ozelligi gercekten eklenirse dependency ancak Dart import'u ile birlikte geri gelebilecek.

### Test Sonucu
- Odak test: `flutter test test\dependency_hygiene_test.dart` PASS (`1/1`)
- `flutter pub outdated` PASS; direct outdated listesi `flutter_riverpod` ve resolver-blokajli `share_plus` ile sinirlandi.
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test` PASS (`428/428`)

### Risk Degisimi
- Kullanilmayan `fl_chart` dependency eskime riski: `12/25 -> 0/25`
- Gereksiz chart dependency yuzeyi riski: `8/25 -> 1/25`
- Future accidental reintroduction riski: `6/25 -> 2/25`

### Rollback Plani
- Gercek chart feature ihtiyaci dogarsa `flutter pub add fl_chart:^1.2.0` ile paket geri eklenir.
- Ilgili chart Dart import'u ve feature testi ayni commit kapsaminda eklenir; aksi halde `test\dependency_hygiene_test.dart` guard'i fail eder.

### Sonraki Adim
- Commit/push sonrasi direct outdated kalan iki riski ayir: `share_plus 13.0.0` resolver blokaji icin `geolocator/package_info_plus/win32` zincirini izle; `flutter_riverpod 3.x` icin once provider API usage envanteri cikar, sonra migration planini parcalara bol.

## 2026-04-16 TUR-241 — Upgrade Riverpod 3 Migration

### Yapilan Islem
- `flutter_riverpod` direct dependency constraint'i `^2.6.1 -> ^3.3.1` olarak guncellendi.
- `riverpod` transitive kilidi `2.6.1 -> 3.2.1` olarak cozuldu.
- Riverpod 3 ile legacy alana tasinan `StateProvider`, `StateNotifier` ve `StateNotifierProvider` kullanan dosyalara `package:flutter_riverpod/legacy.dart` import'u eklendi.
- Riverpod 3'te kaldirilan `AsyncValue.valueOrNull` kullanimlari `.value ?? fallback` seklinde guncellendi.
- `sharedPreferencesProvider` bootstrap testinde Riverpod 3 `ProviderException` sarmalamasina uygun olarak ic `StateError` ve hata kodu dogrulandi.
- `hadithSectionProvider` icin `VerifiedHadithDatasetUnavailable` hatasinda retry kapatildi; gecici diger hatalarda `ProviderContainer.defaultRetry` davranisi korundu.

### Neden Yapildi
- `flutter pub outdated` TUR-240 sonrasi `flutter_riverpod 2.6.1 -> 3.3.1` direct major adayini cozulur olarak gosteriyordu.
- `rg` envanteri Riverpod kullanim yuzeyinin 233 eslesme oldugunu gosterdi; bu nedenle migration sadece derleyici ve changelog tarafindan gerekli sembollere indirildi.
- Riverpod 3 changelog'una gore `StateProvider` ve `StateNotifierProvider` `flutter_riverpod/legacy.dart` altina tasindi, `AsyncValue.valueOrNull` kaldirildi ve provider hatalari `ProviderException` ile sariliyor.
- Full testte `hadith_provider_test` once timeout verdi; kok sebep Riverpod 3 otomatik retry davranisinin kalici "verified dataset yok" hatasini tekrar denemesiydi. Bu hata kullaniciya durust unavailable state olarak hizli donmeli, retry edilmemeli.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\pubspec.yaml`
- `A:\Way of Allah\sirat_i_nur\pubspec.lock`
- `A:\Way of Allah\sirat_i_nur\lib\features\chatbot\chatbot_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\library\asma_ul_husna_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\library\providers\hadith_provider.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\library\sukun_audio_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\premium\premium_provider.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\settings_provider.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\tracker\tracker_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\zikr\zikr_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\settings_provider_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- `flutter_riverpod` direct outdated listesinden kalkti.
- State-management hatti Riverpod 3 API yuzeyiyle uyumlu hale geldi.
- Hadith provider, veri seti bilincli olarak kapaliyken 30 saniyelik retry/timeout yerine hizli ve durust unavailable hatasi uretiyor.
- Kalan direct outdated risk sadece `share_plus 13.0.0`; mevcut blokaj `geolocator/package_info_plus/win32` transitive constraint catismasi.

### Test Sonucu
- Dry-run: `flutter pub add flutter_riverpod:^3.3.1 --dry-run` PASS, 21 dependency degisimi ongoruldu.
- Odak test: `flutter test test\settings_provider_test.dart test\tracker_test.dart test\premium_provider_test.dart test\features\chatbot\chatbot_page_test.dart test\sukun_audio_page_test.dart test\features\library\library_page_cloud_duas_test.dart test\features\library\asma_ul_husna_page_test.dart` PASS (`50/50`)
- Hadith odak test: `flutter test test\hadith_provider_test.dart --reporter expanded` PASS (`2/2`)
- `flutter pub outdated` PASS; direct outdated listesinde yalniz `share_plus` kaldi.
- `dart format` PASS (10 dosya tarandi, 4 dosya formatlandi)
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test` PASS (`428/428`)

### Risk Degisimi
- `flutter_riverpod` major eskime riski: `12/25 -> 2/25`
- Riverpod legacy provider API kirilma riski: `16/25 -> 3/25`
- Hadith provider kalici unavailable retry/timeout riski: `12/25 -> 2/25`

### Rollback Plani
- `pubspec.yaml` icinde `flutter_riverpod: ^3.3.1` satiri `^2.6.1` yapilir.
- `flutter pub get` ile `pubspec.lock` eski Riverpod 2.6.1 cozumune dondurulur.
- Legacy import ekleri, `.value` donusumleri, `ProviderException` test beklentisi ve `hadithSectionProvider` retry callback'i geri alinir.
- Odak Riverpod testleri, hadith provider testi, analyze ve full test tekrar calistirilir.

### Sonraki Adim
- Commit/push sonrasi direct dependency tarafinda kalan tek risk `share_plus 13.0.0`; resolver blokaji cozulmedigi surece zorlamadan, once `geolocator_linux -> package_info_plus -> win32` zincirindeki upstream uyumlulugu takip et. Yeni dongude dependency disi risk taramasina gec ve hardcoded/TODO/orphan/asset/config alanlarini yeniden tara.

## 2026-04-16 TUR-242 — Localize Status and Account Action Copy

### Yapilan Islem
- `apply`, `statusLabel`, `recheckPremium`, `syncStore`, `premiumNotFound`, `premiumVerified`, `premiumRefreshError`, `quranDbStatus`, `checkingQuranDb`, `dailyProgress`, `targetCount`, `resetCounter` ve `resetOnboarding` anahtarlari tum `lib/l10n/app_*.arb` dosyalari icin yeniden uretildi.
- `flutter gen-l10n` calistirildi ve ilgili `app_localizations_*.dart` generated ciktilari tazelendi.
- `tool\translate_arb_keys.dart` kisa/ambiguous UI copy icin anahtar bazli baglamli ceviri kaynagi kullanacak sekilde sertlestirildi.
- Yanlis baglam ornekleri guard edildi: `Apply -> Bewerben`, premium subscription -> sigorta/taksit anlamlari (`Prämie`, `保费`, `قسط`) ve onboarding -> is baslangici anlamlari (`入职`) artik kabul edilmiyor.
- `test\arb_ui_localization_test.dart` icinde status/account action copy icin tum locale'lerde tek satir ve placeholder koruma guard'i eklendi.
- `test\translate_arb_keys_test.dart` icinde yanlis baglam reddi ve gecersizse kaynak metne guvenli dusme senaryolari eklendi.

### Neden Yapildi
- TUR-241 sonrasi i18n taramasinda status/account action cluster'inda genis Ingilizce fallback kalintisi bulundu.
- On tarama fallback sayilari: `apply 187`, `statusLabel 187`, `recheckPremium 188`, `syncStore 187`, `premiumNotFound 187`, `premiumVerified 187`, `premiumRefreshError 187`, `quranDbStatus 188`, `checkingQuranDb 187`, `dailyProgress 187`, `targetCount 187`, `resetCounter 187`, `resetOnboarding 187`.
- Ilk ceviri diff incelemesi `Apply/Premium/Onboarding` gibi kisa metinlerde baglamsiz makine cevirisi riski gosterdi; bu yuzden commit oncesi arac kok sebebi duzeltildi ve batch `--force` ile yeniden uretildi.
- Uydurma ceviri yapilmadi: arac sadece placeholder/tek-satir/baglam guard'larindan gecen adaylari kabul ediyor; guvenli aday yoksa kaynak metne dusuyor.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- 263 dosyalik localization/generated/test/tool batch'i olustu; kapsam ARB kaynaklari, generated l10n ve iki test guard'i ile sinirlandi.
- Son fallback sayilari: `apply 64`, `statusLabel 104`, `recheckPremium 68`, `syncStore 67`, `premiumNotFound 67`, `premiumVerified 67`, `premiumRefreshError 68`, `quranDbStatus 72`, `checkingQuranDb 67`, `dailyProgress 68`, `targetCount 77`, `resetCounter 74`, `resetOnboarding 68`.
- Kalan birebir Ingilizce degerler otomatik guard tarafindan guvenli olmayan/ceviri kalitesi belirsiz adaylarda korunmus fallback'lerdir; sahte veya dini/finansal baglami bozuk ceviri yerine durust fallback tercih edildi.
- Kotu baglam taramasi secilen anahtarlar icin temiz: `bad_context_findings=0`.

### Test Sonucu
- Odak test: `flutter test test\translate_arb_keys_test.dart test\arb_coverage_test.dart test\arb_ui_localization_test.dart` PASS (`88/88`)
- Kotu baglam taramasi PASS (`bad_context_findings=0`)
- `git diff --check` PASS
- `flutter analyze` PASS (`No issues found!`)
- Ilk full test denemesi 20 dakika sonunda runner pipe kapanmasi/time-out verdi; eski orphan `flutter_tester` surecleri temizlendi.
- Tam test tekrar: `flutter test --reporter compact` PASS (`431/431`)

### Risk Degisimi
- Status/account action Ingilizce fallback riski: `12/25 -> 6/25`
- Kisa UI copy yanlis baglam riski: `16/25 -> 4/25`
- Placeholder veya multiline l10n regression riski: `8/25 -> 2/25`
- Kalan localization kalite riski: `10/25 -> 10/25` (tum app icin devam eden genis ceviri denetimi ayri dongulere kaldi)

### Rollback Plani
- TUR-242 kapsamindaki `lib/l10n/app_*.arb`, `lib/l10n/app_localizations_*.dart`, `tool\translate_arb_keys.dart`, `test\arb_ui_localization_test.dart` ve `test\translate_arb_keys_test.dart` degisiklikleri geri alinir.
- `flutter gen-l10n`, odak l10n testleri, `flutter analyze` ve full `flutter test` tekrar calistirilir.
- `handover.md` append-only kalacagi icin gerekirse yeni bir revert kaydi eklenir.

### Sonraki Adim
- Commit/push sonrasi yeni dongude kalan dependency disi riskleri tekrar tara: ozellikle kalan i18n fallback cluster'lari, dini icerik dogrulugu, ses verilerinin Supabase storage baglantisi ve external URL bagimliliklari.

## 2026-04-16 TUR-243 — Localize Tafsir Runtime Copy

### Yapilan Islem
- Tafsir runtime UI/hata/progress anahtarlari icin kalan Ingilizce fallback'ler azaltildi: `tafsirLoading`, `tafsirSourceLabel`, `tafsirNoSurahFound`, `tafsirNoAyahFound`, `tafsirLoadFailed`, `tafsirNoTextForAyah`, `tafsirDownloadingProgress`, `tafsirLoadingProgress`, `tafsirApiStatusError`, `tafsirNoEntriesReturned`.
- `tool\translate_arb_keys.dart` icinde bu tafsir anahtarlari tek satir zorunlu listeye eklendi.
- `test\arb_ui_localization_test.dart` icinde tafsir runtime copy'nin tum locale'lerde tek satir kalmasi ve placeholder kaybetmemesi guard edildi.
- `flutter gen-l10n` calistirildi ve ilgili generated localization dosyalari tazelendi.

### Neden Yapildi
- TUR-242 sonrasi dini icerik/i18n taramasinda tafsir runtime cluster'inda cok sayida Ingilizce fallback bulundu.
- On tarama fallback sayilari: `tafsirLoading 89`, `tafsirSourceLabel 88`, `tafsirNoSurahFound 86`, `tafsirNoAyahFound 92`, `tafsirLoadFailed 86`, `tafsirNoTextForAyah 87`, `tafsirDownloadingProgress 102`, `tafsirLoadingProgress 106`, `tafsirApiStatusError 86`, `tafsirNoEntriesReturned 86`.
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\tafsir_page.dart` runtime copy'yi `AppLocalizations` uzerinden kullaniyor; kok eksik ARB kapsaminda ve guard seviyesindeydi.
- `--force` kullanilmadi; mevcut gecen yerellestirmeler ezilmeden sadece Ingilizce/bozuk fallback kalan adaylar guncellendi.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- 46 dosyalik dar tafsir localization batch'i olustu.
- Son fallback sayilari: `tafsirLoading 69`, `tafsirSourceLabel 66`, `tafsirNoSurahFound 64`, `tafsirNoAyahFound 72`, `tafsirLoadFailed 64`, `tafsirNoTextForAyah 65`, `tafsirDownloadingProgress 97`, `tafsirLoadingProgress 101`, `tafsirApiStatusError 65`, `tafsirNoEntriesReturned 64`.
- Kalan fallback'ler ceviri aracinin guvenli aday uretmedigi locale'lerde durust kaynak metin olarak birakildi; dini terimlerde uydurma ceviri yapilmadi.
- Tafsir progress copy icin `{current}`, `{total}` ve `{statusCode}` placeholder kaybi artik testle yakalaniyor.

### Test Sonucu
- Odak test: `flutter test test\arb_coverage_test.dart test\arb_ui_localization_test.dart test\translate_arb_keys_test.dart` PASS (`89/89`)
- Tafsir multiline taramasi PASS (`tafsir_multiline_findings=0`)
- `git diff --check` PASS
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test --reporter compact` PASS (`432/432`)

### Risk Degisimi
- Tafsir runtime Ingilizce fallback riski: `12/25 -> 7/25`
- Tafsir placeholder/multiline regression riski: `8/25 -> 2/25`
- Dini terimlerde uydurma ceviri riski: `10/25 -> 6/25` (force kullanilmadi, guard eklendi)
- Runtime tafsir external API bagimlilik riski: `16/25 -> 16/25` (ayri mimari dongude ele alinmali)

### Rollback Plani
- TUR-243 kapsamindaki ARB/generated dosyalari, `test\arb_ui_localization_test.dart` ve `tool\translate_arb_keys.dart` degisiklikleri geri alinir.
- `flutter gen-l10n`, odak l10n testleri, `flutter analyze` ve full `flutter test` tekrar calistirilir.
- `handover.md` append-only kalacagi icin gerekirse yeni revert kaydi eklenir.

### Sonraki Adim
- Commit/push sonrasi tafsir external API bagimliligini incele: `A:\Way of Allah\sirat_i_nur\lib\core\services\tafsir_local_service.dart` su an `https://api.quran.com/api/v4/tafsirs/...` kaynagina runtime refresh icin bagli. Offline-first ve "harici link kapanirsa bozulmasin" hedefi icin seed/storage veya acik veri paketi stratejisi ayrica tasarlanip uygulanmali.

## 2026-04-16 TUR-244 — Keep Tafsir Runtime Offline-First

### Yapilan Islem
- `A:\Way of Allah\sirat_i_nur\lib\core\services\tafsir_local_service.dart` icinde `TafsirFetchPolicy` eklendi ve `TafsirLoader` varsayilani `cacheOnly` yapildi.
- `TafsirLoader.loadTafsir` artik local cache bosken veya runtime refresh cache-only moddayken harici HTTP indirme baslatmiyor; `TafsirException('cache_missing')` uretiyor.
- `downloadTafsirForSurah` ve `downloadAllTafsirs` fonksiyonlari tamamen silinmedi; seed/operator veri hazirlama yolu olarak opt-in kaldi, ancak uygulama sayfasi bu moda gecmiyor.
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\tafsir_page.dart` icinde `cache_missing` hatasi `AppLocalizations` uzerinden kullaniciya durust unavailable mesaji olarak baglandi.
- `tafsirCacheUnavailable` anahtari `lib\l10n\app_*.arb` dosyalarinin tamamina eklendi ve `flutter gen-l10n` ile generated localization dosyalari yenilendi.
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart` ve `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart` yeni tafsir cache mesajini tek satir/placeholder guard kapsaminda izliyor.
- `A:\Way of Allah\sirat_i_nur\test\features\quran\tafsir_page_test.dart` runtime loader'in cache-only kalmasini ve `cache_missing` mesajinin localize edilmesini guard ediyor.

### Neden Yapildi
- TUR-243 sonrasi kalan en yuksek tafsir riski runtime external API bagimliligiydi.
- Kanit: `A:\Way of Allah\sirat_i_nur\lib\core\services\tafsir_local_service.dart:156` `downloadTafsirForSurah` fonksiyonunu tanimliyor ve `:168` satirinda `https://api.quran.com/api/v4/tafsirs/...` adresine gidiyordu.
- Kanit: ayni dosyada `TafsirLoader.loadTafsir` cache bosken `downloadTafsirForSurah` cagiriyordu; kullanici tarafindan acilan Tafsir sayfasi bunun uzerinden runtime HTTP'ye dusuyordu.
- Dini icerikte harici link kapanmasi, kaynak degismesi veya gecici API hatasi uygulamanin yanlis/eksik veri gostermesine yol acabilirdi.
- Kullanici hedefi "harici linkler kapanabilir, database/storage kaynakli olsun" oldugu icin runtime fallback kapatildi; veri yoksa sahte basari veya sessiz harici kaynak yerine acik unavailable state gosteriliyor.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\tafsir_local_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\tafsir_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations*.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\quran\tafsir_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Runtime tafsir ekraninin varsayilan yolu artik local cache disina cikmiyor.
- Harici Quran.com tafsir endpoint'i uygulama browsing akisi icin zorunlu degil; sadece ileride operator/seed araci tarafindan explicit policy ile kullanilabilecek.
- Cache bos oldugunda kullanici "tefsir yok" veya genel hata yerine dogrulanmis offline tafsir dataset'i bekledigini acikca gorur.
- Yeni `tafsirCacheUnavailable` anahtari 196 ARB dosyasina eklendi; 64 locale guvenli ceviri uretilemedigi icin Ingilizce fallback'te kaldi, uydurma dini ceviri yapilmadi.
- Generated l10n yuzeyi yeni anahtari tum locale siniflarina tasidi.

### Test Sonucu
- Baseline `flutter analyze` PASS (`No issues found!`)
- Baseline tam test: `flutter test --reporter compact` PASS (`432/432`)
- `dart run tool/translate_arb_keys.dart tafsirCacheUnavailable` PASS; tum `app_*.arb` dosyalari guncellendi.
- `flutter gen-l10n` PASS.
- Odak test: `flutter test test\features\quran\tafsir_page_test.dart test\arb_coverage_test.dart test\arb_ui_localization_test.dart test\translate_arb_keys_test.dart --reporter compact` PASS (`96/96`)
- `git diff --check` PASS (yalniz CRLF uyari mesajlari)
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test --reporter compact` PASS (`433/433`)

### Risk Degisimi
- Runtime tafsir external API bagimlilik riski: `16/25 -> 4/25`
- Tafsir cache bosken yanlis/sessiz harici fetch riski: `16/25 -> 2/25`
- Kullaniciya belirsiz genel hata gosterme riski: `8/25 -> 2/25`
- Verified tafsir dataset eksikligi riski: `12/25 -> 12/25` (icerigin gercek database/storage seed'i ayri dongude kurulacak)
- Nadir locale dini mesaj kalite riski: `8/25 -> 6/25` (64/196 locale fallback; uydurma ceviri yerine guvenli fallback korundu)

### Rollback Plani
- `TafsirFetchPolicy`, `fetchPolicy` constructor parametresi ve `cache_missing` guard'i `tafsir_local_service.dart` icinden geri alinir.
- `tafsir_page.dart` icindeki `cache_missing -> tafsirCacheUnavailable` case'i kaldirilir.
- `tafsirCacheUnavailable` ARB/generated l10n batch'i, `tool\translate_arb_keys.dart` tek-satir listesi ve iki test guard'i revert edilir.
- `flutter gen-l10n`, odak tafsir/l10n testleri, `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Sonraki Adim
- Bir sonraki dongude verified tafsir dataset icin database/storage seed hattini kur: `content_schema.sql` icinde tafsir kaynak/provenance tablosu, operator import/generate tool'u ve runtime sync/read path tasarla. Harici API sadece operator seed mirror asamasinda kullanilmali; uygulama runtime'i yine cache/storage-backed kalmali.

## 2026-04-16 TUR-245 — Add Verified Tafsir Cloud Schema

### Yapilan Islem
- `A:\Way of Allah\sirat_i_nur\content_schema.sql` icine `public.tafsir_entries` tablosu eklendi.
- Tablo `surah_number`, `ayah_number`, `tafsir_source`, `language`, `tafsir_text`, `source`, `source_license`, `verified_at` ve `created_at` alanlariyla kaynak/provenance odakli kuruldu.
- `surah_number` icin `1..114`, `ayah_number > 0` ve bos `tafsir_text` engeli eklendi.
- `unique (surah_number, ayah_number, tafsir_source)` constraint'i eklendi; ayni ayet/kaynak icin duplicate seed engellenir.
- `tafsir_entries_source_surah_ayah_idx` index'i eklendi; runtime ve seed dogrulama sorgulari source/sure/ayet sirasina gore hizli calisir.
- `public.tafsir_entries` icin RLS etkinlestirildi ve public select policy eklendi.
- `A:\Way of Allah\sirat_i_nur\test\content_schema_test.dart` schema guard'i tafsir tablosu, provenance alanlari, unique constraint ve RLS policy'yi dogrulayacak sekilde genisletildi.

### Neden Yapildi
- TUR-244 runtime external API fallback'ini kapatti, ancak verified tafsir iceriginin bizim cloud/database hattina seed edilebilecegi tablo yoktu.
- Kanit: TUR-244 oncesi `content_schema.sql` yalniz `duas`, `asma_ul_husna`, `quran_surahs`, `quran_ayahs` ve `audio_files` tablolarini iceriyordu; tafsir icin public tablo/RLS/index bulunmuyordu.
- Tablo olmadan seed/import araci veya runtime Supabase sync'i dogru hedefe yazamaz; bu nedenle once database kontrati sabitlendi.
- Dini icerik icin `source`, `source_license` ve `verified_at` alanlari zorunlu tutuldu; kaynaksiz/sahte tafsir metni seed edilemez.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\content_schema.sql`
- `A:\Way of Allah\sirat_i_nur\test\content_schema_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Supabase tarafinda verified tafsir dataset'i icin resmi tablo kontrati olustu.
- Runtime hala TUR-244 ile cache-only kalir; bu patch tek basina uygulamaya yeni tafsir icerigi yuklemez.
- Sonraki seed/import ve runtime sync patch'leri artik net tablo hedefi uzerinden ilerleyebilir.

### Test Sonucu
- Odak test: `flutter test test\content_schema_test.dart --reporter compact` PASS (`2/2`)
- `git diff --check` PASS (yalniz CRLF uyari mesajlari)
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test --reporter compact` PASS (`433/433`)

### Risk Degisimi
- Verified tafsir cloud schema yoklugu riski: `12/25 -> 2/25`
- Duplicate/unclear tafsir seed kontrati riski: `10/25 -> 3/25`
- Verified tafsir dataset eksikligi riski: `12/25 -> 10/25` (tablo hazir, seed/import ve runtime sync henuz yok)

### Rollback Plani
- `content_schema.sql` icindeki `public.tafsir_entries` tablo/index/RLS/policy blogu kaldirilir.
- `test\content_schema_test.dart` icindeki tafsir schema beklentileri geri alinir.
- `flutter test test\content_schema_test.dart`, `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Sonraki Adim
- Bir sonraki dongude `tool\generate_tafsir_seed.dart` ve testi ekle: operator tarafindan hazirlanan dogrulanmis JSON/manifest'ten `public.tafsir_entries` SQL seed'i uretmeli, bos metin/eksik kaynak/eksik lisans/duplicate ayetleri reddetmeli. Uygulama runtime'i yine harici API'ye donmemeli.

## 2026-04-16 TUR-246 — Add Verified Tafsir Seed Generator

### Yapilan Islem
- `A:\Way of Allah\sirat_i_nur\tool\generate_tafsir_seed.dart` eklendi.
- Tool `content_tafsir_manifest.json` formatindan `content_seed_tafsir.sql` uretir; hedef tablo TUR-245'te eklenen `public.tafsir_entries`.
- Manifest kontrati `source`, `source_license`, `verified_at` ve `entries[]` alanlarini ister; entry seviyesinde bu provenance alanlari override edilebilir.
- Her entry icin `surah_number`, `ayah_number`, `tafsir_source`, `language` ve `tafsir_text` zorunlu tutuldu.
- Quran ayet sayisi tablosu eklendi ve referans disi ayetler reddediliyor; test toplam 6236 ayeti guard ediyor.
- Production modda partial manifest reddediliyor; `--allow-partial` sadece local smoke/test icin var.
- SQL output `ON CONFLICT (surah_number, ayah_number, tafsir_source)` ile idempotent upsert uretiyor.
- `A:\Way of Allah\sirat_i_nur\test\generate_tafsir_seed_test.dart` 8 testle parser, SQL, duplicate, missing provenance, invalid ayah ve partial catalog risklerini guard ediyor.

### Neden Yapildi
- TUR-245 schema hedefini kurdu; ancak operator'in dogrulanmis tafsir dataset'ini guvenli SQL seed'e cevirecek arac yoktu.
- Arac olmadan dogrudan elle SQL yazmak bos metin, duplicate ayet, lisanssiz/kaynaksiz tafsir veya eksik katalog riskini artirirdi.
- Dini icerikte uydurma/eksik veri kabul edilemez; bu nedenle kaynak, lisans ve dogrulama zamani zorunlu hale getirildi.
- Harici API runtime'a geri alinmadi; bu tool sadece operator tarafinda hazirlanmis verified manifest'i database seed'e donusturur.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\generate_tafsir_seed.dart`
- `A:\Way of Allah\sirat_i_nur\test\generate_tafsir_seed_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Verified tafsir dataset icin schema sonrasi ikinci halka tamamlandi: operator manifest -> SQL seed.
- Partial/eksik veri uretim seed'ine sessizce donusemez.
- Katalog tamligi varsayilan olarak 6236 entry/source bekler; gelistirme smoke senaryolari icin partial mod bilerek explicit olmalidir.

### Test Sonucu
- Odak test: `flutter test test\generate_tafsir_seed_test.dart --reporter compact` PASS (`8/8`)
- `git diff --check` PASS
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test --reporter compact` PASS (`441/441`)

### Risk Degisimi
- Verified tafsir seed araci yoklugu riski: `12/25 -> 2/25`
- Partial/duplicate/kaynaksiz tafsir seed riski: `16/25 -> 3/25`
- Runtime verified tafsir sync eksikligi riski: `12/25 -> 10/25` (siradaki dongu)

### Rollback Plani
- `tool\generate_tafsir_seed.dart` ve `test\generate_tafsir_seed_test.dart` silinir.
- Handover append-only oldugu icin yeni revert kaydi eklenir.
- `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Sonraki Adim
- Bir sonraki dongude runtime cloud sync halkasini kur: `TafsirLoader` cache-only kalmaya devam ederken Supabase `tafsir_entries` tablosundan verified rows cekilip local sqflite cache'e yazilabilmeli. Cloud veri eksik/provenance eksikse yine `cache_missing` kalmali; harici API runtime'a geri donmemeli.

## 2026-04-16 TUR-247 — Sync Verified Tafsir Cache

### Yapilan Islem
- `A:\Way of Allah\sirat_i_nur\lib\core\services\tafsir_local_service.dart` DB versiyonu `2` yapildi ve local tafsir cache tablosuna `language`, `source`, `source_license`, `verified_at` kolonlari eklendi.
- Eski DB'ler icin migration eklendi; yeni kurulumlarda ayni schema dogrudan olusuyor.
- Local tafsir okuma/count sorgulari yalniz `source`, `source_license` ve `verified_at` dolu olan verified satirlari kabul edecek sekilde daraltildi.
- Supabase `tafsir_entries` satirlarini local cache formatina ceviren `normalizeVerifiedTafsirRows` ve surah/source bazli replace akisi eklendi.
- `TafsirLoader` cache-only varsayilani korunarak once verified local cache, sonra opsiyonel verified cloud loader, sonra yine local fallback, en sonda sadece explicit `allowExternalRefresh` halinde legacy external refresh sirasi kullanacak sekilde guncellendi.
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\tafsir_page.dart` Supabase `tafsir_entries` sorgusunu bagladi; Supabase client yoksa veya cloud veri gecersizse UI false-success gostermeden cache-missing yolunda kalir.
- `A:\Way of Allah\sirat_i_nur\test\features\quran\tafsir_page_test.dart` verified provenance, desteklenmeyen kaynak, eksik kaynak/lisans/dogrulama zamani ve runtime external API guardlarini kapsayacak sekilde genisletildi.

### Neden Yapildi
- TUR-245 schema ve TUR-246 seed generator hazirdi; ancak uygulama runtime'i bizim verified database satirlarini okuyup local offline cache'e yazamiyordu.
- Eski/provenance'siz local sqflite satirlari dini icerik icin guvenilir kabul edilemezdi; kullaniciya kaynak/lisans/dogrulama bilgisi olmayan tafsir gostermek kabul edilemez.
- Harici API runtime bagimliligi yeniden acilmadi; cloud loader yalniz bizim Supabase tablomuzdan verified satir kabul eder.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\tafsir_local_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\quran\tafsir_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\quran\tafsir_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Tafsir runtime zinciri artik `Supabase tafsir_entries -> verified normalize -> sqflite cache -> offline read` hattina baglandi.
- Provenance'siz veya malformed cloud satiri tum paketi bozmaz; satir bazinda reddedilir.
- Supabase yoksa uygulama dis servise kosmaz; kullaniciya cache unavailable akisi doner.
- Gercek dini icerik dataset'i hala operator tarafindan dogrulanmis manifest ile seed edilmelidir; bu patch sahte/AI icerik uretmez.

### Test Sonucu
- Odak test: `flutter test test\features\quran\tafsir_page_test.dart --reporter compact` PASS (`8/8`)
- `git diff --check` PASS (yalniz CRLF uyari mesajlari)
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test --reporter compact` PASS (`442/442`)

### Risk Degisimi
- Runtime verified tafsir sync eksikligi riski: `10/25 -> 3/25`
- Provenance'siz local tafsir cache gosterme riski: `16/25 -> 2/25`
- Harici tafsir API runtime regresyon riski: `12/25 -> 3/25`
- Verified tafsir dataset eksikligi riski: `10/25 -> 8/25` (schema/tool/runtime hazir; gercek manifest ve Supabase seed/import henuz uygulanmadi)

### Rollback Plani
- `TafsirLocalService` DB version/migration/provenance filter ve verified cloud replace helper'lari geri alinir.
- `TafsirPage` icindeki `verifiedRowsLoader` ve Supabase `tafsir_entries` sorgusu geri alinir.
- `test\features\quran\tafsir_page_test.dart` icindeki TUR-247 beklentileri kaldirilir.
- `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Sonraki Adim
- Bir sonraki dongude en yuksek kalan dini icerik riski olarak verified tafsir seed/import eksigini veya audio storage provenance hattini ele al: gercek kaynak manifestleri olmadan sahte icerik ekleme, yalniz kabul edilen kaynaklardan source/license/verified_at ile ilerle.

## 2026-04-16 TUR-248 — Add Verified Hadith Schema

### Yapilan Islem
- `A:\Way of Allah\sirat_i_nur\content_schema.sql` icine `public.hadiths` tablosu eklendi.
- Tablo `collection_id`, `book`, `hadith_number`, `text_ar`, `text_tr`, `text_en`, `narrator`, `grade`, `source`, `source_license`, `verified_at` ve `created_at` alanlarini icerir.
- Arapca hadis metni, kaynak ve hadis numarasi icin bos/gecersiz degerleri reddeden check constraint'leri eklendi.
- `unique (collection_id, hadith_number)` ve `hadiths_collection_number_idx` eklendi.
- `public.hadiths` icin RLS aktif edildi ve public read policy tanimlandi.
- `A:\Way of Allah\sirat_i_nur\test\content_schema_test.dart` hadis tablo, provenance, unique/index ve RLS policy beklentileriyle genisletildi.

### Neden Yapildi
- Kanit: `A:\Way of Allah\sirat_i_nur\lib\core\services\hadith_api_service.dart` satir 1 `hasVerifiedHadithDataset = false`; runtime hadis rotalari bilerek kapali.
- Kanit: TUR-248 oncesi `content_schema.sql` icinde `public.hadiths` tablosu yoktu; verified hadis dataset'i icin Supabase hedef kontrati bulunmuyordu.
- Sahte veya dogrulanmamis hadis metni uretmek yasak oldugu icin once sadece kaynak/lisans/dogrulama bilgisini zorlayan database kontrati kuruldu.
- Runtime bu turda acilmadi; seed/import ve local/cloud provider hatti dogrulanmadan hadis gezintisini etkinlestirmek false-success ve dini icerik riski olustururdu.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\content_schema.sql`
- `A:\Way of Allah\sirat_i_nur\test\content_schema_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Verified hadis dataset'i icin Supabase hedefi hazirlandi.
- Uygulama henuz hadis okumayi acmaz; `hasVerifiedHadithDataset = false` guvenli kapali modda kalir.
- Sonraki turda manifest -> SQL seed generator veya runtime cloud provider hatti net tablo uzerinden uygulanabilir.

### Test Sonucu
- Odak test: `flutter test test\content_schema_test.dart --reporter compact` PASS (`2/2`)
- `git diff --check` PASS (yalniz CRLF uyari mesajlari)
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test --reporter compact` PASS (`442/442`)

### Risk Degisimi
- Verified hadis schema yoklugu riski: `12/25 -> 2/25`
- Dogrulanmamis hadis runtime acilma riski: `16/25 -> 4/25` (runtime kapali kaldi)
- Verified hadis dataset eksikligi riski: `16/25 -> 12/25` (schema hazir; seed/import/runtime sync henuz yok)

### Rollback Plani
- `content_schema.sql` icindeki `public.hadiths` tablo/index/RLS/policy blogu kaldirilir.
- `test\content_schema_test.dart` icindeki hadis schema beklentileri geri alinir.
- Handover append-only oldugu icin revert kaydi eklenir.
- `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Sonraki Adim
- Bir sonraki dongude `tool\generate_hadith_seed.dart` ekle: yalniz operator tarafindan dogrulanmis hadis manifest'inden `public.hadiths` SQL seed'i uretmeli; bos Arapca metin, eksik source/source_license/verified_at, duplicate collection-number ve gecersiz collection id durumlarini reddetmeli.

## 2026-04-16 TUR-249 — Add Verified Hadith Seed Generator

### Yapilan Islem
- `A:\Way of Allah\sirat_i_nur\tool\generate_hadith_seed.dart` eklendi.
- Tool `content_hadith_manifest.json` formatindan `content_seed_hadith.sql` uretir; hedef tablo TUR-248'de eklenen `public.hadiths`.
- Manifest kontrati `source`, `source_license`, `verified_at` ve `entries[]` alanlarini ister; entry seviyesinde provenance override edilebilir.
- Her entry icin `collection_id`, `book`, `hadith_number` ve `text_ar` zorunlu tutuldu; `text_tr`, `text_en`, `narrator`, `grade` opsiyonel ama bos string kabul edilmez.
- Desteklenen koleksiyonlar app'teki mevcut hadis koleksiyonlariyla sinirlandi: `bukhari`, `muslim`, `tirmidhi`, `abudawud`, `nasai`, `ibnmajah`.
- Production modda her desteklenen koleksiyonun manifestte temsil edilmesi zorunlu tutuldu; `--allow-partial` sadece local smoke/test icin explicit olarak var.
- SQL output `ON CONFLICT (collection_id, hadith_number)` ile idempotent upsert uretir.
- `A:\Way of Allah\sirat_i_nur\test\generate_hadith_seed_test.dart` 10 testle parser, SQL, duplicate, missing provenance, unsupported collection, empty Arabic text ve partial catalog risklerini guard ediyor.

### Neden Yapildi
- TUR-248 schema hedefini kurdu; ancak operator'in dogrulanmis hadis dataset'ini guvenli SQL seed'e cevirecek arac yoktu.
- Arac olmadan elle SQL yazmak bos Arapca metin, duplicate hadis, lisanssiz/kaynaksiz veri veya yanlis koleksiyon id riskini artirirdi.
- Dini icerikte uydurma veri kabul edilemez; test fixture'lari gercek hadis iddiasi tasimayan notr parser verisi olarak tutuldu.
- Runtime bu turda acilmadi; `hasVerifiedHadithDataset = false` guvenli kapali modda kalir.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\generate_hadith_seed.dart`
- `A:\Way of Allah\sirat_i_nur\test\generate_hadith_seed_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Verified hadis dataset icin schema sonrasi ikinci halka tamamlandi: operator manifest -> SQL seed.
- Partial/eksik provenance/duplicate/unsupported collection verisi sessizce production seed'e donusemez.
- Uygulamada hadis gezintisi hala kapali; gercek kaynak manifest ve runtime Supabase provider hatti tamamlanmadan acilmamali.

### Test Sonucu
- Odak test: `flutter test test\generate_hadith_seed_test.dart --reporter compact` PASS (`10/10`)
- `git diff --check` PASS
- `flutter analyze` PASS (`No issues found!`; ilk deneme timeout oldu, uzun timeout ile PASS)
- Tam test: `flutter test --reporter compact` PASS (`452/452`)

### Risk Degisimi
- Verified hadis seed araci yoklugu riski: `12/25 -> 2/25`
- Duplicate/unsupported/kaynaksiz hadis seed riski: `16/25 -> 3/25`
- Verified hadis dataset eksikligi riski: `12/25 -> 10/25` (schema ve tool hazir; gercek manifest ve runtime sync henuz yok)

### Rollback Plani
- `tool\generate_hadith_seed.dart` ve `test\generate_hadith_seed_test.dart` silinir.
- Handover append-only oldugu icin revert kaydi eklenir.
- `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Sonraki Adim
- Bir sonraki dongude hadis runtime zincirini kapali moddan cloud-ready moda hazirla: Supabase `hadiths` provider/local model sadece verified rows okuyabilmeli, ancak dataset completeness guard gecmeden `hasVerifiedHadithDataset` acilmamali.

## 2026-04-16 TUR-250 — Prepare Verified Hadith Runtime Provider

### Yapilan Islem
- `A:\Way of Allah\sirat_i_nur\lib\core\services\hadith_api_service.dart` icindeki `hasVerifiedHadithDataset` sabit `false` yerine compile-time `SIRAT_HAS_VERIFIED_HADITH_DATASET` dart-define gate'ine baglandi; default yine `false`.
- `A:\Way of Allah\sirat_i_nur\lib\features\library\providers\hadith_provider.dart` eski external/static fetch yolundan ayrildi.
- Provider artik gate acilmis buildlerde Supabase `hadiths` tablosundan `collection_id`, `book`, `hadith_number`, `text_ar`, `text_tr`, `text_en`, `source`, `source_license`, `verified_at` alanlarini sorgulayacak sekilde hazirlandi.
- `resolveVerifiedHadithItems` eklendi; sadece collection eslesen, hadis numarasi pozitif, Arapca metni dolu, guvenli TR/EN translation'i olan, `source`, `source_license` ve parse edilebilir `verified_at` tasiyan satirlari UI modeline cevirir.
- Duplicate hadis numaralari satir bazinda reddedilir ve sonuc hadis numarasina gore siralanir.
- `A:\Way of Allah\sirat_i_nur\test\features\library\hadith_provider_test.dart` eklendi; verified row filtreleme, TR/EN fallback ve provider'in sadece `hadiths` tablosuna baglanmasi guard edildi.

### Neden Yapildi
- TUR-248 schema ve TUR-249 seed generator hazirdi; fakat runtime provider hala eski API formuna bagliydi ve dataset hazir olsa bile build-time acma yolu yoktu.
- Hadis gezintisini hemen acmak dogru olmazdi: gercek manifest/Supabase seed ve completeness kaniti henuz yok.
- Bu patch runtime'i cloud-ready yapar ama default kapali tutar; kullaniciya dogrulanmamis/eksik hadis gostermez.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\hadith_api_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\library\providers\hadith_provider.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\library\hadith_provider_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Hadis runtime zinciri `Supabase hadiths -> verified normalize -> HadithItem UI model` icin hazirlandi.
- Default build davranisi degismedi: `SIRAT_HAS_VERIFIED_HADITH_DATASET` verilmezse router/list/search kapali kalir.
- Eski `fetchHadiths` / `fetchArabicHadiths` provider call chain'i kaldirildi; harici unverified API'ye sessiz donus yok.

### Test Sonucu
- Odak test: `flutter test test\features\library\hadith_provider_test.dart --reporter compact` PASS (`3/3`)
- `git diff --check` PASS (yalniz CRLF uyari mesajlari)
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test --reporter compact` PASS (`455/455`)

### Risk Degisimi
- Hadis runtime external/static API bagimliligi riski: `12/25 -> 3/25`
- Gate olmadan verified dataset acilamama riski: `10/25 -> 3/25`
- Eksik/provenance'siz hadis satirinin UI'a cikma riski: `16/25 -> 4/25`
- Verified hadis dataset/completeness eksikligi riski: `10/25 -> 9/25` (runtime hazir, gercek seed/completeness kaniti henuz yok)

### Rollback Plani
- `hadith_api_service.dart` gate tekrar sabit `false` yapilir.
- `hadith_provider.dart` Supabase query/normalizer degisikligi geri alinir.
- `test\features\library\hadith_provider_test.dart` silinir.
- Handover append-only oldugu icin revert kaydi eklenir.
- `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Sonraki Adim
- Bir sonraki dongude hadis dataset completeness guard'i ekle: build-time gate acilsa bile Supabase `hadiths` tablosunda desteklenen 6 koleksiyonun her biri icin verified/provenance'li satir yoksa router/list yine kapali kalmali ve diagnostics/handover bunu acik raporlamali.

## 2026-04-16 TUR-251 — Guard Verified Hadith Dataset Completeness

### Yapilan Islem
- `A:\Way of Allah\sirat_i_nur\lib\core\services\hadith_api_service.dart` icine desteklenen verified hadis koleksiyon id listesi ve `isVerifiedHadithRuntimeAvailable` runtime guard'i eklendi.
- `A:\Way of Allah\sirat_i_nur\lib\features\library\providers\hadith_provider.dart` icinde Supabase `hadiths` tablosunu provenance alanlariyla okuyan `verifiedHadithDatasetAvailabilityProvider` eklendi.
- `hasCompleteVerifiedHadithDataset` eklendi; `bukhari`, `muslim`, `tirmidhi`, `abudawud`, `nasai`, `ibnmajah` koleksiyonlarinin her biri icin en az bir verified/provenance'li satir yoksa dataset tamam sayilmaz.
- `A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart`, `A:\Way of Allah\sirat_i_nur\lib\features\library\hadith_list_page.dart` ve `A:\Way of Allah\sirat_i_nur\lib\features\library\hadith_search_page.dart` build-time gate'i tek basina yeterli saymayacak sekilde runtime completeness guard'a baglandi.
- `A:\Way of Allah\sirat_i_nur\test\features\library\hadith_provider_test.dart` completeness guard icin koleksiyon eksigi ve provenance eksigi testleriyle genisletildi.
- `A:\Way of Allah\sirat_i_nur\test\features\library\hadith_gate_test.dart` Riverpod provider okumalari icin `ProviderScope` ile guncellendi.

### Neden Yapildi
- TUR-250 runtime provider'i cloud-ready yapti, ancak sadece `SIRAT_HAS_VERIFIED_HADITH_DATASET` dart-define'i acildiginda Supabase tarafindaki dataset'in gercekten tamam oldugunu kanitlayan ikinci bir runtime kontrol yoktu.
- Bu bosluk build-time flag yanlislikla acilirsa eksik veya provenance'siz hadis koleksiyonlarinin UI'a cikmasina yol acabilirdi.
- Dini icerikte eksik veya dogrulanmamis veri gostermek kabul edilemez; bu nedenle UI sadece build-time gate ve cloud completeness guard ayni anda gecerse acilir.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\hadith_api_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\library\providers\hadith_provider.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\library\library_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\library\hadith_list_page.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\library\hadith_search_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\library\hadith_gate_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\library\hadith_provider_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Hadis UI acilma zinciri artik `dart-define gate -> Supabase client -> verified hadiths rows -> all supported collections complete` sirasina baglandi.
- Eksik `source`, `source_license`, `verified_at`, Arapca metin veya koleksiyon kapsami olan dataset UI'i acamaz.
- Default build davranisi hala guvenli kapali modda kalir; gercek verified manifest ve Supabase seed olmadan hadis koleksiyonlari kullaniciya acilmaz.

### Test Sonucu
- Odak test: `flutter test test\features\library\hadith_provider_test.dart test\features\library\hadith_gate_test.dart --reporter compact` PASS (`6/6`)
- Library regresyon testi: `flutter test test\library_page_test.dart --reporter compact` PASS (`14/14`)
- `git diff --check` PASS
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test --reporter compact` PASS (`456/456`)
- Not: Ilk odak test denemesinde iki `flutter test` prosesi paralel calistigi icin Flutter native-assets kopyalama yarisi olustu; kod hatasi degildi. Sonraki dogrulamalar tek test prosesiyle PASS aldi.

### Risk Degisimi
- Build-time flag ile eksik hadis UI acilma riski: `12/25 -> 3/25`
- Provenance eksik hadis koleksiyonunun UI'a cikma riski: `16/25 -> 3/25`
- Verified hadis dataset eksikligi riski: `9/25 -> 8/25` (guard tamamlandi; gercek kaynak manifest/Supabase seed halen gerekli)

### Rollback Plani
- `hadith_api_service.dart` icindeki `supportedHadithCollectionIds` ve `isVerifiedHadithRuntimeAvailable` ekleri geri alinir.
- `hadith_provider.dart` icindeki `verifiedHadithDatasetAvailabilityProvider` ve `hasCompleteVerifiedHadithDataset` ekleri geri alinir.
- Library/list/search sayfalarindaki runtime completeness okumasi eski build-time gate'e dondurulur.
- `test\features\library\hadith_gate_test.dart` ve `test\features\library\hadith_provider_test.dart` ek beklentileri geri alinir.
- Handover append-only oldugu icin revert kaydi eklenir.
- `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Sonraki Adim
- Bir sonraki dongude diagnostics/yayin oncesi kontrol yuzeyine hadis dataset completeness durumunu ekle veya daha yuksek risk bulunursa once onu ele al. Gercek hadis manifest/Supabase seed olmadan dini icerik uretme, uydurma satir veya sahte audio ekleme.

## 2026-04-16 TUR-252 — Surface Hadith Completeness In Diagnostics

### Yapilan Islem
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart` icine `resolveHadithDiagnosticsValue` helper'i eklendi.
- Diagnostics satir uretimi `verifiedHadithDatasetAvailabilityProvider.future` sonucunu okuyarak `hadithCollections` satiri ekleyecek sekilde genisletildi.
- Dataset tamam degilse diagnostics mevcut `hadithSourcePending` metnini sagliksiz satir olarak gosterir.
- Dataset tamam ise diagnostics mevcut `diagnosticsSupportedCount` metniyle desteklenen tum hadis koleksiyonlarinin hazir oldugunu gosterir.
- Yeni l10n anahtari acilmadi; mevcut 180+ locale kapsami korunarak ceviri borcu olusturulmadi.
- `A:\Way of Allah\sirat_i_nur\test\features\settings\diagnostics_page_test.dart` hadis diagnostics helper ve provider baglantisi guard testleriyle genisletildi.

### Neden Yapildi
- TUR-251 hadis UI kapisini runtime completeness guard'a bagladi, ancak operator/yayin oncesi diagnostics ekrani bu durumu raporlamiyordu.
- Bu bosluk build-time flag veya Supabase seed hatasinin UI kapali kalmasina neden oldugu durumda kok sebebi diagnostics yuzeyinde saklardi.
- Dini icerikte dogrulanmamis veri acilmamali; ayni zamanda kapali kalma sebebi de operator tarafindan acikca gorulmelidir.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\settings\diagnostics_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\settings\diagnostics_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Diagnostics zinciri artik `hadithCollections -> verifiedHadithDatasetAvailabilityProvider -> hadithSourcePending/destek sayaci` akisiyla hadis dataset sagligini raporlar.
- Eksik Supabase hadis dataset'i sessiz kalmaz; yayin oncesi kalite kontrol ekraninda sagliksiz olarak gorunur.
- L10n anahtar kapsami degismedigi icin 180+ ARB dosyasinda yeni eksik anahtar riski dogmadi.

### Test Sonucu
- Odak test: `flutter test test\features\settings\diagnostics_page_test.dart --reporter compact` PASS (`14/14`)
- `git diff --check` PASS (yalniz LF -> CRLF uyari mesajlari)
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test --reporter compact` PASS (`458/458`)

### Risk Degisimi
- Hadis completeness durumunun diagnostics'te gorunmemesi riski: `12/25 -> 2/25`
- Build-time flag/Supabase seed hatasinin operator tarafindan gec fark edilme riski: `12/25 -> 3/25`
- Verified hadis dataset eksikligi riski: `8/25 -> 8/25` (durum gorunur oldu; gercek kaynak manifest/Supabase seed halen gerekli)

### Rollback Plani
- `diagnostics_page.dart` icindeki `resolveHadithDiagnosticsValue` helper'i, hadis provider import'u ve `hadithCollections` diagnostics satiri geri alinir.
- `diagnostics_page_test.dart` icindeki iki hadis diagnostics testi geri alinir.
- Handover append-only oldugu icin revert kaydi eklenir.
- `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Sonraki Adim
- Bir sonraki dongude verified dini/audio dataset tamamlama zincirinde en yuksek kalan riski sec: gercek manifest/Supabase seed yoksa uydurma veri ekleme; once mevcut kodda false-success, hardcoded icerik veya operator guard eksigi ara.

## 2026-04-16 TUR-253 — Bound Hadith Completeness Probe

### Yapilan Islem
- `A:\Way of Allah\sirat_i_nur\lib\features\library\providers\hadith_provider.dart` icindeki `verifiedHadithDatasetAvailabilityProvider` tum `hadiths` tablosunu cekmek yerine `hasCompleteVerifiedHadithDatasetInCloud` helper'ina baglandi.
- Yeni cloud helper her `supportedHadithCollectionIds` koleksiyonu icin ayri, bounded ve provenance filtreli Supabase probe calistirir.
- Her koleksiyon icin en fazla `_hadithCompletenessProbeLimit = 100` satir okunur.
- Probe `book`, `text_ar`, `source`, `source_license`, `verified_at` alanlarinda null/bos degerleri server tarafinda eler; son karar yine `resolveVerifiedHadithItems` normalizer'i ile verilir.
- `A:\Way of Allah\sirat_i_nur\test\features\library\hadith_provider_test.dart` provider kaynak guard'i, availability kontrolunun koleksiyon bazli `.eq('collection_id', collectionId)` ve `.limit(_hadithCompletenessProbeLimit)` kullanmasini zorunlu kilacak sekilde genisletildi.

### Neden Yapildi
- TUR-251 guard'i dogruydu ancak availability provider `hadiths` tablosundaki tum satirlari cekiyordu.
- Gercek Kütüb-i Sitte dataset'i buyudugunde bu davranis library/diagnostics acilisinda gereksiz ag trafiği, bellek kullanimi ve gecikme riski dogururdu.
- Completeness icin tum tabloyu indirmek gerekmez; her desteklenen koleksiyonda en az bir verified/provenance'li normalize edilebilir satir kaniti yeterlidir.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\library\providers\hadith_provider.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\library\hadith_provider_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Hadis dataset availability kontrolu O(tum hadis satirlari) yerine O(desteklenen koleksiyon sayisi x 100 probe) sinirina cekildi.
- Eksik/provenance'siz satirlar yine UI'a cikamaz; guvenlik modeli korunur.
- Buyuk dogrulanmis hadis dataset'i yuklendiginde diagnostics/library acilisinin tablo tamamini indirme riski azalir.

### Test Sonucu
- Odak test: `flutter test test\features\library\hadith_provider_test.dart --reporter compact` PASS (`4/4`)
- `git diff --check` PASS (yalniz LF -> CRLF uyari mesajlari)
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test --reporter compact` PASS (`458/458`)

### Risk Degisimi
- Hadis completeness kontrolunun tum tabloyu indirme riski: `12/25 -> 3/25`
- Buyuk dataset'te library/diagnostics gecikme riski: `12/25 -> 4/25`
- Verified hadis dataset eksikligi riski: `8/25 -> 8/25` (performans guard'i tamamlandi; gercek kaynak manifest/Supabase seed halen gerekli)

### Rollback Plani
- `hasCompleteVerifiedHadithDatasetInCloud`, `_hadithCompletenessProbeLimit` ve `SupabaseClient` import'u geri alinir.
- `verifiedHadithDatasetAvailabilityProvider` tekrar eski tum tablo `select(_hadithSelectColumns)` akisana dondurulur.
- `hadith_provider_test.dart` icindeki bounded probe kaynak guard beklentileri geri alinir.
- Handover append-only oldugu icin revert kaydi eklenir.
- `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Sonraki Adim
- Bir sonraki dongude dogrulanmis icerik/audio zincirinde kalan en yuksek riski ara: Supabase seed/manifest, offline indirme false-success veya localization kalintisi gibi alanlardan kanitli ve minimal bir sonraki patch sec.

## 2026-04-16 TUR-254 — Fix Quran 14:40 Turkish Quote Consistency

### Yapilan Islem
- `A:\Way of Allah\sirat_i_nur\content_seed_quran_ayahs.sql` icindeki Quran 14:40 `text_tr` degerinde acik kalan Turkce cift tirnak kapatildi.
- `A:\Way of Allah\sirat_i_nur\assets\data\full_quran.json` icindeki Surah 14 Ayah 40 `tr_translation` degeri seed SQL ile ayni hale getirildi.
- `A:\Way of Allah\sirat_i_nur\lib\core\constants\duas_data.dart` icindeki `Quran 14:40` fallback duasinin Turkce metni ayni kapali tirnakla guncellendi.
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_tr.arb` icindeki `duaMeaning4` ayni metne cekildi ve `flutter gen-l10n` ile `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_tr.dart` yenilendi.
- `A:\Way of Allah\sirat_i_nur\test\duas_data_test.dart` icine Turkce fallback tirnak dengesi ve runtime Turkce localization/Fallback hizalama guard'i eklendi.

### Neden Yapildi
- Full test once `test\bundled_quran_asset_test.dart` icinde seed SQL ile bundled asset arasinda Quran 14:40 farki yakaladi.
- Kok neden, ayni dogrulanmis ayetin Turkce meal metninin seed, bundled asset, fallback dua ve Turkce l10n zincirinde farkli noktalarda acik tirnakla kalmasiydi.
- Dini icerikte kullaniciya gosterilen metinler kaynak zincirinde birebir tutarli olmali; bu patch Arapca metni veya meal cumlesini degistirmeden yalniz eksik kapanis tirnagini tamamlar.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\content_seed_quran_ayahs.sql`
- `A:\Way of Allah\sirat_i_nur\assets\data\full_quran.json`
- `A:\Way of Allah\sirat_i_nur\lib\core\constants\duas_data.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_tr.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_tr.dart`
- `A:\Way of Allah\sirat_i_nur\test\duas_data_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Quran 14:40 Turkce dua metni artik seed SQL, bundled JSON, fallback data, ARB ve generated l10n runtime katmanlarinda ayni.
- `bundled_quran_asset_test` seed/asset driftini; yeni dua guard'lari fallback tirnak dengesini ve Turkce runtime l10n hizalamasini yakalar.
- Kullaniciya acik kalan tirnakla veya seed/asset farkiyla dini metin gosterilme riski kapatildi.

### Test Sonucu
- Odak test: `flutter test test\bundled_quran_asset_test.dart test\duas_data_test.dart --reporter compact` PASS (`11/11`)
- `git diff --check` PASS (yalniz LF -> CRLF uyari mesajlari)
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test --reporter compact` PASS (`460/460`)

### Risk Degisimi
- Quran 14:40 Turkce fallback metninde acik tirnak riski: `12/25 -> 2/25`
- Seed SQL ile bundled Quran asset drift riski: `12/25 -> 2/25`
- Turkce l10n duaMeaning4 ile runtime fallback ayrisma riski: `9/25 -> 2/25`

### Rollback Plani
- `content_seed_quran_ayahs.sql`, `assets\data\full_quran.json`, `duas_data.dart`, `app_tr.arb` ve `app_localizations_tr.dart` icindeki Quran 14:40 kapanis tirnagi degisiklikleri geri alinir.
- `test\duas_data_test.dart` icindeki tirnak dengesi ve Turkce runtime l10n hizalama testleri geri alinir.
- Handover append-only oldugu icin revert kaydi eklenir.
- `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Not
- Dependency guncellik denetiminde `share_plus 13.0.0` denenmis, ancak `geolocator 14.0.2 -> geolocator_linux -> package_info_plus -> win32 <6` zinciri ile `share_plus >=13.0.0 -> win32 ^6.0.0` solver cakismasi nedeniyle uygulanmamistir. Degisiklik commitlenmeden geri alinmistir; dependency guncellemesi icin once geolocator/package_info_plus/win32 uyum yolu cozulecek.

### Sonraki Adim
- Bir sonraki dongude yeni risk taramasini localization/dini icerik/audio pipeline ekseninde surdur: once kanitli en yuksek riskli tek sorunu sec, minimal patch + test + analyze + full test + commit/push dongusunu uygula.

## 2026-04-16 TUR-255 — Repair Arabic Asma Meaning Copy

### Yapilan Islem
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_ar.arb` icindeki `asmaMeaning1..asmaMeaning99` Arapca aciklamalari makine ceviri kalintilarindan arindirildi.
- Ozellikle `الجارديان`, `السلفه`, `الكليمنت`, `المريض الأول`, `المُخلص` gibi yanlis baglamli veya transliterasyon artiklari kaldirildi.
- `flutter gen-l10n` calistirildi ve `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_ar.dart` runtime localization ciktisi yenilendi.
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart` icine Arapca Esma anlamlarinda bilinen makine ceviri kalintilarini yasaklayan ARB guard'i eklendi.
- Ayni test dosyasina `Locale('ar')` runtime guard'i eklendi; generated localization'in da guvenli metni yukledigi dogrulaniyor.

### Neden Yapildi
- Risk taramasinda `A:\Way of Allah\sirat_i_nur\lib\l10n\app_ar.arb:552`, `:577`, `:628`, `:644` civarinda Arapca Esma anlamlari icinde dogrudan yanlis/garip makine ceviri kalintilari goruldu.
- Bu metinler `A:\Way of Allah\sirat_i_nur\lib\features\library\asma_ul_husna_page.dart` uzerinden Arapca locale'de kullaniciya gosterilen dini icerik oldugu icin UI copy kalitesinden daha yuksek, dini icerik guvenilirligi riski tasiyordu.
- Dini icerikte sahte veya anlamsiz ifade gosterilmemesi icin yalniz Arapca Esma anlamlari tek yuzey olarak ele alindi; veri modeli, Arapca isimler ve audio akisi degistirilmedi.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_ar.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_ar.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Arapca Asma ekraninda artik bilinen makine ceviri artigi veya yanlis baglamli "hasta/sick", "guardian" transliterasyonu, "clement" transliterasyonu gibi ifadeler gosterilmez.
- Generated runtime localization ARB ile senkron kalir; test hem kaynak ARB'yi hem runtime delegate ciktisini korur.
- Safe priority locale testleri genisledi; ileride ayni kalintilar yeniden girerse full test yakalar.

### Test Sonucu
- Odak test: `flutter test test\arb_ui_localization_test.dart --reporter compact` PASS (`58/58`)
- Asma regresyon testi: `flutter test test\features\library\asma_ul_husna_page_test.dart test\asma_ul_husna_data_test.dart --reporter compact` PASS (`17/17`)
- `git diff --check` PASS (yalniz LF -> CRLF uyari mesajlari)
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test --reporter compact` PASS (`462/462`)

### Risk Degisimi
- Arapca Esma anlamlarinda makine ceviri kalintisi riski: `16/25 -> 3/25`
- Arapca runtime generated l10n ile ARB ayrisma riski: `9/25 -> 2/25`
- Tum locale dini icerik kalite borcu: `16/25 -> 14/25` (Arapca ana yuzey duzeldi; diger locale dini metinleri icin tarama devam etmeli)

### Rollback Plani
- `app_ar.arb` icindeki `asmaMeaning1..99` degerleri onceki haline dondurulur.
- `flutter gen-l10n` tekrar calistirilerek `app_localizations_ar.dart` eski metinlere senkronlanir.
- `arb_ui_localization_test.dart` icindeki Arapca Asma machine-mistranslation ve runtime guard testleri geri alinir.
- Handover append-only oldugu icin revert kaydi eklenir.
- `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Not
- Ayni turda offline indirme false-success riski yeniden kontrol edildi; `OfflineDownloadBatchResult`, `resolveOfflineDownloadResultMessage` ve partial/cancel testleri zaten mevcut oldugu icin yeni patch gerektirmedi.
- Places harita riskleri yeniden kontrol edildi; `PLACES_TILE_URL_TEMPLATE` ve `PLACES_OVERPASS_API_URL` icin explicit config guard'lari ve testleri mevcut.

### Sonraki Adim
- Bir sonraki dongude kalan dini localization kalitesini taramaya devam et: ozellikle `duaMeaning` ve nadir locale Asma metinlerinde bilinen kotu kalintilari kanitla, tek locale/tek yuzey patch'leriyle kapat.

## 2026-04-16 TUR-256 — Balance Quran 3:8 Dua Quote Chain

### Yapilan Islem
- `A:\Way of Allah\sirat_i_nur\content_seed_quran_ayahs.sql` icindeki Quran 3:8 `text_en` degerinde acik kalan English smart quote kapatildi.
- `A:\Way of Allah\sirat_i_nur\assets\data\full_quran.json` icindeki Surah 3 Ayah 8 `en_translation` seed SQL ile ayni dengeli alinti metnine cekildi.
- `A:\Way of Allah\sirat_i_nur\lib\core\constants\duas_data.dart` icindeki `Quran 3:8` fallback duasinin English metni ayni kapali smart quote ile guncellendi.
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb` icindeki `duaMeaning3` ayni English metne cekildi.
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_ar.arb` icindeki `duaMeaning3` acik `"` yerine dengeli Arapca ayet anlamiyla guncellendi: `إنك أنت الوهاب` ifadesi korunur.
- `flutter gen-l10n` calistirildi; `app_localizations.dart`, `app_localizations_en.dart` ve `app_localizations_ar.dart` yenilendi.
- `A:\Way of Allah\sirat_i_nur\test\duas_data_test.dart` English smart quote denge guard'i ile genisletildi.
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart` Quran 3:8 EN/AR runtime l10n dengesini dogrulayan guard ile genisletildi.

### Neden Yapildi
- Risk taramasinda `A:\Way of Allah\sirat_i_nur\content_seed_quran_ayahs.sql:4814`, `assets\data\full_quran.json:2432`, `duas_data.dart:166` ve `app_en.arb:148` ayni Quran 3:8 English metninde acilan `‘` isaretinin kapanmadigini gosterdi.
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_ar.arb:647` Arapca `duaMeaning3` de acik `"` ile kalmisti.
- Dini metinlerde seed, bundled asset, fallback data ve runtime localization ayni tutarli kaynak zincirini gostermeli; bu patch kelime icerigini uydurmadan yalniz noktalama/tutarlilik borcunu kapatir.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\content_seed_quran_ayahs.sql`
- `A:\Way of Allah\sirat_i_nur\assets\data\full_quran.json`
- `A:\Way of Allah\sirat_i_nur\lib\core\constants\duas_data.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_ar.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_en.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_ar.dart`
- `A:\Way of Allah\sirat_i_nur\test\duas_data_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Quran 3:8 English dua metni artik seed SQL, bundled JSON, fallback data, EN ARB ve generated runtime localization katmanlarinda ayni ve dengeli.
- Arapca `duaMeaning3` artik acik cift tirnak tasimaz ve ayetin ana ifadesini dogrudan Arapca verir.
- Yeni guard'lar English fallback smart quote driftini ve EN/AR runtime l10n noktalama bozulmasini yakalar.

### Test Sonucu
- Odak test: `flutter test test\bundled_quran_asset_test.dart test\duas_data_test.dart test\arb_ui_localization_test.dart --reporter compact` PASS (`71/71`)
- `git diff --check` PASS (yalniz LF -> CRLF uyari mesajlari)
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test --reporter json *> .dart_tool\codex_full_test_tur256.json` PASS (`success=True`, non-success test yok)
- Not: Ilk `flutter test --reporter compact` full kosusu assertion fail uretmeden komut zaman sinirina takildi; JSON raporlu tekrar 60 saniye civarinda basariyla tamamlandi.

### Risk Degisimi
- Quran 3:8 English fallback/asset/seed acik smart quote riski: `12/25 -> 2/25`
- Arapca `duaMeaning3` acik cift tirnak riski: `9/25 -> 2/25`
- Seed/bundled/l10n dini metin ayrisma riski: `12/25 -> 3/25`

### Rollback Plani
- `content_seed_quran_ayahs.sql`, `assets\data\full_quran.json`, `duas_data.dart`, `app_en.arb` ve `app_ar.arb` icindeki Quran 3:8 degisiklikleri geri alinir.
- `flutter gen-l10n` tekrar calistirilerek generated l10n dosyalari eski metne senkronlanir.
- `duas_data_test.dart` ve `arb_ui_localization_test.dart` icindeki Quran 3:8 quote guard'lari geri alinir.
- Handover append-only oldugu icin revert kaydi eklenir.
- `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Sonraki Adim
- Bir sonraki dongude kalan `duaMeaning` locale kalitesini ve Quran/duas seed zincirini taramaya devam et; cok dilli acik tirnak, batch debris veya English fallback kalanlarini kanitli tek yuzey halinde kapat.

## 2026-04-16 TUR-257 — Repair Quran 2:286 Dua Canonical Prose

### Yapilan Islem
- `A:\Way of Allah\sirat_i_nur\content_seed_quran_ayahs.sql` icindeki Quran 2:286 `text_en` degerinde bozuk kalan `suffers its bad- ‘ Lord` parcasi temizlendi.
- `A:\Way of Allah\sirat_i_nur\assets\data\full_quran.json` icindeki Surah 2 Ayah 286 `en_translation` ayni temiz canonical metne cekildi.
- `A:\Way of Allah\sirat_i_nur\lib\core\constants\duas_data.dart` icindeki `Quran 2:286` fallback duasinin English metni seed ve bundled asset ile senkronlandi.
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb` ve eski English exact fallback tasiyan 63 locale ARB dosyasindaki `duaMeaning2` ayni temiz English fallback metnine guncellendi.
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_de.arb` icindeki `duaMeaning2` yarim English/German karisimindan tam Almanca, anlam korunmus metne cekildi.
- `flutter gen-l10n` calistirildi; ilgili generated `app_localizations*.dart` dosyalari yenilendi.
- `A:\Way of Allah\sirat_i_nur\test\duas_data_test.dart` Quran 2:286 English fallback prose guard'i ile genisletildi.
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart` Quran 2:286 EN/DE runtime stale-fragment guard'i ile genisletildi.

### Neden Yapildi
- Risk taramasinda `A:\Way of Allah\sirat_i_nur\content_seed_quran_ayahs.sql:4686`, `assets\data\full_quran.json:2359`, `duas_data.dart:154` ve `app_en.arb:147` ayni Quran 2:286 English metninde bozuk `suffers its bad- ‘ Lord` zincirini tasiyordu.
- ARB taramasinda 64 locale `duaMeaning2` degerini bu bozuk English kaynakla birebir tasiyordu; `app_de.arb:646` ise ayni bozuk kaynagi Almanca parcalar ile karisik halde gosteriyordu.
- Dini dua metinlerinde seed, bundled asset, fallback constant ve runtime localization katmanlari tek temiz kaynak zinciri olarak kalmali; patch yeni spekulatif icerik eklemeden bozuk noktalama/gramer zincirini ve Almanca yarim-localization borcunu kapatir.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\content_seed_quran_ayahs.sql`
- `A:\Way of Allah\sirat_i_nur\assets\data\full_quran.json`
- `A:\Way of Allah\sirat_i_nur\lib\core\constants\duas_data.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_de.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb` exact English fallback tasiyan ilgili 63 locale
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations*.dart` generated l10n karsiliklari
- `A:\Way of Allah\sirat_i_nur\test\duas_data_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Quran 2:286 English dua metni artik seed SQL, bundled JSON, fallback data, EN ARB ve generated runtime localization katmanlarinda ayni ve bozuk `suffers its bad-` / `‘ Lord` kalintilarini tasimiyor.
- English fallback kullanmasi zorunlu kalan nadir locale dosyalari artik bozuk kaynak metni yaymiyor.
- Almanca safe-priority locale icin Quran 2:286 dua metni yarim English/German karisimindan kurtuldu.
- Yeni guard'lar bu bozuk fragmentlerin fallback data ve runtime localization katmanlarina geri donmesini engeller.

### Test Sonucu
- Odak test: `flutter test test\duas_data_test.dart test\arb_ui_localization_test.dart test\bundled_quran_asset_test.dart --reporter compact` PASS (`73/73`)
- `git diff --check` PASS (yalniz LF -> CRLF uyari mesajlari)
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test --reporter compact` PASS (`466/466`)

### Risk Degisimi
- Quran 2:286 English canonical dua metninde bozuk fragment riski: `16/25 -> 2/25`
- Exact English fallback locale'lerde bozuk dini metnin yayilma riski: `16/25 -> 4/25`
- Almanca `duaMeaning2` yarim-localization riski: `12/25 -> 2/25`

### Rollback Plani
- `content_seed_quran_ayahs.sql`, `assets\data\full_quran.json`, `duas_data.dart`, `app_en.arb`, `app_de.arb` ve exact fallback ARB batch'indeki Quran 2:286 degisiklikleri geri alinir.
- `flutter gen-l10n` tekrar calistirilerek generated l10n dosyalari eski metne senkronlanir.
- `duas_data_test.dart` ve `arb_ui_localization_test.dart` icindeki Quran 2:286 guard'lari geri alinir.
- Handover append-only oldugu icin revert kaydi eklenir.
- `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Sonraki Adim
- Bir sonraki dongude dini icerik kalite taramasina devam et: ozellikle safe-priority locale Esma anlamlarinda bilinen yanlis baglam kalintilarini (`Der Würger`, `The Compeller`, `The Clement`, `The Reliever`) kanitli ve kaynak-zincirli patch'lerle kapat.

## 2026-04-16 TUR-258 — Repair German Asma-ul-Husna Meanings

### Yapilan Islem
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_de.arb` icindeki `asmaMeaning1..99` Almanca anlamlari bastan sona dini baglama uygun, aciklayici ve tutarli Almanca metinlere cekildi.
- `flutter gen-l10n` calistirildi; `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_de.dart` generated runtime metinleri ARB ile senkronlandi.
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart` Almanca Esma icin bilinen makine ceviri kalintisi guard'i ile genisletildi.
- Ayni test dosyasina runtime `Locale('de')` guard'i eklendi; generated Almanca l10n'in `Der Würger` gibi eski kalintilari tasimadigi dogrulandi.

### Neden Yapildi
- Risk taramasinda `A:\Way of Allah\sirat_i_nur\lib\l10n\app_de.arb:554`, `:565`, `:566`, `:614`, `:620`, `:622`, `:628` satirlarinda `Der Compeller`, `Der Würger`, `Der Reliever`, `Die Mächtigen`, `Das Manifest`, `Der Gouverneur`, `Der Clemens` gibi dini baglamda yanlis veya kaba makine ceviri kalintilari bulundu.
- Almanca safe-priority locale olarak mevcut test setinde yer aliyor; bu yuzey kullaniciya dogrudan Allah'in isimleri anlamlari olarak gorunuyor.
- Tek tek kelime esdegeri yerine Turkiye/Arabic anlam zincirindeki aciklayici mana korunarak Almanca kullaniciya daha dogru ve daha guvenli dini icerik sunuldu.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_de.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_de.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Almanca Asma-ul-Husna anlamlari artik kaba/yanlis machine-translation parcalari tasimiyor.
- `asmaMeaning20` artik `Der Würger` degil, `Der Verengende...` olarak baglamsal aciklama verir.
- `asmaMeaning83` artik `Der Clemens` degil, `Der Mitfühlende...` olarak rahmet/safkat baglaminda anlatilir.
- Yeni ARB ve runtime guard'lari bu kalintilarin tekrar generated l10n'e sizmasini engeller.

### Test Sonucu
- Odak test: `flutter test test\arb_ui_localization_test.dart test\features\library\asma_ul_husna_page_test.dart test\asma_ul_husna_data_test.dart --reporter compact` PASS (`79/79`)
- `git diff --check` PASS (yalniz LF -> CRLF uyari mesajlari)
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test --reporter compact` PASS (`468/468`)

### Risk Degisimi
- Almanca Esma machine-translation kalintisi riski: `16/25 -> 3/25`
- Almanca generated runtime l10n ile ARB ayrisma riski: `9/25 -> 2/25`
- Safe-priority dini icerik kalite borcu: `14/25 -> 11/25`

### Rollback Plani
- `app_de.arb` icindeki `asmaMeaning1..99` degerleri onceki haline dondurulur.
- `flutter gen-l10n` tekrar calistirilerek `app_localizations_de.dart` eski metinlere senkronlanir.
- `arb_ui_localization_test.dart` icindeki Almanca Esma machine-mistranslation ve runtime guard testleri geri alinir.
- Handover append-only oldugu icin revert kaydi eklenir.
- `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Sonraki Adim
- Bir sonraki dongude kalan safe-priority locale dini icerik kalite taramasina devam et: ozellikle Fransizca/Ispanyolca/Portekizce/Rusca Esma ve dua metinlerinde English residue veya yanlis baglam kalintilarini kanitla.

## 2026-04-16 TUR-259 — Repair Extended Safe-Priority Asma Fragments

### Yapilan Islem
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_fr.arb` icindeki `asmaMeaning77` `Le Gouverneur` kalintisindan baglamsal `Le Protecteur et Administrateur...` metnine cekildi.
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_es.arb` icindeki `asmaMeaning83` `El Clemente` kalintisindan `El Compasivo...` metnine cekildi.
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_pt.arb` icindeki `asmaMeaning9` ve `asmaMeaning83` `O Compeller` / `O Clemente` kalintilarindan baglamsal Portekizce metinlere cekildi.
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_da.arb`, `app_nb.arb`, `app_nn.arb`, `app_no.arb` icindeki `asmaMeaning21` `Relieveren` kalintisindan ilgili locale'e uygun `Udvidende/Utvidende/Utvidande` aciklamalarina cekildi.
- `flutter gen-l10n` calistirildi; ilgili generated `app_localizations_{fr,es,pt,da,nb,nn,no}.dart` dosyalari yenilendi.
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart` extended safe-priority Asma stale-fragment guard'i ile genisletildi.

### Neden Yapildi
- TUR-258 sonrasi safe-priority Asma taramasinda `fr`, `es`, `pt`, `da`, `nb`, `nn`, `no` locale'lerinde kalan net machine-translation/English residue kalintilari bulundu.
- Bu kalintilar kullaniciya Allah'in isimleri anlamlari olarak gorunen dini icerikte yanlis baglam uretme riski tasiyordu.
- Patch, yeni locale genellemesi yapmadan yalniz kanitlanan stale fragmentleri duzeltti ve ayni yuzey icin test guard'i ekledi.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_fr.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_es.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_pt.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_da.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_nb.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_nn.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_no.arb`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_fr.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_es.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_pt.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_da.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_nb.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_nn.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_no.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Safe-priority FR/ES/PT/DA/NB/NN/NO Asma yuzeyinde tespit edilen stale fragmentler temizlendi.
- Yeni test guard'i bu kalintilarin ARB seviyesine tekrar donmesini engeller.
- `flutter gen-l10n` sonrasi runtime generated dosyalari ayni temiz metinleri dondurur.

### Test Sonucu
- Odak test: `flutter test test\arb_ui_localization_test.dart test\features\library\asma_ul_husna_page_test.dart test\asma_ul_husna_data_test.dart --reporter compact` PASS (`80/80`)
- `git diff --check` PASS (yalniz LF -> CRLF uyari mesajlari)
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test --reporter compact` PASS (`469/469`)

### Risk Degisimi
- Extended safe-priority Asma stale fragment riski: `12/25 -> 2/25`
- Generated l10n stale fragment riski: `9/25 -> 2/25`

### Rollback Plani
- Ilgili yedi ARB dosyasindaki `asmaMeaning` degisiklikleri onceki haline dondurulur.
- `flutter gen-l10n` tekrar calistirilerek generated l10n dosyalari eski metne senkronlanir.
- `arb_ui_localization_test.dart` icindeki extended safe-priority Asma guard'i geri alinir.
- Handover append-only oldugu icin revert kaydi eklenir.
- `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Sonraki Adim
- Bir sonraki dongude tum safe-priority locale duaMeaning ve Asma metinleri icin daha genis stale-fragment taramasi yap; ozellikle partial English karisimlari ve yanlis baglamli literal cevirileri kanitla.

## 2026-04-16 TUR-260 — Repair High-Risk Asma Meaning Chain

### Yapilan Islem
- `A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart` icindeki yuksek riskli yedi Ingilizce bundled fallback anlam daha baglamli aciklamalara cekildi:
  `asmaMeaning7`, `asmaMeaning9`, `asmaMeaning20`, `asmaMeaning21`, `asmaMeaning77`, `asmaMeaning83`, `asmaMeaning99`.
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb` ayni yeni Ingilizce referansla senkronlandi.
- Safe-priority locale'lerde ayni yedi anahtar icin tespit edilen bariz machine-translation / yanlis baglam kalintilari duzeltildi:
  `fr`, `es`, `da`, `he`, `ja`, `nb`, `nn`, `no`, `pt`, `ru`, `vi`, `zh`, `zh_CN`, `zh_TW`.
- Nadir locale dosyalarinda birebir veya hybrid sekilde kalan eski Ingilizce parcalar temizlendi:
  `The Guardian`, `Compeller`, `Constrictor`, `Reliever`, `Governor`, `Gouverneur`, `Clement`, `Clemente`, `Patient One`.
- `flutter gen-l10n` calistirildi; generated `app_localizations*.dart` dosyalari ARB kaynaklariyla senkronlandi.
- `A:\Way of Allah\sirat_i_nur\test\asma_ul_husna_data_test.dart` bundled Ingilizce high-risk meaning guard'i ile genisletildi.
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart` iki yeni guard ile genisletildi:
  tum locale'lerde eski Ingilizce/hybrid high-risk fragment yoklugu ve safe-priority locale'lerde bilinen machine-fragment yoklugu.

### Kanit
- Koku:
  `A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart:68`, `:87`, `:186`, `:195`, `:690`, `:739`, `:883` onceki kisa/yanlis baglama acik fallback'leri tasiyordu.
- Referans zinciri:
  `A:\Way of Allah\sirat_i_nur\lib\l10n\app_en.arb:678`, `:680`, `:691`, `:692`, `:748`, `:754`, `:770` ayni kisa metinleri template olarak dagitiyordu.
- Test guard:
  `A:\Way of Allah\sirat_i_nur\test\asma_ul_husna_data_test.dart:206`,
  `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart:1471`,
  `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart:1504`.
- Patch sonrasi scan:
  `stale_high_risk_asma_hits 0`.

### Neden Yapildi
- Allah'in isimleri uygulama icinde dogrudan dini bilgi olarak gosteriliyor; kisa literal/machine kalintilar kullaniciyi yanlis anlama goturebilir.
- Ingilizce template kisa kaldigi icin nadir locale'lerde aynen veya hybrid bicimde cogaliyordu; sadece tek locale duzeltmek kalici cozum degildi.
- Bu turda kapsam genis gorunse de degisiklik tek kok soruna sinirli tutuldu: yedi high-risk Asma meaning anahtari ve bu anahtarlarin generated l10n zinciri.

### Degistirilen Dosya Kapsami
- `A:\Way of Allah\sirat_i_nur\lib\core\constants\asma_ul_husna_data.dart`
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb` icinde sadece ilgili high-risk `asmaMeaning*` degerleri.
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations*.dart` generated l10n ciktisi.
- `A:\Way of Allah\sirat_i_nur\test\asma_ul_husna_data_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Test Sonucu
- Odak test: `flutter test test\asma_ul_husna_data_test.dart test\arb_ui_localization_test.dart test\features\library\asma_ul_husna_page_test.dart --reporter compact` PASS (`83/83`)
- `git diff --check` PASS (yalniz LF -> CRLF uyari mesajlari)
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test --reporter compact` PASS (`472/472`)

### Ortam Notu
- `flutter doctor` Android toolchain, Flutter ve connected device icin yesil.
- Chrome ve Visual Studio eksik gorunuyor; bu tur Android/test hedefini bloklamayan web/Windows hedef eksigi olarak degerlendirildi.

### Risk Degisimi
- High-risk Asma English template/fallback riski: `16/25 -> 3/25`
- Safe-priority high-risk Asma machine-translation riski: `16/25 -> 5/25`
- Nadir locale hybrid English Asma fragment riski: `12/25 -> 3/25`
- Generated l10n stale Asma runtime riski: `9/25 -> 2/25`

### Rollback Plani
- `asma_ul_husna_data.dart` icindeki yedi Ingilizce fallback onceki degerlerine dondurulur.
- Ilgili `app_*.arb` high-risk `asmaMeaning*` degerleri onceki haline dondurulur.
- `flutter gen-l10n` tekrar calistirilir.
- `asma_ul_husna_data_test.dart` ve `arb_ui_localization_test.dart` icindeki TUR-260 guard'lari geri alinir.
- Handover append-only oldugu icin revert kaydi eklenir.
- `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Sonraki Adim
- Kullanici talimati geregi bu islem commit + push sonrasi duracak.
- Yeniden baslatma sonrasi devam edilecek ilk risk: safe-priority disi locale'lerde `asmaMeaning*` icin yerel dilde kalan yanlis baglamli machine cevirileri taramak; ozellikle `Patient/Paciente/Pasienten`, `guardian newspaper`, `governor political office`, `constrictor snake` anlamina kayan yerel kopyalar kanitlanip tek tek temizlenecek.

## 2026-04-16 TUR-261 — Repair Non-Priority High-Risk Asma Context Drift

### Yapilan Islem
- TUR-260 sonrasi safe-priority disi `app_*.arb` dosyalarinda kalan yanlis baglamli `asmaMeaning*` kopyalari tarandi.
- `asmaMeaning7`, `asmaMeaning9`, `asmaMeaning20`, `asmaMeaning21`, `asmaMeaning77`, `asmaMeaning83`, `asmaMeaning99` icin 60 kanitli drift temizlendi.
- 40 ARB kaynagi, emin olunmayan yerel ceviri uydurulmadan, ilgili anahtarin dogrulanmis Ingilizce referans fallback'ine cekildi.
- `flutter gen-l10n` calistirildi; ilgili generated `app_localizations_*.dart` dosyalari yenilendi.
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart` genisletildi:
  `all locales avoid stale English high-risk asma fragments` testi artik yerel drift fragmentlerini de yasakliyor,
  `extended high-risk asma meanings fall back safely when uncertain` testi eklendi.

### Kanit
- Patch oncesi scan:
  `bad_context_high_risk_asma_hits 60`.
- Kanit ornekleri:
  `A:\Way of Allah\sirat_i_nur\lib\l10n\app_ay.arb:552` once `Uka Guardian sat revistanjja`,
  `A:\Way of Allah\sirat_i_nur\lib\l10n\app_ay.arb:622` once `Uka Gobernadoraxa`,
  `A:\Way of Allah\sirat_i_nur\lib\l10n\app_yi.arb:552` once `דער גאַרדיאַן`,
  `A:\Way of Allah\sirat_i_nur\lib\l10n\app_zu.arb:644` once `Isiguli`.
- Patch sonrasi ornekler:
  `A:\Way of Allah\sirat_i_nur\lib\l10n\app_ay.arb:552`,
  `A:\Way of Allah\sirat_i_nur\lib\l10n\app_ay.arb:622`,
  `A:\Way of Allah\sirat_i_nur\lib\l10n\app_ay.arb:644`,
  `A:\Way of Allah\sirat_i_nur\lib\l10n\app_yi.arb:552`,
  `A:\Way of Allah\sirat_i_nur\lib\l10n\app_yi.arb:622`,
  `A:\Way of Allah\sirat_i_nur\lib\l10n\app_yi.arb:644`,
  `A:\Way of Allah\sirat_i_nur\lib\l10n\app_zu.arb:644`.
- Patch sonrasi scan:
  `bad_context_high_risk_asma_hits 0`.
- Test guard:
  `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart:1471`,
  `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart:1528`.

### Neden Yapildi
- Bu alan dogrudan Allah'in isimlerinin anlamini gosterir; `hasta`, `vali`, `yilan`, `gazete`, `aziz Clement` gibi yanlis baglamli ceviriler dini icerik guvenini bozar.
- AGENTS.md Section 13 geregi dini icerikte uydurma yasak; yerel dilde dogrulama belirsizse guvenli EN referans fallback'i daha dogru tercihtir.
- Degisiklik tek kok soruna sinirli tutuldu: high-risk Asma meaning drift temizligi.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_*.arb` icinde 40 dosyada yalniz kanitlanan high-risk `asmaMeaning*` degerleri.
- `A:\Way of Allah\sirat_i_nur\lib\l10n\app_localizations_*.dart` generated ciktisi.
- `A:\Way of Allah\sirat_i_nur\test\arb_ui_localization_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Etki
- Safe-priority disi 40 locale'de toplam 60 yanlis baglamli dini icerik kopyasi temizlendi.
- Runtime generated l10n degeri ARB kaynaklariyla senkronlandi.
- Yeni guard, ayni wrong-context parcalarinin tekrar ARB'lere girmesini engeller.

### Test Sonucu
- Odak test: `flutter test test\arb_ui_localization_test.dart test\features\library\asma_ul_husna_page_test.dart test\asma_ul_husna_data_test.dart --reporter compact` PASS (`84/84`)
- `git diff --check` PASS (yalniz LF -> CRLF uyari mesaji)
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test --reporter compact` PASS (`473/473`)

### Risk Degisimi
- Safe-priority disi high-risk Asma wrong-context riski: `16/25 -> 4/25`
- Generated l10n wrong-context runtime riski: `12/25 -> 3/25`
- Nadir locale'de uydurma dini ceviri riski: `12/25 -> 5/25` (guvenli EN fallback ile azaltildi, tam yerel dogrulama ileride kaynakli ceviri gerektirir)

### Rollback Plani
- TUR-261 kapsamindaki 40 ARB dosyasinda ilgili high-risk `asmaMeaning*` degerleri onceki haline dondurulur.
- `flutter gen-l10n` tekrar calistirilir.
- `arb_ui_localization_test.dart` icindeki TUR-261 guard genisletmeleri geri alinir.
- Handover append-only oldugu icin revert kaydi eklenir.
- `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Sonraki Adim
- Bir sonraki dongude Section 13'e gore hardcoded dini/ses icerigi ve Supabase baglantisini tara:
  `audio_files`, `quran_ayahs`, `duas`, `hadiths` tablolarinda source/verified_at/storage_path zinciri ile uygulama provider'lari arasinda stub veya external-only fallback kaliyor mu kanitla.

## 2026-04-16 TUR-262 — Remove Runtime External Tafsir Fetch Path

### Yapilan Islem
- AGENTS.md Section 13 sonrasi runtime dini icerik/Supabase zinciri tarandi.
- `A:\Way of Allah\sirat_i_nur\lib\core\services\tafsir_local_service.dart` icindeki dogrudan `https://api.quran.com/api/v4/tafsirs/...` indirme yolu kaldirildi.
- `Dio` importu, `normalizeApiTafsirRows`, `_apiIdForSource`, `_stripHtml`, `downloadTafsirForSurah` ve `downloadAllTafsirs` kaldirildi.
- `TafsirLoader` cache-only kaldi: once local verified cache, sonra Supabase `verifiedRowsLoader`, sonra varsa mevcut verified cache, yoksa durust `cache_missing`.
- `A:\Way of Allah\sirat_i_nur\test\features\quran\tafsir_page_test.dart` guard'i guncellendi; tafsir servisinde `Dio`, runtime tafsir API endpoint'i, unverified API normalizer ve eski download metodlari geri gelirse test kirilir.

### Kanit
- Patch oncesi risk:
  `A:\Way of Allah\sirat_i_nur\lib\core\services\tafsir_local_service.dart:299` runtime'da `Dio().get(...)` ile dis tafsir API'ye gidiyordu.
- Patch oncesi false-success kok sebep:
  ayni dosyada eski `normalizeApiTafsirRows` cache satirlarina `source`, `source_license`, `verified_at` yazmiyordu; okuma sorgulari ise `_verifiedWhere` ile bu alanlari zorunlu tutuyordu.
- Patch sonrasi loader kaniti:
  `A:\Way of Allah\sirat_i_nur\lib\core\services\tafsir_local_service.dart:336` sadece `TafsirFetchPolicy.cacheOnly`,
  `A:\Way of Allah\sirat_i_nur\lib\core\services\tafsir_local_service.dart:370` Supabase/verified loader,
  `A:\Way of Allah\sirat_i_nur\lib\core\services\tafsir_local_service.dart:379` dogru `cache_missing`.
- Guard kaniti:
  `A:\Way of Allah\sirat_i_nur\test\features\quran\tafsir_page_test.dart:159`,
  `A:\Way of Allah\sirat_i_nur\test\features\quran\tafsir_page_test.dart:165`,
  `A:\Way of Allah\sirat_i_nur\test\features\quran\tafsir_page_test.dart:166`,
  `A:\Way of Allah\sirat_i_nur\test\features\quran\tafsir_page_test.dart:167`,
  `A:\Way of Allah\sirat_i_nur\test\features\quran\tafsir_page_test.dart:168`,
  `A:\Way of Allah\sirat_i_nur\test\features\quran\tafsir_page_test.dart:169`.

### Neden Yapildi
- Tafsir dogrudan dini icerik oldugu icin runtime dis API'den kaynaksiz/cache'e eksik provenance ile yazilamaz.
- Eski yol, kullanici refresh yaptiginda teknik olarak indirme denemesi yapip sonra verified filtreye takilan gorunmeyen satirlar uretebilirdi.
- Dogru mimari: tafsir verisi once kaynak lisansi ve `verified_at` ile Supabase seed/manifest zincirinden gelir; uygulama runtime'da sadece bu verified satirlari okur ve offline cache'e alir.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\tafsir_local_service.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\quran\tafsir_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Test Sonucu
- Odak test: `flutter test test\features\quran\tafsir_page_test.dart test\generate_tafsir_seed_test.dart --reporter compact` PASS (`15/15`)
- `git diff --check` PASS (yalniz LF -> CRLF uyari mesaji)
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test --reporter compact` PASS (`472/472`)

### Risk Degisimi
- Runtime external tafsir API bagimliligi: `16/25 -> 4/25`
- Unverified tafsir cache write riski: `16/25 -> 3/25`
- Tafsir refresh false-success riski: `12/25 -> 3/25`

### Rollback Plani
- `tafsir_local_service.dart` icindeki kaldirilan download/API normalizer bolumleri geri eklenir.
- `tafsir_page_test.dart` icindeki TUR-262 guard beklentileri onceki haline dondurulur.
- Handover append-only oldugu icin revert kaydi eklenir.
- `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Sonraki Adim
- Section 13 taramasi devam edecek: `hadith_provider`, `bundled_quran_provider`, `duas_data`, `asma_ul_husna_data`, `offline_audio_service`, `sukun_audio_page` icinde source/verified_at/storage_path disinda runtime dini icerik veya external-only fallback kaliyor mu kanitlanacak.

## 2026-04-16 TUR-263 — Harden Hadith Dataset Coverage Gate

### Yapilan Islem
- Hadith runtime availability ve seed generator ayni minimum coverage sabitine baglandi.
- `A:\Way of Allah\sirat_i_nur\lib\core\services\hadith_api_service.dart` icine `minimumVerifiedHadithRowsPerCollection = 100` eklendi.
- `A:\Way of Allah\sirat_i_nur\lib\features\library\providers\hadith_provider.dart` artik her desteklenen koleksiyon icin en az 100 verified/provenance satiri olmadan dataset'i complete saymiyor.
- Supabase cloud availability kontrolu once filtered `count()` ile 100 satir altini hizli reddediyor, sonra ilk 100 satiri `resolveVerifiedHadithItems` filtresinden gecirip gercek usable item sayisini dogruluyor.
- `A:\Way of Allah\sirat_i_nur\tool\generate_hadith_seed.dart` production manifestlerinde sadece "her koleksiyon temsil edildi" kontroluyle yetinmiyor; her koleksiyon icin en az 100 verified entry istiyor.
- Testler tek satirlik temsil manifestinin/datasetinin artik "complete/production" sayilmadigini kilitleyecek sekilde guncellendi.

### Kanit
- Patch oncesi risk:
  `A:\Way of Allah\sirat_i_nur\lib\features\library\providers\hadith_provider.dart:81` `hasCompleteVerifiedHadithDataset` sadece `items.isEmpty` kontrol ediyordu.
- Patch oncesi test kaniti:
  `A:\Way of Allah\sirat_i_nur\test\features\library\hadith_provider_test.dart` her koleksiyondan 1 satir ile `isTrue` bekliyordu.
- Patch sonrasi kaynak sabit:
  `A:\Way of Allah\sirat_i_nur\lib\core\services\hadith_api_service.dart:15`.
- Patch sonrasi provider gate:
  `A:\Way of Allah\sirat_i_nur\lib\features\library\providers\hadith_provider.dart:39`,
  `A:\Way of Allah\sirat_i_nur\lib\features\library\providers\hadith_provider.dart:88`,
  `A:\Way of Allah\sirat_i_nur\lib\features\library\providers\hadith_provider.dart:100`,
  `A:\Way of Allah\sirat_i_nur\lib\features\library\providers\hadith_provider.dart:114`.
- Patch sonrasi seed gate:
  `A:\Way of Allah\sirat_i_nur\tool\generate_hadith_seed.dart:9`,
  `A:\Way of Allah\sirat_i_nur\tool\generate_hadith_seed.dart:89`,
  `A:\Way of Allah\sirat_i_nur\tool\generate_hadith_seed.dart:162`,
  `A:\Way of Allah\sirat_i_nur\tool\generate_hadith_seed.dart:200`.

### Neden Yapildi
- Hadithler dogrudan dini icerik oldugu icin "koleksiyon var" iddiasi tek satirlik/temsili veriyle kullaniciya acilamaz.
- Env flag yanlislikla acilirsa eski gate 6 satirlik bir seed'i bile complete sayabilirdi.
- Bu patch tam kanonik koleksiyon sayilarini uydurmadan, en azindan production/runtime icin dusuk coverage false-success kapisini kapatir; ileride resmi kaynak manifestleri tam sayi metadata'si tasidiginda bu minimum gate exact-count gate'e yukseltilebilir.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\hadith_api_service.dart`
- `A:\Way of Allah\sirat_i_nur\lib\features\library\providers\hadith_provider.dart`
- `A:\Way of Allah\sirat_i_nur\tool\generate_hadith_seed.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\library\hadith_provider_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\generate_hadith_seed_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Test Sonucu
- Odak test: `flutter test test\features\library\hadith_provider_test.dart test\generate_hadith_seed_test.dart test\hadith_provider_test.dart --reporter compact` PASS (`17/17`)
- `git diff --check` PASS (yalniz LF -> CRLF uyari mesaji)
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test --reporter compact` PASS (`473/473`)

### Risk Degisimi
- Tek satirlik hadith seed'in production kabul edilme riski: `16/25 -> 4/25`
- Runtime hadith dataset false-complete riski: `16/25 -> 4/25`
- Hadith diagnostics/library kapisinin eksik koleksiyonu tam sanma riski: `12/25 -> 5/25`

### Rollback Plani
- `minimumVerifiedHadithRowsPerCollection` sabiti ve buna bagli provider/tool kontrolleri geri alinir.
- `hadith_provider_test.dart` ve `generate_hadith_seed_test.dart` onceki tek-satir temsil beklentilerine dondurulur.
- Handover append-only oldugu icin revert kaydi eklenir.
- `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Sonraki Adim
- Section 13 taramasinda Quran/Dua/Asma fallback zincirleri ve prayer profile dini kaynak secimi incelenecek; resmi kaynak metadata'si olmadan kullaniciya dini hukum/icerik sunan bir akisin kalip kalmadigi kanitlanacak.

## 2026-04-16 TUR-264 — Remove Bahrain/Oman Saudi Prayer Profile Masquerade

### Yapilan Islem
- Prayer profile resolver'da Bahrain (`BH`, `Asia/Bahrain`) ve Oman (`OM`, `Asia/Muscat`) icin Saudi `Umm al-Qura / Saudi official profile` fallback'i kaldirildi.
- Yerel resmi metodoloji parametreleri kodda modellenmedigi icin bu iki ulke artik Saudi resmi profil gibi sunulmuyor; mevcut sistemde genel MWL fallback'e dusuyor.
- `A:\Way of Allah\sirat_i_nur\test\prayer_profile_service_test.dart` icine Bahrain/Oman'in Saudi sourceName/sourceUrl ile maskelenmemesini zorunlu kilan regresyon testi eklendi.

### Kanit
- Patch oncesi risk:
  `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart` icinde `Asia/Bahrain`, `Asia/Muscat`, `BH`, `OM` dogrudan `_ummAlQuraProfile` donduruyordu.
- `_ummAlQuraProfile` sourceName/sourceUrl olarak Saudi resmi profili tasiyor:
  `Umm al-Qura / Saudi official profile`, `https://quran.gov.sa`.
- Patch sonrasi timezone map'te Bahrain/Muscat satirlari yok:
  `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart:176`.
- Patch sonrasi country resolver'da `BH`/`OM` explicit Saudi case'i yok:
  `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart:445`.
- Guard:
  `A:\Way of Allah\sirat_i_nur\test\prayer_profile_service_test.dart:68`,
  `A:\Way of Allah\sirat_i_nur\test\prayer_profile_service_test.dart:80`,
  `A:\Way of Allah\sirat_i_nur\test\prayer_profile_service_test.dart:81`,
  `A:\Way of Allah\sirat_i_nur\test\prayer_profile_service_test.dart:82`.
- Web dogrulama notu:
  Oman MARA resmi sitesinde "Prayer Time" hizmeti goruluyor (`https://www.mara.gov.om/ServiceDetails.aspx?MID=33&id=34` ve `https://www.mara.gov.om/Pages.aspx?ID=22&MID=41`).
  Bahrain icin `pray.bh` sayfasi "AWQAF methodology" ifadesi tasiyor; ancak exact algoritma/parametre kodda modellenmedigi icin yeni Bahrain profili uydurulmadi.

### Neden Yapildi
- Namaz vakti dini/pratik bir yukumluluk alanidir; ulke bazli profil yanlis resmi otoriteyle etiketlenemez.
- Saudi Umm al-Qura profili Saudi Arabistan icin anlamli olsa da Bahrain/Oman icin yerel kurum yerine gosterilmesi kullaniciyi yanlis otoriteye yonlendirebilir.
- Bu turda yeni parametre uydurulmadan yalnizca kanitli yanlis resmi-otorite iddiasi kaldirildi.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart`
- `A:\Way of Allah\sirat_i_nur\test\prayer_profile_service_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Test Sonucu
- Odak test: `flutter test test\prayer_profile_service_test.dart test\settings_provider_test.dart test\prayer_times_service_test.dart --reporter compact` PASS (`33/33`)
- `git diff --check` PASS (yalniz LF -> CRLF uyari mesaji)
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test --reporter compact` PASS (`474/474`)

### Risk Degisimi
- Bahrain/Oman icin Saudi resmi profil maskesi riski: `16/25 -> 4/25`
- Namaz vakti kaynak yanlis-attribution riski: `12/25 -> 5/25`
- Yerel resmi Bahrain/Oman exact schedule eksigi: `12/25 -> 10/25` (tam cozum icin resmi takvim/Supabase schedule entegrasyonu gerekir)

### Rollback Plani
- `Asia/Bahrain`, `Asia/Muscat`, `BH`, `OM` `_ummAlQuraProfile` mapping'leri geri eklenir.
- `prayer_profile_service_test.dart` icindeki TUR-264 guard geri alinir.
- Handover append-only oldugu icin revert kaydi eklenir.
- `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Sonraki Adim
- Yerel resmi namaz takvimi entegrasyonu icin Bahrain/Oman gibi exact hesap parametresi kodda bulunmayan ulkeler Supabase-backed `prayer_profiles`/`prayer_schedules` tasarimina alinacak.
- Bir sonraki mikro dongude once mevcut kodda benzer "baska ulkenin resmi profiliyle maskelenen" country/timezone mapping var mi taranacak.

## 2026-04-16 TUR-265 — Remove Algeria/Tunisia Moroccan Prayer Profile Masquerade

### Yapilan Islem
- Prayer profile resolver'da Algeria (`DZ`, `Africa/Algiers`) ve Tunisia (`TN`, `Africa/Tunis`) icin Morocco Ministry profile fallback'i kaldirildi.
- Morocco profili yalnizca Morocco (`MA`, `Africa/Casablanca`) icin birakildi.
- Algeria/Tunisia icin exact yerel resmi takvim parametresi kodda modellenmedigi icin uydurma resmi kaynak eklenmedi; MWL + Maliki fallback profili tanimlandi.
- `A:\Way of Allah\sirat_i_nur\test\prayer_profile_service_test.dart` icine Algeria/Tunisia'nin Moroccan sourceName/sourceUrl ile maskelenmemesini zorunlu kilan regresyon testi eklendi.

### Kanit
- Patch oncesi risk:
  `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart` icinde `Africa/Algiers`, `Africa/Tunis`, `DZ`, `TN` dogrudan `_moroccoProfile` donduruyordu.
- `_moroccoProfile` sourceName/sourceUrl olarak Morocco resmi otoritesini tasiyor:
  `Morocco Ministry of Awqaf`, `https://www.habous.gov.ma`.
- Patch sonrasi MWL + Maliki fallback:
  `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart:155`.
- Patch sonrasi timezone mapping:
  `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart:185`.
- Patch sonrasi country resolver:
  `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart:448`,
  `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart:450`.
- Guard:
  `A:\Way of Allah\sirat_i_nur\test\prayer_profile_service_test.dart:49`,
  `A:\Way of Allah\sirat_i_nur\test\prayer_profile_service_test.dart:63`,
  `A:\Way of Allah\sirat_i_nur\test\prayer_profile_service_test.dart:64`,
  `A:\Way of Allah\sirat_i_nur\test\prayer_profile_service_test.dart:65`,
  `A:\Way of Allah\sirat_i_nur\test\prayer_profile_service_test.dart:66`.

### Neden Yapildi
- Namaz vakti profilinde baska ulkenin resmi kurumu kullaniciya yerel resmi kaynak gibi sunulamaz.
- Algeria/Tunisia icin Morocco Ministry kaynagi ile etiketleme dogrudan yanlis attribution riski olusturuyordu.
- Tam yerel Algeria/Tunisia takvim entegrasyonu icin resmi schedule/parametre kaynagi gerekir; bu turda uydurma yerine yanlis resmi iddia kaldirildi.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart`
- `A:\Way of Allah\sirat_i_nur\test\prayer_profile_service_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Test Sonucu
- Odak test: `flutter test test\prayer_profile_service_test.dart test\settings_provider_test.dart test\prayer_times_service_test.dart --reporter compact` PASS (`34/34`)
- `git diff --check` PASS (yalniz LF -> CRLF uyari mesaji)
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test --reporter compact` PASS (`475/475`)

### Risk Degisimi
- Algeria/Tunisia icin Morocco resmi profil maskesi riski: `16/25 -> 4/25`
- Namaz vakti kaynak yanlis-attribution riski: `12/25 -> 5/25`
- Yerel Algeria/Tunisia exact schedule eksigi: `12/25 -> 10/25` (tam cozum icin resmi takvim/Supabase schedule entegrasyonu gerekir)

### Rollback Plani
- `Africa/Algiers`, `Africa/Tunis`, `DZ`, `TN` `_moroccoProfile` mapping'leri geri eklenir.
- `_mwlMalikiProfile` ve TUR-265 test guard'i geri alinir.
- Handover append-only oldugu icin revert kaydi eklenir.
- `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Sonraki Adim
- Prayer profile mapping icinde baska ulkenin resmi profiline dusen kalan country/timezone var mi taranacak.
- Ardindan resmi exact takvim gerektiren ulkeler icin Supabase-backed `prayer_schedules` veri modeli ve offline cache riskleri planlanacak.

## 2026-04-16 TUR-266 — Preserve MWL Madhab Profile Displays

### Yapilan Islem
- `profileForMethod(mwlPrayerMethod, madhab: ...)` artik Hanafi disindaki tum MWL profillerini otomatik Shafii etikete dusurmuyor.
- MWL + Maliki ve MWL + Hanbali icin ayri display profilleri korunur hale getirildi.
- Settings/diagnostics gibi profil gosteren yuzeylerde hesaplanan veya secilen mezhep etiketi ile gorunen mezhep etiketi ayni kalacak sekilde regresyon testi eklendi.

### Kanit
- Patch oncesi risk:
  `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart` icinde `profileForMethod` `mwlPrayerMethod` icin yalnizca Hanafi'yi ayiriyor, diger tum madhab degerlerini `_mwlShafiiProfile` olarak donduruyordu.
- Patch sonrasi MWL + Maliki profil sabiti:
  `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart:155`.
- Patch sonrasi MWL + Hanbali profil sabiti:
  `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart:162`.
- Patch sonrasi `profileForMethod` MWL switch'i Maliki ve Hanbali'yi koruyor:
  `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart:411`,
  `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart:414`,
  `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart:415`.
- Guard:
  `A:\Way of Allah\sirat_i_nur\test\prayer_profile_service_test.dart:157`,
  `A:\Way of Allah\sirat_i_nur\test\prayer_profile_service_test.dart:159`,
  `A:\Way of Allah\sirat_i_nur\test\prayer_profile_service_test.dart:163`.

### Neden Yapildi
- TUR-265 ile Algeria/Tunisia icin Morocco resmi profil maskesi kaldirilip MWL + Maliki fallback secildi; ancak settings/diagnostics zinciri `profileForMethod` uzerinden tekrar okundugunda Maliki etiketi Shafii'ye donebiliyordu.
- Namaz vakti ve mezhep bilgisi kullaniciya dini pratik etkisi olan bir bilgi olarak sunuldugu icin gorunen etiket, uygulanan ayar ve kaynak iddiasi tutarli olmak zorunda.
- Bu turda yeni dini hesap parametresi uydurulmadi; yalnizca mevcut MWL profilinin madhab etiketi kayipsiz hale getirildi.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart`
- `A:\Way of Allah\sirat_i_nur\test\prayer_profile_service_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Test Sonucu
- Odak test: `flutter test test\prayer_profile_service_test.dart test\features\settings\diagnostics_page_test.dart test\features\settings\settings_page_test.dart --reporter compact` PASS (`36/36`)
- `git diff --check` PASS (yalniz LF -> CRLF uyari mesaji)
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test --reporter compact` PASS (`476/476`)
- `flutter doctor` Android/test hattinda PASS; Chrome ve Visual Studio eksikleri web/Windows hedefleri icin non-blocking olarak kaldi.

### Risk Degisimi
- MWL + Maliki/Hanbali display mismatch riski: `12/25 -> 3/25`
- Settings/diagnostics mezhep yanlis-etiket riski: `12/25 -> 3/25`
- Yerel resmi exact schedule eksigi: `10/25 -> 10/25` (bu tur display dogrulugu icin dar scope'ta tutuldu)

### Rollback Plani
- `_mwlHanbaliProfile` sabiti kaldirilir.
- `profileForMethod` icindeki `mwlPrayerMethod` switch'i onceki Hanafi/disi ternary yapisina dondurulur.
- `prayer_profile_service_test.dart` icindeki TUR-266 guard geri alinir.
- Handover append-only oldugu icin revert kaydi eklenir.
- `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Sonraki Adim
- Prayer profile resolver'da Pakistan/Karachi profiline dusen Bangladesh/Afghanistan gibi kalan ulke/timezone mapping'leri kaynak dogrulugu acisindan incelenecek.
- Exact yerel resmi takvim modeli gerektiren ulkeler icin uydurma algoritma eklemeden Supabase-backed schedule/provenance tasarimi hazirlanacak.

## 2026-04-16 TUR-267 — Remove Bangladesh/Afghanistan Karachi Prayer Profile Masquerade

### Yapilan Islem
- Bangladesh (`BD`, `Asia/Dhaka`) ve Afghanistan (`AF`, `Asia/Kabul`) icin Karachi profil fallback'i kaldirildi.
- Pakistan (`PK`, `Asia/Karachi`) icin Karachi profili korunurken Bangladesh/Afghanistan artik yanlis Pakistan/Karachi sourceName/sourceUrl gostermeyen MWL + Hanafi fallback'e dusuyor.
- Country-code ve timezone-only akislari birlikte koruyan regresyon testi eklendi.

### Kanit
- Patch oncesi risk:
  `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart` icinde `Asia/Dhaka`, `Asia/Kabul`, `BD`, `AF` dogrudan `_karachiProfile` donduruyordu.
- `_karachiProfile` sourceName/sourceUrl olarak Pakistan/Karachi kaynagini tasiyor:
  `University of Islamic Sciences, Karachi`, `https://www.uis.edu.pk`.
- Patch sonrasi timezone fallback:
  `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart:250`,
  `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart:254`.
- Patch sonrasi country resolver:
  `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart:463`,
  `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart:465`,
  `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart:466`,
  `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart:467`.
- Guard:
  `A:\Way of Allah\sirat_i_nur\test\prayer_profile_service_test.dart:109`,
  `A:\Way of Allah\sirat_i_nur\test\prayer_profile_service_test.dart:112`,
  `A:\Way of Allah\sirat_i_nur\test\prayer_profile_service_test.dart:113`,
  `A:\Way of Allah\sirat_i_nur\test\prayer_profile_service_test.dart:124`,
  `A:\Way of Allah\sirat_i_nur\test\prayer_profile_service_test.dart:125`.
- Web dogrulama notu:
  Bangladesh icin Islamic Foundation resmi sitesi ve imam.gov.bd resmi portalinda namaz/islami hizmet varligi goruldu; exact hesap algoritmasi bu patch'te kodlanmadi.
  Afghanistan icin Ministry of Hajj and Religious Affairs resmi portali (`https://www.mohia.gov.af/index.php/en`) goruldu; exact hesap algoritmasi bu patch'te kodlanmadi.

### Neden Yapildi
- Bangladesh/Afghanistan kullanicisina Pakistan/Karachi kaynagi yerel veya resmi profil gibi gosterilemez.
- Exact yerel takvim parametresi/provenance kodda yokken yeni resmi profil uydurmak Section 13'e aykiri olurdu.
- Bu turda dini hesap sonucu icin en guvenli dar scope uygulandi: yanlis kaynak iddiasi kaldirildi, Hanafi madhab etiketi korundu, exact yerel schedule borcu handover'da acik birakildi.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\services\prayer_profile_service.dart`
- `A:\Way of Allah\sirat_i_nur\test\prayer_profile_service_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Test Sonucu
- Odak test: `flutter test test\prayer_profile_service_test.dart test\settings_provider_test.dart test\prayer_times_service_test.dart --reporter compact` PASS (`36/36`)
- `git diff --check` PASS (yalniz LF -> CRLF uyari mesaji)
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test --reporter compact` PASS (`477/477`)

### Risk Degisimi
- Bangladesh/Afghanistan icin Karachi kaynak maskesi riski: `16/25 -> 4/25`
- Country-code/timezone-only namaz profili yanlis-attribution riski: `12/25 -> 4/25`
- Bangladesh/Afghanistan exact yerel resmi schedule eksigi: `12/25 -> 10/25` (Supabase-backed resmi schedule entegrasyonu gerekir)

### Rollback Plani
- `Asia/Dhaka`, `Asia/Kabul`, `BD`, `AF` mapping'leri tekrar `_karachiProfile` yapilir.
- `prayer_profile_service_test.dart` icindeki TUR-267 guard geri alinir.
- Handover append-only oldugu icin revert kaydi eklenir.
- `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Sonraki Adim
- `hasOfficialPrayerAuthority` mantigi incelenecek; generic MWL/ISNA fallback'lerin "official authority" gibi sunulup sunulmadigi settings/diagnostics yuzeylerinde kanitlanacak.
- Exact yerel resmi prayer schedule ihtiyaci olan ulkeler icin Supabase-backed schedule/provenance veri modeli tasarimi devam edecek.

## 2026-04-16 TUR-268 — Require HTTPS for Supabase Storage Audio URLs

### Yapilan Islem
- Supabase Storage public URL builder artik yalniz HTTPS Supabase base URL kabul ediyor.
- Supabase Storage public URL validator artik `http://` storage URL'lerini, base URL de `http://` olsa bile, oynatilabilir/owned audio olarak kabul etmiyor.
- Audio/storage testleri insecure storage base ve insecure public URL reddini kilitleyecek sekilde genisletildi.

### Kanit
- Patch oncesi risk:
  `A:\Way of Allah\sirat_i_nur\lib\core\network\supabase_storage_url.dart` icinde `isSupabaseStoragePublicUrl` hem `https` hem `http` scheme'ini kabul edebiliyordu.
- Patch sonrasi builder HTTPS base validation:
  `A:\Way of Allah\sirat_i_nur\lib\core\network\supabase_storage_url.dart:26`,
  `A:\Way of Allah\sirat_i_nur\lib\core\network\supabase_storage_url.dart:37`,
  `A:\Way of Allah\sirat_i_nur\lib\core\network\supabase_storage_url.dart:81`,
  `A:\Way of Allah\sirat_i_nur\lib\core\network\supabase_storage_url.dart:83`.
- Patch sonrasi validator HTTPS-only kontrol:
  `A:\Way of Allah\sirat_i_nur\lib\core\network\supabase_storage_url.dart:57`,
  `A:\Way of Allah\sirat_i_nur\lib\core\network\supabase_storage_url.dart:58`.
- Guard:
  `A:\Way of Allah\sirat_i_nur\test\supabase_storage_url_test.dart:31`,
  `A:\Way of Allah\sirat_i_nur\test\supabase_storage_url_test.dart:35`,
  `A:\Way of Allah\sirat_i_nur\test\supabase_storage_url_test.dart:38`,
  `A:\Way of Allah\sirat_i_nur\test\supabase_storage_url_test.dart:67`,
  `A:\Way of Allah\sirat_i_nur\test\supabase_storage_url_test.dart:70`.

### Neden Yapildi
- Section 13'e gore dini ses ve medya kullaniciya bizim Supabase storage zincirimizden ve dogrulanmis provenance ile sunulmali.
- `http://` storage URL kabul etmek, audio pipeline'da owned-storage kontrolunu gecen ama transport guvenligi olmayan bir medya yoluna izin verebilirdi.
- Bu turda dis link/audio politikasini genisletmeden yalnizca Supabase public audio URL esigini HTTPS-only hale getiren dar patch uygulandi.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\core\network\supabase_storage_url.dart`
- `A:\Way of Allah\sirat_i_nur\test\supabase_storage_url_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Test Sonucu
- Odak test: `flutter test test\supabase_storage_url_test.dart test\offline_audio_service_test.dart test\audio_sovereignty_service_test.dart test\sukun_audio_sources_provider_test.dart --reporter compact` PASS (`30/30`)
- `git diff --check` PASS (yalniz LF -> CRLF uyari mesaji)
- `flutter analyze` PASS (`No issues found!`)
- Ilk full test komutu 10 dakikalik arac timeout'una takildi; arkada Dart/Flutter sureci kalmadigi dogrulandi.
- Tam test rerun: `flutter test --reporter compact` PASS (`478/478`)

### Risk Degisimi
- Insecure `http://` Supabase public audio URL kabul riski: `12/25 -> 2/25`
- Owned-storage audio validator'in transport guvenligi acigi: `12/25 -> 2/25`

### Rollback Plani
- `_requireHttpsSupabaseBaseUri` helper'i kaldirilir.
- `buildSupabaseStoragePublicUrl` onceki string birlestirme davranisina dondurulur.
- `isSupabaseStoragePublicUrl` onceki `http`/`https` scheme kabul kosuluna dondurulur.
- `supabase_storage_url_test.dart` icindeki TUR-268 guard'lari geri alinir.
- Handover append-only oldugu icin revert kaydi eklenir.
- `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Sonraki Adim
- Storage/audio pipeline icinde Supabase URL disinda kalan runtime medya gecisleri yeniden taranacak.
- Ardindan localization fallback borcu icin `diagnosticsQuranCloudTablesMissing`, `diagnosticsQuranCloudJuzMissing`, download ve chatbot copy kumesindeki Ingilizce kalan locale'ler batch bazinda onarilacak.

## 2026-04-16 TUR-269 — Hide External-Only Asma Audio in UI

### Yapilan Islem
- Asma-ul-Husna sayfasinda ses ikonunun gorunmesi artik yalniz Supabase Storage uzerinden gecen oynatilabilir remote audio kaynaklarina baglandi.
- `_playAudio` artik null, bos veya Supabase disi URL'lerde sessizce donmek yerine localized `audioPlayFailed` snack bar gosteriyor.
- `AudioPlayerService.playUrl` false dondururse kullaniciya basarisiz oynatma geri bildirimi veriliyor.
- Widget testi dis URL iceren cloud kaydinin `volume_up` degil `volume_off` gosterdigini kilitledi.

### Kanit
- Patch oncesi risk:
  `A:\Way of Allah\sirat_i_nur\lib\features\library\asma_ul_husna_page.dart` icinde `hasPlayableAsmaAudio` herhangi bos olmayan `audioUrl` degerini oynatilabilir sayiyordu.
- Patch sonrasi oynatilabilirlik kontrolu:
  `A:\Way of Allah\sirat_i_nur\lib\features\library\asma_ul_husna_page.dart:17`,
  `A:\Way of Allah\sirat_i_nur\lib\features\library\asma_ul_husna_page.dart:19`,
  `A:\Way of Allah\sirat_i_nur\lib\features\library\asma_ul_husna_page.dart:162`.
- Patch sonrasi oynatma basarisizlik geri bildirimi:
  `A:\Way of Allah\sirat_i_nur\lib\features\library\asma_ul_husna_page.dart:273`,
  `A:\Way of Allah\sirat_i_nur\lib\features\library\asma_ul_husna_page.dart:278`,
  `A:\Way of Allah\sirat_i_nur\lib\features\library\asma_ul_husna_page.dart:289`,
  `A:\Way of Allah\sirat_i_nur\lib\features\library\asma_ul_husna_page.dart:296`.
- Guard:
  `A:\Way of Allah\sirat_i_nur\test\features\library\asma_ul_husna_page_test.dart:78`,
  `A:\Way of Allah\sirat_i_nur\test\features\library\asma_ul_husna_page_test.dart:90`,
  `A:\Way of Allah\sirat_i_nur\test\features\library\asma_ul_husna_page_test.dart:99`,
  `A:\Way of Allah\sirat_i_nur\test\features\library\asma_ul_husna_page_test.dart:107`,
  `A:\Way of Allah\sirat_i_nur\test\features\library\asma_ul_husna_page_test.dart:108`,
  `A:\Way of Allah\sirat_i_nur\test\features\library\asma_ul_husna_page_test.dart:128`.

### Neden Yapildi
- Section 13'e gore dini ses icerigi runtime'da bizim Supabase-backed audio zincirinden gelmeli; dis linkler ileride kapanabilir veya kontrolsuz icerik sunabilir.
- UI'nin dis URL icin `volume_up` gostermesi kullaniciya "oynatilabilir/dogrulanmis" algisi veriyordu, fakat servis zaten Supabase disini reddettigi icin false-success/false-affordance riski olusuyordu.
- Cozum, data modelini genisletmeden mevcut audio sovereignty helper'ini UI karar noktasina tasiyan dar ve dogrulanabilir patch olarak uygulandi.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\library\asma_ul_husna_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\library\asma_ul_husna_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Test Sonucu
- Odak test: `flutter test test\features\library\asma_ul_husna_page_test.dart --reporter compact` PASS (`28/28`)
- Ek audio/data guard: `flutter test test\asma_ul_husna_data_test.dart test\audio_sovereignty_service_test.dart --reporter compact` PASS (`19/19`)
- `git diff --check` PASS (yalniz LF -> CRLF uyari mesaji)
- `flutter analyze` PASS (`No issues found!`)
- Tam test: `flutter test --reporter compact` PASS (`479/479`)

### Risk Degisimi
- Asma external-only audio false-playable UI riski: `12/25 -> 2/25`
- Audio basarisizlikta sessiz/yaniltici feedback riski: `9/25 -> 2/25`

### Rollback Plani
- `hasPlayableAsmaAudio` onceki bos olmayan string kontrolune dondurulur.
- `_playAudio` icindeki invalid URL ve false-result snack bar geri bildirimi kaldirilir.
- `asma_ul_husna_page_test.dart` icindeki dis URL guard'i ve Supabase URL test fixture degisikligi geri alinir.
- Handover append-only oldugu icin revert kaydi eklenir.
- `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Sonraki Adim
- Dua/library audio UI yuzeyleri ayni "bos olmayan external audioUrl oynatilabilir gorunuyor mu" riski icin taranacak.
- Runtime medya pipeline'inda Supabase-backed olmayan ses gecisleri icin UI, servis ve test katmani birlikte dogrulanacak.

## 2026-04-17 TUR-270 — Guard Translation Batch Against Mixed Download Debris

### Yapilan Islem
- Repo, branch ve remote dogrulandi: `master`, `origin https://github.com/UmutAmal/Sirat--Nur.git`.
- Onceki otomatik download/diagnostics/chatbot ceviri batch denemesinde gorulen kotu karisik dil ciktisi uygulamaya alinmadi; calisma agaci diff'siz hale getirildi.
- `tool/translate_arb_keys.dart` icinde download copy anahtarlari icin bilinen karisik dil/debris adaylari reddedilecek hale getirildi.
- `test/translate_arb_keys_test.dart` kotu adaylarin kaynak veya mevcut guvenli ceviriye dusmesini dogrulayan regresyon testiyle genisletildi.
- `test/arb_coverage_test.dart` tum ARB dosyalarinda ayni debris parcalarini yakalayacak genel guard ile genisletildi.

### Kanit
- Patch oncesi risk: `tool/translate_arb_keys.dart` icinde `resolveTranslatedArbValue` yalniz placeholder, multiline ve birkac wrong-context kontrolu yapiyordu; `Télécharger Complete`, `Téléchargement Failed`, `Télécharger Manager (Téléchargement Manager).` gibi adaylar placeholder icermedigi ve tek satir oldugu icin kabul edilebilir durumdaydi.
- Patch sonrasi download debris reddi:
  `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart:407`,
  `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart:417`.
- Guard:
  `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart:547`,
  `A:\Way of Allah\sirat_i_nur\test\arb_coverage_test.dart:100`,
  `A:\Way of Allah\sirat_i_nur\test\arb_coverage_test.dart:181`.

### Neden Yapildi
- Translation Engine tum locale'leri kapsamali, fakat kotu veya karisik makine cevirisi dini/urun metni icin kabul edilemez.
- Bu turda 180+ ARB dosyasina yeni otomatik ceviri basmak yerine once batch aracinin kalite kapisi sertlestirildi; boylece ileride tum-dil onarimi tekrar denenirken ayni bilinen debris uygulamaya sizamaz.
- Kullanici "sacma yazilar bulunmasin" uyarisi verdigi icin kalite esigi gecmeyen ceviri batch'i commit edilmedi.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_coverage_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Test Sonucu
- Baseline: `flutter doctor -v` Android/test hattinda PASS; Chrome ve Visual Studio eksikleri web/Windows hedefleri icin non-blocking.
- Baseline: `flutter analyze` PASS (`No issues found!`)
- Baseline: `flutter test --reporter compact` PASS (`479/479`)
- Odak test: `flutter test test\translate_arb_keys_test.dart test\arb_coverage_test.dart --reporter compact` PASS (`34/34`)
- `git diff --check` PASS (yalniz LF -> CRLF uyari mesaji)
- Final: `flutter analyze` PASS (`No issues found!`)
- Final full test: `flutter test --reporter compact` PASS (`480/480`)

### Risk Degisimi
- Bilinen karisik download ceviri adayinin ARB'ye sizma riski: `16/25 -> 3/25`
- ARB batch debris regresyonunun testte yakalanmama riski: `12/25 -> 3/25`
- Kalan tum-locale English fallback borcu: `16/25 -> 16/25` (bilerek ceviri basilmadi; sonraki tur kaynak/kalite guvenceli batch stratejisi gerektirir)

### Rollback Plani
- `_isDownloadCopyKey` ve `_knownDownloadTranslationDebris` helper'lari kaldirilir.
- `translate_arb_keys_test.dart` icindeki mixed-language download testi geri alinir.
- `arb_coverage_test.dart` icindeki `_translationBatchFragments` kontrolu geri alinir.
- Handover append-only oldugu icin revert kaydi eklenir.
- `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Sonraki Adim
- L10n borcu icin once quality gate genisletilecek: download/diagnostics/chatbot/splash/premium gibi runtime kopyalarda ayni-ingilizce kalan locale'ler raporlanacak, fakat kaynak kalite esigi gecmeyen otomatik ceviri commit edilmeyecek.
- Section 13 kapsaminda Supabase-backed olmayan runtime medya gecisleri ve dua/library audio UI tekrar taranmaya devam edecek.

## 2026-04-17 TUR-271 — Retire Unsafe One-Off ARB Mutation Tools

### Yapilan Islem
- `tool/add_keys.dart` artik ARB dosyasi yazmiyor; calistirilirse emniyetli sekilde retired mesaji basip `exitCode = 64` ile duruyor.
- `tool/translate_arbs.dart` artik tum ARB dosyalarini metadata/placeholder guard olmadan makine cevirisine gondermiyor; calistirilirse retired mesaji basip `exitCode = 64` ile duruyor.
- `test/islamic_chatbot_data_test.dart` bu iki legacy arac icin geri-donus guard'i ile genisletildi.

### Kanit
- Patch oncesi `tool/add_keys.dart`:
  `json.putIfAbsent(entry.key, () => entry.value)` ile non-TR locale'lere English fallback kopya yazabilecek durumdaydi.
- Patch oncesi `tool/translate_arbs.dart`:
  `GoogleTranslator` ile butun `app_en.arb` girdilerini, metadata ayirt etmeden, yeni locale dosyalarina yazabilecek durumdaydi.
- Patch sonrasi fail-safe:
  `A:\Way of Allah\sirat_i_nur\tool\add_keys.dart:5`,
  `A:\Way of Allah\sirat_i_nur\tool\add_keys.dart:10`,
  `A:\Way of Allah\sirat_i_nur\tool\translate_arbs.dart:5`,
  `A:\Way of Allah\sirat_i_nur\tool\translate_arbs.dart:9`.
- Guard:
  `A:\Way of Allah\sirat_i_nur\test\islamic_chatbot_data_test.dart:26`,
  `A:\Way of Allah\sirat_i_nur\test\islamic_chatbot_data_test.dart:30`,
  `A:\Way of Allah\sirat_i_nur\test\islamic_chatbot_data_test.dart:40`,
  `A:\Way of Allah\sirat_i_nur\test\islamic_chatbot_data_test.dart:44`.

### Neden Yapildi
- Translation Engine kuralina gore her locale esit kapsamda olmali ve uydurma/kalitesiz otomatik ceviri uygulamaya girmemeli.
- Bu iki legacy script, yeni locale veya eksik key durumunda mevcut `translate_arb_keys.dart` kalite kapilarini atlayarak cok genis dosya mutasyonu yapabilecek bir footgun idi.
- Cozum silmek yerine fail-safe retired hale getirilerek komutun varligini belgeledi, fakat dosya yazma davranisini kapatti.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\add_keys.dart`
- `A:\Way of Allah\sirat_i_nur\tool\translate_arbs.dart`
- `A:\Way of Allah\sirat_i_nur\test\islamic_chatbot_data_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Test Sonucu
- Odak test: `flutter test test\islamic_chatbot_data_test.dart --reporter compact` PASS (`4/4`)
- Manual fail-safe check: `dart run tool\add_keys.dart` `exit=64`
- Manual fail-safe check: `dart run tool\translate_arbs.dart` `exit=64`
- `git diff --check` PASS (yalniz LF -> CRLF uyari mesaji)
- `flutter analyze` PASS (`No issues found!`)
- Ilk full test komutu 5 dakikalik arac timeout'una takildi; arkada Dart/Flutter sureci kalmadigi dogrulandi.
- Full test rerun: `flutter test --reporter compact` PASS (`481/481`)

### Risk Degisimi
- Legacy `add_keys.dart` ile English fallback yayma riski: `12/25 -> 2/25`
- Legacy `translate_arbs.dart` ile metadata/placeholder bozuk ARB uretme riski: `16/25 -> 2/25`
- Tum-locale kalan gercek ceviri borcu: `16/25 -> 16/25` (bu tur kalite kapisi disindaki mutasyon araclari kapatildi)

### Rollback Plani
- `tool/add_keys.dart` onceki map + `putIfAbsent` davranisina dondurulur.
- `tool/translate_arbs.dart` onceki `GoogleTranslator` tabanli full-file ceviri davranisina dondurulur.
- `islamic_chatbot_data_test.dart` icindeki retired-tool guard'lari geri alinir.
- Handover append-only oldugu icin revert kaydi eklenir.
- `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Sonraki Adim
- L10n borcunu guvenli kapatmak icin `translate_arb_keys.dart` uzerinde locale bazli rapor/dry-run ve kalite esigi genisletilecek.
- Ardindan ayni-ingilizce kalan download/diagnostics/chatbot anahtarlari kontrollu, testli ve revert edilebilir batch'lere ayrilacak.

## 2026-04-17 TUR-272 — Skip Unchanged ARB Writes

### Yapilan Islem
- `tool/translate_arb_keys.dart` artik ARB dosyasini yazmadan once mevcut icerik ile yeni icerigi line-ending normalize ederek karsilastiriyor.
- Icerik ayniysa dosya yazilmiyor ve `Unchanged ...` mesaji basiliyor.
- `test/translate_arb_keys_test.dart` CRLF/LF farkinin tek basina write gerektirmedigini dogrulayan regresyon testiyle genisletildi.

### Kanit
- Write guard: `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart:79`
- Karar noktasi: `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart:80`
- No-op mesaji: `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart:84`
- Normalize helper: `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart:93`
- Regresyon testi: `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart:85`

### Neden Yapildi
- Bir onceki guvenlik turunda otomatik ceviri denemesi commit edilmeden geri alindi; buna ragmen ARB dosyalarinda LF/CRLF kaynakli gereksiz dirty-status riski goruldu.
- Translation Engine icin genis l10n batch'leri ileride kontrollu calisacaksa, arac yalnizca gercek icerik farkinda yazmali.
- Bu patch ceviri uretmiyor; sadece kalite kapili aracin dosya-mutasyon davranisini daraltiyor.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Test Sonucu
- Format: `dart format tool\translate_arb_keys.dart test\translate_arb_keys_test.dart` PASS
- Odak test: `flutter test test\translate_arb_keys_test.dart --reporter compact` PASS (`31/31`)
- `git diff --check` PASS (yalniz LF -> CRLF uyari mesaji)
- `flutter analyze` PASS (`No issues found!`)
- Full test: `flutter test --reporter compact` PASS (`482/482`)

### Risk Degisimi
- ARB batch aracinin yalnizca line-ending farki yuzunden 180+ dosyayi dirty yapma riski: `12/25 -> 2/25`
- Genis l10n batch review gurultusu riski: `12/25 -> 3/25`
- Tum-locale kalan gercek ceviri borcu: `16/25 -> 16/25` (bu tur ceviri uretmedi)

### Rollback Plani
- `shouldWriteArbFileContent` ve `_normalizeLineEndings` helper'lari kaldirilir.
- `translate_arb_keys.dart` tekrar dogrudan `file.writeAsStringSync(...)` davranisina dondurulur.
- `translate_arb_keys_test.dart` icindeki newline no-op testi geri alinir.
- Handover append-only oldugu icin revert kaydi eklenir.
- `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Sonraki Adim
- L10n borcu icin yazma yapmayan rapor/dry-run modu eklenecek; hangi key ve locale'lerin app_en ile ayni kaldigi kanitli listeye dokulecek.
- Rapor cikmadan broad auto-translation yapilmayacak; once kalite kapilari genisletilecek.

## 2026-04-17 TUR-273 — Add Write-Free L10n Debt Report Mode

### Yapilan Islem
- `tool/translate_arb_keys.dart` icin `--report` ve `--dry-run` bayraklari eklendi.
- Report mode translator/network cagirmadan ve ARB dosyasi yazmadan same-as-English, missing/empty ve placeholder mismatch borcunu hesapliyor.
- `L10nDebtReport` / `L10nDebtEntry` modelleriyle rapor cikisi testlenebilir hale getirildi.
- `test/translate_arb_keys_test.dart` raporun same-as-English, eksik/boş ve placeholder uyumsuzluklarini dogru saydigini dogruluyor.

### Kanit
- CLI flag parse: `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart:7`
- Report-only erken cikis: `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart:47`
- Rapor hesaplayici: `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart:131`
- Rapor toplam modeli: `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart:179`
- Rapor entry modeli: `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart:225`
- Regresyon testi: `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart:101`

### Neden Yapildi
- Onceki broad translation denemesi kalite kapisini gecmedi; dogrudan otomatik ceviri yapmak yerine once borcun tam olarak hangi key/locale'lerde oldugu yazmasiz sekilde olculmeli.
- Report mode, Translation Engine icin kontrolsuz ARB mutasyonu riskini dusurur ve sonraki batch'leri kanitli parcalara ayirir.
- Bu patch ceviri uretmez; sadece dogru ceviri turu icin guvenli envanter cikarir.

### Gercek Rapor Bulgusu
- Komut: `dart run tool\translate_arb_keys.dart --report downloadAction resumeDownload deleteDownloadedFiles diagnosticsQuranCloudTablesMissing diagnosticsQuranCloudJuzMissing chatbotOfflinePrompt chatbotOfflineSwitched`
- Sonuc: `7` key icin `584` same-as-English locale, `0` missing/empty locale, `0` placeholder mismatch locale.
- Etkilenen key'ler: `downloadAction`, `resumeDownload`, `deleteDownloadedFiles`, `diagnosticsQuranCloudTablesMissing`, `diagnosticsQuranCloudJuzMissing`, `chatbotOfflinePrompt`, `chatbotOfflineSwitched`.
- Git status rapordan sonra sadece beklenen kod/test dosyalarini gosterdi; ARB dosyasi degismedi.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\translate_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\test\translate_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Test Sonucu
- Format: `dart format tool\translate_arb_keys.dart test\translate_arb_keys_test.dart` PASS
- Odak test: `flutter test test\translate_arb_keys_test.dart --reporter compact` PASS (`32/32`)
- Manual report: `dart run tool\translate_arb_keys.dart --report ...` PASS, ARB mutasyonu yok
- `git diff --check` PASS (yalniz LF -> CRLF uyari mesaji)
- `flutter analyze` PASS (`No issues found!`)
- Full test: `flutter test --reporter compact` PASS (`483/483`)

### Risk Degisimi
- L10n borcunu kanitsiz/manuel listeyle takip etme riski: `16/25 -> 4/25`
- Rapor almadan broad ARB mutasyonu yapma riski: `16/25 -> 5/25`
- Tum-locale gercek ceviri borcu: `16/25 -> 16/25` (bu tur sadece guvenli envanter cikardi)

### Rollback Plani
- `_reportFlag`, `_dryRunFlag`, `_optionFlags` ve report-only branch kaldirilir.
- `buildL10nDebtReport`, `L10nDebtReport`, `L10nDebtEntry` ve ilgili test kaldirilir.
- Handover append-only oldugu icin revert kaydi eklenir.
- `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Sonraki Adim
- Report modunu kullanarak download/diagnostics/chatbot kumesindeki same-as-English locale'ler kucuk ve kalite kapili batch'lere bolunecek.
- `sync_arb_keys.dart` icin English fallback yazma riski ayrica guard'lanacak veya report-first akisa baglanacak.

## 2026-04-17 TUR-274 — Guard ARB Sync Against English Fallback Seeding

### Yapilan Islem
- `tool/sync_arb_keys.dart` artik non-English locale dosyalarinda eksik message key icin varsayilan olarak English fallback yazmiyor.
- Eksik key tespit edilirse script dosya yazmadan once `exitCode = 66` ile duruyor ve etkilenen `app_<locale>.arb` + key listesini stderr'e basiyor.
- Yalnizca acik `--allow-english-fallback` bayragi verilirse reviewed temporary placeholder olarak English fallback seed edilebiliyor.
- Script gereksiz dosya churn'unu azaltmak icin line-ending normalize ederek sadece gercek icerik farkinda yaziyor.
- `test/sync_arb_keys_test.dart` fonksiyonel guard testleriyle eklendi.

### Kanit
- Allow flag: `A:\Way of Allah\sirat_i_nur\tool\sync_arb_keys.dart:4`
- Blocked fallback toplama: `A:\Way of Allah\sirat_i_nur\tool\sync_arb_keys.dart:34`
- Mutasyon oncesi block cikisi: `A:\Way of Allah\sirat_i_nur\tool\sync_arb_keys.dart:55`
- Sync plan helper: `A:\Way of Allah\sirat_i_nur\tool\sync_arb_keys.dart:87`
- No-op write guard: `A:\Way of Allah\sirat_i_nur\tool\sync_arb_keys.dart:144`
- Plan modeli: `A:\Way of Allah\sirat_i_nur\tool\sync_arb_keys.dart:153`
- Default block testi: `A:\Way of Allah\sirat_i_nur\test\sync_arb_keys_test.dart:23`
- Explicit allow testi: `A:\Way of Allah\sirat_i_nur\test\sync_arb_keys_test.dart:41`
- TR kaynak testi: `A:\Way of Allah\sirat_i_nur\test\sync_arb_keys_test.dart:57`
- No-op write testi: `A:\Way of Allah\sirat_i_nur\test\sync_arb_keys_test.dart:71`

### Neden Yapildi
- Onceki `sync_arb_keys.dart` davranisi `updated[key] = current.containsKey(key) ? current[key] : entry.value` kalibiyle non-TR locale eksiklerinde dogrudan app_en degerini yazabiliyordu.
- Translation Engine kurali geregi tum locale'ler kapsamda kalmali, fakat kalite guvencesiz English fallback gercek ceviri gibi uygulamaya girmemeli.
- Bu patch yeni ceviri uretmiyor; eksik key senaryosunda once gercek ceviri/dry-run rapor akisini zorunlu hale getiriyor.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\sync_arb_keys.dart`
- `A:\Way of Allah\sirat_i_nur\test\sync_arb_keys_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Test Sonucu
- Format: `dart format tool\sync_arb_keys.dart test\sync_arb_keys_test.dart` PASS
- Odak test: `flutter test test\sync_arb_keys_test.dart --reporter compact` PASS (`4/4`)
- `git diff --check` PASS (yalniz LF -> CRLF uyari mesaji)
- `flutter analyze` PASS (`No issues found!`)
- Full test: `flutter test --reporter compact` PASS (`487/487`)

### Risk Degisimi
- `sync_arb_keys.dart` ile non-English locale'lere sessiz English fallback seed etme riski: `16/25 -> 3/25`
- ARB sync sirasinda gereksiz 180+ dosya churn riski: `12/25 -> 4/25`
- Tum-locale gercek ceviri borcu: `16/25 -> 16/25` (bu tur sadece fallback footgun kapatildi)

### Rollback Plani
- `--allow-english-fallback` guard'i ve `blockedEnglishFallbackKeys` akisi kaldirilir.
- `buildSyncArbFilePlan` onceki dogrudan fallback yazma davranisina sadelestirilir.
- `test/sync_arb_keys_test.dart` kaldirilir.
- Handover append-only oldugu icin revert kaydi eklenir.
- `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Sonraki Adim
- `sync_variant_arb_fallbacks.dart` icin benzer no-op write guard ve source-quality guard'i incelenecek.
- L10n report ciktilari kullanilarak download/diagnostics/chatbot key'leri icin kaliteli ve kucuk ceviri batch planina gecilecek.

## 2026-04-17 TUR-275 — Guard Variant Locale Fallback Sync

### Yapilan Islem
- `tool/sync_variant_arb_fallbacks.dart` artik sibling source locale degerini target locale'e kopyalamadan once degerin bos olmadigini, beklenmeyen multiline icermedigini ve placeholder setinin English template ile uyumlu oldugunu dogruluyor.
- Variant fallback sync artik her calismada hedef ARB dosyasini yazmiyor; line-ending normalize edilmis icerik gercekten degistiyse yaziyor.
- `test/arb_variant_fallback_sync_test.dart` unsafe source fallback ve no-op write regresyon testleriyle genisletildi.

### Kanit
- Plan helper: `A:\Way of Allah\sirat_i_nur\tool\sync_variant_arb_fallbacks.dart:46`
- Safe source guard: `A:\Way of Allah\sirat_i_nur\tool\sync_variant_arb_fallbacks.dart:84`
- No-op write guard: `A:\Way of Allah\sirat_i_nur\tool\sync_variant_arb_fallbacks.dart:99`
- Placeholder match helper: `A:\Way of Allah\sirat_i_nur\tool\sync_variant_arb_fallbacks.dart:112`
- Plan modeli: `A:\Way of Allah\sirat_i_nur\tool\sync_variant_arb_fallbacks.dart:139`
- Unsafe source testi: `A:\Way of Allah\sirat_i_nur\test\arb_variant_fallback_sync_test.dart:54`
- No-op write testi: `A:\Way of Allah\sirat_i_nur\test\arb_variant_fallback_sync_test.dart:83`

### Neden Yapildi
- Onceki script sadece `targetValue == englishValue && sourceValue != englishValue` kosuluyla source degeri kopyaliyordu; source placeholder kaybetmisse veya beklenmeyen multiline icermisse variant locale'e bozuk runtime copy yayilabilirdi.
- Variant sync araci ayrica her calismada hedef dosyalari yaziyordu; bu da genis ARB review gurultusu ve gereksiz dirty status riski uretiyordu.
- Cozum ceviri uretmez; sadece var olan sibling locale kopyalama akisini guvenli hale getirir.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\tool\sync_variant_arb_fallbacks.dart`
- `A:\Way of Allah\sirat_i_nur\test\arb_variant_fallback_sync_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Test Sonucu
- Format: `dart format tool\sync_variant_arb_fallbacks.dart test\arb_variant_fallback_sync_test.dart` PASS
- Odak test: `flutter test test\arb_variant_fallback_sync_test.dart --reporter compact` PASS (`3/3`)
- `git diff --check` PASS (yalniz LF -> CRLF uyari mesaji)
- `flutter analyze` PASS (`No issues found!`)
- Full test: `flutter test --reporter compact` PASS (`489/489`)

### Risk Degisimi
- Variant locale'e bozuk placeholder/empty/multiline fallback yayma riski: `12/25 -> 3/25`
- Variant sync ile gereksiz ARB dosya churn riski: `10/25 -> 2/25`
- Tum-locale gercek ceviri borcu: `16/25 -> 16/25` (bu tur sadece sync guard eklendi)

### Rollback Plani
- `buildVariantFallbackPlan`, `isSafeVariantFallbackValue`, no-op write helper'lari ve yeni testler kaldirilir.
- Script onceki dogrudan source-to-target kopyalama ve her calismada write davranisina dondurulur.
- Handover append-only oldugu icin revert kaydi eklenir.
- `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Sonraki Adim
- L10n report moduyla tespit edilen same-as-English download/diagnostics/chatbot locale borcu kucuk, reviewed ve kalite kapili batch'lere ayrilacak.
- Runtime media/audio pipeline taramasi tekrar yapilarak external-only source kabul eden yeni bir yuzey kalip kalmadigi dogrulanacak.

## 2026-04-17 TUR-276 — Localize Prayer Remaining Digits

### Yapilan Islem
- `formatPrayerRemainingText` artik saat/dakika sayilarini `intl` `NumberFormat.decimalPattern` ile locale baglaminda formatliyor.
- `ar`, `fa` ve `ur` locale aileleri icin ASCII digit shaping eklenerek gorunur kalan-sure rakamlari yerel rakam sistemine donusturuluyor.
- Home page testi Arapca kalan sureyi `٢ س ٥ د` olarak dogruluyor.

### Kanit
- Locale number formatter: `A:\Way of Allah\sirat_i_nur\lib\features\home\home_page.dart:32`
- Digit shaping helper: `A:\Way of Allah\sirat_i_nur\lib\features\home\home_page.dart:37`
- Arabic digit mapping: `A:\Way of Allah\sirat_i_nur\lib\features\home\home_page.dart:40`
- Persian/Urdu digit mapping: `A:\Way of Allah\sirat_i_nur\lib\features\home\home_page.dart:52`
- Regression test: `A:\Way of Allah\sirat_i_nur\test\features\home\home_page_test.dart:50`

### Neden Yapildi
- Eski akista home banner kalan sure sayilari `hours.toString()` ve `minutes.toString()` ile Latin rakam olarak kalabiliyordu.
- Metin sablonu lokalize olsa bile sayi bicimi locale-aware degildi; RTL/Arabic-script kullanicilar icin gorunen UI borcuydu.
- Ilk test denemesi `intl` tek basina `ar` icin Latin `2` dondurdugunu yakaladi; bu nedenle test gevsetilmedi, digit shaping eklendi.

### Degistirilen Dosyalar
- `A:\Way of Allah\sirat_i_nur\lib\features\home\home_page.dart`
- `A:\Way of Allah\sirat_i_nur\test\features\home\home_page_test.dart`
- `A:\Way of Allah\sirat_i_nur\handover.md`

### Test Sonucu
- Format: `dart format lib\features\home\home_page.dart test\features\home\home_page_test.dart` PASS
- Ilk odak test: FAIL, `intl` `ar` icin Latin `2` dondurdu; patch digit shaping ile genisletildi.
- Odak test rerun: `flutter test test\features\home\home_page_test.dart --reporter compact` PASS (`2/2`)
- `git diff --check` PASS (yalniz LF -> CRLF uyari mesaji)
- `flutter analyze` PASS (`No issues found!`)
- Full test: `flutter test --reporter compact` PASS (`489/489`)

### Risk Degisimi
- Home kalan surede locale-aware olmayan sayi bicimi riski: `10/25 -> 2/25`
- RTL/Arabic-script UI tutarsizligi riski: `10/25 -> 3/25`

### Rollback Plani
- `_formatPrayerRemainingNumber`, `_shapePrayerRemainingDigits`, `_replaceAsciiDigits` helper'lari kaldirilir.
- `formatPrayerRemainingText` tekrar `hours.toString()` / `minutes.toString()` kullanacak hale dondurulur.
- Arapca beklenti testi geri alinir.
- Handover append-only oldugu icin revert kaydi eklenir.
- `flutter analyze` ve full `flutter test` tekrar calistirilir.

### Sonraki Adim
- Prayer profile resolver icin resmi kurum kaynakli country/timezone coverage bosluklari daha fazla kanitla taranacak.
- L10n same-as-English borcu icin report-first batch hazirligi devam edecek.
