class ApproveDocumentRequestEntity {
  ApproveDocumentRequestEntity({
    required this.documentId,
    required this.documentType,
    required this.username,
    required this.password,
    required this.companyId,
    required this.note,
  });

  final String documentId;
  final String documentType;
  final String username;
  final String password;
  final String companyId;
  final String? note;

  Map<String, dynamic> toJson() {
    var map = {
      'id_doc': documentId,
      'type': documentType,
      'user': username,
      'password': password,
      'company_id': companyId,
    };

    if (note != null) {
      map['note'] = note!;
    }

    return map;
  }
}
