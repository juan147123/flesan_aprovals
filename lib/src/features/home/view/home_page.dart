import 'package:data_repository/data_repository.dart';
import 'package:flesan_approvals/src/features/home/cubit/cubit.dart';
import 'package:flesan_approvals/src/features/home/view/home_view.dart';
import 'package:flesan_approvals/src/ui_commons/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home';

  static MaterialPageRoute route() =>
      MaterialPageRoute(builder: (context) => const HomePage());

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(
        authRepository: context.read<DataRepository>().authRepository,
        documentsRepository: context.read<DataRepository>().documentsRepository,
      ),
      child: const Scaffold(
        backgroundColor: FlesanColors.aliceBlue,
        body: Padding(
          padding: EdgeInsets.only(top: 80, right: 25, left: 25),
          child: HomeView(),
        ),
      ),
    );
  }
}
