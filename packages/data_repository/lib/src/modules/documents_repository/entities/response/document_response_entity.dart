import 'package:data_repository/src/core/networking/entities/error_entity.dart';
import 'package:data_repository/src/modules/documents_repository/entities/document_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_response_entity.freezed.dart';

part 'document_response_entity.g.dart';

@freezed
class DocumentResponseEntity with _$DocumentResponseEntity {
  const factory DocumentResponseEntity({
    @JsonKey(name: 'result') required String result,
    @JsonKey(name: 'data') DocumentEntity? data,
    @JsonKey(name: 'error') ErrorEntity? error,
  }) = _DocumentResponseEntity;

  factory DocumentResponseEntity.fromJson(Map<String, Object?> json) =>
      _$DocumentResponseEntityFromJson(json);
}
