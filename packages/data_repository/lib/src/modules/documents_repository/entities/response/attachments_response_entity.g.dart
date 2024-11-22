// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'attachments_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttachmentsResponseEntity _$$_AttachmentsResponseEntityFromJson(
        Map<String, dynamic> json) =>
    _$_AttachmentsResponseEntity(
      result: json['result'] as String,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => AttachmentEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'] == null
          ? null
          : ErrorEntity.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AttachmentsResponseEntityToJson(
        _$_AttachmentsResponseEntity instance) =>
    <String, dynamic>{
      'result': instance.result,
      'data': instance.data,
      'error': instance.error,
    };
