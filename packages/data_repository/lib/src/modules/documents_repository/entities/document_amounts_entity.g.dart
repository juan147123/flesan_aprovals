// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'document_amounts_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DocumentAmountsEntity _$$_DocumentAmountsEntityFromJson(
        Map<String, dynamic> json) =>
    _$_DocumentAmountsEntity(
      beforeDiscount: json['before_discount'] as String,
      discount: json['discount'] as String,
      tax: json['tax'] as String,
      total: json['total'] as String,
    );

Map<String, dynamic> _$$_DocumentAmountsEntityToJson(
        _$_DocumentAmountsEntity instance) =>
    <String, dynamic>{
      'before_discount': instance.beforeDiscount,
      'discount': instance.discount,
      'tax': instance.tax,
      'total': instance.total,
    };
