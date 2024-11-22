import 'package:data_repository/src/modules/documents_repository/entities/document_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'models.dart';

part 'document.freezed.dart';

part 'document.g.dart';

@freezed
class Document with _$Document {
  const factory Document({
    required String id,
    required DocumentStatus status,
    required DocumentType type,
    required String number,
    required String? description,
    required String? project,
    required String? provider,
    List<DocumentField>? fields,
    List<DocumentItem>? items,
    DocumentAmount? amounts,
    String? note,
  }) = _Document;

  factory Document.fromJson(Map<String, Object?> json) =>
      _$DocumentFromJson(json);

  factory Document.fromEntity(DocumentEntity entity) {
    int statusInt = entity.status;
    if (entity.docStatus != null) {
      statusInt = int.tryParse(entity.docStatus!) ?? entity.status;
    }
    final status = DocumentStatus.parse(statusInt);
    final type = DocumentType.parse(entity.type);

    DocumentAmount? amounts;
    if (entity.amounts != null) {
      amounts = DocumentAmount.fromEntity(entity.amounts!);
    }

    List<DocumentField>? fields;
    if (entity.information != null) {
      var information = entity.information!;
      fields = [
        DocumentField(
            field: DocumentFieldType.supplierCode,
            value: information.supplierCode),
        DocumentField(
            field: DocumentFieldType.supplierName,
            value: information.supplierName),
        DocumentField(
            field: DocumentFieldType.contact, value: information.contact),
        if ((information.payCondition ?? '').isNotEmpty)
          DocumentField(
              field: DocumentFieldType.paymentCondition,
              value: information.payCondition!),
        if ((information.project ?? '').isNotEmpty)
          DocumentField(
            field: DocumentFieldType.costCenter,
            value: information.project!),
        if ((information.boughtType ?? '').isNotEmpty)
          DocumentField(
              field: DocumentFieldType.boughtType,
              value: information.boughtType!),
        DocumentField(
            field: DocumentFieldType.accountingDate,
            value: information.accountingDate),
        DocumentField(
            field: DocumentFieldType.deliveryDate,
            value: information.deliveryDate),
        DocumentField(
            field: DocumentFieldType.documentDate,
            value: information.documentDate),
      ];
    }

    final items =
        entity.items?.map((entity) => DocumentItem.fromEntity(entity)).toList();

    return Document(
      id: entity.id,
      status: status,
      type: type,
      number: entity.number,
      description: entity.description,
      project: entity.project,
      provider: entity.cardName,
      fields: fields,
      items: items,
      amounts: amounts,
      note: entity.note,
    );
  }
}
