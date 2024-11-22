import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data_repository.dart';

part 'document_field.freezed.dart';
part 'document_field.g.dart';

@freezed
class DocumentField with _$DocumentField {
  const factory DocumentField({
    required DocumentFieldType field,
    required String value,
  }) = _DocumentField;

  factory DocumentField.fromJson(Map<String, Object?> json) =>
      _$DocumentFieldFromJson(json);
}
