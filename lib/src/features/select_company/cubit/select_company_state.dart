import 'package:data_repository/data_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'select_company_state.freezed.dart';

enum SelectCompanyStatus { initial, loading, error, loaded }

@freezed
class SelectCompanyState with _$SelectCompanyState {
  const factory SelectCompanyState({
    required SelectCompanyStatus status,
    List<Company>? companies,
    String? errorMessage,
  }) = _SelectCompanyState;
}
