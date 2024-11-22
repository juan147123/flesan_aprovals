import 'package:data_repository/src/core/networking/entities/error_entity.dart';
import 'package:data_repository/src/modules/documents_repository/entities/attachment_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attachments_response_entity.freezed.dart';

part 'attachments_response_entity.g.dart';

@freezed
class AttachmentsResponseEntity with _$AttachmentsResponseEntity {
  const factory AttachmentsResponseEntity({
    @JsonKey(name: 'result') required String result,
    @JsonKey(name: 'data') List<AttachmentEntity>? data,
    @JsonKey(name: 'error') ErrorEntity? error,
  }) = _AttachmentsResponseEntity;

  factory AttachmentsResponseEntity.fromJson(Map<String, Object?> json) =>
      _$AttachmentsResponseEntityFromJson(json);
}
