// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'login_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponseEntity _$$_LoginResponseEntityFromJson(
        Map<String, dynamic> json) =>
    _$_LoginResponseEntity(
      result: json['result'] as String,
      data: json['data'] == null
          ? null
          : LoginDataEntity.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] == null
          ? null
          : ErrorEntity.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LoginResponseEntityToJson(
        _$_LoginResponseEntity instance) =>
    <String, dynamic>{
      'result': instance.result,
      'data': instance.data,
      'error': instance.error,
    };
