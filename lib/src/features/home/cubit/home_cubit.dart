import 'package:data_repository/data_repository.dart';
import 'package:flesan_approvals/src/features/home/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({
    required AuthRepository authRepository,
    required DocumentsRepository documentsRepository,
  })  : _authRepository = authRepository,
        _documentsRepository = documentsRepository,
        super(
          const HomeState(
            status: HomeStatus.initial,
            documentStatus: DocumentStatus.pending,
          ),
        );

  final AuthRepository _authRepository;
  final DocumentsRepository _documentsRepository;

  void fetchData() async {
    try {
      final session = await _authRepository.getAuthSession();
      emit(state.copyWith(company: session?.company));
    } catch (e) {
      emit(state.copyWith(status: HomeStatus.error));
    }
  }

  void changeStatus(DocumentStatus status) async {
    emit(state.copyWith(documentStatus: status, documents: null));

    try {
      final session = await _authRepository.getAuthSession();

      final result = await _documentsRepository.fetchDocuments(
        username: session!.user.username,
        password: session.user.password,
        companyId: session.company.id,
        status: state.documentStatus,
      );

      final documents = result
          .tryGetSuccess()
          ?.toList();
      emit(state.copyWith(documents: documents, status: HomeStatus.loaded));
    } catch (e) {
      emit(state.copyWith(status: HomeStatus.error));
    }
  }

  void reload() async {
    changeStatus(state.documentStatus);
  }

  void logout() async {
    await _authRepository.removeAuthSession();
    emit(state.copyWith(status: HomeStatus.logout));
  }
}
