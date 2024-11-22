import 'package:flutter/material.dart';

import 'ui_commons.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    this.height,
    this.borderRadius = 15.0,
    required this.child,
    required this.onTap,
  });

  final double? height;
  final double borderRadius;
  final Widget child;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
      decoration: BoxDecoration(
        color: FlesanColors.white,
        border: Border.all(
          color: FlesanColors.sanMarino16,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: const [
          BoxShadow(
            color: FlesanColors.sanMarino16,
            offset: Offset(0, 4),
            blurRadius: 20,
            spreadRadius: 1,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
        child: InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: onTap,
          child: child,
        ),
      ),
    );
  }
}
