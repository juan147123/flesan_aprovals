// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'document_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DocumentEntity _$$_DocumentEntityFromJson(Map<String, dynamic> json) =>
    _$_DocumentEntity(
      id: json['id'] as String,
      status: json['status'] as int,
      type: json['type'] as String,
      number: json['number'] as String,
      description: json['description'] as String?,
      cardCode: json['cardcode'] as String?,
      project: json['project'] as String?,
      cardName: json['cardname'] as String?,
      tCompra: json['tcompra'] as String?,
      information: json['information'] == null
          ? null
          : DocumentInformationEntity.fromJson(
              json['information'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => DocumentItemEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      amounts: json['amounts'] == null
          ? null
          : DocumentAmountsEntity.fromJson(
              json['amounts'] as Map<String, dynamic>),
      note: json['note'] as String?,
      docStatus: json['EstadoDoc'] as String?,
    );

Map<String, dynamic> _$$_DocumentEntityToJson(_$_DocumentEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'type': instance.type,
      'number': instance.number,
      'description': instance.description,
      'cardcode': instance.cardCode,
      'project': instance.project,
      'cardname': instance.cardName,
      'tcompra': instance.tCompra,
      'information': instance.information,
      'items': instance.items,
      'amounts': instance.amounts,
      'note': instance.note,
      'EstadoDoc': instance.docStatus,
    };
