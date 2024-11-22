import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_item_entity.freezed.dart';

part 'document_item_entity.g.dart';

@freezed
class DocumentItemEntity with _$DocumentItemEntity {
  const factory DocumentItemEntity({
    @JsonKey(name: 'quantity') required double quantity,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'unit_price') required String unitPrice,
    @JsonKey(name: 'total_price') required String totalPrice,
  }) = _DocumentItemEntity;

  factory DocumentItemEntity.fromJson(Map<String, Object?> json) =>
      _$DocumentItemEntityFromJson(json);
}