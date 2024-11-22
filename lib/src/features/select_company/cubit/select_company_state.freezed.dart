// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_company_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SelectCompanyState {
  SelectCompanyStatus get status => throw _privateConstructorUsedError;
  List<Company>? get companies => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectCompanyStateCopyWith<SelectCompanyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectCompanyStateCopyWith<$Res> {
  factory $SelectCompanyStateCopyWith(
          SelectCompanyState value, $Res Function(SelectCompanyState) then) =
      _$SelectCompanyStateCopyWithImpl<$Res, SelectCompanyState>;
  @useResult
  $Res call(
      {SelectCompanyStatus status,
      List<Company>? companies,
      String? errorMessage});
}

/// @nodoc
class _$SelectCompanyStateCopyWithImpl<$Res, $Val extends SelectCompanyState>
    implements $SelectCompanyStateCopyWith<$Res> {
  _$SelectCompanyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? companies = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SelectCompanyStatus,
      companies: freezed == companies
          ? _value.companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<Company>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SelectCompanyStateCopyWith<$Res>
    implements $SelectCompanyStateCopyWith<$Res> {
  factory _$$_SelectCompanyStateCopyWith(_$_SelectCompanyState value,
          $Res Function(_$_SelectCompanyState) then) =
      __$$_SelectCompanyStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SelectCompanyStatus status,
      List<Company>? companies,
      String? errorMessage});
}

/// @nodoc
class __$$_SelectCompanyStateCopyWithImpl<$Res>
    extends _$SelectCompanyStateCopyWithImpl<$Res, _$_SelectCompanyState>
    implements _$$_SelectCompanyStateCopyWith<$Res> {
  __$$_SelectCompanyStateCopyWithImpl(
      _$_SelectCompanyState _value, $Res Function(_$_SelectCompanyState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? companies = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_SelectCompanyState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SelectCompanyStatus,
      companies: freezed == companies
          ? _value._companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<Company>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SelectCompanyState implements _SelectCompanyState {
  const _$_SelectCompanyState(
      {required this.status, final List<Company>? companies, this.errorMessage})
      : _companies = companies;

  @override
  final SelectCompanyStatus status;
  final List<Company>? _companies;
  @override
  List<Company>? get companies {
    final value = _companies;
    if (value == null) return null;
    if (_companies is EqualUnmodifiableListView) return _companies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SelectCompanyState(status: $status, companies: $companies, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectCompanyState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._companies, _companies) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_companies), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectCompanyStateCopyWith<_$_SelectCompanyState> get copyWith =>
      __$$_SelectCompanyStateCopyWithImpl<_$_SelectCompanyState>(
          this, _$identity);
}

abstract class _SelectCompanyState implements SelectCompanyState {
  const factory _SelectCompanyState(
      {required final SelectCompanyStatus status,
      final List<Company>? companies,
      final String? errorMessage}) = _$_SelectCompanyState;

  @override
  SelectCompanyStatus get status;
  @override
  List<Company>? get companies;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_SelectCompanyStateCopyWith<_$_SelectCompanyState> get copyWith =>
      throw _privateConstructorUsedError;
}
