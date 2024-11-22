import 'package:data_repository/data_repository.dart';
import 'package:flesan_approvals/src/features/home/widgets/documents_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../localization/localizations.dart';
import '../../../ui_commons/ui_commons.dart';
import '../cubit/cubit.dart';
import 'chip_widget.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({
    super.key,
    required this.selectedStatus,
    required this.documents,
    required this.onTap,
  });

  final DocumentStatus selectedStatus;
  final List<Document>? documents;
  final Function(Document) onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.homeScreenTitle,
            style: FlesanTextStyles.textStyle6,
          ),
          Text(
            AppLocalizations.of(context)!.homeScreenDescription,
            style: FlesanTextStyles.textStyle7,
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Flexible(
                child: ChipWidget(
                  title: AppLocalizations.of(context)!.homeDocsPending,
                  isSelected: selectedStatus == DocumentStatus.pending,
                  onTap: () => context
                      .read<HomeCubit>()
                      .changeStatus(DocumentStatus.pending),
                ),
              ),
              const SizedBox(
                width: 11,
              ),
              Flexible(
                child: ChipWidget(
                  title: AppLocalizations.of(context)!.homeDocsApproved,
                  isSelected: selectedStatus == DocumentStatus.approved,
                  onTap: () => context
                      .read<HomeCubit>()
                      .changeStatus(DocumentStatus.approved),
                ),
              ),
              const SizedBox(
                width: 11,
              ),
              Flexible(
                child: ChipWidget(
                  title: AppLocalizations.of(context)!.homeDocsRejected,
                  isSelected: selectedStatus == DocumentStatus.rejected,
                  onTap: () => context
                      .read<HomeCubit>()
                      .changeStatus(DocumentStatus.rejected),
                ),
              ),
            ],
          ),
          Expanded(
            child: (documents == null)
                ? const LoadingWidget()
                : DocumentsWidget(
                    documents: documents!,
                    onTap: onTap,
                  ),
          ),
        ],
      ),
    );
  }
}
