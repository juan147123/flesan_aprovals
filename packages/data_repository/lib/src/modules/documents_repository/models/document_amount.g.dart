// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'document_amount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DocumentAmount _$$_DocumentAmountFromJson(Map<String, dynamic> json) =>
    _$_DocumentAmount(
      beforeDiscount: json['beforeDiscount'] as String,
      discount: json['discount'] as String,
      tax: json['tax'] as String,
      total: json['total'] as String,
    );

Map<String, dynamic> _$$_DocumentAmountToJson(_$_DocumentAmount instance) =>
    <String, dynamic>{
      'beforeDiscount': instance.beforeDiscount,
      'discount': instance.discount,
      'tax': instance.tax,
      'total': instance.total,
    };
