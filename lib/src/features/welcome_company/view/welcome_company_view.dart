import 'package:data_repository/data_repository.dart';
import 'package:flesan_approvals/src/features/login/view/login_page.dart';
import 'package:flesan_approvals/src/ui_commons/buttons/button_widget.dart';
import 'package:flutter/cupertino.dart';

import '../../../localization/localizations.dart';
import '../../../ui_commons/colors.dart';
import '../../../ui_commons/text_styles.dart';

class WelcomeCompanyView extends StatelessWidget {
  const WelcomeCompanyView({super.key, required this.company});

  final Company company;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 143.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            AppLocalizations.of(context)!.welcomeTo,
            style: FlesanTextStyles.title,
          ),
          const SizedBox(height: 9),
          SizedBox(
            height: 63,
            child: Image.network(company.logoUrl),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(right: 86.0),
            child: Text(
              AppLocalizations.of(context)!.welcomeDescription,
              style: FlesanTextStyles.description,
            ),
          ),
          const SizedBox(height: 45),
          ButtonWidget(
            text: AppLocalizations.of(context)!.letsStartBtn,
            backgroundColor: FlesanColors.brightRed,
            onTap: () => Navigator.of(context).pushReplacementNamed(
              LoginPage.routeName,
              arguments: company,
            ),
          ),
        ],
      ),
    );
  }
}
