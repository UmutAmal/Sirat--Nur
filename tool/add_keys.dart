import 'dart:convert';
import 'dart:io';

void main() {
  final keysEn = {
    "paywallUnlockAll": "Unlock all features for your spiritual journey",
    "paywallFeature1Title": "Neural Assistant Plus",
    "paywallFeature1Desc": "Unlimited AI-powered Q&A",
    "paywallFeature2Title": "Unlimited Offline",
    "paywallFeature2Desc": "Download all recitations",
    "paywallFeature3Title": "Exclusive Designs",
    "paywallFeature3Desc": "Premium themes & fonts",
    "paywallFeature4Title": "Ad-Free",
    "paywallFeature4Desc": "Zero advertisements",
    "paywallGetAccess": "Get Lifetime Access — \$1.00",
    "restorePurchases": "Restore Purchases",
    "zakatCalculator": "Zakat Calculator",
    "zakatGold": "Gold (Altın)",
    "zakatSilver": "Silver (Gümüş)",
    "zakatCashBank": "Cash / Bank",
    "zakatBusiness": "Business",
    "zakatInvestments": "Investments",
    "zakatWeightGrams": "Weight (g)",
    "zakatPricePerGram": "Price/g",
    "zakatTotalAmount": "Total Amount",
    "zakatInventoryValue": "Inventory Value",
    "zakatDebts": "Debts",
    "zakatTotal": "Total",
    "calculateZakat": "Calculate Zakat",
    "nisabNotReached": "Nisab not reached. Zakat is not obligatory.",
    "totalZakat": "Total Zakat",
    "nisabSummary": "Nisab: {nisab} • Assets: {assets}",
    "@nisabSummary": {
      "placeholders": {
        "nisab": {"type": "String"},
        "assets": {"type": "String"}
      }
    },
    "zakatGoldZakat": "Gold Zakat",
    "zakatSilverZakat": "Silver Zakat",
    "zakatCashZakat": "Cash Zakat",
    "zakatBusinessZakat": "Business Zakat",
    "zakatInvestmentZakat": "Investment Zakat"
  };

  final keysTr = {
    "paywallUnlockAll": "Ruhsal yolculuğunuz için tüm özellikleri açın",
    "paywallFeature1Title": "Neural Assistant Plus",
    "paywallFeature1Desc": "Sınırsız yapay zeka destekli soru-cevap",
    "paywallFeature2Title": "Sınırsız Çevrimdışı",
    "paywallFeature2Desc": "Tüm tilavetleri indirin",
    "paywallFeature3Title": "Özel Tasarımlar",
    "paywallFeature3Desc": "Premium temalar ve yazı tipleri",
    "paywallFeature4Title": "Reklamsız",
    "paywallFeature4Desc": "Sıfır reklam deneyimi",
    "paywallGetAccess": "Ömür Boyu Erişim — \$1.00",
    "restorePurchases": "Satın Alımları Geri Yükle",
    "zakatCalculator": "Zekat Hesaplayıcı",
    "zakatGold": "Altın",
    "zakatSilver": "Gümüş",
    "zakatCashBank": "Nakit / Banka",
    "zakatBusiness": "Ticaret",
    "zakatInvestments": "Yatırımlar",
    "zakatWeightGrams": "Ağırlık (g)",
    "zakatPricePerGram": "Fiyat/g",
    "zakatTotalAmount": "Toplam Miktar",
    "zakatInventoryValue": "Envanter Değeri",
    "zakatDebts": "Borçlar",
    "zakatTotal": "Toplam",
    "calculateZakat": "Zekatı Hesapla",
    "nisabNotReached": "Nisap miktarına ulaşılmadı. Zekat farz değildir.",
    "totalZakat": "Toplam Zekat",
    "nisabSummary": "Nisap: {nisab} • Varlıklar: {assets}",
    "zakatGoldZakat": "Altın Zekatı",
    "zakatSilverZakat": "Gümüş Zekatı",
    "zakatCashZakat": "Nakit Zekatı",
    "zakatBusinessZakat": "Ticaret Zekatı",
    "zakatInvestmentZakat": "Yatırım Zekatı"
  };

  void updateArb(String path, Map<String, dynamic> newKeys) {
    final file = File(path);
    if (!file.existsSync()) return;
    
    final content = file.readAsStringSync();
    final Map<String, dynamic> json = jsonDecode(content);
    
    json.addAll(newKeys);
    
    const encoder = JsonEncoder.withIndent('  ');
    file.writeAsStringSync(encoder.convert(json));
    print('Updated \$path');
  }

  updateArb('lib/l10n/app_en.arb', keysEn);
  updateArb('lib/l10n/app_tr.arb', keysTr);
}
