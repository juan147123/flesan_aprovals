import 'dart:convert';
import 'dart:typed_data';

import 'package:data_repository/src/modules/documents_repository/entities/attachment_entity.dart';
import 'package:data_repository/src/utils/uint8list_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attachment.freezed.dart';

part 'attachment.g.dart';

@freezed
class Attachment with _$Attachment {
  const factory Attachment({
    required String id,
    required String name,
    required String description,
    @Uint8ListConverter() Uint8List? pdfData,
  }) = _Attachment;

  factory Attachment.fromJson(Map<String, Object?> json) =>
      _$AttachmentFromJson(json);

  factory Attachment.fromEntity(AttachmentEntity entity) => Attachment(
        id: entity.id,
        name: entity.name ?? '',
        description: entity.description ?? '',
        pdfData: base64.decode(entity.content ?? ''),
      );
}
