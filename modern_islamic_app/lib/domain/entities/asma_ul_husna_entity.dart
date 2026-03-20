import 'package:freezed_annotation/freezed_annotation.dart';

part 'asma_ul_husna_entity.freezed.dart';
part 'asma_ul_husna_entity.g.dart';

@freezed
class AsmaUlHusnaEntity with _$AsmaUlHusnaEntity {
  const factory AsmaUlHusnaEntity({
    required int id,
    required String arabic,
    required String transliteration,
    required Map<String, String> translations, // Support for 20+ Languages mapping
    required String audioUrl, // URL to MP3
  }) = _AsmaUlHusnaEntity;

  factory AsmaUlHusnaEntity.fromJson(Map<String, dynamic> json) => _$AsmaUlHusnaEntityFromJson(json);
}
