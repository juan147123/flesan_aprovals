// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_Document _$$_DocumentFromJson(Map<String, dynamic> json) => _$_Document(
      id: json['id'] as String,
      status: $enumDecode(_$DocumentStatusEnumMap, json['status']),
      type: $enumDecode(_$DocumentTypeEnumMap, json['type']),
      number: json['number'] as String,
      description: json['description'] as String?,
      project: json['project'] as String?,
      provider: json['provider'] as String?,
      fields: (json['fields'] as List<dynamic>?)
          ?.map((e) => DocumentField.fromJson(e as Map<String, dynamic>))
          .toList(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => DocumentItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      amounts: json['amounts'] == null
          ? null
          : DocumentAmount.fromJson(json['amounts'] as Map<String, dynamic>),
      note: json['note'] as String?,
    );

// ignore: non_constant_identifier_names
Map<String, dynamic> _$$_DocumentToJson(_$_Document instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': _$DocumentStatusEnumMap[instance.status]!,
      'type': _$DocumentTypeEnumMap[instance.type]!,
      'number': instance.number,
      'description': instance.description,
      'project': instance.project,
      'provider': instance.provider,
      'fields': instance.fields,
      'items': instance.items,
      'amounts': instance.amounts,
      'note': instance.note,
    };

const _$DocumentStatusEnumMap = {
  DocumentStatus.pending: 'pending',
  DocumentStatus.approved: 'approved',
  DocumentStatus.rejected: 'rejected',
  DocumentStatus.none: 'none',
};

const _$DocumentTypeEnumMap = {
  DocumentType.order: 'order',
  DocumentType.offer: 'offer',
  DocumentType.entry: 'entry',
  DocumentType.invoice: 'invoice',
  DocumentType.advanceInvoice: 'advanceInvoice',
  DocumentType.none: 'none',
};
