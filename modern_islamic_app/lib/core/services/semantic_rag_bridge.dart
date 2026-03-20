import 'package:sirat_i_nur/core/services/intelligence_manager.dart';
import 'package:sirat_i_nur/core/services/isar_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final semanticRagProvider = Provider((ref) {
  final intel = ref.watch(intelligenceProvider);
  final isar = ref.watch(isarServiceProvider);
  return SemanticRagBridge(intel, isar);
});

class SemanticRagBridge {
  final IntelligenceManager intel;
  final IsarService isar;

  SemanticRagBridge(this.intel, this.isar);

  Future<String> ask(String question, String lang) async {
    // 1. Search Knowledge Base for relevant context
    final relevantEntries = await isar.searchKnowledge(question, lang);
    
    // 2. Build Context String
    String context = "";
    if (relevantEntries.isNotEmpty) {
      context = "I found the following relevant Islamic knowledge:\n";
      for (var entry in relevantEntries.take(3)) {
        context += "- ${entry.content}";
        if (entry.citation != null) context += " (Source: ${entry.citation})";
        context += "\n";
      }
    }

    // 3. Query Local AI with Context
    return await intel.getResponse(question, context: context.isNotEmpty ? context : null);
  }
}
