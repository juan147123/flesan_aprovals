// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'auth_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthSession _$$_AuthSessionFromJson(Map<String, dynamic> json) =>
    _$_AuthSession(
      company: Company.fromJson(json['company'] as Map<String, dynamic>),
      user: User.fromJson((json['user'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      )),
    );

Map<String, dynamic> _$$_AuthSessionToJson(_$_AuthSession instance) =>
    <String, dynamic>{
      'company': instance.company,
      'user': instance.user,
    };
