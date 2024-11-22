// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_amounts_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DocumentAmountsEntity _$DocumentAmountsEntityFromJson(
    Map<String, dynamic> json) {
  return _DocumentAmountsEntity.fromJson(json);
}

/// @nodoc
mixin _$DocumentAmountsEntity {
  @JsonKey(name: 'before_discount')
  String get beforeDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount')
  String get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax')
  String get tax => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  String get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentAmountsEntityCopyWith<DocumentAmountsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentAmountsEntityCopyWith<$Res> {
  factory $DocumentAmountsEntityCopyWith(DocumentAmountsEntity value,
          $Res Function(DocumentAmountsEntity) then) =
      _$DocumentAmountsEntityCopyWithImpl<$Res, DocumentAmountsEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'before_discount') String beforeDiscount,
      @JsonKey(name: 'discount') String discount,
      @JsonKey(name: 'tax') String tax,
      @JsonKey(name: 'total') String total});
}

/// @nodoc
class _$DocumentAmountsEntityCopyWithImpl<$Res,
        $Val extends DocumentAmountsEntity>
    implements $DocumentAmountsEntityCopyWith<$Res> {
  _$DocumentAmountsEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$_DocumentAmountsEntityCopyWith<$Res>
    implements $DocumentAmountsEntityCopyWith<$Res> {
  factory _$$_DocumentAmountsEntityCopyWith(_$_DocumentAmountsEntity value,
          $Res Function(_$_DocumentAmountsEntity) then) =
      __$$_DocumentAmountsEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'before_discount') String beforeDiscount,
      @JsonKey(name: 'discount') String discount,
      @JsonKey(name: 'tax') String tax,
      @JsonKey(name: 'total') String total});
}

/// @nodoc
class __$$_DocumentAmountsEntityCopyWithImpl<$Res>
    extends _$DocumentAmountsEntityCopyWithImpl<$Res, _$_DocumentAmountsEntity>
    implements _$$_DocumentAmountsEntityCopyWith<$Res> {
  __$$_DocumentAmountsEntityCopyWithImpl(_$_DocumentAmountsEntity _value,
      $Res Function(_$_DocumentAmountsEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beforeDiscount = null,
    Object? discount = null,
    Object? tax = null,
    Object? total = null,
  }) {
    return _then(_$_DocumentAmountsEntity(
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
class _$_DocumentAmountsEntity implements _DocumentAmountsEntity {
  const _$_DocumentAmountsEntity(
      {@JsonKey(name: 'before_discount') required this.beforeDiscount,
      @JsonKey(name: 'discount') required this.discount,
      @JsonKey(name: 'tax') required this.tax,
      @JsonKey(name: 'total') required this.total});

  factory _$_DocumentAmountsEntity.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentAmountsEntityFromJson(json);

  @override
  @JsonKey(name: 'before_discount')
  final String beforeDiscount;
  @override
  @JsonKey(name: 'discount')
  final String discount;
  @override
  @JsonKey(name: 'tax')
  final String tax;
  @override
  @JsonKey(name: 'total')
  final String total;

  @override
  String toString() {
    return 'DocumentAmountsEntity(beforeDiscount: $beforeDiscount, discount: $discount, tax: $tax, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentAmountsEntity &&
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
  _$$_DocumentAmountsEntityCopyWith<_$_DocumentAmountsEntity> get copyWith =>
      __$$_DocumentAmountsEntityCopyWithImpl<_$_DocumentAmountsEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentAmountsEntityToJson(
      this,
    );
  }
}

abstract class _DocumentAmountsEntity implements DocumentAmountsEntity {
  const factory _DocumentAmountsEntity(
      {@JsonKey(name: 'before_discount')
          required final String beforeDiscount,
      @JsonKey(name: 'discount')
          required final String discount,
      @JsonKey(name: 'tax')
          required final String tax,
      @JsonKey(name: 'total')
          required final String total}) = _$_DocumentAmountsEntity;

  factory _DocumentAmountsEntity.fromJson(Map<String, dynamic> json) =
      _$_DocumentAmountsEntity.fromJson;

  @override
  @JsonKey(name: 'before_discount')
  String get beforeDiscount;
  @override
  @JsonKey(name: 'discount')
  String get discount;
  @override
  @JsonKey(name: 'tax')
  String get tax;
  @override
  @JsonKey(name: 'total')
  String get total;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentAmountsEntityCopyWith<_$_DocumentAmountsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
