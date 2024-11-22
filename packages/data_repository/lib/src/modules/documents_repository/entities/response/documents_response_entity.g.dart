// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'documents_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DocumentsResponseEntity _$$_DocumentsResponseEntityFromJson(
        Map<String, dynamic> json) =>
    _$_DocumentsResponseEntity(
      result: json['result'] as String,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DocumentEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'] == null
          ? null
          : ErrorEntity.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DocumentsResponseEntityToJson(
        _$_DocumentsResponseEntity instance) =>
    <String, dynamic>{
      'result': instance.result,
      'data': instance.data,
      'error': instance.error,
    };
