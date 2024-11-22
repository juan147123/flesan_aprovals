import 'package:data_repository/data_repository.dart';
import 'package:flesan_approvals/src/features/splash/cubit/splash_cubit.dart';
import 'package:flesan_approvals/src/ui_commons/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'splash_view.dart';

class SplashPage extends StatelessWidget {
  static const String routeName = '/splash';

  static MaterialPageRoute route() =>
      MaterialPageRoute(builder: (context) => const SplashPage());

  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit(
        authRepository: context.read<DataRepository>().authRepository,
      ),
      child: const Scaffold(
        backgroundColor: FlesanColors.aliceBlue,
        extendBodyBehindAppBar: true,
        body: SplashView(),
      ),
    );
  }
}
