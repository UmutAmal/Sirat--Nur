// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SurahEntity _$SurahEntityFromJson(Map<String, dynamic> json) {
  return _SurahEntity.fromJson(json);
}

/// @nodoc
mixin _$SurahEntity {
  int get number => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get englishName => throw _privateConstructorUsedError;
  String get englishNameTranslation => throw _privateConstructorUsedError;
  String get revelationType => throw _privateConstructorUsedError;
  int get numberOfAyahs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurahEntityCopyWith<SurahEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahEntityCopyWith<$Res> {
  factory $SurahEntityCopyWith(
          SurahEntity value, $Res Function(SurahEntity) then) =
      _$SurahEntityCopyWithImpl<$Res, SurahEntity>;
  @useResult
  $Res call(
      {int number,
      String name,
      String englishName,
      String englishNameTranslation,
      String revelationType,
      int numberOfAyahs});
}

/// @nodoc
class _$SurahEntityCopyWithImpl<$Res, $Val extends SurahEntity>
    implements $SurahEntityCopyWith<$Res> {
  _$SurahEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? name = null,
    Object? englishName = null,
    Object? englishNameTranslation = null,
    Object? revelationType = null,
    Object? numberOfAyahs = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      englishNameTranslation: null == englishNameTranslation
          ? _value.englishNameTranslation
          : englishNameTranslation // ignore: cast_nullable_to_non_nullable
              as String,
      revelationType: null == revelationType
          ? _value.revelationType
          : revelationType // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfAyahs: null == numberOfAyahs
          ? _value.numberOfAyahs
          : numberOfAyahs // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurahEntityImplCopyWith<$Res>
    implements $SurahEntityCopyWith<$Res> {
  factory _$$SurahEntityImplCopyWith(
          _$SurahEntityImpl value, $Res Function(_$SurahEntityImpl) then) =
      __$$SurahEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int number,
      String name,
      String englishName,
      String englishNameTranslation,
      String revelationType,
      int numberOfAyahs});
}

/// @nodoc
class __$$SurahEntityImplCopyWithImpl<$Res>
    extends _$SurahEntityCopyWithImpl<$Res, _$SurahEntityImpl>
    implements _$$SurahEntityImplCopyWith<$Res> {
  __$$SurahEntityImplCopyWithImpl(
      _$SurahEntityImpl _value, $Res Function(_$SurahEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? name = null,
    Object? englishName = null,
    Object? englishNameTranslation = null,
    Object? revelationType = null,
    Object? numberOfAyahs = null,
  }) {
    return _then(_$SurahEntityImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      englishNameTranslation: null == englishNameTranslation
          ? _value.englishNameTranslation
          : englishNameTranslation // ignore: cast_nullable_to_non_nullable
              as String,
      revelationType: null == revelationType
          ? _value.revelationType
          : revelationType // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfAyahs: null == numberOfAyahs
          ? _value.numberOfAyahs
          : numberOfAyahs // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurahEntityImpl implements _SurahEntity {
  const _$SurahEntityImpl(
      {required this.number,
      required this.name,
      required this.englishName,
      required this.englishNameTranslation,
      required this.revelationType,
      required this.numberOfAyahs});

  factory _$SurahEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurahEntityImplFromJson(json);

  @override
  final int number;
  @override
  final String name;
  @override
  final String englishName;
  @override
  final String englishNameTranslation;
  @override
  final String revelationType;
  @override
  final int numberOfAyahs;

  @override
  String toString() {
    return 'SurahEntity(number: $number, name: $name, englishName: $englishName, englishNameTranslation: $englishNameTranslation, revelationType: $revelationType, numberOfAyahs: $numberOfAyahs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurahEntityImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.englishNameTranslation, englishNameTranslation) ||
                other.englishNameTranslation == englishNameTranslation) &&
            (identical(other.revelationType, revelationType) ||
                other.revelationType == revelationType) &&
            (identical(other.numberOfAyahs, numberOfAyahs) ||
                other.numberOfAyahs == numberOfAyahs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, name, englishName,
      englishNameTranslation, revelationType, numberOfAyahs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurahEntityImplCopyWith<_$SurahEntityImpl> get copyWith =>
      __$$SurahEntityImplCopyWithImpl<_$SurahEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurahEntityImplToJson(
      this,
    );
  }
}

abstract class _SurahEntity implements SurahEntity {
  const factory _SurahEntity(
      {required final int number,
      required final String name,
      required final String englishName,
      required final String englishNameTranslation,
      required final String revelationType,
      required final int numberOfAyahs}) = _$SurahEntityImpl;

  factory _SurahEntity.fromJson(Map<String, dynamic> json) =
      _$SurahEntityImpl.fromJson;

  @override
  int get number;
  @override
  String get name;
  @override
  String get englishName;
  @override
  String get englishNameTranslation;
  @override
  String get revelationType;
  @override
  int get numberOfAyahs;
  @override
  @JsonKey(ignore: true)
  _$$SurahEntityImplCopyWith<_$SurahEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
