import 'package:flesan_approvals/src/ui_commons/text_styles.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'colors.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    var padding = MediaQueryData.fromView(ui.window).padding;

    return Container(
      height: 120,
      padding: EdgeInsets.only(top: padding.top),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(60),
        ),
        color: FlesanColors.brightRed,
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Center(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: FlesanTextStyles.appBarTitle,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 35),
              child: InkWell(
                onTap: () => Navigator.of(context).pop(),
                child: Image.asset(
                  'assets/images/general/nav_back.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
