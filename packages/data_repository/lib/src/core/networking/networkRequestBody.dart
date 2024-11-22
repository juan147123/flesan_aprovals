// ignore_for_file: file_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'networkRequestBody.freezed.dart';

@freezed
class NetworkRequestBody with _$NetworkRequestBody {
  const factory NetworkRequestBody.empty() = Empty;
  const factory NetworkRequestBody.json(Map<String, dynamic> data) = Json;
  const factory NetworkRequestBody.text(String data) = Text;
}
