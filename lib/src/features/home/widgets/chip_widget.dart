import 'package:flutter/material.dart';

import '../../../ui_commons/ui_commons.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    var backgroundColor =
        isSelected ? FlesanColors.brightRed : FlesanColors.aliceBlue;
    var textColor = isSelected ? FlesanColors.white : FlesanColors.licorice;
    var borderColor =
        isSelected ? FlesanColors.brightRed : FlesanColors.gainsboro;
    var textStyle =
        isSelected ? FlesanTextStyles.chipText : FlesanTextStyles.textStyle8;

    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: onTap,
        style: FilledButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          backgroundColor: backgroundColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          foregroundColor: textColor,
          side: BorderSide(
            color: borderColor,
            width: 1.0,
          ),
          shadowColor: FlesanColors.black05,
          textStyle: textStyle,
        ),
        child: Text(title),
      ),
    );
  }
}
