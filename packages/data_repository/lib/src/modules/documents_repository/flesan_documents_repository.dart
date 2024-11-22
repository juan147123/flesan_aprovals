// ignore_for_file: unused_local_variable, prefer_const_constructors


import 'package:data_repository/src/core/networking/entities/api_response_entity.dart';
import 'package:data_repository/src/core/networking/networkException.dart';
import 'package:data_repository/src/core/networking/networkRequestBody.dart';
import 'package:data_repository/src/modules/documents_repository/entities/attachment_entity.dart';
import 'package:data_repository/src/modules/documents_repository/entities/document_entity.dart';
import 'package:data_repository/src/modules/documents_repository/entities/request/approve_document_request_entity.dart';
import 'package:data_repository/src/modules/documents_repository/entities/request/attachments_request_entity.dart';
import 'package:data_repository/src/modules/documents_repository/entities/request/documents_request_entity.dart';
import 'package:data_repository/src/modules/documents_repository/entities/request/reject_document_request_entity.dart';
import 'package:data_repository/src/modules/documents_repository/entities/response/documents_response_entity.dart';
import 'package:data_repository/src/utils/string_encode.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../data_repository.dart';
import '../../core/networking/networkRequest.dart';
import '../../core/networking/networkService.dart';
import 'entities/request/document_request_entity.dart';
import 'entities/response/attachments_response_entity.dart';
import 'entities/response/document_response_entity.dart';

class FlesanDocumentsRepository implements DocumentsRepository {
  @override
  Future<Result<List<Document>, NetworkException>> fetchDocuments({
    required String username,
    required String password,
    required String companyId,
    required DocumentStatus status,
  }) async {
    final service = NetworkService(baseUrl: Environment.host);

    final body = NetworkRequestBody.json(DocumentsRequestEntity(
            username: username,
            password: password,
            companyId: companyId,
            status: status.value)
        .toJson());

    final request = NetworkRequest(
      type: NetworkRequestType.POST,
      path: '/api/documents',
      data: body,
    );

    final response =
        await service.execute(request, DocumentsResponseEntity.fromJson);

    return response.maybeWhen(
      ok: (response) {
        final responseEntity = (response as DocumentsResponseEntity);

        if (responseEntity.error != null) {
          return Error(NetworkException(responseEntity.error!.message));
        }

        final documentEntities = responseEntity.data ?? <DocumentEntity>[];
        final documents = documentEntities
            .map((documentEntity) => Document.fromEntity(documentEntity))
            .toList();
        return Success(documents);
      },
      orElse: () => Error(NetworkException('Error!')),
    );
  }

  @override
  Future<Result<Document, NetworkException>> fetchDocument({
    required String documentId,
    required String documentType,
    required String username,
    required String password,
    required String companyId,
  }) async {
    final service = NetworkService(baseUrl: Environment.host);

    final body = NetworkRequestBody.json(DocumentRequestEntity(
      documentId: documentId,
      documentType: documentType,
      username: username,
      password: password,
      companyId: companyId,
    ).toJson());

    final request = NetworkRequest(
      type: NetworkRequestType.POST,
      path: '/api/GetDocument',
      data: body,
    );

    final response =
        await service.execute(request, DocumentResponseEntity.fromJson);

    return response.maybeWhen(
      ok: (response) {
        final responseEntity = (response as DocumentResponseEntity);

        if (response.error != null) {
          return Error(NetworkException(response.error!.message));
        }

        if (response.data != null) {
          return Success(Document.fromEntity(response.data!));
        }

        return Error(NetworkException('Unhandled Response Error!'));
      },
      orElse: () => Error(NetworkException('Error!')),
    );
  }

  @override
  Future<Result<List<Attachment>, NetworkException>> fetchAttachments({
    required String documentId,
    required String documentType,
    required String username,
    required String password,
    required String companyId,
  }) async {
    final service = NetworkService(baseUrl: Environment.host);

    final body = NetworkRequestBody.json(AttachmentsRequestEntity(
      documentId: documentId,
      documentType: documentType,
      username: username,
      password: password,
      companyId: companyId,
    ).toJson());

    final request = NetworkRequest(
      type: NetworkRequestType.POST,
      path: '/api/GetDocumentAttach',
      data: body,
    );

    final response =
        await service.execute(request, AttachmentsResponseEntity.fromJson);

    return response.maybeWhen(
      ok: (response) {
        final responseEntity = (response as AttachmentsResponseEntity);

        if (responseEntity.error != null) {
          return Error(NetworkException(responseEntity.error!.message));
        }

        final attachmentEntities = responseEntity.data ?? <AttachmentEntity>[];
        final attachments = attachmentEntities
            .map((entity) => Attachment.fromEntity(entity))
            .toList();
        return Success(attachments);
      },
      orElse: () => Error(NetworkException('Error!')),
    );
  }

  @override
  Future<Result<String, NetworkException>> approveDocument({
    required String documentId,
    required String documentType,
    required String username,
    required String password,
    required String companyId,
    required String? note,
  }) async {
    final service = NetworkService(baseUrl: Environment.host);

    final body = NetworkRequestBody.json(ApproveDocumentRequestEntity(
      documentId: documentId,
      documentType: documentType,
      username: username,
      password: password,
      companyId: companyId,
      note: note?.encode(),
    ).toJson());

    final request = NetworkRequest(
      type: NetworkRequestType.POST,
      path: '/api/DocumentApprove',
      data: body,
    );

    final response = await service.execute(request, APIResponseEntity.fromJson);

    return response.maybeWhen(
      ok: (response) {
        final responseEntity = (response as APIResponseEntity);

        if (responseEntity.error != null) {
          return Error(NetworkException(responseEntity.error!.message));
        }

        return Success(responseEntity.result);
      },
      badRequest: (errorText) {
        return Error(NetworkException(errorText));
      },
      orElse: () => Error(NetworkException('Error!')),
    );
  }

  @override
  Future<Result<String, NetworkException>> rejectDocument({
    required String documentId,
    required String documentType,
    required String username,
    required String password,
    required String companyId,
    required String note,
  }) async {
    final service = NetworkService(baseUrl: Environment.host);

    final body = NetworkRequestBody.json(RejectDocumentRequestEntity(
      documentId: documentId,
      documentType: documentType,
      username: username,
      password: password,
      companyId: companyId,
      note: note.encode(),
    ).toJson());

    final request = NetworkRequest(
      type: NetworkRequestType.POST,
      path: '/api/DocumentReject',
      data: body,
    );

    final response = await service.execute(request, APIResponseEntity.fromJson);

    return response.maybeWhen(
      ok: (response) {
        final responseEntity = (response as APIResponseEntity);

        if (responseEntity.error != null) {
          return Error(NetworkException(responseEntity.error!.message));
        }

        return Success(responseEntity.result);
      },
      badRequest: (errorText) {
        return Error(NetworkException(errorText));
      },
      orElse: () => Error(NetworkException('Error!')),
    );
  }
}
