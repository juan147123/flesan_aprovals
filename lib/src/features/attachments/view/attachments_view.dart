import 'package:flesan_approvals/src/features/attachment/view/attachment_page.dart';
import 'package:flesan_approvals/src/features/attachments/cubit/attachments_cubit.dart';
import 'package:flesan_approvals/src/features/attachments/cubit/attachments_state.dart';
import 'package:flesan_approvals/src/features/attachments/widgets/attachment_widget.dart';
import 'package:flesan_approvals/src/localization/localizations.dart';
import 'package:flesan_approvals/src/ui_commons/app_bar_widget.dart';
import 'package:flesan_approvals/src/ui_commons/loading_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AttachmentsView extends StatefulWidget {
  const AttachmentsView({super.key});

  @override
  State<StatefulWidget> createState() => _AttachmentsViewState();
}

class _AttachmentsViewState extends State<AttachmentsView> {
  @override
  void initState() {
    super.initState();
    context.read<AttachmentsCubit>().fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AttachmentsCubit, AttachmentsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          children: [
            AppBarWidget(text: AppLocalizations.of(context)!.attachmentsTitle),
            Expanded(
              child: (state.status == AttachmentsStatus.loading)
                  ? const LoadingWidget()
                  : ListView.builder(
                      padding: const EdgeInsets.all(27),
                      itemBuilder: (context, index) {
                        var attachment = state.attachments![index];
                        return AttachmentWidget(
                          attachment: attachment,
                          onTap: () => Navigator.of(context).pushNamed(
                            AttachmentPage.routeName,
                            arguments: attachment,
                          ),
                        );
                      },
                      itemCount: state.attachments?.length ?? 0,
                    ),
            )
          ],
        );
      },
    );
  }
}
