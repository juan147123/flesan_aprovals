// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

APIResponseEntity _$APIResponseEntityFromJson(Map<String, dynamic> json) {
  return _APIResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$APIResponseEntity {
  @JsonKey(name: 'result')
  String get result => throw _privateConstructorUsedError;
  @JsonKey(name: 'error')
  ErrorEntity? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $APIResponseEntityCopyWith<APIResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $APIResponseEntityCopyWith<$Res> {
  factory $APIResponseEntityCopyWith(
          APIResponseEntity value, $Res Function(APIResponseEntity) then) =
      _$APIResponseEntityCopyWithImpl<$Res, APIResponseEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'result') String result,
      @JsonKey(name: 'error') ErrorEntity? error});

  $ErrorEntityCopyWith<$Res>? get error;
}

/// @nodoc
class _$APIResponseEntityCopyWithImpl<$Res, $Val extends APIResponseEntity>
    implements $APIResponseEntityCopyWith<$Res> {
  _$APIResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorEntity?,
    ) as $Val);
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
abstract class _$$_APIResponseEntityCopyWith<$Res>
    implements $APIResponseEntityCopyWith<$Res> {
  factory _$$_APIResponseEntityCopyWith(_$_APIResponseEntity value,
          $Res Function(_$_APIResponseEntity) then) =
      __$$_APIResponseEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'result') String result,
      @JsonKey(name: 'error') ErrorEntity? error});

  @override
  $ErrorEntityCopyWith<$Res>? get error;
}

/// @nodoc
class __$$_APIResponseEntityCopyWithImpl<$Res>
    extends _$APIResponseEntityCopyWithImpl<$Res, _$_APIResponseEntity>
    implements _$$_APIResponseEntityCopyWith<$Res> {
  __$$_APIResponseEntityCopyWithImpl(
      _$_APIResponseEntity _value, $Res Function(_$_APIResponseEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? error = freezed,
  }) {
    return _then(_$_APIResponseEntity(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_APIResponseEntity implements _APIResponseEntity {
  const _$_APIResponseEntity(
      {@JsonKey(name: 'result') required this.result,
      @JsonKey(name: 'error') this.error});

  factory _$_APIResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$$_APIResponseEntityFromJson(json);

  @override
  @JsonKey(name: 'result')
  final String result;
  @override
  @JsonKey(name: 'error')
  final ErrorEntity? error;

  @override
  String toString() {
    return 'APIResponseEntity(result: $result, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_APIResponseEntity &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_APIResponseEntityCopyWith<_$_APIResponseEntity> get copyWith =>
      __$$_APIResponseEntityCopyWithImpl<_$_APIResponseEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_APIResponseEntityToJson(
      this,
    );
  }
}

abstract class _APIResponseEntity implements APIResponseEntity {
  const factory _APIResponseEntity(
      {@JsonKey(name: 'result') required final String result,
      @JsonKey(name: 'error') final ErrorEntity? error}) = _$_APIResponseEntity;

  factory _APIResponseEntity.fromJson(Map<String, dynamic> json) =
      _$_APIResponseEntity.fromJson;

  @override
  @JsonKey(name: 'result')
  String get result;
  @override
  @JsonKey(name: 'error')
  ErrorEntity? get error;
  @override
  @JsonKey(ignore: true)
  _$$_APIResponseEntityCopyWith<_$_APIResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
