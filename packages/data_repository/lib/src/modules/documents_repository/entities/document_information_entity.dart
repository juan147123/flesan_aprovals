import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_information_entity.freezed.dart';

part 'document_information_entity.g.dart';

@freezed
class DocumentInformationEntity with _$DocumentInformationEntity {
  const factory DocumentInformationEntity({
    @JsonKey(name: 'supplier_code') required String supplierCode,
    @JsonKey(name: 'supplier_name') required String supplierName,
    @JsonKey(name: 'contact') required String contact,
    @JsonKey(name: 'cost_center') required String costCenter,
    @JsonKey(name: 'accounting_date') required String accountingDate,
    @JsonKey(name: 'delivery_date') required String deliveryDate,
    @JsonKey(name: 'document_date') required String documentDate,
    @JsonKey(name: 'project') required String? project,
    @JsonKey(name: 'paycontidion') required String? payCondition,
    @JsonKey(name: 'tcompra') required String? boughtType,
  }) = _DocumentInformationEntity;

  factory DocumentInformationEntity.fromJson(Map<String, Object?> json) =>
      _$DocumentInformationEntityFromJson(json);
}
