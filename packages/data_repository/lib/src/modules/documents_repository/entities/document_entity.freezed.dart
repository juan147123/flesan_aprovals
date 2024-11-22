// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DocumentEntity _$DocumentEntityFromJson(Map<String, dynamic> json) {
  return _DocumentEntity.fromJson(json);
}

/// @nodoc
mixin _$DocumentEntity {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'number')
  String get number => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'cardcode')
  String? get cardCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'project')
  String? get project => throw _privateConstructorUsedError;
  @JsonKey(name: 'cardname')
  String? get cardName => throw _privateConstructorUsedError;
  @JsonKey(name: 'tcompra')
  String? get tCompra => throw _privateConstructorUsedError;
  @JsonKey(name: 'information')
  DocumentInformationEntity? get information =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'items')
  List<DocumentItemEntity>? get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'amounts')
  DocumentAmountsEntity? get amounts => throw _privateConstructorUsedError;
  @JsonKey(name: 'note')
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: 'EstadoDoc')
  String? get docStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentEntityCopyWith<DocumentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentEntityCopyWith<$Res> {
  factory $DocumentEntityCopyWith(
          DocumentEntity value, $Res Function(DocumentEntity) then) =
      _$DocumentEntityCopyWithImpl<$Res, DocumentEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'number') String number,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'cardcode') String? cardCode,
      @JsonKey(name: 'project') String? project,
      @JsonKey(name: 'cardname') String? cardName,
      @JsonKey(name: 'tcompra') String? tCompra,
      @JsonKey(name: 'information') DocumentInformationEntity? information,
      @JsonKey(name: 'items') List<DocumentItemEntity>? items,
      @JsonKey(name: 'amounts') DocumentAmountsEntity? amounts,
      @JsonKey(name: 'note') String? note,
      @JsonKey(name: 'EstadoDoc') String? docStatus});

  $DocumentInformationEntityCopyWith<$Res>? get information;
  $DocumentAmountsEntityCopyWith<$Res>? get amounts;
}

/// @nodoc
class _$DocumentEntityCopyWithImpl<$Res, $Val extends DocumentEntity>
    implements $DocumentEntityCopyWith<$Res> {
  _$DocumentEntityCopyWithImpl(this._value, this._then);

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
    Object? cardCode = freezed,
    Object? project = freezed,
    Object? cardName = freezed,
    Object? tCompra = freezed,
    Object? information = freezed,
    Object? items = freezed,
    Object? amounts = freezed,
    Object? note = freezed,
    Object? docStatus = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      cardCode: freezed == cardCode
          ? _value.cardCode
          : cardCode // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      cardName: freezed == cardName
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as String?,
      tCompra: freezed == tCompra
          ? _value.tCompra
          : tCompra // ignore: cast_nullable_to_non_nullable
              as String?,
      information: freezed == information
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as DocumentInformationEntity?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<DocumentItemEntity>?,
      amounts: freezed == amounts
          ? _value.amounts
          : amounts // ignore: cast_nullable_to_non_nullable
              as DocumentAmountsEntity?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      docStatus: freezed == docStatus
          ? _value.docStatus
          : docStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentInformationEntityCopyWith<$Res>? get information {
    if (_value.information == null) {
      return null;
    }

    return $DocumentInformationEntityCopyWith<$Res>(_value.information!,
        (value) {
      return _then(_value.copyWith(information: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentAmountsEntityCopyWith<$Res>? get amounts {
    if (_value.amounts == null) {
      return null;
    }

    return $DocumentAmountsEntityCopyWith<$Res>(_value.amounts!, (value) {
      return _then(_value.copyWith(amounts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DocumentEntityCopyWith<$Res>
    implements $DocumentEntityCopyWith<$Res> {
  factory _$$_DocumentEntityCopyWith(
          _$_DocumentEntity value, $Res Function(_$_DocumentEntity) then) =
      __$$_DocumentEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'number') String number,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'cardcode') String? cardCode,
      @JsonKey(name: 'project') String? project,
      @JsonKey(name: 'cardname') String? cardName,
      @JsonKey(name: 'tcompra') String? tCompra,
      @JsonKey(name: 'information') DocumentInformationEntity? information,
      @JsonKey(name: 'items') List<DocumentItemEntity>? items,
      @JsonKey(name: 'amounts') DocumentAmountsEntity? amounts,
      @JsonKey(name: 'note') String? note,
      @JsonKey(name: 'EstadoDoc') String? docStatus});

  @override
  $DocumentInformationEntityCopyWith<$Res>? get information;
  @override
  $DocumentAmountsEntityCopyWith<$Res>? get amounts;
}

/// @nodoc
class __$$_DocumentEntityCopyWithImpl<$Res>
    extends _$DocumentEntityCopyWithImpl<$Res, _$_DocumentEntity>
    implements _$$_DocumentEntityCopyWith<$Res> {
  __$$_DocumentEntityCopyWithImpl(
      _$_DocumentEntity _value, $Res Function(_$_DocumentEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? type = null,
    Object? number = null,
    Object? description = freezed,
    Object? cardCode = freezed,
    Object? project = freezed,
    Object? cardName = freezed,
    Object? tCompra = freezed,
    Object? information = freezed,
    Object? items = freezed,
    Object? amounts = freezed,
    Object? note = freezed,
    Object? docStatus = freezed,
  }) {
    return _then(_$_DocumentEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      cardCode: freezed == cardCode
          ? _value.cardCode
          : cardCode // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      cardName: freezed == cardName
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as String?,
      tCompra: freezed == tCompra
          ? _value.tCompra
          : tCompra // ignore: cast_nullable_to_non_nullable
              as String?,
      information: freezed == information
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as DocumentInformationEntity?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<DocumentItemEntity>?,
      amounts: freezed == amounts
          ? _value.amounts
          : amounts // ignore: cast_nullable_to_non_nullable
              as DocumentAmountsEntity?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      docStatus: freezed == docStatus
          ? _value.docStatus
          : docStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DocumentEntity implements _DocumentEntity {
  const _$_DocumentEntity(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'number') required this.number,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'cardcode') required this.cardCode,
      @JsonKey(name: 'project') required this.project,
      @JsonKey(name: 'cardname') required this.cardName,
      @JsonKey(name: 'tcompra') required this.tCompra,
      @JsonKey(name: 'information') this.information,
      @JsonKey(name: 'items') final List<DocumentItemEntity>? items,
      @JsonKey(name: 'amounts') this.amounts,
      @JsonKey(name: 'note') this.note,
      @JsonKey(name: 'EstadoDoc') this.docStatus})
      : _items = items;

  factory _$_DocumentEntity.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentEntityFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'status')
  final int status;
  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'number')
  final String number;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'cardcode')
  final String? cardCode;
  @override
  @JsonKey(name: 'project')
  final String? project;
  @override
  @JsonKey(name: 'cardname')
  final String? cardName;
  @override
  @JsonKey(name: 'tcompra')
  final String? tCompra;
  @override
  @JsonKey(name: 'information')
  final DocumentInformationEntity? information;
  final List<DocumentItemEntity>? _items;
  @override
  @JsonKey(name: 'items')
  List<DocumentItemEntity>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'amounts')
  final DocumentAmountsEntity? amounts;
  @override
  @JsonKey(name: 'note')
  final String? note;
  @override
  @JsonKey(name: 'EstadoDoc')
  final String? docStatus;

  @override
  String toString() {
    return 'DocumentEntity(id: $id, status: $status, type: $type, number: $number, description: $description, cardCode: $cardCode, project: $project, cardName: $cardName, tCompra: $tCompra, information: $information, items: $items, amounts: $amounts, note: $note, docStatus: $docStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.cardCode, cardCode) ||
                other.cardCode == cardCode) &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.cardName, cardName) ||
                other.cardName == cardName) &&
            (identical(other.tCompra, tCompra) || other.tCompra == tCompra) &&
            (identical(other.information, information) ||
                other.information == information) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.amounts, amounts) || other.amounts == amounts) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.docStatus, docStatus) ||
                other.docStatus == docStatus));
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
      cardCode,
      project,
      cardName,
      tCompra,
      information,
      const DeepCollectionEquality().hash(_items),
      amounts,
      note,
      docStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DocumentEntityCopyWith<_$_DocumentEntity> get copyWith =>
      __$$_DocumentEntityCopyWithImpl<_$_DocumentEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentEntityToJson(
      this,
    );
  }
}

abstract class _DocumentEntity implements DocumentEntity {
  const factory _DocumentEntity(
      {@JsonKey(name: 'id')
          required final String id,
      @JsonKey(name: 'status')
          required final int status,
      @JsonKey(name: 'type')
          required final String type,
      @JsonKey(name: 'number')
          required final String number,
      @JsonKey(name: 'description')
          required final String? description,
      @JsonKey(name: 'cardcode')
          required final String? cardCode,
      @JsonKey(name: 'project')
          required final String? project,
      @JsonKey(name: 'cardname')
          required final String? cardName,
      @JsonKey(name: 'tcompra')
          required final String? tCompra,
      @JsonKey(name: 'information')
          final DocumentInformationEntity? information,
      @JsonKey(name: 'items')
          final List<DocumentItemEntity>? items,
      @JsonKey(name: 'amounts')
          final DocumentAmountsEntity? amounts,
      @JsonKey(name: 'note')
          final String? note,
      @JsonKey(name: 'EstadoDoc')
          final String? docStatus}) = _$_DocumentEntity;

  factory _DocumentEntity.fromJson(Map<String, dynamic> json) =
      _$_DocumentEntity.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'status')
  int get status;
  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(name: 'number')
  String get number;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'cardcode')
  String? get cardCode;
  @override
  @JsonKey(name: 'project')
  String? get project;
  @override
  @JsonKey(name: 'cardname')
  String? get cardName;
  @override
  @JsonKey(name: 'tcompra')
  String? get tCompra;
  @override
  @JsonKey(name: 'information')
  DocumentInformationEntity? get information;
  @override
  @JsonKey(name: 'items')
  List<DocumentItemEntity>? get items;
  @override
  @JsonKey(name: 'amounts')
  DocumentAmountsEntity? get amounts;
  @override
  @JsonKey(name: 'note')
  String? get note;
  @override
  @JsonKey(name: 'EstadoDoc')
  String? get docStatus;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentEntityCopyWith<_$_DocumentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
