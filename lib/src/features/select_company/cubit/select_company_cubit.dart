import 'package:bloc/bloc.dart';
import 'package:data_repository/data_repository.dart';

import 'cubit.dart';

class SelectCompanyCubit extends Cubit<SelectCompanyState> {
  SelectCompanyCubit({
    required CompaniesRepository companiesRepository,
  })  : _companiesRepository = companiesRepository,
        super(const SelectCompanyState(status: SelectCompanyStatus.initial));

  final CompaniesRepository _companiesRepository;

  void fetchData() async {
    emit(state.copyWith(status: SelectCompanyStatus.loading));

    final result = await _companiesRepository.fetchCompanies();

    final companies = result.tryGetSuccess();

    if (companies != null) {
      emit(state.copyWith(
        companies: companies,
        status: SelectCompanyStatus.loaded,
      ));
    } else {
      emit(state.copyWith(status: SelectCompanyStatus.error));
    }
  }
}
