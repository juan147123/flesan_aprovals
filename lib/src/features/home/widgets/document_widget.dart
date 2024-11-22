import 'package:data_repository/data_repository.dart';
import 'package:flesan_approvals/src/ui_commons/card_widget.dart';
import 'package:flutter/material.dart';

import '../../../localization/localizations.dart';
import '../../../ui_commons/ui_commons.dart';

class DocumentWidget extends StatelessWidget {
  const DocumentWidget({
    super.key,
    required this.document,
    required this.onTap,
  });

  final Document document;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    const double cardHeight = 110;
    String documentName = '';
    String imageName = '';

    switch (document.type) {
      case DocumentType.order:
        documentName = AppLocalizations.of(context)!.docTypeOrder;
        imageName = 'icon_order';
        break;
      case DocumentType.offer:
        documentName = AppLocalizations.of(context)!.docTypeOffer;
        imageName = 'icon_offer';
        break;
      case DocumentType.entry:
        documentName = AppLocalizations.of(context)!.docTypeEntry;
        imageName = 'icon_entry';
        break;
      case DocumentType.invoice:
        documentName = AppLocalizations.of(context)!.docTypeInvoice;
        imageName = 'icon_invoice';
        break;
      case DocumentType.advanceInvoice:
        documentName = AppLocalizations.of(context)!.docTypeAdvanceInvoice;
        imageName = 'icon_advance_invoice';
        break;
      case DocumentType.none:
        break;
    }

    Color barColor = FlesanColors.grandis;

    switch (document.status) {
      case DocumentStatus.pending:
        barColor = FlesanColors.grandis;
        break;
      case DocumentStatus.approved:
        barColor = FlesanColors.mediumAquamarine;
        break;
      case DocumentStatus.rejected:
        barColor = FlesanColors.wildWatermelon;
        break;
      case DocumentStatus.none:
        break;
    }

    String title = '$documentName N° ${document.number}';
    String iconPath = 'assets/images/home/$imageName.png';

    return CardWidget(
      height: cardHeight,
      onTap: onTap,
      child: Row(
        children: [
          Container(width: 15, color: barColor),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(left: 8, top: 13, right: 20),
              child: Image.asset(iconPath),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: FlesanTextStyles.textStyle9,
                        ),
                      ),
                      Image.asset('assets/images/home/arrow_right.png'),
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 70,
                        child: Text(
                          AppLocalizations.of(context)!.homeProject,
                          style: FlesanTextStyles.textStyle19,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Text(
                          document.project ?? '',
                          style: FlesanTextStyles.textStyle10,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 70,
                        child: Text(
                          AppLocalizations.of(context)!.homeProvider,
                          style: FlesanTextStyles.textStyle19,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Text(
                          document.provider ?? '',
                          style: FlesanTextStyles.textStyle10,
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
