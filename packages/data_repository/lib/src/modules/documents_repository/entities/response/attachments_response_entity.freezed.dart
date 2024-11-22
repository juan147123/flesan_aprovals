// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attachments_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttachmentsResponseEntity _$AttachmentsResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _AttachmentsResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$AttachmentsResponseEntity {
  @JsonKey(name: 'result')
  String get result => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<AttachmentEntity>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'error')
  ErrorEntity? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttachmentsResponseEntityCopyWith<AttachmentsResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentsResponseEntityCopyWith<$Res> {
  factory $AttachmentsResponseEntityCopyWith(AttachmentsResponseEntity value,
          $Res Function(AttachmentsResponseEntity) then) =
      _$AttachmentsResponseEntityCopyWithImpl<$Res, AttachmentsResponseEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'result') String result,
      @JsonKey(name: 'data') List<AttachmentEntity>? data,
      @JsonKey(name: 'error') ErrorEntity? error});

  $ErrorEntityCopyWith<$Res>? get error;
}

/// @nodoc
class _$AttachmentsResponseEntityCopyWithImpl<$Res,
        $Val extends AttachmentsResponseEntity>
    implements $AttachmentsResponseEntityCopyWith<$Res> {
  _$AttachmentsResponseEntityCopyWithImpl(this._value, this._then);

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
              as List<AttachmentEntity>?,
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
abstract class _$$_AttachmentsResponseEntityCopyWith<$Res>
    implements $AttachmentsResponseEntityCopyWith<$Res> {
  factory _$$_AttachmentsResponseEntityCopyWith(
          _$_AttachmentsResponseEntity value,
          $Res Function(_$_AttachmentsResponseEntity) then) =
      __$$_AttachmentsResponseEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'result') String result,
      @JsonKey(name: 'data') List<AttachmentEntity>? data,
      @JsonKey(name: 'error') ErrorEntity? error});

  @override
  $ErrorEntityCopyWith<$Res>? get error;
}

/// @nodoc
class __$$_AttachmentsResponseEntityCopyWithImpl<$Res>
    extends _$AttachmentsResponseEntityCopyWithImpl<$Res,
        _$_AttachmentsResponseEntity>
    implements _$$_AttachmentsResponseEntityCopyWith<$Res> {
  __$$_AttachmentsResponseEntityCopyWithImpl(
      _$_AttachmentsResponseEntity _value,
      $Res Function(_$_AttachmentsResponseEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_AttachmentsResponseEntity(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AttachmentEntity>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttachmentsResponseEntity implements _AttachmentsResponseEntity {
  const _$_AttachmentsResponseEntity(
      {@JsonKey(name: 'result') required this.result,
      @JsonKey(name: 'data') final List<AttachmentEntity>? data,
      @JsonKey(name: 'error') this.error})
      : _data = data;

  factory _$_AttachmentsResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$$_AttachmentsResponseEntityFromJson(json);

  @override
  @JsonKey(name: 'result')
  final String result;
  final List<AttachmentEntity>? _data;
  @override
  @JsonKey(name: 'data')
  List<AttachmentEntity>? get data {
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
    return 'AttachmentsResponseEntity(result: $result, data: $data, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttachmentsResponseEntity &&
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
  _$$_AttachmentsResponseEntityCopyWith<_$_AttachmentsResponseEntity>
      get copyWith => __$$_AttachmentsResponseEntityCopyWithImpl<
          _$_AttachmentsResponseEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttachmentsResponseEntityToJson(
      this,
    );
  }
}

abstract class _AttachmentsResponseEntity implements AttachmentsResponseEntity {
  const factory _AttachmentsResponseEntity(
          {@JsonKey(name: 'result') required final String result,
          @JsonKey(name: 'data') final List<AttachmentEntity>? data,
          @JsonKey(name: 'error') final ErrorEntity? error}) =
      _$_AttachmentsResponseEntity;

  factory _AttachmentsResponseEntity.fromJson(Map<String, dynamic> json) =
      _$_AttachmentsResponseEntity.fromJson;

  @override
  @JsonKey(name: 'result')
  String get result;
  @override
  @JsonKey(name: 'data')
  List<AttachmentEntity>? get data;
  @override
  @JsonKey(name: 'error')
  ErrorEntity? get error;
  @override
  @JsonKey(ignore: true)
  _$$_AttachmentsResponseEntityCopyWith<_$_AttachmentsResponseEntity>
      get copyWith => throw _privateConstructorUsedError;
}
