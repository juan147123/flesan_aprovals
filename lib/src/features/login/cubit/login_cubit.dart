import 'package:bloc/bloc.dart';
import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';

import 'cubit.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(AuthRepository authRepository, Company company)
      : _authRepository = authRepository,
        _company = company,
        super(const LoginState(
          username: '',
          password: '',
          status: LoginStatus.initial,
        ));

  final AuthRepository _authRepository;
  final Company _company;

  void usernameChanged(String value) {
    emit(
      state.copyWith(
        username: value,
        status: allValids(value, state.password),
      ),
    );
  }

  void passwordChanged(String value) {
    emit(
      state.copyWith(
        password: value,
        status: allValids(state.username, value),
      ),
    );
  }

  void validate() {
    emit(
      state.copyWith(
        status: allValids(state.username, state.password),
      ),
    );
  }

  LoginStatus allValids(String username, String password) {
    return username.isNotEmpty && password.isNotEmpty
        ? LoginStatus.valid
        : LoginStatus.invalid;
  }

  Future<void> login() async {
    if (state.status == LoginStatus.valid) {
      emit(
        state.copyWith(status: LoginStatus.loading),
      );
      try {
        final result = await _authRepository.logInWithCredentials(
          username: state.username,
          password: state.password,
          companyId: _company.id,
        );

        result.when(
          (user) async {
            await _authRepository.saveAuthSession(
              AuthSession(user: user, company: _company),
            );

            emit(
              state.copyWith(
                status: LoginStatus.loginSuccess,
              ),
            );
          },
          (error) => emit(
            state.copyWith(
              status: LoginStatus.error,
              errorMessage: error.message,
            ),
          ),
        );
      } catch (e) {
        debugPrint("<LoginCubit> Error: $e");
        emit(
          state.copyWith(status: LoginStatus.error),
        );
      }
    }
  }
}
