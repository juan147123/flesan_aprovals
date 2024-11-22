import 'package:data_repository/data_repository.dart';
import 'package:flesan_approvals/src/features/welcome_company/view/welcome_company_view.dart';
import 'package:flutter/material.dart';

import '../../../ui_commons/background/gradient_background_widget.dart';
import '../../../ui_commons/colors.dart';

class WelcomeCompanyPage extends StatelessWidget {
  static const String routeName = 'welcome_company';

  static MaterialPageRoute route() =>
      MaterialPageRoute(builder: (context) => const WelcomeCompanyPage());

  const WelcomeCompanyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final company = ModalRoute.of(context)!.settings.arguments as Company;

    return Scaffold(
      backgroundColor: FlesanColors.white,
      extendBodyBehindAppBar: true,
      body: GradientBackgroundWidget(
        urlPath: company.backgroundUrl,
        child: WelcomeCompanyView(
          company: company,
        ),
      ),
    );
  }
}
