import 'package:data_repository/data_repository.dart';
import 'package:flesan_approvals/src/extensions/document_title.dart';
import 'package:flutter/material.dart';

import '../../../localization/localizations.dart';
import '../../../ui_commons/app_bar_widget.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    required this.document,
  });

  final Document document;

  @override
  Widget build(BuildContext context) {
    String type = document.typeTitle(context);
    final title = AppLocalizations.of(context)!.docDetailTitle(type);

    return AppBarWidget(
      text: title,
    );
  }
}