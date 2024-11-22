// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'document_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DocumentResponseEntity _$$_DocumentResponseEntityFromJson(
        Map<String, dynamic> json) =>
    _$_DocumentResponseEntity(
      result: json['result'] as String,
      data: json['data'] == null
          ? null
          : DocumentEntity.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] == null
          ? null
          : ErrorEntity.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DocumentResponseEntityToJson(
        _$_DocumentResponseEntity instance) =>
    <String, dynamic>{
      'result': instance.result,
      'data': instance.data,
      'error': instance.error,
    };
