import 'package:data_repository/src/modules/documents_repository/entities/document_amounts_entity.dart';
import 'package:data_repository/src/modules/documents_repository/entities/document_information_entity.dart';
import 'package:data_repository/src/modules/documents_repository/entities/document_item_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_entity.freezed.dart';

part 'document_entity.g.dart';

@freezed
class DocumentEntity with _$DocumentEntity {
  const factory DocumentEntity({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'status') required int status,
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'number') required String number,
    @JsonKey(name: 'description') required String? description,
    @JsonKey(name: 'cardcode') required String? cardCode,
    @JsonKey(name: 'project') required String? project,
    @JsonKey(name: 'cardname') required String? cardName,
    @JsonKey(name: 'tcompra') required String? tCompra,
    @JsonKey(name: 'information') DocumentInformationEntity? information,
    @JsonKey(name: 'items') List<DocumentItemEntity>? items,
    @JsonKey(name: 'amounts') DocumentAmountsEntity? amounts,
    @JsonKey(name: 'note') String? note,
    @JsonKey(name: 'EstadoDoc') String? docStatus,
  }) = _DocumentEntity;

  factory DocumentEntity.fromJson(Map<String, Object?> json) =>
      _$DocumentEntityFromJson(json);
}
