import 'package:data_repository/data_repository.dart';
import 'package:flesan_approvals/src/localization/localizations.dart';
import 'package:flesan_approvals/src/ui_commons/no_data_widget.dart';
import 'package:flutter/material.dart';

import 'document_widget.dart';

class DocumentsWidget extends StatelessWidget {
  const DocumentsWidget({
    super.key,
    required this.documents,
    required this.onTap,
  });

  final List<Document> documents;
  final Function(Document) onTap;

  @override
  Widget build(BuildContext context) {
    if (documents.isEmpty) {
      return NoDataWidget(text: AppLocalizations.of(context)!.homeNoDocs);
    }

    return ListView.builder(
      padding: const EdgeInsets.only(bottom: 10, top: 20),
      itemBuilder: (context, index) {
        var document = documents[index];
        return DocumentWidget(
          document: document,
          onTap: () => onTap(document),
        );
      },
      itemCount: documents.length,
    );
  }
}
