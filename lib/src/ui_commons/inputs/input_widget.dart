import 'package:flesan_approvals/src/ui_commons/colors.dart';
import 'package:flesan_approvals/src/ui_commons/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InputWidget extends StatefulWidget {
  const InputWidget({
    super.key,
    required this.hintText,
    required this.svgIconName,
    this.isPassword = false,
    required this.onChanged,
    this.width = double.infinity,
    this.height = 60,
  });

  final String hintText;
  final String svgIconName;
  final bool isPassword;
  final void Function(String) onChanged;
  final double width;
  final double height;

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  final iconSize = 20.0;
  final iconPadding = 26.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: FlesanColors.black05,
            offset: Offset(0, 10),
            blurRadius: 49.5,
            spreadRadius: 0,
          ),
        ],
      ),
      child: TextFormField(
        autocorrect: false,
        enableSuggestions: false,
        obscureText: widget.isPassword,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 16),
          border: InputBorder.none,
          icon: Padding(
            padding: EdgeInsets.only(left: iconPadding),
            child: SvgPicture.asset(
              'assets/images/svg/${widget.svgIconName}.svg',
              fit: BoxFit.cover,
              alignment: Alignment.center,
              width: iconSize,
            ),
          ),
          iconColor: FlesanColors.white,
          hintText: widget.hintText,
          hintStyle: FlesanTextStyles.loginInputText,
        ),
        style: FlesanTextStyles.loginInputText,
        maxLines: 1,
        keyboardType: widget.isPassword
            ? TextInputType.text
            : TextInputType.visiblePassword,
        onChanged: widget.onChanged,
        textInputAction: TextInputAction.done,
      ),
    );
  }
}
