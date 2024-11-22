import 'package:bloc/bloc.dart';
import 'package:data_repository/data_repository.dart';
import 'package:flesan_approvals/src/features/splash/cubit/splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit({
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const SplashState(status: SplashStatus.loading));

  final AuthRepository _authRepository;

  void fetchData() async {
    final result = await _authRepository.getAuthSession();

    if (result == null) {
      emit(state.copyWith(status: SplashStatus.unauthenticated));
    } else {
      emit(state.copyWith(status: SplashStatus.authenticated));
    }
  }
}
