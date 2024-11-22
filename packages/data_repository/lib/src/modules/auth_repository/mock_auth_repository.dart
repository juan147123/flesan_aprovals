import 'dart:async';
import 'dart:convert';

import 'package:data_repository/src/core/localstorage/local_storage.dart';
import 'package:data_repository/src/core/networking/networkException.dart';
import 'package:data_repository/src/modules/auth_repository/auth_repository.dart';
import 'package:data_repository/src/modules/auth_repository/models/auth_session.dart';
import 'package:data_repository/src/modules/auth_repository/models/user.dart';
import 'package:multiple_result/multiple_result.dart';

class MockAuthRepository implements AuthRepository {
  static const _preferenceAuthSession = 'preferenceAuthSession';

  StreamController<AuthSession?> controller = StreamController<AuthSession?>();

  @override
  Stream<AuthSession?> get authSession => controller.stream;

  @override
  Future<AuthSession?> getAuthSession() async {
    final string =
        await LocalStorage.instance.getString(_preferenceAuthSession);

    if (string != null && string.isNotEmpty) {
      final AuthSession authSession = AuthSession.fromJson(json.decode(string));
      controller.add(authSession);
      return authSession;
    }

    controller.add(null);
    return null;
  }

  @override
  Future<void> removeAuthSession() async {
    controller.add(null);
    await LocalStorage.instance.remove(_preferenceAuthSession);
  }

  @override
  Future<void> saveAuthSession(AuthSession authSession) async {
    final string = json.encode(authSession.toJson());
    await LocalStorage.instance.save(_preferenceAuthSession, string);
    controller.add(authSession);
  }

  @override
  Future<Result<User, NetworkException>> logInWithCredentials({
    required String username,
    required String password,
    required String companyId,
  }) async {
    await Future.delayed(const Duration(seconds: 2));
    return Result.success(_MockData.user);
  }
}

class _MockData {
  static User user = const User(
    username: 'username',
    password: 'password',
    accessToken: 'access_token',
  );
}
