// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hadith_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HadithCollectionImpl _$$HadithCollectionImplFromJson(
        Map<String, dynamic> json) =>
    _$HadithCollectionImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      hasanText: json['hasanText'] as String,
      totalHadiths: (json['totalHadiths'] as num).toInt(),
    );

Map<String, dynamic> _$$HadithCollectionImplToJson(
        _$HadithCollectionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'hasanText': instance.hasanText,
      'totalHadiths': instance.totalHadiths,
    };

_$HadithEntityImpl _$$HadithEntityImplFromJson(Map<String, dynamic> json) =>
    _$HadithEntityImpl(
      id: (json['id'] as num).toInt(),
      collectionId: json['collectionId'] as String,
      hadithNumber: (json['hadithNumber'] as num).toInt(),
      arabicText: json['arabicText'] as String,
      translation: json['translation'] as String,
      chapterName: json['chapterName'] as String,
      bookName: json['bookName'] as String,
      grade: json['grade'] as String,
    );

Map<String, dynamic> _$$HadithEntityImplToJson(_$HadithEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'hadithNumber': instance.hadithNumber,
      'arabicText': instance.arabicText,
      'translation': instance.translation,
      'chapterName': instance.chapterName,
      'bookName': instance.bookName,
      'grade': instance.grade,
    };
