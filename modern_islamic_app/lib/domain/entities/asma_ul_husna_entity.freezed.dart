// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asma_ul_husna_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AsmaUlHusnaEntity _$AsmaUlHusnaEntityFromJson(Map<String, dynamic> json) {
  return _AsmaUlHusnaEntity.fromJson(json);
}

/// @nodoc
mixin _$AsmaUlHusnaEntity {
  int get id => throw _privateConstructorUsedError;
  String get arabic => throw _privateConstructorUsedError;
  String get transliteration => throw _privateConstructorUsedError;
  Map<String, String> get translations =>
      throw _privateConstructorUsedError; // Support for 20+ Languages mapping
  String get audioUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AsmaUlHusnaEntityCopyWith<AsmaUlHusnaEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AsmaUlHusnaEntityCopyWith<$Res> {
  factory $AsmaUlHusnaEntityCopyWith(
          AsmaUlHusnaEntity value, $Res Function(AsmaUlHusnaEntity) then) =
      _$AsmaUlHusnaEntityCopyWithImpl<$Res, AsmaUlHusnaEntity>;
  @useResult
  $Res call(
      {int id,
      String arabic,
      String transliteration,
      Map<String, String> translations,
      String audioUrl});
}

/// @nodoc
class _$AsmaUlHusnaEntityCopyWithImpl<$Res, $Val extends AsmaUlHusnaEntity>
    implements $AsmaUlHusnaEntityCopyWith<$Res> {
  _$AsmaUlHusnaEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? arabic = null,
    Object? transliteration = null,
    Object? translations = null,
    Object? audioUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      arabic: null == arabic
          ? _value.arabic
          : arabic // ignore: cast_nullable_to_non_nullable
              as String,
      transliteration: null == transliteration
          ? _value.transliteration
          : transliteration // ignore: cast_nullable_to_non_nullable
              as String,
      translations: null == translations
          ? _value.translations
          : translations // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      audioUrl: null == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AsmaUlHusnaEntityImplCopyWith<$Res>
    implements $AsmaUlHusnaEntityCopyWith<$Res> {
  factory _$$AsmaUlHusnaEntityImplCopyWith(_$AsmaUlHusnaEntityImpl value,
          $Res Function(_$AsmaUlHusnaEntityImpl) then) =
      __$$AsmaUlHusnaEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String arabic,
      String transliteration,
      Map<String, String> translations,
      String audioUrl});
}

/// @nodoc
class __$$AsmaUlHusnaEntityImplCopyWithImpl<$Res>
    extends _$AsmaUlHusnaEntityCopyWithImpl<$Res, _$AsmaUlHusnaEntityImpl>
    implements _$$AsmaUlHusnaEntityImplCopyWith<$Res> {
  __$$AsmaUlHusnaEntityImplCopyWithImpl(_$AsmaUlHusnaEntityImpl _value,
      $Res Function(_$AsmaUlHusnaEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? arabic = null,
    Object? transliteration = null,
    Object? translations = null,
    Object? audioUrl = null,
  }) {
    return _then(_$AsmaUlHusnaEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      arabic: null == arabic
          ? _value.arabic
          : arabic // ignore: cast_nullable_to_non_nullable
              as String,
      transliteration: null == transliteration
          ? _value.transliteration
          : transliteration // ignore: cast_nullable_to_non_nullable
              as String,
      translations: null == translations
          ? _value._translations
          : translations // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      audioUrl: null == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AsmaUlHusnaEntityImpl implements _AsmaUlHusnaEntity {
  const _$AsmaUlHusnaEntityImpl(
      {required this.id,
      required this.arabic,
      required this.transliteration,
      required final Map<String, String> translations,
      required this.audioUrl})
      : _translations = translations;

  factory _$AsmaUlHusnaEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AsmaUlHusnaEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String arabic;
  @override
  final String transliteration;
  final Map<String, String> _translations;
  @override
  Map<String, String> get translations {
    if (_translations is EqualUnmodifiableMapView) return _translations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_translations);
  }

// Support for 20+ Languages mapping
  @override
  final String audioUrl;

  @override
  String toString() {
    return 'AsmaUlHusnaEntity(id: $id, arabic: $arabic, transliteration: $transliteration, translations: $translations, audioUrl: $audioUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsmaUlHusnaEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.arabic, arabic) || other.arabic == arabic) &&
            (identical(other.transliteration, transliteration) ||
                other.transliteration == transliteration) &&
            const DeepCollectionEquality()
                .equals(other._translations, _translations) &&
            (identical(other.audioUrl, audioUrl) ||
                other.audioUrl == audioUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, arabic, transliteration,
      const DeepCollectionEquality().hash(_translations), audioUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AsmaUlHusnaEntityImplCopyWith<_$AsmaUlHusnaEntityImpl> get copyWith =>
      __$$AsmaUlHusnaEntityImplCopyWithImpl<_$AsmaUlHusnaEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AsmaUlHusnaEntityImplToJson(
      this,
    );
  }
}

abstract class _AsmaUlHusnaEntity implements AsmaUlHusnaEntity {
  const factory _AsmaUlHusnaEntity(
      {required final int id,
      required final String arabic,
      required final String transliteration,
      required final Map<String, String> translations,
      required final String audioUrl}) = _$AsmaUlHusnaEntityImpl;

  factory _AsmaUlHusnaEntity.fromJson(Map<String, dynamic> json) =
      _$AsmaUlHusnaEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get arabic;
  @override
  String get transliteration;
  @override
  Map<String, String> get translations;
  @override // Support for 20+ Languages mapping
  String get audioUrl;
  @override
  @JsonKey(ignore: true)
  _$$AsmaUlHusnaEntityImplCopyWith<_$AsmaUlHusnaEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
