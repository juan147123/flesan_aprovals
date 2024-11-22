// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_amount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DocumentAmount _$DocumentAmountFromJson(Map<String, dynamic> json) {
  return _DocumentAmount.fromJson(json);
}

/// @nodoc
mixin _$DocumentAmount {
  String get beforeDiscount => throw _privateConstructorUsedError;
  String get discount => throw _privateConstructorUsedError;
  String get tax => throw _privateConstructorUsedError;
  String get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentAmountCopyWith<DocumentAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentAmountCopyWith<$Res> {
  factory $DocumentAmountCopyWith(
          DocumentAmount value, $Res Function(DocumentAmount) then) =
      _$DocumentAmountCopyWithImpl<$Res, DocumentAmount>;
  @useResult
  $Res call({String beforeDiscount, String discount, String tax, String total});
}

/// @nodoc
class _$DocumentAmountCopyWithImpl<$Res, $Val extends DocumentAmount>
    implements $DocumentAmountCopyWith<$Res> {
  _$DocumentAmountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beforeDiscount = null,
    Object? discount = null,
    Object? tax = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      beforeDiscount: null == beforeDiscount
          ? _value.beforeDiscount
          : beforeDiscount // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DocumentAmountCopyWith<$Res>
    implements $DocumentAmountCopyWith<$Res> {
  factory _$$_DocumentAmountCopyWith(
          _$_DocumentAmount value, $Res Function(_$_DocumentAmount) then) =
      __$$_DocumentAmountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String beforeDiscount, String discount, String tax, String total});
}

/// @nodoc
class __$$_DocumentAmountCopyWithImpl<$Res>
    extends _$DocumentAmountCopyWithImpl<$Res, _$_DocumentAmount>
    implements _$$_DocumentAmountCopyWith<$Res> {
  __$$_DocumentAmountCopyWithImpl(
      _$_DocumentAmount _value, $Res Function(_$_DocumentAmount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beforeDiscount = null,
    Object? discount = null,
    Object? tax = null,
    Object? total = null,
  }) {
    return _then(_$_DocumentAmount(
      beforeDiscount: null == beforeDiscount
          ? _value.beforeDiscount
          : beforeDiscount // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DocumentAmount implements _DocumentAmount {
  const _$_DocumentAmount(
      {required this.beforeDiscount,
      required this.discount,
      required this.tax,
      required this.total});

  factory _$_DocumentAmount.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentAmountFromJson(json);

  @override
  final String beforeDiscount;
  @override
  final String discount;
  @override
  final String tax;
  @override
  final String total;

  @override
  String toString() {
    return 'DocumentAmount(beforeDiscount: $beforeDiscount, discount: $discount, tax: $tax, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentAmount &&
            (identical(other.beforeDiscount, beforeDiscount) ||
                other.beforeDiscount == beforeDiscount) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, beforeDiscount, discount, tax, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DocumentAmountCopyWith<_$_DocumentAmount> get copyWith =>
      __$$_DocumentAmountCopyWithImpl<_$_DocumentAmount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentAmountToJson(
      this,
    );
  }
}

abstract class _DocumentAmount implements DocumentAmount {
  const factory _DocumentAmount(
      {required final String beforeDiscount,
      required final String discount,
      required final String tax,
      required final String total}) = _$_DocumentAmount;

  factory _DocumentAmount.fromJson(Map<String, dynamic> json) =
      _$_DocumentAmount.fromJson;

  @override
  String get beforeDiscount;
  @override
  String get discount;
  @override
  String get tax;
  @override
  String get total;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentAmountCopyWith<_$_DocumentAmount> get copyWith =>
      throw _privateConstructorUsedError;
}
