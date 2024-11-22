// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResponseEntity _$LoginResponseEntityFromJson(Map<String, dynamic> json) {
  return _LoginResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$LoginResponseEntity {
  @JsonKey(name: 'result')
  String get result => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  LoginDataEntity? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'error')
  ErrorEntity? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseEntityCopyWith<LoginResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseEntityCopyWith<$Res> {
  factory $LoginResponseEntityCopyWith(
          LoginResponseEntity value, $Res Function(LoginResponseEntity) then) =
      _$LoginResponseEntityCopyWithImpl<$Res, LoginResponseEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'result') String result,
      @JsonKey(name: 'data') LoginDataEntity? data,
      @JsonKey(name: 'error') ErrorEntity? error});

  $LoginDataEntityCopyWith<$Res>? get data;
  $ErrorEntityCopyWith<$Res>? get error;
}

/// @nodoc
class _$LoginResponseEntityCopyWithImpl<$Res, $Val extends LoginResponseEntity>
    implements $LoginResponseEntityCopyWith<$Res> {
  _$LoginResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginDataEntity?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginDataEntityCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $LoginDataEntityCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorEntityCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $ErrorEntityCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoginResponseEntityCopyWith<$Res>
    implements $LoginResponseEntityCopyWith<$Res> {
  factory _$$_LoginResponseEntityCopyWith(_$_LoginResponseEntity value,
          $Res Function(_$_LoginResponseEntity) then) =
      __$$_LoginResponseEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'result') String result,
      @JsonKey(name: 'data') LoginDataEntity? data,
      @JsonKey(name: 'error') ErrorEntity? error});

  @override
  $LoginDataEntityCopyWith<$Res>? get data;
  @override
  $ErrorEntityCopyWith<$Res>? get error;
}

/// @nodoc
class __$$_LoginResponseEntityCopyWithImpl<$Res>
    extends _$LoginResponseEntityCopyWithImpl<$Res, _$_LoginResponseEntity>
    implements _$$_LoginResponseEntityCopyWith<$Res> {
  __$$_LoginResponseEntityCopyWithImpl(_$_LoginResponseEntity _value,
      $Res Function(_$_LoginResponseEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_LoginResponseEntity(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginDataEntity?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginResponseEntity implements _LoginResponseEntity {
  const _$_LoginResponseEntity(
      {@JsonKey(name: 'result') required this.result,
      @JsonKey(name: 'data') this.data,
      @JsonKey(name: 'error') this.error});

  factory _$_LoginResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$$_LoginResponseEntityFromJson(json);

  @override
  @JsonKey(name: 'result')
  final String result;
  @override
  @JsonKey(name: 'data')
  final LoginDataEntity? data;
  @override
  @JsonKey(name: 'error')
  final ErrorEntity? error;

  @override
  String toString() {
    return 'LoginResponseEntity(result: $result, data: $data, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginResponseEntity &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result, data, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginResponseEntityCopyWith<_$_LoginResponseEntity> get copyWith =>
      __$$_LoginResponseEntityCopyWithImpl<_$_LoginResponseEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginResponseEntityToJson(
      this,
    );
  }
}

abstract class _LoginResponseEntity implements LoginResponseEntity {
  const factory _LoginResponseEntity(
          {@JsonKey(name: 'result') required final String result,
          @JsonKey(name: 'data') final LoginDataEntity? data,
          @JsonKey(name: 'error') final ErrorEntity? error}) =
      _$_LoginResponseEntity;

  factory _LoginResponseEntity.fromJson(Map<String, dynamic> json) =
      _$_LoginResponseEntity.fromJson;

  @override
  @JsonKey(name: 'result')
  String get result;
  @override
  @JsonKey(name: 'data')
  LoginDataEntity? get data;
  @override
  @JsonKey(name: 'error')
  ErrorEntity? get error;
  @override
  @JsonKey(ignore: true)
  _$$_LoginResponseEntityCopyWith<_$_LoginResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
