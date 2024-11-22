import 'package:data_repository/data_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attachments_state.freezed.dart';

enum AttachmentsStatus { initial, loading, loaded, error }

@freezed
class AttachmentsState with _$AttachmentsState {
  const factory AttachmentsState({
    required AttachmentsStatus status,
    List<Attachment>? attachments,
    String? errorMessage,
}) = _AttachmentsState;
}

