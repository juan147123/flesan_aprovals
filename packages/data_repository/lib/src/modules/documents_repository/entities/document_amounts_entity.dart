import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_amounts_entity.freezed.dart';

part 'document_amounts_entity.g.dart';

@freezed
class DocumentAmountsEntity with _$DocumentAmountsEntity {
  const factory DocumentAmountsEntity({
    @JsonKey(name: 'before_discount') required String beforeDiscount,
    @JsonKey(name: 'discount') required String discount,
    @JsonKey(name: 'tax') required String tax,
    @JsonKey(name: 'total') required String total,
}) = _DocumentAmountsEntity;

  factory DocumentAmountsEntity.fromJson(Map<String, Object?> json) =>
      _$DocumentAmountsEntityFromJson(json);
}
