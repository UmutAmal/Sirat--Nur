// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asma_ul_husna_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AsmaUlHusnaEntityImpl _$$AsmaUlHusnaEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AsmaUlHusnaEntityImpl(
      id: (json['id'] as num).toInt(),
      arabic: json['arabic'] as String,
      transliteration: json['transliteration'] as String,
      translations: Map<String, String>.from(json['translations'] as Map),
      audioUrl: json['audioUrl'] as String,
    );

Map<String, dynamic> _$$AsmaUlHusnaEntityImplToJson(
        _$AsmaUlHusnaEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'arabic': instance.arabic,
      'transliteration': instance.transliteration,
      'translations': instance.translations,
      'audioUrl': instance.audioUrl,
    };
