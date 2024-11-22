import 'package:data_repository/data_repository.dart';
import 'package:flesan_approvals/src/features/select_company/view/select_company_page.dart';
import 'package:flesan_approvals/src/localization/localizations.dart';
import 'package:flesan_approvals/src/ui_commons/buttons/button_widget.dart';
import 'package:flesan_approvals/src/ui_commons/text_styles.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../ui_commons/colors.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({
    super.key,
  });

  Future<void> _signInWithGoogle(BuildContext context) async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn();
      final GoogleSignInAccount? account = await googleSignIn.signIn();
      await googleSignIn.signOut();
      if (account != null) {
        final responseDwh = await _findUser(account.email);
        if(responseDwh == 200){
        // ignore: use_build_context_synchronously
        Navigator.of(context).pushReplacementNamed(SelectCompanyPage.routeName);
        Fluttertoast.showToast(
            msg: "¡Bienvenido ${account.displayName}!",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0);
        }else{
          Fluttertoast.showToast(
          msg: "¡Usted no esta autorizado!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
        }
      }
    } catch (error) {
      Fluttertoast.showToast(
          msg: "¡Existió un problema con la autenticación!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  Future<int> _findUser(String email) async {
    final dio = Dio();

    final url = Environment.hostDWH;

    try {
      final response = await dio.post(url, data: {
        'email': email,
      });

      if (response.statusCode == 200) {
        return 200;
      } else {
        return response.statusCode ?? 500;
      }
    } catch (e) {
      return 500;
    }
  }

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
          const SizedBox(height: 11),
          Image.asset('assets/images/welcome/welcome_logo.png'),
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
            text: "Iniciar sesión con Google",
            backgroundColor: FlesanColors.brightRed,
            onTap: () => _signInWithGoogle(context),
          ),
        ],
      ),
    );
  }
}
