// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DocumentDetailState {
  DocumentDetailStatus get status => throw _privateConstructorUsedError;
  Document get document => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DocumentDetailStateCopyWith<DocumentDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentDetailStateCopyWith<$Res> {
  factory $DocumentDetailStateCopyWith(
          DocumentDetailState value, $Res Function(DocumentDetailState) then) =
      _$DocumentDetailStateCopyWithImpl<$Res, DocumentDetailState>;
  @useResult
  $Res call(
      {DocumentDetailStatus status,
      Document document,
      String note,
      String? errorMessage});

  $DocumentCopyWith<$Res> get document;
}

/// @nodoc
class _$DocumentDetailStateCopyWithImpl<$Res, $Val extends DocumentDetailState>
    implements $DocumentDetailStateCopyWith<$Res> {
  _$DocumentDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? document = null,
    Object? note = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DocumentDetailStatus,
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentCopyWith<$Res> get document {
    return $DocumentCopyWith<$Res>(_value.document, (value) {
      return _then(_value.copyWith(document: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DocumentDetailStateCopyWith<$Res>
    implements $DocumentDetailStateCopyWith<$Res> {
  factory _$$_DocumentDetailStateCopyWith(_$_DocumentDetailState value,
          $Res Function(_$_DocumentDetailState) then) =
      __$$_DocumentDetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DocumentDetailStatus status,
      Document document,
      String note,
      String? errorMessage});

  @override
  $DocumentCopyWith<$Res> get document;
}

/// @nodoc
class __$$_DocumentDetailStateCopyWithImpl<$Res>
    extends _$DocumentDetailStateCopyWithImpl<$Res, _$_DocumentDetailState>
    implements _$$_DocumentDetailStateCopyWith<$Res> {
  __$$_DocumentDetailStateCopyWithImpl(_$_DocumentDetailState _value,
      $Res Function(_$_DocumentDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? document = null,
    Object? note = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_DocumentDetailState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DocumentDetailStatus,
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DocumentDetailState implements _DocumentDetailState {
  const _$_DocumentDetailState(
      {required this.status,
      required this.document,
      required this.note,
      this.errorMessage});

  @override
  final DocumentDetailStatus status;
  @override
  final Document document;
  @override
  final String note;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'DocumentDetailState(status: $status, document: $document, note: $note, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentDetailState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.document, document) ||
                other.document == document) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, document, note, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DocumentDetailStateCopyWith<_$_DocumentDetailState> get copyWith =>
      __$$_DocumentDetailStateCopyWithImpl<_$_DocumentDetailState>(
          this, _$identity);
}

abstract class _DocumentDetailState implements DocumentDetailState {
  const factory _DocumentDetailState(
      {required final DocumentDetailStatus status,
      required final Document document,
      required final String note,
      final String? errorMessage}) = _$_DocumentDetailState;

  @override
  DocumentDetailStatus get status;
  @override
  Document get document;
  @override
  String get note;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentDetailStateCopyWith<_$_DocumentDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
