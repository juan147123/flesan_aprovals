import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../ui_commons/ui_commons.dart';

class ItemsContentWidget extends StatelessWidget {
  const ItemsContentWidget({super.key, required this.items});

  final List<DocumentItem> items;

  @override
  Widget build(BuildContext context) {
    var formatter = NumberFormat("00", "en_US");

    return Column(
      children: items.map((item) {
        return Padding(
          padding: EdgeInsets.only(bottom: item == items.last ? 0 : 8),
          child: Row(
            children: [
              _ItemValueWidget(
                title: formatter.format(item.quantity),
                flex: 1,
                align: TextAlign.left,
              ),
              _ItemValueWidget(
                title: item.description,
                flex: 4,
                align: TextAlign.left,
              ),
              _ItemValueWidget(
                title: item.unitPrice,
                flex: 2,
                align: TextAlign.center,
              ),
              _ItemValueWidget(
                title: item.totalPrice,
                flex: 2,
                align: TextAlign.center,
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

class _ItemValueWidget extends StatelessWidget {
  const _ItemValueWidget({
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
        style: FlesanTextStyles.textStyle22,
      ),
    );
  }
}
