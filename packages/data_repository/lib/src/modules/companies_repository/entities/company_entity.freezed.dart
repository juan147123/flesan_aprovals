// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompanyEntity _$CompanyEntityFromJson(Map<String, dynamic> json) {
  return _CompanyEntity.fromJson(json);
}

/// @nodoc
mixin _$CompanyEntity {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_url')
  String get thumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_url')
  String get logoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'background_url')
  String get backgroundUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyEntityCopyWith<CompanyEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyEntityCopyWith<$Res> {
  factory $CompanyEntityCopyWith(
          CompanyEntity value, $Res Function(CompanyEntity) then) =
      _$CompanyEntityCopyWithImpl<$Res, CompanyEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'thumbnail_url') String thumbnailUrl,
      @JsonKey(name: 'logo_url') String logoUrl,
      @JsonKey(name: 'background_url') String backgroundUrl});
}

/// @nodoc
class _$CompanyEntityCopyWithImpl<$Res, $Val extends CompanyEntity>
    implements $CompanyEntityCopyWith<$Res> {
  _$CompanyEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? thumbnailUrl = null,
    Object? logoUrl = null,
    Object? backgroundUrl = null,
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
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      logoUrl: null == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundUrl: null == backgroundUrl
          ? _value.backgroundUrl
          : backgroundUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CompanyEntityCopyWith<$Res>
    implements $CompanyEntityCopyWith<$Res> {
  factory _$$_CompanyEntityCopyWith(
          _$_CompanyEntity value, $Res Function(_$_CompanyEntity) then) =
      __$$_CompanyEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'thumbnail_url') String thumbnailUrl,
      @JsonKey(name: 'logo_url') String logoUrl,
      @JsonKey(name: 'background_url') String backgroundUrl});
}

/// @nodoc
class __$$_CompanyEntityCopyWithImpl<$Res>
    extends _$CompanyEntityCopyWithImpl<$Res, _$_CompanyEntity>
    implements _$$_CompanyEntityCopyWith<$Res> {
  __$$_CompanyEntityCopyWithImpl(
      _$_CompanyEntity _value, $Res Function(_$_CompanyEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? thumbnailUrl = null,
    Object? logoUrl = null,
    Object? backgroundUrl = null,
  }) {
    return _then(_$_CompanyEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      logoUrl: null == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundUrl: null == backgroundUrl
          ? _value.backgroundUrl
          : backgroundUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompanyEntity implements _CompanyEntity {
  const _$_CompanyEntity(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'thumbnail_url') required this.thumbnailUrl,
      @JsonKey(name: 'logo_url') required this.logoUrl,
      @JsonKey(name: 'background_url') required this.backgroundUrl});

  factory _$_CompanyEntity.fromJson(Map<String, dynamic> json) =>
      _$$_CompanyEntityFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'thumbnail_url')
  final String thumbnailUrl;
  @override
  @JsonKey(name: 'logo_url')
  final String logoUrl;
  @override
  @JsonKey(name: 'background_url')
  final String backgroundUrl;

  @override
  String toString() {
    return 'CompanyEntity(id: $id, name: $name, thumbnailUrl: $thumbnailUrl, logoUrl: $logoUrl, backgroundUrl: $backgroundUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompanyEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.backgroundUrl, backgroundUrl) ||
                other.backgroundUrl == backgroundUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, thumbnailUrl, logoUrl, backgroundUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompanyEntityCopyWith<_$_CompanyEntity> get copyWith =>
      __$$_CompanyEntityCopyWithImpl<_$_CompanyEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompanyEntityToJson(
      this,
    );
  }
}

abstract class _CompanyEntity implements CompanyEntity {
  const factory _CompanyEntity(
      {@JsonKey(name: 'id')
          required final String id,
      @JsonKey(name: 'name')
          required final String name,
      @JsonKey(name: 'thumbnail_url')
          required final String thumbnailUrl,
      @JsonKey(name: 'logo_url')
          required final String logoUrl,
      @JsonKey(name: 'background_url')
          required final String backgroundUrl}) = _$_CompanyEntity;

  factory _CompanyEntity.fromJson(Map<String, dynamic> json) =
      _$_CompanyEntity.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'thumbnail_url')
  String get thumbnailUrl;
  @override
  @JsonKey(name: 'logo_url')
  String get logoUrl;
  @override
  @JsonKey(name: 'background_url')
  String get backgroundUrl;
  @override
  @JsonKey(ignore: true)
  _$$_CompanyEntityCopyWith<_$_CompanyEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
