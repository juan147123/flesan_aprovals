import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data_repository.dart';

part 'auth_session.freezed.dart';
part 'auth_session.g.dart';

@freezed
class AuthSession with _$AuthSession {
  const factory AuthSession({
    required Company company,
    required User user,
  }) = _AuthSession;

  factory AuthSession.fromJson(Map<String, Object?> json) =>
      _$AuthSessionFromJson(json);
}
