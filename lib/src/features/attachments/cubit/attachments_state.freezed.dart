// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attachments_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AttachmentsState {
  AttachmentsStatus get status => throw _privateConstructorUsedError;
  List<Attachment>? get attachments => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AttachmentsStateCopyWith<AttachmentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentsStateCopyWith<$Res> {
  factory $AttachmentsStateCopyWith(
          AttachmentsState value, $Res Function(AttachmentsState) then) =
      _$AttachmentsStateCopyWithImpl<$Res, AttachmentsState>;
  @useResult
  $Res call(
      {AttachmentsStatus status,
      List<Attachment>? attachments,
      String? errorMessage});
}

/// @nodoc
class _$AttachmentsStateCopyWithImpl<$Res, $Val extends AttachmentsState>
    implements $AttachmentsStateCopyWith<$Res> {
  _$AttachmentsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? attachments = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AttachmentsStatus,
      attachments: freezed == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<Attachment>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttachmentsStateCopyWith<$Res>
    implements $AttachmentsStateCopyWith<$Res> {
  factory _$$_AttachmentsStateCopyWith(
          _$_AttachmentsState value, $Res Function(_$_AttachmentsState) then) =
      __$$_AttachmentsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AttachmentsStatus status,
      List<Attachment>? attachments,
      String? errorMessage});
}

/// @nodoc
class __$$_AttachmentsStateCopyWithImpl<$Res>
    extends _$AttachmentsStateCopyWithImpl<$Res, _$_AttachmentsState>
    implements _$$_AttachmentsStateCopyWith<$Res> {
  __$$_AttachmentsStateCopyWithImpl(
      _$_AttachmentsState _value, $Res Function(_$_AttachmentsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? attachments = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_AttachmentsState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AttachmentsStatus,
      attachments: freezed == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<Attachment>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AttachmentsState implements _AttachmentsState {
  const _$_AttachmentsState(
      {required this.status,
      final List<Attachment>? attachments,
      this.errorMessage})
      : _attachments = attachments;

  @override
  final AttachmentsStatus status;
  final List<Attachment>? _attachments;
  @override
  List<Attachment>? get attachments {
    final value = _attachments;
    if (value == null) return null;
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AttachmentsState(status: $status, attachments: $attachments, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttachmentsState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_attachments), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttachmentsStateCopyWith<_$_AttachmentsState> get copyWith =>
      __$$_AttachmentsStateCopyWithImpl<_$_AttachmentsState>(this, _$identity);
}

abstract class _AttachmentsState implements AttachmentsState {
  const factory _AttachmentsState(
      {required final AttachmentsStatus status,
      final List<Attachment>? attachments,
      final String? errorMessage}) = _$_AttachmentsState;

  @override
  AttachmentsStatus get status;
  @override
  List<Attachment>? get attachments;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_AttachmentsStateCopyWith<_$_AttachmentsState> get copyWith =>
      throw _privateConstructorUsedError;
}
