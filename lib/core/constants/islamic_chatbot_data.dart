// Comprehensive Islamic Q&A Database for Chatbot
// All content is local - works offline

class IslamicChatbotData {
  /// Local religious answers stay disabled until the dataset is curated
  /// against verified Quran/Hadith sources.
  static const bool hasVerifiedDataset = false;

  /// Get response for a question
  static String? getResponse(String question, bool isTurkish) {
    if (!hasVerifiedDataset) {
      return null;
    }

    final q = question.toLowerCase();
    
    // Search through all categories
    for (final category in _categories) {
      for (final keyword in category.keywords) {
        if (q.contains(keyword)) {
          return isTurkish ? category.trResponse : category.enResponse;
        }
      }
    }
    
    return null; // No verified match found
  }

  static final List<_Category> _categories = [
    // ============== NAMAZ / PRAYER ==============
    _Category(
      keywords: ['namaz', 'salat', 'namazı', 'kilınan', 'kılmak', 'kılınır', 'pray', 'prayer', 'salat'],
      enResponse: '''🕋 **NAMAZ (SALAT) - PRAYER**

Namaz, Müslümanların Allah'a yönelik en önemli ibadetlerinden biridir.

**Günde 5 Vakit Namaz:**
🌅 **Fajr (Sabah)** - Güneş doğmadan önce
☀️ **Dhuhr (Öğle)** - Güneş tepe noktasından sonra
🕯️ **Asr (İkindi)** - Gölge uzamaya başladığında
🌇 **Maghrib (Akşam)** - Güneş battığında
🌙 **Isha (Yatsı)** - Karanlık çöktüğünde

**Namazın Şartları (6 şart):**
1. Hadımsal olmak (abdestli olmak)
2. Setr-i avret (mahrem yerleri örtmek)
3. Kıble'ye yönelmek
4. Vaktin girmiş olması
5. Niyet etmek
6. Farz olan sözleri bilmek

**Namazın Rükünleri (4 temel unsur):**
✅ İftitah tekbiri (Elleri kaldırarak "Allahu Akbar" demek)
✅ Kıyam (Ayakta durmak)
✅ Kıraat (Kur'an okumak)
✅ Rüku (Eğilmek)
✅ Secde (Yere kapanmak)
✅ Ka'de (Oturmak)

**Abdest (Wudu):**
1. Besmele çekmek
2. Elleri bileklere kadar yıkamak
3. Ağzı su ile çalkalamak
4. Burnu su ile temizlemek
5. Yüzü yıkamak
6. Kolları dirseklere kadar yıkamak
7. Başı meshetmek
8. Ayakları topuklara kadar yıkamak

**Ezan ve İkamet:**
Ezan, namaz vaktinin girdiğini bildiren ilandır. İkamet ise namaza başlamayı işaret eder.''',
      trResponse: '''🕋 **NAMAZ (SALAT) - PRAYER**

Namaz, Müslümanların Allah'a yönelik en önemli ibadetlerinden biridir.

**Günde 5 Vakit Namaz:**
🌅 **Fajr (Sabah)** - Güneş doğmadan önce
☀️ **Dhuhr (Öğle)** - Güneş tepe noktasından sonra
🕯️ **Asr (İkindi)** - Gölge uzamaya başladığında
🌇 **Maghrib (Akşam)** - Güneş battığında
🌙 **Isha (Yatsı)** - Karanlık çöktüğünde

**Namazın Şartları (6 şart):**
1. Hadımsal olmak (abdestli olmak)
2. Setr-i avret (mahrem yerleri örtmek)
3. Kıble'ye yönelmek
4. Vaktin girmiş olması
5. Niyet etmek
6. Farz olan sözleri bilmek

**Namazın Rükünleri (4 temel unsur):**
✅ İftitah tekbiri (Elleri kaldırarak "Allahu Akbar" demek)
✅ Kıyam (Ayakta durmak)
✅ Kıraat (Kur'an okumak)
✅ Rüku (Eğilmek)
✅ Secde (Yere kapanmak)
✅ Ka'de (Oturmak)

**Abdest (Wudu):**
1. Besmele çekmek
2. Elleri bileklere kadar yıkamak
3. Ağzı su ile çalkalamak
4. Burnu su ile temizlemek
5. Yüzü yıkamak
6. Kolları dirseklere kadar yıkamak
7. Başı meshetmek
8. Ayakları topuklara kadar yıkamak

**Ezan ve İkamet:**
Ezan, namaz vaktinin girdiğini bildiren ilandır. İkamet ise namaza başlamayı işaret eder.''',
    ),

    // ============== ORUÇ / FASTING ==============
    _Category(
      keywords: ['oruç', 'oruç tutmak', 'ramazan', 'sawm', 'fasting', 'fast', 'ramadan', 'imsak', 'iftar'],
      enResponse: '''🌙 **ORUÇ (SAWM) - FASTING**

Oruç, Ramazan ayında tutulan ibadettir ve İslam'ın beş şartından biridir.

**Ramazan Ayı:**
Ramazan, Kur'an'ın indirildiği aydır. Her yıl 9. aydır. Hilal ile başlar.

**Oruç Tutarken Yapılması Gerekenler:**
🌙 **Sahur** - Tan ağarmadan önce yemek yemek
☀️ **Gün boyu:**
- Yemek ve içmekten kaçınmak
- Konuşmaktan kaçınmak
- Günah işlemekten kaçınmak
- Kızgınlık ve öfkeyi kontrol etmek

**İftar Vakti:**
Güneş battığında oruç açılır. İftar duası:
"Allahümme leysüm bihî ve lâ hümme leysüm bihî ve enemt aleyhi fekabelle minnî inneke ental ganîyül kerîm"

**Oruç Çeşitleri:**
1. **Farz Oruç** - Ramazan orucu
2. **Vcip Oruç** - Kaza, keffaret oruçları
3. **Nafile Oruç** - Dileyenlerin tuttuğu oruçlar

**Oruç Sırasında Yapılması Yasak Şeyler:**
❌ Yemek ve içmek
❌ Cinsel ilişki
❌ Yalan söylemek
❌ Günah işlemek
❌ Küfür etmek

**Orucun Faydaları:**
✅ Günahların affedilmesi
✅ Takvaya ulaşma
✅ Sabır ve irade güçlenmesi
✅ Bedensel temizlik
✅ Ruhani arınma''',
      trResponse: '''🌙 **ORUÇ (SAWM) - FASTING**

Oruç, Ramazan ayında tutulan ibadettir ve İslam'ın beş şartından biridir.

**Ramazan Ayı:**
Ramazan, Kur'an'ın indirildiği aydır. Her yıl 9. aydır. Hilal ile başlar.

**Oruç Tutarken Yapılması Gerekenler:**
🌙 **Sahur** - Tan ağarmadan önce yemek yemek
☀️ **Gün boyu:**
- Yemek ve içmekten kaçınmak
- Konuşmaktan kaçınmak
- Günah işlemekten kaçınmak
- Kızgınlık ve öfkeyi kontrol etmek

**İftar Vakti:**
Güneş battığında oruç açılır. İftar duası:
"Allahümme leysüm bihî ve lâ hümme leysüm bihî ve enemt aleyhi fekabelle minnî inneke antel ganîyül kerîm"

**Oruç Çeşitleri:**
1. **Farz Oruç** - Ramazan orucu
2. **Vcip Oruç** - Kaza, keffaret oruçları
3. **Nafile Oruç** - Dileyenlerin tuttuğu oruçlar

**Oruç Sırasında Yapılması Yasak Şeyler:**
❌ Yemek ve içmek
❌ Cinsel ilişki
❌ Yalan söylemek
❌ Günah işlemek
❌ Küfür etmek

**Orucun Faydaları:**
✅ Günahların affedilmesi
✅ Takvaya ulaşma
✅ Sabır ve irade güçlenmesi
✅ Bedensel temizlik
✅ Ruhani arınma''',
    ),

    // ============== KUR'AN / QURAN ==============
    _Category(
      keywords: ['kuran', 'kur\'an', 'quran', 'al-quran', 'mushaf', 'sure', 'ayet'],
      enResponse: '''📖 **KUR'AN-I KERİM**

Kur'an, Allah'ın son vahiy kitabıdır. Müslümanların kutsal kitabıdır.

**Kur'an Hakkında:**
📖 **114 Sure** - 114 bölüm
⚡ **6666 Ayet** - 6666 ayet
🗣️ **Arapça** - Arapça olarak indirilmiştir

**En Bilinen Sureler:**
🌅 **Fatiha Suresi** (1) - "Açılış suresi" - 7 ayet
⭐ **Ayetel Kürsi** (2:255) - "Taht ayeti"
💫 **İhlas Suresi** (112) - "Samimiyet suresi"
🌙 **Felak Suresi** (113) - "Sabah suresi"
🛡️ **Nas Suresi** (114) - "İnsanlar suresi"

**Kur'an'ın Özellikleri:**
✅ Allah'ın kelamı
✅ Değiştirilemez
✅ Korunmuş
✅ Tüm insanlık için rehber
✅ Hidayet kaynağı

**Kur'an Okuma Adabı:**
1. Abdestli olmak
2. Başını örtmek (kadınlar için)
3. Ciddiyetle okumak
4. Tedricen okumak
5. Uhrevi niyet etmek

**Kur'an'ın Faziletleri:**
"Peygamber (sav) şöyle buyurdu: 'Kur'an'ı çok okuyan, yazılı olduğu gibi okuyana Allah'tan büyük ecir vardır.'" (Buhari)''',
      trResponse: '''📖 **KUR'AN-I KERİM**

Kur'an, Allah'ın son vahiy kitabıdır. Müslümanların kutsal kitabıdır.

**Kur'an Hakkında:**
📖 **114 Sure** - 114 bölüm
⚡ **6666 Ayet** - 6666 ayet
🗣️ **Arapça** - Arapça olarak indirilmiştir

**En Bilinen Sureler:**
🌅 **Fatiha Suresi** (1) - "Açılış suresi" - 7 ayet
⭐ **Ayetel Kürsi** (2:255) - "Taht ayeti"
💫 **İhlas Suresi** (112) - "Samimiyet suresi"
🌙 **Felak Suresi** (113) - "Sabah suresi"
🛡️ **Nas Suresi** (114) - "İnsanlar suresi"

**Kur'an'ın Özellikleri:**
✅ Allah'ın kelamı
✅ Değiştirilemez
✅ Korunmuş
✅ Tüm insanlık için rehber
✅ Hidayet kaynağı

**Kur'an Okuma Adabı:**
1. Abdestli olmak
2. Başını örtmek (kadınlar için)
3. Ciddiyetle okumak
4. Tedricen okumak
5. Uhrevi niyet etmek

**Kur'an'ın Faziletleri:**
"Peygamber (sav) şöyle buyurdu: 'Kur'an'ı çok okuyan, yazılı olduğu gibi okuyana Allah'tan büyük ecir vardır.'" (Buhari)''',
    ),

    // ============== HADİS / HADITH ==============
    _Category(
      keywords: ['hadis', 'hadith', 'hadisler', ' Buhari', 'Müslim', 'ebu davud'],
      enResponse: '''📚 **HADİS**

Hadis, Peygamberimiz Hz. Muhammad'in (sallallhu aleyhi ve sellem) sözleri, fiilleri ve onayladığı davranışlardır.

**En Meşhur Hadis Kitapları (Kütüb-i Sitte):**
📚 **Sahih Buhari** - İmam Buhari'nin derlediği en güvenilir hadis kitabı
📚 **Sahih Müslim** - İmam Müslim'in derlediği
📚 **Sünen-i Ebu Davud** - Ebu Davud'un derlediği
📚 **Cami-i Tirmizi** - İmam Tirmizi'nin derlediği
📚 **Sünen-i Nesai** - İmam Nesai'nin derlediği
📚 **Sünen-i İbn Mace** - İmam İbn Mace'nin derlediği

**Hadislerin Güvenilirliği (Sıhhat Dereceleri):**
✅ **Sahih** - Güvenilir (en yüksek)
✅ **Hasan** - Güzel
⚠️ **Daif** - Zayıf (bazı sorunlar var)

**Önemli Hadisler:**

**İman ve İslam:**
"Hepiniz çobansınız ve hepiniz güttüğünüzden sorumlusunuz. Emir çobanıdır ve o da sorgulanacaktır." (Buhari, Müslim)

**Namaz:**
"Namaz, müminin mi'racıdır." (Tirmizi)

**Kur'an:**
"Kur'an'ı her kim okursa, onun sevabını yazar. Her kim de başkasına okutturursa, okuyanın sevabı kadar ona da yazılır." (İbn Mace)

**İslam'ın Şartları:**
"İslam, şehadet kelimesi, namaz, zekat, hac ve Ramazan orucudur." (Buhari)''',
      trResponse: '''📚 **HADİS**

Hadis, Peygamberimiz Hz. Muhammad'in (sallallhu aleyhi ve sellem) sözleri, fiilleri ve onayladığı davranışlardır.

**En Meşhur Hadis Kitapları (Kütüb-i Sitte):**
📚 **Sahih Buhari** - İmam Buhari'nin derlediği en güvenilir hadis kitabı
📚 **Sahih Müslim** - İmam Müslim'in derlediği
📚 **Sünen-i Ebu Davud** - Ebu Davud'un derlediği
📚 **Cami-i Tirmizi** - İmam Tirmizi'nin derlediği
📚 **Sünen-i Nesai** - İmam Nesai'nin derlediği
📚 **Sünen-i İbn Mace** - İmam İbn Mace'nin derlediği

**Hadislerin Güvenilirliği (Sıhhat Dereceleri):**
✅ **Sahih** - Güvenilir (en yüksek)
✅ **Hasan** - Güzel
⚠️ **Daif** - Zayıf (bazı sorunlar var)

**Önemli Hadisler:**

**İman ve İslam:**
"Hepiniz çobansınız ve hepiniz güttüğünüzden sorumlusunuz. Emir çobanıdır ve o da sorgulanacaktır." (Buhari, Müslim)

**Namaz:**
"Namaz, müminin mi'racıdır." (Tirmizi)

**Kur'an:**
"Kur'an'ı her kim okursa, onun sevabını yazar. Her kim de başkasına okutturursa, okuyanın sevabı kadar ona da yazılır." (İbn Mace)

**İslam'ın Şartları:**
"İslam, şehadet kelimesi, namaz, zekat, hac ve Ramazan orucudur." (Buhari)''',
    ),

    // ============== ZEKAT / ZAKAT ==============
    _Category(
      keywords: ['zekat', 'zekat vermek', 'zakat', 'sadaka', 'charity'],
      enResponse: '''💰 **ZEKAT**

Zekat, İslam'ın beş şartından biridir. Yıllık servetin %2.5'inin ihtiyaç sahiplerine verilmesidir.

**Zekatın Şartları:**
✅ Müslüman olmak
✅ Akıl baliğ olmak (ergenlik çağına gelmiş olmak)
✅ Hür olmak
✅ Nisab miktarına sahip olmak (approx. 85 gram altın değerinde)

**Nisab Miktarı (2024):**
Türk Lirası olarak yaklaşık: ₺80.000 - ₺100.000

**Kimler Zekat Verir:**
✅ Evet, zekat vermesi gerekenler:
- Parası olan Müslümanlar
- Ticaret yapanlar
- Altın/gümüşü olanlar

**Kimler Zekat Alır:**
🧕 **Yoksullar** - Maddi durumu yetersiz olanlar
🧑‍🎓 **Fakir Öğrenciler** - Eğitim masraflarını karşılayamayanlar
🛤️ **Yolda Kalmış Yolcular** - Yolculukta parasız kalanlar
⚔️ **Allah Yolunda Cihat Edenler** - İslami faaliyetler için
💧 **Borçlular** - Borçlarını ödeyemeyenler
🖐️ **Köle Olanlar** - Hürriyetini kazanmak isteyenler

**Zekatın Faydaları:**
✅ İhtiyaç sahiplerinin yardımı
✅ Toplumsal dayanışma
✅ Bereketin artması
✅ Günahlardan arınma
✅ Kalbin katılığının giderilmesi''',
      trResponse: '''💰 **ZEKAT**

Zekat, İslam'ın beş şartından biridir. Yıllık servetin %2.5'inin ihtiyaç sahiplerine verilmesidir.

**Zekatın Şartları:**
✅ Müslüman olmak
✅ Akıl baliğ olmak (ergenlik çağına gelmiş olmak)
✅ Hür olmak
✅ Nisab miktarına sahip olmak (approx. 85 gram altın değerinde)

**Nisab Miktarı (2024):**
Türk Lirası olarak yaklaşık: ₺80.000 - ₺100.000

**Kimler Zekat Verir:**
✅ Evet, zekat vermesi gerekenler:
- Parası olan Müslümanlar
- Ticaret yapanlar
- Altın/gümüşü olanlar

**Kimler Zekat Alır:**
🧕 **Yoksullar** - Maddi durumu yetersiz olanlar
🧑‍🎓 **Fakir Öğrenciler** - Eğitim masraflarını karşılayamayanlar
🛤️ **Yolda Kalmış Yolcular** - Yolculukta parasız kalanlar
⚔️ **Allah Yolunda Cihat Edenler** - İslami faaliyetler için
💧 **Borçlular** - Borçlarını ödeyemeyenler
🖐️ **Köle Olanlar** - Hürriyetini kazanmak isteyenler

**Zekatın Faydaları:**
✅ İhtiyaç sahiplerinin yardımı
✅ Toplumsal dayanışma
✅ Bereketin artması
✅ Günahlardan arınma
✅ Kalbin katılığının giderilmesi''',
    ),

    // ============== HAC / HAJJ ==============
    _Category(
      keywords: ['hac', 'hacilar', 'mekke', 'kabe', 'kaabe', 'hajj', 'pilgrimage'],
      enResponse: '''🕋 **HAC**

Hac, Müslümanların Kabe'yi ziyaret etmesidir. İslam'ın beş şartından biridir.

**Kabe Hakkında:**
🕋 Kabe, Mekke'de bulunan Allah'ın evidir
📍 Suudi Arabistan'da
🔲 Küp şeklinde (yaklaşık 12m x 12m x 15m)
🗝️ Siyah örtü ile kaplı

**Hac Vakti:**
📅 Zilhicce ayının 8-13'ü

**Hacın Şartları (6 şart):**
1. ✅ Müslüman olmak
2. ✅ Akıl baliğ olmak
3. ✅ Ergenlik çağına gelmiş olmak
4. ✅ Hür olmak
5. ✅ Yol masrafına ve ailesine yetecek kadar mala sahip olmak
6. ✅ Kadınların yanında mahrem bulunması (eş, baba, oğlu, kardeş gibi)

**Hacın Farzları (4 tane):**
1. 🕋 **İhram giymek** - Haccın örtüsünü giymek
2. 🔄 **Tavaf** - Kabe'yi 7 kez tavaf etmek
3. 🚶 **Sa'y** - Safa ve Merve arasında 7 kez koşmak
4. ⏰ **Vakfe** - Arafat'ta vakit geçirmek

**Hacın Sünnetleri:**
- Kabeyi omuzlamak (İsbat)
- Müzdelife'de vakfe
- Mina'da taş atma
- Kurban kesme

**Kısa Hac Duası:**
"Lebbeyk Allahümme lebbeyk. Lebbeyke lâ şerîke leke lebbeyk. İnnel hamde ve nimetete leke ve tekbêrute leke. Lâ şerîke lek."

(Türkçe: "Buyurulmuşsun Ya Rabbi, buyurulmuşsun. Sembolik ortakların yoktur sana. Buyurulmuşsun. Hamd, nimet ve ikbal senindir. Senin hiç ortağın yoktur.")''',
      trResponse: '''🕋 **HAC**

Hac, Müslümanların Kabe'yi ziyaret etmesidir. İslam'ın beş şartından biridir.

**Kabe Hakkında:**
🕋 Kabe, Mekke'de bulunan Allah'ın evidir
📍 Suudi Arabistan'da
🔲 Küp şeklinde (yaklaşık 12m x 12m x 15m)
🗝️ Siyah örtü ile kaplı

**Hac Vakti:**
📅 Zilhicce ayının 8-13'ü

**Hacın Şartları (6 şart):**
1. ✅ Müslüman olmak
2. ✅ Akıl baliğ olmak
3. ✅ Ergenlik çağına gelmiş olmak
4. ✅ Hür olmak
5. ✅ Yol masrafına ve ailesine yetecek kadar mala sahip olmak
6. ✅ Kadınların yanında mahrem bulunması (eş, baba, oğlu, kardeş gibi)

**Hacın Farzları (4 tane):**
1. 🕋 **İhram giymek** - Haccın örtüsünü giymek
2. 🔄 **Tavaf** - Kabe'yi 7 kez tavaf etmek
3. 🚶 **Sa'y** - Safa ve Merve arasında 7 kez koşmak
4. ⏰ **Vakfe** - Arafat'ta vakit geçirmek

**Hacın Sünnetleri:**
- Kabeyi omuzlamak (İsbat)
- Müzdelife'de vakfe
- Mina'da taş atma
- Kurban kesme

**Kısa Hac Duası:**
"Lebbeyk Allahümme lebbeyk. Lebbeyke lâ şerîke leke lebbeyk. İnnel hamde ve nimetete leke ve tekbêrute leke. Lâ şerîke lek."

(Türkçe: "Buyurulmuşsun Ya Rabbi, buyurulmuşsun. Sembolik ortakların yoktur sana. Buyurulmuşsun. Hamd, nimet ve ikbal senindir. Senin hiç ortağın yoktur.")''',
    ),

    // ============== ALLAH / GOD ==============
    _Category(
      keywords: ['allah', 'tanrı', 'god', 'rabb', 'ilah', 'ilahiyat'],
      enResponse: '''☝️ **ALLAH**

Allah, İslam dininde tek ve en yüce ilahın adıdır.

**Allah'ın 99 Güzel İsmi (Esmaül Hüsna):**

**En Önemli İsimler:**
⭐ **Allah** - En büyük isim
⭐ **Er-Rahman** - Rahmet eden
⭐ **Er-Rahim** - Merhamet eden
⭐ **El-Melik** - Kral
⭐ **El-Kuddus** - Kutsal
⭐ **Es-Selam** - Barış veren
⭐ **El-Mümin** - Güven veren
⭐ **El-Muhyi** - Dirilten
⭐ **El-Mümit** - Öldüren
⭐ **El-Hayy** - diri
⭐ **El-Kayyum** - ayakta tutan
⭐ **El-Vahid** - Bir
⭐ **El-Ehad** - Tek
⭐ **El-Cemil** - Güzel
⭐ **El-Celil** - Celal sahibi

**Allah'ın Sıfatları:**
✅ Kadim (Ezelî)
✅ Ehad (Bir)
✅ Rahman (Rahmet eden)
✅ Rahim (Merhamet eden)
✅ Melik (Kral)
✅ Kuddus (Kutsal)
✅ Azim (Büyük)
✅ Hakk (Gerçek)
✅ Hay (Diri)
✅ Kayyum (Her şeyi ayakta tutan)

**İslam'da Allah'ın Birliği (Tevhid):**
"De ki: O, Allah'tır, birdir. Allah Samed'dir. Doğurmamış ve doğrulmamıştır. O'nun benzeri hiçbir şey yoktur." (Kur'an, İhlas 112:1-4)''',
      trResponse: '''☝️ **ALLAH**

Allah, İslam dininde tek ve en yüce ilahın adıdır.

**Allah'ın 99 Güzel İsmi (Esmaül Hüsna):**

**En Önemli İsimler:**
⭐ **Allah** - En büyük isim
⭐ **Er-Rahman** - Rahmet eden
⭐ **Er-Rahim** - Merhamet eden
⭐ **El-Melik** - Kral
⭐ **El-Kuddus** - Kutsal
⭐ **Es-Selam** - Barış veren
⭐ **El-Mümin** - Güven veren
⭐ **El-Muhyi** - Dirilten
⭐ **El-Mümit** - Öldüren
⭐ **El-Hayy** - diri
⭐ **El-Kayyum** - ayakta tutan
⭐ **El-Vahid** - Bir
⭐ **El-Ehad** - Tek
⭐ **El-Cemil** - Güzel
⭐ **El-Celil** - Celal sahibi

**Allah'ın Sıfatları:**
✅ Kadim (Ezelî)
✅ Ehad (Bir)
✅ Rahman (Rahmet eden)
✅ Rahim (Merhamet eden)
✅ Melik (Kral)
✅ Kuddus (Kutsal)
✅ Azim (Büyük)
✅ Hakk (Gerçek)
✅ Hay (Diri)
✅ Kayyum (Her şeyi ayakta tutan)

**İslam'da Allah'ın Birliği (Tevhid):**
"De ki: O, Allah'tır, birdir. Allah Samed'dir. Doğurmamış ve doğrulmamıştır. O'nun benzeri hiçbir şey yoktur." (Kur'an, İhlas 112:1-4)''',
    ),

    // ============== İSLAM ==============
    _Category(
      keywords: ['islam', 'musluman', 'müslüman', 'muslim', 'religion', 'faith'],
      enResponse: '''🕌 **İSLAM**

İslam, "barış ve teslimiyet" anlamına gelir. Allah'a teslim olmak demektir.

**İslam'ın 5 Şartı (Rükün):**
1. 🌙 **Kelime-i Şehadet** - "Eşhedü en lâ ilâhe illallâh ve eşhedü enne Muhammeden abdullâhü ve rasûlüh"
2. 🕋 **Namaz** - Günde 5 vakit
3. 🌙 **Oruç** - Ramazan ayında
4. 💰 **Zekat** - Yıllık %2.5
5. 🕋 **Hac** - Kabe ziyareti (maddi gücü olanlar için)

**İmanın 6 Şartı:**
1. ✅ Allah'a inanmak
2. ✅ Meleklere inanmak
3. ✅ Kitaplara inanmak
4. ✅ Peygamberlere inanmak
5. ✅ Ahirete inanmak
6. ✅ Kaza ve kadere inanmak

**Müslüman Olmanın Şartları:**
- Kelime-i şehadet getirmek
- İslam'ın emirlerini kabul etmek
- Kur'an'ı Allah'ın kitabı kabul etmek

**İslam'ın Kaynakları:**
📖 **Kur'an** - Allah'ın kitabı
📚 **Sünnet** - Peygamberin yolu
📜 **İcma** - Alimlerin ittifakı
📝 **Kıyas** - Kıyas yolu

**İslam'ın Hedefleri:**
- Allah'ın rızasını kazanmak
- Toplumsal barış
- Ahlaki gelişim
- İnsanlığa fayda''',
      trResponse: '''🕌 **İSLAM**

İslam, "barış ve teslimiyet" anlamına gelir. Allah'a teslim olmak demektir.

**İslam'ın 5 Şartı (Rükün):**
1. 🌙 **Kelime-i Şehadet** - "Eşhedü en lâ ilâhe illallâh ve eşhedü enne Muhammeden abdullâhü ve rasûlüh"
2. 🕋 **Namaz** - Günde 5 vakit
3. 🌙 **Oruç** - Ramazan ayında
4. 💰 **Zekat** - Yıllık %2.5
5. 🕋 **Hac** - Kabe ziyareti (maddi gücü olanlar için)

**İmanın 6 Şartı:**
1. ✅ Allah'a inanmak
2. ✅ Meleklere inanmak
3. ✅ Kitaplara inanmak
4. ✅ Peygamberlere inanmak
5. ✅ Ahirete inanmak
6. ✅ Kaza ve kadere inanmak

**Müslüman Olmanın Şartları:**
- Kelime-i şehadet getirmek
- İslam'ın emirlerini kabul etmek
- Kur'an'ı Allah'ın kitabı kabul etmek

**İslam'ın Kaynakları:**
📖 **Kur'an** - Allah'ın kitabı
📚 **Sünnet** - Peygamberin yolu
📜 **İcma** - Alimlerin ittifakı
📝 **Kıyas** - Kıyas yolu

**İslam'ın Hedefleri:**
- Allah'ın rızasını kazanmak
- Toplumsal barış
- Ahlaki gelişim
- İnsanlığa fayda''',
    ),

    // ============== SELAM ==============
    _Category(
      keywords: ['selam', 'asalam', 'aleyküm', 'wa alaikum', 'hello', 'greeting', 'peace'],
      enResponse: '''👋 **İSLAMİ SELAMLAR**

İslami selamlaşma, Müslümanlar arasında yaygın olan selamlaşma biçimidir.

**Selamün Aleyküm:**
Türkçe: "Üzerinize barış olsun"
Arapça: "السلام عليكم"

**Doğru Cevap:**
"Ve Aleyküm Selam" veya "Ve Aleykümusselam"
Türkçe: "Üzerinize de barış olsun"

**Selamın Fazileti:**
Peygamber (sav) şöyle buyurdu:
"Müslümanlar arasında selamlaşmak taat (ibadet) türlerindendir." (Ebu Davud)

"Kim Müslümanlara selamı yayarsa, ona selam verilir." (Buhari)

**Selam Çeşitleri:**
1. 📢 **İslami Selam** - "Selamün Aleyküm"
2. 📢 **Tahiyyat** - Namazdaki selam
3. 📢 **Fazli Selam** - "Selam, rahmet ve bereket"

**Selam Verme Adabı:**
✅ Önce büyükler selam verir
✅ Gençler selamı alır ve karşılık verir
✅ Oturan selam verene karşı kalkar (hacca)
✅ Kadınlar erkeklere selam verdiğinde erkekler karşılık verir''',
      trResponse: '''👋 **İSLAMİ SELAMLAR**

İslami selamlaşma, Müslümanlar arasında yaygın olan selamlaşma biçimidir.

**Selamün Aleyküm:**
Türkçe: "Üzerinize barış olsun"
Arapça: "السلام عليكم"

**Doğru Cevap:**
"Ve Aleyküm Selam" veya "Ve Aleykümusselam"
Türkçe: "Üzerinize de barış olsun"

**Selamın Fazileti:**
Peygamber (sav) şöyle buyurdu:
"Müslümanlar arasında selamlaşmak taat (ibadet) türlerindendir." (Ebu Davud)

"Kim Müslümanlara selamı yayarsa, ona selam verilir." (Buhari)

**Selam Çeşitleri:**
1. 📢 **İslami Selam** - "Selamün Aleyküm"
2. 📢 **Tahiyyat** - Namazdaki selam
3. 📢 **Fazli Selam** - "Selam, rahmet ve bereket"

**Selam Verme Adabı:**
✅ Önce büyükler selam verir
✅ Gençler selamı alır ve karşılık verir
✅ Oturan selam verene karşı kalkar (hacca)
✅ Kadınlar erkeklere selam verdiğinde erkekler karşılık verir''',
    ),

    // ============== MEZHEPLER ==============
    _Category(
      keywords: ['mezhep', 'hanefi', 'maliki', 'shafi', 'hanbeli', 'sect', 'madhhab'],
      enResponse: '''📚 **İSLAMİ MEZHEPLER**

İslam'da 4 ana fıkıh mezhebi vardır. Hepsi İslami kaynaklara dayanır.

**Sünnî Mezhepler:**

1. 🏛️ **Hanefi Mezhebi**
   - Kurucusu: İmam Azam Ebu Hanife (699-767)
   - Özellikler: Kıyas ve içtihada açık
   - Yaygın: Türkiye, Pakistan, Hindistan, Balkanlar
   - Hanefiler namazda "Şafi ile Hanefi arasında" bir mezhep izler

2. 🏛️ **Maliki Mezhebi**
   - Kurucusu: İmam Malik bin Enes (711-795)
   - Özellikler: Medine ehlinin ameli esastır
   - Yaygın: Kuzey Afrika, Batı Afrika, Suudi Arabistan

3. 🏛️ **Şafii Mezhebi**
   - Kurucusu: İmam Şafii (767-820)
   - Özellikler: Kıyas ve icma dengedir
   - Yaygın: Mısır, Doğu Afrika, Yemen, Körfez ülkeleri

4. 🏛️ **Hanbeli Mezhebi**
   - Kurucusu: İmam Ahmed bin Hanbel (780-855)
   - Özellikler: Hadise en çok önem veren mezhep
   - Yaygın: Suudi Arabistan, Katar

**Mezhepler Arası İlişki:**
Tüm mezhepler İslam'ın temel kaynaklarına (Kur'an, Sünnet, İcma, Kıyas) dayanır. Farklılıklar teferruattadır. Mezhep seçimi kişinin tercihidir.''',
      trResponse: '''📚 **İSLAMİ MEZHEPLER**

İslam'da 4 ana fıkıh mezhebi vardır. Hepsi İslami kaynaklara dayanır.

**Sünnî Mezhepler:**

1. 🏛️ **Hanefi Mezhebi**
   - Kurucusu: İmam Azam Ebu Hanife (699-767)
   - Özellikler: Kıyas ve içtihada açık
   - Yaygın: Türkiye, Pakistan, Hindistan, Balkanlar
   - Hanefiler namazda "Şafi ile Hanefi arasında" bir mezhep izler

2. 🏛️ **Maliki Mezhebi**
   - Kurucusu: İmam Malik bin Enes (711-795)
   - Özellikler: Medine ehlinin ameli esastır
   - Yaygın: Kuzey Afrika, Batı Afrika, Suudi Arabistan

3. 🏛️ **Şafii Mezhebi**
   - Kurucusu: İmam Şafii (767-820)
   - Özellikler: Kıyas ve icma dengedir
   - Yaygın: Mısır, Doğu Afrika, Yemen, Körfez ülkeleri

4. 🏛️ **Hanbeli Mezhebi**
   - Kurucusu: İmam Ahmed bin Hanbel (780-855)
   - Özellikler: Hadise en çok önem veren mezhep
   - Yaygın: Suudi Arabistan, Katar

**Mezhepler Arası İlişki:**
Tüm mezhepler İslam'ın temel kaynaklarına (Kur'an, Sünnet, İcma, Kıyas) dayanır. Farklılıklar teferruattadır. Mezhep seçimi kişinin tercihidir.''',
    ),

    // ============== PEYGAMBERLER ==============
    _Category(
      keywords: ['peygamber', 'nebi', 'resul', 'muhammed', 'muhammad', 'prophet', 'ibrahim', 'musam'],
      enResponse: '''📜 **PEYGAMBERLER**

İslam'da peygamberler, Allah'tan vahiy alan ve insanları doğru yola çağıran elçilerdir.

**Peygamber Sayısı:**
İslam'a göre 124.000 peygamber vardır. 25'i isimleriyle zikredilmiştir.

**En Önemli Peygamberler:**

1. 👤 **Hz. Adem (Adem)** - İlk insan ve peygamber
2. 👤 **Hz. İdris (İdris)**
3. 👤 **Hz. Nuh (Nuh)** - Tufan peygamberi
4. 👤 **Hz. Hud (Hud)** - Ad kavmi için
5. 👤 **Hz. Salih (Salih)** - Semud kavmi için
6. 👤 **Hz. İbrahim (İbrahim)** - Halilullah (Allah'ın dostu)
7. 👤 **Hz. Lut (Lut)** - Sodom kavmi için
8. 👤 **Hz. İshak (İshak)**
9. 👤 **Hz. Yakup (Yakup)**
10. 👤 **Hz. Yusuf (Yusuf)**
11. 👤 **Hz. Şuayb (Şuayb)** - Midyan kavmi için
12. 👤 **Hz. Musa (Musa)** - Tur dağı, Tevrat
13. 👤 **Hz. Harun (Harun)**
14. 👤 **Hz. Davut (Davut)** - Zebur (Davud'un mezmurları)
15. 👤 **Hz. Süleyman (Süleyman)** - Bilgelik kralı
16. 👤 **Hz. Yunus (Yunus)** - Balık Peygamberi
17. 👤 **Hz. Zekeriya (Zekeriya)**
18. 👤 **Hz. Yahya (Yuhanna)**
19. 👤 **Hz. İsa (İsa)** - İncil, Meryem oğlu İsa
20. 👤 **Hz. Muhammed (Muhammed)** - Son peygamber, Kur'an

**Hz. Muhammad (sav) Hakkında:**
- Doğum: 20 Nisan 571, Mekke
- Vahiy başlangıcı: 610, Hira dağı
- Ölüm: 8 Haziran 632, Medine
- Savaşmadı, fetih yoluyla İslam'ı yaydı''',
      trResponse: '''📜 **PEYGAMBERLER**

İslam'da peygamberler, Allah'tan vahiy alan ve insanları doğru yola çağıran elçilerdir.

**Peygamber Sayısı:**
İslam'a göre 124.000 peygamber vardır. 25'i isimleriyle zikredilmiştir.

**En Önemli Peygamberler:**

1. 👤 **Hz. Adem (Adem)** - İlk insan ve peygamber
2. 👤 **Hz. İdris (İdris)**
3. 👤 **Hz. Nuh (Nuh)** - Tufan peygamberi
4. 👤 **Hz. Hud (Hud)** - Ad kavmi için
5. 👤 **Hz. Salih (Salih)** - Semud kavmi için
6. 👤 **Hz. İbrahim (İbrahim)** - Halilullah (Allah'ın dostu)
7. 👤 **Hz. Lut (Lut)** - Sodom kavmi için
8. 👤 **Hz. İshak (İshak)**
9. 👤 **Hz. Yakup (Yakup)**
10. 👤 **Hz. Yusuf (Yusuf)**
11. 👤 **Hz. Şuayb (Şuayb)** - Midyan kavmi için
12. 👤 **Hz. Musa (Musa)** - Tur dağı, Tevrat
13. 👤 **Hz. Harun (Harun)**
14. 👤 **Hz. Davut (Davut)** - Zebur (Davud'un mezmurları)
15. 👤 **Hz. Süleyman (Süleyman)** - Bilgelik kralı
16. 👤 **Hz. Yunus (Yunus)** - Balık Peygamberi
17. 👤 **Hz. Zekeriya (Zekeriya)**
18. 👤 **Hz. Yahya (Yuhanna)**
19. 👤 **Hz. İsa (İsa)** - İncil, Meryem oğlu İsa
20. 👤 **Hz. Muhammed (Muhammed)** - Son peygamber, Kur'an

**Hz. Muhammad (sav) Hakkında:**
- Doğum: 20 Nisan 571, Mekke
- Vahiy başlangıcı: 610, Hira dağı
- Ölüm: 8 Haziran 632, Medine
- Savaşmadı, fetih yoluyla İslam'ı yaydı''',
    ),

    // ============== AHİRET / AFTERLIFE ==============
    _Category(
      keywords: ['ahiret', 'cennet', 'cehennem', 'kıyamet', 'yargılama', 'heaven', 'hell', 'afterlife', 'judgment'],
      enResponse: '''🌟 **AHİRET (SONRAKİ HAYAT)**

Ahiret, dünya hayatından sonraki sonsuz yaşamdır.

**Kıyamet (Yargılama Günü):**
⏰ Evrensel zaman belirsiz - "Kıyamet saati bilinmez"
🌍 Evrenin sonu, tüm insanların diriltilip yargılanacağı gün

**Ölüm ve Kabir:**
💀 Ölüm, ruhun bedenden ayrılmasıdır
🪦 Kabir ya saha (geniş) ya da dardır
👼 Berzah alemi - Ölüm ile kıyamet arası

**Kıyamette Olacaklar:**
1. 🌞 Güneş batacak
2. ⭐ Yıldızlar dökülecek
3. 🌋 Dağlar eriyecek
4. 🌊 Denizler kaynayacak
5. 👥 Herkes diriltilecek

**Cennet (Bahşışlanmışların yeri):**
✅ Altın ve gümüşten köşkler
✅ Yemyeşil bahçeler
✅ İçecekler bal şerbeti
✅ Ebedi yaşam
✅ Allah'ı görme
✅ Sevilenlerle buluşma

**Cehennem (Azaplananların yeri):**
❌ Ateş
❌ Zincirler ve prangalar
❌ Kaynar su
❌ İçecekleri kan ve irindir
✅ Ama tövbe edenler affedilir

**Cennete Girmek İçin:**
✅ İman etmek
✅ İyi ameller işlemek
✅ Günahlardan kaçınmak
✅ Sabretmek''',
      trResponse: '''🌟 **AHİRET (SONRAKİ HAYAT)**

Ahiret, dünya hayatından sonraki sonsuz yaşamdır.

**Kıyamet (Yargılama Günü):**
⏰ Evrensel zaman belirsiz - "Kıyamet saati bilinmez"
🌍 Evrenin sonu, tüm insanların diriltilip yargılanacağı gün

**Ölüm ve Kabir:**
💀 Ölüm, ruhun bedenden ayrılmasıdır
🪦 Kabir ya saha (geniş) ya da dardır
👼 Berzah alemi - Ölüm ile kıyamet arası

**Kıyamette Olacaklar:**
1. 🌞 Güneş batacak
2. ⭐ Yıldızlar dökülecek
3. 🌋 Dağlar eriyecek
4. 🌊 Denizler kaynayacak
5. 👥 Herkes diriltilecek

**Cennet (Bahşışlanmışların yeri):**
✅ Altın ve gümüşten köşkler
✅ Yemyeşil bahçeler
✅ İçecekler bal şerbeti
✅ Ebedi yaşam
✅ Allah'ı görme
✅ Sevilenlerle buluşma

**Cehennem (Azaplananların yeri):**
❌ Ateş
❌ Zincirler ve prangalar
❌ Kaynar su
❌ İçecekleri kan ve irindir
✅ Ama tövbe edenler affedilir

**Cennete Girmek İçin:**
✅ İman etmek
✅ İyi ameller işlemek
✅ Günahlardan kaçınmak
✅ Sabretmek''',
    ),

    // ============== GÜNAHLAR VE TÖVBE ==============
    _Category(
      keywords: ['günah', 'tövbe', ' tövbe etmek', 'istigfar', 'gunah', 'sin', 'repentance', 'forgiveness'],
      enResponse: '''🙏 **GÜNAHLAR VE TÖVBE**

Günah, Allah'ın emirlerini çiğnemeektir. İslam'da günahlar büyük ve küçük olarak ikiye ayrılır.

**Büyük Günahlar (Kabair):**
❌ Allah'a ortak koşmak (şirk)
❌ Zulüm (kendine ve başkasına)
❌ Sihir büyü
❌ Zina yapmak
❌ Faiz yemek
❌ Yetim malı yemek
❌ Savaştan kaçmak
❌ Yalan şahitlik
❌ Zina isnadı

**Küçük Günahlar (Sagair):**
⚠️ Yalan söylemek (büyük olabilir)
⚠️ Başkasını rahatsız etmek
⚠️ İsraf etmek
⚠️ Boş konuşmak

**Tövbe (Repentance):**
Tövbe, günahlardan pişman olmak ve bir daha işlememeye karar vermektir.

**Tövbe Şartları:**
1. 💭 Niyet - Bir daha işlememek
2. 😢 Pişmanlık - Kalben üzülmek
3. 🛑 Vazgeçmek - Günahı bırakmak

**Tövbe Duası:**
"Estagfirullahelazim ellezi la ilahe illa hüvel hayyül kayyum ve etübü ileyh"
(Türkçe: "Büyük olan Allah'tan bağışlama dilerim. O'ndan başka ilah yoktur. O diri ve her şeyi ayakta tutandır. O'na tövbe ediyorum.")

**Günahların Affı:**
✅ Tövbe edenlerin günahları affedilir
✅ Ramazan'da tutulan oruç günahlara kefarettir
✅ İyi niyetli Müslümanın günahları affedilir
✅ Şehitlerin günahları affedilir''',
      trResponse: '''🙏 **GÜNAHLAR VE TÖVBE**

Günah, Allah'ın emirlerini çiğnemeektir. İslam'da günahlar büyük ve küçük olarak ikiye ayrılır.

**Büyük Günahlar (Kabair):**
❌ Allah'a ortak koşmak (şirk)
❌ Zulüm (kendine ve başkasına)
❌ Sihir büyü
❌ Zina yapmak
❌ Faiz yemek
❌ Yetim malı yemek
❌ Savaştan kaçmak
❌ Yalan şahitlik
❌ Zina isnadı

**Küçük Günahlar (Sagair):**
⚠️ Yalan söylemek (büyük olabilir)
⚠️ Başkasını rahatsız etmek
⚠️ İsraf etmek
⚠️ Boş konuşmak

**Tövbe (Repentance):**
Tövbe, günahlardan pişman olmak ve bir daha işlememeye karar vermektir.

**Tövbe Şartları:**
1. 💭 Niyet - Bir daha işlememek
2. 😢 Pişmanlık - Kalben üzülmek
3. 🛑 Vazgeçmek - Günahı bırakmak

**Tövbe Duası:**
"Estagfirullahelazim ellezi la ilahe illa hüvel hayyül kayyum ve etübü ileyh"
(Türkçe: "Büyük olan Allah'tan bağışlama dilerim. O'ndan başka ilah yoktur. O diri ve her şeyi ayakta tutandır. O'na tövbe ediyorum.")

**Günahların Affı:**
✅ Tövbe edenlerin günahları affedilir
✅ Ramazan'da tutulan oruç günahlara kefarettir
✅ İyi niyetli Müslümanın günahları affedilir
✅ Şehitlerin günahları affedilir''',
    ),

    // ============== AİLE VE EVLİLİK ==============
    _Category(
      keywords: ['evlilik', 'nikah', 'dul', 'boşanma', 'aile', 'marriage', 'divorce', 'wife', 'kadın', 'koca'],
      enResponse: '''💑 **EVLİLİK VE AİLE**

Evlilik, İslam'da sünnet-i müekkededir (pekiştirilmiş sünnet).

**Nikahın Şartları:**
1. 👰🤵 İki şahit (erkek veya kadın)
2. 📝 Velinin izni (kadın için)
3. 💰 Mehir (nikah bedeli)
4. ✅ Karşılıklı rıza

**Mehir (Mahr):**
Mehir, kadına verilen hediye veya nikah bedelidir. Kur'an'da belirtilmiştir.

**Evlilik Adabı:**
✅ İyi ahlaklı olmak
✅ İslami değerlere sahip olmak
✅ Birbirini tanımak
✅ Aileleri tanımak

**Eşlerin Görevleri:**
👨 **Erkek:** Aile nafakasını sağlamak
👩 **Kadın:** Evi yönetmek, çocuklara bakmak

**Boşanma (Talak):**
İslam'da hoş görülmeyen ama caiz olan bir durumdur.

**Boşanma Türleri:**
1. 👋 **Ric'i Talak** - Dönüşümlü boşanma (iddet bekleme)
2. 👋👋 **Bain Talak** - Dönüşümsüz boşanma

**Iddet (Bekleme Süresi):**
- Kadınların yeniden evlenmeden önce beklemesi gereken süre
- 3 ayrı hal (hayız görme) veya 4.5 ay
- Hamilelik varsa doğuma kadar''',
      trResponse: '''💑 **EVLİLİK VE AİLE**

Evlilik, İslam'da sünnet-i müekkededir (pekiştirilmiş sünnet).

**Nikahın Şartları:**
1. 👰🤵 İki şahit (erkek veya kadın)
2. 📝 Velinin izni (kadın için)
3. 💰 Mehir (nikah bedeli)
4. ✅ Karşılıklı rıza

**Mehir (Mahr):**
Mehir, kadına verilen hediye veya nikah bedelidir. Kur'an'da belirtilmiştir.

**Evlilik Adabı:**
✅ İyi ahlaklı olmak
✅ İslami değerlere sahip olmak
✅ Birbirini tanımak
✅ Aileleri tanımak

**Eşlerin Görevleri:**
👨 **Erkek:** Aile nafakasını sağlamak
👩 **Kadın:** Evi yönetmek, çocuklara bakmak

**Boşanma (Talak):**
İslam'da hoş görülmeyen ama caiz olan bir durumdur.

**Boşanma Türleri:**
1. 👋 **Ric'i Talak** - Dönüşümlü boşanma (iddet bekleme)
2. 👋👋 **Bain Talak** - Dönüşümsüz boşanma

**Iddet (Bekleme Süresi):**
- Kadınların yeniden evlenmeden önce beklemesi gereken süre
- 3 ayrı hal (hayız görme) veya 4.5 ay
- Hamilelik varsa doğuma kadar''',
    ),

    // ============== HELAL VE HARAM ==============
    _Category(
      keywords: ['helal', 'haram', 'helal gıda', 'yemek', 'yiyecek', 'food', 'diet', 'permitted', 'forbidden'],
      enResponse: '''🍖 **HELAL VE HARAM**

İslam'da yiyecek ve içecekler helal (izin verilen) ve haram (yasaklanan) olarak ayrılır.

**Helal Yiyecekler:**
✅ Her türlü meyve
✅ Her türlü sebze
✅ Et (helal kesim)
✅ Bal
✅ Süt ve süt ürünleri
✅ Tahıllar

**Helal Kesim:**
🪓 Hayvanın kesimi için:
1. Besmele çekmek
2. Keskin bıçak kullanmak
3. Hayvanın yüzünü kıbleye çevirmek
4. Hayvanın canını çabuk çıkarmak
5. "Bismillah" demek

**Helal İçecekler:**
✅ Su
✅ Süt
✅ Bal şarabı (bal ve sudan)
✅ Meyve suları

**Haram Yiyecekler:**
❌ Domuz eti (kesinlikle yasak)
❌ Kan (akmış kan)
❌ Leş (ölmüş hayvan)
❌ Yırtıcı hayvanlar
❌ Alkollü içecekler
❌ Uyutucu/bağımlılık yapan maddeler

**Şüpheli Şeyler (Mekruh):**
⚠️ Sarımsak (çiğ yendiğinde)
⚠️ Soğan (çiğ yendiğinde)
⚠️ Ağzı kokutan yiyecekler (camiiye girerken)

**Helal Gıda İmalatı:**
Helal et üretimi için helal kesim şartları gereklidir.''',
      trResponse: '''🍖 **HELAL VE HARAM**

İslam'da yiyecek ve içecekler helal (izin verilen) ve haram (yasaklanan) olarak ayrılır.

**Helal Yiyecekler:**
✅ Her türlü meyve
✅ Her türlü sebze
✅ Et (helal kesim)
✅ Bal
✅ Süt ve süt ürünleri
✅ Tahıllar

**Helal Kesim:**
🪓 Hayvanın kesimi için:
1. Besmele çekmek
2. Keskin bıçak kullanmak
3. Hayvanın yüzünü kıbleye çevirmek
4. Hayvanın canını çabuk çıkarmak
5. "Bismillah" demek

**Helal İçecekler:**
✅ Su
✅ Süt
✅ Bal şarabı (bal ve sudan)
✅ Meyve suları

**Haram Yiyecekler:**
❌ Domuz eti (kesinlikle yasak)
❌ Kan (akmış kan)
❌ Leş (ölmüş hayvan)
❌ Yırtıcı hayvanlar
❌ Alkollü içecekler
❌ Uyutucu/bağımlılık yapan maddeler

**Şüpheli Şeyler (Mekruh):**
⚠️ Sarımsak (çiğ yendiğinde)
⚠️ Soğan (çiğ yendiğinde)
⚠️ Ağzı kokutan yiyecekler (camiiye girerken)

**Helal Gıda İmalatı:**
Helal et üretimi için helal kesim şartları gereklidir.''',
    ),

    // ============== ZİKR VE DUA ==============
    _Category(
      keywords: ['zikr', 'dua', 'zikir', 'zikir etmek', 'dualar', 'prayer', 'worship', 'remembrance'],
      enResponse: '''🕊️ **ZİKR VE DUA**

Zikir, Allah'ı anmak ve O'na yönelmektir. Dua, Allah'tan yardım istemektir.

**Zikir Çeşitleri:**

1. 📖 **Kur'an Okumak** - En büyük zikir
2. 🗣️ **Allah'ın isimlerini söylemek** - Esmaül Hüsna
3. 🔄 **Tesbih** - "Subhanallah" demek
4. 🔢 **Tahmid** - "Elhamdülillah" demek
5. ☝️ **Tahlik** - "La ilahe illallah" demek

**Günlük Zikirler:**

🌅 **Sabah Zikirleri:**
- 3 defa "Eüzbirküm" okumak
- Ayetel Kürsi okumak
- Muavvizeteyn (Felak ve Nas) okumak

🌙 **Akşam Zikirleri:**
- 3 defa "Eüzbirküm" okumak
- Ayetel Kürsi okumak
- Muavvizeteyn okumak

**Önemli Zikirler:**

**Tesbih (Subhanallah):**
"Subhanallah" - "Allah'ı her türlü eksiklikten tenzih ederim"
(Her tesbih 10 sevap)

**Tahmid (Elhamdülillah):**
"Elhamdülillah" - "Hamd Allah'adır"
(Her tahmid 10 sevap)

**Tekbir (Allahu Akbar):**
"Allahu Akbar" - "Allah en büyüktür"
(Her tekbir 10 sevap)

**Üçün bir arada:**
"La ilahe illallah vahidın samed" vs.

**En Büyük Zikir:**
Kur'an-ı Kerim okumak ve tefekkür etmektir.''',
      trResponse: '''🕊️ **ZİKR VE DUA**

Zikir, Allah'ı anmak ve O'na yönelmektir. Dua, Allah'tan yardım istemektir.

**Zikir Çeşitleri:**

1. 📖 **Kur'an Okumak** - En büyük zikir
2. 🗣️ **Allah'ın isimlerini söylemek** - Esmaül Hüsna
3. 🔄 **Tesbih** - "Subhanallah" demek
4. 🔢 **Tahmid** - "Elhamdülillah" demek
5. ☝️ **Tahlik** - "La ilahe illallah" demek

**Günlük Zikirler:**

🌅 **Sabah Zikirleri:**
- 3 defa "Eüzbirküm" okumak
- Ayetel Kürsi okumak
- Muavvizeteyn (Felak ve Nas) okumak

🌙 **Akşam Zikirleri:**
- 3 defa "Eüzbirküm" okumak
- Ayetel Kürsi okumak
- Muavvizeteyn okumak

**Önemli Zikirler:**

**Tesbih (Subhanallah):**
"Subhanallah" - "Allah'ı her türlü eksiklikten tenzih ederim"
(Her tesbih 10 sevap)

**Tahmid (Elhamdülillah):**
"Elhamdülillah" - "Hamd Allah'adır"
(Her tahmid 10 sevap)

**Tekbir (Allahu Akbar):**
"Allahu Akbar" - "Allah en büyüktür"
(Her tekbir 10 sevap)

**Üçün bir arada:**
"La ilahe illallah vahidın samed" vs.

**En Büyük Zikir:**
Kur'an-ı Kerim okumak ve tefekkür etmektir.''',
    ),
  ];
}

class _Category {
  final List<String> keywords;
  final String enResponse;
  final String trResponse;

  _Category({
    required this.keywords,
    required this.enResponse,
    required this.trResponse,
  });
}
