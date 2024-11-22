import 'package:flesan_approvals/src/ui_commons/buttons/button_widget.dart';
import 'package:flesan_approvals/src/ui_commons/colors.dart';
import 'package:flesan_approvals/src/ui_commons/text_styles.dart';
import 'package:flutter/material.dart';

import '../../localization/localizations.dart';
import '../animation/animation_widget.dart';

class ConfirmDialog {
  static showConfirmDialog(
    BuildContext context,
    String animationName,
    String title,
    String description,
    VoidCallback okAction,
  ) {
    double width = (MediaQuery.of(context).size.width) - 2 * 80;
    AlertDialog confirmDialog = AlertDialog(
      scrollable: true,
      backgroundColor: Colors.white,
      contentPadding: const EdgeInsets.all(20.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      content: Theme(
        data: ThemeData(dialogBackgroundColor: Colors.white),
        child: SizedBox(
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: AnimationWidget(fileName: animationName),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                title,
                style: FlesanTextStyles.textStyle3,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                description,
                style: FlesanTextStyles.textStyle4,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Flexible(
                    child: ButtonWidget(
                      height: 40,
                      text: AppLocalizations.of(context)!.cancelBtn,
                      textColor: FlesanColors.brightRed,
                      textStyle: FlesanTextStyles.alertButtonText,
                      borderColor: FlesanColors.brightRed,
                      backgroundColor: FlesanColors.white,
                      onTap: () => Navigator.of(context).pop(),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: ButtonWidget(
                      height: 40,
                      text: AppLocalizations.of(context)!.acceptBtn,
                      textStyle: FlesanTextStyles.alertButtonText,
                      backgroundColor: FlesanColors.brightRed,
                      onTap: () {
                        Navigator.of(context).pop();
                        okAction();
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) => confirmDialog,
    );
  }
}
