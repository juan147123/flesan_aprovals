import 'package:flesan_approvals/src/features/document_detail/cubit/document_detail_cubit.dart';
import 'package:flesan_approvals/src/features/document_detail/widgets/section_widget.dart';
import 'package:flesan_approvals/src/localization/localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../ui_commons/ui_commons.dart';

class NotesWidget extends StatelessWidget {
  const NotesWidget({
    super.key,
    required this.notes,
    required this.isEnabled,
  });

  final String notes;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return SectionWidget(
      title: AppLocalizations.of(context)!.docNotes,
      child: SizedBox(
        height: 70,
        child: TextFormField(
          autocorrect: false,
          enableSuggestions: false,
          enabled: isEnabled,
          initialValue: notes,
          maxLines: 4,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 0),
            border: InputBorder.none,
            hintText: AppLocalizations.of(context)!.docNotePlaceholder,
          ),
          style: FlesanTextStyles.textStyle12,
          textInputAction: TextInputAction.done,
          onChanged: (notes) =>
              context.read<DocumentDetailCubit>().notesChanged(notes),
        ),
      ),
    );
  }
}
