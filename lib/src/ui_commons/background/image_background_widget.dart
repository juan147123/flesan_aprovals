import 'package:flesan_approvals/src/ui_commons/colors.dart';
import 'package:flutter/material.dart';

class ImageBackgroundWidget extends StatelessWidget {
  const ImageBackgroundWidget({
    super.key,
    required this.child,
    required this.assetPath,
    this.alpha = 100,
  });

  final Widget child;
  final String assetPath;
  final int alpha;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Image.asset(
            assetPath,
            fit: BoxFit.cover,
            color: FlesanColors.white.withAlpha(alpha),
          ),
        ),
        child,
      ],
    );
  }
}
