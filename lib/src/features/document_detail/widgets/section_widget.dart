import 'package:flutter/cupertino.dart';

import '../../../ui_commons/ui_commons.dart';

class SectionWidget extends StatelessWidget {
  const SectionWidget({
    super.key,
    required this.child,
    this.title,
  });

  final Widget child;
  final String? title;

  @override
  Widget build(BuildContext context) {
    const double cardRadiusValue = 15.0;
    final double topMargin = title == null ? 0 : 8;

    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: topMargin),
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlesanColors.white,
            border: Border.all(
              color: FlesanColors.brightRed,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(cardRadiusValue),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(cardRadiusValue),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 20, right: 20, bottom: 13),
              child: child,
            ),
          ),
        ),
        if (title != null)
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: const EdgeInsets.only(left: 20),
              padding: const EdgeInsets.symmetric(horizontal: 5),
              color: FlesanColors.aliceBlue,
              child: Text(
                title!,
                style: FlesanTextStyles.textStyle19,
              ),
            ),
          ),
      ],
    );
  }
}
