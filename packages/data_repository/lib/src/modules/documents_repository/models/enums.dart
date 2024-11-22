import 'package:collection/collection.dart';

enum DocumentStatus {
  pending(1),
  approved(2),
  rejected(3),
  none(-1);

  const DocumentStatus(this.value);

  final int value;

  static DocumentStatus parse(int value) {
    return DocumentStatus.values
            .firstWhereOrNull((item) => item.value == value) ??
        DocumentStatus.none;
  }
}

enum DocumentType {
  order('OC'),
  offer('OF'),
  entry('EC'),
  invoice('FC'),
  advanceInvoice('AC'),
  none('-');

  const DocumentType(this.value);

  final String value;

  static DocumentType parse(String value) {
    return DocumentType.values
            .firstWhereOrNull((item) => item.value == value) ??
        DocumentType.none;
  }
}

enum DocumentFieldType {
  supplierCode,
  supplierName,
  contact,
  paymentCondition,
  costCenter,
  boughtType,
  accountingDate,
  deliveryDate,
  documentDate,
}
