import 'package:data_repository/data_repository.dart';
import 'package:flesan_approvals/src/localization/localizations.dart';
import 'package:flutter/cupertino.dart';

extension DocumentFieldTypeTitle on DocumentFieldType {
  String title(BuildContext context) {
    String title = '';

    switch(this) {
      case DocumentFieldType.supplierCode:
        title = AppLocalizations.of(context)!.docSupplierCode;
        break;
      case DocumentFieldType.supplierName:
        title = AppLocalizations.of(context)!.docSupplierName;
        break;
      case DocumentFieldType.contact:
        title = AppLocalizations.of(context)!.docContact;
        break;
      case DocumentFieldType.paymentCondition:
        title = AppLocalizations.of(context)!.docPayCondition;
        break;
      case DocumentFieldType.costCenter:
        title = AppLocalizations.of(context)!.docCostCenter;
        break;
      case DocumentFieldType.boughtType:
        title = AppLocalizations.of(context)!.docPurchaseType;
        break;
      case DocumentFieldType.accountingDate:
        title = AppLocalizations.of(context)!.docAccountingDate;
        break;
      case DocumentFieldType.deliveryDate:
        title = AppLocalizations.of(context)!.docDeliveryDate;
        break;
      case DocumentFieldType.documentDate:
        title = AppLocalizations.of(context)!.docDocumentDate;
        break;
    }

    return title;
  }
}