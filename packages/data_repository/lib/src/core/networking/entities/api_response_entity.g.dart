// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'api_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_APIResponseEntity _$$_APIResponseEntityFromJson(Map<String, dynamic> json) =>
    _$_APIResponseEntity(
      result: json['result'] as String,
      error: json['error'] == null
          ? null
          : ErrorEntity.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_APIResponseEntityToJson(
        _$_APIResponseEntity instance) =>
    <String, dynamic>{
      'result': instance.result,
      'error': instance.error,
    };
