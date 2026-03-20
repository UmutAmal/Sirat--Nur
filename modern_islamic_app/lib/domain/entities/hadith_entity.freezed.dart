// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hadith_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HadithCollection _$HadithCollectionFromJson(Map<String, dynamic> json) {
  return _HadithCollection.fromJson(json);
}

/// @nodoc
mixin _$HadithCollection {
  String get id =>
      throw _privateConstructorUsedError; // e.g., 'bukhari', 'muslim'
  String get name =>
      throw _privateConstructorUsedError; // e.g., 'Sahih al-Bukhari'
  String get hasanText => throw _privateConstructorUsedError;
  int get totalHadiths => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HadithCollectionCopyWith<HadithCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HadithCollectionCopyWith<$Res> {
  factory $HadithCollectionCopyWith(
          HadithCollection value, $Res Function(HadithCollection) then) =
      _$HadithCollectionCopyWithImpl<$Res, HadithCollection>;
  @useResult
  $Res call({String id, String name, String hasanText, int totalHadiths});
}

/// @nodoc
class _$HadithCollectionCopyWithImpl<$Res, $Val extends HadithCollection>
    implements $HadithCollectionCopyWith<$Res> {
  _$HadithCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? hasanText = null,
    Object? totalHadiths = null,
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
      hasanText: null == hasanText
          ? _value.hasanText
          : hasanText // ignore: cast_nullable_to_non_nullable
              as String,
      totalHadiths: null == totalHadiths
          ? _value.totalHadiths
          : totalHadiths // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HadithCollectionImplCopyWith<$Res>
    implements $HadithCollectionCopyWith<$Res> {
  factory _$$HadithCollectionImplCopyWith(_$HadithCollectionImpl value,
          $Res Function(_$HadithCollectionImpl) then) =
      __$$HadithCollectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String hasanText, int totalHadiths});
}

/// @nodoc
class __$$HadithCollectionImplCopyWithImpl<$Res>
    extends _$HadithCollectionCopyWithImpl<$Res, _$HadithCollectionImpl>
    implements _$$HadithCollectionImplCopyWith<$Res> {
  __$$HadithCollectionImplCopyWithImpl(_$HadithCollectionImpl _value,
      $Res Function(_$HadithCollectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? hasanText = null,
    Object? totalHadiths = null,
  }) {
    return _then(_$HadithCollectionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hasanText: null == hasanText
          ? _value.hasanText
          : hasanText // ignore: cast_nullable_to_non_nullable
              as String,
      totalHadiths: null == totalHadiths
          ? _value.totalHadiths
          : totalHadiths // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HadithCollectionImpl implements _HadithCollection {
  const _$HadithCollectionImpl(
      {required this.id,
      required this.name,
      required this.hasanText,
      required this.totalHadiths});

  factory _$HadithCollectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$HadithCollectionImplFromJson(json);

  @override
  final String id;
// e.g., 'bukhari', 'muslim'
  @override
  final String name;
// e.g., 'Sahih al-Bukhari'
  @override
  final String hasanText;
  @override
  final int totalHadiths;

  @override
  String toString() {
    return 'HadithCollection(id: $id, name: $name, hasanText: $hasanText, totalHadiths: $totalHadiths)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HadithCollectionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.hasanText, hasanText) ||
                other.hasanText == hasanText) &&
            (identical(other.totalHadiths, totalHadiths) ||
                other.totalHadiths == totalHadiths));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, hasanText, totalHadiths);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HadithCollectionImplCopyWith<_$HadithCollectionImpl> get copyWith =>
      __$$HadithCollectionImplCopyWithImpl<_$HadithCollectionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HadithCollectionImplToJson(
      this,
    );
  }
}

abstract class _HadithCollection implements HadithCollection {
  const factory _HadithCollection(
      {required final String id,
      required final String name,
      required final String hasanText,
      required final int totalHadiths}) = _$HadithCollectionImpl;

  factory _HadithCollection.fromJson(Map<String, dynamic> json) =
      _$HadithCollectionImpl.fromJson;

  @override
  String get id;
  @override // e.g., 'bukhari', 'muslim'
  String get name;
  @override // e.g., 'Sahih al-Bukhari'
  String get hasanText;
  @override
  int get totalHadiths;
  @override
  @JsonKey(ignore: true)
  _$$HadithCollectionImplCopyWith<_$HadithCollectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HadithEntity _$HadithEntityFromJson(Map<String, dynamic> json) {
  return _HadithEntity.fromJson(json);
}

/// @nodoc
mixin _$HadithEntity {
  int get id => throw _privateConstructorUsedError;
  String get collectionId => throw _privateConstructorUsedError;
  int get hadithNumber => throw _privateConstructorUsedError;
  String get arabicText => throw _privateConstructorUsedError;
  String get translation => throw _privateConstructorUsedError;
  String get chapterName => throw _privateConstructorUsedError;
  String get bookName => throw _privateConstructorUsedError;
  String get grade => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HadithEntityCopyWith<HadithEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HadithEntityCopyWith<$Res> {
  factory $HadithEntityCopyWith(
          HadithEntity value, $Res Function(HadithEntity) then) =
      _$HadithEntityCopyWithImpl<$Res, HadithEntity>;
  @useResult
  $Res call(
      {int id,
      String collectionId,
      int hadithNumber,
      String arabicText,
      String translation,
      String chapterName,
      String bookName,
      String grade});
}

/// @nodoc
class _$HadithEntityCopyWithImpl<$Res, $Val extends HadithEntity>
    implements $HadithEntityCopyWith<$Res> {
  _$HadithEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? hadithNumber = null,
    Object? arabicText = null,
    Object? translation = null,
    Object? chapterName = null,
    Object? bookName = null,
    Object? grade = null,
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
      hadithNumber: null == hadithNumber
          ? _value.hadithNumber
          : hadithNumber // ignore: cast_nullable_to_non_nullable
              as int,
      arabicText: null == arabicText
          ? _value.arabicText
          : arabicText // ignore: cast_nullable_to_non_nullable
              as String,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String,
      chapterName: null == chapterName
          ? _value.chapterName
          : chapterName // ignore: cast_nullable_to_non_nullable
              as String,
      bookName: null == bookName
          ? _value.bookName
          : bookName // ignore: cast_nullable_to_non_nullable
              as String,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HadithEntityImplCopyWith<$Res>
    implements $HadithEntityCopyWith<$Res> {
  factory _$$HadithEntityImplCopyWith(
          _$HadithEntityImpl value, $Res Function(_$HadithEntityImpl) then) =
      __$$HadithEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String collectionId,
      int hadithNumber,
      String arabicText,
      String translation,
      String chapterName,
      String bookName,
      String grade});
}

/// @nodoc
class __$$HadithEntityImplCopyWithImpl<$Res>
    extends _$HadithEntityCopyWithImpl<$Res, _$HadithEntityImpl>
    implements _$$HadithEntityImplCopyWith<$Res> {
  __$$HadithEntityImplCopyWithImpl(
      _$HadithEntityImpl _value, $Res Function(_$HadithEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? hadithNumber = null,
    Object? arabicText = null,
    Object? translation = null,
    Object? chapterName = null,
    Object? bookName = null,
    Object? grade = null,
  }) {
    return _then(_$HadithEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
      hadithNumber: null == hadithNumber
          ? _value.hadithNumber
          : hadithNumber // ignore: cast_nullable_to_non_nullable
              as int,
      arabicText: null == arabicText
          ? _value.arabicText
          : arabicText // ignore: cast_nullable_to_non_nullable
              as String,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String,
      chapterName: null == chapterName
          ? _value.chapterName
          : chapterName // ignore: cast_nullable_to_non_nullable
              as String,
      bookName: null == bookName
          ? _value.bookName
          : bookName // ignore: cast_nullable_to_non_nullable
              as String,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HadithEntityImpl implements _HadithEntity {
  const _$HadithEntityImpl(
      {required this.id,
      required this.collectionId,
      required this.hadithNumber,
      required this.arabicText,
      required this.translation,
      required this.chapterName,
      required this.bookName,
      required this.grade});

  factory _$HadithEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$HadithEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String collectionId;
  @override
  final int hadithNumber;
  @override
  final String arabicText;
  @override
  final String translation;
  @override
  final String chapterName;
  @override
  final String bookName;
  @override
  final String grade;

  @override
  String toString() {
    return 'HadithEntity(id: $id, collectionId: $collectionId, hadithNumber: $hadithNumber, arabicText: $arabicText, translation: $translation, chapterName: $chapterName, bookName: $bookName, grade: $grade)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HadithEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.hadithNumber, hadithNumber) ||
                other.hadithNumber == hadithNumber) &&
            (identical(other.arabicText, arabicText) ||
                other.arabicText == arabicText) &&
            (identical(other.translation, translation) ||
                other.translation == translation) &&
            (identical(other.chapterName, chapterName) ||
                other.chapterName == chapterName) &&
            (identical(other.bookName, bookName) ||
                other.bookName == bookName) &&
            (identical(other.grade, grade) || other.grade == grade));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, hadithNumber,
      arabicText, translation, chapterName, bookName, grade);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HadithEntityImplCopyWith<_$HadithEntityImpl> get copyWith =>
      __$$HadithEntityImplCopyWithImpl<_$HadithEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HadithEntityImplToJson(
      this,
    );
  }
}

abstract class _HadithEntity implements HadithEntity {
  const factory _HadithEntity(
      {required final int id,
      required final String collectionId,
      required final int hadithNumber,
      required final String arabicText,
      required final String translation,
      required final String chapterName,
      required final String bookName,
      required final String grade}) = _$HadithEntityImpl;

  factory _HadithEntity.fromJson(Map<String, dynamic> json) =
      _$HadithEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get collectionId;
  @override
  int get hadithNumber;
  @override
  String get arabicText;
  @override
  String get translation;
  @override
  String get chapterName;
  @override
  String get bookName;
  @override
  String get grade;
  @override
  @JsonKey(ignore: true)
  _$$HadithEntityImplCopyWith<_$HadithEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
