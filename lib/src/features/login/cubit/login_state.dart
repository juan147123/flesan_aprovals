import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

enum LoginStatus { initial, valid, invalid, error, loading, loginSuccess }

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required String username,
    required String password,
    required LoginStatus status,
    String? errorMessage,
  }) = _LoginState;
}
