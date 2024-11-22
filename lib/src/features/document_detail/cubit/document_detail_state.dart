import 'package:data_repository/data_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_detail_state.freezed.dart';

enum DocumentDetailStatus {
  initial,
  loading,
  loaded,
  actionLoading,
  actionSuccess,
  error,
  noNotesError,
}

@freezed
class DocumentDetailState with _$DocumentDetailState {
  const factory DocumentDetailState({
    required DocumentDetailStatus status,
    required Document document,
    required String note,
    String? errorMessage,
  }) = _DocumentDetailState;
}
