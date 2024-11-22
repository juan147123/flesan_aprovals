// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'company_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompanyEntity _$$_CompanyEntityFromJson(Map<String, dynamic> json) =>
    _$_CompanyEntity(
      id: json['id'] as String,
      name: json['name'] as String,
      thumbnailUrl: json['thumbnail_url'] as String,
      logoUrl: json['logo_url'] as String,
      backgroundUrl: json['background_url'] as String,
    );

Map<String, dynamic> _$$_CompanyEntityToJson(_$_CompanyEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'thumbnail_url': instance.thumbnailUrl,
      'logo_url': instance.logoUrl,
      'background_url': instance.backgroundUrl,
    };
