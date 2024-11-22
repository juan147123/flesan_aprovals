// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'attachment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Attachment _$$_AttachmentFromJson(Map<String, dynamic> json) =>
    _$_Attachment(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      pdfData:
          const Uint8ListConverter().fromJson(json['pdfData'] as List<int>?),
    );

Map<String, dynamic> _$$_AttachmentToJson(_$_Attachment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'pdfData': const Uint8ListConverter().toJson(instance.pdfData),
    };
