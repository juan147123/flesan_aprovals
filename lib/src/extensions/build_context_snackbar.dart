import 'package:flesan_approvals/src/ui_commons/colors.dart';
import 'package:flutter/material.dart';

extension BuildContextSnackbar on BuildContext {
  void showSnackBar(String text) {
    var snackBar = SnackBar(
      content: Text(text),
      backgroundColor: FlesanColors.brightRed,
    );
    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }
}