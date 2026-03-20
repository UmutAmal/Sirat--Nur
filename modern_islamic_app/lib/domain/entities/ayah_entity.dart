import 'package:freezed_annotation/freezed_annotation.dart';

part 'ayah_entity.freezed.dart';
part 'ayah_entity.g.dart';

@freezed
class AyahEntity with _$AyahEntity {
  const factory AyahEntity({
    required int number,
    required int surahNumber,
    required String text,               // Arabic Text
    required String enTranslation,      // English translation
    required String trTranslation,      // Turkish translation
    required int numberInSurah,
    required int juz,
    required int manzil,
    required int page,
    required int ruku,
    required int hizbQuarter,
    required bool sajda,
  }) = _AyahEntity;

  factory AyahEntity.fromJson(Map<String, dynamic> json) =>
      _$AyahEntityFromJson(json);
}
