import 'package:data_repository/data_repository.dart';
import 'package:flesan_approvals/src/ui_commons/ui_commons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../select_company/view/select_company_page.dart';
import '../cubit/cubit.dart';
import '../../../localization/localizations.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key, required this.company});

  final Company company;

  @override
  Widget build(BuildContext context) {
    var state = context.read<LoginCubit>().state;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Flecha de retroceso a la izquierda
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(
                        SelectCompanyPage.routeName,
                      );
                    },
                  ),
                  // Espacio flexible para centrar el logo
                  const Spacer(),
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    height: 60,
                    child: Image.network(company.logoUrl),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 150),
          InputWidget(
            hintText: AppLocalizations.of(context)!.loginUsername,
            svgIconName: 'portrait',
            onChanged: (username) =>
                context.read<LoginCubit>().usernameChanged(username),
          ),
          const SizedBox(height: 20),
          InputWidget(
            hintText: AppLocalizations.of(context)!.loginPassword,
            svgIconName: 'lock',
            isPassword: true,
            onChanged: (password) =>
                context.read<LoginCubit>().passwordChanged(password),
          ),
          const SizedBox(height: 35),
          ButtonWidget(
            text: AppLocalizations.of(context)!.loginBtn,
            backgroundColor: FlesanColors.brightRed,
            onTap: () => context.read<LoginCubit>().login(),
            isLoading: state.status == LoginStatus.loading,
            isEnable: state.status == LoginStatus.valid,
          ),
        ],
      ),
    );
  }
}
