// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attachment_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttachmentEntity _$AttachmentEntityFromJson(Map<String, dynamic> json) {
  return _AttachmentEntity.fromJson(json);
}

/// @nodoc
mixin _$AttachmentEntity {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttachmentEntityCopyWith<AttachmentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentEntityCopyWith<$Res> {
  factory $AttachmentEntityCopyWith(
          AttachmentEntity value, $Res Function(AttachmentEntity) then) =
      _$AttachmentEntityCopyWithImpl<$Res, AttachmentEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'content') String? content});
}

/// @nodoc
class _$AttachmentEntityCopyWithImpl<$Res, $Val extends AttachmentEntity>
    implements $AttachmentEntityCopyWith<$Res> {
  _$AttachmentEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttachmentEntityCopyWith<$Res>
    implements $AttachmentEntityCopyWith<$Res> {
  factory _$$_AttachmentEntityCopyWith(
          _$_AttachmentEntity value, $Res Function(_$_AttachmentEntity) then) =
      __$$_AttachmentEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'content') String? content});
}

/// @nodoc
class __$$_AttachmentEntityCopyWithImpl<$Res>
    extends _$AttachmentEntityCopyWithImpl<$Res, _$_AttachmentEntity>
    implements _$$_AttachmentEntityCopyWith<$Res> {
  __$$_AttachmentEntityCopyWithImpl(
      _$_AttachmentEntity _value, $Res Function(_$_AttachmentEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_AttachmentEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttachmentEntity implements _AttachmentEntity {
  const _$_AttachmentEntity(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'content') required this.content});

  factory _$_AttachmentEntity.fromJson(Map<String, dynamic> json) =>
      _$$_AttachmentEntityFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'content')
  final String? content;

  @override
  String toString() {
    return 'AttachmentEntity(id: $id, name: $name, description: $description, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttachmentEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttachmentEntityCopyWith<_$_AttachmentEntity> get copyWith =>
      __$$_AttachmentEntityCopyWithImpl<_$_AttachmentEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttachmentEntityToJson(
      this,
    );
  }
}

abstract class _AttachmentEntity implements AttachmentEntity {
  const factory _AttachmentEntity(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'name') required final String? name,
          @JsonKey(name: 'description') required final String? description,
          @JsonKey(name: 'content') required final String? content}) =
      _$_AttachmentEntity;

  factory _AttachmentEntity.fromJson(Map<String, dynamic> json) =
      _$_AttachmentEntity.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'content')
  String? get content;
  @override
  @JsonKey(ignore: true)
  _$$_AttachmentEntityCopyWith<_$_AttachmentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
