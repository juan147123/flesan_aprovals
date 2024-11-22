import 'package:flesan_approvals/src/ui_commons/colors.dart';
import 'package:flesan_approvals/src/ui_commons/text_styles.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.text,
    this.textColor,
    this.textStyle = FlesanTextStyles.buttonFilledText,
    required this.backgroundColor,
    this.borderColor,
    this.borderWidth = 2.0,
    this.icon,
    this.padding,
    this.width = double.infinity,
    this.height = 60.0,
    this.isEnable = true,
    this.isLoading = false,
    required this.onTap,
  });

  final String text;
  final Color? textColor;
  final TextStyle? textStyle;
  final Color backgroundColor;
  final Color? borderColor;
  final double borderWidth;
  final Widget? icon;
  final EdgeInsets? padding;
  final double? width;
  final double? height;
  final bool isEnable;
  final bool isLoading;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final buttonStyle = FilledButton.styleFrom(
      padding: padding,
      backgroundColor: backgroundColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      foregroundColor: textColor ?? FlesanColors.white,
      side: BorderSide(
        color: borderColor ?? Colors.transparent,
        width: isEnable ? borderWidth : 0.0,
      ),
      shadowColor: FlesanColors.black05,
      textStyle: textStyle,
      disabledBackgroundColor: backgroundColor.withOpacity(0.2),
      disabledForegroundColor: Colors.white.withOpacity(0.22),
    );

    final child = icon == null
        ? FilledButton(
            onPressed: isEnable && !isLoading ? onTap : null,
            style: buttonStyle,
            child: isLoading ? const CircularProgressIndicator() : Text(text),
          )
        : FilledButton.icon(
            onPressed: isEnable && !isLoading ? onTap : null,
            style: buttonStyle,
            icon: isLoading ? const SizedBox() : icon!,
            label: isLoading ? const CircularProgressIndicator() : Text(text),
          );

    return SizedBox(
      width: width,
      height: height,
      child: child,
    );
  }
}
