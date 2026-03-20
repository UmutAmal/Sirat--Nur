import 'package:freezed_annotation/freezed_annotation.dart';

part 'hadith_entity.freezed.dart';
part 'hadith_entity.g.dart';

@freezed
class HadithCollection with _$HadithCollection {
  const factory HadithCollection({
    required String id, // e.g., 'bukhari', 'muslim'
    required String name, // e.g., 'Sahih al-Bukhari'
    required String hasanText,
    required int totalHadiths,
  }) = _HadithCollection;

  factory HadithCollection.fromJson(Map<String, dynamic> json) => _$HadithCollectionFromJson(json);
}

@freezed
class HadithEntity with _$HadithEntity {
  const factory HadithEntity({
    required int id,
    required String collectionId,
    required int hadithNumber,
    required String arabicText,
    required String translation,
    required String chapterName,
    required String bookName,
    required String grade, // e.g., 'Sahih', 'Hasan', 'Daif'
  }) = _HadithEntity;

  factory HadithEntity.fromJson(Map<String, dynamic> json) => _$HadithEntityFromJson(json);
}
