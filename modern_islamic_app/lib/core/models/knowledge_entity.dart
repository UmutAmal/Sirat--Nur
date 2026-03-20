import 'package:isar/isar.dart';

part 'knowledge_entity.g.dart';

@collection
class KnowledgeEntity {
  Id id = Isar.autoIncrement;

  @Index(type: IndexType.value)
  late String category; // e.g., 'Quran', 'Hadith', 'Fiqh'

  @Index(caseSensitive: false)
  late String title;

  late String content;

  late String? citation; // e.g., 'Surah Al-Baqarah 2:183'

  late List<String> keywords;

  @Index()
  late String language; // 'en' or 'tr'

  late DateTime updatedAt;

  late String? metadataJson; // For flexible attributes stored as JSON
}
