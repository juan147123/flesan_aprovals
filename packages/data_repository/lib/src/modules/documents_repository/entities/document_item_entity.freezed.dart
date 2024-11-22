// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DocumentItemEntity _$DocumentItemEntityFromJson(Map<String, dynamic> json) {
  return _DocumentItemEntity.fromJson(json);
}

/// @nodoc
mixin _$DocumentItemEntity {
  @JsonKey(name: 'quantity')
  double get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_price')
  String get unitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_price')
  String get totalPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentItemEntityCopyWith<DocumentItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentItemEntityCopyWith<$Res> {
  factory $DocumentItemEntityCopyWith(
          DocumentItemEntity value, $Res Function(DocumentItemEntity) then) =
      _$DocumentItemEntityCopyWithImpl<$Res, DocumentItemEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'quantity') double quantity,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'unit_price') String unitPrice,
      @JsonKey(name: 'total_price') String totalPrice});
}

/// @nodoc
class _$DocumentItemEntityCopyWithImpl<$Res, $Val extends DocumentItemEntity>
    implements $DocumentItemEntityCopyWith<$Res> {
  _$DocumentItemEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? description = null,
    Object? unitPrice = null,
    Object? totalPrice = null,
  }) {
    return _then(_value.copyWith(
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DocumentItemEntityCopyWith<$Res>
    implements $DocumentItemEntityCopyWith<$Res> {
  factory _$$_DocumentItemEntityCopyWith(_$_DocumentItemEntity value,
          $Res Function(_$_DocumentItemEntity) then) =
      __$$_DocumentItemEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'quantity') double quantity,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'unit_price') String unitPrice,
      @JsonKey(name: 'total_price') String totalPrice});
}

/// @nodoc
class __$$_DocumentItemEntityCopyWithImpl<$Res>
    extends _$DocumentItemEntityCopyWithImpl<$Res, _$_DocumentItemEntity>
    implements _$$_DocumentItemEntityCopyWith<$Res> {
  __$$_DocumentItemEntityCopyWithImpl(
      _$_DocumentItemEntity _value, $Res Function(_$_DocumentItemEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? description = null,
    Object? unitPrice = null,
    Object? totalPrice = null,
  }) {
    return _then(_$_DocumentItemEntity(
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DocumentItemEntity implements _DocumentItemEntity {
  const _$_DocumentItemEntity(
      {@JsonKey(name: 'quantity') required this.quantity,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'unit_price') required this.unitPrice,
      @JsonKey(name: 'total_price') required this.totalPrice});

  factory _$_DocumentItemEntity.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentItemEntityFromJson(json);

  @override
  @JsonKey(name: 'quantity')
  final double quantity;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'unit_price')
  final String unitPrice;
  @override
  @JsonKey(name: 'total_price')
  final String totalPrice;

  @override
  String toString() {
    return 'DocumentItemEntity(quantity: $quantity, description: $description, unitPrice: $unitPrice, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentItemEntity &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, quantity, description, unitPrice, totalPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DocumentItemEntityCopyWith<_$_DocumentItemEntity> get copyWith =>
      __$$_DocumentItemEntityCopyWithImpl<_$_DocumentItemEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentItemEntityToJson(
      this,
    );
  }
}

abstract class _DocumentItemEntity implements DocumentItemEntity {
  const factory _DocumentItemEntity(
          {@JsonKey(name: 'quantity') required final double quantity,
          @JsonKey(name: 'description') required final String description,
          @JsonKey(name: 'unit_price') required final String unitPrice,
          @JsonKey(name: 'total_price') required final String totalPrice}) =
      _$_DocumentItemEntity;

  factory _DocumentItemEntity.fromJson(Map<String, dynamic> json) =
      _$_DocumentItemEntity.fromJson;

  @override
  @JsonKey(name: 'quantity')
  double get quantity;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'unit_price')
  String get unitPrice;
  @override
  @JsonKey(name: 'total_price')
  String get totalPrice;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentItemEntityCopyWith<_$_DocumentItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
