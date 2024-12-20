// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorEntity _$ErrorEntityFromJson(Map<String, dynamic> json) {
  return _ErrorEntity.fromJson(json);
}

/// @nodoc
mixin _$ErrorEntity {
  @JsonKey(name: 'code')
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorEntityCopyWith<ErrorEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorEntityCopyWith<$Res> {
  factory $ErrorEntityCopyWith(
          ErrorEntity value, $Res Function(ErrorEntity) then) =
      _$ErrorEntityCopyWithImpl<$Res, ErrorEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int code,
      @JsonKey(name: 'message') String message});
}

/// @nodoc
class _$ErrorEntityCopyWithImpl<$Res, $Val extends ErrorEntity>
    implements $ErrorEntityCopyWith<$Res> {
  _$ErrorEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ErrorEntityCopyWith<$Res>
    implements $ErrorEntityCopyWith<$Res> {
  factory _$$_ErrorEntityCopyWith(
          _$_ErrorEntity value, $Res Function(_$_ErrorEntity) then) =
      __$$_ErrorEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int code,
      @JsonKey(name: 'message') String message});
}

/// @nodoc
class __$$_ErrorEntityCopyWithImpl<$Res>
    extends _$ErrorEntityCopyWithImpl<$Res, _$_ErrorEntity>
    implements _$$_ErrorEntityCopyWith<$Res> {
  __$$_ErrorEntityCopyWithImpl(
      _$_ErrorEntity _value, $Res Function(_$_ErrorEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_$_ErrorEntity(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorEntity implements _ErrorEntity {
  const _$_ErrorEntity(
      {@JsonKey(name: 'code') required this.code,
      @JsonKey(name: 'message') required this.message});

  factory _$_ErrorEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorEntityFromJson(json);

  @override
  @JsonKey(name: 'code')
  final int code;
  @override
  @JsonKey(name: 'message')
  final String message;

  @override
  String toString() {
    return 'ErrorEntity(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorEntity &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorEntityCopyWith<_$_ErrorEntity> get copyWith =>
      __$$_ErrorEntityCopyWithImpl<_$_ErrorEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorEntityToJson(
      this,
    );
  }
}

abstract class _ErrorEntity implements ErrorEntity {
  const factory _ErrorEntity(
          {@JsonKey(name: 'code') required final int code,
          @JsonKey(name: 'message') required final String message}) =
      _$_ErrorEntity;

  factory _ErrorEntity.fromJson(Map<String, dynamic> json) =
      _$_ErrorEntity.fromJson;

  @override
  @JsonKey(name: 'code')
  int get code;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorEntityCopyWith<_$_ErrorEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
