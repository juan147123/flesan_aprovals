import 'package:data_repository/data_repository.dart';
import 'package:flutter/cupertino.dart';

import '../localization/localizations.dart';

extension DocumentTitle on Document {
  String typeTitle(BuildContext context) {
    String type = '';

    switch (this.type) {
      case DocumentType.order:
        type = AppLocalizations.of(context)!.docTypeOrder;
        break;
      case DocumentType.offer:
        type = AppLocalizations.of(context)!.docTypeOffer;
        break;
      case DocumentType.entry:
        type = AppLocalizations.of(context)!.docTypeEntry;
        break;
      case DocumentType.invoice:
        type = AppLocalizations.of(context)!.docTypeInvoice;
        break;
      case DocumentType.advanceInvoice:
        type = AppLocalizations.of(context)!.docTypeAdvanceInvoice;
        break;
      case DocumentType.none:
        break;
    }

    return type;
  }

  String statusTitle(BuildContext context) {
    String status = '';

    switch (this.status) {
      case DocumentStatus.pending:
        status = AppLocalizations.of(context)!.homeDocPending;
        break;
      case DocumentStatus.approved:
        status = AppLocalizations.of(context)!.homeDocApproved;
        break;
      case DocumentStatus.rejected:
        status = AppLocalizations.of(context)!.homeDocRejected;
        break;
      case DocumentStatus.none:
        break;
    }

    return status;
  }
}
