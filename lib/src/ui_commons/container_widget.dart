import 'package:flesan_approvals/src/ui_commons/ui_commons.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    this.margin,
    this.padding,
    this.color,
    this.height,
    this.width,
    this.constraints,
    this.child,
  });

  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final Color? color;
  final double? height;
  final double? width;
  final BoxConstraints? constraints;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    const radius = Radius.circular(20);

    return Container(
      margin: margin,
      padding: padding,
      height: height,
      width: width,
      constraints: constraints,
      decoration: BoxDecoration(
        color: color ?? FlesanColors.aliceBlue,
        borderRadius:
            const BorderRadius.only(topLeft: radius, bottomRight: radius),
        boxShadow: const [
          BoxShadow(
            color: FlesanColors.black05,
            offset: Offset(0, 10),
            blurRadius: 49.5,
            spreadRadius: 0,
          ),
        ],
      ),
      child: child,
    );
  }
}
