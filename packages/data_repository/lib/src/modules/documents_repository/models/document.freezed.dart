// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Document _$DocumentFromJson(Map<String, dynamic> json) {
  return _Document.fromJson(json);
}

/// @nodoc
mixin _$Document {
  String get id => throw _privateConstructorUsedError;
  DocumentStatus get status => throw _privateConstructorUsedError;
  DocumentType get type => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get project => throw _privateConstructorUsedError;
  String? get provider => throw _privateConstructorUsedError;
  List<DocumentField>? get fields => throw _privateConstructorUsedError;
  List<DocumentItem>? get items => throw _privateConstructorUsedError;
  DocumentAmount? get amounts => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentCopyWith<Document> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentCopyWith<$Res> {
  factory $DocumentCopyWith(Document value, $Res Function(Document) then) =
      _$DocumentCopyWithImpl<$Res, Document>;
  @useResult
  $Res call(
      {String id,
      DocumentStatus status,
      DocumentType type,
      String number,
      String? description,
      String? project,
      String? provider,
      List<DocumentField>? fields,
      List<DocumentItem>? items,
      DocumentAmount? amounts,
      String? note});

  $DocumentAmountCopyWith<$Res>? get amounts;
}

/// @nodoc
class _$DocumentCopyWithImpl<$Res, $Val extends Document>
    implements $DocumentCopyWith<$Res> {
  _$DocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? type = null,
    Object? number = null,
    Object? description = freezed,
    Object? project = freezed,
    Object? provider = freezed,
    Object? fields = freezed,
    Object? items = freezed,
    Object? amounts = freezed,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DocumentStatus,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DocumentType,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: freezed == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<DocumentField>?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<DocumentItem>?,
      amounts: freezed == amounts
          ? _value.amounts
          : amounts // ignore: cast_nullable_to_non_nullable
              as DocumentAmount?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentAmountCopyWith<$Res>? get amounts {
    if (_value.amounts == null) {
      return null;
    }

    return $DocumentAmountCopyWith<$Res>(_value.amounts!, (value) {
      return _then(_value.copyWith(amounts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DocumentCopyWith<$Res> implements $DocumentCopyWith<$Res> {
  factory _$$_DocumentCopyWith(
          _$_Document value, $Res Function(_$_Document) then) =
      __$$_DocumentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DocumentStatus status,
      DocumentType type,
      String number,
      String? description,
      String? project,
      String? provider,
      List<DocumentField>? fields,
      List<DocumentItem>? items,
      DocumentAmount? amounts,
      String? note});

  @override
  $DocumentAmountCopyWith<$Res>? get amounts;
}

/// @nodoc
class __$$_DocumentCopyWithImpl<$Res>
    extends _$DocumentCopyWithImpl<$Res, _$_Document>
    implements _$$_DocumentCopyWith<$Res> {
  __$$_DocumentCopyWithImpl(
      _$_Document _value, $Res Function(_$_Document) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? type = null,
    Object? number = null,
    Object? description = freezed,
    Object? project = freezed,
    Object? provider = freezed,
    Object? fields = freezed,
    Object? items = freezed,
    Object? amounts = freezed,
    Object? note = freezed,
  }) {
    return _then(_$_Document(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DocumentStatus,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DocumentType,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: freezed == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<DocumentField>?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<DocumentItem>?,
      amounts: freezed == amounts
          ? _value.amounts
          : amounts // ignore: cast_nullable_to_non_nullable
              as DocumentAmount?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Document implements _Document {
  const _$_Document(
      {required this.id,
      required this.status,
      required this.type,
      required this.number,
      required this.description,
      required this.project,
      required this.provider,
      final List<DocumentField>? fields,
      final List<DocumentItem>? items,
      this.amounts,
      this.note})
      : _fields = fields,
        _items = items;

  factory _$_Document.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentFromJson(json);

  @override
  final String id;
  @override
  final DocumentStatus status;
  @override
  final DocumentType type;
  @override
  final String number;
  @override
  final String? description;
  @override
  final String? project;
  @override
  final String? provider;
  final List<DocumentField>? _fields;
  @override
  List<DocumentField>? get fields {
    final value = _fields;
    if (value == null) return null;
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DocumentItem>? _items;
  @override
  List<DocumentItem>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DocumentAmount? amounts;
  @override
  final String? note;

  @override
  String toString() {
    return 'Document(id: $id, status: $status, type: $type, number: $number, description: $description, project: $project, provider: $provider, fields: $fields, items: $items, amounts: $amounts, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Document &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            const DeepCollectionEquality().equals(other._fields, _fields) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.amounts, amounts) || other.amounts == amounts) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      status,
      type,
      number,
      description,
      project,
      provider,
      const DeepCollectionEquality().hash(_fields),
      const DeepCollectionEquality().hash(_items),
      amounts,
      note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DocumentCopyWith<_$_Document> get copyWith =>
      __$$_DocumentCopyWithImpl<_$_Document>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentToJson(
      this,
    );
  }
}

abstract class _Document implements Document {
  const factory _Document(
      {required final String id,
      required final DocumentStatus status,
      required final DocumentType type,
      required final String number,
      required final String? description,
      required final String? project,
      required final String? provider,
      final List<DocumentField>? fields,
      final List<DocumentItem>? items,
      final DocumentAmount? amounts,
      final String? note}) = _$_Document;

  factory _Document.fromJson(Map<String, dynamic> json) = _$_Document.fromJson;

  @override
  String get id;
  @override
  DocumentStatus get status;
  @override
  DocumentType get type;
  @override
  String get number;
  @override
  String? get description;
  @override
  String? get project;
  @override
  String? get provider;
  @override
  List<DocumentField>? get fields;
  @override
  List<DocumentItem>? get items;
  @override
  DocumentAmount? get amounts;
  @override
  String? get note;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentCopyWith<_$_Document> get copyWith =>
      throw _privateConstructorUsedError;
}
