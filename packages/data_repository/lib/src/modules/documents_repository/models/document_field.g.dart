// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'document_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DocumentField _$$_DocumentFieldFromJson(Map<String, dynamic> json) =>
    _$_DocumentField(
      field: $enumDecode(_$DocumentFieldTypeEnumMap, json['field']),
      value: json['value'] as String,
    );

Map<String, dynamic> _$$_DocumentFieldToJson(_$_DocumentField instance) =>
    <String, dynamic>{
      'field': _$DocumentFieldTypeEnumMap[instance.field]!,
      'value': instance.value,
    };

const _$DocumentFieldTypeEnumMap = {
  DocumentFieldType.supplierCode: 'supplierCode',
  DocumentFieldType.supplierName: 'supplierName',
  DocumentFieldType.contact: 'contact',
  DocumentFieldType.paymentCondition: 'paymentCondition',
  DocumentFieldType.costCenter: 'costCenter',
  DocumentFieldType.boughtType: 'boughtType',
  DocumentFieldType.accountingDate: 'accountingDate',
  DocumentFieldType.deliveryDate: 'deliveryDate',
  DocumentFieldType.documentDate: 'documentDate',
};
