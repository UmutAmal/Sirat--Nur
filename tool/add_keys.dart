import 'dart:convert';
import 'dart:io';

void main() {
  final analyticsKeysEn = {
    "prayerCompletion": "Prayer Completion",
    "streaks": "Streaks",
    "dayStreak": "Day streak",
    "bestStreak": "Best streak",
    "chatbotCloudAiLabel": "Cloud AI",
    "chatbotLocalAiLabel": "Offline Fallback",
    "chatbotUseCloudAi": "Use Cloud AI (Gemini)",
    "chatbotDownloadLocalAi": "Enable Offline Fallback",
    "chatbotQueriesLeft": "{count} left",
    "@chatbotQueriesLeft": {
      "placeholders": {
        "count": {"type": "String"},
      },
    },
    "chatbotCloudNotConfigured":
        "Cloud API is not configured. Verified offline Islamic guidance is not available yet.",
    "chatbotLocalNoInfo":
        "[OFFLINE] Verified local Islamic guidance is not available yet. Switch to Cloud AI for sourced answers.",
    "mosques": "Mosques",
    "halalFood": "Halal Food",
    "placesSearchArea": "Search this area",
    "nearbyMosques": "Nearby Mosques",
    "islamicSchools": "Islamic Schools",
    "placesFoundCount": "{count} found",
    "@placesFoundCount": {
      "placeholders": {
        "count": {"type": "String"},
      },
    },
    "distanceAwayKm": "{distance} km away",
    "@distanceAwayKm": {
      "placeholders": {
        "distance": {"type": "String"},
      },
    },
    "placesApiError": "API Error: {statusCode}",
    "@placesApiError": {
      "placeholders": {
        "statusCode": {"type": "String"},
      },
    },
    "placesNetworkError": "Network error. Please try again.",
    "unknownPlaceName": "Unknown Name",
    "islamicPlaceFallback": "Islamic Place",
  };

  final analyticsKeysTr = {
    "prayerCompletion": "Namaz Tamamlama",
    "streaks": "Seriler",
    "dayStreak": "Gün serisi",
    "bestStreak": "En iyi seri",
    "chatbotCloudAiLabel": "Bulut AI",
    "chatbotLocalAiLabel": "Çevrimdışı Fallback",
    "chatbotUseCloudAi": "Bulut AI Kullan (Gemini)",
    "chatbotDownloadLocalAi": "Çevrimdışı Fallback'i Etkinleştir",
    "chatbotQueriesLeft": "{count} kaldı",
    "@chatbotQueriesLeft": {
      "placeholders": {
        "count": {"type": "String"},
      },
    },
    "chatbotCloudNotConfigured":
        "Bulut API ayarlanmadı. Doğrulanmış çevrimdışı İslami rehberlik henüz hazır değil.",
    "chatbotLocalNoInfo":
        "[ÇEVRİMDIŞI] Doğrulanmış yerel İslami rehberlik henüz hazır değil. Kaynaklı cevaplar için Bulut AI moduna geçin.",
    "mosques": "Camiler",
    "halalFood": "Helal Gıda",
    "placesSearchArea": "Bu alanı ara",
    "nearbyMosques": "Yakındaki Camiler",
    "islamicSchools": "İslami Okullar",
    "placesFoundCount": "{count} bulundu",
    "@placesFoundCount": {
      "placeholders": {
        "count": {"type": "String"},
      },
    },
    "distanceAwayKm": "{distance} km uzakta",
    "@distanceAwayKm": {
      "placeholders": {
        "distance": {"type": "String"},
      },
    },
    "placesApiError": "API Hatası: {statusCode}",
    "@placesApiError": {
      "placeholders": {
        "statusCode": {"type": "String"},
      },
    },
    "placesNetworkError": "Ağ hatası. Lütfen tekrar deneyin.",
    "unknownPlaceName": "Bilinmeyen Ad",
    "islamicPlaceFallback": "İslami Mekan",
  };

  void updateArb(String path, Map<String, dynamic> newKeys) {
    final file = File(path);
    if (!file.existsSync()) return;

    final content = file.readAsStringSync();
    final Map<String, dynamic> json = jsonDecode(content);

    for (final entry in newKeys.entries) {
      json.putIfAbsent(entry.key, () => entry.value);
    }

    const encoder = JsonEncoder.withIndent('  ');
    file.writeAsStringSync(encoder.convert(json));
    stdout.writeln('Updated \$path');
  }

  final arbFiles = Directory('lib/l10n')
      .listSync()
      .whereType<File>()
      .where((file) => file.path.endsWith('.arb'))
      .where((file) => file.uri.pathSegments.last.startsWith('app_'));

  for (final file in arbFiles) {
    final isTurkish = file.path.endsWith('app_tr.arb');
    updateArb(file.path, isTurkish ? analyticsKeysTr : analyticsKeysEn);
  }
}
