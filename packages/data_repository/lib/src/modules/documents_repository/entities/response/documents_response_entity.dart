import 'package:data_repository/src/core/networking/entities/error_entity.dart';
import 'package:data_repository/src/modules/documents_repository/entities/document_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'documents_response_entity.freezed.dart';

part 'documents_response_entity.g.dart';

@freezed
class DocumentsResponseEntity with _$DocumentsResponseEntity {
  const factory DocumentsResponseEntity({
    @JsonKey(name: 'result') required String result,
    @JsonKey(name: 'data') List<DocumentEntity>? data,
    @JsonKey(name: 'error') ErrorEntity? error,
  }) = _DocumentsResponseEntity;

  factory DocumentsResponseEntity.fromJson(Map<String, Object?> json) =>
      _$DocumentsResponseEntityFromJson(json);
}
