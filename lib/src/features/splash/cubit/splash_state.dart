import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.freezed.dart';

enum SplashStatus { loading, authenticated, unauthenticated }

@freezed
class SplashState with _$SplashState {
  const factory SplashState({
    required SplashStatus status,
  }) = _SplashState;
}
