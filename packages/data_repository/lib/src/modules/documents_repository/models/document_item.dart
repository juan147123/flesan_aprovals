import 'package:data_repository/src/modules/documents_repository/entities/document_item_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_item.freezed.dart';

part 'document_item.g.dart';

@freezed
class DocumentItem with _$DocumentItem {
  const factory DocumentItem({
    required int quantity,
    required String description,
    required String unitPrice,
    required String totalPrice,
  }) = _DocumentItem;

  factory DocumentItem.fromJson(Map<String, Object?> json) =>
      _$DocumentItemFromJson(json);

  factory DocumentItem.fromEntity(DocumentItemEntity entity) {
    return DocumentItem(
      quantity: entity.quantity.toInt(),
      description: entity.description,
      unitPrice: entity.unitPrice,
      totalPrice: entity.totalPrice,
    );
  }
}
