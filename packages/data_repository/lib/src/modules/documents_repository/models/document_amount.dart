import 'package:data_repository/src/modules/documents_repository/entities/document_amounts_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_amount.freezed.dart';

part 'document_amount.g.dart';

@freezed
class DocumentAmount with _$DocumentAmount {
  const factory DocumentAmount({
    required String beforeDiscount,
    required String discount,
    required String tax,
    required String total,
  }) = _DocumentAmount;

  factory DocumentAmount.fromJson(Map<String, Object?> json) =>
      _$DocumentAmountFromJson(json);

  factory DocumentAmount.fromEntity(DocumentAmountsEntity entity) {
    return DocumentAmount(
      beforeDiscount: entity.beforeDiscount,
      discount: entity.discount,
      tax: entity.tax,
      total: entity.total,
    );
  }
}
