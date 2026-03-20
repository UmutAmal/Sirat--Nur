import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah_entity.freezed.dart';
part 'surah_entity.g.dart';

@freezed
class SurahEntity with _$SurahEntity {
  const factory SurahEntity({
    required int number,
    required String name,
    required String englishName,
    required String englishNameTranslation,
    required String revelationType,
    required int numberOfAyahs,
  }) = _SurahEntity;

  factory SurahEntity.fromJson(Map<String, dynamic> json) =>
      _$SurahEntityFromJson(json);
}
