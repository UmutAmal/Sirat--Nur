// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tafsir_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TafsirCollection _$TafsirCollectionFromJson(Map<String, dynamic> json) {
  return _TafsirCollection.fromJson(json);
}

/// @nodoc
mixin _$TafsirCollection {
  String get id =>
      throw _privateConstructorUsedError; // e.g., 'ibn_kathir', 'jalalayn'
  String get name => throw _privateConstructorUsedError;
  String get authorName => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TafsirCollectionCopyWith<TafsirCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TafsirCollectionCopyWith<$Res> {
  factory $TafsirCollectionCopyWith(
          TafsirCollection value, $Res Function(TafsirCollection) then) =
      _$TafsirCollectionCopyWithImpl<$Res, TafsirCollection>;
  @useResult
  $Res call({String id, String name, String authorName, String language});
}

/// @nodoc
class _$TafsirCollectionCopyWithImpl<$Res, $Val extends TafsirCollection>
    implements $TafsirCollectionCopyWith<$Res> {
  _$TafsirCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? authorName = null,
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TafsirCollectionImplCopyWith<$Res>
    implements $TafsirCollectionCopyWith<$Res> {
  factory _$$TafsirCollectionImplCopyWith(_$TafsirCollectionImpl value,
          $Res Function(_$TafsirCollectionImpl) then) =
      __$$TafsirCollectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String authorName, String language});
}

/// @nodoc
class __$$TafsirCollectionImplCopyWithImpl<$Res>
    extends _$TafsirCollectionCopyWithImpl<$Res, _$TafsirCollectionImpl>
    implements _$$TafsirCollectionImplCopyWith<$Res> {
  __$$TafsirCollectionImplCopyWithImpl(_$TafsirCollectionImpl _value,
      $Res Function(_$TafsirCollectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? authorName = null,
    Object? language = null,
  }) {
    return _then(_$TafsirCollectionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TafsirCollectionImpl implements _TafsirCollection {
  const _$TafsirCollectionImpl(
      {required this.id,
      required this.name,
      required this.authorName,
      required this.language});

  factory _$TafsirCollectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TafsirCollectionImplFromJson(json);

  @override
  final String id;
// e.g., 'ibn_kathir', 'jalalayn'
  @override
  final String name;
  @override
  final String authorName;
  @override
  final String language;

  @override
  String toString() {
    return 'TafsirCollection(id: $id, name: $name, authorName: $authorName, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TafsirCollectionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.authorName, authorName) ||
                other.authorName == authorName) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, authorName, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TafsirCollectionImplCopyWith<_$TafsirCollectionImpl> get copyWith =>
      __$$TafsirCollectionImplCopyWithImpl<_$TafsirCollectionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TafsirCollectionImplToJson(
      this,
    );
  }
}

abstract class _TafsirCollection implements TafsirCollection {
  const factory _TafsirCollection(
      {required final String id,
      required final String name,
      required final String authorName,
      required final String language}) = _$TafsirCollectionImpl;

  factory _TafsirCollection.fromJson(Map<String, dynamic> json) =
      _$TafsirCollectionImpl.fromJson;

  @override
  String get id;
  @override // e.g., 'ibn_kathir', 'jalalayn'
  String get name;
  @override
  String get authorName;
  @override
  String get language;
  @override
  @JsonKey(ignore: true)
  _$$TafsirCollectionImplCopyWith<_$TafsirCollectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TafsirEntity _$TafsirEntityFromJson(Map<String, dynamic> json) {
  return _TafsirEntity.fromJson(json);
}

/// @nodoc
mixin _$TafsirEntity {
  int get id => throw _privateConstructorUsedError;
  String get collectionId => throw _privateConstructorUsedError;
  int get surahId => throw _privateConstructorUsedError;
  int get startAyah => throw _privateConstructorUsedError;
  int get endAyah => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TafsirEntityCopyWith<TafsirEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TafsirEntityCopyWith<$Res> {
  factory $TafsirEntityCopyWith(
          TafsirEntity value, $Res Function(TafsirEntity) then) =
      _$TafsirEntityCopyWithImpl<$Res, TafsirEntity>;
  @useResult
  $Res call(
      {int id,
      String collectionId,
      int surahId,
      int startAyah,
      int endAyah,
      String text});
}

/// @nodoc
class _$TafsirEntityCopyWithImpl<$Res, $Val extends TafsirEntity>
    implements $TafsirEntityCopyWith<$Res> {
  _$TafsirEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? surahId = null,
    Object? startAyah = null,
    Object? endAyah = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
      surahId: null == surahId
          ? _value.surahId
          : surahId // ignore: cast_nullable_to_non_nullable
              as int,
      startAyah: null == startAyah
          ? _value.startAyah
          : startAyah // ignore: cast_nullable_to_non_nullable
              as int,
      endAyah: null == endAyah
          ? _value.endAyah
          : endAyah // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TafsirEntityImplCopyWith<$Res>
    implements $TafsirEntityCopyWith<$Res> {
  factory _$$TafsirEntityImplCopyWith(
          _$TafsirEntityImpl value, $Res Function(_$TafsirEntityImpl) then) =
      __$$TafsirEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String collectionId,
      int surahId,
      int startAyah,
      int endAyah,
      String text});
}

/// @nodoc
class __$$TafsirEntityImplCopyWithImpl<$Res>
    extends _$TafsirEntityCopyWithImpl<$Res, _$TafsirEntityImpl>
    implements _$$TafsirEntityImplCopyWith<$Res> {
  __$$TafsirEntityImplCopyWithImpl(
      _$TafsirEntityImpl _value, $Res Function(_$TafsirEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? surahId = null,
    Object? startAyah = null,
    Object? endAyah = null,
    Object? text = null,
  }) {
    return _then(_$TafsirEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
      surahId: null == surahId
          ? _value.surahId
          : surahId // ignore: cast_nullable_to_non_nullable
              as int,
      startAyah: null == startAyah
          ? _value.startAyah
          : startAyah // ignore: cast_nullable_to_non_nullable
              as int,
      endAyah: null == endAyah
          ? _value.endAyah
          : endAyah // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TafsirEntityImpl implements _TafsirEntity {
  const _$TafsirEntityImpl(
      {required this.id,
      required this.collectionId,
      required this.surahId,
      required this.startAyah,
      required this.endAyah,
      required this.text});

  factory _$TafsirEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TafsirEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String collectionId;
  @override
  final int surahId;
  @override
  final int startAyah;
  @override
  final int endAyah;
  @override
  final String text;

  @override
  String toString() {
    return 'TafsirEntity(id: $id, collectionId: $collectionId, surahId: $surahId, startAyah: $startAyah, endAyah: $endAyah, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TafsirEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.surahId, surahId) || other.surahId == surahId) &&
            (identical(other.startAyah, startAyah) ||
                other.startAyah == startAyah) &&
            (identical(other.endAyah, endAyah) || other.endAyah == endAyah) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, collectionId, surahId, startAyah, endAyah, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TafsirEntityImplCopyWith<_$TafsirEntityImpl> get copyWith =>
      __$$TafsirEntityImplCopyWithImpl<_$TafsirEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TafsirEntityImplToJson(
      this,
    );
  }
}

abstract class _TafsirEntity implements TafsirEntity {
  const factory _TafsirEntity(
      {required final int id,
      required final String collectionId,
      required final int surahId,
      required final int startAyah,
      required final int endAyah,
      required final String text}) = _$TafsirEntityImpl;

  factory _TafsirEntity.fromJson(Map<String, dynamic> json) =
      _$TafsirEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get collectionId;
  @override
  int get surahId;
  @override
  int get startAyah;
  @override
  int get endAyah;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$TafsirEntityImplCopyWith<_$TafsirEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
