// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'companies_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompaniesResponseEntity _$$_CompaniesResponseEntityFromJson(
        Map<String, dynamic> json) =>
    _$_CompaniesResponseEntity(
      result: json['result'] as String,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CompanyEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'] == null
          ? null
          : ErrorEntity.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CompaniesResponseEntityToJson(
        _$_CompaniesResponseEntity instance) =>
    <String, dynamic>{
      'result': instance.result,
      'data': instance.data,
      'error': instance.error,
    };
