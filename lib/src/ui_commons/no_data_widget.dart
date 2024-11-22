import 'package:flesan_approvals/src/ui_commons/ui_commons.dart';
import 'package:flutter/cupertino.dart';

class NoDataWidget extends StatelessWidget {
  const NoDataWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: FlesanTextStyles.textStyle8,
      ),
    );
  }
}
