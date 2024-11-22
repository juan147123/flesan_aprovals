import 'package:data_repository/src/modules/companies_repository/entities/company_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'company.freezed.dart';

part 'company.g.dart';

@freezed
class Company with _$Company {
  const factory Company({
    required String id,
    required String name,
    required String thumbnailUrl,
    required String logoUrl,
    required String backgroundUrl,
  }) = _Company;

  factory Company.fromJson(Map<String, Object?> json) =>
      _$CompanyFromJson(json);

  factory Company.fromEntity(CompanyEntity entity) {
    return Company(
      id: entity.id,
      name: entity.name,
      thumbnailUrl: entity.thumbnailUrl,
      logoUrl: entity.logoUrl,
      backgroundUrl: entity.backgroundUrl,
    );
  }
}
