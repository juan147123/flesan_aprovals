import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationWidget extends StatelessWidget {
  const AnimationWidget({
    super.key,
    required this.fileName,
    this.loaded,
  });

  final String fileName;
  final VoidCallback? loaded;

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      'assets/animations/$fileName',
      onLoaded: (LottieComposition composition) {
        if (loaded != null) {
          loaded!();
        }
      },
    );
  }
}
