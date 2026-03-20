import 'package:flutter_riverpod/flutter_riverpod.dart';

class SemanticSearchService {
  /// Local SLM Concept Search
  /// In Phase 5, this will interface with a local vector index of Quranic concepts
  Future<List<Map<String, dynamic>>> searchByConcept(String concept) async {
    // Return mock results mapping concepts to verses
    // Example: "Patience" (Sabr) -> Surah 2:153
    await Future.delayed(const Duration(milliseconds: 800));
    
    final lowerConcept = concept.toLowerCase();
    
    if (lowerConcept.contains('patience') || lowerConcept.contains('sabr')) {
      return [
        {'surah': 2, 'ayah': 153, 'text': 'O you who have believed, seek help through patience and prayer...'},
        {'surah': 3, 'ayah': 200, 'text': 'O you who have believed, persevere and endure and remain stationed...'},
      ];
    } else if (lowerConcept.contains('water') || lowerConcept.contains('creation')) {
      return [
        {'surah': 21, 'ayah': 30, 'text': '...and We made from water every living thing? Then will they not believe?'},
      ];
    }
    
    return [];
  }

  /// Cross-reference keywords to prophetic traditions
  Future<List<Map<String, dynamic>>> crossReferenceHadith(String concept) async {
    await Future.delayed(const Duration(milliseconds: 600));
    final lowerConcept = concept.toLowerCase();

    if (lowerConcept.contains('patience') || lowerConcept.contains('sabr')) {
      return [
        {'collection': 'Bukhari', 'id': 6470, 'text': 'How wonderful is the case of a believer; there is good for him in everything... if he is in patience, it is good for him.'},
      ];
    } else if (lowerConcept.contains('knowledge')) {
      return [
        {'collection': 'Ibn Majah', 'id': 224, 'text': 'Seeking knowledge is a duty upon every Muslim.'},
      ];
    }
    return [];
  }
}

final semanticSearchServiceProvider = Provider((ref) => SemanticSearchService());
