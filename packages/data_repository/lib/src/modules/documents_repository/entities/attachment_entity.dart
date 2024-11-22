import 'package:freezed_annotation/freezed_annotation.dart';

part 'attachment_entity.freezed.dart';

part 'attachment_entity.g.dart';

@freezed
class AttachmentEntity with _$AttachmentEntity {
  const factory AttachmentEntity({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String? name,
    @JsonKey(name: 'description') required String? description,
    @JsonKey(name: 'content') required String? content,
  }) = _AttachmentEntity;

  factory AttachmentEntity.fromJson(Map<String, Object?> json) =>
      _$AttachmentEntityFromJson(json);
}
