import 'package:bloc/bloc.dart';
import 'package:data_repository/data_repository.dart';
import 'package:flesan_approvals/src/features/attachments/cubit/attachments_state.dart';

class AttachmentsCubit extends Cubit<AttachmentsState> {
  AttachmentsCubit({
    required AuthRepository authRepository,
    required DocumentsRepository documentsRepository,
    required Document document,
  })  : _authRepository = authRepository,
        _documentsRepository = documentsRepository,
        _document = document,
        super(
          const AttachmentsState(status: AttachmentsStatus.initial),
        );

  final AuthRepository _authRepository;
  final DocumentsRepository _documentsRepository;
  final Document _document;

  void fetchData() async {
    emit(state.copyWith(status: AttachmentsStatus.loading));

    try {
      final session = await _authRepository.getAuthSession();
      final username = session?.user.username;
      final password = session?.user.password;
      final companyId = session?.company.id;

      if (username == null || password == null || companyId == null) {
        emit(state.copyWith(status: AttachmentsStatus.error));
        return;
      }

      final result = await _documentsRepository.fetchAttachments(
        documentId: _document.id,
        documentType: _document.type.value,
        username: username,
        password: password,
        companyId: companyId,
      );

      if (result.tryGetError() != null) {
        emit(state.copyWith(
          status: AttachmentsStatus.error,
          errorMessage: result.tryGetError()?.message,
        ));
        return;
      }

      final attachments = result.tryGetSuccess();
      emit(state.copyWith(
        status: AttachmentsStatus.loaded,
        attachments: attachments,
      ));
    } catch (e) {
      emit(state.copyWith(status: AttachmentsStatus.error));
    }
  }
}
