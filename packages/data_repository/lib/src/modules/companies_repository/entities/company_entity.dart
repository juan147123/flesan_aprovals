import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_entity.freezed.dart';

part 'company_entity.g.dart';

@freezed
class CompanyEntity with _$CompanyEntity {
  const factory CompanyEntity({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'thumbnail_url') required String thumbnailUrl,
    @JsonKey(name: 'logo_url') required String logoUrl,
    @JsonKey(name: 'background_url') required String backgroundUrl,
  }) = _CompanyEntity;

  factory CompanyEntity.fromJson(Map<String, Object?> json) =>
      _$CompanyEntityFromJson(json);
}
