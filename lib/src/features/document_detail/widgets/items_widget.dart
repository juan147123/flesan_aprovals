import 'package:data_repository/data_repository.dart';
import 'package:flesan_approvals/src/features/document_detail/widgets/section_widget.dart';
import 'package:flutter/material.dart';

import '../../../localization/localizations.dart';
import '../../../ui_commons/ui_commons.dart';
import 'amounts_widget.dart';
import 'items_content_widget.dart';
import 'items_header_widget.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key, required this.document});

  final Document document;

  @override
  Widget build(BuildContext context) {
    return SectionWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.docItems,
              style: FlesanTextStyles.textStyle9,
            ),
            const SizedBox(height: 5),
            const ItemsHeaderWidget(),
            const SizedBox(height: 6),
            if (document.items != null) ItemsContentWidget(items: document.items!),
            const SizedBox(height: 9),
            Container(
              color: FlesanColors.dimGray,
              width: double.infinity,
              height: 0.5,
            ),
            const SizedBox(height: 12),
            if (document.amounts != null) AmountsWidget(amount: document.amounts!),
          ],
        ));
  }
}