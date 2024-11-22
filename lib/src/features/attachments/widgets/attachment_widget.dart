import 'package:data_repository/data_repository.dart';
import 'package:flesan_approvals/src/ui_commons/card_widget.dart';
import 'package:flutter/material.dart';

import '../../../ui_commons/ui_commons.dart';

class AttachmentWidget extends StatelessWidget {
  const AttachmentWidget({
    super.key,
    required this.attachment,
    required this.onTap,
  });

  final Attachment attachment;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      onTap: onTap,
      child: Center(
        child: ListTile(
          leading: const ImageIcon(
            AssetImage('assets/images/attached_files/document.png'),
            color: FlesanColors.brightRed,
          ),
          minLeadingWidth: 13.3,
          minVerticalPadding: 9.0,
          contentPadding: const EdgeInsets.only(left: 20, right: 6),
          title: Text(
            attachment.name,
            textAlign: TextAlign.start,
            style: FlesanTextStyles.textStyle21,
          ),
          subtitle: attachment.description.isEmpty ? null : Text(
            attachment.description,
            style: FlesanTextStyles.textStyle22,
          ),
          trailing: SizedBox(
            height: double.infinity,
            child: Image.asset(
                'assets/images/attached_files/attached_right_arrow.png'),
          ),
        ),
      ),
    );
  }
}
