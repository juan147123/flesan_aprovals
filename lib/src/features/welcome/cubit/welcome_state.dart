// welcome_state.dart

// Enum para los estados del login
enum LoginStatus { initial, loading, success, failure }

class LoginState {
  final LoginStatus status;
  final String? displayName;
  final String? email;
  final String? errorMessage;

  const LoginState({
    required this.status,
    this.displayName,
    this.email,
    this.errorMessage,
  });

  // Método para crear una copia del estado con cambios
  LoginState copyWith({
    LoginStatus? status,
    String? displayName,
    String? email,
    String? errorMessage,
  }) {
    return LoginState(
      status: status ?? this.status,
      displayName: displayName ?? this.displayName,
      email: email ?? this.email,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
