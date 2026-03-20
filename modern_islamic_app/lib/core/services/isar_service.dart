import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sirat_i_nur/core/models/knowledge_entity.dart';
import 'package:sirat_i_nur/core/models/masjid_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final isarServiceProvider = Provider((ref) => IsarService());

class IsarService {
  late Isar isar;
  bool _isInit = false;

  Future<void> init() async {
    if (_isInit) return;
    
    final dir = await getApplicationSupportDirectory();
    isar = await Isar.open(
      [
        KnowledgeEntitySchema,
        MasjidEntitySchema,
      ],
      directory: dir.path,
    );
    
    _isInit = true;
  }

  Future<void> addKnowledge(KnowledgeEntity entity) async {
    if (!_isInit) {
      await init();
    }
    await isar.writeTxn(() async {
      await isar.knowledgeEntitys.put(entity);
    });
  }

  Future<List<KnowledgeEntity>> searchKnowledge(String query, String lang) async {
    if (!_isInit) {
      await init();
    }
    // Basic fuzzy search logic using Isar's filter capabilities
    return await isar.knowledgeEntitys
        .filter()
        .languageEqualTo(lang)
        .and()
        .group((q) => q
            .titleContains(query, caseSensitive: false)
            .or()
            .contentContains(query, caseSensitive: false)
            .or()
            .keywordsElementContains(query, caseSensitive: false))
        .findAll();
  }

  Future<void> seedInitialData(List<KnowledgeEntity> data) async {
    if (!_isInit) {
      await init();
    }
    await isar.writeTxn(() async {
      await isar.knowledgeEntitys.putAll(data);
    });
  }
}
