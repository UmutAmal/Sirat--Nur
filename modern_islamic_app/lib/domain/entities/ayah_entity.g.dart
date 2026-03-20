// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayah_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AyahEntityImpl _$$AyahEntityImplFromJson(Map<String, dynamic> json) =>
    _$AyahEntityImpl(
      number: (json['number'] as num).toInt(),
      surahNumber: (json['surahNumber'] as num).toInt(),
      text: json['text'] as String,
      enTranslation: json['enTranslation'] as String,
      trTranslation: json['trTranslation'] as String,
      numberInSurah: (json['numberInSurah'] as num).toInt(),
      juz: (json['juz'] as num).toInt(),
      manzil: (json['manzil'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      ruku: (json['ruku'] as num).toInt(),
      hizbQuarter: (json['hizbQuarter'] as num).toInt(),
      sajda: json['sajda'] as bool,
    );

Map<String, dynamic> _$$AyahEntityImplToJson(_$AyahEntityImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'surahNumber': instance.surahNumber,
      'text': instance.text,
      'enTranslation': instance.enTranslation,
      'trTranslation': instance.trTranslation,
      'numberInSurah': instance.numberInSurah,
      'juz': instance.juz,
      'manzil': instance.manzil,
      'page': instance.page,
      'ruku': instance.ruku,
      'hizbQuarter': instance.hizbQuarter,
      'sajda': instance.sajda,
    };
