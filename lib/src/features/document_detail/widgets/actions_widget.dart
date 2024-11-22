import 'package:flesan_approvals/src/ui_commons/colors.dart';
import 'package:flutter/material.dart';

class ActionsWidget extends StatefulWidget {
  const ActionsWidget({
    super.key,
    required this.onPressed,
    required this.allActions,
  });

  final Function(int) onPressed;
  final bool allActions;

  @override
  State<ActionsWidget> createState() => _ActionsWidgetState();
}

class _ActionsWidgetState extends State<ActionsWidget>
    with SingleTickerProviderStateMixin {
  bool isOpened = false;
  late AnimationController _animationController;
  late Animation<Color?> _buttonColor;
  late Animation<double> _translateButton;
  late Animation<double> _animateIcon;
  final Curve _curve = Curves.easeOut;
  final double _fabHeight = 56.0;

  @override
  initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..addListener(() {
        setState(() {});
      });

    _animateIcon =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);

    _buttonColor = ColorTween(
      begin: FlesanColors.lightRed,
      end: FlesanColors.lightRed,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(
          0.00,
          1.00,
          curve: Curves.linear,
        ),
      ),
    );

    _translateButton = Tween<double>(
      begin: _fabHeight,
      end: -7.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.0,
        0.75,
        curve: _curve,
      ),
    ));
    super.initState();
  }

  @override
  dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void animate() {
    if (!isOpened) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
    isOpened = !isOpened;
  }

  Widget toggle() {
    return FloatingActionButton(
      elevation: 0,
      heroTag: 'menu',
      backgroundColor: _buttonColor.value,
      onPressed: animate,
      child: AnimatedIcon(
        icon: AnimatedIcons.menu_close,
        color: FlesanColors.brightRed,
        progress: _animateIcon,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if (widget.allActions) ...[
          OptionWidget(
            translateButton: _translateButton,
            heightFactor: 3,
            onTap: () {
              animate();
              widget.onPressed(0);
            },
            heroTag: 'approve',
            imagePath: 'assets/images/home/fab_approve.png',
          ),
          OptionWidget(
            translateButton: _translateButton,
            heightFactor: 2,
            onTap: () {
              animate();
              widget.onPressed(1);
            },
            heroTag: 'reject',
            imagePath: 'assets/images/home/fab_reject.png',
          ),
        ],
        OptionWidget(
          translateButton: _translateButton,
          heightFactor: 1,
          onTap: () {
            animate();
            widget.onPressed(2);
          },
          heroTag: 'attachments',
          imagePath: 'assets/images/home/fab_attachments.png',
        ),
        toggle(),
      ],
    );
  }
}

class OptionWidget extends StatelessWidget {
  const OptionWidget({
    super.key,
    required this.translateButton,
    required this.heightFactor,
    required this.onTap,
    required this.heroTag,
    required this.imagePath,
  });

  final Animation<double> translateButton;
  final double heightFactor;
  final VoidCallback onTap;
  final String heroTag;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.translationValues(
        0.0,
        translateButton.value * heightFactor,
        0.0,
      ),
      child: FloatingActionButton(
        elevation: 0,
        heroTag: heroTag,
        backgroundColor: FlesanColors.white,
        onPressed: onTap,
        child: Image.asset(imagePath),
      ),
    );
  }
}
