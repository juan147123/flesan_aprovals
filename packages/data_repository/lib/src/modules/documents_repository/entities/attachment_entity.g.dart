// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'attachment_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttachmentEntity _$$_AttachmentEntityFromJson(Map<String, dynamic> json) =>
    _$_AttachmentEntity(
      id: json['id'] as String,
      name: json['name'] as String?,
      description: json['description'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$_AttachmentEntityToJson(_$_AttachmentEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'content': instance.content,
    };
