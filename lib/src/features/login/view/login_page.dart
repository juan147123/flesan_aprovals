import 'package:data_repository/data_repository.dart';
import 'package:flesan_approvals/src/ui_commons/background/gradient_background_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../localization/localizations.dart';
import '../../home/view/home_page.dart';
import '../cubit/cubit.dart';
import 'login_view.dart';

class LoginPage extends StatelessWidget {
  static const String routeName = '/login';

  static MaterialPageRoute route() => MaterialPageRoute(
        builder: (context) => const LoginPage(),
      );

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final company = ModalRoute.of(context)!.settings.arguments as Company;

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: BlocProvider(
        create: (context) => LoginCubit(
          context.read<DataRepository>().authRepository,
          company,
        ),
        child: BlocConsumer<LoginCubit, LoginState>(
          buildWhen: (previous, current) {
            return current.status != LoginStatus.error;
          },
          listener: (context, state) {
            if (state.status == LoginStatus.loginSuccess) {
              Navigator.of(context).pushReplacementNamed(HomePage.routeName);
            }
            if (state.status == LoginStatus.error) {
              final snack = SnackBar(
                content: Text(state.errorMessage ??
                    AppLocalizations.of(context)?.login_error_message ??
                    ''),
                backgroundColor: Colors.red,
              );
              ScaffoldMessenger.of(context).showSnackBar(snack);
              context.read<LoginCubit>().validate();
            }
          },
          builder: (context, state) => GradientBackgroundWidget(
            assetPath: 'assets/images/login/login_background.jpg',
            child: LoginView(company: company),
          ),
        ),
      ),
    );
  }
}
