import 'package:data_repository/data_repository.dart';

abstract class DataRepository {
  late AuthRepository authRepository;
  late CompaniesRepository companiesRepository;
  late DocumentsRepository documentsRepository;
}

class FlesanDataRepository extends DataRepository {
  FlesanDataRepository({
    required String host,
  }) {
    Environment.host = host;
    authRepository = FlesanAuthRepository();
    companiesRepository = FlesanCompaniesRepository();
    documentsRepository = FlesanDocumentsRepository();
  }
}
