import 'dart:async';

import 'package:flesan_approvals/src/features/home/view/home_page.dart';
import 'package:flesan_approvals/src/features/welcome/view/welcome_page.dart';
import 'package:flesan_approvals/src/ui_commons/animation/animation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../cubit/cubit.dart';

class SplashView extends StatelessWidget {
  const SplashView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SplashCubit, SplashState>(
      listener: (context, state) {
        switch (state.status) {
          case SplashStatus.authenticated:
            Navigator.of(context).pushReplacementNamed(HomePage.routeName);
            break;
          case SplashStatus.unauthenticated:
            Navigator.of(context).pushReplacementNamed(WelcomePage.routeName);
            break;
          case SplashStatus.loading:
            break;
        }
      },
      builder: (context, state) {
        return Stack(
          fit: StackFit.expand,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: SvgPicture.asset('assets/images/svg/splashBackground.svg'),
            ),
            Center(
              child: AnimationWidget(
                fileName: 'splash.json',
                loaded: () => Timer(
                  const Duration(seconds: 3),
                  () => context.read<SplashCubit>().fetchData(),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
