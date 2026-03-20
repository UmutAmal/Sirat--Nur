// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tafsir_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TafsirCollectionImpl _$$TafsirCollectionImplFromJson(
        Map<String, dynamic> json) =>
    _$TafsirCollectionImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      authorName: json['authorName'] as String,
      language: json['language'] as String,
    );

Map<String, dynamic> _$$TafsirCollectionImplToJson(
        _$TafsirCollectionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'authorName': instance.authorName,
      'language': instance.language,
    };

_$TafsirEntityImpl _$$TafsirEntityImplFromJson(Map<String, dynamic> json) =>
    _$TafsirEntityImpl(
      id: (json['id'] as num).toInt(),
      collectionId: json['collectionId'] as String,
      surahId: (json['surahId'] as num).toInt(),
      startAyah: (json['startAyah'] as num).toInt(),
      endAyah: (json['endAyah'] as num).toInt(),
      text: json['text'] as String,
    );

Map<String, dynamic> _$$TafsirEntityImplToJson(_$TafsirEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'surahId': instance.surahId,
      'startAyah': instance.startAyah,
      'endAyah': instance.endAyah,
      'text': instance.text,
    };
