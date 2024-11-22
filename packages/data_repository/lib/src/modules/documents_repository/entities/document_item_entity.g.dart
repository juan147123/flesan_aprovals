// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'document_item_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DocumentItemEntity _$$_DocumentItemEntityFromJson(
        Map<String, dynamic> json) =>
    _$_DocumentItemEntity(
      quantity: (json['quantity'] as num).toDouble(),
      description: json['description'] as String,
      unitPrice: json['unit_price'] as String,
      totalPrice: json['total_price'] as String,
    );

Map<String, dynamic> _$$_DocumentItemEntityToJson(
        _$_DocumentItemEntity instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'description': instance.description,
      'unit_price': instance.unitPrice,
      'total_price': instance.totalPrice,
    };
