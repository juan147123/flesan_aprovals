// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthSession _$AuthSessionFromJson(Map<String, dynamic> json) {
  return _AuthSession.fromJson(json);
}

/// @nodoc
mixin _$AuthSession {
  Company get company => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthSessionCopyWith<AuthSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthSessionCopyWith<$Res> {
  factory $AuthSessionCopyWith(
          AuthSession value, $Res Function(AuthSession) then) =
      _$AuthSessionCopyWithImpl<$Res, AuthSession>;
  @useResult
  $Res call({Company company, User user});

  $CompanyCopyWith<$Res> get company;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthSessionCopyWithImpl<$Res, $Val extends AuthSession>
    implements $AuthSessionCopyWith<$Res> {
  _$AuthSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyCopyWith<$Res> get company {
    return $CompanyCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthSessionCopyWith<$Res>
    implements $AuthSessionCopyWith<$Res> {
  factory _$$_AuthSessionCopyWith(
          _$_AuthSession value, $Res Function(_$_AuthSession) then) =
      __$$_AuthSessionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Company company, User user});

  @override
  $CompanyCopyWith<$Res> get company;
  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_AuthSessionCopyWithImpl<$Res>
    extends _$AuthSessionCopyWithImpl<$Res, _$_AuthSession>
    implements _$$_AuthSessionCopyWith<$Res> {
  __$$_AuthSessionCopyWithImpl(
      _$_AuthSession _value, $Res Function(_$_AuthSession) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = null,
    Object? user = null,
  }) {
    return _then(_$_AuthSession(
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthSession implements _AuthSession {
  const _$_AuthSession({required this.company, required this.user});

  factory _$_AuthSession.fromJson(Map<String, dynamic> json) =>
      _$$_AuthSessionFromJson(json);

  @override
  final Company company;
  @override
  final User user;

  @override
  String toString() {
    return 'AuthSession(company: $company, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthSession &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, company, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthSessionCopyWith<_$_AuthSession> get copyWith =>
      __$$_AuthSessionCopyWithImpl<_$_AuthSession>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthSessionToJson(
      this,
    );
  }
}

abstract class _AuthSession implements AuthSession {
  const factory _AuthSession(
      {required final Company company,
      required final User user}) = _$_AuthSession;

  factory _AuthSession.fromJson(Map<String, dynamic> json) =
      _$_AuthSession.fromJson;

  @override
  Company get company;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$_AuthSessionCopyWith<_$_AuthSession> get copyWith =>
      throw _privateConstructorUsedError;
}
