import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/entities/error_entity.dart';
import '../company_entity.dart';

part 'companies_response_entity.freezed.dart';

part 'companies_response_entity.g.dart';

@freezed
class CompaniesResponseEntity with _$CompaniesResponseEntity {
  const factory CompaniesResponseEntity({
    @JsonKey(name: 'result') required String result,
    @JsonKey(name: 'data') List<CompanyEntity>? data,
    @JsonKey(name: 'error') ErrorEntity? error,
  }) = _CompaniesResponseEntity;

  factory CompaniesResponseEntity.fromJson(Map<String, Object?> json) =>
      _$CompaniesResponseEntityFromJson(json);
}
