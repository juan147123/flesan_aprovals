import 'package:flesan_approvals/src/features/welcome/view/welcome_view.dart';
import 'package:flesan_approvals/src/ui_commons/background/gradient_background_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/cubit.dart';  // Asegúrate de que el Cubit esté importado

class WelcomePage extends StatelessWidget {
  static const String routeName = '/welcome';

  static MaterialPageRoute route() =>
      MaterialPageRoute(builder: (context) => const WelcomePage());

  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => LoginCubit(),  // Aquí se proporciona el Cubit
      child: const Scaffold(
        extendBodyBehindAppBar: true,
        body: GradientBackgroundWidget(
          assetPath: 'assets/images/welcome/welcome_background.png',
          child: WelcomeView(),  // La vista que ya tiene el BlocBuilder
        ),
      ),
    );
  }
}
