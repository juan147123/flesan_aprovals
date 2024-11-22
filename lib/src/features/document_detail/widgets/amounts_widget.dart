import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';

import '../../../localization/localizations.dart';
import '../../../ui_commons/ui_commons.dart';

class AmountsWidget extends StatelessWidget {
  const AmountsWidget({super.key, required this.amount});

  final DocumentAmount amount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _AmountWidget(
          title: AppLocalizations.of(context)!.docTotalBefore,
          value: amount.beforeDiscount,
        ),
        _AmountWidget(
          title: AppLocalizations.of(context)!.docDiscount,
          value: amount.discount,
        ),
        _AmountWidget(
          title: AppLocalizations.of(context)!.docTax,
          value: amount.tax,
        ),
        const SizedBox(height: 5),
        _AmountWidget(
          title: AppLocalizations.of(context)!.docTotal,
          value: amount.total,
          textStyle: FlesanTextStyles.textStyle16,
        ),
      ],
    );
  }
}

class _AmountWidget extends StatelessWidget {
  const _AmountWidget({
    required this.title,
    required this.value,
    this.textStyle = FlesanTextStyles.textStyle10,
  });

  final String title;
  final String value;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: textStyle,
          ),
        ),
        Text(
          value,
          style: textStyle,
        ),
      ],
    );
  }
}