// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'document_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DocumentItem _$$_DocumentItemFromJson(Map<String, dynamic> json) =>
    _$_DocumentItem(
      quantity: json['quantity'] as int,
      description: json['description'] as String,
      unitPrice: json['unitPrice'] as String,
      totalPrice: json['totalPrice'] as String,
    );

Map<String, dynamic> _$$_DocumentItemToJson(_$_DocumentItem instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'description': instance.description,
      'unitPrice': instance.unitPrice,
      'totalPrice': instance.totalPrice,
    };
