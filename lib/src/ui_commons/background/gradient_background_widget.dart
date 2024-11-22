import 'package:flutter/material.dart';

class GradientBackgroundWidget extends StatelessWidget {
  const GradientBackgroundWidget({
    super.key,
    required this.child,
    this.assetPath,
    this.urlPath,
  });

  final Widget child;
  final String? assetPath;
  final String? urlPath;

  @override
  Widget build(BuildContext context) {
    Widget imageWidget = const SizedBox();

    if (assetPath != null) {
      imageWidget = Image.asset(
        assetPath!,
        fit: BoxFit.cover,
      );
    } else if (urlPath != null) {
      imageWidget = Image.network(
        urlPath!,
        fit: BoxFit.cover,
      );
    }

    return Stack(
      children: [
        Positioned.fill(
          child: imageWidget,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.1),
                Colors.black,
              ],
            ),
          ),
        ),
        child,
      ],
    );
  }
}
