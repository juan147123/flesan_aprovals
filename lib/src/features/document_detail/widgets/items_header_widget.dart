import 'package:flutter/material.dart';

import '../../../localization/localizations.dart';
import '../../../ui_commons/ui_commons.dart';

class ItemsHeaderWidget extends StatelessWidget {
  const ItemsHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _ItemHeaderWidget(
          title: AppLocalizations.of(context)!.docItemQuantity,
          flex: 1,
          align: TextAlign.left,
        ),
        _ItemHeaderWidget(
          title: AppLocalizations.of(context)!.docItemDescription,
          flex: 4,
          align: TextAlign.center,
        ),
        _ItemHeaderWidget(
          title: AppLocalizations.of(context)!.docItemUnitPrice,
          flex: 2,
          align: TextAlign.center,
        ),
        _ItemHeaderWidget(
          title: AppLocalizations.of(context)!.docItemTotal,
          flex: 2,
          align: TextAlign.center,
        ),
      ],
    );
  }
}

class _ItemHeaderWidget extends StatelessWidget {
  const _ItemHeaderWidget({
    required this.title,
    required this.flex,
    required this.align,
  });

  final String title;
  final int flex;
  final TextAlign align;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Text(
        title,
        textAlign: align,
        style: FlesanTextStyles.textStyle14,
      ),
    );
  }
}
