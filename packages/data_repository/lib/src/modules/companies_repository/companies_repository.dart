import 'package:data_repository/src/core/networking/networkException.dart';
import 'package:data_repository/src/modules/companies_repository/models/models.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class CompaniesRepository {
  Future<Result<List<Company>, NetworkException>> fetchCompanies();
}
