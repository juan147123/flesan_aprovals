import 'package:data_repository/src/modules/auth_repository/entities/login_data_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/entities/error_entity.dart';

part 'login_response_entity.freezed.dart';

part 'login_response_entity.g.dart';

@freezed
class LoginResponseEntity with _$LoginResponseEntity {
  const factory LoginResponseEntity({
    @JsonKey(name: 'result') required String result,
    @JsonKey(name: 'data') LoginDataEntity? data,
    @JsonKey(name: 'error') ErrorEntity? error,
  }) = _LoginResponseEntity;

  factory LoginResponseEntity.fromJson(Map<String, Object?> json) =>
      _$LoginResponseEntityFromJson(json);
}
