import 'package:flesan_approvals/src/features/attachment/view/attachment_page.dart';
import 'package:flesan_approvals/src/features/document_detail/view/document_detail_page.dart';
import 'package:flesan_approvals/src/features/attachments/view/attachments_page.dart';
import 'package:flesan_approvals/src/features/welcome/view/welcome_page.dart';
import 'package:flesan_approvals/src/features/welcome_company/view/welcome_company_page.dart';
import 'package:flesan_approvals/src/localization/localizations.dart';
import 'package:flesan_approvals/src/ui_commons/colors.dart';
import 'package:flutter/material.dart';

import 'features/home/view/home_page.dart';
import 'features/login/view/login_page.dart';
import 'features/select_company/view/select_company_page.dart';
import 'features/splash/view/splash_page.dart';

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flesan Approval',
      theme: ThemeData.from(
        useMaterial3: false,
        colorScheme: ColorScheme.fromSeed(
          seedColor: FlesanColors.brightRed,
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashPage.routeName,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale('es'),
      routes: {
        SplashPage.routeName: (context) => const SplashPage(),
        WelcomePage.routeName: (context) => const WelcomePage(),
        LoginPage.routeName: (context) => const LoginPage(),
        SelectCompanyPage.routeName: (context) => const SelectCompanyPage(),
        WelcomeCompanyPage.routeName: (context) => const WelcomeCompanyPage(),
        HomePage.routeName: (context) => const HomePage(),
        DocumentDetailPage.routeName: (context) => const DocumentDetailPage(),
        AttachmentsPage.routeName: (context) => const AttachmentsPage(),
        AttachmentPage.routeName: (context) => const AttachmentPage(),
      },
    );
  }
}
