// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'companies_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompaniesResponseEntity _$CompaniesResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _CompaniesResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$CompaniesResponseEntity {
  @JsonKey(name: 'result')
  String get result => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<CompanyEntity>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'error')
  ErrorEntity? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompaniesResponseEntityCopyWith<CompaniesResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompaniesResponseEntityCopyWith<$Res> {
  factory $CompaniesResponseEntityCopyWith(CompaniesResponseEntity value,
          $Res Function(CompaniesResponseEntity) then) =
      _$CompaniesResponseEntityCopyWithImpl<$Res, CompaniesResponseEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'result') String result,
      @JsonKey(name: 'data') List<CompanyEntity>? data,
      @JsonKey(name: 'error') ErrorEntity? error});

  $ErrorEntityCopyWith<$Res>? get error;
}

/// @nodoc
class _$CompaniesResponseEntityCopyWithImpl<$Res,
        $Val extends CompaniesResponseEntity>
    implements $CompaniesResponseEntityCopyWith<$Res> {
  _$CompaniesResponseEntityCopyWithImpl(this._value, this._then);

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
              as List<CompanyEntity>?,
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
abstract class _$$_CompaniesResponseEntityCopyWith<$Res>
    implements $CompaniesResponseEntityCopyWith<$Res> {
  factory _$$_CompaniesResponseEntityCopyWith(_$_CompaniesResponseEntity value,
          $Res Function(_$_CompaniesResponseEntity) then) =
      __$$_CompaniesResponseEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'result') String result,
      @JsonKey(name: 'data') List<CompanyEntity>? data,
      @JsonKey(name: 'error') ErrorEntity? error});

  @override
  $ErrorEntityCopyWith<$Res>? get error;
}

/// @nodoc
class __$$_CompaniesResponseEntityCopyWithImpl<$Res>
    extends _$CompaniesResponseEntityCopyWithImpl<$Res,
        _$_CompaniesResponseEntity>
    implements _$$_CompaniesResponseEntityCopyWith<$Res> {
  __$$_CompaniesResponseEntityCopyWithImpl(_$_CompaniesResponseEntity _value,
      $Res Function(_$_CompaniesResponseEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_CompaniesResponseEntity(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CompanyEntity>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompaniesResponseEntity implements _CompaniesResponseEntity {
  const _$_CompaniesResponseEntity(
      {@JsonKey(name: 'result') required this.result,
      @JsonKey(name: 'data') final List<CompanyEntity>? data,
      @JsonKey(name: 'error') this.error})
      : _data = data;

  factory _$_CompaniesResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$$_CompaniesResponseEntityFromJson(json);

  @override
  @JsonKey(name: 'result')
  final String result;
  final List<CompanyEntity>? _data;
  @override
  @JsonKey(name: 'data')
  List<CompanyEntity>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'error')
  final ErrorEntity? error;

  @override
  String toString() {
    return 'CompaniesResponseEntity(result: $result, data: $data, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompaniesResponseEntity &&
            (identical(other.result, result) || other.result == result) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, result, const DeepCollectionEquality().hash(_data), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompaniesResponseEntityCopyWith<_$_CompaniesResponseEntity>
      get copyWith =>
          __$$_CompaniesResponseEntityCopyWithImpl<_$_CompaniesResponseEntity>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompaniesResponseEntityToJson(
      this,
    );
  }
}

abstract class _CompaniesResponseEntity implements CompaniesResponseEntity {
  const factory _CompaniesResponseEntity(
          {@JsonKey(name: 'result') required final String result,
          @JsonKey(name: 'data') final List<CompanyEntity>? data,
          @JsonKey(name: 'error') final ErrorEntity? error}) =
      _$_CompaniesResponseEntity;

  factory _CompaniesResponseEntity.fromJson(Map<String, dynamic> json) =
      _$_CompaniesResponseEntity.fromJson;

  @override
  @JsonKey(name: 'result')
  String get result;
  @override
  @JsonKey(name: 'data')
  List<CompanyEntity>? get data;
  @override
  @JsonKey(name: 'error')
  ErrorEntity? get error;
  @override
  @JsonKey(ignore: true)
  _$$_CompaniesResponseEntityCopyWith<_$_CompaniesResponseEntity>
      get copyWith => throw _privateConstructorUsedError;
}
