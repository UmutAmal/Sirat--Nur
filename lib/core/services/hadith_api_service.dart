import 'dart:convert';
import 'package:http/http.dart' as http;

const bool hasVerifiedHadithDataset = false;

class HadithApiService {
  static const String baseUrl = 'https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions';

  /// Fetches a specific section (or 'book') of hadiths for a given collection and language.
  /// Language code expected: 'eng', 'tur', 'ara'.
  /// Collection expected: 'bukhari', 'muslim', 'tirmidhi', 'abudawud', 'nasai', 'ibnmajah'.
  static Future<List<Map<String, dynamic>>> fetchHadiths({
    required String collectionId,
    required String langCode,
    int section = 1,
  }) async {
    final languageKey = langCode.startsWith('tr') ? 'tur' : 'eng';
    final url = Uri.parse('$baseUrl/$languageKey-$collectionId/sections/$section.json');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final list = data['hadiths'] as List<dynamic>?;
      if (list == null) return [];
      
      return list.map((e) => Map<String, dynamic>.from(e)).toList();
    } else {
      throw Exception('Failed to load hadith section');
    }
  }

  /// Fetches the Arabic original for a specific section.
  static Future<List<Map<String, dynamic>>> fetchArabicHadiths({
    required String collectionId,
    int section = 1,
  }) async {
    final url = Uri.parse('$baseUrl/ara-$collectionId/sections/$section.json');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final list = data['hadiths'] as List<dynamic>?;
      if (list == null) return [];
      
      return list.map((e) => Map<String, dynamic>.from(e)).toList();
    } else {
      throw Exception('Failed to load arabic hadith section');
    }
  }
}
