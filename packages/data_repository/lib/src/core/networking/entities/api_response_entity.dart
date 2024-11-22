import 'package:data_repository/src/core/networking/entities/error_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response_entity.freezed.dart';

part 'api_response_entity.g.dart';

@freezed
class APIResponseEntity with _$APIResponseEntity {
  const factory APIResponseEntity({
    @JsonKey(name: 'result') required String result,
    @JsonKey(name: 'error') ErrorEntity? error,
  }) = _APIResponseEntity;

  factory APIResponseEntity.fromJson(Map<String, Object?> json) =>
      _$APIResponseEntityFromJson(json);
}
