import 'dart:async';
import 'dart:convert';

import 'package:data_repository/data_repository.dart';
import 'package:data_repository/src/core/localstorage/local_storage.dart';
import 'package:data_repository/src/core/networking/networkException.dart';
import 'package:data_repository/src/core/networking/networkRequest.dart';
import 'package:data_repository/src/core/networking/networkRequestBody.dart';
import 'package:data_repository/src/core/networking/networkService.dart';
import 'package:data_repository/src/modules/auth_repository/entities/request/login_credentials_request_entity.dart';
import 'package:data_repository/src/modules/auth_repository/entities/response/login_response_entity.dart';
import 'package:multiple_result/multiple_result.dart';

class FlesanAuthRepository implements AuthRepository {
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
    final service = NetworkService(baseUrl: Environment.host);
    final request = NetworkRequest(
      type: NetworkRequestType.POST,
      path: '/api/login',
      data: NetworkRequestBody.json(LoginCredentialsRequestEntity(
        username: username,
        password: password,
        companyId: companyId,
      ).toJson()),
    );

    final response =
        await service.execute(request, LoginResponseEntity.fromJson);

    return response.maybeWhen(ok: (response) {
      final responseEntity = response as LoginResponseEntity;

      if (responseEntity.error != null) {
        return Error(NetworkException(responseEntity.error!.message));
      }

      final accessToken = responseEntity.data?.accessToken;

      if (accessToken != null) {
        final User userModel = User(
            username: username, password: password, accessToken: accessToken);
        return Success(userModel);
      }

      return Error(NetworkException('Error: No access token'));
    }, noAuth: (errorText) {
      return Error(NetworkException(errorText));
    }, badRequest: (errorText) {
      return Error(NetworkException(errorText));
    }, orElse: () {
      return Error(NetworkException('Error in Logon'));
    });
  }
}
