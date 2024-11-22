import 'package:data_repository/data_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

enum HomeStatus { initial, loading, error, loaded, logout }

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required HomeStatus status,
    required DocumentStatus documentStatus,
    Company? company,
    List<Document>? documents,
    String? errorMessage,
  }) = _HomeState;
}
