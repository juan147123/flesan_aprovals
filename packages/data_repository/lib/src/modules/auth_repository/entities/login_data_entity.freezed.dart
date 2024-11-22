// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_data_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginDataEntity _$LoginDataEntityFromJson(Map<String, dynamic> json) {
  return _LoginDataEntity.fromJson(json);
}

/// @nodoc
mixin _$LoginDataEntity {
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginDataEntityCopyWith<LoginDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDataEntityCopyWith<$Res> {
  factory $LoginDataEntityCopyWith(
          LoginDataEntity value, $Res Function(LoginDataEntity) then) =
      _$LoginDataEntityCopyWithImpl<$Res, LoginDataEntity>;
  @useResult
  $Res call({@JsonKey(name: 'access_token') String accessToken});
}

/// @nodoc
class _$LoginDataEntityCopyWithImpl<$Res, $Val extends LoginDataEntity>
    implements $LoginDataEntityCopyWith<$Res> {
  _$LoginDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginDataEntityCopyWith<$Res>
    implements $LoginDataEntityCopyWith<$Res> {
  factory _$$_LoginDataEntityCopyWith(
          _$_LoginDataEntity value, $Res Function(_$_LoginDataEntity) then) =
      __$$_LoginDataEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'access_token') String accessToken});
}

/// @nodoc
class __$$_LoginDataEntityCopyWithImpl<$Res>
    extends _$LoginDataEntityCopyWithImpl<$Res, _$_LoginDataEntity>
    implements _$$_LoginDataEntityCopyWith<$Res> {
  __$$_LoginDataEntityCopyWithImpl(
      _$_LoginDataEntity _value, $Res Function(_$_LoginDataEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
  }) {
    return _then(_$_LoginDataEntity(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginDataEntity implements _LoginDataEntity {
  const _$_LoginDataEntity(
      {@JsonKey(name: 'access_token') required this.accessToken});

  factory _$_LoginDataEntity.fromJson(Map<String, dynamic> json) =>
      _$$_LoginDataEntityFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;

  @override
  String toString() {
    return 'LoginDataEntity(accessToken: $accessToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginDataEntity &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginDataEntityCopyWith<_$_LoginDataEntity> get copyWith =>
      __$$_LoginDataEntityCopyWithImpl<_$_LoginDataEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginDataEntityToJson(
      this,
    );
  }
}

abstract class _LoginDataEntity implements LoginDataEntity {
  const factory _LoginDataEntity(
          {@JsonKey(name: 'access_token') required final String accessToken}) =
      _$_LoginDataEntity;

  factory _LoginDataEntity.fromJson(Map<String, dynamic> json) =
      _$_LoginDataEntity.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$_LoginDataEntityCopyWith<_$_LoginDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
