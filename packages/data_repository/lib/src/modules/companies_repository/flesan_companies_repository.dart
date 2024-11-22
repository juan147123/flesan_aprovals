import 'package:data_repository/src/core/networking/networkException.dart';
import 'package:data_repository/src/core/networking/networkRequest.dart';
import 'package:data_repository/src/core/networking/networkRequestBody.dart';
import 'package:data_repository/src/core/networking/networkService.dart';
import 'package:data_repository/src/modules/companies_repository/companies_repository.dart';
import 'package:data_repository/src/modules/companies_repository/entities/company_entity.dart';
import 'package:data_repository/src/modules/companies_repository/entities/response/companies_response_entity.dart';
import 'package:data_repository/src/modules/companies_repository/models/models.dart';
import 'package:data_repository/src/utils/env.dart';
import 'package:multiple_result/multiple_result.dart';

class FlesanCompaniesRepository implements CompaniesRepository {
  @override
  Future<Result<List<Company>, NetworkException>> fetchCompanies() async {
    final service = NetworkService(baseUrl: Environment.host);
    const request = NetworkRequest(
      type: NetworkRequestType.GET,
      path: '/api/companies',
      data: NetworkRequestBody.empty(),
    );

    final response =
        await service.execute(request, CompaniesResponseEntity.fromJson);

    return response.maybeWhen(
      ok: (response) {
        final responseEntity = response as CompaniesResponseEntity;

        if (responseEntity.error != null) {
          return Error(NetworkException(responseEntity.error!.message));
        }

        final companyEntities = responseEntity.data ?? <CompanyEntity>[];
        final companies = companyEntities
            .map((companyEntity) => Company.fromEntity(companyEntity))
            .toList();
        return Success(companies);
      },
      orElse: () => Error(
        NetworkException('Error!'),
      ),
    );
  }
}
