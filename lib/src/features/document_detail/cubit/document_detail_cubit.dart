import 'package:bloc/bloc.dart';
import 'package:data_repository/data_repository.dart';

import 'cubit.dart';

class DocumentDetailCubit extends Cubit<DocumentDetailState> {
  DocumentDetailCubit({
    required Document document,
    required AuthRepository authRepository,
    required DocumentsRepository documentsRepository,
  })  : _authRepository = authRepository,
        _documentsRepository = documentsRepository,
        super(
          DocumentDetailState(
            status: DocumentDetailStatus.initial,
            document: document,
            note: document.note ?? '',
          ),
        );

  final AuthRepository _authRepository;
  final DocumentsRepository _documentsRepository;

  void notesChanged(String value) {
    emit(state.copyWith(
      note: value,
      status: DocumentDetailStatus.initial,
    ));
  }

  void fetchData() async {
    emit(state.copyWith(
      status: DocumentDetailStatus.loading,
    ));

    try {
      final session = await _authRepository.getAuthSession();
      final username = session?.user.username;
      final password = session?.user.password;
      final companyId = session?.company.id;

      if (username == null || password == null || companyId == null) {
        emit(state.copyWith(status: DocumentDetailStatus.error));
        return;
      }

      final result = await _documentsRepository.fetchDocument(
        documentId: state.document.id,
        documentType: state.document.type.value,
        username: username,
        password: password,
        companyId: companyId,
      );

      final error = result.tryGetError();
      if (error != null) {
        emit(
          state.copyWith(
            status: DocumentDetailStatus.error,
            errorMessage: error.message,
          ),
        );
        return;
      }

      final success = result.tryGetSuccess();
      if (success != null) {
        emit(state.copyWith(status: DocumentDetailStatus.loaded, document: success, note: success.note ?? ''));
      } else {
        emit(state.copyWith(status: DocumentDetailStatus.error));
      }
    } catch (e) {
      emit(state.copyWith(status: DocumentDetailStatus.error));
    }
  }

  void approve() async {
    emit(state.copyWith(
      status: DocumentDetailStatus.actionLoading,
    ));

    try {
      final session = await _authRepository.getAuthSession();
      final username = session?.user.username;
      final password = session?.user.password;
      final companyId = session?.company.id;

      if (username == null || password == null || companyId == null) {
        emit(state.copyWith(status: DocumentDetailStatus.error));
        return;
      }

      final result = await _documentsRepository.approveDocument(
        documentId: state.document.id,
        documentType: state.document.type.value,
        username: username,
        password: password,
        companyId: companyId,
        note: state.note,
      );

      final error = result.tryGetError();
      if (error != null) {
        emit(
          state.copyWith(
            status: DocumentDetailStatus.error,
            errorMessage: error.message,
          ),
        );
        return;
      }

      final success = result.tryGetSuccess();
      if (success != null) {
        emit(
          state.copyWith(
            status: DocumentDetailStatus.actionSuccess,
            document: state.document.copyWith(
              status: DocumentStatus.approved,
            ),
          ),
        );
      } else {
        emit(state.copyWith(status: DocumentDetailStatus.error));
      }
    } catch (e) {
      emit(state.copyWith(status: DocumentDetailStatus.error));
    }
  }

  void reject() async {
    emit(state.copyWith(status: DocumentDetailStatus.initial));

    if (state.note.isEmpty) {
      emit(state.copyWith(status: DocumentDetailStatus.noNotesError));
      return;
    }

    emit(state.copyWith(
      status: DocumentDetailStatus.actionLoading,
    ));

    try {
      final session = await _authRepository.getAuthSession();
      final username = session?.user.username;
      final password = session?.user.password;
      final companyId = session?.company.id;

      if (username == null || password == null || companyId == null) {
        emit(state.copyWith(status: DocumentDetailStatus.error));
        return;
      }

      final result = await _documentsRepository.rejectDocument(
        documentId: state.document.id,
        documentType: state.document.type.value,
        username: username,
        password: password,
        companyId: companyId,
        note: state.note,
      );

      final error = result.tryGetError();
      if (error != null) {
        emit(
          state.copyWith(
            status: DocumentDetailStatus.error,
            errorMessage: error.message,
          ),
        );
        return;
      }

      final success = result.tryGetSuccess();
      if (success != null) {
        emit(
          state.copyWith(
            status: DocumentDetailStatus.actionSuccess,
            document: state.document.copyWith(
              status: DocumentStatus.rejected,
            ),
          ),
        );
      } else {
        emit(state.copyWith(status: DocumentDetailStatus.error));
      }
    } catch (e) {
      emit(state.copyWith(status: DocumentDetailStatus.error));
    }
  }
}
