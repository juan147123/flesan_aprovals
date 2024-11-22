// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'document_information_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DocumentInformationEntity _$$_DocumentInformationEntityFromJson(
        Map<String, dynamic> json) =>
    _$_DocumentInformationEntity(
      supplierCode: json['supplier_code'] as String,
      supplierName: json['supplier_name'] as String,
      contact: json['contact'] as String,
      costCenter: json['cost_center'] as String,
      accountingDate: json['accounting_date'] as String,
      deliveryDate: json['delivery_date'] as String,
      documentDate: json['document_date'] as String,
      project: json['project'] as String?,
      payCondition: json['paycontidion'] as String?,
      boughtType: json['tcompra'] as String?,
    );

Map<String, dynamic> _$$_DocumentInformationEntityToJson(
        _$_DocumentInformationEntity instance) =>
    <String, dynamic>{
      'supplier_code': instance.supplierCode,
      'supplier_name': instance.supplierName,
      'contact': instance.contact,
      'cost_center': instance.costCenter,
      'accounting_date': instance.accountingDate,
      'delivery_date': instance.deliveryDate,
      'document_date': instance.documentDate,
      'project': instance.project,
      'paycontidion': instance.payCondition,
      'tcompra': instance.boughtType,
    };
