import 'package:data_repository/data_repository.dart';
import 'package:flesan_approvals/src/extensions/document_field_type_title.dart';
import 'package:flesan_approvals/src/extensions/document_title.dart';
import 'package:flutter/material.dart';

import '../../../ui_commons/ui_commons.dart';
import 'section_widget.dart';

class InformationWidget extends StatelessWidget {
  const InformationWidget({
    super.key,
    required this.document,
  });

  final Document document;

  @override
  Widget build(BuildContext context) {
    String type = document.typeTitle(context);

    return SectionWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                type,
                style: FlesanTextStyles.textStyle9,
              ),
              const Spacer(),
              Text(
                'N° ${document.number}',
                style: FlesanTextStyles.textStyle9,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Column(
            children: (document.fields ?? []).map((field) {
              final last = document.fields?.last;
              return _InfoItemWidget(
                title: field.field.title(context),
                value: field.value,
                padding: EdgeInsets.only(bottom: field == last ? 0 : 5),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class _InfoItemWidget extends StatelessWidget {
  const _InfoItemWidget({
    required this.title,
    required this.value,
    required this.padding,
  });

  final String title;
  final String value;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 2,child: Text(
            title,
            style: FlesanTextStyles.textStyle12,
          ),),
          const Text(': ', style: FlesanTextStyles.textStyle12,),
          Expanded(flex: 2,child: Text(
            value,
            textAlign: TextAlign.right,
            style: FlesanTextStyles.textStyle13,
          ),),
        ],
      ),
    );
  }
}