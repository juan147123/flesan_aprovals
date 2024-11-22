// welcome_cubit.dart

import 'package:bloc/bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'welcome_state.dart'; // Importa el estado desde `welcome_state.dart`

class LoginCubit extends Cubit<LoginState> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  // Constructor: establece el estado inicial
  LoginCubit() : super(const LoginState(status: LoginStatus.initial));

  // Método para iniciar sesión con Google
  Future<void> signInWithGoogle() async {
    try {
      emit(
          state.copyWith(status: LoginStatus.loading)); // Emite estado de carga
      await _googleSignIn.signOut();

      final GoogleSignInAccount? account = await _googleSignIn.signIn();
      if (account != null) {
        emit(state.copyWith(
          status: LoginStatus.success,
          displayName: account.displayName,
          email: account.email,
        ));
      } else {
        emit(state.copyWith(
          status: LoginStatus.failure,
          errorMessage: 'No se seleccionó una cuenta de Google.',
        ));
      }
    } catch (error) {
      emit(state.copyWith(
        status: LoginStatus.failure,
        errorMessage: error.toString(),
      ));
    }
  }
}
