import 'package:freezed_annotation/freezed_annotation.dart';

part 'tafsir_entity.freezed.dart';
part 'tafsir_entity.g.dart';

@freezed
class TafsirCollection with _$TafsirCollection {
  const factory TafsirCollection({
    required String id, // e.g., 'ibn_kathir', 'jalalayn'
    required String name,
    required String authorName,
    required String language,
  }) = _TafsirCollection;

  factory TafsirCollection.fromJson(Map<String, dynamic> json) => _$TafsirCollectionFromJson(json);
}

@freezed
class TafsirEntity with _$TafsirEntity {
  const factory TafsirEntity({
    required int id,
    required String collectionId,
    required int surahId,
    required int startAyah,
    required int endAyah,
    required String text, // The massive commentary text
  }) = _TafsirEntity;

  factory TafsirEntity.fromJson(Map<String, dynamic> json) => _$TafsirEntityFromJson(json);
}
