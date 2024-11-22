// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DocumentItem _$DocumentItemFromJson(Map<String, dynamic> json) {
  return _DocumentItem.fromJson(json);
}

/// @nodoc
mixin _$DocumentItem {
  int get quantity => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get unitPrice => throw _privateConstructorUsedError;
  String get totalPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentItemCopyWith<DocumentItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentItemCopyWith<$Res> {
  factory $DocumentItemCopyWith(
          DocumentItem value, $Res Function(DocumentItem) then) =
      _$DocumentItemCopyWithImpl<$Res, DocumentItem>;
  @useResult
  $Res call(
      {int quantity, String description, String unitPrice, String totalPrice});
}

/// @nodoc
class _$DocumentItemCopyWithImpl<$Res, $Val extends DocumentItem>
    implements $DocumentItemCopyWith<$Res> {
  _$DocumentItemCopyWithImpl(this._value, this._then);

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
              as int,
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
abstract class _$$_DocumentItemCopyWith<$Res>
    implements $DocumentItemCopyWith<$Res> {
  factory _$$_DocumentItemCopyWith(
          _$_DocumentItem value, $Res Function(_$_DocumentItem) then) =
      __$$_DocumentItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int quantity, String description, String unitPrice, String totalPrice});
}

/// @nodoc
class __$$_DocumentItemCopyWithImpl<$Res>
    extends _$DocumentItemCopyWithImpl<$Res, _$_DocumentItem>
    implements _$$_DocumentItemCopyWith<$Res> {
  __$$_DocumentItemCopyWithImpl(
      _$_DocumentItem _value, $Res Function(_$_DocumentItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? description = null,
    Object? unitPrice = null,
    Object? totalPrice = null,
  }) {
    return _then(_$_DocumentItem(
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_DocumentItem implements _DocumentItem {
  const _$_DocumentItem(
      {required this.quantity,
      required this.description,
      required this.unitPrice,
      required this.totalPrice});

  factory _$_DocumentItem.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentItemFromJson(json);

  @override
  final int quantity;
  @override
  final String description;
  @override
  final String unitPrice;
  @override
  final String totalPrice;

  @override
  String toString() {
    return 'DocumentItem(quantity: $quantity, description: $description, unitPrice: $unitPrice, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentItem &&
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
  _$$_DocumentItemCopyWith<_$_DocumentItem> get copyWith =>
      __$$_DocumentItemCopyWithImpl<_$_DocumentItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentItemToJson(
      this,
    );
  }
}

abstract class _DocumentItem implements DocumentItem {
  const factory _DocumentItem(
      {required final int quantity,
      required final String description,
      required final String unitPrice,
      required final String totalPrice}) = _$_DocumentItem;

  factory _DocumentItem.fromJson(Map<String, dynamic> json) =
      _$_DocumentItem.fromJson;

  @override
  int get quantity;
  @override
  String get description;
  @override
  String get unitPrice;
  @override
  String get totalPrice;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentItemCopyWith<_$_DocumentItem> get copyWith =>
      throw _privateConstructorUsedError;
}
