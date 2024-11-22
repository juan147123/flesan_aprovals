import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_data_entity.freezed.dart';

part 'login_data_entity.g.dart';

@freezed
class LoginDataEntity with _$LoginDataEntity {
  const factory LoginDataEntity({
    @JsonKey(name: 'access_token') required String accessToken,
}) = _LoginDataEntity;

  factory LoginDataEntity.fromJson(Map<String, Object?> json) =>
      _$LoginDataEntityFromJson(json);
}