import 'package:data_repository/data_repository.dart';
import 'package:flesan_approvals/src/extensions/build_context_snackbar.dart';
import 'package:flesan_approvals/src/features/attachments/view/attachments_page.dart';
import 'package:flesan_approvals/src/features/document_detail/widgets/actions_widget.dart';
import 'package:flesan_approvals/src/localization/localizations.dart';
import 'package:flesan_approvals/src/ui_commons/dialogs/confirm_dialog.dart';
import 'package:flesan_approvals/src/ui_commons/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/cubit.dart';
import '../widgets/header_widget.dart';
import '../widgets/information_widget.dart';
import '../widgets/items_widget.dart';
import '../widgets/notes_widget.dart';

class DocumentDetailView extends StatefulWidget {
  const DocumentDetailView({super.key});

  @override
  State<StatefulWidget> createState() => DocumentDetailViewState();
}

class DocumentDetailViewState extends State<DocumentDetailView> {
  @override
  void initState() {
    context.read<DocumentDetailCubit>().fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DocumentDetailCubit, DocumentDetailState>(
      listener: (context, state) {
        if (state.status == DocumentDetailStatus.error) {
          context.showSnackBar(
              state.errorMessage ?? AppLocalizations.of(context)!.generalError);
        } else if (state.status == DocumentDetailStatus.noNotesError) {
          context.showSnackBar(AppLocalizations.of(context)!.docNoNoteError);
        } else if (state.status == DocumentDetailStatus.actionSuccess) {
          var isApproved = state.document.status == DocumentStatus.approved;
          showConfirmationDialog(isApproved);
        }
      },
      builder: (context, state) {
        final document = state.document;
        final onlyView = document.status != DocumentStatus.pending;

        return Stack(
          children: [
            Column(
              children: [
                HeaderWidget(document: document),
                Expanded(
                  child: (state.status == DocumentDetailStatus.loading)
                      ? const LoadingWidget()
                      : ListView(
                          padding: const EdgeInsets.symmetric(
                              vertical: 25, horizontal: 30),
                          children: [
                            InformationWidget(document: document),
                            const SizedBox(height: 17),
                            ItemsWidget(document: document),
                            const SizedBox(height: 9),
                            NotesWidget(
                              notes: document.note ?? '',
                              isEnabled: !onlyView,
                            ),
                          ],
                        ),
                ),
              ],
            ),
            if (state.status != DocumentDetailStatus.loading)
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 30, bottom: 70),
                  child: ActionsWidget(
                    allActions: state.document.status == DocumentStatus.pending,
                    onPressed: (index) {
                      switch (index) {
                        case 0:
                          approve(context);
                          break;
                        case 1:
                          reject(context);
                          break;
                        case 2:
                          Navigator.of(context).pushNamed(
                            AttachmentsPage.routeName,
                            arguments: state.document,
                          );
                          break;
                      }
                    },
                  ),
                ),
              ),
            if (state.status == DocumentDetailStatus.actionLoading)
              const Positioned.fill(child: LoadingWidget()),
          ],
        );
      },
    );
  }

  void approve(BuildContext context) {
    ConfirmDialog.showConfirmDialog(
      context,
      'approve.json',
      AppLocalizations.of(context)!.docApproveTitle,
      AppLocalizations.of(context)!.docApproveDescription,
      () {
        context.read<DocumentDetailCubit>().approve();
      },
    );
  }

  void reject(BuildContext context) {
    ConfirmDialog.showConfirmDialog(
      context,
      'reject.json',
      AppLocalizations.of(context)!.docRejectTitle,
      AppLocalizations.of(context)!.docRejectDescription,
      () {
        context.read<DocumentDetailCubit>().reject();
      },
    );
  }

  Future<void> showConfirmationDialog(var isApproved) async {
    var title = isApproved
        ? AppLocalizations.of(context)!.docApprovedConfirmation
        : AppLocalizations.of(context)!.docRejectedConfirmation;

    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            title,
          ),
          actions: [
            TextButton(
              child: Text(AppLocalizations.of(context)!.acceptBtn),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
