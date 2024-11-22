import 'package:data_repository/data_repository.dart';
import 'package:flesan_approvals/src/features/attachment/view/attachment_view.dart';
import 'package:flesan_approvals/src/ui_commons/colors.dart';
import 'package:flutter/material.dart';

class AttachmentPage extends StatelessWidget {
  static const String routeName = '/attachment';

  const AttachmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    final attachment = ModalRoute.of(context)!.settings.arguments as Attachment;

    return Scaffold(
      backgroundColor: FlesanColors.aliceBlue,
      body: AttachmentView(attachment: attachment),
    );
  }
}
