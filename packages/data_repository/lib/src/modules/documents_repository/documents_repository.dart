import 'package:data_repository/src/core/networking/networkException.dart';
import 'package:multiple_result/multiple_result.dart';

import 'models/models.dart';

abstract class DocumentsRepository {
  Future<Result<List<Document>, NetworkException>> fetchDocuments({
    required String username,
    required String password,
    required String companyId,
    required DocumentStatus status,
  });

  Future<Result<Document, NetworkException>> fetchDocument({
    required String documentId,
    required String documentType,
    required String username,
    required String password,
    required String companyId,
  });

  Future<Result<List<Attachment>, NetworkException>> fetchAttachments({
    required String documentId,
    required String documentType,
    required String username,
    required String password,
    required String companyId,
  });

  Future<Result<String, NetworkException>> approveDocument({
    required String documentId,
    required String documentType,
    required String username,
    required String password,
    required String companyId,
    required String? note,
  });

  Future<Result<String, NetworkException>> rejectDocument({
    required String documentId,
    required String documentType,
    required String username,
    required String password,
    required String companyId,
    required String note,
  });
}
