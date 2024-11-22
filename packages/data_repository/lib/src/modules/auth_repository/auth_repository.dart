import 'package:data_repository/src/core/networking/networkException.dart';
import 'package:data_repository/src/modules/auth_repository/models/models.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class AuthRepository {
  Stream<AuthSession?> get authSession;

  Future<void> saveAuthSession(AuthSession authSession);

  Future<AuthSession?> getAuthSession();

  Future<void> removeAuthSession();

  Future<Result<User, NetworkException>> logInWithCredentials({
    required String username,
    required String password,
    required String companyId,
  });
}
